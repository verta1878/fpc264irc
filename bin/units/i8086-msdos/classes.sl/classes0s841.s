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
	GLOBAL CLASSES$_$TREADER_$__$$_READPROPVALUE$TPERSISTENT$POINTER
CLASSES$_$TREADER_$__$$_READPROPVALUE$TPERSISTENT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,62
		mov	word [bp-8],0
		mov	word [bp-16],0
		lea	ax,[bp-52]
		push	ax
		call	fpc_variant_init
		mov	word [bp-36],0
		mov	word [bp-34],0
		mov	word [bp-32],0
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20056
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		je	..@j20058
		jmp	..@j20059
..@j20058:
..@j20060:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SREADONLYPROPERTY+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j20060
		push	ax
		push	bp
		call	fpc_raiseexception
..@j20059:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		test	ax,ax
		jne	..@j20091
		cmp	dx,1
		je	..@j20077
..@j20091:
		test	ax,ax
		jne	..@j20092
		cmp	dx,2
		je	..@j20079
..@j20092:
		test	ax,ax
		jne	..@j20093
		cmp	dx,3
		je	..@j20081
..@j20093:
		test	ax,ax
		jne	..@j20094
		cmp	dx,4
		je	..@j20082
..@j20094:
		test	ax,ax
		jne	..@j20095
		cmp	dx,5
		je	..@j20083
..@j20095:
		test	ax,ax
		jne	..@j20096
		cmp	dx,6
		je	..@j20084
..@j20096:
		test	ax,ax
		jl	..@j20076
		test	ax,ax
		jg	..@j20097
		cmp	dx,7
		jb	..@j20076
..@j20097:
		test	ax,ax
		jl	..@j20085
		test	ax,ax
		jg	..@j20098
		cmp	dx,9
		jbe	..@j20085
..@j20098:
		test	ax,ax
		jne	..@j20099
		cmp	dx,10
		je	..@j20087
..@j20099:
		test	ax,ax
		jne	..@j20100
		cmp	dx,11
		je	..@j20088
..@j20100:
		test	ax,ax
		jne	..@j20101
		cmp	dx,15
		je	..@j20089
..@j20101:
		test	ax,ax
		jne	..@j20102
		cmp	dx,17
		je	..@j20080
..@j20102:
		test	ax,ax
		jne	..@j20103
		cmp	dx,18
		je	..@j20078
..@j20103:
		test	ax,ax
		jl	..@j20076
		test	ax,ax
		jg	..@j20104
		cmp	dx,19
		jb	..@j20076
..@j20104:
		test	ax,ax
		jl	..@j20090
		test	ax,ax
		jg	..@j20105
		cmp	dx,20
		jbe	..@j20090
..@j20105:
		test	ax,ax
		jne	..@j20106
		cmp	dx,24
		je	..@j20086
..@j20106:
		test	ax,ax
		jne	..@j20107
		cmp	dx,25
		je	..@j20080
..@j20107:
		jmp	..@j20076
..@j20077:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,7
		je	..@j20108
		jmp	..@j20109
..@j20108:
		push	word [bp+8]
		lea	ax,[bp-8]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
		push	word [bp-8]
		lea	ax,[bp-6]
		push	ax
		call	CLASSES_$$_GLOBALIDENTTOINT$ANSISTRING$LONGINT$$BOOLEAN
		test	al,al
		jne	..@j20116
		jmp	..@j20117
..@j20116:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		push	si
		push	bx
		push	dx
		push	ax
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20128
..@j20117:
..@j20129:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j20129
		push	ax
		push	bp
		call	fpc_raiseexception
..@j20128:
		jmp	..@j20142
..@j20109:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		mov	si,ax
		mov	bx,dx
		mov	si,ax
		mov	bx,dx
		mov	dx,si
		mov	ax,bx
		mov	cl,15
		sar	ax,cl
		mov	dx,ax
		push	ax
		push	dx
		push	bx
		push	si
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
..@j20142:
		jmp	..@j20075
