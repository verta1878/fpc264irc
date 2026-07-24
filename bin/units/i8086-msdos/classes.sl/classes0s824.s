BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TREADER_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
CLASSES$_$TREADER_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,102
		mov	word [bp-6],0
		mov	word [bp-8],0
		mov	ax,1
		push	ax
		lea	ax,[bp-36]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18999
		mov	bx,word [bp+6]
		push	word [bx+9]
		lea	ax,[bp-3]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+13]
		mov	word [bp-14],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-16],ax
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-44]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19017
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j19022
		jmp	..@j19023
..@j19022:
		mov	ax,1
		push	ax
		lea	ax,[bp-64]
		push	ax
		lea	ax,[bp-58]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19026
		test	byte [bp-3],1
		jne	..@j19030
		jmp	..@j19031
..@j19030:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j19032
		jmp	..@j19033
..@j19032:
		mov	bx,word [bp+6]
		push	word [bx+4]
		push	word [bp-8]
		call	CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
		mov	word [bp-2],ax
		jmp	..@j19040
..@j19033:
		mov	word [bp-2],0
..@j19040:
		cmp	word [bp-2],0
		je	..@j19043
		jmp	..@j19044
..@j19043:
		mov	bx,word [bp+6]
		cmp	word [bx+35],0
		jne	..@j19045
		jmp	..@j19046
..@j19045:
		mov	bx,word [bp+6]
		push	word [bx+37]
		push	word [bp+6]
		push	word [bp-8]
		push	word [bp+6]
		push	word [bp-6]
		call	CLASSES$_$TREADER_$__$$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+35]
		call	ax
..@j19046:
		cmp	word [bp-2],0
		je	..@j19061
		jmp	..@j19062
..@j19061:
..@j19063:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SANCESTORNOTFOUND+2]
		mov	ax,word [bp-8]
		mov	dx,0
		mov	word [bp-70],ax
		mov	word [bp-68],dx
		mov	word [bp-72],11
		lea	ax,[bp-72]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j19063
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19062:
..@j19044:
		push	word [bp-2]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+102]
		call	ax
		mov	bx,word [bp+6]
		mov	word [bx+13],ax
		mov	bx,word [bp+6]
		cmp	word [bx+13],0
		je	..@j19084
		jmp	..@j19085
..@j19084:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+13],ax
..@j19085:
		jmp	..@j19088
..@j19031:
		mov	word [bp-2],0
		push	word [bp+6]
		push	word [bp-6]
		call	CLASSES$_$TREADER_$__$$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		cmp	word [bx+51],0
		jne	..@j19097
		jmp	..@j19098
..@j19097:
		mov	bx,word [bp+6]
		push	word [bx+53]
		push	word [bp+6]
		push	word [bp-18]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+51]
		call	ax
..@j19098:
		cmp	word [bp-2],0
		je	..@j19107
		jmp	..@j19108
..@j19107:
		push	word [bp-18]
		mov	bx,word [bp-18]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp-22],ax
		test	byte [bp-3],4
		jne	..@j19113
		jmp	..@j19114
..@j19113:
		mov	bx,word [bp-22]
		mov	si,word [bp-22]
		mov	ax,word [si+22]
		or	ax,513
		mov	word [bx+22],ax
..@j19114:
		push	word [bp-22]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+11]
		mov	bx,word [bp-22]
		mov	bx,word [bx]
		mov	ax,word [bx+98]
		call	ax
		mov	ax,word [bp-22]
		mov	word [bp-2],ax
..@j19108:
		mov	bx,word [bp-2]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,1
		mov	byte [bx+22],al
..@j19088:
..@j19026:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19028
		mov	ax,1
		push	ax
		lea	ax,[bp-78]
		push	ax
		lea	ax,[bp-72]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19125
		push	bp
		lea	ax,[bp-2]
		push	ax
		call	CLASSES$_$TREADER_$_READCOMPONENT$TCOMPONENT$$TCOMPONENT_$$_RECOVER$TCOMPONENT$$BOOLEAN
		test	al,al
		je	..@j19126
		jmp	..@j19127
..@j19126:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j19127:
..@j19125:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19132
		call	FPC_RAISE_NESTED
..@j19132:
		call	FPC_DONEEXCEPTION
		jmp	..@j19028
..@j19028:
..@j19023:
		cmp	word [bp-2],0
		jne	..@j19133
		jmp	..@j19134
..@j19133:
		mov	ax,1
		push	ax
		lea	ax,[bp-64]
		push	ax
		lea	ax,[bp-58]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19137
		mov	bx,word [bp-2]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,1
		mov	byte [bx+22],al
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	word [bp-24],ax
		push	word [bp-2]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-102],ax
		mov	word [bp-10],0
		mov	ax,word [bp-102]
		cmp	ax,word [bp-10]
		jl	..@j19152
		dec	word [bp-10]
	ALIGN 2
..@j19153:
		inc	word [bp-10]
		push	word [bp-2]
		push	word [bp-10]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT
		mov	word [bp-20],ax
		mov	bx,word [bp-20]
		test	byte [bx+24],4
		jne	..@j19160
		jmp	..@j19161
..@j19160:
		push	word [bp-24]
		push	word [bp-20]
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	bx,word [bp-20]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,1
		mov	byte [bx+22],al
..@j19161:
		mov	ax,word [bp-102]
		cmp	ax,word [bp-10]
		jg	..@j19153
..@j19152:
		test	byte [bp-3],1
		je	..@j19166
		jmp	..@j19167
