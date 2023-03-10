FROM quay.io/soketi/soketi:1.4-16-debian

ENV SOKETI_DEBUG=${SOKETI_DEBUG:-1}
ENV SOKETI_DEFAULT_APP_ID=${SOKETI_DEFAULT_APP_ID:-some-id}
ENV SOKETI_DEFAULT_APP_KEY=${SOKETI_DEFAULT_APP_KEY:-app-key}
ENV SOKETI_DEFAULT_APP_SECRET=${SOKETI_DEFAULT_APP_SECRET:-some-app-secret}
ENV SOKETI_DEFAULT_APP_ENABLE_CLIENT_MESSAGES=${SOKETI_DEFAULT_APP_ENABLE_CLIENT_MESSAGES:-true}

EXPOSE ${SOKETI_PORT:-6001}
EXPOSE ${SOKETI_METRICS_SERVER_PORT:-9601}
