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
	GLOBAL SYSTEM_$$_SYSINITSTDIO
SYSTEM_$$_SYSINITSTDIO:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26733
		push	word [U_$SYSTEM_$$_INPUT+2]
		push	word [U_$SYSTEM_$$_INPUT]
		call	ax
		jmp	..@j26734
..@j26733:
		mov	ax,word U_$SYSTEM_$$_INPUT+2
..@j26734:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-10319
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26741
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		jmp	..@j26742
..@j26741:
		mov	ax,word U_$SYSTEM_$$_OUTPUT+2
..@j26742:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-10318
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26749
		push	word [U_$SYSTEM_$$_ERROUTPUT+2]
		push	word [U_$SYSTEM_$$_ERROUTPUT]
		call	ax
		jmp	..@j26750
..@j26749:
		mov	ax,word U_$SYSTEM_$$_ERROUTPUT+2
..@j26750:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-10318
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26757
		push	word [U_$SYSTEM_$$_STDOUT+2]
		push	word [U_$SYSTEM_$$_STDOUT]
		call	ax
		jmp	..@j26758
..@j26757:
		mov	ax,word U_$SYSTEM_$$_STDOUT+2
..@j26758:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-10318
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26765
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j26766
..@j26765:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j26766:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-10318
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	U_$SYSTEM_$$_STDOUT
EXTERN	U_$SYSTEM_$$_ERROUTPUT
EXTERN	U_$SYSTEM_$$_OUTPUT
EXTERN	SYSTEM_$$_OPENSTDIO$TEXT$LONGINT$WORD
EXTERN	U_$SYSTEM_$$_INPUT
EXTERN	FPC_THREADVAR_RELOCATE
