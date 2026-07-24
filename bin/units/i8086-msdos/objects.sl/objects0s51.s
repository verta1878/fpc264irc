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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_WRITE$formal$LONGINT
OBJECTS$_$TDOSSTREAM_$__$$_WRITE$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		jne	..@j888
		jmp	..@j889
..@j888:
		jmp	..@j886
..@j889:
		mov	bx,word [bp+10]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		je	..@j890
		jmp	..@j891
..@j890:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,103
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j891:
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j908
		jmp	..@j910
..@j910:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp+6]
		jne	..@j908
		cmp	ax,word [bp+4]
		jne	..@j908
		jmp	..@j909
		jmp	..@j909
..@j908:
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	word [bp-6],0
		jne	..@j913
		jmp	..@j914
..@j913:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-4
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j921
..@j914:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j921:
..@j909:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	word [bx+10],ax
		adc	word [bx+12],dx
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+10]
		mov	ax,word [si+12]
		cmp	ax,word [bx+8]
		jg	..@j928
		jl	..@j929
		cmp	dx,word [bx+6]
		ja	..@j928
		jmp	..@j929
		jmp	..@j929
..@j928:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [si+10]
		mov	word [bx+6],ax
		mov	ax,word [si+12]
		mov	word [bx+8],ax
..@j929:
..@j886:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_BLOCKWRITE$file$formal$LONGINT$LONGINT
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
