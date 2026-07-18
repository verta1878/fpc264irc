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
	GLOBAL SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		cmp	word [bp+6],0
		jne	..@j14995
		jmp	..@j14994
..@j14995:
		cmp	word [bp+8],0
		jne	..@j14993
		jmp	..@j14994
..@j14993:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		test	ax,ax
		jne	..@j15004
		test	dx,dx
		je	..@j14998
..@j15004:
		test	ax,ax
		jne	..@j15005
		cmp	dx,1
		je	..@j15000
..@j15005:
		test	ax,ax
		jne	..@j15006
		cmp	dx,2
		je	..@j15002
..@j15006:
		test	ax,ax
		jne	..@j15007
		cmp	dx,3
		je	..@j14999
..@j15007:
		test	ax,ax
		jne	..@j15008
		cmp	dx,4
		je	..@j15001
..@j15008:
		test	ax,ax
		jne	..@j15009
		cmp	dx,5
		je	..@j15003
..@j15009:
		test	ax,ax
		jne	..@j15010
		cmp	dx,6
		je	..@j14999
..@j15010:
		jmp	..@j14997
..@j14998:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bp+8]
		add	ax,dx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j14996
..@j14999:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	bx,word [bp+8]
		add	bx,ax
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	word [si],ax
		jmp	..@j14996
..@j15000:
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		mov	ax,word [bx+4]
		mov	bx,word [si]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-6]
		call	ax
		jmp	..@j14996
..@j15001:
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		mov	ax,word [bx+4]
		mov	bx,word [si]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	ax,word [bp-6]
		call	ax
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j14996
..@j15002:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-6]
		call	ax
		jmp	..@j14996
..@j15003:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	ax,word [bp-6]
		call	ax
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j14996
..@j14997:
..@j14996:
..@j14994:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		mov	al,0
		je	..@j15041
		inc	ax
..@j15041:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
