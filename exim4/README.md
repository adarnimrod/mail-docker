# Exim

> Exim container image.

## Exposed interfaces

The container exposes TCP ports 25 (SMTP) and 587 (submission).

## Environment variables

Name | Description
\-\-\- | \-\-\-
`CLAMD_ADDRESS` | Address of the clamd server (see http://exim.org/exim-html-current/doc/html/spec\_html/ch-content\_scanning\_at\_acl\_time.htm).
`DKIM_PRIVATE_KEY` |
`DKIM_SELECTOR` |
`LDAP_URIS` |
`LDAP_BASEDN` |
`LMTP_ADDRESS` | Address of the LMTP server (see http://exim.org/exim-html-current/doc/html/spec\_html/ch-the\_lmtp\_transport.html).
`MAILNAME` |
`ROOT_ALIAS` |
`SPAMD_ADDRESS` | Address of the spamd server (see http://exim.org/exim-html-current/doc/html/spec\_html/ch-content\_scanning\_at\_acl\_time.html).
`TLS_CERT_FILE` |
`TLS_KEY_FILE` |

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my
[website](https://www.shore.co.il/). Patches are welcome via
[`git send-email`](http://git-scm.com/book/en/v2/Git-Commands-Email). The repository
is located at: <https://git.shore.co.il/explore/>.
