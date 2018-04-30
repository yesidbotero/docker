FROM java:latest
WORKDIR /opt/docker
ADD opt /opt
RUN ["chown", "-R", "daemon:daemon", "."]
EXPOSE 5000
USER daemon
ENTRYPOINT ["bin/akka-http-docker-minimal-seed"]
CMD []
