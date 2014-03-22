::************************************************************
:主菜单部分
::************************************************************
:CHO
cls
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.准备文件				
echo   2.icons移植/解包/打包		
echo   3.lockscreen解包/打包			
echo   4.framework-res解包/打包		
echo   5.lewa-res解包/打包
echo   6.com.lewa.PIM解包/打包
echo   7.com.android.systemui解包/打包
echo   8.com.lewa.birdview解包/打包
echo   9.com.lewa.launcher5解包/打包		
echo   10.com.android.settings解包/打包
echo   11.打包主题
echo   12.查看说明
echo   13.adb推送主题 
echo   0.退出程序
echo. 
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择[0-12]操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,2%
if /i "%choice%"=="0" EXIT
if /i "%choice%"=="1" goto make_tmp
if /i "%choice%"=="2" tools\bat\icons
if /i "%choice%"=="3" tools\bat\lockscreen
if /i "%choice%"=="4" tools\bat\framework-res
if /i "%choice%"=="5" tools\bat\lewa-res
if /i "%choice%"=="6" tools\bat\com.lewa.PIM
if /i "%choice%"=="7" tools\bat\com.android.systemui
if /i "%choice%"=="8" tools\bat\com.lewa.birdview
if /i "%choice%"=="9" tools\bat\com.lewa.launcher5
if /i "%choice%"=="10" tools\bat\com.android.settings
if /i "%choice%"=="11" goto make_*.lwt
if /i "%choice%"=="12" tools\bat\help
if /i "%choice%"=="13" goto adb
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto CHO

 
::************************************************************
:准备文件部分
::************************************************************

::************************************************************
:准备移植miui文件部分
::************************************************************
:make_tmp
cls
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo.  [选择序号进行操作]
echo --------------------------------------------------------
echo   1.准备移植miui主题				
echo   2.解包修改乐蛙主题		
echo   3.返回主菜单		
echo --------------------------------------------------------
echo.                            %date% %time%
set choice=
set /p choice= 选择你要进行的操作:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto make_tmp1
if /i "%choice%"=="2" goto make_tmp2
if /i "%choice%"=="3" goto CHO 
echo 选择无效，请重新输入
ping 127.0.0.1 -n 2 >NUL
echo.
goto make_tmp

:make_tmp1
@echo 解包miui.mtz

::判断mtz,存在则执行备份旧项目
if exist *.mtz (if exist theme_done (md %folder%
move "theme_done" %folder%)
::判断lewa_tmp
if exist lewa_tmp (move "lewa_tmp" %folder%)
::判断lewa_tmp
if exist miui_tmp (move "miui_tmp" %folder%)

move %folder% old_work
goto  make_tmp1_1
 ) else cls
echo.
echo 小米主题mtz文件不存在，请将其拷贝至根目录！
echo.
echo 即将返回主菜单
echo.
ping 127.0.0.1 -n 2 >NUL
goto make_tmp

:make_tmp1_1
CLS
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo.
echo.你可以选择如下主miui主题
echo.
::判断根目录mtz文件并列表
set y=0
for %%i in (*mtz) do (set /a y+=1 &&set mtz!y!=%%i &&set mtzx=%%~ni&&echo. !y! — !mtzx!.mtz&&echo.)
set /p a=请选择主题编号(0返回主菜单):
if "%a%"=="0" goto CHO
set b=mtz!a!
for %%i in (%b%) do (tools\7z x "!%%i!"  -omiui_tmp\  )
@echo 创建theme_done文件夹
md theme_done
md theme_done\thumbnail
md theme_done\preview
@echo 解压miui_tmp文件
tools\7z x miui_tmp\icons -omiui_tmp\.icons
tools\7z x miui_tmp\com.android.contacts -omiui_tmp\.com.android.contacts
tools\7z x miui_tmp\com.android.mms  -omiui_tmp\.com.android.mms
tools\7z x miui_tmp\com.android.providers.downloads.ui  -omiui_tmp\.com.android.providers.downloads.ui
tools\7z x miui_tmp\com.android.settings -omiui_tmp\.com.android.settings
tools\7z x miui_tmp\com.android.systemui  -omiui_tmp\.com.android.systemui
tools\7z x miui_tmp\framework-miui-res  -omiui_tmp\.framework-miui-res
tools\7z x miui_tmp\framework-res  -omiui_tmp\.framework-res
tools\7z x miui_tmp\lockscreen  -omiui_tmp\.lockscreen
tools\7z x miui_tmp\com.miui.home  -omiui_tmp\.com.miui.home
ren miui_tmp\wallpaper\default_lock_wallpaper.jpg wallpaper_lockscreen.jpg
ren miui_tmp\wallpaper\default_wallpaper.jpg wallpaper.jpg
xcopy  /e/I/h/r/y/s "miui_tmp\wallpaper" "theme_done\wallpaper"

copy miui_tmp\preview\preview_launcher_0.jpg theme_done\thumbnail\thumbnail.jpg
copy miui_tmp\preview\preview_launcher_0.png theme_done\thumbnail\thumbnail.jpg
copy miui_tmp\preview\preview_launcher_0.jpg theme_done\thumbnail\thumbnail_launcher.jpg
copy miui_tmp\preview\preview_launcher_0.png theme_done\thumbnail\thumbnail_launcher.jpg
copy miui_tmp\preview\preview_lockscreen_0.jpg theme_done\thumbnail\thumbnail_lockscreen.jpg
copy miui_tmp\preview\preview_lockscreen_0.png theme_done\thumbnail\thumbnail_lockscreen.jpg
copy miui_tmp\wallpaper\wallpaper_lockscreen.jpg theme_done\thumbnail\lockscreen_wallpaper.jpg
copy miui_tmp\wallpaper\wallpaper_lockscreen.png theme_done\thumbnail\lockscreen_wallpaper.jpg

