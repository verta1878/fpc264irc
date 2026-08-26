SEARCH_DIR(/lib/)
SEARCH_DIR(/usr/lib/)
SEARCH_DIR(/tmp/)
SEARCH_DIR(./src/packages/usb/src/)
SEARCH_DIR(./bin/)
INPUT(
bin/units/i386-linux/test_usbcross.o
bin/units/i386-linux/system.o
bin/units/i386-linux/objpas.o
bin/units/i386-linux/usbcore.o
bin/units/i386-linux/usbhid.o
bin/units/i386-linux/sysutils.o
bin/units/i386-linux/unix.o
bin/units/i386-linux/errors.o
bin/units/i386-linux/sysconst.o
bin/units/i386-linux/unixtype.o
bin/units/i386-linux/baseunix.o
bin/units/i386-linux/unixutil.o
bin/units/i386-linux/syscall.o
bin/units/i386-linux/si_prc.o
)
ENTRY(_start)
SECTIONS
{
  PROVIDE (__executable_start = 0x010000); . = 0x010000 + SIZEOF_HEADERS;
  .interp         : { *(.interp) }
  .hash           : { *(.hash) }
  .dynsym         : { *(.dynsym) }
  .dynstr         : { *(.dynstr) }
  .gnu.version    : { *(.gnu.version) }
  .gnu.version_d  : { *(.gnu.version_d) }
  .gnu.version_r  : { *(.gnu.version_r) }
  .rel.dyn        :
    {
      *(.rel.init)
      *(.rel.text .rel.text.* .rel.gnu.linkonce.t.*)
      *(.rel.fini)
      *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.*)
      *(.rel.data.rel.ro*)
      *(.rel.data .rel.data.* .rel.gnu.linkonce.d.*)
      *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.*)
      *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.*)
      *(.rel.got)
      *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.*)
    }
  .rela.dyn       :
    {
      *(.rela.init)
      *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*)
      *(.rela.fini)
      *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*)
      *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*)
      *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*)
      *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*)
      *(.rela.got)
      *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*)
    }
  .rel.plt        : { *(.rel.plt) }
  .rela.plt       : { *(.rela.plt) }
  .init           :
  {
    KEEP (*(.init))
  } =0x90909090
  .plt            : { *(.plt) }
  .text           :
  {
    *(.text .stub .text.* .gnu.linkonce.t.*)
    KEEP (*(.text.*personality*))
    *(.gnu.warning)
  } =0x90909090
  .fini           :
  {
    KEEP (*(.fini))
  } =0x90909090
  PROVIDE (_etext = .);
  .rodata         :
  {
    *(.rodata .rodata.* .gnu.linkonce.r.*)
  }
  . = ALIGN (0x1000) - ((0x1000 - .) & (0x1000 - 1));
  .dynamic        : { *(.dynamic) }
  .got            : { *(.got) }
  .got.plt        : { *(.got.plt) }
  .data           :
  {
    *(.data .data.* .gnu.linkonce.d.*)
    KEEP (*(.fpc .fpc.n_version .fpc.n_links))
    KEEP (*(.gnu.linkonce.d.*personality*))
  }
  PROVIDE (_edata = .);
  PROVIDE (edata = .);
  .threadvar : { *(.threadvar .threadvar.* .gnu.linkonce.tv.*) }
  __bss_start = .;
  .bss            :
  {
   *(.dynbss)
   *(.bss .bss.* .gnu.linkonce.b.*)
   *(COMMON)
   . = ALIGN(32 / 8);
  }
  . = ALIGN(32 / 8);
  PROVIDE (_end = .);
  PROVIDE (end = .);
  .stab          0 : { *(.stab) }
  .stabstr       0 : { *(.stabstr) }
}
