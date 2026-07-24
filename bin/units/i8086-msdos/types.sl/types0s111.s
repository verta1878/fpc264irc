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
	GLOBAL TYPES$_$TRECTF_$__$$_UNION$TRECTF$$TRECTF
TYPES$_$TRECTF_$__$$_UNION$TRECTF$$TRECTF:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		wait fld	dword [bx]
		wait fld	dword [si]
		wait fcompp
		fstsw	[bp-6]
		mov	ah,byte [bp-5]
		sahf
		jp	..@j994
		jb	..@j992
..@j994:
		jmp	..@j993
..@j992:
		mov	ax,word [si]
		mov	word [bp-4],ax
		mov	ax,word [si+2]
		mov	word [bp-2],ax
		jmp	..@j997
..@j993:
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j997:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
		mov	ax,word [bx+6]
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp-14],ax
		mov	ax,word [bx+6]
		mov	word [bp-12],ax
		wait fld	dword [bp-10]
		wait fld	dword [bp-14]
		wait fcompp
		fstsw	[bp-6]
		mov	ah,byte [bp-5]
		sahf
		jp	..@j1008
		jb	..@j1006
..@j1008:
		jmp	..@j1007
..@j1006:
		mov	ax,word [bp-14]
		mov	word [bp-4],ax
		mov	ax,word [bp-12]
		mov	word [bp-2],ax
		jmp	..@j1011
..@j1007:
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		mov	ax,word [bp-8]
		mov	word [bp-2],ax
..@j1011:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	word [bp-8],ax
		mov	ax,word [bx+10]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-12],ax
		mov	ax,word [bx+10]
		mov	word [bp-10],ax
		wait fld	dword [bp-8]
		wait fld	dword [bp-12]
		wait fcompp
		fstsw	[bp-14]
		mov	ah,byte [bp-13]
		sahf
		jp	..@j1022
		jb	..@j1020
..@j1022:
		jmp	..@j1021
..@j1020:
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j1025
..@j1021:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j1025:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+8],ax
		mov	ax,word [bp-2]
		mov	word [bx+10],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+12]
		mov	word [bp-8],ax
		mov	ax,word [bx+14]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	word [bp-12],ax
		mov	ax,word [bx+14]
		mov	word [bp-10],ax
		wait fld	dword [bp-8]
		wait fld	dword [bp-12]
		wait fcompp
		fstsw	[bp-14]
		mov	ah,byte [bp-13]
		sahf
		jp	..@j1036
		jb	..@j1034
..@j1036:
		jmp	..@j1035
..@j1034:
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j1039
..@j1035:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j1039:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
		mov	sp,bp
		pop	bp
		ret	6
