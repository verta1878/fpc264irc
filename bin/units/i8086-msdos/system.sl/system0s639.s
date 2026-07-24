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
	GLOBAL fpc_popsecondobjectstack
fpc_popsecondobjectstack:
	GLOBAL FPC_POPSECONDOBJECTSTACK
FPC_POPSECONDOBJECTSTACK:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15644
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15645
..@j15644:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15645:
		mov	ax,word [bx]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		je	..@j15646
		jmp	..@j15648
..@j15648:
		mov	bx,word [bp-6]
		cmp	word [bx+4],0
		je	..@j15646
		jmp	..@j15647
..@j15646:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j15651
..@j15647:
		mov	bx,word [bp-6]
		mov	bx,word [bx+4]
		mov	dx,word [bx+6]
		mov	ax,word [bx+8]
		cmp	ax,0
		jne	..@j15653
		cmp	dx,0
		jne	..@j15653
		jmp	..@j15652
..@j15652:
		mov	bx,word [bp-6]
		mov	bx,word [bx+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j15656
..@j15653:
		mov	word [bp-2],0
..@j15656:
		mov	bx,word [bp-6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	si,word [bp-6]
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		mov	word [si+4],ax
		mov	bx,word [bp-4]
		cmp	word [bx+14],0
		jne	..@j15663
		jmp	..@j15664
..@j15663:
		mov	bx,word [bp-4]
		push	word [bx+14]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j15664:
		push	word [bp-4]
		call	fpc_freemem
..@j15651:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_freemem
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
