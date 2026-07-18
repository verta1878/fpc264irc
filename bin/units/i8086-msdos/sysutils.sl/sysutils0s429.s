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
	GLOBAL SYSUTILS_$$_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN
SYSUTILS_$$_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,48
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j13759
		mov	bx,word [bx-2]
..@j13759:
		cmp	bx,38
		jne	..@j13757
		jmp	..@j13758
..@j13757:
		mov	byte [bp-1],0
		jmp	..@j13751
..@j13758:
		mov	byte [bp-2],1
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j13766
		mov	ax,word FPC_EMPTYCHAR
..@j13766:
		mov	word [bp-4],ax
		mov	word [bp-6],bp
		mov	bx,word [bp-4]
		cmp	byte [bx],123
		jne	..@j13770
		jmp	..@j13771
..@j13770:
		mov	byte [bp-2],0
..@j13771:
		inc	word [bp-4]
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-34],ax
		mov	cl,28
		shl	word [bp-34],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,24
		shl	ax,cl
		mov	word [bp-48],ax
		mov	ax,word [bp-48]
		or	ax,word [bp-34]
		mov	word [bp-48],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,20
		shl	ax,cl
		mov	word [bp-46],ax
		mov	ax,word [bp-46]
		or	ax,word [bp-48]
		mov	word [bp-46],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,16
		shl	ax,cl
		mov	word [bp-44],ax
		mov	ax,word [bp-44]
		or	ax,word [bp-46]
		mov	word [bp-44],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,12
		shl	ax,cl
		mov	word [bp-42],ax
		mov	ax,word [bp-42]
		or	ax,word [bp-44]
		mov	word [bp-42],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	word [bp-40],ax
		mov	ax,word [bp-40]
		or	ax,word [bp-42]
		mov	word [bp-40],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,4
		shl	ax,cl
		mov	word [bp-32],ax
		mov	ax,word [bp-32]
		or	ax,word [bp-40]
		mov	word [bp-32],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-32]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	word [bp-6],bp
		mov	bx,word [bp-4]
		cmp	byte [bx],45
		jne	..@j13795
		jmp	..@j13796
..@j13795:
		mov	byte [bp-2],0
..@j13796:
		inc	word [bp-4]
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-28],ax
		mov	cl,12
		shl	word [bp-28],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	word [bp-38],ax
		mov	ax,word [bp-38]
		or	ax,word [bp-28]
		mov	word [bp-38],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,4
		shl	ax,cl
		mov	word [bp-24],ax
		mov	ax,word [bp-24]
		or	ax,word [bp-38]
		mov	word [bp-24],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-24]
		mov	bx,word [bp+4]
		mov	word [bx+4],ax
		mov	word [bp-6],bp
		mov	bx,word [bp-4]
		cmp	byte [bx],45
		jne	..@j13812
		jmp	..@j13813
..@j13812:
		mov	byte [bp-2],0
..@j13813:
		inc	word [bp-4]
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-26],ax
		mov	cl,12
		shl	word [bp-26],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	word [bp-36],ax
		mov	ax,word [bp-36]
		or	ax,word [bp-26]
		mov	word [bp-36],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	cl,4
		shl	ax,cl
		mov	word [bp-30],ax
		mov	ax,word [bp-30]
		or	ax,word [bp-36]
		mov	word [bp-30],ax
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-30]
		mov	bx,word [bp+4]
		mov	word [bx+6],ax
		mov	word [bp-6],bp
		mov	bx,word [bp-4]
		cmp	byte [bx],45
		jne	..@j13829
		jmp	..@j13830
..@j13829:
		mov	byte [bp-2],0
..@j13830:
		inc	word [bp-4]
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-22],ax
		mov	cl,4
		shl	word [bp-22],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-22]
		mov	bx,word [bp+4]
		mov	byte [bx+8],al
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-18],ax
		mov	cl,4
		shl	word [bp-18],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-18]
		mov	bx,word [bp+4]
		mov	byte [bx+9],al
		mov	word [bp-6],bp
		mov	bx,word [bp-4]
		cmp	byte [bx],45
		jne	..@j13848
		jmp	..@j13849
..@j13848:
		mov	byte [bp-2],0
..@j13849:
		inc	word [bp-4]
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-20],ax
		mov	cl,4
		shl	word [bp-20],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-20]
		mov	bx,word [bp+4]
		mov	byte [bx+10],al
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-16],ax
		mov	cl,4
		shl	word [bp-16],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-16]
		mov	bx,word [bp+4]
		mov	byte [bx+11],al
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-14],ax
		mov	cl,4
		shl	word [bp-14],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-14]
		mov	bx,word [bp+4]
		mov	byte [bx+12],al
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-12],ax
		mov	cl,4
		shl	word [bp-12],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-12]
		mov	bx,word [bp+4]
		mov	byte [bx+13],al
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-10],ax
		mov	cl,4
		shl	word [bp-10],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-10]
		mov	bx,word [bp+4]
		mov	byte [bx+14],al
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		mov	word [bp-8],ax
		mov	cl,4
		shl	word [bp-8],cl
		push	bp
		call	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
		mov	ah,0
		or	ax,word [bp-8]
		mov	bx,word [bp+4]
		mov	byte [bx+15],al
		mov	word [bp-6],bp
		mov	bx,word [bp-4]
		cmp	byte [bx],125
		jne	..@j13891
		jmp	..@j13892
..@j13891:
		mov	byte [bp-2],0
..@j13892:
		inc	word [bp-4]
		mov	al,byte [bp-2]
		mov	byte [bp-1],al
..@j13751:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
EXTERN	FPC_EMPTYCHAR
