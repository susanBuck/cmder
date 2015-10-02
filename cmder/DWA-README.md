This is a fork of Cmder for [Dynamic Web Applications](http://dwa15.com) with the following modifications:


## Extra .dll files
Included extra .dll files so app will run stand-alone.
Related to this issue: <https://github.com/cmderdev/cmder/issues/501#issuecomment-134855889>

Without these, when installing Cmder you were prompted to install missing .dll files.




## Command prompt
Changed command prompt from lambda symbol to `$`.

Updated `/config/prompt.lua`:

From:
```
clink.prompt.value = string.gsub(clink.prompt.value, "{lamb}", "λ")
```

To:
```
clink.prompt.value = string.gsub(clink.prompt.value, "{lamb}", "$")
```


__Reason for changing:__
Just to create more consistency with the command prompts in Mac/Unix. This way when the students see `$` in notes, they know it's a command.




## nano
Added `nano.exe` to `bin/`
Downloaded from: <http://www.nano-editor.org/download.php>

__Reason for adding:__
Nano is the most straightforward command line editor, and it's already available for Mac and Unix systems. By making it also available for Cmder, we can streamline instructions required for editing admin protected files, config files, etc.



## elevate
Added `elevate.exe` to `bin/`
Downloaded from: <http://code.kliu.org/misc/elevate/>

__Reason for adding:__
Makes editing admin protected files more straightforward. Previously we had to include a number of different instructions for opening a file as an Admin, which varied from version to version of Windows. With `elevate` it's as straightfoward as `sudo` on Mac/Unix.





## Enabled ssh-agent

ref: <https://github.com/cmderdev/cmder/issues/193>

New file `/vendor/agent.cmd`.

Then add the following lines to `vendor/init.bat`:

```
:: SSH Agent
@call "%CMDER_ROOT%/vendor/agent.cmd"
```
