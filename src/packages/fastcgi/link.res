SEARCH_DIR(/lib64/)
SEARCH_DIR(/usr/lib64/)
SEARCH_DIR(/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/)
SEARCH_DIR(/home/claude/fpc264irc_final/src/packages/hash/units/x86_64-linux/)
SEARCH_DIR(/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/)
SEARCH_DIR(/home/claude/fpc264irc_final/src/packages/fcl-process/units/x86_64-linux/)
SEARCH_DIR(/home/claude/fpc264irc_final/src/packages/fpmkunit/units/x86_64-linux/)
SEARCH_DIR(/home/claude/fpc264irc_final/bin/)
INPUT(
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/cprt0.o
fpmake.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/system.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/objpas.o
/home/claude/fpc264irc_final/src/packages/fpmkunit/units/x86_64-linux/fpmkunit.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/baseunix.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/cthreads.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/sysutils.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/classes.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/strutils.o
/home/claude/fpc264irc_final/src/packages/fcl-process/units/x86_64-linux/process.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/zipper.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/unixtype.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/unix.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/initc.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/dl.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/unixutil.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/syscall.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/ctypes.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/errors.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/sysconst.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/types.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/typinfo.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/rtlconsts.o
/home/claude/fpc264irc_final/src/packages/fcl-process/units/x86_64-linux/pipes.o
/home/claude/fpc264irc_final/src/rtl/units/x86_64-linux/termio.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/zstream.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/zbase.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/gzio.o
/home/claude/fpc264irc_final/src/packages/hash/units/x86_64-linux/crc.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/zdeflate.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/zinflate.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/trees.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/adler.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/infblock.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/infutil.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/infcodes.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/inftrees.o
/home/claude/fpc264irc_final/src/packages/paszlib/units/x86_64-linux/inffast.o
)
INPUT(
-lpthread
-ldl
)
GROUP(
-lc
)
ENTRY(_start)
SECTIONS
{
  PROVIDE (__executable_start = 0x0400000); . = 0x0400000 +  SIZEOF_HEADERS;
  . = 0 +  SIZEOF_HEADERS;
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
  .got            : { *(.got .toc) }
  .got.plt        : { *(.got.plt .toc.plt) }
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
  /* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
  /* DWARF 1 */
  .debug          0 : { *(.debug) }
  .line           0 : { *(.line) }
  /* GNU DWARF 1 extensions */
  .debug_srcinfo  0 : { *(.debug_srcinfo) }
  .debug_sfnames  0 : { *(.debug_sfnames) }
  /* DWARF 1.1 and DWARF 2 */
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  /* DWARF 2 */
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
  /* SGI/MIPS DWARF 2 extensions */
  .debug_weaknames 0 : { *(.debug_weaknames) }
  .debug_funcnames 0 : { *(.debug_funcnames) }
  .debug_typenames 0 : { *(.debug_typenames) }
  .debug_varnames  0 : { *(.debug_varnames) }
  /DISCARD/ : { *(.note.GNU-stack) }
}
