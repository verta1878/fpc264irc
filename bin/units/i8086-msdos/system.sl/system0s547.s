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
	GLOBAL fpc_dynarray_clear
fpc_dynarray_clear:
	GLOBAL FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j13805
		jmp	..@j13806
..@j13805:
		jmp	..@j13803
..@j13806:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		sub	ax,4
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	word [bx],0
		je	..@j13809
		jmp	..@j13810
..@j13809:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j13810:
		mov	ax,word [bp-2]
		push	ax
		call	SYSTEM_$$_DECLOCKED$SMALLINT$$BOOLEAN
		test	al,al
		jne	..@j13817
		jmp	..@j13818
..@j13817:
		mov	ax,word [bp+4]
		add	ax,2
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		mov	word [bp+4],ax
		mov	bx,word [bp+6]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		inc	ax
		push	ax
		call	FPC_FINALIZE_ARRAY
		push	word [bp-2]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j13818:
		mov	bx,word [bp+6]
		mov	word [bx],0
..@j13803:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FPC_FINALIZE_ARRAY
EXTERN	SYSTEM_$$_DECLOCKED$SMALLINT$$BOOLEAN
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
