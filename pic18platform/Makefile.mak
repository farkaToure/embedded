
Release: pic18platform.c
	xc8 --ERRFORMAT --WARNFORMAT --MSGFORMAT --CHIP=18F46K20 -DF46K20=1 -v -I./ --RUNTIME=plib pic18platform.c
#Agregar regla para gpsim
#agregar regla para solo compilar y otra para linkear

Simulation: pic18platform.c
	xc8 --ERRFORMAT --WARNFORMAT --MSGFORMAT --CHIP=18F4620 -DF4620=1 -v -I./  pic18platform.c

BurnFirmware:pic18platform.hex
	pk2cmd -B/usr/share/pk2/ -pPIC18F46K20 -m -r -w -jn -fpic18platform.hex
