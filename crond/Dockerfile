FROM docker:19.03 as docker

# hadolint ignore=DL3006
FROM adarnimrod/cron as supersonic
COPY --from=docker /usr/local/bin/docker /usr/local/bin/
COPY --chown=root:root crontab /crontab
# hadolint ignore=DL3002
USER root
