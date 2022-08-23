#!/bin/bash

echo "Criando diretórios . . . . . . ."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários . . . . . . ."

groupadd GRU_ADM
groupadd GRU_VEN
groupadd GRU_SEC

echo "Criando usuários e adicionando os usuários aos grupos . . . . . . ."

useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Maria Nieves' -G GRU_VEN chiquinha
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Ramon Valdes' -G GRU_VEN madruga
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Carlos Villagran' -G GRU_VEN quico

useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Angelina Fernandez' -G GRU_ADM clotilde
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Roberto Bolanos' -G GRU_ADM chaves
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Edgar Vivar' -G GRU_ADM nhonho

useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Florinda Meza' -G GRU_SEC florinda
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Ruben Aguirre' -G GRU_SEC girafales
useradd -m -s /bin/bash -p $(openssl passwd Senha123) -c 'Raul Padilla' -G GRU_SEC jaiminho

echo "Especificando permissões dos diretórios . . . . . . ."

chown root:GRU_ADM /adm
chown root:GRU_VEN /ven
chown root:GRU_SEC /sec

chmod 777 /publico
chmod 750 /adm
chmod 750 /ven
chmod 750 /sec

echo "Concluído"
echo "Para desfazer as alterações no sistema, executar: iac2.sh"
