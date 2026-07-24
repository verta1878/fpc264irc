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
	GLOBAL fpc_popobjectstack
fpc_popobjectstack:
	GLOBAL FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15614
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15615
..@j15614:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15615:
		mov	ax,word [bx]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j15616
		jmp	..@j15617
..@j15616:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j15620
..@j15617:
		mov	bx,word [bp-4]
		mov	dx,word [bx+6]
		mov	ax,word [bx+8]
		cmp	ax,0
		jne	..@j15622
		cmp	dx,0
		jne	..@j15622
		jmp	..@j15621
..@j15621:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j15625
..@j15622:
		mov	word [bp-2],0
..@j15625:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15630
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15631
..@j15630:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15631:
		mov	si,word [bp-4]
		mov	ax,word [si+4]
		mov	word [bx],ax
		mov	bx,word [bp-4]
		cmp	word [bx+14],0
		jne	..@j15632
		jmp	..@j15633
..@j15632:
		mov	bx,word [bp-4]
		push	word [bx+14]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j15633:
		push	word [bp-4]
		call	fpc_freemem
		mov	word [TC_$SYSTEM_$$_ERRORADDR],0
..@j15620:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_ERRORADDR
EXTERN	fpc_freemem
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
