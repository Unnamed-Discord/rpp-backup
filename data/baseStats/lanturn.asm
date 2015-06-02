LanturnBaseStats: ; 38aa6 (e:4aa6)
db DEX_LANTURN ; pokedex id
db 125 ; base hp
db 58 ; base attack
db 58 ; base defense
db 67 ; base speed
db 76 ; base special
db WATER ; species type 1
db ELECTRIC ; species type 2
db 75 ; catch rate
db 161 ; base exp yield
INCBIN "pic/bmon/lanturn.pic",0,1 ; 55, sprite dimensions
dw LanturnPicFront
dw LanturnPicBack
; attacks known at lvl 0
db BUBBLE
db SUPERSONIC
db THUNDER_WAVE
db ELECTRO_BALL
db 3 ; growth rate
; learnset
db %00100000 ;8  - 1
db %01111110 ;16 - 9
db %10001000 ;24 - 17
db %11000001 ;32 - 25
db %00000000 ;40 - 33
db %00011000 ;48 - 41
db %01010010 ;H6 - 49
db BANK(LanturnPicFront)
