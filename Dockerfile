FROM alpine:3
RUN apk add --no-cache \
    curl \
    bind-tools \
    git \
    jq \
    mtr \
    nano \
    openssh-server \
    openssh \
    python \
    wget \
    zsh

CMD ["tail", "-f", "/dev/null"]
