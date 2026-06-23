FROM nginx:1.27-alpine

COPY index.html /usr/share/nginx/html/index.html
COPY privacy.html /usr/share/nginx/html/privacy.html
COPY terms.html /usr/share/nginx/html/terms.html
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml
COPY img/ /usr/share/nginx/html/img/
COPY orange-crush/ /usr/share/nginx/html/orange-crush/
COPY xlv/ /usr/share/nginx/html/xlv/
COPY bryant-stratton/ /usr/share/nginx/html/bryant-stratton/
COPY coach-workspace.pdf /usr/share/nginx/html/coach-workspace.pdf

EXPOSE 80
