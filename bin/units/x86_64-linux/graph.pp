unit graph;
{ x86_64-linux has no graph unit - this file only makes "uses graph" stop with a message that says what to use.
  FPC builds graph for Linux/i386 only (it needs svgalib, libvga); ptcgraph is the graph backend here.
  See tools/graph-322-build/README.md (byte, 2026-10-16) }
interface
{$fatal x86_64-linux has no graph unit (FPC builds graph for Linux/i386 only, it needs svgalib). Use ptcgraph instead: uses ptcgraph; (ptccrt / ptcmouse for crt / mouse). See tools/graph-322-build/README.md}
implementation
end.
