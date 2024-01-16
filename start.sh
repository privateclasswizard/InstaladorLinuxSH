echo "Bem vindo! "
echo "Estamos no diretorio $(pwd)"

@ECHO OFF

:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: variáveis com url para download dos programas complementares
:::::::::::::::::::::::::::::::::::::::::::::::::::::



while true; do
    clear
	echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::"
	echo ":::::::: Prof. Romulo (rfdouro@gmail.com) :::::::::::::"
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
	echo "--- 3 - Executar MARIADB - senha SECRET - porta 3360"
	echo "--- 4 - Executar DBEAVER"
	echo "--- 5 - Executar ANDROID STUDIO"
	echo "--- 6 - Executar NOTEPAD"
	echo "--------- Instalações e Configurações ---------------"
	echo "--- 100 - Instala VSCODE e Configura"
	echo "--- 101 - Instalar JAVA"
	echo "--- 102 - Instalar NODEJS & npm"
	echo "--- 103 - Instalar PYTHON"
	echo "--- 103 - Instalar GIT"
	echo "--- 104 - instalar VueCLI"
	echo "--- 105 - Instala JNetBeans"
	echo "--- 103 - Instalar o Android Studio"
	echo "--- 104 - Instalar o MariaDB e DBeaver"
    echo "--- 105 - Instalar VirtualBox"

	echo "--------- Auxiliares --------------------------------"
	echo "--- 200 - Abrir Terminal"
	echo "--- 201 - Visual Paradigm online"
	echo "--- 202 - YED online"
    echo ":::::::::::::::::::::::::::::::::::::::::::::::::::"
    
    echo "--------- PRF ESTA ATRAS DE MIM ---------------"
    echo "--- art.154 - corre que a PRF ESTA ATRAS"
    
    read -p "Escolha uma opcao: " UserInput
    echo

    case $UserInput in
        0)
            exit
            ;;
        1)
            ExecVSCODE
            ;;
        2)
            ExecNETBEANS
            ;;
        3)
            ExecMARIADB
            ;;
        4)
            ExecDBEAVER
            ;;
        5)
            ExecANDROIDSTUDIO
            ;;
        6)
            ExecNOTEPAD
            ;;
        100)
            BaixaVSCODE
            ;;
        101)
			BaixaJDK
            ;;
        102)
            BaixaNode
            ;;
        103)
            BaixaPYTHON
            ;;
        105)
            BaixaGit
            ;;
        106)
            BaixarVue
            ;;
		107)
			BaixarNetbeans
			;;
		108)
			BaixarAndroid
			;;
		109)
			BaixarMariadbEDBeaver
			;;
        200)
            AbreCMD
            ;;
        201)
            AbreVisualParadigm
            ;;
        202)
            AbreYed
            ;;
        *)
            echo "Opcao invalida. Tente novamente."
            ;;
    esac
ExecVSCODE() {
    code
}

ExecNETBEANS() {
    netbeans
}

ExecMARIADB() {
    mariadb -h localhost -P 3360 -u root -pSECRET
}

ExecDBEAVER() {
    dbeaver-ce
}

ExecANDROIDSTUDIO() {
    studio.sh # Substitua com o comando real para executar o Android Studio
}

ExecNOTEPAD() {
    notepad # Substitua com o comando real para executar o Notepad++
}

BaixaVSCODE() {
    wget -O vscode_amd64.deb "$URL_VSCODE"
    echo ""
    read -p "Pressione ENTER para instalar o Visual Studio Code..."
    ExecVSCODE
}

BaixaJDK() {
    sudo apt-get install default-jdk
}

BaixaNode() {
	sudo apt-get install nodejs npm
}

BaixaPYTHON() {
    sudo apt-get install python
}

BaixaGit() {
    sudo apt-get install git
}

BaixarVue() {
    npm install -g @vue/cli
}

BaixarNetbeans() {
    wget https://www.apache.org/dyn/closer.cgi/netbeans/netbeans/12.0/Apache-NetBeans-12.0-bin-linux-x64.sh
    chmod +x Apache-NetBeans-12.0-bin-linux-x64.sh
    ./Apache-NetBeans-12.0-bin-linux-x64.sh
}

BaixarVirtualBox(){
    sudo apt-get update
    sudo apt-get install virtualbox
    sudo apt-get install virtualbox—ext–pack
} 

BaixarAndroid() {

    sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

    Coloque aqui os comandos para baixar e instalar o Android Studio
    wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2020.3.1.24/android-studio-2020.3.1.24-linux.tar.gz
    tar -xzvf android-studio-2020.3.1.24-linux.tar.gz
    ./android-studio/bin/studio.sh
}

BaixarMariadbEDBeaver() {
    echo "Instalando o MariaDB..."
    sudo apt update
    sudo apt install -y mariadb-server

    echo "Iniciando o MariaDB..."
    sudo systemctl start mariadb.service

    echo "Configurando o MariaDB..."
    sudo mysql_secure_installation

    echo "Criando usuário administrativo..."
    sudo mariadb <<EOF
    GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'sua_senha' WITH GRANT OPTION;
    FLUSH PRIVILEGES;
EOF

}

done

