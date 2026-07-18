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
	GLOBAL SYSUTILS_$$_FLOATTODATETIME$EXTENDED$$TDATETIME
SYSUTILS_$$_FLOATTODATETIME$EXTENDED$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,16
		wait fld	qword [TC_$SYSUTILS_$$_MINDATETIME]
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j7163
		jb	..@j7160
..@j7163:
		jmp	..@j7162
..@j7162:
		wait fld	qword [TC_$SYSUTILS_$$_MAXDATETIME]
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j7164
		ja	..@j7160
..@j7164:
		jmp	..@j7161
..@j7160:
..@j7165:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDDATETIME+2]
		lea	ax,[bp+4]
		mov	word [bp-14],ax
		mov	word [bp-16],3
		lea	ax,[bp-16]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j7165
		push	ax
		push	bp
		call	fpc_raiseexception
..@j7161:
		wait fld	tword [bp+4]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDDATETIME
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	TC_$SYSUTILS_$$_MAXDATETIME
EXTERN	TC_$SYSUTILS_$$_MINDATETIME
