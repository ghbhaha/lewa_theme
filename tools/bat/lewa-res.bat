rem ************************************************************
:lewa-res制作部分
rem ************************************************************

:cho_lewa-res
CLS
@echo ********************************************************
@echo.
@echo               LEWA主题制作[移植]助手%version%
@echo.
@echo.                                  
@echo ********************************************************
echo --------------------------------------------------------
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.lewa-res移植
echo   2.lewa-res解包
echo   3.lewa-res打包
echo   4.返回主菜单
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-4]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto lewa-res_yizhi
if /i "%choice%"=="2" goto lewa-res_jiebao
if /i "%choice%"=="3" goto lewa-res_dabao
if /i "%choice%"=="4" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_lewa-res
:lewa-res_jiebao
if exist theme_done\lewa-res (tools\7z x theme_done\lewa-res  -olewa_tmp\lewa-res\
goto cho_lewa-res) else goto cho_lewa-res
:lewa-res_dabao
if exist lewa_tmp\lewa-res (del theme_done\lewa-res
tools\7z a theme_done\lewa-res.zip .\lewa_tmp\lewa-res\*
cd theme_done
ren lewa-res.zip lewa-res
cd ..
goto cho_lewa-res) else goto cho_lewa-res

:lewa-res_yizhi
echo.
echo 功能尚未完成，敬请期待
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_lewa-res