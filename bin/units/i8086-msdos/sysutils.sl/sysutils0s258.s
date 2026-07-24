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
	GLOBAL SYSUTILS_$$_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
SYSUTILS_$$_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-2],0
		mov	word [bp-30],0
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8966
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		lea	ax,[bp-2]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j8978
		mov	bx,word [bx-2]
..@j8978:
		mov	word [bp-10],bx
		cmp	word [bp-10],0
		jg	..@j8979
		jmp	..@j8980
..@j8979:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-5],al
		jmp	..@j8983
..@j8980:
		mov	byte [bp-5],0
..@j8983:
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j8988
		mov	bx,word [bx-2]
..@j8988:
		mov	word [bp-12],bx
		jmp	..@j8990
	ALIGN 2
..@j8989:
		mov	word [bp-8],1
		mov	byte [bp-4],0
		mov	byte [bp-13],0
		mov	byte [bp-14],0
		jmp	..@j9001
	ALIGN 2
..@j9000:
		mov	bx,word [bp-2]
		mov	si,word [bp-8]
		mov	al,byte [bx+si-1]
		mov	byte [bp-3],al
		mov	al,byte [bp-3]
		cmp	al,byte [bp-4]
		je	..@j9005
		jmp	..@j9006
..@j9005:
		mov	byte [bp-4],0
		jmp	..@j9009
..@j9006:
		mov	al,byte [bp-3]
		mov	ah,0
		cmp	ax,34
		je	..@j9012
		cmp	ax,39
		je	..@j9012
..@j9012:
		je	..@j9010
		jmp	..@j9011
..@j9010:
		mov	al,byte [bp-3]
		mov	byte [bp-4],al
..@j9011:
..@j9009:
		cmp	byte [bp-4],0
		jne	..@j9015
		jmp	..@j9016
..@j9015:
		inc	word [bp-8]
		jmp	..@j9017
..@j9016:
		mov	al,byte [bp-3]
		cmp	al,byte [bp-5]
		je	..@j9020
		jmp	..@j9019
..@j9020:
		push	word [bp+8]
		lea	ax,[bp-30]
		push	ax
		push	word [bp-2]
		push	word [bp-8]
		push	word [bp-10]
		call	fpc_ansistr_copy
		push	word [bp-30]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j9019
		cmp	cx,0
		jne	..@j9019
		jmp	..@j9018
..@j9018:
		mov	byte [bp-13],1
		jmp	..@j9033
..@j9019:
		mov	byte [bp-13],0
..@j9033:
		cmp	byte [bp-13],0
		jne	..@j9034
		jmp	..@j9035
..@j9034:
		mov	ax,word [bp-10]
		add	word [bp-8],ax
		jmp	..@j9036
..@j9035:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+4]
		jge	..@j9037
		jmp	..@j9038
..@j9037:
		mov	bx,word [bp+6]
		mov	al,byte [bp-3]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
		mov	al,0
		je	..@j9041
		inc	ax
..@j9041:
		mov	byte [bp-14],al
..@j9038:
		inc	word [bp-8]
..@j9036:
..@j9017:
..@j9001:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-12]
		jle	..@j9043
		jmp	..@j9002
..@j9043:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+4]
		jle	..@j9042
		jmp	..@j9044
..@j9044:
		cmp	byte [bp-14],0
		je	..@j9042
		jmp	..@j9002
..@j9042:
		cmp	byte [bp-4],0
		jne	..@j9000
		jmp	..@j9045
..@j9045:
		cmp	byte [bp-13],0
		je	..@j9000
		jmp	..@j9002
..@j9002:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		lea	ax,[bp-30]
		push	ax
		push	word [bp-2]
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-30]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		lea	ax,[bp-2]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		dec	ax
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j9070
		mov	bx,word [bx-2]
..@j9070:
		mov	word [bp-12],bx
		cmp	word [bp-12],0
		jg	..@j9073
		jmp	..@j9072
..@j9073:
		cmp	byte [bp-13],0
		je	..@j9071
		jmp	..@j9072
..@j9071:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		push	word [bp+8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j9072:
..@j8990:
		cmp	word [bp-12],0
		jg	..@j8989
		jmp	..@j8991
..@j8991:
..@j8966:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8967
		call	FPC_RERAISE
..@j8967:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
