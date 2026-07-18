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
	GLOBAL TC_$KEYBOARD_$$_SKEYPAD
TC_$KEYBOARD_$$_SKEYPAD	DB	4
		DB	"Home"
		DB	"  "
	DB	2
		DB	"Up"
		DB	"    "
	DB	4
		DB	"PgUp"
		DB	"  "
	DB	4
		DB	"Left"
		DB	"  "
	DB	6
		DB	"Middle"

	DB	5
		DB	"Right"
		DB	" "
	DB	3
		DB	"End"
		DB	"   "
	DB	4
		DB	"Down"
		DB	"  "
	DB	4
		DB	"PgDn"
		DB	"  "
	DB	6
		DB	"Insert"

	DB	6
		DB	"Delete"

	DB	0

		DB	"      "
	DB	0

		DB	"      "
	DB	0

		DB	"      "
	DB	0

		DB	"      "
	DB	0

		DB	"      "
