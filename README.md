# mini-sap
Guia de instalação do servidor SAP em conteiner Docker

docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -v /media/cleiton/Dados/Progr/Abap/servidor:/sap -h vhcalnplci --name sapserver -it ubuntu

apt update && apt install iproute2 net-tools iputils-ping csh uuid samba


