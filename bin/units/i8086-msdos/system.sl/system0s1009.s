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
	GLOBAL SYSTEM_$$_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN
SYSTEM_$$_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		add	word [TC_$SYSTEM_$$_FILEHANDLECOUNT],10
		mov	ax,word [TC_$SYSTEM_$$_FILEHANDLECOUNT]
		mov	word [bp-20],ax
		mov	word [bp-22],26368
		lea	ax,[bp-22]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		jne	..@j20572
		jmp	..@j20573
..@j20572:
		mov	byte [bp-1],0
		sub	word [TC_$SYSTEM_$$_FILEHANDLECOUNT],10
		jmp	..@j20576
..@j20573:
		mov	byte [bp-1],1
..@j20576:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_MSDOS
EXTERN	TC_$SYSTEM_$$_FILEHANDLECOUNT
