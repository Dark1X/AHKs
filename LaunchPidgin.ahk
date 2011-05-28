#include FcnLib.ahk

;copypasta from UpdatePidginImStatus.ahk ... should there be a pidgin lib?
RunProgram("C:\Program Files (x86)\Pidgin\pidgin.exe")
while NOT ForceWinFocusIfExist("Buddy List ahk_class gdkWindowToplevel")
{
   RunProgram("C:\Program Files (x86)\Pidgin\pidgin.exe")
   Sleep, 100
   count++
   if (count > 1000)
      fatalErrord("silent log", "the pidgin window never activated", A_ScriptName, A_LineNumber)
}
SleepSeconds(10)

joinIrc("ahk")
joinIrc("ahk-social")
joinIrc("dbix-class")
startGchat("frigg")

ForceWinFocus("frigg")
Send, ^!a

ForceWinFocus("Buddy List")
WinClose
ExitApp

joinIrc(channel)
{
   ForceWinFocus("Buddy List")
   Send, ^c
   ForceWinFocus("Join a Chat")
   ;ControlSend, , {ALT DOWN}c{ALT UP}, Join a Chat
   ss()
   Click(460, 100)
   ss()
   if (channel != "dbix-class")
      Click(165, 137)
   else
      Click(165, 115)
   ss()
   SendRaw, #%channel%
   Send, {ENTER}
}

startGchat(user)
{
   ForceWinFocus("Buddy List")
   Send, ^m
   ForceWinFocus("Pidgin")
   ss()
   Send, %user%{ENTER}
}

ss()
{
   sleep 200
}
