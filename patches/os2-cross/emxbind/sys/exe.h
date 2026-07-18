/* sys/exe.h -- EMX/OS2 executable format structures for Linux port.
   Defines a.out, DOS MZ, and OS/2 LX binary-format headers used by
   emxbind. Field layouts follow the public a.out, MZ, and LX specs.
   All multi-byte fields are little-endian (x86). */
#ifndef SYS_EXE_H
#define SYS_EXE_H


/* ---- a.out exec header (32 bytes) ---- */
struct a_out_header {
  dword magic;        /* magic number (0x0107 OMAGIC, 0x010b ZMAGIC) */
  dword text_size;    /* text segment size */
  dword data_size;    /* initialized data size */
  dword bss_size;     /* uninitialized data size */
  dword sym_size;     /* symbol table size */
  dword entry;        /* entry point */
  dword trsize;       /* text relocation size */
  dword drsize;       /* data relocation size */
  dword machtype;     /* machine type (EMX extension) */
  dword flags;        /* flags (EMX extension) */
};

/* ---- DOS MZ header (exe1) ---- */
struct exe1_header {
  word magic;         /* 0x5a4d 'MZ' */
  word last_page;     /* bytes on last page */
  word pages;         /* pages in file */
  word reloc_size;    /* number of relocations */
  word hdr_size;      /* header size in paragraphs */
  word min_alloc;     /* minimum extra paragraphs */
  word max_alloc;     /* maximum extra paragraphs */
  word ss;            /* initial SS */
  word sp;            /* initial SP */
  word chksum;        /* checksum */
  word ip;            /* initial IP */
  word cs;            /* initial CS */
  word reloc_ptr;     /* relocation table offset */
  word overlay;       /* overlay number */
};

/* ---- Extended MZ header fields (exe2) ---- */
struct exe2_header {
  word res1[0x1c/2];  /* reserved area up to new header ptr */
  word new_lo;        /* new header offset (low word) */
  word new_hi;        /* new header offset (high word) */
};

/* ---- OS/2 LX (Linear eXecutable) header ---- */
struct os2_header {
  word  magic;                /* 'LX' 0x584c */
  byte  byte_order;           /* byte ordering */
  byte  word_order;           /* word ordering */
  dword level;                /* format level */
  word  cpu;                  /* CPU type */
  word  os;                   /* OS type */
  dword ver;                  /* module version */
  dword mod_flags;            /* module flags */
  dword mod_pages;            /* number of pages in module */
  dword entry_obj;            /* object number for EIP */
  dword entry_eip;            /* entry address (EIP) */
  dword stack_obj;            /* object number for ESP */
  dword stack_esp;            /* stack address (ESP) */
  dword pagesize;             /* page size */
  dword pageshift;            /* page-offset shift */
  dword fixup_size;           /* fixup section size */
  dword fixup_checksum;       /* fixup section checksum */
  dword loader_size;          /* loader section size */
  dword loader_checksum;      /* loader section checksum */
  dword obj_offset;           /* object table offset */
  dword obj_count;            /* object table count */
  dword pagemap_offset;       /* object page map offset */
  dword itermap_offset;       /* iterated data map offset */
  dword rsctab_offset;        /* resource table offset */
  dword rsctab_count;         /* resource table count */
  dword resname_offset;       /* resident name table offset */
  dword entry_offset;         /* entry table offset */
  dword moddir_offset;        /* module directives offset */
  dword moddir_count;         /* module directives count */
  dword fixpage_offset;       /* fixup page table offset */
  dword fixrecord_offset;     /* fixup record table offset */
  dword impmod_offset;        /* import module table offset */
  dword impmod_count;         /* import module count */
  dword impprocname_offset;   /* import proc name table offset */
  dword page_checksum_offset; /* per-page checksum offset */
  dword enum_offset;          /* data pages offset */
  dword preload_count;        /* preload page count */
  dword nonresname_offset;    /* non-resident name table offset */
  dword nonresname_size;      /* non-resident name table size */
  dword nonresname_checksum;  /* non-resident name checksum */
  dword auto_obj;             /* auto data segment object */
  dword debug_offset;         /* debug info offset */
  dword debug_size;           /* debug info size */
  dword instance_preload;     /* preload instance pages */
  dword instance_demand;      /* demand instance pages */
  dword heap_size;            /* heap size (16-bit) */
  dword stack_size;           /* stack size */
};

/* ---- EMX bind headers ---- */
struct os2_bind_header {
  char  options[64];
  dword flags;
  dword os2_dll;
  dword text_base, text_end;
  dword data_base, data_end;
  dword bss_base, bss_end;
  dword heap_base, heap_brk, heap_end, heap_off;
  dword stack_base, stack_end;
};

struct dos_bind_header {
  char  hdr[16];       /* EMX bind signature string */
  dword bind_flag;
  char  options[64];
  dword hdr_loc_lo;
  dword hdr_loc_hi;
};

/* ---- a.out symbol table entry ---- */
struct nlist {
  long          string;      /* offset into string table (n_strx) */
  unsigned char type;        /* symbol type (n_type) */
  char          other;       /* (n_other) */
  short         desc;        /* (n_desc) */
  dword         value;       /* symbol value (n_value) */
};

/* ---- a.out relocation entry (bitfield layout, little-endian x86) ---- */
struct reloc {
  dword address;              /* offset of relocation */
  dword symbolnum : 24;       /* symbol index or section */
  dword pcrel     : 1;        /* PC-relative */
  dword length    : 2;        /* 0=byte 1=word 2=long */
  dword ext       : 1;        /* external symbol */
  dword baserel   : 1;
  dword jmptable  : 1;
  dword relative  : 1;
  dword copy      : 1;
};

/* a.out symbol type constants */
#define N_UNDF  0x00
#define N_ABS   0x02
#define N_TEXT  0x04
#define N_DATA  0x06
#define N_BSS   0x08
#define N_EXT   0x01
#define N_TYPE  0x1e
#define N_STAB  0xe0
#define N_IMP1  0x68
#define N_IMP2  0x6a

/* a.out magic */
#define OMAGIC  0x0107
#define NMAGIC  0x0108
#define ZMAGIC  0x010b
#define UMAGIC  0x0111        /* EMX user-area magic */

/* ---- EMX process "user area" header (a.out extension) ---- */
struct user {
  dword u_magic;              /* UMAGIC */
  dword u_data_base;
  dword u_data_end;
  dword u_data_off;
  dword u_heap_base;
  dword u_heap_brk;
  dword u_heap_end;
  dword u_heap_off;
  dword u_heapobjs_off;
  dword u_stack_base;
  dword u_stack_end;
  dword u_text_base;
  dword u_text_end;
  dword u_bss_base;
  dword u_bss_end;
  dword u_flags;
  dword u_reserved[16];
};

/* OS/2 LX object table entry */
struct object {
  dword virt_size;
  dword virt_base;
  dword attr_flags;
  dword map_first;
  dword map_count;
  dword reserved;
};

#endif /* SYS_EXE_H */
