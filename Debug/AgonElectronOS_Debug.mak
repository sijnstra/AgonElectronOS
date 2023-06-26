SHELL = cmd.exe

#
# ZDS II Make File - AgonElectronOS project, Debug configuration
#
# Generated by: ZDS II - eZ80Acclaim! 5.3.5 (Build 23020901)
#   IDE component: d:5.3.0:23020901
#   Install Path: C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\
#

RM = del

# ZDS base directory
ZDSDIR = C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5
ZDSDIR_ESCSPACE = C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5

# ZDS bin directory
BIN = $(ZDSDIR)\bin

# ZDS include base directory
INCLUDE = C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include
INCLUDE_ESCSPACE = C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include

# ZTP base directory
ZTPDIR = C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\ZTP2.5.1
ZTPDIR_ESCSPACE = C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\ZTP2.5.1

# project directory
PRJDIR = Z:\Development\AgonLight\software\AgonElectronOS
PRJDIR_ESCSPACE = Z:\Development\AgonLight\software\AgonElectronOS

# intermediate files directory
WORKDIR = Z:\Development\AgonLight\software\AgonElectronOS\Debug
WORKDIR_ESCSPACE = Z:\Development\AgonLight\software\AgonElectronOS\Debug

# output files directory
OUTDIR = Z:\Development\AgonLight\software\AgonElectronOS\Debug\
OUTDIR_ESCSPACE = Z:\Development\AgonLight\software\AgonElectronOS\Debug\

# tools
CC = @"$(BIN)\eZ80cc"
AS = @"$(BIN)\eZ80asm"
LD = @"$(BIN)\eZ80link"
AR = @"$(BIN)\eZ80lib"
WEBTOC = @"$(BIN)\mkwebpage"

CFLAGS =  \
-define:_DEBUG -define:_EZ80 -define:_EZ80F92  \
-define:_EZ80ACCLAIM! -define:_SIMULATE -genprintf -NOkeepasm  \
-keeplst -NOlist -NOlistinc -NOmodsect -optspeed -promote  \
-NOreduceopt  \
-stdinc:"\"..;C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include\std;C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include\zilog\""  \
-usrinc:"\"..;..\src_fatfs;..\src_startup;..\include\""  \
-NOmultithread -NOpadbranch -debug -cpu:eZ80F92  \
-asmsw:"   \
	-define:_EZ80ACCLAIM!=1 -define:_SIMULATE=1  \
	-include:\"..;C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include\std;C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include\zilog\"  \
	-list -NOlistmac -pagelen:0 -pagewidth:80 -quiet -sdiopt -warn  \
	-debug -NOigcase -cpu:eZ80F92"

ASFLAGS =  \
-define:_EZ80ACCLAIM!=1 -define:_SIMULATE=1  \
-include:"\"..;C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include\std;C:\Zilog\ZDSII_eZ80Acclaim!_5.3.5\include\zilog\""  \
-list -NOlistmac -name -pagelen:0 -pagewidth:80 -quiet -sdiopt  \
-warn -debug -NOigcase -cpu:eZ80F92

LDFLAGS = @.\AgonElectronOS_Debug.linkcmd
build: AgonElectronOS

buildall: clean AgonElectronOS

relink: deltarget AgonElectronOS

deltarget: 
	@if exist "$(WORKDIR)\AgonElectronOS.lod"  \
            $(RM) "$(WORKDIR)\AgonElectronOS.lod"
	@if exist "$(WORKDIR)\AgonElectronOS.hex"  \
            $(RM) "$(WORKDIR)\AgonElectronOS.hex"
	@if exist "$(WORKDIR)\AgonElectronOS.map"  \
            $(RM) "$(WORKDIR)\AgonElectronOS.map"

