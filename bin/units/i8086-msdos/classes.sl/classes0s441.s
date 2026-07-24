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
	GLOBAL CLASSES$_$TTHREAD_$__$$_GETCURRENTTHREAD$$TTHREAD
CLASSES$_$TTHREAD_$__$$_GETCURRENTTHREAD$$TTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j10124
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j10125
..@j10124:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j10125:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j10126
		jmp	..@j10127
..@j10126:
		mov	ax,word VMT_$CLASSES_$$_TEXTERNALTHREAD
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TEXTERNALTHREAD_$__$$_CREATE$$TEXTERNALTHREAD
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j10136
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j10137
..@j10136:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j10137:
		mov	ax,word [bp-2]
		mov	word [bx],ax
..@j10127:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	CLASSES$_$TEXTERNALTHREAD_$__$$_CREATE$$TEXTERNALTHREAD
EXTERN	VMT_$CLASSES_$$_TEXTERNALTHREAD
EXTERN	U_$CLASSES_$$_CURRENTTHREADVAR
EXTERN	FPC_THREADVAR_RELOCATE
