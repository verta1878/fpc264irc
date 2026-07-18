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
	GLOBAL fpc_unicodestr_unique
fpc_unicodestr_unique:
	GLOBAL FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j12110
		jmp	..@j12111
..@j12110:
		jmp	..@j12106
..@j12111:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		cmp	word [bx-4],1
		jne	..@j12112
		jmp	..@j12113
..@j12112:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx-2]
		mov	word [bp-6],ax
		push	word [bp-6]
		call	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	word [bx-2],ax
		mov	ax,word [bp+4]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j12113:
..@j12106:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_UNICODESTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
