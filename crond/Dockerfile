FROM docker:20.10 as docker

# hadolint ignore=DL3006
FROM registry.shore.co.il/cron as supersonic
COPY --from=docker /usr/local/bin/docker /usr/local/bin/
COPY --chown=root:root crontab /crontab
# hadolint ignore=DL3002
USER root
