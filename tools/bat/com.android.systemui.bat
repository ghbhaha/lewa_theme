rem ************************************************************
:com.android.systemui制作部分
rem ************************************************************

:cho_com.android.systemui
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
echo   1.com.android.systemui移植
echo   2.com.android.systemui解包
echo   3.com.android.systemui打包
echo   4.返回主菜单
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-4]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto com.android.systemui_yizhi
if /i "%choice%"=="2" goto com.android.systemui_jiebao
if /i "%choice%"=="3" goto com.android.systemui_dabao
if /i "%choice%"=="4" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_com.android.systemui
:com.android.systemui_jiebao
xcopy  /e/I/h/r/y/s "tools\全局主题标准资源包\\com.android.systemui\res\drawable-xhdpi" "lewa_tmp\\com.android.systemui\res\drawable-xhdpi"

if exist theme_done\com.android.systemui (tools\7z x theme_done\com.android.systemui  -olewa_tmp\com.android.systemui\
goto cho_com.android.systemui) else goto cho_com.android.systemui
:com.android.systemui_dabao
if exist lewa_tmp\com.android.systemui (del theme_done\com.android.systemui
tools\7z a theme_done\com.android.systemui.zip .\lewa_tmp\com.android.systemui\*
cd theme_done
ren com.android.systemui.zip com.android.systemui
cd ..
goto cho_com.android.systemui) else goto cho_com.android.systemui


:com.android.systemui_yizhi
xcopy  /e/I/h/r/y/s "tools\全局主题标准资源包\com.android.systemui\res\drawable-xhdpi" "lewa_tmp\com.android.systemui\res\drawable-xhdpi"


copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_notifications_bg_p.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\switch_tab_on.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_toggles_bg_p.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\switch_tab_right.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_notifications_bg_n.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\switch_tab_left.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tab_toggles_bg_n.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\switch_tab_off.png



copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\tracking_view_page_style_bg.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\expand_switch_background.9.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\ic_notify_quicksettings_normal.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\ic_notify_quicksettings_normal.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\ic_notify_clear_normal.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\ic_notify_clear_normal.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\status_bar_close_on.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\status_bar_close_on.png
rem:这四个需要手动修改大小

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\toggle_bar_bg.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\bg_notifi_dateview.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\toggle_bar_bg.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\bg_notifi_usagedata.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\toggle_bar_bg.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\bg_notification_titlebar_top.png

copy miui_tmp\.com.android.systemui\res\drawable-xhdpi\toggle_bar_bg.9.png lewa_tmp\com.android.systemui\res\drawable-xhdpi\bg_notification_titlebar_bottom.png




if exist lewa_tmp\com.android.systemui (del theme_done\com.android.systemui
tools\7z a theme_done\com.android.systemui.zip .\lewa_tmp\com.android.systemui\*
cd theme_done
ren com.android.systemui.zip com.android.systemui
cd ..
goto cho_com.android.systemui) else goto cho_com.android.systemui
echo.
echo.
ping 127.0.0.1 -n 2 >NUL
goto cho_com.android.systemui