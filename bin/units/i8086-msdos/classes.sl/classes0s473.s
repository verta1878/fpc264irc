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
	GLOBAL CLASSES$_$TTHREAD_$__$$_EXECUTEINTHREAD$TTHREADMETHOD$TNOTIFYEVENT$$TTHREAD
CLASSES$_$TTHREAD_$__$$_EXECUTEINTHREAD$TTHREADMETHOD$TNOTIFYEVENT$$TTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	ax,word VMT_$CLASSES_$$_TSIMPLETHREAD
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	CLASSES$_$TSIMPLETHREAD_$__$$_CREATE$TTHREADMETHOD$TNOTIFYEVENT$$TSIMPLETHREAD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSIMPLETHREAD_$__$$_CREATE$TTHREADMETHOD$TNOTIFYEVENT$$TSIMPLETHREAD
EXTERN	VMT_$CLASSES_$$_TSIMPLETHREAD
