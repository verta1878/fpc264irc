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
	GLOBAL fpc_mul_dword
fpc_mul_dword:
	GLOBAL FPC_MUL_DWORD
FPC_MUL_DWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	cx,word [bp+10]
		mov	ax,word [bp+12]
		mov	di,word [bp+6]
		mov	si,word [bp+8]
		cmp	byte [bp+4],0
		jne	..@j174
		mul	di
		xchg	ax,si
		mul	cx
		add	si,ax
		mov	ax,di
		mul	cx
		add	dx,si
		jmp	..@j175
..@j174:
		test	ax,ax
		jz	..@j176
		test	si,si
		jnz	..@j175
		mul	di
		test	dx,dx
		jnz	..@j175
..@j176:
		xchg	ax,si
		mul	cx
		test	dx,dx
		jnz	..@j175
		add	si,ax
		jc	..@j175
		mov	ax,di
		mul	cx
		add	dx,si
		jc	..@j175
		mov	byte [bp+4],0
..@j175:
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	byte [bp+4],0
		jne	..@j177
		jmp	..@j178
..@j177:
		mov	ax,0
		push	ax
		mov	ax,215
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j178:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
