Release: yawTimer.c
	/opt/microchip/xc8/v1.32/bin/xc8 --ERRFORMAT --WARNFORMAT --MSGFORMAT --CHIP=18F46K20 -DF46K20=1 -v -I./  yawTimer.c
#Agregar regla para gpsim
#agregar regla para solo compilar y otra para linkear

Simulation: yawTimer.c
	/opt/microchip/xc8/v1.32/bin/xc8 --ERRFORMAT --WARNFORMAT --MSGFORMAT --CHIP=18F4620 -DF4620=1 -v -I./  yawTimer.c

BurnFirmware:yawTimer.hex
	/usr/bin/pk2cmd -pPIC18F46K20 -m -r -w -jn -fyawTimer.hex
