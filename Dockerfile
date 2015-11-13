FROM fedora/nginx

MAINTAINER tob@butter.sh

RUN sed \
      -e 's/error_log .*;/error_log stderr info;/' \
      -e 's/access_log .*;/access_log stderr main;/' \
      -e 's/(pid .*;)/#&1/' \
      /etc/nginx/nginx.conf \
 && echo nginx uid $(id -u nginx) \
 && test $(id -u nginx) -eq 995

USER 995
