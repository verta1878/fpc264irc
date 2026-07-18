# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_CFDICTIONARY
_THREADVARLIST_CFDICTIONARY:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYRETAINCALLBACK
_INIT_CFDICTIONARY_CFDICTIONARYRETAINCALLBACK:
	.byte	23,26
	.ascii	"CFDictionaryRetainCallBack"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYRETAINCALLBACK
_RTTI_CFDICTIONARY_CFDICTIONARYRETAINCALLBACK:
	.byte	23,26
	.ascii	"CFDictionaryRetainCallBack"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYRELEASECALLBACK
_INIT_CFDICTIONARY_CFDICTIONARYRELEASECALLBACK:
	.byte	23,27
	.ascii	"CFDictionaryReleaseCallBack"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYRELEASECALLBACK
_RTTI_CFDICTIONARY_CFDICTIONARYRELEASECALLBACK:
	.byte	23,27
	.ascii	"CFDictionaryReleaseCallBack"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYCOPYDESCRIPTIONCALLBACK
_INIT_CFDICTIONARY_CFDICTIONARYCOPYDESCRIPTIONCALLBACK:
	.byte	23,35
	.ascii	"CFDictionaryCopyDescriptionCallBack"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYCOPYDESCRIPTIONCALLBACK
_RTTI_CFDICTIONARY_CFDICTIONARYCOPYDESCRIPTIONCALLBACK:
	.byte	23,35
	.ascii	"CFDictionaryCopyDescriptionCallBack"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYEQUALCALLBACK
_INIT_CFDICTIONARY_CFDICTIONARYEQUALCALLBACK:
	.byte	23,25
	.ascii	"CFDictionaryEqualCallBack"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYEQUALCALLBACK
_RTTI_CFDICTIONARY_CFDICTIONARYEQUALCALLBACK:
	.byte	23,25
	.ascii	"CFDictionaryEqualCallBack"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYHASHCALLBACK
_INIT_CFDICTIONARY_CFDICTIONARYHASHCALLBACK:
	.byte	23,24
	.ascii	"CFDictionaryHashCallBack"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYHASHCALLBACK
_RTTI_CFDICTIONARY_CFDICTIONARYHASHCALLBACK:
	.byte	23,24
	.ascii	"CFDictionaryHashCallBack"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYKEYCALLBACKS
_INIT_CFDICTIONARY_CFDICTIONARYKEYCALLBACKS:
	.byte	13,24
	.ascii	"CFDictionaryKeyCallBacks"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYKEYCALLBACKS
_RTTI_CFDICTIONARY_CFDICTIONARYKEYCALLBACKS:
	.byte	13,24
	.ascii	"CFDictionaryKeyCallBacks"
	.long	24,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYRETAINCALLBACK
	.long	4
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYRELEASECALLBACK
	.long	8
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYCOPYDESCRIPTIONCALLBACK
	.long	12
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYEQUALCALLBACK
	.long	16
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYHASHCALLBACK
	.long	20

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYKEYCALLBACKSPTR
_INIT_CFDICTIONARY_CFDICTIONARYKEYCALLBACKSPTR:
	.byte	0
	.ascii	"\033CFDictionaryKeyCallBacksPtr"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYKEYCALLBACKSPTR
_RTTI_CFDICTIONARY_CFDICTIONARYKEYCALLBACKSPTR:
	.byte	0
	.ascii	"\033CFDictionaryKeyCallBacksPtr"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYVALUECALLBACKS
_INIT_CFDICTIONARY_CFDICTIONARYVALUECALLBACKS:
	.byte	13,26
	.ascii	"CFDictionaryValueCallBacks"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYVALUECALLBACKS
_RTTI_CFDICTIONARY_CFDICTIONARYVALUECALLBACKS:
	.byte	13,26
	.ascii	"CFDictionaryValueCallBacks"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYRETAINCALLBACK
	.long	4
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYRELEASECALLBACK
	.long	8
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYCOPYDESCRIPTIONCALLBACK
	.long	12
	.long	_RTTI_CFDICTIONARY_CFDICTIONARYEQUALCALLBACK
	.long	16

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYVALUECALLBACKSPTR
_INIT_CFDICTIONARY_CFDICTIONARYVALUECALLBACKSPTR:
	.byte	0
	.ascii	"\035CFDictionaryValueCallBacksPtr"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYVALUECALLBACKSPTR
_RTTI_CFDICTIONARY_CFDICTIONARYVALUECALLBACKSPTR:
	.byte	0
	.ascii	"\035CFDictionaryValueCallBacksPtr"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYAPPLIERFUNCTION
_INIT_CFDICTIONARY_CFDICTIONARYAPPLIERFUNCTION:
	.byte	23,27
	.ascii	"CFDictionaryApplierFunction"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYAPPLIERFUNCTION
_RTTI_CFDICTIONARY_CFDICTIONARYAPPLIERFUNCTION:
	.byte	23,27
	.ascii	"CFDictionaryApplierFunction"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYREF
_INIT_CFDICTIONARY_CFDICTIONARYREF:
	.byte	0
	.ascii	"\017CFDictionaryRef"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYREF
_RTTI_CFDICTIONARY_CFDICTIONARYREF:
	.byte	0
	.ascii	"\017CFDictionaryRef"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFDICTIONARYREFPTR
_INIT_CFDICTIONARY_CFDICTIONARYREFPTR:
	.byte	0
	.ascii	"\022CFDictionaryRefPtr"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFDICTIONARYREFPTR
_RTTI_CFDICTIONARY_CFDICTIONARYREFPTR:
	.byte	0
	.ascii	"\022CFDictionaryRefPtr"

.const_data
	.align 2
.globl	_INIT_CFDICTIONARY_CFMUTABLEDICTIONARYREFPTR
_INIT_CFDICTIONARY_CFMUTABLEDICTIONARYREFPTR:
	.byte	0
	.ascii	"\031CFMutableDictionaryRefPtr"

.const_data
	.align 2
.globl	_RTTI_CFDICTIONARY_CFMUTABLEDICTIONARYREFPTR
_RTTI_CFDICTIONARY_CFMUTABLEDICTIONARYREFPTR:
	.byte	0
	.ascii	"\031CFMutableDictionaryRefPtr"
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

