#include FcnLib.ahk


addtotrace("yellow line - remote ForceReloadAll" . " (queued at 2012-04-30_15-19-56)")
Run, ForceReloadAll.exe
#include FcnLib.ahk
FileMove("C:\Dropbox\AHKs\scheduled\BAUSTIANVM\Running\20120430151956.ahk", "C:\Dropbox\AHKs\scheduled\BAUSTIANVM\Finished\20120430151956.ahk")