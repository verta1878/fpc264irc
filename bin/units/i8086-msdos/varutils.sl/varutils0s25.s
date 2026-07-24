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
	GLOBAL VARUTILS_$$_VARIANTTOSINGLE$TVARDATA$$SINGLE
VARUTILS_$$_VARIANTTOSINGLE$TVARDATA$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j957
		sub	ax,16384
		je	..@j958
		jmp	..@j956
..@j957:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j961
		sub	ax,2
		je	..@j962
		dec	ax
		je	..@j964
		dec	ax
		je	..@j965
		dec	ax
		je	..@j966
		dec	ax
		je	..@j967
		dec	ax
		je	..@j968
		dec	ax
		je	..@j976
		sub	ax,3
		je	..@j969
		dec	ax
		je	..@j970
		sub	ax,4
		je	..@j963
		dec	ax
		je	..@j971
		dec	ax
		je	..@j972
		dec	ax
		je	..@j973
		dec	ax
		je	..@j974
		dec	ax
		je	..@j975
		sub	ax,235
		je	..@j977
		sub	ax,2
		je	..@j978
		jmp	..@j960
..@j961:
		wait fldz
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j962:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j963:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j964:
		mov	bx,word [bp+4]
		wait fild	dword [bx+8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j965:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j959
..@j966:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j967:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fstp	dword [bp-8]
		DB	09bh
		wait fld	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j968:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j969:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j970:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOSINGLE$TVARDATA$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j971:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j972:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j973:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	word [bp-12],0
		mov	word [bp-10],0
		wait fild	qword [bp-16]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j974:
		mov	bx,word [bp+4]
		wait fild	qword [bx+8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j975:
		mov	bx,word [bp+4]
		test	byte [bx+15],128
		wait fild	qword [bx+8]
		je	..@j1013
		wait fadd	dword [_$VARUTILS$_Ld2]
..@j1013:
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j976:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOSINGLE$POINTER$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j977:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOSINGLE$POINTER$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j978:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOSINGLE$POINTER$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j959
..@j960:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,4
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j959:
		jmp	..@j955
..@j958:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j1030
		jmp	..@j1031
..@j1030:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j1033
		sub	ax,2
		je	..@j1034
		dec	ax
		je	..@j1036
		dec	ax
		je	..@j1037
		dec	ax
		je	..@j1038
		dec	ax
		je	..@j1039
		dec	ax
		je	..@j1040
		dec	ax
		je	..@j1048
		sub	ax,3
		je	..@j1041
		dec	ax
		je	..@j1042
		sub	ax,4
		je	..@j1035
		dec	ax
		je	..@j1043
		dec	ax
		je	..@j1044
		dec	ax
		je	..@j1045
		dec	ax
		je	..@j1046
		dec	ax
		je	..@j1047
		sub	ax,235
		je	..@j1049
		sub	ax,2
		je	..@j1050
		jmp	..@j1033
..@j1034:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1035:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1036:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1037:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j1032
..@j1038:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1039:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fstp	dword [bp-8]
		DB	09bh
		wait fld	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1040:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1041:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1042:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOSINGLE$TVARDATA$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1043:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1044:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1045:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-20],0
		mov	word [bp-18],0
		wait fild	qword [bp-24]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1046:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [bx]
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1047:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		test	byte [bx+7],128
		wait fild	qword [bx]
		je	..@j1083
		wait fadd	dword [_$VARUTILS$_Ld3]
..@j1083:
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1048:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOSINGLE$POINTER$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1049:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOSINGLE$POINTER$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1050:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOSINGLE$POINTER$$SINGLE
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j1032
..@j1033:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,4
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1032:
		jmp	..@j1100
..@j1031:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,4
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1100:
		jmp	..@j955
..@j956:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,4
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j955:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$VARUTILS$_Ld3
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOSINGLE$POINTER$$SINGLE
EXTERN	VARUTILS_$$_LSTRTOSINGLE$POINTER$$SINGLE
EXTERN	VARUTILS_$$_WSTRTOSINGLE$POINTER$$SINGLE
EXTERN	_$VARUTILS$_Ld2
EXTERN	_$VARUTILS$_Ld1
