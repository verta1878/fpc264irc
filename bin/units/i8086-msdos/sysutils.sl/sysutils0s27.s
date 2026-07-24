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
	GLOBAL SYSUTILS_$$_EXPANDFILENAMECASE$RAWBYTESTRING$TFILENAMECASEMATCH$$RAWBYTESTRING
SYSUTILS_$$_EXPANDFILENAMECASE$RAWBYTESTRING$TFILENAMECASEMATCH$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,48
		lea	ax,[bp-24]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_initialize
		mov	word [bp-28],0
		mov	word [bp-32],0
		mov	word [bp-48],0
		mov	ax,1
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-38]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1175
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_EXPANDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		cmp	word [bp+6],0
		je	..@j1181
		jmp	..@j1182
..@j1181:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		jmp	..@j1185
..@j1182:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,511
		push	ax
		lea	ax,[bp-24]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_finalize
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
		cmp	dx,0
		jne	..@j1188
		cmp	ax,0
		jne	..@j1188
		jmp	..@j1186
..@j1188:
		push	word [bp+6]
		call	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
		test	al,al
		jne	..@j1186
		jmp	..@j1187
..@j1186:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-48]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-48]
		push	word [bp-8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
		jmp	..@j1213
..@j1187:
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		cmp	byte [TC_$SYSTEM_$$_FILENAMECASESENSITIVE],0
		jne	..@j1218
		jmp	..@j1219
..@j1218:
		mov	byte [bp-25],0
		lea	ax,[bp-28]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		lea	ax,[bp-48]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
		mov	bx,word [bp-48]
		test	bx,bx
		je	..@j1232
		mov	bx,word [bx-2]
..@j1232:
		inc	bx
		mov	word [bp-30],bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1235
		mov	bx,word [bx-2]
..@j1235:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp-30]
		mov	dx,0
		cmp	ax,dx
		jg	..@j1233
		jl	..@j1234
		cmp	cx,bx
		ja	..@j1233
		jmp	..@j1234
..@j1233:
		jmp	..@j1237
	ALIGN 2
..@j1236:
		inc	word [bp-30]
..@j1237:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1240
		mov	bx,word [bx-2]
..@j1240:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp-30]
		mov	dx,0
		cmp	ax,dx
		jg	..@j1239
		jl	..@j1238
		cmp	cx,bx
		jae	..@j1239
		jmp	..@j1238
..@j1239:
		mov	bx,word [bp+6]
		mov	si,word [bp-30]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1245
		test	al,0
		jmp	..@j1246
..@j1245:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1246:
		mov	al,0
		je	..@j1247
		inc	ax
..@j1247:
		test	al,al
		jne	..@j1236
		jmp	..@j1238
..@j1238:
		lea	ax,[bp-32]
		push	ax
		push	word [bp+6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-30]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	bp
		push	word [bp-32]
		lea	ax,[bp-48]
		push	ax
		push	word [bp+6]
		push	word [bp-30]
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1270
		mov	bx,word [bx-2]
..@j1270:
		mov	si,word [bp-32]
		test	si,si
		je	..@j1271
		mov	si,word [si-2]
..@j1271:
		sub	bx,si
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-48]
		call	SYSUTILS$_$EXPANDFILENAMECASE$crc10CB95C2_$$_TRYCASE$RAWBYTESTRING$RAWBYTESTRING
		cmp	byte [bp-25],0
		ja	..@j1272
		jmp	..@j1273
..@j1272:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-48]
		push	ax
		push	word [bp-28]
		call	SYSUTILS_$$_EXPANDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-48]
		call	fpc_ansistr_assign
		cmp	byte [bp-25],1
		je	..@j1282
		jmp	..@j1283
..@j1282:
		mov	bx,word [bp+4]
		mov	word [bx],2
		mov	word [bx+2],0
		jmp	..@j1286
..@j1283:
		mov	bx,word [bp+4]
		mov	word [bx],3
		mov	word [bx+2],0
..@j1286:
..@j1273:
..@j1234:
..@j1219:
..@j1213:
..@j1185:
..@j1175:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-48]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_finalize
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1176
		call	FPC_RERAISE
..@j1176:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS$_$EXPANDFILENAMECASE$crc10CB95C2_$$_TRYCASE$RAWBYTESTRING$RAWBYTESTRING
EXTERN	fpc_ansistr_copy
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	fpc_ansistr_assign
EXTERN	TC_$SYSTEM_$$_FILENAMECASESENSITIVE
EXTERN	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
EXTERN	fpc_finalize
EXTERN	SYSUTILS_$$_EXPANDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_initialize
EXTERN	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
