BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
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
EXTERN	TC_$SETEUID_UNIT_$$_LASTERROR
