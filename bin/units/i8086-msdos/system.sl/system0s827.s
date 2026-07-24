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
	GLOBAL fpc_iocheck
fpc_iocheck:
	GLOBAL FPC_IOCHECK
FPC_IOCHECK:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17612
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		jmp	..@j17613
..@j17612:
		mov	ax,word U_$SYSTEM_$$_INOUTRES+2
..@j17613:
		mov	word [bp-6],ax
		mov	bx,word [bp-6]
		cmp	word [bx],0
		jne	..@j17614
		jmp	..@j17615
..@j17614:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-6]
		mov	word [bx],0
		push	word [bp-2]
		push	word [bp-4]
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j17615:
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
