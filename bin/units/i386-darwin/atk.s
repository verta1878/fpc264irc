# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ATK_ATK_TYPE_OBJECT$$LONGWORD
_ATK_ATK_TYPE_OBJECT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_object_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_OBJECT$POINTER$$PATKOBJECT
_ATK_ATK_OBJECT$POINTER$$PATKOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_OBJECT_CLASS$POINTER$$PATKOBJECTCLASS
_ATK_ATK_OBJECT_CLASS$POINTER$$PATKOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_OBJECT$POINTER$$BOOLEAN
_ATK_ATK_IS_OBJECT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_OBJECT_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_OBJECT_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_OBJECT_GET_CLASS$POINTER$$PATKOBJECTCLASS
_ATK_ATK_OBJECT_GET_CLASS$POINTER$$PATKOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD
_ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_implementor_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_IMPLEMENTOR$POINTER$$BOOLEAN
_ATK_ATK_IS_IMPLEMENTOR$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IMPLEMENTOR$POINTER$$POINTER
_ATK_ATK_IMPLEMENTOR$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IMPLEMENTOR_GET_IFACE$POINTER$$PATKIMPLEMENTORIFACE
_ATK_ATK_IMPLEMENTOR_GET_IFACE$POINTER$$PATKIMPLEMENTORIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_ACTION$$LONGWORD
_ATK_ATK_TYPE_ACTION$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_action_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_ACTION$POINTER$$BOOLEAN
_ATK_ATK_IS_ACTION$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_ACTION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_ACTION$POINTER$$POINTER
_ATK_ATK_ACTION$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_ACTION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_ACTION_GET_IFACE$POINTER$$PATKACTIONIFACE
_ATK_ATK_ACTION_GET_IFACE$POINTER$$PATKACTIONIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_ACTION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_COMPONENT$$LONGWORD
_ATK_ATK_TYPE_COMPONENT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_component_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_COMPONENT$POINTER$$BOOLEAN
_ATK_ATK_IS_COMPONENT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_COMPONENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_COMPONENT$POINTER$$POINTER
_ATK_ATK_COMPONENT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_COMPONENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_COMPONENT_GET_IFACE$POINTER$$PATKCOMPONENTIFACE
_ATK_ATK_COMPONENT_GET_IFACE$POINTER$$PATKCOMPONENTIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_COMPONENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_DOCUMENT$$LONGWORD
_ATK_ATK_TYPE_DOCUMENT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_document_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_DOCUMENT$POINTER$$BOOLEAN
_ATK_ATK_IS_DOCUMENT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_DOCUMENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_DOCUMENT$POINTER$$POINTER
_ATK_ATK_DOCUMENT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_DOCUMENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_DOCUMENT_GET_IFACE$POINTER$$PATKDOCUMENTIFACE
_ATK_ATK_DOCUMENT_GET_IFACE$POINTER$$PATKDOCUMENTIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_DOCUMENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD
_ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_editable_text_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_EDITABLE_TEXT$POINTER$$BOOLEAN
_ATK_ATK_IS_EDITABLE_TEXT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_EDITABLE_TEXT$POINTER$$POINTER
_ATK_ATK_EDITABLE_TEXT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_EDITABLE_TEXT_GET_IFACE$POINTER$$PATKEDITABLETEXTIFACE
_ATK_ATK_EDITABLE_TEXT_GET_IFACE$POINTER$$PATKEDITABLETEXTIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD
_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_gobject_accessible_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_GOBJECT_ACCESSIBLE$POINTER$$PATKGOBJECTACCESSIBLE
_ATK_ATK_GOBJECT_ACCESSIBLE$POINTER$$PATKGOBJECTACCESSIBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_GOBJECT_ACCESSIBLE_CLASS$POINTER$$PATKGOBJECTACCESSIBLECLASS
_ATK_ATK_GOBJECT_ACCESSIBLE_CLASS$POINTER$$PATKGOBJECTACCESSIBLECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_GOBJECT_ACCESSIBLE$POINTER$$BOOLEAN
_ATK_ATK_IS_GOBJECT_ACCESSIBLE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_GOBJECT_ACCESSIBLE_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_GOBJECT_ACCESSIBLE_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_GOBJECT_ACCESSIBLE_GET_CLASS$POINTER$$PATKGOBJECTACCESSIBLECLASS
_ATK_ATK_GOBJECT_ACCESSIBLE_GET_CLASS$POINTER$$PATKGOBJECTACCESSIBLECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_HYPERLINK$$LONGWORD
_ATK_ATK_TYPE_HYPERLINK$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_hyperlink_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_HYPERLINK$POINTER$$PATKHYPERLINK
_ATK_ATK_HYPERLINK$POINTER$$PATKHYPERLINK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERLINK$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_HYPERLINK_CLASS$POINTER$$PATKHYPERLINKCLASS
_ATK_ATK_HYPERLINK_CLASS$POINTER$$PATKHYPERLINKCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERLINK$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_HYPERLINK$POINTER$$BOOLEAN
_ATK_ATK_IS_HYPERLINK$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERLINK$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_HYPERLINK_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_HYPERLINK_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERLINK$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_HYPERLINK_GET_CLASS$POINTER$$PATKHYPERLINKCLASS
_ATK_ATK_HYPERLINK_GET_CLASS$POINTER$$PATKHYPERLINKCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERLINK$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_HYPERTEXT$$LONGWORD
_ATK_ATK_TYPE_HYPERTEXT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_hypertext_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_HYPERTEXT$POINTER$$BOOLEAN
_ATK_ATK_IS_HYPERTEXT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_HYPERTEXT$POINTER$$POINTER
_ATK_ATK_HYPERTEXT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_HYPERTEXT_GET_IFACE$POINTER$$PATKHYPERTEXTIFACE
_ATK_ATK_HYPERTEXT_GET_IFACE$POINTER$$PATKHYPERTEXTIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_HYPERTEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_IMAGE$$LONGWORD
_ATK_ATK_TYPE_IMAGE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_image_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_IMAGE$POINTER$$BOOLEAN
_ATK_ATK_IS_IMAGE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IMAGE$POINTER$$POINTER
_ATK_ATK_IMAGE$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IMAGE_GET_IFACE$POINTER$$PATKIMAGEIFACE
_ATK_ATK_IMAGE_GET_IFACE$POINTER$$PATKIMAGEIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_IMAGE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD
_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_object_factory_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_OBJECT_FACTORY$POINTER$$PATKOBJECTFACTORY
_ATK_ATK_OBJECT_FACTORY$POINTER$$PATKOBJECTFACTORY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_OBJECT_FACTORY_CLASS$POINTER$$PATKOBJECTFACTORYCLASS
_ATK_ATK_OBJECT_FACTORY_CLASS$POINTER$$PATKOBJECTFACTORYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_OBJECT_FACTORY$POINTER$$BOOLEAN
_ATK_ATK_IS_OBJECT_FACTORY$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_OBJECT_FACTORY_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_OBJECT_FACTORY_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_OBJECT_FACTORY_GET_CLASS$POINTER$$PATKOBJECTFACTORYCLASS
_ATK_ATK_OBJECT_FACTORY_GET_CLASS$POINTER$$PATKOBJECTFACTORYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_REGISTRY$$LONGWORD
_ATK_ATK_TYPE_REGISTRY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_registry_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_REGISTRY$POINTER$$PATKREGISTRY
_ATK_ATK_REGISTRY$POINTER$$PATKREGISTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_REGISTRY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_REGISTRY_CLASS$POINTER$$PATKREGISTRYCLASS
_ATK_ATK_REGISTRY_CLASS$POINTER$$PATKREGISTRYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_REGISTRY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_REGISTRY$POINTER$$BOOLEAN
_ATK_ATK_IS_REGISTRY$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_REGISTRY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_REGISTRY_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_REGISTRY_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_REGISTRY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_REGISTRY_GET_CLASS$POINTER$$PATKREGISTRYCLASS
_ATK_ATK_REGISTRY_GET_CLASS$POINTER$$PATKREGISTRYCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_REGISTRY$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_RELATION$$LONGWORD
_ATK_ATK_TYPE_RELATION$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_relation_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_RELATION$POINTER$$PATKRELATION
_ATK_ATK_RELATION$POINTER$$PATKRELATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_RELATION_CLASS$POINTER$$PATKRELATIONCLASS
_ATK_ATK_RELATION_CLASS$POINTER$$PATKRELATIONCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_RELATION$POINTER$$BOOLEAN
_ATK_ATK_IS_RELATION$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_RELATION_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_RELATION_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_RELATION_GET_CLASS$POINTER$$PATKRELATIONCLASS
_ATK_ATK_RELATION_GET_CLASS$POINTER$$PATKRELATIONCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_RELATION_SET$$LONGWORD
_ATK_ATK_TYPE_RELATION_SET$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_relation_set_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_RELATION_SET$POINTER$$PATKRELATIONSET
_ATK_ATK_RELATION_SET$POINTER$$PATKRELATIONSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_RELATION_SET_CLASS$POINTER$$PATKRELATIONSETCLASS
_ATK_ATK_RELATION_SET_CLASS$POINTER$$PATKRELATIONSETCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_RELATION_SET$POINTER$$BOOLEAN
_ATK_ATK_IS_RELATION_SET$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_RELATION_SET_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_RELATION_SET_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_RELATION_SET_GET_CLASS$POINTER$$PATKRELATIONSETCLASS
_ATK_ATK_RELATION_SET_GET_CLASS$POINTER$$PATKRELATIONSETCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_RELATION_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_SELECTION$$LONGWORD
_ATK_ATK_TYPE_SELECTION$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_selection_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_SELECTION$POINTER$$BOOLEAN
_ATK_ATK_IS_SELECTION$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_SELECTION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_SELECTION$POINTER$$POINTER
_ATK_ATK_SELECTION$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_SELECTION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_SELECTION_GET_IFACE$POINTER$$PATKSELECTIONIFACE
_ATK_ATK_SELECTION_GET_IFACE$POINTER$$PATKSELECTIONIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_SELECTION$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_STATE_SET$$LONGWORD
_ATK_ATK_TYPE_STATE_SET$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_state_set_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_STATE_SET$POINTER$$PATKSTATESET
_ATK_ATK_STATE_SET$POINTER$$PATKSTATESET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STATE_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_STATE_SET_CLASS$POINTER$$PATKSTATESETCLASS
_ATK_ATK_STATE_SET_CLASS$POINTER$$PATKSTATESETCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STATE_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_STATE_SET$POINTER$$BOOLEAN
_ATK_ATK_IS_STATE_SET$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STATE_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_STATE_SET_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_STATE_SET_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STATE_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_STATE_SET_GET_CLASS$POINTER$$PATKSTATESETCLASS
_ATK_ATK_STATE_SET_GET_CLASS$POINTER$$PATKSTATESETCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STATE_SET$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD
_ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_streamable_content_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_STREAMABLE_CONTENT$POINTER$$BOOLEAN
_ATK_ATK_IS_STREAMABLE_CONTENT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_STREAMABLE_CONTENT$POINTER$$POINTER
_ATK_ATK_STREAMABLE_CONTENT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_STREAMABLE_CONTENT_GET_IFACE$POINTER$$PATKSTREAMABLECONTENTIFACE
_ATK_ATK_STREAMABLE_CONTENT_GET_IFACE$POINTER$$PATKSTREAMABLECONTENTIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_TABLE$$LONGWORD
_ATK_ATK_TYPE_TABLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_table_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_TABLE$POINTER$$BOOLEAN
_ATK_ATK_IS_TABLE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_TABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TABLE$POINTER$$POINTER
_ATK_ATK_TABLE$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_TABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TABLE_GET_IFACE$POINTER$$PATKTABLEIFACE
_ATK_ATK_TABLE_GET_IFACE$POINTER$$PATKTABLEIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_TABLE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_TEXT$$LONGWORD
_ATK_ATK_TYPE_TEXT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_text_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_TEXT$POINTER$$BOOLEAN
_ATK_ATK_IS_TEXT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_TEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TEXT$POINTER$$POINTER
_ATK_ATK_TEXT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_TEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TEXT_GET_IFACE$POINTER$$PATKTEXTIFACE
_ATK_ATK_TEXT_GET_IFACE$POINTER$$PATKTEXTIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_TEXT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_UTIL$$LONGWORD
_ATK_ATK_TYPE_UTIL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_util_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_UTIL$POINTER$$BOOLEAN
_ATK_ATK_IS_UTIL$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_UTIL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_UTIL$POINTER$$PATKUTIL
_ATK_ATK_UTIL$POINTER$$PATKUTIL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_UTIL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_UTIL_CLASS$POINTER$$PATKUTILCLASS
_ATK_ATK_UTIL_CLASS$POINTER$$PATKUTILCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_UTIL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_UTIL_CLASS$POINTER$$BOOLEAN
_ATK_ATK_IS_UTIL_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_UTIL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_UTIL_GET_CLASS$POINTER$$PATKUTILCLASS
_ATK_ATK_UTIL_GET_CLASS$POINTER$$PATKUTILCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_UTIL$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_TYPE_VALUE$$LONGWORD
_ATK_ATK_TYPE_VALUE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_atk_value_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_IS_VALUE$POINTER$$BOOLEAN
_ATK_ATK_IS_VALUE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_VALUE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_VALUE$POINTER$$POINTER
_ATK_ATK_VALUE$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_VALUE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ATK_ATK_VALUE_GET_IFACE$POINTER$$PATKVALUEIFACE
_ATK_ATK_VALUE_GET_IFACE$POINTER$$PATKVALUEIFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_ATK_ATK_TYPE_VALUE$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ATK
_THREADVARLIST_ATK:
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

L_atk_object_get_type$stub:
.indirect_symbol _atk_object_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_OBJECT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_OBJECT$$LONGWORD
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

