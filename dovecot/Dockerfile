FROM buildpack-deps:buster as delete_to_trash
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y dovecot-dev && \
    git clone https://github.com/pali/dovecot_deleted_to_trash && \
    cd dovecot_deleted_to_trash && \
    make

FROM debian:buster-slim
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
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
COPY --from=delete_to_trash /dovecot_deleted_to_trash/lib_deleted_to_trash_plugin.so /usr/lib/dovecot/modules/
COPY --from=delete_to_trash /dovecot_deleted_to_trash/95-deleted_to_trash_plugin.conf /etc/dovecot/conf.d/
COPY --chown=root:root entrypoint /entrypoint
COPY patch.diff /root/
RUN patch --strip 0 --verbose --directory /etc/dovecot --input /root/patch.diff && \
    doveconf
COPY --chown=mail:mail *.sieve /var/lib/dovecot/sieve.d/
RUN cd /var/lib/dovecot/sieve.d/ && \
    ls *.sieve | xargs -tn1 sievec && \
    rm *.svbin
VOLUME /var/mail
VOLUME /run/dovecot
EXPOSE 993 25
ENTRYPOINT [ "/entrypoint" ]
CMD [ "dovecot", "-F" ]
HEALTHCHECK CMD doveadm service status || exit 1
