FROM ubuntu:22.04

RUN sed -i "s/http:\/\/archive.ubuntu.com/http:\/\/mirrors.tuna.tsinghua.edu.cn/g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y xinetd

RUN echo "Blocked by ctf_xinetd" > /etc/banner_fail

COPY ./ctf.xinetd /etc/xinetd.d/ctf
COPY ./start.sh /root/start.sh
COPY ./bin/ /root/

RUN chmod +x /root/start.sh

CMD ["/root/start.sh"]

EXPOSE 9999
