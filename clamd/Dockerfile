FROM debian:buster-slim
# hadolint ignore=DL3008
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        clamav-daemon \
        clamav-freshclam \
        netcat-openbsd \
        procps \
    && \
    freshclam --verbose --stdout && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
COPY --chown=root:root clamd.conf /etc/clamav/
RUN clamconf -n
COPY --chown=root:root entrypoint /entrypoint
COPY --chown=root:root clamd-ping clamd-update /usr/local/bin/
EXPOSE 3310
VOLUME /run/clamav
ENTRYPOINT [ "/entrypoint" ]
CMD [ "clamd" ]
HEALTHCHECK CMD clamd-ping
