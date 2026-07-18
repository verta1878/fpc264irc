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
	GLOBAL fpc_assert
fpc_assert:
	GLOBAL FPC_ASSERT
FPC_ASSERT:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_ASSERTERRORPROC],0
		jne	..@j18267
		jmp	..@j18268
..@j18267:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_ASSERTERRORPROC]
		call	ax
		jmp	..@j18277
..@j18268:
		mov	ax,0
		push	ax
		mov	ax,227
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j18277:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	TC_$SYSTEM_$$_ASSERTERRORPROC
