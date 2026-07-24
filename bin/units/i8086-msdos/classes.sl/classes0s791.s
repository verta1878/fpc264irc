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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READSIGNATURE
CLASSES$_$TBINARYOBJECTREADER_$__$$_READSIGNATURE:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	dx,word [TC_$CLASSES_$$_FILERSIGNATURE]
		mov	ax,word [TC_$CLASSES_$$_FILERSIGNATURE+2]
		cmp	ax,word [bp-2]
		jne	..@j17993
		cmp	dx,word [bp-4]
		jne	..@j17993
		jmp	..@j17994
		jmp	..@j17994
..@j17993:
..@j17995:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j17995
		push	ax
		push	bp
		call	fpc_raiseexception
..@j17994:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	TC_$CLASSES_$$_FILERSIGNATURE
