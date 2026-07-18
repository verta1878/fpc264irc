# r3 Release Checklist

Ordered steps to cut the 2.6.4irc-r3 release across both repos.

## fpc264irc (compiler fork)

- [ ] Confirm version: `src/compiler/version.pas` has release_tag='r3',
      release_date='2026-07-12'. (Already set.)
- [ ] Run the full test sweep; confirm all six suites green.
- [ ] Commit using RELEASE-r3/commit-fpc264irc.txt (or split into focused
      commits — OS/2 TProcess / RTL / IDE / LCL / Mystic tooling).
- [ ] Tag: `git tag -a v2.6.4irc-r3 -m "FPC 2.6.4irc-r3"` then push tags.
- [ ] Update the GitHub About text from RELEASE-r3/github-about.txt
      (currently stale — reads like r1).
- [ ] Create the GitHub Release from the tag; paste
      RELEASE-r3/release-notes.md.
- [ ] (Optional) attach prebuilt binaries / the source tarball.

## mystic-bbs-irc (Mystic maintainer)

- [ ] Commit records.pas version bump using RELEASE-r3/commit-mystic.txt.
- [ ] If build.sh shows only a mode change and that's unintended:
      `git checkout -- build.sh`.
- [ ] (Optional) note in the Mystic README that OS/2 builds need the
      fpc264irc fork + build-mystic-os2.sh.

## Both repos are SEPARATE

The OS/2 fix lives in the COMPILER fork, not in Mystic. The Mystic repo's
only change is the version string. Do not mix the two.