L_atk_implementor_get_type$stub:
.indirect_symbol _atk_implementor_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_IMPLEMENTOR$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_action_get_type$stub:
.indirect_symbol _atk_action_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_ACTION$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_ACTION$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_component_get_type$stub:
.indirect_symbol _atk_component_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_COMPONENT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_COMPONENT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_document_get_type$stub:
.indirect_symbol _atk_document_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_DOCUMENT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_DOCUMENT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_editable_text_get_type$stub:
.indirect_symbol _atk_editable_text_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_EDITABLE_TEXT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_gobject_accessible_get_type$stub:
.indirect_symbol _atk_gobject_accessible_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_GOBJECT_ACCESSIBLE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_hyperlink_get_type$stub:
.indirect_symbol _atk_hyperlink_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_HYPERLINK$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_HYPERLINK$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_hypertext_get_type$stub:
.indirect_symbol _atk_hypertext_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_HYPERTEXT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_HYPERTEXT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_image_get_type$stub:
.indirect_symbol _atk_image_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_IMAGE$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_IMAGE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_object_factory_get_type$stub:
.indirect_symbol _atk_object_factory_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_OBJECT_FACTORY$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_registry_get_type$stub:
.indirect_symbol _atk_registry_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_REGISTRY$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_REGISTRY$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_relation_get_type$stub:
.indirect_symbol _atk_relation_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_RELATION$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_RELATION$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_relation_set_get_type$stub:
.indirect_symbol _atk_relation_set_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_RELATION_SET$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_RELATION_SET$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_selection_get_type$stub:
.indirect_symbol _atk_selection_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_SELECTION$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_SELECTION$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_state_set_get_type$stub:
.indirect_symbol _atk_state_set_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_STATE_SET$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_STATE_SET$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_streamable_content_get_type$stub:
.indirect_symbol _atk_streamable_content_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_STREAMABLE_CONTENT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_table_get_type$stub:
.indirect_symbol _atk_table_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_TABLE$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_TABLE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_text_get_type$stub:
.indirect_symbol _atk_text_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_TEXT$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_TEXT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_util_get_type$stub:
.indirect_symbol _atk_util_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_UTIL$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_UTIL$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_atk_value_get_type$stub:
.indirect_symbol _atk_value_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ATK_ATK_TYPE_VALUE$$LONGWORD$stub:
.indirect_symbol _ATK_ATK_TYPE_VALUE$$LONGWORD
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
.globl	_INIT_ATK_PATKRELATIONSET
_INIT_ATK_PATKRELATIONSET:
	.byte	0
	.ascii	"\017PAtkRelationSet"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKRELATIONSET
_RTTI_ATK_PATKRELATIONSET:
	.byte	0
	.ascii	"\017PAtkRelationSet"

.const_data
	.align 2
.globl	_INIT_ATK_PATKSTATESET
_INIT_ATK_PATKSTATESET:
	.byte	0
	.ascii	"\014PAtkStateSet"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKSTATESET
_RTTI_ATK_PATKSTATESET:
	.byte	0
	.ascii	"\014PAtkStateSet"

.const_data
	.align 2
.globl	_INIT_ATK_PATKATTRIBUTESET
_INIT_ATK_PATKATTRIBUTESET:
	.byte	0
	.ascii	"\020PAtkAttributeSet"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKATTRIBUTESET
_RTTI_ATK_PATKATTRIBUTESET:
	.byte	0
	.ascii	"\020PAtkAttributeSet"

.const_data
	.align 2
.globl	_INIT_ATK_PATKCOORDTYPE
_INIT_ATK_PATKCOORDTYPE:
	.byte	0
	.ascii	"\015PAtkCoordType"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKCOORDTYPE
_RTTI_ATK_PATKCOORDTYPE:
	.byte	0
	.ascii	"\015PAtkCoordType"

.const_data
	.align 2
.globl	_INIT_ATK_TATKCOORDTYPE
_INIT_ATK_TATKCOORDTYPE:
	.byte	3,13
	.ascii	"TAtkCoordType"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"ATK_XY_SCREEN"
	.byte	13
	.ascii	"ATK_XY_WINDOW"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKCOORDTYPE
_RTTI_ATK_TATKCOORDTYPE:
	.byte	3,13
	.ascii	"TAtkCoordType"
	.byte	5
	.long	0,1,0
	.byte	13
	.ascii	"ATK_XY_SCREEN"
	.byte	13
	.ascii	"ATK_XY_WINDOW"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKCOORDTYPE_s2o
_RTTI_ATK_TATKCOORDTYPE_s2o:
	.long	2,0
	.long	_RTTI_ATK_TATKCOORDTYPE+28
	.long	1
	.long	_RTTI_ATK_TATKCOORDTYPE+42

.const_data
	.align 2
.globl	_RTTI_ATK_TATKCOORDTYPE_o2s
_RTTI_ATK_TATKCOORDTYPE_o2s:
	.long	0
	.long	_RTTI_ATK_TATKCOORDTYPE+28
	.long	_RTTI_ATK_TATKCOORDTYPE+42

.const_data
	.align 2
.globl	_INIT_ATK_PATKROLE
_INIT_ATK_PATKROLE:
	.byte	0
	.ascii	"\010PAtkRole"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKROLE
_RTTI_ATK_PATKROLE:
	.byte	0
	.ascii	"\010PAtkRole"

.const_data
	.align 2
.globl	_INIT_ATK_TATKROLE
_INIT_ATK_TATKROLE:
	.byte	3,8
	.ascii	"TAtkRole"
	.byte	5
	.long	0,69,0
	.byte	16
	.ascii	"ATK_ROLE_INVALID"
	.byte	20
	.ascii	"ATK_ROLE_ACCEL_LABEL"
	.byte	14
	.ascii	"ATK_ROLE_ALERT"
	.byte	18
	.ascii	"ATK_ROLE_ANIMATION"
	.byte	14
	.ascii	"ATK_ROLE_ARROW"
	.byte	17
	.ascii	"ATK_ROLE_CALENDAR"
	.byte	15
	.ascii	"ATK_ROLE_CANVAS"
	.byte	18
	.ascii	"ATK_ROLE_CHECK_BOX"
	.byte	24
	.ascii	"ATK_ROLE_CHECK_MENU_ITEM"
	.byte	22
	.ascii	"ATK_ROLE_COLOR_CHOOSER"
	.byte	22
	.ascii	"ATK_ROLE_COLUMN_HEADER"
	.byte	18
	.ascii	"ATK_ROLE_COMBO_BOX"
	.byte	20
	.ascii	"ATK_ROLE_DATE_EDITOR"
	.byte	21
	.ascii	"ATK_ROLE_DESKTOP_ICON"
	.byte	22
	.ascii	"ATK_ROLE_DESKTOP_FRAME"
	.byte	13
	.ascii	"ATK_ROLE_DIAL"
	.byte	15
	.ascii	"ATK_ROLE_DIALOG"
	.byte	23
	.ascii	"ATK_ROLE_DIRECTORY_PANE"
	.byte	21
	.ascii	"ATK_ROLE_DRAWING_AREA"
	.byte	21
	.ascii	"ATK_ROLE_FILE_CHOOSER"
	.byte	15
	.ascii	"ATK_ROLE_FILLER"
	.byte	21
	.ascii	"ATK_ROLE_FONT_CHOOSER"
	.byte	14
	.ascii	"ATK_ROLE_FRAME"
	.byte	19
	.ascii	"ATK_ROLE_GLASS_PANE"
	.byte	23
	.ascii	"ATK_ROLE_HTML_CONTAINER"
	.byte	13
	.ascii	"ATK_ROLE_ICON"
	.byte	14
	.ascii	"ATK_ROLE_IMAGE"
	.byte	23
	.ascii	"ATK_ROLE_INTERNAL_FRAME"
	.byte	14
	.ascii	"ATK_ROLE_LABEL"
	.byte	21
	.ascii	"ATK_ROLE_LAYERED_PANE"
	.byte	13
	.ascii	"ATK_ROLE_LIST"
	.byte	18
	.ascii	"ATK_ROLE_LIST_ITEM"
	.byte	13
	.ascii	"ATK_ROLE_MENU"
	.byte	17
	.ascii	"ATK_ROLE_MENU_BAR"
	.byte	18
	.ascii	"ATK_ROLE_MENU_ITEM"
	.byte	20
	.ascii	"ATK_ROLE_OPTION_PANE"
	.byte	17
	.ascii	"ATK_ROLE_PAGE_TAB"
	.byte	22
	.ascii	"ATK_ROLE_PAGE_TAB_LIST"
	.byte	14
	.ascii	"ATK_ROLE_PANEL"
	.byte	22
	.ascii	"ATK_ROLE_PASSWORD_TEXT"
	.byte	19
	.ascii	"ATK_ROLE_POPUP_MENU"
	.byte	21
	.ascii	"ATK_ROLE_PROGRESS_BAR"
	.byte	20
	.ascii	"ATK_ROLE_PUSH_BUTTON"
	.byte	21
	.ascii	"ATK_ROLE_RADIO_BUTTON"
	.byte	24
	.ascii	"ATK_ROLE_RADIO_MENU_ITEM"
	.byte	18
	.ascii	"ATK_ROLE_ROOT_PANE"
	.byte	19
	.ascii	"ATK_ROLE_ROW_HEADER"
	.byte	19
	.ascii	"ATK_ROLE_SCROLL_BAR"
	.byte	20
	.ascii	"ATK_ROLE_SCROLL_PANE"
	.byte	18
	.ascii	"ATK_ROLE_SEPARATOR"
	.byte	15
	.ascii	"ATK_ROLE_SLIDER"
	.byte	19
	.ascii	"ATK_ROLE_SPLIT_PANE"
	.byte	20
	.ascii	"ATK_ROLE_SPIN_BUTTON"
	.byte	18
	.ascii	"ATK_ROLE_STATUSBAR"
	.byte	14
	.ascii	"ATK_ROLE_TABLE"
	.byte	19
	.ascii	"ATK_ROLE_TABLE_CELL"
	.byte	28
	.ascii	"ATK_ROLE_TABLE_COLUMN_HEADER"
	.byte	25
	.ascii	"ATK_ROLE_TABLE_ROW_HEADER"
	.byte	27
	.ascii	"ATK_ROLE_TEAR_OFF_MENU_ITEM"
	.byte	17
	.ascii	"ATK_ROLE_TERMINAL"
	.byte	13
	.ascii	"ATK_ROLE_TEXT"
	.byte	22
	.ascii	"ATK_ROLE_TOGGLE_BUTTON"
	.byte	17
	.ascii	"ATK_ROLE_TOOL_BAR"
	.byte	17
	.ascii	"ATK_ROLE_TOOL_TIP"
	.byte	13
	.ascii	"ATK_ROLE_TREE"
	.byte	19
	.ascii	"ATK_ROLE_TREE_TABLE"
	.byte	16
	.ascii	"ATK_ROLE_UNKNOWN"
	.byte	17
	.ascii	"ATK_ROLE_VIEWPORT"
	.byte	15
	.ascii	"ATK_ROLE_WINDOW"
	.byte	21
	.ascii	"ATK_ROLE_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKROLE
_RTTI_ATK_TATKROLE:
	.byte	3,8
	.ascii	"TAtkRole"
	.byte	5
	.long	0,69,0
	.byte	16
	.ascii	"ATK_ROLE_INVALID"
	.byte	20
	.ascii	"ATK_ROLE_ACCEL_LABEL"
	.byte	14
	.ascii	"ATK_ROLE_ALERT"
	.byte	18
	.ascii	"ATK_ROLE_ANIMATION"
	.byte	14
	.ascii	"ATK_ROLE_ARROW"
	.byte	17
	.ascii	"ATK_ROLE_CALENDAR"
	.byte	15
	.ascii	"ATK_ROLE_CANVAS"
	.byte	18
	.ascii	"ATK_ROLE_CHECK_BOX"
	.byte	24
	.ascii	"ATK_ROLE_CHECK_MENU_ITEM"
	.byte	22
	.ascii	"ATK_ROLE_COLOR_CHOOSER"
	.byte	22
	.ascii	"ATK_ROLE_COLUMN_HEADER"
	.byte	18
	.ascii	"ATK_ROLE_COMBO_BOX"
	.byte	20
	.ascii	"ATK_ROLE_DATE_EDITOR"
	.byte	21
	.ascii	"ATK_ROLE_DESKTOP_ICON"
	.byte	22
	.ascii	"ATK_ROLE_DESKTOP_FRAME"
	.byte	13
	.ascii	"ATK_ROLE_DIAL"
	.byte	15
	.ascii	"ATK_ROLE_DIALOG"
	.byte	23
	.ascii	"ATK_ROLE_DIRECTORY_PANE"
	.byte	21
	.ascii	"ATK_ROLE_DRAWING_AREA"
	.byte	21
	.ascii	"ATK_ROLE_FILE_CHOOSER"
	.byte	15
	.ascii	"ATK_ROLE_FILLER"
	.byte	21
	.ascii	"ATK_ROLE_FONT_CHOOSER"
	.byte	14
	.ascii	"ATK_ROLE_FRAME"
	.byte	19
	.ascii	"ATK_ROLE_GLASS_PANE"
	.byte	23
	.ascii	"ATK_ROLE_HTML_CONTAINER"
	.byte	13
	.ascii	"ATK_ROLE_ICON"
	.byte	14
	.ascii	"ATK_ROLE_IMAGE"
	.byte	23
	.ascii	"ATK_ROLE_INTERNAL_FRAME"
	.byte	14
	.ascii	"ATK_ROLE_LABEL"
	.byte	21
	.ascii	"ATK_ROLE_LAYERED_PANE"
	.byte	13
	.ascii	"ATK_ROLE_LIST"
	.byte	18
	.ascii	"ATK_ROLE_LIST_ITEM"
	.byte	13
	.ascii	"ATK_ROLE_MENU"
	.byte	17
	.ascii	"ATK_ROLE_MENU_BAR"
	.byte	18
	.ascii	"ATK_ROLE_MENU_ITEM"
	.byte	20
	.ascii	"ATK_ROLE_OPTION_PANE"
	.byte	17
	.ascii	"ATK_ROLE_PAGE_TAB"
	.byte	22
	.ascii	"ATK_ROLE_PAGE_TAB_LIST"
	.byte	14
	.ascii	"ATK_ROLE_PANEL"
	.byte	22
	.ascii	"ATK_ROLE_PASSWORD_TEXT"
	.byte	19
	.ascii	"ATK_ROLE_POPUP_MENU"
	.byte	21
	.ascii	"ATK_ROLE_PROGRESS_BAR"
	.byte	20
	.ascii	"ATK_ROLE_PUSH_BUTTON"
	.byte	21
	.ascii	"ATK_ROLE_RADIO_BUTTON"
	.byte	24
	.ascii	"ATK_ROLE_RADIO_MENU_ITEM"
	.byte	18
	.ascii	"ATK_ROLE_ROOT_PANE"
	.byte	19
	.ascii	"ATK_ROLE_ROW_HEADER"
	.byte	19
	.ascii	"ATK_ROLE_SCROLL_BAR"
	.byte	20
	.ascii	"ATK_ROLE_SCROLL_PANE"
	.byte	18
	.ascii	"ATK_ROLE_SEPARATOR"
	.byte	15
	.ascii	"ATK_ROLE_SLIDER"
	.byte	19
	.ascii	"ATK_ROLE_SPLIT_PANE"
	.byte	20
	.ascii	"ATK_ROLE_SPIN_BUTTON"
	.byte	18
	.ascii	"ATK_ROLE_STATUSBAR"
	.byte	14
	.ascii	"ATK_ROLE_TABLE"
	.byte	19
	.ascii	"ATK_ROLE_TABLE_CELL"
	.byte	28
	.ascii	"ATK_ROLE_TABLE_COLUMN_HEADER"
	.byte	25
	.ascii	"ATK_ROLE_TABLE_ROW_HEADER"
	.byte	27
	.ascii	"ATK_ROLE_TEAR_OFF_MENU_ITEM"
	.byte	17
	.ascii	"ATK_ROLE_TERMINAL"
	.byte	13
	.ascii	"ATK_ROLE_TEXT"
	.byte	22
	.ascii	"ATK_ROLE_TOGGLE_BUTTON"
	.byte	17
	.ascii	"ATK_ROLE_TOOL_BAR"
	.byte	17
	.ascii	"ATK_ROLE_TOOL_TIP"
	.byte	13
	.ascii	"ATK_ROLE_TREE"
	.byte	19
	.ascii	"ATK_ROLE_TREE_TABLE"
	.byte	16
	.ascii	"ATK_ROLE_UNKNOWN"
	.byte	17
	.ascii	"ATK_ROLE_VIEWPORT"
	.byte	15
	.ascii	"ATK_ROLE_WINDOW"
	.byte	21
	.ascii	"ATK_ROLE_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKROLE_s2o
