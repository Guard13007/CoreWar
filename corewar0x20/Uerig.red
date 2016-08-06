;redcode-94
;name     Uerige
;author   @alt_bier
;strategy Stone and Imp Spiral
;assert   CORESIZE == 8000 && MAXLENGTH >= 100
;email    richard@gowen.net
;----------------------------------------------------------
; Definitions
;----------------------------------
alt_s01     equ     2668
alt_s02     equ     alt_s01
alt_s03     equ     2667
alt_p01     equ     8
alt_p02     equ     alt_p01
alt_p03     equ     10
alt_o01     equ     -2
alt_o02     equ     0
alt_o03     equ     -7
eins_alt    equ     (gehen-1834)+2*alt_s02
bier_inc    equ     190
bier_offst  equ     701
dec_offst   equ     (alt_s03*2)-bier_inc
           org     gehen
;----------------------------------
; Start
;----------------------------------
gehen       mov.i   alt_2,eins_alt+alt_o02+2
           mov.i   alt_3,eins_alt+alt_o03
           mov.i   <bier_src,@bier_dst2
           mov.i   <bier_src,<bier_dst
           mov.i   <bier_src,<bier_dst
           mov.i   <bier_src,<bier_dst
           spl     @bier_dst,<dec_offst
           mov.i   <bier_src,<bier_dst
;----------------------------------
; Imps And Stones
;----------------------------------
alt_split   spl     1,<dec_offst
           spl     1,<dec_offst
           mov.i   alt_2,<gehen
bier_dst    mov.i   -2,#bier_end+1-bier_offst
bier_dst2   mov.i   -1,#bier_end+1-(bier_offst-1)
           spl     <0,#alt_vector
bier_src    djn.a   @(alt_vector-1),#bier_end+1
bier        mov.i   <bier_spl+5+bier_inc*800,bier_spl
bier_spl    spl     bier,<dec_offst+bier
           add.f   bier_end+1,bier
           djn.f   bier_spl,<dec_offst+bier
bier_end    mov.i   bier_inc,<-bier_inc
;----------------------------------
; Decoy
;----------------------------------
drink       for     42
           dat     0,0
           rof
;----------------------------------
; Vectors
;----------------------------------
alt_2       mov.i   #(alt_s02/2),alt_s02
alt_3       mov.i   #(alt_s03/2),alt_s03
alt_A_fld   equ     eins_alt+(alt_p&chug+1-2*drink)*alt_s&chug+alt_o&chug
alt_B_fld   equ     eins_alt+(alt_p&chug+0-2*drink)*alt_s&chug+alt_o&chug
chug        for     3
drink       for     (alt_p&chug)/2
           jmp     alt_A_fld,alt_B_fld
           rof
           rof
alt_vector
           end
