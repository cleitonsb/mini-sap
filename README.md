# mini-sap
Guia de instalação do servidor SAP em conteiner Docker

https://www.sap.com/developer/trials-downloads/additional-downloads/sap-netweaver-as-abap-developer-edition-sp01-7-52-15510.html

Baixe o arquivo dockerfile em algum diretrio de sua preferência. Crie o diretrio sapdownloads dentro deste diretório, e extraia todos os arquivos baixados do instalador sap.

Após, pelo terminal/CMD, navege até o diretório e execute o comando
docker build -t sapimages .

Este comando irá criar uma imagem com todos os pre-requisitos para a instalação do SAP.

Verifique se a imagem foi criada corretamente com o comando
docker images


Então, rode o camando abaixo para criar o container para o servidor, montado o diretório dos arquivos e liberando as portas que vamos usar:
docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -v sapdownloads:/sap -h vhcalnplci --name sapserver -it sapimages

Então execute:
chmod +x /sap/install.sh
e logo após
/sap/install.sh
Aceite os termos de uso e aguarde, essa parte vai demorar muito....



