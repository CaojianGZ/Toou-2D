
SET PWD_PATH=%2
SET PRESET_PATH=%3
SET BUILDER_BIN_PATH=%4
SET QT_QML_T2D_PATH=%5
SET ANDROID=%6
SET LIBFILE_PATH=%7

echo %RUN_TYPE%
echo %PWD_PATH%
echo %PRESET_PATH%
echo %BUILDER_BIN_PATH%
echo %QT_QML_T2D_PATH%

copy /y  %PWD_PATH%\Toou2D.h  %BUILDER_BIN_PATH% & copy /y  %PRESET_PATH%\*  %BUILDER_BIN_PATH%\

if %ANDROID% == YES copy /y %LIBFILE_PATH% %BUILDER_BIN_PATH%

if %1 == SHARED (
    echo running install to qtqml folder
    rmdir /s /q %QT_QML_T2D_PATH% & md %QT_QML_T2D_PATH%
    copy /y %BUILDER_BIN_PATH% %QT_QML_T2D_PATH%
)
