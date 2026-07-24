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
	GLOBAL fpc_dynarray_copy
fpc_dynarray_copy:
	GLOBAL FPC_DYNARR_COPY
FPC_DYNARR_COPY:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+8]
		call	FPC_DYNARRAY_CLEAR
		cmp	word [bp+10],0
		je	..@j14027
		jmp	..@j14028
..@j14027:
		jmp	..@j14021
..@j14028:
		mov	ax,word [bp+10]
		sub	ax,4
		mov	word [bp-2],ax
		cmp	word [bp+6],0
		jl	..@j14031
		jmp	..@j14032
..@j14031:
		cmp	word [bp+4],0
		jle	..@j14033
		jmp	..@j14034
..@j14033:
		jmp	..@j14021
..@j14034:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		add	ax,dx
		mov	word [bp+4],ax
		mov	word [bp+6],0
..@j14032:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	dx,word [bp+6]
		sub	ax,dx
		inc	ax
		cmp	ax,word [bp+4]
		jl	..@j14039
		jmp	..@j14040
..@j14039:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	dx,word [bp+6]
		sub	ax,dx
		inc	ax
		mov	word [bp+4],ax
..@j14040:
		cmp	word [bp+4],0
		jle	..@j14043
		jmp	..@j14044
..@j14043:
		jmp	..@j14021
..@j14044:
		mov	ax,word [bp+8]
		add	ax,2
		mov	bx,word [bp+8]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-12],dx
		mov	ax,word [bp-12]
		mov	word [bp+8],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-8],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		mov	ax,word [bp+4]
		mul	word [bp-8]
		mov	word [bp-6],ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp-6]
		add	ax,4
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	word [bx],1
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bx+2],ax
		mov	bx,word [bp+12]
		add	word [bx],4
		mov	ax,word [bp+6]
		mul	word [bp-8]
		mov	dx,word [bp+10]
		add	dx,ax
		push	dx
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,9
		cmp	ax,6
		jb	..@j14073
		cmp	ax,7
		stc
		je	..@j14073
		cmp	ax,12
		stc
		je	..@j14073
		cmp	ax,15
		stc
		je	..@j14073
		clc
..@j14073:
		jc	..@j14071
		jmp	..@j14072
..@j14071:
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-14],ax
		mov	word [bp-4],0
		mov	ax,word [bp-14]
		cmp	ax,word [bp-4]
		jl	..@j14077
		dec	word [bp-4]
	ALIGN 2
..@j14078:
		inc	word [bp-4]
		mov	ax,word [bp-4]
		mul	word [bp-8]
		mov	bx,word [bp+12]
		mov	dx,word [bx]
		add	dx,ax
		push	dx
		push	word [bp-10]
		call	FPC_ADDREF
		mov	ax,word [bp-14]
		cmp	ax,word [bp-4]
		jg	..@j14078
..@j14077:
..@j14072:
..@j14021:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_ADDREF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	FPC_DYNARRAY_CLEAR
