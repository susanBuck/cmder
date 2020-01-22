This is a fork of Cmder (`1.3.14.982`) used in courses taught by [Susan Buck at the Harvard Extension School](https://hesweb.dev).

The following describes the modifications made.


## Customized prompt
Customized prompt via `/config/my_prompt.lua` so that the prompt character is a `$` character instead of a Lambda character. This makes the interface consistent with Mac/Unix.


## Added aliases
Added a handful of useful and course-specific aliases in `/config/user_aliases.cmd`.


## Additional .dll files
These files were added to `/cmder/bin` to address various compatibility issues students were facing:

+ `cyggcc_s-1.dll`
+ `cygiconv-2.dll`
+ `cygintl-8.dll`
+ `cygwin1.dll`


## nano
Added `nano.exe` to `bin/`

Downloaded from: <http://www.nano-editor.org/download.php>

Nano is the most straightforward command line editor, and it’s already available for Mac and our Linux-based production servers. By making nano also available for Cmder, we can streamline instructions required for editing admin protected files, config files, etc.


## elevate
Added `elevate.exe` to `bin/`.

Downloaded from: <http://code.kliu.org/misc/elevate>

Accessible via the `elevate` command.

Makes editing admin protected files more straightforward. Previously we had to include a number of different instructions for opening a file as an admin, which varied from version to version of Windows. With `elevate` it's as straight-forward as `sudo` is on Mac/Unix.


## Disable check for updates
Update `/cmder/config/ConEmu.xml` to disable `CheckOnStartup`:

```
<value name="Update.CheckOnStartup" type="hex" data="00"/>
```

Since we’re using a forked version of Cmder, we don’t want to update via the traditional route.

