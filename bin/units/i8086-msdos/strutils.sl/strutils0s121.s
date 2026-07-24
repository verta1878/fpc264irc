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
	GLOBAL STRUTILS_$$_NUMB2DEC$ANSISTRING$BYTE$$LONGINT
STRUTILS_$$_NUMB2DEC$ANSISTRING$BYTE$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		mov	word [bp-10],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3448
		mov	bx,word [bx-2]
..@j3448:
		mov	word [bp-6],bx
		mov	word [bp-4],0
		mov	word [bp-2],0
		lea	ax,[bp+6]
		push	ax
		lea	ax,[bp-10]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-10]
		call	fpc_ansistr_assign
		mov	word [bp-8],1
		jmp	..@j3462
	ALIGN 2
..@j3461:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		cmp	byte [bx+si-1],64
		ja	..@j3464
		jmp	..@j3465
..@j3464:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		sub	dx,55
		mov	ax,word [bp-8]
		mul	dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		add	dx,cx
		adc	bx,ax
		mov	word [bp-4],dx
		mov	word [bp-2],bx
		jmp	..@j3468
..@j3465:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		sub	dx,48
		mov	ax,word [bp-8]
		mul	dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		add	dx,cx
		adc	bx,ax
		mov	word [bp-4],dx
		mov	word [bp-2],bx
..@j3468:
		dec	word [bp-6]
		mov	dl,byte [bp+4]
		mov	dh,0
		mov	ax,word [bp-8]
		mul	dx
		mov	word [bp-8],ax
..@j3462:
		cmp	word [bp-6],1
		jge	..@j3461
		jmp	..@j3463
..@j3463:
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_incr_ref
