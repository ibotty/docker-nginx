FROM fedora/nginx
MAINTAINER tob@butter.sh

EXPOSE 8080

RUN sed -i \
      -e 's/error_log .*;/error_log stderr info;/' \
      -e 's/access_log .*;/access_log \/tmp\/stdout;/' \
      -e 's/\(pid .*;\)/#\1/' \
      -e 's/listen \+80 \(.*;\)/listen 8080 \1/' \
      /etc/nginx/nginx.conf \
 && echo nginx uid $(id -u nginx) \
 && test $(id -u nginx) -eq 995 \
 && chmod -R a+rwX /var/lib/nginx

ADD entrypoint.sh /
USER 995

CMD /entrypoint.sh
