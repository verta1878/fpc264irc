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
	GLOBAL STRUTILS_$$_ANSIPROPERCASE$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_$$_ANSIPROPERCASE$ANSISTRING$TSYSCHARSET$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+16]
		call	ax
		mov	ax,word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j3072
		mov	bx,word [bx-2]
..@j3072:
		mov	ax,word [bp-2]
		add	ax,bx
		mov	word [bp-4],ax
		jmp	..@j3074
	ALIGN 2
..@j3073:
		jmp	..@j3077
	ALIGN 2
..@j3076:
		inc	word [bp-2]
..@j3077:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jb	..@j3079
		jmp	..@j3078
..@j3079:
		mov	si,word [bp-2]
		mov	bx,word [bp+4]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3080
		test	al,0
		jmp	..@j3081
..@j3080:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
..@j3081:
		jne	..@j3076
		jmp	..@j3078
..@j3078:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jb	..@j3082
		jmp	..@j3083
..@j3082:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	bx,word [bp-2]
		mov	byte [bx],al
..@j3083:
		jmp	..@j3089
	ALIGN 2
..@j3088:
		inc	word [bp-2]
..@j3089:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jb	..@j3091
		jmp	..@j3090
..@j3091:
		mov	si,word [bp-2]
		mov	bx,word [bp+4]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3092
		test	al,0
		jmp	..@j3093
..@j3092:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
..@j3093:
		je	..@j3088
		jmp	..@j3090
..@j3090:
..@j3074:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jb	..@j3073
		jmp	..@j3075
..@j3075:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
