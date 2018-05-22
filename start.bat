cls 
@ECHO OFF 
SET NGINX_PATH=F: 
SET NGINX_DIR=F:\web\nginx-1.0.11\ 
color 0a 
TITLE Nginx 管理程序 Power By ChenJianxiang 
GOTO MENU 
:MENU 
CLS 
ECHO. 
ECHO. * * * *  Nginx 管理程序 Power By ChenJianxiang  * * *  
ECHO. * * 
ECHO. * 1 启动Nginx * 
ECHO. * * 
ECHO. * 2 关闭Nginx * 
ECHO. * * 
ECHO. * 3 重启Nginx * 
ECHO. * * 
ECHO. * 4 退 出 * 
ECHO. * * 
ECHO. * * * * * * * * * * * * * * * * * * * * * * * * 
ECHO. 
ECHO.请输入选择项目的序号： 
set /p ID= 
IF "%id%"=="1" GOTO cmd1 
IF "%id%"=="2" GOTO cmd2 
IF "%id%"=="3" GOTO cmd3 
IF "%id%"=="4" EXIT 
PAUSE 
:cmd1 
ECHO. 
ECHO.启动Nginx...... 
IF NOT EXIST D:\nginx-1.12.2\nginx.exe ECHO D:\nginx-1.12.2\nginx.exe不存在 
D:
cd D:\nginx-1.12.2\
IF EXIST nginx.exe start D:\nginx-1.12.2\nginx.exe 
ECHO.OK 
PAUSE 
GOTO MENU 
:cmd2 
ECHO. 
ECHO.关闭Nginx...... 
taskkill /F /IM nginx.exe > nul 
ECHO.OK 
PAUSE 
GOTO MENU 
:cmd3 
ECHO. 
ECHO.关闭Nginx...... 
taskkill /F /IM nginx.exe > nul 
ECHO.OK 
GOTO cmd1 
GOTO MENU