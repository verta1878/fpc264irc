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
	GLOBAL SYSTEM_$$_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS
SYSTEM_$$_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18494
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		mov	bx,ax
		jmp	..@j18495
..@j18494:
		mov	bx,word U_$SYSTEM_$$_FREELISTS+2
..@j18495:
		lea	ax,[bx+86]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	dx,0
		mov	bx,word [bp-2]
		mov	bx,word [bx+6]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	bx,word [bp-2]
		mov	word [bx+8],ax
		mov	di,word [bp+4]
		mov	si,word [bp-2]
		push	ds
		pop	es
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
