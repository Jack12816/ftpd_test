FROM onekilo79/ftpd_test

COPY run.sh /run.sh
RUN chmod u+x /run.sh
CMD /run.sh
