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
	GLOBAL SYSTEM_$$_DO_SEEKEND$WORD$$LONGINT
SYSTEM_$$_DO_SEEKEND$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-24],16898
		lea	ax,[bp-24]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j20523
		jmp	..@j20524
..@j20523:
		push	word [bp-24]
		call	SYSTEM_$$_GETINOUTRES$WORD
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j20529
..@j20524:
		mov	ax,word [bp-18]
		mov	dx,0
		mov	dx,ax
		mov	ax,0
		mov	cx,word [bp-24]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
..@j20529:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
