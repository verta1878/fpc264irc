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
	GLOBAL TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		mov	ax,word [bp+4]
		add	ax,2
		add	ax,dx
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
