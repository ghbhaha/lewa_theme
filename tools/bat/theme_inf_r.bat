set /p theme_name_z=<"tools\theme_inf\theme_name_z.txt"
set /p theme_name_e=<"tools\theme_inf\theme_name_e.txt"
set /p theme_author=<"tools\theme_inf\theme_author.txt"
type nul>theme_done\description.xml
for %%i in (theme_done\description.xml) do echo ^<?xml version="1.0" encoding="UTF-8" ?^>                 >>%%i
for %%i in (theme_done\description.xml) do echo ^<LEWA_Theme^>                                            >>%%i
for %%i in (theme_done\description.xml) do echo.                                                          >>%%i
for %%i in (theme_done\description.xml) do echo     ^<versionCode^>2^</versionCode^>                      >>%%i
for %%i in (theme_done\description.xml) do echo     ^<versionName^>1.0^</versionName^>                    >>%%i
for %%i in (theme_done\description.xml) do echo     ^<packageName^>com.lewa.%theme_name_e%^</packageName^>         >>%%i
for %%i in (theme_done\description.xml) do echo.                                                          >>%%i
for %%i in (theme_done\description.xml) do echo     ^<nameList^>                                          >>%%i
for %%i in (theme_done\description.xml) do echo          ^<language^>zh^</language^>                      >>%%i
for %%i in (theme_done\description.xml) do echo          ^<name^>%theme_name_z%^</name^>                            >>%%i
for %%i in (theme_done\description.xml) do echo          ^<author^>%theme_author%^</author^>                   >>%%i
for %%i in (theme_done\description.xml) do echo     ^</nameList^>                                         >>%%i
for %%i in (theme_done\description.xml) do echo.                                                          >>%%i
for %%i in (theme_done\description.xml) do echo      ^<nameList^>                                         >>%%i
for %%i in (theme_done\description.xml) do echo          ^<language^>en^</language^>                      >>%%i
for %%i in (theme_done\description.xml) do echo          ^<name^>%theme_name_e%^</name^>                           >>%%i
for %%i in (theme_done\description.xml) do echo          ^<author^>%theme_author%^</author^>                   >>%%i
for %%i in (theme_done\description.xml) do echo     ^</nameList^>                                         >>%%i
for %%i in (theme_done\description.xml) do echo.                                                          >>%%i
for %%i in (theme_done\description.xml) do echo ^</LEWA_Theme^>                                           >>%%i