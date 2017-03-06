
Release: pic18minicom.c
	xc8 --ERRFORMAT --WARNFORMAT --MSGFORMAT --CHIP=18F46K20 -DF46K20=1 -v -I./ --RUNTIME=plib pic18minicom.c
#Agregar regla para gpsim
#agregar regla para solo compilar y otra para linkear


BurnFirmware:pic18minicom.hex
	pk2cmd -B/usr/share/pk2/ -pPIC18F46K20 -m -r -w -jn -fpic18minicom.hex
