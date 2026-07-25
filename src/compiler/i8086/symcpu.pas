{
    i8086 per-CPU symbol type aliases (thin backport shim for 2.6.4).

    FPC 3.0's symcpu is a 68-class def-FACTORY family (every tXXXdef has a
    tcpuXXXdef subclass, assigned to cXXXdef class-of vars). 2.6.4 predates
    that factory and instantiates def classes directly. This shim provides the
    tcpuXXX NAMES the i8086 codegen references, mapping them to 2.6.4's base
    classes, plus the two that carry real i8086 behaviour:
      - tcpupointerdef = tx86pointerdef (near/far, from symx86)
      - tcpuabsolutevarsym = tabsolutevarsym (absseg/addrsegment fields added
        directly, i8086-gated, in symsym)

    GNU GPL v2 (same as FPC).
}
{$i fpcdefs.inc}

unit symcpu;

interface

uses
  symtype, symdef, symsym, symx86, cpubase;

type
  { the near/far pointer type — the one with real i8086 behaviour }
  tcpupointerdef      = tx86pointerdef;
  tcpupointerdefclass = tx86pointerdefclass;

  { absolute var sym: 2.6.4's tabsolutevarsym already carries absseg +
    addrsegment (i8086-gated) directly, so alias it }
  tcpuabsolutevarsym  = tabsolutevarsym;

  { everything else the i8086 codegen names is just the base class — 2.6.4
    instantiates these directly, no per-CPU subclass needed }
  tcpuarraydef        = tarraydef;
  tcpuarraydefclass   = class of tarraydef;
  tcpurecorddef       = trecorddef;
  tcpurecorddefclass  = class of trecorddef;
  tcpuobjectdef       = tobjectdef;
  tcpuobjectdefclass  = class of tobjectdef;
  tcpuprocdef         = tprocdef;
  tcpuprocdefclass    = class of tprocdef;
  tcpuprocvardef      = tprocvardef;
  tcpuprocvardefclass = class of tprocvardef;
  tcpuorddef          = torddef;
  tcpuorddefclass     = class of torddef;
  tcpufloatdef        = tfloatdef;
  tcpufloatdefclass   = class of tfloatdef;
  tcpuenumdef         = tenumdef;
  tcpuenumdefclass    = class of tenumdef;
  tcpusetdef          = tsetdef;
  tcpusetdefclass     = class of tsetdef;
  tcpustringdef       = tstringdef;
  tcpustringdefclass  = class of tstringdef;
  tcpufiledef         = tfiledef;
  tcpufiledefclass    = class of tfiledef;
  tcpuvariantdef      = tvariantdef;
  tcpuvariantdefclass = class of tvariantdef;
  tcpuclassrefdef     = tclassrefdef;
  tcpuclassrefdefclass= class of tclassrefdef;
  tcpuformaldef       = tformaldef;
  tcpuformaldefclass  = class of tformaldef;
  tcpuforwarddef      = tforwarddef;
  tcpuforwarddefclass = class of tforwarddef;
  tcpuundefineddef    = tundefineddef;
  tcpuundefineddefclass = class of tundefineddef;
  tcpuerrordef        = terrordef;
  tcpuerrordefclass   = class of terrordef;

  { syms }
  tcpuprocsym         = tprocsym;
  tcputypesym         = ttypesym;
  tcpufieldvarsym     = tfieldvarsym;
  tcpulocalvarsym     = tlocalvarsym;
  tcpuparavarsym      = tparavarsym;
  tcpustaticvarsym    = tstaticvarsym;
  tcpuconstsym        = tconstsym;
  tcpuenumsym         = tenumsym;
  tcpulabelsym        = tlabelsym;
  tcpupropertysym     = tpropertysym;
  tcpuunitsym         = tunitsym;
  tcpusyssym          = tsyssym;

  { i8086 helpers (from 3.0.4 symcpu) }
  {# Returns true if the code pointer for p is far (medium/large/huge code
     models use far code; tiny/small/compact use near code). }
  function is_proc_far(p: tabstractprocdef): boolean;
  {# Returns true if p is a far pointer def }
  function is_farpointer(p : tdef) : boolean;
  {# Returns true if p is a huge pointer def }
  function is_hugepointer(p : tdef) : boolean;

implementation

  uses
    globals, globtype, symconst;

  function is_proc_far(p: tabstractprocdef): boolean;
    begin
      { i8086 backport: 2.6.4's tprocdef has no per-proc far flag; key off the
        code memory model. mm_medium/large/huge => far code. }
      result:=current_settings.x86memorymodel in
        [mm_medium,mm_large,mm_huge];
    end;

  function is_farpointer(p : tdef) : boolean;
    begin
      result:=(p.typ=pointerdef) and
              (tx86pointerdef(p).x86pointertyp=x86pt_far);
    end;

  function is_hugepointer(p : tdef) : boolean;
    begin
      result:=(p.typ=pointerdef) and
              (tx86pointerdef(p).x86pointertyp=x86pt_huge);
    end;

end.
