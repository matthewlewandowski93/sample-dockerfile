FROM quay.io/soketi/soketi:1.4-16-debian

CMD ["soketi", "-c", "/etc/soketi/config.json"]
