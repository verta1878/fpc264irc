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
	GLOBAL CLASSES$_$TSTREAM_$__$$_SEEK$LONGINT$WORD$$LONGINT
CLASSES$_$TSTREAM_$__$$_SEEK$LONGINT$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,278
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	word [bp-14],ax
		jmp	..@j771
	ALIGN 2
..@j770:
		mov	ax,word [bp-14]
		mov	word [bp-16],ax
		mov	bx,word [bp-16]
		mov	ax,word [bx+4]
		mov	word [bp-14],ax
..@j771:
		cmp	word [bp-14],0
		jne	..@j777
		jmp	..@j772
..@j777:
		mov	ax,word VMT_$CLASSES_$$_TSTREAM
		cmp	ax,word [bp-14]
		jne	..@j770
		jmp	..@j772
..@j772:
		cmp	word [bp-14],0
		jne	..@j778
		jmp	..@j779
..@j778:
		mov	si,word [bp+10]
		mov	bx,word [si]
		mov	ax,word [bx+70]
		mov	word [bp-8],ax
		mov	word [bp-6],si
		lea	si,[bp-14]
		mov	bx,word [si]
		mov	ax,word [bx+70]
		mov	word [bp-12],ax
		mov	word [bp-10],si
		mov	ax,word [bp-12]
		cmp	ax,word [bp-8]
		je	..@j784
		jmp	..@j785
..@j784:
		mov	dx,0
		mov	ax,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j785:
..@j779:
		cmp	word [bp-8],0
		jne	..@j788
		jmp	..@j789
..@j788:
		push	word [bp+10]
		mov	dx,word [bp+6]
		mov	si,word [bp+8]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		mov	ax,word [bp+4]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		jmp	..@j798
..@j789:
..@j799:
		mov	ax,word VMT_$CLASSES_$$_ESTREAMERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SSEEKNOTIMPLEMENTED+2]
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-278]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-278]
		mov	word [bp-20],ax
		mov	word [bp-22],4
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j799
		push	ax
		push	bp
		call	fpc_raiseexception
..@j798:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SSEEKNOTIMPLEMENTED
EXTERN	VMT_$CLASSES_$$_ESTREAMERROR
EXTERN	VMT_$CLASSES_$$_TSTREAM
