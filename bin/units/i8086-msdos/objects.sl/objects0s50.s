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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_READ$formal$LONGINT
OBJECTS$_$TDOSSTREAM_$__$$_READ$formal$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		je	..@j830
		jmp	..@j831
..@j830:
		mov	bx,word [bp+10]
		mov	cx,word [bx+10]
		mov	bx,word [bx+12]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+10]
		cmp	dx,word [bx+8]
		jg	..@j832
		jl	..@j833
		cmp	ax,word [bx+6]
		ja	..@j832
		jmp	..@j833
		jmp	..@j833
..@j832:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j833:
		mov	bx,word [bp+10]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		je	..@j840
		jmp	..@j841
..@j840:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,103
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j841:
		mov	bx,word [bp+10]
		lea	ax,[bx+273]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$LONGINT$LONGINT
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j858
		jmp	..@j860
..@j860:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jne	..@j858
		cmp	dx,word [bp+4]
		jne	..@j858
		jmp	..@j859
		jmp	..@j859
..@j858:
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	word [bp-6],0
		jne	..@j863
		jmp	..@j864
..@j863:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j871
..@j864:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-3
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j871:
..@j859:
		mov	bx,word [bp+10]
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	word [bx+10],dx
		adc	word [bx+12],ax
..@j831:
		mov	bx,word [bp+10]
		cmp	word [bx+2],0
		jne	..@j878
		jmp	..@j879
..@j878:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j879:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$LONGINT$LONGINT
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
