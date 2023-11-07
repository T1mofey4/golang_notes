dir *.ts /b>filelist.txt /O:d
(for /f %%i in (filelist.txt) do @echo file '%%i') > list.txt
ffmpeg.exe -f concat -i list.txt -c copy all.mp4
del /f *.txt
exit