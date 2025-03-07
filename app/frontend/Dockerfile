# Build stage
FROM node:20-alpine AS build

WORKDIR /app

RUN npm install -g pnpm

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

RUN pnpm build

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

RUN adduser -D -u 1000 -g 'nginx' nginx-user && \
    chown -R nginx-user:nginx-user /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    sed -i 's/user  nginx;/user  nginx-user;/' /etc/nginx/nginx.conf && \
    chmod 755 /var/log/nginx /var/cache/nginx /var/run

USER nginx-user

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

