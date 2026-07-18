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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_TRUNCATE
OBJECTS$_$TDOSSTREAM_$__$$_TRUNCATE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		je	..@j725
		jmp	..@j726
..@j725:
		mov	bx,word [bp+4]
		lea	ax,[bx+273]
		push	ax
		call	SYSTEM_$$_TRUNCATE$file
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j731
		jmp	..@j732
..@j731:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si+10]
		mov	word [bx+6],ax
		mov	ax,word [si+12]
		mov	word [bx+8],ax
		jmp	..@j735
..@j732:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j735:
..@j726:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_TRUNCATE$file
