# Exim

> Exim container image.

## Exposed interfaces

The container exposes TCP ports 25 (SMTP) and 587 (submission).

## Environment variables

Name | Description
--- | ---
`CLAMD_ADDRESS` | Address of the clamd server (see http://exim.org/exim-html-current/doc/html/spec_html/ch-content_scanning_at_acl_time.htm).
`DKIM_PRIVATE_KEY` |
`DKIM_SELECTOR` |
`LDAP_URIS` |
`LDAP_BASEDN` |
`LMTP_ADDRESS` | Address of the LMTP server (see http://exim.org/exim-html-current/doc/html/spec_html/ch-the_lmtp_transport.html).
`MAILNAME` |
`ROOT_ALIAS` |
`SPAMD_ADDRESS` | Address of the spamd server (see http://exim.org/exim-html-current/doc/html/spec_html/ch-content_scanning_at_acl_time.html).
`TLS_CERT_FILE` |
`TLS_KEY_FILE` |


## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my [website](
https://www.shore.co.il/). Patches are welcome via [`git send-email`](
http://git-scm.com/book/en/v2/Git-Commands-Email). The repository is located
at: <https://www.shore.co.il/git/>.
