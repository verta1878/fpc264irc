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
	GLOBAL fpc_safecallcheck
fpc_safecallcheck:
	GLOBAL FPC_SAFECALLCHECK
FPC_SAFECALLCHECK:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jl	..@j17644
		jg	..@j17645
		cmp	dx,0
		jb	..@j17644
		jmp	..@j17645
..@j17644:
		cmp	word [TC_$SYSTEM_$$_SAFECALLERRORPROC],0
		jne	..@j17646
		jmp	..@j17647
..@j17646:
		push	word [bp+6]
		push	word [bp+4]
		push	bp
		mov	ax,word [TC_$SYSTEM_$$_SAFECALLERRORPROC]
		call	ax
..@j17647:
		mov	ax,0
		push	ax
		mov	ax,229
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j17645:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	TC_$SYSTEM_$$_SAFECALLERRORPROC
