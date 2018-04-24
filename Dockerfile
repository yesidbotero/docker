FROM java:latest
WORKDIR /docker
ADD docker /docker
RUN ["chown", "-R", "daemon:daemon", "."]
EXPOSE 5000
USER daemon
ENTRYPOINT ["bin/akka-http-docker-minimal-seed"]
CMD []
