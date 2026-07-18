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
	GLOBAL MATH_$$_ISNAN$DOUBLE$$BOOLEAN
MATH_$$_ISNAN$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	ax,dx
		mov	dx,0
		mov	cl,4
		shr	ax,cl
		and	ax,2047
		mov	dx,0
		cmp	dx,0
		jne	..@j2020
		cmp	ax,2047
		jne	..@j2020
		jmp	..@j2019
..@j2019:
		mov	byte [bp-3],1
		jmp	..@j2021
..@j2020:
		mov	byte [bp-3],0
..@j2021:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		and	dx,15
		cmp	dx,0
		jne	..@j2023
		cmp	ax,0
		jne	..@j2023
		jmp	..@j2024
..@j2024:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jne	..@j2023
		cmp	dx,0
		jne	..@j2023
		jmp	..@j2022
..@j2022:
		mov	byte [bp-2],1
		jmp	..@j2025
..@j2023:
		mov	byte [bp-2],0
..@j2025:
		cmp	byte [bp-3],0
		jne	..@j2028
		jmp	..@j2027
..@j2028:
		cmp	byte [bp-2],0
		je	..@j2026
		jmp	..@j2027
..@j2026:
		mov	byte [bp-1],1
		jmp	..@j2029
..@j2027:
		mov	byte [bp-1],0
..@j2029:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
