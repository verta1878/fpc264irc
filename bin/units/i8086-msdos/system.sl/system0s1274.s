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
	GLOBAL SYSTEM_$$_CHECKLFN$$BOOLEAN
SYSTEM_$$_CHECKLFN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,56
		mov	ax,word _$SYSTEM$_Ld42
		mov	word [bp-24],ax
		mov	word [bp-22],29088
		mov	ax,ss
		mov	word [bp-6],ax
		lea	ax,[bp-56]
		mov	word [bp-10],ax
		mov	word [bp-18],32
		mov	ax,word [bp-24]
		mov	ax,ds
		mov	word [bp-8],ax
		mov	ax,word [bp-24]
		mov	word [bp-16],ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_MSDOS_CARRY
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		je	..@j26727
		jmp	..@j26726
..@j26727:
		mov	ax,word [bp-20]
		and	ax,16384
		cmp	ax,16384
		je	..@j26725
		jmp	..@j26726
..@j26725:
		mov	byte [bp-1],1
		jmp	..@j26728
..@j26726:
		mov	byte [bp-1],0
..@j26728:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_MSDOS_CARRY
EXTERN	_$SYSTEM$_Ld42
