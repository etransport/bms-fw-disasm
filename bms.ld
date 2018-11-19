#	LINK COMMAND FILE FOR TEST PROGRAM
#	Copyright (c) 2006 by COSMIC Software
#

+grp CODE=ROM,.text
+grp DATA=RAM,.data

+seg CODE -b 0x9000 -n .text		# program start address
+seg .const -a .text -n .const		# constants follow vector
+seg REGS -c -b 0x0 -m 0x10		# zero page start address
+seg DATA -b 0x100 -n .data
+seg .bss -a .data -n .bss

+seg GPIOS -c -b 0x5000 -m 0x800
+seg UNIQUEID -c -b 0x4926 -m 0xC
+seg EEPROM -c -b 0x1000 -m 0x800

bms.o					# app code

#
# float and integer library names depend on the model used
#
"C:\Electro\MCU\STM8\Cosmic\CXSTM8\Lib\libisl.sm8"
"C:\Electro\MCU\STM8\Cosmic\CXSTM8\Lib\libm.sm8"

#+seg ROM -b 0x9000 -m 0x80		# vectors start address
#vectors.o				# interrupt vectors

#
# define these symbols if crtsi is used
#
+def __endzp=@.ubsct			# end of uninitialized zpage
+def __memory=@.bss			# end of bss segment
+def __stack=0x1ff
