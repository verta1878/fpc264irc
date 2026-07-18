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
	GLOBAL TYPINFO_$$_GETENUMNAMECOUNT$PTYPEINFO$$SMALLINT
TYPINFO_$$_GETENUMNAMECOUNT$PTYPEINFO$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		cmp	byte [bx],18
		je	..@j111
		jmp	..@j112
..@j111:
		mov	word [bp-2],2
		jmp	..@j115
..@j112:
		mov	word [bp-8],0
		mov	word [bp-2],0
		mov	bx,word [bp-6]
		lea	ax,[bx+11]
		mov	word [bp-4],ax
		jmp	..@j123
	ALIGN 2
..@j122:
		mov	bx,word [bp-4]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp-4]
		add	ax,dx
		inc	ax
		mov	word [bp-4],ax
		inc	word [bp-8]
..@j123:
		mov	bx,word [bp-4]
		cmp	byte [bx],0
		jne	..@j122
		jmp	..@j124
..@j124:
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-2],ax
..@j115:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
