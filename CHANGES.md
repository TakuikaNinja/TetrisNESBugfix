# Changes

## Repository Changes
- [x] Update the iNES header to NES2.0 and match it with the nointro dump. (+ SHA1 hashes)
- [ ] Add a Makefile rule to produce the PAL & NWC versions if possible.
- [ ] Add a Makefile rule to produce an xdelta patch if possible. This requires the nointro dump and xdelta3.

## Music/Sound Changes
- [ ] Use the unused music track on the title screen. (fix noise channel on PAL)
- [ ] Adjust SFX timing on PAL to be closer to NTSC.

## Bug Fixes & Small Tweaks
- [X] Always set PPUCTRL during the NMI handler.
- [x] Purge unused controller polling code.
- [x] Fix controller polling code to avoid variable conflicts. (may avoid game crash)
- [x] Fix level number modulo operation to prevent glitched colour palettes from being used.
- [x] Change level number handling to use base 100 encoding instead of binary, and cap it at 99.
- [ ] Change line number handling to use base 100 encoding instead of base 10. (cap clears at 999)
- [ ] Change score handling to use base 100 encoding instead of base 10. (may avoid game crash)
- [ ] Check for the score cap before adding any points. (may avoid game crash)
- [ ] Avoid adding zero to the score. (may avoid game crash)
- [ ] Fix the calculation of pushdown points.
- [ ] Change select button debugging functionality so it uses a compile-time flag called DEBUG.
- [x] Fix glitched frames on certain screen transitions.
- [ ] Type-B level bonus properly applies to level 10 and higher.

## Modernised Quality of Life Mechanics
- [x] Copyright/legal screen is always skippable using the start button. (similar to EYTZAG)
- [ ] Type-A/B ending screens are always skippable using the start button. (similar to NYIPEX)
