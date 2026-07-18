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
	GLOBAL STRUTILS_$$_STRINGREPLACEBOYERMOORE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
STRUTILS_$$_STRINGREPLACEBOYERMOORE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j699
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j703
		mov	bx,word [bx-2]
..@j703:
		mov	word [bp-4],bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j706
		mov	bx,word [bx-2]
..@j706:
		mov	word [bp-6],bx
		cmp	word [bp+8],0
		je	..@j707
		jmp	..@j709
..@j709:
		mov	si,word [bp+8]
		test	si,si
		je	..@j710
		mov	si,word [si-2]
..@j710:
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j711
		mov	bx,word [bx-2]
..@j711:
		cmp	si,bx
		jg	..@j707
		jmp	..@j708
..@j707:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		jmp	..@j699
..@j708:
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,2
		test	ax,ax
		jne	..@j716
		jmp	..@j717
..@j716:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j724
		mov	bx,word [bx-2]
..@j724:
		push	bx
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j727
		mov	bx,word [bx-2]
..@j727:
		push	bx
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		call	fpc_dynarray_clear
		lea	ax,[bp-2]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,1
		test	ax,ax
		mov	al,0
		je	..@j732
		inc	ax
..@j732:
		push	ax
		call	STRUTILS_$$_FINDMATCHESBOYERMOORECASEINSENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
		jmp	..@j733
..@j717:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j740
		mov	bx,word [bx-2]
..@j740:
		push	bx
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j743
		mov	bx,word [bx-2]
..@j743:
		push	bx
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		call	fpc_dynarray_clear
		lea	ax,[bp-2]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,1
		test	ax,ax
		mov	al,0
		je	..@j748
		inc	ax
..@j748:
		push	ax
		call	STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
..@j733:
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j751
		mov	bx,word [bx-2]
		inc	bx
..@j751:
		mov	word [bp-8],bx
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp-8]
		mul	word [bp-4]
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j756
		mov	bx,word [bx-2]
..@j756:
		sub	bx,ax
		mov	ax,word [bp-8]
		mul	word [bp-6]
		add	ax,bx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	word [bp-10],1
		mov	word [bp-12],1
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-32],ax
		mov	word [bp-14],0
		mov	ax,word [bp-32]
		cmp	ax,word [bp-14]
		jl	..@j766
		dec	word [bp-14]
	ALIGN 2
..@j767:
		inc	word [bp-14]
		mov	bx,word [bp-2]
		mov	ax,word [bp-14]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		inc	ax
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	word [bp-16],ax
		cmp	word [bp-16],0
		jg	..@j770
		jmp	..@j771
..@j770:
		mov	bx,word [bp+10]
		mov	si,word [bp-10]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-12]
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-16]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-16]
		add	word [bp-12],ax
		mov	ax,word [bp-16]
		add	word [bp-10],ax
..@j771:
		cmp	word [bp-6],0
		jg	..@j780
		jmp	..@j781
..@j780:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-12]
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-6]
		add	word [bp-12],ax
..@j781:
		mov	ax,word [bp-4]
		add	word [bp-10],ax
		mov	ax,word [bp-32]
		cmp	ax,word [bp-14]
		jg	..@j767
..@j766:
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j792
		mov	bx,word [bx-2]
..@j792:
		cmp	bx,word [bp-12]
		jge	..@j790
		jmp	..@j791
..@j790:
		mov	bx,word [bp+10]
		mov	si,word [bp-10]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-12]
		lea	ax,[bx+si-1]
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j801
		mov	bx,word [bx-2]
..@j801:
		mov	ax,word [bp-12]
		sub	bx,ax
		inc	bx
		push	bx
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j791:
..@j699:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j700
		call	FPC_RERAISE
..@j700:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
EXTERN	STRUTILS_$$_FINDMATCHESBOYERMOORECASEINSENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
EXTERN	fpc_dynarray_clear
EXTERN	RTTI_$STRUTILS_$$_SIZEINTARRAY
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
