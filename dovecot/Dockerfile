FROM docker.io/buildpack-deps:bookworm as delete_to_trash
# hadolint ignore=DL3008,DL3015
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y dovecot-dev && \
    git clone https://github.com/pali/dovecot_deleted_to_trash && \
    make -C dovecot_deleted_to_trash

FROM docker.io/debian:bookworm-slim
# hadolint ignore=DL3008
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        dovecot-ldap \
        dovecot-lmtpd \
        dovecot-imapd \
        dovecot-sieve \
        patch \
        ssl-cert \
        time \
    && \
    install -d -m 777 -o mail -g mail /var/lib/dovecot/sieve.d && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
COPY --from=delete_to_trash /dovecot_deleted_to_trash/lib_deleted_to_trash_plugin.so /usr/lib/dovecot/modules/
COPY --from=delete_to_trash /dovecot_deleted_to_trash/95-deleted_to_trash_plugin.conf /etc/dovecot/conf.d/
COPY --chown=root:root entrypoint /entrypoint
COPY patch.diff /root/
RUN patch --strip 0 --verbose --directory /etc/dovecot --input /root/patch.diff && \
    doveconf
COPY --chown=mail:mail *.sieve /var/lib/dovecot/sieve.d/
# hadolint ignore=DL4006
RUN find /var/lib/dovecot/sieve.d/ -type f -name '*.sieve' -print0 | xargs -0n1 sievec -d
VOLUME /var/mail
VOLUME /run/dovecot
EXPOSE 993 25
ENV TLS_DHPARAMS_FILE /usr/share/dovecot/dh.pem
ENTRYPOINT [ "/entrypoint" ]
CMD [ "dovecot", "-F" ]
HEALTHCHECK --start-period=5m CMD doveadm service status || exit 1