..@j20078:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TREADER_$__$$_READBOOLEAN$$BOOLEAN
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	ax,0
		mov	cx,0
		push	cx
		push	ax
		push	bx
		push	dx
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20075
..@j20079:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TREADER_$__$$_READCHAR$$CHAR
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	cx,0
		mov	ax,0
		push	ax
		push	cx
		push	bx
		push	dx
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20075
..@j20080:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TREADER_$__$$_READWIDECHAR$$WIDECHAR
		mov	cx,ax
		mov	bx,0
		mov	cx,ax
		mov	bx,0
		mov	dx,0
		mov	ax,0
		push	ax
		push	dx
		push	bx
		push	cx
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20075
..@j20081:
		push	word [bp-2]
		push	word [bp+8]
		lea	ax,[bp-32]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
		push	word [bp-32]
		call	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,-1
		jne	..@j20188
		cmp	ax,-1
		jne	..@j20188
		jmp	..@j20187
..@j20187:
..@j20189:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j20189
		push	ax
		push	bp
		call	fpc_raiseexception
..@j20188:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	si,ax
		mov	bx,dx
		mov	cl,15
		sar	bx,cl
		mov	si,bx
		push	bx
		push	si
		push	dx
		push	ax
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20075
..@j20082:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	TYPINFO_$$_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
		jmp	..@j20075
..@j20083:
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,11
		push	ax
		call	CLASSES$_$TREADER_$__$$_CHECKVALUE$TVALUETYPE
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+8]
		push	word [bx+9]
		push	word [bp-2]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		push	word [bx+1]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	cx,ax
		mov	ax,cx
		cwd
		mov	si,ax
		mov	bx,dx
		mov	ax,cx
		cwd
		mov	si,ax
		mov	bx,dx
		mov	dx,si
		mov	ax,bx
		mov	cl,15
		sar	ax,cl
		mov	dx,ax
		push	ax
		push	dx
		push	bx
		push	si
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20075
..@j20084:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,13
		je	..@j20232
		jmp	..@j20233
..@j20232:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word TC_$CLASSES$_$TREADER_$_READPROPVALUE$TPERSISTENT$POINTER_$$_NULLMETHOD
		push	ax
		call	TYPINFO_$$_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD
		jmp	..@j20244
..@j20233:
		mov	byte [bp-13],0
		push	word [bp+8]
		lea	ax,[bp-8]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
		mov	bx,word [bp+8]
		cmp	word [bx+23],0
		jne	..@j20251
		jmp	..@j20252
..@j20251:
		mov	bx,word [bp+8]
		push	word [bx+25]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-8]
		lea	ax,[bp-13]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+23]
		call	ax
..@j20252:
		cmp	byte [bp-13],0
		je	..@j20265
		jmp	..@j20266
..@j20265:
		push	word [bp+8]
		mov	bx,word [bp+8]
		push	word [bx+2]
		push	word [bp-8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	word [bp-12],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		cmp	word [bp-12],0
		jne	..@j20277
		jmp	..@j20278
..@j20277:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-12]
		push	ax
		call	TYPINFO_$$_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD
..@j20278:
..@j20266:
..@j20244:
		jmp	..@j20075
..@j20085:
		lea	ax,[bp-16]
		push	ax
		push	word [bp+8]
		lea	ax,[bp-32]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
		push	word [bp-32]
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		cmp	word [bx+58],0
		jne	..@j20293
		jmp	..@j20294
..@j20293:
		mov	bx,word [bp+8]
		push	word [bx+60]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+58]
		call	ax
..@j20294:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-16]
		call	TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
		jmp	..@j20075
..@j20086:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		lea	ax,[bp-34]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
		push	word [bp-34]
		call	TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
		jmp	..@j20075
..@j20087:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		lea	ax,[bp-36]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READWIDESTRING$$WIDESTRING
		push	word [bp-36]
		call	TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
		jmp	..@j20075
..@j20088:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		lea	ax,[bp-52]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READVARIANT$$VARIANT
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-52]
		cld
		mov	cx,8
		rep
		movsw
		call	TYPINFO_$$_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
		jmp	..@j20075
..@j20089:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	dx,dx
		jne	..@j20347
		cmp	ax,13
		je	..@j20343
..@j20347:
		test	dx,dx
		jne	..@j20348
		cmp	ax,14
		je	..@j20344
