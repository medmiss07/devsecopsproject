
FROM nginx:alpine

# Upgrade base packages to pull in security fixes (libpng >= 1.6.51)
RUN apk update && apk upgrade --no-cache

# Nginx server config with caching and security headers
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Static site assets
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s CMD wget -qO- http://localhost/ || exit 1
