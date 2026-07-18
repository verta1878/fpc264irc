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
	GLOBAL CLASSES_$$_FINDCLASS$ANSISTRING$$TPERSISTENTCLASS
CLASSES_$$_FINDCLASS$ANSISTRING$$TPERSISTENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		call	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j13797
		jmp	..@j13798
..@j13797:
..@j13799:
		mov	ax,word VMT_$CLASSES_$$_ECLASSNOTFOUND
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SCLASSNOTFOUND+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	word [bp-8],11
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j13799
		push	ax
		push	bp
		call	fpc_raiseexception
..@j13798:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SCLASSNOTFOUND
EXTERN	VMT_$CLASSES_$$_ECLASSNOTFOUND
EXTERN	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
