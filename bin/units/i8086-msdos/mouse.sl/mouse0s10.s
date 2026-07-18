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
	GLOBAL MOUSE_$$_POLLMOUSEEVENT$TMOUSEEVENT$$BOOLEAN
MOUSE_$$_POLLMOUSEEVENT$TMOUSEEVENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		cmp	byte [U_$MOUSE_$$_MOUSEPRESENT],0
		je	..@j123
		jmp	..@j124
..@j123:
		mov	byte [bp-1],0
		jmp	..@j121
..@j124:
		mov	word [bp-22],3
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-20]
		cmp	ax,word [U_$MOUSE_$$_LASTBUTTONS]
		mov	al,0
		je	..@j135
		inc	ax
..@j135:
		mov	byte [bp-1],al
		mov	ax,word [bp-18]
		mov	cl,3
		shr	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx+2],ax
		mov	ax,word [bp-16]
		mov	cl,3
		shr	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx+4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-20]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cmp	ax,word [U_$MOUSE_$$_LASTBUTTONS]
		jne	..@j142
		jmp	..@j143
..@j142:
		mov	bx,word [bp+4]
		mov	word [bx+6],1
		jmp	..@j146
..@j143:
		mov	bx,word [bp+4]
		mov	word [bx+6],4
..@j146:
..@j121:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	U_$MOUSE_$$_LASTBUTTONS
EXTERN	FPC_INTR
EXTERN	U_$MOUSE_$$_MOUSEPRESENT
