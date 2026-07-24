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
	GLOBAL DATEUTILS_$$_DOSDATETIMETODATETIME$LONGINT$$TDATETIME
DATEUTILS_$$_DOSDATETIMETODATETIME$LONGINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,31
		mov	dx,0
		shl	ax,1
		rcl	dx,1
		mov	word [bp-20],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j3335:
		shr	dx,1
		rcr	ax,1
		loop	..@j3335
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,63
		mov	dx,0
		mov	word [bp-18],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,6
..@j3340:
		shr	dx,1
		rcr	ax,1
		loop	..@j3340
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,31
		mov	dx,0
		mov	word [bp-16],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j3345:
		shr	dx,1
		rcr	ax,1
		loop	..@j3345
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,31
		mov	dx,0
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j3350:
		shr	dx,1
		rcr	ax,1
		loop	..@j3350
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,15
		mov	dx,0
		mov	word [bp-12],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,4
..@j3355:
		shr	dx,1
		rcr	ax,1
		loop	..@j3355
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,1980
		adc	dx,0
		mov	word [bp-10],ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,0
		push	ax
		call	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
