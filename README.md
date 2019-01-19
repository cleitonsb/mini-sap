# mini-sap
Guia de instalação do servidor SAP em conteiner Docker

https://www.sap.com/developer/trials-downloads/additional-downloads/sap-netweaver-as-abap-developer-edition-sp01-7-52-15510.html


docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -v /media/cleiton/Dados/Progr/Abap/servidor:/sap -h vhcalnplci --name sapserver -it ubuntu

apt update && apt install iproute2 net-tools iputils-ping csh uuid samba


Error: /sbin/uuidd: not executable file
Error: libaio: shared library not found
Error: /etc/services: file not found

libaio1
  netbase
  uuid-runtime

