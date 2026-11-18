FROM nginx:alpine
ARG AMBIENTE=prd
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/EC2-corebank/EC2-corebank-${AMBIENTE}/g" /usr/share/nginx/html/index.html
EXPOSE 80