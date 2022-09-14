FROM nginx
WORKDIR /app
COPY ./public .
EXPOSE 80