clean: 
	@if exist "$(WORKDIR)\AgonElectronOS.lod"  \
            $(RM) "$(WORKDIR)\AgonElectronOS.lod"
	@if exist "$(WORKDIR)\AgonElectronOS.hex"  \
            $(RM) "$(WORKDIR)\AgonElectronOS.hex"
	@if exist "$(WORKDIR)\AgonElectronOS.map"  \
            $(RM) "$(WORKDIR)\AgonElectronOS.map"
	@if exist "$(WORKDIR)\main.obj"  \
            $(RM) "$(WORKDIR)\main.obj"
	@if exist "$(WORKDIR)\main.lis"  \
            $(RM) "$(WORKDIR)\main.lis"
	@if exist "$(WORKDIR)\main.lst"  \
            $(RM) "$(WORKDIR)\main.lst"
	@if exist "$(WORKDIR)\main.src"  \
            $(RM) "$(WORKDIR)\main.src"
	@if exist "$(WORKDIR)\globals.obj"  \
            $(RM) "$(WORKDIR)\globals.obj"
	@if exist "$(WORKDIR)\globals.lis"  \
            $(RM) "$(WORKDIR)\globals.lis"
	@if exist "$(WORKDIR)\globals.lst"  \
            $(RM) "$(WORKDIR)\globals.lst"
	@if exist "$(WORKDIR)\misc.obj"  \
            $(RM) "$(WORKDIR)\misc.obj"
	@if exist "$(WORKDIR)\misc.lis"  \
            $(RM) "$(WORKDIR)\misc.lis"
	@if exist "$(WORKDIR)\misc.lst"  \
            $(RM) "$(WORKDIR)\misc.lst"
	@if exist "$(WORKDIR)\interrupts.obj"  \
            $(RM) "$(WORKDIR)\interrupts.obj"
	@if exist "$(WORKDIR)\interrupts.lis"  \
            $(RM) "$(WORKDIR)\interrupts.lis"
	@if exist "$(WORKDIR)\interrupts.lst"  \
            $(RM) "$(WORKDIR)\interrupts.lst"
	@if exist "$(WORKDIR)\sd.obj"  \
            $(RM) "$(WORKDIR)\sd.obj"
	@if exist "$(WORKDIR)\sd.lis"  \
            $(RM) "$(WORKDIR)\sd.lis"
	@if exist "$(WORKDIR)\sd.lst"  \
            $(RM) "$(WORKDIR)\sd.lst"
	@if exist "$(WORKDIR)\sd.src"  \
            $(RM) "$(WORKDIR)\sd.src"
	@if exist "$(WORKDIR)\spi.obj"  \
            $(RM) "$(WORKDIR)\spi.obj"
	@if exist "$(WORKDIR)\spi.lis"  \
            $(RM) "$(WORKDIR)\spi.lis"
	@if exist "$(WORKDIR)\spi.lst"  \
            $(RM) "$(WORKDIR)\spi.lst"
	@if exist "$(WORKDIR)\spi.src"  \
            $(RM) "$(WORKDIR)\spi.src"
	@if exist "$(WORKDIR)\diskio.obj"  \
            $(RM) "$(WORKDIR)\diskio.obj"
	@if exist "$(WORKDIR)\diskio.lis"  \
            $(RM) "$(WORKDIR)\diskio.lis"
	@if exist "$(WORKDIR)\diskio.lst"  \
            $(RM) "$(WORKDIR)\diskio.lst"
	@if exist "$(WORKDIR)\diskio.src"  \
            $(RM) "$(WORKDIR)\diskio.src"
	@if exist "$(WORKDIR)\ff.obj"  \
            $(RM) "$(WORKDIR)\ff.obj"
	@if exist "$(WORKDIR)\ff.lis"  \
            $(RM) "$(WORKDIR)\ff.lis"
	@if exist "$(WORKDIR)\ff.lst"  \
            $(RM) "$(WORKDIR)\ff.lst"
	@if exist "$(WORKDIR)\ff.src"  \
            $(RM) "$(WORKDIR)\ff.src"
	@if exist "$(WORKDIR)\ffsystem.obj"  \
            $(RM) "$(WORKDIR)\ffsystem.obj"
	@if exist "$(WORKDIR)\ffsystem.lis"  \
            $(RM) "$(WORKDIR)\ffsystem.lis"
	@if exist "$(WORKDIR)\ffsystem.lst"  \
            $(RM) "$(WORKDIR)\ffsystem.lst"
	@if exist "$(WORKDIR)\ffsystem.src"  \
            $(RM) "$(WORKDIR)\ffsystem.src"
	@if exist "$(WORKDIR)\ffunicode.obj"  \
            $(RM) "$(WORKDIR)\ffunicode.obj"
	@if exist "$(WORKDIR)\ffunicode.lis"  \
            $(RM) "$(WORKDIR)\ffunicode.lis"
	@if exist "$(WORKDIR)\ffunicode.lst"  \
            $(RM) "$(WORKDIR)\ffunicode.lst"
	@if exist "$(WORKDIR)\ffunicode.src"  \
            $(RM) "$(WORKDIR)\ffunicode.src"
	@if exist "$(WORKDIR)\gpio.obj"  \
            $(RM) "$(WORKDIR)\gpio.obj"
	@if exist "$(WORKDIR)\gpio.lis"  \
            $(RM) "$(WORKDIR)\gpio.lis"
	@if exist "$(WORKDIR)\gpio.lst"  \
            $(RM) "$(WORKDIR)\gpio.lst"
	@if exist "$(WORKDIR)\cstartup.obj"  \
            $(RM) "$(WORKDIR)\cstartup.obj"
	@if exist "$(WORKDIR)\cstartup.lis"  \
            $(RM) "$(WORKDIR)\cstartup.lis"
	@if exist "$(WORKDIR)\cstartup.lst"  \
            $(RM) "$(WORKDIR)\cstartup.lst"
	@if exist "$(WORKDIR)\init_params_f92.obj"  \
            $(RM) "$(WORKDIR)\init_params_f92.obj"
	@if exist "$(WORKDIR)\init_params_f92.lis"  \
            $(RM) "$(WORKDIR)\init_params_f92.lis"
	@if exist "$(WORKDIR)\init_params_f92.lst"  \
            $(RM) "$(WORKDIR)\init_params_f92.lst"
	@if exist "$(WORKDIR)\vectors16.obj"  \
            $(RM) "$(WORKDIR)\vectors16.obj"
	@if exist "$(WORKDIR)\vectors16.lis"  \
            $(RM) "$(WORKDIR)\vectors16.lis"
	@if exist "$(WORKDIR)\vectors16.lst"  \
            $(RM) "$(WORKDIR)\vectors16.lst"
	@if exist "$(WORKDIR)\rtc.obj"  \
            $(RM) "$(WORKDIR)\rtc.obj"
	@if exist "$(WORKDIR)\rtc.lis"  \
            $(RM) "$(WORKDIR)\rtc.lis"
	@if exist "$(WORKDIR)\rtc.lst"  \
            $(RM) "$(WORKDIR)\rtc.lst"
	@if exist "$(WORKDIR)\timer.obj"  \
            $(RM) "$(WORKDIR)\timer.obj"
	@if exist "$(WORKDIR)\timer.lis"  \
            $(RM) "$(WORKDIR)\timer.lis"
	@if exist "$(WORKDIR)\timer.lst"  \
            $(RM) "$(WORKDIR)\timer.lst"
	@if exist "$(WORKDIR)\timer.src"  \
            $(RM) "$(WORKDIR)\timer.src"
	@if exist "$(WORKDIR)\uart_.obj"  \
            $(RM) "$(WORKDIR)\uart_.obj"
	@if exist "$(WORKDIR)\uart_.lis"  \
            $(RM) "$(WORKDIR)\uart_.lis"
	@if exist "$(WORKDIR)\uart_.lst"  \
            $(RM) "$(WORKDIR)\uart_.lst"
	@if exist "$(WORKDIR)\machine.obj"  \
            $(RM) "$(WORKDIR)\machine.obj"
	@if exist "$(WORKDIR)\machine.lis"  \
            $(RM) "$(WORKDIR)\machine.lis"
	@if exist "$(WORKDIR)\machine.lst"  \
            $(RM) "$(WORKDIR)\machine.lst"
	@if exist "$(WORKDIR)\machine.src"  \
            $(RM) "$(WORKDIR)\machine.src"
	@if exist "$(WORKDIR)\cp.obj"  \
            $(RM) "$(WORKDIR)\cp.obj"
	@if exist "$(WORKDIR)\cp.lis"  \
            $(RM) "$(WORKDIR)\cp.lis"
	@if exist "$(WORKDIR)\cp.lst"  \
            $(RM) "$(WORKDIR)\cp.lst"
	@if exist "$(WORKDIR)\cp.src"  \
            $(RM) "$(WORKDIR)\cp.src"
	@if exist "$(WORKDIR)\eos_api.obj"  \
            $(RM) "$(WORKDIR)\eos_api.obj"
	@if exist "$(WORKDIR)\eos_api.lis"  \
            $(RM) "$(WORKDIR)\eos_api.lis"
	@if exist "$(WORKDIR)\eos_api.lst"  \
            $(RM) "$(WORKDIR)\eos_api.lst"

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR_ESCSPACE)\main.obj  \
            $(WORKDIR_ESCSPACE)\globals.obj  \
            $(WORKDIR_ESCSPACE)\misc.obj  \
            $(WORKDIR_ESCSPACE)\interrupts.obj  \
            $(WORKDIR_ESCSPACE)\sd.obj  \
            $(WORKDIR_ESCSPACE)\spi.obj  \
            $(WORKDIR_ESCSPACE)\diskio.obj  \
            $(WORKDIR_ESCSPACE)\ff.obj  \
            $(WORKDIR_ESCSPACE)\ffsystem.obj  \
            $(WORKDIR_ESCSPACE)\ffunicode.obj  \
            $(WORKDIR_ESCSPACE)\gpio.obj  \
            $(WORKDIR_ESCSPACE)\cstartup.obj  \
            $(WORKDIR_ESCSPACE)\init_params_f92.obj  \
            $(WORKDIR_ESCSPACE)\vectors16.obj  \
            $(WORKDIR_ESCSPACE)\rtc.obj  \
            $(WORKDIR_ESCSPACE)\timer.obj  \
            $(WORKDIR_ESCSPACE)\uart_.obj  \
            $(WORKDIR_ESCSPACE)\machine.obj  \
            $(WORKDIR_ESCSPACE)\cp.obj  \
            $(WORKDIR_ESCSPACE)\eos_api.obj

