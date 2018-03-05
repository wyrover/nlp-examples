@echo off
if [%1] == [] goto runbat_args
if [%1] == [menu] goto menu
:runbat
@color 0A 
@mode con cols=120 rows=30 >nul 
@mode con cp select=936  >nul
title %0

doskey ~=%~dp0\%0 menu

@set PATH=venv\Scripts;%PATH%
@set JAVA_HOME=C:\Java\jdk
@set path=%JAVA_HOME%\bin;%path%
@set classpath=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\toos.jar
@set ANDROID_SDK_HOME=H:\rover\android\adt-bundle-windows-x86_64-20140702\sdk


:menu
echo.
echo  1. ���bpython3                   
echo  2. ���b nltk jieba matplotlib       
echo  3. concordance ���� �����ı���������     
echo  4. similar ���� ��ͬ�����Ć��~
echo  5. common_contexts ���� �������������ϵĴʹ�ͬ��������
echo  6. generate() ����һЩ����ı��Զ���������
echo  7. ˫���ʾ��� n-gram ģ���� n=2����ɵĴ�����
echo  8. text.dispersion_plot([word1, word2,])
echo  9. FreqDist  Ƶ�ʷֲ�

echo.

echo.
echo.

set /p ID="Select action, press 0.99 key: "%

echo.

if %ID%#==1# goto cmd1
if %ID%#==2# goto cmd2
if %ID%#==3# goto cmd3
if %ID%#==4# goto cmd4
if %ID%#==5# goto cmd5
if %ID%#==6# goto cmd6
if %ID%#==7# goto cmd7
if %ID%#==8# goto cmd8
if %ID%#==9# goto cmd9
if %ID%#==10# goto cmd10
if %ID%#==11# goto cmd11
if %ID%#==12# goto cmd12
if %ID%#==13# goto cmd13
if %ID%#==14# goto cmd14
if %ID%#==15# goto cmd15
if %ID%#==16# goto cmd16
if %ID%#==17# goto cmd17
if %ID%#==18# goto cmd18
if %ID%#==19# goto cmd19
if %ID%#==20# goto cmd20
if %ID%#=="" goto menu
if %ID%#==34# goto menu

::-------------------------------------------------------------------------
:: Android
:cmd1
cd /d "%~dp0"
echo %path%
::scoop install python
::pip install virtualenv
::virtualenv venv
venv\Scripts\activate
python --version
goto exit


::-------------------------------------------------------------------------
:: Genymotion
:cmd2
pip install nltk
pip install jieba
pip install matplotlib
pip install beautifulsoup4
pip install html5lib
goto exit


::-------------------------------------------------------------------------
:: motodevstudio
:cmd3

python src/01.py
goto exit


::-------------------------------------------------------------------------
:: Android Studio 
:cmd4

python src/02.py
goto exit


::-------------------------------------------------------------------------
:: ��װapache����
:cmd5

python src/03.py
goto exit


::-------------------------------------------------------------------------
:: ��װtomcat����   
:cmd6
::cd /d "D:\tools\xampp\tomcat"
::net start "roverTomcat" >nul
::bin\mysqld.exe --remove "roverMySQL"
goto exit

::-------------------------------------------------------------------------
:: ж��tomcat����  
:cmd7
::cd /d "D:\tools\xampp\tomcat"
::net stop "roverTomcat" >nul
::bin\mysqld.exe --remove "roverMySQL"
goto exit



:cmd8
python src/04.py
goto exit


:cmd9
python src/05.py
goto exit

:runbat_args
start shell.bat 111

:exit
echo.


