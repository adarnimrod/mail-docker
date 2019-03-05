# Dovecot

> Dovecot container image.

## Exposed interfaces

The containers exposes TCP ports 25 (LMTP) and 993 (IMAPS) and the `lmtp` Unix
socket in the `/run/dovecot` volume (for LTMP submission).

## Environment variables

Name | Description
--- | ---
`LDAP_URIS` | LDAP URI (eg, `ldapi:///`).
`LDAP_BASEDN` | LDAP base DN (eg, `dc=example,dc=com`).

## Persistence

The mbox files are stored at `/var/mail`.

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my [website](
https://www.shore.co.il/). Patches are welcome via [`git send-email`](
http://git-scm.com/book/en/v2/Git-Commands-Email). The repository is located
at: <https://www.shore.co.il/git/>.
