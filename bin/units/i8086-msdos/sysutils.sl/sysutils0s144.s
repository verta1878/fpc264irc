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
	GLOBAL SYSUTILS_$$_STRTOINT64DEF$ANSISTRING$INT64$$INT64
SYSUTILS_$$_STRTOINT64DEF$ANSISTRING$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+12]
		lea	ax,[bp-10]
		push	ax
		call	fpc_val_int64_ansistr
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		cmp	word [bp-10],0
		jne	..@j3989
		jmp	..@j3990
..@j3989:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j3990:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_val_int64_ansistr
