;
; iNES header
;

; This iNES header is from Brad Smith (rainwarrior)
; https://github.com/bbbradsmith/NES-ca65-example

.segment "HEADER"

INES_MAPPER = 1 ; 1 = MMC1
NES2_SUBMAPPER = 5 ; 5 = fixed 32K PRG-ROM
INES_MIRROR = 0 ; 0 = horizontal mirroring, 1 = vertical mirroring
INES_SRAM   = 0 ; 1 = battery backed SRAM at $6000-7FFF
NES2_REGION = PAL ; 0 = NTSC, 1 = PAL, 2 = NTSC/PAL, 3 = PAL Famiclone ("Dendy")
NES2_INPUT = 1 ; 1 = standard NES/FC controllers

.byte 'N', 'E', 'S', $1A ; ID
.byte $02 ; 16k PRG chunk count
.byte $02 ; 8k CHR chunk count
.byte INES_MIRROR | (INES_SRAM << 1) | ((INES_MAPPER & $f) << 4)
.byte (INES_MAPPER & %11110000) | %00001000 ; NES2.0 header identifier
.byte ((NES2_SUBMAPPER & $f) << 4) ; submapper
.byte $0, $0, $0, NES2_REGION, $0, $0, NES2_INPUT ; misc. fields, region, input device

; PRG segments
.include "main.asm"

.segment "CHR"
.incbin "gfx/title_menu_tileset.chr"
.if NWC <> 1
.incbin "gfx/typeB_ending_tileset.chr"
.incbin "gfx/typeA_ending_tileset.chr"
.endif
.incbin "gfx/game_tileset.chr"
