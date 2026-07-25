{
    Generate i8086 assembler for call nodes (i8086 backport for 2.6.4).

    Extends 2.6.4's tcgcallnode directly (2.6.4 predates the 3.0 nx86cal
    tx86callnode intermediate; 2.6.4's tcgcallnode already handles the FPU
    return-value cases nx86cal was created for).

    Path (b) scoping: the 3.0 call-BY-REFERENCE feature
    (can_call_ref/do_call_ref/extra_call_ref_code) is deferred. Far calls go
    through the normal name/register path for the first ppcross8086; call-ref
    is a later optimization.

    GNU GPL v2 (same as FPC).
}
unit n8086cal;

{$i fpcdefs.inc}

interface

    uses
      ncgcal,cgutils;

    type
       ti8086callnode = class(tcgcallnode)
       protected
          procedure pop_parasize(pop_size:longint);override;
          procedure extra_interrupt_code;override;
       end;


implementation

    uses
      globtype,systems,
      cutils,verbose,globals,
      cgbase,
      cpubase,paramgr,
      aasmtai,aasmdata,aasmcpu,
      ncal,nbas,nmem,nld,ncnv,
      cga,cgobj,cgx86,cpuinfo;


{*****************************************************************************
                             TI8086CALLNODE
*****************************************************************************}

    procedure ti8086callnode.extra_interrupt_code;
      begin
        emit_none(A_PUSHF,S_W);
        if current_settings.x86memorymodel in x86_near_code_models then
          emit_reg(A_PUSH,S_W,NR_CS);
      end;


    procedure ti8086callnode.pop_parasize(pop_size:longint);
      var
        hreg : tregister;
      begin
        if (paramanager.use_fixed_stack) then
          begin
            dec(pop_size,pushedparasize);
            if (pop_size < 0) then
              current_asmdata.CurrAsmList.concat(taicpu.op_const_reg(A_SUB,S_W,-pop_size,NR_SP));
            exit;
          end;

        if pop_size=2 then
          begin
            hreg:=cg.getintregister(current_asmdata.CurrAsmList,OS_INT);
            current_asmdata.CurrAsmList.concat(taicpu.op_reg(A_POP,S_W,hreg));
          end
        else
          if pop_size<>0 then
            current_asmdata.CurrAsmList.concat(taicpu.op_const_reg(A_ADD,S_W,pop_size,NR_SP));
      end;


begin
   ccallnode:=ti8086callnode;
end.
