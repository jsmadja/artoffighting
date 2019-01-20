cd AOF\bin
call makerom
copy 044-p1.p1 ..\..\Final_Burn_Alpha_0.2.97.43_Fr\roms /Y
cd ..\..
powershell -Command "& { Compress-Archive -Update -Path Final_Burn_Alpha_0.2.97.43_Fr\roms\044-p1.p1 Final_Burn_Alpha_0.2.97.43_Fr\roms\aof.zip}"