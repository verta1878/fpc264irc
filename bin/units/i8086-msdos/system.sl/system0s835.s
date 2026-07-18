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
	GLOBAL SYSTEM_$$_SYSFLUSHSTDIO
SYSTEM_$$_SYSFLUSHSTDIO:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17704
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		mov	bx,ax
		jmp	..@j17705
..@j17704:
		mov	bx,word U_$SYSTEM_$$_OUTPUT+2
..@j17705:
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j17703
		cmp	dx,-10318
		jne	..@j17703
		jmp	..@j17702
..@j17702:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17708
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		jmp	..@j17709
..@j17708:
		mov	ax,word U_$SYSTEM_$$_OUTPUT+2
..@j17709:
		push	ax
		call	SYSTEM_$$_FLUSH$TEXT
..@j17703:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17712
		push	word [U_$SYSTEM_$$_ERROUTPUT+2]
		push	word [U_$SYSTEM_$$_ERROUTPUT]
		call	ax
		mov	bx,ax
		jmp	..@j17713
..@j17712:
		mov	bx,word U_$SYSTEM_$$_ERROUTPUT+2
..@j17713:
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j17711
		cmp	dx,-10318
		jne	..@j17711
		jmp	..@j17710
..@j17710:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17716
		push	word [U_$SYSTEM_$$_ERROUTPUT+2]
		push	word [U_$SYSTEM_$$_ERROUTPUT]
		call	ax
		jmp	..@j17717
..@j17716:
		mov	ax,word U_$SYSTEM_$$_ERROUTPUT+2
..@j17717:
		push	ax
		call	SYSTEM_$$_FLUSH$TEXT
..@j17711:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17720
		push	word [U_$SYSTEM_$$_STDOUT+2]
		push	word [U_$SYSTEM_$$_STDOUT]
		call	ax
		mov	bx,ax
		jmp	..@j17721
..@j17720:
		mov	bx,word U_$SYSTEM_$$_STDOUT+2
..@j17721:
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j17719
		cmp	dx,-10318
		jne	..@j17719
		jmp	..@j17718
..@j17718:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17724
		push	word [U_$SYSTEM_$$_STDOUT+2]
		push	word [U_$SYSTEM_$$_STDOUT]
		call	ax
		jmp	..@j17725
..@j17724:
		mov	ax,word U_$SYSTEM_$$_STDOUT+2
..@j17725:
		push	ax
		call	SYSTEM_$$_FLUSH$TEXT
..@j17719:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17728
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		mov	bx,ax
		jmp	..@j17729
..@j17728:
		mov	bx,word U_$SYSTEM_$$_STDERR+2
..@j17729:
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j17727
		cmp	dx,-10318
		jne	..@j17727
		jmp	..@j17726
..@j17726:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17732
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j17733
..@j17732:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j17733:
		push	ax
		call	SYSTEM_$$_FLUSH$TEXT
..@j17727:
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	U_$SYSTEM_$$_STDOUT
EXTERN	U_$SYSTEM_$$_ERROUTPUT
EXTERN	SYSTEM_$$_FLUSH$TEXT
EXTERN	U_$SYSTEM_$$_OUTPUT
EXTERN	FPC_THREADVAR_RELOCATE
