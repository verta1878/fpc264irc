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
	GLOBAL SYSUTILS_$$_FILEGETDATE$WORD$$LONGINT
SYSUTILS_$$_FILEGETDATE$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		mov	word [bp-24],22272
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15589
		jmp	..@j15590
..@j15589:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j15593
..@j15590:
		mov	ax,word [bp-20]
		mov	word [bp-4],ax
		mov	ax,word [bp-18]
		mov	word [bp-2],ax
..@j15593:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
