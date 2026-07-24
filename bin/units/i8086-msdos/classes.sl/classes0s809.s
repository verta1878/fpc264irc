BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TREADER_$__$$_DEFINEBINARYPROPERTY$ANSISTRING$TSTREAMPROC$TSTREAMPROC$BOOLEAN
CLASSES$_$TREADER_$__$$_DEFINEBINARYPROPERTY$ANSISTRING$TSTREAMPROC$TSTREAMPROC$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	word [bp-28],0
		mov	word [bp-26],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18549
		cmp	word [bp-6],0
		jne	..@j18553
		jmp	..@j18552
..@j18553:
		lea	ax,[bp-26]
		push	ax
		push	word [bp+10]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-26]
		lea	ax,[bp-28]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx+55]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-28]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j18552
		cmp	cx,0
		jne	..@j18552
		jmp	..@j18551
..@j18551:
		mov	bx,word [bp+12]
		push	word [bx+9]
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,10
		jne	..@j18566
		jmp	..@j18567
..@j18566:
		mov	bx,word [bp+12]
		push	word [bx+9]
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+96]
		call	ax
		mov	bx,word [bp+12]
		mov	byte [bx+57],1
..@j18574:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18574
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j18587
..@j18567:
		mov	bx,word [bp+12]
		push	word [bx+9]
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j18587:
		mov	ax,word VMT_$CLASSES_$$_TMEMORYSTREAM
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-2],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-40]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18596
		mov	bx,word [bp+12]
		push	word [bx+9]
		push	word [bp-2]
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
		mov	bx,word [bp+12]
		mov	byte [bx+57],1
		push	word [bp-4]
		push	word [bp-2]
		mov	ax,word [bp-6]
		call	ax
..@j18596:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j18597
		call	FPC_RERAISE
..@j18597:
		mov	bx,word [bp+12]
		lea	ax,[bx+55]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j18552:
..@j18549:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18550
		call	FPC_RERAISE
..@j18550:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TMEMORYSTREAM
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