_RTTI_ATK_TATKROLE_s2o:
	.long	70,1
	.long	_RTTI_ATK_TATKROLE+40
	.long	2
	.long	_RTTI_ATK_TATKROLE+61
	.long	3
	.long	_RTTI_ATK_TATKROLE+76
	.long	4
	.long	_RTTI_ATK_TATKROLE+95
	.long	5
	.long	_RTTI_ATK_TATKROLE+110
	.long	6
	.long	_RTTI_ATK_TATKROLE+128
	.long	7
	.long	_RTTI_ATK_TATKROLE+144
	.long	8
	.long	_RTTI_ATK_TATKROLE+163
	.long	9
	.long	_RTTI_ATK_TATKROLE+188
	.long	10
	.long	_RTTI_ATK_TATKROLE+211
	.long	11
	.long	_RTTI_ATK_TATKROLE+234
	.long	12
	.long	_RTTI_ATK_TATKROLE+253
	.long	14
	.long	_RTTI_ATK_TATKROLE+296
	.long	13
	.long	_RTTI_ATK_TATKROLE+274
	.long	15
	.long	_RTTI_ATK_TATKROLE+319
	.long	16
	.long	_RTTI_ATK_TATKROLE+333
	.long	17
	.long	_RTTI_ATK_TATKROLE+349
	.long	18
	.long	_RTTI_ATK_TATKROLE+373
	.long	19
	.long	_RTTI_ATK_TATKROLE+395
	.long	20
	.long	_RTTI_ATK_TATKROLE+417
	.long	21
	.long	_RTTI_ATK_TATKROLE+433
	.long	22
	.long	_RTTI_ATK_TATKROLE+455
	.long	23
	.long	_RTTI_ATK_TATKROLE+470
	.long	24
	.long	_RTTI_ATK_TATKROLE+490
	.long	25
	.long	_RTTI_ATK_TATKROLE+514
	.long	26
	.long	_RTTI_ATK_TATKROLE+528
	.long	27
	.long	_RTTI_ATK_TATKROLE+543
	.long	0
	.long	_RTTI_ATK_TATKROLE+23
	.long	28
	.long	_RTTI_ATK_TATKROLE+567
	.long	69
	.long	_RTTI_ATK_TATKROLE+1367
	.long	29
	.long	_RTTI_ATK_TATKROLE+582
	.long	30
	.long	_RTTI_ATK_TATKROLE+604
	.long	31
	.long	_RTTI_ATK_TATKROLE+618
	.long	32
	.long	_RTTI_ATK_TATKROLE+637
	.long	33
	.long	_RTTI_ATK_TATKROLE+651
	.long	34
	.long	_RTTI_ATK_TATKROLE+669
	.long	35
	.long	_RTTI_ATK_TATKROLE+688
	.long	36
	.long	_RTTI_ATK_TATKROLE+709
	.long	37
	.long	_RTTI_ATK_TATKROLE+727
	.long	38
	.long	_RTTI_ATK_TATKROLE+750
	.long	39
	.long	_RTTI_ATK_TATKROLE+765
	.long	40
	.long	_RTTI_ATK_TATKROLE+788
	.long	41
	.long	_RTTI_ATK_TATKROLE+808
	.long	42
	.long	_RTTI_ATK_TATKROLE+830
	.long	43
	.long	_RTTI_ATK_TATKROLE+851
	.long	44
	.long	_RTTI_ATK_TATKROLE+873
	.long	45
	.long	_RTTI_ATK_TATKROLE+898
	.long	46
	.long	_RTTI_ATK_TATKROLE+917
	.long	47
	.long	_RTTI_ATK_TATKROLE+937
	.long	48
	.long	_RTTI_ATK_TATKROLE+957
	.long	49
	.long	_RTTI_ATK_TATKROLE+978
	.long	50
	.long	_RTTI_ATK_TATKROLE+997
	.long	52
	.long	_RTTI_ATK_TATKROLE+1033
	.long	51
	.long	_RTTI_ATK_TATKROLE+1013
	.long	53
	.long	_RTTI_ATK_TATKROLE+1054
	.long	54
	.long	_RTTI_ATK_TATKROLE+1073
	.long	55
	.long	_RTTI_ATK_TATKROLE+1088
	.long	56
	.long	_RTTI_ATK_TATKROLE+1108
	.long	57
	.long	_RTTI_ATK_TATKROLE+1137
	.long	58
	.long	_RTTI_ATK_TATKROLE+1163
	.long	59
	.long	_RTTI_ATK_TATKROLE+1191
	.long	60
	.long	_RTTI_ATK_TATKROLE+1209
	.long	61
	.long	_RTTI_ATK_TATKROLE+1223
	.long	62
	.long	_RTTI_ATK_TATKROLE+1246
	.long	63
	.long	_RTTI_ATK_TATKROLE+1264
	.long	64
	.long	_RTTI_ATK_TATKROLE+1282
	.long	65
	.long	_RTTI_ATK_TATKROLE+1296
	.long	66
	.long	_RTTI_ATK_TATKROLE+1316
	.long	67
	.long	_RTTI_ATK_TATKROLE+1333
	.long	68
	.long	_RTTI_ATK_TATKROLE+1351

.const_data
	.align 2
.globl	_RTTI_ATK_TATKROLE_o2s
_RTTI_ATK_TATKROLE_o2s:
	.long	0
	.long	_RTTI_ATK_TATKROLE+23
	.long	_RTTI_ATK_TATKROLE+40
	.long	_RTTI_ATK_TATKROLE+61
	.long	_RTTI_ATK_TATKROLE+76
	.long	_RTTI_ATK_TATKROLE+95
	.long	_RTTI_ATK_TATKROLE+110
	.long	_RTTI_ATK_TATKROLE+128
	.long	_RTTI_ATK_TATKROLE+144
	.long	_RTTI_ATK_TATKROLE+163
	.long	_RTTI_ATK_TATKROLE+188
	.long	_RTTI_ATK_TATKROLE+211
	.long	_RTTI_ATK_TATKROLE+234
	.long	_RTTI_ATK_TATKROLE+253
	.long	_RTTI_ATK_TATKROLE+274
	.long	_RTTI_ATK_TATKROLE+296
	.long	_RTTI_ATK_TATKROLE+319
	.long	_RTTI_ATK_TATKROLE+333
	.long	_RTTI_ATK_TATKROLE+349
	.long	_RTTI_ATK_TATKROLE+373
	.long	_RTTI_ATK_TATKROLE+395
	.long	_RTTI_ATK_TATKROLE+417
	.long	_RTTI_ATK_TATKROLE+433
	.long	_RTTI_ATK_TATKROLE+455
	.long	_RTTI_ATK_TATKROLE+470
	.long	_RTTI_ATK_TATKROLE+490
	.long	_RTTI_ATK_TATKROLE+514
	.long	_RTTI_ATK_TATKROLE+528
	.long	_RTTI_ATK_TATKROLE+543
	.long	_RTTI_ATK_TATKROLE+567
	.long	_RTTI_ATK_TATKROLE+582
	.long	_RTTI_ATK_TATKROLE+604
	.long	_RTTI_ATK_TATKROLE+618
	.long	_RTTI_ATK_TATKROLE+637
	.long	_RTTI_ATK_TATKROLE+651
	.long	_RTTI_ATK_TATKROLE+669
	.long	_RTTI_ATK_TATKROLE+688
	.long	_RTTI_ATK_TATKROLE+709
	.long	_RTTI_ATK_TATKROLE+727
	.long	_RTTI_ATK_TATKROLE+750
	.long	_RTTI_ATK_TATKROLE+765
	.long	_RTTI_ATK_TATKROLE+788
	.long	_RTTI_ATK_TATKROLE+808
	.long	_RTTI_ATK_TATKROLE+830
	.long	_RTTI_ATK_TATKROLE+851
	.long	_RTTI_ATK_TATKROLE+873
	.long	_RTTI_ATK_TATKROLE+898
	.long	_RTTI_ATK_TATKROLE+917
	.long	_RTTI_ATK_TATKROLE+937
	.long	_RTTI_ATK_TATKROLE+957
	.long	_RTTI_ATK_TATKROLE+978
	.long	_RTTI_ATK_TATKROLE+997
	.long	_RTTI_ATK_TATKROLE+1013
	.long	_RTTI_ATK_TATKROLE+1033
	.long	_RTTI_ATK_TATKROLE+1054
	.long	_RTTI_ATK_TATKROLE+1073
	.long	_RTTI_ATK_TATKROLE+1088
	.long	_RTTI_ATK_TATKROLE+1108
	.long	_RTTI_ATK_TATKROLE+1137
	.long	_RTTI_ATK_TATKROLE+1163
	.long	_RTTI_ATK_TATKROLE+1191
	.long	_RTTI_ATK_TATKROLE+1209
	.long	_RTTI_ATK_TATKROLE+1223
	.long	_RTTI_ATK_TATKROLE+1246
	.long	_RTTI_ATK_TATKROLE+1264
	.long	_RTTI_ATK_TATKROLE+1282
	.long	_RTTI_ATK_TATKROLE+1296
	.long	_RTTI_ATK_TATKROLE+1316
	.long	_RTTI_ATK_TATKROLE+1333
	.long	_RTTI_ATK_TATKROLE+1351
	.long	_RTTI_ATK_TATKROLE+1367

.const_data
	.align 2
.globl	_INIT_ATK_PATKLAYER
_INIT_ATK_PATKLAYER:
	.byte	0
	.ascii	"\011PAtkLayer"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKLAYER
_RTTI_ATK_PATKLAYER:
	.byte	0
	.ascii	"\011PAtkLayer"

.const_data
	.align 2
.globl	_INIT_ATK_TATKLAYER
_INIT_ATK_TATKLAYER:
	.byte	3,9
	.ascii	"TAtkLayer"
	.byte	5
	.long	0,6,0
	.byte	17
	.ascii	"ATK_LAYER_INVALID"
	.byte	20
	.ascii	"ATK_LAYER_BACKGROUND"
	.byte	16
	.ascii	"ATK_LAYER_CANVAS"
	.byte	16
	.ascii	"ATK_LAYER_WIDGET"
	.byte	13
	.ascii	"ATK_LAYER_MDI"
	.byte	15
	.ascii	"ATK_LAYER_POPUP"
	.byte	17
	.ascii	"ATK_LAYER_OVERLAY"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKLAYER
_RTTI_ATK_TATKLAYER:
	.byte	3,9
	.ascii	"TAtkLayer"
	.byte	5
	.long	0,6,0
	.byte	17
	.ascii	"ATK_LAYER_INVALID"
	.byte	20
	.ascii	"ATK_LAYER_BACKGROUND"
	.byte	16
	.ascii	"ATK_LAYER_CANVAS"
	.byte	16
	.ascii	"ATK_LAYER_WIDGET"
	.byte	13
	.ascii	"ATK_LAYER_MDI"
	.byte	15
	.ascii	"ATK_LAYER_POPUP"
	.byte	17
	.ascii	"ATK_LAYER_OVERLAY"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKLAYER_s2o
_RTTI_ATK_TATKLAYER_s2o:
	.long	7,1
	.long	_RTTI_ATK_TATKLAYER+42
	.long	2
	.long	_RTTI_ATK_TATKLAYER+63
	.long	0
	.long	_RTTI_ATK_TATKLAYER+24
	.long	4
	.long	_RTTI_ATK_TATKLAYER+97
	.long	6
	.long	_RTTI_ATK_TATKLAYER+127
	.long	5
	.long	_RTTI_ATK_TATKLAYER+111
	.long	3
	.long	_RTTI_ATK_TATKLAYER+80

.const_data
	.align 2
.globl	_RTTI_ATK_TATKLAYER_o2s
_RTTI_ATK_TATKLAYER_o2s:
	.long	0
	.long	_RTTI_ATK_TATKLAYER+24
	.long	_RTTI_ATK_TATKLAYER+42
	.long	_RTTI_ATK_TATKLAYER+63
	.long	_RTTI_ATK_TATKLAYER+80
	.long	_RTTI_ATK_TATKLAYER+97
	.long	_RTTI_ATK_TATKLAYER+111
	.long	_RTTI_ATK_TATKLAYER+127

