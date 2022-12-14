FROM node:13-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install react-scripts@3.3.1 -g
COPY . .
RUN npm run build

# production environment
FROM nginx:1.16.0-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]