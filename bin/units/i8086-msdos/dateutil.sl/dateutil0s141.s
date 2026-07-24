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
	GLOBAL DATEUTILS_$$_ENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_$$_ENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,32
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	DATEUTILS_$$_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j2185
		jmp	..@j2186
..@j2185:
..@j2197:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SERRINVALIDHOURMINUTESECMSEC+2]
		mov	ax,word [bp+10]
		mov	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-32],0
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-26],0
		mov	ax,word [bp+6]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],0
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-14],0
		lea	ax,[bp-32]
		push	ax
		mov	ax,3
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2197
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2186:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SERRINVALIDHOURMINUTESECMSEC
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	DATEUTILS_$$_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
