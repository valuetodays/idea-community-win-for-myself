
reg add "HKEY_CLASSES_ROOT\directory\background\shell\IntelliJ IDEA Community Edition" /ve /d "Open Folder as IDEA Project" /f

reg add "HKEY_CLASSES_ROOT\directory\background\shell\IntelliJ IDEA Community Edition" /v "Icon" /t REG_SZ /d "\"%~dp0bin\idea64.exe\"" /f

reg add "HKEY_CLASSES_ROOT\directory\background\shell\IntelliJ IDEA Community Edition\command" /ve /d "\"%~dp0bin\idea64.exe\" \"%%V\"" /f

echo done
pause
