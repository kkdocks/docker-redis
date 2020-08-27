FROM redis:5-alpine

LABEL maintainer="yangjinbo <yangjinbo@yoyohr.com>"

ARG timezone


ENV TIMEZONE=${timezone:-"Asia/Shanghai"}

ADD redis.conf /etc/redis/redis.conf


RUN set -x \
    # Timezone
    && /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone
