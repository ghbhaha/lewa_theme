@echo off
color 1f
setlocal EnableDelayedExpansion
set folder=work_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
mode con cols=56 lines=30
title LEWA主题制作[移植]助手V2.1
@echo ********************************************************
@echo.
@echo                  LEWA主题制作[移植]助手
@echo.
@echo.
@echo ********************************************************
echo --------------------------------------------------------
echo .使用前最好查阅说明！
echo .请尊重作者劳动【转载请注明】
echo .请不要修改文件夹和文件名，否则工具将无法运行！
echo --------------------------------------------------------
echo 按任意键进入主菜单
pause>nul
tools\bat\menu