AgonElectronOS: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR_ESCSPACE)\main.obj :  \
            $(PRJDIR_ESCSPACE)\main.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h  \
            $(PRJDIR_ESCSPACE)\include\cp.h  \
            $(PRJDIR_ESCSPACE)\include\globals.h  \
            $(PRJDIR_ESCSPACE)\include\interrupts.h  \
            $(PRJDIR_ESCSPACE)\include\machine.h  \
            $(PRJDIR_ESCSPACE)\include\rtc.h  \
            $(PRJDIR_ESCSPACE)\include\spi.h  \
            $(PRJDIR_ESCSPACE)\include\timer.h  \
            $(PRJDIR_ESCSPACE)\include\uart.h  \
            $(PRJDIR_ESCSPACE)\include\vectors16.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\main.c"

$(WORKDIR_ESCSPACE)\globals.obj :  \
            $(PRJDIR_ESCSPACE)\src_startup\globals.asm  \
            $(PRJDIR_ESCSPACE)\src\equs.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src_startup\globals.asm"

$(WORKDIR_ESCSPACE)\misc.obj :  \
            $(PRJDIR_ESCSPACE)\src\misc.asm  \
            $(INCLUDE_ESCSPACE)\zilog\ez80F92.inc  \
            $(PRJDIR_ESCSPACE)\src\equs.inc  \
            $(PRJDIR_ESCSPACE)\src\macros.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\misc.asm"

