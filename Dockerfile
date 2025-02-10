# 使用alpine作为基础镜像
FROM alpine:3

# 安装ping、iproute2和traceroute
RUN apk update && apk add --no-cache \
    busybox-extras \
    iproute2 \
    traceroute \
    bash

# 设置容器启动时 runs 不注销，常驻进程
# CMD ["/bin/sh", "-c", "tail -f /dev/null"]

# 定义一个启动脚本
RUN echo '#!/bin/sh' > /start.sh \
    && echo 'while true; do' >> /start.sh \
    && echo '    sleep 1' >> /start.sh \
    && echo 'done' >> /start.sh \
    && chmod +x /start.sh

# 设置 ENTRYPOINT 和 CMD
ENTRYPOINT ["/start.sh"]
