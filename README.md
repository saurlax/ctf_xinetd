# ctf_xinetd

> A docker repository for deploying CTF challenges

## Configuration

Write your challenge in `pwn.c` and customize gcc compilation parameters in `build.sh`.

The challenge code will be compiled in the container and deleted after compilation is complete.

Flag will be automatically loaded to `/flag` from the environment variables.

## Build

```bash
docker build -t hello_pwn .
```

## Run

```bash
docker run -d -p 9999:9999 -e FLAG="flag{test_flag}" hello_pwn
```

## Capture traffic

If you want to capture challenge traffic, just run `tcpdump` on the host. Here is an example.

```bash
tcpdump -w hello_pwn.pcap -i eth0 port 9999
```
