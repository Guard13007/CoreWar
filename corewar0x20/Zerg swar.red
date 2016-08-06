;name Zerg swarm
;author Silas Bazar
;assert 1==1


STEP1   EQU     1800
STEP2   EQU     3740
STEP3   EQU     STEP1-STEP2+2*8-OFF
OFF     EQU     -50
DIST    EQU     289



pl1     spl     1
       spl     1
       spl     1
p1      spl     @0,     }STEP1
       mov.i   }-1,    >-1
p12     spl     @0,     }STEP2
       mov.i   }-1,    >-1
       mov.i   4,      >p12+DIST
       add.ab  #13,    p12+STEP1+DIST
       mov.i   {-4,    <1
       jmp     @0,     >STEP3
       dat.f   >2667,  >5334

       dat.f   0,      0
