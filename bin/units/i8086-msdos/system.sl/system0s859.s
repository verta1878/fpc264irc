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
	GLOBAL fpc_abstracterrorintern
fpc_abstracterrorintern:
	GLOBAL FPC_ABSTRACTERROR
FPC_ABSTRACTERROR:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_ABSTRACTERRORPROC],0
		jne	..@j18257
		jmp	..@j18258
..@j18257:
		mov	ax,word [TC_$SYSTEM_$$_ABSTRACTERRORPROC]
		call	ax
..@j18258:
		mov	ax,0
		push	ax
		mov	ax,211
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	TC_$SYSTEM_$$_ABSTRACTERRORPROC
