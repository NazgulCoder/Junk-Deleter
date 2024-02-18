
# Junk Deleter 

Very simple junk files and registry key delete tool written in bat
```
   _____               __         _____         __         __              
 _|     |.--.--.-----.|  |--.    |     \.-----.|  |.-----.|  |_.-----.----.
|       ||  |  |     ||    <     |  --  |  -__||  ||  -__||   _|  -__|   _|
|_______||_____|__|__||__|__|    |_____/|_____||__||_____||____|_____|__|  

```
                                                                           


## FEATURES

-**Temporary file cleanup**: This function uses the rd command to delete the contents of the **%TEMP%** folder. This can help to free up disk space by removing temporary files that are no longer needed.

-**Registry cleanup**: This function uses the reg delete command to delete the specified registry keys. This can help to remove outdated or unnecessary registry keys, which can improve the performance of your computer.

-**AppData cleanup**: This function uses the del command to delete the contents of the **%APPDATA%\Temp** folder. This can help to free up disk space by removing old files that are no longer needed.

-**Recycle bin cleanup**: This function uses the rd command to delete the contents of the recycle bin. This can help to free up disk space by removing files that you have deleted but are still taking up space in the recycle bin.

-**Registry compaction**: This function uses the regedit command with the /v and /c parameters to compact the registry. The /v parameter tells regedit to perform the operation on all subkeys as well, while the /c parameter specifies that the operation should be performed quietly without displaying any dialogue boxes or error messages.

-**Disk cleanup**: This function uses the cleanmgr command to perform a disk cleanup. This can help to free up disk space by deleting temporary files, emptying the recycle bin, and removing other unnecessary files.

-**System file check**: This function uses the sfc command with the /scannow parameter to scan and repair system files. This can help to fix any corrupt or missing system files, which can improve the stability and performance of your computer.

-**Update cleanup**: This function uses the wuauclt command with the /detectnow parameter to check for and install any available updates. It can also remove old update files that are no longer needed.

-**Windows event log cleanup**: This function uses the wevtutil command to clear the System and Application event logs. The wevtutil cl System command clears the System event log, while the wevtutil cl Application command clears the Application event log. This can help to free up disk space and improve the performance of your computer.


## LICENSE



[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

MIT License

Copyright (c) [2022] [NazgulCoder]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
