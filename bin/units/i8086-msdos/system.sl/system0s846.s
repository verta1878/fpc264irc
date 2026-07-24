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
	GLOBAL SYSTEM_$$_RUNERROR$WORD
SYSTEM_$$_RUNERROR$WORD:
	GLOBAL FPC_RUNERROR
FPC_RUNERROR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	word [TC_$SYSTEM_$$_ERRORCODE],ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		mov	word [bp-4],ax
		mov	word [bp-2],bp
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
		mov	ax,word [bp-4]
		mov	word [TC_$SYSTEM_$$_ERRORADDR],ax
		mov	ax,word [bp-2]
		mov	word [FPC_ERRORBASE],ax
		mov	ax,word [TC_$SYSTEM_$$_ERRORCODE]
		mov	dx,0
		push	dx
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	FPC_ERRORBASE
EXTERN	TC_$SYSTEM_$$_ERRORADDR
EXTERN	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	TC_$SYSTEM_$$_ERRORCODE
