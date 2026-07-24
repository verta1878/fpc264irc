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
	GLOBAL DATEUTILS_$$_DATETIMETODOSDATETIME$TDATETIME$$LONGINT
DATEUTILS_$$_DATETIMETODOSDATETIME$TDATETIME$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,22
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
		mov	word [bp-4],-1980
		mov	word [bp-2],-1
		mov	ax,word [bp-6]
		and	ax,127
		mov	bx,0
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		add	dx,ax
		adc	cx,bx
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,4
..@j3305:
		shl	ax,1
		rcl	dx,1
		loop	..@j3305
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	cx,word [bp-8]
		mov	bx,0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,5
..@j3310:
		shl	ax,1
		rcl	dx,1
		loop	..@j3310
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	cx,word [bp-10]
		mov	bx,0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	dx,ax
		mov	ax,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-12]
		mov	ax,0
		mov	word [bp-22],dx
		mov	word [bp-20],ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		mov	cx,6
..@j3319:
		shl	ax,1
		rcl	dx,1
		loop	..@j3319
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		mov	cx,word [bp-14]
		mov	bx,0
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		mov	cx,5
..@j3324:
		shl	ax,1
		rcl	dx,1
		loop	..@j3324
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		mov	ax,word [bp-16]
		shr	ax,1
		mov	bx,0
		mov	dx,word [bp-22]
		mov	cx,word [bp-20]
		add	dx,ax
		adc	cx,bx
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		mov	dx,0
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
