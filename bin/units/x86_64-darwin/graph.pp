unit graph;
{ x86_64-darwin has no graph unit - this file only makes "uses graph" stop with a message that says what to use.
  The Mac graph is built on Carbon (QuickDraw windows), which is 32-bit only; there is no ptcgraph for darwin.
  See tools/graph-322-build/README.md (byte, 2026-10-16) }
interface
{$fatal x86_64-darwin has no graph unit (the Mac graph uses Carbon, which is 32-bit only). Build the program for i386-darwin instead: bin/ppc386 -Tdarwin -Fubin/units/i386-darwin. See tools/graph-322-build/README.md}
implementation
end.
