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
	GLOBAL SYSTEM_$$_INITHEAPTHREAD
SYSTEM_$$_INITHEAPTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [U_$SYSTEM_$$_HEAP_LOCK_USE],0
		jg	..@j19566
		jmp	..@j19567
..@j19566:
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		inc	word [U_$SYSTEM_$$_HEAP_LOCK_USE]
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
..@j19567:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19574
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19575
..@j19574:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19575:
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,96
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp-2]
		mov	ax,word [TC_$SYSTEM_$$_GROWHEAPSIZESMALL]
		mov	word [bx+76],ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_GROWHEAPSIZESMALL
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
EXTERN	U_$SYSTEM_$$_HEAP_LOCK_USE
