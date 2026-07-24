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
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23076
		jmp	..@j23077
..@j23076:
		jmp	..@j23074
..@j23077:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23080
		jmp	..@j23081
..@j23080:
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j23082
		jmp	..@j23083
..@j23082:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		call	ax
..@j23083:
		jmp	..@j23074
..@j23081:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j23088
		jmp	..@j23087
..@j23088:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23086
		jmp	..@j23087
..@j23086:
		jmp	..@j23074
..@j23087:
	ALIGN 2
..@j23089:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	byte [bp-1],al
		mov	bx,word [bp+4]
		inc	word [bx+10]
		cmp	byte [bp-1],10
		je	..@j23094
		jmp	..@j23095
..@j23094:
		jmp	..@j23074
..@j23095:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23096
		jmp	..@j23097
..@j23096:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23100
		jmp	..@j23101
..@j23100:
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j23102
		jmp	..@j23103
..@j23102:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		call	ax
..@j23103:
		jmp	..@j23074
..@j23101:
..@j23097:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j23108
		jmp	..@j23107
..@j23108:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23106
		jmp	..@j23107
..@j23106:
		jmp	..@j23074
..@j23107:
		cmp	byte [bp-1],13
		je	..@j23109
		jmp	..@j23110
..@j23109:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],10
		je	..@j23111
		jmp	..@j23112
..@j23111:
		mov	bx,word [bp+4]
		inc	word [bx+10]
..@j23112:
		jmp	..@j23074
..@j23110:
		jmp	..@j23089
..@j23074:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
