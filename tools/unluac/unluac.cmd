set X=%1
set X=%X:.lua=_dec.lua%
set X=%X:.dnax=_dec.dnax%
set X=%X:.sx=_dec.sx%
set X=%X:.bmx=_dec.bmx%
set X=%X:.btx=_dec.btx%
java -jar "D:\brz\Breeze\tools\unluac\unluac.jar" %1 > %X%