FROM docker:18.09 as docker

FROM adarnimrod/cron as supersonic
COPY --from=docker /usr/local/bin/docker /usr/local/bin/
COPY --chown=root:root crontab /crontab
USER root
