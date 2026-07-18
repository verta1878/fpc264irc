# Endgame vision: standardize the comport library → a full build environment

The intended endpoint once the comport/com0com library is finished. Recorded as
footing so the goal is clear (and the honest distinctions are kept).

## The goal
Once the comport library is finished, propose to the fpc264irc maintainer to bring
it INTO the FPC ecosystem and STANDARDIZE it — make virtual/serial COM support a
first-class, blessed part of the toolchain, not a bolt-on companion. From "a
library you add to your unit path" to "the standard way FPC does serial/COM across
the targeted OSes."

## The payoff — a full, coherent BBS/retro build environment
Standardizing the comport layer completes a whole toolchain:
- fpc264irc              — the compiler (with the 16-bit/i8086 backport)
- comport lib (in FPC)   — the STANDARD COM/serial layer (FOSSIL + virtual-COM)
- Lazarus 1.2.6 + LCL    — the GUI
- ELECOM (companion)     — the comms-library heritage
- com0com                - needs win9x support.
- ntvdmx64 / DOSBox-X    — the runtime for 16-bit code on modern Windows
Together = a COMPLETE environment to build DOS BBS doors, FOSSIL drivers, Telnet
bridges, and GUI servers on modern machines with standard tools that fit together.
Not a museum — a living toolchain. Revival WITH A FUTURE.

## netmodem2irc adapts — and that's good
If the comport library becomes standard FPC, netmodem2irc changes to consume the
standardized version instead of its own extracted copy. This is netmodem2irc
SHEDDING code and leaning on a blessed foundation — it gets SIMPLER. Expected and
welcome (tremedy2c: standardization untangles netmodem2irc further), not churn.

## Honest distinction — fork vs. upstream (keep these separate)
- **Standardize within the fpc264irc ecosystem** = the NEAR, achievable version.
  fpc264irc is the maintainer's fork; getting the library blessed there is doable
  and in collaborative reach.
- **Upstream into official Free Pascal** = the AMBITIOUS, longer version. Needs the
  FPC core team's buy-in, code standards, license alignment, long-term maintenance
  commitment. A different conversation with different people.
Both are worthy; don't blur them (same care we took not to blur ntvdmx64-the-fork
with official NTVDM). Decide which is being aimed at for each step.

## Why it matters
This is the difference between "we saved some old code" and "we rebuilt the
workshop so people can MAKE NEW THINGS in the old tradition." A standardized comport
layer is the keystone that turns rescued pieces into a working, coherent build
environment — the practical form of leaving a path (verta) for the next generation.

## Current status (r4, 2026-07-17)

**PPU loading crash FIXED (r4).** The fix has been identified: `compiler/ppu.pas` reads
host-sized aint (8 bytes on x86_64) instead of target-sized (2 bytes on
i8086). Patch in `docs/i8086_ppu_fix.md`. Once ppcross8086 is rebuilt with
this fix, all three files compile to a DOS .exe. The i8086 backend works for
single-unit programs (writeln, file I/O, dos unit, Intr() dispatch all verified
on DOSBox), but loading complex PPU chains crashes the cross-compiler. This is
the gate for comport unit work on the i8086 target. o7
