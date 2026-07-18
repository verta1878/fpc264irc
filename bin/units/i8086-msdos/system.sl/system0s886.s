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
	GLOBAL SYSTEM_$$_SYSGETHEAPSTATUS$$THEAPSTATUS
SYSTEM_$$_SYSGETHEAPSTATUS$$THEAPSTATUS:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j18504
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		mov	bx,ax
		jmp	..@j18505
..@j18504:
		mov	bx,word U_$SYSTEM_$$_FREELISTS+2
..@j18505:
		lea	ax,[bx+86]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	dx,0
		mov	bx,word [bp-2]
		mov	cx,word [bx+6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp-2]
		mov	word [bx+8],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+6]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+12],ax
		mov	word [bx+14],dx
		mov	bx,word [bp-2]
		mov	ax,word [bx+8]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx+16],ax
		mov	word [bx+18],dx
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	bx,word [bp+4]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	bx,word [bp+4]
		mov	word [bx+20],0
		mov	word [bx+22],0
		mov	bx,word [bp+4]
		mov	word [bx+24],0
		mov	word [bx+26],0
		mov	bx,word [bp+4]
		mov	word [bx+28],0
		mov	word [bx+30],0
		mov	bx,word [bp+4]
		mov	word [bx+32],0
		mov	word [bx+34],0
		mov	bx,word [bp+4]
		mov	word [bx+36],0
		mov	word [bx+38],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
