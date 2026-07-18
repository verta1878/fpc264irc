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
	GLOBAL SYSUTILS_$$_BCDTOINT$SMALLINT$$SMALLINT
SYSUTILS_$$_BCDTOINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	word [bp-2],0
		mov	word [bp-6],1
		mov	word [bp-4],0
		dec	word [bp-4]
	ALIGN 2
..@j8607:
		inc	word [bp-4]
		mov	ax,word [bp+4]
		and	ax,15
		mov	word [bp-8],ax
		cmp	word [bp-8],9
		jg	..@j8610
		jmp	..@j8611
..@j8610:
		cmp	word [bp-4],0
		je	..@j8612
		jmp	..@j8613
..@j8612:
		mov	ax,word [bp-8]
		cmp	ax,11
		je	..@j8616
		cmp	ax,13
		je	..@j8616
..@j8616:
		je	..@j8614
		jmp	..@j8615
..@j8614:
		mov	word [bp-6],-1
..@j8615:
		jmp	..@j8619
..@j8613:
..@j8620:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDBCD+2]
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-14],0
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j8620
		push	ax
		push	bp
		call	fpc_raiseexception
..@j8619:
		jmp	..@j8637
..@j8611:
		mov	ax,word [bp-8]
		mul	word [bp-6]
		mov	dx,word [bp-2]
		add	dx,ax
		mov	word [bp-2],dx
		mov	ax,10
		mul	word [bp-6]
		mov	word [bp-6],ax
..@j8637:
		mov	ax,word [bp+4]
		mov	cl,4
		shr	ax,cl
		mov	word [bp+4],ax
		cmp	word [bp-4],3
		jl	..@j8607
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDBCD
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
