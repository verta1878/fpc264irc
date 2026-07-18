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
	GLOBAL SYSUTILS_$$_FILETRUNCATE$WORD$INT64$$BOOLEAN
SYSUTILS_$$_FILETRUNCATE$WORD$INT64$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jg	..@j15333
		jl	..@j15334
		cmp	dx,0
		ja	..@j15333
		jb	..@j15334
		cmp	ax,32767
		ja	..@j15333
		jb	..@j15334
		cmp	bx,-1
		ja	..@j15333
		jmp	..@j15334
..@j15333:
		mov	byte [bp-1],0
		jmp	..@j15337
..@j15334:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FILESEEK$WORD$INT64$LONGINT$$INT64
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-8],0
		mov	ax,word [bp+12]
		mov	word [bp-20],ax
		mov	word [bp-22],16384
		mov	ax,33
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		mov	al,0
		jne	..@j15360
		inc	ax
..@j15360:
		mov	byte [bp-1],al
..@j15337:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_INTR
EXTERN	SYSUTILS_$$_FILESEEK$WORD$INT64$LONGINT$$INT64
