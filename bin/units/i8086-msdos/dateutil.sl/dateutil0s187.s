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
	GLOBAL DATEUTILS_$$_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$SMALLINT$$TDATETIME
DATEUTILS_$$_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$SMALLINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	byte [bp-27],0
		mov	word [bp-14],0
		mov	word [bp-16],0
		mov	word [bp-18],0
		wait fldz
		wait fstp	qword [bp-26]
		DB	09bh
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j3419
		mov	bx,word [bx-2]
..@j3419:
		mov	word [bp-10],bx
		mov	ax,word [bp+4]
		mov	word [bp-12],ax
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j3424
		mov	bx,word [bx-2]
..@j3424:
		mov	word [bp-30],bx
		push	bp
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-30]
		mov	ax,0
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-26]
		cld
		mov	cx,4
		rep
		movsw
		cmp	word [bp-14],0
		jg	..@j3438
		jmp	..@j3436
..@j3438:
		cmp	word [bp-16],0
		jg	..@j3437
		jmp	..@j3436
..@j3437:
		cmp	word [bp-18],0
		jg	..@j3435
		jmp	..@j3436
..@j3435:
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
		wait fadd	qword [bp-8]
		wait fstp	qword [bp-8]
		DB	09bh
..@j3436:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
