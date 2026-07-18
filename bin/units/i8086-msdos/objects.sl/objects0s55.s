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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_FLUSH
OBJECTS$_$TBUFSTREAM_$__$$_FLUSH:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		jne	..@j1010
		jmp	..@j1011
..@j1010:
		jmp	..@j1008
..@j1011:
		mov	bx,word [bp+4]
		cmp	byte [bx+841],2
		je	..@j1014
		jmp	..@j1013
..@j1014:
		mov	bx,word [bp+4]
		mov	dx,word [bx+846]
		mov	ax,word [bx+848]
		cmp	ax,0
		jne	..@j1012
		cmp	dx,0
		jne	..@j1012
		jmp	..@j1013
..@j1012:
		mov	bx,word [bp+4]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		je	..@j1015
		jmp	..@j1016
..@j1015:
		mov	word [bp-6],103
		jmp	..@j1019
..@j1016:
		mov	bx,word [bp+4]
		lea	ax,[bx+273]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+854]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+848]
		push	word [bx+846]
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-6],ax
..@j1019:
		cmp	word [bp-6],0
		jne	..@j1030
		jmp	..@j1032
..@j1032:
		mov	bx,word [bp+4]
		mov	dx,word [bx+846]
		mov	ax,word [bx+848]
		cmp	ax,word [bp-2]
		jne	..@j1030
		cmp	dx,word [bp-4]
		jne	..@j1030
		jmp	..@j1031
		jmp	..@j1031
..@j1030:
		cmp	word [bp-6],0
		je	..@j1033
		jmp	..@j1034
..@j1033:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j1041
..@j1034:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j1041:
..@j1031:
..@j1013:
		mov	bx,word [bp+4]
		mov	word [bx+846],0
		mov	word [bx+848],0
		mov	bx,word [bp+4]
		mov	word [bx+850],0
		mov	word [bx+852],0
..@j1008:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT$LONGINT
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
