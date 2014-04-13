rem ************************************************************
:icons制作部分
rem ************************************************************

:cho_icons
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
echo   1.icons移植
echo   2.icons解包
echo   3.icons打包
echo   4.返回主菜单
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-4]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto icons_yizhi
if /i "%choice%"=="2" goto icons_jiebao
if /i "%choice%"=="3" goto icons_dabao
if /i "%choice%"=="4" tools\bat\menu
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto cho_icons
pause
@echo 解包
:icons_jiebao
if exist theme_done\icons (tools\7z x theme_done\icons  -olewa_tmp\icons\
goto cho_icons) else goto cho_icons

:icons_dabao
if exist lewa_tmp\icons (del theme_done\icons
tools\7z a theme_done\icons.zip .\lewa_tmp\icons\*
cd theme_done
ren icons.zip icons
cd ..
goto cho_icons) else goto cho_icons


rem ************************************************************
:移植打包 一步完成 （安全中心，电池，火花电影等图标并不一定能自动移植成功，需手动更改后打包）
rem ************************************************************


:icons_yizhi
if exist lewa_tmp\icons\res\com.lewa.camera.png ( echo 已经移植过 即将回到icons解包/打包/移植菜单
ping 127.0.0.1 -n 2 >NUL
tools\bat\menu ) else cls
if exist lewa_tmp\icons\transform_config.xml (del lewa_tmp\.icons\transform_config.xml)
ren lewa_tmp\icons\fancy_icons\com.android.calendar com.lewa.calendar
ren lewa_tmp\icons\fancy_icons\com.android.deskclock com.lewa.deskclock
ren lewa_tmp\icons\fancy_icons\com.miui.weather2 com.lewa.weather
ren lewa_tmp\icons\fancy_icons\com.wali.miui.networkassistant com.lewa.netmgr
cd lewa_tmp\icons\res\drawable-xhdpi
ren com.android.browser.png com.lewa.browser.png
ren com.android.calculator2.png com.lewa.calculator.png
ren com.android.camera.png com.lewa.camera.png
ren com.android.deskclock.png com.lewa.deskclock.png
ren com.android.email.png com.lewa.mail.png
ren com.miui.gallery.png com.lewa.photo.png
ren com.miui.weather2.png com.lewa.weather.png
ren com.google.android.maps.MapsActivity.png com.lewa.maps.png

ren icon_folder.png icon_folder_background.png
ren com.lbe.security.miui.png com.lewa.security.png
ren com.ijinshan.mguard.provider.png com.lewa.security.png
ren com.android.phone.png com.lewa.phone.png
ren com.android.providers.contacts.CallLogProvider.png com.lewa.phone.png 
ren com.android.contacts.activities.TwelveKeyDialer.png com.lewa.phone.png 

ren com.android.providers.downloads.ui.png com.lewa.download.png
ren com.android.providers.downloads.png com.lewa.download.png
ren com.android.settings.png com.lewa.settings.png
ren com.android.soundrecorder.png com.lewa.soundrecorder.png
ren com.miui.video.png com.lewa.movie.png
ren com.android.fileexplorer.png com.lewa.filemanager.png
ren com.android.contacts.png com.lewa.contacts.png
ren com.android.systemui.TorchActivity.png com.lewa.torch.png
ren com.miui.notes.png com.lewa.note.png
ren com.miui.compass.png com.lewa.compass.png
ren com.android.music.png com.lewa.music.png
ren com.android.quicksearchbox.png com.lewa.search.png
:百度搜索
ren com.baidu.searchbox.png com.lewa.search.png
copy com.ijinshan.kbatterydoctor.png com.lewa.battery.png
:应用商店
ren com.xiaomi.shop.png com.lewa.store.png
ren com.miui.supermarket.png com.lewa.store.png
ren com.android.thememanager.png com.lewa.theme.png
ren com.android.updater.png com.lewa.update.png
ren com.miui.fmradio.png com.lewa.radio.png
ren com.android.stk.png com.lewa.stk.png
ren com.xiaomi.gamecenter.png com.lewa.gamecenter.png

:ren com.lewa.bookstore.png
ren com.android.monitor.png com.lewa.netmgr.png
:视频播放
ren com.miui.videoplayer.png com.lewa.video.png
ren com.miui.video.png com.lewa.video.png
ren com.android.calendar.png com.lewa.calendar.png
ren com.android.mms.png com.lewa.messages.png
ren icon_background.png icon_background.png.bak
ren icon_pattern.png icon_background.png


cd ..
xcopy  /e/I/h/r/y/s "drawable-xhdpi" .
rd /s /q drawable-hdpi
rd /s /q drawable-xhdpi
rd /s /q drawable-xxhdpi
cd ..
cd ..
cd ..
del theme_done\icons
tools\7z a theme_done\icons.zip .\lewa_tmp\icons\*
cd theme_done
ren icons.zip icons
cd ..
tools\bat\menu