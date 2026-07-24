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
	GLOBAL DATEUTILS_$$_UNIXTIMESTAMPTOMAC$INT64$$INT64
DATEUTILS_$$_UNIXTIMESTAMPTOMAC$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		add	bx,-20352
		adc	ax,31781
		adc	dx,0
		adc	cx,0
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
