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
	GLOBAL TC_$VARUTILS_$$_VARTYPESTRINGS
TC_$VARUTILS_$$_VARTYPESTRINGS	DB	5
		DB	"empty"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                          "
	DB	4
		DB	"null"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                           "
	DB	8
		DB	"smallint"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                       "
	DB	7
		DB	"integer"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                        "
	DB	6
		DB	"single"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                         "
	DB	6
		DB	"double"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                         "
	DB	8
		DB	"currency"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                       "
	DB	4
		DB	"date"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                           "
	DB	6
		DB	"olestr"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                         "
	DB	8
		DB	"dispatch"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                       "
	DB	5
		DB	"error"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                          "
	DB	7
		DB	"boolean"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                        "
	DB	7
		DB	"variant"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                        "
	DB	7
		DB	"unknown"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                        "
	DB	7
		DB	"decimal"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                        "
	DB	9
		DB	"undefined"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                      "
	DB	8
		DB	"shortint"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                       "
	DB	4
		DB	"byte"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                           "
	DB	4
		DB	"word"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                           "
	DB	8
		DB	"longword"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                       "
	DB	5
		DB	"int64"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                          "
	DB	5
		DB	"qword"
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                                "
		DB	"                                                          "
