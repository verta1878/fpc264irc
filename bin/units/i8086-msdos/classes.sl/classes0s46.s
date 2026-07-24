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
	GLOBAL CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-8],0
		mov	word [bp-6],0
	ALIGN 2
..@j1000:
		push	word [bp+10]
		mov	ax,word [bp+8]
		mov	bx,ax
		mov	si,word [bp-8]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	word [bp-8],ax
		adc	word [bp-6],dx
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp+6]
		jne	..@j1011
		cmp	dx,word [bp+4]
		jne	..@j1011
		jmp	..@j1002
		jmp	..@j1011
..@j1011:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jl	..@j1002
		jg	..@j1000
		cmp	ax,0
		jbe	..@j1002
		jmp	..@j1000
..@j1002:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp+6]
		jl	..@j1012
		jg	..@j1013
		cmp	ax,word [bp+4]
		jb	..@j1012
		jmp	..@j1013
		jmp	..@j1013
..@j1012:
..@j1014:
		mov	ax,word VMT_$CLASSES_$$_EWRITEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SWRITEERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1014
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1013:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SWRITEERROR
EXTERN	VMT_$CLASSES_$$_EWRITEERROR
