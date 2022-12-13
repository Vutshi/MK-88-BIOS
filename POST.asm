   f000:e000     ds         "БСВВ ВЕРСИЯ 3.90\r\n"               ; БСВВ ВЕРСИЯ
                             C1
   f000:e012     addr       C11                                  ; RETURN ADDRESS C11
                             C2
   f000:e014     addr       C24                                  ; RETURN ADDRESS FOR DUMMY STACK
                             s_B_f000_e017                              XREF[1,1  f000:e3e5(R), f000:e3e5(R)  
                             s_KB_f000_e016
   f000:e016     ds         "KB ДА\r"                            ; KB ДА
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
   f000:e025     MOV        AX,0xaaaa                            ; GET DATA PATTERN TO WRITE
   f000:e028     MOV        DX,0xff55                            ; SETUP OTHER DATA PATTERNS TO USE
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
   f000:e088     MOV        AX,0xffff                            ; SETUP ONE'S PATTERN IN AX
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
   f000:e0a2     XOR        AX,DI                                ; PATTERN MAKE IT THRU ALL REGS
   f000:e0a4     JNZ        ERR01
   f000:e0a6     CLC
   f000:e0a7     JMP        C8
                             TST1A                                      XREF[1]:  f000:e0a0(j)  
   f000:e0a9     OR         AX,DI                                ; ZERO PATTERN MAKE IT THRU?
   f000:e0ab     JZ         C10                                  ; YES - GO TO NEXT TEST
                             ERR01                                      XREF[12]: f000:e05f(j), f000:e061(j), 
                                                                                 f000:e063(j), f000:e065(j), 
                                                                                 f000:e06c(j), f000:e072(j), 
                                                                                 f000:e077(j), f000:e079(j), 
                                                                                 f000:e07b(j), f000:e082(j), 
                                                                                 f000:e086(j), f000:e0a4(j)  
   f000:e0ad     HLT
                             ZERO IN AL ALREADY
                             C10                                        XREF[1]:  f000:e0ab(j)  
   f000:e0ae     OUT        0x83,AL                              ; INITIALIZE DMA PAGE REG
   f000:e0b0     MOV        DX,0x3d8
   f000:e0b3     OUT        DX,AL                                ; DISABLE COLOR VIDEO
   f000:e0b4     MOV        AL,0x89                              ; SET 8255 FOR B,A=OUT, C=IN
   f000:e0b6     OUT        0x63,AL                              ; SET 8255 FOR B,A=OUT, C=IN
   f000:e0b8     MOV        AL,10100101b
   f000:e0ba     OUT        0x61,AL                              ; ENABLE PARITY CHECKERS AND
                                                                  ; PULL KB CLOCK HI, TRI-STATE
                                                                  ; KEYBOARD INPUTS,ENABLE HIGH
                                                                  ; BANK OF SWITCHES->PORT C(0-3)
   f000:e0bc     MOV        AX,CS                                ; SETUP SS SEG REG
   f000:e0be     MOV        SS,AX
   f000:e0c0     MOV        DS,AX
   f000:e0c2     CLD
   f000:e0c3     MOV        BX,0xe000                            ; SETUP STARTING ROS ADDR (E0000)
   f000:e0c6     MOV        SP,0xe012                            ; OFFSET C1 SETUP RETURN ADDRESS
   f000:e0c9     JMP        ROS_CHECKSUM                         ; undefined ROS_CHECKSUM(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             C11                                        XREF[1]:  f000:e012(*)  
   f000:e0cc     NOP
   f000:e0cd     NOP
   f000:e0ce     MOV        AL,0x4                               ; DISABLE DMA CONTROLLER
   f000:e0d0     OUT        0x8,AL
                             ;----- VERIFY THAT TIMER 1 FUNCTIONS OK
   f000:e0d2     MOV        AL,0x54                              ; SET TIMER 1,LSB,MODE 2
   f000:e0d4     OUT        0x43,AL
   f000:e0d6     MOV        AL,CL                                ; SET INITIAL TIMER CNT TO 0
   f000:e0d8     OUT        0x41,AL
                             C12                                        XREF[1]:  f000:e0e7(j)  
   f000:e0da     MOV        AL,0x40                              ; LATCH TIMER 1 COUNT
   f000:e0dc     OUT        0x43,AL
   f000:e0de     CMP        BL,0xff                              ; YES - SEE IF ALL BITS GO OFF
   f000:e0e1     JZ         C13                                  ; TIMER1_BITS_OFF
   f000:e0e3     IN         AL,0x41                              ; READ TIMER 1 COUNT
   f000:e0e5     OR         BL,AL                                ; ALL BITS ON IN TIMER
   f000:e0e7     LOOP       C12                                  ; TIMER1_BITS_ON
   f000:e0e9     HLT                                              ; TIMER 1 FAILURE, HALT SYS
                             C13                                        XREF[1]:  f000:e0e1(j)  
   f000:e0ea     MOV        AL,BL                                ; SET TIMER 1 CNT
   f000:e0ec     SUB        CX,CX
   f000:e0ee     OUT        0x41,AL
                             C14                                        XREF[1]:  f000:e0fc(j)  
   f000:e0f0     MOV        AL,0x40                              ; LATCH TIMER 1 COUNT
   f000:e0f2     OUT        0x43,AL
   f000:e0f4     NOP
   f000:e0f5     NOP
   f000:e0f6     IN         AL,0x41                              ; READ TIMER 1 COUNT
   f000:e0f8     AND        BL,AL
   f000:e0fa     JZ         C15
   f000:e0fc     LOOP       C14                                  ; TIMER_LOOP
   f000:e0fe     HLT                                              ; TIMER ERROR - HALT SYSTEM
                             C15                                        XREF[1]:  f000:e0fa(j)  
   f000:e0ff     OUT        0xd,AL                               ; (probably) SEND MASTER CLEAR T
   f000:e101     MOV        AL,0xff                              ; WRITE PATTERN FF TO ALL REGS
                             C16                                        XREF[1]:  f000:e120(j)  
   f000:e103     MOV        BL,AL                                ; SAVE PATTERN FOR COMPARE
   f000:e105     MOV        BH,AL
   f000:e107     MOV        CX,0x8
   f000:e10a     MOV        DX,0x0                               ; SETUP I/O PORT ADDR OF REG (00
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
   f000:e156     MOV        CX,1024                              ; SETUP CNT TO TEST A 1K BLOCK
   f000:e159     CMP        BX,0x1234
   f000:e15d     JZ         LAB_f000_e168
   f000:e15f     MOV        SP,0xe014
   f000:e162     JMP        STGTST_CNT                           ; undefined STGTST_CNT(void)
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             C24                                        XREF[1]:  f000:e014(*)  
   f000:e165     JZ         C18B                                 ; PROCEED IF STGTST OK
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
   f000:e17a     MOV        AX,0xaa55                            ; TEST PATTERN
   f000:e17d     MOV        CX,AX
   f000:e17f     MOV        word ptr ES:[DI]=>DAT_0000_0800,AX   ; SEND PATTERN TO MEMORY
   f000:e182     MOV        AL,0xf
   f000:e184     MOV        AX,word ptr ES:[DI]=>DAT_0000_0800
   f000:e187     XOR        AX,CX                                ; COMPARE PATTERNS
   f000:e189     JNZ        HOW_BIG_END                          ; GO END IF NO COMPARE
   f000:e18b     MOV        CX,512                               ; SET COUNT FOR 512 WORDS
   f000:e18e     STOSW.REP  ES:DI=>DAT_0000_0800
   f000:e190     ADD        DX,0x40                              ; POINT TO NEXT 1KB BLOCK
   f000:e193     ADD        BX,0x1
   f000:e196     CMP        DH,0xa0                              ; TOP OF RAM AREA YET? (A0000)
   f000:e199     JNZ        FILL_LOOP
                             HOW_BIG_END                                XREF[1]:  f000:e189(j)  
   f000:e19b     MOV        word ptr [DAT_ffff_0413],BX          ; SAVE MEMORY SIZE
                             ;----- SETUP STACK SEG AND SP
   f000:e19f     MOV        AX,0x30
   f000:e1a2     MOV        SS,AX
   f000:e1a4     MOV        SP,0x100
                             ;--------------------------------------------------------
                             ;       INITIALIZE THE 8259 INTERRUPT CONTROLLER CHIP   :
                             ;--------------------------------------------------------
                             C25
   f000:e1a7     MOV        AL,0x13                              ; ICW1 - EDGE, SNGL, ICW4
   f000:e1a9     OUT        0x20,AL
   f000:e1ab     MOV        AL,0x8                               ; SETUP ICW2 - INT TYPE 8 (8-F)
   f000:e1ad     OUT        0x21,AL
   f000:e1af     MOV        AL,0x9                               ; SETUP ICW4 - BUFFRD,8086 MODE
   f000:e1b1     OUT        0x21,AL
   f000:e1b3     MOV        AL,0xff                              ; MASK ALL INTS. OFF
   f000:e1b5     OUT        0x21,AL                              ; (VIDEO ROUTINE ENABLES INTS.)
                             ;----- SET UP THE INTERRUPT VECTORS TO TEMP INTERRUPT
   f000:e1b7     PUSH       DS=>DAT_0000_03fe
   f000:e1b8     MOV        CX,32                                ; FILL ALL 32 INTERRUPTS
   f000:e1bb     SUB        DI,DI                                ; FIRST INTERRUPT LOCATION
   f000:e1bd     MOV        ES,DI                                ; SET ES=0000 ALSO
                             D3                                         XREF[1]:  f000:e1c6(j)  
   f000:e1bf     MOV        AX,0xff23
   f000:e1c2     STOSW      ES:DI=>DAT_0000_0004
   f000:e1c3     MOV        AX,CS                                ; GET ADDR OF INTR PROC SEG
   f000:e1c5     STOSW      ES:DI=>DAT_0000_0006
   f000:e1c6     LOOP       D3                                   ; VECTBL0
                             ;----- ESTABLISH BIOS SUBROUTINE CALL INTERRUPT VECTORS
   f000:e1c8     MOV        DI,0x40                              ; SETUP ADDR TO INTR AREA
   f000:e1cb     PUSH       CS=>DAT_0000_03fc
   f000:e1cc     POP        DS=>DAT_0000_03fc                    ; SETUP ADDR OF VECTOR TABLE
   f000:e1cd     MOV        AX,DS                                ; *this line is not in IBM 1986 
   f000:e1cf     MOV        SI,0xff03                            ; START WITH VIDEO ENTRY
   f000:e1d2     MOV        CX,16
                             D3A                                        XREF[1]:  f000:e1d8(j)  
   f000:e1d5     MOVSW      ES:DI=>DAT_0000_0040,SI              ; MOVE VECTOR TABLE TO RAM
   f000:e1d6     INC        DI                                   ; SKIP SEGMENT POINTER
   f000:e1d7     INC        DI
   f000:e1d8     LOOP       D3A
                             ;------------------------------------------------
                             ;       DETERMINE CONFIGURATION AND MFG. MODE   :
                             ;------------------------------------------------
   f000:e1da     POP        DS=>DAT_0000_03fe
   f000:e1db     PUSH       DS=>DAT_0000_03fe
   f000:e1dc     MOV        word ptr [DAT_ffff_0410],0x5261
   f000:e1e2     MOV        AL,10001000b                         ; Program 8255 PIA chip (probably)
   f000:e1e4     OUT        0x63,AL
   f000:e1e6     MOV        AH,0x3
   f000:e1e8     XCHG       AL,AH
   f000:e1ea     SUB        AH,AH
   f000:e1ec     INT        0x10
   f000:e1ee     MOV        BX,0xb800
   f000:e1f1     MOV        DX,0x3d8                             ; PORT FOR COLOR CARD
   f000:e1f4     MOV        CX,0x800
   f000:e1f7     MOV        CH,0x20
   f000:e1f9     OUT        DX,AL                                ; SET THE CRT MODE, SO THAT CRT 
   f000:e1fa     CMP        word ptr [DAT_ffff_0472],0x1234
   f000:e200     MOV        ES,BX
   f000:e202     JZ         E10
   f000:e204     MOV        DS,BX
   f000:e206     CALL       STGTST_CNT                           ; undefined STGTST_CNT(void)
   f000:e209     JZ         E10
   f000:e20b     JMP        E17
                             E10                                        XREF[2]:  f000:e202(j), f000:e209(j)  
   f000:e20e     MOV        AX,0x3
   f000:e211     INT        0x10
   f000:e213     MOV        AX,0x7020                            ; WRT BLANKS IN REVERSE VIDEO
   f000:e216     JMP        E10_CONTINUE
   f000:e219     ??         FFh
   f000:e21a     ??         FFh
   ...
   f000:e2c2     ??         FFh
                             E10_CONTINUE                               XREF[1]:  f000:e216(j)  
   f000:e2c3     SUB        DI,DI                                ; SETUP STARTING LOC
   f000:e2c5     MOV        CX,0x28                              ; NO. OF BLANKS TO DISPLAY
   f000:e2c8     STOSW.REP  ES:DI=>DAT_b000_8000                 ; WRITE VIDEO STORAGE
   f000:e2ca     MOV        DX,0x3da                             ; COLOR CARD IS ATTACHED
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
   f000:e2e8     CALL       ERR_BEEP                             ; undefined ERR_BEEP(void)
   f000:e2eb     JMP        E18
                             E16                                        XREF[1]:  f000:e2df(j)  
   f000:e2ed     MOV        CL,0x3
   f000:e2ef     SHR        AH,CL
   f000:e2f1     JNZ        E12                                  ; GO CHECK HORIZONTAL LINE
                             E18                                        XREF[1]:  f000:e2eb(j)  
   f000:e2f3     MOV        AX,0x3
   f000:e2f6     INT        0x10
   f000:e2f8     MOV        SI,0xe000                            ; points to msg:
                                                                  ; БСВВ ВЕРСИЯ 3.90
   f000:e2fb     CALL       P_MSG                                ; print message from 0xe000
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
   f000:e2ff     MOV        AL,0x0                               ; SET IMR TO ZERO
   f000:e301     OUT        0x21,AL
   f000:e303     IN         AL,0x21                              ; READ IMR
   f000:e305     OR         AL,AL                                ; IMR = 0?
   f000:e307     JNZ        D6                                   ; GO TO ERR ROUTINE IF NOT 0
   f000:e309     MOV        AL,0xff                              ; DISABLE DEVICE INTERRUPTS
   f000:e30b     OUT        0x21,AL                              ; WRITE TO IMR
   f000:e30d     IN         AL,0x21                              ; READ IMR
   f000:e30f     ADD        AL,0x1                               ; ALL IMR BITS ON?
   f000:e311     JNZ        D6                                   ; NO - GO TO ERR ROUTINE
                             ;----- CHECK FOR HOT INTERRUPTS
                             ;----- INTERRUPTS ARE MASKED OFF.  CHECK THAT NO INTERRUPTS O
   f000:e313     MOV        [0x46b],AL                           ; CLEAR INTERRUPT FLAG
   f000:e316     STI                                              ; ENABLE EXTERNAL INTERRUPTS
   f000:e317     SUB        CX,CX                                ; WAIT 1 SEC FOR ANY INTRS THAT
                             D4                                         XREF[1]:  f000:e319(j)  
   f000:e319     LOOP       D4                                   ; MIGHT OCCUR
                             D5                                         XREF[1]:  f000:e31b(j)  
   f000:e31b     LOOP       D5
   f000:e31d     CMP        byte ptr [0x46b],0x0                 ; ANY INTERRUPTS OCCUR?
   f000:e322     JZ         D7                                   ;  NO - GO TO NEXT TEST
                             D6                                         XREF[4]:  f000:e307(j), f000:e311(j), 
                                                                                 f000:e343(j), f000:e359(j)  
   f000:e324     MOV        SI,0xf869                            ; DISPLAY 101 ERROR
   f000:e327     CALL       E_MSG                                ; undefined E_MSG(void)
   f000:e32a     CLI
   f000:e32b     HLT                                              ; HALT THE SYSTEM
                             ;--------------------------------------------------------
                             ;       8253 TIMER CHECKOUT                             :
                             ;DESCRIPTION                                            :
                             ;       VERIFY THAT THE SYSTEM TIMER (0) DOESN'T COUNT  :
                             ;       TOO FAST OR TOO SLOW.                           :
                             ;--------------------------------------------------------
                             D7                                         XREF[1]:  f000:e322(j)  
   f000:e32c     MOV        AL,0xfe                              ; MASK ALL INTRS EXCEPT LVL 0
   f000:e32e     OUT        0x21,AL                              ; WRITE THE 8259 IMR
   f000:e330     MOV        AL,00010000b                         ; SEL TIM 0, LSB, MODE 0, BINARY
   f000:e332     OUT        0x43,AL                              ; WRITE TIMER CONTROL MODE REG
   f000:e334     MOV        CL,0x16                              ; SET PGM LOOP CNT
   f000:e336     MOV        AL,CL                                ; SET TIMER 0 CNT REG
   f000:e338     OUT        0x40,AL                              ; WRITE TIMER 0 CNT REG
                             D8                                         XREF[1]:  f000:e341(j)  
   f000:e33a     TEST       byte ptr [0x46b],0x1                 ; DID TIMER 0 INTERRUPT OCCUR?
   f000:e33f     JNZ        D9                                   ; YES - CHECK TIMER OP FOR SLOW 
   f000:e341     LOOP       D8                                   ; WAIT FOR INTR FOR SPECIFIED TIME
   f000:e343     JMP        D6                                   ; TIMER 0 INTR DIDN'T OCCUR - ERR
                             D9                                         XREF[1]:  f000:e33f(j)  
   f000:e345     MOV        CL,12                                ; SET PGM LOOP CNT
   f000:e347     MOV        AL,0xff                              ; WRITE TIMER 0 CNT REG
   f000:e349     OUT        0x40,AL
   f000:e34b     MOV        byte ptr [0x46b],0x0                 ; RESET INTR RECEIVED FLAG
   f000:e350     MOV        AL,0xfe                              ; REENABLE TIMER 0 INTERRUPTS
   f000:e352     OUT        0x21,AL
                             D10                                        XREF[1]:  f000:e35b(j)  
   f000:e354     TEST       byte ptr [0x46b],0x1                 ; DID TIMER 0 INTERRUPT OCCUR?
   f000:e359     JNZ        D6                                   ; YES - TIMER CNTING TOO FAST, ERR
   f000:e35b     LOOP       D10                                  ; WAIT FOR INTR FOR SPECIFIED TIME
                             ;----- SETUP TIMER 0 TO MODE 3
   f000:e35d     MOV        AL,0xff                              ; DISABLE ALL DEVICE INTERRUPTS
   f000:e35f     OUT        0x21,AL
   f000:e361     MOV        AL,0x36                              ; SEL TIM 0,LSB,MSB,MODE 3
   f000:e363     OUT        0x43,AL                              ; WRITE TIMER MODE PEG
   f000:e365     MOV        AL,0x0
   f000:e367     OUT        0x40,AL                              ; WRITE LSB TO TIMER 0 REG
   f000:e369     OUT        0x40,AL                              ; WRITE MSB TO TIMER 0 REG
   f000:e36b     CALL       FUN_f000_f8fb                        ; undefined FUN_f000_f8fb()
                             ;------------------------------------------------
                             ;       SETUP HARDWARE INT. VECTOR TABLE        :
                             ;------------------------------------------------
                             F7
   f000:e36e     PUSH       DS                                   ; SETUP_INT_TABLE:
   f000:e36f     SUB        AX,AX
   f000:e371     MOV        ES,AX
   f000:e373     MOV        CX,0x8                               ; GET VECTOR CNT
   f000:e376     PUSH       CS                                   ; SETUP DS SEG REG
   f000:e377     POP        DS
   f000:e378     MOV        SI,0xfef3                            ; OFFSET VECTOR_TABLE
   f000:e37b     MOV        DI,0x20
                             F7A                                        XREF[1]:  f000:e381(j)  
   f000:e37e     MOVSW      ES:DI=>DAT_0000_0020,SI
   f000:e37f     INC        DI                                   ; SKIP OVER SEGMENT
   f000:e380     INC        DI
   f000:e381     LOOP       F7A
   f000:e383     POP        DS
                             ;----- SET UP OTHER INTERRUPTS AS NECESSARY
   f000:e384     MOV        word ptr [0x8],0xe055                ; NMI INTERRUPT
   f000:e38a     MOV        word ptr [0x14],0xff54               ; PRINT SCREEN
                             ;--------------------------------------------------------
                             ;       ADDITIONAL READ/WRITE STORAGE TEST              :
                             ;DESCRIPTION                                            :
                             ;       WRITE/READ DATA PATTERNS TO ANY READ/WRITE      :
                             ;       STORAGE AFTER THE FIRST 32K.  STORAGE           :
                             ;       ADDRESSABILITY IS CHECKED.                      :
                             ;--------------------------------------------------------
                             E19
   f000:e390     CALL       DDS                                  ; undefined DDS(void)
   f000:e393     PUSH       DS
                             E20
   f000:e394     CMP        word ptr [0x72],0x1234               ; WARM START?
   f000:e39a     JNZ        E20A                                 ; CONTINUE TEST IF NOT
   f000:e39c     JMP        ROM_SCAN                             ; GO TO NEXT ROUTINE IF SO
                             E20A                                       XREF[1]:  f000:e39a(j)  
   f000:e39f     MOV        AX,0x2                               ; STARTING AMT. OF MEMORY OK
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
   f000:e3be     CALL       STGTST_CNT                           ; undefined STGTST_CNT(void)
   f000:e3c1     JNZ        E21A                                 ; GO PRINT ERROR
   f000:e3c3     POP        AX                                   ; RECOVER TESTED MEM NUMBER
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
   f000:e3da     CALL       PRT_HEX                              ; undefined PRT_HEX(void)
   f000:e3dd     LOOP       PRINT_RAM
   f000:e3df     MOV        CX,0x7
   f000:e3e2     MOV        SI,0xe016                            ; points to msg: "KB OK"
                             PRINT_KB_OK                                XREF[1]:  f000:e3ec(j)  
   f000:e3e5     MOV        AL,byte ptr CS:[SI]=>s_KB_f000_e016  ; = "KB ДА\r"
                                                                  ; = "B ДА\r"
   f000:e3e8     INC        SI
   f000:e3e9     CALL       PRT_HEX                              ; undefined PRT_HEX(void)
   f000:e3ec     LOOP       PRINT_KB_OK
   f000:e3ee     POP        AX
   f000:e3ef     CMP        AX,0x2
   f000:e3f2     JZ         E21
   f000:e3f4     POP        BX
   f000:e3f5     POP        CX
   f000:e3f6     POP        DX
   f000:e3f7     LOOP       LAB_f000_e3b0
   f000:e3f9     MOV        AL,'\n'
   f000:e3fb     CALL       PRT_HEX                              ; undefined PRT_HEX(void)
   f000:e3fe     JMP        ROM_SCAN
                             E21A                                       XREF[1]:  f000:e3c1(j)  
   f000:e400     MOV        CH,AL
   f000:e402     MOV        AL,'\r'
   f000:e404     CALL       PRT_HEX                              ; undefined PRT_HEX(void)
   f000:e407     MOV        AL,'\n'
   f000:e409     CALL       PRT_HEX                              ; undefined PRT_HEX(void)
   f000:e40c     POP        AX
   f000:e40d     ADD        SP,0x6
   f000:e410     MOV        DX,DS
   f000:e412     POP        DS
   f000:e413     PUSH       DS
   f000:e414     MOV        [0x13],AX
   f000:e417     CALL       PRT_SEG                              ; undefined PRT_SEG(void)
   f000:e41a     MOV        AL,CH
   f000:e41c     CALL       XPC_BYTE                             ; undefined XPC_BYTE(void)
   f000:e41f     MOV        SI,0xe53c                            ; msg: ОШИБКА ПАМЯТИ
   f000:e422     CALL       E_MSG                                ; undefined E_MSG(void)
                             ROM_SCAN                                   XREF[2]:  f000:e39c(j), f000:e3fe(j)  
   f000:e425     MOV        BX,0xc000                            ; ROM 2 address
   f000:e428     CALL       ROS_CHECKSUM                         ; undefined ROS_CHECKSUM(void)
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
   f000:e42e     AND        AL,0xbf                              ; ENABLE DISKETTE INTERRUPTS
   f000:e430     OUT        0x21,AL
   f000:e432     MOV        AH,0x0                               ; RESET NEC FDC
   f000:e434     MOV        DL,AH                                ; SET FOR DRIVE 0
   f000:e436     INT        0x13                                 ; VERIFY STATUS AFTER RESET
   f000:e438     TEST       AH,0xff                              ; STATUS OK?
   f000:e43b     JNZ        F13                                  ; NO - FDC FAILED
                             ;----- TURN DRIVE 0 MOTOR ON
   f000:e43d     MOV        DX,0x3f2                             ; GET ADDR OF FDC CARD
   f000:e440     MOV        AL,0x1c                              ; TURN MOTOR ON, EN DMA/INT
   f000:e442     OUT        DX,AL                                ; WRITE FDC CONTROL REG
   f000:e443     SUB        CX,CX
                             F11                                        XREF[1]:  f000:e445(j)  
   f000:e445     LOOP       F11                                  ; WAIT FOR 1 SECOND
                             F12                                        XREF[1]:  f000:e447(j)  
   f000:e447     LOOP       F12
   f000:e449     XOR        DX,DX                                ; SELECT DRIVE 0
   f000:e44b     MOV        CH,1                                 ; SELECT TRACK 1
   f000:e44d     MOV        byte ptr [0x3e],DL
   f000:e451     CALL       SEEK                                 ; RECALIBRATE DISKETTE
   f000:e454     JC         F13                                  ; GO TO ERR SUBROUTINE IF ERR
   f000:e456     MOV        CH,34                                ; SELECT TRACK 34
   f000:e458     CALL       SEEK                                 ; SEEK TO TRACK 34
   f000:e45b     JNC        F14                                  ; OK, TURN MOTOR OFF
                             F13                                        XREF[2]:  f000:e43b(j), f000:e454(j)  
   f000:e45d     MOV        SI,0xf799                            ; MSG: НЕТ ДИСКА ИЛИ 
                                                                  ; НЕИСПРАВЕН ДИСКОВОД
   f000:e460     CALL       E_MSG                                ; undefined E_MSG(void)
                             ;----- TURN DRIVE 0 MOTOR OFF
                             F14                                        XREF[1]:  f000:e45b(j)  
   f000:e463     MOV        AL,0xc                               ; TURN DRIVE 0 MOTOR OFF
   f000:e465     MOV        DX,0x3f2                             ; GET ADDR OF FDC CARD
   f000:e468     OUT        DX,AL
                             ;----- SETUP PRINTER AND RS232 BASE ADDRESSES
                              IF DEVICE ATTACHED
   f000:e469     MOV        byte ptr [0x6b],0x0
   f000:e46e     MOV        SI,0x1e                              ; SETUP KEYBOARD PARAMETERS
   f000:e471     MOV        word ptr [0x1a],SI                   ; Buffer head pointer
   f000:e475     MOV        word ptr [0x1c],SI                   ; Buffer tail pointer
   f000:e479     MOV        word ptr [0x80],SI                   ; Buffer start
   f000:e47d     ADD        SI,0x20                              ; size
   f000:e480     MOV        word ptr [0x82],SI                   ; BUFFER_END
                             ;----- SET DEFAULT TIMEOUT VALUES FOR PRINTER AND RS232
   f000:e484     MOV        DI,0x78                              ; SET DEFAULT PRINTER TIMEOUT
   f000:e487     PUSH       DS
   f000:e488     POP        ES
   f000:e489     MOV        AX,0x1414                            ; Time-out value seconds
   f000:e48c     STOSW      ES:DI
   f000:e48d     STOSW      ES:DI
   f000:e48e     MOV        AX,0x101                             ; RS232 DEFAULT=01
   f000:e491     STOSW      ES:DI
   f000:e492     STOSW      ES:DI
                             Something new
   f000:e493     IN         AL,0x21
   f000:e495     AND        AL,0xf6                              ; IBM has 0xfc
                                                                  ; ENABLE TIMER AND KBD INTS
   f000:e497     OUT        0x21,AL
   f000:e499     CMP        BP,0x0                               ; CHECK FOR BP= NON-ZERO
                                                                  ; (ERROR HAPPENED)
   f000:e49c     JZ         F15A_0                               ; CONTINUE IF NO ERROR
   f000:e49e     MOV        DX,0x2                               ; 2 SHORT BEEPS (ERROR)
   f000:e4a1     CALL       ERR_BEEP                             ; undefined ERR_BEEP(void)
   f000:e4a4     MOV        SI,0xe519                            ; MSG: ТЕСТ ЗАВЕРШЕН,
                                                                  ; НАЖМИТЕ КЛАВИШУ Ф1
   f000:e4a7     CALL       P_MSG                                ; undefined P_MSG(void)
                             ERR_WAIT                                   XREF[1]:  f000:e4b1(j)  
   f000:e4aa     MOV        AH,0x0
   f000:e4ac     INT        0x16
   f000:e4ae     CMP        AH,0x3b                              ; WAIT FOR 'F1' KEY
   f000:e4b1     JNZ        ERR_WAIT
   f000:e4b3     JMP        F15A                                 ; BYPASS ERROR
   f000:e4b5     NOP
                             F15A_0                                     XREF[1]:  f000:e49c(j)  
   f000:e4b6     MOV        DX,0x1                               ; 1 SHORT BEEP (NO ERRORS)
   f000:e4b9     CALL       ERR_BEEP                             ; undefined ERR_BEEP(void)
                             F15A                                       XREF[1]:  f000:e4b3(j)  
   f000:e4bc     SUB        AH,AH
   f000:e4be     MOV        AL,[0x49]
   f000:e4c1     INT        0x10                                 ; CLEAR SCREEN
   f000:e4c3     MOV        DX,0x37b
   f000:e4c6     MOV        AL,0x82
   f000:e4c8     OUT        DX,AL
   f000:e4c9     MOV        BP,0xf898                            ; PRT_SRC_TBL
   f000:e4cc     MOV        SI,0x0
                             F16                                        XREF[1]:  f000:e4e9(j)  
   f000:e4cf     MOV        DX,word ptr CS:[BP + 0x0]=>F4        ; GET PRINTER BASE ADDR
   f000:e4d3     MOV        AL,0xaa                              ; WRITE DATA TO PORT A
   f000:e4d5     OUT        DX,AL
   f000:e4d6     PUSH       DS
   f000:e4d7     IN         AL,DX
   f000:e4d8     POP        DS
   f000:e4d9     CMP        AL,0xaa                              ; DATA PATTERN SAME
   f000:e4db     JNZ        F17                                  ; NO - CHECK NEXT PRT CD
   f000:e4dd     MOV        word ptr [SI + 0x8],DX               ; YES - STORE PRT BASE ADDR
   f000:e4e1     INC        SI                                   ; INCREMENT TO NEXT WORD
   f000:e4e2     INC        SI
                             F17                                        XREF[1]:  f000:e4db(j)  
   f000:e4e3     INC        BP                                   ; POINT TO NEXT BASE ADDR
   f000:e4e4     INC        BP
   f000:e4e5     CMP        BP,0xf89e                            ; ALL POSSIBLE ADDRS CHECKED?
   f000:e4e9     JNZ        F16                                  ; PRT_BASE
   f000:e4eb     MOV        BX,0x0                               ; POINTER TO RS232 TABLE
   f000:e4ee     MOV        word ptr [BX + 0x0],0x3f8            ; SETUP RS232 CD #1 ADDR
   f000:e4f4     INC        BX
   f000:e4f5     INC        BX
                             LAB_f000_e4f6                              XREF[1]:  f000:c786(j)  
   f000:e4f6     CALL       DDS                                  ; undefined DDS(void)
   f000:e4f9     PUSH       DS=>DAT_0000_037e
   f000:e4fa     POP        ES=>DAT_0000_037e
   f000:e4fb     CMP        word ptr [0x72],0x1234               ; BIOS setup before?
   f000:e501     JZ         LAB_f000_e506                        ; Yes, it is a warm start
                                                                  ; 
   f000:e503     JMP        Welcome_screen                       ; No, it's a cold boot
                                                                  ; Proceed to drawing of
                                                                  ; welcome screen
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_f000_e506                              XREF[1]:  f000:e501(j)  
   f000:e506     JMP        Choose_boot                          ; undefined Choose_boot()
                                    -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
   f000:e509     ??         00h
   ...
   f000:e518     ??         00h
   f000:e519     ds         "ТЕСТ ЗАВЕРШЕН, НАЖМИТЕ КЛАВИШУ Ф1\  ; ТЕСТ ЗАВЕРШЕН, НАЖМИТЕ КЛАВИШУ
   f000:e53c     ds         "ОШИБКА ПАМЯТИ\r\n"                  ; ОШИБКА ПАМЯТИ
   f000:e54b     ds         "ПЗУ-2 ОШ\r\n"                       ; ПЗУ-2 ОШ
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near NEC_OUTPUT_MK88()
             undefined         AL:1           <RETURN>
                             NEC_OUTPUT_MK88                            XREF[1]:  SEEK:f000:eeaa(c)  
   f000:e555     ADD        AH,AH                                ; (probably) Skip track
   f000:e557     CALL       NEC_OUTPUT                           ; undefined NEC_OUTPUT(void)
   f000:e55a     RET
   f000:e55b     ??         FFh
   f000:e55c     ??         FFh

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


                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16far MEMORY_SIZE_DET(void)
             undefined         AL:1           <RETURN>
                             MEMORY_SIZE_DET                            XREF[1]:  f000:ff07(*)  
   f000:f841     STI
   f000:f842     PUSH       DS
   f000:f843     CALL       DDS                                  ; undefined DDS(void)
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
   f000:f84f     CALL       DDS                                  ; undefined DDS(void)
   f000:f852     MOV        AX,[0x10]
   f000:f855     POP        DS
   f000:f856     IRET


                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near ROS_CHECKSUM(void)
             undefined         AL:1           <RETURN>
                             ROS_CHECKSUM                               XREF[2]:  Start:f000:e0c9(c), f000:e428(c)  
   f000:f85c     MOV        CX,0x2000                            ; NUMBER OF BYTES TO ADD
   f000:f85f     XOR        AL,AL
                             C26                                        XREF[1]:  f000:f864(j)  
   f000:f861     ADD        AL,byte ptr [BX]
   f000:f863     INC        BX
   f000:f864     LOOP       C26
   f000:f866     OR         AL,AL
   f000:f868     RET
   f000:f869     ds         "101\r\n"                            ; 101
   f000:f86e     ds         "ПЗУ\r\n"                            ; ПЗУ
   f000:f873     ds         "1801\r\n"                           ; 1801
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
   f000:f885     CALL       XLAT_PR                              ; undefined XLAT_PR(void)
   f000:f888     POP        AX
   f000:f889     AND        AL,0xf
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near XLAT_PR(void)
             undefined         AL:1           <RETURN>
                             XLAT_PR                                    XREF[1]:  XPC_BYTE:f000:f885(c)  
   f000:f88b     ADD        AL,0x90                              ; ADD FIRST CONVERSION FACTOR
   f000:f88d     DAA                                              ; ADJUST FOR NUMERIC AND ALPHA R
   f000:f88e     ADC        AL,0x40                              ; ADD CONVERSION AND ADJUST LOW 
   f000:f890     DAA                                              ; ADJUST HI NIBBLE TO ASCII RANGE
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
   f000:f891     MOV        AH,0xe                               ; DISPLAY CHARACTER IN AL
   f000:f893     MOV        BH,0x0
   f000:f895     INT        0x10                                 ; CALL VIDEO_IO
   f000:f897     RET
                             F4                                         XREF[1]:  f000:e4cf(R)  
   f000:f898     dw         3BCh                                 ; PRINTER SOURCE TABLE
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
   f000:f89e     MOV        BP,SI                                ; SET BP NON-ZERO TO FLAG ERR
   f000:f8a0     CALL       P_MSG                                ; PRINT MESSAGE
   f000:f8a3     RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near P_MSG(void)
             undefined         AL:1           <RETURN>
                             P_MSG                                      XREF[4]:  f000:e2fb(c), f000:e4a7(c), 
                                                                                 E_MSG:f000:f8a0(c), f000:f8af(j)  
   f000:f8a4     MOV        AL,byte ptr CS:[SI]                  ; PUT CHAR IN AL
   f000:f8a7     INC        SI                                   ; POINT TO NEXT CHAR
   f000:f8a8     PUSH       AX                                   ; SAVE PRINT CHAR
   f000:f8a9     CALL       PRT_HEX                              ; CALL VIDEO_IO
   f000:f8ac     POP        AX                                   ; RECOVER PRINT CHAR
   f000:f8ad     CMP        AL,10                                ; WAS IT LINE FEED?
   f000:f8af     JNZ        P_MSG                                ; NO,KEEP PRINTING STRING
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
   f000:f8b5     CALL       DDS                                  ; undefined DDS(void)
   f000:f8b8     OR         DH,DH
   f000:f8ba     JZ         G3
                             G1                                         XREF[1]:  f000:f8c5(j)  
   f000:f8bc     MOV        BL,0x6
   f000:f8be     CALL       BEEP                                 ; undefined BEEP(void)
                             G2                                         XREF[1]:  f000:f8c1(j)  
   f000:f8c1     LOOP       G2
   f000:f8c3     DEC        DH
   f000:f8c5     JNZ        G1
                             G3                                         XREF[2]:  f000:f8ba(j), f000:f8d0(j)  
   f000:f8c7     MOV        BL,0x1
   f000:f8c9     CALL       BEEP                                 ; undefined BEEP(void)
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
   f000:f8d9     MOV        AL,10110110b                         ; SEL TIM 2,LSB,MSB,BINARY
   f000:f8db     OUT        0x43,AL                              ; WRITE THE TIMER MODE REG
   f000:f8dd     MOV        AX,0x533                             ; DIVISOR FOR 1000 HZ
   f000:f8e0     OUT        0x42,AL                              ; WRITE TIMER 2 CNT - LSB
   f000:f8e2     MOV        AL,AH
   f000:f8e4     OUT        0x42,AL                              ; WRITE TIMER 2 CNT - MSB
   f000:f8e6     IN         AL,0x61                              ; GET CURRENT SETTING OF PORT
   f000:f8e8     MOV        AH,AL                                ; SAVE THAT SETTING
   f000:f8ea     OR         AL,0x3                               ; TURN SPEAKER ON
   f000:f8ec     OUT        0x61,AL
   f000:f8ee     SUB        CX,CX                                ; SET CNT TO WAIT 500 MS
                             G7                                         XREF[2]:  f000:f8f0(j), f000:f8f4(j)  
   f000:f8f0     LOOP       G7                                   ; DELAY BEFORE TURNING OFF
   f000:f8f2     DEC        BL                                   ; DELAY CNT EXPIRED?
   f000:f8f4     JNZ        G7                                   ; NO - CONTINUE BEEPING SPK
   f000:f8f6     MOV        AL,AH                                ; RECOVER VALUE OF PORT
   f000:f8f8     OUT        0x61,AL
   f000:f8fa     RET                                              ; RETURN TO CALLER
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined __cdecl16near FUN_f000_f8fb()
             undefined         AL:1           <RETURN>
                             FUN_f000_f8fb                              XREF[1]:  f000:e36b(c)  
   f000:f8fb     PUSH       AX
   f000:f8fc     PUSH       CX
   f000:f8fd     PUSH       SI
   f000:f8fe     PUSH       DS
   f000:f8ff     CALL       DDS                                  ; undefined DDS(void)
   f000:f902     MOV        SI,0x3d
   f000:f905     MOV        CX,14
                             LAB_f000_f908                              XREF[1]:  f000:f90c(j)  
   f000:f908     MOV        byte ptr [SI],0xff
   f000:f90b     DEC        SI
   f000:f90c     LOOP       LAB_f000_f908
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
                                                                                 FUN_f000_f8fb:f000:f8ff(c), 
                                                                                 TIME_OF_DAY:f000:fe70(c), 
                                                                                 TIMER_INT:f000:fea9(c), 
                                                                                 D11:f000:ff26(c)  
   f000:f918     PUSH       AX
   f000:f919     MOV        AX,0x40
   f000:f91c     MOV        DS,AX
   f000:f91e     POP        AX
   f000:f91f     RET
