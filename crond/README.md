# crond

> Cron container image.

## Description

This container runs Cron jobs for training SpamAssassin's Bayesian classifier
and for updating ClamAV's virus database. The jobs run in the other containers,
so the `dockerd` socket is bind mounted to this container and the commands are
executed via `docker exec` in the other containers. Thus, outside of the context
of this setup this container doesn't make much sense.

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my
[website](https://www.shore.co.il/). Patches are welcome via
[`git send-email`](http://git-scm.com/book/en/v2/Git-Commands-Email). The repository
is located at: <https://git.shore.co.il/explore/>.
