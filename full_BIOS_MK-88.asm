   f000:c000     ??         55h    U
   f000:c001     ??         AAh
   f000:c002     ??         10h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined thunk_FUN_f000_c0b2()
                               Thunked-Function: FUN_f000_c0b2
             undefined         AL:1           <RETURN>
                             thunk_FUN_f000_c0b2                        XREF[2]:  Choose_boot:f000:d672(c), 
                                                                                 f000:ff13(*)  
   f000:c003     JMP        FUN_f000_c0b2
   f000:c006     ds         "МОНИТОР В1.89"                         ; МОНИТОР В1.89
   f000:c013     ??         00h
   f000:c014     ??         11h
   f000:c015     ds         "CDEFGHMPSTRQ\rIAXSTART ADDRESS OF INC
   f000:c048     ds         "NEXT ADDRESS = "
                             s_BXCXDXSPBPSIDIDSESSSCSIPODITSZAP_f000_   XREF[2,3  FUN_f000_c20e:f000:c221(R), 
                             s_ODITSZAPC_f000_c072                                FUN_f000_c28d:f000:c299(R), 
                             s_DITSZAPC_f000_c073                                 FUN_f000_c20e:f000:c221(R), 
                             s_AXBXCXDXSPBPSIDIDSESSSCSIPODITSZ_f000_             FUN_f000_c2d2:f000:c2f7(R), 
                                                                                 FUN_f000_c2d2:f000:c2f7(R)  
   f000:c058     ds         "AXBXCXDXSPBPSIDIDSESSSCSIPODITSZAPC\0
                             Functions address table
   f000:c07f     addr       FUN_f000_c509
   f000:c081     addr       FUN_f000_c483
   f000:c083     addr       FUN_f000_c526
   f000:c085     addr       FUN_f000_c1fa
   f000:c087     addr       FUN_f000_c375
   f000:c089     addr       FUN_f000_c194
   f000:c08b     addr       FUN_f000_c176
   f000:c08d     addr       FUN_f000_c4df
   f000:c08f     addr       FUN_f000_c1ae
   f000:c091     addr       FUN_f000_c3c2
   f000:c093     addr       FUN_f000_c20e
   f000:c095     addr       LAB_f000_c77e                           ; functions addresses
   f000:c097     addr       LAB_f000_c11a
   f000:c099     addr       FUN_f000_c849
   f000:c09b     addr       FUN_f000_c8d6
   f000:c09d     addr       FUN_f000_c8e6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c09f()
             undefined         AL:1           <RETURN>
                             FUN_f000_c09f                              XREF[8]:  FUN_f000_c10b:f000:c11f(c), 
                                                                                 FUN_f000_c5ca:f000:c5cb(c), 
                                                                                 FUN_f000_c5da:f000:c5df(c), 
                                                                                 FUN_f000_c69f:f000:c6a8(c), 
                                                                                 FUN_f000_c6f9:f000:c6fa(c), 
                                                                                 FUN_f000_c789:f000:c78c(c), 
                                                                                 FUN_f000_c7e1:f000:c7e6(c), 
                                                                                 FUN_f000_c826:f000:c828(c)  
   f000:c09f     PUSH       AX
   f000:c0a0     PUSH       BX
   f000:c0a1     PUSH       DX
   f000:c0a2     INT        0x12
   f000:c0a4     SUB        AX,0x4
   f000:c0a7     MOV        BX,0x28
   f000:c0aa     MUL        BX
   f000:c0ac     MOV        DS,AX
   f000:c0ae     POP        DX
   f000:c0af     POP        BX
   f000:c0b0     POP        AX
   f000:c0b1     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c0b2()
             undefined         AL:1           <RETURN>
                             FUN_f000_c0b2                              XREF[1]:  thunk_FUN_f000_c0b2:f000:c003(T), 
                                                                                 thunk_FUN_f000_c0b2:f000:c003(j)  
   f000:c0b2     INT        0x12
   f000:c0b4     SUB        AX,0x4
   f000:c0b7     MOV        BX,0x28
   f000:c0ba     MUL        BX
   f000:c0bc     MOV        DS,AX
   f000:c0be     MOV        [0x82],AX
   f000:c0c1     MOV        SS,AX
   f000:c0c3     MOV        SP,0xffe
   f000:c0c6     PUSH       DS
   f000:c0c7     POP        ES
   f000:c0c8     LEA        CX,[0x82]
   f000:c0cc     SUB        AL,AL
   f000:c0ce     SUB        DI,DI
   f000:c0d0     STOSB.REP  ES:DI
   f000:c0d2     MOV        word ptr [0x62],0x1c
   f000:c0d8     LEA        BX,[0xc006]
   f000:c0dc     CALL       FUN_f000_c686                           ; undefined FUN_f000_c686()
   f000:c0df     SUB        DX,DX
   f000:c0e1     MOV        DS,DX
   f000:c0e3     MOV        BX,0x4
   f000:c0e6     LEA        AX,[0xc6f9]
   f000:c0ea     MOV        word ptr [BX]=>DAT_0000_0004,AX
   f000:c0ec     MOV        BL,0xc
   f000:c0ee     MOV        word ptr [BX]=>DAT_0000_000c,AX
   f000:c0f0     PUSH       CS
   f000:c0f1     POP        AX
   f000:c0f2     SHR        BL,0x1
   f000:c0f4     MOV        word ptr [BX]=>DAT_0000_0006,AX
   f000:c0f6     MOV        BL,0xe
   f000:c0f8     MOV        word ptr [BX]=>DAT_0000_000e,AX
   f000:c0fa     JMP        LAB_f000_c117
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c0fc()
             undefined         AL:1           <RETURN>
                             FUN_f000_c0fc                              XREF[4]:  FUN_f000_c483:f000:c485(c), 
                                                                                 FUN_f000_c509:f000:c509(c), 
                                                                                 FUN_f000_c8d6:f000:c8d6(c), 
                                                                                 FUN_f000_c8e6:f000:c8e6(c)  
   f000:c0fc     CALL       FUN_f000_c561                           ; undefined FUN_f000_c561()
   f000:c0ff     POP        CX
   f000:c100     POP        SI
   f000:c101     SUB        CX,SI
   f000:c103     JC         FUN_f000_c10b
   f000:c105     INC        CX
   f000:c106     MOV        DS,word ptr [0x10]
   f000:c10a     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c10b()
             undefined         AL:1           <RETURN>
                             FUN_f000_c10b                              XREF[9]:  FUN_f000_c0fc:f000:c103(j), 
                                                                                 f000:c163(j), 
                                                                                 FUN_f000_c17c:f000:c191(c), 
                                                                                 FUN_f000_c1fa:f000:c1f7(c), 
                                                                                 FUN_f000_c2d2:f000:c28a(c), 
                                                                                 FUN_f000_c3c2:f000:c3bf(c), 
                                                                                 FUN_f000_c4df:f000:c4dc(c), 
                                                                                 FUN_f000_c561:f000:c56f(c), 
                                                                                 FUN_f000_c6e6:f000:c6f6(c)  
   f000:c10b     MOV        SS,word ptr [DAT_0000_0082]
   f000:c10f     MOV        SP,0xffe
   f000:c112     MOV        AL,0x3f
   f000:c114     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
                             LAB_f000_c117                              XREF[3]:  FUN_f000_c0b2:f000:c0fa(j), 
                                                                                 FUN_f000_c5ca:f000:c5d5(j), 
                                                                                 FUN_f000_c789:f000:c7b3(j)  
   f000:c117     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
                             LAB_f000_c11a                              XREF[3]:  f000:c097(*), 
                                                                                 FUN_f000_c3b5:f000:c3bc(j), 
                                                                                 FUN_f000_c3e6:f000:c407(j)  
   f000:c11a     MOV        AL,0x2e
   f000:c11c     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c11f     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c122     MOV        SS,word ptr [DAT_0000_0082]
   f000:c126     MOV        SP,0xffe
   f000:c129     CLD
   f000:c12a     LEA        SI,[0x75]
   f000:c12e     MOV        AX,0xffff
   f000:c131     MOV        CX,0x4
                             LAB_f000_c134                              XREF[1]:  f000:c139(j)  
   f000:c134     MOV        word ptr [SI]=>DAT_0000_0075,AX
   f000:c136     ADD        SI,0x2
   f000:c139     LOOP       LAB_f000_c134
   f000:c13b     MOV        word ptr [DAT_0000_007d],0xc11a
   f000:c141     MOV        byte ptr [DAT_0000_0080],0x0
   f000:c146     MOV        word ptr [DAT_0000_0062],0x1c
   f000:c14c     LEA        DI,[0xc014]
   f000:c150     CALL       FUN_f000_c789                           ; undefined FUN_f000_c789()
   f000:c153     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c156     PUSH       CS
   f000:c157     POP        ES
   f000:c158     MOV        CL,byte ptr ES:[DI]
   f000:c15b     MOV        CH,0x0
   f000:c15d     INC        DI
   f000:c15e     MOV        SI,CX
   f000:c160     DEC        SI
   f000:c161     SCASB.RE   ES:DI
   f000:c163     JCXZ       FUN_f000_c10b
   f000:c165     SUB        SI,CX
   f000:c167     ADD        SI,SI
   f000:c169     LEA        DX,[0xc11a]
   f000:c16d     PUSH       DX
   f000:c16e     MOV        CX,0x2
   f000:c171     JMP        word ptr CS:[SI + 0xc07f]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c176()
             undefined         AL:1           <RETURN>
                             FUN_f000_c176                              XREF[1]:  f000:c08b(*)  
   f000:c176     CALL       FUN_f000_c17c                           ; undefined FUN_f000_c17c()
   f000:c179     MOVSB.REP  ES:DI,SI
   f000:c17b     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c17c()
             undefined         AL:1           <RETURN>
                             FUN_f000_c17c                              XREF[2]:  FUN_f000_c176:f000:c176(c), 
                                                                                 FUN_f000_c526:f000:c526(c)  
   f000:c17c     INC        CX
   f000:c17d     CALL       FUN_f000_c561                           ; undefined FUN_f000_c561()
   f000:c180     MOV        ES,word ptr [0x12]
   f000:c184     POP        DI
   f000:c185     POP        CX
   f000:c186     POP        SI
   f000:c187     SUB        CX,SI
   f000:c189     JC         LAB_f000_c191
   f000:c18b     INC        CX
   f000:c18c     MOV        DS,word ptr [0x10]
   f000:c190     RET
                             LAB_f000_c191                              XREF[3]:  f000:c189(j), 
                                                                                 FUN_f000_c1ae:f000:c1ec(j), 
                                                                                 FUN_f000_c1ae:f000:c1f2(j)  
   f000:c191     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c194()
             undefined         AL:1           <RETURN>
                             FUN_f000_c194                              XREF[1]:  f000:c089(*)  
   f000:c194     CALL       FUN_f000_c561                           ; undefined FUN_f000_c561()
   f000:c197     POP        AX
   f000:c198     POP        BX
   f000:c199     MOV        CX,BX
   f000:c19b     SUB        CX,AX
   f000:c19d     ADD        BX,AX
   f000:c19f     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c1a2     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c1a5     MOV        BX,CX
   f000:c1a7     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c1aa     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c1ad     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c1ae()
             undefined         AL:1           <RETURN>
                             FUN_f000_c1ae                              XREF[1]:  f000:c08f(*)  
   f000:c1ae     DEC        CX
   f000:c1af     CALL       FUN_f000_c561                           ; undefined FUN_f000_c561()
   f000:c1b2     POP        SI
   f000:c1b3     MOV        DS,word ptr [0x10]
                             LAB_f000_c1b7                              XREF[2]:  f000:c1d6(j), f000:c1f4(j)  
   f000:c1b7     CALL       FUN_f000_c6cd                           ; undefined FUN_f000_c6cd()
   f000:c1ba     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c1bd     LODSB      SI
   f000:c1be     MOV        CH,AL
   f000:c1c0     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c1c3     CALL       FUN_f000_c656                           ; undefined FUN_f000_c656()
   f000:c1c6     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c1c9     CALL       FUN_f000_c789                           ; undefined FUN_f000_c789()
   f000:c1cc     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c1cf     CMP        AL,0x2d
   f000:c1d1     JNZ        LAB_f000_c1d8
   f000:c1d3     SUB        SI,0x2
   f000:c1d6     JMP        LAB_f000_c1b7
                             LAB_f000_c1d8                              XREF[1]:  f000:c1d1(j)  
   f000:c1d8     SUB        BX,BX
   f000:c1da     CALL       FUN_f000_c6be                           ; undefined FUN_f000_c6be()
   f000:c1dd     JZ         LAB_f000_c1f2
                             LAB_f000_c1df                              XREF[1]:  f000:c1e7(j)  
   f000:c1df     CALL       FUN_f000_c5bb                           ; undefined FUN_f000_c5bb()
   f000:c1e2     JC         LAB_f000_c1e9
   f000:c1e4     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c1e7     JMP        LAB_f000_c1df
                             LAB_f000_c1e9                              XREF[1]:  f000:c1e2(j)  
   f000:c1e9     CALL       FUN_f000_c6be                           ; undefined FUN_f000_c6be()
   f000:c1ec     JNC        LAB_f000_c191
   f000:c1ee     MOV        byte ptr [SI + -0x1],BL
   f000:c1f1     STC
                             LAB_f000_c1f2                              XREF[1]:  f000:c1dd(j)  
   f000:c1f2     JNC        LAB_f000_c191
   f000:c1f4     JMP        LAB_f000_c1b7
   f000:c1f6     RET
                             LAB_f000_c1f7                              XREF[1]:  f000:c203(j)  
   f000:c1f7     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c1fa()
             undefined         AL:1           <RETURN>
                             FUN_f000_c1fa                              XREF[1]:  f000:c085(*)  
   f000:c1fa     INC        CX
   f000:c1fb     CALL       FUN_f000_c561                           ; undefined FUN_f000_c561()
   f000:c1fe     POP        AX
   f000:c1ff     POP        CX
   f000:c200     POP        DI
   f000:c201     SUB        CX,DI
   f000:c203     JC         LAB_f000_c1f7
   f000:c205     INC        CX
   f000:c206     MOV        ES,word ptr [0x10]
                             LAB_f000_c20a                              XREF[1]:  f000:c20b(j)  
   f000:c20a     STOSB      ES:DI
   f000:c20b     LOOP       LAB_f000_c20a
   f000:c20d     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c20e()
             undefined         AL:1           <RETURN>
                             FUN_f000_c20e                              XREF[1]:  f000:c093(*)  
   f000:c20e     CALL       FUN_f000_c6bb                           ; undefined FUN_f000_c6bb()
   f000:c211     JC         FUN_f000_c28d
   f000:c213     CMP        AL,0x46
   f000:c215     JZ         LAB_f000_c287
   f000:c217     MOV        CX,0xe
   f000:c21a     MOV        SI,CX
   f000:c21c     LEA        BX,[0xc058]
   f000:c220     PUSH       BX
                             LAB_f000_c221                              XREF[1]:  f000:c229(j)  
   f000:c221     CMP        AL,byte ptr CS:[BX]=>s_AXBXCXDXSPBPSID  ; = "AXBXCXDXSPBPSIDIDSESSSCSIPO
                                                                     ; = "BXCXDXSPBPSIDIDSESSSCSIPODI
   f000:c224     JZ         LAB_f000_c22d
   f000:c226     ADD        BX,0x2
   f000:c229     LOOP       LAB_f000_c221
   f000:c22b     JCXZ       LAB_f000_c28a
                             LAB_f000_c22d                              XREF[1]:  f000:c224(j)  
   f000:c22d     POP        DI
   f000:c22e     MOV        CX,SI
   f000:c230     XCHG       AL,AH
   f000:c232     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c235     XCHG       AL,AH
   f000:c237     PUSH       CS
   f000:c238     POP        ES
   f000:c239     SCASW.RE   ES:DI
   f000:c23b     JCXZ       LAB_f000_c28a
   f000:c23d     DEC        SI
   f000:c23e     SUB        SI,CX
   f000:c240     SUB        DI,0x2
   f000:c243     ADD        SI,SI
                             LAB_f000_c245                              XREF[1]:  f000:c284(j)  
   f000:c245     MOV        AX,word ptr CS:[DI]
   f000:c248     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c24b     XCHG       AL,AH
   f000:c24d     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c250     MOV        AL,0x3d
   f000:c252     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c255     CALL       FUN_f000_c776                           ; undefined FUN_f000_c776()
   f000:c258     CALL       FUN_f000_c656                           ; undefined FUN_f000_c656()
   f000:c25b     SUB        BX,BX
   f000:c25d     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c260     CALL       FUN_f000_c789                           ; undefined FUN_f000_c789()
   f000:c263     CALL       FUN_f000_c6bb                           ; undefined FUN_f000_c6bb()
   f000:c266     JZ         LAB_f000_c27c
                             LAB_f000_c268                              XREF[1]:  f000:c270(j)  
   f000:c268     CALL       FUN_f000_c5bb                           ; undefined FUN_f000_c5bb()
   f000:c26b     JC         LAB_f000_c272
   f000:c26d     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c270     JMP        LAB_f000_c268
                             LAB_f000_c272                              XREF[1]:  f000:c26b(j)  
   f000:c272     CALL       FUN_f000_c6be                           ; undefined FUN_f000_c6be()
   f000:c275     JNC        LAB_f000_c28a
   f000:c277     MOV        word ptr [SI + 0x0],BX
   f000:c27b     STC
                             LAB_f000_c27c                              XREF[1]:  f000:c266(j)  
   f000:c27c     JNC        LAB_f000_c28a
   f000:c27e     ADD        SI,0x2
   f000:c281     ADD        DI,0x2
   f000:c284     LOOP       LAB_f000_c245
   f000:c286     RET
                             LAB_f000_c287                              XREF[1]:  f000:c215(j)  
   f000:c287     JMP        FUN_f000_c2d2                           ; undefined FUN_f000_c2d2()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:c289     ??         90h
                             LAB_f000_c28a                              XREF[5]:  FUN_f000_c20e:f000:c22b(j), 
                                                                                 FUN_f000_c20e:f000:c23b(j), 
                                                                                 FUN_f000_c20e:f000:c275(j), 
                                                                                 FUN_f000_c20e:f000:c27c(j), 
                                                                                 f000:c2e9(j)  
   f000:c28a     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c28d()
             undefined         AL:1           <RETURN>
                             FUN_f000_c28d                              XREF[3]:  FUN_f000_c20e:f000:c211(j), 
                                                                                 FUN_f000_c3b5:f000:c3b9(c), 
                                                                                 FUN_f000_c3c2:f000:c3d5(c)  
   f000:c28d     LEA        DI,[0xc058]
   f000:c291     SUB        SI,SI
   f000:c293     MOV        CX,0xd
                             LAB_f000_c296                              XREF[1]:  f000:c2ad(j)  
   f000:c296     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c299     MOV        AX,word ptr CS:[DI]=>s_AXBXCXDXSPBPSID  ; = "AXBXCXDXSPBPSIDIDSESSSCSIPO
   f000:c29c     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c29f     XCHG       AH,AL
   f000:c2a1     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c2a4     ADD        DI,0x2
   f000:c2a7     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c2aa     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c2ad     LOOP       LAB_f000_c296
   f000:c2af     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c2b2     MOV        BX,DI
   f000:c2b4     CALL       FUN_f000_c686                           ; undefined FUN_f000_c686()
   f000:c2b7     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c2ba()
             undefined         AL:1           <RETURN>
                             FUN_f000_c2ba                              XREF[1]:  FUN_f000_c3e6:f000:c3ed(c)  
   f000:c2ba     MOV        CX,0xd
                             LAB_f000_c2bd                              XREF[1]:  f000:c2c6(j)  
   f000:c2bd     CALL       FUN_f000_c776                           ; undefined FUN_f000_c776()
   f000:c2c0     ADD        SI,0x2
   f000:c2c3     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c2c6     LOOP       LAB_f000_c2bd
   f000:c2c8     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c2cb     MOV        BX,word ptr [SI + 0x0]
   f000:c2cf     JMP        LAB_f000_c369
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c2d2()
             undefined         AL:1           <RETURN>
                             FUN_f000_c2d2                              XREF[1]:  FUN_f000_c20e:f000:c287(c)  
   f000:c2d2     CALL       FUN_f000_c6bb                           ; undefined FUN_f000_c6bb()
   f000:c2d5     JC         LAB_f000_c321
   f000:c2d7     LEA        DI,[0xc072]
   f000:c2db     PUSH       CS
   f000:c2dc     POP        ES
   f000:c2dd     MOV        CX,0xa
   f000:c2e0     MOV        BX,word ptr [0x1a]
   f000:c2e4     MOV        SI,0x9
   f000:c2e7     SCASB.RE   ES:DI
   f000:c2e9     JCXZ       LAB_f000_c28a
   f000:c2eb     DEC        DI
   f000:c2ec     SUB        SI,CX
   f000:c2ee     PUSH       CX
   f000:c2ef     MOV        CX,SI
   f000:c2f1     ROL        BX,CL
   f000:c2f3     POP        CX
   f000:c2f4     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
                             LAB_f000_c2f7                              XREF[1]:  f000:c344(j)  
   f000:c2f7     MOV        AL,byte ptr CS:[DI]=>s_ODITSZAPC_f000_  ; = "ODITSZAPC\0\r\n"
                                                                     ; = "DITSZAPC\0\r\n"
   f000:c2fa     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c2fd     MOV        AL,0x3d
   f000:c2ff     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c302     CALL       FUN_f000_c76a                           ; undefined FUN_f000_c76a()
   f000:c305     CALL       FUN_f000_c656                           ; undefined FUN_f000_c656()
   f000:c308     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c30b     CALL       FUN_f000_c789                           ; undefined FUN_f000_c789()
                             LAB_f000_c30e                              XREF[2]:  f000:c31f(j), f000:c329(j)  
   f000:c30e     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c311     CMP        AL,0x2e
   f000:c313     JZ         LAB_f000_c330
   f000:c315     CMP        AL,0xd
   f000:c317     JZ         LAB_f000_c334
   f000:c319     CMP        AL,0x30
   f000:c31b     JNZ        LAB_f000_c323
   f000:c31d     MOV        DH,AL
   f000:c31f     JMP        LAB_f000_c30e
                             LAB_f000_c321                              XREF[1]:  f000:c2d5(j)  
   f000:c321     JMP        FUN_f000_c35b                           ; undefined FUN_f000_c35b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_c323                              XREF[1]:  f000:c31b(j)  
   f000:c323     CMP        AL,0x31
   f000:c325     JNZ        LAB_f000_c32b
   f000:c327     MOV        DH,AL
   f000:c329     JMP        LAB_f000_c30e
                             LAB_f000_c32b                              XREF[1]:  f000:c325(j)  
   f000:c32b     LEA        AX,[0xc10b]
   f000:c32f     PUSH       AX
                             LAB_f000_c330                              XREF[1]:  f000:c313(j)  
   f000:c330     DEC        CL
   f000:c332     JMP        LAB_f000_c346
                             LAB_f000_c334                              XREF[1]:  f000:c317(j)  
   f000:c334     INC        DI
   f000:c335     RCR        DH,0x1
   f000:c337     JC         LAB_f000_c33e
   f000:c339     AND        BL,0xfe
   f000:c33c     JMP        LAB_f000_c341
                             LAB_f000_c33e                              XREF[1]:  f000:c337(j)  
   f000:c33e     OR         BL,0x1
                             LAB_f000_c341                              XREF[1]:  f000:c33c(j)  
   f000:c341     CALL       FUN_f000_c347                           ; undefined FUN_f000_c347()
   f000:c344     LOOP       LAB_f000_c2f7
                             LAB_f000_c346                              XREF[1]:  f000:c332(j)  
   f000:c346     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c347()
             undefined         AL:1           <RETURN>
                             FUN_f000_c347                              XREF[1]:  FUN_f000_c2d2:f000:c341(c)  
   f000:c347     PUSH       DX
   f000:c348     PUSH       CX
   f000:c349     PUSH       BX
   f000:c34a     MOV        DL,0x9
   f000:c34c     DEC        CX
   f000:c34d     SUB        DL,CL
   f000:c34f     MOV        CL,DL
   f000:c351     ROR        BX,CL
   f000:c353     MOV        word ptr [0x1a],BX
   f000:c357     POP        BX
   f000:c358     POP        CX
   f000:c359     POP        DX
   f000:c35a     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c35b()
             undefined         AL:1           <RETURN>
                             FUN_f000_c35b                              XREF[1]:  FUN_f000_c2d2:f000:c321(c)  
   f000:c35b     LEA        BX,[0xc072]
   f000:c35f     CALL       FUN_f000_c686                           ; undefined FUN_f000_c686()
   f000:c362     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c365     MOV        BX,word ptr [0x1a]
                             LAB_f000_c369                              XREF[1]:  FUN_f000_c2ba:f000:c2cf(j)  
   f000:c369     MOV        CX,0x9
                             LAB_f000_c36c                              XREF[1]:  f000:c36f(j)  
   f000:c36c     CALL       FUN_f000_c76a                           ; undefined FUN_f000_c76a()
   f000:c36f     LOOP       LAB_f000_c36c
   f000:c371     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c374     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c375()
             undefined         AL:1           <RETURN>
                             FUN_f000_c375                              XREF[1]:  f000:c087(*)  
   f000:c375     CALL       FUN_f000_c6bb                           ; undefined FUN_f000_c6bb()
   f000:c378     JZ         LAB_f000_c37d
   f000:c37a     CALL       FUN_f000_c64c                           ; undefined FUN_f000_c64c()
                             LAB_f000_c37d                              XREF[1]:  f000:c378(j)  
   f000:c37d     JC         LAB_f000_c3ad
   f000:c37f     MOV        CX,0x2
                             LAB_f000_c382                              XREF[1]:  f000:c38c(j)  
   f000:c382     CALL       FUN_f000_c6df                           ; undefined FUN_f000_c6df()
   f000:c385     PUSH       BX
   f000:c386     INC        CH
   f000:c388     JC         LAB_f000_c38e
   f000:c38a     DEC        CL
   f000:c38c     JNZ        LAB_f000_c382
                             LAB_f000_c38e                              XREF[1]:  f000:c388(j)  
   f000:c38e     JNC        LAB_f000_c3bf
   f000:c390     LEA        SI,[0x75]
                             LAB_f000_c394                              XREF[1]:  f000:c3ab(j)  
   f000:c394     POP        BX
   f000:c395     MOV        word ptr [SI],BX
   f000:c397     MOV        ES,word ptr [0x16]
   f000:c39b     MOV        AL,byte ptr ES:[BX]
   f000:c39e     ADD        SI,0x2
   f000:c3a1     MOV        byte ptr [SI],AL
   f000:c3a3     INC        SI
   f000:c3a4     MOV        AL,0xcc
   f000:c3a6     MOV        byte ptr ES:[BX],AL
   f000:c3a9     DEC        CH
   f000:c3ab     JNZ        LAB_f000_c394
                             LAB_f000_c3ad                              XREF[1]:  f000:c37d(j)  
   f000:c3ad     MOV        word ptr [0x7d],0xc3b6
   f000:c3b3     JMP        FUN_f000_c428                           ; undefined FUN_f000_c428()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c3b5()
             undefined         AL:1           <RETURN>
                             FUN_f000_c3b5
   f000:c3b5     NOP
   f000:c3b6     CALL       FUN_f000_c40a                           ; undefined FUN_f000_c40a()
   f000:c3b9     CALL       FUN_f000_c28d                           ; undefined FUN_f000_c28d()
   f000:c3bc     JMP        LAB_f000_c11a
                             LAB_f000_c3bf                              XREF[2]:  FUN_f000_c375:f000:c38e(j), 
                                                                                 f000:c3d3(j)  
   f000:c3bf     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c3c2()
             undefined         AL:1           <RETURN>
                             FUN_f000_c3c2                              XREF[1]:  f000:c091(*)  
   f000:c3c2     CALL       FUN_f000_c6bb                           ; undefined FUN_f000_c6bb()
   f000:c3c5     JZ         LAB_f000_c3ca
   f000:c3c7     CALL       FUN_f000_c64c                           ; undefined FUN_f000_c64c()
                             LAB_f000_c3ca                              XREF[1]:  f000:c3c5(j)  
   f000:c3ca     JC         LAB_f000_c3d5
   f000:c3cc     CALL       FUN_f000_c6df                           ; undefined FUN_f000_c6df()
   f000:c3cf     MOV        word ptr [0x7b],BX
   f000:c3d3     JNC        LAB_f000_c3bf
                             LAB_f000_c3d5                              XREF[2]:  f000:c3ca(j), 
                                                                                 FUN_f000_c3e6:f000:c3ff(j)  
   f000:c3d5     CALL       FUN_f000_c28d                           ; undefined FUN_f000_c28d()
   f000:c3d8     OR         word ptr [0x1a],0x3000
   f000:c3de     MOV        word ptr [0x7d],0xc3e7
   f000:c3e4     JMP        FUN_f000_c428                           ; undefined FUN_f000_c428()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c3e6()
             undefined         AL:1           <RETURN>
                             FUN_f000_c3e6
   f000:c3e6     NOP
   f000:c3e7     INC        word ptr [0x18]
   f000:c3eb     SUB        SI,SI
   f000:c3ed     CALL       FUN_f000_c2ba                           ; undefined FUN_f000_c2ba()
   f000:c3f0     CMP        word ptr [0x7b],-0x1
   f000:c3f5     JZ         LAB_f000_c401
   f000:c3f7     MOV        BX,word ptr [0x7b]
   f000:c3fb     CMP        BX,word ptr [0x18]
   f000:c3ff     JNZ        LAB_f000_c3d5
                             LAB_f000_c401                              XREF[1]:  f000:c3f5(j)  
   f000:c401     AND        word ptr [0x1a],0xefff
   f000:c407     JMP        LAB_f000_c11a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c40a()
             undefined         AL:1           <RETURN>
                             FUN_f000_c40a                              XREF[1]:  FUN_f000_c3b5:f000:c3b6(c)  
   f000:c40a     LEA        SI,[0x75]
   f000:c40e     MOV        ES,word ptr [0x16]
   f000:c412     MOV        CX,0x2
                             LAB_f000_c415                              XREF[1]:  f000:c425(j)  
   f000:c415     CMP        word ptr [SI],-0x1
   f000:c418     JZ         LAB_f000_c427
   f000:c41a     MOV        BX,word ptr [SI]
   f000:c41c     ADD        SI,0x2
   f000:c41f     MOV        AL,byte ptr [SI]
   f000:c421     MOV        byte ptr ES:[BX],AL
   f000:c424     INC        SI
   f000:c425     LOOP       LAB_f000_c415
                             LAB_f000_c427                              XREF[1]:  f000:c418(j)  
   f000:c427     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c428()
             undefined         AL:1           <RETURN>
                             FUN_f000_c428                              XREF[2]:  FUN_f000_c375:f000:c3b3(c), 
                                                                                 FUN_f000_c3c2:f000:c3e4(c)  
   f000:c428     MOV        SI,word ptr [0xc]
   f000:c42c     MOV        DI,word ptr [0xe]
   f000:c430     MOV        DX,word ptr [0x6]
   f000:c434     MOV        ES,word ptr [0x12]
   f000:c438     MOV        SS,word ptr [0x14]
   f000:c43c     MOV        SP,word ptr [0x8]
   f000:c440     MOV        BP,word ptr [0xa]
   f000:c444     MOV        AX,[0x1a]
   f000:c447     MOV        CL,0x4
   f000:c449     ROR        AX,CL
   f000:c44b     MOV        BX,AX
   f000:c44d     AND        BX,0xfc0
   f000:c451     ROR        AL,0x1
   f000:c453     MOV        AH,AL
   f000:c455     AND        AL,0x10
   f000:c457     OR         BL,AL
   f000:c459     ROR        AH,0x1
   f000:c45b     MOV        AL,AH
   f000:c45d     AND        AL,0x4
   f000:c45f     OR         BL,AL
   f000:c461     ROR        AH,0x1
   f000:c463     AND        AH,0x1
   f000:c466     OR         BL,AH
   f000:c468     PUSH       BX
   f000:c469     MOV        AX,[0x0]
   f000:c46c     MOV        CX,word ptr [0x4]
   f000:c470     MOV        BX,word ptr [0x16]
   f000:c474     PUSH       BX
   f000:c475     MOV        BX,word ptr [0x18]
   f000:c479     PUSH       BX
   f000:c47a     MOV        BX,word ptr [0x2]
   f000:c47e     MOV        DS,word ptr [0x10]
   f000:c482     IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c483()
             undefined         AL:1           <RETURN>
                             FUN_f000_c483                              XREF[1]:  f000:c081(*)  
   f000:c483     PUSH       DS
   f000:c484     POP        ES
   f000:c485     CALL       FUN_f000_c0fc                           ; undefined FUN_f000_c0fc()
                             LAB_f000_c488                              XREF[1]:  f000:c4d9(j)  
   f000:c488     CALL       FUN_f000_c5ca                           ; undefined FUN_f000_c5ca()
   f000:c48b     CALL       FUN_f000_c6cd                           ; undefined FUN_f000_c6cd()
   f000:c48e     LEA        DI,[0x64]
                             LAB_f000_c492                              XREF[1]:  f000:c4ae(j)  
   f000:c492     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c495     LODSB      SI
   f000:c496     PUSH       CX
   f000:c497     MOV        CH,AL
   f000:c499     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c49c     CALL       FUN_f000_c5ca                           ; undefined FUN_f000_c5ca()
   f000:c49f     POP        CX
   f000:c4a0     DEC        CX
   f000:c4a1     CMP        AL,0x20
   f000:c4a3     JNC        LAB_f000_c4a7
   f000:c4a5     MOV        AL,0x2e
                             LAB_f000_c4a7                              XREF[1]:  f000:c4a3(j)  
   f000:c4a7     STOSB      ES:DI
   f000:c4a8     JCXZ       LAB_f000_c4b0
   f000:c4aa     MOV        AX,SI
   f000:c4ac     AND        AL,0xf
   f000:c4ae     JNZ        LAB_f000_c492
                             LAB_f000_c4b0                              XREF[1]:  f000:c4a8(j)  
   f000:c4b0     SUB        AL,AL
   f000:c4b2     STOSB      ES:DI
                             LAB_f000_c4b3                              XREF[1]:  f000:c4be(j)  
   f000:c4b3     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c4b6     LEA        BX,[0x7f]
   f000:c4ba     CMP        byte ptr ES:[BX],0x3d
   f000:c4be     JNZ        LAB_f000_c4b3
   f000:c4c0     LEA        DI,[0x64]
                             LAB_f000_c4c4                              XREF[1]:  f000:c4d2(j)  
   f000:c4c4     MOV        AL,byte ptr ES:[DI]
   f000:c4c7     CMP        AL,0x0
   f000:c4c9     JZ         LAB_f000_c4d4
   f000:c4cb     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c4ce     CALL       FUN_f000_c5ca                           ; undefined FUN_f000_c5ca()
   f000:c4d1     INC        DI
   f000:c4d2     JMP        LAB_f000_c4c4
                             LAB_f000_c4d4                              XREF[1]:  f000:c4c9(j)  
   f000:c4d4     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c4d7     JCXZ       LAB_f000_c4db
   f000:c4d9     JMP        LAB_f000_c488
                             LAB_f000_c4db                              XREF[1]:  f000:c4d7(j)  
   f000:c4db     RET
                             LAB_f000_c4dc                              XREF[1]:  f000:c502(j)  
   f000:c4dc     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c4df()
             undefined         AL:1           <RETURN>
                             FUN_f000_c4df                              XREF[1]:  f000:c08d(*)  
   f000:c4df     CALL       FUN_f000_c6df                           ; undefined FUN_f000_c6df()
   f000:c4e2     MOV        DX,BX
   f000:c4e4     JNC        LAB_f000_c4ff
   f000:c4e6     IN         AL,DX
                             LAB_f000_c4e7                              XREF[1]:  f000:c507(j)  
   f000:c4e7     MOV        CH,AL
   f000:c4e9     MOV        AL,0x50
   f000:c4eb     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c4ee     MOV        BX,DX
   f000:c4f0     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c4f3     MOV        AL,0x3d
   f000:c4f5     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c4f8     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c4fb     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c4fe     RET
                             LAB_f000_c4ff                              XREF[1]:  f000:c4e4(j)  
   f000:c4ff     CALL       FUN_f000_c6df                           ; undefined FUN_f000_c6df()
   f000:c502     JNC        LAB_f000_c4dc
   f000:c504     MOV        AL,BL
   f000:c506     OUT        DX,AL
   f000:c507     JMP        LAB_f000_c4e7
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c509()
             undefined         AL:1           <RETURN>
                             FUN_f000_c509                              XREF[1]:  f000:c07f(*)  
   f000:c509     CALL       FUN_f000_c0fc                           ; undefined FUN_f000_c0fc()
   f000:c50c     SUB        AX,AX
   f000:c50e     MOV        DX,AX
   f000:c510     MOV        BX,AX
                             LAB_f000_c512                              XREF[1]:  f000:c518(j)  
   f000:c512     LODSB      SI
   f000:c513     ADD        BX,AX
   f000:c515     ADC        DX,0x0
   f000:c518     LOOP       LAB_f000_c512
   f000:c51a     MOV        CH,DL
   f000:c51c     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c51f     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c522     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c525     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c526()
             undefined         AL:1           <RETURN>
                             FUN_f000_c526                              XREF[1]:  f000:c083(*)  
   f000:c526     CALL       FUN_f000_c17c                           ; undefined FUN_f000_c17c()
                             LAB_f000_c529                              XREF[2]:  f000:c52c(j), f000:c54f(j)  
   f000:c529     CMPSB      ES:DI,SI
   f000:c52a     JNZ        LAB_f000_c52f
   f000:c52c     LOOP       LAB_f000_c529
   f000:c52e     RET
                             LAB_f000_c52f                              XREF[1]:  f000:c52a(j)  
   f000:c52f     PUSH       SI
   f000:c530     PUSH       DS
   f000:c531     PUSH       CX
   f000:c532     DEC        SI
   f000:c533     CALL       FUN_f000_c552                           ; undefined FUN_f000_c552()
   f000:c536     MOV        CX,0xa
                             LAB_f000_c539                              XREF[1]:  f000:c53c(j)  
   f000:c539     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c53c     LOOP       LAB_f000_c539
   f000:c53e     MOV        SI,DI
   f000:c540     DEC        SI
   f000:c541     PUSH       ES
   f000:c542     POP        DS
   f000:c543     CALL       FUN_f000_c552                           ; undefined FUN_f000_c552()
   f000:c546     POP        CX
   f000:c547     POP        DS
   f000:c548     POP        SI
   f000:c549     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c54c     CALL       FUN_f000_c5ca                           ; undefined FUN_f000_c5ca()
   f000:c54f     LOOP       LAB_f000_c529
   f000:c551     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c552()
             undefined         AL:1           <RETURN>
                             FUN_f000_c552                              XREF[2]:  FUN_f000_c526:f000:c533(c), 
                                                                                 FUN_f000_c526:f000:c543(c)  
   f000:c552     PUSH       BX
   f000:c553     CALL       FUN_f000_c6cd                           ; undefined FUN_f000_c6cd()
   f000:c556     CALL       FUN_f000_c6b3                           ; undefined FUN_f000_c6b3()
   f000:c559     LODSB      SI
   f000:c55a     MOV        CH,AL
   f000:c55c     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c55f     POP        BX
   f000:c560     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c561()
             undefined         AL:1           <RETURN>
                             FUN_f000_c561                              XREF[7]:  FUN_f000_c0fc:f000:c0fc(c), 
                                                                                 FUN_f000_c17c:f000:c17d(c), 
                                                                                 FUN_f000_c194:f000:c194(c), 
                                                                                 FUN_f000_c1ae:f000:c1af(c), 
                                                                                 FUN_f000_c1fa:f000:c1fb(c), 
                                                                                 f000:c56d(j), 
                                                                                 FUN_f000_c849:f000:c84a(c)  
   f000:c561     CALL       FUN_f000_c6df                           ; undefined FUN_f000_c6df()
   f000:c564     POP        AX
   f000:c565     PUSH       BX
   f000:c566     PUSH       AX
   f000:c567     DEC        CX
   f000:c568     JNC        LAB_f000_c56d
   f000:c56a     JNZ        LAB_f000_c56f
   f000:c56c     RET
                             LAB_f000_c56d                              XREF[1]:  f000:c568(j)  
   f000:c56d     JNZ        FUN_f000_c561
                             LAB_f000_c56f                              XREF[1]:  f000:c56a(j)  
   f000:c56f     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c572()
             undefined         AL:1           <RETURN>
                             FUN_f000_c572                              XREF[2]:  f000:c58e(j), 
                                                                                 FUN_f000_c789:f000:c795(c)  
   f000:c572     PUSH       BX
   f000:c573     MOV        BH,AH
   f000:c575     MOV        AH,0x0
   f000:c577     INT        0x16
   f000:c579     MOV        AH,BH
   f000:c57b     POP        BX
   f000:c57c     CMP        AL,0xd
   f000:c57e     JZ         LAB_f000_c59c
   f000:c580     CMP        AL,0x8
   f000:c582     JZ         LAB_f000_c59c
   f000:c584     CMP        AL,0x10
   f000:c586     JNZ        LAB_f000_c58c
   f000:c588     XOR        byte ptr [0x81],AL
                             LAB_f000_c58c                              XREF[1]:  f000:c586(j)  
   f000:c58c     CMP        AL,0x20
   f000:c58e     JC         FUN_f000_c572
   f000:c590     AND        AL,0x7f
   f000:c592     CMP        AL,0x61
   f000:c594     JC         LAB_f000_c59c
   f000:c596     CMP        AL,0x7b
   f000:c598     JNC        LAB_f000_c59c
   f000:c59a     SUB        AL,0x20
                             LAB_f000_c59c                              XREF[4]:  f000:c57e(j), f000:c582(j), 
                                                                                 f000:c594(j), f000:c598(j)  
   f000:c59c     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c59d()
             undefined         AL:1           <RETURN>
                             FUN_f000_c59d                              XREF[2]:  FUN_f000_c669:f000:c674(c), 
                                                                                 FUN_f000_c669:f000:c67e(c)  
   f000:c59d     ADD        AL,0x90
   f000:c59f     DAA
   f000:c5a0     ADC        AL,0x40
   f000:c5a2     DAA
   f000:c5a3     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c5a4()
             undefined         AL:1           <RETURN>
                             FUN_f000_c5a4                              XREF[1]:  FUN_f000_c5bb:f000:c5bc(c)  
   f000:c5a4     CMP        AL,0x30
   f000:c5a6     JC         LAB_f000_c5b9
   f000:c5a8     CMP        AL,0x47
   f000:c5aa     JNC        LAB_f000_c5b9
   f000:c5ac     CMP        AL,0x39
   f000:c5ae     JBE        LAB_f000_c5b6
   f000:c5b0     CMP        AL,0x41
   f000:c5b2     JC         LAB_f000_c5b9
   f000:c5b4     SUB        AL,0x7
                             LAB_f000_c5b6                              XREF[1]:  f000:c5ae(j)  
   f000:c5b6     SUB        AL,0x30
   f000:c5b8     RET
                             LAB_f000_c5b9                              XREF[3]:  f000:c5a6(j), f000:c5aa(j), 
                                                                                 f000:c5b2(j)  
   f000:c5b9     STC
   f000:c5ba     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c5bb()
             undefined         AL:1           <RETURN>
                             FUN_f000_c5bb                              XREF[3]:  FUN_f000_c1ae:f000:c1df(c), 
                                                                                 FUN_f000_c20e:f000:c268(c), 
                                                                                 FUN_f000_c6e6:f000:c6e6(c)  
   f000:c5bb     PUSH       CX
   f000:c5bc     CALL       FUN_f000_c5a4                           ; undefined FUN_f000_c5a4()
   f000:c5bf     JC         LAB_f000_c5c8
   f000:c5c1     MOV        CL,0x4
   f000:c5c3     SHL        BX,CL
   f000:c5c5     ADD        BL,AL
   f000:c5c7     CLC
                             LAB_f000_c5c8                              XREF[1]:  f000:c5bf(j)  
   f000:c5c8     POP        CX
   f000:c5c9     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c5ca()
             undefined         AL:1           <RETURN>
                             FUN_f000_c5ca                              XREF[5]:  FUN_f000_c483:f000:c488(c), 
                                                                                 FUN_f000_c483:f000:c49c(c), 
                                                                                 FUN_f000_c483:f000:c4ce(c), 
                                                                                 FUN_f000_c526:f000:c54c(c), 
                                                                                 FUN_f000_c8d6:f000:c8dd(c)  
   f000:c5ca     PUSH       DS
   f000:c5cb     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c5ce     CMP        byte ptr [0x80],0x0
   f000:c5d3     JZ         LAB_f000_c5d8
   f000:c5d5     JMP        LAB_f000_c117
                             LAB_f000_c5d8                              XREF[1]:  f000:c5d3(j)  
   f000:c5d8     POP        DS
   f000:c5d9     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c5da()
             undefined         AL:1           <RETURN>
                             FUN_f000_c5da                              XREF[26]: FUN_f000_c10b:f000:c114(c), 
                                                                                 FUN_f000_c10b:f000:c11c(c), 
                                                                                 FUN_f000_c20e:f000:c248(c), 
                                                                                 FUN_f000_c20e:f000:c24d(c), 
                                                                                 FUN_f000_c20e:f000:c252(c), 
                                                                                 FUN_f000_c28d:f000:c29c(c), 
                                                                                 FUN_f000_c28d:f000:c2a1(c), 
                                                                                 FUN_f000_c656:f000:c658(c), 
                                                                                 FUN_f000_c669:f000:c677(c), 
                                                                                 FUN_f000_c669:f000:c681(c), 
                                                                                 FUN_f000_c686:f000:c696(c), 
                                                                                 FUN_f000_c6b3:f000:c6b6(c), 
                                                                                 FUN_f000_c6cd:f000:c6d5(c), 
                                                                                 FUN_f000_c76a:f000:c772(c), 
                                                                                 FUN_f000_c789:f000:c7a4(c), 
                                                                                 FUN_f000_c789:f000:c7c0(c), 
                                                                                 FUN_f000_c789:f000:c7cc(c), 
                                                                                 FUN_f000_c837:f000:c83a(c), 
                                                                                 FUN_f000_c837:f000:c83f(c), 
                                                                                 FUN_f000_c837:f000:c844(c), [more]
   f000:c5da     PUSH       DX
   f000:c5db     PUSH       AX
   f000:c5dc     PUSH       BX
   f000:c5dd     PUSH       DS
   f000:c5de     PUSH       AX
   f000:c5df     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
                             LAB_f000_c5e2                              XREF[1]:  f000:c5fd(j)  
   f000:c5e2     MOV        AH,0x1
   f000:c5e4     INT        0x16
   f000:c5e6     JZ         LAB_f000_c616
   f000:c5e8     SUB        AH,AH
   f000:c5ea     INT        0x16
   f000:c5ec     CMP        AL,0x10
   f000:c5ee     JNZ        LAB_f000_c5f4
   f000:c5f0     XOR        byte ptr [0x81],AL
                             LAB_f000_c5f4                              XREF[1]:  f000:c5ee(j)  
   f000:c5f4     CMP        AL,0x2e
   f000:c5f6     JNZ        LAB_f000_c5fb
   f000:c5f8     MOV        [0x80],AL
                             LAB_f000_c5fb                              XREF[1]:  f000:c5f6(j)  
   f000:c5fb     CMP        AL,0x13
   f000:c5fd     JNZ        LAB_f000_c5e2
                             LAB_f000_c5ff                              XREF[1]:  f000:c614(j)  
   f000:c5ff     SUB        AH,AH
   f000:c601     INT        0x16
   f000:c603     CMP        AL,0x10
   f000:c605     JNZ        LAB_f000_c60b
   f000:c607     XOR        byte ptr [0x81],AL
                             LAB_f000_c60b                              XREF[1]:  f000:c605(j)  
   f000:c60b     CMP        AL,0x2e
   f000:c60d     JNZ        LAB_f000_c612
   f000:c60f     MOV        [0x80],AL
                             LAB_f000_c612                              XREF[1]:  f000:c60d(j)  
   f000:c612     CMP        AL,0x11
   f000:c614     JNZ        LAB_f000_c5ff
                             LAB_f000_c616                              XREF[1]:  f000:c5e6(j)  
   f000:c616     POP        AX
   f000:c617     PUSH       AX
   f000:c618     CMP        AL,0x9
   f000:c61a     JNZ        LAB_f000_c61e
   f000:c61c     MOV        AL,0x20
                             LAB_f000_c61e                              XREF[1]:  f000:c61a(j)  
   f000:c61e     MOV        AH,0xe
   f000:c620     MOV        BH,0x0
   f000:c622     INT        0x10
   f000:c624     POP        AX
   f000:c625     CMP        AL,0x8
   f000:c627     JNZ        LAB_f000_c636
   f000:c629     CMP        byte ptr [0x7f],0x0
   f000:c62e     JZ         LAB_f000_c63a
   f000:c630     DEC        byte ptr [0x7f]
   f000:c634     JMP        LAB_f000_c63a
                             LAB_f000_c636                              XREF[1]:  f000:c627(j)  
   f000:c636     INC        byte ptr [0x7f]
                             LAB_f000_c63a                              XREF[2]:  f000:c62e(j), f000:c634(j)  
   f000:c63a     CMP        byte ptr [0x81],0x0
   f000:c63f     JZ         LAB_f000_c647
   f000:c641     SUB        AH,AH
   f000:c643     SUB        DX,DX
   f000:c645     INT        0x17
                             LAB_f000_c647                              XREF[1]:  f000:c63f(j)  
   f000:c647     POP        DS
   f000:c648     POP        BX
   f000:c649     POP        AX
   f000:c64a     POP        DX
   f000:c64b     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c64c()
             undefined         AL:1           <RETURN>
                             FUN_f000_c64c                              XREF[2]:  FUN_f000_c375:f000:c37a(c), 
                                                                                 FUN_f000_c3c2:f000:c3c7(c)  
   f000:c64c     SUB        BX,BX
   f000:c64e     CALL       FUN_f000_c6e6                           ; undefined FUN_f000_c6e6()
   f000:c651     MOV        word ptr [0x18],BX
   f000:c655     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c656()
             undefined         AL:1           <RETURN>
                             FUN_f000_c656                              XREF[3]:  FUN_f000_c1ae:f000:c1c3(c), 
                                                                                 FUN_f000_c20e:f000:c258(c), 
                                                                                 FUN_f000_c2d2:f000:c305(c)  
   f000:c656     MOV        AL,0x2d
   f000:c658     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c65b     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c65c()
             undefined         AL:1           <RETURN>
                             FUN_f000_c65c                              XREF[7]:  FUN_f000_c194:f000:c19f(c), 
                                                                                 FUN_f000_c194:f000:c1a7(c), 
                                                                                 FUN_f000_c4df:f000:c4f0(c), 
                                                                                 FUN_f000_c509:f000:c51f(c), 
                                                                                 FUN_f000_c6cd:f000:c6d0(c), 
                                                                                 FUN_f000_c6cd:f000:c6da(c), 
                                                                                 FUN_f000_c776:f000:c77a(c)  
   f000:c65c     PUSH       CX
   f000:c65d     MOV        CH,BH
   f000:c65f     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c662     MOV        CH,BL
   f000:c664     CALL       FUN_f000_c669                           ; undefined FUN_f000_c669()
   f000:c667     POP        CX
   f000:c668     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c669()
             undefined         AL:1           <RETURN>
                             FUN_f000_c669                              XREF[7]:  FUN_f000_c1ae:f000:c1c0(c), 
                                                                                 FUN_f000_c483:f000:c499(c), 
                                                                                 FUN_f000_c4df:f000:c4f8(c), 
                                                                                 FUN_f000_c509:f000:c51c(c), 
                                                                                 FUN_f000_c552:f000:c55c(c), 
                                                                                 FUN_f000_c65c:f000:c65f(c), 
                                                                                 FUN_f000_c65c:f000:c664(c)  
   f000:c669     PUSH       AX
   f000:c66a     MOV        AL,CH
   f000:c66c     SHR        AL,0x1
   f000:c66e     SHR        AL,0x1
   f000:c670     SHR        AL,0x1
   f000:c672     SHR        AL,0x1
   f000:c674     CALL       FUN_f000_c59d                           ; undefined FUN_f000_c59d()
   f000:c677     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c67a     MOV        AL,CH
   f000:c67c     AND        AL,0xf
   f000:c67e     CALL       FUN_f000_c59d                           ; undefined FUN_f000_c59d()
   f000:c681     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c684     POP        AX
   f000:c685     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c686()
             undefined         AL:1           <RETURN>
                             FUN_f000_c686                              XREF[6]:  FUN_f000_c0b2:f000:c0dc(c), 
                                                                                 FUN_f000_c28d:f000:c2b4(c), 
                                                                                 FUN_f000_c35b:f000:c35f(c), 
                                                                                 FUN_f000_c69f:f000:c6a5(c), 
                                                                                 FUN_f000_c849:f000:c85c(c), 
                                                                                 FUN_f000_c849:f000:c8c6(c)  
   f000:c686     PUSH       AX
   f000:c687     PUSH       DS
   f000:c688     PUSH       SI
   f000:c689     PUSH       CS
   f000:c68a     POP        DS
   f000:c68b     MOV        SI,BX
                             LAB_f000_c68d                              XREF[1]:  f000:c699(j)  
   f000:c68d     LODSB      SI
   f000:c68e     CMP        AL,0x24
   f000:c690     JZ         LAB_f000_c69b
   f000:c692     OR         AL,AL
   f000:c694     JZ         LAB_f000_c69b
   f000:c696     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c699     JMP        LAB_f000_c68d
                             LAB_f000_c69b                              XREF[2]:  f000:c690(j), f000:c694(j)  
   f000:c69b     POP        SI
   f000:c69c     POP        DS
   f000:c69d     POP        AX
   f000:c69e     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c69f()
             undefined         AL:1           <RETURN>
                             FUN_f000_c69f                              XREF[15]: FUN_f000_c10b:f000:c117(c), 
                                                                                 FUN_f000_c194:f000:c1aa(c), 
                                                                                 FUN_f000_c28d:f000:c2b7(c), 
                                                                                 FUN_f000_c2d2:f000:c2f4(c), 
                                                                                 FUN_f000_c35b:f000:c362(c), 
                                                                                 FUN_f000_c35b:f000:c371(c), 
                                                                                 FUN_f000_c483:f000:c4d4(c), 
                                                                                 FUN_f000_c4df:f000:c4fb(c), 
                                                                                 FUN_f000_c509:f000:c522(c), 
                                                                                 FUN_f000_c526:f000:c549(c), 
                                                                                 FUN_f000_c849:f000:c864(c), 
                                                                                 FUN_f000_c849:f000:c87f(c), 
                                                                                 FUN_f000_c849:f000:c8bf(c), 
                                                                                 FUN_f000_c849:f000:c8d0(c), 
                                                                                 FUN_f000_c8d6:f000:c8e2(c)  
   f000:c69f     PUSH       BX
   f000:c6a0     PUSH       DS
   f000:c6a1     LEA        BX,[0xc07c]
   f000:c6a5     CALL       FUN_f000_c686                           ; undefined FUN_f000_c686()
   f000:c6a8     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c6ab     MOV        byte ptr [0x7f],0x0
   f000:c6b0     POP        DS
   f000:c6b1     POP        BX
   f000:c6b2     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c6b3()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6b3                              XREF[15]: FUN_f000_c194:f000:c1a2(c), 
                                                                                 FUN_f000_c1ae:f000:c1ba(c), 
                                                                                 FUN_f000_c1ae:f000:c1c6(c), 
                                                                                 FUN_f000_c20e:f000:c25d(c), 
                                                                                 FUN_f000_c28d:f000:c296(c), 
                                                                                 FUN_f000_c28d:f000:c2a7(c), 
                                                                                 FUN_f000_c28d:f000:c2aa(c), 
                                                                                 FUN_f000_c28d:f000:c2af(c), 
                                                                                 FUN_f000_c2ba:f000:c2c3(c), 
                                                                                 FUN_f000_c2ba:f000:c2c8(c), 
                                                                                 FUN_f000_c2d2:f000:c308(c), 
                                                                                 FUN_f000_c483:f000:c492(c), 
                                                                                 FUN_f000_c483:f000:c4b3(c), 
                                                                                 FUN_f000_c526:f000:c539(c), 
                                                                                 FUN_f000_c552:f000:c556(c)  
   f000:c6b3     PUSH       AX
   f000:c6b4     MOV        AL,0x20
   f000:c6b6     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c6b9     POP        AX
   f000:c6ba     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_c6bb()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6bb                              XREF[6]:  FUN_f000_c20e:f000:c20e(c), 
                                                                                 FUN_f000_c20e:f000:c263(c), 
                                                                                 FUN_f000_c2d2:f000:c2d2(c), 
                                                                                 FUN_f000_c375:f000:c375(c), 
                                                                                 FUN_f000_c3c2:f000:c3c2(c), 
                                                                                 FUN_f000_c6df:f000:c6e1(c)  
   f000:c6bb     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c6be()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6be                              XREF[4]:  FUN_f000_c1ae:f000:c1da(c), 
                                                                                 FUN_f000_c1ae:f000:c1e9(c), 
                                                                                 FUN_f000_c20e:f000:c272(c), 
                                                                                 FUN_f000_c6e6:f000:c6f0(c)  
   f000:c6be     CMP        AL,0x20
   f000:c6c0     JZ         LAB_f000_c6cc
   f000:c6c2     CMP        AL,0x2c
   f000:c6c4     JZ         LAB_f000_c6cc
   f000:c6c6     CMP        AL,0xd
   f000:c6c8     STC
   f000:c6c9     JZ         LAB_f000_c6cc
   f000:c6cb     CMC
                             LAB_f000_c6cc                              XREF[3]:  f000:c6c0(j), f000:c6c4(j), 
                                                                                 f000:c6c9(j)  
   f000:c6cc     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c6cd()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6cd                              XREF[5]:  FUN_f000_c1ae:f000:c1b7(c), 
                                                                                 FUN_f000_c483:f000:c48b(c), 
                                                                                 FUN_f000_c552:f000:c553(c), 
                                                                                 FUN_f000_c849:f000:c85f(c), 
                                                                                 FUN_f000_c849:f000:c8cd(c)  
   f000:c6cd     PUSH       BX
   f000:c6ce     MOV        BX,DS
   f000:c6d0     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c6d3     MOV        AL,0x3a
   f000:c6d5     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c6d8     MOV        BX,SI
   f000:c6da     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c6dd     POP        BX
   f000:c6de     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c6df()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6df                              XREF[5]:  FUN_f000_c375:f000:c382(c), 
                                                                                 FUN_f000_c3c2:f000:c3cc(c), 
                                                                                 FUN_f000_c4df:f000:c4df(c), 
                                                                                 FUN_f000_c4df:f000:c4ff(c), 
                                                                                 FUN_f000_c561:f000:c561(c)  
   f000:c6df     SUB        BX,BX
   f000:c6e1     CALL       FUN_f000_c6bb                           ; undefined FUN_f000_c6bb()
   f000:c6e4     JZ         LAB_f000_c6f6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c6e6()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6e6                              XREF[2]:  FUN_f000_c64c:f000:c64e(c), 
                                                                                 f000:c6ee(j)  
   f000:c6e6     CALL       FUN_f000_c5bb                           ; undefined FUN_f000_c5bb()
   f000:c6e9     JC         LAB_f000_c6f0
   f000:c6eb     CALL       FUN_f000_c826                           ; undefined FUN_f000_c826()
   f000:c6ee     JMP        FUN_f000_c6e6
                             LAB_f000_c6f0                              XREF[1]:  f000:c6e9(j)  
   f000:c6f0     CALL       FUN_f000_c6be                           ; undefined FUN_f000_c6be()
   f000:c6f3     JNZ        LAB_f000_c6f6
   f000:c6f5     RET
                             LAB_f000_c6f6                              XREF[2]:  FUN_f000_c6df:f000:c6e4(j), 
                                                                                 f000:c6f3(j)  
   f000:c6f6     JMP        FUN_f000_c10b                           ; undefined FUN_f000_c10b()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far FUN_f000_c6f9()
             undefined         AL:1           <RETURN>
                             FUN_f000_c6f9
   f000:c6f9     PUSH       DS
   f000:c6fa     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c6fd     MOV        [0x0],AX
   f000:c700     MOV        word ptr [0x2],BX
   f000:c704     MOV        word ptr [0x4],CX
   f000:c708     MOV        word ptr [0x6],DX
   f000:c70c     MOV        word ptr [0xe],DI
   f000:c710     MOV        word ptr [0xc],SI
   f000:c714     MOV        word ptr [0x14],SS
   f000:c718     MOV        word ptr [0x12],ES
   f000:c71c     POP        BX
   f000:c71d     MOV        word ptr [0x10],BX
   f000:c721     POP        BX
   f000:c722     DEC        BX
   f000:c723     MOV        word ptr [0x18],BX
   f000:c727     POP        BX
   f000:c728     MOV        word ptr [0x16],BX
   f000:c72c     POP        AX
   f000:c72d     AND        AH,0xf
   f000:c730     MOV        CL,0x4
   f000:c732     ROL        AX,CL
   f000:c734     MOV        BX,AX
   f000:c736     AND        BX,0xfc00
   f000:c73a     ROL        AX,0x1
   f000:c73c     AND        AX,0x2a0
   f000:c73f     OR         BX,AX
   f000:c741     AND        BX,0xfe00
   f000:c745     ROL        AX,0x1
   f000:c747     AND        AX,0x140
   f000:c74a     OR         BX,AX
   f000:c74c     ROL        AL,0x1
   f000:c74e     MOV        BL,AL
   f000:c750     MOV        word ptr [0x1a],BX
   f000:c754     MOV        word ptr [0x8],SP
   f000:c758     MOV        word ptr [0xa],BP
   f000:c75c     MOV        SS,word ptr [0x82]
   f000:c760     MOV        SP,0xffe
   f000:c763     MOV        BX,word ptr [0x7d]
   f000:c767     PUSH       CS
   f000:c768     PUSH       BX
   f000:c769     RETF
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c76a()
             undefined         AL:1           <RETURN>
                             FUN_f000_c76a                              XREF[2]:  FUN_f000_c2d2:f000:c302(c), 
                                                                                 FUN_f000_c35b:f000:c36c(c)  
   f000:c76a     SUB        AL,AL
   f000:c76c     ROL        BX,0x1
   f000:c76e     ADC        AL,0x30
   f000:c770     MOV        DH,AL
   f000:c772     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c775     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c776()
             undefined         AL:1           <RETURN>
                             FUN_f000_c776                              XREF[2]:  FUN_f000_c20e:f000:c255(c), 
                                                                                 FUN_f000_c2ba:f000:c2bd(c)  
   f000:c776     MOV        BX,word ptr [SI + 0x0]
   f000:c77a     CALL       FUN_f000_c65c                           ; undefined FUN_f000_c65c()
   f000:c77d     RET
                             LAB_f000_c77e                              XREF[1]:  f000:c095(*)  
   f000:c77e     MOV        AX,0x30
   f000:c781     MOV        SS,AX
   f000:c783     MOV        SP,0x80
   f000:c786     JMP        LAB_f000_e4f6
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c789()
             undefined         AL:1           <RETURN>
                             FUN_f000_c789                              XREF[4]:  FUN_f000_c10b:f000:c150(c), 
                                                                                 FUN_f000_c1ae:f000:c1c9(c), 
                                                                                 FUN_f000_c20e:f000:c260(c), 
                                                                                 FUN_f000_c2d2:f000:c30b(c)  
   f000:c789     PUSH       DS
   f000:c78a     PUSH       ES
   f000:c78b     PUSH       DI
   f000:c78c     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c78f     PUSH       DS
   f000:c790     POP        ES
   f000:c791     LEA        DI,[0x1c]
                             LAB_f000_c795                              XREF[3]:  f000:c7a7(j), f000:c7ad(j), 
                                                                                 f000:c7c8(j)  
   f000:c795     CALL       FUN_f000_c572                           ; undefined FUN_f000_c572()
   f000:c798     CMP        AL,0x8
   f000:c79a     JNZ        LAB_f000_c7af
   f000:c79c     CMP        DI,0x1c
   f000:c7a0     JA         LAB_f000_c7a9
                             LAB_f000_c7a2                              XREF[1]:  f000:c7be(j)  
   f000:c7a2     MOV        AL,0x7
   f000:c7a4     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c7a7     JMP        LAB_f000_c795
                             LAB_f000_c7a9                              XREF[1]:  f000:c7a0(j)  
   f000:c7a9     CALL       FUN_f000_c837                           ; undefined FUN_f000_c837()
   f000:c7ac     DEC        DI
   f000:c7ad     JMP        LAB_f000_c795
                             LAB_f000_c7af                              XREF[1]:  f000:c79a(j)  
   f000:c7af     CMP        AL,0x2e
   f000:c7b1     JNZ        LAB_f000_c7b6
   f000:c7b3     JMP        LAB_f000_c117
                             LAB_f000_c7b6                              XREF[1]:  f000:c7b1(j)  
   f000:c7b6     CMP        AL,0xd
   f000:c7b8     JZ         LAB_f000_c7c0
   f000:c7ba     CMP        DI,0x61
   f000:c7be     JNC        LAB_f000_c7a2
                             LAB_f000_c7c0                              XREF[1]:  f000:c7b8(j)  
   f000:c7c0     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c7c3     STOSB      ES:DI
   f000:c7c4     CMP        AL,0xd
   f000:c7c6     JZ         LAB_f000_c7ca
   f000:c7c8     JMP        LAB_f000_c795
                             LAB_f000_c7ca                              XREF[1]:  f000:c7c6(j)  
   f000:c7ca     MOV        AL,0xa
   f000:c7cc     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c7cf     MOV        word ptr [0x62],0x1c
   f000:c7d5     MOV        byte ptr [0x7f],0x0
   f000:c7da     CALL       FUN_f000_c7e1                           ; undefined FUN_f000_c7e1()
   f000:c7dd     POP        DI
   f000:c7de     POP        ES
   f000:c7df     POP        DS
   f000:c7e0     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c7e1()
             undefined         AL:1           <RETURN>
                             FUN_f000_c7e1                              XREF[1]:  FUN_f000_c789:f000:c7da(c)  
   f000:c7e1     PUSH       DS
   f000:c7e2     PUSH       ES
   f000:c7e3     PUSH       SI
   f000:c7e4     PUSH       DI
   f000:c7e5     PUSH       AX
   f000:c7e6     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c7e9     PUSH       DS
   f000:c7ea     POP        ES
   f000:c7eb     CLD
   f000:c7ec     LEA        SI,[0x1c]
   f000:c7f0     MOV        DI,SI
                             LAB_f000_c7f2                              XREF[1]:  f000:c7f5(j)  
   f000:c7f2     LODSB      SI
   f000:c7f3     CMP        AL,0x20
   f000:c7f5     JZ         LAB_f000_c7f2
   f000:c7f7     MOV        AH,AL
                             LAB_f000_c7f9                              XREF[2]:  f000:c803(j), f000:c807(j)  
   f000:c7f9     STOSB      ES:DI
   f000:c7fa     MOV        AH,AL
   f000:c7fc     CMP        AL,0xd
   f000:c7fe     JZ         LAB_f000_c80b
                             LAB_f000_c800                              XREF[1]:  f000:c809(j)  
   f000:c800     LODSB      SI
   f000:c801     CMP        AL,0x20
   f000:c803     JNZ        LAB_f000_c7f9
   f000:c805     CMP        AL,AH
   f000:c807     JNZ        LAB_f000_c7f9
   f000:c809     JMP        LAB_f000_c800
                             LAB_f000_c80b                              XREF[1]:  f000:c7fe(j)  
   f000:c80b     CMP        DI,0x1d
   f000:c80f     JZ         LAB_f000_c820
   f000:c811     STD
   f000:c812     MOV        SI,DI
   f000:c814     DEC        SI
   f000:c815     DEC        SI
                             LAB_f000_c816                              XREF[1]:  f000:c819(j)  
   f000:c816     LODSB      SI
   f000:c817     CMP        AL,0x20
   f000:c819     JZ         LAB_f000_c816
   f000:c81b     MOV        byte ptr [SI + 0x2],0xd
   f000:c81f     CLD
                             LAB_f000_c820                              XREF[1]:  f000:c80f(j)  
   f000:c820     POP        AX
   f000:c821     POP        DI
   f000:c822     POP        SI
   f000:c823     POP        ES
   f000:c824     POP        DS
   f000:c825     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c826()
             undefined         AL:1           <RETURN>
                             FUN_f000_c826                              XREF[8]:  FUN_f000_c10b:f000:c153(c), 
                                                                                 FUN_f000_c1ae:f000:c1cc(c), 
                                                                                 FUN_f000_c1ae:f000:c1e4(c), 
                                                                                 FUN_f000_c20e:f000:c232(c), 
                                                                                 FUN_f000_c20e:f000:c26d(c), 
                                                                                 FUN_f000_c2d2:f000:c30e(c), 
                                                                                 FUN_f000_c6bb:f000:c6bb(c), 
                                                                                 FUN_f000_c6e6:f000:c6eb(c)  
   f000:c826     PUSH       DS
   f000:c827     PUSH       SI
   f000:c828     CALL       FUN_f000_c09f                           ; undefined FUN_f000_c09f()
   f000:c82b     MOV        SI,word ptr [0x62]
   f000:c82f     LODSB      SI
   f000:c830     MOV        word ptr [0x62],SI
   f000:c834     POP        SI
   f000:c835     POP        DS
   f000:c836     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c837()
             undefined         AL:1           <RETURN>
                             FUN_f000_c837                              XREF[1]:  FUN_f000_c789:f000:c7a9(c)  
   f000:c837     PUSH       AX
   f000:c838     MOV        AL,0x8
   f000:c83a     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c83d     MOV        AL,0x20
   f000:c83f     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c842     MOV        AL,0x8
   f000:c844     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c847     POP        AX
   f000:c848     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c849()
             undefined         AL:1           <RETURN>
                             FUN_f000_c849                              XREF[1]:  f000:c099(*)  
   f000:c849     DEC        CX
   f000:c84a     CALL       FUN_f000_c561                           ; undefined FUN_f000_c561()
   f000:c84d     POP        DI
   f000:c84e     PUSH       ES
   f000:c84f     PUSH       DS
   f000:c850     MOV        ES,word ptr [0x10]
   f000:c854     MOV        SI,DI
   f000:c856     PUSH       ES
   f000:c857     POP        DS
   f000:c858     LEA        BX,[0xc025]
   f000:c85c     CALL       FUN_f000_c686                           ; undefined FUN_f000_c686()
   f000:c85f     CALL       FUN_f000_c6cd                           ; undefined FUN_f000_c6cd()
   f000:c862     POP        DS
   f000:c863     PUSH       DS
   f000:c864     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
                             LAB_f000_c867                              XREF[4]:  f000:c882(j), f000:c892(j), 
                                                                                 f000:c8b1(j), f000:c8b8(j)  
   f000:c867     MOV        AH,0x0
   f000:c869     INT        0x16
   f000:c86b     CMP        AL,0x1a
   f000:c86d     JZ         LAB_f000_c8bf
   f000:c86f     CMP        AL,0x8
   f000:c871     JZ         LAB_f000_c894
   f000:c873     CMP        AL,0x9
   f000:c875     JZ         LAB_f000_c8ba
   f000:c877     STOSB      ES:DI
   f000:c878     CMP        AL,0xd
   f000:c87a     JNZ        LAB_f000_c884
   f000:c87c     MOV        AL,0xa
   f000:c87e     STOSB      ES:DI
   f000:c87f     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c882     JMP        LAB_f000_c867
                             LAB_f000_c884                              XREF[2]:  f000:c87a(j), f000:c8bd(j)  
   f000:c884     CMP        AL,0xa
   f000:c886     JZ         LAB_f000_c88c
   f000:c888     INC        byte ptr [0x7f]
                             LAB_f000_c88c                              XREF[1]:  f000:c886(j)  
   f000:c88c     MOV        AH,0xe
   f000:c88e     MOV        BH,0x0
   f000:c890     INT        0x10
   f000:c892     JMP        LAB_f000_c867
                             LAB_f000_c894                              XREF[1]:  f000:c871(j)  
   f000:c894     CMP        byte ptr [0x7f],0x0
   f000:c899     JZ         LAB_f000_c8b3
   f000:c89b     MOV        AX,0xe08
   f000:c89e     MOV        BH,0x0
   f000:c8a0     INT        0x10
   f000:c8a2     MOV        AX,0xe20
   f000:c8a5     INT        0x10
   f000:c8a7     MOV        AX,0xe08
   f000:c8aa     INT        0x10
   f000:c8ac     DEC        DI
   f000:c8ad     DEC        byte ptr [0x7f]
   f000:c8b1     JMP        LAB_f000_c867
                             LAB_f000_c8b3                              XREF[1]:  f000:c899(j)  
   f000:c8b3     MOV        AX,0xe07
   f000:c8b6     INT        0x10
   f000:c8b8     JMP        LAB_f000_c867
                             LAB_f000_c8ba                              XREF[1]:  f000:c875(j)  
   f000:c8ba     STOSB      ES:DI
   f000:c8bb     MOV        AL,0x20
   f000:c8bd     JMP        LAB_f000_c884
                             LAB_f000_c8bf                              XREF[1]:  f000:c86d(j)  
   f000:c8bf     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c8c2     LEA        BX,[0xc048]
   f000:c8c6     CALL       FUN_f000_c686                           ; undefined FUN_f000_c686()
   f000:c8c9     MOV        SI,DI
   f000:c8cb     PUSH       ES
   f000:c8cc     POP        DS
   f000:c8cd     CALL       FUN_f000_c6cd                           ; undefined FUN_f000_c6cd()
   f000:c8d0     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c8d3     POP        DS
   f000:c8d4     POP        ES
   f000:c8d5     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c8d6()
             undefined         AL:1           <RETURN>
                             FUN_f000_c8d6                              XREF[1]:  f000:c09b(*)  
   f000:c8d6     CALL       FUN_f000_c0fc                           ; undefined FUN_f000_c0fc()
                             LAB_f000_c8d9                              XREF[1]:  f000:c8e0(j)  
   f000:c8d9     LODSB      SI
   f000:c8da     CALL       FUN_f000_c5da                           ; undefined FUN_f000_c5da()
   f000:c8dd     CALL       FUN_f000_c5ca                           ; undefined FUN_f000_c5ca()
   f000:c8e0     LOOP       LAB_f000_c8d9
                             LAB_f000_c8e2                              XREF[1]:  FUN_f000_c8e6:f000:c90a(j)  
   f000:c8e2     CALL       FUN_f000_c69f                           ; undefined FUN_f000_c69f()
   f000:c8e5     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_c8e6()
             undefined         AL:1           <RETURN>
                             FUN_f000_c8e6                              XREF[1]:  f000:c09d(*)  
   f000:c8e6     CALL       FUN_f000_c0fc                           ; undefined FUN_f000_c0fc()
                             LAB_f000_c8e9                              XREF[1]:  f000:c8fe(j)  
   f000:c8e9     LODSB      SI
   f000:c8ea     MOV        AH,0x0
   f000:c8ec     SUB        DX,DX
   f000:c8ee     INT        0x17
   f000:c8f0     MOV        AH,0x1
   f000:c8f2     INT        0x16
   f000:c8f4     JZ         LAB_f000_c8fe
   f000:c8f6     MOV        AH,0x0
   f000:c8f8     INT        0x16
   f000:c8fa     CMP        AL,0x2e
   f000:c8fc     JZ         LAB_f000_c900
                             LAB_f000_c8fe                              XREF[1]:  f000:c8f4(j)  
   f000:c8fe     LOOP       LAB_f000_c8e9
                             LAB_f000_c900                              XREF[1]:  f000:c8fc(j)  
   f000:c900     MOV        AX,0xd
   f000:c903     INT        0x17
   f000:c905     MOV        AX,0xa
   f000:c908     INT        0x17
   f000:c90a     JMP        LAB_f000_c8e2
                             Video_Graphics_Character_Table             XREF[1]:  f000:ff21(*)  
   f000:c90c     db         18h                                     ; ASCII graphics and Russian font
   f000:c90d     db         18h
   f000:c90e     db         FFh
   f000:c90f     db         0h
   f000:c910     db         FFh
   f000:c911     db         0h
   f000:c912     db         0h
   f000:c913     db         0h
   f000:c914     db         6Ch
   f000:c915     db         6Ch
   f000:c916     db         6Ch
   f000:c917     db         FFh
   f000:c918     db         0h
   f000:c919     db         0h
   f000:c91a     db         0h
   f000:c91b     db         0h
   f000:c91c     db         0h
   f000:c91d     db         0h
   f000:c91e     db         FFh
   f000:c91f     db         0h
   f000:c920     db         FFh
   f000:c921     db         18h
   f000:c922     db         18h
   f000:c923     db         18h
   f000:c924     db         18h
   f000:c925     db         18h
   f000:c926     db         F8h
   f000:c927     db         18h
   f000:c928     db         F8h
   f000:c929     db         18h
   f000:c92a     db         18h
   f000:c92b     db         18h
   f000:c92c     db         6Ch
   f000:c92d     db         6Ch
   f000:c92e     db         6Ch
   f000:c92f     db         ECh
   f000:c930     db         6Ch
   f000:c931     db         6Ch
   f000:c932     db         6Ch
   f000:c933     db         6Ch
   f000:c934     db         0h
   f000:c935     db         0h
   f000:c936     db         0h
   f000:c937     db         FCh
   f000:c938     db         6Ch
   f000:c939     db         6Ch
   f000:c93a     db         6Ch
   f000:c93b     db         6Ch
   f000:c93c     db         0h
   f000:c93d     db         0h
   f000:c93e     db         F8h
   f000:c93f     db         18h
   f000:c940     db         F8h
   f000:c941     db         18h
   f000:c942     db         18h
   f000:c943     db         18h
   f000:c944     db         0h
   f000:c945     db         0h
   f000:c946     db         0h
   f000:c947     db         FFh
   f000:c948     db         6Ch
   f000:c949     db         6Ch
   f000:c94a     db         6Ch
   f000:c94b     db         6Ch
   f000:c94c     db         6Ch
   f000:c94d     db         6Ch
   f000:c94e     db         6Ch
   f000:c94f     db         7Fh
   f000:c950     db         0h
   f000:c951     db         0h
   f000:c952     db         0h
   f000:c953     db         0h
   f000:c954     db         18h
   f000:c955     db         18h
   f000:c956     db         1Fh
   f000:c957     db         18h
   f000:c958     db         1Fh
   f000:c959     db         0h
   f000:c95a     db         0h
   f000:c95b     db         0h
   f000:c95c     db         0h
   f000:c95d     db         0h
   f000:c95e     db         1Fh
   f000:c95f     db         18h
   f000:c960     db         1Fh
   f000:c961     db         18h
   f000:c962     db         18h
   f000:c963     db         18h
   f000:c964     db         6Ch
   f000:c965     db         6Ch
   f000:c966     db         6Ch
   f000:c967     db         FCh
   f000:c968     db         0h
   f000:c969     db         0h
   f000:c96a     db         0h
   f000:c96b     db         0h
   f000:c96c     db         18h
   f000:c96d     db         18h
   f000:c96e     db         F8h
   f000:c96f     db         18h
   f000:c970     db         F8h
   f000:c971     db         0h
   f000:c972     db         0h
   f000:c973     db         0h
   f000:c974     db         18h
   f000:c975     db         18h
   f000:c976     db         1Fh
   f000:c977     db         18h
   f000:c978     db         1Fh
   f000:c979     db         18h
   f000:c97a     db         18h
   f000:c97b     db         18h
   f000:c97c     db         6Ch
   f000:c97d     db         6Ch
   f000:c97e     db         6Ch
   f000:c97f     db         6Fh
   f000:c980     db         6Ch
   f000:c981     db         6Ch
   f000:c982     db         6Ch
   f000:c983     db         6Ch
   f000:c984     db         0h
   f000:c985     db         0h
   f000:c986     db         0h
   f000:c987     db         7Fh
   f000:c988     db         6Ch
   f000:c989     db         6Ch
   f000:c98a     db         6Ch
   f000:c98b     db         6Ch
   f000:c98c     db         0h
   f000:c98d     db         0h
   f000:c98e     db         7Fh
   f000:c98f     db         60h
   f000:c990     db         6Fh
   f000:c991     db         6Ch
   f000:c992     db         6Ch
   f000:c993     db         6Ch
   f000:c994     db         0h
   f000:c995     db         0h
   f000:c996     db         FCh
   f000:c997     db         Ch
   f000:c998     db         ECh
   f000:c999     db         6Ch
   f000:c99a     db         6Ch
   f000:c99b     db         6Ch
   f000:c99c     db         6Ch
   f000:c99d     db         6Ch
   f000:c99e     db         ECh
   f000:c99f     db         Ch
   f000:c9a0     db         FCh
   f000:c9a1     db         0h
   f000:c9a2     db         0h
   f000:c9a3     db         0h
   f000:c9a4     db         6Ch
   f000:c9a5     db         6Ch
   f000:c9a6     db         6Fh
   f000:c9a7     db         60h
   f000:c9a8     db         7Fh
   f000:c9a9     db         0h
   f000:c9aa     db         0h
   f000:c9ab     db         0h
   f000:c9ac     db         0h
   f000:c9ad     db         0h
   f000:c9ae     db         FFh
   f000:c9af     db         0h
   f000:c9b0     db         FFh
   f000:c9b1     db         0h
   f000:c9b2     db         0h
   f000:c9b3     db         0h
   f000:c9b4     db         6Ch
   f000:c9b5     db         6Ch
   f000:c9b6     db         6Ch
   f000:c9b7     db         6Ch
   f000:c9b8     db         6Ch
   f000:c9b9     db         6Ch
   f000:c9ba     db         6Ch
   f000:c9bb     db         6Ch
   f000:c9bc     db         0h
   f000:c9bd     db         0h
   f000:c9be     db         FFh
   f000:c9bf     db         0h
   f000:c9c0     db         EFh
   f000:c9c1     db         6Ch
   f000:c9c2     db         6Ch
   f000:c9c3     db         6Ch
   f000:c9c4     db         6Ch
   f000:c9c5     db         6Ch
   f000:c9c6     db         ECh
   f000:c9c7     db         Ch
   f000:c9c8     db         ECh
   f000:c9c9     db         6Ch
   f000:c9ca     db         6Ch
   f000:c9cb     db         6Ch
   f000:c9cc     db         6Ch
   f000:c9cd     db         6Ch
   f000:c9ce     db         EFh
   f000:c9cf     db         0h
   f000:c9d0     db         FFh
   f000:c9d1     db         0h
   f000:c9d2     db         0h
   f000:c9d3     db         0h
   f000:c9d4     db         6Ch
   f000:c9d5     db         6Ch
   f000:c9d6     db         6Fh
   f000:c9d7     db         60h
   f000:c9d8     db         6Fh
   f000:c9d9     db         6Ch
   f000:c9da     db         6Ch
   f000:c9db     db         6Ch
   f000:c9dc     db         6Ch
   f000:c9dd     db         6Ch
   f000:c9de     db         EFh
   f000:c9df     db         0h
   f000:c9e0     db         EFh
   f000:c9e1     db         6Ch
   f000:c9e2     db         6Ch
   f000:c9e3     db         6Ch
   f000:c9e4     db         92h
   f000:c9e5     db         0h
   f000:c9e6     db         92h
   f000:c9e7     db         0h
   f000:c9e8     db         92h
   f000:c9e9     db         0h
   f000:c9ea     db         92h
   f000:c9eb     db         0h
   f000:c9ec     db         92h
   f000:c9ed     db         49h
   f000:c9ee     db         92h
   f000:c9ef     db         49h
   f000:c9f0     db         92h
   f000:c9f1     db         49h
   f000:c9f2     db         92h
   f000:c9f3     db         0h
   f000:c9f4     db         AAh
   f000:c9f5     db         55h
   f000:c9f6     db         AAh
   f000:c9f7     db         55h
   f000:c9f8     db         AAh
   f000:c9f9     db         55h
   f000:c9fa     db         AAh
   f000:c9fb     db         0h
   f000:c9fc     db         6Ch
   f000:c9fd     db         6Ch
   f000:c9fe     db         6Ch
   f000:c9ff     db         EFh
   f000:ca00     db         6Ch
   f000:ca01     db         6Ch
   f000:ca02     db         6Ch
   f000:ca03     db         6Ch
   f000:ca04     db         18h
   f000:ca05     db         18h
   f000:ca06     db         FFh
   f000:ca07     db         0h
   f000:ca08     db         FFh
   f000:ca09     db         18h
   f000:ca0a     db         18h
   f000:ca0b     db         18h
   f000:ca0c     db         0h
   f000:ca0d     db         0h
   f000:ca0e     db         0h
   f000:ca0f     db         1Fh
   f000:ca10     db         18h
   f000:ca11     db         18h
   f000:ca12     db         18h
   f000:ca13     db         18h
   f000:ca14     db         0h
   f000:ca15     db         0h
   f000:ca16     db         0h
   f000:ca17     db         F8h
   f000:ca18     db         18h
   f000:ca19     db         18h
   f000:ca1a     db         18h
   f000:ca1b     db         18h
   f000:ca1c     db         18h
   f000:ca1d     db         18h
   f000:ca1e     db         18h
   f000:ca1f     db         F8h
   f000:ca20     db         0h
   f000:ca21     db         0h
   f000:ca22     db         0h
   f000:ca23     db         0h
   f000:ca24     db         18h
   f000:ca25     db         18h
   f000:ca26     db         18h
   f000:ca27     db         1Fh
   f000:ca28     db         0h
   f000:ca29     db         0h
   f000:ca2a     db         0h
   f000:ca2b     db         0h
   f000:ca2c     db         0h
   f000:ca2d     db         0h
   f000:ca2e     db         0h
   f000:ca2f     db         FFh
   f000:ca30     db         0h
   f000:ca31     db         0h
   f000:ca32     db         0h
   f000:ca33     db         0h
   f000:ca34     db         18h
   f000:ca35     db         18h
   f000:ca36     db         18h
   f000:ca37     db         18h
   f000:ca38     db         18h
   f000:ca39     db         18h
   f000:ca3a     db         18h
   f000:ca3b     db         18h
   f000:ca3c     db         0h
   f000:ca3d     db         0h
   f000:ca3e     db         0h
   f000:ca3f     db         FFh
   f000:ca40     db         18h
   f000:ca41     db         18h
   f000:ca42     db         18h
   f000:ca43     db         18h
   f000:ca44     db         18h
   f000:ca45     db         18h
   f000:ca46     db         18h
   f000:ca47     db         F8h
   f000:ca48     db         18h
   f000:ca49     db         18h
   f000:ca4a     db         18h
   f000:ca4b     db         18h
   f000:ca4c     db         18h
   f000:ca4d     db         18h
   f000:ca4e     db         18h
   f000:ca4f     db         FFh
   f000:ca50     db         0h
   f000:ca51     db         0h
   f000:ca52     db         0h
   f000:ca53     db         0h
   f000:ca54     db         18h
   f000:ca55     db         18h
   f000:ca56     db         18h
   f000:ca57     db         1Fh
   f000:ca58     db         18h
   f000:ca59     db         18h
   f000:ca5a     db         18h
   f000:ca5b     db         18h
   f000:ca5c     db         18h
   f000:ca5d     db         18h
   f000:ca5e     db         18h
   f000:ca5f     db         FFh
   f000:ca60     db         18h
   f000:ca61     db         18h
   f000:ca62     db         18h
   f000:ca63     db         18h
   f000:ca64     db         FFh
   f000:ca65     db         FFh
   f000:ca66     db         FFh
   f000:ca67     db         FFh
   f000:ca68     db         FFh
   f000:ca69     db         FFh
   f000:ca6a     db         FFh
   f000:ca6b     db         FFh
   f000:ca6c     db         0h
   f000:ca6d     db         0h
   f000:ca6e     db         0h
   f000:ca6f     db         0h
   f000:ca70     db         FFh
   f000:ca71     db         FFh
   f000:ca72     db         FFh
   f000:ca73     db         FFh
   f000:ca74     db         F0h
   f000:ca75     db         F0h
   f000:ca76     db         F0h
   f000:ca77     db         F0h
   f000:ca78     db         F0h
   f000:ca79     db         F0h
   f000:ca7a     db         F0h
   f000:ca7b     db         F0h
   f000:ca7c     db         Fh
   f000:ca7d     db         Fh
   f000:ca7e     db         Fh
   f000:ca7f     db         Fh
   f000:ca80     db         Fh
   f000:ca81     db         Fh
   f000:ca82     db         Fh
   f000:ca83     db         Fh
   f000:ca84     db         FFh
   f000:ca85     db         FFh
   f000:ca86     db         FFh
   f000:ca87     db         FFh
   f000:ca88     db         0h
   f000:ca89     db         0h
   f000:ca8a     db         0h
   f000:ca8b     db         0h
   f000:ca8c     db         1Eh
   f000:ca8d     db         36h
   f000:ca8e     db         66h
   f000:ca8f     db         66h
   f000:ca90     db         7Eh
   f000:ca91     db         66h
   f000:ca92     db         66h
   f000:ca93     db         0h
   f000:ca94     db         7Ch
   f000:ca95     db         60h
   f000:ca96     db         60h
   f000:ca97     db         7Ch
   f000:ca98     db         66h
   f000:ca99     db         66h
   f000:ca9a     db         7Ch
   f000:ca9b     db         0h
   f000:ca9c     db         7Ch
   f000:ca9d     db         66h
   f000:ca9e     db         66h
   f000:ca9f     db         7Ch
   f000:caa0     db         66h
   f000:caa1     db         66h
   f000:caa2     db         7Ch
   f000:caa3     db         0h
   f000:caa4     db         7Eh
   f000:caa5     db         60h
   f000:caa6     db         60h
   f000:caa7     db         60h
   f000:caa8     db         60h
   f000:caa9     db         60h
   f000:caaa     db         60h
   f000:caab     db         0h
   f000:caac     db         38h
   f000:caad     db         6Ch
   f000:caae     db         6Ch
   f000:caaf     db         6Ch
   f000:cab0     db         6Ch
   f000:cab1     db         6Ch
   f000:cab2     db         FEh
   f000:cab3     db         C6h
   f000:cab4     db         7Eh
   f000:cab5     db         60h
   f000:cab6     db         60h
   f000:cab7     db         7Ch
   f000:cab8     db         60h
   f000:cab9     db         60h
   f000:caba     db         7Eh
   f000:cabb     db         0h
   f000:cabc     db         DBh
   f000:cabd     db         DBh
   f000:cabe     db         7Eh
   f000:cabf     db         3Ch
   f000:cac0     db         7Eh
   f000:cac1     db         DBh
   f000:cac2     db         DBh
   f000:cac3     db         0h
   f000:cac4     db         3Ch
   f000:cac5     db         66h
   f000:cac6     db         6h
   f000:cac7     db         1Ch
   f000:cac8     db         6h
   f000:cac9     db         66h
   f000:caca     db         3Ch
   f000:cacb     db         0h
   f000:cacc     db         66h
   f000:cacd     db         66h
   f000:cace     db         6Eh
   f000:cacf     db         7Eh
   f000:cad0     db         76h
   f000:cad1     db         66h
   f000:cad2     db         66h
   f000:cad3     db         0h
   f000:cad4     db         3Ch
   f000:cad5     db         66h
   f000:cad6     db         6Eh
   f000:cad7     db         7Eh
   f000:cad8     db         76h
   f000:cad9     db         66h
   f000:cada     db         66h
   f000:cadb     db         0h
   f000:cadc     db         66h
   f000:cadd     db         6Ch
   f000:cade     db         78h
   f000:cadf     db         70h
   f000:cae0     db         78h
   f000:cae1     db         6Ch
   f000:cae2     db         66h
   f000:cae3     db         0h
   f000:cae4     db         1Eh
   f000:cae5     db         36h
   f000:cae6     db         66h
   f000:cae7     db         66h
   f000:cae8     db         66h
   f000:cae9     db         66h
   f000:caea     db         66h
   f000:caeb     db         0h
   f000:caec     db         C6h
   f000:caed     db         EEh
   f000:caee     db         FEh
   f000:caef     db         FEh
   f000:caf0     db         D6h
   f000:caf1     db         C6h
   f000:caf2     db         C6h
   f000:caf3     db         0h
   f000:caf4     db         66h
   f000:caf5     db         66h
   f000:caf6     db         66h
   f000:caf7     db         7Eh
   f000:caf8     db         66h
   f000:caf9     db         66h
   f000:cafa     db         66h
   f000:cafb     db         0h
   f000:cafc     db         3Ch
   f000:cafd     db         66h
   f000:cafe     db         66h
   f000:caff     db         66h
   f000:cb00     db         66h
   f000:cb01     db         66h
   f000:cb02     db         3Ch
   f000:cb03     db         0h
   f000:cb04     db         7Eh
   f000:cb05     db         66h
   f000:cb06     db         66h
   f000:cb07     db         66h
   f000:cb08     db         66h
   f000:cb09     db         66h
   f000:cb0a     db         66h
   f000:cb0b     db         0h
   f000:cb0c     db         7Ch
   f000:cb0d     db         66h
   f000:cb0e     db         66h
   f000:cb0f     db         66h
   f000:cb10     db         7Ch
   f000:cb11     db         60h
   f000:cb12     db         60h
   f000:cb13     db         0h
   f000:cb14     db         3Ch
   f000:cb15     db         66h
   f000:cb16     db         60h
   f000:cb17     db         60h
   f000:cb18     db         60h
   f000:cb19     db         66h
   f000:cb1a     db         3Ch
   f000:cb1b     db         0h
   f000:cb1c     db         7Eh
   f000:cb1d     db         18h
   f000:cb1e     db         18h
   f000:cb1f     db         18h
   f000:cb20     db         18h
   f000:cb21     db         18h
   f000:cb22     db         18h
   f000:cb23     db         0h
   f000:cb24     db         66h
   f000:cb25     db         66h
   f000:cb26     db         66h
   f000:cb27     db         3Eh
   f000:cb28     db         6h
   f000:cb29     db         66h
   f000:cb2a     db         3Ch
   f000:cb2b     db         0h
   f000:cb2c     db         7Eh
   f000:cb2d     db         DBh
   f000:cb2e     db         DBh
   f000:cb2f     db         DBh
   f000:cb30     db         7Eh
   f000:cb31     db         18h
   f000:cb32     db         18h
   f000:cb33     db         0h
   f000:cb34     db         66h
   f000:cb35     db         66h
   f000:cb36     db         3Ch
   f000:cb37     db         18h
   f000:cb38     db         3Ch
   f000:cb39     db         66h
   f000:cb3a     db         66h
   f000:cb3b     db         0h
   f000:cb3c     db         66h
   f000:cb3d     db         66h
   f000:cb3e     db         66h
   f000:cb3f     db         66h
   f000:cb40     db         66h
   f000:cb41     db         66h
   f000:cb42     db         7Fh
   f000:cb43     db         3h
   f000:cb44     db         66h
   f000:cb45     db         66h
   f000:cb46     db         66h
   f000:cb47     db         3Eh
   f000:cb48     db         6h
   f000:cb49     db         6h
   f000:cb4a     db         6h
   f000:cb4b     db         0h
   f000:cb4c     db         DBh
   f000:cb4d     db         DBh
   f000:cb4e     db         DBh
   f000:cb4f     db         DBh
   f000:cb50     db         DBh
   f000:cb51     db         DBh
   f000:cb52     db         FFh
   f000:cb53     db         0h
   f000:cb54     db         DBh
   f000:cb55     db         DBh
   f000:cb56     db         DBh
   f000:cb57     db         DBh
   f000:cb58     db         DBh
   f000:cb59     db         DBh
   f000:cb5a     db         FFh
   f000:cb5b     db         3h
   f000:cb5c     db         E0h
   f000:cb5d     db         60h
   f000:cb5e     db         60h
   f000:cb5f     db         7Ch
   f000:cb60     db         66h
   f000:cb61     db         66h
   f000:cb62     db         7Ch
   f000:cb63     db         0h
   f000:cb64     db         C6h
   f000:cb65     db         C6h
   f000:cb66     db         C6h
   f000:cb67     db         F6h
   f000:cb68     db         DEh
   f000:cb69     db         DEh
   f000:cb6a     db         F6h
   f000:cb6b     db         0h
   f000:cb6c     db         60h
   f000:cb6d     db         60h
   f000:cb6e     db         60h
   f000:cb6f     db         7Ch
   f000:cb70     db         66h
   f000:cb71     db         66h
   f000:cb72     db         7Ch
   f000:cb73     db         0h
   f000:cb74     db         78h
   f000:cb75     db         Ch
   f000:cb76     db         6h
   f000:cb77     db         3Eh
   f000:cb78     db         6h
   f000:cb79     db         Ch
   f000:cb7a     db         78h
   f000:cb7b     db         0h
   f000:cb7c     db         CEh
   f000:cb7d     db         DBh
   f000:cb7e     db         DBh
   f000:cb7f     db         FBh
   f000:cb80     db         DBh
   f000:cb81     db         DBh
   f000:cb82     db         CEh
   f000:cb83     db         0h
   f000:cb84     db         3Eh
   f000:cb85     db         66h
   f000:cb86     db         66h
   f000:cb87     db         66h
   f000:cb88     db         3Eh
   f000:cb89     db         36h
   f000:cb8a     db         66h
   f000:cb8b     db         0h
   f000:cb8c     db         0h
   f000:cb8d     db         0h
   f000:cb8e     db         78h
   f000:cb8f     db         Ch
   f000:cb90     db         7Ch
   f000:cb91     db         CCh
   f000:cb92     db         76h
   f000:cb93     db         0h
   f000:cb94     db         0h
   f000:cb95     db         3Ch
   f000:cb96     db         60h
   f000:cb97     db         3Ch
   f000:cb98     db         66h
   f000:cb99     db         66h
   f000:cb9a     db         3Ch
   f000:cb9b     db         0h
   f000:cb9c     db         0h
   f000:cb9d     db         3Ch
   f000:cb9e     db         66h
   f000:cb9f     db         7Ch
   f000:cba0     db         66h
   f000:cba1     db         66h
   f000:cba2     db         7Ch
   f000:cba3     db         0h
   f000:cba4     db         0h
   f000:cba5     db         0h
   f000:cba6     db         7Eh
   f000:cba7     db         60h
   f000:cba8     db         60h
   f000:cba9     db         60h
   f000:cbaa     db         60h
   f000:cbab     db         0h
   f000:cbac     db         0h
   f000:cbad     db         0h
   f000:cbae     db         3Ch
   f000:cbaf     db         6Ch
   f000:cbb0     db         6Ch
   f000:cbb1     db         6Ch
   f000:cbb2     db         FEh
   f000:cbb3     db         C6h
   f000:cbb4     db         0h
   f000:cbb5     db         0h
   f000:cbb6     db         3Ch
   f000:cbb7     db         66h
   f000:cbb8     db         7Eh
   f000:cbb9     db         60h
   f000:cbba     db         3Ch
   f000:cbbb     db         0h
   f000:cbbc     db         0h
   f000:cbbd     db         0h
   f000:cbbe     db         DBh
   f000:cbbf     db         7Eh
   f000:cbc0     db         3Ch
   f000:cbc1     db         7Eh
   f000:cbc2     db         DBh
   f000:cbc3     db         0h
   f000:cbc4     db         0h
   f000:cbc5     db         0h
   f000:cbc6     db         3Ch
   f000:cbc7     db         66h
   f000:cbc8     db         Ch
   f000:cbc9     db         66h
   f000:cbca     db         3Ch
   f000:cbcb     db         0h
   f000:cbcc     db         0h
   f000:cbcd     db         0h
   f000:cbce     db         66h
   f000:cbcf     db         6Eh
   f000:cbd0     db         7Eh
   f000:cbd1     db         76h
   f000:cbd2     db         66h
   f000:cbd3     db         0h
   f000:cbd4     db         0h
   f000:cbd5     db         18h
   f000:cbd6     db         66h
   f000:cbd7     db         6Eh
   f000:cbd8     db         7Eh
   f000:cbd9     db         76h
   f000:cbda     db         66h
   f000:cbdb     db         0h
   f000:cbdc     db         0h
   f000:cbdd     db         0h
   f000:cbde     db         66h
   f000:cbdf     db         6Ch
   f000:cbe0     db         78h
   f000:cbe1     db         6Ch
   f000:cbe2     db         66h
   f000:cbe3     db         0h
   f000:cbe4     db         0h
   f000:cbe5     db         0h
   f000:cbe6     db         1Eh
   f000:cbe7     db         36h
   f000:cbe8     db         66h
   f000:cbe9     db         66h
   f000:cbea     db         66h
   f000:cbeb     db         0h
   f000:cbec     db         0h
   f000:cbed     db         0h
   f000:cbee     db         C6h
   f000:cbef     db         FEh
   f000:cbf0     db         FEh
   f000:cbf1     db         D6h
   f000:cbf2     db         C6h
   f000:cbf3     db         0h
   f000:cbf4     db         0h
   f000:cbf5     db         0h
   f000:cbf6     db         66h
   f000:cbf7     db         66h
   f000:cbf8     db         7Eh
   f000:cbf9     db         66h
   f000:cbfa     db         66h
   f000:cbfb     db         0h
   f000:cbfc     db         0h
   f000:cbfd     db         0h
   f000:cbfe     db         3Ch
   f000:cbff     db         66h
   f000:cc00     db         66h
   f000:cc01     db         66h
   f000:cc02     db         3Ch
   f000:cc03     db         0h
   f000:cc04     db         0h
   f000:cc05     db         0h
   f000:cc06     db         7Eh
   f000:cc07     db         66h
   f000:cc08     db         66h
   f000:cc09     db         66h
   f000:cc0a     db         66h
   f000:cc0b     db         0h
   f000:cc0c     db         0h
   f000:cc0d     db         0h
   f000:cc0e     db         7Ch
   f000:cc0f     db         66h
   f000:cc10     db         66h
   f000:cc11     db         7Ch
   f000:cc12     db         60h
   f000:cc13     db         0h
   f000:cc14     db         0h
   f000:cc15     db         0h
   f000:cc16     db         3Ch
   f000:cc17     db         66h
   f000:cc18     db         60h
   f000:cc19     db         66h
   f000:cc1a     db         3Ch
   f000:cc1b     db         0h
   f000:cc1c     db         0h
   f000:cc1d     db         0h
   f000:cc1e     db         7Eh
   f000:cc1f     db         18h
   f000:cc20     db         18h
   f000:cc21     db         18h
   f000:cc22     db         18h
   f000:cc23     db         0h
   f000:cc24     db         0h
   f000:cc25     db         0h
   f000:cc26     db         66h
   f000:cc27     db         66h
   f000:cc28     db         3Eh
   f000:cc29     db         6h
   f000:cc2a     db         3Ch
   f000:cc2b     db         0h
   f000:cc2c     db         0h
   f000:cc2d     db         0h
   f000:cc2e     db         7Eh
   f000:cc2f     db         DBh
   f000:cc30     db         DBh
   f000:cc31     db         7Eh
   f000:cc32     db         18h
   f000:cc33     db         0h
   f000:cc34     db         0h
   f000:cc35     db         0h
   f000:cc36     db         66h
   f000:cc37     db         3Ch
   f000:cc38     db         18h
   f000:cc39     db         3Ch
   f000:cc3a     db         66h
   f000:cc3b     db         0h
   f000:cc3c     db         0h
   f000:cc3d     db         0h
   f000:cc3e     db         66h
   f000:cc3f     db         66h
   f000:cc40     db         66h
   f000:cc41     db         66h
   f000:cc42     db         7Fh
   f000:cc43     db         3h
   f000:cc44     db         0h
   f000:cc45     db         0h
   f000:cc46     db         66h
   f000:cc47     db         66h
   f000:cc48     db         3Eh
   f000:cc49     db         6h
   f000:cc4a     db         6h
   f000:cc4b     db         0h
   f000:cc4c     db         0h
   f000:cc4d     db         0h
   f000:cc4e     db         DBh
   f000:cc4f     db         DBh
   f000:cc50     db         DBh
   f000:cc51     db         DBh
   f000:cc52     db         FFh
   f000:cc53     db         0h
   f000:cc54     db         0h
   f000:cc55     db         0h
   f000:cc56     db         DBh
   f000:cc57     db         DBh
   f000:cc58     db         DBh
   f000:cc59     db         DBh
   f000:cc5a     db         FFh
   f000:cc5b     db         3h
   f000:cc5c     db         0h
   f000:cc5d     db         0h
   f000:cc5e     db         E0h
   f000:cc5f     db         60h
   f000:cc60     db         7Ch
   f000:cc61     db         66h
   f000:cc62     db         7Ch
   f000:cc63     db         0h
   f000:cc64     db         0h
   f000:cc65     db         0h
   f000:cc66     db         C6h
   f000:cc67     db         C6h
   f000:cc68     db         F6h
   f000:cc69     db         DEh
   f000:cc6a     db         F6h
   f000:cc6b     db         0h
   f000:cc6c     db         0h
   f000:cc6d     db         0h
   f000:cc6e     db         60h
   f000:cc6f     db         60h
   f000:cc70     db         7Ch
   f000:cc71     db         66h
   f000:cc72     db         7Ch
   f000:cc73     db         0h
   f000:cc74     db         0h
   f000:cc75     db         0h
   f000:cc76     db         7Ch
   f000:cc77     db         6h
   f000:cc78     db         3Eh
   f000:cc79     db         6h
   f000:cc7a     db         7Ch
   f000:cc7b     db         0h
   f000:cc7c     db         0h
   f000:cc7d     db         0h
   f000:cc7e     db         CEh
   f000:cc7f     db         DBh
   f000:cc80     db         FBh
   f000:cc81     db         DBh
   f000:cc82     db         CEh
   f000:cc83     db         0h
   f000:cc84     db         0h
   f000:cc85     db         0h
   f000:cc86     db         3Eh
   f000:cc87     db         66h
   f000:cc88     db         3Eh
   f000:cc89     db         36h
   f000:cc8a     db         66h
   f000:cc8b     db         0h
   f000:cc8c     db         66h
   f000:cc8d     db         7Eh
   f000:cc8e     db         60h
   f000:cc8f     db         7Ch
   f000:cc90     db         60h
   f000:cc91     db         60h
   f000:cc92     db         7Eh
   f000:cc93     db         0h
   f000:cc94     db         0h
   f000:cc95     db         66h
   f000:cc96     db         3Ch
   f000:cc97     db         66h
   f000:cc98     db         7Eh
   f000:cc99     db         60h
   f000:cc9a     db         3Ch
   f000:cc9b     db         0h
   f000:cc9c     db         0h
   f000:cc9d     db         0h
   f000:cc9e     db         0h
   f000:cc9f     db         0h
   f000:cca0     db         3h
   f000:cca1     db         6h
   f000:cca2     db         Ch
   f000:cca3     db         18h
   f000:cca4     db         0h
   f000:cca5     db         0h
   f000:cca6     db         0h
   f000:cca7     db         0h
   f000:cca8     db         C0h
   f000:cca9     db         60h
   f000:ccaa     db         30h
   f000:ccab     db         18h
   f000:ccac     db         18h
   f000:ccad     db         30h
   f000:ccae     db         60h
   f000:ccaf     db         C0h
   f000:ccb0     db         0h
   f000:ccb1     db         0h
   f000:ccb2     db         0h
   f000:ccb3     db         0h
   f000:ccb4     db         18h
   f000:ccb5     db         Ch
   f000:ccb6     db         6h
   f000:ccb7     db         3h
   f000:ccb8     db         0h
   f000:ccb9     db         0h
   f000:ccba     db         0h
   f000:ccbb     db         0h
   f000:ccbc     db         0h
   f000:ccbd     db         0h
   f000:ccbe     db         18h
   f000:ccbf     db         Ch
   f000:ccc0     db         7Eh
   f000:ccc1     db         Ch
   f000:ccc2     db         18h
   f000:ccc3     db         0h
   f000:ccc4     db         0h
   f000:ccc5     db         0h
   f000:ccc6     db         18h
   f000:ccc7     db         30h
   f000:ccc8     db         7Eh
   f000:ccc9     db         30h
   f000:ccca     db         18h
   f000:cccb     db         0h
   f000:cccc     db         18h
   f000:cccd     db         3Ch
   f000:ccce     db         7Eh
   f000:cccf     db         18h
   f000:ccd0     db         18h
   f000:ccd1     db         18h
   f000:ccd2     db         18h
   f000:ccd3     db         0h
   f000:ccd4     db         18h
   f000:ccd5     db         18h
   f000:ccd6     db         18h
   f000:ccd7     db         18h
   f000:ccd8     db         7Eh
   f000:ccd9     db         3Ch
   f000:ccda     db         18h
   f000:ccdb     db         0h
   f000:ccdc     db         18h
   f000:ccdd     db         18h
   f000:ccde     db         0h
   f000:ccdf     db         7Eh
   f000:cce0     db         0h
   f000:cce1     db         18h
   f000:cce2     db         18h
   f000:cce3     db         0h
   f000:cce4     db         18h
   f000:cce5     db         18h
   f000:cce6     db         7Eh
   f000:cce7     db         18h
   f000:cce8     db         18h
   f000:cce9     db         0h
   f000:ccea     db         7Ch
   f000:cceb     db         0h
   f000:ccec     db         CFh
   f000:cced     db         CCh
   f000:ccee     db         EFh
   f000:ccef     db         FCh
   f000:ccf0     db         DCh
   f000:ccf1     db         CCh
   f000:ccf2     db         CCh
   f000:ccf3     db         0h
   f000:ccf4     db         0h
   f000:ccf5     db         66h
   f000:ccf6     db         3Ch
   f000:ccf7     db         66h
   f000:ccf8     db         66h
   f000:ccf9     db         3Ch
   f000:ccfa     db         66h
   f000:ccfb     db         0h
   f000:ccfc     db         0h
   f000:ccfd     db         0h
   f000:ccfe     db         0h
   f000:ccff     db         1Ch
   f000:cd00     db         1Ch
   f000:cd01     db         0h
   f000:cd02     db         0h
   f000:cd03     db         0h
   f000:cd04     db         0h
   f000:cd05     db         0h
   f000:cd06     db         0h
   f000:cd07     db         0h
   f000:cd08     db         0h
   f000:cd09     db         0h
   f000:cd0a     db         0h
   f000:cd0b     db         0h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16far CASSETTE_IO(void)
             undefined         AL:1           <RETURN>
                             CASSETTE_IO                                XREF[1]:  f000:f859(c)  
   f000:cd0c     STI
   f000:cd0d     PUSH       DS
   f000:cd0e     PUSH       AX
   f000:cd0f     MOV        AX,0x40
   f000:cd12     MOV        DS,AX
   f000:cd14     AND        byte ptr [offset DAT_0000_0471],0x7f
   f000:cd19     POP        AX
   f000:cd1a     CALL       W1                                      ; undefined W1(void)
   f000:cd1d     POP        DS
   f000:cd1e     RETF       0x2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near W1(void)
             undefined         AL:1           <RETURN>
                             W1                                         XREF[1]:  CASSETTE_IO:f000:cd1a(c)  
   f000:cd21     MOV        [0xb3],AX
   f000:cd24     OR         AH,AH
   f000:cd26     JZ         LAB_f000_cd5a
   f000:cd28     DEC        AH
   f000:cd2a     JZ         LAB_f000_cd5d
   f000:cd2c     DEC        AH
   f000:cd2e     JNZ        LAB_f000_cd33
   f000:cd30     JMP        LAB_f000_cd8c
   f000:cd32     NOP
                             LAB_f000_cd33                              XREF[1]:  f000:cd2e(j)  
   f000:cd33     DEC        AH
   f000:cd35     JNZ        LAB_f000_cd3a
   f000:cd37     JMP        FUN_f000_cfdd                           ; undefined FUN_f000_cfdd()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_cd3a                              XREF[1]:  f000:cd35(j)  
   f000:cd3a     DEC        AH
   f000:cd3c     JNZ        LAB_f000_cd41
   f000:cd3e     JMP        LAB_f000_cd8c
   f000:cd40     NOP
                             LAB_f000_cd41                              XREF[1]:  f000:cd3c(j)  
   f000:cd41     DEC        AH
   f000:cd43     JNZ        LAB_f000_cd48
   f000:cd45     JMP        FUN_f000_cf05                           ; undefined FUN_f000_cf05()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_cd48                              XREF[1]:  f000:cd43(j)  
   f000:cd48     DEC        AH
   f000:cd4a     JNZ        LAB_f000_cd4f
   f000:cd4c     JMP        LAB_f000_cd5f
   f000:cd4e     NOP
                             LAB_f000_cd4f                              XREF[1]:  f000:cd4a(j)  
   f000:cd4f     DEC        AH
   f000:cd51     JNZ        LAB_f000_cd56
   f000:cd53     JMP        FUN_f000_cf05                           ; undefined FUN_f000_cf05()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_cd56                              XREF[1]:  f000:cd51(j)  
   f000:cd56     MOV        AH,0x80
   f000:cd58     STC
   f000:cd59     RET
                             LAB_f000_cd5a                              XREF[2]:  f000:cd26(j), f000:cd5d(j)  
   f000:cd5a     SUB        AH,AH
   f000:cd5c     RET
                             LAB_f000_cd5d                              XREF[1]:  f000:cd2a(j)  
   f000:cd5d     JMP        LAB_f000_cd5a
                             LAB_f000_cd5f                              XREF[1]:  f000:cd4c(j)  
   f000:cd5f     CALL       FUN_f000_d065                           ; undefined FUN_f000_d065()
   f000:cd62     MOV        word ptr [0xb7],0x120
   f000:cd68     CALL       FUN_f000_ce3b                           ; undefined FUN_f000_ce3b()
   f000:cd6b     JNC        LAB_f000_cd70
   f000:cd6d     JMP        LAB_f000_cdf2
                             LAB_f000_cd70                              XREF[1]:  f000:cd6b(j)  
   f000:cd70     TEST       byte ptr [0x71],0x80
   f000:cd75     JNZ        LAB_f000_cde7
   f000:cd77     CALL       FUN_f000_cebb                           ; undefined FUN_f000_cebb()
   f000:cd7a     JC         LAB_f000_cde7
   f000:cd7c     MOV        DL,AL
   f000:cd7e     CALL       FUN_f000_cebb                           ; undefined FUN_f000_cebb()
   f000:cd81     JC         LAB_f000_cde7
   f000:cd83     MOV        DH,AL
   f000:cd85     MOV        AX,0x0
   f000:cd88     PUSH       AX
   f000:cd89     JMP        LAB_f000_cdf7
   f000:cd8b     ??         90h
                             LAB_f000_cd8c                              XREF[2]:  f000:cd30(j), f000:cd3e(j)  
   f000:cd8c     CALL       FUN_f000_d065                           ; undefined FUN_f000_d065()
   f000:cd8f     MOV        word ptr [0xb7],0x50
   f000:cd95     CALL       FUN_f000_ce3b                           ; undefined FUN_f000_ce3b()
   f000:cd98     JNC        LAB_f000_cd9d
   f000:cd9a     JMP        LAB_f000_cdf2
   f000:cd9c     ??         90h
                             LAB_f000_cd9d                              XREF[1]:  f000:cd98(j)  
   f000:cd9d     MOV        word ptr [0xb5],BX
   f000:cda1     PUSH       CX
                             LAB_f000_cda2                              XREF[1]:  f000:cde5(j)  
   f000:cda2     MOV        AX,[0xb3]
   f000:cda5     CMP        AH,0x2
   f000:cda8     MOV        DX,0x100
   f000:cdab     MOV        word ptr [0xb1],0x0
   f000:cdb1     JZ         LAB_f000_cdb5
   f000:cdb3     ADD        DX,DX
                             LAB_f000_cdb5                              XREF[2]:  f000:cdb1(j), f000:cdcf(j)  
   f000:cdb5     TEST       byte ptr [0x71],0x80
   f000:cdba     JNZ        LAB_f000_cde7
   f000:cdbc     CALL       FUN_f000_cebb                           ; undefined FUN_f000_cebb()
   f000:cdbf     JC         LAB_f000_cde7
   f000:cdc1     JCXZ       LAB_f000_cdc8
   f000:cdc3     MOV        byte ptr ES:[BX],AL
   f000:cdc6     INC        BX
   f000:cdc7     DEC        CX
                             LAB_f000_cdc8                              XREF[1]:  f000:cdc1(j)  
   f000:cdc8     SUB        AH,AH
   f000:cdca     ADC        word ptr [0xb1],AX
   f000:cdce     DEC        DX
   f000:cdcf     JG         LAB_f000_cdb5
   f000:cdd1     CALL       FUN_f000_cebb                           ; undefined FUN_f000_cebb()
   f000:cdd4     MOV        DL,AL
   f000:cdd6     CALL       FUN_f000_cebb                           ; undefined FUN_f000_cebb()
   f000:cdd9     MOV        DH,AL
   f000:cddb     SUB        AH,AH
   f000:cddd     ADC        word ptr [0xb1],DX
   f000:cde1     JNZ        LAB_f000_cde9
   f000:cde3     JCXZ       LAB_f000_cdeb
   f000:cde5     JMP        LAB_f000_cda2
                             LAB_f000_cde7                              XREF[5]:  f000:cd75(j), f000:cd7a(j), 
                                                                                 f000:cd81(j), f000:cdba(j), 
                                                                                 f000:cdbf(j)  
   f000:cde7     MOV        AH,0x1
                             LAB_f000_cde9                              XREF[1]:  f000:cde1(j)  
   f000:cde9     INC        AH
                             LAB_f000_cdeb                              XREF[1]:  f000:cde3(j)  
   f000:cdeb     POP        DX
   f000:cdec     SUB        DX,CX
   f000:cdee     PUSH       AX
   f000:cdef     JMP        LAB_f000_cdf7
   f000:cdf1     ??         90h
                             LAB_f000_cdf2                              XREF[2]:  f000:cd6d(j), f000:cd9a(j)  
   f000:cdf2     MOV        AH,0x4
   f000:cdf4     SUB        DX,DX
   f000:cdf6     PUSH       AX
                             LAB_f000_cdf7                              XREF[2]:  f000:cd89(j), f000:cdef(j)  
   f000:cdf7     MOV        AL,0xb0
   f000:cdf9     OUT        0x43,AL
   f000:cdfb     MOV        AX,0x1
   f000:cdfe     CALL       FUN_f000_cfd6                           ; undefined FUN_f000_cfd6()
   f000:ce01     IN         AL,0x21
   f000:ce03     AND        AL,0xf6
   f000:ce05     OUT        0x21,AL
   f000:ce07     POP        AX
   f000:ce08     CMP        AH,0x1
   f000:ce0b     CMC
   f000:ce0c     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_ce0d()
             undefined         AL:1           <RETURN>
                             FUN_f000_ce0d                              XREF[5]:  FUN_f000_ce3b:f000:ce79(c), 
                                                                                 FUN_f000_ce3b:f000:ce90(c), 
                                                                                 FUN_f000_cebb:f000:ced0(c), 
                                                                                 FUN_f000_cebb:f000:ceda(c), 
                                                                                 FUN_f000_cebb:f000:cee9(c)  
   f000:ce0d     MOV        SI,0x2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_ce10()
             undefined         AL:1           <RETURN>
                             FUN_f000_ce10                              XREF[3]:  f000:ce23(j), 
                                                                                 FUN_f000_ce3b:f000:ce5f(c), 
                                                                                 FUN_f000_cebb:f000:cecd(c)  
   f000:ce10     MOV        CX,0x200
   f000:ce13     MOV        AH,byte ptr [0x6b]
                             LAB_f000_ce17                              XREF[1]:  f000:ce1d(j)  
   f000:ce17     IN         AL,0x62
   f000:ce19     AND        AL,0x10
   f000:ce1b     CMP        AL,AH
   f000:ce1d     LOOPZ      LAB_f000_ce17
   f000:ce1f     DEC        SI
   f000:ce20     MOV        [0x6b],AL
   f000:ce23     JNZ        FUN_f000_ce10
   f000:ce25     MOV        AL,0x80
   f000:ce27     OUT        0x43,AL
   f000:ce29     IN         AL,0x42
   f000:ce2b     MOV        AH,AL
   f000:ce2d     IN         AL,0x42
   f000:ce2f     XCHG       AH,AL
   f000:ce31     MOV        BX,word ptr [0x67]
   f000:ce35     MOV        [0x67],AX
   f000:ce38     SUB        BX,AX
   f000:ce3a     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_ce3b()
             undefined         AL:1           <RETURN>
                             FUN_f000_ce3b                              XREF[2]:  W1:f000:cd68(c), W1:f000:cd95(c)  
   f000:ce3b     PUSH       BX
   f000:ce3c     PUSH       CX
   f000:ce3d     PUSH       SI
                             LAB_f000_ce3e                              XREF[1]:  f000:ce44(j)  
   f000:ce3e     IN         AL,0x62
   f000:ce40     AND        AL,0x10
   f000:ce42     OR         AL,AL
   f000:ce44     JNZ        LAB_f000_ce3e
   f000:ce46     MOV        [0x6b],AL
   f000:ce49     MOV        DX,0x3000
                             LAB_f000_ce4c                              XREF[3]:  f000:ce62(j), f000:ce7f(j), 
                                                                                 f000:ce85(j)  
   f000:ce4c     TEST       byte ptr [0x71],0x80
   f000:ce51     JZ         LAB_f000_ce56
   f000:ce53     JMP        LAB_f000_ceb8
   f000:ce55     ??         90h
                             LAB_f000_ce56                              XREF[1]:  f000:ce51(j)  
   f000:ce56     DEC        DX
   f000:ce57     JNZ        LAB_f000_ce5c
   f000:ce59     JMP        LAB_f000_ceb8
   f000:ce5b     ??         90h
                             LAB_f000_ce5c                              XREF[1]:  f000:ce57(j)  
   f000:ce5c     MOV        SI,0x2
   f000:ce5f     CALL       FUN_f000_ce10                           ; undefined FUN_f000_ce10()
   f000:ce62     JCXZ       LAB_f000_ce4c
   f000:ce64     MOV        CX,word ptr [0xb7]
   f000:ce68     IN         AL,0x21
   f000:ce6a     OR         AL,0x9
   f000:ce6c     OUT        0x21,AL
                             LAB_f000_ce6e                              XREF[1]:  f000:ce87(j)  
   f000:ce6e     TEST       byte ptr [0x71],0x80
   f000:ce73     JZ         LAB_f000_ce78
   f000:ce75     JMP        LAB_f000_ceb8
   f000:ce77     ??         90h
                             LAB_f000_ce78                              XREF[1]:  f000:ce73(j)  
   f000:ce78     PUSH       CX
   f000:ce79     CALL       FUN_f000_ce0d                           ; undefined FUN_f000_ce0d()
   f000:ce7c     OR         CX,CX
   f000:ce7e     POP        CX
   f000:ce7f     JZ         LAB_f000_ce4c
   f000:ce81     CMP        BX,0x4e0
   f000:ce85     JNC        LAB_f000_ce4c
   f000:ce87     LOOP       LAB_f000_ce6e
   f000:ce89     MOV        CX,0x14
   f000:ce8c     MOV        DX,0x0
                             LAB_f000_ce8f                              XREF[1]:  f000:ce98(j)  
   f000:ce8f     PUSH       CX
   f000:ce90     CALL       FUN_f000_ce0d                           ; undefined FUN_f000_ce0d()
   f000:ce93     JCXZ       LAB_f000_ceb7
   f000:ce95     POP        CX
   f000:ce96     ADD        DX,BX
   f000:ce98     LOOP       LAB_f000_ce8f
   f000:ce9a     MOV        AX,DX
   f000:ce9c     MOV        CX,0x14
   f000:ce9f     MOV        DX,0x0
   f000:cea2     DIV        CX
   f000:cea4     MOV        DX,0x0
   f000:cea7     MOV        CX,0x3
   f000:ceaa     MUL        CX
   f000:ceac     DEC        CX
   f000:cead     DIV        CX
   f000:ceaf     MOV        [0x69],AX
   f000:ceb2     CLC
                             LAB_f000_ceb3                              XREF[1]:  f000:ceb9(j)  
   f000:ceb3     POP        SI
   f000:ceb4     POP        CX
   f000:ceb5     POP        BX
   f000:ceb6     RET
                             LAB_f000_ceb7                              XREF[1]:  f000:ce93(j)  
   f000:ceb7     POP        CX
                             LAB_f000_ceb8                              XREF[3]:  f000:ce53(j), f000:ce59(j), 
                                                                                 f000:ce75(j)  
   f000:ceb8     STC
   f000:ceb9     JMP        LAB_f000_ceb3
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_cebb()
             undefined         AL:1           <RETURN>
                             FUN_f000_cebb                              XREF[5]:  W1:f000:cd77(c), W1:f000:cd7e(c), 
                                                                                 W1:f000:cdbc(c), W1:f000:cdd1(c), 
                                                                                 W1:f000:cdd6(c)  
   f000:cebb     PUSH       DX
   f000:cebc     PUSH       CX
   f000:cebd     PUSH       BX
   f000:cebe     MOV        DX,word ptr [0x69]
                             LAB_f000_cec2                              XREF[1]:  f000:ced5(j)  
   f000:cec2     MOV        AH,byte ptr [0x6b]
   f000:cec6     OR         AH,AH
   f000:cec8     JZ         LAB_f000_ced0
   f000:ceca     MOV        SI,0x1
   f000:cecd     CALL       FUN_f000_ce10                           ; undefined FUN_f000_ce10()
                             LAB_f000_ced0                              XREF[1]:  f000:cec8(j)  
   f000:ced0     CALL       FUN_f000_ce0d                           ; undefined FUN_f000_ce0d()
   f000:ced3     CMP        BX,DX
   f000:ced5     JC         LAB_f000_cec2
   f000:ced7     MOV        CL,0x8
                             LAB_f000_ced9                              XREF[1]:  f000:cef8(j)  
   f000:ced9     PUSH       CX
   f000:ceda     CALL       FUN_f000_ce0d                           ; undefined FUN_f000_ce0d()
   f000:cedd     JCXZ       LAB_f000_cf01
   f000:cedf     POP        CX
   f000:cee0     CMP        BX,DX
   f000:cee2     JC         LAB_f000_cee8
   f000:cee4     CLC
   f000:cee5     JMP        LAB_f000_cef4
   f000:cee7     ??         90h
                             LAB_f000_cee8                              XREF[1]:  f000:cee2(j)  
   f000:cee8     PUSH       CX
   f000:cee9     CALL       FUN_f000_ce0d                           ; undefined FUN_f000_ce0d()
   f000:ceec     JCXZ       LAB_f000_cf01
   f000:ceee     POP        CX
   f000:ceef     CMP        BX,DX
   f000:cef1     JGE        LAB_f000_cf02
   f000:cef3     STC
                             LAB_f000_cef4                              XREF[1]:  f000:cee5(j)  
   f000:cef4     RCR        CH,0x1
   f000:cef6     DEC        CL
   f000:cef8     JNZ        LAB_f000_ced9
   f000:cefa     MOV        AL,CH
   f000:cefc     CLC
                             LAB_f000_cefd                              XREF[1]:  f000:cf03(j)  
   f000:cefd     POP        BX
   f000:cefe     POP        CX
   f000:ceff     POP        DX
   f000:cf00     RET
                             LAB_f000_cf01                              XREF[2]:  f000:cedd(j), f000:ceec(j)  
   f000:cf01     POP        CX
                             LAB_f000_cf02                              XREF[1]:  f000:cef1(j)  
   f000:cf02     STC
   f000:cf03     JMP        LAB_f000_cefd
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_cf05()
             undefined         AL:1           <RETURN>
                             FUN_f000_cf05                              XREF[2]:  W1:f000:cd45(c), W1:f000:cd53(c)  
   f000:cf05     PUSH       BX
   f000:cf06     PUSH       CX
   f000:cf07     PUSH       DX
   f000:cf08     MOV        word ptr [0xb5],BX
   f000:cf0c     MOV        AX,[0xb3]
   f000:cf0f     CMP        AX,0x500
   f000:cf12     JZ         LAB_f000_cf54
   f000:cf14     PUSH       AX
   f000:cf15     CALL       FUN_f000_d03f                           ; undefined FUN_f000_d03f()
   f000:cf18     POP        AX
   f000:cf19     CMP        AH,0x7
   f000:cf1c     JZ         LAB_f000_cf3f
   f000:cf1e     MOV        CX,0x50
   f000:cf21     CALL       FUN_f000_d058                           ; undefined FUN_f000_d058()
   f000:cf24     POP        DX
   f000:cf25     POP        CX
   f000:cf26     POP        BX
   f000:cf27     CALL       FUN_f000_cf6b                           ; undefined FUN_f000_cf6b()
                             LAB_f000_cf2a                              XREF[2]:  f000:cf52(j), f000:cf69(j)  
   f000:cf2a     MOV        AL,0xb0
   f000:cf2c     OUT        0x43,AL
   f000:cf2e     MOV        AX,0x1
   f000:cf31     CALL       FUN_f000_cfd6                           ; undefined FUN_f000_cfd6()
   f000:cf34     PUSH       BX
   f000:cf35     PUSH       CX
   f000:cf36     MOV        BX,0x14
   f000:cf39     CALL       FUN_f000_d036                           ; undefined FUN_f000_d036()
   f000:cf3c     JMP        LAB_f000_d02d
                             LAB_f000_cf3f                              XREF[1]:  f000:cf1c(j)  
   f000:cf3f     MOV        CX,0x100
   f000:cf42     CALL       FUN_f000_d058                           ; undefined FUN_f000_d058()
   f000:cf45     POP        DX
   f000:cf46     POP        CX
   f000:cf47     POP        BX
   f000:cf48     MOV        AL,DL
   f000:cf4a     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:cf4d     MOV        AL,DH
   f000:cf4f     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:cf52     JMP        LAB_f000_cf2a
                             LAB_f000_cf54                              XREF[1]:  f000:cf12(j)  
   f000:cf54     MOV        BX,0x190
   f000:cf57     CALL       FUN_f000_d036                           ; undefined FUN_f000_d036()
   f000:cf5a     CALL       FUN_f000_d03f                           ; undefined FUN_f000_d03f()
   f000:cf5d     MOV        CX,0x50
   f000:cf60     CALL       FUN_f000_d058                           ; undefined FUN_f000_d058()
   f000:cf63     POP        DX
   f000:cf64     POP        CX
   f000:cf65     POP        BX
   f000:cf66     CALL       FUN_f000_cf6b                           ; undefined FUN_f000_cf6b()
   f000:cf69     JMP        LAB_f000_cf2a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_cf6b()
             undefined         AL:1           <RETURN>
                             FUN_f000_cf6b                              XREF[3]:  FUN_f000_cf05:f000:cf27(c), 
                                                                                 FUN_f000_cf05:f000:cf66(c), 
                                                                                 f000:cf98(j)  
   f000:cf6b     MOV        DX,0x200
   f000:cf6e     MOV        word ptr [0xb1],0x0
                             LAB_f000_cf74                              XREF[1]:  f000:cf85(j)  
   f000:cf74     MOV        AL,byte ptr ES:[BX]
   f000:cf77     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:cf7a     JCXZ       LAB_f000_cf7e
   f000:cf7c     INC        BX
   f000:cf7d     DEC        CX
                             LAB_f000_cf7e                              XREF[1]:  f000:cf7a(j)  
   f000:cf7e     SUB        AH,AH
   f000:cf80     ADC        word ptr [0xb1],AX
   f000:cf84     DEC        DX
   f000:cf85     JG         LAB_f000_cf74
   f000:cf87     MOV        AX,[0xb1]
   f000:cf8a     NEG        AX
   f000:cf8c     PUSH       AX
   f000:cf8d     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:cf90     POP        AX
   f000:cf91     XCHG       AL,AH
   f000:cf93     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:cf96     OR         CX,CX
   f000:cf98     JNZ        FUN_f000_cf6b
   f000:cf9a     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_cf9b()
             undefined         AL:1           <RETURN>
                             FUN_f000_cf9b                              XREF[8]:  FUN_f000_cf05:f000:cf4a(c), 
                                                                                 FUN_f000_cf05:f000:cf4f(c), 
                                                                                 FUN_f000_cf6b:f000:cf77(c), 
                                                                                 FUN_f000_cf6b:f000:cf8d(c), 
                                                                                 FUN_f000_cf6b:f000:cf93(c), 
                                                                                 FUN_f000_cfdd:f000:d000(c), 
                                                                                 FUN_f000_cfdd:f000:d016(c), 
                                                                                 FUN_f000_cfdd:f000:d01c(c)  
   f000:cf9b     PUSH       CX
   f000:cf9c     PUSH       AX
   f000:cf9d     MOV        CH,AL
   f000:cf9f     CLC
   f000:cfa0     CALL       FUN_f000_cfba                           ; undefined FUN_f000_cfba()
   f000:cfa3     MOV        CL,0x8
                             LAB_f000_cfa5                              XREF[1]:  f000:cfac(j)  
   f000:cfa5     RCR        CH,0x1
   f000:cfa7     CALL       FUN_f000_cfba                           ; undefined FUN_f000_cfba()
   f000:cfaa     DEC        CL
   f000:cfac     JNZ        LAB_f000_cfa5
   f000:cfae     MOV        CX,0x2
                             LAB_f000_cfb1                              XREF[1]:  f000:cfb5(j)  
   f000:cfb1     STC
   f000:cfb2     CALL       FUN_f000_cfba                           ; undefined FUN_f000_cfba()
   f000:cfb5     LOOP       LAB_f000_cfb1
   f000:cfb7     POP        AX
   f000:cfb8     POP        CX
   f000:cfb9     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_cfba()
             undefined         AL:1           <RETURN>
                             FUN_f000_cfba                              XREF[4]:  FUN_f000_cf9b:f000:cfa0(c), 
                                                                                 FUN_f000_cf9b:f000:cfa7(c), 
                                                                                 FUN_f000_cf9b:f000:cfb2(c), 
                                                                                 FUN_f000_d058:f000:d05f(c)  
   f000:cfba     MOV        AX,0x340
   f000:cfbd     JNC        FUN_f000_cfc8
   f000:cfbf     MOV        AX,0x1a0
   f000:cfc2     CALL       FUN_f000_cfc8                           ; undefined FUN_f000_cfc8()
   f000:cfc5     MOV        AX,0x1a0
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_cfc8()
             undefined         AL:1           <RETURN>
                             FUN_f000_cfc8                              XREF[2]:  FUN_f000_cfba:f000:cfbd(j), 
                                                                                 FUN_f000_cfba:f000:cfc2(c)  
   f000:cfc8     PUSH       AX
                             LAB_f000_cfc9                              XREF[1]:  f000:cfcd(j)  
   f000:cfc9     IN         AL,0x62
   f000:cfcb     AND        AL,0x20
   f000:cfcd     JZ         LAB_f000_cfc9
                             LAB_f000_cfcf                              XREF[1]:  f000:cfd3(j)  
   f000:cfcf     IN         AL,0x62
   f000:cfd1     AND        AL,0x20
   f000:cfd3     JNZ        LAB_f000_cfcf
   f000:cfd5     POP        AX
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_cfd6()
             undefined         AL:1           <RETURN>
                             FUN_f000_cfd6                              XREF[5]:  W1:f000:cdfe(c), 
                                                                                 FUN_f000_cf05:f000:cf31(c), 
                                                                                 FUN_f000_cfdd:f000:d02a(c), 
                                                                                 FUN_f000_d058:f000:d05b(c), 
                                                                                 FUN_f000_d065:f000:d085(c)  
   f000:cfd6     OUT        0x42,AL
   f000:cfd8     MOV        AL,AH
   f000:cfda     OUT        0x42,AL
   f000:cfdc     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_cfdd()
             undefined         AL:1           <RETURN>
                             FUN_f000_cfdd                              XREF[1]:  W1:f000:cd37(c)  
   f000:cfdd     PUSH       BX
   f000:cfde     PUSH       CX
   f000:cfdf     MOV        BX,0x7d0
   f000:cfe2     CALL       FUN_f000_d036                           ; undefined FUN_f000_d036()
   f000:cfe5     MOV        word ptr [0xb5],BX
   f000:cfe9     CALL       FUN_f000_d03f                           ; undefined FUN_f000_d03f()
   f000:cfec     MOV        CX,0x100
   f000:cfef     CALL       FUN_f000_d058                           ; undefined FUN_f000_d058()
   f000:cff2     POP        CX
   f000:cff3     POP        BX
                             LAB_f000_cff4                              XREF[1]:  f000:d021(j)  
   f000:cff4     MOV        DX,0x100
   f000:cff7     MOV        word ptr [0xb1],0x0
                             LAB_f000_cffd                              XREF[1]:  f000:d00e(j)  
   f000:cffd     MOV        AL,byte ptr ES:[BX]
   f000:d000     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:d003     JCXZ       LAB_f000_d007
   f000:d005     INC        BX
   f000:d006     DEC        CX
                             LAB_f000_d007                              XREF[1]:  f000:d003(j)  
   f000:d007     SUB        AH,AH
   f000:d009     ADC        word ptr [0xb1],AX
   f000:d00d     DEC        DX
   f000:d00e     JG         LAB_f000_cffd
   f000:d010     MOV        AX,[0xb1]
   f000:d013     NEG        AX
   f000:d015     PUSH       AX
   f000:d016     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:d019     POP        AX
   f000:d01a     XCHG       AL,AH
   f000:d01c     CALL       FUN_f000_cf9b                           ; undefined FUN_f000_cf9b()
   f000:d01f     OR         CX,CX
   f000:d021     JNZ        LAB_f000_cff4
   f000:d023     MOV        AL,0xb0
   f000:d025     OUT        0x43,AL
   f000:d027     MOV        AX,0x1
   f000:d02a     CALL       FUN_f000_cfd6                           ; undefined FUN_f000_cfd6()
                             LAB_f000_d02d                              XREF[1]:  FUN_f000_cf05:f000:cf3c(j)  
   f000:d02d     IN         AL,0x21
   f000:d02f     AND        AL,0xf6
   f000:d031     OUT        0x21,AL
   f000:d033     SUB        AX,AX
   f000:d035     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d036()
             undefined         AL:1           <RETURN>
                             FUN_f000_d036                              XREF[6]:  FUN_f000_cf05:f000:cf39(c), 
                                                                                 FUN_f000_cf05:f000:cf57(c), 
                                                                                 FUN_f000_cfdd:f000:cfe2(c), 
                                                                                 f000:d03c(j), 
                                                                                 FUN_f000_d03f:f000:d04a(c), 
                                                                                 FUN_f000_d065:f000:d079(c)  
   f000:d036     MOV        CX,0xeb
                             LAB_f000_d039                              XREF[1]:  f000:d039(j)  
   f000:d039     LOOP       LAB_f000_d039
   f000:d03b     DEC        BX
   f000:d03c     JNZ        FUN_f000_d036
   f000:d03e     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d03f()
             undefined         AL:1           <RETURN>
                             FUN_f000_d03f                              XREF[3]:  FUN_f000_cf05:f000:cf15(c), 
                                                                                 FUN_f000_cf05:f000:cf5a(c), 
                                                                                 FUN_f000_cfdd:f000:cfe9(c)  
   f000:d03f     IN         AL,0x61
   f000:d041     AND        AL,0xfd
   f000:d043     OR         AL,0x1
   f000:d045     OUT        0x61,AL
   f000:d047     MOV        BX,0x28
   f000:d04a     CALL       FUN_f000_d036                           ; undefined FUN_f000_d036()
   f000:d04d     IN         AL,0x21
   f000:d04f     OR         AL,0x9
   f000:d051     OUT        0x21,AL
   f000:d053     MOV        AL,0xb6
   f000:d055     OUT        0x43,AL
   f000:d057     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d058()
             undefined         AL:1           <RETURN>
                             FUN_f000_d058                              XREF[4]:  FUN_f000_cf05:f000:cf21(c), 
                                                                                 FUN_f000_cf05:f000:cf42(c), 
                                                                                 FUN_f000_cf05:f000:cf60(c), 
                                                                                 FUN_f000_cfdd:f000:cfef(c)  
   f000:d058     MOV        AX,0x1a0
   f000:d05b     CALL       FUN_f000_cfd6                           ; undefined FUN_f000_cfd6()
                             LAB_f000_d05e                              XREF[1]:  f000:d062(j)  
   f000:d05e     STC
   f000:d05f     CALL       FUN_f000_cfba                           ; undefined FUN_f000_cfba()
   f000:d062     LOOP       LAB_f000_d05e
   f000:d064     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d065()
             undefined         AL:1           <RETURN>
                             FUN_f000_d065                              XREF[2]:  W1:f000:cd5f(c), W1:f000:cd8c(c)  
   f000:d065     CLI
   f000:d066     IN         AL,0x61
   f000:d068     AND        AL,0xfd
   f000:d06a     OR         AL,0x1
   f000:d06c     OUT        0x61,AL
   f000:d06e     IN         AL,0x21
   f000:d070     OR         AL,0x9
   f000:d072     OUT        0x21,AL
   f000:d074     PUSH       CX
   f000:d075     PUSH       BX
   f000:d076     MOV        BX,0x14
   f000:d079     CALL       FUN_f000_d036                           ; undefined FUN_f000_d036()
   f000:d07c     POP        BX
   f000:d07d     POP        CX
   f000:d07e     MOV        AL,0xb6
   f000:d080     OUT        0x43,AL
   f000:d082     MOV        AX,0x0
   f000:d085     CALL       FUN_f000_cfd6                           ; undefined FUN_f000_cfd6()
   f000:d088     RET
   f000:d089     ??         FFh
   f000:d08a     ??         FFh
   f000:d08b     ??         FFh
   f000:d08c     ??         FFh
   f000:d08d     ??         FFh
   f000:d08e     ??         FFh
   f000:d08f     ??         FFh
   f000:d090     ??         FFh
   f000:d091     ??         FFh
   f000:d092     ??         FFh
   f000:d093     ??         FFh
   f000:d094     ??         FFh
   f000:d095     ??         FFh
   f000:d096     ??         FFh
   f000:d097     ??         FFh
   f000:d098     ??         FFh
   f000:d099     ??         FFh
   f000:d09a     ??         FFh
   f000:d09b     ??         FFh
   f000:d09c     ??         FFh
   f000:d09d     ??         FFh
   f000:d09e     ??         FFh
   f000:d09f     ??         FFh
   f000:d0a0     ??         FFh
   f000:d0a1     ??         FFh
   f000:d0a2     ??         FFh
   f000:d0a3     ??         FFh
   f000:d0a4     ??         FFh
   f000:d0a5     ??         FFh
   f000:d0a6     ??         FFh
   f000:d0a7     ??         FFh
   f000:d0a8     ??         FFh
   f000:d0a9     ??         FFh
   f000:d0aa     ??         FFh
   f000:d0ab     ??         FFh
   f000:d0ac     ??         FFh
   f000:d0ad     ??         FFh
   f000:d0ae     ??         FFh
   f000:d0af     ??         FFh
   f000:d0b0     ??         FFh
   f000:d0b1     ??         FFh
   f000:d0b2     ??         FFh
   f000:d0b3     ??         FFh
   f000:d0b4     ??         FFh
   f000:d0b5     ??         FFh
   f000:d0b6     ??         FFh
   f000:d0b7     ??         FFh
   f000:d0b8     ??         FFh
   f000:d0b9     ??         FFh
   f000:d0ba     ??         FFh
   f000:d0bb     ??         FFh
   f000:d0bc     ??         FFh
   f000:d0bd     ??         FFh
   f000:d0be     ??         FFh
   f000:d0bf     ??         FFh
   f000:d0c0     ??         FFh
   f000:d0c1     ??         FFh
   f000:d0c2     ??         FFh
   f000:d0c3     ??         FFh
   f000:d0c4     ??         FFh
   f000:d0c5     ??         FFh
   f000:d0c6     ??         FFh
   f000:d0c7     ??         FFh
   f000:d0c8     ??         FFh
   f000:d0c9     ??         FFh
   f000:d0ca     ??         FFh
   f000:d0cb     ??         FFh
   f000:d0cc     ??         FFh
   f000:d0cd     ??         FFh
   f000:d0ce     ??         FFh
   f000:d0cf     ??         FFh
   f000:d0d0     ??         FFh
   f000:d0d1     ??         FFh
   f000:d0d2     ??         FFh
   f000:d0d3     ??         FFh
   f000:d0d4     ??         FFh
   f000:d0d5     ??         FFh
   f000:d0d6     ??         FFh
   f000:d0d7     ??         FFh
   f000:d0d8     ??         FFh
   f000:d0d9     ??         FFh
   f000:d0da     ??         FFh
   f000:d0db     ??         FFh
   f000:d0dc     ??         FFh
   f000:d0dd     ??         FFh
   f000:d0de     ??         FFh
   f000:d0df     ??         FFh
   f000:d0e0     ??         FFh
   f000:d0e1     ??         FFh
   f000:d0e2     ??         FFh
   f000:d0e3     ??         FFh
   f000:d0e4     ??         FFh
   f000:d0e5     ??         FFh
   f000:d0e6     ??         FFh
   f000:d0e7     ??         FFh
   f000:d0e8     ??         FFh
   f000:d0e9     ??         FFh
   f000:d0ea     ??         FFh
   f000:d0eb     ??         FFh
   f000:d0ec     ??         FFh
   f000:d0ed     ??         FFh
   f000:d0ee     ??         FFh
   f000:d0ef     ??         FFh
   f000:d0f0     ??         FFh
   f000:d0f1     ??         FFh
   f000:d0f2     ??         FFh
   f000:d0f3     ??         FFh
   f000:d0f4     ??         FFh
   f000:d0f5     ??         FFh
   f000:d0f6     ??         FFh
   f000:d0f7     ??         FFh
   f000:d0f8     ??         FFh
   f000:d0f9     ??         FFh
   f000:d0fa     ??         FFh
   f000:d0fb     ??         FFh
   f000:d0fc     ??         FFh
   f000:d0fd     ??         FFh
   f000:d0fe     ??         FFh
   f000:d0ff     ??         FFh
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
   f000:d10b     MOV        SI,0x3e                                 ; end of keyboard buffer
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
                             undefined __cdecl16near ERROR_BEEP(void)
             undefined         AL:1           <RETURN>
                             ERROR_BEEP                                 XREF[1]:  K62:f000:d3e1(c)  
   f000:d34d     PUSH       AX
   f000:d34e     PUSH       BX
   f000:d34f     PUSH       CX
   f000:d350     MOV        BX,0xc0
   f000:d353     IN         AL,0x61
   f000:d355     PUSH       AX
                             LAB_f000_d356                              XREF[1]:  f000:d369(j)  
   f000:d356     AND        AL,0xfc
   f000:d358     OUT        0x61,AL
   f000:d35a     MOV        CX,0x48
                             LAB_f000_d35d                              XREF[1]:  f000:d35d(j)  
   f000:d35d     LOOP       LAB_f000_d35d
   f000:d35f     OR         AL,0x2
   f000:d361     OUT        0x61,AL
   f000:d363     MOV        CX,0x48
                             LAB_f000_d366                              XREF[1]:  f000:d366(j)  
   f000:d366     LOOP       LAB_f000_d366
   f000:d368     DEC        BX
   f000:d369     JNZ        LAB_f000_d356
   f000:d36b     POP        AX
   f000:d36c     OUT        0x61,AL
   f000:d36e     POP        CX
   f000:d36f     POP        BX
   f000:d370     POP        AX
   f000:d371     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_f000_d372()
             undefined         AL:1           <RETURN>
                             FUN_f000_d372                              XREF[1]:  KB_INT:f000:ebd7(c)  
   f000:d372     CMP        AL,0x3b
   f000:d374     JC         LAB_f000_d37b
   f000:d376     MOV        AL,0x0
   f000:d378     JMP        K57
   f000:d37a     NOP
                             LAB_f000_d37b                              XREF[1]:  f000:d374(j)  
   f000:d37b     MOV        BX,0xe8dc
   f000:d37e     TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:d383     JZ         LAB_f000_d3dc
                             ;----- TRANSLATE THE CHARACTER
                             K56                                        XREF[5]:  f000:d3df(j), 
                                                                                 KB_INT:f000:ebb9(j), 
                                                                                 KB_INT:f000:ebfb(j), 
                                                                                 KB_INT:f000:ec01(j), 
                                                                                 KB_INT:f000:ec3a(j)  
   f000:d385     DEC        AL                                      ; CONVERT ORIGIN
   f000:d387     XLAT       CS:BX                                   ; CONVERT THE SCAN CODE TO ASCII
                             ;----- PUT CHARACTER INTO BUFFER
                             K57                                        XREF[14]: FUN_f000_d372:f000:d378(j), 
                                                                                 f000:d3ef(j), 
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
   f000:d389     CMP        AL,0xff                                 ; IS THIS AN IGNORE CHAR
   f000:d38b     JZ         K59
   f000:d38d     CMP        AH,0xff                                 ; LOOK FOR -1 PSEUDO SCAN
   f000:d390     JZ         K59                                     ; NEAR_INTERRUPT_RETURN
                             ;----- HANDLE THE CAPS LOCK PROBLEM
                             K58                                        XREF[1]:  KB_INT:f000:eaab(j)  
   f000:d392     TEST       byte ptr [offset KB_FLAG],0x40          ; ARE WE IN CAPS LOCK STATE
   f000:d397     JZ         K61
   f000:d399     TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:d39e     JNZ        LAB_f000_d3a3
   f000:d3a0     JMP        LAB_f000_d44f
                             ;----- IN CAPS LOCK STATE
                             LAB_f000_d3a3                              XREF[1]:  f000:d39e(j)  
   f000:d3a3     TEST       byte ptr [offset KB_FLAG],0x3           ; TEST FOR SHIFT STATE
   f000:d3a8     JZ         K60
                             ;----- CONVERT ANY UPPER CASE TO LOWER CASE
   f000:d3aa     CMP        AL,'A'
   f000:d3ac     JC         K61
   f000:d3ae     CMP        AL,'Z'
   f000:d3b0     JA         K61
   f000:d3b2     ADD        AL,0x20
   f000:d3b4     JMP        K61
   f000:d3b6     NOP
                             K59                                        XREF[2]:  f000:d38b(j), f000:d390(j)  
   f000:d3b7     JMP        K26
                             ;----- CONVERT ANY LOWER CASE TO UPPER CASE
                             K60                                        XREF[1]:  f000:d3a8(j)  
   f000:d3ba     CMP        AL,'a'
   f000:d3bc     JC         K61
   f000:d3be     CMP        AL,'z'
   f000:d3c0     JA         K61
   f000:d3c2     SUB        AL,0x20
                             K61                                        XREF[10]: K63:f000:d397(j), 
                                                                                 K63:f000:d3ac(j), 
                                                                                 K63:f000:d3b0(j), 
                                                                                 K63:f000:d3b4(j), 
                                                                                 K63:f000:d3bc(j), 
                                                                                 K63:f000:d3c0(j), f000:d464(j), 
                                                                                 f000:d475(j), f000:d47a(j), 
                                                                                 f000:d47f(j)  
   f000:d3c4     MOV        BX,word ptr [offset BUFFER_TAIL]
   f000:d3c8     MOV        SI,BX
   f000:d3ca     CALL       K4                                      ; ADVANCE THE TAIL
   f000:d3cd     CMP        BX,word ptr [offset BUFFER_HEAD]
   f000:d3d1     JZ         K62                                     ; BUFFER_FULL_BEEP
   f000:d3d3     MOV        word ptr [SI],AX                        ; STORE THE VALUE
   f000:d3d5     MOV        word ptr [offset BUFFER_TAIL],BX        ; MOVE THE POINTER UP
   f000:d3d9     JMP        K26                                     ; INTERRUPT_RETURN
                             LAB_f000_d3dc                              XREF[1]:  f000:d383(j)  
   f000:d3dc     MOV        BX,0xd3f1
   f000:d3df     JMP        K56
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined K62()
             undefined         AL:1           <RETURN>
                             ;----- BUFFER IS FULL, SOUND THE BEEPER
                             K62                                        XREF[2]:  f000:d3d1(j), 
                                                                                 KB_INT:f000:e99e(c)  
   f000:d3e1     CALL       ERROR_BEEP                              ; undefined ERROR_BEEP(void)
   f000:d3e4     JMP        K26
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined K63()
             undefined         AL:1           <RETURN>
                             ;------ TRANSLATE SCAN FOR PSEUDO SCAN CODES
                             K63                                        XREF[3]:  KB_INT:f000:eb5d(c), 
                                                                                 KB_INT:f000:ebbf(c), 
                                                                                 KB_INT:f000:ebee(c)  
   f000:d3e7     SUB        AL,59                                   ; CONVERT ORIGIN TO FUNCTION KEYS
                             K64                                        XREF[1]:  KB_INT:f000:ec1f(j)  
   f000:d3e9     XLAT       CS:BX                                   ; CTL TABLE SCAN
   f000:d3eb     MOV        AH,AL                                   ; PUT VALUE INTO AH
   f000:d3ed     MOV        AL,0x0                                  ; ZERO ASCII CODE
   f000:d3ef     JMP        K57                                     ; PUT IT INTO THE BUFFER
   f000:d3f1     ??         1Bh
   f000:d3f2     ??         31h    1
   f000:d3f3     ??         32h    2
   f000:d3f4     ??         33h    3
   f000:d3f5     ??         34h    4
   f000:d3f6     ??         35h    5
   f000:d3f7     ??         36h    6
   f000:d3f8     ??         37h    7
   f000:d3f9     ??         38h    8
   f000:d3fa     ??         39h    9
   f000:d3fb     ??         30h    0
   f000:d3fc     ??         2Dh    -
   f000:d3fd     ??         3Dh    =
   f000:d3fe     ??         08h
   f000:d3ff     ??         09h
   f000:d400     ??         D9h
   f000:d401     ??         E6h
   f000:d402     ??         E3h
   f000:d403     ??         DAh
   f000:d404     ??         D5h
   f000:d405     ??         DDh
   f000:d406     ??         D3h
   f000:d407     ??         E8h
   f000:d408     ??         E9h
   f000:d409     ??         D7h
   f000:d40a     ??         D6h
   f000:d40b     ??         EDh
   f000:d40c     ??         0Dh
   f000:d40d     ??         FFh
   f000:d40e     ??         E4h
   f000:d40f     ??         EBh
   f000:d410     ??         D2h
   f000:d411     ??         D0h
   f000:d412     ??         DFh
   f000:d413     ??         E0h
   f000:d414     ??         DEh
   f000:d415     ??         DBh
   f000:d416     ??         D4h
   f000:d417     ??         3Bh    ;
   f000:d418     ??         3Ah    :
   f000:d419     ??         D1h
   f000:d41a     ??         EEh
   f000:d41b     ??         5Ch    \
   f000:d41c     ??         EFh
   f000:d41d     ??         E7h
   f000:d41e     ??         E1h
   f000:d41f     ??         DCh
   f000:d420     ??         D8h
   f000:d421     ??         E2h
   f000:d422     ??         ECh
   f000:d423     ??         2Ch    ,
   f000:d424     ??         2Eh    .
   f000:d425     ??         2Fh    /
   f000:d426     ??         E5h
   f000:d427     ??         FFh
   f000:d428     ??         FFh
   f000:d429     ??         20h     
   f000:d42a     ??         EAh
   f000:d42b     ??         52h    R
   f000:d42c     ??         4Fh    O
   f000:d42d     ??         50h    P
   f000:d42e     ??         51h    Q
   f000:d42f     ??         4Bh    K
   f000:d430     ??         4Ch    L
   f000:d431     ??         4Dh    M
   f000:d432     ??         47h    G
   f000:d433     ??         48h    H
   f000:d434     ??         49h    I
   f000:d435     ??         10h
   f000:d436     ??         11h
   f000:d437     ??         12h
   f000:d438     ??         13h
   f000:d439     ??         14h
   f000:d43a     ??         15h
   f000:d43b     ??         16h
   f000:d43c     ??         17h
   f000:d43d     ??         18h
   f000:d43e     ??         19h
   f000:d43f     ??         1Eh
   f000:d440     ??         1Fh
   f000:d441     ??         20h     
   f000:d442     ??         21h    !
   f000:d443     ??         22h    "
   f000:d444     ??         23h    #
   f000:d445     ??         24h    $
   f000:d446     ??         25h    %
   f000:d447     ??         26h    &
   f000:d448     ??         2Ch    ,
   f000:d449     ??         2Dh    -
   f000:d44a     ??         2Eh    .
   f000:d44b     ??         2Fh    /
   f000:d44c     ??         30h    0
   f000:d44d     ??         31h    1
   f000:d44e     ??         32h    2
                             LAB_f000_d44f                              XREF[1]:  K63:f000:d3a0(j)  
   f000:d44f     TEST       byte ptr [0x17],0x3
   f000:d454     JZ         LAB_f000_d467
   f000:d456     CMP        AL,0xf0
   f000:d458     JZ         LAB_f000_d47d
   f000:d45a     CMP        AL,0xb0
   f000:d45c     JC         LAB_f000_d464
   f000:d45e     CMP        AL,0xcf
   f000:d460     JA         LAB_f000_d464
   f000:d462     ADD        AL,0x20
                             LAB_f000_d464                              XREF[4]:  f000:d45c(j), f000:d460(j), 
                                                                                 f000:d46d(j), f000:d471(j)  
   f000:d464     JMP        K61
                             LAB_f000_d467                              XREF[1]:  f000:d454(j)  
   f000:d467     CMP        AL,0xf1
   f000:d469     JZ         LAB_f000_d478
   f000:d46b     CMP        AL,0xd0
   f000:d46d     JC         LAB_f000_d464
   f000:d46f     CMP        AL,0xfe
   f000:d471     JA         LAB_f000_d464
   f000:d473     SUB        AL,0x20
   f000:d475     JMP        K61
                             LAB_f000_d478                              XREF[1]:  f000:d469(j)  
   f000:d478     SUB        AL,0x1
   f000:d47a     JMP        K61
                             LAB_f000_d47d                              XREF[1]:  f000:d458(j)  
   f000:d47d     ADD        AL,0x1
   f000:d47f     JMP        K61
   f000:d482     ??         09h
   f000:d483     ??         0Ah
   f000:d484     ??         0Bh
   f000:d485     ??         0Ch
   f000:d486     ??         35h    5
   f000:d487     ??         28h    (
   f000:d488     ??         28h    (
   f000:d489     ??         33h    3
   f000:d48a     ??         34h    4
   f000:d48b     ??         0Ch
   f000:d48c     ??         35h    5
   f000:d48d     ??         06h
   f000:d48e     ??         02h
   f000:d48f     ??         27h    '
   f000:d490     ??         2Ah    *
   f000:d491     ??         27h    '
   f000:d492     ??         08h
   f000:d493     ??         03h
   f000:d494     ??         07h
   f000:d495     ??         36h    6
   f000:d496     ??         3Ah    :
   f000:d497     ??         2Bh    +
   f000:d498     ??         33h    3
   f000:d499     ??         34h    4
   f000:d49a     ??         2Bh    +
   f000:d49b     ??         1Ah
   f000:d49c     ??         1Bh
   f000:d49d     ??         29h    )
   f000:d49e     ??         04h
   f000:d49f     ??         0Dh
   f000:d4a0     ??         02h
   f000:d4a1     ??         03h
   f000:d4a2     ??         04h
   f000:d4a3     ??         05h
   f000:d4a4     ??         06h
   f000:d4a5     ??         07h
   f000:d4a6     ??         08h
   f000:d4a7     ??         09h
   f000:d4a8     ??         0Ah
   f000:d4a9     ??         0Bh
   f000:d4aa     ??         0Dh
   f000:d4ab     ??         05h
                             DAT_f000_d4ac                              XREF[1]:  Keyboard_MK88:f000:d22e(R)  
   f000:d4ac     undefined2 E478h
                             DAT_f000_d4ae                              XREF[1]:  Keyboard_MK88:f000:d20a(R)  
   f000:d4ae     undefined2 78E0h
                             DAT_f000_d4b0                              XREF[1]:  Keyboard_MK88:f000:d1df(R)  
   f000:d4b0     undefined2 C004h
   f000:d4b2     ??         04h
   f000:d4b3     ??         0Dh
   f000:d4b4     ??         02h
   f000:d4b5     ??         03h
   f000:d4b6     ??         04h
   f000:d4b7     ??         05h
   f000:d4b8     ??         06h
   f000:d4b9     ??         07h
   f000:d4ba     ??         08h
   f000:d4bb     ??         09h
   f000:d4bc     ??         0Ah
   f000:d4bd     ??         1Ah
   f000:d4be     ??         1Bh
   f000:d4bf     ??         27h    '
   f000:d4c0     ??         29h    )
   f000:d4c1     ??         28h    (
   f000:d4c2     ??         02h
   f000:d4c3     ??         03h
   f000:d4c4     ??         04h
   f000:d4c5     ??         05h
   f000:d4c6     ??         06h
   f000:d4c7     ??         07h
   f000:d4c8     ??         08h
   f000:d4c9     ??         09h
   f000:d4ca     ??         0Ah
   f000:d4cb     ??         0Bh
   f000:d4cc     ??         0Dh
   f000:d4cd     ??         27h    '
   f000:d4ce     ??         47h    G
   f000:d4cf     ??         48h    H
   f000:d4d0     ??         49h    I
   f000:d4d1     ??         00h
   f000:d4d2     ??         4Bh    K
   f000:d4d3     ??         00h
   f000:d4d4     ??         4Dh    M
   f000:d4d5     ??         00h
   f000:d4d6     ??         4Fh    O
   f000:d4d7     ??         50h    P
   f000:d4d8     ??         51h    Q
   f000:d4d9     ??         09h
   f000:d4da     ??         35h    5
   f000:d4db     ??         1Ch
   f000:d4dc     ??         00h
   f000:d4dd     ??         00h
   f000:d4de     ??         52h    R
   f000:d4df     ??         53h    S
   f000:d4e0     ??         46h    F
   f000:d4e1     ??         37h    7
   f000:d4e2     ??         1Ch
   f000:d4e3     ??         45h    E
   f000:d4e4     ??         0Eh
   f000:d4e5     ??         59h    Y
   f000:d4e6     ??         54h    T
   f000:d4e7     ??         58h    X
   f000:d4e8     ??         5Bh    [
   f000:d4e9     ??         39h    9
   f000:d4ea     ??         38h    8
   f000:d4eb     ??         1Dh
   f000:d4ec     ??         5Ah    Z
   f000:d4ed     ??         55h    U
   f000:d4ee     ??         56h    V
   f000:d4ef     ??         0Fh
   f000:d4f0     ??         01h
   f000:d4f1     ??         3Bh    ;
   f000:d4f2     ??         3Ch    <
   f000:d4f3     ??         3Dh    =
   f000:d4f4     ??         3Eh    >
   f000:d4f5     ??         3Fh    ?
   f000:d4f6     ??         40h    @
   f000:d4f7     ??         41h    A
   f000:d4f8     ??         42h    B
   f000:d4f9     ??         43h    C
   f000:d4fa     ??         44h    D
   f000:d4fb     ??         00h
   f000:d4fc     ??         00h
   f000:d4fd     ??         00h
   f000:d4fe     ??         00h
   f000:d4ff     ??         10h
   f000:d500     ??         11h
   f000:d501     ??         12h
   f000:d502     ??         13h
   f000:d503     ??         14h
   f000:d504     ??         15h
   f000:d505     ??         16h
   f000:d506     ??         17h
   f000:d507     ??         18h
   f000:d508     ??         19h
   f000:d509     ??         36h    6
   f000:d50a     ??         3Ah    :
   f000:d50b     ??         1Eh
   f000:d50c     ??         1Fh
   f000:d50d     ??         20h     
   f000:d50e     ??         21h    !
   f000:d50f     ??         22h    "
   f000:d510     ??         23h    #
   f000:d511     ??         24h    $
   f000:d512     ??         25h    %
   f000:d513     ??         26h    &
   f000:d514     ??         1Ah
   f000:d515     ??         1Bh
   f000:d516     ??         2Ch    ,
   f000:d517     ??         2Dh    -
   f000:d518     ??         2Eh    .
   f000:d519     ??         2Fh    /
   f000:d51a     ??         30h    0
   f000:d51b     ??         31h    1
   f000:d51c     ??         32h    2
   f000:d51d     ??         29h    )
   f000:d51e     ??         2Ah    *
   f000:d51f     ??         5Ch    \
   f000:d520     ??         4Ah    J
   f000:d521     ??         47h    G
   f000:d522     ??         48h    H
   f000:d523     ??         49h    I
   f000:d524     ??         4Bh    K
   f000:d525     ??         4Ch    L
   f000:d526     ??         4Dh    M
   f000:d527     ??         4Fh    O
   f000:d528     ??         50h    P
   f000:d529     ??         51h    Q
   f000:d52a     ??         52h    R
   f000:d52b     ??         53h    S
   f000:d52c     ??         4Eh    N
   f000:d52d     ??         00h
   f000:d52e     ??         00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined Welcome_screen()
             undefined         AL:1           <RETURN>
                             Welcome_screen                             XREF[1]:  f000:e503(c)  
   f000:d52f     CALL       READ_CURSOR_POSITION                    ; undefined READ_CURSOR_POSITION()
   f000:d532     MOV        DH,0x2
   f000:d534     MOV        DL,0x21
   f000:d536     CALL       Prepare_empty_screen                    ; undefined Prepare_empty_screen()
   f000:d539     CALL       Set_cursor                              ; undefined Set_cursor()
   f000:d53c     MOV        SI,0xdc0b                               ; points to msg:
                                                                     ; КОМПЬЮТЕР
   f000:d53f     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d542     MOV        DH,0x5
   f000:d544     MOV        DL,0x8
   f000:d546     MOV        CX,0x4
   f000:d549     MOV        SI,0xdc15                               ; points to Binary image of M K 8
                             LAB_f000_d54c                              XREF[1]:  f000:d55a(j)  
   f000:d54c     CALL       drawing                                 ; undefined drawing()
   f000:d54f     ADD        DL,0x10
   f000:d552     CMP        CX,0x2
   f000:d555     JNZ        LAB_f000_d55a
   f000:d557     MOV        SI,0xdc49                               ; points to Binary image of 8
                             LAB_f000_d55a                              XREF[1]:  f000:d555(j)  
   f000:d55a     LOOP       LAB_f000_d54c
   f000:d55c     MOV        CX,0x0
   f000:d55f     MOV        SI,0xdc63                               ; points to msg:
                                                                     ; ИК АН УССР (Киев)&МПОВТ (Минск)
   f000:d562     MOV        DH,0x13
   f000:d564     MOV        DL,0x15
   f000:d566     CALL       Set_cursor                              ; undefined Set_cursor()
   f000:d569     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d56c     MOV        DH,0x17
   f000:d56e     MOV        DL,0x19
   f000:d570     CALL       Set_cursor                              ; undefined Set_cursor()
   f000:d573     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d576     CALL       FUN_f000_d7d5                           ; undefined FUN_f000_d7d5()
   f000:d579     MOV        word ptr [0x72],0x1234
   f000:d57f     JMP        Choose_boot                             ; undefined Choose_boot()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near Prepare_screen()
             undefined         AL:1           <RETURN>
                             Prepare_screen                             XREF[5]:  MSG_on_new_screen:f000:d603(c), 
                                                                                 Choose_boot:f000:d6e4(c), 
                                                                                 Choose_boot:f000:d705(c), 
                                                                                 Choose_boot:f000:d75e(c), 
                                                                                 Choose_boot:f000:d78b(c)  
   f000:d582     CALL       Prepare_empty_screen                    ; undefined Prepare_empty_screen()
   f000:d585     CALL       Set_coord_row5_line15                   ; undefined Set_coord_row5_line1
   f000:d588     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near Prepare_empty_screen()
             undefined         AL:1           <RETURN>
                             Prepare_empty_screen                       XREF[2]:  Welcome_screen:f000:d536(c), 
                                                                                 Prepare_screen:f000:d582(c)  
   f000:d589     PUSH       DX
   f000:d58a     MOV        AX,0x700                                ; SCROLL ACTIVE PAGE DOWN
                                                                     ; BLANK ENTIRE WINDOW
   f000:d58d     MOV        CX,0x0                                  ; (row, column) = (0,0)
                                                                     ; upper left corner
   f000:d590     MOV        DX,0x184f                               ; (row, column) = (24,79)
                                                                     ; lower right corner
   f000:d593     MOV        BH,0x1e
   f000:d595     INT        0x10
   f000:d597     POP        DX
   f000:d598     MOV        AH,0xb
   f000:d59a     MOV        BL,0x1                                  ; Border color CYAN(1)
   f000:d59c     INT        0x10                                    ; SET COLOR PALETTE
   f000:d59e     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near Print_MSG()
             undefined         AL:1           <RETURN>
                             Print_MSG                                  XREF[12]: Welcome_screen:f000:d53f(c), 
                                                                                 Welcome_screen:f000:d569(c), 
                                                                                 Welcome_screen:f000:d573(c), 
                                                                                 f000:d5ae(j), f000:d5b3(j), 
                                                                                 MSG_on_new_screen:f000:d606(c), 
                                                                                 Choose_boot:f000:d6a3(c), 
                                                                                 Choose_boot:f000:d6f7(c), 
                                                                                 Choose_boot:f000:d70b(c), 
                                                                                 Choose_boot:f000:d727(c), 
                                                                                 Choose_boot:f000:d774(c), 
                                                                                 Choose_boot:f000:d77a(c)  
   f000:d59f     MOV        AX,word ptr CS:[SI]
   f000:d5a2     INC        SI                                      ; next character
   f000:d5a3     CMP        AL,0x0
   f000:d5a5     JZ         LAB_f000_d5b5                           ; If char=0 return
   f000:d5a7     CMP        AL,0x1                                  ; If char=1 go to new line
   f000:d5a9     JZ         LAB_f000_d5b0
   f000:d5ab     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:d5ae     JMP        Print_MSG
                             LAB_f000_d5b0                              XREF[1]:  f000:d5a9(j)  
   f000:d5b0     CALL       Inc_row_and_set_cursor                  ; undefined Inc_row_and_set_curs
   f000:d5b3     JMP        Print_MSG
                             LAB_f000_d5b5                              XREF[1]:  f000:d5a5(j)  
   f000:d5b5     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near Inc_row_and_set_cursor()
             undefined         AL:1           <RETURN>
                             Inc_row_and_set_cursor                     XREF[6]:  Print_MSG:f000:d5b0(c), 
                                                                                 Choose_boot:f000:d69d(c), 
                                                                                 Choose_boot:f000:d6a0(c), 
                                                                                 Choose_boot:f000:d6fa(c), 
                                                                                 Choose_boot:f000:d724(c), 
                                                                                 Choose_boot:f000:d761(c)  
   f000:d5b6     INC        DH                                      ; increment cursor row
   f000:d5b8     CALL       Set_cursor                              ; undefined Set_cursor()
   f000:d5bb     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near drawing()
             undefined         AL:1           <RETURN>
                             drawing                                    XREF[1]:  Welcome_screen:f000:d54c(c)  
   f000:d5bc     PUSH       CX
   f000:d5bd     MOV        CX,13
                             LAB_f000_d5c0                              XREF[1]:  f000:d5d4(j)  
   f000:d5c0     MOV        AL,byte ptr CS:[SI]
   f000:d5c3     INC        SI
   f000:d5c4     MOV        AH,AL
   f000:d5c6     MOV        AL,byte ptr CS:[SI]
   f000:d5c9     INC        SI
   f000:d5ca     MOV        DI,AX
   f000:d5cc     CALL       Set_cursor                              ; undefined Set_cursor()
   f000:d5cf     CALL       FUN_f000_d5db                           ; undefined FUN_f000_d5db()
   f000:d5d2     INC        DH
   f000:d5d4     LOOP       LAB_f000_d5c0
   f000:d5d6     POP        CX
   f000:d5d7     SUB        DH,0xd
   f000:d5da     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d5db()
             undefined         AL:1           <RETURN>
                             FUN_f000_d5db                              XREF[1]:  drawing:f000:d5cf(c)  
   f000:d5db     PUSH       CX
   f000:d5dc     PUSH       DX
   f000:d5dd     MOV        DX,0x8000
   f000:d5e0     MOV        CX,0x10
                             LAB_f000_d5e3                              XREF[1]:  f000:d5f3(j)  
   f000:d5e3     TEST       DX,DI
   f000:d5e5     JZ         LAB_f000_d5ec
   f000:d5e7     MOV        AL,0xac
   f000:d5e9     JMP        LAB_f000_d5ee
   f000:d5eb     NOP
                             LAB_f000_d5ec                              XREF[1]:  f000:d5e5(j)  
   f000:d5ec     MOV        AL,0x20
                             LAB_f000_d5ee                              XREF[1]:  f000:d5e9(j)  
   f000:d5ee     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:d5f1     ROR        DX,0x1
   f000:d5f3     LOOP       LAB_f000_d5e3
   f000:d5f5     POP        DX
   f000:d5f6     POP        CX
   f000:d5f7     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined Set_coord_row5_line15()
             undefined         AL:1           <RETURN>
                             Set_coord_row5_line15                      XREF[1]:  Prepare_screen:f000:d585(c)  
   f000:d5f8     MOV        DH,5
   f000:d5fa     MOV        DL,15
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near Set_cursor()
             undefined         AL:1           <RETURN>
                             Set_cursor                                 XREF[5]:  Welcome_screen:f000:d539(c), 
                                                                                 Welcome_screen:f000:d566(c), 
                                                                                 Welcome_screen:f000:d570(c), 
                                                                                 Inc_row_and_set_cursor:f000:d5b8
                                                                                 drawing:f000:d5cc(c)  
   f000:d5fc     MOV        AH,0x2
   f000:d5fe     MOV        BH,0                                    ; PAGE NUMBER 0
   f000:d600     INT        0x10                                    ; SET CURSOR POSITION
   f000:d602     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near MSG_on_new_screen()
             undefined         AL:1           <RETURN>
                             MSG_on_new_screen                          XREF[9]:  Choose_boot:f000:d61a(c), 
                                                                                 Choose_boot:f000:d635(c), 
                                                                                 Choose_boot:f000:d64b(c), 
                                                                                 Choose_boot:f000:d66a(c), 
                                                                                 Choose_boot:f000:d678(c), 
                                                                                 Choose_boot:f000:d689(c), 
                                                                                 Choose_boot:f000:d691(c), 
                                                                                 Choose_boot:f000:d6c6(c), 
                                                                                 Choose_boot:f000:d741(c)  
   f000:d603     CALL       Prepare_screen                          ; undefined Prepare_screen()
   f000:d606     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d609     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d60a()
             undefined         AL:1           <RETURN>
                             FUN_f000_d60a                              XREF[6]:  Choose_boot:f000:d61d(c), 
                                                                                 Choose_boot:f000:d67b(c), 
                                                                                 Choose_boot:f000:d6a6(c), 
                                                                                 Choose_boot:f000:d744(c), 
                                                                                 Choose_boot:f000:d77d(c), 
                                                                                 FUN_f000_d794:f000:d79a(c)  
   f000:d60a     MOV        AH,0x0
   f000:d60c     INT        0x16
   f000:d60e     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near READ_CURSOR_POSITION()
             undefined         AL:1           <RETURN>
                             * ON EXIT
                             * (DH,DL) = ROW,COLUMN OF CURRENT CURSOR
                             * (CH,CL) = CURSOR MODE CURRENTLY SET
                             READ_CURSOR_POSITION                       XREF[5]:  Welcome_screen:f000:d52f(c), 
                                                                                 Choose_boot:f000:d642(c), 
                                                                                 Choose_boot:f000:d65d(c), 
                                                                                 Choose_boot:f000:d66f(c), 
                                                                                 Choose_boot:f000:d758(c)  
   f000:d60f     MOV        AX,0x3
   f000:d612     MOV        BH,0x0                                  ; PAGE NUMBER 0
   f000:d614     INT        0x10                                    ; READ CURSOR POSITION
   f000:d616     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined Choose_boot()
             undefined         AL:1           <RETURN>
                             Choose_boot                                XREF[4]:  Welcome_screen:f000:d57f(c), 
                                                                                 f000:d640(j), f000:d684(j), 
                                                                                 f000:e506(c)  
   f000:d617     MOV        SI,0xdaef                               ; points to msg:
                                                                     ; ВЫБЕРИТЕ НЕОБХОДИМЫЙ РЕЖИМ...
   f000:d61a     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d61d     CALL       FUN_f000_d60a                           ; undefined FUN_f000_d60a()
   f000:d620     AND        AL,0xdf
   f000:d622     CMP        AL,'D'
   f000:d624     JZ         disk_boot
   f000:d626     CMP        AL,'C'
   f000:d628     JZ         LAB_f000_d675
   f000:d62a     CMP        AL,'K'
   f000:d62c     JZ         LAB_f000_d650
   f000:d62e     CMP        AL,'M'
   f000:d630     JZ         LAB_f000_d66f
   f000:d632     MOV        SI,0xdbc2                               ; points to msg:
                                                                     ; НЕПРАВИЛЬНО ВЫБРАН РЕЖИМ
   f000:d635     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
                             LAB_f000_d638                              XREF[3]:  f000:d64e(j), f000:d66d(j), 
                                                                                 f000:d78e(j)  
   f000:d638     PUSH       DX
   f000:d639     MOV        DX,0x3
   f000:d63c     CALL       ERR_BEEP                                ; undefined ERR_BEEP(void)
   f000:d63f     POP        DX
   f000:d640     JMP        Choose_boot
                             disk_boot                                  XREF[1]:  f000:d624(j)  
   f000:d642     CALL       READ_CURSOR_POSITION                    ; undefined READ_CURSOR_POSITION()
   f000:d645     CLC
   f000:d646     INT        0x19                                    ; BOOTSTRAP
   f000:d648     MOV        SI,0xdbdb                               ; msg:
                                                                     ; НЕТ ДИСКА ИЛИ НЕИСПРАВЕН ДИСКО
   f000:d64b     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d64e     JMP        LAB_f000_d638
                             LAB_f000_d650                              XREF[1]:  f000:d62c(j)  
   f000:d650     PUSH       DS
   f000:d651     MOV        AX,0xc000
   f000:d654     MOV        DS,AX
   f000:d656     CMP        byte ptr [0x0]=>FUN_c000_0000,0xff
   f000:d65b     JZ         LAB_f000_d666
   f000:d65d     CALL       READ_CURSOR_POSITION                    ; undefined READ_CURSOR_POSITION()
   f000:d660     POP        DS
   f000:d661     JMPF       FUN_c000_0000                           ; pointer FUN_c000_0000(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_d666                              XREF[1]:  f000:d65b(j)  
   f000:d666     POP        DS
   f000:d667     MOV        SI,0xdbfd
   f000:d66a     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d66d     JMP        LAB_f000_d638
                             LAB_f000_d66f                              XREF[1]:  f000:d630(j)  
   f000:d66f     CALL       READ_CURSOR_POSITION                    ; undefined READ_CURSOR_POSITION()
   f000:d672     JMP        thunk_FUN_f000_c0b2                     ; undefined thunk_FUN_f000_c0b2()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_d675                              XREF[1]:  f000:d628(j)  
   f000:d675     MOV        SI,0xda4f
   f000:d678     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d67b     CALL       FUN_f000_d60a                           ; undefined FUN_f000_d60a()
   f000:d67e     AND        AL,0xdf
   f000:d680     CMP        AL,0x4e
   f000:d682     JNZ        LAB_f000_d686
   f000:d684     JMP        Choose_boot
                             LAB_f000_d686                              XREF[1]:  f000:d682(j)  
   f000:d686     MOV        SI,0xda97
   f000:d689     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d68c     JMP        LAB_f000_d694
                             LAB_f000_d68e                              XREF[1]:  f000:d791(j)  
   f000:d68e     MOV        SI,0xdabf
   f000:d691     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
                             LAB_f000_d694                              XREF[1]:  f000:d68c(j)  
   f000:d694     MOV        SI,0xb9
   f000:d697     CALL       FUN_f000_d794                           ; undefined FUN_f000_d794()
   f000:d69a     MOV        SI,0xd89c
   f000:d69d     CALL       Inc_row_and_set_cursor                  ; undefined Inc_row_and_set_curs
   f000:d6a0     CALL       Inc_row_and_set_cursor                  ; undefined Inc_row_and_set_curs
   f000:d6a3     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d6a6     CALL       FUN_f000_d60a                           ; undefined FUN_f000_d60a()
                             LAB_f000_d6a9                              XREF[2]:  f000:d6d7(j), f000:d784(j)  
   f000:d6a9     PUSH       AX
   f000:d6aa     PUSH       CX
   f000:d6ab     MOV        AH,0x2
   f000:d6ad     MOV        CX,0x11
   f000:d6b0     MOV        BX,0xc2
   f000:d6b3     PUSH       DX
   f000:d6b4     INT        0x15
   f000:d6b6     POP        DX
   f000:d6b7     POP        CX
   f000:d6b8     POP        AX
   f000:d6b9     JNC        LAB_f000_d6cc
                             LAB_f000_d6bb                              XREF[1]:  f000:d735(j)  
   f000:d6bb     PUSH       DS
   f000:d6bc     POP        ES
   f000:d6bd     MOV        DX,0x3
   f000:d6c0     CALL       ERR_BEEP                                ; undefined ERR_BEEP(void)
   f000:d6c3     MOV        SI,0xd8fe
   f000:d6c6     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d6c9     JMP        LAB_f000_d77d
                             LAB_f000_d6cc                              XREF[1]:  f000:d6b9(j)  
   f000:d6cc     MOV        DI,0xba
   f000:d6cf     MOV        SI,0xc2
   f000:d6d2     LODSB      SI
   f000:d6d3     CMP        AL,0xa5
   f000:d6d5     JZ         LAB_f000_d6d9
   f000:d6d7     JMP        LAB_f000_d6a9
                             LAB_f000_d6d9                              XREF[1]:  f000:d6d5(j)  
   f000:d6d9     MOV        CX,0x8
                             LAB_f000_d6dc                              XREF[1]:  f000:d6e2(j)  
   f000:d6dc     CMPSB      ES:DI,SI
   f000:d6dd     JZ         LAB_f000_d6e2
   f000:d6df     JMP        LAB_f000_d75d
   f000:d6e1     ??         90h
                             LAB_f000_d6e2                              XREF[1]:  f000:d6dd(j)  
   f000:d6e2     LOOP       LAB_f000_d6dc
   f000:d6e4     CALL       Prepare_screen                          ; undefined Prepare_screen()
   f000:d6e7     PUSH       CX
   f000:d6e8     MOV        CX,0x8
   f000:d6eb     MOV        SI,0xba
                             LAB_f000_d6ee                              XREF[1]:  f000:d6f2(j)  
   f000:d6ee     LODSB      SI
   f000:d6ef     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:d6f2     LOOP       LAB_f000_d6ee
   f000:d6f4     MOV        SI,0xd88a
   f000:d6f7     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d6fa     CALL       Inc_row_and_set_cursor                  ; undefined Inc_row_and_set_curs
   f000:d6fd     MOV        AL,ES:[0xcb]
   f000:d701     CMP        AL,0x42
   f000:d703     JZ         LAB_f000_d711
   f000:d705     CALL       Prepare_screen                          ; undefined Prepare_screen()
   f000:d708     MOV        SI,0xd9a3
   f000:d70b     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d70e     JMP        LAB_f000_d777
   f000:d710     ??         90h
                             LAB_f000_d711                              XREF[1]:  f000:d703(j)  
   f000:d711     MOV        SI,0xcc
   f000:d714     LODSW      SI
   f000:d715     MOV        CX,AX
   f000:d717     LES        BX,[SI]
   f000:d719     MOV        AX,ES
   f000:d71b     XCHG       AX,BX
   f000:d71c     MOV        ES,AX
   f000:d71e     PUSH       CX
   f000:d71f     PUSH       BX
   f000:d720     PUSH       ES
   f000:d721     MOV        SI,0xd8e2
   f000:d724     CALL       Inc_row_and_set_cursor                  ; undefined Inc_row_and_set_curs
   f000:d727     CALL       Print_MSG                               ; undefined Print_MSG()
   f000:d72a     POP        ES
   f000:d72b     POP        BX
   f000:d72c     POP        CX
   f000:d72d     PUSH       DX
   f000:d72e     MOV        AH,0x2
   f000:d730     INT        0x15
   f000:d732     JNC        LAB_f000_d737
   f000:d734     POP        DX
   f000:d735     JMP        LAB_f000_d6bb
                             LAB_f000_d737                              XREF[1]:  f000:d732(j)  
   f000:d737     POP        DX
   f000:d738     MOV        DX,0x201
   f000:d73b     CALL       ERR_BEEP                                ; undefined ERR_BEEP(void)
   f000:d73e     MOV        SI,0xd9d4
   f000:d741     CALL       MSG_on_new_screen                       ; undefined MSG_on_new_screen()
   f000:d744     CALL       FUN_f000_d60a                           ; undefined FUN_f000_d60a()
   f000:d747     PUSH       DS
   f000:d748     MOV        SI,0xce
   f000:d74b     LES        BX,[SI]
   f000:d74d     MOV        AX,ES
   f000:d74f     POP        ES
   f000:d750     MOV        DI,0xd3
   f000:d753     PUSH       DI
   f000:d754     STOSW      ES:DI
   f000:d755     XCHG       AX,BX
   f000:d756     STOSW      ES:DI
   f000:d757     POP        DI
   f000:d758     CALL       READ_CURSOR_POSITION                    ; undefined READ_CURSOR_POSITION()
   f000:d75b     JMPF       [DI]
                             LAB_f000_d75d                              XREF[1]:  f000:d6df(j)  
   f000:d75d     PUSH       CX
   f000:d75e     CALL       Prepare_screen                          ; undefined Prepare_screen()
   f000:d761     CALL       Inc_row_and_set_cursor                  ; undefined Inc_row_and_set_curs
   f000:d764     MOV        CX,0x8
   f000:d767     MOV        SI,0xc3
                             LAB_f000_d76a                              XREF[1]:  f000:d76e(j)  
   f000:d76a     LODSB      SI
   f000:d76b     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:d76e     LOOP       LAB_f000_d76a
   f000:d770     POP        CX
   f000:d771     MOV        SI,0xda3a
   f000:d774     CALL       Print_MSG                               ; undefined Print_MSG()
                             LAB_f000_d777                              XREF[1]:  f000:d70e(j)  
   f000:d777     MOV        SI,0xd91b
   f000:d77a     CALL       Print_MSG                               ; undefined Print_MSG()
                             LAB_f000_d77d                              XREF[1]:  f000:d6c9(j)  
   f000:d77d     CALL       FUN_f000_d60a                           ; undefined FUN_f000_d60a()
   f000:d780     CMP        AL,0x20
   f000:d782     JNZ        LAB_f000_d787
   f000:d784     JMP        LAB_f000_d6a9
                             LAB_f000_d787                              XREF[1]:  f000:d782(j)  
   f000:d787     CMP        AL,0x1b
   f000:d789     JNZ        LAB_f000_d791
   f000:d78b     CALL       Prepare_screen                          ; undefined Prepare_screen()
   f000:d78e     JMP        LAB_f000_d638
                             LAB_f000_d791                              XREF[1]:  f000:d789(j)  
   f000:d791     JMP        LAB_f000_d68e
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d794()
             undefined         AL:1           <RETURN>
                             FUN_f000_d794                              XREF[1]:  Choose_boot:f000:d697(c)  
   f000:d794     PUSH       CX
   f000:d795     MOV        CX,0x9
                             LAB_f000_d798                              XREF[1]:  f000:d7c6(j)  
   f000:d798     INC        SI
   f000:d799     DEC        CX
                             LAB_f000_d79a                              XREF[4]:  f000:d79f(j), f000:d7a8(j), 
                                                                                 f000:d7ac(j), f000:d7c2(j)  
   f000:d79a     CALL       FUN_f000_d60a                           ; undefined FUN_f000_d60a()
   f000:d79d     CMP        AL,0x0
   f000:d79f     JZ         LAB_f000_d79a
   f000:d7a1     CMP        CX,0x8
   f000:d7a4     JNZ        LAB_f000_d7ae
   f000:d7a6     CMP        AL,0x8
   f000:d7a8     JZ         LAB_f000_d79a
   f000:d7aa     CMP        AL,0xd
   f000:d7ac     JZ         LAB_f000_d79a
                             LAB_f000_d7ae                              XREF[1]:  f000:d7a4(j)  
   f000:d7ae     CMP        CX,0x0
   f000:d7b1     JZ         LAB_f000_d7d3
   f000:d7b3     CMP        AL,0xd
   f000:d7b5     JZ         LAB_f000_d7c8
   f000:d7b7     PUSH       AX
   f000:d7b8     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:d7bb     POP        AX
   f000:d7bc     CMP        AL,0x8
   f000:d7be     JNZ        LAB_f000_d7c4
   f000:d7c0     DEC        SI
   f000:d7c1     INC        CX
   f000:d7c2     JMP        LAB_f000_d79a
                             LAB_f000_d7c4                              XREF[1]:  f000:d7be(j)  
   f000:d7c4     MOV        byte ptr [SI],AL
   f000:d7c6     JMP        LAB_f000_d798
                             LAB_f000_d7c8                              XREF[1]:  f000:d7b5(j)  
   f000:d7c8     OR         CX,CX
   f000:d7ca     JZ         LAB_f000_d7d3
                             LAB_f000_d7cc                              XREF[1]:  f000:d7d1(j)  
   f000:d7cc     MOV        AL,0x20
   f000:d7ce     MOV        byte ptr [SI],AL
   f000:d7d0     INC        SI
   f000:d7d1     LOOP       LAB_f000_d7cc
                             LAB_f000_d7d3                              XREF[2]:  f000:d7b1(j), f000:d7ca(j)  
   f000:d7d3     POP        CX
   f000:d7d4     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_d7d5()
             undefined         AL:1           <RETURN>
                             FUN_f000_d7d5                              XREF[1]:  Welcome_screen:f000:d576(c)  
   f000:d7d5     PUSH       CS
   f000:d7d6     POP        DS
   f000:d7d7     PUSH       BX
   f000:d7d8     MOV        BL,0x0
   f000:d7da     MOV        SI,0xd80a
                             LAB_f000_d7dd                              XREF[1]:  f000:d804(j)  
   f000:d7dd     IN         AL,0x61
   f000:d7df     OR         AL,0x3
   f000:d7e1     OUT        0x61,AL
   f000:d7e3     LODSW      SI
   f000:d7e4     OUT        0x42,AL
   f000:d7e6     MOV        AL,AH
   f000:d7e8     OUT        0x42,AL
   f000:d7ea     MOV        CX,0x4800
                             LAB_f000_d7ed                              XREF[1]:  f000:d7ed(j)  
   f000:d7ed     LOOP       LAB_f000_d7ed
   f000:d7ef     IN         AL,0x61
   f000:d7f1     AND        AL,0xfc
   f000:d7f3     OUT        0x61,AL
   f000:d7f5     MOV        CX,0x1800
                             LAB_f000_d7f8                              XREF[1]:  f000:d7f8(j)  
   f000:d7f8     LOOP       LAB_f000_d7f8
   f000:d7fa     INC        BL
   f000:d7fc     MOV        AH,0xb
   f000:d7fe     INT        0x10
   f000:d800     CMP        SI,0xd88a
   f000:d804     JNZ        LAB_f000_d7dd
   f000:d806     POP        BX
   f000:d807     PUSH       ES
   f000:d808     POP        DS
   f000:d809     RET
   f000:d80a     ??         22h    "
   f000:d80b     ??         15h
   f000:d80c     ??         EBh
   f000:d80d     ??         13h
   f000:d80e     ??         BEh
   f000:d80f     ??         11h
   f000:d810     ??         CDh
   f000:d811     ??         0Fh
   f000:d812     ??         DBh
   f000:d813     ??         08h
   f000:d814     ??         F0h
   f000:d815     ??         09h
   f000:d816     ??         8Bh
   f000:d817     ??         0Ah
   f000:d818     ??         F0h
   f000:d819     ??         09h
   f000:d81a     ??         A2h
   f000:d81b     ??         17h
   f000:d81c     ??         22h    "
   f000:d81d     ??         15h
   f000:d81e     ??         EBh
   f000:d81f     ??         13h
   f000:d820     ??         BEh
   f000:d821     ??         11h
   f000:d822     ??         F0h
   f000:d823     ??         09h
   f000:d824     ??         8Bh
   f000:d825     ??         0Ah
   f000:d826     ??         D1h
   f000:d827     ??         0Bh
   f000:d828     ??         8Bh
   f000:d829     ??         0Ah
   f000:d82a     ??         A9h
   f000:d82b     ??         1Ah
   f000:d82c     ??         A2h
   f000:d82d     ??         17h
   f000:d82e     ??         22h    "
   f000:d82f     ??         15h
   f000:d830     ??         EBh
   f000:d831     ??         13h
   f000:d832     ??         8Bh
   f000:d833     ??         0Ah
   f000:d834     ??         D1h
   f000:d835     ??         0Bh
   f000:d836     ??         4Ch    L
   f000:d837     ??         0Dh
   f000:d838     ??         D1h
   f000:d839     ??         0Bh
   f000:d83a     ??         41h    A
   f000:d83b     ??         1Ch
   f000:d83c     ??         A9h
   f000:d83d     ??         1Ah
   f000:d83e     ??         A2h
   f000:d83f     ??         17h
   f000:d840     ??         22h    "
   f000:d841     ??         15h
   f000:d842     ??         D1h
   f000:d843     ??         0Bh
   f000:d844     ??         4Ch    L
   f000:d845     ??         0Dh
   f000:d846     ??         17h
   f000:d847     ??         0Eh
   f000:d848     ??         4Ch    L
   f000:d849     ??         0Dh
   f000:d84a     ??         4Ch    L
   f000:d84b     ??         0Dh
   f000:d84c     ??         17h
   f000:d84d     ??         0Eh
   f000:d84e     ??         CDh
   f000:d84f     ??         0Fh
   f000:d850     ??         EBh
   f000:d851     ??         13h
   f000:d852     ??         D1h
   f000:d853     ??         0Bh
   f000:d854     ??         4Ch    L
   f000:d855     ??         0Dh
   f000:d856     ??         17h
   f000:d857     ??         0Eh
   f000:d858     ??         B7h
   f000:d859     ??         10h
   f000:d85a     ??         8Bh
   f000:d85b     ??         0Ah
   f000:d85c     ??         D1h
   f000:d85d     ??         0Bh
   f000:d85e     ??         4Ch    L
   f000:d85f     ??         0Dh
   f000:d860     ??         CDh
   f000:d861     ??         0Fh
   f000:d862     ??         F0h
   f000:d863     ??         09h
   f000:d864     ??         8Bh
   f000:d865     ??         0Ah
   f000:d866     ??         D1h
   f000:d867     ??         0Bh
   f000:d868     ??         17h
   f000:d869     ??         0Eh
   f000:d86a     ??         D1h
   f000:d86b     ??         0Bh
   f000:d86c     ??         5Bh    [
   f000:d86d     ??         08h
   f000:d86e     ??         E3h
   f000:d86f     ??         07h
   f000:d870     ??         09h
   f000:d871     ??         07h
   f000:d872     ??         5Bh    [
   f000:d873     ??         08h
   f000:d874     ??         E8h
   f000:d875     ??         05h
   f000:d876     ??         09h
   f000:d877     ??         07h
   f000:d878     ??         A3h
   f000:d879     ??         06h
   f000:d87a     ??         09h
   f000:d87b     ??         07h
   f000:d87c     ??         E8h
   f000:d87d     ??         05h
   f000:d87e     ??         09h
   f000:d87f     ??         07h
   f000:d880     ??         A3h
   f000:d881     ??         06h
   f000:d882     ??         E8h
   f000:d883     ??         05h
   f000:d884     ??         5Bh    [
   f000:d885     ??         08h
   f000:d886     ??         09h
   f000:d887     ??         07h
   f000:d888     ??         8Bh
   f000:d889     ??         0Ah
   f000:d88a     ??         20h     
   f000:d88b     ds         "         НАЙДЕН",01h
   f000:d89c     ds         "ВКЛЮЧИТЕ РЕЖИМ \"ВОСПРОИЗВЕДЕНИЕ\"",0
   f000:d8e2     ds         "ПРОИЗВОДИТСЯ ЗАГРУЗКА ФАЙЛА"
   f000:d8fe     ds         "ОШИБКА ВВОДА/ВЫВОДА КАССЕТЫ",01h,01h,
   f000:d9a3     ds         "ОТСУТСТВУЕТ ПРИЗНАК ФАЙЛА В ФОРМАТЕ З
   f000:d9d4     ds         "ВЫКЛЮЧИТЕ РЕЖИМ \"ВОСПРОИЗВЕДЕНИЕ\"",
   f000:da3a     ds         "          ПРОПУЩЕН",01h,01h
   f000:da4f     ds         "НУЖНА ЗАГРУЗКА КАССЕТЫ ?",01h,"ДА -> 
   f000:da97     ds         "ПОСТАВЬТЕ КАССЕТУ В ИСХОДНОЕ СОСТОЯНИ
   f000:daef     ds         "ВЫБЕРИТЕ НЕОБХОДИМЫЙ РЕЖИМ РАБОТЫ НАЖ
   f000:dbc2     ds         "НЕПРАВИЛЬНО ВЫБРАН РЕЖИМ"
   f000:dbdb     ds         "НЕТ ДИСКА ИЛИ НЕИСПРАВЕН ДИСКОВОД"
   f000:dbfd     ds         "НЕТ КАРТРИДЖА"
   f000:dc0b     ds         "КОМПЬЮТЕР"                             ; КОМПЬЮТЕР
   f000:dc14     ??         00h
   f000:dc15     ds         "№",1Eh,"p",1Ch,"x<llfЬc\u008Ca\f`\f`\  ; Binary image of M K 8
   f000:dc63     ds         "ИК АН УССР (Киев)&МПОВТ (Минск)"       ; ИК АН УССР (Киев)&МПОВТ (Минск)
   f000:dc82     ??         00h
   f000:dc83     ds         "ПРИГЛАШАЕТ ВАС К РАБОТЕ"               ; ПРИГЛАШАЕТ ВАС К РАБОТЕ
   f000:dc9a     ??         00h
   f000:dc9b     ??         FFh
   f000:dc9c     ??         FFh
   f000:dc9d     ??         FFh
   f000:dc9e     ??         FFh
   f000:dc9f     ??         FFh
   f000:dca0     ??         FFh
   f000:dca1     ??         FFh
   f000:dca2     ??         FFh
   f000:dca3     ??         FFh
   f000:dca4     ??         FFh
   f000:dca5     ??         FFh
   f000:dca6     ??         FFh
   f000:dca7     ??         FFh
   f000:dca8     ??         FFh
   f000:dca9     ??         FFh
   f000:dcaa     ??         FFh
   f000:dcab     ??         FFh
   f000:dcac     ??         FFh
   f000:dcad     ??         FFh
   f000:dcae     ??         FFh
   f000:dcaf     ??         FFh
   f000:dcb0     ??         FFh
   f000:dcb1     ??         FFh
   f000:dcb2     ??         FFh
   f000:dcb3     ??         FFh
   f000:dcb4     ??         FFh
   f000:dcb5     ??         FFh
   f000:dcb6     ??         FFh
   f000:dcb7     ??         FFh
   f000:dcb8     ??         FFh
   f000:dcb9     ??         FFh
   f000:dcba     ??         FFh
   f000:dcbb     ??         FFh
   f000:dcbc     ??         FFh
   f000:dcbd     ??         FFh
   f000:dcbe     ??         FFh
   f000:dcbf     ??         FFh
   f000:dcc0     ??         FFh
   f000:dcc1     ??         FFh
   f000:dcc2     ??         FFh
   f000:dcc3     ??         FFh
   f000:dcc4     ??         FFh
   f000:dcc5     ??         FFh
   f000:dcc6     ??         FFh
   f000:dcc7     ??         FFh
   f000:dcc8     ??         FFh
   f000:dcc9     ??         FFh
   f000:dcca     ??         FFh
   f000:dccb     ??         FFh
   f000:dccc     ??         FFh
   f000:dccd     ??         FFh
   f000:dcce     ??         FFh
   f000:dccf     ??         FFh
   f000:dcd0     ??         FFh
   f000:dcd1     ??         FFh
   f000:dcd2     ??         FFh
   f000:dcd3     ??         FFh
   f000:dcd4     ??         FFh
   f000:dcd5     ??         FFh
   f000:dcd6     ??         FFh
   f000:dcd7     ??         FFh
   f000:dcd8     ??         FFh
   f000:dcd9     ??         FFh
   f000:dcda     ??         FFh
   f000:dcdb     ??         FFh
   f000:dcdc     ??         FFh
   f000:dcdd     ??         FFh
   f000:dcde     ??         FFh
   f000:dcdf     ??         FFh
   f000:dce0     ??         FFh
   f000:dce1     ??         FFh
   f000:dce2     ??         FFh
   f000:dce3     ??         FFh
   f000:dce4     ??         FFh
   f000:dce5     ??         FFh
   f000:dce6     ??         FFh
   f000:dce7     ??         FFh
   f000:dce8     ??         FFh
   f000:dce9     ??         FFh
   f000:dcea     ??         FFh
   f000:dceb     ??         FFh
   f000:dcec     ??         FFh
   f000:dced     ??         FFh
   f000:dcee     ??         FFh
   f000:dcef     ??         FFh
   f000:dcf0     ??         FFh
   f000:dcf1     ??         FFh
   f000:dcf2     ??         FFh
   f000:dcf3     ??         FFh
   f000:dcf4     ??         FFh
   f000:dcf5     ??         FFh
   f000:dcf6     ??         FFh
   f000:dcf7     ??         FFh
   f000:dcf8     ??         FFh
   f000:dcf9     ??         FFh
   f000:dcfa     ??         FFh
   f000:dcfb     ??         FFh
   f000:dcfc     ??         FFh
   f000:dcfd     ??         FFh
   f000:dcfe     ??         FFh
   f000:dcff     ??         FFh
   f000:dd00     ??         FFh
   f000:dd01     ??         FFh
   f000:dd02     ??         FFh
   f000:dd03     ??         FFh
   f000:dd04     ??         FFh
   f000:dd05     ??         FFh
   f000:dd06     ??         FFh
   f000:dd07     ??         FFh
   f000:dd08     ??         FFh
   f000:dd09     ??         FFh
   f000:dd0a     ??         FFh
   f000:dd0b     ??         FFh
   f000:dd0c     ??         FFh
   f000:dd0d     ??         FFh
   f000:dd0e     ??         FFh
   f000:dd0f     ??         FFh
   f000:dd10     ??         FFh
   f000:dd11     ??         FFh
   f000:dd12     ??         FFh
   f000:dd13     ??         FFh
   f000:dd14     ??         FFh
   f000:dd15     ??         FFh
   f000:dd16     ??         FFh
   f000:dd17     ??         FFh
   f000:dd18     ??         FFh
   f000:dd19     ??         FFh
   f000:dd1a     ??         FFh
   f000:dd1b     ??         FFh
   f000:dd1c     ??         FFh
   f000:dd1d     ??         FFh
   f000:dd1e     ??         FFh
   f000:dd1f     ??         FFh
   f000:dd20     ??         FFh
   f000:dd21     ??         FFh
   f000:dd22     ??         FFh
   f000:dd23     ??         FFh
   f000:dd24     ??         FFh
   f000:dd25     ??         FFh
   f000:dd26     ??         FFh
   f000:dd27     ??         FFh
   f000:dd28     ??         FFh
   f000:dd29     ??         FFh
   f000:dd2a     ??         FFh
   f000:dd2b     ??         FFh
   f000:dd2c     ??         FFh
   f000:dd2d     ??         FFh
   f000:dd2e     ??         FFh
   f000:dd2f     ??         FFh
   f000:dd30     ??         FFh
   f000:dd31     ??         FFh
   f000:dd32     ??         FFh
   f000:dd33     ??         FFh
   f000:dd34     ??         FFh
   f000:dd35     ??         FFh
   f000:dd36     ??         FFh
   f000:dd37     ??         FFh
   f000:dd38     ??         FFh
   f000:dd39     ??         FFh
   f000:dd3a     ??         FFh
   f000:dd3b     ??         FFh
   f000:dd3c     ??         FFh
   f000:dd3d     ??         FFh
   f000:dd3e     ??         FFh
   f000:dd3f     ??         FFh
   f000:dd40     ??         FFh
   f000:dd41     ??         FFh
   f000:dd42     ??         FFh
   f000:dd43     ??         FFh
   f000:dd44     ??         FFh
   f000:dd45     ??         FFh
   f000:dd46     ??         FFh
   f000:dd47     ??         FFh
   f000:dd48     ??         FFh
   f000:dd49     ??         FFh
   f000:dd4a     ??         FFh
   f000:dd4b     ??         FFh
   f000:dd4c     ??         FFh
   f000:dd4d     ??         FFh
   f000:dd4e     ??         FFh
   f000:dd4f     ??         FFh
   f000:dd50     ??         FFh
   f000:dd51     ??         FFh
   f000:dd52     ??         FFh
   f000:dd53     ??         FFh
   f000:dd54     ??         FFh
   f000:dd55     ??         FFh
   f000:dd56     ??         FFh
   f000:dd57     ??         FFh
   f000:dd58     ??         FFh
   f000:dd59     ??         FFh
   f000:dd5a     ??         FFh
   f000:dd5b     ??         FFh
   f000:dd5c     ??         FFh
   f000:dd5d     ??         FFh
   f000:dd5e     ??         FFh
   f000:dd5f     ??         FFh
   f000:dd60     ??         FFh
   f000:dd61     ??         FFh
   f000:dd62     ??         FFh
   f000:dd63     ??         FFh
   f000:dd64     ??         FFh
   f000:dd65     ??         FFh
   f000:dd66     ??         FFh
   f000:dd67     ??         FFh
   f000:dd68     ??         FFh
   f000:dd69     ??         FFh
   f000:dd6a     ??         FFh
   f000:dd6b     ??         FFh
   f000:dd6c     ??         FFh
   f000:dd6d     ??         FFh
   f000:dd6e     ??         FFh
   f000:dd6f     ??         FFh
   f000:dd70     ??         FFh
   f000:dd71     ??         FFh
   f000:dd72     ??         FFh
   f000:dd73     ??         FFh
   f000:dd74     ??         FFh
   f000:dd75     ??         FFh
   f000:dd76     ??         FFh
   f000:dd77     ??         FFh
   f000:dd78     ??         FFh
   f000:dd79     ??         FFh
   f000:dd7a     ??         FFh
   f000:dd7b     ??         FFh
   f000:dd7c     ??         FFh
   f000:dd7d     ??         FFh
   f000:dd7e     ??         FFh
   f000:dd7f     ??         FFh
   f000:dd80     ??         FFh
   f000:dd81     ??         FFh
   f000:dd82     ??         FFh
   f000:dd83     ??         FFh
   f000:dd84     ??         FFh
   f000:dd85     ??         FFh
   f000:dd86     ??         FFh
   f000:dd87     ??         FFh
   f000:dd88     ??         FFh
   f000:dd89     ??         FFh
   f000:dd8a     ??         FFh
   f000:dd8b     ??         FFh
   f000:dd8c     ??         FFh
   f000:dd8d     ??         FFh
   f000:dd8e     ??         FFh
   f000:dd8f     ??         FFh
   f000:dd90     ??         FFh
   f000:dd91     ??         FFh
   f000:dd92     ??         FFh
   f000:dd93     ??         FFh
   f000:dd94     ??         FFh
   f000:dd95     ??         FFh
   f000:dd96     ??         FFh
   f000:dd97     ??         FFh
   f000:dd98     ??         FFh
   f000:dd99     ??         FFh
   f000:dd9a     ??         FFh
   f000:dd9b     ??         FFh
   f000:dd9c     ??         FFh
   f000:dd9d     ??         FFh
   f000:dd9e     ??         FFh
   f000:dd9f     ??         FFh
   f000:dda0     ??         FFh
   f000:dda1     ??         FFh
   f000:dda2     ??         FFh
   f000:dda3     ??         FFh
   f000:dda4     ??         FFh
   f000:dda5     ??         FFh
   f000:dda6     ??         FFh
   f000:dda7     ??         FFh
   f000:dda8     ??         FFh
   f000:dda9     ??         FFh
   f000:ddaa     ??         FFh
   f000:ddab     ??         FFh
   f000:ddac     ??         FFh
   f000:ddad     ??         FFh
   f000:ddae     ??         FFh
   f000:ddaf     ??         FFh
   f000:ddb0     ??         FFh
   f000:ddb1     ??         FFh
   f000:ddb2     ??         FFh
   f000:ddb3     ??         FFh
   f000:ddb4     ??         FFh
   f000:ddb5     ??         FFh
   f000:ddb6     ??         FFh
   f000:ddb7     ??         FFh
   f000:ddb8     ??         FFh
   f000:ddb9     ??         FFh
   f000:ddba     ??         FFh
   f000:ddbb     ??         FFh
   f000:ddbc     ??         FFh
   f000:ddbd     ??         FFh
   f000:ddbe     ??         FFh
   f000:ddbf     ??         FFh
   f000:ddc0     ??         FFh
   f000:ddc1     ??         FFh
   f000:ddc2     ??         FFh
   f000:ddc3     ??         FFh
   f000:ddc4     ??         FFh
   f000:ddc5     ??         FFh
   f000:ddc6     ??         FFh
   f000:ddc7     ??         FFh
   f000:ddc8     ??         FFh
   f000:ddc9     ??         FFh
   f000:ddca     ??         FFh
   f000:ddcb     ??         FFh
   f000:ddcc     ??         FFh
   f000:ddcd     ??         FFh
   f000:ddce     ??         FFh
   f000:ddcf     ??         FFh
   f000:ddd0     ??         FFh
   f000:ddd1     ??         FFh
   f000:ddd2     ??         FFh
   f000:ddd3     ??         FFh
   f000:ddd4     ??         FFh
   f000:ddd5     ??         FFh
   f000:ddd6     ??         FFh
   f000:ddd7     ??         FFh
   f000:ddd8     ??         FFh
   f000:ddd9     ??         FFh
   f000:ddda     ??         FFh
   f000:dddb     ??         FFh
   f000:dddc     ??         FFh
   f000:dddd     ??         FFh
   f000:ddde     ??         FFh
   f000:dddf     ??         FFh
   f000:dde0     ??         FFh
   f000:dde1     ??         FFh
   f000:dde2     ??         FFh
   f000:dde3     ??         FFh
   f000:dde4     ??         FFh
   f000:dde5     ??         FFh
   f000:dde6     ??         FFh
   f000:dde7     ??         FFh
   f000:dde8     ??         FFh
   f000:dde9     ??         FFh
   f000:ddea     ??         FFh
   f000:ddeb     ??         FFh
   f000:ddec     ??         FFh
   f000:dded     ??         FFh
   f000:ddee     ??         FFh
   f000:ddef     ??         FFh
   f000:ddf0     ??         FFh
   f000:ddf1     ??         FFh
   f000:ddf2     ??         FFh
   f000:ddf3     ??         FFh
   f000:ddf4     ??         FFh
   f000:ddf5     ??         FFh
   f000:ddf6     ??         FFh
   f000:ddf7     ??         FFh
   f000:ddf8     ??         FFh
   f000:ddf9     ??         FFh
   f000:ddfa     ??         FFh
   f000:ddfb     ??         FFh
   f000:ddfc     ??         FFh
   f000:ddfd     ??         FFh
   f000:ddfe     ??         FFh
   f000:ddff     ??         FFh
   f000:de00     ??         FFh
   f000:de01     ??         FFh
   f000:de02     ??         FFh
   f000:de03     ??         FFh
   f000:de04     ??         FFh
   f000:de05     ??         FFh
   f000:de06     ??         FFh
   f000:de07     ??         FFh
   f000:de08     ??         FFh
   f000:de09     ??         FFh
   f000:de0a     ??         FFh
   f000:de0b     ??         FFh
   f000:de0c     ??         FFh
   f000:de0d     ??         FFh
   f000:de0e     ??         FFh
   f000:de0f     ??         FFh
   f000:de10     ??         FFh
   f000:de11     ??         FFh
   f000:de12     ??         FFh
   f000:de13     ??         FFh
   f000:de14     ??         FFh
   f000:de15     ??         FFh
   f000:de16     ??         FFh
   f000:de17     ??         FFh
   f000:de18     ??         FFh
   f000:de19     ??         FFh
   f000:de1a     ??         FFh
   f000:de1b     ??         FFh
   f000:de1c     ??         FFh
   f000:de1d     ??         FFh
   f000:de1e     ??         FFh
   f000:de1f     ??         FFh
   f000:de20     ??         FFh
   f000:de21     ??         FFh
   f000:de22     ??         FFh
   f000:de23     ??         FFh
   f000:de24     ??         FFh
   f000:de25     ??         FFh
   f000:de26     ??         FFh
   f000:de27     ??         FFh
   f000:de28     ??         FFh
   f000:de29     ??         FFh
   f000:de2a     ??         FFh
   f000:de2b     ??         FFh
   f000:de2c     ??         FFh
   f000:de2d     ??         FFh
   f000:de2e     ??         FFh
   f000:de2f     ??         FFh
   f000:de30     ??         FFh
   f000:de31     ??         FFh
   f000:de32     ??         FFh
   f000:de33     ??         FFh
   f000:de34     ??         FFh
   f000:de35     ??         FFh
   f000:de36     ??         FFh
   f000:de37     ??         FFh
   f000:de38     ??         FFh
   f000:de39     ??         FFh
   f000:de3a     ??         FFh
   f000:de3b     ??         FFh
   f000:de3c     ??         FFh
   f000:de3d     ??         FFh
   f000:de3e     ??         FFh
   f000:de3f     ??         FFh
   f000:de40     ??         FFh
   f000:de41     ??         FFh
   f000:de42     ??         FFh
   f000:de43     ??         FFh
   f000:de44     ??         FFh
   f000:de45     ??         FFh
   f000:de46     ??         FFh
   f000:de47     ??         FFh
   f000:de48     ??         FFh
   f000:de49     ??         FFh
   f000:de4a     ??         FFh
   f000:de4b     ??         FFh
   f000:de4c     ??         FFh
   f000:de4d     ??         FFh
   f000:de4e     ??         FFh
   f000:de4f     ??         FFh
   f000:de50     ??         FFh
   f000:de51     ??         FFh
   f000:de52     ??         FFh
   f000:de53     ??         FFh
   f000:de54     ??         FFh
   f000:de55     ??         FFh
   f000:de56     ??         FFh
   f000:de57     ??         FFh
   f000:de58     ??         FFh
   f000:de59     ??         FFh
   f000:de5a     ??         FFh
   f000:de5b     ??         FFh
   f000:de5c     ??         FFh
   f000:de5d     ??         FFh
   f000:de5e     ??         FFh
   f000:de5f     ??         FFh
   f000:de60     ??         FFh
   f000:de61     ??         FFh
   f000:de62     ??         FFh
   f000:de63     ??         FFh
   f000:de64     ??         FFh
   f000:de65     ??         FFh
   f000:de66     ??         FFh
   f000:de67     ??         FFh
   f000:de68     ??         FFh
   f000:de69     ??         FFh
   f000:de6a     ??         FFh
   f000:de6b     ??         FFh
   f000:de6c     ??         FFh
   f000:de6d     ??         FFh
   f000:de6e     ??         FFh
   f000:de6f     ??         FFh
   f000:de70     ??         FFh
   f000:de71     ??         FFh
   f000:de72     ??         FFh
   f000:de73     ??         FFh
   f000:de74     ??         FFh
   f000:de75     ??         FFh
   f000:de76     ??         FFh
   f000:de77     ??         FFh
   f000:de78     ??         FFh
   f000:de79     ??         FFh
   f000:de7a     ??         FFh
   f000:de7b     ??         FFh
   f000:de7c     ??         FFh
   f000:de7d     ??         FFh
   f000:de7e     ??         FFh
   f000:de7f     ??         FFh
   f000:de80     ??         FFh
   f000:de81     ??         FFh
   f000:de82     ??         FFh
   f000:de83     ??         FFh
   f000:de84     ??         FFh
   f000:de85     ??         FFh
   f000:de86     ??         FFh
   f000:de87     ??         FFh
   f000:de88     ??         FFh
   f000:de89     ??         FFh
   f000:de8a     ??         FFh
   f000:de8b     ??         FFh
   f000:de8c     ??         FFh
   f000:de8d     ??         FFh
   f000:de8e     ??         FFh
   f000:de8f     ??         FFh
   f000:de90     ??         FFh
   f000:de91     ??         FFh
   f000:de92     ??         FFh
   f000:de93     ??         FFh
   f000:de94     ??         FFh
   f000:de95     ??         FFh
   f000:de96     ??         FFh
   f000:de97     ??         FFh
   f000:de98     ??         FFh
   f000:de99     ??         FFh
   f000:de9a     ??         FFh
   f000:de9b     ??         FFh
   f000:de9c     ??         FFh
   f000:de9d     ??         FFh
   f000:de9e     ??         FFh
   f000:de9f     ??         FFh
   f000:dea0     ??         FFh
   f000:dea1     ??         FFh
   f000:dea2     ??         FFh
   f000:dea3     ??         FFh
   f000:dea4     ??         FFh
   f000:dea5     ??         FFh
   f000:dea6     ??         FFh
   f000:dea7     ??         FFh
   f000:dea8     ??         FFh
   f000:dea9     ??         FFh
   f000:deaa     ??         FFh
   f000:deab     ??         FFh
   f000:deac     ??         FFh
   f000:dead     ??         FFh
   f000:deae     ??         FFh
   f000:deaf     ??         FFh
   f000:deb0     ??         FFh
   f000:deb1     ??         FFh
   f000:deb2     ??         FFh
   f000:deb3     ??         FFh
   f000:deb4     ??         FFh
   f000:deb5     ??         FFh
   f000:deb6     ??         FFh
   f000:deb7     ??         FFh
   f000:deb8     ??         FFh
   f000:deb9     ??         FFh
   f000:deba     ??         FFh
   f000:debb     ??         FFh
   f000:debc     ??         FFh
   f000:debd     ??         FFh
   f000:debe     ??         FFh
   f000:debf     ??         FFh
   f000:dec0     ??         FFh
   f000:dec1     ??         FFh
   f000:dec2     ??         FFh
   f000:dec3     ??         FFh
   f000:dec4     ??         FFh
   f000:dec5     ??         FFh
   f000:dec6     ??         FFh
   f000:dec7     ??         FFh
   f000:dec8     ??         FFh
   f000:dec9     ??         FFh
   f000:deca     ??         FFh
   f000:decb     ??         FFh
   f000:decc     ??         FFh
   f000:decd     ??         FFh
   f000:dece     ??         FFh
   f000:decf     ??         FFh
   f000:ded0     ??         FFh
   f000:ded1     ??         FFh
   f000:ded2     ??         FFh
   f000:ded3     ??         FFh
   f000:ded4     ??         FFh
   f000:ded5     ??         FFh
   f000:ded6     ??         FFh
   f000:ded7     ??         FFh
   f000:ded8     ??         FFh
   f000:ded9     ??         FFh
   f000:deda     ??         FFh
   f000:dedb     ??         FFh
   f000:dedc     ??         FFh
   f000:dedd     ??         FFh
   f000:dede     ??         FFh
   f000:dedf     ??         FFh
   f000:dee0     ??         FFh
   f000:dee1     ??         FFh
   f000:dee2     ??         FFh
   f000:dee3     ??         FFh
   f000:dee4     ??         FFh
   f000:dee5     ??         FFh
   f000:dee6     ??         FFh
   f000:dee7     ??         FFh
   f000:dee8     ??         FFh
   f000:dee9     ??         FFh
   f000:deea     ??         FFh
   f000:deeb     ??         FFh
   f000:deec     ??         FFh
   f000:deed     ??         FFh
   f000:deee     ??         FFh
   f000:deef     ??         FFh
   f000:def0     ??         FFh
   f000:def1     ??         FFh
   f000:def2     ??         FFh
   f000:def3     ??         FFh
   f000:def4     ??         FFh
   f000:def5     ??         FFh
   f000:def6     ??         FFh
   f000:def7     ??         FFh
   f000:def8     ??         FFh
   f000:def9     ??         FFh
   f000:defa     ??         FFh
   f000:defb     ??         FFh
   f000:defc     ??         FFh
   f000:defd     ??         FFh
   f000:defe     ??         FFh
   f000:deff     ??         FFh
   f000:df00     ??         FFh
   f000:df01     ??         FFh
   f000:df02     ??         FFh
   f000:df03     ??         FFh
   f000:df04     ??         FFh
   f000:df05     ??         FFh
   f000:df06     ??         FFh
   f000:df07     ??         FFh
   f000:df08     ??         FFh
   f000:df09     ??         FFh
   f000:df0a     ??         FFh
   f000:df0b     ??         FFh
   f000:df0c     ??         FFh
   f000:df0d     ??         FFh
   f000:df0e     ??         FFh
   f000:df0f     ??         FFh
   f000:df10     ??         FFh
   f000:df11     ??         FFh
   f000:df12     ??         FFh
   f000:df13     ??         FFh
   f000:df14     ??         FFh
   f000:df15     ??         FFh
   f000:df16     ??         FFh
   f000:df17     ??         FFh
   f000:df18     ??         FFh
   f000:df19     ??         FFh
   f000:df1a     ??         FFh
   f000:df1b     ??         FFh
   f000:df1c     ??         FFh
   f000:df1d     ??         FFh
   f000:df1e     ??         FFh
   f000:df1f     ??         FFh
   f000:df20     ??         FFh
   f000:df21     ??         FFh
   f000:df22     ??         FFh
   f000:df23     ??         FFh
   f000:df24     ??         FFh
   f000:df25     ??         FFh
   f000:df26     ??         FFh
   f000:df27     ??         FFh
   f000:df28     ??         FFh
   f000:df29     ??         FFh
   f000:df2a     ??         FFh
   f000:df2b     ??         FFh
   f000:df2c     ??         FFh
   f000:df2d     ??         FFh
   f000:df2e     ??         FFh
   f000:df2f     ??         FFh
   f000:df30     ??         FFh
   f000:df31     ??         FFh
   f000:df32     ??         FFh
   f000:df33     ??         FFh
   f000:df34     ??         FFh
   f000:df35     ??         FFh
   f000:df36     ??         FFh
   f000:df37     ??         FFh
   f000:df38     ??         FFh
   f000:df39     ??         FFh
   f000:df3a     ??         FFh
   f000:df3b     ??         FFh
   f000:df3c     ??         FFh
   f000:df3d     ??         FFh
   f000:df3e     ??         FFh
   f000:df3f     ??         FFh
   f000:df40     ??         FFh
   f000:df41     ??         FFh
   f000:df42     ??         FFh
   f000:df43     ??         FFh
   f000:df44     ??         FFh
   f000:df45     ??         FFh
   f000:df46     ??         FFh
   f000:df47     ??         FFh
   f000:df48     ??         FFh
   f000:df49     ??         FFh
   f000:df4a     ??         FFh
   f000:df4b     ??         FFh
   f000:df4c     ??         FFh
   f000:df4d     ??         FFh
   f000:df4e     ??         FFh
   f000:df4f     ??         FFh
   f000:df50     ??         FFh
   f000:df51     ??         FFh
   f000:df52     ??         FFh
   f000:df53     ??         FFh
   f000:df54     ??         FFh
   f000:df55     ??         FFh
   f000:df56     ??         FFh
   f000:df57     ??         FFh
   f000:df58     ??         FFh
   f000:df59     ??         FFh
   f000:df5a     ??         FFh
   f000:df5b     ??         FFh
   f000:df5c     ??         FFh
   f000:df5d     ??         FFh
   f000:df5e     ??         FFh
   f000:df5f     ??         FFh
   f000:df60     ??         FFh
   f000:df61     ??         FFh
   f000:df62     ??         FFh
   f000:df63     ??         FFh
   f000:df64     ??         FFh
   f000:df65     ??         FFh
   f000:df66     ??         FFh
   f000:df67     ??         FFh
   f000:df68     ??         FFh
   f000:df69     ??         FFh
   f000:df6a     ??         FFh
   f000:df6b     ??         FFh
   f000:df6c     ??         FFh
   f000:df6d     ??         FFh
   f000:df6e     ??         FFh
   f000:df6f     ??         FFh
   f000:df70     ??         FFh
   f000:df71     ??         FFh
   f000:df72     ??         FFh
   f000:df73     ??         FFh
   f000:df74     ??         FFh
   f000:df75     ??         FFh
   f000:df76     ??         FFh
   f000:df77     ??         FFh
   f000:df78     ??         FFh
   f000:df79     ??         FFh
   f000:df7a     ??         FFh
   f000:df7b     ??         FFh
   f000:df7c     ??         FFh
   f000:df7d     ??         FFh
   f000:df7e     ??         FFh
   f000:df7f     ??         FFh
   f000:df80     ??         FFh
   f000:df81     ??         FFh
   f000:df82     ??         FFh
   f000:df83     ??         FFh
   f000:df84     ??         FFh
   f000:df85     ??         FFh
   f000:df86     ??         FFh
   f000:df87     ??         FFh
   f000:df88     ??         FFh
   f000:df89     ??         FFh
   f000:df8a     ??         FFh
   f000:df8b     ??         FFh
   f000:df8c     ??         FFh
   f000:df8d     ??         FFh
   f000:df8e     ??         FFh
   f000:df8f     ??         FFh
   f000:df90     ??         FFh
   f000:df91     ??         FFh
   f000:df92     ??         FFh
   f000:df93     ??         FFh
   f000:df94     ??         FFh
   f000:df95     ??         FFh
   f000:df96     ??         FFh
   f000:df97     ??         FFh
   f000:df98     ??         FFh
   f000:df99     ??         FFh
   f000:df9a     ??         FFh
   f000:df9b     ??         FFh
   f000:df9c     ??         FFh
   f000:df9d     ??         FFh
   f000:df9e     ??         FFh
   f000:df9f     ??         FFh
   f000:dfa0     ??         FFh
   f000:dfa1     ??         FFh
   f000:dfa2     ??         FFh
   f000:dfa3     ??         FFh
   f000:dfa4     ??         FFh
   f000:dfa5     ??         FFh
   f000:dfa6     ??         FFh
   f000:dfa7     ??         FFh
   f000:dfa8     ??         FFh
   f000:dfa9     ??         FFh
   f000:dfaa     ??         FFh
   f000:dfab     ??         FFh
   f000:dfac     ??         FFh
   f000:dfad     ??         FFh
   f000:dfae     ??         FFh
   f000:dfaf     ??         FFh
   f000:dfb0     ??         FFh
   f000:dfb1     ??         FFh
   f000:dfb2     ??         FFh
   f000:dfb3     ??         FFh
   f000:dfb4     ??         FFh
   f000:dfb5     ??         FFh
   f000:dfb6     ??         FFh
   f000:dfb7     ??         FFh
   f000:dfb8     ??         FFh
   f000:dfb9     ??         FFh
   f000:dfba     ??         FFh
   f000:dfbb     ??         FFh
   f000:dfbc     ??         FFh
   f000:dfbd     ??         FFh
   f000:dfbe     ??         FFh
   f000:dfbf     ??         FFh
   f000:dfc0     ??         FFh
   f000:dfc1     ??         FFh
   f000:dfc2     ??         FFh
   f000:dfc3     ??         FFh
   f000:dfc4     ??         FFh
   f000:dfc5     ??         FFh
   f000:dfc6     ??         FFh
   f000:dfc7     ??         FFh
   f000:dfc8     ??         FFh
   f000:dfc9     ??         FFh
   f000:dfca     ??         FFh
   f000:dfcb     ??         FFh
   f000:dfcc     ??         FFh
   f000:dfcd     ??         FFh
   f000:dfce     ??         FFh
   f000:dfcf     ??         FFh
   f000:dfd0     ??         FFh
   f000:dfd1     ??         FFh
   f000:dfd2     ??         FFh
   f000:dfd3     ??         FFh
   f000:dfd4     ??         FFh
   f000:dfd5     ??         FFh
   f000:dfd6     ??         FFh
   f000:dfd7     ??         FFh
   f000:dfd8     ??         FFh
   f000:dfd9     ??         FFh
   f000:dfda     ??         FFh
   f000:dfdb     ??         FFh
   f000:dfdc     ??         FFh
   f000:dfdd     ??         FFh
   f000:dfde     ??         FFh
   f000:dfdf     ??         FFh
   f000:dfe0     ??         FFh
   f000:dfe1     ??         FFh
   f000:dfe2     ??         FFh
   f000:dfe3     ??         FFh
   f000:dfe4     ??         FFh
   f000:dfe5     ??         FFh
   f000:dfe6     ??         FFh
   f000:dfe7     ??         FFh
   f000:dfe8     ??         FFh
   f000:dfe9     ??         FFh
   f000:dfea     ??         FFh
   f000:dfeb     ??         FFh
   f000:dfec     ??         FFh
   f000:dfed     ??         FFh
   f000:dfee     ??         FFh
   f000:dfef     ??         FFh
   f000:dff0     ??         FFh
   f000:dff1     ??         FFh
   f000:dff2     ??         FFh
   f000:dff3     ??         FFh
   f000:dff4     ??         FFh
   f000:dff5     ??         FFh
   f000:dff6     ??         FFh
   f000:dff7     ??         FFh
   f000:dff8     ??         FFh
   f000:dff9     ??         FFh
   f000:dffa     ??         FFh
   f000:dffb     ??         FFh
   f000:dffc     ??         FFh
   f000:dffd     ??         FFh
   f000:dffe     ??         FFh
   f000:dfff     ??         FFh
   f000:e000     ds         "БСВВ ВЕРСИЯ 3.9b\r\n"                  ; БСВВ ВЕРСИЯ
                             C1
   f000:e012     addr       C11                                     ; RETURN ADDRESS C11
                             C2
   f000:e014     addr       C24                                     ; RETURN ADDRESS FOR DUMMY STACK
                             s_B_f000_e017                              XREF[1,1  f000:e3e5(R), f000:e3e5(R)  
                             s_KB_f000_e016
   f000:e016     ds         "KB ДА\r"                               ; KB ДА
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near STGTST_CNT(void)
             undefined         AL:1           <RETURN>
                             ;------------------------------------------------------------
                             ;       THIS SUBROUTINE PERFORMS A READ/WRITE STORAGE TEST ON
                             ;       A 16K BLOCK OF STORAGE.                              
                             ; ENTRY REQUIREMENTS:                                        
                             ;       ES = ADDRESS OF STORAGE SEGMENT BEING TESTED         
                             ;       DS = ADDRESS OF STORAGE SEGMENT BEING TESTED         
                             ;       WHEN ENTERING AT STGTST_CNT, CX MUST BE LOADED WITH  
                             ;       THE BYTE COUNT.                                      
                             ; EXIT PARAMETERS:                                           
                             ;       ZERO FLAG = 0 IF STORAGE ERROR (DATA COMPARE OR PARIT
                             ;              AL = 0 DENOTES A PARITY CHECK. ELSE AL=XOR'ED 
                             ;                     PATTERN OF THE EXPECTED DATA PATTERN VS
                             ;                     ACTUAL DATA READ.                      
                             ;       AX,BX,CX,DX,DI, AND SI ARE ALL DESTROYED.            
                             ;------------------------------------------------------------
                             STGTST_CNT                                 XREF[3]:  f000:e162(c), f000:e206(c), 
                                                                                 f000:e3be(c)  
   f000:e01c     CLD
   f000:e01d     SUB        DI,DI
   f000:e01f     SUB        AX,AX
   f000:e021     MOV        BX,CX
   f000:e023     SHL        BX,0x1
   f000:e025     MOV        AX,0xaaaa                               ; GET DATA PATTERN TO WRITE
   f000:e028     MOV        DX,0xff55                               ; SETUP OTHER DATA PATTERNS TO USE
   f000:e02b     STOSW.REP  ES:DI
                             C3                                         XREF[1]:  f000:e051(j)  
   f000:e02d     DEC        DI
   f000:e02e     STD
                             C4                                         XREF[1]:  f000:e04b(j)  
   f000:e02f     MOV        SI,DI
   f000:e031     MOV        CX,BX
                             C5                                         XREF[1]:  f000:e03f(j)  
   f000:e033     LODSB      SI
   f000:e034     XOR        AL,AH
   f000:e036     JNZ        C7
   f000:e038     AND        AH,AH
   f000:e03a     JZ         C6
   f000:e03c     MOV        AL,DL
   f000:e03e     STOSB      ES:DI
                             C6                                         XREF[1]:  f000:e03a(j)  
   f000:e03f     LOOP       C5
   f000:e041     AND        AH,AH
   f000:e043     JZ         C7
   f000:e045     MOV        AH,AL
   f000:e047     XCHG       DL,DH
   f000:e049     CLD
   f000:e04a     INC        DI
   f000:e04b     JZ         C4
   f000:e04d     DEC        DI
   f000:e04e     MOV        DX,0x1
   f000:e051     JMP        C3
                             C7                                         XREF[2]:  f000:e036(j), f000:e043(j)  
   f000:e053     CLD
   f000:e054     RET
   f000:e055     addr       DAT_f000_00cf
   f000:e057     ??         00h
   f000:e058     ??         00h
   f000:e059     ??         00h
   f000:e05a     ??         00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far Start()
             undefined         AL:1           <RETURN>
                             Start                                      XREF[2]:  KB_INT:f000:eb05(c), 
                                                                                 f000:fff0(c)  
   f000:e05b     CLI
   f000:e05c     MOV        AH,0xd5
   f000:e05e     SAHF
   f000:e05f     JNC        ERR01
   f000:e061     JNZ        ERR01
   f000:e063     JNP        ERR01
   f000:e065     JNS        ERR01
   f000:e067     LAHF
   f000:e068     MOV        CL,0x5
   f000:e06a     SHR        AH,CL
   f000:e06c     JNC        ERR01
   f000:e06e     MOV        AL,0x40
   f000:e070     SHL        AL,0x1
   f000:e072     JNO        ERR01
   f000:e074     XOR        AH,AH
   f000:e076     SAHF
   f000:e077     JBE        ERR01
   f000:e079     JS         ERR01
   f000:e07b     JP         ERR01
   f000:e07d     LAHF
   f000:e07e     MOV        CL,0x5
   f000:e080     SHR        AH,CL
   f000:e082     JC         ERR01
   f000:e084     SHL        AH,0x1
   f000:e086     JO         ERR01
   f000:e088     MOV        AX,0xffff                               ; SETUP ONE'S PATTERN IN AX
   f000:e08b     STC
                             C8                                         XREF[1]:  f000:e0a7(j)  
   f000:e08c     MOV        DS,AX
   f000:e08e     MOV        BX,DS
   f000:e090     MOV        ES,BX
   f000:e092     MOV        CX,ES
   f000:e094     MOV        SS,CX
   f000:e096     MOV        DX,SS
   f000:e098     MOV        SP,DX
   f000:e09a     MOV        BP,SP
   f000:e09c     MOV        SI,BP
   f000:e09e     MOV        DI,SI
   f000:e0a0     JNC        TST1A
   f000:e0a2     XOR        AX,DI                                   ; PATTERN MAKE IT THRU ALL REGS
   f000:e0a4     JNZ        ERR01
   f000:e0a6     CLC
   f000:e0a7     JMP        C8
                             TST1A                                      XREF[1]:  f000:e0a0(j)  
   f000:e0a9     OR         AX,DI                                   ; ZERO PATTERN MAKE IT THRU?
   f000:e0ab     JZ         C10                                     ; YES - GO TO NEXT TEST
                             ERR01                                      XREF[12]: f000:e05f(j), f000:e061(j), 
                                                                                 f000:e063(j), f000:e065(j), 
                                                                                 f000:e06c(j), f000:e072(j), 
                                                                                 f000:e077(j), f000:e079(j), 
                                                                                 f000:e07b(j), f000:e082(j), 
                                                                                 f000:e086(j), f000:e0a4(j)  
   f000:e0ad     HLT
                             ZERO IN AL ALREADY
                             C10                                        XREF[1]:  f000:e0ab(j)  
   f000:e0ae     OUT        0x83,AL                                 ; INITIALIZE DMA PAGE REG
   f000:e0b0     MOV        DX,0x3d8
   f000:e0b3     OUT        DX,AL                                   ; DISABLE COLOR VIDEO
   f000:e0b4     MOV        AL,10001001b                            ; SET 8255 FOR B,A=OUT, C=IN
   f000:e0b6     OUT        0x63,AL                                 ; SET 8255 FOR B,A=OUT, C=IN
   f000:e0b8     MOV        AL,10100101b
   f000:e0ba     OUT        0x61,AL                                 ; ENABLE PARITY CHECKERS AND
                                                                     ; PULL KB CLOCK HI, TRI-STATE
                                                                     ; KEYBOARD INPUTS,ENABLE HIGH
                                                                     ; BANK OF SWITCHES->PORT C(0-3)
   f000:e0bc     MOV        AX,CS                                   ; SETUP SS SEG REG
   f000:e0be     MOV        SS,AX
   f000:e0c0     MOV        DS,AX
   f000:e0c2     CLD
   f000:e0c3     MOV        BX,0xe000                               ; SETUP STARTING ROS ADDR (E0000)
   f000:e0c6     MOV        SP,0xe012                               ; OFFSET C1 SETUP RETURN ADDRESS
   f000:e0c9     JMP        ROS_CHECKSUM                            ; undefined ROS_CHECKSUM(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             C11                                        XREF[1]:  f000:e012(*)  
   f000:e0cc     NOP
   f000:e0cd     NOP
   f000:e0ce     MOV        AL,0x4                                  ; DISABLE DMA CONTROLLER
   f000:e0d0     OUT        0x8,AL
                             ;----- VERIFY THAT TIMER 1 FUNCTIONS OK
   f000:e0d2     MOV        AL,0x54                                 ; SET TIMER 1,LSB,MODE 2
   f000:e0d4     OUT        0x43,AL
   f000:e0d6     MOV        AL,CL                                   ; SET INITIAL TIMER CNT TO 0
   f000:e0d8     OUT        0x41,AL
                             C12                                        XREF[1]:  f000:e0e7(j)  
   f000:e0da     MOV        AL,0x40                                 ; LATCH TIMER 1 COUNT
   f000:e0dc     OUT        0x43,AL
   f000:e0de     CMP        BL,0xff                                 ; YES - SEE IF ALL BITS GO OFF
   f000:e0e1     JZ         C13                                     ; TIMER1_BITS_OFF
   f000:e0e3     IN         AL,0x41                                 ; READ TIMER 1 COUNT
   f000:e0e5     OR         BL,AL                                   ; ALL BITS ON IN TIMER
   f000:e0e7     LOOP       C12                                     ; TIMER1_BITS_ON
   f000:e0e9     HLT                                                ; TIMER 1 FAILURE, HALT SYS
                             C13                                        XREF[1]:  f000:e0e1(j)  
   f000:e0ea     MOV        AL,BL                                   ; SET TIMER 1 CNT
   f000:e0ec     SUB        CX,CX
   f000:e0ee     OUT        0x41,AL
                             C14                                        XREF[1]:  f000:e0fc(j)  
   f000:e0f0     MOV        AL,0x40                                 ; LATCH TIMER 1 COUNT
   f000:e0f2     OUT        0x43,AL
   f000:e0f4     NOP
   f000:e0f5     NOP
   f000:e0f6     IN         AL,0x41                                 ; READ TIMER 1 COUNT
   f000:e0f8     AND        BL,AL
   f000:e0fa     JZ         C15
   f000:e0fc     LOOP       C14                                     ; TIMER_LOOP
   f000:e0fe     HLT                                                ; TIMER ERROR - HALT SYSTEM
                             C15                                        XREF[1]:  f000:e0fa(j)  
   f000:e0ff     OUT        0xd,AL                                  ; (probably) SEND MASTER CLEAR T
   f000:e101     MOV        AL,0xff                                 ; WRITE PATTERN FF TO ALL REGS
                             C16                                        XREF[1]:  f000:e120(j)  
   f000:e103     MOV        BL,AL                                   ; SAVE PATTERN FOR COMPARE
   f000:e105     MOV        BH,AL
   f000:e107     MOV        CX,0x8
   f000:e10a     MOV        DX,0x0                                  ; SETUP I/O PORT ADDR OF REG (00
                             C17                                        XREF[1]:  f000:e11c(j)  
   f000:e10d     OUT        DX,AL
   f000:e10e     PUSH       AX
   f000:e10f     OUT        DX,AL
   f000:e110     MOV        AL,0x1
   f000:e112     IN         AL,DX
   f000:e113     MOV        AH,AL
   f000:e115     IN         AL,DX
   f000:e116     CMP        BX,AX
   f000:e118     JZ         C18
   f000:e11a     HLT
                             C18                                        XREF[1]:  f000:e118(j)  
   f000:e11b     INC        DX
   f000:e11c     LOOP       C17
   f000:e11e     INC        AL
   f000:e120     JZ         C16
                             ----- INITIALIZE AND START DMA FOR MEMORY REFRESH.
   f000:e122     MOV        DS,BX
   f000:e124     MOV        ES,BX
   f000:e126     MOV        AL,0xff
   f000:e128     OUT        0x1,AL
   f000:e12a     PUSH       AX
   f000:e12b     OUT        0x1,AL
   f000:e12d     MOV        AL,0x58
   f000:e12f     OUT        0xb,AL
   f000:e131     MOV        AL,0x0
   f000:e133     MOV        CH,AL
   f000:e135     OUT        0x8,AL
   f000:e137     PUSH       AX
   f000:e138     OUT        0xa,AL
   f000:e13a     MOV        AL,0x12
   f000:e13c     OUT        0x41,AL
   f000:e13e     MOV        AL,0x41
   f000:e140     OUT        0xb,AL
   f000:e142     PUSH       AX
   f000:e143     IN         AL,0x8
   f000:e145     AND        AL,0x10
   f000:e147     JZ         LAB_f000_e14a
   f000:e149     HLT
                             LAB_f000_e14a                              XREF[1]:  f000:e147(j)  
   f000:e14a     MOV        AL,0x42
   f000:e14c     OUT        0xb,AL
   f000:e14e     MOV        AL,0x43
   f000:e150     OUT        0xb,AL
   f000:e152     MOV        BX,word ptr [DAT_ffff_0472]
   f000:e156     MOV        CX,1024                                 ; SETUP CNT TO TEST A 1K BLOCK
   f000:e159     CMP        BX,0x1234
   f000:e15d     JZ         LAB_f000_e168
   f000:e15f     MOV        SP,0xe014
   f000:e162     JMP        STGTST_CNT                              ; undefined STGTST_CNT(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             C24                                        XREF[1]:  f000:e014(*)  
   f000:e165     JZ         C18B                                    ; PROCEED IF STGTST OK
   f000:e167     HLT
                             LAB_f000_e168                              XREF[1]:  f000:e15d(j)  
   f000:e168     SUB        AX,AX
   f000:e16a     STOSW.REP  ES:DI
                             C18B                                       XREF[1]:  f000:e165(j)  
   f000:e16c     MOV        word ptr [DAT_ffff_0472],BX
   f000:e170     MOV        DX,0x80
   f000:e173     MOV        BX,0x2
                             FILL_LOOP                                  XREF[1]:  f000:e199(j)  
   f000:e176     MOV        ES,DX
   f000:e178     SUB        DI,DI
   f000:e17a     MOV        AX,0xaa55                               ; TEST PATTERN
   f000:e17d     MOV        CX,AX
   f000:e17f     MOV        word ptr ES:[DI]=>DAT_0000_0800,AX      ; SEND PATTERN TO MEMORY
   f000:e182     MOV        AL,0xf
   f000:e184     MOV        AX,word ptr ES:[DI]=>DAT_0000_0800
   f000:e187     XOR        AX,CX                                   ; COMPARE PATTERNS
   f000:e189     JNZ        HOW_BIG_END                             ; GO END IF NO COMPARE
   f000:e18b     MOV        CX,512                                  ; SET COUNT FOR 512 WORDS
   f000:e18e     STOSW.REP  ES:DI=>DAT_0000_0800
   f000:e190     ADD        DX,0x40                                 ; POINT TO NEXT 1KB BLOCK
   f000:e193     ADD        BX,0x1
   f000:e196     CMP        DH,0xa0                                 ; TOP OF RAM AREA YET? (A0000)
   f000:e199     JNZ        FILL_LOOP
                             HOW_BIG_END                                XREF[1]:  f000:e189(j)  
   f000:e19b     MOV        word ptr [DAT_ffff_0413],BX             ; SAVE MEMORY SIZE
                             ;----- SETUP STACK SEG AND SP
   f000:e19f     MOV        AX,0x30
   f000:e1a2     MOV        SS,AX
   f000:e1a4     MOV        SP,0x100
                             ;--------------------------------------------------------
                             ;       INITIALIZE THE 8259 INTERRUPT CONTROLLER CHIP   :
                             ;--------------------------------------------------------
                             C25
   f000:e1a7     MOV        AL,0x13                                 ; ICW1 - EDGE, SNGL, ICW4
   f000:e1a9     OUT        0x20,AL
   f000:e1ab     MOV        AL,0x8                                  ; SETUP ICW2 - INT TYPE 8 (8-F)
   f000:e1ad     OUT        0x21,AL
   f000:e1af     MOV        AL,0x9                                  ; SETUP ICW4 - BUFFRD,8086 MODE
   f000:e1b1     OUT        0x21,AL
   f000:e1b3     MOV        AL,0xff                                 ; MASK ALL INTS. OFF
   f000:e1b5     OUT        0x21,AL                                 ; (VIDEO ROUTINE ENABLES INTS.)
                             ;----- SET UP THE INTERRUPT VECTORS TO TEMP INTERRUPT
   f000:e1b7     PUSH       DS=>DAT_0000_03fe
   f000:e1b8     MOV        CX,32                                   ; FILL ALL 32 INTERRUPTS
   f000:e1bb     SUB        DI,DI                                   ; FIRST INTERRUPT LOCATION
   f000:e1bd     MOV        ES,DI                                   ; SET ES=0000 ALSO
                             D3                                         XREF[1]:  f000:e1c6(j)  
   f000:e1bf     MOV        AX,0xff23
   f000:e1c2     STOSW      ES:DI=>DAT_0000_0004
   f000:e1c3     MOV        AX,CS                                   ; GET ADDR OF INTR PROC SEG
   f000:e1c5     STOSW      ES:DI=>DAT_0000_0006
   f000:e1c6     LOOP       D3                                      ; VECTBL0
                             ;----- ESTABLISH BIOS SUBROUTINE CALL INTERRUPT VECTORS
   f000:e1c8     MOV        DI,0x40                                 ; SETUP ADDR TO INTR AREA
   f000:e1cb     PUSH       CS=>DAT_0000_03fc
   f000:e1cc     POP        DS=>DAT_0000_03fc                       ; SETUP ADDR OF VECTOR TABLE
   f000:e1cd     MOV        AX,DS                                   ; *this line is not in IBM 1986 
   f000:e1cf     MOV        SI,0xff03                               ; START WITH VIDEO ENTRY
   f000:e1d2     MOV        CX,16
                             D3A                                        XREF[1]:  f000:e1d8(j)  
   f000:e1d5     MOVSW      ES:DI=>DAT_0000_0040,SI                 ; MOVE VECTOR TABLE TO RAM
   f000:e1d6     INC        DI                                      ; SKIP SEGMENT POINTER
   f000:e1d7     INC        DI
   f000:e1d8     LOOP       D3A
                             ;------------------------------------------------
                             ;       DETERMINE CONFIGURATION AND MFG. MODE   :
                             ;------------------------------------------------
   f000:e1da     POP        DS=>DAT_0000_03fe
   f000:e1db     PUSH       DS=>DAT_0000_03fe
   f000:e1dc     MOV        word ptr [DAT_ffff_0410],0x5261
   f000:e1e2     MOV        AL,10001000b                            ; Program 8255 PIA chip (probably)
   f000:e1e4     OUT        0x63,AL
   f000:e1e6     MOV        AH,0x3
   f000:e1e8     XCHG       AL,AH
   f000:e1ea     SUB        AH,AH
   f000:e1ec     INT        0x10
   f000:e1ee     MOV        BX,0xb800
   f000:e1f1     MOV        DX,0x3d8                                ; PORT FOR COLOR CARD
   f000:e1f4     MOV        CX,0x800
   f000:e1f7     MOV        CH,0x20
   f000:e1f9     OUT        DX,AL                                   ; SET THE CRT MODE, SO THAT CRT 
   f000:e1fa     CMP        word ptr [DAT_ffff_0472],0x1234
   f000:e200     MOV        ES,BX
   f000:e202     JZ         E10
   f000:e204     MOV        DS,BX
   f000:e206     CALL       STGTST_CNT                              ; undefined STGTST_CNT(void)
   f000:e209     JZ         E10
   f000:e20b     JMP        E17
                             E10                                        XREF[2]:  f000:e202(j), f000:e209(j)  
   f000:e20e     MOV        AX,0x3
   f000:e211     INT        0x10
   f000:e213     MOV        AX,0x7020                               ; WRT BLANKS IN REVERSE VIDEO
   f000:e216     JMP        E10_CONTINUE
   f000:e219     ??         FFh
   f000:e21a     ??         FFh
   f000:e21b     ??         FFh
   f000:e21c     ??         FFh
   f000:e21d     ??         FFh
   f000:e21e     ??         FFh
   f000:e21f     ??         FFh
   f000:e220     ??         FFh
   f000:e221     ??         FFh
   f000:e222     ??         FFh
   f000:e223     ??         FFh
   f000:e224     ??         FFh
   f000:e225     ??         FFh
   f000:e226     ??         FFh
   f000:e227     ??         FFh
   f000:e228     ??         FFh
   f000:e229     ??         FFh
   f000:e22a     ??         FFh
   f000:e22b     ??         FFh
   f000:e22c     ??         FFh
   f000:e22d     ??         FFh
   f000:e22e     ??         FFh
   f000:e22f     ??         FFh
   f000:e230     ??         FFh
   f000:e231     ??         FFh
   f000:e232     ??         FFh
   f000:e233     ??         FFh
   f000:e234     ??         FFh
   f000:e235     ??         FFh
   f000:e236     ??         FFh
   f000:e237     ??         FFh
   f000:e238     ??         FFh
   f000:e239     ??         FFh
   f000:e23a     ??         FFh
   f000:e23b     ??         FFh
   f000:e23c     ??         FFh
   f000:e23d     ??         FFh
   f000:e23e     ??         FFh
   f000:e23f     ??         FFh
   f000:e240     ??         FFh
   f000:e241     ??         FFh
   f000:e242     ??         FFh
   f000:e243     ??         FFh
   f000:e244     ??         FFh
   f000:e245     ??         FFh
   f000:e246     ??         FFh
   f000:e247     ??         FFh
   f000:e248     ??         FFh
   f000:e249     ??         FFh
   f000:e24a     ??         FFh
   f000:e24b     ??         FFh
   f000:e24c     ??         FFh
   f000:e24d     ??         FFh
   f000:e24e     ??         FFh
   f000:e24f     ??         FFh
   f000:e250     ??         FFh
   f000:e251     ??         FFh
   f000:e252     ??         FFh
   f000:e253     ??         FFh
   f000:e254     ??         FFh
   f000:e255     ??         FFh
   f000:e256     ??         FFh
   f000:e257     ??         FFh
   f000:e258     ??         FFh
   f000:e259     ??         FFh
   f000:e25a     ??         FFh
   f000:e25b     ??         FFh
   f000:e25c     ??         FFh
   f000:e25d     ??         FFh
   f000:e25e     ??         FFh
   f000:e25f     ??         FFh
   f000:e260     ??         FFh
   f000:e261     ??         FFh
   f000:e262     ??         FFh
   f000:e263     ??         FFh
   f000:e264     ??         FFh
   f000:e265     ??         FFh
   f000:e266     ??         FFh
   f000:e267     ??         FFh
   f000:e268     ??         FFh
   f000:e269     ??         FFh
   f000:e26a     ??         FFh
   f000:e26b     ??         FFh
   f000:e26c     ??         FFh
   f000:e26d     ??         FFh
   f000:e26e     ??         FFh
   f000:e26f     ??         FFh
   f000:e270     ??         FFh
   f000:e271     ??         FFh
   f000:e272     ??         FFh
   f000:e273     ??         FFh
   f000:e274     ??         FFh
   f000:e275     ??         FFh
   f000:e276     ??         FFh
   f000:e277     ??         FFh
   f000:e278     ??         FFh
   f000:e279     ??         FFh
   f000:e27a     ??         FFh
   f000:e27b     ??         FFh
   f000:e27c     ??         FFh
   f000:e27d     ??         FFh
   f000:e27e     ??         FFh
   f000:e27f     ??         FFh
   f000:e280     ??         FFh
   f000:e281     ??         FFh
   f000:e282     ??         FFh
   f000:e283     ??         FFh
   f000:e284     ??         FFh
   f000:e285     ??         FFh
   f000:e286     ??         FFh
   f000:e287     ??         FFh
   f000:e288     ??         FFh
   f000:e289     ??         FFh
   f000:e28a     ??         FFh
   f000:e28b     ??         FFh
   f000:e28c     ??         FFh
   f000:e28d     ??         FFh
   f000:e28e     ??         FFh
   f000:e28f     ??         FFh
   f000:e290     ??         FFh
   f000:e291     ??         FFh
   f000:e292     ??         FFh
   f000:e293     ??         FFh
   f000:e294     ??         FFh
   f000:e295     ??         FFh
   f000:e296     ??         FFh
   f000:e297     ??         FFh
   f000:e298     ??         FFh
   f000:e299     ??         FFh
   f000:e29a     ??         FFh
   f000:e29b     ??         FFh
   f000:e29c     ??         FFh
   f000:e29d     ??         FFh
   f000:e29e     ??         FFh
   f000:e29f     ??         FFh
   f000:e2a0     ??         FFh
   f000:e2a1     ??         FFh
   f000:e2a2     ??         FFh
   f000:e2a3     ??         FFh
   f000:e2a4     ??         FFh
   f000:e2a5     ??         FFh
   f000:e2a6     ??         FFh
   f000:e2a7     ??         FFh
   f000:e2a8     ??         FFh
   f000:e2a9     ??         FFh
   f000:e2aa     ??         FFh
   f000:e2ab     ??         FFh
   f000:e2ac     ??         FFh
   f000:e2ad     ??         FFh
   f000:e2ae     ??         FFh
   f000:e2af     ??         FFh
   f000:e2b0     ??         FFh
   f000:e2b1     ??         FFh
   f000:e2b2     ??         FFh
   f000:e2b3     ??         FFh
   f000:e2b4     ??         FFh
   f000:e2b5     ??         FFh
   f000:e2b6     ??         FFh
   f000:e2b7     ??         FFh
   f000:e2b8     ??         FFh
   f000:e2b9     ??         FFh
   f000:e2ba     ??         FFh
   f000:e2bb     ??         FFh
   f000:e2bc     ??         FFh
   f000:e2bd     ??         FFh
   f000:e2be     ??         FFh
   f000:e2bf     ??         FFh
   f000:e2c0     ??         FFh
   f000:e2c1     ??         FFh
   f000:e2c2     ??         FFh
                             E10_CONTINUE                               XREF[1]:  f000:e216(j)  
   f000:e2c3     SUB        DI,DI                                   ; SETUP STARTING LOC
   f000:e2c5     MOV        CX,0x28                                 ; NO. OF BLANKS TO DISPLAY
   f000:e2c8     STOSW.REP  ES:DI=>DAT_b000_8000                    ; WRITE VIDEO STORAGE
   f000:e2ca     MOV        DX,0x3da                                ; COLOR CARD IS ATTACHED
   f000:e2cd     MOV        AH,0x8
                             E12                                        XREF[1]:  f000:e2f1(j)  
   f000:e2cf     SUB        CX,CX
                             E13                                        XREF[1]:  f000:e2d6(j)  
   f000:e2d1     IN         AL,DX
   f000:e2d2     AND        AL,AH
   f000:e2d4     JNZ        E14
   f000:e2d6     LOOP       E13
   f000:e2d8     JMP        E17
                             E14                                        XREF[1]:  f000:e2d4(j)  
   f000:e2da     SUB        CX,CX
                             E15                                        XREF[1]:  f000:e2e1(j)  
   f000:e2dc     IN         AL,DX
   f000:e2dd     AND        AL,AH
   f000:e2df     JZ         E16
   f000:e2e1     LOOP       E15
                             E17                                        XREF[2]:  f000:e20b(j), f000:e2d8(j)  
   f000:e2e3     POP        DS
   f000:e2e4     PUSH       DS
   f000:e2e5     MOV        DX,0x102
   f000:e2e8     CALL       ERR_BEEP                                ; undefined ERR_BEEP(void)
   f000:e2eb     JMP        E18
                             E16                                        XREF[1]:  f000:e2df(j)  
   f000:e2ed     MOV        CL,0x3
   f000:e2ef     SHR        AH,CL
   f000:e2f1     JNZ        E12                                     ; GO CHECK HORIZONTAL LINE
                             E18                                        XREF[1]:  f000:e2eb(j)  
   f000:e2f3     MOV        AX,0x3
   f000:e2f6     INT        0x10
   f000:e2f8     MOV        SI,0xe000                               ; points to msg:
                                                                     ; БСВВ ВЕРСИЯ 3.90
   f000:e2fb     CALL       P_MSG                                   ; print message from 0xe000
                             ;--------------------------------------------------------
                             ;       8259 INTERRUPT CONTROLLER TEST                  :
                             ;DESCRIPTION                                            :
                             ;       READ/WRITE THE INTERRUPT MASK REGISTER (IMR)    :
                             ;       WITH ALL ONES AND ZEROES. ENABLE SYSTEM         :
                             ;       INTERRUPTS.  MASK DEVICE INTERRUPTS OFF. CHECK  :
                             ;       FOR HOT INTERRUPTS (UNEXPECTED).                :
                             ;--------------------------------------------------------
                             C21
   f000:e2fe     POP        DS
   f000:e2ff     MOV        AL,0x0                                  ; SET IMR TO ZERO
   f000:e301     OUT        0x21,AL
   f000:e303     IN         AL,0x21                                 ; READ IMR
   f000:e305     OR         AL,AL                                   ; IMR = 0?
   f000:e307     JNZ        D6                                      ; GO TO ERR ROUTINE IF NOT 0
   f000:e309     MOV        AL,0xff                                 ; DISABLE DEVICE INTERRUPTS
   f000:e30b     OUT        0x21,AL                                 ; WRITE TO IMR
   f000:e30d     IN         AL,0x21                                 ; READ IMR
   f000:e30f     ADD        AL,0x1                                  ; ALL IMR BITS ON?
   f000:e311     JNZ        D6                                      ; NO - GO TO ERR ROUTINE
                             ;----- CHECK FOR HOT INTERRUPTS
                             ;----- INTERRUPTS ARE MASKED OFF.  CHECK THAT NO INTERRUPTS O
   f000:e313     MOV        [0x46b],AL                              ; CLEAR INTERRUPT FLAG
   f000:e316     STI                                                ; ENABLE EXTERNAL INTERRUPTS
   f000:e317     SUB        CX,CX                                   ; WAIT 1 SEC FOR ANY INTRS THAT
                             D4                                         XREF[1]:  f000:e319(j)  
   f000:e319     LOOP       D4                                      ; MIGHT OCCUR
                             D5                                         XREF[1]:  f000:e31b(j)  
   f000:e31b     LOOP       D5
   f000:e31d     CMP        byte ptr [0x46b],0x0                    ; ANY INTERRUPTS OCCUR?
   f000:e322     JZ         D7                                      ;  NO - GO TO NEXT TEST
                             D6                                         XREF[4]:  f000:e307(j), f000:e311(j), 
                                                                                 f000:e343(j), f000:e359(j)  
   f000:e324     MOV        SI,0xf869                               ; DISPLAY 101 ERROR
   f000:e327     CALL       E_MSG                                   ; undefined E_MSG(void)
   f000:e32a     CLI
   f000:e32b     HLT                                                ; HALT THE SYSTEM
                             ;--------------------------------------------------------
                             ;       8253 TIMER CHECKOUT                             :
                             ;DESCRIPTION                                            :
                             ;       VERIFY THAT THE SYSTEM TIMER (0) DOESN'T COUNT  :
                             ;       TOO FAST OR TOO SLOW.                           :
                             ;--------------------------------------------------------
                             D7                                         XREF[1]:  f000:e322(j)  
   f000:e32c     MOV        AL,0xfe                                 ; MASK ALL INTRS EXCEPT LVL 0
   f000:e32e     OUT        0x21,AL                                 ; WRITE THE 8259 IMR
   f000:e330     MOV        AL,00010000b                            ; SEL TIM 0, LSB, MODE 0, BINARY
   f000:e332     OUT        0x43,AL                                 ; WRITE TIMER CONTROL MODE REG
   f000:e334     MOV        CL,0x16                                 ; SET PGM LOOP CNT
   f000:e336     MOV        AL,CL                                   ; SET TIMER 0 CNT REG
   f000:e338     OUT        0x40,AL                                 ; WRITE TIMER 0 CNT REG
                             D8                                         XREF[1]:  f000:e341(j)  
   f000:e33a     TEST       byte ptr [0x46b],0x1                    ; DID TIMER 0 INTERRUPT OCCUR?
   f000:e33f     JNZ        D9                                      ; YES - CHECK TIMER OP FOR SLOW 
   f000:e341     LOOP       D8                                      ; WAIT FOR INTR FOR SPECIFIED TIME
   f000:e343     JMP        D6                                      ; TIMER 0 INTR DIDN'T OCCUR - ERR
                             D9                                         XREF[1]:  f000:e33f(j)  
   f000:e345     MOV        CL,12                                   ; SET PGM LOOP CNT
   f000:e347     MOV        AL,0xff                                 ; WRITE TIMER 0 CNT REG
   f000:e349     OUT        0x40,AL
   f000:e34b     MOV        byte ptr [0x46b],0x0                    ; RESET INTR RECEIVED FLAG
   f000:e350     MOV        AL,0xfe                                 ; REENABLE TIMER 0 INTERRUPTS
   f000:e352     OUT        0x21,AL
                             D10                                        XREF[1]:  f000:e35b(j)  
   f000:e354     TEST       byte ptr [0x46b],0x1                    ; DID TIMER 0 INTERRUPT OCCUR?
   f000:e359     JNZ        D6                                      ; YES - TIMER CNTING TOO FAST, ERR
   f000:e35b     LOOP       D10                                     ; WAIT FOR INTR FOR SPECIFIED TIME
                             ;----- SETUP TIMER 0 TO MODE 3
   f000:e35d     MOV        AL,0xff                                 ; DISABLE ALL DEVICE INTERRUPTS
   f000:e35f     OUT        0x21,AL
   f000:e361     MOV        AL,0x36                                 ; SEL TIM 0,LSB,MSB,MODE 3
   f000:e363     OUT        0x43,AL                                 ; WRITE TIMER MODE PEG
   f000:e365     MOV        AL,0x0
   f000:e367     OUT        0x40,AL                                 ; WRITE LSB TO TIMER 0 REG
   f000:e369     OUT        0x40,AL                                 ; WRITE MSB TO TIMER 0 REG
   f000:e36b     CALL       KBD_buffer_preparation_MK88             ; undefined KBD_buffer_preparati
                             ;------------------------------------------------
                             ;       SETUP HARDWARE INT. VECTOR TABLE        :
                             ;------------------------------------------------
                             F7
   f000:e36e     PUSH       DS                                      ; SETUP_INT_TABLE:
   f000:e36f     SUB        AX,AX
   f000:e371     MOV        ES,AX
   f000:e373     MOV        CX,0x8                                  ; GET VECTOR CNT
   f000:e376     PUSH       CS                                      ; SETUP DS SEG REG
   f000:e377     POP        DS
   f000:e378     MOV        SI,0xfef3                               ; OFFSET VECTOR_TABLE
   f000:e37b     MOV        DI,0x20
                             F7A                                        XREF[1]:  f000:e381(j)  
   f000:e37e     MOVSW      ES:DI=>DAT_0000_0020,SI
   f000:e37f     INC        DI                                      ; SKIP OVER SEGMENT
   f000:e380     INC        DI
   f000:e381     LOOP       F7A
   f000:e383     POP        DS
                             ;----- SET UP OTHER INTERRUPTS AS NECESSARY
   f000:e384     MOV        word ptr [0x8],0xe055                   ; NMI INTERRUPT
   f000:e38a     MOV        word ptr [0x14],0xff54                  ; PRINT SCREEN
                             ;--------------------------------------------------------
                             ;       ADDITIONAL READ/WRITE STORAGE TEST              :
                             ;DESCRIPTION                                            :
                             ;       WRITE/READ DATA PATTERNS TO ANY READ/WRITE      :
                             ;       STORAGE AFTER THE FIRST 32K.  STORAGE           :
                             ;       ADDRESSABILITY IS CHECKED.                      :
                             ;--------------------------------------------------------
                             E19
   f000:e390     CALL       DDS                                     ; undefined DDS(void)
   f000:e393     PUSH       DS
                             E20
   f000:e394     CMP        word ptr [0x72],0x1234                  ; WARM START?
   f000:e39a     JNZ        E20A                                    ; CONTINUE TEST IF NOT
   f000:e39c     JMP        ROM_SCAN                                ; GO TO NEXT ROUTINE IF SO
                             E20A                                       XREF[1]:  f000:e39a(j)  
   f000:e39f     MOV        AX,0x2                                  ; STARTING AMT. OF MEMORY OK
   f000:e3a2     JMP        LAB_f000_e3c5
                             E21                                        XREF[1]:  f000:e3f2(j)  
   f000:e3a4     MOV        BX,word ptr [offset DAT_0000_0813]
   f000:e3a8     SUB        BX,0x2
   f000:e3ab     MOV        CX,BX
   f000:e3ad     MOV        BX,0x80
                             LAB_f000_e3b0                              XREF[1]:  f000:e3f7(j)  
   f000:e3b0     MOV        DS,BX
   f000:e3b2     MOV        ES,BX
   f000:e3b4     ADD        BX,0x40
   f000:e3b7     PUSH       DX
   f000:e3b8     PUSH       CX
   f000:e3b9     PUSH       BX
   f000:e3ba     PUSH       AX
   f000:e3bb     MOV        CX,0x200
   f000:e3be     CALL       STGTST_CNT                              ; undefined STGTST_CNT(void)
   f000:e3c1     JNZ        E21A                                    ; GO PRINT ERROR
   f000:e3c3     POP        AX                                      ; RECOVER TESTED MEM NUMBER
   f000:e3c4     INC        AX
                             LAB_f000_e3c5                              XREF[1]:  f000:e3a2(j)  
   f000:e3c5     PUSH       AX
   f000:e3c6     MOV        BX,0xa
   f000:e3c9     MOV        CX,0x3
                             LAB_f000_e3cc                              XREF[1]:  f000:e3d4(j)  
   f000:e3cc     XOR        DX,DX
   f000:e3ce     DIV        BX
   f000:e3d0     OR         DL,00110000b
   f000:e3d3     PUSH       DX
   f000:e3d4     LOOP       LAB_f000_e3cc
   f000:e3d6     MOV        CX,0x3
                             PRINT_RAM                                  XREF[1]:  f000:e3dd(j)  
   f000:e3d9     POP        AX
   f000:e3da     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:e3dd     LOOP       PRINT_RAM
   f000:e3df     MOV        CX,0x7
   f000:e3e2     MOV        SI,0xe016                               ; points to msg: "KB OK"
                             PRINT_KB_OK                                XREF[1]:  f000:e3ec(j)  
   f000:e3e5     MOV        AL,byte ptr CS:[SI]=>s_KB_f000_e016     ; = "KB ДА\r"
                                                                     ; = "B ДА\r"
   f000:e3e8     INC        SI
   f000:e3e9     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:e3ec     LOOP       PRINT_KB_OK
   f000:e3ee     POP        AX
   f000:e3ef     CMP        AX,0x2
   f000:e3f2     JZ         E21
   f000:e3f4     POP        BX
   f000:e3f5     POP        CX
   f000:e3f6     POP        DX
   f000:e3f7     LOOP       LAB_f000_e3b0
   f000:e3f9     MOV        AL,'\n'
   f000:e3fb     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:e3fe     JMP        ROM_SCAN
                             E21A                                       XREF[1]:  f000:e3c1(j)  
   f000:e400     MOV        CH,AL
   f000:e402     MOV        AL,'\r'
   f000:e404     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:e407     MOV        AL,'\n'
   f000:e409     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:e40c     POP        AX
   f000:e40d     ADD        SP,0x6
   f000:e410     MOV        DX,DS
   f000:e412     POP        DS
   f000:e413     PUSH       DS
   f000:e414     MOV        [0x13],AX
   f000:e417     CALL       PRT_SEG                                 ; undefined PRT_SEG(void)
   f000:e41a     MOV        AL,CH
   f000:e41c     CALL       XPC_BYTE                                ; undefined XPC_BYTE(void)
   f000:e41f     MOV        SI,0xe53c                               ; msg: ОШИБКА ПАМЯТИ
   f000:e422     CALL       E_MSG                                   ; undefined E_MSG(void)
                             ROM_SCAN                                   XREF[2]:  f000:e39c(j), f000:e3fe(j)  
   f000:e425     MOV        BX,0xc000                               ; ROM 2 address
   f000:e428     CALL       ROS_CHECKSUM                            ; undefined ROS_CHECKSUM(void)
                             ;------------------------------------------------------------
                             ;       DISKETTE ATTACHMENT TEST                             
                             ;DESCRIPTION                                                 
                             ;       CHECK IF IPL DISKETTE DRIVE IS ATTACHED TO SYSTEM.  I
                             ;       ATTACHED, VERIFY STATUS OF NEC FDC AFTER A RESET. ISS
                             ;       A RECAL AND SEEK CMD TO FDC AND CHECK STATUS. COMPLET
                             ;       SYSTEM INITIALIZATION THEN PASS CONTROL TO THE BOOT  
                             ;       LOADER PROGRAM.                                      
                             ;------------------------------------------------------------
                             F9
   f000:e42b     POP        DS
                             NO_ID
   f000:e42c     IN         AL,0x21
   f000:e42e     AND        AL,0xbf                                 ; ENABLE DISKETTE INTERRUPTS
                                                                     ; IRQ6
   f000:e430     OUT        0x21,AL
   f000:e432     MOV        AH,0x0                                  ; RESET NEC FDC
   f000:e434     MOV        DL,AH                                   ; SET FOR DRIVE 0
   f000:e436     INT        0x13                                    ; VERIFY STATUS AFTER RESET
   f000:e438     TEST       AH,0xff                                 ; STATUS OK?
   f000:e43b     JNZ        F13                                     ; NO - FDC FAILED
                             ;----- TURN DRIVE 0 MOTOR ON
   f000:e43d     MOV        DX,0x3f2                                ; GET ADDR OF FDC CARD
   f000:e440     MOV        AL,0x1c                                 ; TURN MOTOR ON, EN DMA/INT
   f000:e442     OUT        DX,AL                                   ; WRITE FDC CONTROL REG
   f000:e443     SUB        CX,CX
                             F11                                        XREF[1]:  f000:e445(j)  
   f000:e445     LOOP       F11                                     ; WAIT FOR 1 SECOND
                             F12                                        XREF[1]:  f000:e447(j)  
   f000:e447     LOOP       F12
   f000:e449     XOR        DX,DX                                   ; SELECT DRIVE 0
   f000:e44b     MOV        CH,1                                    ; SELECT TRACK 1
   f000:e44d     MOV        byte ptr [0x3e],DL
   f000:e451     CALL       SEEK                                    ; RECALIBRATE DISKETTE
   f000:e454     JC         F13                                     ; GO TO ERR SUBROUTINE IF ERR
   f000:e456     MOV        CH,34                                   ; SELECT TRACK 34
   f000:e458     CALL       SEEK                                    ; SEEK TO TRACK 34
   f000:e45b     JNC        F14                                     ; OK, TURN MOTOR OFF
                             F13                                        XREF[2]:  f000:e43b(j), f000:e454(j)  
   f000:e45d     MOV        SI,0xf799                               ; MSG: НЕТ ДИСКА ИЛИ 
                                                                     ; НЕИСПРАВЕН ДИСКОВОД
   f000:e460     CALL       E_MSG                                   ; undefined E_MSG(void)
                             ;----- TURN DRIVE 0 MOTOR OFF
                             F14                                        XREF[1]:  f000:e45b(j)  
   f000:e463     MOV        AL,0xc                                  ; TURN DRIVE 0 MOTOR OFF
   f000:e465     MOV        DX,0x3f2                                ; GET ADDR OF FDC CARD
   f000:e468     OUT        DX,AL
                             ;----- SETUP PRINTER AND RS232 BASE ADDRESSES
                              IF DEVICE ATTACHED
   f000:e469     MOV        byte ptr [0x6b],0x0                     ; SET STRAY INTERRUPT FLAG = 00
   f000:e46e     MOV        SI,0x1e                                 ; SETUP KEYBOARD PARAMETERS
   f000:e471     MOV        word ptr [0x1a],SI                      ; Buffer head pointer
   f000:e475     MOV        word ptr [0x1c],SI                      ; Buffer tail pointer
   f000:e479     MOV        word ptr [0x80],SI                      ; Buffer start
   f000:e47d     ADD        SI,0x20                                 ; size
   f000:e480     MOV        word ptr [0x82],SI                      ; BUFFER_END
                             ;----- SET DEFAULT TIMEOUT VALUES FOR PRINTER AND RS232
   f000:e484     MOV        DI,0x78                                 ; SET DEFAULT PRINTER TIMEOUT
   f000:e487     PUSH       DS
   f000:e488     POP        ES
   f000:e489     MOV        AX,0x1414                               ; Time-out value seconds
   f000:e48c     STOSW      ES:DI
   f000:e48d     STOSW      ES:DI
   f000:e48e     MOV        AX,0x101                                ; RS232 DEFAULT=01
   f000:e491     STOSW      ES:DI
   f000:e492     STOSW      ES:DI
                             Something new
   f000:e493     IN         AL,0x21
   f000:e495     AND        AL,0xf6                                 ; enable IRQ0 and IRQ3
                                                                     ; IBM has 0xfc
                                                                     ; ENABLE TIMER AND KBD INTS
   f000:e497     OUT        0x21,AL
   f000:e499     CMP        BP,0x0                                  ; CHECK FOR BP= NON-ZERO
                                                                     ; (ERROR HAPPENED)
   f000:e49c     JZ         F15A_0                                  ; CONTINUE IF NO ERROR
   f000:e49e     MOV        DX,0x2                                  ; 2 SHORT BEEPS (ERROR)
   f000:e4a1     CALL       ERR_BEEP                                ; undefined ERR_BEEP(void)
   f000:e4a4     MOV        SI,0xe519                               ; MSG: ТЕСТ ЗАВЕРШЕН,
                                                                     ; НАЖМИТЕ КЛАВИШУ Ф1
   f000:e4a7     CALL       P_MSG                                   ; undefined P_MSG(void)
                             ERR_WAIT                                   XREF[1]:  f000:e4b1(j)  
   f000:e4aa     MOV        AH,0x0
   f000:e4ac     INT        0x16
   f000:e4ae     CMP        AH,0x3b                                 ; WAIT FOR 'F1' KEY
   f000:e4b1     JNZ        ERR_WAIT
   f000:e4b3     JMP        F15A                                    ; BYPASS ERROR
   f000:e4b5     NOP
                             F15A_0                                     XREF[1]:  f000:e49c(j)  
   f000:e4b6     MOV        DX,0x1                                  ; 1 SHORT BEEP (NO ERRORS)
   f000:e4b9     CALL       ERR_BEEP                                ; undefined ERR_BEEP(void)
                             F15A                                       XREF[1]:  f000:e4b3(j)  
   f000:e4bc     SUB        AH,AH
   f000:e4be     MOV        AL,[0x49]
   f000:e4c1     INT        0x10                                    ; CLEAR SCREEN
   f000:e4c3     MOV        DX,0x37b
   f000:e4c6     MOV        AL,0x82
   f000:e4c8     OUT        DX,AL
   f000:e4c9     MOV        BP,0xf898                               ; PRT_SRC_TBL
   f000:e4cc     MOV        SI,0x0
                             F16                                        XREF[1]:  f000:e4e9(j)  
   f000:e4cf     MOV        DX,word ptr CS:[BP + 0x0]=>F4           ; GET PRINTER BASE ADDR
   f000:e4d3     MOV        AL,0xaa                                 ; WRITE DATA TO PORT A
   f000:e4d5     OUT        DX,AL
   f000:e4d6     PUSH       DS
   f000:e4d7     IN         AL,DX
   f000:e4d8     POP        DS
   f000:e4d9     CMP        AL,0xaa                                 ; DATA PATTERN SAME
   f000:e4db     JNZ        F17                                     ; NO - CHECK NEXT PRT CD
   f000:e4dd     MOV        word ptr [SI + 0x8],DX                  ; YES - STORE PRT BASE ADDR
   f000:e4e1     INC        SI                                      ; INCREMENT TO NEXT WORD
   f000:e4e2     INC        SI
                             F17                                        XREF[1]:  f000:e4db(j)  
   f000:e4e3     INC        BP                                      ; POINT TO NEXT BASE ADDR
   f000:e4e4     INC        BP
   f000:e4e5     CMP        BP,0xf89e                               ; ALL POSSIBLE ADDRS CHECKED?
   f000:e4e9     JNZ        F16                                     ; PRT_BASE
   f000:e4eb     MOV        BX,0x0                                  ; POINTER TO RS232 TABLE
   f000:e4ee     MOV        word ptr [BX + 0x0],0x3f8               ; SETUP RS232 CD #1 ADDR
   f000:e4f4     INC        BX
   f000:e4f5     INC        BX
                             LAB_f000_e4f6                              XREF[1]:  f000:c786(j)  
   f000:e4f6     CALL       DDS                                     ; undefined DDS(void)
   f000:e4f9     PUSH       DS=>DAT_0000_037e
   f000:e4fa     POP        ES=>DAT_0000_037e
   f000:e4fb     CMP        word ptr [0x72],0x1234                  ; BIOS setup before?
   f000:e501     JZ         LAB_f000_e506                           ; Yes, it is a warm start
                                                                     ; 
   f000:e503     JMP        Welcome_screen                          ; No, it's a cold boot
                                                                     ; Proceed to drawing of
                                                                     ; welcome screen
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_e506                              XREF[1]:  f000:e501(j)  
   f000:e506     JMP        Choose_boot                             ; undefined Choose_boot()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:e509     ??         00h
   f000:e50a     ??         00h
   f000:e50b     ??         00h
   f000:e50c     ??         00h
   f000:e50d     ??         00h
   f000:e50e     ??         00h
   f000:e50f     ??         00h
   f000:e510     ??         00h
   f000:e511     ??         00h
   f000:e512     ??         00h
   f000:e513     ??         00h
   f000:e514     ??         00h
   f000:e515     ??         00h
   f000:e516     ??         00h
   f000:e517     ??         00h
   f000:e518     ??         00h
   f000:e519     ds         "ТЕСТ ЗАВЕРШЕН, НАЖМИТЕ КЛАВИШУ Ф1\r\n" ; ТЕСТ ЗАВЕРШЕН, НАЖМИТЕ КЛАВИШУ
   f000:e53c     ds         "ОШИБКА ПАМЯТИ\r\n"                     ; ОШИБКА ПАМЯТИ
   f000:e54b     ds         "ПЗУ-2 ОШ\r\n"                          ; ПЗУ-2 ОШ
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near NEC_OUTPUT_MK88()
             undefined         AL:1           <RETURN>
                             NEC_OUTPUT_MK88                            XREF[1]:  SEEK:f000:eeaa(c)  
   f000:e555     ADD        AH,AH                                   ; (probably) Skip track
   f000:e557     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:e55a     RET
   f000:e55b     ??         FFh
   f000:e55c     ??         FFh
   f000:e55d     ??         FFh
   f000:e55e     ??         FFh
   f000:e55f     ??         FFh
   f000:e560     ??         FFh
   f000:e561     ??         FFh
   f000:e562     ??         FFh
   f000:e563     ??         FFh
   f000:e564     ??         FFh
   f000:e565     ??         FFh
   f000:e566     ??         FFh
   f000:e567     ??         FFh
   f000:e568     ??         FFh
   f000:e569     ??         FFh
   f000:e56a     ??         FFh
   f000:e56b     ??         FFh
   f000:e56c     ??         FFh
   f000:e56d     ??         FFh
   f000:e56e     ??         FFh
   f000:e56f     ??         FFh
   f000:e570     ??         FFh
   f000:e571     ??         FFh
   f000:e572     ??         FFh
   f000:e573     ??         FFh
   f000:e574     ??         FFh
   f000:e575     ??         FFh
   f000:e576     ??         FFh
   f000:e577     ??         FFh
   f000:e578     ??         FFh
   f000:e579     ??         FFh
   f000:e57a     ??         FFh
   f000:e57b     ??         FFh
   f000:e57c     ??         FFh
   f000:e57d     ??         FFh
   f000:e57e     ??         FFh
   f000:e57f     ??         FFh
   f000:e580     ??         FFh
   f000:e581     ??         FFh
   f000:e582     ??         FFh
   f000:e583     ??         FFh
   f000:e584     ??         FFh
   f000:e585     ??         FFh
   f000:e586     ??         FFh
   f000:e587     ??         FFh
   f000:e588     ??         FFh
   f000:e589     ??         FFh
   f000:e58a     ??         FFh
   f000:e58b     ??         FFh
   f000:e58c     ??         FFh
   f000:e58d     ??         FFh
   f000:e58e     ??         FFh
   f000:e58f     ??         FFh
   f000:e590     ??         FFh
   f000:e591     ??         FFh
   f000:e592     ??         FFh
   f000:e593     ??         FFh
   f000:e594     ??         FFh
   f000:e595     ??         FFh
   f000:e596     ??         FFh
   f000:e597     ??         FFh
   f000:e598     ??         FFh
   f000:e599     ??         FFh
   f000:e59a     ??         FFh
   f000:e59b     ??         FFh
   f000:e59c     ??         FFh
   f000:e59d     ??         FFh
   f000:e59e     ??         FFh
   f000:e59f     ??         FFh
   f000:e5a0     ??         FFh
   f000:e5a1     ??         FFh
   f000:e5a2     ??         FFh
   f000:e5a3     ??         FFh
   f000:e5a4     ??         FFh
   f000:e5a5     ??         FFh
   f000:e5a6     ??         FFh
   f000:e5a7     ??         FFh
   f000:e5a8     ??         FFh
   f000:e5a9     ??         FFh
   f000:e5aa     ??         FFh
   f000:e5ab     ??         FFh
   f000:e5ac     ??         FFh
   f000:e5ad     ??         FFh
   f000:e5ae     ??         FFh
   f000:e5af     ??         FFh
   f000:e5b0     ??         FFh
   f000:e5b1     ??         FFh
   f000:e5b2     ??         FFh
   f000:e5b3     ??         FFh
   f000:e5b4     ??         FFh
   f000:e5b5     ??         FFh
   f000:e5b6     ??         FFh
   f000:e5b7     ??         FFh
   f000:e5b8     ??         FFh
   f000:e5b9     ??         FFh
   f000:e5ba     ??         FFh
   f000:e5bb     ??         FFh
   f000:e5bc     ??         FFh
   f000:e5bd     ??         FFh
   f000:e5be     ??         FFh
   f000:e5bf     ??         FFh
   f000:e5c0     ??         FFh
   f000:e5c1     ??         FFh
   f000:e5c2     ??         FFh
   f000:e5c3     ??         FFh
   f000:e5c4     ??         FFh
   f000:e5c5     ??         FFh
   f000:e5c6     ??         FFh
   f000:e5c7     ??         FFh
   f000:e5c8     ??         FFh
   f000:e5c9     ??         FFh
   f000:e5ca     ??         FFh
   f000:e5cb     ??         FFh
   f000:e5cc     ??         FFh
   f000:e5cd     ??         FFh
   f000:e5ce     ??         FFh
   f000:e5cf     ??         FFh
   f000:e5d0     ??         FFh
   f000:e5d1     ??         FFh
   f000:e5d2     ??         FFh
   f000:e5d3     ??         FFh
   f000:e5d4     ??         FFh
   f000:e5d5     ??         FFh
   f000:e5d6     ??         FFh
   f000:e5d7     ??         FFh
   f000:e5d8     ??         FFh
   f000:e5d9     ??         FFh
   f000:e5da     ??         FFh
   f000:e5db     ??         FFh
   f000:e5dc     ??         FFh
   f000:e5dd     ??         FFh
   f000:e5de     ??         FFh
   f000:e5df     ??         FFh
   f000:e5e0     ??         FFh
   f000:e5e1     ??         FFh
   f000:e5e2     ??         FFh
   f000:e5e3     ??         FFh
   f000:e5e4     ??         FFh
   f000:e5e5     ??         FFh
   f000:e5e6     ??         FFh
   f000:e5e7     ??         FFh
   f000:e5e8     ??         FFh
   f000:e5e9     ??         FFh
   f000:e5ea     ??         FFh
   f000:e5eb     ??         FFh
   f000:e5ec     ??         FFh
   f000:e5ed     ??         FFh
   f000:e5ee     ??         FFh
   f000:e5ef     ??         FFh
   f000:e5f0     ??         FFh
   f000:e5f1     ??         FFh
   f000:e5f2     ??         FFh
   f000:e5f3     ??         FFh
   f000:e5f4     ??         FFh
   f000:e5f5     ??         FFh
   f000:e5f6     ??         FFh
   f000:e5f7     ??         FFh
   f000:e5f8     ??         FFh
   f000:e5f9     ??         FFh
   f000:e5fa     ??         FFh
   f000:e5fb     ??         FFh
   f000:e5fc     ??         FFh
   f000:e5fd     ??         FFh
   f000:e5fe     ??         FFh
   f000:e5ff     ??         FFh
   f000:e600     ??         FFh
   f000:e601     ??         FFh
   f000:e602     ??         FFh
   f000:e603     ??         FFh
   f000:e604     ??         FFh
   f000:e605     ??         FFh
   f000:e606     ??         FFh
   f000:e607     ??         FFh
   f000:e608     ??         FFh
   f000:e609     ??         FFh
   f000:e60a     ??         FFh
   f000:e60b     ??         FFh
   f000:e60c     ??         FFh
   f000:e60d     ??         FFh
   f000:e60e     ??         FFh
   f000:e60f     ??         FFh
   f000:e610     ??         FFh
   f000:e611     ??         FFh
   f000:e612     ??         FFh
   f000:e613     ??         FFh
   f000:e614     ??         FFh
   f000:e615     ??         FFh
   f000:e616     ??         FFh
   f000:e617     ??         FFh
   f000:e618     ??         FFh
   f000:e619     ??         FFh
   f000:e61a     ??         FFh
   f000:e61b     ??         FFh
   f000:e61c     ??         FFh
   f000:e61d     ??         FFh
   f000:e61e     ??         FFh
   f000:e61f     ??         FFh
   f000:e620     ??         FFh
   f000:e621     ??         FFh
   f000:e622     ??         FFh
   f000:e623     ??         FFh
   f000:e624     ??         FFh
   f000:e625     ??         FFh
   f000:e626     ??         FFh
   f000:e627     ??         FFh
   f000:e628     ??         FFh
   f000:e629     ??         FFh
   f000:e62a     ??         FFh
   f000:e62b     ??         FFh
   f000:e62c     ??         FFh
   f000:e62d     ??         FFh
   f000:e62e     ??         FFh
   f000:e62f     ??         FFh
   f000:e630     ??         FFh
   f000:e631     ??         FFh
   f000:e632     ??         FFh
   f000:e633     ??         FFh
   f000:e634     ??         FFh
   f000:e635     ??         FFh
   f000:e636     ??         FFh
   f000:e637     ??         FFh
   f000:e638     ??         FFh
   f000:e639     ??         FFh
   f000:e63a     ??         FFh
   f000:e63b     ??         FFh
   f000:e63c     ??         FFh
   f000:e63d     ??         FFh
   f000:e63e     ??         FFh
   f000:e63f     ??         FFh
   f000:e640     ??         FFh
   f000:e641     ??         FFh
   f000:e642     ??         FFh
   f000:e643     ??         FFh
   f000:e644     ??         FFh
   f000:e645     ??         FFh
   f000:e646     ??         FFh
   f000:e647     ??         FFh
   f000:e648     ??         FFh
   f000:e649     ??         FFh
   f000:e64a     ??         FFh
   f000:e64b     ??         FFh
   f000:e64c     ??         FFh
   f000:e64d     ??         FFh
   f000:e64e     ??         FFh
   f000:e64f     ??         FFh
   f000:e650     ??         FFh
   f000:e651     ??         FFh
   f000:e652     ??         FFh
   f000:e653     ??         FFh
   f000:e654     ??         FFh
   f000:e655     ??         FFh
   f000:e656     ??         FFh
   f000:e657     ??         FFh
   f000:e658     ??         FFh
   f000:e659     ??         FFh
   f000:e65a     ??         FFh
   f000:e65b     ??         FFh
   f000:e65c     ??         FFh
   f000:e65d     ??         FFh
   f000:e65e     ??         FFh
   f000:e65f     ??         FFh
   f000:e660     ??         FFh
   f000:e661     ??         FFh
   f000:e662     ??         FFh
   f000:e663     ??         FFh
   f000:e664     ??         FFh
   f000:e665     ??         FFh
   f000:e666     ??         FFh
   f000:e667     ??         FFh
   f000:e668     ??         FFh
   f000:e669     ??         FFh
   f000:e66a     ??         FFh
   f000:e66b     ??         FFh
   f000:e66c     ??         FFh
   f000:e66d     ??         FFh
   f000:e66e     ??         FFh
   f000:e66f     ??         FFh
   f000:e670     ??         FFh
   f000:e671     ??         FFh
   f000:e672     ??         FFh
   f000:e673     ??         FFh
   f000:e674     ??         FFh
   f000:e675     ??         FFh
   f000:e676     ??         FFh
   f000:e677     ??         FFh
   f000:e678     ??         FFh
   f000:e679     ??         FFh
   f000:e67a     ??         FFh
   f000:e67b     ??         FFh
   f000:e67c     ??         FFh
   f000:e67d     ??         FFh
   f000:e67e     ??         FFh
   f000:e67f     ??         FFh
   f000:e680     ??         FFh
   f000:e681     ??         FFh
   f000:e682     ??         FFh
   f000:e683     ??         FFh
   f000:e684     ??         FFh
   f000:e685     ??         FFh
   f000:e686     ??         FFh
   f000:e687     ??         FFh
   f000:e688     ??         FFh
   f000:e689     ??         FFh
   f000:e68a     ??         FFh
   f000:e68b     ??         FFh
   f000:e68c     ??         FFh
   f000:e68d     ??         FFh
   f000:e68e     ??         FFh
   f000:e68f     ??         FFh
   f000:e690     ??         FFh
   f000:e691     ??         FFh
   f000:e692     ??         FFh
   f000:e693     ??         FFh
   f000:e694     ??         FFh
   f000:e695     ??         FFh
   f000:e696     ??         FFh
   f000:e697     ??         FFh
   f000:e698     ??         FFh
   f000:e699     ??         FFh
   f000:e69a     ??         FFh
   f000:e69b     ??         FFh
   f000:e69c     ??         FFh
   f000:e69d     ??         FFh
   f000:e69e     ??         FFh
   f000:e69f     ??         FFh
   f000:e6a0     ??         FFh
   f000:e6a1     ??         FFh
   f000:e6a2     ??         FFh
   f000:e6a3     ??         FFh
   f000:e6a4     ??         FFh
   f000:e6a5     ??         FFh
   f000:e6a6     ??         FFh
   f000:e6a7     ??         FFh
   f000:e6a8     ??         FFh
   f000:e6a9     ??         FFh
   f000:e6aa     ??         FFh
   f000:e6ab     ??         FFh
   f000:e6ac     ??         FFh
   f000:e6ad     ??         FFh
   f000:e6ae     ??         FFh
   f000:e6af     ??         FFh
   f000:e6b0     ??         FFh
   f000:e6b1     ??         FFh
   f000:e6b2     ??         FFh
   f000:e6b3     ??         FFh
   f000:e6b4     ??         FFh
   f000:e6b5     ??         FFh
   f000:e6b6     ??         FFh
   f000:e6b7     ??         FFh
   f000:e6b8     ??         FFh
   f000:e6b9     ??         FFh
   f000:e6ba     ??         FFh
   f000:e6bb     ??         FFh
   f000:e6bc     ??         FFh
   f000:e6bd     ??         FFh
   f000:e6be     ??         FFh
   f000:e6bf     ??         FFh
   f000:e6c0     ??         FFh
   f000:e6c1     ??         FFh
   f000:e6c2     ??         FFh
   f000:e6c3     ??         FFh
   f000:e6c4     ??         FFh
   f000:e6c5     ??         FFh
   f000:e6c6     ??         FFh
   f000:e6c7     ??         FFh
   f000:e6c8     ??         FFh
   f000:e6c9     ??         FFh
   f000:e6ca     ??         FFh
   f000:e6cb     ??         FFh
   f000:e6cc     ??         FFh
   f000:e6cd     ??         FFh
   f000:e6ce     ??         FFh
   f000:e6cf     ??         FFh
   f000:e6d0     ??         FFh
   f000:e6d1     ??         FFh
   f000:e6d2     ??         FFh
   f000:e6d3     ??         FFh
   f000:e6d4     ??         FFh
   f000:e6d5     ??         FFh
   f000:e6d6     ??         FFh
   f000:e6d7     ??         FFh
   f000:e6d8     ??         FFh
   f000:e6d9     ??         FFh
   f000:e6da     ??         FFh
   f000:e6db     ??         FFh
   f000:e6dc     ??         FFh
   f000:e6dd     ??         FFh
   f000:e6de     ??         FFh
   f000:e6df     ??         FFh
   f000:e6e0     ??         FFh
   f000:e6e1     ??         FFh
   f000:e6e2     ??         FFh
   f000:e6e3     ??         FFh
   f000:e6e4     ??         FFh
   f000:e6e5     ??         FFh
   f000:e6e6     ??         FFh
   f000:e6e7     ??         FFh
   f000:e6e8     ??         FFh
   f000:e6e9     ??         FFh
   f000:e6ea     ??         FFh
   f000:e6eb     ??         FFh
   f000:e6ec     ??         FFh
   f000:e6ed     ??         FFh
   f000:e6ee     ??         FFh
   f000:e6ef     ??         FFh
   f000:e6f0     ??         FFh
   f000:e6f1     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16far BOOT_STRAP(void)
             undefined         AL:1           <RETURN>
                             ;--- INT 19 -------------------------------------------------
                             ; BOOT STRAP LOADER                                          
                             ;       IF A 5 1/4" DISKETTE DRIVE IS AVAILABLE ON THE SYSTEM
                             ;       TRACK 0, SECTOR 1 IS READ INTO THE BOOT LOCATION     
                             ;       (SEGMENT 0, OFFSET 7C00) AND CONTROL IS TRANSFERRED  
                             ;       THERE.                                               
                             ;                                                            
                             ;       IF THERE IS NO DISKETTE DRIVE, OR IF THERE IS A      
                             ;       HARDWARE ERROR CONTROL IS TRANSFERRED TO THE RESIDENT
                             ;       BASIC ENTRY POINT.                                   
                             ;                                                            
                             ; IPL ASSUMPTIONS                                            
                             ;       8255 PORT 60H BIT 0 = 1 IF IPL FROM DISKETTE         
                             ;------------------------------------------------------------
                             BOOT_STRAP                                 XREF[1]:  f000:ff15(*)  
   f000:e6f2     STI                                                ; ENABLE INTERRUPTS
   f000:e6f3     SUB        AX,AX
   f000:e6f5     MOV        DS,AX
   f000:e6f7     MOV        word ptr [DAT_0000_0078],0xefc7
   f000:e6fd     MOV        word ptr [DAT_0000_007a],CS
   f000:e701     MOV        CX,0x4                                  ; SET RETRY COUNT
                             H1                                         XREF[1]:  f000:e71d(j)  
   f000:e704     PUSH       CX
   f000:e705     MOV        AH,0x0                                  ; RESET THE DISKETTE SYSTEM
   f000:e707     INT        0x13                                    ; DISKETTE_IO
   f000:e709     JC         H2                                      ; IF ERROR, TRY AGAIN
   f000:e70b     MOV        AX,0x201                                ; READ IN THE SINGLE SECTOR
   f000:e70e     SUB        DX,DX
   f000:e710     MOV        ES,DX
   f000:e712     MOV        BX,0x7c00                               ; OFFSET BOOT_LOCN
   f000:e715     MOV        CX,0x1                                  ; SECTOR 1, TRACK 0
   f000:e718     INT        0x13                                    ; DISKETTE_IO
                             H2                                         XREF[1]:  f000:e709(j)  
   f000:e71a     POP        CX                                      ; RECOVER RETRY COUNT
   f000:e71b     JNC        H4                                      ; CF SET BY UNSUCCESSFUL READ
   f000:e71d     LOOP       H1                                      ; DO IT FOR RETRY TIMES
   f000:e71f     RETF       0x2
                             ;----- IPL WAS SUCCESSFUL
                             H4                                         XREF[1]:  f000:e71b(j)  
   f000:e722     JMPF       LAB_0000_7c00
   f000:e727     ??         FFh
   f000:e728     ??         FFh
                             A1
   f000:e729     dw         417h                                    ; TABLE OF INIT VALUE
                                                                     ; for RS232
   f000:e72b     dw         300h
   f000:e72d     dw         180h
   f000:e72f     dw         C0h
   f000:e731     dw         60h
   f000:e733     dw         30h
   f000:e735     dw         18h
   f000:e737     dw         Ch
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far RS232_IO(void)
             undefined         AL:1           <RETURN>
                             RS232_IO                                   XREF[1]:  f000:ff0b(*)  
   f000:e739     STI
   f000:e73a     PUSH       DS
   f000:e73b     PUSH       DX
   f000:e73c     PUSH       SI
   f000:e73d     PUSH       DI
   f000:e73e     PUSH       CX
   f000:e73f     PUSH       BX
   f000:e740     MOV        SI,DX
   f000:e742     MOV        DI,DX
   f000:e744     SHL        SI,0x1
   f000:e746     CALL       DDS                                     ; undefined DDS(void)
   f000:e749     MOV        DX,word ptr [SI + 0x0]
   f000:e74d     OR         DX,DX
   f000:e74f     JZ         LAB_f000_e764
   f000:e751     OR         AH,AH
   f000:e753     JZ         LAB_f000_e76b
   f000:e755     DEC        AH
   f000:e757     JZ         LAB_f000_e79f
   f000:e759     DEC        AH
   f000:e75b     JZ         LAB_f000_e7c8
   f000:e75d     DEC        AH
   f000:e75f     JNZ        LAB_f000_e764
   f000:e761     JMP        LAB_f000_e7ea
                             LAB_f000_e764                              XREF[6]:  f000:e74f(j), f000:e75f(j), 
                                                                                 f000:e7b5(j), f000:e7c6(j), 
                                                                                 f000:e7e7(j), f000:e7f6(j)  
   f000:e764     POP        BX
   f000:e765     POP        CX
   f000:e766     POP        DI
   f000:e767     POP        SI
   f000:e768     POP        DX
   f000:e769     POP        DS
   f000:e76a     IRET
                             LAB_f000_e76b                              XREF[1]:  f000:e753(j)  
   f000:e76b     MOV        AH,AL
   f000:e76d     ADD        DX,0x3
   f000:e770     MOV        AL,0x80
   f000:e772     OUT        DX,AL
   f000:e773     MOV        DL,AH
   f000:e775     MOV        CL,0x4
   f000:e777     ROL        DL,CL
   f000:e779     AND        DX,0xe
   f000:e77c     MOV        DI,0xe729
   f000:e77f     ADD        DI,DX
   f000:e781     MOV        DX,word ptr [SI + 0x0]
   f000:e785     INC        DX
   f000:e786     MOV        AL,byte ptr CS:[DI + 0x1]
   f000:e78a     OUT        DX,AL
   f000:e78b     DEC        DX
   f000:e78c     MOV        AL,byte ptr CS:[DI]
   f000:e78f     OUT        DX,AL
   f000:e790     ADD        DX,0x3
   f000:e793     MOV        AL,AH
   f000:e795     AND        AL,0x1f
   f000:e797     OUT        DX,AL
   f000:e798     DEC        DX
   f000:e799     DEC        DX
   f000:e79a     MOV        AL,0x0
   f000:e79c     OUT        DX,AL
   f000:e79d     JMP        LAB_f000_e7ea
                             LAB_f000_e79f                              XREF[1]:  f000:e757(j)  
   f000:e79f     PUSH       AX
   f000:e7a0     ADD        DX,0x4
   f000:e7a3     MOV        AL,0x3
   f000:e7a5     OUT        DX,AL
   f000:e7a6     INC        DX
   f000:e7a7     INC        DX
   f000:e7a8     MOV        BH,0x30
   f000:e7aa     CALL       WAIT_FOR_STATUS                         ; undefined WAIT_FOR_STATUS(void)
   f000:e7ad     JZ         LAB_f000_e7b7
                             LAB_f000_e7af                              XREF[1]:  f000:e7bd(j)  
   f000:e7af     POP        CX
   f000:e7b0     MOV        AL,CL
                             LAB_f000_e7b2                              XREF[2]:  f000:e7d5(j), f000:e7dd(j)  
   f000:e7b2     OR         AH,0x80
   f000:e7b5     JMP        LAB_f000_e764
                             LAB_f000_e7b7                              XREF[1]:  f000:e7ad(j)  
   f000:e7b7     DEC        DX
   f000:e7b8     MOV        BH,0x20
   f000:e7ba     CALL       WAIT_FOR_STATUS                         ; undefined WAIT_FOR_STATUS(void)
   f000:e7bd     JNZ        LAB_f000_e7af
   f000:e7bf     SUB        DX,0x5
   f000:e7c2     POP        CX
   f000:e7c3     MOV        AL,CL
   f000:e7c5     OUT        DX,AL
   f000:e7c6     JMP        LAB_f000_e764
                             LAB_f000_e7c8                              XREF[1]:  f000:e75b(j)  
   f000:e7c8     ADD        DX,0x4
   f000:e7cb     MOV        AL,0x1
   f000:e7cd     OUT        DX,AL
   f000:e7ce     INC        DX
   f000:e7cf     INC        DX
   f000:e7d0     MOV        BH,0x20
   f000:e7d2     CALL       WAIT_FOR_STATUS                         ; undefined WAIT_FOR_STATUS(void)
   f000:e7d5     JNZ        LAB_f000_e7b2
   f000:e7d7     DEC        DX
   f000:e7d8     MOV        BH,0x1
   f000:e7da     CALL       WAIT_FOR_STATUS                         ; undefined WAIT_FOR_STATUS(void)
   f000:e7dd     JNZ        LAB_f000_e7b2
   f000:e7df     AND        AH,0x1e
   f000:e7e2     MOV        DX,word ptr [SI + 0x0]
   f000:e7e6     IN         AL,DX
   f000:e7e7     JMP        LAB_f000_e764
                             LAB_f000_e7ea                              XREF[2]:  f000:e761(j), f000:e79d(j)  
   f000:e7ea     MOV        DX,word ptr [SI + 0x0]
   f000:e7ee     ADD        DX,0x5
   f000:e7f1     IN         AL,DX
   f000:e7f2     MOV        AH,AL
   f000:e7f4     INC        DX
   f000:e7f5     IN         AL,DX
   f000:e7f6     JMP        LAB_f000_e764
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near WAIT_FOR_STATUS(void)
             undefined         AL:1           <RETURN>
                             WAIT_FOR_STATUS                            XREF[4]:  RS232_IO:f000:e7aa(c), 
                                                                                 RS232_IO:f000:e7ba(c), 
                                                                                 RS232_IO:f000:e7d2(c), 
                                                                                 RS232_IO:f000:e7da(c)  
   f000:e7f9     MOV        BL,byte ptr [DI + 0x7c]
                             WFS0                                       XREF[1]:  f000:e80c(j)  
   f000:e7fd     SUB        CX,CX
                             WFS1                                       XREF[1]:  f000:e808(j)  
   f000:e7ff     IN         AL,DX
   f000:e800     MOV        AH,AL
   f000:e802     AND        AL,BH
   f000:e804     CMP        AL,BH
   f000:e806     JZ         WFS_END
   f000:e808     LOOP       WFS1
   f000:e80a     DEC        BL
   f000:e80c     JNZ        WFS0
   f000:e80e     OR         BH,BH
                             WFS_END                                    XREF[1]:  f000:e806(j)  
   f000:e810     RET
   f000:e811     ??         FFh
   f000:e812     ??         FFh
   f000:e813     ??         FFh
   f000:e814     ??         FFh
   f000:e815     ??         FFh
   f000:e816     ??         FFh
   f000:e817     ??         FFh
   f000:e818     ??         FFh
   f000:e819     ??         FFh
   f000:e81a     ??         FFh
   f000:e81b     ??         FFh
   f000:e81c     ??         FFh
   f000:e81d     ??         FFh
   f000:e81e     ??         FFh
   f000:e81f     ??         FFh
   f000:e820     ??         FFh
   f000:e821     ??         FFh
   f000:e822     ??         FFh
   f000:e823     ??         FFh
   f000:e824     ??         FFh
   f000:e825     ??         FFh
   f000:e826     ??         FFh
   f000:e827     ??         FFh
   f000:e828     ??         FFh
   f000:e829     ??         FFh
   f000:e82a     ??         FFh
   f000:e82b     ??         FFh
   f000:e82c     ??         FFh
   f000:e82d     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16far Keyboard_IO()
             undefined         AL:1           <RETURN>
                             Keyboard_IO                                XREF[1]:  f000:ff0f(*)  
   f000:e82e     STI
   f000:e82f     PUSH       DS
   f000:e830     PUSH       BX
   f000:e831     MOV        BX,0x40
   f000:e834     MOV        DS,BX
   f000:e836     OR         AH,AH
   f000:e838     JZ         K1
   f000:e83a     DEC        AH
   f000:e83c     JZ         K2
   f000:e83e     DEC        AH
   f000:e840     JZ         K3
   f000:e842     POP        BX
   f000:e843     POP        DS
   f000:e844     IRET
                             K1                                         XREF[2]:  f000:e838(j), f000:e850(j)  
   f000:e845     STI                                                ; INTERRUPTS BACK ON DURING LOOP
   f000:e846     NOP                                                ; ALLOW AN INTERRUPT TO OCCUR
   f000:e847     CLI                                                ; INTERRUPTS BACK OFF
   f000:e848     MOV        BX,word ptr [offset BUFFER_HEAD]        ; GET POINTER TO HEAD OF BUFFER
   f000:e84c     CMP        BX,word ptr [offset BUFFER_TAIL]        ; TEST END OF BUFFER
   f000:e850     JZ         K1
   f000:e852     MOV        AX,word ptr [BX]                        ; GET SCAN CODE AND ASCII CODE
   f000:e854     CALL       K4                                      ; MOVE POINTER TO NEXT POSITION
   f000:e857     MOV        word ptr [offset BUFFER_HEAD],BX        ; STORE VALUE IN VARIABLE
   f000:e85b     POP        BX
   f000:e85c     POP        DS
   f000:e85d     IRET
                             K2                                         XREF[1]:  f000:e83c(j)  
   f000:e85e     CLI
   f000:e85f     MOV        BX,word ptr [offset BUFFER_HEAD]
   f000:e863     CMP        BX,word ptr [offset BUFFER_TAIL]
   f000:e867     MOV        AX,word ptr [BX]
   f000:e869     STI
   f000:e86a     POP        BX
   f000:e86b     POP        DS
   f000:e86c     RETF       0x2
                             K3                                         XREF[1]:  f000:e840(j)  
   f000:e86f     MOV        AL,[offset KB_FLAG]
   f000:e872     POP        BX
   f000:e873     POP        DS
   f000:e874     IRET
                             ;----- TABLE OF SHIFT KEYS AND MASK VALUES
                             K6
   f000:e875     db         52h                                     ; INS_KEY
   f000:e876     db         56h                                     ; CAPS_KEY
   f000:e877     db         45h                                     ; NUM_KEY
   f000:e878     db         46h                                     ; SCROLL_KEY
   f000:e879     db         38h                                     ; ALT_KEY
   f000:e87a     db         1Dh                                     ; CTL_KEY
   f000:e87b     db         54h                                     ; LEFT_KEY
   f000:e87c     db         55h                                     ; RIGHT_KEY
   f000:e87d     db         58h
   f000:e87e     db         5Ah
   f000:e87f     db         57h
   f000:e880     db         5Bh                                     ; RUS_KEY
                             ;----- SHIFT_MASK_TABLE
                             K7                                         XREF[1]:  KB_INT:f000:ea08(R)  
   f000:e881     db         80h
   f000:e882     db         40h
   f000:e883     db         20h
   f000:e884     db         10h
   f000:e885     db         8h
   f000:e886     db         4h
   f000:e887     db         2h
   f000:e888     db         1h
                             ;----- SCAN CODE TABLES
                             K8
   f000:e889     db         27
   f000:e88a     sdb        -1
   f000:e88b     db         0h
   f000:e88c     db         FFh
   f000:e88d     db         FFh
   f000:e88e     db         FFh
   f000:e88f     db         1Eh
   f000:e890     db         FFh
   f000:e891     db         FFh
   f000:e892     db         FFh
   f000:e893     db         FFh
   f000:e894     db         1Fh
   f000:e895     db         FFh
   f000:e896     db         127
   f000:e897     sdb        -1
   f000:e898     db         17
   f000:e899     db         23
   f000:e89a     db         5h
   f000:e89b     db         12h
   f000:e89c     db         14h
   f000:e89d     db         19h
   f000:e89e     db         15h
   f000:e89f     db         9h
   f000:e8a0     db         Fh
   f000:e8a1     db         10h
   f000:e8a2     db         1Bh
   f000:e8a3     db         1Dh
   f000:e8a4     db         10
   f000:e8a5     sdb        -1
   f000:e8a6     db         1
   f000:e8a7     db         19
   f000:e8a8     db         4h
   f000:e8a9     db         6h
   f000:e8aa     db         7h
   f000:e8ab     db         8h
   f000:e8ac     db         Ah
   f000:e8ad     db         Bh
   f000:e8ae     db         12
   f000:e8af     db         FFh
   f000:e8b0     db         FFh
   f000:e8b1     db         FFh
   f000:e8b2     db         FFh
   f000:e8b3     db         1Ch
   f000:e8b4     db         1Ah
   f000:e8b5     db         18h
   f000:e8b6     db         3h
   f000:e8b7     db         16h
   f000:e8b8     db         2h
   f000:e8b9     db         Eh
   f000:e8ba     db         13
   f000:e8bb     db         FFh
   f000:e8bc     db         FFh
   f000:e8bd     db         FFh
   f000:e8be     db         FFh
   f000:e8bf     db         FFh
   f000:e8c0     db         FFh
   f000:e8c1     db         ' '
   f000:e8c2     sdb        -1
                             ;----- CTL TABLE SCAN
                             K9
   f000:e8c3     db         94
   f000:e8c4     db         5Fh
   f000:e8c5     db         96
   f000:e8c6     db         61h
   f000:e8c7     db         62h
   f000:e8c8     db         63h
   f000:e8c9     db         100
   f000:e8ca     db         65h
   f000:e8cb     db         66h
   f000:e8cc     db         67h
   f000:e8cd     db         FFh
   f000:e8ce     db         FFh
   f000:e8cf     db         77h
   f000:e8d0     db         FFh
   f000:e8d1     db         84h
   f000:e8d2     db         FFh
   f000:e8d3     db         73h
   f000:e8d4     db         FFh
   f000:e8d5     db         74h
   f000:e8d6     db         FFh
   f000:e8d7     db         75h
   f000:e8d8     db         FFh
   f000:e8d9     db         76h
   f000:e8da     db         FFh
   f000:e8db     sdb        -1
                             ;----- LC TABLE
                             K10
   f000:e8dc     char       1Bh
   f000:e8dd     char       '1'
   f000:e8de     char       '2'
   f000:e8df     char       '3'
   f000:e8e0     char       '4'
   f000:e8e1     char       '5'
   f000:e8e2     char       '6'
   f000:e8e3     char       '7'
   f000:e8e4     char       '8'
   f000:e8e5     char       '9'
   f000:e8e6     char       '0'
   f000:e8e7     char       '-'
   f000:e8e8     char       '='
   f000:e8e9     char       '\b'
   f000:e8ea     char       '\t'
   f000:e8eb     char       'q'
   f000:e8ec     char       'w'
   f000:e8ed     char       'e'
   f000:e8ee     char       'r'
   f000:e8ef     char       't'
   f000:e8f0     char       'y'
   f000:e8f1     char       'u'
   f000:e8f2     char       'i'
   f000:e8f3     char       'o'
   f000:e8f4     char       'p'
   f000:e8f5     char       '['
   f000:e8f6     char       ']'
   f000:e8f7     char       '\r'
   f000:e8f8     char       FFh
   f000:e8f9     char       'a'
   f000:e8fa     char       's'
   f000:e8fb     char       'd'
   f000:e8fc     char       'f'
   f000:e8fd     char       'g'
   f000:e8fe     char       'h'
   f000:e8ff     char       'j'
   f000:e900     char       'k'
   f000:e901     char       'l'
   f000:e902     char       ';'
   f000:e903     char       ':'
   f000:e904     char       '`'
   f000:e905     char       '~'
   f000:e906     char       '\\'
   f000:e907     char       'z'
   f000:e908     char       'x'
   f000:e909     char       'c'
   f000:e90a     char       'v'
   f000:e90b     char       'b'
   f000:e90c     char       'n'
   f000:e90d     char       'm'
   f000:e90e     char       ','
   f000:e90f     char       '.'
   f000:e910     char       '/'
   f000:e911     char       '{'
   f000:e912     char       FFh
   f000:e913     char       FFh
   f000:e914     char       ' '
   f000:e915     char       '}'
                             K11
   f000:e916     db         27
   f000:e917     char       '!'
   f000:e918     char       '@'
   f000:e919     char       '#'
   f000:e91a     char       '$'
   f000:e91b     char       '%'
   f000:e91c     char       '^'
   f000:e91d     char       '&'
   f000:e91e     char       '*'
   f000:e91f     char       '('
   f000:e920     char       ')'
   f000:e921     char       '_'
   f000:e922     char       '+'
   f000:e923     char       '\b'
   f000:e924     char       '\0'
   f000:e925     char       'Q'
   f000:e926     char       'W'
   f000:e927     char       'E'
   f000:e928     char       'R'
   f000:e929     char       'T'
   f000:e92a     char       'Y'
   f000:e92b     char       'U'
   f000:e92c     char       'I'
   f000:e92d     char       'O'
   f000:e92e     char       'P'
   f000:e92f     char       FFh
   f000:e930     char       FFh
   f000:e931     char       '\r'
   f000:e932     char       FFh
   f000:e933     char       'A'
   f000:e934     char       'S'
   f000:e935     char       'D'
   f000:e936     char       'F'
   f000:e937     char       'G'
   f000:e938     char       'H'
   f000:e939     char       'J'
   f000:e93a     char       'K'
   f000:e93b     char       'L'
   f000:e93c     char       '\''
   f000:e93d     char       '"'
   f000:e93e     char       FFh
   f000:e93f     char       FFh
   f000:e940     char       '|'
   f000:e941     char       'Z'
   f000:e942     char       'X'
   f000:e943     char       'C'
   f000:e944     char       'V'
   f000:e945     char       'B'
   f000:e946     char       'N'
   f000:e947     char       'M'
   f000:e948     char       '<'
   f000:e949     char       '>'
   f000:e94a     char       '?'
   f000:e94b     sdb        -1
   f000:e94c     db         0
   f000:e94d     sdb        -1
   f000:e94e     db         ' '
   f000:e94f     sdb        -1
                             K12
   f000:e950     db         84
   f000:e951     db         55h
   f000:e952     db         56h
   f000:e953     db         57h
   f000:e954     db         58h
   f000:e955     db         59h
   f000:e956     db         5Ah
   f000:e957     db         5Bh
   f000:e958     db         5Ch
   f000:e959     db         93
                             K13
   f000:e95a     db         104
   f000:e95b     db         69h
   f000:e95c     db         6Ah
   f000:e95d     db         6Bh
   f000:e95e     db         6Ch
   f000:e95f     db         6Dh
   f000:e960     db         6Eh
   f000:e961     db         6Fh
   f000:e962     db         112
   f000:e963     db         113
                             K14
   f000:e964     ds         "789-456+1230."
                             K15
   f000:e971     db         71
   f000:e972     db         48h
   f000:e973     db         49h
   f000:e974     db         FFh
   f000:e975     db         4Bh
   f000:e976     db         FFh
   f000:e977     db         4Dh
   f000:e978     db         FFh
   f000:e979     db         4Fh
   f000:e97a     db         50h
   f000:e97b     db         51h
   f000:e97c     db         52h
   f000:e97d     db         83
   f000:e97e     ??         FFh
   f000:e97f     ??         FFh
   f000:e980     ??         FFh
   f000:e981     ??         FFh
   f000:e982     ??         FFh
   f000:e983     ??         FFh
   f000:e984     ??         FFh
   f000:e985     ??         FFh
   f000:e986     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far KB_INT(void)
             undefined         AL:1           <RETURN>
                             KB_INT                                     XREF[1]:  f000:fef5(*)  
   f000:e987     STI
   f000:e988     PUSH       AX
   f000:e989     PUSH       BX
   f000:e98a     PUSH       CX
   f000:e98b     PUSH       DX
   f000:e98c     PUSH       SI
   f000:e98d     PUSH       DI
   f000:e98e     PUSH       DS
   f000:e98f     PUSH       ES
   f000:e990     CLD
   f000:e991     MOV        AX,0x40
   f000:e994     MOV        DS,AX                                   ; SET UP ADDRESSING
   f000:e996     IN         AL,0x60                                 ; READ IN THE CHARACTER
   f000:e998     MOV        AH,AL                                   ; SAVE VALUE
   f000:e99a     CMP        AL,0xff                                 ; IS THIS AN OVERRUN CHAR
   f000:e99c     JNZ        K16
   f000:e99e     JMP        K62                                     ; undefined K62()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             K16                                        XREF[1]:  f000:e99c(j)  
   f000:e9a1     AND        AL,0x7f
   f000:e9a3     PUSH       CS
   f000:e9a4     POP        ES
   f000:e9a5     MOV        DI,0xe875                               ; K6 SHIFT KEY TABLE
   f000:e9a8     MOV        CX,12                                   ; K6L LENGTH
   f000:e9ab     SCASB.RE   ES:DI
   f000:e9ad     MOV        AL,AH
   f000:e9af     JZ         K17
   f000:e9b1     JMP        K25
                             LAB_f000_e9b4                              XREF[1]:  f000:eac3(j)  
   f000:e9b4     TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:e9b9     JNZ        LAB_f000_ea33
   f000:e9bb     TEST       byte ptr [offset KB_FLAG],0x3
   f000:e9c0     MOV        AX,0x5cf1
   f000:e9c3     JZ         LAB_f000_e9c8
   f000:e9c5     MOV        AX,0x5cf0
                             LAB_f000_e9c8                              XREF[1]:  f000:e9c3(j)  
   f000:e9c8     JMP        K57
                             K17                                        XREF[1]:  f000:e9af(j)  
   f000:e9cb     SUB        DI,0xe876
   f000:e9cf     CMP        DI,0x8
   f000:e9d2     JC         LAB_f000_ea08
   f000:e9d4     MOV        AH,0x6
   f000:e9d6     CMP        DI,0xa
   f000:e9d9     JC         LAB_f000_ea0d
   f000:e9db     TEST       AL,0x80
   f000:e9dd     JZ         LAB_f000_ea33
   f000:e9df     CMP        DI,0xb
   f000:e9e2     JZ         LAB_f000_e9fb
   f000:e9e4     TEST       byte ptr [offset KB_FLAG_1],0x4
   f000:e9e9     JZ         LAB_f000_e9f3
   f000:e9eb     OR         byte ptr [offset KB_FLAG_1],0x1
   f000:e9f0     JMP        LAB_f000_ea33
   f000:e9f2     NOP
                             LAB_f000_e9f3                              XREF[1]:  f000:e9e9(j)  
   f000:e9f3     OR         byte ptr [offset KB_FLAG_1],0x3
   f000:e9f8     JMP        LAB_f000_ea33
   f000:e9fa     NOP
                             LAB_f000_e9fb                              XREF[1]:  f000:e9e2(j)  
   f000:e9fb     XOR        byte ptr [offset KB_FLAG_1],0x2
   f000:ea00     XOR        byte ptr [offset KB_FLAG_1],0x1
   f000:ea05     JMP        LAB_f000_ea33
   f000:ea07     NOP
                             LAB_f000_ea08                              XREF[1]:  f000:e9d2(j)  
   f000:ea08     MOV        AH,byte ptr CS:[DI + K7]                ; = 80h
                             LAB_f000_ea0d                              XREF[1]:  f000:e9d9(j)  
   f000:ea0d     TEST       AL,0x80
   f000:ea0f     JNZ        K23
   f000:ea11     CMP        AH,0x10
   f000:ea14     JNC        LAB_f000_ea36
   f000:ea16     CMP        AH,0x6
   f000:ea19     JZ         LAB_f000_ea22
   f000:ea1b     OR         byte ptr [offset KB_FLAG],AH
   f000:ea1f     JMP        K26
                             LAB_f000_ea22                              XREF[1]:  f000:ea19(j)  
   f000:ea22     OR         byte ptr [offset KB_FLAG_1],0x6
   f000:ea27     TEST       byte ptr [offset KB_FLAG_1],0x1
   f000:ea2c     JZ         LAB_f000_ea33
   f000:ea2e     AND        byte ptr [offset KB_FLAG_1],0xfd
                             LAB_f000_ea33                              XREF[6]:  f000:e9b9(j), f000:e9dd(j), 
                                                                                 f000:e9f0(j), f000:e9f8(j), 
                                                                                 f000:ea05(j), f000:ea2c(j)  
   f000:ea33     JMP        K26
                             LAB_f000_ea36                              XREF[1]:  f000:ea14(j)  
   f000:ea36     TEST       byte ptr [offset KB_FLAG],0x4
   f000:ea3b     JNZ        K25
   f000:ea3d     CMP        AL,0x52                                 ; CHECK FOR INSERT KEY
   f000:ea3f     JNZ        LAB_f000_ea66
   f000:ea41     TEST       byte ptr [offset KB_FLAG],0x8
   f000:ea46     JZ         LAB_f000_ea4b
   f000:ea48     JMP        K25
   f000:ea4a     NOP
                             LAB_f000_ea4b                              XREF[1]:  f000:ea46(j)  
   f000:ea4b     TEST       byte ptr [offset KB_FLAG],0x20
   f000:ea50     JNZ        LAB_f000_ea5f
   f000:ea52     TEST       byte ptr [offset KB_FLAG],0x3
   f000:ea57     JZ         LAB_f000_ea66
                             LAB_f000_ea59                              XREF[1]:  f000:ea64(j)  
   f000:ea59     MOV        AX,0x5230
   f000:ea5c     JMP        K57
                             LAB_f000_ea5f                              XREF[1]:  f000:ea50(j)  
   f000:ea5f     TEST       byte ptr [offset KB_FLAG],0x3
   f000:ea64     JZ         LAB_f000_ea59
                             LAB_f000_ea66                              XREF[2]:  f000:ea3f(j), f000:ea57(j)  
   f000:ea66     TEST       byte ptr [offset KB_FLAG_1],AH
   f000:ea6a     JNZ        K26
   f000:ea6c     OR         byte ptr [offset KB_FLAG_1],AH
   f000:ea70     XOR        byte ptr [offset KB_FLAG],AH
   f000:ea74     CMP        AL,0x52
   f000:ea76     JNZ        K26
   f000:ea78     MOV        AX,0x5200
   f000:ea7b     JMP        K57
                             LAB_f000_ea7e                              XREF[1]:  f000:ea94(j)  
   f000:ea7e     AND        byte ptr [offset KB_FLAG_1],0xfb
   f000:ea83     XOR        byte ptr [offset KB_FLAG_1],0x2
   f000:ea88     JMP        LAB_f000_ea9a
                             ;----- BREAK SHIFT FOUND
                             K23                                        XREF[1]:  f000:ea0f(j)  
   f000:ea8a     CMP        AH,0x10
   f000:ea8d     JNC        K24
   f000:ea8f     NOT        AH
   f000:ea91     CMP        AH,0xf9
   f000:ea94     JZ         LAB_f000_ea7e
   f000:ea96     AND        byte ptr [offset KB_FLAG],AH
                             LAB_f000_ea9a                              XREF[1]:  f000:ea88(j)  
   f000:ea9a     CMP        AL,0xb8
   f000:ea9c     JNZ        K26
                             ;----- ALTERNATE SHIFT KEY RELEASED, GET THE VALUE INTO BUFFER
   f000:ea9e     MOV        AL,[offset ALT_INPUT]
   f000:eaa1     MOV        AH,0x0
   f000:eaa3     MOV        byte ptr [offset ALT_INPUT],AH
   f000:eaa7     CMP        AL,0x0
   f000:eaa9     JZ         K26
   f000:eaab     JMP        K58
                             K24                                        XREF[1]:  f000:ea8d(j)  
   f000:eaae     NOT        AH
   f000:eab0     AND        byte ptr [offset KB_FLAG_1],AH
   f000:eab4     JMP        K26
   f000:eab6     NOP
                             K25                                        XREF[3]:  f000:e9b1(j), f000:ea3b(j), 
                                                                                 f000:ea48(j)  
   f000:eab7     CMP        AL,0x80
   f000:eab9     JNC        K26
   f000:eabb     CMP        AL,0x59
   f000:eabd     JZ         LAB_f000_eae4
   f000:eabf     CMP        AL,0x5c
   f000:eac1     JNZ        LAB_f000_eac6
   f000:eac3     JMP        LAB_f000_e9b4
                             LAB_f000_eac6                              XREF[1]:  f000:eac1(j)  
   f000:eac6     TEST       byte ptr [offset KB_FLAG_1],0x8
   f000:eacb     JZ         LAB_f000_eaea
   f000:eacd     CMP        AL,0x45                                 ; CHECK FOR NUM KEY
   f000:eacf     JZ         K26
   f000:ead1     AND        byte ptr [offset KB_FLAG_1],0xf7
                             K26                                        XREF[14]: K63:f000:d3b7(j), f000:d3d9(j), 
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
   f000:ead6     CLI
   f000:ead7     MOV        AL,0x20
   f000:ead9     OUT        0x20,AL
                             K27                                        XREF[2]:  KB_INT:f000:eba5(j), 
                                                                                 KB_INT:f000:ebe4(j)  
   f000:eadb     POP        ES
   f000:eadc     POP        DS
   f000:eadd     POP        DI
   f000:eade     POP        SI
   f000:eadf     POP        DX
   f000:eae0     POP        CX
   f000:eae1     POP        BX
   f000:eae2     POP        AX
   f000:eae3     IRET
                             LAB_f000_eae4                              XREF[1]:  f000:eabd(j)  
   f000:eae4     MOV        AX,0xa000
   f000:eae7     JMP        K57
                             LAB_f000_eaea                              XREF[1]:  f000:eacb(j)  
   f000:eaea     TEST       byte ptr [offset KB_FLAG],0x8
   f000:eaef     JNZ        LAB_f000_eaf4
   f000:eaf1     JMP        LAB_f000_eb60
   f000:eaf3     NOP
                             LAB_f000_eaf4                              XREF[1]:  f000:eaef(j)  
   f000:eaf4     TEST       byte ptr [offset KB_FLAG],0x4
   f000:eaf9     JZ         LAB_f000_eb0a
   f000:eafb     CMP        AL,0x53
   f000:eafd     JNZ        LAB_f000_eb0a
   f000:eaff     MOV        word ptr [offset DAT_0000_0472],0x1234
   f000:eb05     JMPF       Start                                   ; undefined Start()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_eb0a                              XREF[2]:  f000:eaf9(j), f000:eafd(j)  
   f000:eb0a     CMP        AL,0x39
   f000:eb0c     JNZ        LAB_f000_eb13
   f000:eb0e     MOV        AL,0x20
   f000:eb10     JMP        K57
                             LAB_f000_eb13                              XREF[1]:  f000:eb0c(j)  
   f000:eb13     MOV        DI,0xd42b
   f000:eb16     MOV        CX,0xa
   f000:eb19     SCASB.RE   ES:DI
   f000:eb1b     JNZ        LAB_f000_eb2f
   f000:eb1d     SUB        DI,0xd42c
   f000:eb21     MOV        AL,[offset ALT_INPUT]
   f000:eb24     MOV        AH,0xa
   f000:eb26     MUL        AH
   f000:eb28     ADD        AX,DI
   f000:eb2a     MOV        [offset ALT_INPUT],AL
   f000:eb2d     JMP        K26
                             LAB_f000_eb2f                              XREF[1]:  f000:eb1b(j)  
   f000:eb2f     MOV        byte ptr [offset ALT_INPUT],0x0
   f000:eb34     MOV        CX,0x1a
   f000:eb37     SCASB.RE   ES:DI
   f000:eb39     JNZ        LAB_f000_eb40
   f000:eb3b     MOV        AL,0x0
   f000:eb3d     JMP        K57
                             LAB_f000_eb40                              XREF[1]:  f000:eb39(j)  
   f000:eb40     CMP        AL,0x2
   f000:eb42     JC         LAB_f000_eb50
   f000:eb44     CMP        AL,0xe
   f000:eb46     JNC        LAB_f000_eb50
   f000:eb48     ADD        AH,0x76
   f000:eb4b     MOV        AL,0x0
   f000:eb4d     JMP        K57
                             LAB_f000_eb50                              XREF[2]:  f000:eb42(j), f000:eb46(j)  
   f000:eb50     CMP        AL,0x3b
   f000:eb52     JNC        LAB_f000_eb56
                             LAB_f000_eb54                              XREF[1]:  f000:eb58(j)  
   f000:eb54     JMP        K26
                             LAB_f000_eb56                              XREF[1]:  f000:eb52(j)  
   f000:eb56     CMP        AL,0x47
   f000:eb58     JNC        LAB_f000_eb54
   f000:eb5a     MOV        BX,0xe95a
   f000:eb5d     JMP        K63                                     ; undefined K63()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_eb60                              XREF[1]:  f000:eaf1(j)  
   f000:eb60     TEST       byte ptr [offset KB_FLAG],0x4
   f000:eb65     JZ         LAB_f000_ebc2
   f000:eb67     CMP        AL,0x46
   f000:eb69     JNZ        LAB_f000_eb83
   f000:eb6b     MOV        BX,0x1e                                 ; RESET BUFFER TO EMPTY
   f000:eb6e     MOV        word ptr [offset BUFFER_HEAD],BX
   f000:eb72     MOV        word ptr [offset BUFFER_TAIL],BX
   f000:eb76     MOV        byte ptr [offset DAT_0000_0471],0x80    ; TURN ON BIOS_BREAK BIT
   f000:eb7b     INT        0x1b                                    ; BREAK INTERRUPT VECTOR
   f000:eb7d     MOV        AX,0x0
   f000:eb80     JMP        K57
                             LAB_f000_eb83                              XREF[1]:  f000:eb69(j)  
   f000:eb83     CMP        AL,0x45
   f000:eb85     JNZ        LAB_f000_eba8
   f000:eb87     OR         byte ptr [offset KB_FLAG_1],0x8
   f000:eb8c     MOV        AL,0x20
   f000:eb8e     OUT        0x20,AL
   f000:eb90     CMP        byte ptr [offset CRT_MODE],0x7          ; IS THIS BLACK AND WHITE CARD
   f000:eb95     JZ         K40
   f000:eb97     MOV        DX,0x3d8                                ; PORT FOR COLOR CARD
   f000:eb9a     MOV        AL,[offset CRT_MODE_SET]                ; GET THE VALUE OF THE CURRENT M
   f000:eb9d     OUT        DX,AL                                   ; SET THE CRT MODE, SO THAT CRT 
                             K40                                        XREF[2]:  f000:eb95(j), f000:eba3(j)  
   f000:eb9e     TEST       byte ptr [offset KB_FLAG_1],0x8
   f000:eba3     JNZ        K40
   f000:eba5     JMP        K27
                             LAB_f000_eba8                              XREF[1]:  f000:eb85(j)  
   f000:eba8     CMP        AL,0x37
   f000:ebaa     JNZ        LAB_f000_ebb2
   f000:ebac     MOV        AX,0x7200
   f000:ebaf     JMP        K57
                             LAB_f000_ebb2                              XREF[1]:  f000:ebaa(j)  
   f000:ebb2     MOV        BX,0xe889
   f000:ebb5     CMP        AL,0x3b
   f000:ebb7     JNC        LAB_f000_ebbc
   f000:ebb9     JMP        K56
                             LAB_f000_ebbc                              XREF[1]:  f000:ebb7(j)  
   f000:ebbc     MOV        BX,0xe8c3
   f000:ebbf     JMP        K63                                     ; undefined K63()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_ebc2                              XREF[1]:  f000:eb65(j)  
   f000:ebc2     CMP        AL,0x47
   f000:ebc4     JNC        LAB_f000_ec04
   f000:ebc6     TEST       byte ptr [offset KB_FLAG],0x3
   f000:ebcb     JZ         LAB_f000_ebd7
   f000:ebcd     CMP        AL,0xf
   f000:ebcf     JNZ        LAB_f000_ebda
   f000:ebd1     MOV        AX,0xf00
   f000:ebd4     JMP        K57
                             LAB_f000_ebd7                              XREF[1]:  f000:ebcb(j)  
   f000:ebd7     JMP        FUN_f000_d372                           ; undefined FUN_f000_d372()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_ebda                              XREF[1]:  f000:ebcf(j)  
   f000:ebda     CMP        AL,0x37
   f000:ebdc     JNZ        LAB_f000_ebe7
   f000:ebde     MOV        AL,0x20
   f000:ebe0     OUT        0x20,AL
   f000:ebe2     INT        0x5
   f000:ebe4     JMP        K27
                             LAB_f000_ebe7                              XREF[1]:  f000:ebdc(j)  
   f000:ebe7     CMP        AL,0x3b
   f000:ebe9     JC         LAB_f000_ebf1
   f000:ebeb     MOV        BX,0xe950
   f000:ebee     JMP        K63                                     ; undefined K63()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_ebf1                              XREF[1]:  f000:ebe9(j)  
   f000:ebf1     TEST       byte ptr [offset KB_FLAG_1],0x2
   f000:ebf6     JZ         LAB_f000_ebfe
   f000:ebf8     MOV        BX,0xe916
   f000:ebfb     JMP        K56
                             LAB_f000_ebfe                              XREF[1]:  f000:ebf6(j)  
   f000:ebfe     MOV        BX,0xd2f4
   f000:ec01     JMP        K56
                             LAB_f000_ec04                              XREF[1]:  f000:ebc4(j)  
   f000:ec04     TEST       byte ptr [offset KB_FLAG],0x20
   f000:ec09     JNZ        LAB_f000_ec2e
   f000:ec0b     TEST       byte ptr [offset KB_FLAG],0x3
   f000:ec10     JNZ        LAB_f000_ec35
                             LAB_f000_ec12                              XREF[1]:  f000:ec33(j)  
   f000:ec12     CMP        AL,0x4a
   f000:ec14     JZ         LAB_f000_ec22
   f000:ec16     CMP        AL,0x4e
   f000:ec18     JZ         LAB_f000_ec28
   f000:ec1a     SUB        AL,0x47
   f000:ec1c     MOV        BX,0xe971
   f000:ec1f     JMP        K64
                             LAB_f000_ec22                              XREF[1]:  f000:ec14(j)  
   f000:ec22     MOV        AX,0x4a2d
   f000:ec25     JMP        K57
                             LAB_f000_ec28                              XREF[1]:  f000:ec18(j)  
   f000:ec28     MOV        AX,0x4e2b
   f000:ec2b     JMP        K57
                             LAB_f000_ec2e                              XREF[1]:  f000:ec09(j)  
   f000:ec2e     TEST       byte ptr [offset KB_FLAG],0x3
   f000:ec33     JNZ        LAB_f000_ec12
                             LAB_f000_ec35                              XREF[1]:  f000:ec10(j)  
   f000:ec35     SUB        AL,70                                   ; CONVERT ORIGIN
   f000:ec37     MOV        BX,0xe964                               ; OFFSET K14 NUM STATE TABLE
   f000:ec3a     JMP        K56                                     ; TRANSLATE_CHAR
   f000:ec3d     ??         FFh
   f000:ec3e     ??         FFh
   f000:ec3f     ??         FFh
   f000:ec40     ??         FFh
   f000:ec41     ??         FFh
   f000:ec42     ??         FFh
   f000:ec43     ??         FFh
   f000:ec44     ??         FFh
   f000:ec45     ??         FFh
   f000:ec46     ??         FFh
   f000:ec47     ??         FFh
   f000:ec48     ??         FFh
   f000:ec49     ??         FFh
   f000:ec4a     ??         FFh
   f000:ec4b     ??         FFh
   f000:ec4c     ??         FFh
   f000:ec4d     ??         FFh
   f000:ec4e     ??         FFh
   f000:ec4f     ??         FFh
   f000:ec50     ??         FFh
   f000:ec51     ??         FFh
   f000:ec52     ??         FFh
   f000:ec53     ??         FFh
   f000:ec54     ??         FFh
   f000:ec55     ??         FFh
   f000:ec56     ??         FFh
   f000:ec57     ??         FFh
   f000:ec58     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __stdcall16far DISKETTE_IO(void)
             undefined         AL:1           <RETURN>
                             DISKETTE_IO                                XREF[1]:  f000:ff09(*)  
   f000:ec59     STI
   f000:ec5a     PUSH       BX
   f000:ec5b     PUSH       CX
   f000:ec5c     PUSH       DS
   f000:ec5d     PUSH       SI
   f000:ec5e     PUSH       DI
   f000:ec5f     PUSH       BP
   f000:ec60     PUSH       DX
   f000:ec61     MOV        BP,SP
   f000:ec63     CALL       DDS                                     ; undefined DDS(void)
   f000:ec66     CALL       J1                                      ; undefined J1(void)
   f000:ec69     MOV        BX,0x4
   f000:ec6c     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ec6f     MOV        byte ptr [0x40],AH
   f000:ec73     MOV        AH,byte ptr [0x41]
   f000:ec77     CMP        AH,0x1
   f000:ec7a     CMC
   f000:ec7b     POP        DX
   f000:ec7c     POP        BP
   f000:ec7d     POP        DI
   f000:ec7e     POP        SI
   f000:ec7f     POP        DS
   f000:ec80     POP        CX
   f000:ec81     POP        BX
   f000:ec82     RETF       0x2
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near J1(void)
             undefined         AL:1           <RETURN>
                             J1                                         XREF[1]:  DISKETTE_IO:f000:ec66(c)  
   f000:ec85     MOV        DH,AL
   f000:ec87     AND        byte ptr [0x3f],0x7f
   f000:ec8c     OR         AH,AH
   f000:ec8e     JZ         DISK_RESET
   f000:ec90     DEC        AH
   f000:ec92     JZ         DISK_STATUS
   f000:ec94     MOV        byte ptr [0x41],0x0
   f000:ec99     CMP        DL,0x4
   f000:ec9c     JNC        LAB_f000_ecb1
   f000:ec9e     DEC        AH
   f000:eca0     JZ         DISK_READ
   f000:eca2     DEC        AH
   f000:eca4     JNZ        LAB_f000_eca9
   f000:eca6     JMP        DISK_WRITE                              ; undefined DISK_WRITE(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_eca9                              XREF[1]:  f000:eca4(j)  
   f000:eca9     DEC        AH
   f000:ecab     JZ         DISK_VERF
   f000:ecad     DEC        AH
   f000:ecaf     JZ         DISK_FORMAT
                             LAB_f000_ecb1                              XREF[1]:  f000:ec9c(j)  
   f000:ecb1     MOV        byte ptr [0x41],0x1
   f000:ecb6     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DISK_RESET(void)
             undefined         AL:1           <RETURN>
                             DISK_RESET                                 XREF[1]:  J1:f000:ec8e(j)  
   f000:ecb7     MOV        DX,0x3f2
   f000:ecba     CLI
   f000:ecbb     MOV        AL,[0x3f]
   f000:ecbe     MOV        CL,0x4
   f000:ecc0     SHL        AL,CL
   f000:ecc2     TEST       AL,0x20
   f000:ecc4     JNZ        LAB_f000_ecd2
   f000:ecc6     TEST       AL,0x40
   f000:ecc8     JNZ        LAB_f000_ecd0
   f000:ecca     TEST       AL,0x80
   f000:eccc     JZ         LAB_f000_ecd4
   f000:ecce     INC        AL
                             LAB_f000_ecd0                              XREF[1]:  f000:ecc8(j)  
   f000:ecd0     INC        AL
                             LAB_f000_ecd2                              XREF[1]:  f000:ecc4(j)  
   f000:ecd2     INC        AL
                             LAB_f000_ecd4                              XREF[1]:  f000:eccc(j)  
   f000:ecd4     OR         AL,0x8
   f000:ecd6     OUT        DX,AL
   f000:ecd7     MOV        byte ptr [0x3e],0x0
   f000:ecdc     MOV        byte ptr [0x41],0x0
   f000:ece1     OR         AL,0x4
   f000:ece3     OUT        DX,AL
   f000:ece4     STI
   f000:ece5     CALL       CHK_STAT_2                              ; undefined CHK_STAT_2()
   f000:ece8     MOV        AL,[0x42]
   f000:eceb     CMP        AL,0xc0
   f000:eced     JZ         LAB_f000_ecf5
   f000:ecef     OR         byte ptr [0x41],0x20
   f000:ecf4     RET
                             LAB_f000_ecf5                              XREF[1]:  f000:eced(j)  
   f000:ecf5     MOV        AH,0x3
   f000:ecf7     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:ecfa     MOV        BX,0x1
   f000:ecfd     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ed00     MOV        BX,0x3
   f000:ed03     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ed06     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DISK_STATUS(void)
             undefined         AL:1           <RETURN>
                             DISK_STATUS                                XREF[1]:  J1:f000:ec92(j)  
   f000:ed07     MOV        AL,[0x41]
   f000:ed0a     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DISK_READ(void)
             undefined         AL:1           <RETURN>
                             DISK_READ                                  XREF[1]:  J1:f000:eca0(j)  
   f000:ed0b     MOV        AL,0x46
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near J9(void)
             undefined         AL:1           <RETURN>
                             J9                                         XREF[1]:  DISK_VERF:f000:ed14(T), 
                                                                                 DISK_VERF:f000:ed16(j)  
   f000:ed0d     CALL       DMA_SETUP                               ; undefined DMA_SETUP()
   f000:ed10     MOV        AH,0xe6
   f000:ed12     JMP        RW_OPN
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined __cdecl16near DISK_VERF(void)
                               Thunked-Function: J9
             undefined         AL:1           <RETURN>
                             DISK_VERF                                  XREF[1]:  J1:f000:ecab(j)  
   f000:ed14     MOV        AL,0x42
   f000:ed16     JMP        J9
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DISK_FORMAT(void)
             undefined         AL:1           <RETURN>
                             DISK_FORMAT                                XREF[1]:  J1:f000:ecaf(j)  
   f000:ed18     OR         byte ptr [0x3f],0x80
   f000:ed1d     MOV        AL,0x4a
   f000:ed1f     CALL       DMA_SETUP                               ; undefined DMA_SETUP()
   f000:ed22     MOV        AH,0x4d
   f000:ed24     JMP        RW_OPN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near J10(void)
             undefined         AL:1           <RETURN>
                             J10                                        XREF[1]:  RW_OPN:f000:edc0(c)  
   f000:ed26     MOV        BX,0x7
   f000:ed29     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ed2c     MOV        BX,0x9
   f000:ed2f     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ed32     MOV        BX,0xf
   f000:ed35     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ed38     MOV        BX,0x11
   f000:ed3b     JMP        LAB_f000_ede8
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DISK_WRITE(void)
             undefined         AL:1           <RETURN>
                             DISK_WRITE                                 XREF[1]:  J1:f000:eca6(c)  
   f000:ed3e     OR         byte ptr [0x3f],0x80
   f000:ed43     MOV        AL,0x4a
   f000:ed45     CALL       DMA_SETUP                               ; undefined DMA_SETUP()
   f000:ed48     MOV        AH,0xc5
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near RW_OPN(void)
             undefined         AL:1           <RETURN>
                             RW_OPN                                     XREF[2]:  J9:f000:ed12(j), 
                                                                                 DISK_FORMAT:f000:ed24(j)  
   f000:ed4a     JNC        LAB_f000_ed54
   f000:ed4c     MOV        byte ptr [0x41],0x9
   f000:ed51     MOV        AL,0x0
   f000:ed53     RET
                             LAB_f000_ed54                              XREF[1]:  f000:ed4a(j)  
   f000:ed54     PUSH       AX
   f000:ed55     PUSH       CX
   f000:ed56     MOV        CL,DL
   f000:ed58     MOV        AL,0x1
   f000:ed5a     SHL        AL,CL
   f000:ed5c     CLI
   f000:ed5d     MOV        byte ptr [0x40],0xff
   f000:ed62     TEST       byte ptr [0x3f],AL
   f000:ed66     JNZ        LAB_f000_ed99
   f000:ed68     AND        byte ptr [0x3f],0xf0
   f000:ed6d     OR         byte ptr [0x3f],AL
   f000:ed71     STI
   f000:ed72     MOV        AL,0x10
   f000:ed74     SHL        AL,CL
   f000:ed76     OR         AL,DL
   f000:ed78     OR         AL,0xc
   f000:ed7a     PUSH       DX
   f000:ed7b     MOV        DX,0x3f2
   f000:ed7e     OUT        DX,AL
   f000:ed7f     POP        DX
   f000:ed80     TEST       byte ptr [0x3f],0x80
   f000:ed85     JZ         LAB_f000_ed99
   f000:ed87     MOV        BX,0x14
   f000:ed8a     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ed8d     OR         AH,AH
                             LAB_f000_ed8f                              XREF[1]:  f000:ed97(j)  
   f000:ed8f     JZ         LAB_f000_ed99
   f000:ed91     SUB        CX,CX
                             LAB_f000_ed93                              XREF[1]:  f000:ed93(j)  
   f000:ed93     LOOP       LAB_f000_ed93
   f000:ed95     DEC        AH
   f000:ed97     JMP        LAB_f000_ed8f
                             LAB_f000_ed99                              XREF[3]:  f000:ed66(j), f000:ed85(j), 
                                                                                 f000:ed8f(j)  
   f000:ed99     STI
   f000:ed9a     POP        CX
   f000:ed9b     CALL       SEEK                                    ; undefined SEEK()
   f000:ed9e     POP        AX
   f000:ed9f     MOV        BH,AH
   f000:eda1     MOV        DH,0x0
   f000:eda3     JC         LAB_f000_edef
   f000:eda5     MOV        SI,0xedef
   f000:eda8     PUSH       SI
   f000:eda9     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:edac     MOV        AH,byte ptr [BP + 0x1]
   f000:edaf     SHL        AH,0x1
   f000:edb1     SHL        AH,0x1
   f000:edb3     AND        AH,0x4
   f000:edb6     OR         AH,DL
   f000:edb8     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:edbb     CMP        BH,0x4d
   f000:edbe     JNZ        LAB_f000_edc3
   f000:edc0     JMP        J10                                     ; undefined J10(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_edc3                              XREF[1]:  f000:edbe(j)  
   f000:edc3     MOV        AH,CH
   f000:edc5     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:edc8     MOV        AH,byte ptr [BP + 0x1]
   f000:edcb     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:edce     MOV        AH,CL
   f000:edd0     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:edd3     MOV        BX,0x7
   f000:edd6     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:edd9     MOV        BX,0x9
   f000:eddc     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:eddf     MOV        BX,0xb
   f000:ede2     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:ede5     MOV        BX,0xd
                             LAB_f000_ede8                              XREF[1]:  f000:ed3b(j)  
   f000:ede8     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:edeb     POP        SI
   f000:edec     CALL       WAIT_INT                                ; undefined WAIT_INT()
                             LAB_f000_edef                              XREF[1]:  RW_OPN:f000:eda3(j)  
   f000:edef     JC         LAB_f000_ee36
   f000:edf1     CALL       RESULTS                                 ; undefined RESULTS(void)
   f000:edf4     JC         LAB_f000_ee35
   f000:edf6     CLD
   f000:edf7     MOV        SI,0x42
   f000:edfa     LODSB      SI
   f000:edfb     AND        AL,0xc0
   f000:edfd     JZ         LAB_f000_ee3a
   f000:edff     CMP        AL,0x40
   f000:ee01     JNZ        LAB_f000_ee2c
   f000:ee03     LODSB      SI
   f000:ee04     SHL        AL,0x1
   f000:ee06     MOV        AH,0x4
   f000:ee08     JC         LAB_f000_ee2e
   f000:ee0a     SHL        AL,0x1
   f000:ee0c     SHL        AL,0x1
   f000:ee0e     MOV        AH,0x10
   f000:ee10     JC         LAB_f000_ee2e
   f000:ee12     SHL        AL,0x1
   f000:ee14     MOV        AH,0x10
   f000:ee16     JC         LAB_f000_ee2e
   f000:ee18     SHL        AL,0x1
   f000:ee1a     SHL        AL,0x1
   f000:ee1c     MOV        AH,0x4
   f000:ee1e     JC         LAB_f000_ee2e
   f000:ee20     SHL        AL,0x1
   f000:ee22     MOV        AH,0x3
   f000:ee24     JC         LAB_f000_ee2e
   f000:ee26     SHL        AL,0x1
   f000:ee28     MOV        AH,0x2
   f000:ee2a     JC         LAB_f000_ee2e
                             LAB_f000_ee2c                              XREF[1]:  f000:ee01(j)  
   f000:ee2c     MOV        AH,0x20
                             LAB_f000_ee2e                              XREF[6]:  f000:ee08(j), f000:ee10(j), 
                                                                                 f000:ee16(j), f000:ee1e(j), 
                                                                                 f000:ee24(j), f000:ee2a(j)  
   f000:ee2e     OR         byte ptr [0x41],AH
   f000:ee32     CALL       NUM_TRANS                               ; undefined NUM_TRANS(void)
                             LAB_f000_ee35                              XREF[1]:  f000:edf4(j)  
   f000:ee35     RET
                             LAB_f000_ee36                              XREF[1]:  f000:edef(j)  
   f000:ee36     CALL       RESULTS                                 ; undefined RESULTS(void)
   f000:ee39     RET
                             LAB_f000_ee3a                              XREF[1]:  f000:edfd(j)  
   f000:ee3a     CALL       NUM_TRANS                               ; undefined NUM_TRANS(void)
   f000:ee3d     XOR        AH,AH
   f000:ee3f     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near NEC_OUTPUT(void)
             undefined         AL:1           <RETURN>
                             NEC_OUTPUT                                 XREF[13]: NEC_OUTPUT_MK88:f000:e557(c), 
                                                                                 DISK_RESET:f000:ecf7(c), 
                                                                                 RW_OPN:f000:eda9(c), 
                                                                                 RW_OPN:f000:edb8(c), 
                                                                                 RW_OPN:f000:edc5(c), 
                                                                                 RW_OPN:f000:edcb(c), 
                                                                                 RW_OPN:f000:edd0(c), 
                                                                                 GET_PARM:f000:ee7a(j), 
                                                                                 SEEK:f000:ee91(c), 
                                                                                 SEEK:f000:ee96(c), 
                                                                                 SEEK:f000:eea0(c), 
                                                                                 SEEK:f000:eea5(c), 
                                                                                 CHK_STAT_2:f000:ef19(c)  
   f000:ee40     PUSH       DX
   f000:ee41     PUSH       CX
   f000:ee42     MOV        DX,0x3f4
   f000:ee45     XOR        CX,CX
                             LAB_f000_ee47                              XREF[1]:  f000:ee4c(j)  
   f000:ee47     IN         AL,DX
   f000:ee48     TEST       AL,0x40
   f000:ee4a     JZ         LAB_f000_ee58
   f000:ee4c     LOOP       LAB_f000_ee47
                             LAB_f000_ee4e                              XREF[1]:  f000:ee61(j)  
   f000:ee4e     OR         byte ptr [0x41],0x80
   f000:ee53     POP        CX
   f000:ee54     POP        DX
   f000:ee55     POP        AX
   f000:ee56     STC
   f000:ee57     RET
                             LAB_f000_ee58                              XREF[1]:  f000:ee4a(j)  
   f000:ee58     XOR        CX,CX
                             LAB_f000_ee5a                              XREF[1]:  f000:ee5f(j)  
   f000:ee5a     IN         AL,DX
   f000:ee5b     TEST       AL,0x80
   f000:ee5d     JNZ        LAB_f000_ee63
   f000:ee5f     LOOP       LAB_f000_ee5a
   f000:ee61     JMP        LAB_f000_ee4e
                             LAB_f000_ee63                              XREF[1]:  f000:ee5d(j)  
   f000:ee63     MOV        AL,AH
   f000:ee65     MOV        DX,0x3f5
   f000:ee68     OUT        DX,AL
   f000:ee69     POP        CX
   f000:ee6a     POP        DX
   f000:ee6b     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near GET_PARM(void)
             undefined         AL:1           <RETURN>
                             GET_PARM                                   XREF[14]: DISKETTE_IO:f000:ec6c(c), 
                                                                                 DISK_RESET:f000:ecfd(c), 
                                                                                 DISK_RESET:f000:ed03(c), 
                                                                                 J10:f000:ed29(c), 
                                                                                 J10:f000:ed2f(c), 
                                                                                 J10:f000:ed35(c), 
                                                                                 RW_OPN:f000:ed8a(c), 
                                                                                 RW_OPN:f000:edd6(c), 
                                                                                 RW_OPN:f000:eddc(c), 
                                                                                 RW_OPN:f000:ede2(c), 
                                                                                 J10:f000:ede8(c), 
                                                                                 SEEK:f000:eeb4(c), 
                                                                                 DMA_SETUP:f000:eef7(c), 
                                                                                 NUM_TRANS:f000:efbb(c)  
   f000:ee6c     PUSH       DS
   f000:ee6d     SUB        AX,AX
   f000:ee6f     MOV        DS,AX
   f000:ee71     LDS        SI,[DAT_0000_0078]
   f000:ee75     SHR        BX,0x1
   f000:ee77     MOV        AH,byte ptr [BX + SI]
   f000:ee79     POP        DS
   f000:ee7a     JC         NEC_OUTPUT
   f000:ee7c     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SEEK()
             undefined         AL:1           <RETURN>
                             ;------------------------------------------------------------
                             ; SEEK                                                       
                             ;       THIS ROUTINE WILL MOVE THE HEAD ON THE NAMED DRIVE TO
                             ;       NAMED TRACK. IF THE DRIVE HAS NOT BEEN ACCESSED SINCE
                             ;       DRIVE RESET COMMAND WAS ISSUED, THE DRIVE WILL BE REC
                             ; INPUT                                                      
                             ;       (DL) = DRIVE TO SEEK ON                              
                             ;       (CH) = TRACK TO SEEK TO                              
                             ; OUTPUT                                                     
                             ;       CY = 0 SUCCESS                                       
                             ;       CY = 1 FAILURE -- DISKETTE_STATUS SET ACCORDINGLY    
                             ;       (AX) DESTROYED                                       
                             ;------------------------------------------------------------
                             SEEK                                       XREF[3]:  f000:e451(c), f000:e458(c), 
                                                                                 RW_OPN:f000:ed9b(c)  
   f000:ee7d     MOV        AL,0x1
   f000:ee7f     PUSH       CX
   f000:ee80     MOV        CL,DL
   f000:ee82     ROL        AL,CL
   f000:ee84     POP        CX
   f000:ee85     TEST       byte ptr [0x3e],AL                      ; TEST FOR RECAL REQUIRED
   f000:ee89     JNZ        J28                                     ; NO_RECAL
   f000:ee8b     OR         byte ptr [0x3e],AL                      ; TURN ON THE NO RECAL BIT IN FLAG
   f000:ee8f     MOV        AH,0x7
   f000:ee91     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:ee94     MOV        AH,DL
   f000:ee96     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:ee99     CALL       CHK_STAT_2                              ; undefined CHK_STAT_2()
   f000:ee9c     JC         J32
                             ;----- DRIVE IS IN SYNCH WITH CONTROLLER, SEEK TO TRACK
                             J28                                        XREF[1]:  f000:ee89(j)  
   f000:ee9e     MOV        AH,0xf                                  ; SEEK COMMAND TO NEC
   f000:eea0     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:eea3     MOV        AH,DL                                   ; DRIVE NUMBER
   f000:eea5     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:eea8     MOV        AH,CH                                   ; TRACK NUMBER
   f000:eeaa     CALL       NEC_OUTPUT_MK88                         ; undefined NEC_OUTPUT_MK88()
   f000:eead     CALL       CHK_STAT_2                              ; GET ENDING INTERRUPT AND
                                                                     ; SENSE STATUS
                             ;----- WAIT FOR HEAD SETTLE
   f000:eeb0     PUSHF
   f000:eeb1     MOV        BX,18                                   ; GET HEAD SETTLE PARAMETER
   f000:eeb4     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:eeb7     PUSH       CX
                             J29                                        XREF[1]:  f000:eec3(j)  
   f000:eeb8     MOV        CX,550                                  ; 1 MS LOOP
   f000:eebb     OR         AH,AH                                   ; TEST FOR TIME EXPIRED
   f000:eebd     JZ         J31
                             J30                                        XREF[1]:  f000:eebf(j)  
   f000:eebf     LOOP       J30                                     ; DELAY FOR 1 MS
   f000:eec1     DEC        AH                                      ; DECREMENT THE COUNT
   f000:eec3     JMP        J29
                             J31                                        XREF[1]:  f000:eebd(j)  
   f000:eec5     POP        CX                                      ; RECOVER STATE
   f000:eec6     POPF
                             J32                                        XREF[1]:  f000:ee9c(j)  
   f000:eec7     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DMA_SETUP()
             undefined         AL:1           <RETURN>
                             DMA_SETUP                                  XREF[3]:  J9:f000:ed0d(c), 
                                                                                 DISK_FORMAT:f000:ed1f(c), 
                                                                                 DISK_WRITE:f000:ed45(c)  
   f000:eec8     PUSH       CX
   f000:eec9     CLI
   f000:eeca     OUT        0xc,AL
   f000:eecc     PUSH       AX
   f000:eecd     POP        AX
   f000:eece     OUT        0xb,AL
   f000:eed0     MOV        AX,ES
   f000:eed2     MOV        CL,0x4
   f000:eed4     ROL        AX,CL
   f000:eed6     MOV        CH,AL
   f000:eed8     AND        AL,0xf0
   f000:eeda     ADD        AX,BX
   f000:eedc     JNC        LAB_f000_eee0
   f000:eede     INC        CH
                             LAB_f000_eee0                              XREF[1]:  f000:eedc(j)  
   f000:eee0     PUSH       AX
   f000:eee1     OUT        0x4,AL
   f000:eee3     MOV        AL,AH
   f000:eee5     OUT        0x4,AL
   f000:eee7     MOV        AL,CH
   f000:eee9     AND        AL,0xf
   f000:eeeb     OUT        0x81,AL
   f000:eeed     MOV        AH,DH
   f000:eeef     SUB        AL,AL
   f000:eef1     SHR        AX,0x1
   f000:eef3     PUSH       AX
   f000:eef4     MOV        BX,0x6
   f000:eef7     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:eefa     MOV        CL,AH
   f000:eefc     POP        AX
   f000:eefd     SHL        AX,CL
   f000:eeff     DEC        AX
   f000:ef00     PUSH       AX
   f000:ef01     OUT        0x5,AL
   f000:ef03     MOV        AL,AH
   f000:ef05     OUT        0x5,AL
   f000:ef07     STI
   f000:ef08     POP        CX
   f000:ef09     POP        AX
   f000:ef0a     ADD        AX,CX
   f000:ef0c     POP        CX
   f000:ef0d     MOV        AL,0x2
   f000:ef0f     OUT        0xa,AL
   f000:ef11     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near CHK_STAT_2()
             undefined         AL:1           <RETURN>
                             ;------------------------------------------------------------
                             ; CHK_STAT_2                                                 
                             ;       THIS ROUTINE HANDLES THE INTERRUPT RECEIVED AFTER A  
                             ;       RECALIBRATE, SEEK, OR RESET TO THE ADAPTER.          
                             ;       THE INTERRUPT IS WAITED FOR, THE INTERRUPT STATUS SEN
                             ;       AND THE RESULT RETURNED TO THE CALLER.               
                             ; INPUT                                                      
                             ;       NONE                                                 
                             ; OUTPUT                                                     
                             ;       CY = 0 SUCCESS                                       
                             ;       CY = 1 FAILURE -- ERROR IS IN DISKETTE_STATUS        
                             ;       (AX) DESTROYED                                       
                             ;------------------------------------------------------------
                             CHK_STAT_2                                 XREF[3]:  DISK_RESET:f000:ece5(c), 
                                                                                 SEEK:f000:ee99(c), 
                                                                                 SEEK:f000:eead(c)  
   f000:ef12     CALL       WAIT_INT                                ; undefined WAIT_INT()
   f000:ef15     JC         LAB_f000_ef2b
   f000:ef17     MOV        AH,0x8
   f000:ef19     CALL       NEC_OUTPUT                              ; undefined NEC_OUTPUT(void)
   f000:ef1c     CALL       RESULTS                                 ; undefined RESULTS(void)
   f000:ef1f     JC         LAB_f000_ef2b
   f000:ef21     MOV        AL,[0x42]
   f000:ef24     AND        AL,0x60
   f000:ef26     CMP        AL,0x60
   f000:ef28     JZ         LAB_f000_ef2c
   f000:ef2a     CLC
                             LAB_f000_ef2b                              XREF[2]:  f000:ef15(j), f000:ef1f(j)  
   f000:ef2b     RET
                             LAB_f000_ef2c                              XREF[1]:  f000:ef28(j)  
   f000:ef2c     OR         byte ptr [0x41],0x40
   f000:ef31     STC
   f000:ef32     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near WAIT_INT()
             undefined         AL:1           <RETURN>
                             ;------------------------------------------------------------
                             ; WAIT_INT                                                   
                             ;       THIS ROUTINE WAITS FOR AN INTERRUPT TO OCCUR. A TIME 
                             ;       ROUTINE TAKES PLACE DURING THE WAIT, SO THAT AN ERROR
                             ;       RETURNED IF THE DRIVE IS NOT READY.                  
                             ; INPUT                                                      
                             ;       NONE                                                 
                             ; OUTPUT                                                     
                             ;       CY = 0 SUCCESS                                       
                             ;       CY = 1 FAILURE -- DISKETTE_STATUS IS SET ACCORDINGLY 
                             ;       (AX) DESTROYED                                       
                             ;------------------------------------------------------------
                             WAIT_INT                                   XREF[2]:  J10:f000:edec(c), 
                                                                                 CHK_STAT_2:f000:ef12(c)  
   f000:ef33     STI
   f000:ef34     PUSH       BX
   f000:ef35     PUSH       CX
   f000:ef36     MOV        BL,0x2
   f000:ef38     XOR        CX,CX
                             J36                                        XREF[2]:  f000:ef41(j), f000:ef45(j)  
   f000:ef3a     TEST       byte ptr [0x3e],0x80
   f000:ef3f     JNZ        J37
   f000:ef41     LOOP       J36
   f000:ef43     DEC        BL
   f000:ef45     JNZ        J36
   f000:ef47     OR         byte ptr [0x41],0x80
   f000:ef4c     STC
                             J37                                        XREF[1]:  f000:ef3f(j)  
   f000:ef4d     PUSHF
   f000:ef4e     AND        byte ptr [0x3e],0x7f
   f000:ef53     POPF
   f000:ef54     POP        CX
   f000:ef55     POP        BX
   f000:ef56     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far DISK_INT(void)
             undefined         AL:1           <RETURN>
                             ;--------------------------------------------------------
                             ; DISK_INT                                              :
                             ;       THIS ROUTINE HANDLES THE DISKETTE INTERRUPT     :
                             ; INPUT                                                 :
                             ;       NONE                                            :
                             ; OUTPUT                                                :
                             ;       THE INTERRUPT FLAG IS SET IS SEEK_STATUS        :
                             ;--------------------------------------------------------
                             DISK_INT                                   XREF[1]:  f000:feff(*)  
   f000:ef57     STI
   f000:ef58     PUSH       DS
   f000:ef59     PUSH       AX
   f000:ef5a     CALL       DDS                                     ; undefined DDS(void)
   f000:ef5d     OR         byte ptr [0x3e],0x80
   f000:ef62     MOV        AL,0x20
   f000:ef64     OUT        0x20,AL
   f000:ef66     POP        AX
   f000:ef67     POP        DS
   f000:ef68     IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near RESULTS(void)
             undefined         AL:1           <RETURN>
                             RESULTS                                    XREF[3]:  J10:f000:edf1(c), 
                                                                                 J10:f000:ee36(c), 
                                                                                 CHK_STAT_2:f000:ef1c(c)  
   f000:ef69     CLD
   f000:ef6a     MOV        DI,0x42
   f000:ef6d     PUSH       CX
   f000:ef6e     PUSH       DX
   f000:ef6f     PUSH       BX
   f000:ef70     MOV        BL,0x7
                             LAB_f000_ef72                              XREF[1]:  f000:efa6(j)  
   f000:ef72     XOR        CX,CX
   f000:ef74     MOV        DX,0x3f4
                             LAB_f000_ef77                              XREF[1]:  f000:ef7c(j)  
   f000:ef77     IN         AL,DX
   f000:ef78     TEST       AL,0x80
   f000:ef7a     JNZ        LAB_f000_ef88
   f000:ef7c     LOOP       LAB_f000_ef77
   f000:ef7e     OR         byte ptr [0x41],0x80
                             LAB_f000_ef83                              XREF[1]:  f000:ef92(j)  
   f000:ef83     STC
   f000:ef84     POP        BX
   f000:ef85     POP        DX
   f000:ef86     POP        CX
   f000:ef87     RET
                             LAB_f000_ef88                              XREF[1]:  f000:ef7a(j)  
   f000:ef88     IN         AL,DX
   f000:ef89     TEST       AL,0x40
   f000:ef8b     JNZ        LAB_f000_ef94
                             LAB_f000_ef8d                              XREF[1]:  f000:efa8(j)  
   f000:ef8d     OR         byte ptr [0x41],0x20
   f000:ef92     JMP        LAB_f000_ef83
                             LAB_f000_ef94                              XREF[1]:  f000:ef8b(j)  
   f000:ef94     INC        DX
   f000:ef95     IN         AL,DX
   f000:ef96     MOV        byte ptr [DI],AL
   f000:ef98     INC        DI
   f000:ef99     MOV        CX,0xa
                             LAB_f000_ef9c                              XREF[1]:  f000:ef9c(j)  
   f000:ef9c     LOOP       LAB_f000_ef9c
   f000:ef9e     DEC        DX
   f000:ef9f     IN         AL,DX
   f000:efa0     TEST       AL,0x10
   f000:efa2     JZ         LAB_f000_efaa
   f000:efa4     DEC        BL
   f000:efa6     JNZ        LAB_f000_ef72
   f000:efa8     JMP        LAB_f000_ef8d
                             LAB_f000_efaa                              XREF[1]:  f000:efa2(j)  
   f000:efaa     POP        BX
   f000:efab     POP        DX
   f000:efac     POP        CX
   f000:efad     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near NUM_TRANS(void)
             undefined         AL:1           <RETURN>
                             NUM_TRANS                                  XREF[2]:  J10:f000:ee32(c), 
                                                                                 J10:f000:ee3a(c)  
   f000:efae     MOV        AL,[0x45]
   f000:efb1     CMP        AL,CH
   f000:efb3     MOV        AL,[0x47]
   f000:efb6     JZ         LAB_f000_efc2
   f000:efb8     MOV        BX,0x8
   f000:efbb     CALL       GET_PARM                                ; undefined GET_PARM(void)
   f000:efbe     MOV        AL,AH
   f000:efc0     INC        AL
                             LAB_f000_efc2                              XREF[1]:  f000:efb6(j)  
   f000:efc2     SUB        AL,CL
   f000:efc4     RET
   f000:efc5     ??         FFh
   f000:efc6     ??         FFh
                             DISK_BASE                                  XREF[1]:  f000:ff1f(*)  
   f000:efc7     db         11001111b
   f000:efc8     db         2
   f000:efc9     db         25h
   f000:efca     db         2                                       ; 512 BYTES/SECTOR
   f000:efcb     db         9                                       ; EOT (LAST SECTOR ON TRACK)
   f000:efcc     db         2Ah
   f000:efcd     db         FFh
   f000:efce     db         50h
   f000:efcf     db         F6h                                     ; FILL BYTE FOR FORMAT
   f000:efd0     db         25                                      ; HEAD SETTLE TIME (MILLISECONDS)
   f000:efd1     db         4                                       ; MOTOR START TIME (1/8 SECONDS)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far PRINTER_IO(void)
             undefined         AL:1           <RETURN>
                             PRINTER_IO                                 XREF[1]:  f000:ff11(*)  
   f000:efd2     STI
   f000:efd3     PUSH       DS
   f000:efd4     PUSH       DX
   f000:efd5     PUSH       SI
   f000:efd6     PUSH       CX
   f000:efd7     PUSH       BX
   f000:efd8     CALL       DDS                                     ; undefined DDS(void)
   f000:efdb     MOV        SI,DX
   f000:efdd     SHL        SI,0x1
   f000:efdf     MOV        DX,word ptr [SI + 0x8]
   f000:efe3     OR         DX,DX
   f000:efe5     JZ         LAB_f000_eff3
   f000:efe7     OR         AH,AH
   f000:efe9     JZ         LAB_f000_eff9
   f000:efeb     DEC        AH
   f000:efed     JZ         LAB_f000_f031
   f000:efef     DEC        AH
   f000:eff1     JZ         LAB_f000_f01d
                             LAB_f000_eff3                              XREF[2]:  f000:efe5(j), f000:f02f(j)  
   f000:eff3     POP        BX
   f000:eff4     POP        CX
   f000:eff5     POP        SI
   f000:eff6     POP        DX
   f000:eff7     POP        DS
   f000:eff8     IRET
                             LAB_f000_eff9                              XREF[1]:  f000:efe9(j)  
   f000:eff9     PUSH       AX
   f000:effa     MOV        BL,0xa
   f000:effc     XOR        CX,CX
   f000:effe     OUT        DX,AL
   f000:efff     INC        DX
                             LAB_f000_f000                              XREF[2]:  f000:f007(j), f000:f00b(j)  
   f000:f000     IN         AL,DX
   f000:f001     MOV        AH,AL
   f000:f003     TEST       AL,0x80
   f000:f005     JNZ        LAB_f000_f015
   f000:f007     LOOP       LAB_f000_f000
   f000:f009     DEC        BL
   f000:f00b     JNZ        LAB_f000_f000
   f000:f00d     OR         AH,0x1
   f000:f010     AND        AH,0xf9
   f000:f013     JMP        LAB_f000_f029
                             LAB_f000_f015                              XREF[1]:  f000:f005(j)  
   f000:f015     MOV        AL,0xd
   f000:f017     INC        DX
   f000:f018     OUT        DX,AL
   f000:f019     MOV        AL,0xc
   f000:f01b     OUT        DX,AL
   f000:f01c     POP        AX
                             LAB_f000_f01d                              XREF[1]:  f000:eff1(j)  
   f000:f01d     PUSH       AX
                             LAB_f000_f01e                              XREF[1]:  f000:f041(j)  
   f000:f01e     MOV        DX,word ptr [SI + 0x8]
   f000:f022     INC        DX
   f000:f023     IN         AL,DX
   f000:f024     MOV        AH,AL
   f000:f026     AND        AH,0xf8
                             LAB_f000_f029                              XREF[1]:  f000:f013(j)  
   f000:f029     POP        DX
   f000:f02a     MOV        AL,DL
   f000:f02c     XOR        AH,0x48
   f000:f02f     JMP        LAB_f000_eff3
                             LAB_f000_f031                              XREF[1]:  f000:efed(j)  
   f000:f031     PUSH       AX
   f000:f032     ADD        DX,0x2
   f000:f035     MOV        AL,0x8
   f000:f037     OUT        DX,AL
   f000:f038     MOV        AX,0x3e8
                             LAB_f000_f03b                              XREF[1]:  f000:f03c(j)  
   f000:f03b     DEC        AX
   f000:f03c     JNZ        LAB_f000_f03b
   f000:f03e     MOV        AL,0xc
   f000:f040     OUT        DX,AL
   f000:f041     JMP        LAB_f000_f01e
   f000:f043     ??         FFh
   f000:f044     ??         FFh
                             M1
   f000:f045     addr       SET_MODE                                ; TABLE OF ROUTINES WITHIN VIDEO
   f000:f047     addr       SET_CTYPE
   f000:f049     addr       SET_CPOS
   f000:f04b     addr       READ_CURSOR
   f000:f04d     addr       READ_LPEN                               ; READ_LPEN
   f000:f04f     addr       ACT_DISP_PAGE
   f000:f051     addr       SCROLL_UP
   f000:f053     addr       SCROLL_DOWN
   f000:f055     addr       READ_AC_CURRENT
   f000:f057     addr       WRITE_AC_CURRENT
   f000:f059     addr       WRITE_C_CURRENT
   f000:f05b     addr       SET_COLOR
   f000:f05d     addr       WRITE_DOT
   f000:f05f     addr       READ_DOT
   f000:f061     addr       WRITE_TTY
   f000:f063     addr       VIDEO_STATE
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near Video_IO(void)
             undefined         AL:1           <RETURN>
                             Video_IO                                   XREF[1]:  f000:ff03(*)  
   f000:f065     STI
   f000:f066     CLD
   f000:f067     PUSH       ES
   f000:f068     PUSH       DS
   f000:f069     PUSH       DX
   f000:f06a     PUSH       CX
   f000:f06b     PUSH       BX
   f000:f06c     JMP        push_bp_fix
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined resume_after_bp_fix()
             undefined         AL:1           <RETURN>
                             resume_after_bp_fix                        XREF[1]:  f000:f7c2(c)  
   f000:f06f     MOV        AL,AH
   f000:f071     XOR        AH,AH
   f000:f073     SHL        AX,0x1
   f000:f075     MOV        SI,AX
   f000:f077     CMP        AX,0x20
   f000:f07a     JC         LAB_f000_f080
   f000:f07c     POP        AX
   f000:f07d     JMP        VIDEO_RETURN
                             LAB_f000_f080                              XREF[1]:  f000:f07a(j)  
   f000:f080     CALL       DDS                                     ; undefined DDS(void)
   f000:f083     MOV        AX,0xb800
   f000:f086     MOV        DI,word ptr [0x10]
   f000:f08a     AND        DI,0x30
   f000:f08d     CMP        DI,0x30
   f000:f090     JNZ        LAB_f000_f095
   f000:f092     MOV        AX,0xb0
                             LAB_f000_f095                              XREF[1]:  f000:f090(j)  
   f000:f095     MOV        ES,AX
   f000:f097     POP        AX
   f000:f098     MOV        AH,byte ptr [0x49]
   f000:f09c     JMP        word ptr CS:[SI + 0xf045]
   f000:f0a1     ??         FFh
   f000:f0a2     ??         FFh
   f000:f0a3     ??         FFh
                             VIDEO_PARMS                                XREF[1]:  f000:ff1d(*)  
   f000:f0a4     db         38h
   f000:f0a5     db         28h
   f000:f0a6     db         2Dh
   f000:f0a7     db         Ah
   f000:f0a8     db         1Fh
   f000:f0a9     db         6h
   f000:f0aa     db         19h
   f000:f0ab     db         1Ch
   f000:f0ac     db         2h
   f000:f0ad     db         7h
   f000:f0ae     db         6h
   f000:f0af     db         7h
   f000:f0b0     db         0h
   f000:f0b1     db         0h
   f000:f0b2     db         0h
   f000:f0b3     db         0h
   f000:f0b4     db         71h
   f000:f0b5     db         50h
   f000:f0b6     db         5Ah
   f000:f0b7     db         Ah
   f000:f0b8     db         1Fh
   f000:f0b9     db         6h
   f000:f0ba     db         19h
   f000:f0bb     db         1Ch
   f000:f0bc     db         2h
   f000:f0bd     db         7h
   f000:f0be     db         6h
   f000:f0bf     db         7h
   f000:f0c0     db         0h
   f000:f0c1     db         0h
   f000:f0c2     db         0h
   f000:f0c3     db         0h
   f000:f0c4     db         38h
   f000:f0c5     db         28h
   f000:f0c6     db         2Dh
   f000:f0c7     db         Ah
   f000:f0c8     db         7Fh
   f000:f0c9     db         6h
   f000:f0ca     db         64h
   f000:f0cb     db         70h
   f000:f0cc     db         2h
   f000:f0cd     db         1h
   f000:f0ce     db         6h
   f000:f0cf     db         7h
   f000:f0d0     db         0h
   f000:f0d1     db         0h
   f000:f0d2     db         0h
   f000:f0d3     db         0h
   f000:f0d4     db         61h
   f000:f0d5     db         50h
   f000:f0d6     db         52h
   f000:f0d7     db         Fh
   f000:f0d8     db         19h
   f000:f0d9     db         6h
   f000:f0da     db         19h
   f000:f0db     db         19h
   f000:f0dc     db         2h
   f000:f0dd     db         Dh
   f000:f0de     db         Bh
   f000:f0df     db         Ch
   f000:f0e0     db         0h
   f000:f0e1     db         0h
   f000:f0e2     db         0h
   f000:f0e3     db         0h
   f000:f0e4     dw         2048
   f000:f0e6     dw         4096
   f000:f0e8     dw         16384
   f000:f0ea     dw         16384
   f000:f0ec     db         28h
   f000:f0ed     db         28h
   f000:f0ee     db         50h
   f000:f0ef     db         50h
   f000:f0f0     db         28h
   f000:f0f1     db         28h
   f000:f0f2     db         50h
   f000:f0f3     db         50h
   f000:f0f4     db         2Ch
   f000:f0f5     db         28h
   f000:f0f6     db         2Dh
   f000:f0f7     db         29h
   f000:f0f8     db         2Ah
   f000:f0f9     db         2Eh
   f000:f0fa     db         1Eh
   f000:f0fb     db         29h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SET_MODE(void)
             undefined         AL:1           <RETURN>
                             SET_MODE                                   XREF[1]:  f000:f045(*)  
   f000:f0fc     MOV        DX,0x3d4
   f000:f0ff     MOV        BL,0x0
   f000:f101     CMP        DI,0x30
   f000:f104     JNZ        LAB_f000_f10c
   f000:f106     MOV        AL,0x7
   f000:f108     MOV        DL,0xb4
   f000:f10a     INC        BL
                             LAB_f000_f10c                              XREF[1]:  f000:f104(j)  
   f000:f10c     MOV        AH,AL
   f000:f10e     MOV        [0x49],AL
   f000:f111     MOV        word ptr [0x63],DX
   f000:f115     PUSH       DS
   f000:f116     PUSH       AX
   f000:f117     PUSH       DX
   f000:f118     ADD        DX,0x4
   f000:f11b     MOV        AL,BL
   f000:f11d     OUT        DX,AL
   f000:f11e     POP        DX
   f000:f11f     SUB        AX,AX
   f000:f121     MOV        DS,AX
   f000:f123     LDS        BX,[DAT_0000_0074]
   f000:f127     POP        AX
   f000:f128     MOV        CX,0x10
   f000:f12b     CMP        AH,0x2
   f000:f12e     JC         LAB_f000_f140
   f000:f130     ADD        BX,CX
   f000:f132     CMP        AH,0x4
   f000:f135     JC         LAB_f000_f140
   f000:f137     ADD        BX,CX
   f000:f139     CMP        AH,0x7
   f000:f13c     JC         LAB_f000_f140
   f000:f13e     ADD        BX,CX
                             LAB_f000_f140                              XREF[3]:  f000:f12e(j), f000:f135(j), 
                                                                                 f000:f13c(j)  
   f000:f140     PUSH       AX
   f000:f141     XOR        AH,AH
                             LAB_f000_f143                              XREF[1]:  f000:f14e(j)  
   f000:f143     MOV        AL,AH
   f000:f145     OUT        DX,AL
   f000:f146     INC        DX
   f000:f147     INC        AH
   f000:f149     MOV        AL,byte ptr [BX]
   f000:f14b     OUT        DX,AL
   f000:f14c     INC        BX
   f000:f14d     DEC        DX
   f000:f14e     LOOP       LAB_f000_f143
   f000:f150     POP        AX
   f000:f151     POP        DS
   f000:f152     XOR        DI,DI
   f000:f154     MOV        word ptr [0x4e],DI
   f000:f158     MOV        byte ptr [0x62],0x0
   f000:f15d     MOV        CX,0x2000
   f000:f160     CMP        AH,0x4
   f000:f163     JC         LAB_f000_f170
   f000:f165     CMP        AH,0x7
   f000:f168     JZ         LAB_f000_f16e
   f000:f16a     XOR        AX,AX
   f000:f16c     JMP        LAB_f000_f173
                             LAB_f000_f16e                              XREF[1]:  f000:f168(j)  
   f000:f16e     MOV        CH,0x8
                             LAB_f000_f170                              XREF[1]:  f000:f163(j)  
   f000:f170     MOV        AX,0x720
                             LAB_f000_f173                              XREF[1]:  f000:f16c(j)  
   f000:f173     STOSW.REP  ES:DI
   f000:f175     MOV        word ptr [0x60],0x607
   f000:f17b     MOV        AL,[0x49]
   f000:f17e     XOR        AH,AH
   f000:f180     MOV        SI,AX
   f000:f182     MOV        DX,word ptr [0x63]
   f000:f186     ADD        DX,0x4
   f000:f189     MOV        AL,byte ptr CS:[SI + 0xf0f4]
   f000:f18e     OUT        DX,AL
   f000:f18f     MOV        [0x65],AL
   f000:f192     MOV        AL,byte ptr CS:[SI + 0xf0ec]
   f000:f197     XOR        AH,AH
   f000:f199     MOV        [0x4a],AX
   f000:f19c     AND        SI,0xe
   f000:f19f     MOV        CX,word ptr CS:[SI + 0xf0e4]
   f000:f1a4     MOV        word ptr [0x4c],CX
   f000:f1a8     MOV        CX,0x8
   f000:f1ab     MOV        DI,0x50
   f000:f1ae     PUSH       DS
   f000:f1af     POP        ES
   f000:f1b0     XOR        AX,AX
   f000:f1b2     STOSW.REP  ES:DI
   f000:f1b4     INC        DX
   f000:f1b5     MOV        AL,0x30
   f000:f1b7     CMP        byte ptr [0x49],0x6
   f000:f1bc     JNZ        LAB_f000_f1c0
   f000:f1be     MOV        AL,0x3f
                             LAB_f000_f1c0                              XREF[1]:  f000:f1bc(j)  
   f000:f1c0     OUT        DX,AL
   f000:f1c1     MOV        [0x66],AL
                             VIDEO_RETURN                               XREF[18]: resume_after_bp_fix:f000:f07d(j), 
                                                                                 SET_CTYPE:f000:f1d5(j), 
                                                                                 SET_CPOS:f000:f204(j), 
                                                                                 ACT_DISP_PAGE:f000:f238(j), 
                                                                                 SET_COLOR:f000:f269(j), 
                                                                                 SCROLL_UP:f000:f2dd(j), 
                                                                                 READ_AC_CURRENT:f000:f39d(j), 
                                                                                 WRITE_AC_CURRENT:f000:f3ec(j), 
                                                                                 WRITE_C_CURRENT:f000:f41e(j), 
                                                                                 READ_DOT:f000:f42f(j), 
                                                                                 WRITE_DOT:f000:f44e(j), 
                                                                                 GRAPHICS_UP:f000:f4ea(j), 
                                                                                 GRAPHICS_DOWN:f000:f54a(j), 
                                                                                 GRAPHICS_WRITE:f000:f5ca(j), 
                                                                                 GRAPHICS_WRITE:f000:f629(j), 
                                                                                 GRAPHICS_READ:f000:f6ad(j), 
                                                                                 WRITE_TTY:f000:f772(j), 
                                                                                 f000:f796(j)  
   f000:f1c4     JMP        pop_bp_fix                              ; undefined pop_bp_fix()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined M15()
             undefined         AL:1           <RETURN>
                             M15                                        XREF[3]:  VIDEO_STATE:f000:f284(c), 
                                                                                 pop_bp_fix:f000:f7c9(c), 
                                                                                 pop_bp_cx_fix:f000:f7e7(c)  
   f000:f1c7     POP        CX
   f000:f1c8     POP        DX
   f000:f1c9     POP        DS
   f000:f1ca     POP        ES
   f000:f1cb     IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             noreturn undefined __cdecl16near SET_CTYPE()
             undefined         AL:1           <RETURN>
                             SET_CTYPE                                  XREF[1]:  f000:f047(*)  
   f000:f1cc     MOV        AH,0xa
   f000:f1ce     MOV        word ptr [0x60],CX
   f000:f1d2     CALL       M16                                     ; undefined M16()
   f000:f1d5     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near M16()
             undefined         AL:1           <RETURN>
                             M16                                        XREF[3]:  SET_CTYPE:f000:f1d2(c), 
                                                                                 M18:f000:f213(c), 
                                                                                 ACT_DISP_PAGE:f000:f22b(c)  
   f000:f1d7     MOV        DX,word ptr [0x63]
   f000:f1db     MOV        AL,AH
   f000:f1dd     OUT        DX,AL
   f000:f1de     INC        DX
   f000:f1df     MOV        AL,CH
   f000:f1e1     OUT        DX,AL
   f000:f1e2     DEC        DX
   f000:f1e3     MOV        AL,AH
   f000:f1e5     INC        AL
   f000:f1e7     OUT        DX,AL
   f000:f1e8     INC        DX
   f000:f1e9     MOV        AL,CL
   f000:f1eb     OUT        DX,AL
   f000:f1ec     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SET_CPOS(void)
             undefined         AL:1           <RETURN>
                             SET_CPOS                                   XREF[1]:  f000:f049(*)  
   f000:f1ed     MOV        CL,BH
   f000:f1ef     XOR        CH,CH
   f000:f1f1     SHL        CX,0x1
   f000:f1f3     MOV        SI,CX
   f000:f1f5     MOV        word ptr [SI + 0x50],DX
   f000:f1f9     CMP        byte ptr [0x62],BH
   f000:f1fd     JNZ        M17
   f000:f1ff     MOV        AX,DX
   f000:f201     CALL       M18                                     ; undefined M18(void)
                             M17                                        XREF[1]:  f000:f1fd(j)  
   f000:f204     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near M18(void)
             undefined         AL:1           <RETURN>
                             M18                                        XREF[2]:  SET_CPOS:f000:f201(c), 
                                                                                 ACT_DISP_PAGE:f000:f235(c)  
   f000:f206     CALL       POSITION                                ; undefined POSITION()
   f000:f209     MOV        CX,AX
   f000:f20b     ADD        CX,word ptr [0x4e]
   f000:f20f     SAR        CX,0x1
   f000:f211     MOV        AH,0xe
   f000:f213     CALL       M16                                     ; undefined M16()
   f000:f216     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near ACT_DISP_PAGE(void)
             undefined         AL:1           <RETURN>
                             ACT_DISP_PAGE                              XREF[1]:  f000:f04f(*)  
   f000:f217     MOV        [0x62],AL
   f000:f21a     MOV        CX,word ptr [0x4c]
   f000:f21e     CBW
   f000:f21f     PUSH       AX
   f000:f220     MUL        CX
   f000:f222     MOV        [0x4e],AX
   f000:f225     MOV        CX,AX
   f000:f227     SAR        CX,0x1
   f000:f229     MOV        AH,0xc
   f000:f22b     CALL       M16                                     ; undefined M16()
   f000:f22e     POP        BX
   f000:f22f     SHL        BX,0x1
   f000:f231     MOV        AX,word ptr [BX + 0x50]
   f000:f235     CALL       M18                                     ; undefined M18(void)
   f000:f238     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near READ_CURSOR(void)
             undefined         AL:1           <RETURN>
                             READ_CURSOR                                XREF[1]:  f000:f04b(*)  
   f000:f23a     MOV        BL,BH
   f000:f23c     XOR        BH,BH
   f000:f23e     SHL        BX,0x1
   f000:f240     MOV        DX,word ptr [BX + 0x50]
   f000:f244     MOV        CX,word ptr [0x60]
   f000:f248     JMP        pop_bp_fix2                             ; undefined pop_bp_fix2()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined resume_read_cursor()
             undefined         AL:1           <RETURN>
                             resume_read_cursor                         XREF[1]:  pop_bp_fix2:f000:f7d0(c)  
   f000:f24b     POP        AX
   f000:f24c     POP        AX
   f000:f24d     POP        DS
   f000:f24e     POP        ES
   f000:f24f     IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SET_COLOR(void)
             undefined         AL:1           <RETURN>
                             SET_COLOR                                  XREF[1]:  f000:f05b(*)  
   f000:f250     MOV        DX,word ptr [0x63]
   f000:f254     ADD        DX,0x5
   f000:f257     MOV        AL,[0x66]
   f000:f25a     OR         BH,BH
   f000:f25c     JNZ        M20
   f000:f25e     AND        AL,0xe0
   f000:f260     AND        BL,0x1f
   f000:f263     OR         AL,BL
                             M19                                        XREF[2]:  f000:f270(j), f000:f274(j)  
   f000:f265     OUT        DX,AL
   f000:f266     MOV        [0x66],AL
   f000:f269     JMP        VIDEO_RETURN
                             M20                                        XREF[1]:  f000:f25c(j)  
   f000:f26c     AND        AL,0xdf
   f000:f26e     SHR        BL,0x1
   f000:f270     JNC        M19
   f000:f272     OR         AL,0x20
   f000:f274     JMP        M19
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near VIDEO_STATE(void)
             undefined         AL:1           <RETURN>
                             VIDEO_STATE                                XREF[1]:  f000:f063(*)  
   f000:f276     MOV        AH,byte ptr [0x4a]
   f000:f27a     MOV        AL,[0x49]
   f000:f27d     MOV        BH,byte ptr [0x62]
   f000:f281     JMP        pop_bp_cx_fix                           ; undefined pop_bp_cx_fix()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:f284     JMP        M15                                     ; undefined M15()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near POSITION()
             undefined         AL:1           <RETURN>
                             POSITION                                   XREF[3]:  M18:f000:f206(c), 
                                                                                 SCROLL_POSITION:f000:f303(c), 
                                                                                 FIND_POSITION:f000:f3b6(c)  
   f000:f287     PUSH       BX
   f000:f288     MOV        BX,AX
   f000:f28a     MOV        AL,AH
   f000:f28c     MUL        byte ptr [0x4a]
   f000:f290     XOR        BH,BH
   f000:f292     ADD        AX,BX
   f000:f294     SHL        AX,0x1
   f000:f296     POP        BX
   f000:f297     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SCROLL_UP(void)
             undefined         AL:1           <RETURN>
                             ;------------------------------------------
                             ; SCROLL UP
                             ;       THIS ROUTINE MOVES A BLOCK OF CHARACTERS UP
                             ;       ON THE SCREEN
                             ; INPUT
                             ;       (AH) = CURRENT CRT MODE
                             ;       (AL) = NUMBER OF ROWS TO SCROLL
                             ;       (CX) = ROW/COLUMN OF UPPER LEFT CORNER
                             ;       (DX) = ROW/COLUMN OF LOWER RIGHT CORNER
                             ;       (BH) = ATTRIBUTE TO BE USED ON BLANKED LINE
                             ;       (DS) = DATA SEGMENT
                             ;       (ES) = REGEN BUFFER SEGMENT
                             ; OUTPUT
                             ;       NONE -- THE REGEN BUFFER IS MODIFIED
                             ;-------------------------------------------
                             SCROLL_UP                                  XREF[1]:  f000:f051(*)  
   f000:f298     JMP        TEST_LINE_COUNT
   f000:f29b     NOP
   f000:f29c     NOP
                             resume_scroll_up                           XREF[1]:  TEST_LINE_COUNT:f000:f801(j)  
   f000:f29d     JC         N1
   f000:f29f     CMP        AH,0x7
   f000:f2a2     JZ         N1
   f000:f2a4     JMP        GRAPHICS_UP                             ; undefined GRAPHICS_UP(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             N1                                         XREF[2]:  f000:f29d(j), f000:f2a2(j)  
   f000:f2a7     PUSH       BX
   f000:f2a8     MOV        AX,CX
   f000:f2aa     CALL       SCROLL_POSITION                         ; undefined SCROLL_POSITION(void)
   f000:f2ad     JZ         N7
   f000:f2af     ADD        SI,AX
   f000:f2b1     MOV        AH,DH
   f000:f2b3     SUB        AH,BL
                             N2                                         XREF[1]:  f000:f2be(j)  
   f000:f2b5     CALL       N10                                     ; undefined N10(void)
   f000:f2b8     ADD        SI,BP
   f000:f2ba     ADD        DI,BP
   f000:f2bc     DEC        AH
   f000:f2be     JNZ        N2
                             N3                                         XREF[1]:  f000:f2e2(j)  
   f000:f2c0     POP        AX
   f000:f2c1     MOV        AL,0x20
                             N4                                         XREF[1]:  f000:f2ca(j)  
   f000:f2c3     CALL       N11                                     ; undefined N11(void)
   f000:f2c6     ADD        DI,BP
   f000:f2c8     DEC        BL
   f000:f2ca     JNZ        N4
                             N5                                         XREF[1]:  SCROLL_DOWN:f000:f36f(j)  
   f000:f2cc     CALL       DDS                                     ; undefined DDS(void)
   f000:f2cf     CMP        byte ptr [0x49],0x7
   f000:f2d4     JZ         N6
   f000:f2d6     MOV        AL,[0x65]
   f000:f2d9     MOV        DX,0x3d8
   f000:f2dc     OUT        DX,AL
                             N6                                         XREF[1]:  f000:f2d4(j)  
   f000:f2dd     JMP        VIDEO_RETURN
                             N7                                         XREF[1]:  f000:f2ad(j)  
   f000:f2e0     MOV        BL,DH
   f000:f2e2     JMP        N3
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SCROLL_POSITION(void)
             undefined         AL:1           <RETURN>
                             SCROLL_POSITION                            XREF[2]:  SCROLL_UP:f000:f2aa(c), 
                                                                                 SCROLL_DOWN:f000:f34d(c)  
   f000:f2e4     CMP        byte ptr [0x49],0x2
   f000:f2e9     JC         N9
   f000:f2eb     CMP        byte ptr [0x49],0x3
   f000:f2f0     JA         N9
                             ;----- 80X25 COLOR CARD SCROLL
   f000:f2f2     PUSH       DX
   f000:f2f3     MOV        DX,0x3da
   f000:f2f6     PUSH       AX
                             N8                                         XREF[1]:  f000:f2fa(j)  
   f000:f2f7     IN         AL,DX
   f000:f2f8     TEST       AL,0x8
   f000:f2fa     JZ         N8
   f000:f2fc     MOV        AL,0x25
   f000:f2fe     MOV        DL,0xd8
   f000:f300     OUT        DX,AL
   f000:f301     POP        AX
   f000:f302     POP        DX
                             N9                                         XREF[2]:  f000:f2e9(j), f000:f2f0(j)  
   f000:f303     CALL       POSITION                                ; undefined POSITION()
   f000:f306     ADD        AX,word ptr [0x4e]
   f000:f30a     MOV        DI,AX
   f000:f30c     MOV        SI,AX
   f000:f30e     SUB        DX,CX
   f000:f310     INC        DH
   f000:f312     INC        DL
   f000:f314     XOR        CH,CH
   f000:f316     MOV        BP,word ptr [0x4a]
   f000:f31a     ADD        BP,BP
   f000:f31c     MOV        AL,BL
   f000:f31e     MUL        byte ptr [0x4a]
   f000:f322     ADD        AX,AX
   f000:f324     PUSH       ES
   f000:f325     POP        DS
   f000:f326     CMP        BL,0x0
   f000:f329     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near N10(void)
             undefined         AL:1           <RETURN>
                             ;----- MOVE_ROW
                             N10                                        XREF[2]:  SCROLL_UP:f000:f2b5(c), 
                                                                                 SCROLL_DOWN:f000:f358(c)  
   f000:f32a     MOV        CL,DL
   f000:f32c     PUSH       SI
   f000:f32d     PUSH       DI
   f000:f32e     MOVSW.REP  ES:DI,SI
   f000:f330     POP        DI
   f000:f331     POP        SI
   f000:f332     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near N11(void)
             undefined         AL:1           <RETURN>
                             ;----- CLEAR_ROW
                             N11                                        XREF[2]:  SCROLL_UP:f000:f2c3(c), 
                                                                                 SCROLL_DOWN:f000:f366(c)  
   f000:f333     MOV        CL,DL
   f000:f335     PUSH       DI
   f000:f336     STOSW.REP  ES:DI
   f000:f338     POP        DI
   f000:f339     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near SCROLL_DOWN(void)
             undefined         AL:1           <RETURN>
                             SCROLL_DOWN                                XREF[1]:  f000:f053(*)  
   f000:f33a     STD
   f000:f33b     JMP        TEST_LINE_COUNT2                        ; undefined TEST_LINE_COUNT2()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:f33e     NOP
   f000:f33f     NOP
                             resume_scroll_down                         XREF[1]:  TEST_LINE_COUNT2:f000:f81b(j)  
   f000:f340     JC         LAB_f000_f34a
   f000:f342     CMP        AH,0x7
   f000:f345     JZ         LAB_f000_f34a
   f000:f347     JMP        GRAPHICS_DOWN                           ; undefined GRAPHICS_DOWN(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_f34a                              XREF[2]:  f000:f340(j), f000:f345(j)  
   f000:f34a     PUSH       BX
   f000:f34b     MOV        AX,DX
   f000:f34d     CALL       SCROLL_POSITION                         ; undefined SCROLL_POSITION(void)
   f000:f350     JZ         LAB_f000_f372
   f000:f352     SUB        SI,AX
   f000:f354     MOV        AH,DH
   f000:f356     SUB        AH,BL
                             LAB_f000_f358                              XREF[1]:  f000:f361(j)  
   f000:f358     CALL       N10                                     ; undefined N10(void)
   f000:f35b     SUB        SI,BP
   f000:f35d     SUB        DI,BP
   f000:f35f     DEC        AH
   f000:f361     JNZ        LAB_f000_f358
                             LAB_f000_f363                              XREF[1]:  f000:f374(j)  
   f000:f363     POP        AX
   f000:f364     MOV        AL,0x20
                             LAB_f000_f366                              XREF[1]:  f000:f36d(j)  
   f000:f366     CALL       N11                                     ; undefined N11(void)
   f000:f369     SUB        DI,BP
   f000:f36b     DEC        BL
   f000:f36d     JNZ        LAB_f000_f366
   f000:f36f     JMP        SCROLL_UP::N5
                             LAB_f000_f372                              XREF[1]:  f000:f350(j)  
   f000:f372     MOV        BL,DH
   f000:f374     JMP        LAB_f000_f363
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near READ_AC_CURRENT(void)
             undefined         AL:1           <RETURN>
                             READ_AC_CURRENT                            XREF[1]:  f000:f055(*)  
   f000:f376     CMP        AH,0x4
   f000:f379     JC         LAB_f000_f383
   f000:f37b     CMP        AH,0x7
   f000:f37e     JZ         LAB_f000_f383
   f000:f380     JMP        GRAPHICS_READ                           ; undefined GRAPHICS_READ(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_f383                              XREF[2]:  f000:f379(j), f000:f37e(j)  
   f000:f383     CALL       FIND_POSITION                           ; undefined FIND_POSITION(void)
   f000:f386     MOV        SI,BX
   f000:f388     MOV        DX,word ptr [0x63]
   f000:f38c     ADD        DX,0x6
   f000:f38f     PUSH       ES
   f000:f390     POP        DS
                             LAB_f000_f391                              XREF[1]:  f000:f394(j)  
   f000:f391     IN         AL,DX
   f000:f392     TEST       AL,0x1
   f000:f394     JNZ        LAB_f000_f391
   f000:f396     CLI
                             LAB_f000_f397                              XREF[1]:  f000:f39a(j)  
   f000:f397     IN         AL,DX
   f000:f398     TEST       AL,0x1
   f000:f39a     JZ         LAB_f000_f397
   f000:f39c     LODSW      SI
   f000:f39d     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FIND_POSITION(void)
             undefined         AL:1           <RETURN>
                             FIND_POSITION                              XREF[3]:  READ_AC_CURRENT:f000:f383(c), 
                                                                                 WRITE_AC_CURRENT:f000:f3cd(c), 
                                                                                 WRITE_C_CURRENT:f000:f3fe(c)  
   f000:f3a0     MOV        CL,BH
   f000:f3a2     XOR        CH,CH
   f000:f3a4     MOV        SI,CX
   f000:f3a6     SHL        SI,0x1
   f000:f3a8     MOV        AX,word ptr [SI + 0x50]
   f000:f3ac     XOR        BX,BX
   f000:f3ae     JCXZ       LAB_f000_f3b6
                             LAB_f000_f3b0                              XREF[1]:  f000:f3b4(j)  
   f000:f3b0     ADD        BX,word ptr [0x4c]
   f000:f3b4     LOOP       LAB_f000_f3b0
                             LAB_f000_f3b6                              XREF[1]:  f000:f3ae(j)  
   f000:f3b6     CALL       POSITION                                ; undefined POSITION()
   f000:f3b9     ADD        BX,AX
   f000:f3bb     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near WRITE_AC_CURRENT(void)
             undefined         AL:1           <RETURN>
                             WRITE_AC_CURRENT                           XREF[1]:  f000:f057(*)  
   f000:f3bc     CMP        AH,0x4
   f000:f3bf     JC         LAB_f000_f3c9
   f000:f3c1     CMP        AH,0x7
   f000:f3c4     JZ         LAB_f000_f3c9
   f000:f3c6     JMP        GRAPHICS_WRITE                          ; undefined GRAPHICS_WRITE(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_f3c9                              XREF[2]:  f000:f3bf(j), f000:f3c4(j)  
   f000:f3c9     MOV        AH,BL
   f000:f3cb     PUSH       AX
   f000:f3cc     PUSH       CX
   f000:f3cd     CALL       FIND_POSITION                           ; undefined FIND_POSITION(void)
   f000:f3d0     MOV        DI,BX
   f000:f3d2     POP        CX
   f000:f3d3     POP        BX
                             LAB_f000_f3d4                              XREF[1]:  f000:f3ea(j)  
   f000:f3d4     MOV        DX,word ptr [0x63]
   f000:f3d8     ADD        DX,0x6
                             LAB_f000_f3db                              XREF[1]:  f000:f3de(j)  
   f000:f3db     IN         AL,DX
   f000:f3dc     TEST       AL,0x1
   f000:f3de     JNZ        LAB_f000_f3db
   f000:f3e0     CLI
                             LAB_f000_f3e1                              XREF[1]:  f000:f3e4(j)  
   f000:f3e1     IN         AL,DX
   f000:f3e2     TEST       AL,0x1
   f000:f3e4     JZ         LAB_f000_f3e1
   f000:f3e6     MOV        AX,BX
   f000:f3e8     STOSW      ES:DI
   f000:f3e9     STI
   f000:f3ea     LOOP       LAB_f000_f3d4
   f000:f3ec     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near WRITE_C_CURRENT(void)
             undefined         AL:1           <RETURN>
                             WRITE_C_CURRENT                            XREF[1]:  f000:f059(*)  
   f000:f3ef     CMP        AH,0x4
   f000:f3f2     JC         LAB_f000_f3fc
   f000:f3f4     CMP        AH,0x7
   f000:f3f7     JZ         LAB_f000_f3fc
   f000:f3f9     JMP        GRAPHICS_WRITE                          ; undefined GRAPHICS_WRITE(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_f3fc                              XREF[2]:  f000:f3f2(j), f000:f3f7(j)  
   f000:f3fc     PUSH       AX
   f000:f3fd     PUSH       CX
   f000:f3fe     CALL       FIND_POSITION                           ; undefined FIND_POSITION(void)
   f000:f401     MOV        DI,BX
   f000:f403     POP        CX
   f000:f404     POP        BX
                             LAB_f000_f405                              XREF[1]:  f000:f41c(j)  
   f000:f405     MOV        DX,word ptr [0x63]
   f000:f409     ADD        DX,0x6
                             LAB_f000_f40c                              XREF[1]:  f000:f40f(j)  
   f000:f40c     IN         AL,DX
   f000:f40d     TEST       AL,0x1
   f000:f40f     JNZ        LAB_f000_f40c
   f000:f411     CLI
                             LAB_f000_f412                              XREF[1]:  f000:f415(j)  
   f000:f412     IN         AL,DX
   f000:f413     TEST       AL,0x1
   f000:f415     JZ         LAB_f000_f412
   f000:f417     MOV        AL,BL
   f000:f419     STOSB      ES:DI
   f000:f41a     STI
   f000:f41b     INC        DI
   f000:f41c     LOOP       LAB_f000_f405
   f000:f41e     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near READ_DOT(void)
             undefined         AL:1           <RETURN>
                             READ_DOT                                   XREF[1]:  f000:f05f(*)  
   f000:f421     CALL       R3                                      ; undefined R3()
   f000:f424     MOV        AL,byte ptr ES:[SI]
   f000:f427     AND        AL,AH
   f000:f429     SHL        AL,CL
   f000:f42b     MOV        CL,DH
   f000:f42d     ROL        AL,CL
   f000:f42f     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near WRITE_DOT(void)
             undefined         AL:1           <RETURN>
                             WRITE_DOT                                  XREF[1]:  f000:f05d(*)  
   f000:f432     PUSH       AX
   f000:f433     PUSH       AX
   f000:f434     CALL       R3                                      ; undefined R3()
   f000:f437     SHR        AL,CL
   f000:f439     AND        AL,AH
   f000:f43b     MOV        CL,byte ptr ES:[SI]
   f000:f43e     POP        BX
   f000:f43f     TEST       BL,0x80
   f000:f442     JNZ        LAB_f000_f451
   f000:f444     NOT        AH
   f000:f446     AND        CL,AH
   f000:f448     OR         AL,CL
                             LAB_f000_f44a                              XREF[1]:  f000:f453(j)  
   f000:f44a     MOV        byte ptr ES:[SI],AL
   f000:f44d     POP        AX
   f000:f44e     JMP        VIDEO_RETURN
                             LAB_f000_f451                              XREF[1]:  f000:f442(j)  
   f000:f451     XOR        AL,CL
   f000:f453     JMP        LAB_f000_f44a
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near R3()
             undefined         AL:1           <RETURN>
                             R3                                         XREF[2]:  READ_DOT:f000:f421(c), 
                                                                                 WRITE_DOT:f000:f434(c)  
   f000:f455     PUSH       BX
   f000:f456     PUSH       AX
   f000:f457     MOV        AL,0x28
   f000:f459     PUSH       DX
   f000:f45a     AND        DL,0xfe
   f000:f45d     MUL        DL
   f000:f45f     POP        DX
   f000:f460     TEST       DL,0x1
   f000:f463     JZ         LAB_f000_f468
   f000:f465     ADD        AX,0x2000
                             LAB_f000_f468                              XREF[1]:  f000:f463(j)  
   f000:f468     MOV        SI,AX
   f000:f46a     POP        AX
   f000:f46b     MOV        DX,CX
   f000:f46d     MOV        BX,0x2c0
   f000:f470     MOV        CX,0x302
   f000:f473     CMP        byte ptr [0x49],0x6
   f000:f478     JC         LAB_f000_f480
   f000:f47a     MOV        BX,0x180
   f000:f47d     MOV        CX,0x703
                             LAB_f000_f480                              XREF[1]:  f000:f478(j)  
   f000:f480     AND        CH,DL
   f000:f482     SHR        DX,CL
   f000:f484     ADD        SI,DX
   f000:f486     MOV        DH,BH
   f000:f488     SUB        CL,CL
                             LAB_f000_f48a                              XREF[1]:  f000:f490(j)  
   f000:f48a     ROR        AL,0x1
   f000:f48c     ADD        CL,CH
   f000:f48e     DEC        BH
   f000:f490     JNZ        LAB_f000_f48a
   f000:f492     MOV        AH,BL
   f000:f494     SHR        AH,CL
   f000:f496     POP        BX
   f000:f497     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near GRAPHICS_UP(void)
             undefined         AL:1           <RETURN>
                             GRAPHICS_UP                                XREF[1]:  SCROLL_UP:f000:f2a4(c)  
   f000:f498     MOV        BL,AL
   f000:f49a     MOV        AX,CX
   f000:f49c     CALL       GRAPH_POSN                              ; undefined GRAPH_POSN()
   f000:f49f     MOV        DI,AX
   f000:f4a1     SUB        DX,CX
   f000:f4a3     ADD        DX,0x101
   f000:f4a7     SHL        DH,0x1
   f000:f4a9     SHL        DH,0x1
   f000:f4ab     CMP        byte ptr [0x49],0x6
   f000:f4b0     JNC        LAB_f000_f4b6
   f000:f4b2     SHL        DL,0x1
   f000:f4b4     SHL        DI,0x1
                             LAB_f000_f4b6                              XREF[1]:  f000:f4b0(j)  
   f000:f4b6     PUSH       ES
   f000:f4b7     POP        DS
   f000:f4b8     SUB        CH,CH
   f000:f4ba     SHL        BL,0x1
   f000:f4bc     SHL        BL,0x1
   f000:f4be     JZ         LAB_f000_f4ed
   f000:f4c0     MOV        AL,BL
   f000:f4c2     MOV        AH,0x50
   f000:f4c4     MUL        AH
   f000:f4c6     MOV        SI,DI
   f000:f4c8     ADD        SI,AX
   f000:f4ca     MOV        AH,DH
   f000:f4cc     SUB        AH,BL
                             LAB_f000_f4ce                              XREF[1]:  f000:f4db(j)  
   f000:f4ce     CALL       R17                                     ; undefined R17(void)
   f000:f4d1     SUB        SI,0x1fb0
   f000:f4d5     SUB        DI,0x1fb0
   f000:f4d9     DEC        AH
   f000:f4db     JNZ        LAB_f000_f4ce
                             R9                                         XREF[1]:  f000:f4ef(j)  
   f000:f4dd     MOV        AL,BH
                             LAB_f000_f4df                              XREF[1]:  f000:f4e8(j)  
   f000:f4df     CALL       R18                                     ; undefined R18(void)
   f000:f4e2     SUB        DI,0x1fb0
   f000:f4e6     DEC        BL
   f000:f4e8     JNZ        LAB_f000_f4df
   f000:f4ea     JMP        VIDEO_RETURN
                             LAB_f000_f4ed                              XREF[1]:  f000:f4be(j)  
   f000:f4ed     MOV        BL,DH
   f000:f4ef     JMP        R9
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near GRAPHICS_DOWN(void)
             undefined         AL:1           <RETURN>
                             GRAPHICS_DOWN                              XREF[1]:  SCROLL_DOWN:f000:f347(c)  
   f000:f4f1     STD
   f000:f4f2     MOV        BL,AL
   f000:f4f4     MOV        AX,DX
   f000:f4f6     CALL       GRAPH_POSN                              ; undefined GRAPH_POSN()
   f000:f4f9     MOV        DI,AX
   f000:f4fb     SUB        DX,CX
   f000:f4fd     ADD        DX,0x101
   f000:f501     SHL        DH,0x1
   f000:f503     SHL        DH,0x1
   f000:f505     CMP        byte ptr [0x49],0x6
   f000:f50a     JNC        LAB_f000_f511
   f000:f50c     SHL        DL,0x1
   f000:f50e     SHL        DI,0x1
   f000:f510     INC        DI
                             LAB_f000_f511                              XREF[1]:  f000:f50a(j)  
   f000:f511     PUSH       ES
   f000:f512     POP        DS
   f000:f513     SUB        CH,CH
   f000:f515     ADD        DI,0xf0
   f000:f519     SHL        BL,0x1
   f000:f51b     SHL        BL,0x1
   f000:f51d     JZ         LAB_f000_f54d
   f000:f51f     MOV        AL,BL
   f000:f521     MOV        AH,0x50
   f000:f523     MUL        AH
   f000:f525     MOV        SI,DI
   f000:f527     SUB        SI,AX
   f000:f529     MOV        AH,DH
   f000:f52b     SUB        AH,BL
                             LAB_f000_f52d                              XREF[1]:  f000:f53a(j)  
   f000:f52d     CALL       R17                                     ; undefined R17(void)
   f000:f530     SUB        SI,0x2050
   f000:f534     SUB        DI,0x2050
   f000:f538     DEC        AH
   f000:f53a     JNZ        LAB_f000_f52d
                             LAB_f000_f53c                              XREF[1]:  f000:f54f(j)  
   f000:f53c     MOV        AL,BH
                             LAB_f000_f53e                              XREF[1]:  f000:f547(j)  
   f000:f53e     CALL       R18                                     ; undefined R18(void)
   f000:f541     SUB        DI,0x2050
   f000:f545     DEC        BL
   f000:f547     JNZ        LAB_f000_f53e
   f000:f549     CLD
   f000:f54a     JMP        VIDEO_RETURN
                             LAB_f000_f54d                              XREF[1]:  f000:f51d(j)  
   f000:f54d     MOV        BL,DH
   f000:f54f     JMP        LAB_f000_f53c
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near R17(void)
             undefined         AL:1           <RETURN>
                             R17                                        XREF[2]:  GRAPHICS_UP:f000:f4ce(c), 
                                                                                 GRAPHICS_DOWN:f000:f52d(c)  
   f000:f551     MOV        CL,DL
   f000:f553     PUSH       SI
   f000:f554     PUSH       DI
   f000:f555     MOVSB.REP  ES:DI,SI
   f000:f557     POP        DI
   f000:f558     POP        SI
   f000:f559     ADD        SI,0x2000
   f000:f55d     ADD        DI,0x2000
   f000:f561     PUSH       SI
   f000:f562     PUSH       DI
   f000:f563     MOV        CL,DL
   f000:f565     MOVSB.REP  ES:DI,SI
   f000:f567     POP        DI
   f000:f568     POP        SI
   f000:f569     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near R18(void)
             undefined         AL:1           <RETURN>
                             R18                                        XREF[2]:  GRAPHICS_UP:f000:f4df(c), 
                                                                                 GRAPHICS_DOWN:f000:f53e(c)  
   f000:f56a     MOV        CL,DL
   f000:f56c     PUSH       DI
   f000:f56d     STOSB.REP  ES:DI
   f000:f56f     POP        DI
   f000:f570     ADD        DI,0x2000
   f000:f574     PUSH       DI
   f000:f575     MOV        CL,DL
   f000:f577     STOSB.REP  ES:DI
   f000:f579     POP        DI
   f000:f57a     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near GRAPHICS_WRITE(void)
             undefined         AL:1           <RETURN>
                             GRAPHICS_WRITE                             XREF[2]:  WRITE_AC_CURRENT:f000:f3c6(c), 
                                                                                 WRITE_C_CURRENT:f000:f3f9(c)  
   f000:f57b     MOV        AH,0x0
   f000:f57d     PUSH       AX
   f000:f57e     CALL       S26                                     ; undefined S26(void)
   f000:f581     MOV        DI,AX
   f000:f583     POP        AX
   f000:f584     CMP        AL,0x80
   f000:f586     JNC        S1
   f000:f588     MOV        SI,0xfa6e
   f000:f58b     PUSH       CS
   f000:f58c     JMP        S2
                             S1                                         XREF[1]:  f000:f586(j)  
   f000:f58e     SUB        AL,0x80
   f000:f590     PUSH       DS
   f000:f591     SUB        SI,SI
   f000:f593     MOV        DS,SI
   f000:f595     LDS        SI,[DAT_0000_007c]
   f000:f599     MOV        DX,DS
   f000:f59b     POP        DS
   f000:f59c     PUSH       DX
                             S2                                         XREF[1]:  f000:f58c(j)  
   f000:f59d     SHL        AX,0x1
   f000:f59f     SHL        AX,0x1
   f000:f5a1     SHL        AX,0x1
   f000:f5a3     ADD        SI,AX
   f000:f5a5     CMP        byte ptr [0x49],0x6
   f000:f5aa     POP        DS
   f000:f5ab     JC         S7
                             LAB_f000_f5ad                              XREF[1]:  f000:f5c8(j)  
   f000:f5ad     PUSH       DI
   f000:f5ae     PUSH       SI
   f000:f5af     MOV        DH,0x4
                             LAB_f000_f5b1                              XREF[1]:  f000:f5c3(j)  
   f000:f5b1     LODSB      SI
   f000:f5b2     TEST       BL,0x80
   f000:f5b5     JNZ        LAB_f000_f5cd
   f000:f5b7     STOSB      ES:DI
   f000:f5b8     LODSB      SI
                             LAB_f000_f5b9                              XREF[1]:  f000:f5d7(j)  
   f000:f5b9     MOV        byte ptr ES:[DI + 0x1fff],AL
   f000:f5be     ADD        DI,0x4f
   f000:f5c1     DEC        DH
   f000:f5c3     JNZ        LAB_f000_f5b1
   f000:f5c5     POP        SI
   f000:f5c6     POP        DI
   f000:f5c7     INC        DI
   f000:f5c8     LOOP       LAB_f000_f5ad
   f000:f5ca     JMP        VIDEO_RETURN
                             LAB_f000_f5cd                              XREF[1]:  f000:f5b5(j)  
   f000:f5cd     XOR        AL,byte ptr ES:[DI]
   f000:f5d0     STOSB      ES:DI
   f000:f5d1     LODSB      SI
   f000:f5d2     XOR        AL,byte ptr ES:[DI + 0x1fff]
   f000:f5d7     JMP        LAB_f000_f5b9
                             S7                                         XREF[1]:  f000:f5ab(j)  
   f000:f5d9     MOV        DL,BL
   f000:f5db     SHL        DI,0x1
   f000:f5dd     CALL       S19                                     ; undefined S19(void)
                             LAB_f000_f5e0                              XREF[1]:  f000:f627(j)  
   f000:f5e0     PUSH       DI
   f000:f5e1     PUSH       SI
   f000:f5e2     MOV        DH,0x4
                             LAB_f000_f5e4                              XREF[1]:  f000:f621(j)  
   f000:f5e4     LODSB      SI
   f000:f5e5     CALL       S21                                     ; undefined S21(void)
   f000:f5e8     AND        AX,BX
   f000:f5ea     TEST       DL,0x80
   f000:f5ed     JZ         LAB_f000_f5f6
   f000:f5ef     XOR        AH,byte ptr ES:[DI]
   f000:f5f2     XOR        AL,byte ptr ES:[DI + 0x1]
                             LAB_f000_f5f6                              XREF[1]:  f000:f5ed(j)  
   f000:f5f6     MOV        byte ptr ES:[DI],AH
   f000:f5f9     MOV        byte ptr ES:[DI + 0x1],AL
   f000:f5fd     LODSB      SI
   f000:f5fe     CALL       S21                                     ; undefined S21(void)
   f000:f601     AND        AX,BX
   f000:f603     TEST       DL,0x80
   f000:f606     JZ         LAB_f000_f612
   f000:f608     XOR        AH,byte ptr ES:[DI + 0x2000]
   f000:f60d     XOR        AL,byte ptr ES:[DI + 0x2001]
                             LAB_f000_f612                              XREF[1]:  f000:f606(j)  
   f000:f612     MOV        byte ptr ES:[DI + 0x2000],AH
   f000:f617     MOV        byte ptr ES:[DI + 0x2001],AL
   f000:f61c     ADD        DI,0x50
   f000:f61f     DEC        DH
   f000:f621     JNZ        LAB_f000_f5e4
   f000:f623     POP        SI
   f000:f624     POP        DI
   f000:f625     INC        DI
   f000:f626     INC        DI
   f000:f627     LOOP       LAB_f000_f5e0
   f000:f629     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near GRAPHICS_READ(void)
             undefined         AL:1           <RETURN>
                             GRAPHICS_READ                              XREF[1]:  READ_AC_CURRENT:f000:f380(c)  
   f000:f62c     CALL       S26                                     ; undefined S26(void)
   f000:f62f     MOV        SI,AX
   f000:f631     SUB        SP,0x8
   f000:f634     MOV        BP,SP
   f000:f636     CMP        byte ptr [0x49],0x6
   f000:f63b     PUSH       ES
   f000:f63c     POP        DS
   f000:f63d     JC         LAB_f000_f659
   f000:f63f     MOV        DH,0x4
                             LAB_f000_f641                              XREF[1]:  f000:f654(j)  
   f000:f641     MOV        AL,byte ptr [SI]
   f000:f643     MOV        byte ptr [BP + 0x0],AL
   f000:f646     INC        BP
   f000:f647     MOV        AL,byte ptr [SI + 0x2000]
   f000:f64b     MOV        byte ptr [BP + 0x0],AL
   f000:f64e     INC        BP
   f000:f64f     ADD        SI,0x50
   f000:f652     DEC        DH
   f000:f654     JNZ        LAB_f000_f641
   f000:f656     JMP        LAB_f000_f66f
   f000:f658     ??         90h
                             LAB_f000_f659                              XREF[1]:  f000:f63d(j)  
   f000:f659     SHL        SI,0x1
   f000:f65b     MOV        DH,0x4
                             LAB_f000_f65d                              XREF[1]:  f000:f66d(j)  
   f000:f65d     CALL       S23                                     ; undefined S23(void)
   f000:f660     ADD        SI,0x2000
   f000:f664     CALL       S23                                     ; undefined S23(void)
   f000:f667     SUB        SI,0x1fb0
   f000:f66b     DEC        DH
   f000:f66d     JNZ        LAB_f000_f65d
                             LAB_f000_f66f                              XREF[1]:  f000:f656(j)  
   f000:f66f     MOV        DI,0xfa6e
   f000:f672     PUSH       CS
   f000:f673     POP        ES
   f000:f674     SUB        BP,0x8
   f000:f677     MOV        SI,BP
   f000:f679     CLD
   f000:f67a     MOV        AL,0x0
                             LAB_f000_f67c                              XREF[1]:  f000:f6a8(j)  
   f000:f67c     PUSH       SS
   f000:f67d     POP        DS
   f000:f67e     MOV        DX,0x80
                             LAB_f000_f681                              XREF[1]:  f000:f692(j)  
   f000:f681     PUSH       SI
   f000:f682     PUSH       DI
   f000:f683     MOV        CX,0x8
   f000:f686     CMPSB.REPE ES:DI,SI
   f000:f688     POP        DI
   f000:f689     POP        SI
   f000:f68a     JZ         LAB_f000_f6aa
   f000:f68c     INC        AL
   f000:f68e     ADD        DI,0x8
   f000:f691     DEC        DX
   f000:f692     JNZ        LAB_f000_f681
   f000:f694     CMP        AL,0x0
   f000:f696     JZ         LAB_f000_f6aa
   f000:f698     SUB        AX,AX
   f000:f69a     MOV        DS,AX
   f000:f69c     LES        DI,[DAT_0000_007c]
   f000:f6a0     MOV        AX,ES
   f000:f6a2     OR         AX,DI
   f000:f6a4     JZ         LAB_f000_f6aa
   f000:f6a6     MOV        AL,0x80
   f000:f6a8     JMP        LAB_f000_f67c
                             LAB_f000_f6aa                              XREF[3]:  f000:f68a(j), f000:f696(j), 
                                                                                 f000:f6a4(j)  
   f000:f6aa     ADD        SP,0x8
   f000:f6ad     JMP        VIDEO_RETURN
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near S19(void)
             undefined         AL:1           <RETURN>
                             S19                                        XREF[1]:  GRAPHICS_WRITE:f000:f5dd(c)  
   f000:f6b0     AND        BL,0x3
   f000:f6b3     MOV        AL,BL
   f000:f6b5     PUSH       CX
   f000:f6b6     MOV        CX,0x3
                             LAB_f000_f6b9                              XREF[1]:  f000:f6bf(j)  
   f000:f6b9     SHL        AL,0x1
   f000:f6bb     SHL        AL,0x1
   f000:f6bd     OR         BL,AL
   f000:f6bf     LOOP       LAB_f000_f6b9
   f000:f6c1     MOV        BH,BL
   f000:f6c3     POP        CX
   f000:f6c4     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near S21(void)
             undefined         AL:1           <RETURN>
                             S21                                        XREF[2]:  GRAPHICS_WRITE:f000:f5e5(c), 
                                                                                 GRAPHICS_WRITE:f000:f5fe(c)  
   f000:f6c5     PUSH       DX
   f000:f6c6     PUSH       CX
   f000:f6c7     PUSH       BX
   f000:f6c8     SUB        DX,DX
   f000:f6ca     MOV        CX,0x1
                             LAB_f000_f6cd                              XREF[1]:  f000:f6df(j)  
   f000:f6cd     MOV        BX,AX
   f000:f6cf     AND        BX,CX
   f000:f6d1     OR         DX,BX
   f000:f6d3     SHL        AX,0x1
   f000:f6d5     SHL        CX,0x1
   f000:f6d7     MOV        BX,AX
   f000:f6d9     AND        BX,CX
   f000:f6db     OR         DX,BX
   f000:f6dd     SHL        CX,0x1
   f000:f6df     JNC        LAB_f000_f6cd
   f000:f6e1     MOV        AX,DX
   f000:f6e3     POP        BX
   f000:f6e4     POP        CX
   f000:f6e5     POP        DX
   f000:f6e6     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near S23(void)
             undefined         AL:1           <RETURN>
                             S23                                        XREF[2]:  GRAPHICS_READ:f000:f65d(c), 
                                                                                 GRAPHICS_READ:f000:f664(c)  
   f000:f6e7     MOV        AH,byte ptr [SI]
   f000:f6e9     MOV        AL,byte ptr [SI + 0x1]
   f000:f6ec     MOV        CX,0xc000
   f000:f6ef     MOV        DL,0x0
                             LAB_f000_f6f1                              XREF[1]:  f000:f6fd(j)  
   f000:f6f1     TEST       CX,AX
   f000:f6f3     CLC
   f000:f6f4     JZ         LAB_f000_f6f7
   f000:f6f6     STC
                             LAB_f000_f6f7                              XREF[1]:  f000:f6f4(j)  
   f000:f6f7     RCL        DL,0x1
   f000:f6f9     SHR        CX,0x1
   f000:f6fb     SHR        CX,0x1
   f000:f6fd     JNC        LAB_f000_f6f1
   f000:f6ff     MOV        byte ptr [BP + 0x0],DL
   f000:f702     INC        BP
   f000:f703     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near S26(void)
             undefined         AL:1           <RETURN>
                             S26                                        XREF[2]:  GRAPHICS_WRITE:f000:f57e(c), 
                                                                                 GRAPHICS_READ:f000:f62c(c)  
   f000:f704     MOV        AX,[0x50]
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near GRAPH_POSN()
             undefined         AL:1           <RETURN>
                             GRAPH_POSN                                 XREF[2]:  GRAPHICS_UP:f000:f49c(c), 
                                                                                 GRAPHICS_DOWN:f000:f4f6(c)  
   f000:f707     PUSH       BX
   f000:f708     MOV        BX,AX
   f000:f70a     MOV        AL,AH
   f000:f70c     MUL        byte ptr [0x4a]
   f000:f710     SHL        AX,0x1
   f000:f712     SHL        AX,0x1
   f000:f714     SUB        BH,BH
   f000:f716     ADD        AX,BX
   f000:f718     POP        BX
   f000:f719     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near WRITE_TTY(void)
             undefined         AL:1           <RETURN>
                             WRITE_TTY                                  XREF[1]:  f000:f061(*)  
   f000:f71a     PUSH       AX
   f000:f71b     PUSH       AX
   f000:f71c     MOV        AH,0x3
   f000:f71e     MOV        BH,byte ptr [0x62]
   f000:f722     INT        0x10
   f000:f724     POP        AX
   f000:f725     CMP        AL,0x8
   f000:f727     JZ         U8                                      ; BACK_SPACE
   f000:f729     CMP        AL,0xd
   f000:f72b     JZ         U9                                      ; CAR_RET
   f000:f72d     CMP        AL,0xa
   f000:f72f     JZ         U10                                     ; LINE_FEED
   f000:f731     CMP        AL,0x7
   f000:f733     JZ         U11                                     ; BELL
                             ------ WRITE THE CHAR TO THE SCREEN
   f000:f735     MOV        AH,0xa
   f000:f737     MOV        CX,0x1
   f000:f73a     INT        0x10
                             ------ POSITION THE CURSOR FOR NEXT CHAR
   f000:f73c     INC        DL
   f000:f73e     CMP        DL,byte ptr [0x4a]
   f000:f742     JNZ        U7                                      ; SET CURSOR
   f000:f744     MOV        DL,0x0
   f000:f746     CMP        DH,0x18
   f000:f749     JNZ        U6
                             U1                                         XREF[1]:  f000:f78d(j)  
   f000:f74b     MOV        AH,0x2
   f000:f74d     INT        0x10
   f000:f74f     MOV        AL,[0x49]
   f000:f752     CMP        AL,0x4
   f000:f754     JC         U2                                      ; READ_CURSOR
   f000:f756     CMP        AL,0x7
   f000:f758     MOV        BH,0x0
   f000:f75a     JNZ        U3                                      ; SCROLL_UP
                             U2                                         XREF[1]:  f000:f754(j)  
   f000:f75c     MOV        AH,0x8
   f000:f75e     INT        0x10
   f000:f760     MOV        BH,AH
                             U3                                         XREF[1]:  f000:f75a(j)  
   f000:f762     MOV        AX,0x601
   f000:f765     SUB        CX,CX
   f000:f767     MOV        DH,0x18
   f000:f769     MOV        DL,byte ptr [0x4a]
   f000:f76d     DEC        DL
                             U4                                         XREF[1]:  f000:f779(j)  
   f000:f76f     INT        0x10
                             U5                                         XREF[1]:  f000:f794(j)  
   f000:f771     POP        AX
   f000:f772     JMP        VIDEO_RETURN
                             U6                                         XREF[2]:  f000:f749(j), f000:f78b(j)  
   f000:f775     INC        DH
                             U7                                         XREF[4]:  f000:f742(j), f000:f77e(j), 
                                                                                 f000:f782(j), f000:f786(j)  
   f000:f777     MOV        AH,0x2
   f000:f779     JMP        U4
                             U8                                         XREF[1]:  f000:f727(j)  
   f000:f77b     CMP        DL,0x0
   f000:f77e     JZ         U7
   f000:f780     DEC        DL
   f000:f782     JMP        U7
                             U9                                         XREF[1]:  f000:f72b(j)  
   f000:f784     MOV        DL,0x0
   f000:f786     JMP        U7
                             U10                                        XREF[1]:  f000:f72f(j)  
   f000:f788     CMP        DH,0x18
   f000:f78b     JNZ        U6
   f000:f78d     JMP        U1
                             U11                                        XREF[1]:  f000:f733(j)  
   f000:f78f     MOV        BL,0x2
   f000:f791     CALL       BEEP                                    ; undefined BEEP(void)
   f000:f794     JMP        U5
                             READ_LPEN                                  XREF[1]:  f000:f04d(*)  
   f000:f796     JMP        VIDEO_RETURN
   f000:f799     ds         "НЕТ ДИСКА ИЛИ НЕИСПРАВЕН ДИСКОВОД\r\n" ; НЕТ ДИСКА ИЛИ НЕИСПРАВЕН ДИСКО
   f000:f7bc     NOP
   f000:f7bd     NOP
                             ----- Fixing BP in Video_IO
                             push_bp_fix                                XREF[1]:  Video_IO:f000:f06c(j)  
   f000:f7be     PUSH       SI
   f000:f7bf     PUSH       DI
   f000:f7c0     PUSH       BP
   f000:f7c1     PUSH       AX
   f000:f7c2     JMP        resume_after_bp_fix                     ; undefined resume_after_bp_fix()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined pop_bp_fix()
             undefined         AL:1           <RETURN>
                             pop_bp_fix                                 XREF[1]:  TEST_LINE_COUNT:f000:f1c4(c)  
   f000:f7c5     POP        BP
   f000:f7c6     POP        DI
   f000:f7c7     POP        SI
   f000:f7c8     POP        BX
   f000:f7c9     JMP        M15                                     ; undefined M15()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined pop_bp_fix2()
             undefined         AL:1           <RETURN>
                             pop_bp_fix2                                XREF[1]:  READ_CURSOR:f000:f248(c)  
   f000:f7cc     POP        BP
   f000:f7cd     POP        DI
   f000:f7ce     POP        SI
   f000:f7cf     POP        BX
   f000:f7d0     JMP        resume_read_cursor                      ; undefined resume_read_cursor()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:f7d3     ??         FFh
   f000:f7d4     ??         FFh
   f000:f7d5     ??         FFh
   f000:f7d6     ??         FFh
   f000:f7d7     ??         FFh
   f000:f7d8     ??         FFh
   f000:f7d9     ??         FFh
   f000:f7da     ??         FFh
   f000:f7db     ??         FFh
   f000:f7dc     ??         FFh
   f000:f7dd     ??         FFh
   f000:f7de     ??         FFh
   f000:f7df     ??         FFh
   f000:f7e0     ??         FFh
   f000:f7e1     ??         FFh
   f000:f7e2     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined pop_bp_cx_fix()
             undefined         AL:1           <RETURN>
                             pop_bp_cx_fix                              XREF[1]:  VIDEO_STATE:f000:f281(c)  
   f000:f7e3     POP        BP
   f000:f7e4     POP        DI
   f000:f7e5     POP        SI
   f000:f7e6     POP        CX
   f000:f7e7     JMP        M15                                     ; undefined M15()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined TEST_LINE_COUNT()
             undefined         AL:1           <RETURN>
                             TEST_LINE_COUNT                            XREF[1]:  SCROLL_UP:f000:f298(j)  
   f000:f7ea     MOV        BL,AL
   f000:f7ec     OR         AL,AL
   f000:f7ee     JZ         BL_SET
   f000:f7f0     PUSH       AX
   f000:f7f1     MOV        AL,DH
   f000:f7f3     SUB        AL,CH
   f000:f7f5     INC        AL
   f000:f7f7     CMP        AL,BL
   f000:f7f9     POP        AX
   f000:f7fa     JNZ        BL_SET
   f000:f7fc     SUB        BL,BL
                             BL_SET                                     XREF[2]:  f000:f7ee(j), f000:f7fa(j)  
   f000:f7fe     CMP        AH,0x4
   f000:f801     JMP        SCROLL_UP::resume_scroll_up
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined TEST_LINE_COUNT2()
             undefined         AL:1           <RETURN>
                             TEST_LINE_COUNT2                           XREF[1]:  SCROLL_DOWN:f000:f33b(c)  
   f000:f804     MOV        BL,AL
   f000:f806     OR         AL,AL
   f000:f808     JZ         BL_SET2
   f000:f80a     PUSH       AX
   f000:f80b     MOV        AL,DH
   f000:f80d     SUB        AL,CH
   f000:f80f     INC        AL
   f000:f811     CMP        AL,BL
   f000:f813     POP        AX
   f000:f814     JNZ        BL_SET2
   f000:f816     SUB        BL,BL
                             BL_SET2                                    XREF[2]:  f000:f808(j), f000:f814(j)  
   f000:f818     CMP        AH,0x4
   f000:f81b     JMP        SCROLL_DOWN::resume_scroll_down
   f000:f81e     ??         FFh
   f000:f81f     ??         FFh
   f000:f820     ??         FFh
   f000:f821     ??         FFh
   f000:f822     ??         FFh
   f000:f823     ??         FFh
   f000:f824     ??         FFh
   f000:f825     ??         FFh
   f000:f826     ??         FFh
   f000:f827     ??         FFh
   f000:f828     ??         FFh
   f000:f829     ??         FFh
   f000:f82a     ??         FFh
   f000:f82b     ??         FFh
   f000:f82c     ??         FFh
   f000:f82d     ??         FFh
   f000:f82e     ??         FFh
   f000:f82f     ??         FFh
   f000:f830     ??         FFh
   f000:f831     ??         FFh
   f000:f832     ??         FFh
   f000:f833     ??         FFh
   f000:f834     ??         FFh
   f000:f835     ??         FFh
   f000:f836     ??         FFh
   f000:f837     ??         FFh
   f000:f838     ??         FFh
   f000:f839     ??         FFh
   f000:f83a     ??         FFh
   f000:f83b     ??         FFh
   f000:f83c     ??         FFh
   f000:f83d     ??         FFh
   f000:f83e     ??         FFh
   f000:f83f     ??         FFh
   f000:f840     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far MEMORY_SIZE_DET(void)
             undefined         AL:1           <RETURN>
                             MEMORY_SIZE_DET                            XREF[1]:  f000:ff07(*)  
   f000:f841     STI
   f000:f842     PUSH       DS
   f000:f843     CALL       DDS                                     ; undefined DDS(void)
   f000:f846     MOV        AX,[0x13]
   f000:f849     POP        DS
   f000:f84a     IRET
   f000:f84b     ??         FFh
   f000:f84c     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far EQUIPMENT(void)
             undefined         AL:1           <RETURN>
                             EQUIPMENT                                  XREF[1]:  f000:ff05(*)  
   f000:f84d     STI
   f000:f84e     PUSH       DS
   f000:f84f     CALL       DDS                                     ; undefined DDS(void)
   f000:f852     MOV        AX,[0x10]
   f000:f855     POP        DS
   f000:f856     IRET
   f000:f857     ??         FFh
   f000:f858     ??         FFh
                             Casette_IO                                 XREF[1]:  f000:ff0d(*)  
   f000:f859     JMP        CASSETTE_IO                             ; undefined CASSETTE_IO(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near ROS_CHECKSUM(void)
             undefined         AL:1           <RETURN>
                             ROS_CHECKSUM                               XREF[2]:  Start:f000:e0c9(c), f000:e428(c)  
   f000:f85c     MOV        CX,0x2000                               ; NUMBER OF BYTES TO ADD
   f000:f85f     XOR        AL,AL
                             C26                                        XREF[1]:  f000:f864(j)  
   f000:f861     ADD        AL,byte ptr [BX]
   f000:f863     INC        BX
   f000:f864     LOOP       C26
   f000:f866     OR         AL,AL
   f000:f868     RET
   f000:f869     ds         "101\r\n"                               ; 101
   f000:f86e     ds         "ПЗУ\r\n"                               ; ПЗУ
   f000:f873     ds         "1801\r\n"                              ; 1801
   f000:f879     ds         "?????\r\n"
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near XPC_BYTE(void)
             undefined         AL:1           <RETURN>
                             ;------------------------------------------------
                             ; CONVERT AND PRINT ASCII CODE                  :
                             ;       AL MUST CONTAIN NUMBER TO BE CONVERTED. :
                             ;       AX AND BX DESTROYED.                    :
                             ;------------------------------------------------
                             XPC_BYTE                                   XREF[3]:  f000:e41c(c), 
                                                                                 PRT_SEG:f000:ffdc(c), 
                                                                                 PRT_SEG:f000:ffe1(c)  
   f000:f880     PUSH       AX
   f000:f881     MOV        CL,0x4
   f000:f883     SHR        AL,CL
   f000:f885     CALL       XLAT_PR                                 ; undefined XLAT_PR(void)
   f000:f888     POP        AX
   f000:f889     AND        AL,0xf
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near XLAT_PR(void)
             undefined         AL:1           <RETURN>
                             XLAT_PR                                    XREF[1]:  XPC_BYTE:f000:f885(c)  
   f000:f88b     ADD        AL,0x90                                 ; ADD FIRST CONVERSION FACTOR
   f000:f88d     DAA                                                ; ADJUST FOR NUMERIC AND ALPHA R
   f000:f88e     ADC        AL,0x40                                 ; ADD CONVERSION AND ADJUST LOW 
   f000:f890     DAA                                                ; ADJUST HI NIBBLE TO ASCII RANGE
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near PRT_HEX(void)
             undefined         AL:1           <RETURN>
                             PRT_HEX                                    XREF[13]: Print_MSG:f000:d5ab(c), 
                                                                                 FUN_f000_d5db:f000:d5ee(c), 
                                                                                 Choose_boot:f000:d6ef(c), 
                                                                                 Choose_boot:f000:d76b(c), 
                                                                                 FUN_f000_d794:f000:d7b8(c), 
                                                                                 f000:e3da(c), f000:e3e9(c), 
                                                                                 f000:e3fb(c), f000:e404(c), 
                                                                                 f000:e409(c), P_MSG:f000:f8a9(c), 
                                                                                 PRT_SEG:f000:ffe6(c), 
                                                                                 PRT_SEG:f000:ffeb(c)  
   f000:f891     MOV        AH,0xe                                  ; DISPLAY CHARACTER IN AL
   f000:f893     MOV        BH,0x0
   f000:f895     INT        0x10                                    ; CALL VIDEO_IO
   f000:f897     RET
                             F4                                         XREF[1]:  f000:e4cf(R)  
   f000:f898     dw         3BCh                                    ; PRINTER SOURCE TABLE
   f000:f89a     dw         378h
   f000:f89c     dw         278h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near E_MSG(void)
             undefined         AL:1           <RETURN>
                             ;--------------------------------------------------------
                             ; THIS SUBROUTINE WILL PRINT A MESSAGE ON THE DISPLAY   :
                             ;                                                       :
                             ; ENTRY REQUIREMENTS:                                   :
                             ;       SI = OFFSET(ADDRESS) OF MESSAGE BUFFER          :
                             ;       CX = MESSAGE BYTE COUNT                         :
                             ;       MAXIMUM MESSAGE LENGTH IS 36 CHARACTERS         :
                             ;--------------------------------------------------------
                             F4E                                        XREF[3]:  f000:e327(c), f000:e422(c), 
                             E_MSG                                                f000:e460(c)  
   f000:f89e     MOV        BP,SI                                   ; SET BP NON-ZERO TO FLAG ERR
   f000:f8a0     CALL       P_MSG                                   ; PRINT MESSAGE
   f000:f8a3     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near P_MSG(void)
             undefined         AL:1           <RETURN>
                             P_MSG                                      XREF[4]:  f000:e2fb(c), f000:e4a7(c), 
                                                                                 E_MSG:f000:f8a0(c), f000:f8af(j)  
   f000:f8a4     MOV        AL,byte ptr CS:[SI]                     ; PUT CHAR IN AL
   f000:f8a7     INC        SI                                      ; POINT TO NEXT CHAR
   f000:f8a8     PUSH       AX                                      ; SAVE PRINT CHAR
   f000:f8a9     CALL       PRT_HEX                                 ; CALL VIDEO_IO
   f000:f8ac     POP        AX                                      ; RECOVER PRINT CHAR
   f000:f8ad     CMP        AL,10                                   ; WAS IT LINE FEED?
   f000:f8af     JNZ        P_MSG                                   ; NO,KEEP PRINTING STRING
   f000:f8b1     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near ERR_BEEP(void)
             undefined         AL:1           <RETURN>
                             ERR_BEEP                                   XREF[6]:  Choose_boot:f000:d63c(c), 
                                                                                 Choose_boot:f000:d6c0(c), 
                                                                                 Choose_boot:f000:d73b(c), 
                                                                                 f000:e2e8(c), f000:e4a1(c), 
                                                                                 f000:e4b9(c)  
   f000:f8b2     PUSHF
   f000:f8b3     CLI
   f000:f8b4     PUSH       DS
   f000:f8b5     CALL       DDS                                     ; undefined DDS(void)
   f000:f8b8     OR         DH,DH
   f000:f8ba     JZ         G3
                             G1                                         XREF[1]:  f000:f8c5(j)  
   f000:f8bc     MOV        BL,0x6
   f000:f8be     CALL       BEEP                                    ; undefined BEEP(void)
                             G2                                         XREF[1]:  f000:f8c1(j)  
   f000:f8c1     LOOP       G2
   f000:f8c3     DEC        DH
   f000:f8c5     JNZ        G1
                             G3                                         XREF[2]:  f000:f8ba(j), f000:f8d0(j)  
   f000:f8c7     MOV        BL,0x1
   f000:f8c9     CALL       BEEP                                    ; undefined BEEP(void)
                             LAB_f000_f8cc                              XREF[1]:  f000:f8cc(j)  
   f000:f8cc     LOOP       LAB_f000_f8cc
   f000:f8ce     DEC        DL
   f000:f8d0     JNZ        G3
                             LAB_f000_f8d2                              XREF[1]:  f000:f8d2(j)  
   f000:f8d2     LOOP       LAB_f000_f8d2
                             LAB_f000_f8d4                              XREF[1]:  f000:f8d4(j)  
   f000:f8d4     LOOP       LAB_f000_f8d4
   f000:f8d6     POP        DS
   f000:f8d7     POPF
   f000:f8d8     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near BEEP(void)
             undefined         AL:1           <RETURN>
                             BEEP                                       XREF[3]:  WRITE_TTY:f000:f791(c), 
                                                                                 ERR_BEEP:f000:f8be(c), 
                                                                                 ERR_BEEP:f000:f8c9(c)  
   f000:f8d9     MOV        AL,10110110b                            ; SEL TIM 2,LSB,MSB,BINARY
   f000:f8db     OUT        0x43,AL                                 ; WRITE THE TIMER MODE REG
   f000:f8dd     MOV        AX,0x533                                ; DIVISOR FOR 1000 HZ
   f000:f8e0     OUT        0x42,AL                                 ; WRITE TIMER 2 CNT - LSB
   f000:f8e2     MOV        AL,AH
   f000:f8e4     OUT        0x42,AL                                 ; WRITE TIMER 2 CNT - MSB
   f000:f8e6     IN         AL,0x61                                 ; GET CURRENT SETTING OF PORT
   f000:f8e8     MOV        AH,AL                                   ; SAVE THAT SETTING
   f000:f8ea     OR         AL,0x3                                  ; TURN SPEAKER ON
   f000:f8ec     OUT        0x61,AL
   f000:f8ee     SUB        CX,CX                                   ; SET CNT TO WAIT 500 MS
                             G7                                         XREF[2]:  f000:f8f0(j), f000:f8f4(j)  
   f000:f8f0     LOOP       G7                                      ; DELAY BEFORE TURNING OFF
   f000:f8f2     DEC        BL                                      ; DELAY CNT EXPIRED?
   f000:f8f4     JNZ        G7                                      ; NO - CONTINUE BEEPING SPK
   f000:f8f6     MOV        AL,AH                                   ; RECOVER VALUE OF PORT
   f000:f8f8     OUT        0x61,AL
   f000:f8fa     RET                                                ; RETURN TO CALLER
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near KBD_buffer_preparation_MK88()
             undefined         AL:1           <RETURN>
                             KBD_buffer_preparation_MK88                XREF[1]:  f000:e36b(c)  
   f000:f8fb     PUSH       AX
   f000:f8fc     PUSH       CX
   f000:f8fd     PUSH       SI
   f000:f8fe     PUSH       DS
   f000:f8ff     CALL       DDS                                     ; undefined DDS(void)
   f000:f902     MOV        SI,0x3d
   f000:f905     MOV        CX,14
                             loop_fill                                  XREF[1]:  f000:f90c(j)  
   f000:f908     MOV        byte ptr [SI],0xff
   f000:f90b     DEC        SI
   f000:f90c     LOOP       loop_fill
   f000:f90e     MOV        byte ptr [0x18],0x3
   f000:f913     POP        DS
   f000:f914     POP        SI
   f000:f915     POP        CX
   f000:f916     POP        AX
   f000:f917     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near DDS(void)
             undefined         AL:1           <RETURN>
                             DDS                                        XREF[15]: f000:e390(c), f000:e4f6(c), 
                                                                                 RS232_IO:f000:e746(c), 
                                                                                 DISKETTE_IO:f000:ec63(c), 
                                                                                 DISK_INT:f000:ef5a(c), 
                                                                                 PRINTER_IO:f000:efd8(c), 
                                                                                 resume_after_bp_fix:f000:f080(c), 
                                                                                 SCROLL_UP:f000:f2cc(c), 
                                                                                 MEMORY_SIZE_DET:f000:f843(c), 
                                                                                 EQUIPMENT:f000:f84f(c), 
                                                                                 ERR_BEEP:f000:f8b5(c), 
                                                                                 KBD_buffer_preparation_MK88:f000
                                                                                 TIME_OF_DAY:f000:fe70(c), 
                                                                                 TIMER_INT:f000:fea9(c), 
                                                                                 D11:f000:ff26(c)  
   f000:f918     PUSH       AX
   f000:f919     MOV        AX,0x40
   f000:f91c     MOV        DS,AX
   f000:f91e     POP        AX
   f000:f91f     RET
   f000:f920     ??         FFh
   f000:f921     ??         FFh
   f000:f922     ??         FFh
   f000:f923     ??         FFh
   f000:f924     ??         FFh
   f000:f925     ??         FFh
   f000:f926     ??         FFh
   f000:f927     ??         FFh
   f000:f928     ??         FFh
   f000:f929     ??         FFh
   f000:f92a     ??         FFh
   f000:f92b     ??         FFh
   f000:f92c     ??         FFh
   f000:f92d     ??         FFh
   f000:f92e     ??         FFh
   f000:f92f     ??         FFh
   f000:f930     ??         FFh
   f000:f931     ??         FFh
   f000:f932     ??         FFh
   f000:f933     ??         FFh
   f000:f934     ??         FFh
   f000:f935     ??         FFh
   f000:f936     ??         FFh
   f000:f937     ??         FFh
   f000:f938     ??         FFh
   f000:f939     ??         FFh
   f000:f93a     ??         FFh
   f000:f93b     ??         FFh
   f000:f93c     ??         FFh
   f000:f93d     ??         FFh
   f000:f93e     ??         FFh
   f000:f93f     ??         FFh
   f000:f940     ??         FFh
   f000:f941     ??         FFh
   f000:f942     ??         FFh
   f000:f943     ??         FFh
   f000:f944     ??         FFh
   f000:f945     ??         FFh
   f000:f946     ??         FFh
   f000:f947     ??         FFh
   f000:f948     ??         FFh
   f000:f949     ??         FFh
   f000:f94a     ??         FFh
   f000:f94b     ??         FFh
   f000:f94c     ??         FFh
   f000:f94d     ??         FFh
   f000:f94e     ??         FFh
   f000:f94f     ??         FFh
   f000:f950     ??         FFh
   f000:f951     ??         FFh
   f000:f952     ??         FFh
   f000:f953     ??         FFh
   f000:f954     ??         FFh
   f000:f955     ??         FFh
   f000:f956     ??         FFh
   f000:f957     ??         FFh
   f000:f958     ??         FFh
   f000:f959     ??         FFh
   f000:f95a     ??         FFh
   f000:f95b     ??         FFh
   f000:f95c     ??         FFh
   f000:f95d     ??         FFh
   f000:f95e     ??         FFh
   f000:f95f     ??         FFh
   f000:f960     ??         FFh
   f000:f961     ??         FFh
   f000:f962     ??         FFh
   f000:f963     ??         FFh
   f000:f964     ??         FFh
   f000:f965     ??         FFh
   f000:f966     ??         FFh
   f000:f967     ??         FFh
   f000:f968     ??         FFh
   f000:f969     ??         FFh
   f000:f96a     ??         FFh
   f000:f96b     ??         FFh
   f000:f96c     ??         FFh
   f000:f96d     ??         FFh
   f000:f96e     ??         FFh
   f000:f96f     ??         FFh
   f000:f970     ??         FFh
   f000:f971     ??         FFh
   f000:f972     ??         FFh
   f000:f973     ??         FFh
   f000:f974     ??         FFh
   f000:f975     ??         FFh
   f000:f976     ??         FFh
   f000:f977     ??         FFh
   f000:f978     ??         FFh
   f000:f979     ??         FFh
   f000:f97a     ??         FFh
   f000:f97b     ??         FFh
   f000:f97c     ??         FFh
   f000:f97d     ??         FFh
   f000:f97e     ??         FFh
   f000:f97f     ??         FFh
   f000:f980     ??         FFh
   f000:f981     ??         FFh
   f000:f982     ??         FFh
   f000:f983     ??         FFh
   f000:f984     ??         FFh
   f000:f985     ??         FFh
   f000:f986     ??         FFh
   f000:f987     ??         FFh
   f000:f988     ??         FFh
   f000:f989     ??         FFh
   f000:f98a     ??         FFh
   f000:f98b     ??         FFh
   f000:f98c     ??         FFh
   f000:f98d     ??         FFh
   f000:f98e     ??         FFh
   f000:f98f     ??         FFh
   f000:f990     ??         FFh
   f000:f991     ??         FFh
   f000:f992     ??         FFh
   f000:f993     ??         FFh
   f000:f994     ??         FFh
   f000:f995     ??         FFh
   f000:f996     ??         FFh
   f000:f997     ??         FFh
   f000:f998     ??         FFh
   f000:f999     ??         FFh
   f000:f99a     ??         FFh
   f000:f99b     ??         FFh
   f000:f99c     ??         FFh
   f000:f99d     ??         FFh
   f000:f99e     ??         FFh
   f000:f99f     ??         FFh
   f000:f9a0     ??         FFh
   f000:f9a1     ??         FFh
   f000:f9a2     ??         FFh
   f000:f9a3     ??         FFh
   f000:f9a4     ??         FFh
   f000:f9a5     ??         FFh
   f000:f9a6     ??         FFh
   f000:f9a7     ??         FFh
   f000:f9a8     ??         FFh
   f000:f9a9     ??         FFh
   f000:f9aa     ??         FFh
   f000:f9ab     ??         FFh
   f000:f9ac     ??         FFh
   f000:f9ad     ??         FFh
   f000:f9ae     ??         FFh
   f000:f9af     ??         FFh
   f000:f9b0     ??         FFh
   f000:f9b1     ??         FFh
   f000:f9b2     ??         FFh
   f000:f9b3     ??         FFh
   f000:f9b4     ??         FFh
   f000:f9b5     ??         FFh
   f000:f9b6     ??         FFh
   f000:f9b7     ??         FFh
   f000:f9b8     ??         FFh
   f000:f9b9     ??         FFh
   f000:f9ba     ??         FFh
   f000:f9bb     ??         FFh
   f000:f9bc     ??         FFh
   f000:f9bd     ??         FFh
   f000:f9be     ??         FFh
   f000:f9bf     ??         FFh
   f000:f9c0     ??         FFh
   f000:f9c1     ??         FFh
   f000:f9c2     ??         FFh
   f000:f9c3     ??         FFh
   f000:f9c4     ??         FFh
   f000:f9c5     ??         FFh
   f000:f9c6     ??         FFh
   f000:f9c7     ??         FFh
   f000:f9c8     ??         FFh
   f000:f9c9     ??         FFh
   f000:f9ca     ??         FFh
   f000:f9cb     ??         FFh
   f000:f9cc     ??         FFh
   f000:f9cd     ??         FFh
   f000:f9ce     ??         FFh
   f000:f9cf     ??         FFh
   f000:f9d0     ??         FFh
   f000:f9d1     ??         FFh
   f000:f9d2     ??         FFh
   f000:f9d3     ??         FFh
   f000:f9d4     ??         FFh
   f000:f9d5     ??         FFh
   f000:f9d6     ??         FFh
   f000:f9d7     ??         FFh
   f000:f9d8     ??         FFh
   f000:f9d9     ??         FFh
   f000:f9da     ??         FFh
   f000:f9db     ??         FFh
   f000:f9dc     ??         FFh
   f000:f9dd     ??         FFh
   f000:f9de     ??         FFh
   f000:f9df     ??         FFh
   f000:f9e0     ??         FFh
   f000:f9e1     ??         FFh
   f000:f9e2     ??         FFh
   f000:f9e3     ??         FFh
   f000:f9e4     ??         FFh
   f000:f9e5     ??         FFh
   f000:f9e6     ??         FFh
   f000:f9e7     ??         FFh
   f000:f9e8     ??         FFh
   f000:f9e9     ??         FFh
   f000:f9ea     ??         FFh
   f000:f9eb     ??         FFh
   f000:f9ec     ??         FFh
   f000:f9ed     ??         FFh
   f000:f9ee     ??         FFh
   f000:f9ef     ??         FFh
   f000:f9f0     ??         FFh
   f000:f9f1     ??         FFh
   f000:f9f2     ??         FFh
   f000:f9f3     ??         FFh
   f000:f9f4     ??         FFh
   f000:f9f5     ??         FFh
   f000:f9f6     ??         FFh
   f000:f9f7     ??         FFh
   f000:f9f8     ??         FFh
   f000:f9f9     ??         FFh
   f000:f9fa     ??         FFh
   f000:f9fb     ??         FFh
   f000:f9fc     ??         FFh
   f000:f9fd     ??         FFh
   f000:f9fe     ??         FFh
   f000:f9ff     ??         FFh
   f000:fa00     ??         FFh
   f000:fa01     ??         FFh
   f000:fa02     ??         FFh
   f000:fa03     ??         FFh
   f000:fa04     ??         FFh
   f000:fa05     ??         FFh
   f000:fa06     ??         FFh
   f000:fa07     ??         FFh
   f000:fa08     ??         FFh
   f000:fa09     ??         FFh
   f000:fa0a     ??         FFh
   f000:fa0b     ??         FFh
   f000:fa0c     ??         FFh
   f000:fa0d     ??         FFh
   f000:fa0e     ??         FFh
   f000:fa0f     ??         FFh
   f000:fa10     ??         FFh
   f000:fa11     ??         FFh
   f000:fa12     ??         FFh
   f000:fa13     ??         FFh
   f000:fa14     ??         FFh
   f000:fa15     ??         FFh
   f000:fa16     ??         FFh
   f000:fa17     ??         FFh
   f000:fa18     ??         FFh
   f000:fa19     ??         FFh
   f000:fa1a     ??         FFh
   f000:fa1b     ??         FFh
   f000:fa1c     ??         FFh
   f000:fa1d     ??         FFh
   f000:fa1e     ??         FFh
   f000:fa1f     ??         FFh
   f000:fa20     ??         FFh
   f000:fa21     ??         FFh
   f000:fa22     ??         FFh
   f000:fa23     ??         FFh
   f000:fa24     ??         FFh
   f000:fa25     ??         FFh
   f000:fa26     ??         FFh
   f000:fa27     ??         FFh
   f000:fa28     ??         FFh
   f000:fa29     ??         FFh
   f000:fa2a     ??         FFh
   f000:fa2b     ??         FFh
   f000:fa2c     ??         FFh
   f000:fa2d     ??         FFh
   f000:fa2e     ??         FFh
   f000:fa2f     ??         FFh
   f000:fa30     ??         FFh
   f000:fa31     ??         FFh
   f000:fa32     ??         FFh
   f000:fa33     ??         FFh
   f000:fa34     ??         FFh
   f000:fa35     ??         FFh
   f000:fa36     ??         FFh
   f000:fa37     ??         FFh
   f000:fa38     ??         FFh
   f000:fa39     ??         FFh
   f000:fa3a     ??         FFh
   f000:fa3b     ??         FFh
   f000:fa3c     ??         FFh
   f000:fa3d     ??         FFh
   f000:fa3e     ??         FFh
   f000:fa3f     ??         FFh
   f000:fa40     ??         FFh
   f000:fa41     ??         FFh
   f000:fa42     ??         FFh
   f000:fa43     ??         FFh
   f000:fa44     ??         FFh
   f000:fa45     ??         FFh
   f000:fa46     ??         FFh
   f000:fa47     ??         FFh
   f000:fa48     ??         FFh
   f000:fa49     ??         FFh
   f000:fa4a     ??         FFh
   f000:fa4b     ??         FFh
   f000:fa4c     ??         FFh
   f000:fa4d     ??         FFh
   f000:fa4e     ??         FFh
   f000:fa4f     ??         FFh
   f000:fa50     ??         FFh
   f000:fa51     ??         FFh
   f000:fa52     ??         FFh
   f000:fa53     ??         FFh
   f000:fa54     ??         FFh
   f000:fa55     ??         FFh
   f000:fa56     ??         FFh
   f000:fa57     ??         FFh
   f000:fa58     ??         FFh
   f000:fa59     ??         FFh
   f000:fa5a     ??         FFh
   f000:fa5b     ??         FFh
   f000:fa5c     ??         FFh
   f000:fa5d     ??         FFh
   f000:fa5e     ??         FFh
   f000:fa5f     ??         FFh
   f000:fa60     ??         FFh
   f000:fa61     ??         FFh
   f000:fa62     ??         FFh
   f000:fa63     ??         FFh
   f000:fa64     ??         FFh
   f000:fa65     ??         FFh
   f000:fa66     ??         FFh
   f000:fa67     ??         FFh
   f000:fa68     ??         FFh
   f000:fa69     ??         FFh
   f000:fa6a     ??         FFh
   f000:fa6b     ??         FFh
   f000:fa6c     ??         FFh
   f000:fa6d     ??         FFh
   f000:fa6e     ??         00h
   f000:fa6f     ??         00h
   f000:fa70     ??         00h
   f000:fa71     ??         00h
   f000:fa72     ??         00h
   f000:fa73     ??         00h
   f000:fa74     ??         00h
   f000:fa75     ??         00h
   f000:fa76     ??         7Eh    ~
   f000:fa77     ??         81h
   f000:fa78     ??         A5h
   f000:fa79     ??         81h
   f000:fa7a     ??         BDh
   f000:fa7b     ??         99h
   f000:fa7c     ??         81h
   f000:fa7d     ??         7Eh    ~
   f000:fa7e     ??         7Eh    ~
   f000:fa7f     ??         FFh
   f000:fa80     ??         DBh
   f000:fa81     ??         FFh
   f000:fa82     ??         C3h
   f000:fa83     ??         E7h
   f000:fa84     ??         FFh
   f000:fa85     ??         7Eh    ~
   f000:fa86     ??         6Ch    l
   f000:fa87     ??         FEh
   f000:fa88     ??         FEh
   f000:fa89     ??         FEh
   f000:fa8a     ??         7Ch    |
   f000:fa8b     ??         38h    8
   f000:fa8c     ??         10h
   f000:fa8d     ??         00h
   f000:fa8e     ??         10h
   f000:fa8f     ??         38h    8
   f000:fa90     ??         7Ch    |
   f000:fa91     ??         FEh
   f000:fa92     ??         7Ch    |
   f000:fa93     ??         38h    8
   f000:fa94     ??         10h
   f000:fa95     ??         00h
   f000:fa96     ??         38h    8
   f000:fa97     ??         7Ch    |
   f000:fa98     ??         38h    8
   f000:fa99     ??         FEh
   f000:fa9a     ??         FEh
   f000:fa9b     ??         7Ch    |
   f000:fa9c     ??         38h    8
   f000:fa9d     ??         7Ch    |
   f000:fa9e     ??         10h
   f000:fa9f     ??         10h
   f000:faa0     ??         38h    8
   f000:faa1     ??         7Ch    |
   f000:faa2     ??         FEh
   f000:faa3     ??         7Ch    |
   f000:faa4     ??         38h    8
   f000:faa5     ??         7Ch    |
   f000:faa6     ??         00h
   f000:faa7     ??         00h
   f000:faa8     ??         18h
   f000:faa9     ??         3Ch    <
   f000:faaa     ??         3Ch    <
   f000:faab     ??         18h
   f000:faac     ??         00h
   f000:faad     ??         00h
   f000:faae     ??         FFh
   f000:faaf     ??         FFh
   f000:fab0     ??         E7h
   f000:fab1     ??         C3h
   f000:fab2     ??         C3h
   f000:fab3     ??         E7h
   f000:fab4     ??         FFh
   f000:fab5     ??         FFh
   f000:fab6     ??         00h
   f000:fab7     ??         3Ch    <
   f000:fab8     ??         66h    f
   f000:fab9     ??         42h    B
   f000:faba     ??         42h    B
   f000:fabb     ??         66h    f
   f000:fabc     ??         3Ch    <
   f000:fabd     ??         00h
   f000:fabe     ??         FFh
   f000:fabf     ??         C3h
   f000:fac0     ??         99h
   f000:fac1     ??         BDh
   f000:fac2     ??         BDh
   f000:fac3     ??         99h
   f000:fac4     ??         C3h
   f000:fac5     ??         FFh
   f000:fac6     ??         0Fh
   f000:fac7     ??         07h
   f000:fac8     ??         0Fh
   f000:fac9     ??         7Dh    }
   f000:faca     ??         CCh
   f000:facb     ??         CCh
   f000:facc     ??         CCh
   f000:facd     ??         78h    x
   f000:face     ??         3Ch    <
   f000:facf     ??         66h    f
   f000:fad0     ??         66h    f
   f000:fad1     ??         66h    f
   f000:fad2     ??         3Ch    <
   f000:fad3     ??         18h
   f000:fad4     ??         7Eh    ~
   f000:fad5     ??         18h
   f000:fad6     ??         3Fh    ?
   f000:fad7     ??         33h    3
   f000:fad8     ??         3Fh    ?
   f000:fad9     ??         30h    0
   f000:fada     ??         30h    0
   f000:fadb     ??         70h    p
   f000:fadc     ??         F0h
   f000:fadd     ??         E0h
   f000:fade     ??         7Fh    
   f000:fadf     ??         63h    c
   f000:fae0     ??         7Fh    
   f000:fae1     ??         63h    c
   f000:fae2     ??         63h    c
   f000:fae3     ??         67h    g
   f000:fae4     ??         E6h
   f000:fae5     ??         C0h
   f000:fae6     ??         99h
   f000:fae7     ??         5Ah    Z
   f000:fae8     ??         3Ch    <
   f000:fae9     ??         E7h
   f000:faea     ??         E7h
   f000:faeb     ??         3Ch    <
   f000:faec     ??         5Ah    Z
   f000:faed     ??         99h
   f000:faee     ??         80h
   f000:faef     ??         E0h
   f000:faf0     ??         F8h
   f000:faf1     ??         FEh
   f000:faf2     ??         F8h
   f000:faf3     ??         E0h
   f000:faf4     ??         80h
   f000:faf5     ??         00h
   f000:faf6     ??         02h
   f000:faf7     ??         0Eh
   f000:faf8     ??         3Eh    >
   f000:faf9     ??         FEh
   f000:fafa     ??         3Eh    >
   f000:fafb     ??         0Eh
   f000:fafc     ??         02h
   f000:fafd     ??         00h
   f000:fafe     ??         18h
   f000:faff     ??         3Ch    <
   f000:fb00     ??         7Eh    ~
   f000:fb01     ??         18h
   f000:fb02     ??         18h
   f000:fb03     ??         7Eh    ~
   f000:fb04     ??         3Ch    <
   f000:fb05     ??         18h
   f000:fb06     ??         66h    f
   f000:fb07     ??         66h    f
   f000:fb08     ??         66h    f
   f000:fb09     ??         66h    f
   f000:fb0a     ??         66h    f
   f000:fb0b     ??         00h
   f000:fb0c     ??         66h    f
   f000:fb0d     ??         00h
   f000:fb0e     ??         7Fh    
   f000:fb0f     ??         DBh
   f000:fb10     ??         DBh
   f000:fb11     ??         7Bh    {
   f000:fb12     ??         1Bh
   f000:fb13     ??         1Bh
   f000:fb14     ??         1Bh
   f000:fb15     ??         00h
   f000:fb16     ??         3Eh    >
   f000:fb17     ??         63h    c
   f000:fb18     ??         38h    8
   f000:fb19     ??         6Ch    l
   f000:fb1a     ??         6Ch    l
   f000:fb1b     ??         38h    8
   f000:fb1c     ??         CCh
   f000:fb1d     ??         78h    x
   f000:fb1e     ??         00h
   f000:fb1f     ??         00h
   f000:fb20     ??         00h
   f000:fb21     ??         00h
   f000:fb22     ??         7Eh    ~
   f000:fb23     ??         7Eh    ~
   f000:fb24     ??         7Eh    ~
   f000:fb25     ??         00h
   f000:fb26     ??         18h
   f000:fb27     ??         3Ch    <
   f000:fb28     ??         7Eh    ~
   f000:fb29     ??         18h
   f000:fb2a     ??         7Eh    ~
   f000:fb2b     ??         3Ch    <
   f000:fb2c     ??         18h
   f000:fb2d     ??         FFh
   f000:fb2e     ??         18h
   f000:fb2f     ??         3Ch    <
   f000:fb30     ??         7Eh    ~
   f000:fb31     ??         18h
   f000:fb32     ??         18h
   f000:fb33     ??         18h
   f000:fb34     ??         18h
   f000:fb35     ??         00h
   f000:fb36     ??         18h
   f000:fb37     ??         18h
   f000:fb38     ??         18h
   f000:fb39     ??         18h
   f000:fb3a     ??         7Eh    ~
   f000:fb3b     ??         3Ch    <
   f000:fb3c     ??         18h
   f000:fb3d     ??         00h
   f000:fb3e     ??         00h
   f000:fb3f     ??         18h
   f000:fb40     ??         0Ch
   f000:fb41     ??         FEh
   f000:fb42     ??         0Ch
   f000:fb43     ??         18h
   f000:fb44     ??         00h
   f000:fb45     ??         00h
   f000:fb46     ??         00h
   f000:fb47     ??         30h    0
   f000:fb48     ??         60h    `
   f000:fb49     ??         FEh
   f000:fb4a     ??         60h    `
   f000:fb4b     ??         30h    0
   f000:fb4c     ??         00h
   f000:fb4d     ??         00h
   f000:fb4e     ??         00h
   f000:fb4f     ??         00h
   f000:fb50     ??         C0h
   f000:fb51     ??         C0h
   f000:fb52     ??         C0h
   f000:fb53     ??         FEh
   f000:fb54     ??         00h
   f000:fb55     ??         00h
   f000:fb56     ??         00h
   f000:fb57     ??         24h    $
   f000:fb58     ??         66h    f
   f000:fb59     ??         FFh
   f000:fb5a     ??         66h    f
   f000:fb5b     ??         24h    $
   f000:fb5c     ??         00h
   f000:fb5d     ??         00h
   f000:fb5e     ??         00h
   f000:fb5f     ??         18h
   f000:fb60     ??         3Ch    <
   f000:fb61     ??         7Eh    ~
   f000:fb62     ??         FFh
   f000:fb63     ??         FFh
   f000:fb64     ??         00h
   f000:fb65     ??         00h
   f000:fb66     ??         00h
   f000:fb67     ??         FFh
   f000:fb68     ??         FFh
   f000:fb69     ??         7Eh    ~
   f000:fb6a     ??         3Ch    <
   f000:fb6b     ??         18h
   f000:fb6c     ??         00h
   f000:fb6d     ??         00h
   f000:fb6e     ??         00h
   f000:fb6f     ??         00h
   f000:fb70     ??         00h
   f000:fb71     ??         00h
   f000:fb72     ??         00h
   f000:fb73     ??         00h
   f000:fb74     ??         00h
   f000:fb75     ??         00h
   f000:fb76     ??         30h    0
   f000:fb77     ??         78h    x
   f000:fb78     ??         78h    x
   f000:fb79     ??         30h    0
   f000:fb7a     ??         30h    0
   f000:fb7b     ??         00h
   f000:fb7c     ??         30h    0
   f000:fb7d     ??         00h
   f000:fb7e     ??         6Ch    l
   f000:fb7f     ??         6Ch    l
   f000:fb80     ??         6Ch    l
   f000:fb81     ??         00h
   f000:fb82     ??         00h
   f000:fb83     ??         00h
   f000:fb84     ??         00h
   f000:fb85     ??         00h
   f000:fb86     ??         6Ch    l
   f000:fb87     ??         6Ch    l
   f000:fb88     ??         FEh
   f000:fb89     ??         6Ch    l
   f000:fb8a     ??         FEh
   f000:fb8b     ??         6Ch    l
   f000:fb8c     ??         6Ch    l
   f000:fb8d     ??         00h
   f000:fb8e     ??         30h    0
   f000:fb8f     ??         7Ch    |
   f000:fb90     ??         C0h
   f000:fb91     ??         78h    x
   f000:fb92     ??         0Ch
   f000:fb93     ??         F8h
   f000:fb94     ??         30h    0
   f000:fb95     ??         00h
   f000:fb96     ??         00h
   f000:fb97     ??         C6h
   f000:fb98     ??         CCh
   f000:fb99     ??         18h
   f000:fb9a     ??         30h    0
   f000:fb9b     ??         66h    f
   f000:fb9c     ??         C6h
   f000:fb9d     ??         00h
   f000:fb9e     ??         38h    8
   f000:fb9f     ??         6Ch    l
   f000:fba0     ??         38h    8
   f000:fba1     ??         76h    v
   f000:fba2     ??         DCh
   f000:fba3     ??         CCh
   f000:fba4     ??         76h    v
   f000:fba5     ??         00h
   f000:fba6     ??         60h    `
   f000:fba7     ??         60h    `
   f000:fba8     ??         C0h
   f000:fba9     ??         00h
   f000:fbaa     ??         00h
   f000:fbab     ??         00h
   f000:fbac     ??         00h
   f000:fbad     ??         00h
   f000:fbae     ??         18h
   f000:fbaf     ??         30h    0
   f000:fbb0     ??         60h    `
   f000:fbb1     ??         60h    `
   f000:fbb2     ??         60h    `
   f000:fbb3     ??         30h    0
   f000:fbb4     ??         18h
   f000:fbb5     ??         00h
   f000:fbb6     ??         60h    `
   f000:fbb7     ??         30h    0
   f000:fbb8     ??         18h
   f000:fbb9     ??         18h
   f000:fbba     ??         18h
   f000:fbbb     ??         30h    0
   f000:fbbc     ??         60h    `
   f000:fbbd     ??         00h
   f000:fbbe     ??         00h
   f000:fbbf     ??         66h    f
   f000:fbc0     ??         3Ch    <
   f000:fbc1     ??         FFh
   f000:fbc2     ??         3Ch    <
   f000:fbc3     ??         66h    f
   f000:fbc4     ??         00h
   f000:fbc5     ??         00h
   f000:fbc6     ??         00h
   f000:fbc7     ??         30h    0
   f000:fbc8     ??         30h    0
   f000:fbc9     ??         FCh
   f000:fbca     ??         30h    0
   f000:fbcb     ??         30h    0
   f000:fbcc     ??         00h
   f000:fbcd     ??         00h
   f000:fbce     ??         00h
   f000:fbcf     ??         00h
   f000:fbd0     ??         00h
   f000:fbd1     ??         00h
   f000:fbd2     ??         00h
   f000:fbd3     ??         30h    0
   f000:fbd4     ??         30h    0
   f000:fbd5     ??         60h    `
   f000:fbd6     ??         00h
   f000:fbd7     ??         00h
   f000:fbd8     ??         00h
   f000:fbd9     ??         FCh
   f000:fbda     ??         00h
   f000:fbdb     ??         00h
   f000:fbdc     ??         00h
   f000:fbdd     ??         00h
   f000:fbde     ??         00h
   f000:fbdf     ??         00h
   f000:fbe0     ??         00h
   f000:fbe1     ??         00h
   f000:fbe2     ??         00h
   f000:fbe3     ??         30h    0
   f000:fbe4     ??         30h    0
   f000:fbe5     ??         00h
   f000:fbe6     ??         06h
   f000:fbe7     ??         0Ch
   f000:fbe8     ??         18h
   f000:fbe9     ??         30h    0
   f000:fbea     ??         60h    `
   f000:fbeb     ??         C0h
   f000:fbec     ??         80h
   f000:fbed     ??         00h
   f000:fbee     ??         7Ch    |
   f000:fbef     ??         C6h
   f000:fbf0     ??         CEh
   f000:fbf1     ??         DEh
   f000:fbf2     ??         F6h
   f000:fbf3     ??         E6h
   f000:fbf4     ??         7Ch    |
   f000:fbf5     ??         00h
   f000:fbf6     ??         30h    0
   f000:fbf7     ??         70h    p
   f000:fbf8     ??         30h    0
   f000:fbf9     ??         30h    0
   f000:fbfa     ??         30h    0
   f000:fbfb     ??         30h    0
   f000:fbfc     ??         FCh
   f000:fbfd     ??         00h
   f000:fbfe     ??         78h    x
   f000:fbff     ??         CCh
   f000:fc00     ??         0Ch
   f000:fc01     ??         38h    8
   f000:fc02     ??         60h    `
   f000:fc03     ??         CCh
   f000:fc04     ??         FCh
   f000:fc05     ??         00h
   f000:fc06     ??         78h    x
   f000:fc07     ??         CCh
   f000:fc08     ??         0Ch
   f000:fc09     ??         38h    8
   f000:fc0a     ??         0Ch
   f000:fc0b     ??         CCh
   f000:fc0c     ??         78h    x
   f000:fc0d     ??         00h
   f000:fc0e     ??         1Ch
   f000:fc0f     ??         3Ch    <
   f000:fc10     ??         6Ch    l
   f000:fc11     ??         CCh
   f000:fc12     ??         FEh
   f000:fc13     ??         0Ch
   f000:fc14     ??         1Eh
   f000:fc15     ??         00h
   f000:fc16     ??         FCh
   f000:fc17     ??         C0h
   f000:fc18     ??         F8h
   f000:fc19     ??         0Ch
   f000:fc1a     ??         0Ch
   f000:fc1b     ??         CCh
   f000:fc1c     ??         78h    x
   f000:fc1d     ??         00h
   f000:fc1e     ??         38h    8
   f000:fc1f     ??         60h    `
   f000:fc20     ??         C0h
   f000:fc21     ??         F8h
   f000:fc22     ??         CCh
   f000:fc23     ??         CCh
   f000:fc24     ??         78h    x
   f000:fc25     ??         00h
   f000:fc26     ??         FCh
   f000:fc27     ??         CCh
   f000:fc28     ??         0Ch
   f000:fc29     ??         18h
   f000:fc2a     ??         30h    0
   f000:fc2b     ??         30h    0
   f000:fc2c     ??         30h    0
   f000:fc2d     ??         00h
   f000:fc2e     ??         78h    x
   f000:fc2f     ??         CCh
   f000:fc30     ??         CCh
   f000:fc31     ??         78h    x
   f000:fc32     ??         CCh
   f000:fc33     ??         CCh
   f000:fc34     ??         78h    x
   f000:fc35     ??         00h
   f000:fc36     ??         78h    x
   f000:fc37     ??         CCh
   f000:fc38     ??         CCh
   f000:fc39     ??         7Ch    |
   f000:fc3a     ??         0Ch
   f000:fc3b     ??         18h
   f000:fc3c     ??         70h    p
   f000:fc3d     ??         00h
   f000:fc3e     ??         00h
   f000:fc3f     ??         30h    0
   f000:fc40     ??         30h    0
   f000:fc41     ??         00h
   f000:fc42     ??         00h
   f000:fc43     ??         30h    0
   f000:fc44     ??         30h    0
   f000:fc45     ??         00h
   f000:fc46     ??         00h
   f000:fc47     ??         30h    0
   f000:fc48     ??         30h    0
   f000:fc49     ??         00h
   f000:fc4a     ??         00h
   f000:fc4b     ??         30h    0
   f000:fc4c     ??         30h    0
   f000:fc4d     ??         60h    `
   f000:fc4e     ??         18h
   f000:fc4f     ??         30h    0
   f000:fc50     ??         60h    `
   f000:fc51     ??         C0h
   f000:fc52     ??         60h    `
   f000:fc53     ??         30h    0
   f000:fc54     ??         18h
   f000:fc55     ??         00h
   f000:fc56     ??         00h
   f000:fc57     ??         00h
   f000:fc58     ??         FCh
   f000:fc59     ??         00h
   f000:fc5a     ??         00h
   f000:fc5b     ??         FCh
   f000:fc5c     ??         00h
   f000:fc5d     ??         00h
   f000:fc5e     ??         60h    `
   f000:fc5f     ??         30h    0
   f000:fc60     ??         18h
   f000:fc61     ??         0Ch
   f000:fc62     ??         18h
   f000:fc63     ??         30h    0
   f000:fc64     ??         60h    `
   f000:fc65     ??         00h
   f000:fc66     ??         78h    x
   f000:fc67     ??         CCh
   f000:fc68     ??         0Ch
   f000:fc69     ??         18h
   f000:fc6a     ??         30h    0
   f000:fc6b     ??         00h
   f000:fc6c     ??         30h    0
   f000:fc6d     ??         00h
   f000:fc6e     ??         7Ch    |
   f000:fc6f     ??         C6h
   f000:fc70     ??         DEh
   f000:fc71     ??         DEh
   f000:fc72     ??         DEh
   f000:fc73     ??         C0h
   f000:fc74     ??         78h    x
   f000:fc75     ??         00h
   f000:fc76     ??         30h    0
   f000:fc77     ??         78h    x
   f000:fc78     ??         CCh
   f000:fc79     ??         CCh
   f000:fc7a     ??         FCh
   f000:fc7b     ??         CCh
   f000:fc7c     ??         CCh
   f000:fc7d     ??         00h
   f000:fc7e     ??         FCh
   f000:fc7f     ??         66h    f
   f000:fc80     ??         66h    f
   f000:fc81     ??         7Ch    |
   f000:fc82     ??         66h    f
   f000:fc83     ??         66h    f
   f000:fc84     ??         FCh
   f000:fc85     ??         00h
   f000:fc86     ??         3Ch    <
   f000:fc87     ??         66h    f
   f000:fc88     ??         C0h
   f000:fc89     ??         C0h
   f000:fc8a     ??         C0h
   f000:fc8b     ??         66h    f
   f000:fc8c     ??         3Ch    <
   f000:fc8d     ??         00h
   f000:fc8e     ??         F8h
   f000:fc8f     ??         6Ch    l
   f000:fc90     ??         66h    f
   f000:fc91     ??         66h    f
   f000:fc92     ??         66h    f
   f000:fc93     ??         6Ch    l
   f000:fc94     ??         F8h
   f000:fc95     ??         00h
   f000:fc96     ??         FEh
   f000:fc97     ??         62h    b
   f000:fc98     ??         68h    h
   f000:fc99     ??         78h    x
   f000:fc9a     ??         68h    h
   f000:fc9b     ??         62h    b
   f000:fc9c     ??         FEh
   f000:fc9d     ??         00h
   f000:fc9e     ??         FEh
   f000:fc9f     ??         62h    b
   f000:fca0     ??         68h    h
   f000:fca1     ??         78h    x
   f000:fca2     ??         68h    h
   f000:fca3     ??         60h    `
   f000:fca4     ??         F0h
   f000:fca5     ??         00h
   f000:fca6     ??         3Ch    <
   f000:fca7     ??         66h    f
   f000:fca8     ??         C0h
   f000:fca9     ??         C0h
   f000:fcaa     ??         CEh
   f000:fcab     ??         66h    f
   f000:fcac     ??         3Eh    >
   f000:fcad     ??         00h
   f000:fcae     ??         CCh
   f000:fcaf     ??         CCh
   f000:fcb0     ??         CCh
   f000:fcb1     ??         FCh
   f000:fcb2     ??         CCh
   f000:fcb3     ??         CCh
   f000:fcb4     ??         CCh
   f000:fcb5     ??         00h
   f000:fcb6     ??         78h    x
   f000:fcb7     ??         30h    0
   f000:fcb8     ??         30h    0
   f000:fcb9     ??         30h    0
   f000:fcba     ??         30h    0
   f000:fcbb     ??         30h    0
   f000:fcbc     ??         78h    x
   f000:fcbd     ??         00h
   f000:fcbe     ??         1Eh
   f000:fcbf     ??         0Ch
   f000:fcc0     ??         0Ch
   f000:fcc1     ??         0Ch
   f000:fcc2     ??         CCh
   f000:fcc3     ??         CCh
   f000:fcc4     ??         78h    x
   f000:fcc5     ??         00h
   f000:fcc6     ??         E6h
   f000:fcc7     ??         66h    f
   f000:fcc8     ??         6Ch    l
   f000:fcc9     ??         78h    x
   f000:fcca     ??         6Ch    l
   f000:fccb     ??         66h    f
   f000:fccc     ??         E6h
   f000:fccd     ??         00h
   f000:fcce     ??         F0h
   f000:fccf     ??         60h    `
   f000:fcd0     ??         60h    `
   f000:fcd1     ??         60h    `
   f000:fcd2     ??         62h    b
   f000:fcd3     ??         66h    f
   f000:fcd4     ??         FEh
   f000:fcd5     ??         00h
   f000:fcd6     ??         C6h
   f000:fcd7     ??         EEh
   f000:fcd8     ??         FEh
   f000:fcd9     ??         FEh
   f000:fcda     ??         D6h
   f000:fcdb     ??         C6h
   f000:fcdc     ??         C6h
   f000:fcdd     ??         00h
   f000:fcde     ??         C6h
   f000:fcdf     ??         E6h
   f000:fce0     ??         F6h
   f000:fce1     ??         DEh
   f000:fce2     ??         CEh
   f000:fce3     ??         C6h
   f000:fce4     ??         C6h
   f000:fce5     ??         00h
   f000:fce6     ??         38h    8
   f000:fce7     ??         6Ch    l
   f000:fce8     ??         C6h
   f000:fce9     ??         C6h
   f000:fcea     ??         C6h
   f000:fceb     ??         6Ch    l
   f000:fcec     ??         38h    8
   f000:fced     ??         00h
   f000:fcee     ??         FCh
   f000:fcef     ??         66h    f
   f000:fcf0     ??         66h    f
   f000:fcf1     ??         7Ch    |
   f000:fcf2     ??         60h    `
   f000:fcf3     ??         60h    `
   f000:fcf4     ??         F0h
   f000:fcf5     ??         00h
   f000:fcf6     ??         78h    x
   f000:fcf7     ??         CCh
   f000:fcf8     ??         CCh
   f000:fcf9     ??         CCh
   f000:fcfa     ??         DCh
   f000:fcfb     ??         78h    x
   f000:fcfc     ??         1Ch
   f000:fcfd     ??         00h
   f000:fcfe     ??         FCh
   f000:fcff     ??         66h    f
   f000:fd00     ??         66h    f
   f000:fd01     ??         7Ch    |
   f000:fd02     ??         6Ch    l
   f000:fd03     ??         66h    f
   f000:fd04     ??         E6h
   f000:fd05     ??         00h
   f000:fd06     ??         78h    x
   f000:fd07     ??         CCh
   f000:fd08     ??         E0h
   f000:fd09     ??         70h    p
   f000:fd0a     ??         1Ch
   f000:fd0b     ??         CCh
   f000:fd0c     ??         78h    x
   f000:fd0d     ??         00h
   f000:fd0e     ??         FCh
   f000:fd0f     ??         B4h
   f000:fd10     ??         30h    0
   f000:fd11     ??         30h    0
   f000:fd12     ??         30h    0
   f000:fd13     ??         30h    0
   f000:fd14     ??         78h    x
   f000:fd15     ??         00h
   f000:fd16     ??         CCh
   f000:fd17     ??         CCh
   f000:fd18     ??         CCh
   f000:fd19     ??         CCh
   f000:fd1a     ??         CCh
   f000:fd1b     ??         CCh
   f000:fd1c     ??         FCh
   f000:fd1d     ??         00h
   f000:fd1e     ??         CCh
   f000:fd1f     ??         CCh
   f000:fd20     ??         CCh
   f000:fd21     ??         CCh
   f000:fd22     ??         CCh
   f000:fd23     ??         78h    x
   f000:fd24     ??         30h    0
   f000:fd25     ??         00h
   f000:fd26     ??         C6h
   f000:fd27     ??         C6h
   f000:fd28     ??         C6h
   f000:fd29     ??         D6h
   f000:fd2a     ??         FEh
   f000:fd2b     ??         EEh
   f000:fd2c     ??         C6h
   f000:fd2d     ??         00h
   f000:fd2e     ??         C6h
   f000:fd2f     ??         C6h
   f000:fd30     ??         6Ch    l
   f000:fd31     ??         38h    8
   f000:fd32     ??         38h    8
   f000:fd33     ??         6Ch    l
   f000:fd34     ??         C6h
   f000:fd35     ??         00h
   f000:fd36     ??         CCh
   f000:fd37     ??         CCh
   f000:fd38     ??         CCh
   f000:fd39     ??         78h    x
   f000:fd3a     ??         30h    0
   f000:fd3b     ??         30h    0
   f000:fd3c     ??         78h    x
   f000:fd3d     ??         00h
   f000:fd3e     ??         FEh
   f000:fd3f     ??         C6h
   f000:fd40     ??         8Ch
   f000:fd41     ??         18h
   f000:fd42     ??         32h    2
   f000:fd43     ??         66h    f
   f000:fd44     ??         FEh
   f000:fd45     ??         00h
   f000:fd46     ??         78h    x
   f000:fd47     ??         60h    `
   f000:fd48     ??         60h    `
   f000:fd49     ??         60h    `
   f000:fd4a     ??         60h    `
   f000:fd4b     ??         60h    `
   f000:fd4c     ??         78h    x
   f000:fd4d     ??         00h
   f000:fd4e     ??         C0h
   f000:fd4f     ??         60h    `
   f000:fd50     ??         30h    0
   f000:fd51     ??         18h
   f000:fd52     ??         0Ch
   f000:fd53     ??         06h
   f000:fd54     ??         02h
   f000:fd55     ??         00h
   f000:fd56     ??         78h    x
   f000:fd57     ??         18h
   f000:fd58     ??         18h
   f000:fd59     ??         18h
   f000:fd5a     ??         18h
   f000:fd5b     ??         18h
   f000:fd5c     ??         78h    x
   f000:fd5d     ??         00h
   f000:fd5e     ??         10h
   f000:fd5f     ??         38h    8
   f000:fd60     ??         6Ch    l
   f000:fd61     ??         C6h
   f000:fd62     ??         00h
   f000:fd63     ??         00h
   f000:fd64     ??         00h
   f000:fd65     ??         00h
   f000:fd66     ??         00h
   f000:fd67     ??         00h
   f000:fd68     ??         00h
   f000:fd69     ??         00h
   f000:fd6a     ??         00h
   f000:fd6b     ??         00h
   f000:fd6c     ??         00h
   f000:fd6d     ??         FFh
   f000:fd6e     ??         30h    0
   f000:fd6f     ??         30h    0
   f000:fd70     ??         18h
   f000:fd71     ??         00h
   f000:fd72     ??         00h
   f000:fd73     ??         00h
   f000:fd74     ??         00h
   f000:fd75     ??         00h
   f000:fd76     ??         00h
   f000:fd77     ??         00h
   f000:fd78     ??         78h    x
   f000:fd79     ??         0Ch
   f000:fd7a     ??         7Ch    |
   f000:fd7b     ??         CCh
   f000:fd7c     ??         76h    v
   f000:fd7d     ??         00h
   f000:fd7e     ??         E0h
   f000:fd7f     ??         60h    `
   f000:fd80     ??         60h    `
   f000:fd81     ??         7Ch    |
   f000:fd82     ??         66h    f
   f000:fd83     ??         66h    f
   f000:fd84     ??         DCh
   f000:fd85     ??         00h
   f000:fd86     ??         00h
   f000:fd87     ??         00h
   f000:fd88     ??         78h    x
   f000:fd89     ??         CCh
   f000:fd8a     ??         C0h
   f000:fd8b     ??         CCh
   f000:fd8c     ??         78h    x
   f000:fd8d     ??         00h
   f000:fd8e     ??         1Ch
   f000:fd8f     ??         0Ch
   f000:fd90     ??         0Ch
   f000:fd91     ??         7Ch    |
   f000:fd92     ??         CCh
   f000:fd93     ??         CCh
   f000:fd94     ??         76h    v
   f000:fd95     ??         00h
   f000:fd96     ??         00h
   f000:fd97     ??         00h
   f000:fd98     ??         78h    x
   f000:fd99     ??         CCh
   f000:fd9a     ??         FCh
   f000:fd9b     ??         C0h
   f000:fd9c     ??         78h    x
   f000:fd9d     ??         00h
   f000:fd9e     ??         38h    8
   f000:fd9f     ??         6Ch    l
   f000:fda0     ??         60h    `
   f000:fda1     ??         F0h
   f000:fda2     ??         60h    `
   f000:fda3     ??         60h    `
   f000:fda4     ??         F0h
   f000:fda5     ??         00h
   f000:fda6     ??         00h
   f000:fda7     ??         00h
   f000:fda8     ??         76h    v
   f000:fda9     ??         CCh
   f000:fdaa     ??         CCh
   f000:fdab     ??         7Ch    |
   f000:fdac     ??         0Ch
   f000:fdad     ??         F8h
   f000:fdae     ??         E0h
   f000:fdaf     ??         60h    `
   f000:fdb0     ??         6Ch    l
   f000:fdb1     ??         76h    v
   f000:fdb2     ??         66h    f
   f000:fdb3     ??         66h    f
   f000:fdb4     ??         E6h
   f000:fdb5     ??         00h
   f000:fdb6     ??         30h    0
   f000:fdb7     ??         00h
   f000:fdb8     ??         70h    p
   f000:fdb9     ??         30h    0
   f000:fdba     ??         30h    0
   f000:fdbb     ??         30h    0
   f000:fdbc     ??         78h    x
   f000:fdbd     ??         00h
   f000:fdbe     ??         0Ch
   f000:fdbf     ??         00h
   f000:fdc0     ??         0Ch
   f000:fdc1     ??         0Ch
   f000:fdc2     ??         0Ch
   f000:fdc3     ??         CCh
   f000:fdc4     ??         CCh
   f000:fdc5     ??         78h    x
   f000:fdc6     ??         E0h
   f000:fdc7     ??         60h    `
   f000:fdc8     ??         66h    f
   f000:fdc9     ??         6Ch    l
   f000:fdca     ??         78h    x
   f000:fdcb     ??         6Ch    l
   f000:fdcc     ??         E6h
   f000:fdcd     ??         00h
   f000:fdce     ??         70h    p
   f000:fdcf     ??         30h    0
   f000:fdd0     ??         30h    0
   f000:fdd1     ??         30h    0
   f000:fdd2     ??         30h    0
   f000:fdd3     ??         30h    0
   f000:fdd4     ??         78h    x
   f000:fdd5     ??         00h
   f000:fdd6     ??         00h
   f000:fdd7     ??         00h
   f000:fdd8     ??         CCh
   f000:fdd9     ??         FEh
   f000:fdda     ??         FEh
   f000:fddb     ??         D6h
   f000:fddc     ??         C6h
   f000:fddd     ??         00h
   f000:fdde     ??         00h
   f000:fddf     ??         00h
   f000:fde0     ??         F8h
   f000:fde1     ??         CCh
   f000:fde2     ??         CCh
   f000:fde3     ??         CCh
   f000:fde4     ??         CCh
   f000:fde5     ??         00h
   f000:fde6     ??         00h
   f000:fde7     ??         00h
   f000:fde8     ??         78h    x
   f000:fde9     ??         CCh
   f000:fdea     ??         CCh
   f000:fdeb     ??         CCh
   f000:fdec     ??         78h    x
   f000:fded     ??         00h
   f000:fdee     ??         00h
   f000:fdef     ??         00h
   f000:fdf0     ??         DCh
   f000:fdf1     ??         66h    f
   f000:fdf2     ??         66h    f
   f000:fdf3     ??         7Ch    |
   f000:fdf4     ??         60h    `
   f000:fdf5     ??         F0h
   f000:fdf6     ??         00h
   f000:fdf7     ??         00h
   f000:fdf8     ??         76h    v
   f000:fdf9     ??         CCh
   f000:fdfa     ??         CCh
   f000:fdfb     ??         7Ch    |
   f000:fdfc     ??         0Ch
   f000:fdfd     ??         1Eh
   f000:fdfe     ??         00h
   f000:fdff     ??         00h
   f000:fe00     ??         DCh
   f000:fe01     ??         76h    v
   f000:fe02     ??         66h    f
   f000:fe03     ??         60h    `
   f000:fe04     ??         F0h
   f000:fe05     ??         00h
   f000:fe06     ??         00h
   f000:fe07     ??         00h
   f000:fe08     ??         7Ch    |
   f000:fe09     ??         C0h
   f000:fe0a     ??         78h    x
   f000:fe0b     ??         0Ch
   f000:fe0c     ??         F8h
   f000:fe0d     ??         00h
   f000:fe0e     ??         10h
   f000:fe0f     ??         30h    0
   f000:fe10     ??         7Ch    |
   f000:fe11     ??         30h    0
   f000:fe12     ??         30h    0
   f000:fe13     ??         34h    4
   f000:fe14     ??         18h
   f000:fe15     ??         00h
   f000:fe16     ??         00h
   f000:fe17     ??         00h
   f000:fe18     ??         CCh
   f000:fe19     ??         CCh
   f000:fe1a     ??         CCh
   f000:fe1b     ??         CCh
   f000:fe1c     ??         76h    v
   f000:fe1d     ??         00h
   f000:fe1e     ??         00h
   f000:fe1f     ??         00h
   f000:fe20     ??         CCh
   f000:fe21     ??         CCh
   f000:fe22     ??         CCh
   f000:fe23     ??         78h    x
   f000:fe24     ??         30h    0
   f000:fe25     ??         00h
   f000:fe26     ??         00h
   f000:fe27     ??         00h
   f000:fe28     ??         C6h
   f000:fe29     ??         D6h
   f000:fe2a     ??         FEh
   f000:fe2b     ??         FEh
   f000:fe2c     ??         6Ch    l
   f000:fe2d     ??         00h
   f000:fe2e     ??         00h
   f000:fe2f     ??         00h
   f000:fe30     ??         C6h
   f000:fe31     ??         6Ch    l
   f000:fe32     ??         38h    8
   f000:fe33     ??         6Ch    l
   f000:fe34     ??         C6h
   f000:fe35     ??         00h
   f000:fe36     ??         00h
   f000:fe37     ??         00h
   f000:fe38     ??         CCh
   f000:fe39     ??         CCh
   f000:fe3a     ??         CCh
   f000:fe3b     ??         7Ch    |
   f000:fe3c     ??         0Ch
   f000:fe3d     ??         F8h
   f000:fe3e     ??         00h
   f000:fe3f     ??         00h
   f000:fe40     ??         FCh
   f000:fe41     ??         98h
   f000:fe42     ??         30h    0
   f000:fe43     ??         64h    d
   f000:fe44     ??         FCh
   f000:fe45     ??         00h
   f000:fe46     ??         1Ch
   f000:fe47     ??         30h    0
   f000:fe48     ??         30h    0
   f000:fe49     ??         E0h
   f000:fe4a     ??         30h    0
   f000:fe4b     ??         30h    0
   f000:fe4c     ??         1Ch
   f000:fe4d     ??         00h
   f000:fe4e     ??         18h
   f000:fe4f     ??         18h
   f000:fe50     ??         18h
   f000:fe51     ??         00h
   f000:fe52     ??         18h
   f000:fe53     ??         18h
   f000:fe54     ??         18h
   f000:fe55     ??         00h
   f000:fe56     ??         E0h
   f000:fe57     ??         30h    0
   f000:fe58     ??         30h    0
   f000:fe59     ??         1Ch
   f000:fe5a     ??         30h    0
   f000:fe5b     ??         30h    0
   f000:fe5c     ??         E0h
   f000:fe5d     ??         00h
   f000:fe5e     ??         76h    v
   f000:fe5f     ??         DCh
   f000:fe60     ??         00h
   f000:fe61     ??         00h
   f000:fe62     ??         00h
   f000:fe63     ??         00h
   f000:fe64     ??         00h
   f000:fe65     ??         00h
   f000:fe66     ??         00h
   f000:fe67     ??         10h
   f000:fe68     ??         38h    8
   f000:fe69     ??         6Ch    l
   f000:fe6a     ??         C6h
   f000:fe6b     ??         C6h
   f000:fe6c     ??         FEh
   f000:fe6d     ??         00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far TIME_OF_DAY(void)
             undefined         AL:1           <RETURN>
                             TIME_OF_DAY                                XREF[1]:  f000:ff17(*)  
   f000:fe6e     STI
   f000:fe6f     PUSH       DS
   f000:fe70     CALL       DDS                                     ; undefined DDS(void)
   f000:fe73     OR         AH,AH
   f000:fe75     JZ         LAB_f000_fe7e
   f000:fe77     DEC        AH
   f000:fe79     JZ         LAB_f000_fe91
                             LAB_f000_fe7b                              XREF[2]:  f000:fe8f(j), f000:fe9f(j)  
   f000:fe7b     STI
   f000:fe7c     POP        DS
   f000:fe7d     IRET
                             LAB_f000_fe7e                              XREF[1]:  f000:fe75(j)  
   f000:fe7e     CLI
   f000:fe7f     MOV        AL,[0x70]
   f000:fe82     MOV        byte ptr [0x70],0x0
   f000:fe87     MOV        CX,word ptr [0x6e]
   f000:fe8b     MOV        DX,word ptr [0x6c]
   f000:fe8f     JMP        LAB_f000_fe7b
                             LAB_f000_fe91                              XREF[1]:  f000:fe79(j)  
   f000:fe91     CLI
   f000:fe92     MOV        word ptr [0x6c],DX
   f000:fe96     MOV        word ptr [0x6e],CX
   f000:fe9a     MOV        byte ptr [0x70],0x0
   f000:fe9f     JMP        LAB_f000_fe7b
   f000:fea1     ??         FFh
   f000:fea2     ??         FFh
   f000:fea3     ??         FFh
   f000:fea4     ??         FFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far TIMER_INT(void)
             undefined         AL:1           <RETURN>
                             ;-- HARDWARE INT  08 H - ( IRQ LEVEL 0 ) --------------------
                             ;       THIS ROUTINE HANDLES THE TIMER INTERRUPT FROM FROM CH
                             ;       THE 8254 TIMER.  INPUT FREQUENCY IS 1.19318 MHZ AND T
                             ;       IS 65536, RESULTING IN APPROXIMATELY 18.2 INTERRUPTS 
                             ;                                                            
                             ;       THE INTERRUPT HANDLER MAINTAINS A COUNT (40:6C) OF IN
                             ;       POWER ON TIME, WHICH MAY BE USED TO ESTABLISH TIME OF
                             ;       THE INTERRUPT HANDLER ALSO DECREMENTS THE MOTOR CONTR
                             ;       OF THE DISKETTE, AND WHEN IT EXPIRES, WILL TURN OFF T
                             ;       DISKETTE MOTOR(s), AND RESET THE MOTOR RUNNING FLAGS.
                             ;       THE INTERRUPT HANDLER WILL ALSO INVOKE A USER ROUTINE
                             ;       INTERRUPT 1CH AT EVERY TIME TICK.  THE USER MUST CODE
                             ;       ROUTINE AND PLACE THE CORRECT ADDRESS IN THE VECTOR T
                             ;------------------------------------------------------------
                             TIMER_INT                                  XREF[1]:  f000:fef3(*)  
   f000:fea5     STI
   f000:fea6     PUSH       DS
   f000:fea7     PUSH       AX
   f000:fea8     PUSH       DX
   f000:fea9     CALL       DDS                                     ; undefined DDS(void)
   f000:feac     INC        word ptr [0x6c]
   f000:feb0     JNZ        T4
   f000:feb2     INC        word ptr [0x6e]
                             T4                                         XREF[1]:  f000:feb0(j)  
   f000:feb6     CMP        word ptr [0x6e],0x18
   f000:febb     JNZ        T5
   f000:febd     CMP        word ptr [0x6c],0xb0
   f000:fec3     JNZ        T5
                             ;----- TIMER HAS GONE 24 HOURS
   f000:fec5     SUB        AX,AX
   f000:fec7     MOV        [0x6e],AX
   f000:feca     MOV        [0x6c],AX
   f000:fecd     MOV        byte ptr [0x70],0x1
                             ;----- TEST FOR DISKETTE TIME OUT
                             T5                                         XREF[2]:  f000:febb(j), f000:fec3(j)  
   f000:fed2     DEC        byte ptr [0x40]
   f000:fed6     JNZ        T6
   f000:fed8     AND        byte ptr [0x3f],0xf0
   f000:fedd     MOV        AL,0xc
   f000:fedf     MOV        DX,0x3f2                                ; FDC CTL PORT
   f000:fee2     OUT        DX,AL                                   ; TURN OFF THE MOTOR
                             T6                                         XREF[1]:  f000:fed6(j)  
   f000:fee3     INT        0x1c                                    ; TRANSFER CONTROL TO A USER ROU
   f000:fee5     MOV        AL,0x20                                 ; GET END OF INTERRUPT MASK
   f000:fee7     OUT        0x20,AL                                 ; END OF INTERRUPT TO 8259
   f000:fee9     POP        DX
   f000:feea     POP        AX
   f000:feeb     POP        DS                                      ; RESET MACHINE STATE
   f000:feec     IRET                                               ; RETURN FROM INTERRUPT
   f000:feed     ??         FFh
   f000:feee     ??         FFh
   f000:feef     ??         FFh
   f000:fef0     ??         FFh
   f000:fef1     ??         FFh
   f000:fef2     ??         FFh
                             VECTOR_TABLE
   f000:fef3     addr       TIMER_INT                               ; INT 8 IRQ0
   f000:fef5     addr       KB_INT                                  ; INT 9
   f000:fef7     addr       D11                                     ; D11
   f000:fef9     addr       Keyboard_MK88                           ; INT B IRQ3 Keyboard_MK88
   f000:fefb     addr       D11                                     ; D11
   f000:fefd     addr       D11                                     ; D11
   f000:feff     addr       DISK_INT                                ; INT E IRQ6 DISK_INT
   f000:ff01     addr       D11                                     ; D11
   f000:ff03     addr       Video_IO                                ; INT 10h VIDEO_IO
   f000:ff05     addr       EQUIPMENT                               ; EQUIPMENT
   f000:ff07     addr       MEMORY_SIZE_DET                         ; INT 12h MEMORY_SIZE_DET
   f000:ff09     addr       DISKETTE_IO                             ; DISKETTE_IO
   f000:ff0b     addr       RS232_IO                                ; RS232_IO
   f000:ff0d     addr       Casette_IO                              ; CASSETTE_IO
   f000:ff0f     addr       Keyboard_IO                             ; INTERRUPT 16H
   f000:ff11     addr       PRINTER_IO                              ; PRINTER_IO
   f000:ff13     addr       thunk_FUN_f000_c0b2                     ; INTERRUPT 18H 
                                                                     ; (GO TO RESIDENT BASIC???)
   f000:ff15     addr       BOOT_STRAP                              ; BOOT_STRAP
   f000:ff17     addr       TIME_OF_DAY                             ; TIME_OF_DAY
   f000:ff19     addr       LAB_f000_ff53                           ; DUMMY_RETURN
   f000:ff1b     addr       LAB_f000_ff53                           ; DUMMY_RETURN
   f000:ff1d     addr       VIDEO_PARMS                             ; VIDEO_PARMS
   f000:ff1f     addr       DISK_BASE                               ; OFFSET DISK_BASE, Interrupt 1Eh
   f000:ff21     addr       Video_Graphics_Character_Table          ; = 18h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near D11(void)
             undefined         AL:1           <RETURN>
                             ;--------------------------------------------------------
                             ; TEMPORARY INTERRUPT SERVICE ROUTINE                   :
                             ;       1. THIS ROUTINE IS ALSO LEFT IN PLACE AFTER THE :
                             ;       POWER ON DIAGNOSTICS TO SERVICE UNUSED          :
                             ;       INTERRUPT VECTORS. LOCATION 'INTR_FLAG' WILL    :
                             ;       CONTAIN EITHER: 1. LEVEL OF HARDWARE INT. THAT  :
                             ;       CAUSED CODE TO BE EXEC.                         :
                             ;       2. 'FF' FOR NON-HARDWARE INTERUPTS THAT WAS     :
                             ;       EXECUTED ACCIDENTLY.                            :
                             ;--------------------------------------------------------
                             D11                                        XREF[4]:  f000:fef7(*), f000:fefb(*), 
                                                                                 f000:fefd(*), f000:ff01(*)  
   f000:ff23     PUSH       DS
   f000:ff24     PUSH       DX
   f000:ff25     PUSH       AX
   f000:ff26     CALL       DDS                                     ; undefined DDS(void)
   f000:ff29     MOV        AL,0xb
   f000:ff2b     OUT        0x20,AL
   f000:ff2d     NOP
   f000:ff2e     IN         AL,0x20
   f000:ff30     MOV        AH,AL
   f000:ff32     OR         AL,AH
   f000:ff34     JNZ        HW_INT
   f000:ff36     MOV        AH,0xff
   f000:ff38     JNP        SET_INTR_FLAG
                             HW_INT                                     XREF[1]:  f000:ff34(j)  
   f000:ff3a     IN         AL,0x21
   f000:ff3c     OR         AL,AH
   f000:ff3e     OUT        0x21,AL
   f000:ff40     MOV        AL,0x20
   f000:ff42     OUT        0x20,AL
                             SET_INTR_FLAG                              XREF[1]:  f000:ff38(j)  
   f000:ff44     MOV        byte ptr [0x6b],AH
   f000:ff48     POP        AX
   f000:ff49     POP        DX
   f000:ff4a     POP        DS
   f000:ff4b     IRET
   f000:ff4c     ??         FFh
   f000:ff4d     ??         FFh
   f000:ff4e     ??         FFh
   f000:ff4f     ??         FFh
   f000:ff50     ??         FFh
   f000:ff51     ??         FFh
   f000:ff52     ??         FFh
                             ;------------------------------------------------
                             ; DUMMY RETURN FOR ADDRESS COMPATIBILITY        :
                             ;------------------------------------------------
                             LAB_f000_ff53                              XREF[2]:  f000:ff19(*), f000:ff1b(*)  
   f000:ff53     IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far PRINT_SCREEN(void)
             undefined         AL:1           <RETURN>
                             PRINT_SCREEN
   f000:ff54     STI
   f000:ff55     PUSH       DS
   f000:ff56     PUSH       AX
   f000:ff57     PUSH       BX
   f000:ff58     PUSH       CX
   f000:ff59     PUSH       DX
   f000:ff5a     MOV        AX,0x50
   f000:ff5d     MOV        DS,AX
   f000:ff5f     CMP        byte ptr [0x0]=>DAT_0000_0500,0x1
   f000:ff64     JZ         LAB_f000_ffc5
   f000:ff66     MOV        byte ptr [0x0]=>DAT_0000_0500,0x1
   f000:ff6b     MOV        AH,0xf
   f000:ff6d     INT        0x10
   f000:ff6f     MOV        CL,AH
   f000:ff71     MOV        CH,0x19
   f000:ff73     CALL       CRLF                                    ; undefined CRLF(void)
   f000:ff76     PUSH       CX
   f000:ff77     MOV        AH,0x3
   f000:ff79     INT        0x10
   f000:ff7b     POP        CX
   f000:ff7c     PUSH       DX
   f000:ff7d     XOR        DX,DX
                             LAB_f000_ff7f                              XREF[2]:  f000:ff9e(j), f000:ffad(j)  
   f000:ff7f     MOV        AH,0x2
   f000:ff81     INT        0x10
   f000:ff83     MOV        AH,0x8
   f000:ff85     INT        0x10
   f000:ff87     OR         AL,AL
   f000:ff89     JNZ        LAB_f000_ff8d
   f000:ff8b     MOV        AL,0x20
                             LAB_f000_ff8d                              XREF[1]:  f000:ff89(j)  
   f000:ff8d     PUSH       DX
   f000:ff8e     XOR        DX,DX
   f000:ff90     XOR        AH,AH
   f000:ff92     INT        0x17
   f000:ff94     POP        DX
   f000:ff95     TEST       AH,0x25
   f000:ff98     JNZ        LAB_f000_ffbb
   f000:ff9a     INC        DL
   f000:ff9c     CMP        CL,DL
   f000:ff9e     JNZ        LAB_f000_ff7f
   f000:ffa0     XOR        DL,DL
   f000:ffa2     MOV        AH,DL
   f000:ffa4     PUSH       DX
   f000:ffa5     CALL       CRLF                                    ; undefined CRLF(void)
   f000:ffa8     POP        DX
   f000:ffa9     INC        DH
   f000:ffab     CMP        CH,DH
   f000:ffad     JNZ        LAB_f000_ff7f
   f000:ffaf     POP        DX
   f000:ffb0     MOV        AH,0x2
   f000:ffb2     INT        0x10
   f000:ffb4     MOV        byte ptr [0x0]=>DAT_0000_0500,0x0
   f000:ffb9     JMP        LAB_f000_ffc5
                             LAB_f000_ffbb                              XREF[1]:  f000:ff98(j)  
   f000:ffbb     POP        DX
   f000:ffbc     MOV        AH,0x2
   f000:ffbe     INT        0x10
   f000:ffc0     MOV        byte ptr [0x0]=>DAT_0000_0500,0xff
                             LAB_f000_ffc5                              XREF[2]:  f000:ff64(j), f000:ffb9(j)  
   f000:ffc5     POP        DX
   f000:ffc6     POP        CX
   f000:ffc7     POP        BX
   f000:ffc8     POP        AX
   f000:ffc9     POP        DS
   f000:ffca     IRET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near CRLF(void)
             undefined         AL:1           <RETURN>
                             ------ CARRIAGE RETURN, LINE FEED SUBROUTINE
                             CRLF                                       XREF[2]:  PRINT_SCREEN:f000:ff73(c), 
                                                                                 PRINT_SCREEN:f000:ffa5(c)  
   f000:ffcb     XOR        DX,DX
   f000:ffcd     XOR        AH,AH
   f000:ffcf     MOV        AL,0xa
   f000:ffd1     INT        0x17
   f000:ffd3     XOR        AH,AH
   f000:ffd5     MOV        AL,0xd
   f000:ffd7     INT        0x17
   f000:ffd9     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near PRT_SEG(void)
             undefined         AL:1           <RETURN>
                             PRT_SEG                                    XREF[1]:  f000:e417(c)  
   f000:ffda     MOV        AL,DH
   f000:ffdc     CALL       XPC_BYTE                                ; undefined XPC_BYTE(void)
   f000:ffdf     MOV        AL,DL
   f000:ffe1     CALL       XPC_BYTE                                ; undefined XPC_BYTE(void)
   f000:ffe4     MOV        AL,0x30
   f000:ffe6     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:ffe9     MOV        AL,0x20
   f000:ffeb     CALL       PRT_HEX                                 ; undefined PRT_HEX(void)
   f000:ffee     RET
   f000:ffef     ??         00h
                             ----- POWER ON RESET
   f000:fff0     JMPF       Start                                   ; undefined Start()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:fff5     ds         "11/16/90"                              ; RELEASE MARKER
   f000:fffe     ??         00h
   f000:ffff     ??         00h