xcopy  /e/I/h/r/y/s "miui_tmp\.icons" "lewa_tmp\icons"

copy miui_tmp\preview\preview_launcher_0.jpg theme_done\preview
copy miui_tmp\preview\preview_launcher_0.png theme_done\preview\preview_launcher_0.jpg
copy miui_tmp\preview\preview_launcher_1.jpg theme_done\preview
copy miui_tmp\preview\preview_launcher_1.png theme_done\preview\preview_launcher_1.jpg
copy miui_tmp\preview\preview_lockscreen_0.jpg theme_done\preview
copy miui_tmp\preview\preview_lockscreen_0.png theme_done\preview\preview_lockscreen_0.jpg

copy miui_tmp\com.sds.android.ttpod theme_done
copy miui_tmp\com.tencent.minihd.qq theme_done
copy miui_tmp\com.tencent.mm theme_done
copy miui_tmp\com.tencent.mobileqq theme_done
copy tools\description.xml theme_done
copy miui_tmp\lockscreen theme_done
:del *.mtz
goto CHO

::************************************************************
:准备lewa主题文件部分
::************************************************************
:make_tmp2
::判断lwt,存在则执行备份旧项目
if exist *.lwt (if exist theme_done (md %folder%
move "theme_done" %folder%)
::判断lwt_tmp
if exist lewa_tmp (move "lewa_tmp" %folder%)
::判断miui_tmp
if exist miui_tmp (move "miui_tmp" %folder%)

move %folder% old_work
goto  make_tmp2_2
 )  else cls
echo.
echo 乐蛙主题lwt文件不存在，请将其拷贝至根目录
echo.
echo 即将返回准备文件菜单
echo.
ping 127.0.0.1 -n 2 >NUL
goto make_tmp

:make_tmp2_2
CLS
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo.
echo.你可以选择如下主lewa主题
echo.
set y=0
::判断根目录lwt文件并列表
for %%i in (*lwt) do (set /a y+=1 &&set lwt!y!=%%i &&set lwtx=%%~ni&&echo. !y! — !lwtx!.lwt&&echo.)
set /p a=请选择主题编号(0返回主菜单):
if "%a%"=="0" goto CHO
set b=lwt!a!
for %%i in (%b%) do (@echo 创建theme_done文件夹
tools\7z x "!%%i!"  -otheme_done\ )
tools\7z x theme_done\icons -olewa_tmp\icons
tools\7z x theme_done\com.android.settings -olewa_tmp\com.android.settings
tools\7z x theme_done\com.android.systemui  -olewa_tmp\com.android.systemui
tools\7z x theme_done\com.lewa.launcher5 -olewa_tmp\com.lewa.launcher5
tools\7z x theme_done\com.lewa.PIM  -olewa_tmp\com.lewa.PIM
tools\7z x theme_done\framework-res  -olewa_tmp\framework-res
tools\7z x theme_done\lewa-res  -olewa_tmp\lewa-res
tools\7z x theme_done\lockscreen  -olewa_tmp\lockscreen
:del *.lwt
goto CHO


::************************************************************
:主题打包部分
::************************************************************

:make_*.lwt
cls
if exist lewa.lwt (del lewa.lwt )
tools\7z a lewa.zip .\theme_done\*
ren lewa.zip lewa.lwt
goto CHO


::***********************************************************************************************************************
:adb推送部分
::***********************************************************************************************************************
:adb
if exist *.lwt (goto adb1) else cls
echo.
echo 乐蛙主题lwt文件不存在，请将其拷贝至根目录
echo.
echo 即将返回准备文件菜单
echo.
ping 127.0.0.1 -n 2 >NUL
goto CHO

:adb1
rem 14.3.17 adb推送增加识别机型，增加是否连接的判断，直至连接成功
cls
echo 启动ADB中，请稍候.
tools\adb kill-server >NUL
tools\adb start-server >NUL
:phonepluggedin
tools\adb devices||find "device"|find /v "List"
IF %ERRORLEVEL% NEQ 0 (
	echo.
	echo Tab 没有连接.
	echo 请接好数据线~
	echo 稍候...
	tools\adb wait-for-device
	goto phonepluggedin
)
echo 已连接到您的手机，即将进入推送界面
echo.
ping 127.0.0.1 -n 2 >NUL
cls
@echo ********************************************************
@echo.
@echo                    LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo.
echo.你可以选择如下主题进行推送
echo.
::判断根目录lwt文件并列表
set y=0
for %%i in (*lwt) do (set /a y+=1 &&set lwt!y!=%%i &&set lwtx=%%~ni&&echo. !y! — !lwtx!.lwt&&echo.)
set /p a=请选择主题编号(0返回主菜单):
if "%a%"=="0" goto CHO
set b=lwt!a!
for %%i in (%b%) do (
tools\adb push !%%i! /sdcard/LEWA/theme/lwt
echo 推送完成，即将返回主界面
ping 127.0.0.1 -n 2 >NUL
pause
goto CHO
)
