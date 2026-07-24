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
	GLOBAL VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,8192
		cmp	ax,8192
		je	..@j4326
		jmp	..@j4327
..@j4326:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_SAFEARRAYDESTROY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j4332
		cmp	ax,0
		jne	..@j4332
		jmp	..@j4333
..@j4332:
		jmp	..@j4324
..@j4333:
		jmp	..@j4334
..@j4327:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,16384
		test	ax,ax
		je	..@j4335
		jmp	..@j4336
..@j4335:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		sub	ax,7
		jbe	..@j4339
		dec	ax
		je	..@j4340
		dec	ax
		je	..@j4341
		sub	ax,1
		jb	..@j4338
		sub	ax,1
		jbe	..@j4339
		sub	ax,2
		je	..@j4341
		sub	ax,3
		jb	..@j4338
		sub	ax,3
		jbe	..@j4339
		sub	ax,1
		sub	ax,1
		jbe	..@j4339
		jmp	..@j4338
..@j4339:
		jmp	..@j4337
..@j4340:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		jmp	..@j4337
..@j4341:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		jmp	..@j4337
..@j4338:
		mov	word [bp-4],8
		mov	word [bp-2],-32766
		jmp	..@j4324
..@j4337:
..@j4336:
..@j4334:
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_VARIANTINIT$TVARDATA
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4324:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTINIT$TVARDATA
EXTERN	fpc_intf_assign
EXTERN	fpc_unicodestr_assign
EXTERN	VARUTILS_$$_SAFEARRAYDESTROY$PVARARRAY$$HRESULT
