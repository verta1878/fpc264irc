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
	GLOBAL CHARSET_$$_BUILDREVERSEMAP$PUNICODECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING
CHARSET_$$_BUILDREVERSEMAP$PUNICODECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jl	..@j166
		jg	..@j167
		cmp	dx,1
		jb	..@j166
		jmp	..@j167
..@j166:
		mov	word [bp-2],0
		jmp	..@j164
..@j167:
		mov	ax,word [bp+10]
		mov	word [bp-26],ax
		mov	ax,word [bp+6]
		mov	word [bp-16],ax
		mov	ax,word [bp+8]
		mov	word [bp-14],ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-12],0
		mov	word [bp-10],0
		jmp	..@j185
	ALIGN 2
..@j184:
		mov	bx,word [bp-26]
		cmp	byte [bx+2],0
		je	..@j187
		jmp	..@j188
..@j187:
		mov	si,word [bp-6]
		mov	bx,word [bp-26]
		mov	ax,word [bx]
		mov	word [si],ax
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		jl	..@j191
		jg	..@j192
		cmp	ax,255
		jbe	..@j191
		jmp	..@j192
..@j191:
		mov	bx,word [bp-6]
		mov	al,byte [bp-12]
		mov	byte [bx+2],al
		mov	bx,word [bp-6]
		mov	byte [bx+3],0
		jmp	..@j197
..@j192:
		mov	ax,0
		push	ax
		mov	ax,256
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		call	fpc_div_longint
		mov	bx,word [bp-6]
		mov	byte [bx+2],al
		mov	ax,word [bp-12]
		mov	word [bp-28],ax
		mov	bx,word [bp-10]
		mov	ax,word [bp-28]
		mov	dx,bx
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-30],ax
		mov	cx,dx
		mov	ax,word [bp-28]
		mov	dx,bx
		xor	ax,word [bp-30]
		xor	dx,cx
		sub	ax,word [bp-30]
		sbb	dx,cx
		mov	si,ax
		and	si,255
		mov	dx,0
		mov	di,word [bp-30]
		mov	ax,cx
		xor	di,si
		xor	ax,dx
		mov	dx,di
		sub	dx,word [bp-30]
		sbb	ax,cx
		mov	word [bp-30],dx
		mov	cx,ax
		mov	al,byte [bp-30]
		mov	bx,word [bp-6]
		mov	byte [bx+3],al
..@j197:
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		add	ax,1
		adc	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		add	word [bp-6],4
..@j188:
		add	word [bp-26],4
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		add	ax,1
		adc	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
..@j185:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [bp-14]
		jl	..@j184
		jg	..@j186
		cmp	ax,word [bp-16]
		jb	..@j184
		jmp	..@j186
		jmp	..@j186
..@j186:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		cmp	dx,word [bp-18]
		jne	..@j216
		cmp	ax,word [bp-20]
		jne	..@j216
		jmp	..@j217
		jmp	..@j217
..@j216:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
..@j217:
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		cmp	dx,0
		jg	..@j222
		jl	..@j223
		cmp	ax,1
		ja	..@j222
		jmp	..@j223
..@j222:
		push	word [bp-4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	CHARSET_$$_QUICKSORT$PREVERSECHARMAPPING$LONGINT$LONGINT
		push	word [bp-4]
		push	word [bp-18]
		push	word [bp-20]
		lea	ax,[bp-24]
		push	ax
		call	CHARSET_$$_REMOVEDUPLICATES$PREVERSECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING
		mov	word [bp-8],ax
		push	word [bp-4]
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-24]
		mov	word [bp-20],ax
		mov	ax,word [bp-22]
		mov	word [bp-18],ax
..@j223:
		mov	bx,word [bp+4]
		mov	ax,word [bp-20]
		mov	word [bx],ax
		mov	ax,word [bp-18]
		mov	word [bx+2],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j164:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	CHARSET_$$_REMOVEDUPLICATES$PREVERSECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING
EXTERN	CHARSET_$$_QUICKSORT$PREVERSECHARMAPPING$LONGINT$LONGINT
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	fpc_div_longint
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
