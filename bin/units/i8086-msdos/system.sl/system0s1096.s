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
	GLOBAL SYSTEM_$$_READREAL$TEXT$OPENSTRING
SYSTEM_$$_READREAL$TEXT$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	byte [bx],0
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j22964
		jmp	..@j22965
..@j22964:
		jmp	..@j22960
..@j22965:
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22970
		jmp	..@j22971
..@j22970:
		jmp	..@j22960
..@j22971:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,43
		je	..@j22974
		cmp	ax,45
		je	..@j22974
..@j22974:
		je	..@j22972
		jmp	..@j22973
..@j22972:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
..@j22973:
		mov	byte [bp-1],0
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22983
		jmp	..@j22984
..@j22983:
		jmp	..@j22960
..@j22984:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j22987
..@j22987:
		jc	..@j22985
		jmp	..@j22986
..@j22985:
		mov	byte [bp-1],1
	ALIGN 2
..@j22990:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22999
		jmp	..@j23001
..@j23001:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jge	..@j22999
		jmp	..@j23000
..@j22999:
		jmp	..@j22960
..@j23000:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j23002
..@j23002:
		jc	..@j22990
		jmp	..@j22992
..@j22992:
..@j22986:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		cmp	byte [bx+si],46
		je	..@j23003
		jmp	..@j23004
..@j23003:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23011
		jmp	..@j23013
..@j23013:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jge	..@j23011
		jmp	..@j23012
..@j23011:
		jmp	..@j22960
..@j23012:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j23016
..@j23016:
		jc	..@j23014
		jmp	..@j23015
..@j23014:
		mov	byte [bp-1],1
	ALIGN 2
..@j23019:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23028
		jmp	..@j23030
..@j23030:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jge	..@j23028
		jmp	..@j23029
..@j23028:
		jmp	..@j22960
..@j23029:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j23031
..@j23031:
		jc	..@j23019
		jmp	..@j23021
..@j23021:
..@j23015:
..@j23004:
		cmp	byte [bp-1],0
		jne	..@j23034
		jmp	..@j23033
..@j23034:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,69
		je	..@j23035
		cmp	ax,101
		je	..@j23035
..@j23035:
		je	..@j23032
		jmp	..@j23033
..@j23032:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23042
		jmp	..@j23044
..@j23044:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jge	..@j23042
		jmp	..@j23043
..@j23042:
		jmp	..@j22960
..@j23043:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,43
		je	..@j23047
		cmp	ax,45
		je	..@j23047
..@j23047:
		je	..@j23045
		jmp	..@j23046
..@j23045:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
..@j23046:
		jmp	..@j23055
	ALIGN 2
..@j23054:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j23059
..@j23059:
		jc	..@j23057
		jmp	..@j23058
..@j23057:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		jmp	..@j23066
..@j23058:
		jmp	..@j23056
..@j23066:
..@j23055:
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jl	..@j23067
		jmp	..@j23056
..@j23067:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jl	..@j23054
		jmp	..@j23056
..@j23056:
..@j23033:
..@j22960:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
