# spamd

> SpamAssassin container image.

## Exposed interfaces

The daemon is accessible over TCP at port 783 and over the `spamd.sock` Unix
socket in the `/run/spamd` volume.

## Training the Bayesian classifier

The image comes with the script `spamd-learn` which goes over the mobx files in
`/var/mail`, uses them for training the classifier and them saves the database
in the `/var/backups/sa-learn` volume. On statup, the container restores the
database from that volume. To update the database run `spamd-learn` from inside
the container with `docker exec` (there's no need to restart the container
afterwards). For an example see the [Cron image](../crond) inside this project.

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my [website](
https://www.shore.co.il/). Patches are welcome via [`git send-email`](
http://git-scm.com/book/en/v2/Git-Commands-Email). The repository is located
at: <https://www.shore.co.il/git/>.
