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
	GLOBAL CLASSES$_$TREADER_$__$$_CHECKVALUE$TVALUETYPE
CLASSES$_$TREADER_$__$$_CHECKVALUE$TVALUETYPE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,word [bp+4]
		jne	..@j18498
		jmp	..@j18499
..@j18498:
..@j18502:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18502
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j18515
..@j18499:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j18515:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
