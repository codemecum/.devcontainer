FROM ubuntu:focal

RUN apt-get update && apt-get upgrade -y --no-install-recommends

COPY build-scripts build-scripts
RUN build-scripts/run-scripts \
 && rm -Rf build-scripts

USER developer
WORKDIR /workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
CMD [ "sleep", "infinity" ]
