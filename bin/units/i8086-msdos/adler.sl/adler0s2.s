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
	GLOBAL ADLER_$$_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
ADLER_$$_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		mov	ax,dx
		mov	dx,0
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		cmp	word [bp+8],0
		je	..@j9
		jmp	..@j10
..@j9:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j3
..@j10:
		jmp	..@j14
	ALIGN 2
..@j13:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jb	..@j16
		ja	..@j17
		cmp	ax,3854
		jb	..@j16
		jmp	..@j17
..@j16:
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		jmp	..@j20
..@j17:
		mov	word [bp-14],3854
..@j20:
		mov	ax,word [bp-14]
		cwd
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
		jmp	..@j24
	ALIGN 2
..@j23:
		mov	bx,word [bp+8]
		mov	dx,0
		mov	al,byte [bx]
		mov	ah,0
		add	word [bp-8],ax
		adc	word [bp-6],dx
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		add	word [bp-12],dx
		adc	word [bp-10],ax
		inc	word [bp+8]
		dec	word [bp-14]
..@j24:
		cmp	word [bp-14],0
		jg	..@j23
		jmp	..@j25
..@j25:
		mov	ax,0
		push	ax
		mov	ax,-15
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		call	fpc_mod_dword
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,0
		push	ax
		mov	ax,-15
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		call	fpc_mod_dword
		mov	word [bp-12],ax
		mov	word [bp-10],dx
..@j14:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		ja	..@j13
		jb	..@j15
		cmp	dx,0
		ja	..@j13
		jmp	..@j15
..@j15:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		mov	dx,ax
		mov	ax,0
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		or	cx,ax
		or	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
..@j3:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
; End asmlist al_procedures

EXTERN	fpc_mod_dword
