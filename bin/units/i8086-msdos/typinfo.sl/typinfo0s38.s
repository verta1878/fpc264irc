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
	GLOBAL TYPINFO_$$_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING
TYPINFO_$$_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	word [bp+6],0
		jne	..@j1062
		jmp	..@j1063
..@j1062:
		mov	bx,word [bp+6]
		push	word [bx]
		push	word [bp+4]
		call	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jl	..@j1070
		jg	..@j1071
		cmp	dx,0
		jb	..@j1070
		jmp	..@j1071
..@j1070:
..@j1072:
		mov	ax,word VMT_$TYPINFO_$$_EPROPERTYERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRUNKNOWNENUMVALUE+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		mov	word [bp-10],11
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j1072
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1071:
		push	word [bp+8]
		push	word [bp+6]
		mov	dx,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
..@j1063:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRUNKNOWNENUMVALUE
EXTERN	VMT_$TYPINFO_$$_EPROPERTYERROR
EXTERN	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
