#!/bin/bash

# Define a URL de download do WPS Office e o arquivo de idioma
WPS_OFFICE_URL="https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11711/wps-office_11.1.0.11711.XA_amd64.deb"
WPS_LANGUAGE_PACKAGE="wps-language-pt-br-1.0.deb"

# Baixa o pacote WPS Office para o diretório /tmp
wget "$WPS_OFFICE_URL" -O /tmp/wps-office.deb

# Instala o pacote WPS Office
sudo dpkg -i /tmp/wps-office.deb

# Instala o pacote de idioma
sudo dpkg -i "$WPS_LANGUAGE_PACKAGE"

# Executa o script de instalação adicional
./install.sh
