FROM node:8-alpine

VOLUME /artillery
WORKDIR /artillery

RUN npm install -g artillery@1.6.0-25 --unsafe-perm=true --allow-root && \
    apk add --no-cache curl

COPY request.yml /artillery/request.yml
COPY docker-entrypoint.sh /artillery/docker-entrypoint.sh

RUN chmod +x /artillery/docker-entrypoint.sh

ENTRYPOINT ["/artillery/docker-entrypoint.sh"]
CMD ["run", "request.yml"]
