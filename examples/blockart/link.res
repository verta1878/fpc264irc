SEARCH_DIR(/lib64/)
SEARCH_DIR(/usr/lib64/)
SEARCH_DIR(./examples/blockart/mlib/)
SEARCH_DIR(/usr/lib/x86_64-linux-gnu/)
SEARCH_DIR(./examples/blockart/)
SEARCH_DIR(./bin/units/x86_64-linux/)
SEARCH_DIR(./bin/units/x86_64-linux/lcl/)
SEARCH_DIR(./bin/)
INPUT(
./bin/units/x86_64-linux/prt0.o
examples/blockart/blockart.o
./bin/units/x86_64-linux/system.o
./bin/units/x86_64-linux/objpas.o
./bin/units/x86_64-linux/math.o
examples/blockart/m_types.o
./bin/units/x86_64-linux/dos.o
examples/blockart/m_strings.o
examples/blockart/m_input.o
examples/blockart/m_output.o
examples/blockart/m_menubox.o
examples/blockart/m_menuform.o
examples/blockart/m_quicksort.o
examples/blockart/m_ansi2pipe.o
examples/blockart/m_fileio.o
examples/blockart/m_term_ansi.o
examples/blockart/m_datetime.o
examples/blockart/blockart_dialogs.o
examples/blockart/blockart_tdf.o
./bin/units/x86_64-linux/inifiles.o
examples/blockart/asciidraw.o
examples/blockart/blockart_block.o
examples/blockart/blockart_save.o
examples/blockart/blockart_tdfgallery.o
examples/blockart/blockart_gbext.o
examples/blockart/m_menuinput.o
./bin/units/x86_64-linux/sysutils.o
./bin/units/x86_64-linux/unix.o
./bin/units/x86_64-linux/errors.o
./bin/units/x86_64-linux/sysconst.o
./bin/units/x86_64-linux/unixtype.o
./bin/units/x86_64-linux/baseunix.o
./bin/units/x86_64-linux/unixutil.o
./bin/units/x86_64-linux/syscall.o
./bin/units/x86_64-linux/crt.o
./bin/units/x86_64-linux/termio.o
./bin/units/x86_64-linux/strings.o
examples/blockart/m_input_linux.o
examples/blockart/m_output_linux.o
examples/blockart/m_io_base.o
./bin/units/x86_64-linux/classes.o
./bin/units/x86_64-linux/contnrs.o
./bin/units/x86_64-linux/types.o
./bin/units/x86_64-linux/typinfo.o
./bin/units/x86_64-linux/rtlconsts.o
examples/blockart/m_bits.o
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
