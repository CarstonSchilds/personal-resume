FROM nginx:alpine
ADD html/resume.html /usr/share/nginx/html/resume.html
ADD src/nginx.conf /etc/nginx/nginx.conf
