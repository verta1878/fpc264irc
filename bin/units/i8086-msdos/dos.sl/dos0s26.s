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
	GLOBAL DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_CDROM$$BOOLEAN
DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_CDROM$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	al,byte [bx+6]
		mov	ah,0
		dec	ax
		mov	byte [bp-35],al
		mov	word [U_$DOS_$$_DOSREGS],5387
		mov	al,byte [bp-35]
		mov	ah,0
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	ax,47
		push	ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_INTR
		cmp	word [U_$DOS_$$_DOSREGS+2],-21075
		jne	..@j1110
		jmp	..@j1112
..@j1112:
		cmp	word [U_$DOS_$$_DOSREGS],0
		je	..@j1110
		jmp	..@j1111
..@j1110:
		jmp	..@j1053
..@j1111:
		lea	ax,[bp-22]
		push	ax
		mov	ax,20
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
		mov	byte [bp-22],20
		mov	byte [bp-20],3
		lea	ax,[bp-26]
		mov	word [bp-8],ax
		mov	ax,ss
		mov	word [bp-6],ax
		mov	word [bp-4],4
		mov	byte [bp-26],7
		mov	byte [bp-25],0
		mov	word [bp-24],0
		mov	word [bp-34],1
		dec	word [bp-34]
	ALIGN 2
..@j1137:
		inc	word [bp-34]
		mov	word [U_$DOS_$$_DOSREGS],5392
		mov	al,byte [bp-35]
		mov	ah,0
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		lea	ax,[bp-22]
		mov	word [U_$DOS_$$_DOSREGS+2],ax
		mov	ax,47
		push	ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-19]
		and	ax,-32753
		cmp	ax,-32753
		jne	..@j1150
		jmp	..@j1151
..@j1150:
		jmp	..@j1136
..@j1151:
		cmp	word [bp-34],2
		jl	..@j1137
..@j1136:
		cmp	word [bp-19],256
		jne	..@j1152
		jmp	..@j1154
..@j1154:
		cmp	word [bp-4],4
		jne	..@j1152
		jmp	..@j1153
..@j1152:
		jmp	..@j1053
..@j1153:
		lea	ax,[bp-22]
		push	ax
		mov	ax,20
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
		mov	byte [bp-22],20
		mov	byte [bp-20],3
		lea	ax,[bp-31]
		mov	word [bp-8],ax
		mov	ax,ss
		mov	word [bp-6],ax
		mov	word [bp-4],5
		mov	byte [bp-31],8
		mov	word [bp-30],0
		mov	word [bp-28],0
		mov	word [U_$DOS_$$_DOSREGS],5392
		mov	al,byte [bp-35]
		mov	ah,0
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		lea	ax,[bp-22]
		mov	word [U_$DOS_$$_DOSREGS+2],ax
		mov	ax,47
		push	ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_INTR
		cmp	word [bp-19],256
		jne	..@j1187
		jmp	..@j1189
..@j1189:
		cmp	word [bp-4],5
		jne	..@j1187
		jmp	..@j1188
..@j1187:
		jmp	..@j1053
..@j1188:
		mov	dx,word [bp-24]
		mov	ax,0
		mov	bx,word [bp+4]
		mov	word [bx-12],dx
		mov	word [bx-10],ax
		mov	bx,word [bp+4]
		mov	word [bx-16],0
		mov	word [bx-14],0
		mov	bx,word [bp+4]
		mov	ax,word [bp-30]
		mov	word [bx-20],ax
		mov	ax,word [bp-28]
		mov	word [bx-18],ax
		mov	byte [bp-1],1
..@j1053:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
EXTERN	FPC_INTR
EXTERN	U_$DOS_$$_DOSREGS
