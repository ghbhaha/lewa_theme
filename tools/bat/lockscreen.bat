rem ************************************************************
:lockscreen制作部分
rem ************************************************************

:cho_lockscreen
CLS
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo   1.lockscreen解包
echo   2.lockscreen打包
echo   3.返回主菜单
echo --------------------------------------------------------
set choice=
set /p choice= 选择你要进行的操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto lockscreen_jiebao
if /i "%choice%"=="2" goto lockscreen_dabao
if /i "%choice%"=="3" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_lockscreen
:lockscreen_jiebao
if exist theme_done\lockscreen (tools\7z x theme_done\lockscreen  -olewa_tmp\lockscreen\
goto cho_lockscreen) else goto cho_lockscreen
:lockscreen_dabao
if exist lewa_tmp\lockscreen (del theme_done\lockscreen
tools\7z a theme_done\lockscreen.zip .\lewa_tmp\lockscreen\*
cd theme_done
ren lockscreen.zip lockscreen
cd ..
goto cho_lockscreen) else goto cho_lockscreen
