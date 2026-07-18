BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		test	dx,dx
		jne	..@j19480
		cmp	ax,2
		je	..@j19475
..@j19480:
		test	dx,dx
		jne	..@j19481
		cmp	ax,3
		je	..@j19476
..@j19481:
		test	dx,dx
		jne	..@j19482
		cmp	ax,4
		je	..@j19477
..@j19482:
		jmp	..@j19474
..@j19475:
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j19473
..@j19476:
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j19473
..@j19477:
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+78]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j19473
..@j19474:
..@j19495:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j19495
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19473:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
