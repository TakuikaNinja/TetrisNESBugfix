# Changes

## Repository Changes
- [x] Update the iNES header to NES2.0 and match it with the nointro dump. (+ SHA1 hashes)
- [ ] Add a branch for the FDS port if possible.
- [x] Add a Makefile variable to enable debug features. (`make DEBUG=1`)
- [x] Add Makefile variable to produce the PAL version. (`make PAL=1`)
- [x] Add Makefile variable to produce the NWC version. (`make NWC=1`)

## Music/Sound Changes
- [x] Use the unused music track on the title screen and adjust the demo start timing.
- [ ] Fix the note timing on PAL for the title screen.
- [x] Adjust music note offests on PAL to be closer to NTSC.
- [ ] Adjust SFX data on PAL to be closer to NTSC.

## Bug Fixes & Small Tweaks
- [X] Always set PPUCTRL during the NMI handler.
- [x] Purge unused controller polling code.
- [x] Purge handling of unused line clear stats.
- [x] Fix controller polling code to avoid variable conflicts. (avoids game crash)
- [x] Fix gameModeState check to prevent unwanted behaviour caused by left+down+right inputs.
- [x] Nullify left+right inputs when shifting pieces.
- [x] Allow the softdrop/pushdown to resume after releasing held left or right inputs. (pushdown points are reset)
- [x] Fix and optimise the palette update routine to prevent glitched colour palettes from being used.
- [x] Change level number handling to use base 100 encoding instead of binary. (cap at 99)
- [x] Change line number handling to use base 100 encoding instead of base 10. (cap clears at 999)
- [x] Change piece spawn statistics to use base 100 encoding. (cap pieces at 999 each)
- [x] Fix the level transition check. (e.g. level 18 start transitions at 190 lines instead of 130)
- [x] Change score handling to use base 100 encoding instead of base 10. (avoids game crash)
- [x] Check for the score cap before adding any points. (avoids game crash)
- [x] Avoid adding to the score if no lines were cleared. (avoids game crash)
- [x] Fix the calculation of pushdown points.
- [x] Change select button debugging functionality so it uses a compile-time flag (`DEBUG`).
- [x] Use `DEBUG` flag to enable score calculation profiling. (easy killscreen access, raster bar display)
- [x] Fix glitched frames on certain screen transitions.
- [x] B-Type level bonus properly applies to level 10 and higher.
- [x] Prevent Tetris animation from lingering past the demo sequence/resets.
- [x] Prevent the soft drop/pushdown duration from being carried over via a soft reset.
- [x] Fix the line clear processing for the topmost row.
- [x] Fix line clear animation oddities which occur when the game is paused/unpaused in specific scenarios.
- [x] Prevent extra PRNG calls in the level select screen. (meant for unused 2 player mode functionality)

## Modernised Quality of Life Mechanics
- [x] Copyright/legal screen is always skippable using the start button. (similar to EYTZAG)
- [x] A-Type ending screen is always skippable using the start button. (similar to NYIPEX)
- [x] The A button can be used to advance from the type select screen to the level select screen.
