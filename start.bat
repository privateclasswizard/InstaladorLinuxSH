:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: mensagem inicial
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: @ECHO Estamos no drive %cd:~0,2%
:: @ECHO Em %~dp0
@ECHO OFF

:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: variáveis com url para download dos programas complementares
:::::::::::::::::::::::::::::::::::::::::::::::::::::
set downvscode=https://az764295.vo.msecnd.net/stable/f1b07bd25dfad64b0167beb15359ae573aecd2cc/VSCode-win32-x64-1.83.1.zip
set arqvscode=VSCode-win32-x64-1.83.1.zip
set nomevscode=vscode

set downnetbeans=https://dlcdn.apache.org/netbeans/netbeans/19/netbeans-19-bin.zip
set arqnetbeans=netbeans-19-bin.zip
set nomenetbeans=netbeans

set downandroidstudio=https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.18/android-studio-2022.3.1.18-windows.zip
set arqandroidstudio=android-studio-2022.3.1.18-windows.zip

set downnode=https://nodejs.org/download/release/v18.18.2/node-v18.18.2-win-x64.zip
set arqnode=node-v18.18.2-win-x64.zip
set nomenode=node-v18.18.2-win-x64

set downjdk=https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_windows-x64_bin.zip
set arqjdk=openjdk-17.0.2_windows-x64_bin.zip
set nomejdk=jdk-17.0.2

set downmaven=https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.zip
set arqmaven=apache-maven-3.9.5-bin.zip
set nomemaven=apache-maven-3.9.5

set downmariadb=https://dlm.mariadb.com/3399307/MariaDB/mariadb-11.0.3/winx64-packages/mariadb-11.0.3-winx64.zip
set arqmariadb=mariadb-11.0.3-winx64.zip
set nomemariadb=mariadb-11.0.3-winx64

set downgit=https://github.com/git-for-windows/git/releases/download/v2.41.0.windows.3/PortableGit-2.41.0.3-64-bit.7z.exe
set arqgit=PortableGit-2.41.0.3-64-bit.7z.exe

set downpython=https://www.python.org/ftp/python/3.11.5/python-3.11.5-embed-amd64.zip
set arqpython=python-3.11.5-embed-amd64.zip
set nomepython=python

set downdbeaver=https://dbeaver.io/files/dbeaver-ce-latest-win32.win32.x86_64.zip
set arqdbeaver=dbeaver-ce-latest-win32.win32.x86_64.zip
set nomedbeaver=dbeaver-ce-latest-win32.win32.x86_64

set downyed=https://www.yworks.com/resources/yed/demo/yEd-3.23.2.zip
set arqyed=yEd-3.23.2.zip
set nomeyed=yEd-3.23.2


:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: variaveis de ambiente para o windows
:: configura o caminho para o sdk android
:: para o jdk, node, vscode etc
:: sempre execute os programas usando esse arquivo
:: para ter sempre funcionando corretamente
:::::::::::::::::::::::::::::::::::::::::::::::::::::
set ANDROID_STUDIO_HOME=%~dp0%android\android-studio
set ANDROID_HOME=%~dp0%android\sdk
set ANDROID_SDK_ROOT=%~dp0%android\sdk
set JAVA_HOME=%~dp0%jdk
set MAVEN_HOME=%~dp0%maven
set NODE_HOME=%~dp0%node
set VSCODE_HOME=%~dp0%vscode
set NETBEANS_HOME=%~dp0%netbeans
set DBEAVER_HOME=%~dp0%dbeaver
set MARIADB_HOME=%~dp0%mariadb
set WGET_HOME=%~dp0%wget
set SEVENZIP_HOME=%~dp0%sevenzip
set NOTEPAD_HOME=%~dp0%notepad++
set GIT_HOME=%~dp0%git
set PYTHON_HOME=%~dp0%python

:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: altera o path do windows adicinoando os novos diretórios
:: adiciona o path original no final
:: set PathAUX=%JAVA_HOME%\bin;%NODE_HOME%;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools;%ANDROID_HOME%\emulator;%VSCODE_HOME%;%WGET_HOME%;%SEVENZIP_HOME%;%NOTEPAD_HOME%;%GIT_HOME%\bin
set PathAUX=%JAVA_HOME%\bin;%MAVEN_HOME%\bin;%NODE_HOME%;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\emulator;%ANDROID_HOME%\tools;%VSCODE_HOME%;%WGET_HOME%;%SEVENZIP_HOME%;%NOTEPAD_HOME%;%GIT_HOME%\bin;%PYTHON_HOME%
set Path=%PathAUX%;%Path%;
:::::::::::::::::::::::::::::::::::::::::::::::::::::


:Top
cls
@ECHO OFF
color 5F
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :::::::::: Prof. Romulo (rfdouro@gmail.com) :::::::::
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO --- !! ATENCAO - ALGUNS programas NAO estao instalados !!
ECHO --- SEMPRE QUE INSTALAR UM PROGRAMA AQUI,
ECHO --- EXECUTE-O A PARTIR DAQUI ("start.bat")
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO --- Instale o SDK Android no diretorio DEVAPP\android\sdk
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO --- OPCOES ------------------------------------------
ECHO --- 0 - SAIR
ECHO --- 1 - Executar VSCODE
ECHO --- 2 - Executar NETBEANS
ECHO --- 3 - Executar MARIADB - senha SECRET - porta 3360
ECHO --- 4 - Executar DBEAVER
ECHO --- 5 - Executar ANDROID STUDIO
ECHO --- 6 - Executar NOTEPAD
ECHO --------- Instalacoes e Configuracoes ---------------
ECHO --- 100 - Instala VSCODE e Configura
ECHO --- 101 - Instala NODE VueCLI e Git
ECHO --- 102 - Instala JDK Maven e NetBeans
ECHO --- 103 - Instalar o Android Studio
ECHO --- 104 - Instalar o MariaDB e DBeaver
ECHO --- 105 - Instalar o PYTHON
ECHO --------- Auxiliares --------------------------------
ECHO --- 200 - Abrir CMD
ECHO --- 201 - Visual Paradigm online
ECHO --- 202 - YED online
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
SET /P UserInput=Escolha uma opcao: 
ECHO.
cls
ECHO Opcao escolhida = %UserInput%
ECHO.
SET /A Evaluated=UserInput
if %Evaluated% EQU %UserInput% (
    IF %UserInput% EQU 0 ( GOTO :EOF )
	IF %UserInput% EQU 1 ( GOTO :ExecVSCODE )
	IF %UserInput% EQU 2 ( GOTO :ExecNETBEANS )
	IF %UserInput% EQU 3 ( GOTO :ExecMARIADB )		
	IF %UserInput% EQU 4 ( GOTO :ExecDBEAVER )
	IF %UserInput% EQU 5 ( GOTO :ExecANDROIDSTUDIO )	
	IF %UserInput% EQU 6 ( GOTO :ExecNOTEPAD )
	IF %UserInput% EQU 100 ( GOTO :BaixaVSCODE )	
	IF %UserInput% EQU 101 ( GOTO :BaixaNode )	
	IF %UserInput% EQU 102 ( GOTO :BaixaJDK )
	IF %UserInput% EQU 103 ( GOTO :BaixaANDROID )
	IF %UserInput% EQU 104 ( GOTO :BaixaMARIADB )	
	IF %UserInput% EQU 105 ( GOTO :BaixaPYTHON )	
	IF %UserInput% EQU 200 ( GOTO :AbreCMD )
	IF %UserInput% EQU 201 ( GOTO :AbreVisualParadigm )
	IF %UserInput% EQU 202 ( GOTO :AbreYed )
) ELSE (
    ECHO Non-Integer
)

GOTO :Top


:::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 
:: seção de execuções
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::

:AbreCMD
:: ECHO %~dp0
start "CMD" cmd /c "start"
GOTO :Top

:AbreVisualParadigm
start https://online.visual-paradigm.com/pt/diagrams/solutions/free-visual-paradigm-online/
GOTO :Top

:AbreYed
start https://www.yworks.com/yed-live/
GOTO :Top

