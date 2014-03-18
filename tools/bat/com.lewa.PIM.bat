rem ************************************************************
:com.lewa.PIM制作部分
rem ************************************************************

:cho_com.lewa.PIM
CLS
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo   1.com.lewa.PIM移植
echo   2.com.lewa.PIM解包
echo   3.com.lewa.PIM打包
echo   4.返回主菜单
echo --------------------------------------------------------
set choice=
set /p choice= 选择你要进行的操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.lewa.PIM_yizhi
if /i "%choice%"=="2" goto com.lewa.PIM_jiebao
if /i "%choice%"=="3" goto com.lewa.PIM_dabao
if /i "%choice%"=="4" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.lewa.PIM
:com.lewa.PIM_jiebao
if exist theme_done\com.lewa.PIM (tools\7z x theme_done\com.lewa.PIM  -olewa_tmp\com.lewa.PIM\
goto cho_com.lewa.PIM) else goto cho_com.lewa.PIM
:com.lewa.PIM_dabao
if exist lewa_tmp\com.lewa.PIM (del theme_done\com.lewa.PIM
tools\7z a theme_done\com.lewa.PIM.zip .\lewa_tmp\com.lewa.PIM\*
cd theme_done
ren com.lewa.PIM.zip com.lewa.PIM
cd ..
goto cho_com.lewa.PIM) else goto cho_com.lewa.PIM

:com.lewa.PIM_yizhi
echo.
echo 功能尚未完成，敬请期待
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.lewa.PIM