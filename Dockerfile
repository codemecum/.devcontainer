FROM ubuntu:focal

RUN apt-get update && apt-get upgrade -y --no-install-recommends

COPY build-scripts build-scripts
RUN build-scripts/run-scripts \
 && rm -Rf build-scripts

USER developer
WORKDIR /workspace

ENTRYPOINT []
CMD [ "sleep", "infinity" ]

ENV JDK_HOME="/usr/local/jdk" \
    MAVEN_HOME="/usr/share/maven"

ENV JAVA_HOME="$JDK_HOME" \
    PATH="$JDK_HOME/bin:$MAVEN_HOME/bin:$PATH"