:ExecVSCODE
IF EXIST "%VSCODE_HOME%\code.exe" (
	start "VSCode" cmd /c "start %VSCODE_HOME%\code.exe --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir"
) ELSE (
	color 4F
	ECHO VSCODE NAO INSTALADO - USE A OPCAO 100
	ECHO ......................................
	PAUSE
)
GOTO :Top

:ExecNETBEANS
IF EXIST "%NETBEANS_HOME%\bin\netbeans64.exe" (
	start "Netbeans" cmd /c "start %NETBEANS_HOME%\bin\netbeans64.exe --jdkhome %JAVA_HOME%"
) ELSE (
	color 4F
	ECHO NETBEANS NAO INSTALADO - USE A OPCAO 102
	ECHO ......................................
	PAUSE
)
GOTO :Top

:ExecDBEAVER
IF EXIST "%DBEAVER_HOME%\dbeaver.exe" (
	start %DBEAVER_HOME%\dbeaver.exe
) ELSE (
	color 4F
	ECHO DBEAVER NAO INSTALADO - USE A OPCAO 104
	ECHO ......................................
	PAUSE
)
GOTO :Top

:ExecANDROIDSTUDIO
IF EXIST "%ANDROID_STUDIO_HOME%\bin\studio64.exe" (
	start %ANDROID_STUDIO_HOME%\bin\studio64.exe
) ELSE (
	color 4F
	ECHO ANDROID STUDIO NAO INSTALADO - USE A OPCAO 103
	ECHO ......................................
	PAUSE
)
GOTO :Top

:ExecNOTEPAD
:: ECHO %~dp0
start notepad++
GOTO :Top

:ExecMARIADB
IF EXIST "%MARIADB_HOME%\bin\mysql_install_db.exe" (
	start "Mariadb" cmd /c "ECHO ATENCAO & ECHO --------------------------------------- & ECHO Nao feche essa janela enquanto estiver usando o MariaDB & ECHO O MariaDB estara rodando na porta 3360 e a senha e SECRET & ECHO --------------------------------------- & pause & %MARIADB_HOME%\bin\mysql_install_db --password=SECRET & %MARIADB_HOME%\bin\mysqld --port=3360 --console"
) ELSE (
	color 4F
	ECHO MARIADB NAO INSTALADO - USE A OPCAO 104
	ECHO ......................................
	PAUSE
)
GOTO :Top

:::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 
:: seção de instalações 
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::


:ExecINSTEXTVSCODE
:: executa o vscode indicando o caminho das extensões
:: mais em https://code.visualstudio.com/docs/editor/extension-marketplace#_common-questions
:: mais em https://code.visualstudio.com/docs/editor/command-line
:: mais em https://code.visualstudio.com/docs/editor/command-line#_advanced-cli-options
:: ECHO %~dp0
ECHO ---------------------------------------
@ECHO Instalacao de extensoes do VSCODE
@ECHO OFF
ECHO Em %VSCODE_HOME%
ECHO ---------------------------------------
::pause
cd %VSCODE_HOME%\bin\
call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension christian-kohler.npm-intellisense ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension christian-kohler.path-intellisense ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension dbaeumer.vscode-eslint ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension esbenp.prettier-vscode ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension formulahendry.auto-close-tag ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension formulahendry.auto-rename-tag ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension formulahendry.code-runner  ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension GitHub.github-vscode-theme ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension grogdunn.netbeans-keybindings ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension hollowtree.vue-snippets ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension JakeWilson.vscode-cdnjs ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension mrmlnc.vscode-scss ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension obrejla.netbeans-light-theme ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension octref.vetur ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension PKief.material-icon-theme ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension redhat.fabric8-analytics ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension redhat.java ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension redhat.vscode-community-server-connector ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension redhat.vscode-rsp-ui ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension redhat.vscode-server-connector ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension redhat.vscode-xml ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension ritwickdey.LiveServer ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension sdras.vue-vscode-snippets ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vadimcn.vscode-lldb ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension VisualStudioExptTeam.intellicode-api-usage-examples ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension VisualStudioExptTeam.vscodeintellicode ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vmware.vscode-boot-dev-pack ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vmware.vscode-spring-boot ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-java-debug ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-java-dependency ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-java-pack ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-java-test ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-maven ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-spring-boot-dashboard ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscjava.vscode-spring-initializr ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension vscode-icons-team.vscode-icons ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension Vue.volar ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension yzhang.markdown-all-in-one ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension Zignd.html-css-class-completion ^
&& call code --extensions-dir %VSCODE_HOME%\extensions --user-data-dir %VSCODE_HOME%\userdir --install-extension diemasmichiels.emulate
pause
GOTO :Top

