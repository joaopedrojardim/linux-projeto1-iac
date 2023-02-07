#!/bin/bash

echo "Criando os diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec 

echo "Diretorios criados"
echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"
echo "Criando usuarios"

useradd carlos -m -s /bin/bash -G GRP_ADM
echo "Senha do usuario carlos: "
passwd carlos
useradd maria -m -s /bin/bash -G GRP_ADM
echo "Senha do usuario maria: "
passwd maria

useradd joao -m -s /bin/bash -G GRP_ADM
echo "Senha do usuario joao: "
passwd  joao


useradd debora -m -s /bin/bash -G GRP_VEN
echo "Senha do usuario debora: "
passwd debora

useradd sebastiana -m -s /bin/bash -G GRP_VEN
echo "Senha do usuario sebastiana: "
passwd sebastiana

useradd roberto -m -s /bin/bash -G RGP_VEN
echo "Senha do usuario roberto: "
passwd roberto


useradd amanda -m -s /bin/bash -G  GRP_SEC
echo "Senha do usuario amanda: "
passwd amanda 

useradd josefina -m -s /bin/bash -G GRP_SEC
echo "Senha do usuario josefina: "
passwd josefina

useradd rogerio -m -s /bin/bash -G GRP_SEC
echo "Senha do usuario rogerio: "
passwd rogerio



echo "Usuarios criados"
echo "Especificando permiçoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
