# ctf_xinetd

> A docker repository for deploying CTF challenges

## Configuration

Write your challenge in `pwn.c` and customize gcc compilation parameters in `build.sh`.

Flag will be automatically loaded to `/flag` from the environment variables.

## Build

```bash
docker build -t hello_pwn .
```

DO NOT use `bin` as challenge's name

## Run

```bash
docker run -d -p 9999:9999 -e FLAG="flag{test_flag}" hello_pwn
```

## Capture traffic

If you want to capture challenge traffic, just run `tcpdump` on the host. Here is an example.

```bash
tcpdump -w helloworld.pcap -i eth0 port pub_port
```
