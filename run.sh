#!/bin/bash

if [ -e /etc/pure-ftpd/passwd/pureftpd.passwd ]
then
  pure-pw mkdb /etc/pure-ftpd/pureftpd.pdb -f /etc/pure-ftpd/passwd/pureftpd.passwd
fi

if [ -e /etc/ssl/private/pure-ftpd.pem ]
then
    echo "Starting pure-ftp with TLS"
    TLS="--tls=1 "
fi

echo "Public host was set to: $(hostname)"

exec /usr/sbin/pure-ftpd -c 50 -C 10 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -p 30000:30009 -P $(hostname)
