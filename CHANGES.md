# Changes

## Repository Changes
- [x] Update the iNES header to NES2.0 and match it with the nointro dump. (+ SHA1 hashes)
- [ ] Add a Makefile rule to produce the PAL & NWC versions if possible.
- [ ] Add a Makefile rule to produce an xdelta patch if possible. This requires the nointro dump and xdelta3.

## Music/Sound Changes
- [ ] Use the unused music track on the title screen. (fix noise channel on PAL)
- [ ] Adjust SFX timing on PAL to be closer to NTSC.

## Bug Fixes & Small Tweaks
- [ ] Always set PPUCTRL during the NMI handler.
- [ ] Purge unused controller polling code.
- [ ] Fix controller polling code to avoid variable conflicts. (may avoid game crash)
- [ ] Fix level number modulo operation to prevent glitched colour palettes from being used.
- [ ] Fix level number BCD conversion logic.
- [ ] Change score handling to use base 100 encoding instead of base 10. (may avoid game crash)
- [ ] Check for the score cap before adding any points. (may avoid game crash)
- [ ] Avoid adding zero to the score. (may avoid game crash)
- [ ] Fix the calculation of pushdown points.
- [ ] Remove select button debugging functionality on PAL.

## Modernised Quality of Life Mechanics
- [ ] Copyright screen is always skippable using the start button. (similar to EYTZAG)
- [ ] Type-A/B ending screens are always skippable using the start button. (similar to NYIPEX)
