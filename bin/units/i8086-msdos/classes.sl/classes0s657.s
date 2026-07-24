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
	GLOBAL CLASSES_$$_REGISTERNOICON$array_of_TCOMPONENTCLASS
CLASSES_$$_REGISTERNOICON$array_of_TCOMPONENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		mov	di,word [bp+4]
		inc	di
		mov	cx,di
		shl	di,1
		sub	sp,di
		and	sp,-2
		mov	di,sp
		push	ss
		pop	es
		mov	si,ax
		cld
		rep
		movsw
		mov	ax,sp
		mov	word [bp+6],ax
		cmp	word [U_$CLASSES_$$_COMPONENTPAGES],0
		je	..@j13984
		jmp	..@j13985
..@j13984:
		call	CLASSES_$$_INITCOMPONENTPAGES
..@j13985:
		push	word [U_$CLASSES_$$_COMPONENTPAGES]
		mov	ax,0
		push	ax
		call	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	word [bx+14],0
		je	..@j13992
		jmp	..@j13993
..@j13992:
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	bx,word [bp-2]
		mov	word [bx+14],ax
..@j13993:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j14003
		dec	word [bp-4]
	ALIGN 2
..@j14004:
		inc	word [bp-4]
		mov	bx,word [bp-2]
		push	word [bx+14]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j14004
..@j14003:
		cmp	word [U_$CLASSES_$$_REGISTERNOICONPROC],0
		jne	..@j14009
		jmp	..@j14010
..@j14009:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [U_$CLASSES_$$_REGISTERNOICONPROC]
		call	ax
..@j14010:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$CLASSES_$$_REGISTERNOICONPROC
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
EXTERN	CLASSES_$$_INITCOMPONENTPAGES
EXTERN	U_$CLASSES_$$_COMPONENTPAGES
