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

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$FINDNESTEDCOMPONENT$crc99F16C57_$$_GETNEXTNAME$$ANSISTRING
CLASSES$_$FINDNESTEDCOMPONENT$crc99F16C57_$$_GETNEXTNAME$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,46
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		mov	byte [bp-3],0
		cmp	word [bp-2],0
		je	..@j15253
		jmp	..@j15254
..@j15253:
		mov	bx,word [bp+6]
		cmp	byte [bx+4],0
		jne	..@j15255
		jmp	..@j15256
..@j15255:
		mov	ax,word _$CLASSES$_Ld36
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		mov	al,0
		je	..@j15265
		inc	ax
..@j15265:
		mov	byte [bp-3],al
..@j15256:
		cmp	word [bp-2],0
		je	..@j15266
		jmp	..@j15267
..@j15266:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		test	bx,bx
		je	..@j15270
		mov	bx,word [bx-2]
..@j15270:
		inc	bx
		mov	word [bp-2],bx
..@j15267:
..@j15254:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		mov	bx,word [bp+6]
		lea	ax,[bx+6]
		push	ax
		mov	ax,1
		push	ax
		mov	dl,byte [bp-3]
		mov	dh,0
		mov	ax,word [bp-2]
		add	ax,dx
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
EXTERN	_$CLASSES$_Ld36
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
