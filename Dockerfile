FROM quay.io/soketi/soketi:1.4-16-debian

ENV SOKETI_DEBUG=${DEBUG:-1}
ENV DEFAULT_APP_ID=${PUSHER_APP_ID:-some-id}
ENV DEFAULT_APP_KEY=${PUSHER_APP_KEY:-app-key}
ENV DEFAULT_APP_SECRET=${PUSHER_APP_SECRET:-some-app-secret}

EXPOSE ${SOKETI_PORT:-6001}
EXPOSE ${SOKETI_METRICS_SERVER_PORT:-9601}

CMD ["soketi", "-c", "/etc/soketi/config.json"]