.const_data
	.align 2
.globl	_INIT_ATK_PATKPROPERTYVALUES
_INIT_ATK_PATKPROPERTYVALUES:
	.byte	0
	.ascii	"\022PAtkPropertyValues"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKPROPERTYVALUES
_RTTI_ATK_PATKPROPERTYVALUES:
	.byte	0
	.ascii	"\022PAtkPropertyValues"

.const_data
	.align 2
.globl	_INIT_ATK_TATKPROPERTYVALUES
_INIT_ATK_TATKPROPERTYVALUES:
	.byte	13,18
	.ascii	"TAtkPropertyValues"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKPROPERTYVALUES
_RTTI_ATK_TATKPROPERTYVALUES:
	.byte	13,18
	.ascii	"TAtkPropertyValues"
	.long	44,3
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_TGVALUE
	.long	4
	.long	_RTTI_GLIB2_TGVALUE
	.long	24

.const_data
	.align 2
.globl	_INIT_ATK_TATKFUNCTION
_INIT_ATK_TATKFUNCTION:
	.byte	23,12
	.ascii	"TAtkFunction"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKFUNCTION
_RTTI_ATK_TATKFUNCTION:
	.byte	23,12
	.ascii	"TAtkFunction"

.const_data
	.align 2
.globl	_INIT_ATK_PATKOBJECT
_INIT_ATK_PATKOBJECT:
	.byte	0
	.ascii	"\012PAtkObject"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKOBJECT
_RTTI_ATK_PATKOBJECT:
	.byte	0
	.ascii	"\012PAtkObject"

.const_data
	.align 2
.globl	_INIT_ATK_PPATKOBJECT
_INIT_ATK_PPATKOBJECT:
	.byte	0
	.ascii	"\013PPAtkObject"

.const_data
	.align 2
.globl	_RTTI_ATK_PPATKOBJECT
_RTTI_ATK_PPATKOBJECT:
	.byte	0
	.ascii	"\013PPAtkObject"

.const_data
	.align 2
.globl	_INIT_ATK_TATKOBJECT
_INIT_ATK_TATKOBJECT:
	.byte	13,10
	.ascii	"TAtkObject"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKOBJECT
_RTTI_ATK_TATKOBJECT:
	.byte	13,10
	.ascii	"TAtkObject"
	.long	36,7
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	12
	.long	_RTTI_GLIB2_PGCHAR
	.long	16
	.long	_RTTI_ATK_PATKOBJECT
	.long	20
	.long	_RTTI_ATK_TATKROLE
	.long	24
	.long	_RTTI_ATK_PATKRELATIONSET
	.long	28
	.long	_RTTI_ATK_TATKLAYER
	.long	32

.const_data
	.align 2
.globl	_INIT_ATK_TATKPROPERTYCHANGEHANDLER
_INIT_ATK_TATKPROPERTYCHANGEHANDLER:
	.byte	23,25
	.ascii	"TAtkPropertyChangeHandler"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKPROPERTYCHANGEHANDLER
_RTTI_ATK_TATKPROPERTYCHANGEHANDLER:
	.byte	23,25
	.ascii	"TAtkPropertyChangeHandler"

.const_data
	.align 2
.globl	_INIT_ATK_PATKOBJECTCLASS
_INIT_ATK_PATKOBJECTCLASS:
	.byte	0
	.ascii	"\017PAtkObjectClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKOBJECTCLASS
_RTTI_ATK_PATKOBJECTCLASS:
	.byte	0
	.ascii	"\017PAtkObjectClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKOBJECTCLASS
_INIT_ATK_TATKOBJECTCLASS:
	.byte	13,15
	.ascii	"TAtkObjectClass"
	.long	176,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF19
_RTTI_ATK_DEF19:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF20
_RTTI_ATK_DEF20:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF21
_RTTI_ATK_DEF21:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF22
_RTTI_ATK_DEF22:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF23
_RTTI_ATK_DEF23:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF24
_RTTI_ATK_DEF24:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF25
_RTTI_ATK_DEF25:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF26
_RTTI_ATK_DEF26:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF27
_RTTI_ATK_DEF27:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF28
_RTTI_ATK_DEF28:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF29
_RTTI_ATK_DEF29:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF30
_RTTI_ATK_DEF30:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF31
_RTTI_ATK_DEF31:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF32
_RTTI_ATK_DEF32:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF33
_RTTI_ATK_DEF33:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF34
_RTTI_ATK_DEF34:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF35
_RTTI_ATK_DEF35:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF36
_RTTI_ATK_DEF36:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF37
_RTTI_ATK_DEF37:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF38
_RTTI_ATK_DEF38:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF39
_RTTI_ATK_DEF39:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF40
_RTTI_ATK_DEF40:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF41
_RTTI_ATK_DEF41:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKOBJECTCLASS
_RTTI_ATK_TATKOBJECTCLASS:
	.byte	13,15
	.ascii	"TAtkObjectClass"
	.long	176,28
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_ATK_DEF19
	.long	68
	.long	_RTTI_ATK_DEF20
	.long	72
	.long	_RTTI_ATK_DEF21
	.long	76
	.long	_RTTI_ATK_DEF22
	.long	80
	.long	_RTTI_ATK_DEF23
	.long	84
	.long	_RTTI_ATK_DEF24
	.long	88
	.long	_RTTI_ATK_DEF25
	.long	92
	.long	_RTTI_ATK_DEF26
	.long	96
	.long	_RTTI_ATK_DEF27
	.long	100
	.long	_RTTI_ATK_DEF28
	.long	104
	.long	_RTTI_ATK_DEF29
	.long	108
	.long	_RTTI_ATK_DEF30
	.long	112
	.long	_RTTI_ATK_DEF31
	.long	116
	.long	_RTTI_ATK_DEF32
	.long	120
	.long	_RTTI_ATK_DEF33
	.long	124
	.long	_RTTI_ATK_DEF34
	.long	128
	.long	_RTTI_ATK_DEF35
	.long	132
	.long	_RTTI_ATK_DEF36
	.long	136
	.long	_RTTI_ATK_DEF37
	.long	140
	.long	_RTTI_ATK_DEF38
	.long	144
	.long	_RTTI_ATK_DEF39
	.long	148
	.long	_RTTI_ATK_DEF40
	.long	152
	.long	_RTTI_ATK_DEF41
	.long	156
	.long	_RTTI_ATK_TATKFUNCTION
	.long	160
	.long	_RTTI_ATK_TATKFUNCTION
	.long	164
	.long	_RTTI_ATK_TATKFUNCTION
	.long	168
	.long	_RTTI_ATK_TATKFUNCTION
	.long	172

.const_data
	.align 2
.globl	_INIT_ATK_PATKIMPLEMENTORIFACE
_INIT_ATK_PATKIMPLEMENTORIFACE:
	.byte	0
	.ascii	"\024PAtkImplementorIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKIMPLEMENTORIFACE
_RTTI_ATK_PATKIMPLEMENTORIFACE:
	.byte	0
	.ascii	"\024PAtkImplementorIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKIMPLEMENTORIFACE
_INIT_ATK_TATKIMPLEMENTORIFACE:
	.byte	13,20
	.ascii	"TAtkImplementorIface"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF44
_RTTI_ATK_DEF44:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKIMPLEMENTORIFACE
_RTTI_ATK_TATKIMPLEMENTORIFACE:
	.byte	13,20
	.ascii	"TAtkImplementorIface"
	.long	12,2
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF44
	.long	8

.const_data
	.align 2
.globl	_INIT_ATK_PATKACTIONIFACE
_INIT_ATK_PATKACTIONIFACE:
	.byte	0
	.ascii	"\017PAtkActionIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKACTIONIFACE
_RTTI_ATK_PATKACTIONIFACE:
	.byte	0
	.ascii	"\017PAtkActionIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKACTIONIFACE
_INIT_ATK_TATKACTIONIFACE:
	.byte	13,15
	.ascii	"TAtkActionIface"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF47
_RTTI_ATK_DEF47:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF48
_RTTI_ATK_DEF48:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF49
_RTTI_ATK_DEF49:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF50
_RTTI_ATK_DEF50:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF51
_RTTI_ATK_DEF51:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF52
_RTTI_ATK_DEF52:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKACTIONIFACE
_RTTI_ATK_TATKACTIONIFACE:
	.byte	13,15
	.ascii	"TAtkActionIface"
	.long	40,9
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF47
	.long	8
	.long	_RTTI_ATK_DEF48
	.long	12
	.long	_RTTI_ATK_DEF49
	.long	16
	.long	_RTTI_ATK_DEF50
	.long	20
	.long	_RTTI_ATK_DEF51
	.long	24
	.long	_RTTI_ATK_DEF52
	.long	28
	.long	_RTTI_ATK_TATKFUNCTION
	.long	32
	.long	_RTTI_ATK_TATKFUNCTION
	.long	36

.const_data
	.align 2
.globl	_INIT_ATK_TATKFOCUSHANDLER
_INIT_ATK_TATKFOCUSHANDLER:
	.byte	23,16
	.ascii	"TAtkFocusHandler"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKFOCUSHANDLER
_RTTI_ATK_TATKFOCUSHANDLER:
	.byte	23,16
	.ascii	"TAtkFocusHandler"

.const_data
	.align 2
.globl	_INIT_ATK_PATKCOMPONENTIFACE
_INIT_ATK_PATKCOMPONENTIFACE:
	.byte	0
	.ascii	"\022PAtkComponentIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKCOMPONENTIFACE
_RTTI_ATK_PATKCOMPONENTIFACE:
	.byte	0
	.ascii	"\022PAtkComponentIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKCOMPONENTIFACE
_INIT_ATK_TATKCOMPONENTIFACE:
	.byte	13,18
	.ascii	"TAtkComponentIface"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF56
_RTTI_ATK_DEF56:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF57
_RTTI_ATK_DEF57:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF58
_RTTI_ATK_DEF58:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF59
_RTTI_ATK_DEF59:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF60
_RTTI_ATK_DEF60:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF61
_RTTI_ATK_DEF61:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF62
_RTTI_ATK_DEF62:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF63
_RTTI_ATK_DEF63:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF64
_RTTI_ATK_DEF64:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF65
_RTTI_ATK_DEF65:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF66
_RTTI_ATK_DEF66:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF67
_RTTI_ATK_DEF67:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF68
_RTTI_ATK_DEF68:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKCOMPONENTIFACE
_RTTI_ATK_TATKCOMPONENTIFACE:
	.byte	13,18
	.ascii	"TAtkComponentIface"
	.long	68,16
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF56
	.long	8
	.long	_RTTI_ATK_DEF57
	.long	12
	.long	_RTTI_ATK_DEF58
	.long	16
	.long	_RTTI_ATK_DEF59
	.long	20
	.long	_RTTI_ATK_DEF60
	.long	24
	.long	_RTTI_ATK_DEF61
	.long	28
	.long	_RTTI_ATK_DEF62
	.long	32
	.long	_RTTI_ATK_DEF63
	.long	36
	.long	_RTTI_ATK_DEF64
	.long	40
	.long	_RTTI_ATK_DEF65
	.long	44
	.long	_RTTI_ATK_DEF66
	.long	48
	.long	_RTTI_ATK_DEF67
	.long	52
	.long	_RTTI_ATK_DEF68
	.long	56
	.long	_RTTI_ATK_TATKFUNCTION
	.long	60
	.long	_RTTI_ATK_TATKFUNCTION
	.long	64

.const_data
	.align 2
.globl	_INIT_ATK_PATKDOCUMENTIFACE
_INIT_ATK_PATKDOCUMENTIFACE:
	.byte	0
	.ascii	"\021PAtkDocumentIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKDOCUMENTIFACE
_RTTI_ATK_PATKDOCUMENTIFACE:
	.byte	0
	.ascii	"\021PAtkDocumentIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKDOCUMENTIFACE
_INIT_ATK_TATKDOCUMENTIFACE:
	.byte	13,17
	.ascii	"TAtkDocumentIface"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF71
_RTTI_ATK_DEF71:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF72
_RTTI_ATK_DEF72:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKDOCUMENTIFACE
_RTTI_ATK_TATKDOCUMENTIFACE:
	.byte	13,17
	.ascii	"TAtkDocumentIface"
	.long	48,11
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF71
	.long	8
	.long	_RTTI_ATK_DEF72
	.long	12
	.long	_RTTI_ATK_TATKFUNCTION
	.long	16
	.long	_RTTI_ATK_TATKFUNCTION
	.long	20
	.long	_RTTI_ATK_TATKFUNCTION
	.long	24
	.long	_RTTI_ATK_TATKFUNCTION
	.long	28
	.long	_RTTI_ATK_TATKFUNCTION
	.long	32
	.long	_RTTI_ATK_TATKFUNCTION
	.long	36
	.long	_RTTI_ATK_TATKFUNCTION
	.long	40
	.long	_RTTI_ATK_TATKFUNCTION
	.long	44

.const_data
	.align 2
.globl	_INIT_ATK_PATKEDITABLETEXTIFACE
_INIT_ATK_PATKEDITABLETEXTIFACE:
	.byte	0
	.ascii	"\025PAtkEditableTextIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKEDITABLETEXTIFACE
_RTTI_ATK_PATKEDITABLETEXTIFACE:
	.byte	0
	.ascii	"\025PAtkEditableTextIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKEDITABLETEXTIFACE
_INIT_ATK_TATKEDITABLETEXTIFACE:
	.byte	13,21
	.ascii	"TAtkEditableTextIface"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF75
_RTTI_ATK_DEF75:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF76
_RTTI_ATK_DEF76:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF77
_RTTI_ATK_DEF77:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF78
_RTTI_ATK_DEF78:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF79
_RTTI_ATK_DEF79:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF80
_RTTI_ATK_DEF80:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF81
_RTTI_ATK_DEF81:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKEDITABLETEXTIFACE
_RTTI_ATK_TATKEDITABLETEXTIFACE:
	.byte	13,21
	.ascii	"TAtkEditableTextIface"
	.long	44,10
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF75
	.long	8
	.long	_RTTI_ATK_DEF76
	.long	12
	.long	_RTTI_ATK_DEF77
	.long	16
	.long	_RTTI_ATK_DEF78
	.long	20
	.long	_RTTI_ATK_DEF79
	.long	24
	.long	_RTTI_ATK_DEF80
	.long	28
	.long	_RTTI_ATK_DEF81
	.long	32
	.long	_RTTI_ATK_TATKFUNCTION
	.long	36
	.long	_RTTI_ATK_TATKFUNCTION
	.long	40

