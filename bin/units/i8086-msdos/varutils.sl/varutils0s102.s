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

SECTION data class=data
	ALIGN 2
	GLOBAL TC_$VARUTILS_$$_CVARTYPETOELEMENTINFO
TC_$VARUTILS_$$_CVARTYPETOELEMENTINFO	DB	1,1
	DD	0
	DW	0
	DB	1,1
	DD	0
	DW	0
	DB	1,1
	DD	2
	DW	0
	DB	1,1
	DD	4
	DW	0
	DB	1,1
	DD	4
	DW	0
	DB	1,1
	DD	8
	DW	0
	DB	1,1
	DD	8
	DW	0
	DB	1,1
	DD	8
	DW	0
	DB	1,1
	DD	4
	DW	256
	DB	1,1
	DD	4
	DW	1024
	DB	1,1
	DD	4
	DW	0
	DB	1,1
	DD	2
	DW	0
	DB	1,1
	DD	16
	DW	0
	DB	1,1
	DD	4
	DW	2048
	DB	0,1
	DD	14
	DW	512
	DB	0,0
	DD	4
	DW	0
	DB	1,1
	DD	1
	DW	0
	DB	1,1
	DD	1
	DW	0
	DB	1,1
	DD	2
	DW	0
	DB	1,1
	DD	4
	DW	0
	DB	1,1
	DD	8
	DW	0
	DB	1,1
	DD	8
	DW	0
