FROM debian:stretch-slim
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        gnupg \
        libmail-spf-perl \
        spamassassin \
        spamc \
    && \
    sa-update && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
COPY --chown=root:root spamd-ping spamd-learn /usr/local/bin/
COPY --chown=root:root entrypoint /entrypoint
EXPOSE 783
VOLUME /run/spamd
VOLUME /var/backups/sa-learn
ENTRYPOINT [ "/entrypoint" ]
CMD [ "spamd", "--create-prefs", "--max-children=5", "--helper-home-dir", "--listen=0.0.0.0:783", "--socketpath=/var/run/spamd/spamd.sock", "--syslog=stderr" ]
HEALTHCHECK CMD spamd-ping
