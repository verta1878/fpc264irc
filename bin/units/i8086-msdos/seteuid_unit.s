BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

; Begin asmlist al_procedures

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_FPSETEUID$LONGINT$$LONGINT
SETEUID_UNIT_$$_FPSETEUID$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR],1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR+2],0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_FPSETEGID$LONGINT$$LONGINT
SETEUID_UNIT_$$_FPSETEGID$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR],1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR+2],0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_FPGETEUID$$LONGINT
SETEUID_UNIT_$$_FPGETEUID$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_FPGETEGID$$LONGINT
SETEUID_UNIT_$$_FPGETEGID$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_FPSETREUID$LONGINT$LONGINT$$LONGINT
SETEUID_UNIT_$$_FPSETREUID$LONGINT$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR],1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR+2],0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_FPSETREGID$LONGINT$LONGINT$$LONGINT
SETEUID_UNIT_$$_FPSETREGID$LONGINT$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR],1
		mov	word [TC_$SETEUID_UNIT_$$_LASTERROR+2],0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_SETEUIDSUPPORTED$$BOOLEAN
SETEUID_UNIT_$$_SETEUIDSUPPORTED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL SETEUID_UNIT_$$_GETLASTSETEUIDERROR$$LONGINT
SETEUID_UNIT_$$_GETLASTSETEUIDERROR$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [TC_$SETEUID_UNIT_$$_LASTERROR]
		mov	word [bp-4],ax
		mov	ax,word [TC_$SETEUID_UNIT_$$_LASTERROR+2]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .data
	ALIGN 2
TC_$SETEUID_UNIT_$$_LASTERROR	DD	0
; End asmlist al_typedconsts