:ExecINSTVUE
:: ECHO %~dp0
start "Instala vue" cmd /c "npm i -g @vue/cli"
GOTO :Top


:::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 
:: seção de instalações de programas
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::

:BaixaVSCODE
:: ECHO %~dp0
cd %VSCODE_HOME%
wget %downvscode%
7z x %arqvscode%
del /F %arqvscode%
mkdir userdir
cd userdir 
mkdir User
cd %~dp0
copy settings.json %VSCODE_HOME%\userdir\User
::pause
::GOTO :Top
GOTO :ExecINSTEXTVSCODE

:::::: ok
:BaixaANDROID
:: ECHO %~dp0
cd %ANDROID_STUDIO_HOME%
cd..
wget %downandroidstudio%
7z x %arqandroidstudio%
del %arqandroidstudio%
pause
GOTO :Top

:BaixaNode
:: ECHO %~dp0
cd %~dp0
wget %downnode%
rmdir /S /Q node
7z x %arqnode% 
del /F %arqnode%
ren %nomenode% node
start "VueCLI" cmd /c "npm install -g @vue/cli"
cd %~dp0
GOTO :BaixaGIT

:BaixaJDK
:: ECHO %~dp0
cd %~dp0
wget %downjdk%
rmdir /S /Q jdk
7z x %arqjdk% 
del /F %arqjdk%
ren %nomejdk% jdk
cd %~dp0
GOTO :BaixaMaven

:BaixaMaven
:: ECHO %~dp0
cd %~dp0
wget %downmaven%
rmdir /S /Q maven
7z x %arqmaven% 
del /F %arqmaven%
ren %nomemaven% maven
cd %~dp0
GOTO :BaixaNETBEANS

:BaixaNETBEANS
:: ECHO %~dp0
cd %~dp0
wget %downnetbeans%
7z x %arqnetbeans%
del /F %arqnetbeans%
pause
GOTO :Top

:BaixaGIT
:: ECHO %~dp0
cd %~dp0
rmdir /S /Q git
mkdir git
cd %GIT_HOME%
wget %downgit%
7z x %arqgit%
del /F %arqgit%
pause
cd %~dp0
GOTO :Top

:BaixaDBEAVER
:: ECHO %~dp0
cd %~dp0
wget %downdbeaver%
7z x %arqdbeaver%
del /F %arqdbeaver%
pause
GOTO :Top

:BaixaMARIADB
:: ECHO %~dp0
cd %~dp0
wget %downmariadb%
rmdir /S /Q mariadb
7z x %arqmariadb% 
del /F %arqmariadb%
ren %nomemariadb% mariadb
GOTO :BaixaDBEAVER

:BaixaPYTHON
:: ECHO %~dp0
cd %~dp0
rmdir /S /Q %PYTHON_HOME%
mkdir %PYTHON_HOME%
cd %PYTHON_HOME%
wget %downpython%
7z x %arqpython%
del /F %arqpython%
pause
GOTO :Top

:BaixaYED
:: ECHO %~dp0
cd %~dp0
wget %downyed%
rmdir /S /Q %YED_HOME%
7z x %arqyed% 
del /F %arqyed%
ren %nomeyed% yed
pause
GOTO :Top

:ExecYED
:: ECHO %~dp0
cd %YED_HOME%
start "YED" cmd /c "java -jar yed.jar"
GOTO :Top