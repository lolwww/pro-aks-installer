FROM ubuntu:22.04
COPY runOnHost.sh /
COPY runCleanup.sh /
COPY wait.sh /
RUN chmod u+x runOnHost.sh
RUN chmod u+x runCleanup.sh
CMD ["./runOnHost.sh"]