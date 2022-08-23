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

echo "Criando usuários . . . . . . ."

useradd -c 'Maria Nieves' -G GRU_VEN chiquinha
useradd -c 'Ramon Valdes' -G GRU_VEN madruga
useradd -c 'Carlos Villagran' -G GRU_VEN quico

useradd -c 'Angelina Fernandez' -G GRU_ADM clotilde
useradd -c 'Roberto Bolanos' -G GRU_ADM chaves
useradd -c 'Edgar Vivar' -G GRU_ADM nhonho

useradd -c 'Florinda Meza' -G GRU_SEC florinda
useradd -c 'Ruben Aguirre' -G GRU_SEC girafales
useradd -c 'Raul Padilla' -G GRU_SEC jaiminho

echo "Especificando permissões dos diretórios . . . . . . ."
chmod 777 /publico
chmod 750 /adm
chmod 750 /ven
chmod 750 /sec

echo "Concluído"
