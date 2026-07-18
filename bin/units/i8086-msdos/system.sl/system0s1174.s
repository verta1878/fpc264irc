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
	GLOBAL SYSTEM_$$_ERASE$file
SYSTEM_$$_ERASE$file:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24861
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24862
..@j24861:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24862:
		cmp	word [bx],0
		jne	..@j24859
		jmp	..@j24860
..@j24859:
		jmp	..@j24857
..@j24860:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j24863
		cmp	dx,-10320
		jne	..@j24863
		jmp	..@j24864
..@j24863:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24867
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24868
..@j24867:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24868:
		mov	word [bx],102
		jmp	..@j24857
..@j24864:
		mov	bx,word [bp+4]
		lea	ax,[bx+56]
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_DO_ERASE$PWIDECHAR$BOOLEAN
..@j24857:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_ERASE$PWIDECHAR$BOOLEAN
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
