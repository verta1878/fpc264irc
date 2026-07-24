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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETNAME$ANSISTRING
CLASSES$_$TCOMPONENT_$__$$_SETNAME$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp+4]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j12410
		cmp	cx,0
		jne	..@j12410
		jmp	..@j12409
..@j12409:
		jmp	..@j12407
..@j12410:
		cmp	word [bp+4],0
		jne	..@j12417
		jmp	..@j12416
..@j12417:
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_ISVALIDIDENT$ANSISTRING$BOOLEAN$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j12415
		jmp	..@j12416
..@j12415:
..@j12424:
		mov	ax,word VMT_$CLASSES_$$_ECOMPONENTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDNAME+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	word [bp-6],11
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j12424
		push	ax
		push	bp
		call	fpc_raiseexception
..@j12416:
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j12441
		jmp	..@j12442
..@j12441:
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+6]
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
		jmp	..@j12451
..@j12442:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
..@j12451:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_CHANGENAME$ANSISTRING
		push	word [bp+6]
		mov	ax,1
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN
..@j12407:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOMPONENT_$__$$_CHANGENAME$ANSISTRING
EXTERN	CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDNAME
EXTERN	VMT_$CLASSES_$$_ECOMPONENTERROR
EXTERN	SYSUTILS_$$_ISVALIDIDENT$ANSISTRING$BOOLEAN$BOOLEAN$$BOOLEAN
EXTERN	fpc_ansistr_compare_equal
