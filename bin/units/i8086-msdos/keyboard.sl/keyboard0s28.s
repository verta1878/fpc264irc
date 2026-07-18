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
	GLOBAL KEYBOARD_$$_SYSGETKEYEVENT$$LONGWORD
KEYBOARD_$$_SYSGETKEYEVENT$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	al,byte [U_$KEYBOARD_$$_KEYBOARD_TYPE]
		mov	byte [bp-23],al
		mov	ax,22
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		cmp	byte [bp-24],224
		je	..@j433
		jmp	..@j432
..@j433:
		cmp	byte [bp-23],0
		jne	..@j431
		jmp	..@j432
..@j431:
		mov	byte [bp-24],0
..@j432:
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+23]
		mov	ah,0
		and	ax,15
		mov	cl,16
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-24]
		mov	bx,0
		or	bx,768
		or	dx,cx
		or	bx,ax
		mov	word [bp-4],dx
		mov	word [bp-2],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$KEYBOARD_$$_KEYBOARD_TYPE