..@j19166:
		mov	ax,1
		push	ax
		lea	ax,[bp-78]
		push	ax
		lea	ax,[bp-72]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19170
		push	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx+13]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		mov	bx,word [bp+6]
		cmp	word [bx+27],0
		jne	..@j19178
		jmp	..@j19179
..@j19178:
		mov	bx,word [bp+6]
		push	word [bx+29]
		push	word [bp+6]
		push	word [bp-2]
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+27]
		call	ax
..@j19179:
		push	word [bp-2]
		push	word [bp-8]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		push	word [bp-8]
		call	CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
		cmp	ax,word [bp-2]
		je	..@j19192
		jmp	..@j19193
..@j19192:
		mov	bx,word [bp-2]
		mov	al,byte [bx+23]
		mov	ah,0
		or	ax,2
		mov	byte [bx+23],al
..@j19193:
..@j19170:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19172
		mov	ax,1
		push	ax
		lea	ax,[bp-92]
		push	ax
		lea	ax,[bp-86]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19196
		push	bp
		lea	ax,[bp-2]
		push	ax
		call	CLASSES$_$TREADER_$_READCOMPONENT$TCOMPONENT$$TCOMPONENT_$$_RECOVER$TCOMPONENT$$BOOLEAN
		test	al,al
		je	..@j19197
		jmp	..@j19198
..@j19197:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j19198:
..@j19196:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19203
		call	FPC_RAISE_NESTED
..@j19203:
		call	FPC_DONEEXCEPTION
		jmp	..@j19172
..@j19172:
..@j19167:
		cmp	word [bp-2],0
		je	..@j19204
		jmp	..@j19205
..@j19204:
		jmp	..@j19135
..@j19205:
		mov	bx,word [bp-2]
		test	word [bx+22],512
		jne	..@j19206
		jmp	..@j19207
..@j19206:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
..@j19207:
		mov	bx,word [bp-2]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,2
		mov	byte [bx+22],al
		push	word [bp-24]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-100],ax
		mov	word [bp-10],0
		mov	ax,word [bp-100]
		cmp	ax,word [bp-10]
		jl	..@j19215
		dec	word [bp-10]
	ALIGN 2
..@j19216:
		inc	word [bp-10]
		push	word [bp-24]
		push	word [bp-10]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,2
		mov	byte [bx+22],al
		mov	ax,word [bp-100]
		cmp	ax,word [bp-10]
		jg	..@j19216
..@j19215:
		push	word [bp-2]
		push	word [bp+6]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		mov	bx,word [bp-2]
		mov	al,byte [bx+22]
		mov	ah,0
		and	ax,-3
		mov	byte [bx+22],al
		push	word [bp-24]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-98],ax
		mov	word [bp-10],0
		mov	ax,word [bp-98]
		cmp	ax,word [bp-10]
		jl	..@j19230
		dec	word [bp-10]
	ALIGN 2
..@j19231:
		inc	word [bp-10]
		push	word [bp-24]
		push	word [bp-10]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	al,byte [bx+22]
		mov	ah,0
		and	ax,-3
		mov	byte [bx+22],al
		mov	ax,word [bp-98]
		cmp	ax,word [bp-10]
		jg	..@j19231
..@j19230:
		test	byte [bp-3],2
		jne	..@j19236
		jmp	..@j19237
..@j19236:
		mov	bx,word [bp+6]
		push	word [bx+13]
		push	word [bp-2]
		push	word [bp-12]
		mov	bx,word [bp+6]
		mov	bx,word [bx+13]
		mov	bx,word [bx]
		mov	ax,word [bx+78]
		call	ax
..@j19237:
		test	byte [bp-3],1
		jne	..@j19246
		jmp	..@j19247
..@j19247:
		mov	bx,word [bp-2]
		test	word [bx+22],512
		jne	..@j19246
		jmp	..@j19244
..@j19246:
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j19244
		jmp	..@j19245
..@j19244:
		push	word [bp-24]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-96],ax
		mov	word [bp-10],0
		mov	ax,word [bp-96]
		cmp	ax,word [bp-10]
		jl	..@j19257
		dec	word [bp-10]
	ALIGN 2
..@j19258:
		inc	word [bp-10]
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp-24]
		push	word [bp-10]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word [bp-96]
		cmp	ax,word [bp-10]
		jg	..@j19258
..@j19257:
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j19245:
..@j19137:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19139
		mov	ax,1
		push	ax
		lea	ax,[bp-78]
		push	ax
		lea	ax,[bp-72]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19271
		test	byte [bp-3],1
		jne	..@j19272
		jmp	..@j19274
..@j19274:
		cmp	word [bp+4],0
		jne	..@j19272
		jmp	..@j19273
..@j19272:
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j19273:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j19271:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19277
		call	FPC_RAISE_NESTED
..@j19277:
		call	FPC_DONEEXCEPTION
		jmp	..@j19139
..@j19135:
		call	FPC_POPADDRSTACK
		pop	ax
		jmp	..@j19019
..@j19139:
..@j19134:
..@j19017:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		mov	ax,word [bp-14]
		mov	word [bx+13],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	word [bx+4],ax
		push	word [bp-24]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j19018
		cmp	ax,2
		je	..@j18999
		call	FPC_RERAISE
..@j19019:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j19017
..@j19018:
..@j18999:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j19000
		call	FPC_RERAISE
..@j19000:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	CLASSES_$$_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTCOUNT$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	CLASSES$_$TREADER_$_READCOMPONENT$TCOMPONENT$$TCOMPONENT_$$_RECOVER$TCOMPONENT$$BOOLEAN
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SANCESTORNOTFOUND
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	CLASSES$_$TREADER_$__$$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS
EXTERN	CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
