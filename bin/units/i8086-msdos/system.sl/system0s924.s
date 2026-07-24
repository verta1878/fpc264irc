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
	GLOBAL SYSTEM_$$_INITTHREAD$WORD
SYSTEM_$$_INITTHREAD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		call	SYSTEM_$$_SYSRESETFPU
		call	SYSTEM_$$_SYSINITFPU
		call	SYSTEM_$$_INITHEAPTHREAD
		cmp	word [TC_$SYSTEM_$$_MEMORYMANAGER+13],0
		jne	..@j19674
		jmp	..@j19675
..@j19674:
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+13]
		call	ax
..@j19675:
		cmp	word [U_$SYSTEM_$$_WIDESTRINGMANAGER+34],0
		jne	..@j19676
		jmp	..@j19677
..@j19676:
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+34]
		call	ax
..@j19677:
		call	SYSTEM_$$_SYSINITEXCEPTIONS
		call	SYSTEM_$$_SYSINITSTDIO
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19680
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j19681
..@j19680:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j19681:
		mov	word [bx],0
		push	word [bp+4]
		call	SYSTEM_$$_CHECKINITIALSTKLEN$WORD$$WORD
		mov	word [bp-4],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19686
		push	word [U_$SYSTEM_$$_STACKLENGTH+2]
		push	word [U_$SYSTEM_$$_STACKLENGTH]
		call	ax
		mov	bx,ax
		jmp	..@j19687
..@j19686:
		mov	bx,word U_$SYSTEM_$$_STACKLENGTH+2
..@j19687:
		mov	ax,word [bp-4]
		mov	word [bx],ax
		call	SYSTEM_$$_SPTR$$POINTER
		mov	word [bp-8],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19690
		push	word [U_$SYSTEM_$$_STACKLENGTH+2]
		push	word [U_$SYSTEM_$$_STACKLENGTH]
		call	ax
		mov	bx,ax
		jmp	..@j19691
..@j19690:
		mov	bx,word U_$SYSTEM_$$_STACKLENGTH+2
..@j19691:
		mov	dx,word [bx]
		mov	ax,word [bp-8]
		mov	word [bp-6],ax
		sub	word [bp-6],dx
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19692
		push	word [U_$SYSTEM_$$_STACKBOTTOM+2]
		push	word [U_$SYSTEM_$$_STACKBOTTOM]
		call	ax
		mov	bx,ax
		jmp	..@j19693
..@j19692:
		mov	bx,word U_$SYSTEM_$$_STACKBOTTOM+2
..@j19693:
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+24]
		call	ax
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19696
		push	word [U_$SYSTEM_$$_THREADID+2]
		push	word [U_$SYSTEM_$$_THREADID]
		call	ax
		mov	bx,ax
		jmp	..@j19697
..@j19696:
		mov	bx,word U_$SYSTEM_$$_THREADID+2
..@j19697:
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_THREADID
EXTERN	U_$SYSTEM_$$_CURRENTTM
EXTERN	U_$SYSTEM_$$_STACKBOTTOM
EXTERN	SYSTEM_$$_SPTR$$POINTER
EXTERN	U_$SYSTEM_$$_STACKLENGTH
EXTERN	SYSTEM_$$_CHECKINITIALSTKLEN$WORD$$WORD
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_SYSINITSTDIO
EXTERN	SYSTEM_$$_SYSINITEXCEPTIONS
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
EXTERN	SYSTEM_$$_INITHEAPTHREAD
EXTERN	SYSTEM_$$_SYSINITFPU
EXTERN	SYSTEM_$$_SYSRESETFPU
