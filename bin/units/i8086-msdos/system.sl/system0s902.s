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
	GLOBAL SYSTEM_$$_SYSGETMEM_FIXED$WORD$$POINTER
SYSTEM_$$_SYSGETMEM_FIXED$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+4]
		mov	cl,4
		shr	ax,cl
		mov	word [bp-10],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19067
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19068
..@j19067:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19068:
		mov	word [bp-12],ax
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j19071
		jmp	..@j19072
..@j19071:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	cl,12
		shr	ax,cl
		mov	dx,word [bp-4]
		sub	dx,ax
		mov	word [bp-8],dx
		mov	bx,word [bp-8]
		cmp	word [bx+8],0
		je	..@j19075
		jmp	..@j19076
..@j19075:
		mov	bx,word [bp-8]
		mov	ax,word [bx]
		or	ax,1
		mov	bx,word [bp-8]
		mov	word [bx],ax
		mov	bx,word [bp-12]
		sub	word [bx+68],1
		sbb	word [bx+70],0
..@j19076:
		jmp	..@j19079
..@j19072:
		push	word [bp-12]
		call	SYSTEM_$$_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN
		test	al,al
		jne	..@j19080
		jmp	..@j19081
..@j19080:
		push	word [bp+4]
		call	SYSTEM_$$_SYSGETMEM_FIXED$WORD$$POINTER
		mov	word [bp-2],ax
		jmp	..@j19061
		jmp	..@j19088
..@j19081:
		push	word [bp-12]
		push	word [bp-10]
		push	word [bp+4]
		call	SYSTEM_$$_ALLOC_OSCHUNK$PFREELISTS$WORD$WORD$$POINTER
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j19097
		jmp	..@j19098
..@j19097:
		mov	word [bp-2],0
		jmp	..@j19061
..@j19098:
		mov	ax,word [bp-4]
		sub	ax,14
		mov	word [bp-8],ax
..@j19088:
..@j19079:
		mov	ax,word [bp-4]
		add	ax,2
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-6]
		mov	word [bx+si],ax
		cmp	word [bp-6],0
		jne	..@j19109
		jmp	..@j19110
..@j19109:
		mov	bx,word [bp-6]
		mov	word [bx+4],0
..@j19110:
		mov	bx,word [bp-12]
		lea	bx,[bx+86]
		mov	ax,word [bp+4]
		add	word [bx+6],ax
		mov	ax,word [bx+6]
		cmp	ax,word [bx+2]
		ja	..@j19115
		jmp	..@j19116
..@j19115:
		mov	ax,word [bx+6]
		mov	word [bx+2],ax
..@j19116:
		mov	bx,word [bp-8]
		inc	word [bx+8]
..@j19061:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_ALLOC_OSCHUNK$PFREELISTS$WORD$WORD$$POINTER
EXTERN	SYSTEM_$$_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
