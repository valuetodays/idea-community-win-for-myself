﻿# ideaC-extra

## 使用说明

1. 先在此处（<https://www.jetbrains.com/idea/download/other.html>）下载"IntelliJ IDEA Community Edition
"且"2023.3.6 - Windows x64 ZIP Archive (zip)"的压缩包，解压到指定目录（如D:/apps）
2. 将ideaIC-2023.3.6.win-extra复制到步骤1的根目录覆盖原文件即可


## 文件说明

- installPlugin-by-command.txt 
  - 以命令行方式安装插件，建议在导入配置（即setting.jar）后再运行，运行时时刻注意 all_config/.ideaC/system/plugins 目录，若没有生成对应的文件，就先只安装GrepConsole，等GrepConsole生成后再执行全量插件的安装，安装不会一次性成功，记录多执行几次，当目录中不再生成新文件时就算完全成功了。
- disabled_plugins.txt
  - 由idea自动生成的文件。当手工在 Settings -> Plugins -> Installed 中停用部分插件后，被停用的插件列表就会保存在本txt文件中。该文件的位置在 all_config/.ideaC/config中。

## 定制版做了什么修改

- [x] 退出idea时不需要确认
- [x] 不升级idea
- [x] 不折叠代码（如import，javadoc等）
- [x] 配置F10运行测试类/测试方法。
- [x] 调整了 bin/idea.properties，将配置文件移到相对目录all_config
- [x] 调整了 bin/idea64.exe.vmoptions，添加了-Xms1g -Xmx1g -Xverify:none -Dfile.encoding=UTF-8
- [x] 导入了配置文件 settings.jar
- [x] 安装了常用插件，如 GrepConsole,MavenHelper,StringManipulation,Indent Rainbow 等，见 all_config\.IdeaIC\config\plugins 或 all_config\.IdeaIC\system\plugins。
  - 下载的插件包在all_config\.IdeaIC\system\plugins目录中，安装成功后在all_config\.IdeaIC\config\plugins目录中，就可以删除前者目录中的文件了。
- [x] 停用了一些插件，见 all_config\.IdeaIC\config\disabled_plugins.txt
- [x] 添加 register-idea64-to-contextmenu.bat，便于使用右键打开工程

