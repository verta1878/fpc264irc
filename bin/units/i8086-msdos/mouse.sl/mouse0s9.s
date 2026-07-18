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
	GLOBAL MOUSE_$$_GETMOUSEEVENT$TMOUSEEVENT
MOUSE_$$_GETMOUSEEVENT$TMOUSEEVENT:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+4]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		cmp	byte [U_$MOUSE_$$_MOUSEPRESENT],0
		je	..@j93
		jmp	..@j94
..@j93:
		jmp	..@j85
..@j94:
		mov	word [bp-20],3
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-16]
		mov	cl,3
		shr	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx+2],ax
		mov	ax,word [bp-14]
		mov	cl,3
		shr	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx+4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-18]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cmp	ax,word [U_$MOUSE_$$_LASTBUTTONS]
		jne	..@j107
		jmp	..@j108
..@j107:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cmp	ax,word [U_$MOUSE_$$_LASTBUTTONS]
		ja	..@j109
		jmp	..@j110
..@j109:
		mov	bx,word [bp+4]
		mov	word [bx+6],1
		jmp	..@j113
..@j110:
		mov	bx,word [bp+4]
		mov	word [bx+6],2
..@j113:
		jmp	..@j116
..@j108:
		mov	bx,word [bp+4]
		mov	word [bx+6],4
..@j116:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [U_$MOUSE_$$_LASTBUTTONS],ax
..@j85:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$MOUSE_$$_LASTBUTTONS
EXTERN	FPC_INTR
EXTERN	U_$MOUSE_$$_MOUSEPRESENT
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