.const_data
	.align 2
.globl	_INIT_ATK_PATKGOBJECTACCESSIBLE
_INIT_ATK_PATKGOBJECTACCESSIBLE:
	.byte	0
	.ascii	"\025PAtkGObjectAccessible"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKGOBJECTACCESSIBLE
_RTTI_ATK_PATKGOBJECTACCESSIBLE:
	.byte	0
	.ascii	"\025PAtkGObjectAccessible"

.const_data
	.align 2
.globl	_INIT_ATK_TATKGOBJECTACCESSIBLE
_INIT_ATK_TATKGOBJECTACCESSIBLE:
	.byte	13,21
	.ascii	"TAtkGObjectAccessible"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKGOBJECTACCESSIBLE
_RTTI_ATK_TATKGOBJECTACCESSIBLE:
	.byte	13,21
	.ascii	"TAtkGObjectAccessible"
	.long	36,1
	.long	_RTTI_ATK_TATKOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKGOBJECTACCESSIBLECLASS
_INIT_ATK_PATKGOBJECTACCESSIBLECLASS:
	.byte	0
	.ascii	"\032PAtkGObjectAccessibleClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKGOBJECTACCESSIBLECLASS
_RTTI_ATK_PATKGOBJECTACCESSIBLECLASS:
	.byte	0
	.ascii	"\032PAtkGObjectAccessibleClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKGOBJECTACCESSIBLECLASS
_INIT_ATK_TATKGOBJECTACCESSIBLECLASS:
	.byte	13,26
	.ascii	"TAtkGObjectAccessibleClass"
	.long	184,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKGOBJECTACCESSIBLECLASS
_RTTI_ATK_TATKGOBJECTACCESSIBLECLASS:
	.byte	13,26
	.ascii	"TAtkGObjectAccessibleClass"
	.long	184,3
	.long	_RTTI_ATK_TATKOBJECTCLASS
	.long	0
	.long	_RTTI_ATK_TATKFUNCTION
	.long	176
	.long	_RTTI_ATK_TATKFUNCTION
	.long	180

.const_data
	.align 2
.globl	_INIT_ATK_PATKHYPERLINK
_INIT_ATK_PATKHYPERLINK:
	.byte	0
	.ascii	"\015PAtkHyperlink"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKHYPERLINK
_RTTI_ATK_PATKHYPERLINK:
	.byte	0
	.ascii	"\015PAtkHyperlink"

.const_data
	.align 2
.globl	_INIT_ATK_TATKHYPERLINK
_INIT_ATK_TATKHYPERLINK:
	.byte	13,13
	.ascii	"TAtkHyperlink"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKHYPERLINK
_RTTI_ATK_TATKHYPERLINK:
	.byte	13,13
	.ascii	"TAtkHyperlink"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKHYPERLINKCLASS
_INIT_ATK_PATKHYPERLINKCLASS:
	.byte	0
	.ascii	"\022PAtkHyperlinkClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKHYPERLINKCLASS
_RTTI_ATK_PATKHYPERLINKCLASS:
	.byte	0
	.ascii	"\022PAtkHyperlinkClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKHYPERLINKCLASS
_INIT_ATK_TATKHYPERLINKCLASS:
	.byte	13,18
	.ascii	"TAtkHyperlinkClass"
	.long	108,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF90
_RTTI_ATK_DEF90:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF91
_RTTI_ATK_DEF91:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF92
_RTTI_ATK_DEF92:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF93
_RTTI_ATK_DEF93:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF94
_RTTI_ATK_DEF94:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF95
_RTTI_ATK_DEF95:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKHYPERLINKCLASS
_RTTI_ATK_TATKHYPERLINKCLASS:
	.byte	13,18
	.ascii	"TAtkHyperlinkClass"
	.long	108,11
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_ATK_DEF90
	.long	68
	.long	_RTTI_ATK_DEF91
	.long	72
	.long	_RTTI_ATK_DEF92
	.long	76
	.long	_RTTI_ATK_DEF93
	.long	80
	.long	_RTTI_ATK_DEF94
	.long	84
	.long	_RTTI_ATK_DEF95
	.long	88
	.long	_RTTI_ATK_TATKFUNCTION
	.long	92
	.long	_RTTI_ATK_TATKFUNCTION
	.long	96
	.long	_RTTI_ATK_TATKFUNCTION
	.long	100
	.long	_RTTI_ATK_TATKFUNCTION
	.long	104

.const_data
	.align 2
.globl	_INIT_ATK_PATKHYPERTEXTIFACE
_INIT_ATK_PATKHYPERTEXTIFACE:
	.byte	0
	.ascii	"\022PAtkHypertextIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKHYPERTEXTIFACE
_RTTI_ATK_PATKHYPERTEXTIFACE:
	.byte	0
	.ascii	"\022PAtkHypertextIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKHYPERTEXTIFACE
_INIT_ATK_TATKHYPERTEXTIFACE:
	.byte	13,18
	.ascii	"TAtkHypertextIface"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF98
_RTTI_ATK_DEF98:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF99
_RTTI_ATK_DEF99:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF100
_RTTI_ATK_DEF100:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKHYPERTEXTIFACE
_RTTI_ATK_TATKHYPERTEXTIFACE:
	.byte	13,18
	.ascii	"TAtkHypertextIface"
	.long	36,8
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF98
	.long	8
	.long	_RTTI_ATK_DEF99
	.long	12
	.long	_RTTI_ATK_DEF100
	.long	16
	.long	_RTTI_ATK_TATKFUNCTION
	.long	20
	.long	_RTTI_ATK_TATKFUNCTION
	.long	24
	.long	_RTTI_ATK_TATKFUNCTION
	.long	28
	.long	_RTTI_ATK_TATKFUNCTION
	.long	32

.const_data
	.align 2
.globl	_INIT_ATK_PATKIMAGEIFACE
_INIT_ATK_PATKIMAGEIFACE:
	.byte	0
	.ascii	"\016PAtkImageIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKIMAGEIFACE
_RTTI_ATK_PATKIMAGEIFACE:
	.byte	0
	.ascii	"\016PAtkImageIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKIMAGEIFACE
_INIT_ATK_TATKIMAGEIFACE:
	.byte	13,14
	.ascii	"TAtkImageIface"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF103
_RTTI_ATK_DEF103:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF104
_RTTI_ATK_DEF104:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF105
_RTTI_ATK_DEF105:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF106
_RTTI_ATK_DEF106:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKIMAGEIFACE
_RTTI_ATK_TATKIMAGEIFACE:
	.byte	13,14
	.ascii	"TAtkImageIface"
	.long	32,7
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF103
	.long	8
	.long	_RTTI_ATK_DEF104
	.long	12
	.long	_RTTI_ATK_DEF105
	.long	16
	.long	_RTTI_ATK_DEF106
	.long	20
	.long	_RTTI_ATK_TATKFUNCTION
	.long	24
	.long	_RTTI_ATK_TATKFUNCTION
	.long	28

.const_data
	.align 2
.globl	_INIT_ATK_PATKOBJECTFACTORY
_INIT_ATK_PATKOBJECTFACTORY:
	.byte	0
	.ascii	"\021PAtkObjectFactory"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKOBJECTFACTORY
_RTTI_ATK_PATKOBJECTFACTORY:
	.byte	0
	.ascii	"\021PAtkObjectFactory"

.const_data
	.align 2
.globl	_INIT_ATK_TATKOBJECTFACTORY
_INIT_ATK_TATKOBJECTFACTORY:
	.byte	13,17
	.ascii	"TAtkObjectFactory"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKOBJECTFACTORY
_RTTI_ATK_TATKOBJECTFACTORY:
	.byte	13,17
	.ascii	"TAtkObjectFactory"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKOBJECTFACTORYCLASS
_INIT_ATK_PATKOBJECTFACTORYCLASS:
	.byte	0
	.ascii	"\026PAtkObjectFactoryClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKOBJECTFACTORYCLASS
_RTTI_ATK_PATKOBJECTFACTORYCLASS:
	.byte	0
	.ascii	"\026PAtkObjectFactoryClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKOBJECTFACTORYCLASS
_INIT_ATK_TATKOBJECTFACTORYCLASS:
	.byte	13,22
	.ascii	"TAtkObjectFactoryClass"
	.long	88,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF111
_RTTI_ATK_DEF111:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF112
_RTTI_ATK_DEF112:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF113
_RTTI_ATK_DEF113:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKOBJECTFACTORYCLASS
_RTTI_ATK_TATKOBJECTFACTORYCLASS:
	.byte	13,22
	.ascii	"TAtkObjectFactoryClass"
	.long	88,6
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_ATK_DEF111
	.long	68
	.long	_RTTI_ATK_DEF112
	.long	72
	.long	_RTTI_ATK_DEF113
	.long	76
	.long	_RTTI_ATK_TATKFUNCTION
	.long	80
	.long	_RTTI_ATK_TATKFUNCTION
	.long	84

.const_data
	.align 2
.globl	_INIT_ATK_PATKREGISTRY
_INIT_ATK_PATKREGISTRY:
	.byte	0
	.ascii	"\014PAtkRegistry"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKREGISTRY
_RTTI_ATK_PATKREGISTRY:
	.byte	0
	.ascii	"\014PAtkRegistry"

.const_data
	.align 2
.globl	_INIT_ATK_TATKREGISTRY
_INIT_ATK_TATKREGISTRY:
	.byte	13,12
	.ascii	"TAtkRegistry"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKREGISTRY
_RTTI_ATK_TATKREGISTRY:
	.byte	13,12
	.ascii	"TAtkRegistry"
	.long	20,3
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16

.const_data
	.align 2
.globl	_INIT_ATK_PATKREGISTRYCLASS
_INIT_ATK_PATKREGISTRYCLASS:
	.byte	0
	.ascii	"\021PAtkRegistryClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKREGISTRYCLASS
_RTTI_ATK_PATKREGISTRYCLASS:
	.byte	0
	.ascii	"\021PAtkRegistryClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKREGISTRYCLASS
_INIT_ATK_TATKREGISTRYCLASS:
	.byte	13,17
	.ascii	"TAtkRegistryClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKREGISTRYCLASS
_RTTI_ATK_TATKREGISTRYCLASS:
	.byte	13,17
	.ascii	"TAtkRegistryClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKRELATIONTYPE
_INIT_ATK_PATKRELATIONTYPE:
	.byte	0
	.ascii	"\020PAtkRelationType"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKRELATIONTYPE
_RTTI_ATK_PATKRELATIONTYPE:
	.byte	0
	.ascii	"\020PAtkRelationType"

.const_data
	.align 2
.globl	_INIT_ATK_TATKRELATIONTYPE
_INIT_ATK_TATKRELATIONTYPE:
	.byte	3,16
	.ascii	"TAtkRelationType"
	.byte	5
	.long	0,7,0
	.byte	17
	.ascii	"ATK_RELATION_NULL"
	.byte	26
	.ascii	"ATK_RELATION_CONTROLLED_BY"
	.byte	27
	.ascii	"ATK_RELATION_CONTROLLER_FOR"
	.byte	22
	.ascii	"ATK_RELATION_LABEL_FOR"
	.byte	24
	.ascii	"ATK_RELATION_LABELLED_BY"
	.byte	22
	.ascii	"ATK_RELATION_MEMBER_OF"
	.byte	26
	.ascii	"ATK_RELATION_NODE_CHILD_OF"
	.byte	25
	.ascii	"ATK_RELATION_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATIONTYPE
_RTTI_ATK_TATKRELATIONTYPE:
	.byte	3,16
	.ascii	"TAtkRelationType"
	.byte	5
	.long	0,7,0
	.byte	17
	.ascii	"ATK_RELATION_NULL"
	.byte	26
	.ascii	"ATK_RELATION_CONTROLLED_BY"
	.byte	27
	.ascii	"ATK_RELATION_CONTROLLER_FOR"
	.byte	22
	.ascii	"ATK_RELATION_LABEL_FOR"
	.byte	24
	.ascii	"ATK_RELATION_LABELLED_BY"
	.byte	22
	.ascii	"ATK_RELATION_MEMBER_OF"
	.byte	26
	.ascii	"ATK_RELATION_NODE_CHILD_OF"
	.byte	25
	.ascii	"ATK_RELATION_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATIONTYPE_s2o
_RTTI_ATK_TATKRELATIONTYPE_s2o:
	.long	8,1
	.long	_RTTI_ATK_TATKRELATIONTYPE+49
	.long	2
	.long	_RTTI_ATK_TATKRELATIONTYPE+76
	.long	4
	.long	_RTTI_ATK_TATKRELATIONTYPE+127
	.long	3
	.long	_RTTI_ATK_TATKRELATIONTYPE+104
	.long	7
	.long	_RTTI_ATK_TATKRELATIONTYPE+202
	.long	5
	.long	_RTTI_ATK_TATKRELATIONTYPE+152
	.long	6
	.long	_RTTI_ATK_TATKRELATIONTYPE+175
	.long	0
	.long	_RTTI_ATK_TATKRELATIONTYPE+31

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATIONTYPE_o2s
_RTTI_ATK_TATKRELATIONTYPE_o2s:
	.long	0
	.long	_RTTI_ATK_TATKRELATIONTYPE+31
	.long	_RTTI_ATK_TATKRELATIONTYPE+49
	.long	_RTTI_ATK_TATKRELATIONTYPE+76
	.long	_RTTI_ATK_TATKRELATIONTYPE+104
	.long	_RTTI_ATK_TATKRELATIONTYPE+127
	.long	_RTTI_ATK_TATKRELATIONTYPE+152
	.long	_RTTI_ATK_TATKRELATIONTYPE+175
	.long	_RTTI_ATK_TATKRELATIONTYPE+202

.const_data
	.align 2
.globl	_INIT_ATK_PATKRELATION
_INIT_ATK_PATKRELATION:
	.byte	0
	.ascii	"\014PAtkRelation"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKRELATION
