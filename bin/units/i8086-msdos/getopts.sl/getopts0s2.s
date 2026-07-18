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
	GLOBAL GETOPTS_$$_EXCHANGE
GETOPTS_$$_EXCHANGE:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	word [bp-4],ax
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		mov	word [bp-2],ax
		mov	ax,word [U_$GETOPTS_$$_LAST_NONOPT]
		mov	word [bp-8],ax
		mov	ax,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		mov	word [bp-6],ax
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	word [bp-12],ax
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		mov	word [bp-10],ax
		jmp	..@j12
	ALIGN 2
..@j11:
		mov	di,word [bp-12]
		mov	si,word [bp-10]
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		sub	di,dx
		sbb	si,ax
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	bx,ax
		sbb	cx,dx
		cmp	si,cx
		jg	..@j14
		jl	..@j15
		cmp	di,bx
		ja	..@j14
		jmp	..@j15
..@j14:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		mov	word [bp-16],1
		mov	word [bp-14],0
		mov	ax,word [bp-32]
		cmp	ax,word [bp-14]
		jl	..@j21
		jg	..@j23
		mov	ax,word [bp-34]
		cmp	ax,word [bp-16]
		jb	..@j21
..@j23:
		sub	word [bp-16],1
		sbb	word [bp-14],0
	ALIGN 2
..@j22:
		add	word [bp-16],1
		adc	word [bp-14],0
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	cx,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	di,ax
		mov	ax,dx
		add	di,cx
		adc	ax,si
		mov	ax,di
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-22],ax
		mov	ax,word [U_$SYSTEM_$$_ARGV]
		mov	word [bp-26],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	si,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,ax
		mov	di,dx
		sub	cx,si
		sbb	di,bx
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		mov	bx,ax
		mov	si,dx
		sub	bx,cx
		sbb	si,di
		mov	ax,word [bp-16]
		mov	cx,word [bp-14]
		mov	dx,ax
		mov	ax,cx
		add	dx,bx
		adc	ax,si
		mov	ax,dx
		mov	di,ax
		shl	di,1
		mov	ax,word [U_$SYSTEM_$$_ARGV]
		mov	word [bp-36],ax
		mov	cx,word [bp-4]
		mov	dx,word [bp-2]
		mov	ax,word [bp-16]
		mov	bx,word [bp-14]
		mov	si,ax
		mov	ax,bx
		add	si,cx
		adc	ax,dx
		mov	ax,si
		mov	si,ax
		shl	si,1
		mov	bx,word [bp-26]
		mov	ax,word [bx+di]
		mov	bx,word [bp-36]
		mov	word [bx+si],ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	ax,word [bp-8]
		mov	di,word [bp-6]
		mov	si,word [bp-4]
		mov	cx,word [bp-2]
		mov	dx,ax
		sub	dx,si
		sbb	di,cx
		mov	ax,word [bp-12]
		mov	si,word [bp-10]
		mov	cx,ax
		sub	cx,dx
		sbb	si,di
		mov	ax,word [bp-16]
		mov	di,word [bp-14]
		mov	dx,ax
		mov	ax,di
		add	dx,cx
		adc	ax,si
		mov	ax,dx
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-22]
		mov	word [bx+si],ax
		mov	ax,word [bp-32]
		cmp	ax,word [bp-14]
		jg	..@j22
		jl	..@j30
		mov	ax,word [bp-34]
		cmp	ax,word [bp-16]
		ja	..@j22
..@j30:
..@j21:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		mov	bx,word [bp-20]
		mov	cx,word [bp-18]
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		jmp	..@j33
..@j15:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-16],0
		mov	word [bp-14],0
		mov	ax,word [bp-28]
		cmp	ax,word [bp-14]
		jl	..@j39
		jg	..@j41
		mov	ax,word [bp-30]
		cmp	ax,word [bp-16]
		jb	..@j39
..@j41:
		sub	word [bp-16],1
		sbb	word [bp-14],0
	ALIGN 2
..@j40:
		add	word [bp-16],1
		adc	word [bp-14],0
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	cx,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,word [bp-16]
		mov	di,word [bp-14]
		mov	dx,ax
		mov	ax,di
		add	dx,cx
		adc	ax,si
		mov	ax,dx
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-22],ax
		mov	ax,word [U_$SYSTEM_$$_ARGV]
		mov	word [bp-24],ax
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,word [bp-16]
		mov	cx,word [bp-14]
		mov	dx,ax
		mov	ax,cx
		add	dx,bx
		adc	ax,si
		mov	ax,dx
		mov	di,ax
		shl	di,1
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	si,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-16]
		mov	ax,word [bp-14]
		add	cx,si
		adc	ax,dx
		mov	ax,cx
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	bx,word [bp-24]
		mov	word [bx+di],ax
		mov	bx,word [U_$SYSTEM_$$_ARGV]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	ax,word [bp-16]
		mov	si,word [bp-14]
		mov	di,ax
		mov	ax,si
		add	di,dx
		adc	ax,cx
		mov	ax,di
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-22]
		mov	word [bx+si],ax
		mov	ax,word [bp-28]
		cmp	ax,word [bp-14]
		jg	..@j40
		jl	..@j48
		mov	ax,word [bp-30]
		cmp	ax,word [bp-16]
		ja	..@j40
..@j48:
..@j39:
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j33:
..@j12:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,word [bp-6]
		jg	..@j51
		jl	..@j13
		cmp	ax,word [bp-8]
		ja	..@j51
		jmp	..@j13
		jmp	..@j13
..@j51:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j11
		jl	..@j13
		cmp	dx,word [bp-4]
		ja	..@j11
		jmp	..@j13
		jmp	..@j13
..@j13:
		mov	ax,word [U_$GETOPTS_$$_FIRST_NONOPT]
		mov	dx,word [U_$GETOPTS_$$_FIRST_NONOPT+2]
		mov	bx,word [U_$GETOPTS_$$_OPTIND]
		mov	cx,word [U_$GETOPTS_$$_OPTIND+2]
		add	bx,ax
		adc	cx,dx
		mov	ax,word [U_$GETOPTS_$$_LAST_NONOPT]
		mov	dx,word [U_$GETOPTS_$$_LAST_NONOPT+2]
		sub	bx,ax
		sbb	cx,dx
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT],bx
		mov	word [U_$GETOPTS_$$_FIRST_NONOPT+2],cx
		mov	ax,word [U_$GETOPTS_$$_OPTIND]
		mov	word [U_$GETOPTS_$$_LAST_NONOPT],ax
		mov	ax,word [U_$GETOPTS_$$_OPTIND+2]
		mov	word [U_$GETOPTS_$$_LAST_NONOPT+2],ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_ARGV
EXTERN	U_$GETOPTS_$$_OPTIND
EXTERN	U_$GETOPTS_$$_LAST_NONOPT
EXTERN	U_$GETOPTS_$$_FIRST_NONOPT
