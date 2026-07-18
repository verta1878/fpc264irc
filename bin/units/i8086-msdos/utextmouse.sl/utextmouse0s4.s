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
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEPOLL$TMOUSEEVENT$$BOOLEAN
UTEXTMOUSE_$$_TEXTMOUSEPOLL$TMOUSEEVENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],5
		mov	word [bx+6],0
		mov	bx,word [bp+4]
		mov	byte [bx+12],0
		mov	bx,word [bp+4]
		mov	byte [bx+13],0
		mov	bx,word [bp+4]
		mov	byte [bx+14],0
		cmp	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
		je	..@j50
		jmp	..@j51
..@j50:
		jmp	..@j36
..@j51:
		mov	word [bp-22],3
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-18]
		mov	cl,3
		shr	ax,cl
		inc	ax
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp-16]
		mov	cl,3
		shr	ax,cl
		inc	ax
		mov	bx,word [bp+4]
		mov	word [bx+10],ax
		mov	ax,word [bp-20]
		mov	word [bp-24],ax
		mov	ax,word [bp-24]
		cmp	ax,word [TC_$UTEXTMOUSE_$$_LASTBUTTONS]
		jne	..@j64
		jmp	..@j65
..@j64:
		mov	ax,word [bp-24]
		and	ax,1
		test	ax,ax
		jne	..@j66
		jmp	..@j67
..@j66:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	word [bx+6],0
		jmp	..@j72
..@j67:
		mov	ax,word [bp-24]
		and	ax,2
		test	ax,ax
		jne	..@j73
		jmp	..@j74
..@j73:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],2
		mov	word [bx+6],0
		jmp	..@j79
..@j74:
		mov	ax,word [bp-24]
		and	ax,4
		test	ax,ax
		jne	..@j80
		jmp	..@j81
..@j80:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],1
		mov	word [bx+6],0
		jmp	..@j86
..@j81:
		mov	bx,word [bp+4]
		mov	word [bx],2
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],5
		mov	word [bx+6],0
..@j86:
..@j79:
..@j72:
		mov	ax,word [bp-24]
		mov	word [TC_$UTEXTMOUSE_$$_LASTBUTTONS],ax
		mov	byte [bp-1],1
..@j65:
..@j36:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$UTEXTMOUSE_$$_LASTBUTTONS
EXTERN	FPC_INTR
EXTERN	TC_$UTEXTMOUSE_$$_MOUSEACTIVE
