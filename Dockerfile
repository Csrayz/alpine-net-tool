# 使用alpine作为基础镜像
FROM alpine:3

# 安装ping、iproute2和traceroute
RUN apk update && apk add --no-cache \
    busybox-extras \
    iproute2 \
    traceroute \
    bash

# 设置容器启动时 runs 不注销，常驻进程
CMD ["/bin/sh", "-c", "tail -f /dev/null"]