_RTTI_ATK_PATKRELATION:
	.byte	0
	.ascii	"\014PAtkRelation"

.const_data
	.align 2
.globl	_INIT_ATK_TATKRELATION
_INIT_ATK_TATKRELATION:
	.byte	13,12
	.ascii	"TAtkRelation"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATION
_RTTI_ATK_TATKRELATION:
	.byte	13,12
	.ascii	"TAtkRelation"
	.long	20,3
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GLIB2_PGPTRARRAY
	.long	12
	.long	_RTTI_ATK_TATKRELATIONTYPE
	.long	16

.const_data
	.align 2
.globl	_INIT_ATK_PATKRELATIONCLASS
_INIT_ATK_PATKRELATIONCLASS:
	.byte	0
	.ascii	"\021PAtkRelationClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKRELATIONCLASS
_RTTI_ATK_PATKRELATIONCLASS:
	.byte	0
	.ascii	"\021PAtkRelationClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKRELATIONCLASS
_INIT_ATK_TATKRELATIONCLASS:
	.byte	13,17
	.ascii	"TAtkRelationClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATIONCLASS
_RTTI_ATK_TATKRELATIONCLASS:
	.byte	13,17
	.ascii	"TAtkRelationClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_TATKRELATIONSET
_INIT_ATK_TATKRELATIONSET:
	.byte	13,15
	.ascii	"TAtkRelationSet"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATIONSET
_RTTI_ATK_TATKRELATIONSET:
	.byte	13,15
	.ascii	"TAtkRelationSet"
	.long	16,2
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_GLIB2_PGPTRARRAY
	.long	12

.const_data
	.align 2
.globl	_INIT_ATK_PATKRELATIONSETCLASS
_INIT_ATK_PATKRELATIONSETCLASS:
	.byte	0
	.ascii	"\024PAtkRelationSetClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKRELATIONSETCLASS
_RTTI_ATK_PATKRELATIONSETCLASS:
	.byte	0
	.ascii	"\024PAtkRelationSetClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKRELATIONSETCLASS
_INIT_ATK_TATKRELATIONSETCLASS:
	.byte	13,20
	.ascii	"TAtkRelationSetClass"
	.long	76,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKRELATIONSETCLASS
_RTTI_ATK_TATKRELATIONSETCLASS:
	.byte	13,20
	.ascii	"TAtkRelationSetClass"
	.long	76,3
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_ATK_TATKFUNCTION
	.long	68
	.long	_RTTI_ATK_TATKFUNCTION
	.long	72

.const_data
	.align 2
.globl	_INIT_ATK_PATKSELECTIONIFACE
_INIT_ATK_PATKSELECTIONIFACE:
	.byte	0
	.ascii	"\022PAtkSelectionIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKSELECTIONIFACE
_RTTI_ATK_PATKSELECTIONIFACE:
	.byte	0
	.ascii	"\022PAtkSelectionIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKSELECTIONIFACE
_INIT_ATK_TATKSELECTIONIFACE:
	.byte	13,18
	.ascii	"TAtkSelectionIface"
	.long	48,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF129
_RTTI_ATK_DEF129:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF130
_RTTI_ATK_DEF130:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF131
_RTTI_ATK_DEF131:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF132
_RTTI_ATK_DEF132:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF133
_RTTI_ATK_DEF133:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF134
_RTTI_ATK_DEF134:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF135
_RTTI_ATK_DEF135:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF136
_RTTI_ATK_DEF136:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSELECTIONIFACE
_RTTI_ATK_TATKSELECTIONIFACE:
	.byte	13,18
	.ascii	"TAtkSelectionIface"
	.long	48,11
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF129
	.long	8
	.long	_RTTI_ATK_DEF130
	.long	12
	.long	_RTTI_ATK_DEF131
	.long	16
	.long	_RTTI_ATK_DEF132
	.long	20
	.long	_RTTI_ATK_DEF133
	.long	24
	.long	_RTTI_ATK_DEF134
	.long	28
	.long	_RTTI_ATK_DEF135
	.long	32
	.long	_RTTI_ATK_DEF136
	.long	36
	.long	_RTTI_ATK_TATKFUNCTION
	.long	40
	.long	_RTTI_ATK_TATKFUNCTION
	.long	44

.const_data
	.align 2
.globl	_INIT_ATK_PATKSTATETYPE
_INIT_ATK_PATKSTATETYPE:
	.byte	0
	.ascii	"\015PAtkStateType"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKSTATETYPE
_RTTI_ATK_PATKSTATETYPE:
	.byte	0
	.ascii	"\015PAtkStateType"

.const_data
	.align 2
.globl	_INIT_ATK_TATKSTATETYPE
_INIT_ATK_TATKSTATETYPE:
	.byte	3,13
	.ascii	"TAtkStateType"
	.byte	5
	.long	0,29,0
	.byte	17
	.ascii	"ATK_STATE_INVALID"
	.byte	16
	.ascii	"ATK_STATE_ACTIVE"
	.byte	15
	.ascii	"ATK_STATE_ARMED"
	.byte	14
	.ascii	"ATK_STATE_BUSY"
	.byte	17
	.ascii	"ATK_STATE_CHECKED"
	.byte	17
	.ascii	"ATK_STATE_DEFUNCT"
	.byte	18
	.ascii	"ATK_STATE_EDITABLE"
	.byte	17
	.ascii	"ATK_STATE_ENABLED"
	.byte	20
	.ascii	"ATK_STATE_EXPANDABLE"
	.byte	18
	.ascii	"ATK_STATE_EXPANDED"
	.byte	19
	.ascii	"ATK_STATE_FOCUSABLE"
	.byte	17
	.ascii	"ATK_STATE_FOCUSED"
	.byte	20
	.ascii	"ATK_STATE_HORIZONTAL"
	.byte	19
	.ascii	"ATK_STATE_ICONIFIED"
	.byte	15
	.ascii	"ATK_STATE_MODAL"
	.byte	20
	.ascii	"ATK_STATE_MULTI_LINE"
	.byte	25
	.ascii	"ATK_STATE_MULTISELECTABLE"
	.byte	16
	.ascii	"ATK_STATE_OPAQUE"
	.byte	17
	.ascii	"ATK_STATE_PRESSED"
	.byte	19
	.ascii	"ATK_STATE_RESIZABLE"
	.byte	20
	.ascii	"ATK_STATE_SELECTABLE"
	.byte	18
	.ascii	"ATK_STATE_SELECTED"
	.byte	19
	.ascii	"ATK_STATE_SENSITIVE"
	.byte	17
	.ascii	"ATK_STATE_SHOWING"
	.byte	21
	.ascii	"ATK_STATE_SINGLE_LINE"
	.byte	15
	.ascii	"ATK_STATE_STALE"
	.byte	19
	.ascii	"ATK_STATE_TRANSIENT"
	.byte	18
	.ascii	"ATK_STATE_VERTICAL"
	.byte	17
	.ascii	"ATK_STATE_VISIBLE"
	.byte	22
	.ascii	"ATK_STATE_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSTATETYPE
_RTTI_ATK_TATKSTATETYPE:
	.byte	3,13
	.ascii	"TAtkStateType"
	.byte	5
	.long	0,29,0
	.byte	17
	.ascii	"ATK_STATE_INVALID"
	.byte	16
	.ascii	"ATK_STATE_ACTIVE"
	.byte	15
	.ascii	"ATK_STATE_ARMED"
	.byte	14
	.ascii	"ATK_STATE_BUSY"
	.byte	17
	.ascii	"ATK_STATE_CHECKED"
	.byte	17
	.ascii	"ATK_STATE_DEFUNCT"
	.byte	18
	.ascii	"ATK_STATE_EDITABLE"
	.byte	17
	.ascii	"ATK_STATE_ENABLED"
	.byte	20
	.ascii	"ATK_STATE_EXPANDABLE"
	.byte	18
	.ascii	"ATK_STATE_EXPANDED"
	.byte	19
	.ascii	"ATK_STATE_FOCUSABLE"
	.byte	17
	.ascii	"ATK_STATE_FOCUSED"
	.byte	20
	.ascii	"ATK_STATE_HORIZONTAL"
	.byte	19
	.ascii	"ATK_STATE_ICONIFIED"
	.byte	15
	.ascii	"ATK_STATE_MODAL"
	.byte	20
	.ascii	"ATK_STATE_MULTI_LINE"
	.byte	25
	.ascii	"ATK_STATE_MULTISELECTABLE"
	.byte	16
	.ascii	"ATK_STATE_OPAQUE"
	.byte	17
	.ascii	"ATK_STATE_PRESSED"
	.byte	19
	.ascii	"ATK_STATE_RESIZABLE"
	.byte	20
	.ascii	"ATK_STATE_SELECTABLE"
	.byte	18
	.ascii	"ATK_STATE_SELECTED"
	.byte	19
	.ascii	"ATK_STATE_SENSITIVE"
	.byte	17
	.ascii	"ATK_STATE_SHOWING"
	.byte	21
	.ascii	"ATK_STATE_SINGLE_LINE"
	.byte	15
	.ascii	"ATK_STATE_STALE"
	.byte	19
	.ascii	"ATK_STATE_TRANSIENT"
	.byte	18
	.ascii	"ATK_STATE_VERTICAL"
	.byte	17
	.ascii	"ATK_STATE_VISIBLE"
	.byte	22
	.ascii	"ATK_STATE_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSTATETYPE_s2o
_RTTI_ATK_TATKSTATETYPE_s2o:
	.long	30,1
	.long	_RTTI_ATK_TATKSTATETYPE+46
	.long	2
	.long	_RTTI_ATK_TATKSTATETYPE+63
	.long	3
	.long	_RTTI_ATK_TATKSTATETYPE+79
	.long	4
	.long	_RTTI_ATK_TATKSTATETYPE+94
	.long	5
	.long	_RTTI_ATK_TATKSTATETYPE+112
	.long	6
	.long	_RTTI_ATK_TATKSTATETYPE+130
	.long	7
	.long	_RTTI_ATK_TATKSTATETYPE+149
	.long	8
	.long	_RTTI_ATK_TATKSTATETYPE+167
	.long	9
	.long	_RTTI_ATK_TATKSTATETYPE+188
	.long	10
	.long	_RTTI_ATK_TATKSTATETYPE+207
	.long	11
	.long	_RTTI_ATK_TATKSTATETYPE+227
	.long	12
	.long	_RTTI_ATK_TATKSTATETYPE+245
	.long	13
	.long	_RTTI_ATK_TATKSTATETYPE+266
	.long	0
	.long	_RTTI_ATK_TATKSTATETYPE+28
	.long	29
	.long	_RTTI_ATK_TATKSTATETYPE+577
	.long	14
	.long	_RTTI_ATK_TATKSTATETYPE+286
	.long	16
	.long	_RTTI_ATK_TATKSTATETYPE+323
	.long	15
	.long	_RTTI_ATK_TATKSTATETYPE+302
	.long	17
	.long	_RTTI_ATK_TATKSTATETYPE+349
	.long	18
	.long	_RTTI_ATK_TATKSTATETYPE+366
	.long	19
	.long	_RTTI_ATK_TATKSTATETYPE+384
	.long	20
	.long	_RTTI_ATK_TATKSTATETYPE+404
	.long	21
	.long	_RTTI_ATK_TATKSTATETYPE+425
	.long	22
	.long	_RTTI_ATK_TATKSTATETYPE+444
	.long	23
	.long	_RTTI_ATK_TATKSTATETYPE+464
	.long	24
	.long	_RTTI_ATK_TATKSTATETYPE+482
	.long	25
	.long	_RTTI_ATK_TATKSTATETYPE+504
	.long	26
	.long	_RTTI_ATK_TATKSTATETYPE+520
	.long	27
	.long	_RTTI_ATK_TATKSTATETYPE+540
	.long	28
	.long	_RTTI_ATK_TATKSTATETYPE+559

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSTATETYPE_o2s
_RTTI_ATK_TATKSTATETYPE_o2s:
	.long	0
	.long	_RTTI_ATK_TATKSTATETYPE+28
	.long	_RTTI_ATK_TATKSTATETYPE+46
	.long	_RTTI_ATK_TATKSTATETYPE+63
	.long	_RTTI_ATK_TATKSTATETYPE+79
	.long	_RTTI_ATK_TATKSTATETYPE+94
	.long	_RTTI_ATK_TATKSTATETYPE+112
	.long	_RTTI_ATK_TATKSTATETYPE+130
	.long	_RTTI_ATK_TATKSTATETYPE+149
	.long	_RTTI_ATK_TATKSTATETYPE+167
	.long	_RTTI_ATK_TATKSTATETYPE+188
	.long	_RTTI_ATK_TATKSTATETYPE+207
	.long	_RTTI_ATK_TATKSTATETYPE+227
	.long	_RTTI_ATK_TATKSTATETYPE+245
	.long	_RTTI_ATK_TATKSTATETYPE+266
	.long	_RTTI_ATK_TATKSTATETYPE+286
	.long	_RTTI_ATK_TATKSTATETYPE+302
	.long	_RTTI_ATK_TATKSTATETYPE+323
	.long	_RTTI_ATK_TATKSTATETYPE+349
	.long	_RTTI_ATK_TATKSTATETYPE+366
	.long	_RTTI_ATK_TATKSTATETYPE+384
	.long	_RTTI_ATK_TATKSTATETYPE+404
	.long	_RTTI_ATK_TATKSTATETYPE+425
	.long	_RTTI_ATK_TATKSTATETYPE+444
	.long	_RTTI_ATK_TATKSTATETYPE+464
	.long	_RTTI_ATK_TATKSTATETYPE+482
	.long	_RTTI_ATK_TATKSTATETYPE+504
	.long	_RTTI_ATK_TATKSTATETYPE+520
	.long	_RTTI_ATK_TATKSTATETYPE+540
	.long	_RTTI_ATK_TATKSTATETYPE+559
	.long	_RTTI_ATK_TATKSTATETYPE+577

.const_data
	.align 2
.globl	_INIT_ATK_PATKSTATE
_INIT_ATK_PATKSTATE:
	.byte	0
	.ascii	"\011PAtkState"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKSTATE
_RTTI_ATK_PATKSTATE:
	.byte	0
	.ascii	"\011PAtkState"

