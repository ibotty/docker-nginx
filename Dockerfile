FROM fedora/nginx

MAINTAINER tob@butter.sh

RUN sed  's/error_log .*;/error_log stderr info;/' \
      -e 's/access_log .*;/access_log stderr main;/' \
      -e 's/(pid .*;)/#' /etc/nginx/nginx.conf

USER 995
