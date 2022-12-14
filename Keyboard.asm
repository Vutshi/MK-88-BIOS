                             VECTOR_TABLE
   f000:fef3     dw         FEA5h
   f000:fef5     dw         E987h                                   ; INTERRUPT 9
   f000:fef7     dw         FF23h                                   ; D11
   f000:fef9     dw         D100h                                   ; IRQ3 Keyboard_MK88
   f000:fefb     dw         FF23h                                   ; D11
   f000:fefd     dw         FF23h                                   ; D11
   f000:feff     dw         EF57h                                   ; DISK_INT
   f000:ff01     dw         FF23h                                   ; D11
   f000:ff03     dw         F065h                                   ; VIDEO_IO
   f000:ff05     dw         F84Dh                                   ; EQUIPMENT
   f000:ff07     dw         F841h                                   ; MEMORY_SIZE_DET
   f000:ff09     dw         EC59h                                   ; DISKETTE_IO
   f000:ff0b     dw         E739h                                   ; RS232_IO
   f000:ff0d     dw         F859h                                   ; CASSETTE_IO
   f000:ff0f     dw         E82Eh                                   ; INTERRUPT 16H
   f000:ff11     dw         EFD2h                                   ; PRINTER_IO
   f000:ff13     dw         C003h                                   ; INTERRUPT 18H (GO TO RESIDENT 
   f000:ff15     dw         E6F2h                                   ; BOOT_STRAP
   f000:ff17     dw         FE6Eh                                   ; TIME_OF_DAY
   f000:ff19     dw         FF53h                                   ; DUMMY_RETURN
   f000:ff1b     dw         FF53h                                   ; DUMMY_RETURN
   f000:ff1d     dw         F0A4h                                   ; VIDEO_PARMS
   f000:ff1f     dw         EFC7h                                   ; OFFSET DISK_BASE, Interrupt 1Eh
   f000:ff21     dw         C90Ch



                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined Keyboard_MK88()
             undefined         AL:1           <RETURN>
                             Keyboard_MK88                              XREF[1]:  f000:fef9(*)  
   f000:d100     PUSH       AX
   f000:d101     PUSH       BX
   f000:d102     PUSH       CX
   f000:d103     PUSH       DX
   f000:d104     PUSH       SI
   f000:d105     PUSH       DS
   f000:d106     MOV        AX,0x40
   f000:d109     MOV        DS,AX
   f000:d10b     MOV        SI,0x3e
   f000:d10e     MOV        BH,14
                             LAB_f000_d110                              XREF[2]:  f000:d125(j), f000:d139(j)  
   f000:d110     DEC        SI
   f000:d111     DEC        BH
   f000:d113     CMP        BH,0x0
   f000:d116     JGE        LAB_f000_d11b
   f000:d118     JMP        LAB_f000_d1a0
                             LAB_f000_d11b                              XREF[1]:  f000:d116(j)  
   f000:d11b     MOV        AL,BH
   f000:d11d     OUT        0x62,AL
   f000:d11f     IN         AL,0xc0                                 ; (probably) Read data bus
   f000:d121     MOV        DL,byte ptr [SI]=>DAT_0000_043d
   f000:d123     CMP        AL,DL
   f000:d125     JZ         LAB_f000_d110
   f000:d127     MOV        byte ptr [SI]=>DAT_0000_043d,AL
   f000:d129     MOV        DH,DL
   f000:d12b     XOR        DH,AL
   f000:d12d     MOV        BL,0x7
                             LAB_f000_d12f                              XREF[1]:  f000:d137(j)  
   f000:d12f     ROL        AL,0x1
   f000:d131     ROL        DH,0x1
   f000:d133     JC         LAB_f000_d13b
   f000:d135     DEC        BL
   f000:d137     JGE        LAB_f000_d12f
   f000:d139     JMP        LAB_f000_d110
                             LAB_f000_d13b                              XREF[1]:  f000:d133(j)  
   f000:d13b     AND        AL,0x1
   f000:d13d     JZ         LAB_f000_d144
   f000:d13f     MOV        AH,0x1
   f000:d141     JMP        LAB_f000_d146
   f000:d143     NOP
                             LAB_f000_d144                              XREF[1]:  f000:d13d(j)  
   f000:d144     MOV        AH,0x0
                             LAB_f000_d146                              XREF[1]:  f000:d141(j)  
   f000:d146     SHL        BH,0x1
   f000:d148     SHL        BH,0x1
   f000:d14a     SHL        BH,0x1
   f000:d14c     ADD        BL,BH
   f000:d14e     MOV        AL,BL
   f000:d150     CMP        AL,0x20
   f000:d152     JBE        LAB_f000_d157
   f000:d154     JMP        LAB_f000_d2d9
                             LAB_f000_d157                              XREF[1]:  f000:d152(j)  
   f000:d157     CMP        AL,0xd
   f000:d159     JBE        LAB_f000_d1ac
   f000:d15b     JMP        LAB_f000_d24f
                             LAB_f000_d15e                              XREF[2]:  f000:d2d3(j), f000:d2f1(j)  
   f000:d15e     SUB        AL,0x21
   f000:d160     MOV        BX,0xd4e0
   f000:d163     XLAT       CS:BX=>DAT_0000_d52e
                             LAB_f000_d165                              XREF[2]:  f000:d267(j), f000:d2bc(j)  
   f000:d165     CMP        AH,0x0
   f000:d168     JZ         LAB_f000_d16c
   f000:d16a     OR         AL,0x80
                             LAB_f000_d16c                              XREF[1]:  f000:d168(j)  
   f000:d16c     OUT        0x60,AL
   f000:d16e     INT        0x9                                     ; call IBM INT 9
   f000:d170     IN         AL,0x61
   f000:d172     TEST       byte ptr [offset KB_FLAG],0x40
   f000:d177     JZ         LAB_f000_d17d
   f000:d179     OR         AL,0x10
   f000:d17b     JMP        LAB_f000_d17f
                             LAB_f000_d17d                              XREF[1]:  f000:d177(j)  
   f000:d17d     AND        AL,0xef
                             LAB_f000_d17f                              XREF[1]:  f000:d17b(j)  
   f000:d17f     TEST       byte ptr [offset KB_FLAG],0x20
   f000:d184     JZ         LAB_f000_d18b
   f000:d186     OR         AL,0x8
   f000:d188     JMP        LAB_f000_d18d
   f000:d18a     NOP
                             LAB_f000_d18b                              XREF[1]:  f000:d184(j)  
   f000:d18b     AND        AL,0xf7
                             LAB_f000_d18d                              XREF[1]:  f000:d188(j)  
   f000:d18d     TEST       byte ptr [offset KB_FLAG_1],0x1
   f000:d192     JNZ        LAB_f000_d199
   f000:d194     OR         AL,0x4
   f000:d196     JMP        LAB_f000_d19b
   f000:d198     NOP
                             LAB_f000_d199                              XREF[1]:  f000:d192(j)  
   f000:d199     AND        AL,0xfb
                             LAB_f000_d19b                              XREF[1]:  f000:d196(j)  
   f000:d19b     OUT        0x61,AL
   f000:d19d     JMP        LAB_f000_d1a5
   f000:d19f     NOP
                             LAB_f000_d1a0                              XREF[4]:  f000:d118(j), f000:d280(j), 
                                                                                 f000:d287(j), f000:d2d6(j)  
   f000:d1a0     CLI
   f000:d1a1     MOV        AL,0x20
   f000:d1a3     OUT        0x20,AL
                             LAB_f000_d1a5                              XREF[2]:  f000:d19d(j), f000:d2b0(j)  
   f000:d1a5     POP        DS
   f000:d1a6     POP        SI
   f000:d1a7     POP        DX
   f000:d1a8     POP        CX
   f000:d1a9     POP        BX
   f000:d1aa     POP        AX
   f000:d1ab     IRET
                             LAB_f000_d1ac                              XREF[1]:  f000:d159(j)  
   f000:d1ac     MOV        CH,0x0
   f000:d1ae     PUSH       word ptr [offset KB_FLAG]
   f000:d1b2     OR         byte ptr [offset KB_FLAG_1],0x2
   f000:d1b7     TEST       byte ptr [offset KB_FLAG],0x4
   f000:d1bc     JZ         LAB_f000_d1c6
   f000:d1be     MOV        BX,0xd4b2
   f000:d1c1     XLAT       CS:BX=>DAT_0000_d521
   f000:d1c3     JMP        LAB_f000_d2a1
                             LAB_f000_d1c6                              XREF[1]:  f000:d1bc(j)  
   f000:d1c6     TEST       byte ptr [offset KB_FLAG],0x8
   f000:d1cb     JZ         LAB_f000_d1d5
   f000:d1cd     MOV        BX,0xd4c0
   f000:d1d0     XLAT       CS:BX=>DAT_0000_d52f
   f000:d1d2     JMP        LAB_f000_d2a1
                             LAB_f000_d1d5                              XREF[1]:  f000:d1cb(j)  
   f000:d1d5     TEST       byte ptr [offset KB_FLAG],0x3
   f000:d1da     JZ         LAB_f000_d200
   f000:d1dc     MOV        CL,AL
   f000:d1de     INC        CX
   f000:d1df     MOV        DX,word ptr CS:[DAT_f000_d4b0]          ; = C004h
   f000:d1e4     MOV        BL,0x3
                             LAB_f000_d1e6                              XREF[1]:  f000:d1e8(j)  
   f000:d1e6     ROL        DX,0x1
   f000:d1e8     LOOP       LAB_f000_d1e6
   f000:d1ea     JC         LAB_f000_d1f4
   f000:d1ec     NOT        BL
   f000:d1ee     AND        byte ptr [offset KB_FLAG],BL
   f000:d1f2     JMP        LAB_f000_d1f8
                             LAB_f000_d1f4                              XREF[1]:  f000:d1ea(j)  
   f000:d1f4     OR         byte ptr [offset KB_FLAG],BL
                             LAB_f000_d1f8                              XREF[1]:  f000:d1f2(j)  
   f000:d1f8     MOV        BX,0xd49e
   f000:d1fb     XLAT       CS:BX=>DAT_0000_d50d
   f000:d1fd     JMP        LAB_f000_d2a1
                             LAB_f000_d200                              XREF[1]:  f000:d1da(j)  
   f000:d200     TEST       byte ptr [offset KB_FLAG_1],0x4
   f000:d205     JZ         LAB_f000_d22b
   f000:d207     MOV        CL,AL
   f000:d209     INC        CX
   f000:d20a     MOV        DX,word ptr CS:[DAT_f000_d4ae]          ; = 78E0h
   f000:d20f     MOV        BL,0x3
                             LAB_f000_d211                              XREF[1]:  f000:d213(j)  
   f000:d211     ROL        DX,0x1
   f000:d213     LOOP       LAB_f000_d211
   f000:d215     JC         LAB_f000_d21f
   f000:d217     NOT        BL
   f000:d219     AND        byte ptr [offset KB_FLAG],BL
   f000:d21d     JMP        LAB_f000_d223
                             LAB_f000_d21f                              XREF[1]:  f000:d215(j)  
   f000:d21f     OR         byte ptr [offset KB_FLAG],BL
                             LAB_f000_d223                              XREF[1]:  f000:d21d(j)  
   f000:d223     MOV        BX,0xd490
   f000:d226     XLAT       CS:BX=>DAT_0000_d4ff
   f000:d228     JMP        LAB_f000_d2a1
   f000:d22a     NOP
                             LAB_f000_d22b                              XREF[1]:  f000:d205(j)  
   f000:d22b     MOV        CL,AL
   f000:d22d     INC        CX
   f000:d22e     MOV        DX,word ptr CS:[DAT_f000_d4ac]          ; = E478h
   f000:d233     MOV        BL,0x3
                             LAB_f000_d235                              XREF[1]:  f000:d237(j)  
   f000:d235     ROL        DX,0x1
   f000:d237     LOOP       LAB_f000_d235
   f000:d239     JC         LAB_f000_d243
   f000:d23b     NOT        BL
   f000:d23d     AND        byte ptr [offset KB_FLAG],BL
   f000:d241     JMP        LAB_f000_d247
                             LAB_f000_d243                              XREF[1]:  f000:d239(j)  
   f000:d243     OR         byte ptr [offset KB_FLAG],BL
                             LAB_f000_d247                              XREF[1]:  f000:d241(j)  
   f000:d247     MOV        BX,0xd482
   f000:d24a     XLAT       CS:BX=>DAT_0000_d4f1
   f000:d24c     JMP        LAB_f000_d2a1
   f000:d24e     NOP
                             LAB_f000_d24f                              XREF[1]:  f000:d15b(j)  
   f000:d24f     CMP        AL,0x19
   f000:d251     JNZ        LAB_f000_d261
   f000:d253     MOV        AL,0x9
   f000:d255     PUSH       word ptr [offset KB_FLAG]
   f000:d259     MOV        byte ptr [offset KB_FLAG],0x1
   f000:d25e     JMP        LAB_f000_d2a1
   f000:d260     NOP
                             LAB_f000_d261                              XREF[1]:  f000:d251(j)  
   f000:d261     CMP        AL,0x1b
   f000:d263     JNZ        LAB_f000_d26a
   f000:d265     MOV        AL,0x1c
   f000:d267     JMP        LAB_f000_d165
                             LAB_f000_d26a                              XREF[1]:  f000:d263(j)  
   f000:d26a     CMP        AL,0x1a
   f000:d26c     JNZ        LAB_f000_d27c
   f000:d26e     MOV        AL,0x35
   f000:d270     PUSH       word ptr [offset KB_FLAG]
   f000:d274     MOV        byte ptr [offset KB_FLAG],0x0
   f000:d279     JMP        LAB_f000_d2a1
   f000:d27b     NOP
                             LAB_f000_d27c                              XREF[1]:  f000:d26c(j)  
   f000:d27c     CMP        AL,0x1c
   f000:d27e     JNZ        LAB_f000_d283
   f000:d280     JMP        LAB_f000_d1a0
                             LAB_f000_d283                              XREF[1]:  f000:d27e(j)  
   f000:d283     CMP        AL,0x1d
   f000:d285     JNZ        LAB_f000_d28a
   f000:d287     JMP        LAB_f000_d1a0
                             LAB_f000_d28a                              XREF[1]:  f000:d285(j)  
   f000:d28a     CMP        AL,0x1f
   f000:d28c     JA         LAB_f000_d2b3
   f000:d28e     MOV        BX,0xd4ce
   f000:d291     SUB        AL,0xe
   f000:d293     XLAT       CS:BX=>DAT_0000_d52f
   f000:d295     PUSH       word ptr [offset KB_FLAG]
   f000:d299     AND        byte ptr [offset KB_FLAG],0xdf
   f000:d29e     JMP        LAB_f000_d2a1
   f000:d2a0     NOP
                             LAB_f000_d2a1                              XREF[9]:  f000:d1c3(j), f000:d1d2(j), 
                                                                                 f000:d1fd(j), f000:d228(j), 
                                                                                 f000:d24c(j), f000:d25e(j), 
                                                                                 f000:d279(j), f000:d29e(j), 
                                                                                 f000:d2ca(j)  
   f000:d2a1     CMP        AH,0x0
   f000:d2a4     JZ         LAB_f000_d2a8
   f000:d2a6     OR         AL,0x80
                             LAB_f000_d2a8                              XREF[1]:  f000:d2a4(j)  
   f000:d2a8     OUT        0x60,AL
   f000:d2aa     INT        0x9                                     ; Call IBM INT 9
   f000:d2ac     POP        word ptr [offset KB_FLAG]
   f000:d2b0     JMP        LAB_f000_d1a5
                             LAB_f000_d2b3                              XREF[1]:  f000:d28c(j)  
   f000:d2b3     TEST       byte ptr [offset KB_FLAG],0x4
   f000:d2b8     JZ         LAB_f000_d2bf
   f000:d2ba     MOV        AL,0x46
   f000:d2bc     JMP        LAB_f000_d165
                             LAB_f000_d2bf                              XREF[1]:  f000:d2b8(j)  
   f000:d2bf     MOV        AL,0x45
   f000:d2c1     PUSH       word ptr [offset KB_FLAG]
   f000:d2c5     OR         byte ptr [offset KB_FLAG],0x4
   f000:d2ca     JMP        LAB_f000_d2a1
                             LAB_f000_d2cc                              XREF[6]:  f000:d2db(j), f000:d2df(j), 
                                                                                 f000:d2e3(j), f000:d2e7(j), 
                                                                                 f000:d2eb(j), f000:d2ef(j)  
   f000:d2cc     TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:d2d1     JNZ        LAB_f000_d2d6
   f000:d2d3     JMP        LAB_f000_d15e
                             LAB_f000_d2d6                              XREF[1]:  f000:d2d1(j)  
   f000:d2d6     JMP        LAB_f000_d1a0
                             LAB_f000_d2d9                              XREF[1]:  f000:d154(j)  
   f000:d2d9     CMP        AL,0x4a
   f000:d2db     JZ         LAB_f000_d2cc
   f000:d2dd     CMP        AL,0x4b
   f000:d2df     JZ         LAB_f000_d2cc
   f000:d2e1     CMP        AL,0x55
   f000:d2e3     JZ         LAB_f000_d2cc
   f000:d2e5     CMP        AL,0x56
   f000:d2e7     JZ         LAB_f000_d2cc
   f000:d2e9     CMP        AL,0x5e
   f000:d2eb     JZ         LAB_f000_d2cc
   f000:d2ed     CMP        AL,0x5f
   f000:d2ef     JZ         LAB_f000_d2cc
   f000:d2f1     JMP        LAB_f000_d15e
   f000:d2f4     ??         1Bh
   f000:d2f5     ??         21h    !
   f000:d2f6     ??         40h    @
   f000:d2f7     ??         23h    #
   f000:d2f8     ??         24h    $
   f000:d2f9     ??         25h    %
   f000:d2fa     ??         5Eh    ^
   f000:d2fb     ??         26h    &
   f000:d2fc     ??         2Ah    *
   f000:d2fd     ??         28h    (
   f000:d2fe     ??         29h    )
   f000:d2ff     ??         5Fh    _
   f000:d300     ??         2Bh    +
   f000:d301     ??         08h
   f000:d302     ??         00h
   f000:d303     ??         B9h
   f000:d304     ??         C6h
   f000:d305     ??         C3h
   f000:d306     ??         BAh
   f000:d307     ??         B5h
   f000:d308     ??         BDh
   f000:d309     ??         B3h
   f000:d30a     ??         C8h
   f000:d30b     ??         C9h
   f000:d30c     ??         B7h
   f000:d30d     ??         B6h
   f000:d30e     ??         CDh
   f000:d30f     ??         0Dh
   f000:d310     ??         FFh
   f000:d311     ??         C4h
   f000:d312     ??         CBh
   f000:d313     ??         B2h
   f000:d314     ??         B0h
   f000:d315     ??         BFh
   f000:d316     ??         C0h
   f000:d317     ??         BEh
   f000:d318     ??         BBh
   f000:d319     ??         B4h
   f000:d31a     ??         27h    '
   f000:d31b     ??         22h    "
   f000:d31c     ??         B1h
   f000:d31d     ??         CEh
   f000:d31e     ??         7Ch    |
   f000:d31f     ??         CFh
   f000:d320     ??         C7h
   f000:d321     ??         C1h
   f000:d322     ??         BCh
   f000:d323     ??         B8h
   f000:d324     ??         C2h
   f000:d325     ??         CCh
   f000:d326     ??         3Ch    <
   f000:d327     ??         3Eh    >
   f000:d328     ??         3Fh    ?
   f000:d329     ??         C5h
   f000:d32a     ??         00h
   f000:d32b     ??         FFh
   f000:d32c     ??         20h     
   f000:d32d     ??         CAh
   f000:d32e     ??         FFh
   f000:d32f     ??         FFh
   f000:d330     ??         FFh
   f000:d331     ??         FFh
   f000:d332     ??         FFh
   f000:d333     ??         FFh
   f000:d334     ??         FFh
   f000:d335     ??         FFh
   f000:d336     ??         FFh
   f000:d337     ??         FFh
   f000:d338     ??         FFh
   f000:d339     ??         FFh
   f000:d33a     ??         FFh
   f000:d33b     ??         FFh
   f000:d33c     ??         FFh
   f000:d33d     ??         FFh
   f000:d33e     ??         FFh
   f000:d33f     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near K4(void)
             undefined         AL:1           <RETURN>
                             ;------------------------------------------------------------
                             ;       INCREMENT BUFFER POINTER ROUTINE                     
                             ;------------------------------------------------------------
                             K4                                         XREF[2]:  f000:d3ca(c), 
                                                                                 Keyboard_IO:f000:e854(c)  
   f000:d340     ADD        BX,0x2                                  ; MOVE TO NEXT WORD IN LIST
   f000:d343     CMP        BX,0x30                                 ; AT END OF BUFFER?
   f000:d347     JNZ        K5
   f000:d349     MOV        BX,0x1e                                 ; YES, RESET TO BUFFER BEGINNING
                             K5                                         XREF[1]:  f000:d347(j)  
   f000:d34c     RET




                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16far Keyboard_IO()
             undefined         AL:1           <RETURN>
                             Keyboard_IO
   f000:e82e       STI
   f000:e82f       PUSH       DS
   f000:e830       PUSH       BX
   f000:e831       MOV        BX,0x40 
   f000:e834       MOV        DS,BX
   f000:e836       OR         AH,AH
   f000:e838       JZ         K1
   f000:e83a       DEC        AH
   f000:e83c       JZ         K2
   f000:e83e       DEC        AH
   f000:e840       JZ         K3
   f000:e842       POP        BX
   f000:e843       POP        DS
   f000:e844       IRET
                             K1                                         XREF[2]:  f000:e838(j), f000:e850(j)  
   f000:e845       STI                                                  ; INTERRUPTS BACK ON DURING LOOP
   f000:e846       NOP                                                  ; ALLOW AN INTERRUPT TO OCCUR
   f000:e847       CLI                                                  ; INTERRUPTS BACK OFF
   f000:e848       MOV        BX,word ptr [offset BUFFER_HEAD]         ; GET POINTER TO HEAD OF BUFFER
   f000:e84c       CMP        BX,word ptr [offset BUFFER_TAIL]         ; TEST END OF BUFFER
   f000:e850       JZ         K1
   f000:e852       MOV        AX,word ptr [BX]                         ; GET SCAN CODE AND ASCII CODE
   f000:e854       CALL       K4                                       ; MOVE POINTER TO NEXT POSITION
   f000:e857       MOV        word ptr [offset BUFFER_HEAD],BX         ; STORE VALUE IN VARIABLE
   f000:e85b       POP        BX
   f000:e85c       POP        DS
   f000:e85d       IRET
                             K2                                         XREF[1]:  f000:e83c(j)  
   f000:e85e       CLI
   f000:e85f       MOV        BX,word ptr [offset BUFFER_HEAD]
   f000:e863       CMP        BX,word ptr [offset BUFFER_TAIL]
   f000:e867       MOV        AX,word ptr [BX]
   f000:e869       STI
   f000:e86a       POP        BX
   f000:e86b       POP        DS
   f000:e86c       RETF       0x2
                             K3                                         XREF[1]:  f000:e840(j)  
   f000:e86f       MOV        AL,[offset KB_FLAG]
   f000:e872       POP        BX
   f000:e873       POP        DS
   f000:e874       IRET
                             ;----- TABLE OF SHIFT KEYS AND MASK VALUES
                             K6
   f000:e875       db         52h                                      ; INS_KEY
   f000:e876       db         56h                                      ; CAPS_KEY
   f000:e877       db         45h                                      ; NUM_KEY
   f000:e878       db         46h                                      ; SCROLL_KEY
   f000:e879       db         38h                                      ; ALT_KEY
   f000:e87a       db         1Dh                                      ; CTL_KEY
   f000:e87b       db         54h                                      ; LEFT_KEY
   f000:e87c       db         55h                                      ; RIGHT_KEY
   f000:e87d       db         58h
   f000:e87e       db         5Ah
   f000:e87f       db         57h
   f000:e880       db         5Bh                                      ; RUS_KEY
                             ;----- SHIFT_MASK_TABLE
                             K7                                         XREF[1]:  KB_INT:f000:ea08(R)  
   f000:e881       db         80h
   f000:e882       db         40h
   f000:e883       db         20h
   f000:e884       db         10h
   f000:e885       db         8h
   f000:e886       db         4h
   f000:e887       db         2h
   f000:e888       db         1h
                             ;----- SCAN CODE TABLES
                             K8
   f000:e889       db         27
   f000:e88a       sdb        -1
   f000:e88b       db         0h
   f000:e88c       db         FFh
   f000:e88d       db         FFh
   f000:e88e       db         FFh
   f000:e88f       db         1Eh
   f000:e890       db         FFh
   f000:e891       db         FFh
   f000:e892       db         FFh
   f000:e893       db         FFh
   f000:e894       db         1Fh
   f000:e895       db         FFh
   f000:e896       db         127
   f000:e897       sdb        -1
   f000:e898       db         17
   f000:e899       db         23
   f000:e89a       db         5h
   f000:e89b       db         12h
   f000:e89c       db         14h
   f000:e89d       db         19h
   f000:e89e       db         15h
   f000:e89f       db         9h
   f000:e8a0       db         Fh
   f000:e8a1       db         10h
   f000:e8a2       db         1Bh
   f000:e8a3       db         1Dh
   f000:e8a4       db         10
   f000:e8a5       sdb        -1
   f000:e8a6       db         1
   f000:e8a7       db         19
   f000:e8a8       db         4h
   f000:e8a9       db         6h
   f000:e8aa       db         7h
   f000:e8ab       db         8h
   f000:e8ac       db         Ah
   f000:e8ad       db         Bh
   f000:e8ae       db         12
   f000:e8af       db         FFh
   f000:e8b0       db         FFh
   f000:e8b1       db         FFh
   f000:e8b2       db         FFh
   f000:e8b3       db         1Ch
   f000:e8b4       db         1Ah
   f000:e8b5       db         18h
   f000:e8b6       db         3h
   f000:e8b7       db         16h
   f000:e8b8       db         2h
   f000:e8b9       db         Eh
   f000:e8ba       db         13
   f000:e8bb       db         FFh
   f000:e8bc       db         FFh
   f000:e8bd       db         FFh
   f000:e8be       db         FFh
   f000:e8bf       db         FFh
   f000:e8c0       db         FFh
   f000:e8c1       db         ' '
   f000:e8c2       sdb        -1
                             ;----- CTL TABLE SCAN
                             K9
   f000:e8c3       db         94
   f000:e8c4       db         5Fh
   f000:e8c5       db         96
   f000:e8c6       db         61h
   f000:e8c7       db         62h
   f000:e8c8       db         63h
   f000:e8c9       db         100
   f000:e8ca       db         65h
   f000:e8cb       db         66h
   f000:e8cc       db         67h
   f000:e8cd       db         FFh
   f000:e8ce       db         FFh
   f000:e8cf       db         77h
   f000:e8d0       db         FFh
   f000:e8d1       db         84h
   f000:e8d2       db         FFh
   f000:e8d3       db         73h
   f000:e8d4       db         FFh
   f000:e8d5       db         74h
   f000:e8d6       db         FFh
   f000:e8d7       db         75h
   f000:e8d8       db         FFh
   f000:e8d9       db         76h
   f000:e8da       db         FFh
   f000:e8db       sdb        -1
                             ;----- LC TABLE
                             K10
   f000:e8dc       char       1Bh
   f000:e8dd       char       '1'
   f000:e8de       char       '2'
   f000:e8df       char       '3'
   f000:e8e0       char       '4'
   f000:e8e1       char       '5'
   f000:e8e2       char       '6'
   f000:e8e3       char       '7'
   f000:e8e4       char       '8'
   f000:e8e5       char       '9'
   f000:e8e6       char       '0'
   f000:e8e7       char       '-'
   f000:e8e8       char       '='
   f000:e8e9       char       '\b'
   f000:e8ea       char       '\t'
   f000:e8eb       char       'q'
   f000:e8ec       char       'w'
   f000:e8ed       char       'e'
   f000:e8ee       char       'r'
   f000:e8ef       char       't'
   f000:e8f0       char       'y'
   f000:e8f1       char       'u'
   f000:e8f2       char       'i'
   f000:e8f3       char       'o'
   f000:e8f4       char       'p'
   f000:e8f5       char       '['
   f000:e8f6       char       ']'
   f000:e8f7       char       '\r'
   f000:e8f8       char       FFh
   f000:e8f9       char       'a'
   f000:e8fa       char       's'
   f000:e8fb       char       'd'
   f000:e8fc       char       'f'
   f000:e8fd       char       'g'
   f000:e8fe       char       'h'
   f000:e8ff       char       'j'
   f000:e900       char       'k'
   f000:e901       char       'l'
   f000:e902       char       ';'
   f000:e903       char       ':'
   f000:e904       char       '`'
   f000:e905       char       '~'
   f000:e906       char       '\\'
   f000:e907       char       'z'
   f000:e908       char       'x'
   f000:e909       char       'c'
   f000:e90a       char       'v'
   f000:e90b       char       'b'
   f000:e90c       char       'n'
   f000:e90d       char       'm'
   f000:e90e       char       ','
   f000:e90f       char       '.'
   f000:e910       char       '/'
   f000:e911       char       '{'
   f000:e912       char       FFh
   f000:e913       char       FFh
   f000:e914       char       ' '
   f000:e915       char       '}'
                             K11
   f000:e916       db         27
   f000:e917       char       '!'
   f000:e918       char       '@'
   f000:e919       char       '#'
   f000:e91a       char       '$'
   f000:e91b       char       '%'
   f000:e91c       char       '^'
   f000:e91d       char       '&'
   f000:e91e       char       '*'
   f000:e91f       char       '('
   f000:e920       char       ')'
   f000:e921       char       '_'
   f000:e922       char       '+'
   f000:e923       char       '\b'
   f000:e924       char       '\0'
   f000:e925       char       'Q'
   f000:e926       char       'W'
   f000:e927       char       'E'
   f000:e928       char       'R'
   f000:e929       char       'T'
   f000:e92a       char       'Y'
   f000:e92b       char       'U'
   f000:e92c       char       'I'
   f000:e92d       char       'O'
   f000:e92e       char       'P'
   f000:e92f       char       FFh
   f000:e930       char       FFh
   f000:e931       char       '\r'
   f000:e932       char       FFh
   f000:e933       char       'A'
   f000:e934       char       'S'
   f000:e935       char       'D'
   f000:e936       char       'F'
   f000:e937       char       'G'
   f000:e938       char       'H'
   f000:e939       char       'J'
   f000:e93a       char       'K'
   f000:e93b       char       'L'
   f000:e93c       char       '\''
   f000:e93d       char       '"'
   f000:e93e       char       FFh
   f000:e93f       char       FFh
   f000:e940       char       '|'
   f000:e941       char       'Z'
   f000:e942       char       'X'
   f000:e943       char       'C'
   f000:e944       char       'V'
   f000:e945       char       'B'
   f000:e946       char       'N'
   f000:e947       char       'M'
   f000:e948       char       '<'
   f000:e949       char       '>'
   f000:e94a       char       '?'
   f000:e94b       sdb        -1
   f000:e94c       db         0
   f000:e94d       sdb        -1
   f000:e94e       db         ' '
   f000:e94f       sdb        -1
                             K12
   f000:e950       db         84
   f000:e951       db         55h
   f000:e952       db         56h
   f000:e953       db         57h
   f000:e954       db         58h
   f000:e955       db         59h
   f000:e956       db         5Ah
   f000:e957       db         5Bh
   f000:e958       db         5Ch
   f000:e959       db         93
                             K13
   f000:e95a       db         104
   f000:e95b       db         69h
   f000:e95c       db         6Ah
   f000:e95d       db         6Bh
   f000:e95e       db         6Ch
   f000:e95f       db         6Dh
   f000:e960       db         6Eh
   f000:e961       db         6Fh
   f000:e962       db         112
   f000:e963       db         113
                             K14
   f000:e964       ds         "789-456+1230."
                             K15
   f000:e971       db         71
   f000:e972       db         48h
   f000:e973       db         49h
   f000:e974       db         FFh
   f000:e975       db         4Bh
   f000:e976       db         FFh
   f000:e977       db         4Dh
   f000:e978       db         FFh
   f000:e979       db         4Fh
   f000:e97a       db         50h
   f000:e97b       db         51h
   f000:e97c       db         52h
   f000:e97d       db         83
   f000:e97e       ??         FFh
   f000:e97f       ??         FFh
   f000:e980       ??         FFh
   f000:e981       ??         FFh
   f000:e982       ??         FFh
   f000:e983       ??         FFh
   f000:e984       ??         FFh
   f000:e985       ??         FFh
   f000:e986       ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far KB_INT(void)
             undefined         AL:1           <RETURN>
                             KB_INT
   f000:e987       STI
   f000:e988       PUSH       AX
   f000:e989       PUSH       BX
   f000:e98a       PUSH       CX
   f000:e98b       PUSH       DX
   f000:e98c       PUSH       SI
   f000:e98d       PUSH       DI
   f000:e98e       PUSH       DS
   f000:e98f       PUSH       ES
   f000:e990       CLD
   f000:e991       MOV        AX,0x40
   f000:e994       MOV        DS,AX                                    ; SET UP ADDRESSING
   f000:e996       IN         AL,0x60                                  ; READ IN THE CHARACTER
   f000:e998       MOV        AH,AL                                    ; SAVE VALUE
   f000:e99a       CMP        AL,0xff                                  ; IS THIS AN OVERRUN CHAR
   f000:e99c       JNZ        K16
   f000:e99e       JMP        K62
                             K16                                        XREF[1]:  f000:e99c(j)  
   f000:e9a1       AND        AL,0x7f
   f000:e9a3       PUSH       CS
   f000:e9a4       POP        ES
   f000:e9a5       MOV        DI,0xe875                                ; K6 SHIFT KEY TABLE
   f000:e9a8       MOV        CX,12                                    ; K6L LENGTH
   f000:e9ab       SCASB.RE   ES:DI
   f000:e9ad       MOV        AL,AH
   f000:e9af       JZ         K17
   f000:e9b1       JMP        K25
                             LAB_f000_e9b4                              XREF[1]:  f000:eac3(j)  
   f000:e9b4       TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:e9b9       JNZ        LAB_f000_ea33
   f000:e9bb       TEST       byte ptr [offset KB_FLAG],0x3
   f000:e9c0       MOV        AX,0x5cf1
   f000:e9c3       JZ         LAB_f000_e9c8
   f000:e9c5       MOV        AX,0x5cf0
                             LAB_f000_e9c8                              XREF[1]:  f000:e9c3(j)  
   f000:e9c8       JMP        K57
                             K17                                        XREF[1]:  f000:e9af(j)  
   f000:e9cb       SUB        DI,0xe876
   f000:e9cf       CMP        DI,0x8
   f000:e9d2       JC         LAB_f000_ea08
   f000:e9d4       MOV        AH,0x6
   f000:e9d6       CMP        DI,0xa
   f000:e9d9       JC         LAB_f000_ea0d
   f000:e9db       TEST       AL,0x80
   f000:e9dd       JZ         LAB_f000_ea33
   f000:e9df       CMP        DI,0xb
   f000:e9e2       JZ         LAB_f000_e9fb
   f000:e9e4       TEST       byte ptr [offset KB_FLAG_1],0x4
   f000:e9e9       JZ         LAB_f000_e9f3
   f000:e9eb       OR         byte ptr [offset KB_FLAG_1],0x1
   f000:e9f0       JMP        LAB_f000_ea33
   f000:e9f2       NOP
                             LAB_f000_e9f3                              XREF[1]:  f000:e9e9(j)  
   f000:e9f3       OR         byte ptr [offset KB_FLAG_1],0x3
   f000:e9f8       JMP        LAB_f000_ea33
   f000:e9fa       NOP
                             LAB_f000_e9fb                              XREF[1]:  f000:e9e2(j)  
   f000:e9fb       XOR        byte ptr [offset KB_FLAG_1],0x2
   f000:ea00       XOR        byte ptr [offset KB_FLAG_1],0x1
   f000:ea05       JMP        LAB_f000_ea33
   f000:ea07       NOP
                             LAB_f000_ea08                              XREF[1]:  f000:e9d2(j)  
   f000:ea08       MOV        AH,byte ptr CS:[DI + K7]                 ; = 80h
                             LAB_f000_ea0d                              XREF[1]:  f000:e9d9(j)  
   f000:ea0d       TEST       AL,0x80
   f000:ea0f       JNZ        K23
   f000:ea11       CMP        AH,0x10
   f000:ea14       JNC        LAB_f000_ea36
   f000:ea16       CMP        AH,0x6
   f000:ea19       JZ         LAB_f000_ea22
   f000:ea1b       OR         byte ptr [offset KB_FLAG],AH
   f000:ea1f       JMP        K26
                             LAB_f000_ea22                              XREF[1]:  f000:ea19(j)  
   f000:ea22       OR         byte ptr [offset KB_FLAG_1],0x6
   f000:ea27       TEST       byte ptr [offset KB_FLAG_1],0x1
   f000:ea2c       JZ         LAB_f000_ea33
   f000:ea2e       AND        byte ptr [offset KB_FLAG_1],0xfd
                             LAB_f000_ea33                              XREF[6]:  f000:e9b9(j), f000:e9dd(j), 
                                                                                 f000:e9f0(j), f000:e9f8(j), 
                                                                                 f000:ea05(j), f000:ea2c(j)  
   f000:ea33       JMP        K26
                             LAB_f000_ea36                              XREF[1]:  f000:ea14(j)  
   f000:ea36       TEST       byte ptr [offset KB_FLAG],0x4
   f000:ea3b       JNZ        K25
   f000:ea3d       CMP        AL,0x52                                  ; CHECK FOR INSERT KEY
   f000:ea3f       JNZ        LAB_f000_ea66
   f000:ea41       TEST       byte ptr [offset KB_FLAG],0x8
   f000:ea46       JZ         LAB_f000_ea4b
   f000:ea48       JMP        K25
   f000:ea4a       NOP
                             LAB_f000_ea4b                              XREF[1]:  f000:ea46(j)  
   f000:ea4b       TEST       byte ptr [offset KB_FLAG],0x20
   f000:ea50       JNZ        LAB_f000_ea5f
   f000:ea52       TEST       byte ptr [offset KB_FLAG],0x3
   f000:ea57       JZ         LAB_f000_ea66
                             LAB_f000_ea59                              XREF[1]:  f000:ea64(j)  
   f000:ea59       MOV        AX,0x5230
   f000:ea5c       JMP        K57
                             LAB_f000_ea5f                              XREF[1]:  f000:ea50(j)  
   f000:ea5f       TEST       byte ptr [offset KB_FLAG],0x3
   f000:ea64       JZ         LAB_f000_ea59
                             LAB_f000_ea66                              XREF[2]:  f000:ea3f(j), f000:ea57(j)  
   f000:ea66       TEST       byte ptr [offset KB_FLAG_1],AH
   f000:ea6a       JNZ        K26
   f000:ea6c       OR         byte ptr [offset KB_FLAG_1],AH
   f000:ea70       XOR        byte ptr [offset KB_FLAG],AH
   f000:ea74       CMP        AL,0x52
   f000:ea76       JNZ        K26
   f000:ea78       MOV        AX,0x5200
   f000:ea7b       JMP        K57
                             LAB_f000_ea7e                              XREF[1]:  f000:ea94(j)  
   f000:ea7e       AND        byte ptr [offset KB_FLAG_1],0xfb
   f000:ea83       XOR        byte ptr [offset KB_FLAG_1],0x2
   f000:ea88       JMP        LAB_f000_ea9a
                             ;----- BREAK SHIFT FOUND
                             K23                                        XREF[1]:  f000:ea0f(j)  
   f000:ea8a       CMP        AH,0x10
   f000:ea8d       JNC        K24
   f000:ea8f       NOT        AH
   f000:ea91       CMP        AH,0xf9
   f000:ea94       JZ         LAB_f000_ea7e
   f000:ea96       AND        byte ptr [offset KB_FLAG],AH
                             LAB_f000_ea9a                              XREF[1]:  f000:ea88(j)  
   f000:ea9a       CMP        AL,0xb8
   f000:ea9c       JNZ        K26
                             ;----- ALTERNATE SHIFT KEY RELEASED, GET THE VALUE INTO BUFFER
   f000:ea9e       MOV        AL,[offset ALT_INPUT]
   f000:eaa1       MOV        AH,0x0
   f000:eaa3       MOV        byte ptr [offset ALT_INPUT],AH
   f000:eaa7       CMP        AL,0x0
   f000:eaa9       JZ         K26
   f000:eaab       JMP        K58
                             K24                                        XREF[1]:  f000:ea8d(j)  
   f000:eaae       NOT        AH
   f000:eab0       AND        byte ptr [offset KB_FLAG_1],AH
   f000:eab4       JMP        K26
   f000:eab6       NOP
                             K25                                        XREF[3]:  f000:e9b1(j), f000:ea3b(j), 
                                                                                 f000:ea48(j)  
   f000:eab7       CMP        AL,0x80
   f000:eab9       JNC        K26
   f000:eabb       CMP        AL,0x59
   f000:eabd       JZ         LAB_f000_eae4
   f000:eabf       CMP        AL,0x5c
   f000:eac1       JNZ        LAB_f000_eac6
   f000:eac3       JMP        LAB_f000_e9b4
                             LAB_f000_eac6                              XREF[1]:  f000:eac1(j)  
   f000:eac6       TEST       byte ptr [offset KB_FLAG_1],0x8
   f000:eacb       JZ         LAB_f000_eaea
   f000:eacd       CMP        AL,0x45                                  ; CHECK FOR NUM KEY
   f000:eacf       JZ         K26
   f000:ead1       AND        byte ptr [offset KB_FLAG_1],0xf7
                             K26                                        XREF[14]: f000:d3b7(j), f000:d3d9(j), 
                                                                                 f000:d3e4(j), 
                                                                                 KB_INT:f000:ea1f(j), 
                                                                                 KB_INT:f000:ea33(j), 
                                                                                 KB_INT:f000:ea6a(j), 
                                                                                 KB_INT:f000:ea76(j), 
                                                                                 KB_INT:f000:ea9c(j), 
                                                                                 KB_INT:f000:eaa9(j), 
                                                                                 KB_INT:f000:eab4(j), 
                                                                                 KB_INT:f000:eab9(j), 
                                                                                 KB_INT:f000:eacf(j), 
                                                                                 KB_INT:f000:eb2d(j), 
                                                                                 KB_INT:f000:eb54(j)  
   f000:ead6       CLI
   f000:ead7       MOV        AL,0x20
   f000:ead9       OUT        0x20,AL
                             K27                                        XREF[2]:  KB_INT:f000:eba5(j), 
                                                                                 KB_INT:f000:ebe4(j)  
   f000:eadb       POP        ES
   f000:eadc       POP        DS
   f000:eadd       POP        DI
   f000:eade       POP        SI
   f000:eadf       POP        DX
   f000:eae0       POP        CX
   f000:eae1       POP        BX
   f000:eae2       POP        AX
   f000:eae3       IRET
                             LAB_f000_eae4                              XREF[1]:  f000:eabd(j)  
   f000:eae4       MOV        AX,0xa000
   f000:eae7       JMP        K57
                             LAB_f000_eaea                              XREF[1]:  f000:eacb(j)  
   f000:eaea       TEST       byte ptr [offset KB_FLAG],0x8
   f000:eaef       JNZ        LAB_f000_eaf4
   f000:eaf1       JMP        LAB_f000_eb60
   f000:eaf3       NOP
                             LAB_f000_eaf4                              XREF[1]:  f000:eaef(j)  
   f000:eaf4       TEST       byte ptr [offset KB_FLAG],0x4
   f000:eaf9       JZ         LAB_f000_eb0a
   f000:eafb       CMP        AL,0x53
   f000:eafd       JNZ        LAB_f000_eb0a
   f000:eaff       MOV        word ptr [offset DAT_0000_0472],0x1234
   f000:eb05       JMPF       Start                                    ; undefined Start()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_eb0a                              XREF[2]:  f000:eaf9(j), f000:eafd(j)  
   f000:eb0a       CMP        AL,0x39
   f000:eb0c       JNZ        LAB_f000_eb13
   f000:eb0e       MOV        AL,0x20
   f000:eb10       JMP        K57
                             LAB_f000_eb13                              XREF[1]:  f000:eb0c(j)  
   f000:eb13       MOV        DI,0xd42b
   f000:eb16       MOV        CX,0xa
   f000:eb19       SCASB.RE   ES:DI
   f000:eb1b       JNZ        LAB_f000_eb2f
   f000:eb1d       SUB        DI,0xd42c
   f000:eb21       MOV        AL,[offset ALT_INPUT]
   f000:eb24       MOV        AH,0xa
   f000:eb26       MUL        AH
   f000:eb28       ADD        AX,DI
   f000:eb2a       MOV        [offset ALT_INPUT],AL
   f000:eb2d       JMP        K26
                             LAB_f000_eb2f                              XREF[1]:  f000:eb1b(j)  
   f000:eb2f       MOV        byte ptr [offset ALT_INPUT],0x0
   f000:eb34       MOV        CX,0x1a
   f000:eb37       SCASB.RE   ES:DI
   f000:eb39       JNZ        LAB_f000_eb40
   f000:eb3b       MOV        AL,0x0
   f000:eb3d       JMP        K57
                             LAB_f000_eb40                              XREF[1]:  f000:eb39(j)  
   f000:eb40       CMP        AL,0x2
   f000:eb42       JC         LAB_f000_eb50
   f000:eb44       CMP        AL,0xe
   f000:eb46       JNC        LAB_f000_eb50
   f000:eb48       ADD        AH,0x76
   f000:eb4b       MOV        AL,0x0
   f000:eb4d       JMP        K57
                             LAB_f000_eb50                              XREF[2]:  f000:eb42(j), f000:eb46(j)  
   f000:eb50       CMP        AL,0x3b
   f000:eb52       JNC        LAB_f000_eb56
                             LAB_f000_eb54                              XREF[1]:  f000:eb58(j)  
   f000:eb54       JMP        K26
                             LAB_f000_eb56                              XREF[1]:  f000:eb52(j)  
   f000:eb56       CMP        AL,0x47
   f000:eb58       JNC        LAB_f000_eb54
   f000:eb5a       MOV        BX,0xe95a
   f000:eb5d       JMP        K63
                             LAB_f000_eb60                              XREF[1]:  f000:eaf1(j)  
   f000:eb60       TEST       byte ptr [offset KB_FLAG],0x4
   f000:eb65       JZ         LAB_f000_ebc2
   f000:eb67       CMP        AL,0x46
   f000:eb69       JNZ        LAB_f000_eb83
   f000:eb6b       MOV        BX,0x1e
   f000:eb6e       MOV        word ptr [offset BUFFER_HEAD],BX
   f000:eb72       MOV        word ptr [offset BUFFER_TAIL],BX
   f000:eb76       MOV        byte ptr [offset DAT_0000_0471],0x80
   f000:eb7b       INT        0x1b
   f000:eb7d       MOV        AX,0x0
   f000:eb80       JMP        K57
                             LAB_f000_eb83                              XREF[1]:  f000:eb69(j)  
   f000:eb83       CMP        AL,0x45
   f000:eb85       JNZ        LAB_f000_eba8
   f000:eb87       OR         byte ptr [offset KB_FLAG_1],0x8
   f000:eb8c       MOV        AL,0x20
   f000:eb8e       OUT        0x20,AL
   f000:eb90       CMP        byte ptr [offset CRT_MODE],0x7           ; IS THIS BLACK AND WHITE CARD
   f000:eb95       JZ         K40
   f000:eb97       MOV        DX,0x3d8                                 ; PORT FOR COLOR CARD
   f000:eb9a       MOV        AL,[offset CRT_MODE_SET]                 ; GET THE VALUE OF THE CURRENT M
   f000:eb9d       OUT        DX,AL                                    ; SET THE CRT MODE, SO THAT CRT 
                             K40                                        XREF[2]:  f000:eb95(j), f000:eba3(j)  
   f000:eb9e       TEST       byte ptr [offset KB_FLAG_1],0x8
   f000:eba3       JNZ        K40
   f000:eba5       JMP        K27
                             LAB_f000_eba8                              XREF[1]:  f000:eb85(j)  
   f000:eba8       CMP        AL,0x37
   f000:ebaa       JNZ        LAB_f000_ebb2
   f000:ebac       MOV        AX,0x7200
   f000:ebaf       JMP        K57
                             LAB_f000_ebb2                              XREF[1]:  f000:ebaa(j)  
   f000:ebb2       MOV        BX,0xe889
   f000:ebb5       CMP        AL,0x3b
   f000:ebb7       JNC        LAB_f000_ebbc
   f000:ebb9       JMP        K56
                             LAB_f000_ebbc                              XREF[1]:  f000:ebb7(j)  
   f000:ebbc       MOV        BX,0xe8c3
   f000:ebbf       JMP        K63
                             LAB_f000_ebc2                              XREF[1]:  f000:eb65(j)  
   f000:ebc2       CMP        AL,0x47
   f000:ebc4       JNC        LAB_f000_ec04
   f000:ebc6       TEST       byte ptr [offset KB_FLAG],0x3
   f000:ebcb       JZ         LAB_f000_ebd7
   f000:ebcd       CMP        AL,0xf
   f000:ebcf       JNZ        LAB_f000_ebda
   f000:ebd1       MOV        AX,0xf00
   f000:ebd4       JMP        K57
                             LAB_f000_ebd7                              XREF[1]:  f000:ebcb(j)  
   f000:ebd7       JMP        LAB_f000_d372
                             LAB_f000_ebda                              XREF[1]:  f000:ebcf(j)  
   f000:ebda       CMP        AL,0x37
   f000:ebdc       JNZ        LAB_f000_ebe7
   f000:ebde       MOV        AL,0x20
   f000:ebe0       OUT        0x20,AL
   f000:ebe2       INT        0x5
   f000:ebe4       JMP        K27
                             LAB_f000_ebe7                              XREF[1]:  f000:ebdc(j)  
   f000:ebe7       CMP        AL,0x3b
   f000:ebe9       JC         LAB_f000_ebf1
   f000:ebeb       MOV        BX,0xe950
   f000:ebee       JMP        K63
                             LAB_f000_ebf1                              XREF[1]:  f000:ebe9(j)  
   f000:ebf1       TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:ebf6       JZ         LAB_f000_ebfe
   f000:ebf8       MOV        BX,0xe916
   f000:ebfb       JMP        K56
                             LAB_f000_ebfe                              XREF[1]:  f000:ebf6(j)  
   f000:ebfe       MOV        BX,0xd2f4
   f000:ec01       JMP        K56
                             LAB_f000_ec04                              XREF[1]:  f000:ebc4(j)  
   f000:ec04       TEST       byte ptr [offset KB_FLAG],0x20
   f000:ec09       JNZ        LAB_f000_ec2e
   f000:ec0b       TEST       byte ptr [offset KB_FLAG],0x3
   f000:ec10       JNZ        LAB_f000_ec35
                             LAB_f000_ec12                              XREF[1]:  f000:ec33(j)  
   f000:ec12       CMP        AL,0x4a
   f000:ec14       JZ         LAB_f000_ec22
   f000:ec16       CMP        AL,0x4e
   f000:ec18       JZ         LAB_f000_ec28
   f000:ec1a       SUB        AL,0x47
   f000:ec1c       MOV        BX,0xe971
   f000:ec1f       JMP        K64
                             LAB_f000_ec22                              XREF[1]:  f000:ec14(j)  
   f000:ec22       MOV        AX,0x4a2d
   f000:ec25       JMP        K57
                             LAB_f000_ec28                              XREF[1]:  f000:ec18(j)  
   f000:ec28       MOV        AX,0x4e2b
   f000:ec2b       JMP        K57
                             LAB_f000_ec2e                              XREF[1]:  f000:ec09(j)  
   f000:ec2e       TEST       byte ptr [offset KB_FLAG],0x3
   f000:ec33       JNZ        LAB_f000_ec12
                             LAB_f000_ec35                              XREF[1]:  f000:ec10(j)  
   f000:ec35       SUB        AL,70                                    ; CONVERT ORIGIN
   f000:ec37       MOV        BX,0xe964                                ; OFFSET K14 NUM STATE TABLE
   f000:ec3a       JMP        K56                                      ; TRANSLATE_CHAR

   
   
   
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near ERROR_BEEP(void)
             undefined         AL:1           <RETURN>
                             ERROR_BEEP                                 XREF[1]:  f000:d3e1(c)  
   f000:d34d       PUSH       AX
   f000:d34e       PUSH       BX
   f000:d34f       PUSH       CX
   f000:d350       MOV        BX,0xc0
   f000:d353       IN         AL,0x61
   f000:d355       PUSH       AX
                             LAB_f000_d356                              XREF[1]:  f000:d369(j)  
   f000:d356       AND        AL,0xfc
   f000:d358       OUT        0x61,AL
   f000:d35a       MOV        CX,0x48
                             LAB_f000_d35d                              XREF[1]:  f000:d35d(j)  
   f000:d35d       LOOP       LAB_f000_d35d
   f000:d35f       OR         AL,0x2
   f000:d361       OUT        0x61,AL
   f000:d363       MOV        CX,0x48
                             LAB_f000_d366                              XREF[1]:  f000:d366(j)  
   f000:d366       LOOP       LAB_f000_d366
   f000:d368       DEC        BX
   f000:d369       JNZ        LAB_f000_d356
   f000:d36b       POP        AX
   f000:d36c       OUT        0x61,AL
   f000:d36e       POP        CX
   f000:d36f       POP        BX
   f000:d370       POP        AX
   f000:d371       RET
                             LAB_f000_d372                              XREF[1]:  KB_INT:f000:ebd7(j)  
   f000:d372       CMP        AL,0x3b
   f000:d374       JC         LAB_f000_d37b
   f000:d376       MOV        AL,0x0
   f000:d378       JMP        K57
   f000:d37a       NOP
                             LAB_f000_d37b                              XREF[1]:  f000:d374(j)  
   f000:d37b       MOV        BX,0xe8dc
   f000:d37e       TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:d383       JZ         LAB_f000_d3dc
                             ;----- TRANSLATE THE CHARACTER
                             K56                                        XREF[5]:  f000:d3df(j), 
                                                                                 KB_INT:f000:ebb9(j), 
                                                                                 KB_INT:f000:ebfb(j), 
                                                                                 KB_INT:f000:ec01(j), 
                                                                                 KB_INT:f000:ec3a(j)  
   f000:d385       DEC        AL                                       ; CONVERT ORIGIN
   f000:d387       XLAT       CS:BX                                    ; CONVERT THE SCAN CODE TO ASCII
                             ;----- PUT CHARACTER INTO BUFFER
                             K57                                        XREF[14]: f000:d378(j), f000:d3ef(j), 
                                                                                 KB_INT:f000:e9c8(j), 
                                                                                 KB_INT:f000:ea5c(j), 
                                                                                 KB_INT:f000:ea7b(j), 
                                                                                 KB_INT:f000:eae7(j), 
                                                                                 KB_INT:f000:eb10(j), 
                                                                                 KB_INT:f000:eb3d(j), 
                                                                                 KB_INT:f000:eb4d(j), 
                                                                                 KB_INT:f000:eb80(j), 
                                                                                 KB_INT:f000:ebaf(j), 
                                                                                 KB_INT:f000:ebd4(j), 
                                                                                 KB_INT:f000:ec25(j), 
                                                                                 KB_INT:f000:ec2b(j)  
   f000:d389       CMP        AL,0xff                                  ; IS THIS AN IGNORE CHAR
   f000:d38b       JZ         K59
   f000:d38d       CMP        AH,0xff                                  ; LOOK FOR -1 PSEUDO SCAN
   f000:d390       JZ         K59                                      ; NEAR_INTERRUPT_RETURN
                             ;----- HANDLE THE CAPS LOCK PROBLEM
                             K58                                        XREF[1]:  KB_INT:f000:eaab(j)  
   f000:d392       TEST       byte ptr [offset KB_FLAG],0x40           ; ARE WE IN CAPS LOCK STATE
   f000:d397       JZ         K61
   f000:d399       TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:d39e       JNZ        LAB_f000_d3a3
   f000:d3a0       JMP        LAB_f000_d44f
                             ;----- IN CAPS LOCK STATE
                             LAB_f000_d3a3                              XREF[1]:  f000:d39e(j)  
   f000:d3a3       TEST       byte ptr [offset KB_FLAG],0x3            ; TEST FOR SHIFT STATE
   f000:d3a8       JZ         K60
                             ;----- CONVERT ANY UPPER CASE TO LOWER CASE
   f000:d3aa       CMP        AL,'A'
   f000:d3ac       JC         K61
   f000:d3ae       CMP        AL,'Z'
   f000:d3b0       JA         K61
   f000:d3b2       ADD        AL,0x20
   f000:d3b4       JMP        K61
   f000:d3b6       NOP
                             K59                                        XREF[2]:  f000:d38b(j), f000:d390(j)  
   f000:d3b7       JMP        K26
                             ;----- CONVERT ANY LOWER CASE TO UPPER CASE
                             K60                                        XREF[1]:  f000:d3a8(j)  
   f000:d3ba       CMP        AL,'a'
   f000:d3bc       JC         K61
   f000:d3be       CMP        AL,'z'
   f000:d3c0       JA         K61
   f000:d3c2       SUB        AL,0x20
                             K61                                        XREF[10]: f000:d397(j), f000:d3ac(j), 
                                                                                 f000:d3b0(j), f000:d3b4(j), 
                                                                                 f000:d3bc(j), f000:d3c0(j), 
                                                                                 f000:d464(j), f000:d475(j), 
                                                                                 f000:d47a(j), f000:d47f(j)  
   f000:d3c4       MOV        BX,word ptr [offset BUFFER_TAIL]
   f000:d3c8       MOV        SI,BX
   f000:d3ca       CALL       K4                                       ; ADVANCE THE TAIL
   f000:d3cd       CMP        BX,word ptr [offset BUFFER_HEAD]
   f000:d3d1       JZ         K62                                      ; BUFFER_FULL_BEEP
   f000:d3d3       MOV        word ptr [SI],AX                         ; STORE THE VALUE
   f000:d3d5       MOV        word ptr [offset BUFFER_TAIL],BX         ; MOVE THE POINTER UP
   f000:d3d9       JMP        K26                                      ; INTERRUPT_RETURN
                             LAB_f000_d3dc                              XREF[1]:  f000:d383(j)  
   f000:d3dc       MOV        BX,0xd3f1
   f000:d3df       JMP        K56
                             ;----- BUFFER IS FULL, SOUND THE BEEPER
                             K62                                        XREF[2]:  f000:d3d1(j), 
                                                                                 KB_INT:f000:e99e(j)  
   f000:d3e1       CALL       ERROR_BEEP                               ; undefined ERROR_BEEP(void)
   f000:d3e4       JMP        K26
                             ;------ TRANSLATE SCAN FOR PSEUDO SCAN CODES
                             K63                                        XREF[3]:  KB_INT:f000:eb5d(j), 
                                                                                 KB_INT:f000:ebbf(j), 
                                                                                 KB_INT:f000:ebee(j)  
   f000:d3e7       SUB        AL,59                                    ; CONVERT ORIGIN TO FUNCTION KEYS
                             K64                                        XREF[1]:  KB_INT:f000:ec1f(j)  
   f000:d3e9       XLAT       CS:BX                                    ; CTL TABLE SCAN
   f000:d3eb       MOV        AH,AL                                    ; PUT VALUE INTO AH
   f000:d3ed       MOV        AL,0x0                                   ; ZERO ASCII CODE
   f000:d3ef       JMP        K57                                      ; PUT IT INTO THE BUFFER
