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
	GLOBAL fpc_popcnt_byte
fpc_popcnt_byte:
	GLOBAL FPC_POPCNT_BYTE
FPC_POPCNT_BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		and	bx,15
		mov	dl,byte [TC_$SYSTEM_$$_POPCNTDATA+bx]
		mov	dh,0
		mov	al,byte [bp+4]
		mov	ah,0
		mov	bx,ax
		and	bx,15
		mov	al,byte [TC_$SYSTEM_$$_POPCNTDATA+bx]
		mov	ah,0
		add	ax,dx
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_POPCNTDATA
