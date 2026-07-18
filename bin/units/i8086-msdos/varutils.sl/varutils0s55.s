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
	GLOBAL VARUTILS_$$_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
VARUTILS_$$_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
		mov	word [bp-16],0
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
		jne	..@j2707
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j2711
		sub	ax,16384
		je	..@j2712
		jmp	..@j2710
..@j2711:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j2715
		sub	ax,2
		je	..@j2716
		dec	ax
		je	..@j2718
		dec	ax
		je	..@j2719
		dec	ax
		je	..@j2720
		dec	ax
		je	..@j2721
		dec	ax
		je	..@j2722
		dec	ax
		je	..@j2730
		sub	ax,3
		je	..@j2723
		dec	ax
		je	..@j2724
		sub	ax,4
		je	..@j2717
		dec	ax
		je	..@j2725
		dec	ax
		je	..@j2726
		dec	ax
		je	..@j2727
		dec	ax
		je	..@j2728
		dec	ax
		je	..@j2729
		sub	ax,235
		je	..@j2731
		sub	ax,2
		je	..@j2732
		jmp	..@j2714
..@j2715:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2716:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2717:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2718:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2719:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_FLOATTOSTR$SINGLE$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2720:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2721:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_FLOATTOSTR$CURRENCY$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2722:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		call	VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2723:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		or	ax,ax
		mov	al,0
		je	..@j2835
		inc	ax
..@j2835:
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2724:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2725:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		push	ax
		push	dx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2726:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2727:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	cx,word [bx+10]
		mov	ax,0
		mov	dx,0
		push	dx
		push	ax
		push	cx
		push	si
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2728:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2729:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2730:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2731:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2732:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_unicodestr_assign
		jmp	..@j2713
..@j2714:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,8
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2713:
		jmp	..@j2709
..@j2712:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j2926
		jmp	..@j2927
..@j2926:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j2929
		sub	ax,2
		je	..@j2930
		dec	ax
		je	..@j2932
		dec	ax
		je	..@j2933
		dec	ax
		je	..@j2934
		dec	ax
		je	..@j2935
		dec	ax
		je	..@j2936
		dec	ax
		je	..@j2944
		sub	ax,3
		je	..@j2937
		dec	ax
		je	..@j2938
		sub	ax,4
		je	..@j2931
		dec	ax
		je	..@j2939
		dec	ax
		je	..@j2940
		dec	ax
		je	..@j2941
		dec	ax
		je	..@j2942
		dec	ax
		je	..@j2943
		sub	ax,235
		je	..@j2945
		sub	ax,2
		je	..@j2946
		jmp	..@j2929
..@j2930:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2931:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2932:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2933:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_FLOATTOSTR$SINGLE$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2934:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2935:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_FLOATTOSTR$CURRENCY$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2936:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		call	VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2937:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		or	ax,ax
		mov	al,0
		je	..@j3045
		inc	ax
..@j3045:
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2938:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2939:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		push	ax
		push	dx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2940:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2941:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	bx,word [si]
		mov	ax,word [si+2]
		mov	dx,0
		mov	cx,0
		push	cx
		push	dx
		push	ax
		push	bx
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2942:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2943:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2944:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2945:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2946:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_unicodestr_assign
		jmp	..@j2928
..@j2929:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,8
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2928:
		jmp	..@j3136
..@j2927:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,8
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j3136:
		jmp	..@j2709
..@j2710:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,8
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2709:
..@j2707:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2708
		call	FPC_RERAISE
..@j2708:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
EXTERN	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
EXTERN	SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
EXTERN	VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOSTR$CURRENCY$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOSTR$SINGLE$$ANSISTRING
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	fpc_unicodestr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
