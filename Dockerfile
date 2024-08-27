# Build Stage 0
FROM node:20.17-alpine AS build

WORKDIR /app

RUN npm cache clean --force
COPY . .
RUN npm install
RUN npm run build --prod


# Build Stage 1
FROM nginx:latest AS ngi

COPY --from=build /app/dist/angular-template-m3/browser /usr/share/nginx/html
COPY /nginx.conf  /etc/nginx/conf.d/default.conf

EXPOSE 80