.const_data
	.align 2
.globl	_INIT_ATK_TATKSTATESET
_INIT_ATK_TATKSTATESET:
	.byte	13,12
	.ascii	"TAtkStateSet"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSTATESET
_RTTI_ATK_TATKSTATESET:
	.byte	13,12
	.ascii	"TAtkStateSet"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKSTATESETCLASS
_INIT_ATK_PATKSTATESETCLASS:
	.byte	0
	.ascii	"\021PAtkStateSetClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKSTATESETCLASS
_RTTI_ATK_PATKSTATESETCLASS:
	.byte	0
	.ascii	"\021PAtkStateSetClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKSTATESETCLASS
_INIT_ATK_TATKSTATESETCLASS:
	.byte	13,17
	.ascii	"TAtkStateSetClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSTATESETCLASS
_RTTI_ATK_TATKSTATESETCLASS:
	.byte	13,17
	.ascii	"TAtkStateSetClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKSTREAMABLECONTENTIFACE
_INIT_ATK_PATKSTREAMABLECONTENTIFACE:
	.byte	0
	.ascii	"\032PAtkStreamableContentIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKSTREAMABLECONTENTIFACE
_RTTI_ATK_PATKSTREAMABLECONTENTIFACE:
	.byte	0
	.ascii	"\032PAtkStreamableContentIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKSTREAMABLECONTENTIFACE
_INIT_ATK_TATKSTREAMABLECONTENTIFACE:
	.byte	13,26
	.ascii	"TAtkStreamableContentIface"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF145
_RTTI_ATK_DEF145:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF146
_RTTI_ATK_DEF146:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF147
_RTTI_ATK_DEF147:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKSTREAMABLECONTENTIFACE
_RTTI_ATK_TATKSTREAMABLECONTENTIFACE:
	.byte	13,26
	.ascii	"TAtkStreamableContentIface"
	.long	36,8
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF145
	.long	8
	.long	_RTTI_ATK_DEF146
	.long	12
	.long	_RTTI_ATK_DEF147
	.long	16
	.long	_RTTI_ATK_TATKFUNCTION
	.long	20
	.long	_RTTI_ATK_TATKFUNCTION
	.long	24
	.long	_RTTI_ATK_TATKFUNCTION
	.long	28
	.long	_RTTI_ATK_TATKFUNCTION
	.long	32

.const_data
	.align 2
.globl	_INIT_ATK_PATKTABLEIFACE
_INIT_ATK_PATKTABLEIFACE:
	.byte	0
	.ascii	"\016PAtkTableIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKTABLEIFACE
_RTTI_ATK_PATKTABLEIFACE:
	.byte	0
	.ascii	"\016PAtkTableIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKTABLEIFACE
_INIT_ATK_TATKTABLEIFACE:
	.byte	13,14
	.ascii	"TAtkTableIface"
	.long	168,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF150
_RTTI_ATK_DEF150:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF151
_RTTI_ATK_DEF151:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF152
_RTTI_ATK_DEF152:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF153
_RTTI_ATK_DEF153:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF154
_RTTI_ATK_DEF154:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF155
_RTTI_ATK_DEF155:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF156
_RTTI_ATK_DEF156:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF157
_RTTI_ATK_DEF157:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF158
_RTTI_ATK_DEF158:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF159
_RTTI_ATK_DEF159:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF160
_RTTI_ATK_DEF160:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF161
_RTTI_ATK_DEF161:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF162
_RTTI_ATK_DEF162:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF163
_RTTI_ATK_DEF163:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF164
_RTTI_ATK_DEF164:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF165
_RTTI_ATK_DEF165:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF166
_RTTI_ATK_DEF166:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF167
_RTTI_ATK_DEF167:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF168
_RTTI_ATK_DEF168:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF169
_RTTI_ATK_DEF169:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF170
_RTTI_ATK_DEF170:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF171
_RTTI_ATK_DEF171:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF172
_RTTI_ATK_DEF172:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF173
_RTTI_ATK_DEF173:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF174
_RTTI_ATK_DEF174:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF175
_RTTI_ATK_DEF175:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF176
_RTTI_ATK_DEF176:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF177
_RTTI_ATK_DEF177:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF178
_RTTI_ATK_DEF178:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF179
_RTTI_ATK_DEF179:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF180
_RTTI_ATK_DEF180:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF181
_RTTI_ATK_DEF181:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF182
_RTTI_ATK_DEF182:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF183
_RTTI_ATK_DEF183:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF184
_RTTI_ATK_DEF184:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF185
_RTTI_ATK_DEF185:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTABLEIFACE
_RTTI_ATK_TATKTABLEIFACE:
	.byte	13,14
	.ascii	"TAtkTableIface"
	.long	168,41
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF150
	.long	8
	.long	_RTTI_ATK_DEF151
	.long	12
	.long	_RTTI_ATK_DEF152
	.long	16
	.long	_RTTI_ATK_DEF153
	.long	20
	.long	_RTTI_ATK_DEF154
	.long	24
	.long	_RTTI_ATK_DEF155
	.long	28
	.long	_RTTI_ATK_DEF156
	.long	32
	.long	_RTTI_ATK_DEF157
	.long	36
	.long	_RTTI_ATK_DEF158
	.long	40
	.long	_RTTI_ATK_DEF159
	.long	44
	.long	_RTTI_ATK_DEF160
	.long	48
	.long	_RTTI_ATK_DEF161
	.long	52
	.long	_RTTI_ATK_DEF162
	.long	56
	.long	_RTTI_ATK_DEF163
	.long	60
	.long	_RTTI_ATK_DEF164
	.long	64
	.long	_RTTI_ATK_DEF165
	.long	68
	.long	_RTTI_ATK_DEF166
	.long	72
	.long	_RTTI_ATK_DEF167
	.long	76
	.long	_RTTI_ATK_DEF168
	.long	80
	.long	_RTTI_ATK_DEF169
	.long	84
	.long	_RTTI_ATK_DEF170
	.long	88
	.long	_RTTI_ATK_DEF171
	.long	92
	.long	_RTTI_ATK_DEF172
	.long	96
	.long	_RTTI_ATK_DEF173
	.long	100
	.long	_RTTI_ATK_DEF174
	.long	104
	.long	_RTTI_ATK_DEF175
	.long	108
	.long	_RTTI_ATK_DEF176
	.long	112
	.long	_RTTI_ATK_DEF177
	.long	116
	.long	_RTTI_ATK_DEF178
	.long	120
	.long	_RTTI_ATK_DEF179
	.long	124
	.long	_RTTI_ATK_DEF180
	.long	128
	.long	_RTTI_ATK_DEF181
	.long	132
	.long	_RTTI_ATK_DEF182
	.long	136
	.long	_RTTI_ATK_DEF183
	.long	140
	.long	_RTTI_ATK_DEF184
	.long	144
	.long	_RTTI_ATK_DEF185
	.long	148
	.long	_RTTI_ATK_TATKFUNCTION
	.long	152
	.long	_RTTI_ATK_TATKFUNCTION
	.long	156
	.long	_RTTI_ATK_TATKFUNCTION
	.long	160
	.long	_RTTI_ATK_TATKFUNCTION
	.long	164

.const_data
	.align 2
.globl	_INIT_ATK_PATKATTRIBUTE
_INIT_ATK_PATKATTRIBUTE:
	.byte	0
	.ascii	"\015PAtkAttribute"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKATTRIBUTE
_RTTI_ATK_PATKATTRIBUTE:
	.byte	0
	.ascii	"\015PAtkAttribute"

.const_data
	.align 2
.globl	_INIT_ATK_TATKATTRIBUTE
_INIT_ATK_TATKATTRIBUTE:
	.byte	13,13
	.ascii	"TAtkAttribute"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKATTRIBUTE
_RTTI_ATK_TATKATTRIBUTE:
	.byte	13,13
	.ascii	"TAtkAttribute"
	.long	8,2
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4

.const_data
	.align 2
.globl	_INIT_ATK_PATKTEXTATTRIBUTE
_INIT_ATK_PATKTEXTATTRIBUTE:
	.byte	0
	.ascii	"\021PAtkTextAttribute"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKTEXTATTRIBUTE
_RTTI_ATK_PATKTEXTATTRIBUTE:
	.byte	0
	.ascii	"\021PAtkTextAttribute"

.const_data
	.align 2
.globl	_INIT_ATK_TATKTEXTATTRIBUTE
_INIT_ATK_TATKTEXTATTRIBUTE:
	.byte	3,17
	.ascii	"TAtkTextAttribute"
	.byte	5
	.long	0,28,0
	.byte	21
	.ascii	"ATK_TEXT_ATTR_INVALID"
	.byte	25
	.ascii	"ATK_TEXT_ATTR_LEFT_MARGIN"
	.byte	26
	.ascii	"ATK_TEXT_ATTR_RIGHT_MARGIN"
	.byte	20
	.ascii	"ATK_TEXT_ATTR_INDENT"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_INVISIBLE"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_EDITABLE"
	.byte	32
	.ascii	"ATK_TEXT_ATTR_PIXELS_ABOVE_LINES"
	.byte	32
	.ascii	"ATK_TEXT_ATTR_PIXELS_BELOW_LINES"
	.byte	32
	.ascii	"ATK_TEXT_ATTR_PIXELS_INSIDE_WRAP"
	.byte	28
	.ascii	"ATK_TEXT_ATTR_BG_FULL_HEIGHT"
	.byte	18
	.ascii	"ATK_TEXT_ATTR_RISE"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_UNDERLINE"
	.byte	27
	.ascii	"ATK_TEXT_ATTR_STRIKETHROUGH"
	.byte	18
	.ascii	"ATK_TEXT_ATTR_SIZE"
	.byte	19
	.ascii	"ATK_TEXT_ATTR_SCALE"
	.byte	20
	.ascii	"ATK_TEXT_ATTR_WEIGHT"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_LANGUAGE"
	.byte	25
	.ascii	"ATK_TEXT_ATTR_FAMILY_NAME"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_BG_COLOR"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_FG_COLOR"
	.byte	24
	.ascii	"ATK_TEXT_ATTR_BG_STIPPLE"
	.byte	24
	.ascii	"ATK_TEXT_ATTR_FG_STIPPLE"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_WRAP_MODE"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_DIRECTION"
	.byte	27
	.ascii	"ATK_TEXT_ATTR_JUSTIFICATION"
	.byte	21
	.ascii	"ATK_TEXT_ATTR_STRETCH"
	.byte	21
	.ascii	"ATK_TEXT_ATTR_VARIANT"
	.byte	19
	.ascii	"ATK_TEXT_ATTR_STYLE"
	.byte	26
	.ascii	"ATK_TEXT_ATTR_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTATTRIBUTE
_RTTI_ATK_TATKTEXTATTRIBUTE:
	.byte	3,17
	.ascii	"TAtkTextAttribute"
	.byte	5
	.long	0,28,0
	.byte	21
	.ascii	"ATK_TEXT_ATTR_INVALID"
	.byte	25
	.ascii	"ATK_TEXT_ATTR_LEFT_MARGIN"
	.byte	26
	.ascii	"ATK_TEXT_ATTR_RIGHT_MARGIN"
	.byte	20
	.ascii	"ATK_TEXT_ATTR_INDENT"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_INVISIBLE"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_EDITABLE"
	.byte	32
	.ascii	"ATK_TEXT_ATTR_PIXELS_ABOVE_LINES"
	.byte	32
	.ascii	"ATK_TEXT_ATTR_PIXELS_BELOW_LINES"
	.byte	32
	.ascii	"ATK_TEXT_ATTR_PIXELS_INSIDE_WRAP"
	.byte	28
	.ascii	"ATK_TEXT_ATTR_BG_FULL_HEIGHT"
	.byte	18
	.ascii	"ATK_TEXT_ATTR_RISE"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_UNDERLINE"
	.byte	27
	.ascii	"ATK_TEXT_ATTR_STRIKETHROUGH"
	.byte	18
	.ascii	"ATK_TEXT_ATTR_SIZE"
	.byte	19
	.ascii	"ATK_TEXT_ATTR_SCALE"
	.byte	20
	.ascii	"ATK_TEXT_ATTR_WEIGHT"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_LANGUAGE"
	.byte	25
	.ascii	"ATK_TEXT_ATTR_FAMILY_NAME"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_BG_COLOR"
	.byte	22
	.ascii	"ATK_TEXT_ATTR_FG_COLOR"
	.byte	24
	.ascii	"ATK_TEXT_ATTR_BG_STIPPLE"
	.byte	24
	.ascii	"ATK_TEXT_ATTR_FG_STIPPLE"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_WRAP_MODE"
	.byte	23
	.ascii	"ATK_TEXT_ATTR_DIRECTION"
	.byte	27
	.ascii	"ATK_TEXT_ATTR_JUSTIFICATION"
	.byte	21
	.ascii	"ATK_TEXT_ATTR_STRETCH"
	.byte	21
	.ascii	"ATK_TEXT_ATTR_VARIANT"
	.byte	19
	.ascii	"ATK_TEXT_ATTR_STYLE"
	.byte	26
	.ascii	"ATK_TEXT_ATTR_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTATTRIBUTE_s2o
_RTTI_ATK_TATKTEXTATTRIBUTE_s2o:
	.long	29,18
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+483
	.long	9
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+274
	.long	20
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+529
	.long	23
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+603
	.long	5
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+152
	.long	17
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+457
	.long	19
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+506
	.long	21
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+554
	.long	3
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+107
	.long	0
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+32
	.long	4
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+128
	.long	24
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+627
	.long	16
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+434
	.long	28
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+719
	.long	1
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+54
	.long	6
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+175
	.long	7
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+208
	.long	8
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+241
	.long	2
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+80
	.long	10
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+303
	.long	14
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+393
	.long	13
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+374
	.long	25
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+655
	.long	12
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+346
	.long	27
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+699
	.long	11
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+322
	.long	26
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+677
	.long	15
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+413
	.long	22
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+579

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTATTRIBUTE_o2s
_RTTI_ATK_TATKTEXTATTRIBUTE_o2s:
	.long	0
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+32
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+54
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+80
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+107
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+128
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+152
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+175
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+208
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+241
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+274
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+303
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+322
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+346
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+374
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+393
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+413
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+434
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+457
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+483
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+506
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+529
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+554
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+579
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+603
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+627
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+655
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+677
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+699
	.long	_RTTI_ATK_TATKTEXTATTRIBUTE+719

