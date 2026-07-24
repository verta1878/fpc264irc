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
	GLOBAL SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [TC_$SYSTEM_$$_FREELIST]
		mov	word [bp-2],ax
		mov	word [bp-4],0
		jmp	..@j25984
	ALIGN 2
..@j25983:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		mov	word [bp-2],ax
..@j25984:
		mov	ax,word [bp-2]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jne	..@j25990
		jmp	..@j25985
..@j25990:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jb	..@j25983
		jmp	..@j25985
..@j25985:
		cmp	word [bp-4],0
		jne	..@j25993
		jmp	..@j25992
..@j25993:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		add	ax,dx
		cmp	ax,word [bp+6]
		je	..@j25991
		jmp	..@j25992
..@j25991:
		mov	ax,word [bp-4]
		mov	word [bp+6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	dx,word [bp-6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp+4],ax
		jmp	..@j26006
..@j25992:
		cmp	word [bp-4],0
		jne	..@j26007
		jmp	..@j26008
..@j26007:
		mov	bx,word [bp-4]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		jmp	..@j26011
..@j26008:
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26011:
..@j26006:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		cmp	ax,word [bp-2]
		je	..@j26014
		jmp	..@j26015
..@j26014:
		mov	ax,word [bp-2]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		je	..@j26016
		jmp	..@j26017
..@j26016:
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPPTR],ax
		jmp	..@j26020
..@j26017:
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		mov	word [si],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	dx,word [bp-8]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		mov	bx,word [bp+6]
		mov	word [bx+2],ax
..@j26020:
		jmp	..@j26033
..@j26015:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	ax,word [bp+4]
		mov	bx,word [bp+6]
		mov	word [bx+2],ax
..@j26033:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_FREELIST
