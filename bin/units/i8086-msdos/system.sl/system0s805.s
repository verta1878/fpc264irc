BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL fpc_copy
fpc_copy:
	GLOBAL FPC_COPY
FPC_COPY:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-2],2
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		cmp	al,9
		jb	..@j17234
		sub	al,9
		je	..@j17235
		sub	al,2
		je	..@j17241
		dec	al
		je	..@j17237
		dec	al
		je	..@j17238
		dec	al
		je	..@j17240
		sub	al,2
		je	..@j17238
		sub	al,5
		je	..@j17239
		sub	al,3
		je	..@j17236
		jmp	..@j17234
..@j17235:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	FPC_ANSISTR_ASSIGN
		jmp	..@j17233
..@j17236:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	FPC_UNICODESTR_ASSIGN
		jmp	..@j17233
..@j17237:
		mov	ax,word [bp+4]
		add	ax,2
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-18],dx
		mov	ax,word [bp-18]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		je	..@j17260
		jmp	..@j17261
..@j17260:
		jmp	..@j17229
..@j17261:
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		mov	word [bp-16],ax
		mov	ax,word [bp-2]
		cwd
		idiv	word [bp-10]
		mov	word [bp-6],ax
		mov	word [bp-12],0
		mov	ax,word [bp-10]
		mov	word [bp-20],ax
		mov	word [bp-14],1
		mov	ax,word [bp-20]
		cmp	ax,word [bp-14]
		jl	..@j17271
		dec	word [bp-14]
	ALIGN 2
..@j17272:
		inc	word [bp-14]
		mov	dx,word [bp+8]
		mov	ax,word [bp-12]
		add	ax,dx
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp-12]
		add	ax,dx
		push	ax
		push	word [bp-16]
		call	FPC_COPY
		mov	ax,word [bp-6]
		add	word [bp-12],ax
		mov	ax,word [bp-20]
		cmp	ax,word [bp-14]
		jg	..@j17272
..@j17271:
		jmp	..@j17233
..@j17238:
		mov	ax,word [bp+4]
		add	ax,2
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-18],dx
		mov	ax,word [bp-18]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
		add	word [bp-4],8
		mov	word [bp-8],0
		mov	ax,word [bp-10]
		mov	word [bp-22],ax
		mov	word [bp-14],1
		mov	ax,word [bp-22]
		cmp	ax,word [bp-14]
		jl	..@j17294
		dec	word [bp-14]
	ALIGN 2
..@j17295:
		inc	word [bp-14]
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-16],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-12],ax
		add	word [bp-4],4
		mov	ax,word [bp-12]
		cmp	ax,word [bp-8]
		jg	..@j17300
		jmp	..@j17301
..@j17300:
		mov	dx,word [bp+8]
		mov	ax,word [bp-8]
		add	ax,dx
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp-8]
		add	ax,dx
		push	ax
		mov	ax,word [bp-12]
		mov	dx,word [bp-8]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j17301:
		mov	dx,word [bp+8]
		mov	ax,word [bp-12]
		add	ax,dx
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp-12]
		add	ax,dx
		push	ax
		push	word [bp-16]
		call	FPC_COPY
		mov	word [bp-6],ax
		mov	dx,word [bp-12]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	word [bp-8],ax
		mov	ax,word [bp-22]
		cmp	ax,word [bp-14]
		jg	..@j17295
..@j17294:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-8]
		jg	..@j17318
		jmp	..@j17319
..@j17318:
		mov	dx,word [bp+8]
		mov	ax,word [bp-8]
		add	ax,dx
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp-8]
		add	ax,dx
		push	ax
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j17319:
		jmp	..@j17233
..@j17239:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		push	word [bp+4]
		call	FPC_DYNARRAY_ASSIGN
		jmp	..@j17233
..@j17240:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	FPC_INTF_ASSIGN
		jmp	..@j17233
..@j17241:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [TC_$SYSTEM_$$_VARCOPYPROC]
		call	ax
		mov	word [bp-2],16
		jmp	..@j17233
..@j17234:
..@j17233:
..@j17229:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$SYSTEM_$$_VARCOPYPROC
EXTERN	FPC_INTF_ASSIGN
EXTERN	FPC_DYNARRAY_ASSIGN
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_UNICODESTR_ASSIGN
EXTERN	FPC_ANSISTR_ASSIGN
