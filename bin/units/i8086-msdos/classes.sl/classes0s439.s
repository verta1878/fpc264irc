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
	GLOBAL CLASSES_$$_POPTHREADQUEUEHEAD$$TThread.PTHREADQUEUEENTRY
CLASSES_$$_POPTHREADQUEUEHEAD$$TThread.PTHREADQUEUEENTRY:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [U_$CLASSES_$$_THREADQUEUEHEAD]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j10023
		jmp	..@j10024
..@j10023:
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10027
		mov	ax,word [U_$CLASSES_$$_THREADQUEUEHEAD]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j10032
		jmp	..@j10033
..@j10032:
		mov	bx,word [U_$CLASSES_$$_THREADQUEUEHEAD]
		mov	ax,word [bx+10]
		mov	word [U_$CLASSES_$$_THREADQUEUEHEAD],ax
..@j10033:
		cmp	word [U_$CLASSES_$$_THREADQUEUEHEAD],0
		je	..@j10036
		jmp	..@j10037
..@j10036:
		mov	word [U_$CLASSES_$$_THREADQUEUETAIL],0
..@j10037:
..@j10027:
		call	FPC_POPADDRSTACK
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j10028
		call	FPC_RERAISE
..@j10028:
..@j10024:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$CLASSES_$$_THREADQUEUETAIL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_THREADQUEUELOCK
EXTERN	U_$CLASSES_$$_THREADQUEUEHEAD
