#!/bin/bash

# Defina as URLs dos arquivos necessários
WPS_OFFICE_URL="https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11711/wps-office_11.1.0.11711.XA_amd64.deb"
WPS_LANGUAGE_URL="https://raw.githubusercontent.com/Felipe-Peterle/WPS-Office/main/wps-language-pt-br-1.0.deb"
INSTALL_SCRIPT_URL="https://raw.githubusercontent.com/Felipe-Peterle/WPS-Office/main/install.sh"

# Baixe e instale o pacote WPS Office
wget -q "$WPS_OFFICE_URL" -O /tmp/wps-office.deb
sudo dpkg -i /tmp/wps-office.deb

# Baixe e instale o pacote de idioma português brasileiro
wget -q "$WPS_LANGUAGE_URL" -O /tmp/wps-language-pt-br.deb
sudo dpkg -i /tmp/wps-language-pt-br.deb

# Baixe e execute o script de instalação adicional
wget -q "$INSTALL_SCRIPT_URL" -O /tmp/install.sh
sudo bash /tmp/install.sh