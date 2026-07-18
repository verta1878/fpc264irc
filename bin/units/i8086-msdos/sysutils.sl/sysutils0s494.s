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
	GLOBAL SYSUTILS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_OLDDOSDISKDATA
SYSUTILS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_OLDDOSDISKDATA:
		push	bp
		mov	bp,sp
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	al,byte [bx+6]
		mov	byte [si-68],al
		mov	bx,word [bp+4]
		mov	byte [bx-73],54
		mov	bx,word [bp+4]
		lea	ax,[bx-74]
		push	ax
		call	FPC_MSDOS
		mov	bx,word [bp+4]
		cmp	word [bx-74],-1
		jne	..@j15745
		jmp	..@j15746
..@j15745:
		mov	bx,word [bp+4]
		cmp	byte [bx+4],0
		jne	..@j15747
		jmp	..@j15748
..@j15747:
		mov	bx,word [bp+4]
		mov	dx,word [bx-74]
		mov	ax,0
		push	ax
		push	dx
		mov	bx,word [bp+4]
		mov	ax,word [bx-72]
		mov	dx,0
		push	dx
		push	ax
		call	fpc_mul_dword_to_qword
		push	ax
		push	bx
		push	cx
		push	dx
		mov	bx,word [bp+4]
		mov	dx,word [bx-70]
		mov	ax,0
		mov	cx,0
		mov	bx,0
		push	bx
		push	cx
		push	ax
		push	dx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,word [bp+4]
		mov	word [si-8],dx
		mov	word [si-6],cx
		mov	word [si-4],bx
		mov	word [si-2],ax
		jmp	..@j15761
..@j15748:
		mov	bx,word [bp+4]
		mov	ax,word [bx-74]
		mov	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	dx,word [bx-70]
		mov	ax,0
		push	ax
		push	dx
		call	fpc_mul_dword_to_qword
		push	ax
		push	bx
		push	cx
		push	dx
		mov	bx,word [bp+4]
		mov	ax,word [bx-68]
		mov	dx,0
		mov	cx,0
		mov	bx,0
		push	bx
		push	cx
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,word [bp+4]
		mov	word [si-8],dx
		mov	word [si-6],cx
		mov	word [si-4],bx
		mov	word [si-2],ax
..@j15761:
		jmp	..@j15774
..@j15746:
		mov	bx,word [bp+4]
		mov	word [bx-8],-1
		mov	word [bx-6],-1
		mov	word [bx-4],-1
		mov	word [bx-2],-1
..@j15774:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_mul_int64
EXTERN	fpc_mul_dword_to_qword
EXTERN	FPC_MSDOS
