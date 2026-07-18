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
	GLOBAL FGL$_$TFPSLIST_$__$$_PACK
FGL$_$TFPSLIST_$__$$_PACK:
		push	bp
		mov	bp,sp
		sub	sp,80
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
		lea	ax,[bp-74]
		mov	word [bp-76],ax
		cmp	word [bp-2],64
		jg	..@j734
		jmp	..@j735
..@j734:
		lea	ax,[bp-76]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
..@j735:
		mov	ax,word [bp-76]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	word [bp-4],0
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-80],ax
		mov	word [bp-6],0
		mov	ax,word [bp-80]
		cmp	ax,word [bp-6]
		jl	..@j757
		dec	word [bp-6]
	ALIGN 2
..@j758:
		inc	word [bp-6]
		mov	ax,word [bp-76]
		mov	word [bp-78],ax
		mov	ax,word [bp-10]
		push	ax
		mov	ax,word [bp-78]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		mov	al,0
		jne	..@j771
		inc	ax
..@j771:
		test	al,al
		je	..@j759
		jmp	..@j760
..@j759:
		mov	ax,word [bp-10]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-2]
		add	word [bp-8],ax
		inc	word [bp-4]
		jmp	..@j778
..@j760:
		push	word [bp+4]
		push	word [bp-10]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j778:
		mov	ax,word [bp-2]
		add	word [bp-10],ax
		mov	ax,word [bp-80]
		cmp	ax,word [bp-6]
		jg	..@j758
..@j757:
		cmp	word [bp-2],64
		jg	..@j783
		jmp	..@j784
..@j783:
		push	word [bp-76]
		push	word [bp-2]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j784:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
