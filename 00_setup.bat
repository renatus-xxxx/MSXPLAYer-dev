cd /d %~dp0
mkdir bin
cd bin
curl -OL --insecure https://www.tatsu-syo.info/Archives/f2s103.zip
tar -xf f2s103.zip -v
del f2s103.zip
cd ..\