.const_data
	.align 2
.globl	_INIT_ATK_PATKTEXTBOUNDARY
_INIT_ATK_PATKTEXTBOUNDARY:
	.byte	0
	.ascii	"\020PAtkTextBoundary"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKTEXTBOUNDARY
_RTTI_ATK_PATKTEXTBOUNDARY:
	.byte	0
	.ascii	"\020PAtkTextBoundary"

.const_data
	.align 2
.globl	_INIT_ATK_TATKTEXTBOUNDARY
_INIT_ATK_TATKTEXTBOUNDARY:
	.byte	3,16
	.ascii	"TAtkTextBoundary"
	.byte	5
	.long	0,6,0
	.byte	22
	.ascii	"ATK_TEXT_BOUNDARY_CHAR"
	.byte	28
	.ascii	"ATK_TEXT_BOUNDARY_WORD_START"
	.byte	26
	.ascii	"ATK_TEXT_BOUNDARY_WORD_END"
	.byte	32
	.ascii	"ATK_TEXT_BOUNDARY_SENTENCE_START"
	.byte	30
	.ascii	"ATK_TEXT_BOUNDARY_SENTENCE_END"
	.byte	28
	.ascii	"ATK_TEXT_BOUNDARY_LINE_START"
	.byte	26
	.ascii	"ATK_TEXT_BOUNDARY_LINE_END"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTBOUNDARY
_RTTI_ATK_TATKTEXTBOUNDARY:
	.byte	3,16
	.ascii	"TAtkTextBoundary"
	.byte	5
	.long	0,6,0
	.byte	22
	.ascii	"ATK_TEXT_BOUNDARY_CHAR"
	.byte	28
	.ascii	"ATK_TEXT_BOUNDARY_WORD_START"
	.byte	26
	.ascii	"ATK_TEXT_BOUNDARY_WORD_END"
	.byte	32
	.ascii	"ATK_TEXT_BOUNDARY_SENTENCE_START"
	.byte	30
	.ascii	"ATK_TEXT_BOUNDARY_SENTENCE_END"
	.byte	28
	.ascii	"ATK_TEXT_BOUNDARY_LINE_START"
	.byte	26
	.ascii	"ATK_TEXT_BOUNDARY_LINE_END"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTBOUNDARY_s2o
_RTTI_ATK_TATKTEXTBOUNDARY_s2o:
	.long	7,0
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+31
	.long	6
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+203
	.long	5
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+174
	.long	4
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+143
	.long	3
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+110
	.long	2
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+83
	.long	1
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+54

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTBOUNDARY_o2s
_RTTI_ATK_TATKTEXTBOUNDARY_o2s:
	.long	0
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+31
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+54
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+83
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+110
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+143
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+174
	.long	_RTTI_ATK_TATKTEXTBOUNDARY+203

.const_data
	.align 2
.globl	_INIT_ATK_PATKTEXTIFACE
_INIT_ATK_PATKTEXTIFACE:
	.byte	0
	.ascii	"\015PAtkTextIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKTEXTIFACE
_RTTI_ATK_PATKTEXTIFACE:
	.byte	0
	.ascii	"\015PAtkTextIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKTEXTIFACE
_INIT_ATK_TATKTEXTIFACE:
	.byte	13,13
	.ascii	"TAtkTextIface"
	.long	104,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF194
_RTTI_ATK_DEF194:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF195
_RTTI_ATK_DEF195:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF196
_RTTI_ATK_DEF196:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF197
_RTTI_ATK_DEF197:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF198
_RTTI_ATK_DEF198:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF199
_RTTI_ATK_DEF199:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF200
_RTTI_ATK_DEF200:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF201
_RTTI_ATK_DEF201:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF202
_RTTI_ATK_DEF202:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF203
_RTTI_ATK_DEF203:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF204
_RTTI_ATK_DEF204:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF205
_RTTI_ATK_DEF205:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF206
_RTTI_ATK_DEF206:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF207
_RTTI_ATK_DEF207:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF208
_RTTI_ATK_DEF208:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF209
_RTTI_ATK_DEF209:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF210
_RTTI_ATK_DEF210:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF211
_RTTI_ATK_DEF211:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF212
_RTTI_ATK_DEF212:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF213
_RTTI_ATK_DEF213:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKTEXTIFACE
_RTTI_ATK_TATKTEXTIFACE:
	.byte	13,13
	.ascii	"TAtkTextIface"
	.long	104,25
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF194
	.long	8
	.long	_RTTI_ATK_DEF195
	.long	12
	.long	_RTTI_ATK_DEF196
	.long	16
	.long	_RTTI_ATK_DEF197
	.long	20
	.long	_RTTI_ATK_DEF198
	.long	24
	.long	_RTTI_ATK_DEF199
	.long	28
	.long	_RTTI_ATK_DEF200
	.long	32
	.long	_RTTI_ATK_DEF201
	.long	36
	.long	_RTTI_ATK_DEF202
	.long	40
	.long	_RTTI_ATK_DEF203
	.long	44
	.long	_RTTI_ATK_DEF204
	.long	48
	.long	_RTTI_ATK_DEF205
	.long	52
	.long	_RTTI_ATK_DEF206
	.long	56
	.long	_RTTI_ATK_DEF207
	.long	60
	.long	_RTTI_ATK_DEF208
	.long	64
	.long	_RTTI_ATK_DEF209
	.long	68
	.long	_RTTI_ATK_DEF210
	.long	72
	.long	_RTTI_ATK_DEF211
	.long	76
	.long	_RTTI_ATK_DEF212
	.long	80
	.long	_RTTI_ATK_DEF213
	.long	84
	.long	_RTTI_ATK_TATKFUNCTION
	.long	88
	.long	_RTTI_ATK_TATKFUNCTION
	.long	92
	.long	_RTTI_ATK_TATKFUNCTION
	.long	96
	.long	_RTTI_ATK_TATKFUNCTION
	.long	100

.const_data
	.align 2
.globl	_INIT_ATK_TATKEVENTLISTENER
_INIT_ATK_TATKEVENTLISTENER:
	.byte	23,17
	.ascii	"TAtkEventListener"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKEVENTLISTENER
_RTTI_ATK_TATKEVENTLISTENER:
	.byte	23,17
	.ascii	"TAtkEventListener"

.const_data
	.align 2
.globl	_INIT_ATK_TATKEVENTLISTENERINITPROC
_INIT_ATK_TATKEVENTLISTENERINITPROC:
	.byte	23,25
	.ascii	"TAtkEventListenerInitProc"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKEVENTLISTENERINITPROC
_RTTI_ATK_TATKEVENTLISTENERINITPROC:
	.byte	23,25
	.ascii	"TAtkEventListenerInitProc"

.const_data
	.align 2
.globl	_INIT_ATK_TATKEVENTLISTENERINIT
_INIT_ATK_TATKEVENTLISTENERINIT:
	.byte	23,21
	.ascii	"TAtkEventListenerInit"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKEVENTLISTENERINIT
_RTTI_ATK_TATKEVENTLISTENERINIT:
	.byte	23,21
	.ascii	"TAtkEventListenerInit"

.const_data
	.align 2
.globl	_INIT_ATK_PATKKEYEVENTSTRUCT
_INIT_ATK_PATKKEYEVENTSTRUCT:
	.byte	0
	.ascii	"\022PAtkKeyEventStruct"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKKEYEVENTSTRUCT
_RTTI_ATK_PATKKEYEVENTSTRUCT:
	.byte	0
	.ascii	"\022PAtkKeyEventStruct"

.const_data
	.align 2
.globl	_INIT_ATK_TATKKEYEVENTSTRUCT
_INIT_ATK_TATKKEYEVENTSTRUCT:
	.byte	13,18
	.ascii	"TAtkKeyEventStruct"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKKEYEVENTSTRUCT
_RTTI_ATK_TATKKEYEVENTSTRUCT:
	.byte	13,18
	.ascii	"TAtkKeyEventStruct"
	.long	28,7
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_GLIB2_PGCHAR
	.long	16
	.long	_RTTI_SYSTEM_WORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24

.const_data
	.align 2
.globl	_INIT_ATK_TATKKEYSNOOPFUNC
_INIT_ATK_TATKKEYSNOOPFUNC:
	.byte	23,16
	.ascii	"TAtkKeySnoopFunc"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKKEYSNOOPFUNC
_RTTI_ATK_TATKKEYSNOOPFUNC:
	.byte	23,16
	.ascii	"TAtkKeySnoopFunc"

.const_data
	.align 2
.globl	_INIT_ATK_PATKKEYEVENTTYPE
_INIT_ATK_PATKKEYEVENTTYPE:
	.byte	0
	.ascii	"\020PAtkKeyEventType"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKKEYEVENTTYPE
_RTTI_ATK_PATKKEYEVENTTYPE:
	.byte	0
	.ascii	"\020PAtkKeyEventType"

.const_data
	.align 2
.globl	_INIT_ATK_TATKKEYEVENTTYPE
_INIT_ATK_TATKKEYEVENTTYPE:
	.byte	3,16
	.ascii	"TAtkKeyEventType"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"ATK_KEY_EVENT_PRESS"
	.byte	21
	.ascii	"ATK_KEY_EVENT_RELEASE"
	.byte	26
	.ascii	"ATK_KEY_EVENT_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKKEYEVENTTYPE
_RTTI_ATK_TATKKEYEVENTTYPE:
	.byte	3,16
	.ascii	"TAtkKeyEventType"
	.byte	5
	.long	0,2,0
	.byte	19
	.ascii	"ATK_KEY_EVENT_PRESS"
	.byte	21
	.ascii	"ATK_KEY_EVENT_RELEASE"
	.byte	26
	.ascii	"ATK_KEY_EVENT_LAST_DEFINED"
	.byte	3
	.ascii	"atk"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKKEYEVENTTYPE_s2o
_RTTI_ATK_TATKKEYEVENTTYPE_s2o:
	.long	3,2
	.long	_RTTI_ATK_TATKKEYEVENTTYPE+73
	.long	0
	.long	_RTTI_ATK_TATKKEYEVENTTYPE+31
	.long	1
	.long	_RTTI_ATK_TATKKEYEVENTTYPE+51

.const_data
	.align 2
.globl	_RTTI_ATK_TATKKEYEVENTTYPE_o2s
_RTTI_ATK_TATKKEYEVENTTYPE_o2s:
	.long	0
	.long	_RTTI_ATK_TATKKEYEVENTTYPE+31
	.long	_RTTI_ATK_TATKKEYEVENTTYPE+51
	.long	_RTTI_ATK_TATKKEYEVENTTYPE+73

.const_data
	.align 2
.globl	_INIT_ATK_PATKUTIL
_INIT_ATK_PATKUTIL:
	.byte	0
	.ascii	"\010PAtkUtil"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKUTIL
_RTTI_ATK_PATKUTIL:
	.byte	0
	.ascii	"\010PAtkUtil"

.const_data
	.align 2
.globl	_INIT_ATK_TATKUTIL
_INIT_ATK_TATKUTIL:
	.byte	13,8
	.ascii	"TAtkUtil"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_ATK_TATKUTIL
_RTTI_ATK_TATKUTIL:
	.byte	13,8
	.ascii	"TAtkUtil"
	.long	12,1
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0

.const_data
	.align 2
.globl	_INIT_ATK_PATKUTILCLASS
_INIT_ATK_PATKUTILCLASS:
	.byte	0
	.ascii	"\015PAtkUtilClass"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKUTILCLASS
_RTTI_ATK_PATKUTILCLASS:
	.byte	0
	.ascii	"\015PAtkUtilClass"

.const_data
	.align 2
.globl	_INIT_ATK_TATKUTILCLASS
_INIT_ATK_TATKUTILCLASS:
	.byte	13,13
	.ascii	"TAtkUtilClass"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF226
_RTTI_ATK_DEF226:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF227
_RTTI_ATK_DEF227:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF228
_RTTI_ATK_DEF228:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF229
_RTTI_ATK_DEF229:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF230
_RTTI_ATK_DEF230:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF231
_RTTI_ATK_DEF231:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF232
_RTTI_ATK_DEF232:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKUTILCLASS
_RTTI_ATK_TATKUTILCLASS:
	.byte	13,13
	.ascii	"TAtkUtilClass"
	.long	96,8
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0
	.long	_RTTI_ATK_DEF226
	.long	68
	.long	_RTTI_ATK_DEF227
	.long	72
	.long	_RTTI_ATK_DEF228
	.long	76
	.long	_RTTI_ATK_DEF229
	.long	80
	.long	_RTTI_ATK_DEF230
	.long	84
	.long	_RTTI_ATK_DEF231
	.long	88
	.long	_RTTI_ATK_DEF232
	.long	92

.const_data
	.align 2
.globl	_INIT_ATK_PATKVALUEIFACE
_INIT_ATK_PATKVALUEIFACE:
	.byte	0
	.ascii	"\016PAtkValueIface"

.const_data
	.align 2
.globl	_RTTI_ATK_PATKVALUEIFACE
_RTTI_ATK_PATKVALUEIFACE:
	.byte	0
	.ascii	"\016PAtkValueIface"

.const_data
	.align 2
.globl	_INIT_ATK_TATKVALUEIFACE
_INIT_ATK_TATKVALUEIFACE:
	.byte	13,14
	.ascii	"TAtkValueIface"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_ATK_DEF235
_RTTI_ATK_DEF235:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF236
_RTTI_ATK_DEF236:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF237
_RTTI_ATK_DEF237:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_DEF238
_RTTI_ATK_DEF238:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_ATK_TATKVALUEIFACE
_RTTI_ATK_TATKVALUEIFACE:
	.byte	13,14
	.ascii	"TAtkValueIface"
	.long	32,7
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_ATK_DEF235
	.long	8
	.long	_RTTI_ATK_DEF236
	.long	12
	.long	_RTTI_ATK_DEF237
	.long	16
	.long	_RTTI_ATK_DEF238
	.long	20
	.long	_RTTI_ATK_TATKFUNCTION
	.long	24
	.long	_RTTI_ATK_TATKFUNCTION
	.long	28
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

