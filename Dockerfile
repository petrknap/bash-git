FROM alpine:latest

WORKDIR /mnt/pwd

RUN apk add --no-cache \
      bash \
      bash-completion \
      git \
      openssh \
;

ENTRYPOINT ["bash"]

ADD .gitconfig /root/
ADD id_* /root/.ssh/
RUN chmod 0400 /root/.ssh/id_*
