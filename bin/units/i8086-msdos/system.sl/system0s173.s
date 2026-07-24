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
	GLOBAL fpc_popcnt_qword
fpc_popcnt_qword:
	GLOBAL FPC_POPCNT_QWORD
FPC_POPCNT_QWORD:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_popcnt_dword
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	ax,word [bp+4]
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,32
..@j2270:
		shr	dx,1
		rcr	bx,1
		rcr	si,1
		rcr	ax,1
		loop	..@j2270
		mov	dx,ax
		mov	ax,si
		push	ax
		push	dx
		call	fpc_popcnt_dword
		add	ax,word [bp-12]
		adc	dx,word [bp-10]
		mov	bx,ax
		mov	cx,dx
		mov	bx,ax
		mov	cx,dx
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],bx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_popcnt_dword
