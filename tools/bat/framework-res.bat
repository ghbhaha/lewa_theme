rem ************************************************************
:framework-res制作部分
rem ************************************************************

:cho_framework-res
CLS
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo   1.framework-res移植
echo   2.framework-res解包
echo   3.framework-res打包
echo   4.返回主菜单
echo --------------------------------------------------------
set choice=
set /p choice= 选择你要进行的操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto framework-res_yizhi
if /i "%choice%"=="2" goto framework-res_jiebao
if /i "%choice%"=="3" goto framework-res_dabao
if /i "%choice%"=="4" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_framework-res
:framework-res_jiebao
if exist theme_done\framework-res (tools\7z x theme_done\framework-res  -olewa_tmp\framework-res\
goto cho_framework-res) else goto cho_framework-res
:framework-res_dabao
if exist lewa_tmp\framework-res (del theme_done\framework-res
tools\7z a theme_done\framework-res.zip .\lewa_tmp\framework-res\*
cd theme_done
ren framework-res.zip framework-res
cd ..
goto cho_framework-res) else goto cho_framework-res

:framework-res_yizhi
echo.
echo 功能尚未完成，敬请期待
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_framework-res