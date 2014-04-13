::************************************************************
:CHO
cls
@echo ********************************************************
@echo.
@echo               LEWA主题制作[移植]助手%version%
@echo                          高级设置
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.系统样式				
echo   2.锁屏风格		
echo   3.返回主菜单
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-3]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="1" goto style_sys
if /i "%choice%"=="2" goto style_lock
if /i "%choice%"=="3" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO


:style_sys
cls
@echo ********************************************************
@echo.
@echo               LEWA主题制作[移植]助手%version%
@echo                          系统样式
@echo.
@echo ********************************************************
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.lewa默认系统样式(lewa)
echo   2.酷黑风格(JARASTAFARIN)
echo   3.绿色风格(咖啡不苦)
echo   4.返回主菜单
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-4]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="1" goto style_sys_white
if /i "%choice%"=="2" goto style_sys_black
if /i "%choice%"=="2" goto style_sys_green
if /i "%choice%"=="3" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO
:style_sys_white
xcopy  /e/I/h/r/y/s "tools\advance\style_sys\lewa_default" "theme_done"
goto style_sys

:style_sys_black

xcopy  /e/I/h/r/y/s "tools\advance\style_sys\Dark_Side_G" "theme_done"
goto style_sys

:style_sys_green
xcopy  /e/I/h/r/y/s "tools\advance\style_sys\qx_green" "theme_done"
goto style_sys

:style_lock
cls
@echo ********************************************************
@echo.
@echo               LEWA主题制作[移植]助手%version%
@echo                          锁屏风格
@echo.
@echo ********************************************************
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.lewa默认(充电黑色)				
echo   2.lewa默认(充电非黑色)
echo   3.返回主菜单
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-3]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="1" goto style_lock_default
if /i "%choice%"=="2" goto style_lock_n
if /i "%choice%"=="3" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO
:style_lock_default
copy tools\advance\style_lock\lockscreen_default theme_done
goto style_sys

:style_lock_n
copy tools\advance\style_lock\lockscreen_n theme_done
goto style_sys