FROM quay.io/soketi/soketi:1.4-16-debian

ENV SOKETI_DEBUG=${DEBUG:-1} \
    DEFAULT_APP_ID=${PUSHER_APP_ID:-some-id} \
    DEFAULT_APP_KEY=${PUSHER_APP_KEY:-app-key} \
    DEFAULT_APP_SECRET=${PUSHER_APP_SECRET:-some-app-secret} \
    PUSHER_HOST=${PUSHER_HOST:-127.0.0.1} \
    PUSHER_PORT=${PUSHER_PORT:-6001} \
    PUSHER_SCHEME=${PUSHER_SCHEME:-http} \
    METRICS_SERVER_PORT=${METRICS_SERVER_PORT:-9601} \
    DEFAULT_APP_ENABLE_CLIENT_MESSAGES=${DEFAULT_APP_ENABLE_CLIENT_MESSAGES:-false}

EXPOSE ${SOKETI_PORT:-6001} ${SOKETI_METRICS_SERVER_PORT:-9601}

CMD echo "Starting soketi app..." && \
    echo "Debug mode: ${SOKETI_DEBUG}" && \
    echo "Pusher app ID: ${DEFAULT_APP_ID}" && \
    echo "Pusher app key: ${DEFAULT_APP_KEY}" && \
    echo "Pusher app secret: ${DEFAULT_APP_SECRET}" && \
    echo "Pusher host: ${PUSHER_HOST}" && \
    echo "Pusher port: ${PUSHER_PORT}" && \
    echo "Pusher scheme: ${PUSHER_SCHEME}" && \
    echo "Metrics server port: ${METRICS_SERVER_PORT}" && \
    echo "Enable client messages: ${DEFAULT_APP_ENABLE_CLIENT_MESSAGES}" && \
    soketi -host 0.0.0.0 -port ${SOKETI_PORT:-6001} -debug ${SOKETI_DEBUG}
