# uses a lighter image os debian as base system
FROM debian:bookworm-slim

# ensures that it will not stuck on sudo
ENV DEBIAN_FRONTEND=noninteractive

# install build-essential compiler debugger etc.. and clean files
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        gdb \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# opens cworkspace folder
WORKDIR /cworkspace

CMD ["bash"]