..@j20348:
		jmp	..@j20342
..@j20343:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20341
..@j20344:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		push	ax
		call	CLASSES$_$TREADER_$__$$_READCOLLECTION$TCOLLECTION
		jmp	..@j20341
..@j20342:
		mov	bx,word [bp+8]
		cmp	word [bx+15],0
		je	..@j20367
		jmp	..@j20368
..@j20367:
		mov	ax,word VMT_$CLASSES_$$_TLINKEDLIST
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TLOCALUNRESOLVEDREFERENCE
		push	ax
		mov	bx,word VMT_$CLASSES_$$_TLINKEDLIST
		mov	ax,word [bx+50]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx+15],ax
..@j20368:
		mov	bx,word [bp+8]
		push	word [bx+15]
		call	CLASSES$_$TLINKEDLIST_$__$$_ADD$$TLINKEDLISTITEM
		mov	word [bp-62],ax
		mov	ax,word [bp-62]
		mov	word [bp-60],ax
		mov	ax,word [bp+6]
		mov	bx,word [bp-60]
		mov	word [bx+12],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		mov	bx,word [bp-60]
		mov	word [bx+4],ax
		mov	ax,word [bp+4]
		mov	bx,word [bp-60]
		mov	word [bx+6],ax
		mov	bx,word [bp-60]
		lea	ax,[bx+10]
		push	ax
		push	word [bp+8]
		lea	ax,[bp-32]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
		push	word [bp-32]
		call	fpc_ansistr_assign
..@j20341:
		jmp	..@j20075
..@j20090:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+8]
		call	CLASSES$_$TREADER_$__$$_READINT64$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		call	TYPINFO_$$_SETINT64PROP$TOBJECT$PPROPINFO$INT64
		jmp	..@j20075
..@j20076:
..@j20405:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SUNKNOWNPROPERTYTYPE+2]
		mov	bx,word [bp-2]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-56],dx
		mov	word [bp-54],ax
		mov	word [bp-58],0
		lea	ax,[bp-58]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j20405
		push	ax
		push	bp
		call	fpc_raiseexception
..@j20075:
..@j20056:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-52]
		push	ax
		call	fpc_variant_clear
		lea	ax,[bp-36]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-34]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j20057
		call	FPC_RERAISE
..@j20057:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_variant_clear
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SUNKNOWNPROPERTYTYPE
EXTERN	TYPINFO_$$_SETINT64PROP$TOBJECT$PPROPINFO$INT64
EXTERN	CLASSES$_$TREADER_$__$$_READINT64$$INT64
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_ADD$$TLINKEDLISTITEM
EXTERN	VMT_$CLASSES_$$_TLOCALUNRESOLVEDREFERENCE
EXTERN	VMT_$CLASSES_$$_TLINKEDLIST
EXTERN	CLASSES$_$TREADER_$__$$_READCOLLECTION$TCOLLECTION
EXTERN	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
EXTERN	TYPINFO_$$_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READVARIANT$$VARIANT
EXTERN	TYPINFO_$$_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
EXTERN	CLASSES$_$TREADER_$__$$_READWIDESTRING$$WIDESTRING
EXTERN	TYPINFO_$$_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
EXTERN	CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
EXTERN	TYPINFO_$$_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
EXTERN	TYPINFO_$$_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD
EXTERN	TC_$CLASSES$_$TREADER_$_READPROPVALUE$TPERSISTENT$POINTER_$$_NULLMETHOD
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	CLASSES$_$TREADER_$__$$_CHECKVALUE$TVALUETYPE
EXTERN	TYPINFO_$$_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
EXTERN	CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
EXTERN	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
EXTERN	CLASSES$_$TREADER_$__$$_READWIDECHAR$$WIDECHAR
EXTERN	CLASSES$_$TREADER_$__$$_READCHAR$$CHAR
EXTERN	CLASSES$_$TREADER_$__$$_READBOOLEAN$$BOOLEAN
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
EXTERN	CLASSES_$$_GLOBALIDENTTOINT$ANSISTRING$LONGINT$$BOOLEAN
EXTERN	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SREADONLYPROPERTY
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_variant_init
