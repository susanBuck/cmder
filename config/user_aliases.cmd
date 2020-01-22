;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

;==== List dir contents (long form, hidden files, classify entries, exclude group)
ll=ls -laFG

;==== Present working directory
pwd=cd

;==== Clear screen
clear=cls

;==== Show history of recent commands
history=cat "%CMDER_ROOT%\config\.history"

;==== Open explorer in current directory
e.=explorer .

;==== Quickly edit this file
aliasedit=nano c:\cmder-master\config\user_aliases.cmd

;==== Go to XAMPP htdocs folder
htdocs=cd c:\xampp\htdocs

;==== Edit computer's hosts file (local domain aliases)
hosts=elevate notepad c:\Windows\System32\drivers\etc\hosts

;==== Edit XAMPP Apache config file 
httpdconf=notepad c:\xampp\apache\conf\httpd.conf 

;==== Edit XAMPP Apache VirtualHosts config file
vhosts=notepad c:\xampp\apache\conf\extra\httpd-vhosts.conf

;==== Open VSCode settings
vs-settings=notepad %HOME%\AppData\Roaming\Code\User\settings.json

