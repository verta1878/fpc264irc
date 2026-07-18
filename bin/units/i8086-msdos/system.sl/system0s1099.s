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
	GLOBAL fpc_readln_end_iso
fpc_readln_end_iso:
	GLOBAL FPC_READLN_END_ISO
FPC_READLN_END_ISO:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23115
		jmp	..@j23116
..@j23115:
		jmp	..@j23113
..@j23116:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23119
		jmp	..@j23120
..@j23119:
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j23121
		jmp	..@j23122
..@j23121:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		call	ax
..@j23122:
		jmp	..@j23113
..@j23120:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23125
		jmp	..@j23126
..@j23125:
		mov	bx,word [bp+4]
		inc	word [bx+10]
		jmp	..@j23113
..@j23126:
	ALIGN 2
..@j23127:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	byte [bp-1],al
		mov	bx,word [bp+4]
		inc	word [bx+10]
		cmp	byte [bp-1],10
		je	..@j23132
		jmp	..@j23133
..@j23132:
		jmp	..@j23113
..@j23133:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23134
		jmp	..@j23135
..@j23134:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23138
		jmp	..@j23139
..@j23138:
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j23140
		jmp	..@j23141
..@j23140:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		call	ax
..@j23141:
		jmp	..@j23113
..@j23139:
..@j23135:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		je	..@j23144
		jmp	..@j23145
..@j23144:
		mov	bx,word [bp+4]
		inc	word [bx+10]
		jmp	..@j23113
..@j23145:
		cmp	byte [bp-1],13
		je	..@j23146
		jmp	..@j23147
..@j23146:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		cmp	byte [bx+si],10
		je	..@j23148
		jmp	..@j23149
..@j23148:
		mov	bx,word [bp+4]
		inc	word [bx+10]
..@j23149:
		jmp	..@j23113
..@j23147:
		jmp	..@j23127
..@j23113:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