$(WORKDIR_ESCSPACE)\interrupts.obj :  \
            $(PRJDIR_ESCSPACE)\src\interrupts.asm  \
            $(INCLUDE_ESCSPACE)\zilog\ez80F92.inc  \
            $(PRJDIR_ESCSPACE)\src\equs.inc  \
            $(PRJDIR_ESCSPACE)\src\macros.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\interrupts.asm"

$(WORKDIR_ESCSPACE)\sd.obj :  \
            $(PRJDIR_ESCSPACE)\src\sd.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h  \
            $(PRJDIR_ESCSPACE)\include\sd.h  \
            $(PRJDIR_ESCSPACE)\include\spi.h  \
            $(PRJDIR_ESCSPACE)\include\timer.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\sd.c"

$(WORKDIR_ESCSPACE)\spi.obj :  \
            $(PRJDIR_ESCSPACE)\src\spi.c  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h  \
            $(PRJDIR_ESCSPACE)\include\spi.h  \
            $(PRJDIR_ESCSPACE)\include\timer.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\spi.c"

$(WORKDIR_ESCSPACE)\diskio.obj :  \
            $(PRJDIR_ESCSPACE)\src_fatfs\diskio.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(PRJDIR_ESCSPACE)\include\sd.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\diskio.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src_fatfs\diskio.c"

