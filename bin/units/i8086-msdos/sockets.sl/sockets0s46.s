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
	GLOBAL SOCKETS_$$_RESOLVENAME$ANSISTRING$TINADDR$$BOOLEAN
SOCKETS_$$_RESOLVENAME$ANSISTRING$TINADDR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,270
		mov	byte [bp-1],0
		push	word [bp+6]
		call	SOCKETS_$$_INET_ADDR$ANSISTRING$$LONGWORD
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		cmp	ax,-1
		jne	..@j458
		cmp	dx,-1
		jne	..@j458
		jmp	..@j460
..@j460:
		push	word [bp+6]
		mov	ax,word _$SOCKETS$_Ld2
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j459
		cmp	cx,0
		jne	..@j459
		jmp	..@j458
..@j458:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
		mov	byte [bp-1],1
		jmp	..@j450
..@j459:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j471
		mov	bx,word [bx-2]
..@j471:
		cmp	bx,254
		jg	..@j469
		jmp	..@j470
..@j469:
		jmp	..@j450
..@j470:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j474
		mov	bx,word [bx-2]
..@j474:
		mov	dx,bx
		mov	word [bp-268],1
		cmp	dx,word [bp-268]
		jl	..@j476
		dec	word [bp-268]
	ALIGN 2
..@j477:
		inc	word [bp-268]
		mov	ax,word [bp-268]
		mov	di,ax
		dec	di
		mov	bx,word [bp+6]
		mov	si,word [bp-268]
		mov	al,byte [bx+si-1]
		mov	byte [bp+di-264],al
		cmp	dx,word [bp-268]
		jg	..@j477
..@j476:
		mov	si,word [bp+6]
		test	si,si
		je	..@j482
		mov	si,word [si-2]
..@j482:
		mov	byte [bp+si-264],0
		lea	ax,[bp-264]
		push	ax
		call	_gethostbyname
		pop	word [bp-270]
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		je	..@j487
		jmp	..@j489
..@j489:
		mov	bx,word [bp-8]
		cmp	word [bx+12],0
		je	..@j487
		jmp	..@j488
..@j487:
		jmp	..@j450
..@j488:
		mov	bx,word [bp-8]
		mov	ax,word [bx+12]
		mov	word [bp-266],ax
		mov	bx,word [bp-266]
		cmp	word [bx],0
		je	..@j492
		jmp	..@j493
..@j492:
		jmp	..@j450
..@j493:
		mov	bx,word [bp-266]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,4
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	byte [bp-1],1
..@j450:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	_gethostbyname
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$SOCKETS$_Ld2
EXTERN	SOCKETS_$$_INET_ADDR$ANSISTRING$$LONGWORD
