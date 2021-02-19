# build and bundle SPA
FROM node:14.15.5 as build-stage
WORKDIR /webapp

COPY package*.json /webapp/
RUN npm ci

COPY ./ /webapp/
RUN npm run build:prod


# copy SPA and serve by nginx
FROM nginx:1.15
COPY --from=build-stage /webapp/dist/webapp/ /usr/share/nginx/html
EXPOSE 80