## mini-sap
Guia de instalação do servidor SAP em conteiner Docker

Baixe o SAP NetWeaver no endereço https://tools.eu1.hana.ondemand.com/#abap

Baixe o arquivo dockerfile em algum diretrio de sua preferência. Crie o diretrio sapdownloads dentro deste diretório, e extraia todos os arquivos baixados do instalador sap.

Após, pelo terminal/CMD, navege até o diretório e execute o comando <br />
*docker build -t sapimages .*

Este comando irá criar uma imagem com todos os pre-requisitos para a instalação do SAP.

Verifique se a imagem foi criada corretamente com o comando<br />
*docker images*


Então, rode o camando abaixo para criar o container para o servidor, montado o diretório dos arquivos e liberando as portas que vamos usar:<br />
*docker run -p 8000:8000 -p 44300:44300 -p 3300:3300 -p 3200:3200 -v sapdownloads:/sap -h vhcalnplci --name sapserver -it sapimages*

Então execute:<br />
*chmod +x /sap/install.sh*<br />
e logo após<br />
*/sap/install.sh*<br />

Aceite os termos de uso e aguarde, essa parte vai demorar muito....



