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
	GLOBAL OBJECTS$_$TRESOURCECOLLECTION_$__$$_GETITEM$TSTREAM$$POINTER
OBJECTS$_$TRESOURCECOLLECTION_$__$$_GETITEM$TSTREAM$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,270
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-3]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		lea	ax,[bp-270]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		add	ax,9
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-270],0
		jne	..@j2529
		jmp	..@j2530
..@j2529:
		mov	bx,word [bp-270]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
		mov	bx,word [bp-270]
		mov	ax,word [bp-12]
		mov	word [bx+4],ax
		mov	ax,word [bp-10]
		mov	word [bx+6],ax
		mov	bx,word [bp-270]
		mov	al,byte [bp-3]
		mov	byte [bx+8],al
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-270]
		lea	ax,[bx+9]
		push	ax
		mov	ax,0
		mov	dl,byte [bp-3]
		mov	dh,0
		push	ax
		push	dx
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2530:
		mov	ax,word [bp-270]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
