#!/bin/bash

# Mensagem inicial
echo "Estamos no diretório $(pwd)"
echo "Em $(dirname "$0")"

# URLs para download dos programas complementares
downvscode="https://az764295.vo.msecnd.net/stable/f1b07bd25dfad64b0167beb15359ae573aecd2cc/VSCode-linux-x64-1.83.1.tar.gz"
arqvscode="VSCode-linux-x64-1.83.1.tar.gz"
nomevscode="vscode"

downnetbeans="https://dlcdn.apache.org/netbeans/netbeans/19/netbeans-19-bin.zip"
arqnetbeans="netbeans-19-bin.zip"
nomenetbeans="netbeans"

downandroidstudio="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.18/android-studio-2022.3.1.18-linux.zip"
arqandroidstudio="android-studio-2022.3.1.18-linux.zip"

downnode="https://nodejs.org/download/release/v18.18.2/node-v18.18.2-linux-x64.tar.xz"
arqnode="node-v18.18.2-linux-x64.tar.xz"
nomenode="node-v18.18.2-linux-x64"

downjdk="https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz"
arqjdk="openjdk-17.0.2_linux-x64_bin.tar.gz"
nomejdk="jdk-17.0.2"

downmaven="https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz"
arqmaven="apache-maven-3.9.5-bin.tar.gz"
nomemaven="apache-maven-3.9.5"

downmariadb="https://dlm.mariadb.com/3399307/MariaDB/mariadb-11.0.3/linux-x86_64-packages/mariadb-11.0.3-linux-x86_64.tar.gz"
arqmariadb="mariadb-11.0.3-linux-x86_64.tar.gz"
nomemariadb="mariadb-11.0.3-linux-x86_64"

downgit="https://github.com/git-for-linux/git/releases/download/v2.41.0.windows.3/PortableGit-2.41.0.3-64-bit.7z.exe"
arqgit="PortableGit-2.41.0.3-64-bit.7z.exe"

downpython="https://www.python.org/ftp/python/3.11.5/Python-3.11.5.tgz"
arqpython="Python-3.11.5.tgz"
nomepython="python"

downdbeaver="https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
arqdbeaver="dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
nomedbeaver="dbeaver-ce-latest-linux.gtk.x86_64"

downyed="https://www.yworks.com/resources/yed/demo/yEd-3.23.2.zip"
arqyed="yEd-3.23.2.zip"
nomeyed="yEd-3.23.2"

# Variáveis de ambiente para o Linux
ANDROID_STUDIO_HOME="$(pwd)/android/android-studio"
ANDROID_HOME="$(pwd)/android/sdk"
JAVA_HOME="$(pwd)/jdk"
MAVEN_HOME="$(pwd)/maven"
NODE_HOME="$(pwd)/node"
VSCODE_HOME="$(pwd)/vscode"
NETBEANS_HOME="$(pwd)/netbeans"
DBEAVER_HOME="$(pwd)/dbeaver"
MARIADB_HOME="$(pwd)/mariadb"
GIT_HOME="$(pwd)/git"
PYTHON_HOME="$(pwd)/python"

# Altera o PATH adicionando os novos diretórios
export PATH="$JAVA_HOME/bin:$NODE_HOME:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$VSCODE_HOME:$WGET_HOME:$SEVENZIP_HOME:$NOTEPAD_HOME:$GIT_HOME/bin:$PYTHON_HOME:$PATH"

# Mensagem inicial
clear
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::: Prof. Romulo (rfdouro@gmail.com) ::::::::::::::"
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
echo "--- 3 - Executar MARIADB - senha SECRET - porta 3360"
echo "--- 4 - Executar DBEAVER"
echo "--- 5 - Executar ANDROID STUDIO"
echo "--- 6 - Executar NOTEPAD"
echo "--------- Instalações e Configurações ---------------"
echo "--- 100 - Instala VSCODE e Configura"
echo "--- 101 - Instala NODE VueCLI e Git"
echo "--- 102 - Instala JDK Maven e NetBeans"
echo "--- 103 - Instalar o Android Studio"
echo "--- 104 - Instalar o MariaDB e DBeaver"
echo "--- 105 - Instalar o PYTHON"
echo "--------- Auxiliares --------------------------------"
echo "--- 200 - Abrir Terminal"
echo "--- 201 - Visual Paradigm online"
echo "--- 202 - YED online"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"

# Função para executar o VSCODE
ExecVSCODE() {
  if [ -f "$VSCODE_HOME/bin/code" ]; then
    "$VSCODE_HOME/bin/code" --extensions-dir "$VSCODE_HOME/extensions" --user-data-dir "$VSCODE_HOME/userdir"
  else
    echo "VSCODE NÃO INSTALADO - USE A OPÇÃO 100"
    echo "......................................"
    read -p "Pressione Enter para continuar..."
  fi
}

# Função para executar o NETBEANS
ExecNETBEANS() {
  if [ -f "$NETBEANS_HOME/bin/netbeans" ]; then
    "$NETBEANS_HOME/bin/netbeans" --jdkhome "$JAVA_HOME"
  else
    echo "NETBEANS NÃO INSTALADO - USE A OPÇÃO 102"
    echo "......................................"
    read -p "Pressione Enter para continuar..."
  fi
}

# Função para executar o DBEAVER
ExecDBEAVER() {
  if [ -f "$DBEAVER_HOME/dbeaver" ]; then
    "$DBEAVER_HOME/dbeaver"
  else
    echo "DBEAVER NÃO INSTALADO - USE A OPÇÃO 104"
    echo "......................................"
    read -p "Pressione Enter para continuar..."
  fi
}

# Função para executar o ANDROID STUDIO
ExecANDROIDSTUDIO() {
  if [ -f "$ANDROID_STUDIO_HOME/bin/studio.sh" ]; then
    "$ANDROID_STUDIO_HOME/bin/studio.sh"
  else
    echo "ANDROID STUDIO NÃO INSTALADO - USE A OPÇÃO 103"
    echo "......................................"
    read -p "Pressione Enter para continuar..."
  fi
}

# Função para executar o NOTEPAD
ExecNOTEPAD() {
  notepad++
}

# Menu principal
while true; do
  echo ""
  echo "Opção escolhida:"
  read -p "Escolha uma opção: " UserInput

  case $UserInput in
    0)
      exit ;;
    1)
      ExecVSCODE ;;
    2)
      ExecNETBEANS ;;
    3)
      ExecMARIADB ;;
    4)
      ExecDBEAVER ;;
    5)
      ExecANDROIDSTUDIO ;;
    6)
      ExecNOTEPAD ;;
    100)
      BaixaVSCODE ;;
    101)
      BaixaNode ;;
    102)
      BaixaJDK ;;
    103)
      BaixaANDROID ;;
    104)
      BaixaMARIADB ;;
    105)
      BaixaPYTHON ;;
    200)
      gnome-terminal & ;;
    201)
      xdg-open "https://online.visual-paradigm.com/pt/diagrams/solutions/free-visual-paradigm-online/" ;;
    202)
      xdg-open "https://www.yworks.com/yed-live/" ;;
    *)
      echo "Opção inválida. Tente novamente." ;;
  esac
done

