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
	GLOBAL CLASSES$_$TTHREAD_$__$$_EXECUTEINTHREAD$crcDB711CD4
CLASSES$_$TTHREAD_$__$$_EXECUTEINTHREAD$crcDB711CD4:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-14],ax
		mov	ax,word [bx+2]
		mov	word [bp-12],ax
		cmp	word [bp-10],0
		je	..@j10675
		jmp	..@j10676
..@j10675:
..@j10677:
		mov	ax,word VMT_$CLASSES_$$_ETHREAD
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRSTATUSCALLBACKREQUIRED+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10677
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10676:
		mov	ax,word VMT_$CLASSES_$$_TSIMPLESTATUSTHREAD
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_CREATE$crcBE33C1BB
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_CREATE$crcBE33C1BB
EXTERN	VMT_$CLASSES_$$_TSIMPLESTATUSTHREAD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRSTATUSCALLBACKREQUIRED
EXTERN	VMT_$CLASSES_$$_ETHREAD
