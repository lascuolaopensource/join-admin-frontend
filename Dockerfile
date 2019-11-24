FROM node:8 AS builder

WORKDIR /home/root/

COPY admin-frontend-variables.ts conf/

ADD . join-admin-frontend/

WORKDIR join-admin-frontend/

RUN mv admin-frontend-variables.ts src/environments/environment.prod.ts \
&& npm install \
&& npx ng build -prod -aot

FROM nginx

COPY --from=builder /home/root/join-admin-frontend/dist/ /usr/share/nginx/html
COPY ./default.conf /etc/nginx/sites-available/
