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
	GLOBAL SYSUTILS_$$_FILESETDATE$WORD$LONGINT$$LONGINT
SYSUTILS_$$_FILESETDATE$WORD$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+8]
		mov	word [bp-22],ax
		mov	word [bp-24],22273
		mov	ax,word [bp+4]
		mov	word [bp-20],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,dx
		mov	dx,0
		mov	word [bp-18],ax
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15612
		jmp	..@j15613
..@j15612:
		mov	ax,word [bp-24]
		neg	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j15616
..@j15613:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j15616:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_INTR
