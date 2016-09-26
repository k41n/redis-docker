FROM debian
RUN apt-get update && \
    apt-get install -y --no-install-recommends redis-server && \
    rm -rf var/lib/apt/lists/*
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
