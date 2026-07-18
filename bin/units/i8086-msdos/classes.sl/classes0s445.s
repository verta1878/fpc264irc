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
	GLOBAL CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREAD$TTHREADMETHOD
CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREAD$TTHREADMETHOD:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		cmp	word [bp+6],0
		je	..@j10175
		jmp	..@j10177
..@j10177:
		cmp	word [bp-10],0
		je	..@j10175
		jmp	..@j10176
..@j10175:
		jmp	..@j10173
..@j10176:
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10180
		mov	word [bp-6],0
		mov	ax,word [U_$CLASSES_$$_THREADQUEUEHEAD]
		mov	word [bp-2],ax
		jmp	..@j10188
	ALIGN 2
..@j10187:
		cmp	word [bp+6],0
		jne	..@j10192
		jmp	..@j10191
..@j10192:
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jne	..@j10190
		jmp	..@j10191
..@j10190:
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j10188
..@j10191:
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		cmp	ax,word [bp-10]
		jne	..@j10197
		jmp	..@j10198
..@j10197:
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j10188
..@j10198:
		mov	bx,word [bp-2]
		cmp	word [bx+8],0
		jne	..@j10203
		jmp	..@j10204
..@j10203:
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j10188
..@j10204:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		cmp	word [bp-6],0
		jne	..@j10211
		jmp	..@j10212
..@j10211:
		mov	si,word [bp-6]
		mov	bx,word [bp-2]
		mov	ax,word [bx+10]
		mov	word [si+10],ax
..@j10212:
		mov	bx,word [bp-2]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		mov	ax,word [U_$CLASSES_$$_THREADQUEUEHEAD]
		cmp	ax,word [bp-4]
		je	..@j10217
		jmp	..@j10218
..@j10217:
		mov	ax,word [bp-2]
		mov	word [U_$CLASSES_$$_THREADQUEUEHEAD],ax
..@j10218:
		mov	ax,word [U_$CLASSES_$$_THREADQUEUETAIL]
		cmp	ax,word [bp-4]
		je	..@j10221
		jmp	..@j10222
..@j10221:
		mov	ax,word [bp-6]
		mov	word [U_$CLASSES_$$_THREADQUEUETAIL],ax
..@j10222:
		mov	bx,word [bp-4]
		cmp	word [bx+8],0
		je	..@j10225
		jmp	..@j10226
..@j10225:
		push	word [bp-4]
		call	fpc_freemem
..@j10226:
..@j10188:
		cmp	word [bp-2],0
		jne	..@j10187
		jmp	..@j10189
..@j10189:
..@j10180:
		call	FPC_POPADDRSTACK
		mov	ax,word U_$CLASSES_$$_THREADQUEUELOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		pop	ax
		test	ax,ax
		je	..@j10181
		call	FPC_RERAISE
..@j10181:
..@j10173:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_freemem
EXTERN	U_$CLASSES_$$_THREADQUEUETAIL
EXTERN	U_$CLASSES_$$_THREADQUEUEHEAD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$CLASSES_$$_THREADQUEUELOCK
