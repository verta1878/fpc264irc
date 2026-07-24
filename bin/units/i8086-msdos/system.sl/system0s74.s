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
	GLOBAL fpc_help_destructor
fpc_help_destructor:
	GLOBAL FPC_HELP_DESTRUCTOR
FPC_HELP_DESTRUCTOR:
		push	bp
		mov	bp,sp
		cmp	word [bp+10],0
		je	..@j854
		jmp	..@j857
..@j857:
		cmp	word [bp+8],-1
		jne	..@j854
		jmp	..@j856
..@j856:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		cmp	word [bx],0
		je	..@j854
		jmp	..@j855
..@j854:
		jmp	..@j852
..@j855:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	bx,word [bx]
		cmp	word [bx],0
		je	..@j858
		jmp	..@j860
..@j860:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	si,word [bx]
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	bx,word [bx]
		mov	dx,word [si]
		mov	ax,word [bx+2]
		add	ax,dx
		test	ax,ax
		jne	..@j858
		jmp	..@j859
..@j858:
		mov	ax,210
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j859:
		mov	ax,word [bp+4]
		mov	bx,word [bp+10]
		add	bx,ax
		mov	word [bx],0
		push	word [bp+10]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j852:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_RUNERROR$WORD
