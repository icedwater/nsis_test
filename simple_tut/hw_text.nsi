OutFile "hello_text.exe"
Section

MessageBox MB_OK "Ding!"

FileOpen $0 "$DESKTOP\Hello.txt" w
FileWrite $0 "Hello World!"
FileClose $0

MessageBox MB_OK "Check your Desktop!"

SectionEnd
