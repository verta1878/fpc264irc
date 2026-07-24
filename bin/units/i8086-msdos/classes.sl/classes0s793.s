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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READSTRING$TVALUETYPE$$ANSISTRING
CLASSES$_$TBINARYOBJECTREADER_$__$$_READSTRING$TVALUETYPE$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j18035
		cmp	dx,12
		je	..@j18034
..@j18035:
		test	ax,ax
		jne	..@j18036
		cmp	dx,20
		je	..@j18034
..@j18036:
		jmp	..@j18033
..@j18034:
		push	word [bp+10]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		jmp	..@j18032
..@j18033:
		push	word [bp+10]
		lea	ax,[bp-1]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	al,byte [bp-1]
		mov	ah,0
		mov	word [bp-4],ax
..@j18032:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	word [bp-4],0
		jg	..@j18055
		jmp	..@j18056
..@j18055:
		push	word [bp+10]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-4]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
..@j18056:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_setlength
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
