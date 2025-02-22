FROM debian:stable

ENV TERM xterm

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt-get update && apt-get install --no-install-recommends -y -q \
  curl=7.88.1-10+deb12u8 \
  ca-certificates=20230311 \
  entr=5.3-1 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN sh -c "$(curl --location https://install.duckdb.org)" && ln -s /root/.duckdb/cli/latest/duckdb /usr/bin/duckdb
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/bin
CMD [ "duckdb", "--version"]
