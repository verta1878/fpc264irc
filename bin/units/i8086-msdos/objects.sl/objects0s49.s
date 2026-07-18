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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_OPEN$WORD
OBJECTS$_$TDOSSTREAM_$__$$_OPEN$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		je	..@j769
		jmp	..@j770
..@j769:
		mov	bx,word [bp+6]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		je	..@j771
		jmp	..@j772
..@j771:
		mov	bx,word [bp+6]
		lea	ax,[bx+273]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+17]
		push	ax
		call	SYSTEM_$$_ASSIGN$file$PCHAR
		cmp	word [bp+4],15360
		je	..@j777
		jmp	..@j778
..@j777:
		mov	bx,word [bp+6]
		lea	ax,[bx+273]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_REWRITE$file$LONGINT
		jmp	..@j783
..@j778:
		mov	al,byte [TC_$SYSTEM_$$_FILEMODE]
		mov	byte [bp-1],al
		mov	ax,word [bp+4]
		and	ax,3
		mov	byte [TC_$SYSTEM_$$_FILEMODE],al
		mov	bx,word [bp+6]
		lea	ax,[bx+273]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_RESET$file$LONGINT
		mov	al,byte [bp-1]
		mov	byte [TC_$SYSTEM_$$_FILEMODE],al
..@j783:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+273]
		mov	word [si+15],ax
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j798
		jmp	..@j799
..@j798:
		mov	bx,word [bp+6]
		lea	ax,[bx+273]
		push	ax
		call	SYSTEM_$$_FILESIZE$file$$INT64
		mov	bx,word [bp+6]
		mov	word [bx+6],dx
		mov	word [bx+8],cx
..@j799:
		cmp	word [bp-4],0
		je	..@j804
		jmp	..@j805
..@j804:
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-4],ax
..@j805:
		cmp	word [bp-4],0
		jne	..@j808
		jmp	..@j809
..@j808:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-8
		push	ax
		push	word [bp-4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j816
..@j809:
		mov	bx,word [bp+6]
		mov	word [bx+2],0
..@j816:
		mov	bx,word [bp+6]
		mov	word [bx+10],0
		mov	word [bx+12],0
		jmp	..@j821
..@j772:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-8
		push	ax
		mov	ax,104
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j821:
..@j770:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILESIZE$file$$INT64
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_RESET$file$LONGINT
EXTERN	TC_$SYSTEM_$$_FILEMODE
EXTERN	SYSTEM_$$_REWRITE$file$LONGINT
EXTERN	SYSTEM_$$_ASSIGN$file$PCHAR
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
