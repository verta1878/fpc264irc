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
	GLOBAL CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		cmp	ax,0
		stc
		je	..@j19450
		sub	ax,7
		cmp	ax,3
		jb	..@j19450
		cmp	ax,6
		stc
		je	..@j19450
		clc
..@j19450:
		jc	..@j19448
		jmp	..@j19449
..@j19448:
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		jmp	..@j19457
..@j19449:
..@j19458:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j19458
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19457:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
