#!/bin/bash

echo "Criando os diretórios ..."

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e já inserindo aos grupos ..."

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -G GRP_ADM
passwd carlos

useradd maria -m -c "Maria dos Anjos" -s /bin/bash -G GRP_ADM
passwd maria

useradd joao -m -c "João de Souza" -s /bin/bash -G GRP_ADM
passwd joao

useradd debora -m -c "Debora Castro" -s /bin/bash -G GRP_VEN
passwd debora

useradd sebastiana -m -c "Sebastiana da Luz" -s /bin/bash -G GRP_VEN
passwd sebastiana

useradd roberto -m -c "Roberto dos Reis" -s /bin/bash -G GRP_VEN
passwd roberto

useradd josefina -m -c "Josefina Santiago" -s /bin/bash -G GRP_SEC
useradd josefina

useradd amanda -m -c "Amanda Albuquerque" -s /bin/bash -G GRP_SEC
passwd amanda

useradd rogerio -m -c "Rogerio Goulart" -s /bin/bash -G GRP_SEC
passed rogerio

echo "Realizando a configuração de permissionamento das pastas ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizando o Script de Infraestrutura como Código ..."
