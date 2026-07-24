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
	GLOBAL TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO:
		push	bp
		mov	bp,sp
		sub	sp,272
		lea	ax,[bp-264]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		jmp	..@j340
	ALIGN 2
..@j339:
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	dl,byte [bx+6]
		mov	dh,0
		mov	bx,word [bp-4]
		lea	ax,[bx+6]
		add	ax,dx
		inc	ax
		mov	word [bp-268],ax
		mov	ax,word [bp-268]
		mov	word [bp-266],ax
		mov	bx,word [bp-266]
		lea	ax,[bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp-266]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-272],ax
		mov	word [bp-270],dx
		mov	word [bp-8],1
		mov	word [bp-6],0
		mov	ax,word [bp-270]
		cmp	ax,word [bp-6]
		jl	..@j357
		jg	..@j359
		mov	ax,word [bp-272]
		cmp	ax,word [bp-8]
		jb	..@j357
..@j359:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j358:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp-2]
		lea	ax,[bx+17]
		push	ax
		lea	ax,[bp-264]
		push	ax
		call	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
		test	ax,ax
		je	..@j360
		jmp	..@j361
..@j360:
		jmp	..@j331
..@j361:
		mov	bx,word [bp-2]
		lea	ax,[bx+17]
		mov	bx,word [bp-2]
		mov	dl,byte [bx+17]
		mov	dh,0
		add	dx,ax
		inc	dx
		mov	word [bp-268],dx
		mov	ax,word [bp-268]
		mov	word [bp-2],ax
		mov	ax,word [bp-270]
		cmp	ax,word [bp-6]
		jg	..@j358
		jl	..@j372
		mov	ax,word [bp-272]
		cmp	ax,word [bp-8]
		ja	..@j358
..@j372:
..@j357:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp+6],ax
..@j340:
		cmp	word [bp+6],0
		jne	..@j339
		jmp	..@j341
..@j341:
		mov	word [bp-2],0
..@j331:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	fpc_ansistr_to_shortstr
