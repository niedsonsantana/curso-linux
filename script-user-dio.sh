#!/bin/bash
echo "1/3 - Criação pastas"
mkdir /publico
mkdir /adm
mkdir /sec

echo "1/2 - Criação de grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "1/2 - Criação de usuarios e associando usuários aos grupos"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senhacarlos123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senhamaria123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senhajoao123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senhadebora123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senhasebastiana123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senharoberto123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senhajosefina123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senhaamanda123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senharogerio123) -G GRP_SEC

echo "1/3 - Ajustando permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "Finalizado"