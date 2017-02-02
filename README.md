Dockerfile: https://github.com/Jack12816/ftpd_test

---

This image is dedicated to provide an easy to use FTP server with active
and passive mode support for a Docker testing setup. Imagine you need to
test your FTP-interacting software within a dockerized environment like
Gitlab CI.

Its based on [onekilo79/ftpd_test](https://github.com/onekilo79/ftpd_test) /
[docker image](https://hub.docker.com/r/onekilo79/ftpd_test/). So we use
pure-ftpd.

By default the port 21 is exposed for active mode and the port range
30000-30009 is exposed for passive mode.

The **PUBLICHOST** environment variable is set to the primary ip of the
container. This enables passive mode support for the FTP server.
