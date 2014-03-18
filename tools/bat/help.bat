::************************************************************
:帮助部分
::************************************************************

:help
cls
echo.
echo 更新说明
echo.
echo 2014.3.18
echo 1.添加tools\资料(制作主题的工具及参考资料)
echo.
echo 2014.3.17
echo LEWA主题制作[移植]助手V2.1
echo 1.增加目录的主题判断，支持多个主题的选择
echo 2.增加旧项目的备份功能，取消清空原项目
echo 3.优化adb的连接
echo 4.修复com.android.systemui.bat中的路径错误问题
echo.
echo 2014.3.14 
echo LEWA主题制作[移植]助手V2.0Beta
echo 1.支持miui图标的移植（包括日历，时钟一些动态图标）
echo 2.支持打/解包主题（包括主题的各个模块）
echo 3.支持adb推送) 
echo.
echo 工具暂只支持miui主题大部分图标的移植，只有个别图标需要手动修改 （其他模块则需要手动修改）
echo 锁屏一般可以直接使用 不用修改
echo 支持动态图标时钟和日历的直接移植，天气动态图标需要修改fancy_icons\com.lewa.weather\manifest.xml 修改uri="content://com.lewa.weather"以修复
echo 流量动态则需要修改乐蛙默认动态图标的图片来修复
echo 使用前请将miui主题放置到根目录 选择准备文件
echo 支持各个模块的直接打包与解包
echo 支持adb推送主题
echo 欢迎大家进行交流，提供修改意见！
echo.
echo 按任意键进入主界面
echo.
pause>nul
tools\bat\menu