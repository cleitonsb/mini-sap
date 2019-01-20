FROM ubuntu:latest
RUN apt update && apt install -y iproute2 net-tools iputils-ping csh uuid samba
EXPOSE 8000
EXPOSE 44300
EXPOSE 3300
EXPOSE 3200
