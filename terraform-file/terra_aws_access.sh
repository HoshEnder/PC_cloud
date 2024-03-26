#!/bin/bash

# Demander à l'utilisateur de saisir l'ID de clé d'accès et la clé secrète
read -p "Entrez votre ID de clé d'accès AWS: " aws_access_key
read -p "Entrez votre clé secrète d'accès AWS: " aws_secret_key

# Ajouter les variables d'environnement au fichier .bashrc
echo "export AWS_ACCESS_KEY_ID=${aws_access_key}" >> ~/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=${aws_secret_key}" >> ~/.bashrc

# Charger les variables d'environnement dans la session actuelle
source ~/.bashrc

echo "Les variables d'environnement AWS ont été ajoutées à votre .bashrc et chargées dans la session actuelle."
