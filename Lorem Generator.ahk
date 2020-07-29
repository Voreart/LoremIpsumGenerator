loremipsum := "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est."
loremarray := StrSplit(loremipsum, " ")

:*:genlorem::
InputBox, wordCount, Lorem ipsum generator, Anzahl Wörter:
generated := ""
Loop, % wordCount
{
    curindex := Mod(A_Index, loremarray.MaxIndex() + 1)
    curword := loremarray[curindex]
    generated = %generated% %curword%
}
PrintViaClip(generated)
return

PrintViaClip(text) {
    oldclip := clipboard
    clipboard := text
    ClipWait
    Send ^v
    Sleep, 100
    clipboard := oldclip
}