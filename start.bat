cls 
@ECHO OFF 
SET NGINX_PATH=F: 
SET NGINX_DIR=F:\web\nginx-1.0.11\ 
color 0a 
TITLE Nginx ������� Power By ChenJianxiang 
GOTO MENU 
:MENU 
CLS 
ECHO. 
ECHO. * * * *  Nginx ������� Power By ChenJianxiang  * * *  
ECHO. * * 
ECHO. * 1 ����Nginx * 
ECHO. * * 
ECHO. * 2 �ر�Nginx * 
ECHO. * * 
ECHO. * 3 ����Nginx * 
ECHO. * * 
ECHO. * 4 �� �� * 
ECHO. * * 
ECHO. * * * * * * * * * * * * * * * * * * * * * * * * 
ECHO. 
ECHO.������ѡ����Ŀ����ţ� 
set /p ID= 
IF "%id%"=="1" GOTO cmd1 
IF "%id%"=="2" GOTO cmd2 
IF "%id%"=="3" GOTO cmd3 
IF "%id%"=="4" EXIT 
PAUSE 
:cmd1 
ECHO. 
ECHO.����Nginx...... 
IF NOT EXIST D:\nginx-1.12.2\nginx.exe ECHO D:\nginx-1.12.2\nginx.exe������ 
D:
cd D:\nginx-1.12.2\
IF EXIST nginx.exe start D:\nginx-1.12.2\nginx.exe 
ECHO.OK 
PAUSE 
GOTO MENU 
:cmd2 
ECHO. 
ECHO.�ر�Nginx...... 
taskkill /F /IM nginx.exe > nul 
ECHO.OK 
PAUSE 
GOTO MENU 
:cmd3 
ECHO. 
ECHO.�ر�Nginx...... 
taskkill /F /IM nginx.exe > nul 
ECHO.OK 
GOTO cmd1 
GOTO MENU