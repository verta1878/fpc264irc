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
	GLOBAL SYSTEM_$$_EOF$file$$BOOLEAN
SYSTEM_$$_EOF$file$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	byte [bp-1],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24765
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24766
..@j24765:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24766:
		cmp	word [bx],0
		jne	..@j24763
		jmp	..@j24764
..@j24763:
		jmp	..@j24759
..@j24764:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24770
		cmp	dx,-10319
		je	..@j24769
..@j24770:
		test	ax,ax
		jl	..@j24768
		test	ax,ax
		jg	..@j24771
		cmp	dx,-10318
		jb	..@j24768
..@j24771:
		test	ax,ax
		jl	..@j24769
		test	ax,ax
		jg	..@j24772
		cmp	dx,-10317
		jbe	..@j24769
..@j24772:
		jmp	..@j24768
..@j24769:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_FILESIZE$file$$INT64
		mov	word [bp-10],dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_FILEPOS$file$$INT64
		mov	si,dx
		mov	dx,bx
		cmp	word [bp-4],ax
		jl	..@j24773
		jg	..@j24774
		cmp	word [bp-6],dx
		jb	..@j24773
		ja	..@j24774
		cmp	word [bp-8],cx
		jb	..@j24773
		ja	..@j24774
		cmp	word [bp-10],si
		jbe	..@j24773
		jmp	..@j24774
..@j24773:
		mov	byte [bp-1],1
		jmp	..@j24779
..@j24774:
		mov	byte [bp-1],0
..@j24779:
		jmp	..@j24767
..@j24768:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24782
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24783
..@j24782:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24783:
		mov	word [bx],103
..@j24767:
..@j24759:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FILEPOS$file$$INT64
EXTERN	SYSTEM_$$_FILESIZE$file$$INT64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
