BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES_$$_UTF8TOORD$POINTER$$LONGWORD
CLASSES_$$_UTF8TOORD$POINTER$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	dx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+4]
		inc	word [bx]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	ax,128
		mov	dx,0
		cmp	dx,0
		jne	..@j15488
		cmp	ax,0
		jne	..@j15488
		jmp	..@j15489
..@j15488:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	ax,224
		mov	dx,0
		cmp	dx,0
		jne	..@j15491
		cmp	ax,192
		jne	..@j15491
		jmp	..@j15490
..@j15490:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,63
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	dx,word [bp-4]
		mov	si,word [bp-2]
		and	dx,31
		mov	si,0
		mov	cx,6
..@j15494:
		shl	dx,1
		rcl	si,1
		loop	..@j15494
		or	dx,bx
		or	si,ax
		mov	word [bp-4],dx
		mov	word [bp-2],si
		mov	bx,word [bp+4]
		inc	word [bx]
		jmp	..@j15495
..@j15491:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	ax,240
		mov	dx,0
		cmp	dx,0
		jne	..@j15497
		cmp	ax,224
		jne	..@j15497
		jmp	..@j15496
..@j15496:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,63
		mov	cl,6
		shl	ax,cl
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	si,word [bp-4]
		mov	dx,word [bp-2]
		and	si,31
		mov	dx,0
		mov	cx,12
..@j15500:
		shl	si,1
		rcl	dx,1
		loop	..@j15500
		mov	cx,dx
		or	si,bx
		or	cx,ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx+1]
		mov	ah,0
		and	ax,63
		cwd
		mov	bx,ax
		mov	ax,dx
		or	bx,si
		or	ax,cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		add	word [bx],2
		jmp	..@j15501
..@j15497:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,63
		mov	cl,12
		shl	ax,cl
		cwd
		mov	di,ax
		mov	ax,dx
		mov	bx,word [bp-4]
		mov	dx,word [bp-2]
		and	bx,31
		mov	dx,0
		mov	dx,bx
		mov	bx,0
		mov	cl,2
		shl	dx,cl
		mov	si,dx
		or	bx,di
		or	si,ax
		mov	di,word [bp+4]
		mov	di,word [di]
		mov	al,byte [di+1]
		mov	ah,0
		and	ax,63
		mov	cl,6
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	di,dx
		or	cx,bx
		or	di,si
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	al,byte [bx+2]
		mov	ah,0
		and	ax,63
		cwd
		mov	bx,ax
		mov	ax,dx
		or	bx,cx
		or	ax,di
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		add	word [bx],3
..@j15501:
..@j15495:
..@j15489:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
