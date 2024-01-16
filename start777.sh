#!/bin/bash

# Mensagem inicial
echo "Estamos no diretório $(pwd)"
echo "Em $(dirname "$0")"

# Instalação das dependências
sudo apt-get update
sudo apt-get install -y openjdk-17-jdk nodejs npm git python

#

# Baixa e extrai o VSCode
wget -O vscode.tar.gz "https://az764295.vo.msecnd.net/stable/f1b07bd25dfad64b0167beb15359ae573aecd2cc/VSCode-linux-x64-1.83.1.tar.gz"
tar -xzf vscode.tar.gz
rm vscode.tar.gz

# Baixa e extrai o NetBeans
wget -O netbeans.tar.gz "https://dlcdn.apache.org/netbeans/netbeans/19/netbeans-19-bin.zip"
tar -xzf netbeans.tar.gz
rm netbeans.tar.gz

# Baixa e extrai o Adroid Studio
wget -O androidstudio.tar.gz "https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.18/android-studio-2022.3.1.18-linux.zip"
tar -xzf androidstudio.tar.gz
rm androidstudio.tar.gz

#Baixar e extrair o apachemaven
wget -O apachemaven.tar.gz "https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz"
tar -xvf apachemaven.tar.gz
rm apachemaven.tar.gz

#Baixar e extrair o apachemaven
wget -O apachemaven.tar.gz "https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz"
tar -xvf apachemaven.tar.gz
rm apachemaven.tar.gz



# Mensagem inicial
clear
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::: Prof. Romulo (rfdouro@gmail.com) ::::::::::::::"
echo ":::::: Douglas Lessa (gitHub privateclasswizard) :::::: "
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "--- !! ATENÇÃO - ALGUNS programas NÃO estão instalados !!"
echo "--- SEMPRE QUE INSTALAR UM PROGRAMA AQUI,"
echo "--- EXECUTE-O A PARTIR DESTE SCRIPT (start.sh)"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "--- Instale o SDK Android no diretório DEVAPP/android/sdk"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "--- OPÇÕES ------------------------------------------"
echo "--- 0 - SAIR"
echo "--- 1 - Executar VSCODE"
echo "--- 2 - Executar NETBEANS"
echo "--- 2 - Executar NETBEANS"
echo "--- 3 - Executar MARIADB - senha SECRET - porta 3360"
echo "--- 4 - Executar DBEAVER"
echo "--- 5 - Executar ANDROID STUDIO"
echo "--- 6 - Executar NOTEPAD"
echo "--------- Instalações e Configurações ---------------"
echo "--- 100 - Instala VSCODE e Configura"
echo "--- 101 - Instala NODE VueCLI e Git"
echo "--- 102 - Instala JNetBeans"
echo "--- 103 - Instalar o Android Studio"
echo "--- 104 - Instalar o MariaDB e DBeaver"

echo "--------- Auxiliares --------------------------------"
echo "--- 200 - Abrir Terminal"
echo "--- 201 - Visual Paradigm online"
echo "--- 202 - YED online"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"


# Menu principal
while true; do
  echo ""
  echo "Opção escolhida:"
  read -p "Escolha uma opção: " UserInput

  case $UserInput in
    0)
      exit ;;
    1)
      code --extensions-dir "$HOME/.vscode/extensions" --user-data-dir "$HOME/.vscode/userdir" ;;
    2)
      code --extensions-dir "$HOME/.netbeans/extensions" --user-data-dir
      ;;
    # ... (adicionar outras opções conforme necessário)
    *)
      echo "Opção inválida. Tente novamente." ;;
  esac
done
