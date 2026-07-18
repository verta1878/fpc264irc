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
	GLOBAL CLASSES$_$TSTREAM_$__$$_COPYFROM$TSTREAM$INT64$$INT64
CLASSES$_$TSTREAM_$__$$_COPYFROM$TSTREAM$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,44
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	cx,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jne	..@j1032
		cmp	cx,0
		jne	..@j1032
		cmp	ax,0
		jne	..@j1032
		cmp	bx,0
		jne	..@j1032
		jmp	..@j1031
..@j1031:
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
..@j1032:
		mov	word [bp-14],0
		mov	word [bp-12],2
		mov	cx,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jg	..@j1041
		jl	..@j1040
		cmp	bx,0
		ja	..@j1041
		jb	..@j1040
		cmp	dx,0
		ja	..@j1041
		jb	..@j1040
		cmp	cx,0
		ja	..@j1041
		jmp	..@j1040
..@j1041:
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	si,dx
		mov	ax,bx
		mov	cl,15
		sar	ax,cl
		mov	si,ax
		cmp	ax,word [bp+10]
		jg	..@j1039
		jl	..@j1040
		cmp	si,word [bp+8]
		ja	..@j1039
		jb	..@j1040
		cmp	bx,word [bp+6]
		ja	..@j1039
		jb	..@j1040
		cmp	dx,word [bp+4]
		ja	..@j1039
		jmp	..@j1040
		jmp	..@j1040
..@j1039:
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
..@j1040:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-14]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1048
		mov	bx,word [bp+4]
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jne	..@j1052
		cmp	ax,0
		jne	..@j1052
		cmp	cx,0
		jne	..@j1052
		cmp	bx,0
		jne	..@j1052
		jmp	..@j1051
..@j1051:
	ALIGN 2
..@j1053:
		push	word [bp+12]
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-12]
		push	word [bp-14]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		cmp	ax,0
		jg	..@j1064
		jl	..@j1065
		cmp	dx,0
		ja	..@j1064
		jmp	..@j1065
..@j1064:
		push	word [bp+14]
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-16]
		push	word [bp-18]
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j1065:
		mov	dx,word [bp-18]
		mov	bx,word [bp-16]
		mov	ax,dx
		mov	si,bx
		mov	cl,15
		sar	si,cl
		mov	ax,si
		mov	word [bp-44],dx
		mov	word [bp-36],bx
		mov	bx,ax
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		mov	di,word [bp-4]
		mov	cx,word [bp-2]
		add	dx,word [bp-44]
		adc	ax,word [bp-36]
		adc	di,bx
		adc	cx,si
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		mov	word [bp-4],di
		mov	word [bp-2],cx
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		jl	..@j1055
		jg	..@j1053
		cmp	dx,word [bp-14]
		jb	..@j1055
		jmp	..@j1053
		jmp	..@j1053
..@j1055:
		jmp	..@j1072
..@j1052:
		jmp	..@j1074
	ALIGN 2
..@j1073:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		mov	si,ax
		mov	bx,dx
		mov	cl,15
		sar	bx,cl
		mov	si,bx
		cmp	bx,word [bp+10]
		jl	..@j1076
		jg	..@j1077
		cmp	si,word [bp+8]
		jb	..@j1076
		ja	..@j1077
		cmp	dx,word [bp+6]
		jb	..@j1076
		ja	..@j1077
		cmp	ax,word [bp+4]
		jb	..@j1076
		jmp	..@j1077
		jmp	..@j1077
..@j1076:
		mov	ax,word [bp-14]
		mov	word [bp-18],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		jmp	..@j1080
..@j1077:
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		mov	ax,word [bp+6]
		mov	word [bp-16],ax
..@j1080:
		push	word [bp+12]
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-16]
		push	word [bp-18]
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		push	word [bp+14]
		mov	ax,word [bp-10]
		push	ax
		push	word [bp-16]
		push	word [bp-18]
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		mov	bx,word [bp-18]
		mov	ax,word [bp-16]
		mov	dx,bx
		mov	si,ax
		mov	cl,15
		sar	si,cl
		mov	dx,si
		mov	word [bp-42],bx
		mov	word [bp-34],ax
		mov	bx,dx
		mov	ax,si
		mov	si,word [bp+4]
		mov	di,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		sub	si,word [bp-42]
		sbb	di,word [bp-34]
		sbb	dx,bx
		sbb	cx,ax
		mov	word [bp+4],si
		mov	word [bp+6],di
		mov	word [bp+8],dx
		mov	word [bp+10],cx
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-40],ax
		mov	word [bp-38],dx
		mov	ax,si
		mov	si,word [bp-8]
		mov	di,word [bp-6]
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		add	si,word [bp-40]
		adc	di,word [bp-38]
		adc	dx,bx
		adc	cx,ax
		mov	word [bp-8],si
		mov	word [bp-6],di
		mov	word [bp-4],dx
		mov	word [bp-2],cx
..@j1074:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jg	..@j1073
		jl	..@j1075
		cmp	bx,0
		ja	..@j1073
		jb	..@j1075
		cmp	dx,0
		ja	..@j1073
		jb	..@j1075
		cmp	ax,0
		ja	..@j1073
		jmp	..@j1075
..@j1075:
..@j1072:
..@j1048:
		call	FPC_POPADDRSTACK
		push	word [bp-10]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		pop	ax
		test	ax,ax
		je	..@j1049
		call	FPC_RERAISE
..@j1049:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
