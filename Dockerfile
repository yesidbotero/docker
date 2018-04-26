FROM java:latest
WORKDIR /docker
ADD bin /docker
ADD lib /docker
RUN ["chown", "-R", "daemon:daemon", "."]
EXPOSE 5000
USER daemon
ENTRYPOINT ["bin/akka-http-docker-minimal-seed"]
CMD []
