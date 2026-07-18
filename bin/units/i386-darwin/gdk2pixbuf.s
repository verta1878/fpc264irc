# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD
_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pixbuf_loader_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF_LOADER$POINTER$$PGDKPIXBUFLOADER
_GDK2PIXBUF_GDK_PIXBUF_LOADER$POINTER$$PGDKPIXBUFLOADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF_LOADER_CLASS$POINTER$$PGDKPIXBUFLOADERCLASS
_GDK2PIXBUF_GDK_PIXBUF_LOADER_CLASS$POINTER$$PGDKPIXBUFLOADERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_IS_PIXBUF_LOADER$POINTER$$BOOLEAN
_GDK2PIXBUF_GDK_IS_PIXBUF_LOADER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_IS_PIXBUF_LOADER_CLASS$POINTER$$BOOLEAN
_GDK2PIXBUF_GDK_IS_PIXBUF_LOADER_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF_LOADER_GET_CLASS$POINTER$$PGDKPIXBUFLOADERCLASS
_GDK2PIXBUF_GDK_PIXBUF_LOADER_GET_CLASS$POINTER$$PGDKPIXBUFLOADERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_CHECKUNUSEDVARIABLE
_GDK2PIXBUF_CHECKUNUSEDVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	call	Lj48
Lj48:
	popl	%edx
	movl	L_gdk_pixbuf_major_version$non_lazy_ptr-Lj48(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj53
	jmp	Lj50
Lj53:
	movl	L_gdk_pixbuf_minor_version$non_lazy_ptr-Lj48(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj52
	jmp	Lj50
Lj52:
	movl	L_gdk_pixbuf_micro_version$non_lazy_ptr-Lj48(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj51
	jmp	Lj50
Lj51:
	movl	L_gdk_pixbuf_version$non_lazy_ptr-Lj48(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj49
	jmp	Lj50
Lj49:
Lj50:
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_TYPE_PIXBUF$$LONGWORD
_GDK2PIXBUF_GDK_TYPE_PIXBUF$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pixbuf_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF$POINTER$$POINTER
_GDK2PIXBUF_GDK_PIXBUF$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_IS_PIXBUF$POINTER$$BOOLEAN
_GDK2PIXBUF_GDK_IS_PIXBUF$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION$$LONGWORD
_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pixbuf_animation_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF_ANIMATION$POINTER$$POINTER
_GDK2PIXBUF_GDK_PIXBUF_ANIMATION$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_IS_PIXBUF_ANIMATION$POINTER$$BOOLEAN
_GDK2PIXBUF_GDK_IS_PIXBUF_ANIMATION$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION_ITER$$LONGWORD
_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION_ITER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pixbuf_animation_iter_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF_ANIMATION_ITER$POINTER$$POINTER
_GDK2PIXBUF_GDK_PIXBUF_ANIMATION_ITER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION_ITER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_IS_PIXBUF_ANIMATION_ITER$POINTER$$BOOLEAN
_GDK2PIXBUF_GDK_IS_PIXBUF_ANIMATION_ITER$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION_ITER$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GDK2PIXBUF_GDK_PIXBUF_ERROR$$LONGWORD
_GDK2PIXBUF_GDK_PIXBUF_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_gdk_pixbuf_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_GDK2PIXBUF
_THREADVARLIST_GDK2PIXBUF:
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pixbuf_loader_get_type$stub:
.indirect_symbol _gdk_pixbuf_loader_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD$stub:
.indirect_symbol _GDK2PIXBUF_GDK_TYPE_PIXBUF_LOADER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub:
.indirect_symbol _GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pixbuf_get_type$stub:
.indirect_symbol _gdk_pixbuf_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2PIXBUF_GDK_TYPE_PIXBUF$$LONGWORD$stub:
.indirect_symbol _GDK2PIXBUF_GDK_TYPE_PIXBUF$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pixbuf_animation_get_type$stub:
.indirect_symbol _gdk_pixbuf_animation_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION$$LONGWORD$stub:
.indirect_symbol _GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pixbuf_animation_iter_get_type$stub:
.indirect_symbol _gdk_pixbuf_animation_iter_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION_ITER$$LONGWORD$stub:
.indirect_symbol _GDK2PIXBUF_GDK_TYPE_PIXBUF_ANIMATION_ITER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_gdk_pixbuf_error_quark$stub:
.indirect_symbol _gdk_pixbuf_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_PGDKPIXBUFALPHAMODE
_INIT_GDK2PIXBUF_PGDKPIXBUFALPHAMODE:
	.byte	0
	.ascii	"\023PGdkPixbufAlphaMode"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_PGDKPIXBUFALPHAMODE
_RTTI_GDK2PIXBUF_PGDKPIXBUFALPHAMODE:
	.byte	0
	.ascii	"\023PGdkPixbufAlphaMode"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKPIXBUFALPHAMODE
_INIT_GDK2PIXBUF_TGDKPIXBUFALPHAMODE:
	.byte	3,19
	.ascii	"TGdkPixbufAlphaMode"
	.byte	5
	.long	0,1,0
	.byte	24
	.ascii	"GDK_PIXBUF_ALPHA_BILEVEL"
	.byte	21
	.ascii	"GDK_PIXBUF_ALPHA_FULL"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE
_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE:
	.byte	3,19
	.ascii	"TGdkPixbufAlphaMode"
	.byte	5
	.long	0,1,0
	.byte	24
	.ascii	"GDK_PIXBUF_ALPHA_BILEVEL"
	.byte	21
	.ascii	"GDK_PIXBUF_ALPHA_FULL"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE_s2o
_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE_s2o:
	.long	2,0
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE+34
	.long	1
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE+59

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE_o2s
_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE_o2s:
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE+34
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFALPHAMODE+59

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_PGDKCOLORSPACE
_INIT_GDK2PIXBUF_PGDKCOLORSPACE:
	.byte	0
	.ascii	"\016PGdkColorspace"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_PGDKCOLORSPACE
_RTTI_GDK2PIXBUF_PGDKCOLORSPACE:
	.byte	0
	.ascii	"\016PGdkColorspace"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKCOLORSPACE
_INIT_GDK2PIXBUF_TGDKCOLORSPACE:
	.byte	3,14
	.ascii	"TGdkColorspace"
	.byte	5
	.long	0,0,0
	.byte	18
	.ascii	"GDK_COLORSPACE_RGB"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKCOLORSPACE
_RTTI_GDK2PIXBUF_TGDKCOLORSPACE:
	.byte	3,14
	.ascii	"TGdkColorspace"
	.byte	5
	.long	0,0,0
	.byte	18
	.ascii	"GDK_COLORSPACE_RGB"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKCOLORSPACE_s2o
_RTTI_GDK2PIXBUF_TGDKCOLORSPACE_s2o:
	.long	1,0
	.long	_RTTI_GDK2PIXBUF_TGDKCOLORSPACE+29

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKCOLORSPACE_o2s
_RTTI_GDK2PIXBUF_TGDKCOLORSPACE_o2s:
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKCOLORSPACE+29

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKPIXBUFDESTROYNOTIFY
_INIT_GDK2PIXBUF_TGDKPIXBUFDESTROYNOTIFY:
	.byte	23,23
	.ascii	"TGdkPixbufDestroyNotify"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFDESTROYNOTIFY
_RTTI_GDK2PIXBUF_TGDKPIXBUFDESTROYNOTIFY:
	.byte	23,23
	.ascii	"TGdkPixbufDestroyNotify"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_PGDKPIXBUFERROR
_INIT_GDK2PIXBUF_PGDKPIXBUFERROR:
	.byte	0
	.ascii	"\017PGdkPixbufError"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_PGDKPIXBUFERROR
_RTTI_GDK2PIXBUF_PGDKPIXBUFERROR:
	.byte	0
	.ascii	"\017PGdkPixbufError"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKPIXBUFERROR
_INIT_GDK2PIXBUF_TGDKPIXBUFERROR:
	.byte	3,15
	.ascii	"TGdkPixbufError"
	.byte	5
	.long	0,5,0
	.byte	30
	.ascii	"GDK_PIXBUF_ERROR_CORRUPT_IMAGE"
	.byte	36
	.ascii	"GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY"
	.byte	27
	.ascii	"GDK_PIXBUF_ERROR_BAD_OPTION"
	.byte	29
	.ascii	"GDK_PIXBUF_ERROR_UNKNOWN_TYPE"
	.byte	38
	.ascii	"GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION"
	.byte	23
	.ascii	"GDK_PIXBUF_ERROR_FAILED"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR
_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR:
	.byte	3,15
	.ascii	"TGdkPixbufError"
	.byte	5
	.long	0,5,0
	.byte	30
	.ascii	"GDK_PIXBUF_ERROR_CORRUPT_IMAGE"
	.byte	36
	.ascii	"GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY"
	.byte	27
	.ascii	"GDK_PIXBUF_ERROR_BAD_OPTION"
	.byte	29
	.ascii	"GDK_PIXBUF_ERROR_UNKNOWN_TYPE"
	.byte	38
	.ascii	"GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION"
	.byte	23
	.ascii	"GDK_PIXBUF_ERROR_FAILED"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR_s2o
_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR_s2o:
	.long	6,2
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+98
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+30
	.long	5
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+195
	.long	1
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+61
	.long	3
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+126
	.long	4
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+156

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR_o2s
_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR_o2s:
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+30
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+61
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+98
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+126
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+156
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFERROR+195

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_PGDKINTERPTYPE
_INIT_GDK2PIXBUF_PGDKINTERPTYPE:
	.byte	0
	.ascii	"\016PGdkInterpType"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_PGDKINTERPTYPE
_RTTI_GDK2PIXBUF_PGDKINTERPTYPE:
	.byte	0
	.ascii	"\016PGdkInterpType"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKINTERPTYPE
_INIT_GDK2PIXBUF_TGDKINTERPTYPE:
	.byte	3,14
	.ascii	"TGdkInterpType"
	.byte	5
	.long	0,3,0
	.byte	18
	.ascii	"GDK_INTERP_NEAREST"
	.byte	16
	.ascii	"GDK_INTERP_TILES"
	.byte	19
	.ascii	"GDK_INTERP_BILINEAR"
	.byte	16
	.ascii	"GDK_INTERP_HYPER"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE
_RTTI_GDK2PIXBUF_TGDKINTERPTYPE:
	.byte	3,14
	.ascii	"TGdkInterpType"
	.byte	5
	.long	0,3,0
	.byte	18
	.ascii	"GDK_INTERP_NEAREST"
	.byte	16
	.ascii	"GDK_INTERP_TILES"
	.byte	19
	.ascii	"GDK_INTERP_BILINEAR"
	.byte	16
	.ascii	"GDK_INTERP_HYPER"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE_s2o
_RTTI_GDK2PIXBUF_TGDKINTERPTYPE_s2o:
	.long	4,2
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+65
	.long	3
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+85
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+29
	.long	1
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+48

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE_o2s
_RTTI_GDK2PIXBUF_TGDKINTERPTYPE_o2s:
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+29
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+48
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+65
	.long	_RTTI_GDK2PIXBUF_TGDKINTERPTYPE+85

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKPIXBUFROTATION
_INIT_GDK2PIXBUF_TGDKPIXBUFROTATION:
	.byte	3,18
	.ascii	"TGdkPixbufRotation"
	.byte	5
	.long	0,270,0
	.byte	22
	.ascii	"GDK_PIXBUF_ROTATE_NONE"
	.byte	34
	.ascii	"GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE"
	.byte	28
	.ascii	"GDK_PIXBUF_ROTATE_UPSIDEDOWN"
	.byte	27
	.ascii	"GDK_PIXBUF_ROTATE_CLOCKWISE"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION
_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION:
	.byte	3,18
	.ascii	"TGdkPixbufRotation"
	.byte	5
	.long	0,270,0
	.byte	22
	.ascii	"GDK_PIXBUF_ROTATE_NONE"
	.byte	34
	.ascii	"GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE"
	.byte	28
	.ascii	"GDK_PIXBUF_ROTATE_UPSIDEDOWN"
	.byte	27
	.ascii	"GDK_PIXBUF_ROTATE_CLOCKWISE"
	.byte	10
	.ascii	"gdk2pixbuf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION_s2o
_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION_s2o:
	.long	4,270
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+120
	.long	90
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+56
	.long	0
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+33
	.long	180
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+91

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION_o2s
_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION_o2s:
	.long	1,4,0
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+33
	.long	90
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+56
	.long	180
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+91
	.long	270
	.long	_RTTI_GDK2PIXBUF_TGDKPIXBUFROTATION+120

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_PGDKPIXBUFLOADER
_INIT_GDK2PIXBUF_PGDKPIXBUFLOADER:
	.byte	0
	.ascii	"\020PGdkPixbufLoader"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_PGDKPIXBUFLOADER
_RTTI_GDK2PIXBUF_PGDKPIXBUFLOADER:
	.byte	0
	.ascii	"\020PGdkPixbufLoader"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKPIXBUFLOADER
_INIT_GDK2PIXBUF_TGDKPIXBUFLOADER:
	.byte	13,16
	.ascii	"TGdkPixbufLoader"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFLOADER
_RTTI_GDK2PIXBUF_TGDKPIXBUFLOADER:
	.byte	13,16
	.ascii	"TGdkPixbufLoader"
	.long	16,2
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	12

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_PGDKPIXBUFLOADERCLASS
_INIT_GDK2PIXBUF_PGDKPIXBUFLOADERCLASS:
	.byte	0
	.ascii	"\025PGdkPixbufLoaderClass"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_PGDKPIXBUFLOADERCLASS
_RTTI_GDK2PIXBUF_PGDKPIXBUFLOADERCLASS:
	.byte	0
	.ascii	"\025PGdkPixbufLoaderClass"

.const_data
	.align 2
.globl	_INIT_GDK2PIXBUF_TGDKPIXBUFLOADERCLASS
_INIT_GDK2PIXBUF_TGDKPIXBUFLOADERCLASS:
	.byte	13,21
	.ascii	"TGdkPixbufLoaderClass"
	.long	80,0

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_DEF126
_RTTI_GDK2PIXBUF_DEF126:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_DEF127
_RTTI_GDK2PIXBUF_DEF127:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_DEF128
_RTTI_GDK2PIXBUF_DEF128:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GDK2PIXBUF_TGDKPIXBUFLOADERCLASS
_RTTI_GDK2PIXBUF_TGDKPIXBUFLOADERCLASS:
	.byte	13,21
	.ascii	"TGdkPixbufLoaderClass"
	.long	80,4
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_GDK2PIXBUF_DEF126
	.long	68
	.long	_RTTI_GDK2PIXBUF_DEF127
	.long	72
	.long	_RTTI_GDK2PIXBUF_DEF128
	.long	76
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_gdk_pixbuf_major_version$non_lazy_ptr:
.indirect_symbol _gdk_pixbuf_major_version
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_gdk_pixbuf_minor_version$non_lazy_ptr:
.indirect_symbol _gdk_pixbuf_minor_version
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_gdk_pixbuf_micro_version$non_lazy_ptr:
.indirect_symbol _gdk_pixbuf_micro_version
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_gdk_pixbuf_version$non_lazy_ptr:
.indirect_symbol _gdk_pixbuf_version
	.long	0
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

