dir *.ts /b>filelist.txt /O:d
(for /f %%i in (filelist.txt) do @echo file '%%i') > list.txt
ffmpeg.exe -f concat -i list.txt -map 0:1 -map 0:0 -c:v copy -c:a copy all.mp4
del /f *.ts *.txt
