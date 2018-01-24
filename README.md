This is a fork of Cmder for [Dynamic Web Applications](http://dwa15.com) with the following modifications:



## Additional .dll files
The following files were added to `/cmder/bin` to address various compatibility issues students were facing:

+ `cyggcc_s-1.dll`
+ `cygiconv-2.dll`
+ `cygintl-8.dll`
+ `cygwin1.dll`


## nano
Added `nano.exe` to `bin/`

Downloaded from: <http://www.nano-editor.org/download.php>

__Reason for adding:__
Nano is the most straightforward command line editor, and it's already available for Mac and our Linux-based production servers. By making nano also available for Cmder, we can streamline instructions required for editing admin protected files, config files, etc.


## elevate
Added `elevate.exe` to `bin/`

Downloaded from: <http://code.kliu.org/misc/elevate>

__Reason for adding:__
Makes editing admin protected files more straightforward. Previously we had to include a number of different instructions for opening a file as an admin, which varied from version to version of Windows. With `elevate` it's as straight-forward as `sudo` is on Mac/Unix.



__Reason for changing:__
Create more consistency with the command prompts in Mac/Unix. This way when the students see `$` in notes, they know it's a command.




## Disable check for updates
Update `/cmder/config/ConEmu.xml` to disable CheckOnStartup:

```
<value name="Update.CheckOnStartup" type="hex" data="00"/>
```

__Reason:__
Since we're using a forked version of Cmder, we don't want to update via the traditional route.

