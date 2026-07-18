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
	GLOBAL DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	word [bp-28],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2879
		cmp	word [bp+8],-1
		jne	..@j2881
		jmp	..@j2882
..@j2881:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word _$DATEUTILS$_Ld23
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2889
		mov	bx,word [bx-2]
..@j2889:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-24],cx
		mov	word [bp-22],ax
		mov	word [bp-26],0
		mov	ax,word [bp+8]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],0
		lea	ax,[bp-26]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		jmp	..@j2892
..@j2882:
		mov	bx,word [bp+12]
		wait fldz
		wait fld	qword [bx+4]
		wait fcompp
		fstsw	[bp-16]
		mov	ah,byte [bp-15]
		sahf
		jp	..@j2895
		je	..@j2893
..@j2895:
		jmp	..@j2894
..@j2893:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		jmp	..@j2900
..@j2894:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-28]
		push	ax
		mov	ax,word _$DATEUTILS$_Ld23
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2911
		mov	bx,word [bx-2]
..@j2911:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-24],cx
		mov	word [bp-22],ax
		mov	word [bp-26],0
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-18],dx
		mov	word [bp-16],ax
		mov	word [bp-20],0
		lea	ax,[bp-26]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-28]
		call	fpc_ansistr_assign
..@j2900:
..@j2892:
..@j2879:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2880
		call	FPC_RERAISE
..@j2880:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	_$DATEUTILS$_Ld23
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
