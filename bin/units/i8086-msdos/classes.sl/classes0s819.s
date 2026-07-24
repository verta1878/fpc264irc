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
	GLOBAL CLASSES$_$TREADER_$__$$_READBOOLEAN$$BOOLEAN
CLASSES$_$TREADER_$__$$_READBOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		cmp	word [bp-6],9
		je	..@j18843
		jmp	..@j18844
..@j18843:
		mov	byte [bp-1],1
		jmp	..@j18847
..@j18844:
		cmp	word [bp-6],8
		je	..@j18848
		jmp	..@j18849
..@j18848:
		mov	byte [bp-1],0
		jmp	..@j18852
..@j18849:
..@j18853:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18853
		push	ax
		push	bp
		call	fpc_raiseexception
..@j18852:
..@j18847:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
