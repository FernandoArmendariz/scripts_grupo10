#!/bin/bash -x

# Variables
path==deploy-de-app-python
github_user=FernandoArmendariz
user_group=grupo10
python_app_name=django-exarcc-$user_group
server_ip="172.22.130.91"

# Clona el repositorio forked
git clone https://github.com/$github_user/$python_app_name.git
cd $python_app_name

# Crear la aplicación deploy-de-app-python
dokku apps:create deploy-de-app-python

# Agrega el repositorio de Dokku como control remoto
git remote add dokku dokku@$server_ip:deploy-de-app-python

# Implementa la aplicación en Dokku
git push dokku master