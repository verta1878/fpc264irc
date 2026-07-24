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
	GLOBAL CLASSES$_$TTHREAD_$__$$_EXECUTEINTHREAD$crcE789F2E9
CLASSES$_$TTHREAD_$__$$_EXECUTEINTHREAD$crcE789F2E9:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+8],0
		je	..@j10704
		jmp	..@j10705
..@j10704:
..@j10706:
		mov	ax,word VMT_$CLASSES_$$_ETHREAD
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRSTATUSCALLBACKREQUIRED+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10706
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10705:
		mov	ax,word VMT_$CLASSES_$$_TSIMPLESTATUSPROCTHREAD
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp+4]
		call	CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_CREATE$crc25F3FDF4
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_CREATE$crc25F3FDF4
EXTERN	VMT_$CLASSES_$$_TSIMPLESTATUSPROCTHREAD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRSTATUSCALLBACKREQUIRED
EXTERN	VMT_$CLASSES_$$_ETHREAD