$(WORKDIR_ESCSPACE)\ff.obj :  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(INCLUDE_ESCSPACE)\std\Math.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\diskio.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src_fatfs\ff.c"

$(WORKDIR_ESCSPACE)\ffsystem.obj :  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffsystem.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src_fatfs\ffsystem.c"

$(WORKDIR_ESCSPACE)\ffunicode.obj :  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffunicode.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src_fatfs\ffunicode.c"

$(WORKDIR_ESCSPACE)\gpio.obj :  \
            $(PRJDIR_ESCSPACE)\src\gpio.asm  \
            $(PRJDIR_ESCSPACE)\src\equs.inc  \
            $(PRJDIR_ESCSPACE)\src\macros.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\gpio.asm"

$(WORKDIR_ESCSPACE)\cstartup.obj :  \
            $(PRJDIR_ESCSPACE)\src_startup\cstartup.asm
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src_startup\cstartup.asm"

$(WORKDIR_ESCSPACE)\init_params_f92.obj :  \
            $(PRJDIR_ESCSPACE)\src_startup\init_params_f92.asm  \
            $(INCLUDE_ESCSPACE)\zilog\ez80F92.inc  \
            $(PRJDIR_ESCSPACE)\src\equs.inc  \
            $(PRJDIR_ESCSPACE)\src\macros.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src_startup\init_params_f92.asm"

$(WORKDIR_ESCSPACE)\vectors16.obj :  \
            $(PRJDIR_ESCSPACE)\src_startup\vectors16.asm  \
            $(PRJDIR_ESCSPACE)\src\equs.inc  \
            $(PRJDIR_ESCSPACE)\src\macros.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src_startup\vectors16.asm"

$(WORKDIR_ESCSPACE)\rtc.obj :  \
            $(PRJDIR_ESCSPACE)\src\rtc.asm  \
            $(PRJDIR_ESCSPACE)\src\equs.inc  \
            $(PRJDIR_ESCSPACE)\src\macros.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\rtc.asm"

$(WORKDIR_ESCSPACE)\timer.obj :  \
            $(PRJDIR_ESCSPACE)\src\timer.c  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h  \
            $(PRJDIR_ESCSPACE)\include\timer.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\timer.c"

$(WORKDIR_ESCSPACE)\uart_.obj :  \
            $(PRJDIR_ESCSPACE)\src\uart_.asm  \
            $(INCLUDE_ESCSPACE)\zilog\ez80F92.inc  \
            $(PRJDIR_ESCSPACE)\src\equs.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\uart_.asm"

$(WORKDIR_ESCSPACE)\machine.obj :  \
            $(PRJDIR_ESCSPACE)\src\machine.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h  \
            $(PRJDIR_ESCSPACE)\include\machine.h  \
            $(PRJDIR_ESCSPACE)\include\misc.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\machine.c"

$(WORKDIR_ESCSPACE)\cp.obj :  \
            $(PRJDIR_ESCSPACE)\src\cp.c  \
            $(INCLUDE_ESCSPACE)\std\FLOAT.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\include\cp.h  \
            $(PRJDIR_ESCSPACE)\include\globals.h  \
            $(PRJDIR_ESCSPACE)\include\machine.h  \
            $(PRJDIR_ESCSPACE)\include\uart.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ff.h  \
            $(PRJDIR_ESCSPACE)\src_fatfs\ffconf.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\src\cp.c"

$(WORKDIR_ESCSPACE)\eos_api.obj :  \
            $(PRJDIR_ESCSPACE)\src\eos_api.asm  \
            $(INCLUDE_ESCSPACE)\zilog\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\src\eos_api.asm"
