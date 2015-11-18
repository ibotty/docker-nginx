# A Docker container for nginx to be used for static content

A simple docker container for nginx, based on fedora/nginx with added USER.

Mount your static files to `/usr/share/nginx/html` to overwrite default files.

It will log errors to stderr. Access log is ignored for now.
