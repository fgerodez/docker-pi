#!/bin/bash

/usr/sbin/postconf "myhostname = ${HOSTNAME}"
/usr/sbin/postconf "smtpd_tls_cert_file = ${SSL_CERT_PUBLIC}"
/usr/sbin/postconf "smtpd_tls_key_file = ${SSL_CERT_PRIVATE}"

/usr/sbin/postfix start-fg

