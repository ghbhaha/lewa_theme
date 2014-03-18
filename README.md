LEWA主题制作(移植)工具
==============

LEWA主题制作(辅助工具)


更新说明
2014.3.17
LEWA主题制作[移植]助手V2.1
1.增加目录的主题判断，支持多个主题的选择
2.增加旧项目的备份功能，取消清空原项目
3.优化adb的连接
4.修复com.android.systemui.bat中的路径错误问题

2014.3.14 
LEWA主题制作[移植]助手V2.0Beta
1.支持miui图标的移植（包括日历，时钟一些动态图标）
2.支持打/解包主题（包括主题的各个模块）
3.支持adb推送) 

一.目录说明
1.lewa_tmp：乐蛙未打包的各个模块（icons，framework-res等）
2.miui-tmp：miui各项资源，包括打包和未打包的
3.theme_done：存放乐蛙各个已打包模块（icons，framework-res等）,待打包成乐蛙主题
4.各个模块的批处理存放在tools\bat文件夹，便于修改
5.主题最终生成在根目录
二.使用说明
1.若想移植miui主题，请把事先下载好的miui主题（*.mtz）拷贝至根目录
2.进入主菜单后，请选择第一项 准备文件
3.工具暂时只能移植miui图标和锁屏模块 移植图标模块，请选择第二项并选择icons移植，工具会自动移植和打包并最终生成在theme_done\icons
4.若想制作其他模块，请至tools\全局主题标准资源包 目录拷贝相应模块至lewa_tmp目录
5.若所有模块修改完成，便可以进行打包主题了

├─lewa_tmp
│  └─icons
│      └─res
├─miui_tmp
│  ├─.com.android.contacts
│  │  ├─framework-miui-res
│  │  │  └─res
│  │  │      └─drawable-xhdpi
│  │  └─res
│  │      ├─drawable-hdpi
│  │      └─drawable-xhdpi
│  ├─.com.android.mms
│  │  └─res
│  │      ├─drawable-hdpi
│  │      └─drawable-xhdpi
│  ├─.com.android.settings
│  │  └─res
│  │      └─drawable-xhdpi
│  ├─.com.android.systemui
│  │  └─res
│  │      ├─drawable-hdpi
│  │      └─drawable-xhdpi
│  ├─.com.miui.home
│  │  └─res
│  │      ├─drawable-hdpi
│  │      └─drawable-xhdpi
│  ├─.framework-miui-res
│  │  └─framework-miui
│  │      └─res
│  │          ├─drawable-hdpi
│  │          └─drawable-xhdpi
│  ├─.icons
│  │  └─res
│  │      └─drawable-xhdpi
│  ├─.lockscreen
│  │  └─advance
│  │      └─images
│  ├─preview
│  └─wallpaper
├─theme_done
│  ├─preview
│  ├─thumbnail
│  └─wallpaper
└─tools
    ├─bat
    └─全局主题标准资源包
        ├─com.android.settings
        │  └─res
        │      ├─drawable-hdpi
        │      ├─drawable-xhdpi
        │      └─drawable-xxhdpi
        ├─com.android.systemui
        │  └─res
        │      ├─drawable-hdpi
        │      └─drawable-xhdpi
        ├─com.lewa.birdview
        │  └─res
        │      └─drawable-nodpi
        ├─com.lewa.launcher5
        │  └─res
        │      ├─drawable-hdpi
        │      ├─drawable-xhdpi
        │      └─drawable-xxhdpi
        ├─com.lewa.PIM
        │  └─res
        │      ├─drawable-hdpi
        │      ├─drawable-hdpi-960x540
        │      ├─drawable-xhdpi
        │      └─drawable-xxhdpi
        ├─framework-res
        │  └─res
        │      ├─drawable-hdpi
        │      └─drawable-xhdpi
        ├─icons
        │  ├─fancy_icons
        │  │  ├─com.lewa.calendar
        │  │  ├─com.lewa.messages
        │  │  ├─com.lewa.netmgr
        │  │  │  └─nums
        │  │  └─com.lewa.weather
        │  │      └─weather
        │  └─res
        ├─lewa-res
        │  └─res
        │      ├─drawable-hdpi
        │      ├─drawable-hdpi-960x540
        │      └─drawable-xhdpi
        ├─lockscreen
        │  └─advance
        │      └─music
        ├─preview
        ├─thumbnail
        └─wallpaper
