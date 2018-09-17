# clamd

> ClamAV container image.

## Exposed interfaces

The daemon is accessible over TCP at port 3310 and over the `clamd.ctl` Unix
socket in the `/run/clamav` volume.

## Updates

The image comes with an updated virus database from the time the image was
built. To update the database run `clamd-update` from inside the container with
`docker exec` (there's no need to restart the container afterwards). For an
example see the [Cron image](../crond) inside this project.

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my [website](
https://www.shore.co.il/). Patches are welcome via [`git send-email`](
http://git-scm.com/book/en/v2/Git-Commands-Email). The repository is located
at: <https://www.shore.co.il/git/>.
