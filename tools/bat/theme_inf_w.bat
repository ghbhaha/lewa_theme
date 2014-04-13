:menu
set /p theme_name_z=<"tools\theme_inf\theme_name_z.txt"
set /p theme_name_e=<"tools\theme_inf\theme_name_e.txt"
set /p theme_author=<"tools\theme_inf\theme_author.txt"
cls
@echo ********************************************************
@echo.
@echo               LEWA主题制作[移植]助手%version%
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.修改主题名称（中）		
echo   2.修改主题名称（英）
echo   3.修改作者名字
echo   4.生成description.xml	
echo   5.返回主菜单		
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-5]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto set_theme_name_z
if /i "%choice%"=="2" goto set_theme_name_e
if /i "%choice%"=="3" goto set_theme_author
if /i "%choice%"=="4" goto done
if /i "%choice%"=="5" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto menu

:done
call tools\bat\theme_inf_r.bat
goto menu

:set_theme_name_z
echo 请输入主题名称（中）:
call tools\theme_inf\theme_name_z.txt
goto menu

rem set /p user=请输入主题名称（中）:
rem copy nul tools\theme_inf\theme_name_z.txt
rem for %%i in (tools\theme_inf\theme_name_z.txt) do echo %user%  >>%%i
rem goto menu

:set_theme_name_e

echo 请输入主题名称（英）:
call tools\theme_inf\theme_name_e.txt
goto menu
rem set /p user=请输入主题名称（英）:
rem echo %user%>tools\theme_inf\theme_name_e.txt
rem goto menu

:set_theme_author
echo 请输入作者名字:
call tools\theme_inf\theme_author.txt
goto menu
rem et /p user=请输入作者名字:
rem echo %user%>tools\theme_inf\theme_author.txt
rem goto menu