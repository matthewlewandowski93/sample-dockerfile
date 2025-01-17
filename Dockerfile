FROM quay.io/soketi/soketi:1.4-16-debian

ARG SOKETI_DEBUG=1
ARG SOKETI_PRESENCE_MAX_MEMBERS=${SOKETI_PRESENCE_MAX_MEMBERS:-500}
ARG SOKETI_EVENT_MAX_CHANNELS_AT_ONCE=${SOKETI_EVENT_MAX_CHANNELS_AT_ONCE:-500}
ARG SOKETI_DEFAULT_APP_ID=${SOKETI_DEFAULT_APP_ID:-planning-poker-app}
ARG SOKETI_DEFAULT_APP_KEY=${SOKETI_DEFAULT_APP_KEY:-planning-poker-app-key}
ARG SOKETI_DEFAULT_APP_SECRET=${SOKETI_DEFAULT_APP_SECRET:-planning-poker-app-secret}
ARG SOKETI_DEFAULT_APP_ENABLE_CLIENT_MESSAGES=true

ENV SOKETI_DEBUG=${SOKETI_DEBUG:-1}
ENV SOKETI_PRESENCE_MAX_MEMBERS=${SOKETI_PRESENCE_MAX_MEMBERS}
ENV SOKETI_EVENT_MAX_CHANNELS_AT_ONCE=${SOKETI_EVENT_MAX_CHANNELS_AT_ONCE}
ENV SOKETI_DEFAULT_APP_ID=${SOKETI_DEFAULT_APP_ID}
ENV SOKETI_DEFAULT_APP_KEY=${SOKETI_DEFAULT_APP_KEY}
ENV SOKETI_DEFAULT_APP_SECRET=${SOKETI_DEFAULT_APP_SECRET}
ENV SOKETI_DEFAULT_APP_ENABLE_CLIENT_MESSAGES=${SOKETI_DEFAULT_APP_ENABLE_CLIENT_MESSAGES}
