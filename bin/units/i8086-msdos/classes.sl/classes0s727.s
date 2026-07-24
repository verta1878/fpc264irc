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
	GLOBAL CLASSES_$$_OBJECTBINARYTOTEXT$TSTREAM$TSTREAM$TOBJECTTEXTENCODING
CLASSES_$$_OBJECTBINARYTOTEXT$TSTREAM$TSTREAM$TOBJECTTEXTENCODING:
		push	bp
		mov	bp,sp
		push	word [bp+10]
		call	CLASSES$_$TSTREAM_$__$$_READDWORD$$LONGWORD
		mov	bx,word [TC_$CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_SIGNATURE]
		cmp	dx,word [bx+2]
		jne	..@j15548
		cmp	ax,word [bx]
		jne	..@j15548
		jmp	..@j15549
		jmp	..@j15549
..@j15548:
..@j15552:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$CLASSES$_Ld38
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j15552
		push	ax
		push	bp
		call	fpc_raiseexception
..@j15549:
		push	bp
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READOBJECT$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READOBJECT$ANSISTRING
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	_$CLASSES$_Ld38
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	TC_$CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_SIGNATURE
EXTERN	CLASSES$_$TSTREAM_$__$$_READDWORD$$LONGWORD
