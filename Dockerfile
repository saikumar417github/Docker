FROM almalinux:9
RUN dnf install nginx -y
RUN rm /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
ENV course="DevOps"
CMD ["nginx", "-g", "daemon-off"]
LABEL course="Devops"
