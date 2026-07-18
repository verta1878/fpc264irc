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
	GLOBAL SYSTEM_$$_DONETHREAD
SYSTEM_$$_DONETHREAD:
		push	bp
		mov	bp,sp
		cmp	word [U_$SYSTEM_$$_WIDESTRINGMANAGER+36],0
		jne	..@j19700
		jmp	..@j19701
..@j19700:
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+36]
		call	ax
..@j19701:
		call	SYSTEM_$$_FINALIZEHEAP
		cmp	word [TC_$SYSTEM_$$_MEMORYMANAGER+15],0
		jne	..@j19702
		jmp	..@j19703
..@j19702:
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+15]
		call	ax
..@j19703:
		call	SYSTEM_$$_SYSFLUSHSTDIO
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19706
		push	word [U_$SYSTEM_$$_THREADID+2]
		push	word [U_$SYSTEM_$$_THREADID]
		call	ax
		mov	bx,ax
		jmp	..@j19707
..@j19706:
		mov	bx,word U_$SYSTEM_$$_THREADID+2
..@j19707:
		mov	word [bx],0
		cmp	word [U_$SYSTEM_$$_CURRENTTM+42],0
		jne	..@j19708
		jmp	..@j19709
..@j19708:
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+42]
		call	ax
..@j19709:
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_CURRENTTM
EXTERN	U_$SYSTEM_$$_THREADID
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_SYSFLUSHSTDIO
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
EXTERN	SYSTEM_$$_FINALIZEHEAP
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
