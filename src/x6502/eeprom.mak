2500AD=C:\WIDE\bin
CC=$(2500AD)\c6502.exe
ASM=$(2500AD)\x6502.exe
LINK=$(2500AD)\link.exe
WKPATH=C:\WIDE\X6502
INCLUDEPATH=C:\WIDE\include
+INCLUDE=C:\WIDE\include
+LIB=C:\WIDE\lib
+TEMP=C:\WIDE\temp
CFLAGS=-C -i -d
AFLAGS=-q -d




#******************
target: eeprom.hex

eeprom.hex: eeprom.OBJ t6502.OBJ
	$(LINK) $(WKPATH)\eeprom.LNK

eeprom.OBJ:  C:\WIDE\X6502\eeprom.asm
	$(ASM) $(AFLAGS) C:\WIDE\X6502\eeprom.asm $(WKPATH)$\eeprom.OBJ

t6502.OBJ:  C:\WIDE\include\mac.asm C:\WIDE\X6502\t6502.asm
	$(ASM) $(AFLAGS) C:\WIDE\X6502\t6502.asm $(WKPATH)$\t6502.OBJ

