FROM ubuntu:22.04

RUN sed -i "s/http:\/\/archive.ubuntu.com/http:\/\/mirrors.tuna.tsinghua.edu.cn/g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y gcc xinetd

WORKDIR /root

COPY . /root

RUN chmod +x /root/build.sh /root/start.sh && \
    /root/build.sh && \
    mv /root/ctf.xinetd /etc/xinetd.d/ctf && \
    echo "Blocked by ctf_xinetd" > /etc/banner_fail

CMD ["/root/start.sh"]

EXPOSE 9999
