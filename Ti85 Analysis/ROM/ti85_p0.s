                             //
                             // TI-85 ROM Page 0 Disassembly
                             // This file contains the disassembled Z80 assembly code from the TI-85 calculator's ROM.
                             // The TI-85 uses a Z80 CPU with custom hardware ports for LCD, keypad, memory paging, etc.
                             //
                             // Memory Map (TI-85):
                             // 0000-3FFF: ROM Page 0 (this file)
                             // 4000-7FFF: Banked ROM pages (selected via port 5)
                             // 8000-FFFF: RAM (system RAM at 8000+, user memory, display buffer at FC00-FFFF)
                             //
                             // Hardware Ports:
                             // Port 0: LCD video buffer offset
                             // Port 1: Keypad (write masks, read key status)
                             // Port 2: LCD contrast
                             // Port 3: ON status, LCD power, interrupt control
                             // Port 4: Video buffer width, interrupt speed
                             // Port 5: Memory page selection
                             // Port 6: Power mode
                             // Port 7: Link port
                             //
                             // RST Vectors: Z80 restart instructions (interrupt handlers)
                             // RST0-RST7 jump to fixed addresses, used for common system calls
                             //
                             // Page 0
                             // fileOffset=0, length=16384
                             // ram: ram:0000-ram:3fff
                             //
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined RST0()
                             ; RST0 - System initialization/reset handler
                             ; Called on power-on or system reset
             undefined         A:1            <RETURN>
                             RST0                                            XREF[1]:     Entry Point(*)
        ram:0000 3e 17           LD         A,0x17          ; Load A with 0x17 (23 decimal)
        ram:0002 d3 04           OUT        (DAT_io_0004),A ; Output to port 4: Set video buffer width to 16-byte (normal)
                                                         ; and interrupt speed to normal (bits 4-3 = 10, bits 2-1 = 11)
        ram:0004 c3 ed 0c        JP         SetStackPointer ; Jump to stack pointer initialization
        ram:0007 ff              ??         FFh            ; Unused byte (padding to align RST vectors)
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined RST1()
                             ; RST1 - Thunk to floating point addition routine
                               Thunked-Function: FUN_ram_2041
             undefined         A:1            <RETURN>
                             RST1                                            XREF[1]:     Entry Point(*)
        ram:0008 c3 41 20        JP         FUN_ram_2041    ; Jump to FP addition function at 0x2041
        ram:000b fd              ??         FDh            ; Unused bytes (padding)
        ram:000c cb              ??         CBh
        ram:000d 07              ??         07h
        ram:000e 46              ??         46h    F
        ram:000f c9              ??         C9h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined RST2()
                             ; RST2 - Thunk to floating point multiplication routine
                               Thunked-Function: FUN_ram_26c8
             undefined         A:1            <RETURN>
                             RST2                                            XREF[1]:     Entry Point(*)
        ram:0010 c3 c8 26        JP         FUN_ram_26c8    ; Jump to FP multiplication function at 0x26c8
        ram:0013 fd              ??         FDh            ; Unused bytes (padding)
        ram:0014 cb              ??         CBh
        ram:0015 08              ??         08h
        ram:0016 4e              ??         4Eh    N
        ram:0017 c9              ??         C9h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined RST3()
                             ; RST3 - Thunk to floating point division routine
                               Thunked-Function: FUN_ram_2e87
             undefined         A:1            <RETURN>
                             RST3                                            XREF[1]:     Entry Point(*)
        ram:0018 c3 87 2e        JP         FUN_ram_2e87    ; Jump to FP division function at 0x2e87
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_001b()
                             ; Set system flag bit 0 at IY+0x3
                             ; IY appears to be a system flags base pointer
             undefined         A:1            <RETURN>
                             FUN_ram_001b                                    XREF[1]:     FUN_ram_2c0b:2c0e(c)
        ram:001b fd cb 03 c6     SET        0x0,(IY+0x3)    ; Set bit 0 of system flags byte at IY+0x3
        ram:001f c9              RET
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined RST4()
                             ; RST4 - Thunk to another floating point operation (possibly comparison or conversion)
                               Thunked-Function: FUN_ram_2104
             undefined         A:1            <RETURN>
                             RST4                                            XREF[1]:     Entry Point(*)
        ram:0020 c3 04 21        JP         FUN_ram_2104    ; Jump to FP operation at 0x2104
        ram:0023 3a              ??         3Ah    :       ; Unused bytes (padding)
        ram:0024 56              ??         56h    V
        ram:0025 8a              ??         8Ah
        ram:0026 b7              ??         B7h
        ram:0027 c9              ??         C9h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined RST5()
                             ; RST5 - Thunk to system function (possibly display or I/O related)
                               Thunked-Function: FUN_ram_0e5b
             undefined         A:1            <RETURN>
                             RST5                                            XREF[1]:     Entry Point(*)
        ram:0028 c3 5b 0e        JP         FUN_ram_0e5b    ; Jump to system function at 0x0e5b
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_002b()
                             ; Clear system variable at 0x8a56
                             ; This appears to be a system status or error flag
             undefined         A:1            <RETURN>
                             FUN_ram_002b                                    XREF[1]:     FUN_ram_056e:0575(c)
        ram:002b 97              SUB        A               ; Clear A register (A = 0)
        ram:002c 32 56 8a        LD         (DAT_ram_8a56),A ; Store 0 at system RAM location 0x8a56
        ram:002f c9              RET
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk undefined RST6()
                             ; RST6 - Thunk to system function (possibly keyboard or I/O related)
                               Thunked-Function: FUN_ram_0d78
             undefined         A:1            <RETURN>
                             RST6                                            XREF[2]:     Entry Point(*), ram:3f4a(c)
        ram:0030 c3 78 0d        JP         FUN_ram_0d78    ; Jump to system function at 0x0d78
                             LAB_ram_0033                                    XREF[1]:     ram:045f(j)
                             ; Load HL with word at (HL) - indirect load
        ram:0033 7e              LD         A,(HL)          ; Load A with byte at HL
        ram:0034 23              INC        HL              ; Increment HL
        ram:0035 66              LD         H,(HL)          ; Load H with byte at HL
        ram:0036 6f              LD         L,A             ; Load L with original A
        ram:0037 c9              RET                        ; Return with HL = word that was at original HL
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined RST7()
                             ; RST7 - Main interrupt service routine
                             ; Handles ON key, timer interrupts, and other hardware events
                             ; Reads port 3 (ON status/interrupt flags) to determine interrupt source
             undefined         A:1            <RETURN>
                             RST7                                            XREF[52]:    Entry Point(*), ram:3fcd(c),
                                                                                          ram:3fce(c), ram:3fcf(c),
                                                                                          ram:3fd0(c), ram:3fd1(c),
                                                                                          ram:3fd2(c), ram:3fd3(c),
                                                                                          ram:3fd4(c), ram:3fd5(c),
                                                                                          ram:3fd6(c), ram:3fd7(c),
                                                                                          ram:3fd8(c), ram:3fd9(c),
                                                                                          ram:3fda(c), ram:3fdb(c),
                                                                                          ram:3fdc(c), ram:3fdd(c),
                                                                                          ram:3fde(c), ram:3fdf(c), [more]
        ram:0038 08              EX         AF,AF_          ; Exchange AF with shadow AF registers
        ram:0039 d9              EXX                        ; Exchange with shadow BC/DE/HL registers
        ram:003a db 03           IN         A,(DAT_io_0003) ; Read port 3 (ON status/interrupt flags)
        ram:003c 1f              RRA                        ; Rotate right - check bit 0 (ON interrupt happened)
        ram:003d 38 10           JR         C,LAB_ram_004f  ; If ON interrupt, handle it
        ram:003f 1f              RRA                        ; Check bit 1 (timer interrupt happened)
        ram:0040 38 14           JR         C,LAB_ram_0056  ; If timer interrupt, handle it
        ram:0042 18 02           JR         LAB_ram_0046    ; Neither interrupt, skip to exit
                             LAB_ram_0044                                    XREF[2]:     RST7:0054(j), ram:0072(j)
        ram:0044 d3 03           OUT        (DAT_io_0003),A ; Write to port 3 to acknowledge interrupt
                             LAB_ram_0046                                    XREF[1]:     RST7:0042(j)
        ram:0046 3e 0b           LD         A,0xb           ; Load A with 0x0B
                             LAB_ram_0048                                    XREF[1]:     FUN_ram_0aeb:0b12(j)
        ram:0048 d3 03           OUT        (DAT_io_0003),A ; Write 0x0B to port 3 (re-enable interrupts)
        ram:004a 08              EX         AF,AF_          ; Restore AF registers
        ram:004b d9              EXX                        ; Restore BC/DE/HL registers
        ram:004c fb              EI                         ; Enable interrupts
        ram:004d ed 4d           RETI                       ; Return from interrupt
                             LAB_ram_004f                                    XREF[1]:     ram:003d(j)
                             ; Handle ON key interrupt
        ram:004f cd eb 0a        CALL       FUN_ram_0aeb    ; Call ON key handler
        ram:0052 3e 0a           LD         A,0xa           ; Load A with 0x0A
        ram:0054 18 ee           JR         LAB_ram_0044    ; Jump back to acknowledge interrupt
                             LAB_ram_0056                                    XREF[1]:     ram:0040(j)
                             ; Handle timer interrupt (200Hz)
        ram:0056 fd cb 12 46     BIT        0x0,(IY+0x12)  ; Check system flag bit 0 at IY+0x12
        ram:005a c4 ac 00        CALL       NZ,FUN_ram_00ac ; If set, call timer-related function
        ram:005d fd cb 12 56     BIT        0x2,(IY+0x12)  ; Check system flag bit 2 at IY+0x12
        ram:0061 20 0d           JR         NZ,LAB_ram_0070 ; If set, skip keypad handling
        ram:0063 cd 1b 01        CALL       FUN_ram_011b    ; Call keypad scanning function
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined NMI_ISR()
                             ; Non-Maskable Interrupt service routine
                             ; NMI is triggered by certain hardware events
             undefined         A:1            <RETURN>
                             NMI_ISR                                         XREF[1]:     Entry Point(*)
        ram:0066 fd cb 0c 56     BIT        0x2,(IY+0xc)    ; Check system flag at IY+0xc
        ram:006a c4 bf 3f        CALL       NZ,LAB_ram_3fbe+1 ; Call function if flag set
        ram:006d cd ea 00        CALL       FUN_ram_00ea    ; Call another NMI handler
                             LAB_ram_0070                                    XREF[1]:     RST7:0061(j)
        ram:0070 3e 09           LD         A,0x9           ; Load A with 0x09
        ram:0072 c3 44 00        JP         LAB_ram_0044    ; Jump to acknowledge interrupt
        ram:0075 fd              ??         FDh
        ram:0076 cb              ??         CBh
        ram:0077 09              ??         09h
        ram:0078 66              ??         66h    f
        ram:0079 c9              ??         C9h
        ram:007a fd              ??         FDh
        ram:007b cb              ??         CBh
        ram:007c 02              ??         02h
        ram:007d 66              ??         66h    f
        ram:007e c9              ??         C9h
        ram:007f fd              ??         FDh
        ram:0080 cb              ??         CBh
        ram:0081 02              ??         02h
        ram:0082 6e              ??         6Eh    n
        ram:0083 c9              ??         C9h
        ram:0084 fd              ??         FDh
        ram:0085 cb              ??         CBh
        ram:0086 02              ??         02h
        ram:0087 76              ??         76h    v
        ram:0088 c9              ??         C9h
        ram:0089 fd              ??         FDh
        ram:008a cb              ??         CBh
        ram:008b 02              ??         02h
        ram:008c 7e              ??         7Eh    ~
        ram:008d c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_008e()
             undefined         A:1            <RETURN>
                             FUN_ram_008e                                    XREF[1]:     FUN_ram_0aeb:0bc6(c)
        ram:008e e5              PUSH       HL
        ram:008f b7              OR         A
        ram:0090 ed 52           SBC        HL,DE
        ram:0092 e1              POP        HL
        ram:0093 c9              RET
        ram:0094 3e              ??         3Eh    >
        ram:0095 3a              ??         3Ah    :
        ram:0096 cd              ??         CDh
        ram:0097 c5              ??         C5h
        ram:0098 3f              ??         3Fh    ?
        ram:0099 c9              ??         C9h
        ram:009a 3e              ??         3Eh    >
        ram:009b 0a              ??         0Ah
        ram:009c c5              ??         C5h
        ram:009d 4f              ??         4Fh    O
        ram:009e 97              ??         97h
        ram:009f 06              ??         06h
        ram:00a0 10              ??         10h
        ram:00a1 29              ??         29h    )
        ram:00a2 17              ??         17h
        ram:00a3 b9              ??         B9h
        ram:00a4 38              ??         38h    8
        ram:00a5 02              ??         02h
        ram:00a6 91              ??         91h
        ram:00a7 2c              ??         2Ch    ,
        ram:00a8 10              ??         10h
        ram:00a9 f7              ??         F7h
        ram:00aa c1              ??         C1h
        ram:00ab c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_00ac()
                             ; Timer-related function called during 200Hz interrupts
                             ; Appears to handle LCD display updates or blinking
             undefined         A:1            <RETURN>
                             FUN_ram_00ac                                    XREF[1]:     RST7:005a(c)
        ram:00ac 21 80 80        LD         HL,0x8080       ; Load HL with system RAM address 0x8080
        ram:00af 35              DEC        (HL=>DAT_ram_8080) ; Decrement counter at 0x8080
        ram:00b0 c0              RET        NZ             ; Return if not zero
        ram:00b1 36 1c           LD         (HL=>DAT_ram_8080),0x1c ; Reset counter to 28 (decimal)
        ram:00b3 21 81 80        LD         HL,0x8081       ; Load HL with system RAM address 0x8081
        ram:00b6 cb 0e           RRC        (HL=>DAT_ram_8081) ; Rotate right through carry
        ram:00b8 7e              LD         A,(HL=>DAT_ram_8081) ; Load A with rotated value
        ram:00b9 21 0f fc        LD         HL,0xfc0f       ; Load HL with display buffer address 0xFC0F
        ram:00bc 06 08           LD         B,0x8          ; Load B with 8 (loop counter)
        ram:00be 11 10 00        LD         DE,0x10        ; Load DE with 16 (offset for next display row)
                             LAB_ram_00c1                                    XREF[1]:     ram:00cb(j)
        ram:00c1 1f              RRA                        ; Rotate A right through carry
        ram:00c2 38 04           JR         C,LAB_ram_00c8  ; If carry set, set pixel
        ram:00c4 cb 86           RES        0x0,(HL=>DAT_ram_fc0f) ; Clear bit 0 (pixel off)
        ram:00c6 18 02           JR         LAB_ram_00ca    ; Skip to next
                             LAB_ram_00c8                                    XREF[1]:     ram:00c2(j)
        ram:00c8 cb c6           SET        0x0,(HL=>DAT_ram_fc0f) ; Set bit 0 (pixel on)
                             LAB_ram_00ca                                    XREF[1]:     ram:00c6(j)
        ram:00ca 19              ADD        HL,DE          ; Add 16 to HL (next display row)
        ram:00cb 10 f4           DJNZ       LAB_ram_00c1    ; Decrement B and loop if not zero
        ram:00cd c9              RET                        ; Return
        ram:00ce 00              ??         00h
        ram:00cf fc              ??         FCh
        ram:00d0 04              ??         04h
        ram:00d1 00              ??         00h
        ram:00d2 80              ??         80h
        ram:00d3 00              ??         00h
        ram:00d4 ff              ??         FFh
        ram:00d5 03              ??         03h
        ram:00d6 fe              ??         FEh
        ram:00d7 ff              ??         FFh
        ram:00d8 ff              ??         FFh
        ram:00d9 07              ??         07h
        ram:00da fe              ??         FEh
        ram:00db ff              ??         FFh
        ram:00dc ff              ??         FFh
        ram:00dd 07              ??         07h
        ram:00de 04              ??         04h
        ram:00df fc              ??         FCh
        ram:00e0 ff              ??         FFh
        ram:00e1 ff              ??         FFh
        ram:00e2 ff              ??         FFh
        ram:00e3 ff              ??         FFh
        ram:00e4 3f              ??         3Fh    ?
        ram:00e5 f8              ??         F8h
        ram:00e6 ef              ??         EFh
        ram:00e7 1f              ??         1Fh
        ram:00e8 3e              ??         3Eh    >
        ram:00e9 00              ??         00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_00ea()
             undefined         A:1            <RETURN>
                             FUN_ram_00ea                                    XREF[1]:     NMI_ISR:006d(c)
        ram:00ea 21 0a 80        LD         HL,0x800a
        ram:00ed 7e              LD         A,(HL=>DAT_ram_800a)
        ram:00ee b7              OR         A
        ram:00ef 28 01           JR         Z,LAB_ram_00f2
        ram:00f1 35              DEC        (HL=>DAT_ram_800a)
                             LAB_ram_00f2                                    XREF[1]:     ram:00ef(j)
        ram:00f2 3a 4e 83        LD         A,(DAT_ram_834e)
        ram:00f5 cb 57           BIT        0x2,A
        ram:00f7 c8              RET        Z
        ram:00f8 cb 5f           BIT        0x3,A
        ram:00fa c8              RET        Z
        ram:00fb 21 08 80        LD         HL,0x8008
        ram:00fe 35              DEC        (HL=>DAT_ram_8008)
        ram:00ff c0              RET        NZ
        ram:0100 23              INC        HL
        ram:0101 35              DEC        (HL=>DAT_ram_8009)
        ram:0102 c0              RET        NZ
        ram:0103 fd cb 08 9e     RES        0x3,(IY+0x8)
        ram:0107 fd cb 08 e6     SET        0x4,(IY+0x8)
        ram:010b c3 3d 0b        JP         LAB_ram_0b3d
        ram:010e 3a              ??         3Ah    :
        ram:010f 0a              ??         0Ah
        ram:0110 80              ??         80h
        ram:0111 b7              ??         B7h
        ram:0112 c0              ??         C0h
        ram:0113 76              ??         76h    v
        ram:0114 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0115()
             undefined         A:1            <RETURN>
                             FUN_ram_0115                                    XREF[2]:     FUN_ram_0aeb:0b5f(c),
                                                                                          FUN_ram_0aeb:0bf3(c)
        ram:0115 21 09 80        LD         HL,0x8009
        ram:0118 36 a1           LD         (HL=>DAT_ram_8009),0xa1
        ram:011a c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_011b()
                             ; Keypad scanning function called during timer interrupts
                             ; Reads keypad state and handles key press/release events
             undefined         A:1            <RETURN>
                             FUN_ram_011b                                    XREF[1]:     RST7:0063(c)
        ram:011b cd 68 01        CALL       FUN_ram_0168    ; Call keypad reading function
        ram:011e 38 3d           JR         C,LAB_ram_015d  ; If carry set (error?), handle error
        ram:0120 21 02 80        LD         HL,0x8002       ; Load HL with system RAM address 0x8002
        ram:0123 be              CP         (HL=>DAT_ram_8002) ; Compare A with previous keypad state
        ram:0124 21 04 80        LD         HL,0x8004       ; Load HL with system RAM address 0x8004
        ram:0127 28 05           JR         Z,LAB_ram_012e  ; If same as previous, skip
        ram:0129 32 02 80        LD         (DAT_ram_8002),A ; Store new keypad state
        ram:012c 36 05           LD         (HL=>DAT_ram_8004),0x5 ; Set debounce counter
                             LAB_ram_012e                                    XREF[1]:     ram:0127(j)
        ram:012e b7              OR         A              ; Test if any key pressed
        ram:012f 20 03           JR         NZ,LAB_ram_0134 ; If key pressed, handle
        ram:0131 35              DEC        (HL=>DAT_ram_8004) ; Decrement debounce counter
        ram:0132 c0              RET        NZ             ; Return if still debouncing
        ram:0133 34              INC        (HL=>DAT_ram_8004) ; Reset debounce counter
                             LAB_ram_0134                                    XREF[1]:     ram:012f(j)
        ram:0134 21 01 80        LD         HL,0x8001       ; Load HL with system RAM address 0x8001
        ram:0137 be              CP         (HL=>DAT_ram_8001) ; Compare with last processed key
        ram:0138 20 12           JR         NZ,LAB_ram_014c ; If different key, handle new key
        ram:013a b7              OR         A              ; Test if key still pressed
        ram:013b c8              RET        Z              ; Return if no key pressed
        ram:013c fe 20           CP         0x20           ; Check if SPACE key
        ram:013e 28 03           JR         Z,LAB_ram_0143 ; If SPACE, handle repeat
        ram:0140 fe 05           CP         0x5            ; Check if another key
        ram:0142 d0              RET        NC             ; Return if not repeatable key
                             LAB_ram_0143                                    XREF[1]:     ram:013e(j)
        ram:0143 21 03 80        LD         HL,0x8003       ; Load HL with system RAM address 0x8003
        ram:0146 35              DEC        (HL=>DAT_ram_8003) ; Decrement repeat counter
        ram:0147 c0              RET        NZ             ; Return if not time for repeat
        ram:0148 36 0e           LD         (HL=>DAT_ram_8003),0xe ; Reset repeat counter to 14
        ram:014a 18 65           JR         FUN_ram_01b1    ; Jump to key processing function
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_ram_014c                                    XREF[1]:     ram:0138(j)
        ram:014c cd b1 01        CALL       FUN_ram_01b1    ; Call key processing function
        ram:014f b7              OR         A              ; Test result
        ram:0150 28 04           JR         Z,LAB_ram_0156 ; If zero, skip flag set
        ram:0152 fd cb 00 e6     SET        0x4,(IY+0x0)   ; Set system flag bit 4
                             LAB_ram_0156                                    XREF[1]:     ram:0150(j)
        ram:0156 77              LD         (HL=>DAT_ram_8001),A ; Store processed key
        ram:0157 3e 46           LD         A,0x46          ; Load A with 0x46
        ram:0159 32 03 80        LD         (DAT_ram_8003),A ; Store initial repeat delay
        ram:015c c9              RET                        ; Return
                             LAB_ram_015d                                    XREF[1]:     ram:011e(j)
                             ; Error handling for keypad read failure
        ram:015d 3e ff           LD         A,0xff          ; Load A with 0xFF (error state)
        ram:015f 32 02 80        LD         (DAT_ram_8002),A ; Store error state
        ram:0162 3e 05           LD         A,0x5           ; Load A with 0x5
        ram:0164 32 04 80        LD         (DAT_ram_8004),A ; Store debounce value
        ram:0167 c9              RET                        ; Return
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0168()
                             ; Keypad reading function - scans TI-85 keypad matrix
                             ; Returns key code in A, or sets carry flag on error
             undefined         A:1            <RETURN>
                             FUN_ram_0168                                    XREF[1]:     FUN_ram_011b:011b(c)
        ram:0168 97              SUB        A               ; Clear A (A = 0)
        ram:0169 cd a2 01        CALL       FUN_ram_01a2    ; Read keypad with mask 0x00
        ram:016c ee ff           XOR        0xff           ; Invert bits (pressed keys = 1)
        ram:016e c8              RET        Z              ; Return if no keys pressed (A=0)
        ram:016f 21 00 00        LD         HL,0x0         ; Initialize HL = 0
        ram:0172 0e fe           LD         C,0xfe         ; C = 0xFE (keypad scan mask)
        ram:0174 16 01           LD         D,0x1          ; D = 1 (row counter)
                             LAB_ram_0176                                    XREF[1]:     ram:0195(j)
                             ; Scan each keypad row
        ram:0176 79              LD         A,C            ; A = current scan mask
        ram:0177 cd a2 01        CALL       FUN_ram_01a2    ; Read keypad with current mask
        ram:017a 1e 00           LD         E,0x0          ; E = 0 (column counter)
        ram:017c 06 08           LD         B,0x8          ; B = 8 (bits to check)
                             LAB_ram_017e                                    XREF[1]:     ram:0183(j)
                             ; Check each bit in the row
        ram:017e 17              RLA                        ; Rotate A left (check next bit)
        ram:017f 38 02           JR         C,LAB_ram_0183  ; If bit set, key pressed
        ram:0181 1c              INC        E              ; Increment column counter
        ram:0182 68              LD         L,B            ; L = current bit position
                             LAB_ram_0183                                    XREF[1]:     ram:017f(j)
        ram:0183 10 f9           DJNZ       LAB_ram_017e    ; Loop for 8 bits
        ram:0185 7b              LD         A,E            ; A = column number
        ram:0186 b7              OR         A              ; Test if any key found
        ram:0187 28 09           JR         Z,LAB_ram_0192 ; If no key in this row, continue
        ram:0189 fe 02           CP         0x2            ; Check if more than 1 key pressed
        ram:018b 30 13           JR         NC,LAB_ram_01a0 ; If multiple keys, error
        ram:018d 7c              LD         A,H            ; A = row number
        ram:018e b7              OR         A              ; Test if row already found
        ram:018f 20 0f           JR         NZ,LAB_ram_01a0 ; If multiple rows, error
        ram:0191 62              LD         H,D            ; H = current row number
                             LAB_ram_0192                                    XREF[1]:     ram:0187(j)
        ram:0192 14              INC        D              ; Increment row counter
        ram:0193 cb 01           RLC        C              ; Rotate scan mask left
        ram:0195 38 df           JR         C,LAB_ram_0176 ; If carry, continue scanning
        ram:0197 7c              LD         A,H            ; A = final row number
        ram:0198 b7              OR         A              ; Test if any key found
        ram:0199 c8              RET        Z              ; Return if no key pressed
        ram:019a 3d              DEC        A              ; Adjust row number (0-based)
        ram:019b 17              RLA                        ; Shift left
        ram:019c 17              RLA                        ; Shift left again
        ram:019d 17              RLA                        ; Shift left again (multiply by 8)
        ram:019e 85              ADD        A,L            ; Add column number
        ram:019f c9              RET                        ; Return key code
                             LAB_ram_01a0                                    XREF[2]:     ram:018b(j), ram:018f(j)
                             ; Error: multiple keys pressed
        ram:01a0 37              SCF                        ; Set carry flag (error)
        ram:01a1 c9              RET                        ; Return with error
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_01a2()
                             ; Low-level keypad I/O function
                             ; Writes mask to port 1, reads back keypad state
                             ; A = keypad mask on entry, A = keypad state on exit
             undefined         A:1            <RETURN>
                             FUN_ram_01a2                                    XREF[2]:     FUN_ram_0168:0169(c),
                                                                                          FUN_ram_0168:0177(c)
        ram:01a2 d3 01           OUT        (DAT_io_0001),A ; Write keypad mask to port 1
        ram:01a4 00              NOP                        ; Delay for keypad settling
        ram:01a5 00              NOP
        ram:01a6 00              NOP
        ram:01a7 00              NOP
        ram:01a8 db 01           IN         A,(DAT_io_0001) ; Read keypad state from port 1
        ram:01aa 47              LD         B,A             ; Save result in B
        ram:01ab 3e ff           LD         A,0xff          ; Load A with 0xFF
        ram:01ad d3 01           OUT        (DAT_io_0001),A ; Write 0xFF to port 1 (deselect all)
        ram:01af 78              LD         A,B             ; Restore keypad state to A
        ram:01b0 c9              RET                        ; Return keypad state
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_01b1()
                             ; Key processing function - handles key press events
                             ; Stores key code and sets system flags
             undefined         A:1            <RETURN>
                             FUN_ram_01b1                                    XREF[2]:     FUN_ram_011b:014a(c),
                                                                                          FUN_ram_011b:014c(c)
        ram:01b1 32 00 80        LD         (DAT_ram_8000),A ; Store key code at 0x8000
        ram:01b4 fd cb 00 de     SET        0x3,(IY+0x0)   ; Set system flag bit 3 at IY+0x0
        ram:01b8 b7              OR         A              ; Test if key code is zero
        ram:01b9 c8              RET        Z              ; Return if no key
        ram:01ba 32 06 80        LD         (DAT_ram_8006),A ; Store key code at 0x8006
        ram:01bd c9              RET                        ; Return
        ram:01be 21              ??         21h    !
        ram:01bf 00              ??         00h
        ram:01c0 80              ??         80h
        ram:01c1 f3              ??         F3h
        ram:01c2 7e              ??         7Eh    ~
        ram:01c3 36              ??         36h    6
        ram:01c4 00              ??         00h
        ram:01c5 fd              ??         FDh
        ram:01c6 cb              ??         CBh
        ram:01c7 00              ??         00h
        ram:01c8 9e              ??         9Eh
        ram:01c9 fb              ??         FBh
        ram:01ca c9              ??         C9h
        ram:01cb fd              ??         FDh
        ram:01cc cb              ??         CBh
        ram:01cd 12              ??         12h
        ram:01ce 76              ??         76h    v
        ram:01cf c0              ??         C0h
        ram:01d0 18              ??         18h
        ram:01d1 08              ??         08h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_01d2()
             undefined         A:1            <RETURN>
                             FUN_ram_01d2                                    XREF[1]:     FUN_ram_0ccc:0ccc(c)
        ram:01d2 fd cb 05 a6     RES        0x4,(IY+0x5)
                             LAB_ram_01d6                                    XREF[1]:     FUN_ram_056e:0579(j)
        ram:01d6 fd cb 12 b6     RES        0x6,(IY+0x12)
        ram:01da fd cb 12 7e     BIT        0x7,(IY+0x12)
        ram:01de c0              RET        NZ
        ram:01df fd cb 12 a6     RES        0x4,(IY+0x12)
        ram:01e3 c9              RET
        ram:01e4 fd              ??         FDh
        ram:01e5 cb              ??         CBh
        ram:01e6 12              ??         12h
        ram:01e7 fe              ??         FEh
        ram:01e8 18              ??         18h
        ram:01e9 04              ??         04h
        ram:01ea fd              ??         FDh
        ram:01eb cb              ??         CBh
        ram:01ec 12              ??         12h
        ram:01ed f6              ??         F6h
        ram:01ee fd              ??         FDh
        ram:01ef cb              ??         CBh
        ram:01f0 12              ??         12h
        ram:01f1 e6              ??         E6h
        ram:01f2 fd              ??         FDh
        ram:01f3 cb              ??         CBh
        ram:01f4 12              ??         12h
        ram:01f5 ae              ??         AEh
        ram:01f6 c9              ??         C9h
        ram:01f7 cd 75 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_ram_01fa                                    XREF[1]:     FUN_ram_0aeb:0b91(j)
        ram:01fa fd cb 11 56     BIT        0x2,(IY+0x11)
        ram:01fe 28 08           JR         Z,LAB_ram_0208
        ram:0200 fd cb 11 96     RES        0x2,(IY+0x11)
        ram:0204 37              SCF
        ram:0205 cd 81 05        CALL       FUN_ram_0581                                     undefined FUN_ram_0581()
                             LAB_ram_0208                                    XREF[1]:     ram:01fe(j)
        ram:0208 cd 7b 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:020b cd 81 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:020e cd              ??         CDh
        ram:020f 87              ??         87h
        ram:0210 3e              ??         3Eh    >
        ram:0211 32              ??         32h    2
        ram:0212 05              ??         05h
        ram:0213 80              ??         80h
        ram:0214 fe              ??         FEh
        ram:0215 0b              ??         0Bh
        ram:0216 c4              ??         C4h
        ram:0217 8d              ??         8Dh
        ram:0218 3e              ??         3Eh    >
        ram:0219 cd 93 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:021c b7              ??         B7h
        ram:021d 20              ??         20h
        ram:021e 11              ??         11h
        ram:021f fd              ??         FDh
        ram:0220 cb              ??         CBh
        ram:0221 0d              ??         0Dh
        ram:0222 46              ??         46h    F
        ram:0223 20              ??         20h
        ram:0224 06              ??         06h
        ram:0225 fd              ??         FDh
        ram:0226 cb              ??         CBh
        ram:0227 09              ??         09h
        ram:0228 a6              ??         A6h
        ram:0229 18              ??         18h
        ram:022a cc              ??         CCh
        ram:022b 3e              ??         3Eh    >
        ram:022c 06              ??         06h
        ram:022d c3              ??         C3h
        ram:022e c6              ??         C6h
        ram:022f 02              ??         02h
        ram:0230 47              ??         47h    G
        ram:0231 fd              ??         FDh
        ram:0232 36              ??         36h    6
        ram:0233 10              ??         10h
        ram:0234 00              ??         00h
        ram:0235 fe              ??         FEh
        ram:0236 c2              ??         C2h
        ram:0237 38              ??         38h    8
        ram:0238 23              ??         23h    #
        ram:0239 fe              ??         FEh
        ram:023a c7              ??         C7h
        ram:023b 30              ??         30h    0
        ram:023c 07              ??         07h
        ram:023d cd 99 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0240 28              ??         28h    (
        ram:0241 0e              ??         0Eh
        ram:0242 18              ??         18h
        ram:0243 05              ??         05h
        ram:0244 cd              ??         CDh
        ram:0245 9f              ??         9Fh
        ram:0246 3e              ??         3Eh    >
        ram:0247 28              ??         28h    (
        ram:0248 07              ??         07h
        ram:0249 dd              ??         DDh
        ram:024a 7e              ??         7Eh    ~
        ram:024b 02              ??         02h
        ram:024c e6              ??         E6h
        ram:024d c0              ??         C0h
        ram:024e 20              ??         20h
        ram:024f 75              ??         75h    u
        ram:0250 78              ??         78h    x
        ram:0251 d6              ??         D6h
        ram:0252 c1              ??         C1h
        ram:0253 32              ??         32h    2
        ram:0254 de              ??         DEh
        ram:0255 81              ??         81h
        ram:0256 3d              ??         3Dh    =
        ram:0257 11              ??         11h
        ram:0258 0e              ??         0Eh
        ram:0259 82              ??         82h
        ram:025a 18              ??         18h
        ram:025b 03              ??         03h
        ram:025c 11              ??         11h
        ram:025d 69              ??         69h    i
        ram:025e 06              ??         06h
        ram:025f 6f              ??         6Fh    o
        ram:0260 26              ??         26h    &
        ram:0261 00              ??         00h
        ram:0262 29              ??         29h    )
        ram:0263 19              ??         19h
        ram:0264 cd              ??         CDh
        ram:0265 33              ??         33h    3
        ram:0266 00              ??         00h
        ram:0267 3e              ??         3Eh    >
        ram:0268 01              ??         01h
        ram:0269 d3              ??         D3h
        ram:026a 05              ??         05h
        ram:026b cd              ??         CDh
        ram:026c 4d              ??         4Dh    M
        ram:026d 04              ??         04h
        ram:026e 7d              ??         7Dh    }
        ram:026f b4              ??         B4h
        ram:0270 20              ??         20h
        ram:0271 12              ??         12h
        ram:0272 78              ??         78h    x
        ram:0273 fe              ??         FEh
        ram:0274 c7              ??         C7h
        ram:0275 38              ??         38h    8
        ram:0276 80              ??         80h
        ram:0277 3a              ??         3Ah    :
        ram:0278 dd              ??         DDh
        ram:0279 81              ??         81h
        ram:027a fe              ??         FEh
        ram:027b 02              ??         02h
        ram:027c d2              ??         D2h
        ram:027d f7              ??         F7h
        ram:027e 01              ??         01h
        ram:027f 78              ??         78h    x
        ram:0280 d6              ??         D6h
        ram:0281 05              ??         05h
        ram:0282 18              ??         18h
        ram:0283 ac              ??         ACh
        ram:0284 78              ??         78h    x
        ram:0285 fe              ??         FEh
        ram:0286 c7              ??         C7h
        ram:0287 38              ??         38h    8
        ram:0288 2f              ??         2Fh    /
        ram:0289 7c              ??         7Ch    |
        ram:028a fe              ??         FEh
        ram:028b ff              ??         FFh
        ram:028c 28              ??         28h    (
        ram:028d 2f              ??         2Fh    /
        ram:028e 7e              ??         7Eh    ~
        ram:028f e6              ??         E6h
        ram:0290 07              ??         07h
        ram:0291 fe              ??         FEh
        ram:0292 01              ??         01h
        ram:0293 28              ??         28h    (
        ram:0294 12              ??         12h
        ram:0295 fd              ??         FDh
        ram:0296 cb              ??         CBh
        ram:0297 11              ??         11h
        ram:0298 7e              ??         7Eh    ~
        ram:0299 20              ??         20h
        ram:029a 60              ??         60h    `
        ram:029b fe              ??         FEh
        ram:029c 02              ??         02h
        ram:029d 28              ??         28h    (
        ram:029e 08              ??         08h
        ram:029f fe              ??         FEh
        ram:02a0 03              ??         03h
        ram:02a1 20              ??         20h
        ram:02a2 58              ??         58h    X
        ram:02a3 cb              ??         CBh
        ram:02a4 76              ??         76h    v
        ram:02a5 28              ??         28h    (
        ram:02a6 54              ??         54h    T
        ram:02a7 e5              ??         E5h
        ram:02a8 c5              ??         C5h
        ram:02a9 3a              ??         3Ah    :
        ram:02aa de              ??         DEh
        ram:02ab 81              ??         81h
        ram:02ac f5              ??         F5h
        ram:02ad cd              ??         CDh
        ram:02ae c5              ??         C5h
        ram:02af 05              ??         05h
        ram:02b0 f1              ??         F1h
        ram:02b1 32              ??         32h    2
        ram:02b2 de              ??         DEh
        ram:02b3 81              ??         81h
        ram:02b4 c1              ??         C1h
        ram:02b5 e1              ??         E1h
        ram:02b6 18              ??         18h
        ram:02b7 43              ??         43h    C
        ram:02b8 7c              ??         7Ch    |
        ram:02b9 fe              ??         FEh
        ram:02ba ff              ??         FFh
        ram:02bb 20              ??         20h
        ram:02bc 3e              ??         3Eh    >
        ram:02bd 4d              ??         4Dh    M
        ram:02be 3a              ??         3Ah    :
        ram:02bf 8c              ??         8Ch
        ram:02c0 81              ??         81h
        ram:02c1 b7              ??         B7h
        ram:02c2 c4              ??         C4h
        ram:02c3 ab              ??         ABh
        ram:02c4 3e              ??         3Eh    >
        ram:02c5 78              ??         78h    x
        ram:02c6 cd              ??         CDh
        ram:02c7 a4              ??         A4h
        ram:02c8 05              ??         05h
        ram:02c9 fd              ??         FDh
        ram:02ca cb              ??         CBh
        ram:02cb 09              ??         09h
        ram:02cc a6              ??         A6h
        ram:02cd cd              ??         CDh
        ram:02ce af              ??         AFh
        ram:02cf 03              ??         03h
        ram:02d0 38              ??         38h    8
        ram:02d1 f4              ??         F4h
        ram:02d2 fd              ??         FDh
        ram:02d3 cb              ??         CBh
        ram:02d4 0e              ??         0Eh
        ram:02d5 7e              ??         7Eh    ~
        ram:02d6 ca              ??         CAh
        ram:02d7 fa              ??         FAh
        ram:02d8 01              ??         01h
        ram:02d9 2a              ??         2Ah    *
        ram:02da 1b              ??         1Bh
        ram:02db 8b              ??         8Bh
        ram:02dc ed              ??         EDh
        ram:02dd 5b              ??         5Bh    [
        ram:02de 35              ??         35h    5
        ram:02df 83              ??         83h
        ram:02e0 cd              ??         CDh
        ram:02e1 8e              ??         8Eh
        ram:02e2 00              ??         00h
        ram:02e3 30              ??         30h    0
        ram:02e4 05              ??         05h
        ram:02e5 4e              ??         4Eh    N
        ram:02e6 97              ??         97h
        ram:02e7 b9              ??         B9h
        ram:02e8 20              ??         20h
        ram:02e9 dc              ??         DCh
        ram:02ea fd              ??         FDh
        ram:02eb cb              ??         CBh
        ram:02ec 0e              ??         0Eh
        ram:02ed be              ??         BEh
        ram:02ee 21              ??         21h    !
        ram:02ef 4b              ??         4Bh    K
        ram:02f0 83              ??         83h
        ram:02f1 3a              ??         3Ah    :
        ram:02f2 c2              ??         C2h
        ram:02f3 81              ??         81h
        ram:02f4 cb              ??         CBh
        ram:02f5 a6              ??         A6h
        ram:02f6 b6              ??         B6h
        ram:02f7 77              ??         77h    w
        ram:02f8 c3              ??         C3h
        ram:02f9 fa              ??         FAh
        ram:02fa 01              ??         01h
        ram:02fb 7e              ??         7Eh    ~
        ram:02fc e6              ??         E6h
        ram:02fd 07              ??         07h
        ram:02fe 20              ??         20h
        ram:02ff 17              ??         17h
        ram:0300 7e              ??         7Eh    ~
        ram:0301 fd              ??         FDh
        ram:0302 77              ??         77h    w
        ram:0303 10              ??         10h
        ram:0304 23              ??         23h    #
        ram:0305 7e              ??         7Eh    ~
        ram:0306 b7              ??         B7h
        ram:0307 28              ??         28h    (
        ram:0308 05              ??         05h
        ram:0309 cd              ??         CDh
        ram:030a d9              ??         D9h
        ram:030b 03              ??         03h
        ram:030c 18              ??         18h
        ram:030d f6              ??         F6h
        ram:030e fd              ??         FDh
        ram:030f cb              ??         CBh
        ram:0310 10              ??         10h
        ram:0311 5e              ??         5Eh    ^
        ram:0312 c4              ??         C4h
        ram:0313 ee              ??         EEh
        ram:0314 03              ??         03h
        ram:0315 18              ??         18h
        ram:0316 b6              ??         B6h
        ram:0317 fe              ??         FEh
        ram:0318 01              ??         01h
        ram:0319 20              ??         20h
        ram:031a 28              ??         28h    (
        ram:031b cd              ??         CDh
        ram:031c 37              ??         37h    7
        ram:031d 03              ??         03h
        ram:031e 3a              ??         3Ah    :
        ram:031f 9a              ??         9Ah
        ram:0320 81              ??         81h
        ram:0321 fe              ??         FEh
        ram:0322 98              ??         98h
        ram:0323 20              ??         20h
        ram:0324 0a              ??         0Ah
        ram:0325 23              ??         23h    #
        ram:0326 23              ??         23h    #
        ram:0327 7e              ??         7Eh    ~
        ram:0328 fe              ??         FEh
        ram:0329 01              ??         01h
        ram:032a c2              ??         C2h
        ram:032b fa              ??         FAh
        ram:032c 01              ??         01h
        ram:032d 2b              ??         2Bh    +
        ram:032e 2b              ??         2Bh    +
        ram:032f cd              ??         CDh
        ram:0330 a4              ??         A4h
        ram:0331 04              ??         04h
        ram:0332 78              ??         78h    x
        ram:0333 0e              ??         0Eh
        ram:0334 00              ??         00h
        ram:0335 18              ??         18h
        ram:0336 8f              ??         8Fh
        ram:0337 cb              ??         CBh
        ram:0338 76              ??         76h    v
        ram:0339 c0              ??         C0h
        ram:033a fd              ??         FDh
        ram:033b cb              ??         CBh
        ram:033c 11              ??         11h
        ram:033d 7e              ??         7Eh    ~
        ram:033e c8              ??         C8h
        ram:033f e1              ??         E1h
        ram:0340 c3              ??         C3h
        ram:0341 fa              ??         FAh
        ram:0342 01              ??         01h
        ram:0343 fe              ??         FEh
        ram:0344 02              ??         02h
        ram:0345 20              ??         20h
        ram:0346 2c              ??         2Ch    ,
        ram:0347 cd              ??         CDh
        ram:0348 37              ??         37h    7
        ram:0349 03              ??         03h
        ram:034a cb              ??         CBh
        ram:034b 76              ??         76h    v
        ram:034c fd              ??         FDh
        ram:034d cb              ??         CBh
        ram:034e 0d              ??         0Dh
        ram:034f 5e              ??         5Eh    ^
        ram:0350 20              ??         20h
        ram:0351 0e              ??         0Eh
        ram:0352 fd              ??         FDh
        ram:0353 cb              ??         CBh
        ram:0354 0d              ??         0Dh
        ram:0355 66              ??         66h    f
        ram:0356 20              ??         20h
        ram:0357 18              ??         18h
        ram:0358 e5              ??         E5h
        ram:0359 21              ??         21h    !
        ram:035a cb              ??         CBh
        ram:035b 07              ??         07h
        ram:035c cd              ??         CDh
        ram:035d a4              ??         A4h
        ram:035e 04              ??         04h
        ram:035f e1              ??         E1h
        ram:0360 fd              ??         FDh
        ram:0361 cb              ??         CBh
        ram:0362 11              ??         11h
        ram:0363 4e              ??         4Eh    N
        ram:0364 28              ??         28h    (
        ram:0365 07              ??         07h
        ram:0366 3e              ??         3Eh    >
        ram:0367 07              ??         07h
        ram:0368 0e              ??         0Eh
        ram:0369 00              ??         00h
        ram:036a cd              ??         CDh
        ram:036b a4              ??         A4h
        ram:036c 05              ??         05h
        ram:036d cd              ??         CDh
        ram:036e a5              ??         A5h
        ram:036f 3e              ??         3Eh    >
        ram:0370 c3              ??         C3h
        ram:0371 fa              ??         FAh
        ram:0372 01              ??         01h
        ram:0373 fe              ??         FEh
        ram:0374 03              ??         03h
        ram:0375 20              ??         20h
        ram:0376 36              ??         36h    6
        ram:0377 23              ??         23h    #
        ram:0378 7e              ??         7Eh    ~
        ram:0379 32              ??         32h    2
        ram:037a 05              ??         05h
        ram:037b 80              ??         80h
        ram:037c fe              ??         FEh
        ram:037d cc              ??         CCh
        ram:037e 38              ??         38h    8
        ram:037f 28              ??         28h    (
        ram:0380 f5              ??         F5h
        ram:0381 cd              ??         CDh
        ram:0382 9f              ??         9Fh
        ram:0383 3e              ??         3Eh    >
        ram:0384 28              ??         28h    (
        ram:0385 0a              ??         0Ah
        ram:0386 dd              ??         DDh
        ram:0387 6e              ??         6Eh    n
        ram:0388 00              ??         00h
        ram:0389 dd              ??         DDh
        ram:038a 66              ??         66h    f
        ram:038b 01              ??         01h
        ram:038c cb              ??         CBh
        ram:038d 66              ??         66h    f
        ram:038e 28              ??         28h    (
        ram:038f 03              ??         03h
        ram:0390 cd              ??         CDh
        ram:0391 99              ??         99h
        ram:0392 3e              ??         3Eh    >
        ram:0393 dd              ??         DDh
        ram:0394 7e              ??         7Eh    ~
        ram:0395 02              ??         02h
        ram:0396 32              ??         32h    2
        ram:0397 7c              ??         7Ch    |
        ram:0398 82              ??         82h
        ram:0399 fd              ??         FDh
        ram:039a cb              ??         CBh
        ram:039b 11              ??         11h
        ram:039c f6              ??         F6h
        ram:039d 21              ??         21h    !
        ram:039e 32              ??         32h    2
        ram:039f 08              ??         08h
        ram:03a0 cd              ??         CDh
        ram:03a1 a4              ??         A4h
        ram:03a2 04              ??         04h
        ram:03a3 fd              ??         FDh
        ram:03a4 cb              ??         CBh
        ram:03a5 11              ??         11h
        ram:03a6 b6              ??         B6h
        ram:03a7 f1              ??         F1h
        ram:03a8 0e              ??         0Eh
        ram:03a9 00              ??         00h
        ram:03aa c3              ??         C3h
        ram:03ab c6              ??         C6h
        ram:03ac 02              ??         02h
        ram:03ad 23              ??         23h    #
        ram:03ae e9              ??         E9h
        ram:03af 2a              ??         2Ah    *
        ram:03b0 aa              ??         AAh
        ram:03b1 81              ??         81h
        ram:03b2 7c              ??         7Ch    |
        ram:03b3 bd              ??         BDh
        ram:03b4 28              ??         28h    (
        ram:03b5 11              ??         11h
        ram:03b6 6c              ??         6Ch    l
        ram:03b7 26              ??         26h    &
        ram:03b8 00              ??         00h
        ram:03b9 11              ??         11h
        ram:03ba ac              ??         ACh
        ram:03bb 81              ??         81h
        ram:03bc 19              ??         19h
        ram:03bd 4e              ??         4Eh    N
        ram:03be 3c              ??         3Ch    <
        ram:03bf e6              ??         E6h
        ram:03c0 0f              ??         0Fh
        ram:03c1 32              ??         32h    2
        ram:03c2 ab              ??         ABh
        ram:03c3 81              ??         81h
        ram:03c4 97              ??         97h
        ram:03c5 37              ??         37h    7
        ram:03c6 c9              ??         C9h
        ram:03c7 21              ??         21h    !
        ram:03c8 56              ??         56h    V
        ram:03c9 83              ??         83h
        ram:03ca cb              ??         CBh
        ram:03cb 6e              ??         6Eh    n
        ram:03cc c8              ??         C8h
        ram:03cd cb              ??         CBh
        ram:03ce ae              ??         AEh
        ram:03cf 0e              ??         0Eh
        ram:03d0 20              ??         20h
        ram:03d1 cb              ??         CBh
        ram:03d2 76              ??         76h    v
        ram:03d3 28              ??         28h    (
        ram:03d4 ef              ??         EFh
        ram:03d5 0e              ??         0Eh
        ram:03d6 28              ??         28h    (
        ram:03d7 18              ??         18h
        ram:03d8 eb              ??         EBh
        ram:03d9 e5              ??         E5h
        ram:03da ed              ??         EDh
        ram:03db 5b              ??         5Bh    [
        ram:03dc aa              ??         AAh
        ram:03dd 81              ??         81h
        ram:03de 16              ??         16h
        ram:03df 00              ??         00h
        ram:03e0 21              ??         21h    !
        ram:03e1 ac              ??         ACh
        ram:03e2 81              ??         81h
        ram:03e3 19              ??         19h
        ram:03e4 77              ??         77h    w
        ram:03e5 7b              ??         7Bh    {
        ram:03e6 3c              ??         3Ch    <
        ram:03e7 e6              ??         E6h
        ram:03e8 0f              ??         0Fh
        ram:03e9 32              ??         32h    2
        ram:03ea aa              ??         AAh
        ram:03eb 81              ??         81h
        ram:03ec e1              ??         E1h
        ram:03ed c9              ??         C9h
        ram:03ee e5              ??         E5h
        ram:03ef cd              ??         CDh
        ram:03f0 b1              ??         B1h
        ram:03f1 3e              ??         3Eh    >
        ram:03f2 3e              ??         3Eh    >
        ram:03f3 05              ??         05h
        ram:03f4 28              ??         28h    (
        ram:03f5 e4              ??         E4h
        ram:03f6 2b              ??         2Bh    +
        ram:03f7 be              ??         BEh
        ram:03f8 20              ??         20h
        ram:03f9 e0              ??         E0h
        ram:03fa e1              ??         E1h
        ram:03fb c9              ??         C9h
        ram:03fc f5              ??         F5h
        ram:03fd e5              ??         E5h
        ram:03fe 21              ??         21h    !
        ram:03ff 8d              ??         8Dh
        ram:0400 81              ??         81h
        ram:0401 11              ??         11h
        ram:0402 9b              ??         9Bh
        ram:0403 81              ??         81h
        ram:0404 01              ??         01h
        ram:0405 0e              ??         0Eh
        ram:0406 00              ??         00h
        ram:0407 ed              ??         EDh
        ram:0408 b0              ??         B0h
        ram:0409 3a              ??         3Ah    :
        ram:040a 53              ??         53h    S
        ram:040b 83              ??         83h
        ram:040c 12              ??         12h
        ram:040d 21              ??         21h    !
        ram:040e e1              ??         E1h
        ram:040f 81              ??         81h
        ram:0410 11              ??         11h
        ram:0411 ff              ??         FFh
        ram:0412 81              ??         81h
        ram:0413 01              ??         01h
        ram:0414 0f              ??         0Fh
        ram:0415 00              ??         00h
        ram:0416 ed              ??         EDh
        ram:0417 b0              ??         B0h
        ram:0418 e1              ??         E1h
        ram:0419 f1              ??         F1h
        ram:041a c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_041b()
             undefined         A:1            <RETURN>
                             FUN_ram_041b                                    XREF[1]:     ram:0605(c)
        ram:041b f5              PUSH       AF
        ram:041c e5              PUSH       HL
        ram:041d 21 9b 81        LD         HL,0x819b
        ram:0420 11 8d 81        LD         DE,0x818d
        ram:0423 01 0e 00        LD         BC,0xe
        ram:0426 ed b0           LDIR
        ram:0428 7e              LD         A,(HL=>DAT_ram_819c)
        ram:0429 32 53 83        LD         (DAT_ram_8353),A
        ram:042c 21 ff 81        LD         HL,0x81ff
        ram:042f 11 e1 81        LD         DE,0x81e1
        ram:0432 01 0f 00        LD         BC,0xf
        ram:0435 ed b0           LDIR
        ram:0437 3a ef 81        LD         A,(DAT_ram_81ef)
        ram:043a fe 03           CP         0x3
        ram:043c 38 02           JR         C,LAB_ram_0440
        ram:043e 3e 02           LD         A,0x2
                             LAB_ram_0440                                    XREF[1]:     ram:043c(j)
        ram:0440 32 dd 81        LD         (DAT_ram_81dd),A
        ram:0443 d6 08           SUB        0x8
        ram:0445 ed 44           NEG
        ram:0447 32 30 8b        LD         (DAT_ram_8b30),A
        ram:044a e1              POP        HL
        ram:044b f1              POP        AF
        ram:044c c9              RET
        ram:044d fd              ??         FDh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_044e()
             undefined         A:1            <RETURN>
                             FUN_ram_044e                                    XREF[1]:     ram:3f2c(c)
        ram:044e cb 09           RRC        C
        ram:0450 46              LD         B,(HL)
        ram:0451 c8              RET        Z
        ram:0452 7c              LD         A,H
        ram:0453 fe ff           CP         0xff
        ram:0455 c8              RET        Z
        ram:0456 7e              LD         A,(HL)
        ram:0457 e6 07           AND        0x7
        ram:0459 c8              RET        Z
        ram:045a cb 7e           BIT        0x7,(HL)
        ram:045c c8              RET        Z
        ram:045d 2b              DEC        HL
        ram:045e 2b              DEC        HL
        ram:045f c3 33 00        JP         LAB_ram_0033
        ram:0462 0e              ??         0Eh
        ram:0463 00              ??         00h
        ram:0464 ed              ??         EDh
        ram:0465 7b              ??         7Bh    {
        ram:0466 bc              ??         BCh
        ram:0467 81              ??         81h
        ram:0468 fd              ??         FDh
        ram:0469 cb              ??         CBh
        ram:046a 0c              ??         0Ch
        ram:046b b6              ??         B6h
        ram:046c 21              ??         21h    !
        ram:046d cb              ??         CBh
        ram:046e 07              ??         07h
        ram:046f cd              ??         CDh
        ram:0470 a4              ??         A4h
        ram:0471 04              ??         04h
        ram:0472 97              ??         97h
        ram:0473 c3              ??         C3h
        ram:0474 c6              ??         C6h
        ram:0475 02              ??         02h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0476()
             undefined         A:1            <RETURN>
                             FUN_ram_0476                                    XREF[1]:     FUN_ram_0aeb:0b82(c)
        ram:0476 2a e3 8b        LD         HL,(DAT_ram_8be3)
                             LAB_ram_0479                                    XREF[1]:     ram:3f08(j)
        ram:0479 22 e5 8b        LD         (DAT_ram_8be5),HL
        ram:047c 2a df 8b        LD         HL,(DAT_ram_8bdf)
        ram:047f 22 e1 8b        LD         (DAT_ram_8be1),HL
        ram:0482 2a bc 81        LD         HL,(DAT_ram_81bc)
        ram:0485 22 38 83        LD         (DAT_ram_8338),HL
        ram:0488 c9              RET
        ram:0489 ed              ??         EDh
        ram:048a 7b              ??         7Bh    {
        ram:048b bc              ??         BCh
        ram:048c 81              ??         81h
        ram:048d 21              ??         21h    !
        ram:048e c9              ??         C9h
        ram:048f 08              ??         08h
        ram:0490 cd              ??         CDh
        ram:0491 96              ??         96h
        ram:0492 04              ??         04h
        ram:0493 c3              ??         C3h
        ram:0494 fa              ??         FAh
        ram:0495 01              ??         01h
        ram:0496 97              ??         97h
        ram:0497 32              ??         32h    2
        ram:0498 05              ??         05h
        ram:0499 80              ??         80h
        ram:049a db              ??         DBh
        ram:049b 05              ??         05h
        ram:049c f5              ??         F5h
        ram:049d cd              ??         CDh
        ram:049e a4              ??         A4h
        ram:049f 04              ??         04h
        ram:04a0 f1              ??         F1h
        ram:04a1 d3              ??         D3h
        ram:04a2 05              ??         05h
        ram:04a3 c9              ??         C9h
        ram:04a4 23              ??         23h    #
        ram:04a5 5e              ??         5Eh    ^
        ram:04a6 23              ??         23h    #
        ram:04a7 3a              ??         3Ah    :
        ram:04a8 9a              ??         9Ah
        ram:04a9 81              ??         81h
        ram:04aa be              ??         BEh
        ram:04ab 20              ??         20h
        ram:04ac 15              ??         15h
        ram:04ad fe              ??         FEh
        ram:04ae 0e              ??         0Eh
        ram:04af 28              ??         28h    (
        ram:04b0 11              ??         11h
        ram:04b1 fe              ??         FEh
        ram:04b2 11              ??         11h
        ram:04b3 28              ??         28h    (
        ram:04b4 0d              ??         0Dh
        ram:04b5 fe              ??         FEh
        ram:04b6 1a              ??         1Ah
        ram:04b7 20              ??         20h
        ram:04b8 06              ??         06h
        ram:04b9 83              ??         83h
        ram:04ba fe              ??         FEh
        ram:04bb 1a              ??         1Ah
        ram:04bc 28              ??         28h    (
        ram:04bd 04              ??         04h
        ram:04be 93              ??         93h
        ram:04bf 06              ??         06h
        ram:04c0 c1              ??         C1h
        ram:04c1 c9              ??         C9h
        ram:04c2 cb              ??         CBh
        ram:04c3 7e              ??         7Eh    ~
        ram:04c4 28              ??         28h    (
        ram:04c5 0e              ??         0Eh
        ram:04c6 e6              ??         E6h
        ram:04c7 3f              ??         3Fh    ?
        ram:04c8 fe              ??         FEh
        ram:04c9 19              ??         19h
        ram:04ca 38              ??         38h    8
        ram:04cb 08              ??         08h
        ram:04cc 7e              ??         7Eh    ~
        ram:04cd fe              ??         FEh
        ram:04ce 98              ??         98h
        ram:04cf 28              ??         28h    (
        ram:04d0 03              ??         03h
        ram:04d1 06              ??         06h
        ram:04d2 00              ??         00h
        ram:04d3 c9              ??         C9h
        ram:04d4 fd              ??         FDh
        ram:04d5 cb              ??         CBh
        ram:04d6 0c              ??         0Ch
        ram:04d7 a6              ??         A6h
        ram:04d8 c5              ??         C5h
        ram:04d9 d5              ??         D5h
        ram:04da 3a              ??         3Ah    :
        ram:04db fe              ??         FEh
        ram:04dc 81              ??         81h
        ram:04dd b7              ??         B7h
        ram:04de 28              ??         28h    (
        ram:04df 17              ??         17h
        ram:04e0 e5              ??         E5h
        ram:04e1 3a              ??         3Ah    :
        ram:04e2 de              ??         DEh
        ram:04e3 81              ??         81h
        ram:04e4 f5              ??         F5h
        ram:04e5 cd              ??         CDh
        ram:04e6 b7              ??         B7h
        ram:04e7 3e              ??         3Eh    >
        ram:04e8 cd              ??         CDh
        ram:04e9 bd              ??         BDh
        ram:04ea 3e              ??         3Eh    >
        ram:04eb cd 9f 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:04ee 37              ??         37h    7
        ram:04ef cc              ??         CCh
        ram:04f0 81              ??         81h
        ram:04f1 05              ??         05h
        ram:04f2 f1              ??         F1h
        ram:04f3 32              ??         32h    2
        ram:04f4 de              ??         DEh
        ram:04f5 81              ??         81h
        ram:04f6 e1              ??         E1h
        ram:04f7 cd              ??         CDh
        ram:04f8 63              ??         63h    c
        ram:04f9 05              ??         05h
        ram:04fa 3a              ??         3Ah    :
        ram:04fb 9a              ??         9Ah
        ram:04fc 81              ??         81h
        ram:04fd 17              ??         17h
        ram:04fe 38              ??         38h    8
        ram:04ff 09              ??         09h
        ram:0500 cb              ??         CBh
        ram:0501 7e              ??         7Eh    ~
        ram:0502 28              ??         28h    (
        ram:0503 1c              ??         1Ch
        ram:0504 cd              ??         CDh
        ram:0505 fc              ??         FCh
        ram:0506 03              ??         03h
        ram:0507 18              ??         18h
        ram:0508 1a              ??         1Ah
        ram:0509 cd              ??         CDh
        ram:050a 6e              ??         6Eh    n
        ram:050b 05              ??         05h
        ram:050c cb              ??         CBh
        ram:050d 7e              ??         7Eh    ~
        ram:050e 20              ??         20h
        ram:050f 13              ??         13h
        ram:0510 cd              ??         CDh
        ram:0511 1b              ??         1Bh
        ram:0512 04              ??         04h
        ram:0513 3a              ??         3Ah    :
        ram:0514 9a              ??         9Ah
        ram:0515 81              ??         81h
        ram:0516 be              ??         BEh
        ram:0517 20              ??         20h
        ram:0518 07              ??         07h
        ram:0519 cd bd 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:051c d1              ??         D1h
        ram:051d c1              ??         C1h
        ram:051e 18              ??         18h
        ram:051f 5c              ??         5Ch    \
        ram:0520 cd              ??         CDh
        ram:0521 57              ??         57h    W
        ram:0522 05              ??         05h
        ram:0523 cd              ??         CDh
        ram:0524 c3              ??         C3h
        ram:0525 3e              ??         3Eh    >
        ram:0526 fd              ??         FDh
        ram:0527 cb              ??         CBh
        ram:0528 11              ??         11h
        ram:0529 96              ??         96h
        ram:052a 7e              ??         7Eh    ~
        ram:052b 32              ??         32h    2
        ram:052c 9a              ??         9Ah
        ram:052d 81              ??         81h
        ram:052e fe              ??         FEh
        ram:052f 04              ??         04h
        ram:0530 28              ??         28h    (
        ram:0531 10              ??         10h
        ram:0532 fe              ??         FEh
        ram:0533 4c              ??         4Ch    L
        ram:0534 28              ??         28h    (
        ram:0535 0c              ??         0Ch
        ram:0536 fe              ??         FEh
        ram:0537 4b              ??         4Bh    K
        ram:0538 28              ??         28h    (
        ram:0539 08              ??         08h
        ram:053a fe              ??         FEh
        ram:053b 4a              ??         4Ah    J
        ram:053c 28              ??         28h    (
        ram:053d 04              ??         04h
        ram:053e 17              ??         17h
        ram:053f d4              ??         D4h
        ram:0540 2d              ??         2Dh    -
        ram:0541 06              ??         06h
        ram:0542 d1              ??         D1h
        ram:0543 3a              ??         3Ah    :
        ram:0544 05              ??         05h
        ram:0545 80              ??         80h
        ram:0546 23              ??         23h    #
        ram:0547 fd              ??         FDh
        ram:0548 cb              ??         CBh
        ram:0549 01              ??         01h
        ram:054a ee              ??         EEh
        ram:054b cd              ??         CDh
        ram:054c b4              ??         B4h
        ram:054d 05              ??         05h
        ram:054e fd              ??         FDh
        ram:054f cb              ??         CBh
        ram:0550 01              ??         01h
        ram:0551 ae              ??         AEh
        ram:0552 c1              ??         C1h
        ram:0553 c9              ??         C9h
        ram:0554 cd              ??         CDh
        ram:0555 63              ??         63h    c
        ram:0556 05              ??         05h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0557()
             undefined         A:1            <RETURN>
                             FUN_ram_0557
        ram:0557 cd 6e 05        CALL       FUN_ram_056e                                     undefined FUN_ram_056e()
        ram:055a fd cb 11 be     RES        0x7,(IY+0x11)
        ram:055e fd cb 11 86     RES        0x0,(IY+0x11)
        ram:0562 c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0563()
             undefined         A:1            <RETURN>
                             FUN_ram_0563                                    XREF[1]:     ram:05ff(c)
        ram:0563 e5              PUSH       HL
        ram:0564 21 df ff        LD         HL,0xffdf
        ram:0567 cb 86           RES        0x0,(HL=>DAT_ram_ffdf)
        ram:0569 2a 8f 81        LD         HL,(DAT_ram_818f)
        ram:056c 18 3a           JR         LAB_ram_05a8
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_056e()
             undefined         A:1            <RETURN>
                             FUN_ram_056e                                    XREF[2]:     FUN_ram_0557:0557(c),
                                                                                          ram:0602(c)
        ram:056e e5              PUSH       HL
        ram:056f 2a 91 81        LD         HL,(DAT_ram_8191)
        ram:0572 cd 95 05        CALL       FUN_ram_0595                                     undefined FUN_ram_0595()
        ram:0575 cd 2b 00        CALL       FUN_ram_002b                                     undefined FUN_ram_002b()
        ram:0578 e1              POP        HL
        ram:0579 c3 d6 01        JP         LAB_ram_01d6
        ram:057c 2a              ??         2Ah    *
        ram:057d 93              ??         93h
        ram:057e 81              ??         81h
        ram:057f 18              ??         18h
        ram:0580 14              ??         14h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0581()
             undefined         A:1            <RETURN>
                             FUN_ram_0581                                    XREF[1]:     ram:0205(c)
        ram:0581 fd cb 01 6e     BIT        0x5,(IY+0x1)
        ram:0585 f5              PUSH       AF
        ram:0586 3a dd 81        LD         A,(DAT_ram_81dd)
        ram:0589 47              LD         B,A
        ram:058a 2a 97 81        LD         HL,(DAT_ram_8197)
        ram:058d cd 95 05        CALL       FUN_ram_0595                                     undefined FUN_ram_0595()
        ram:0590 f1              POP        AF
        ram:0591 c9              RET
        ram:0592 2a              ??         2Ah    *
        ram:0593 95              ??         95h
        ram:0594 81              ??         81h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0595()
             undefined         A:1            <RETURN>
                             FUN_ram_0595                                    XREF[2]:     FUN_ram_056e:0572(c),
                                                                                          FUN_ram_0581:058d(c)
        ram:0595 db 05           IN         A,(DAT_io_0005)
        ram:0597 f5              PUSH       AF
        ram:0598 3a 99 81        LD         A,(DAT_ram_8199)
        ram:059b d3 05           OUT        (DAT_io_0005),A
        ram:059d cd b4 05        CALL       FUN_ram_05b4                                     undefined FUN_ram_05b4()
        ram:05a0 f1              POP        AF
        ram:05a1 d3 05           OUT        (DAT_io_0005),A
        ram:05a3 c9              RET
        ram:05a4 e5              ??         E5h
        ram:05a5 2a              ??         2Ah    *
        ram:05a6 8d              ??         8Dh
        ram:05a7 81              ??         81h
                             LAB_ram_05a8                                    XREF[1]:     ram:056c(j)
        ram:05a8 f5              PUSH       AF
        ram:05a9 3a 99 81        LD         A,(DAT_ram_8199)
        ram:05ac d3 05           OUT        (DAT_io_0005),A
        ram:05ae f1              POP        AF
        ram:05af cd b4 05        CALL       FUN_ram_05b4                                     undefined FUN_ram_05b4()
        ram:05b2 e1              POP        HL
        ram:05b3 c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_05b4()
             undefined         A:1            <RETURN>
                             FUN_ram_05b4                                    XREF[2]:     FUN_ram_0595:059d(c),
                                                                                          FUN_ram_0563:05af(c)
        ram:05b4 e9              JP         (HL)
        ram:05b5 78              ??         78h    x
        ram:05b6 0e              ??         0Eh
        ram:05b7 00              ??         00h
        ram:05b8 fd              ??         FDh
        ram:05b9 cb              ??         CBh
        ram:05ba 0d              ??         0Dh
        ram:05bb 7e              ??         7Eh    ~
        ram:05bc c2              ??         C2h
        ram:05bd c6              ??         C6h
        ram:05be 02              ??         02h
        ram:05bf cd              ??         CDh
        ram:05c0 c5              ??         C5h
        ram:05c1 05              ??         05h
        ram:05c2 c3              ??         C3h
        ram:05c3 fa              ??         FAh
        ram:05c4 01              ??         01h
        ram:05c5 3a              ??         3Ah    :
        ram:05c6 fe              ??         FEh
        ram:05c7 81              ??         81h
        ram:05c8 b7              ??         B7h
        ram:05c9 28              ??         28h    (
        ram:05ca 1e              ??         1Eh
        ram:05cb cd c9 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:05ce 3a              ??         3Ah    :
        ram:05cf ef              ??         EFh
        ram:05d0 81              ??         81h
        ram:05d1 b7              ??         B7h
        ram:05d2 c4              ??         C4h
        ram:05d3 b7              ??         B7h
        ram:05d4 3e              ??         3Eh    >
        ram:05d5 3a              ??         3Ah    :
        ram:05d6 fe              ??         FEh
        ram:05d7 81              ??         81h
        ram:05d8 21              ??         21h    !
        ram:05d9 ef              ??         EFh
        ram:05da 81              ??         81h
        ram:05db 86              ??         86h
        ram:05dc 20              ??         20h
        ram:05dd 07              ??         07h
        ram:05de 3a              ??         3Ah    :
        ram:05df 9a              ??         9Ah
        ram:05e0 81              ??         81h
        ram:05e1 fe              ??         FEh
        ram:05e2 01              ??         01h
        ram:05e3 20              ??         20h
        ram:05e4 16              ??         16h
                             LAB_ram_05e5                                    XREF[1]:     ram:0612(j)
        ram:05e5 cd bd 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:05e8 c9              ??         C9h
        ram:05e9 3a              ??         3Ah    :
        ram:05ea ef              ??         EFh
        ram:05eb 81              ??         81h
        ram:05ec b7              ??         B7h
        ram:05ed 3a              ??         3Ah    :
        ram:05ee 9a              ??         9Ah
        ram:05ef 81              ??         81h
        ram:05f0 28              ??         28h    (
        ram:05f1 09              ??         09h
        ram:05f2 cd cf 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:05f5 20              ??         20h
        ram:05f6 ee              ??         EEh
        ram:05f7 fe              ??         FEh
        ram:05f8 01              ??         01h
        ram:05f9 28              ??         28h    (
        ram:05fa ea              ??         EAh
        ram:05fb cb 7f           BIT        0x7,A
        ram:05fd 28 0f           JR         Z,LAB_ram_060e
        ram:05ff cd 63 05        CALL       FUN_ram_0563                                     undefined FUN_ram_0563()
        ram:0602 cd 6e 05        CALL       FUN_ram_056e                                     undefined FUN_ram_056e()
        ram:0605 cd 1b 04        CALL       FUN_ram_041b                                     undefined FUN_ram_041b()
        ram:0608 cd bd 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:060b c3              ??         C3h
        ram:060c 7c              ??         7Ch    |
        ram:060d 05              ??         05h
                             LAB_ram_060e                                    XREF[1]:     ram:05fd(j)
        ram:060e fd cb 0c 76     BIT        0x6,(IY+0xc)
        ram:0612 20 d1           JR         NZ,LAB_ram_05e5
        ram:0614 fe 01           CP         0x1
        ram:0616 c8              RET        Z
        ram:0617 cd bd 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:061a fd              ??         FDh
        ram:061b cb              ??         CBh
        ram:061c 11              ??         11h
        ram:061d 96              ??         96h
        ram:061e cd              ??         CDh
        ram:061f 54              ??         54h    T
        ram:0620 05              ??         05h
        ram:0621 cd              ??         CDh
        ram:0622 2d              ??         2Dh    -
        ram:0623 06              ??         06h
        ram:0624 3e              ??         3Eh    >
        ram:0625 01              ??         01h
        ram:0626 32              ??         32h    2
        ram:0627 9a              ??         9Ah
        ram:0628 81              ??         81h
        ram:0629 cd d5 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:062c c9              ??         C9h
        ram:062d cd              ??         CDh
        ram:062e 13              ??         13h
        ram:062f 00              ??         00h
        ram:0630 c8              ??         C8h
        ram:0631 fd              ??         FDh
        ram:0632 cb              ??         CBh
        ram:0633 08              ??         08h
        ram:0634 8e              ??         8Eh
        ram:0635 cd db 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0638 c3              ??         C3h
        ram:0639 1b              ??         1Bh
        ram:063a 00              ??         00h
        ram:063b 21              ??         21h    !
        ram:063c 3b              ??         3Bh    ;
        ram:063d 06              ??         06h
        ram:063e cd              ??         CDh
        ram:063f b5              ??         B5h
        ram:0640 0a              ??         0Ah
        ram:0641 21              ??         21h    !
        ram:0642 c9              ??         C9h
        ram:0643 08              ??         08h
        ram:0644 cd              ??         CDh
        ram:0645 a4              ??         A4h
        ram:0646 04              ??         04h
        ram:0647 c3              ??         C3h
        ram:0648 fa              ??         FAh
        ram:0649 01              ??         01h
        ram:064a e5              ??         E5h
        ram:064b 21              ??         21h    !
        ram:064c 64              ??         64h    d
        ram:064d 00              ??         00h
        ram:064e 18              ??         18h
        ram:064f 04              ??         04h
        ram:0650 e5              ??         E5h
        ram:0651 21              ??         21h    !
        ram:0652 32              ??         32h    2
        ram:0653 00              ??         00h
        ram:0654 cd              ??         CDh
        ram:0655 e1              ??         E1h
        ram:0656 3e              ??         3Eh    >
        ram:0657 e1              ??         E1h
        ram:0658 cd              ??         CDh
        ram:0659 e7              ??         E7h
        ram:065a 3e              ??         3Eh    >
        ram:065b 11              ??         11h
        ram:065c 8d              ??         8Dh
        ram:065d 81              ??         81h
        ram:065e 01              ??         01h
        ram:065f 0c              ??         0Ch
        ram:0660 00              ??         00h
        ram:0661 ed              ??         EDh
        ram:0662 b0              ??         B0h
        ram:0663 7e              ??         7Eh    ~
        ram:0664 32              ??         32h    2
        ram:0665 53              ??         53h    S
        ram:0666 83              ??         83h
        ram:0667 db              ??         DBh
        ram:0668 05              ??         05h
        ram:0669 12              ??         12h
        ram:066a c9              ??         C9h
        ram:066b 00              ??         00h
        ram:066c ff              ??         FFh
        ram:066d 00              ??         00h
        ram:066e ff              ??         FFh
        ram:066f 00              ??         00h
        ram:0670 ff              ??         FFh
        ram:0671 00              ??         00h
        ram:0672 ff              ??         FFh
        ram:0673 3a              ??         3Ah    :
        ram:0674 ff              ??         FFh
        ram:0675 d6              ??         D6h
        ram:0676 ff              ??         FFh
        ram:0677 f5              ??         F5h
        ram:0678 09              ??         09h
        ram:0679 00              ??         00h
        ram:067a ff              ??         FFh
        ram:067b 00              ??         00h
        ram:067c ff              ??         FFh
        ram:067d 00              ??         00h
        ram:067e ff              ??         FFh
        ram:067f f1              ??         F1h
        ram:0680 09              ??         09h
        ram:0681 2b              ??         2Bh    +
        ram:0682 ff              ??         FFh
        ram:0683 2d              ??         2Dh    -
        ram:0684 ff              ??         FFh
        ram:0685 2a              ??         2Ah    *
        ram:0686 ff              ??         FFh
        ram:0687 2f              ??         2Fh    /
        ram:0688 ff              ??         FFh
        ram:0689 5e              ??         5Eh    ^
        ram:068a ff              ??         FFh
        ram:068b 28              ??         28h    (
        ram:068c ff              ??         FFh
        ram:068d 29              ??         29h    )
        ram:068e ff              ??         FFh
        ram:068f 5b              ??         5Bh    [
        ram:0690 ff              ??         FFh
        ram:0691 5d              ??         5Dh    ]
        ram:0692 ff              ??         FFh
        ram:0693 3d              ??         3Dh    =
        ram:0694 ff              ??         FFh
        ram:0695 1c              ??         1Ch
        ram:0696 ff              ??         FFh
        ram:0697 00              ??         00h
        ram:0698 ff              ??         FFh
        ram:0699 2c              ??         2Ch    ,
        ram:069a ff              ??         FFh
        ram:069b 13              ??         13h
        ram:069c ff              ??         FFh
        ram:069d 1a              ??         1Ah
        ram:069e ff              ??         FFh
        ram:069f 2e              ??         2Eh    .
        ram:06a0 ff              ??         FFh
        ram:06a1 30              ??         30h    0
        ram:06a2 ff              ??         FFh
        ram:06a3 31              ??         31h    1
        ram:06a4 ff              ??         FFh
        ram:06a5 32              ??         32h    2
        ram:06a6 ff              ??         FFh
        ram:06a7 33              ??         33h    3
        ram:06a8 ff              ??         FFh
        ram:06a9 34              ??         34h    4
        ram:06aa ff              ??         FFh
        ram:06ab 35              ??         35h    5
        ram:06ac ff              ??         FFh
        ram:06ad 36              ??         36h    6
        ram:06ae ff              ??         FFh
        ram:06af 37              ??         37h    7
        ram:06b0 ff              ??         FFh
        ram:06b1 38              ??         38h    8
        ram:06b2 ff              ??         FFh
        ram:06b3 39              ??         39h    9
        ram:06b4 ff              ??         FFh
        ram:06b5 1b              ??         1Bh
        ram:06b6 ff              ??         FFh
        ram:06b7 20              ??         20h
        ram:06b8 ff              ??         FFh
        ram:06b9 41              ??         41h    A
        ram:06ba ff              ??         FFh
        ram:06bb 42              ??         42h    B
        ram:06bc ff              ??         FFh
        ram:06bd 43              ??         43h    C
        ram:06be ff              ??         FFh
        ram:06bf 44              ??         44h    D
        ram:06c0 ff              ??         FFh
        ram:06c1 45              ??         45h    E
        ram:06c2 ff              ??         FFh
        ram:06c3 46              ??         46h    F
        ram:06c4 ff              ??         FFh
        ram:06c5 47              ??         47h    G
        ram:06c6 ff              ??         FFh
        ram:06c7 48              ??         48h    H
        ram:06c8 ff              ??         FFh
        ram:06c9 49              ??         49h    I
        ram:06ca ff              ??         FFh
        ram:06cb 4a              ??         4Ah    J
        ram:06cc ff              ??         FFh
        ram:06cd 4b              ??         4Bh    K
        ram:06ce ff              ??         FFh
        ram:06cf 4c              ??         4Ch    L
        ram:06d0 ff              ??         FFh
        ram:06d1 4d              ??         4Dh    M
        ram:06d2 ff              ??         FFh
        ram:06d3 4e              ??         4Eh    N
        ram:06d4 ff              ??         FFh
        ram:06d5 4f              ??         4Fh    O
        ram:06d6 ff              ??         FFh
        ram:06d7 50              ??         50h    P
        ram:06d8 ff              ??         FFh
        ram:06d9 51              ??         51h    Q
        ram:06da ff              ??         FFh
        ram:06db 52              ??         52h    R
        ram:06dc ff              ??         FFh
        ram:06dd 53              ??         53h    S
        ram:06de ff              ??         FFh
        ram:06df 54              ??         54h    T
        ram:06e0 ff              ??         FFh
        ram:06e1 55              ??         55h    U
        ram:06e2 ff              ??         FFh
        ram:06e3 56              ??         56h    V
        ram:06e4 ff              ??         FFh
        ram:06e5 57              ??         57h    W
        ram:06e6 ff              ??         FFh
        ram:06e7 58              ??         58h    X
        ram:06e8 ff              ??         FFh
        ram:06e9 59              ??         59h    Y
        ram:06ea ff              ??         FFh
        ram:06eb 5a              ??         5Ah    Z
        ram:06ec ff              ??         FFh
        ram:06ed 61              ??         61h    a
        ram:06ee ff              ??         FFh
        ram:06ef 62              ??         62h    b
        ram:06f0 ff              ??         FFh
        ram:06f1 63              ??         63h    c
        ram:06f2 ff              ??         FFh
        ram:06f3 64              ??         64h    d
        ram:06f4 ff              ??         FFh
        ram:06f5 65              ??         65h    e
        ram:06f6 ff              ??         FFh
        ram:06f7 66              ??         66h    f
        ram:06f8 ff              ??         FFh
        ram:06f9 67              ??         67h    g
        ram:06fa ff              ??         FFh
        ram:06fb 68              ??         68h    h
        ram:06fc ff              ??         FFh
        ram:06fd 69              ??         69h    i
        ram:06fe ff              ??         FFh
        ram:06ff 6a              ??         6Ah    j
        ram:0700 ff              ??         FFh
        ram:0701 6b              ??         6Bh    k
        ram:0702 ff              ??         FFh
        ram:0703 6c              ??         6Ch    l
        ram:0704 ff              ??         FFh
        ram:0705 6d              ??         6Dh    m
        ram:0706 ff              ??         FFh
        ram:0707 6e              ??         6Eh    n
        ram:0708 ff              ??         FFh
        ram:0709 6f              ??         6Fh    o
        ram:070a ff              ??         FFh
        ram:070b 70              ??         70h    p
        ram:070c ff              ??         FFh
        ram:070d 71              ??         71h    q
        ram:070e ff              ??         FFh
        ram:070f 72              ??         72h    r
        ram:0710 ff              ??         FFh
        ram:0711 73              ??         73h    s
        ram:0712 ff              ??         FFh
        ram:0713 74              ??         74h    t
        ram:0714 ff              ??         FFh
        ram:0715 75              ??         75h    u
        ram:0716 ff              ??         FFh
        ram:0717 76              ??         76h    v
        ram:0718 ff              ??         FFh
        ram:0719 77              ??         77h    w
        ram:071a ff              ??         FFh
        ram:071b 78              ??         78h    x
        ram:071c ff              ??         FFh
        ram:071d 79              ??         79h    y
        ram:071e ff              ??         FFh
        ram:071f 7a              ??         7Ah    z
        ram:0720 ff              ??         FFh
        ram:0721 c8              ??         C8h
        ram:0722 07              ??         07h
        ram:0723 7b              ??         7Bh    {
        ram:0724 07              ??         07h
        ram:0725 c4              ??         C4h
        ram:0726 ff              ??         FFh
        ram:0727 11              ??         11h
        ram:0728 ff              ??         FFh
        ram:0729 8e              ??         8Eh
        ram:072a 07              ??         07h
        ram:072b 93              ??         93h
        ram:072c 07              ??         07h
        ram:072d a1              ??         A1h
        ram:072e 07              ??         07h
        ram:072f a6              ??         A6h
        ram:0730 07              ??         07h
        ram:0731 ac              ??         ACh
        ram:0732 07              ??         07h
        ram:0733 b1              ??         B1h
        ram:0734 07              ??         07h
        ram:0735 12              ??         12h
        ram:0736 ff              ??         FFh
        ram:0737 10              ??         10h
        ram:0738 ff              ??         FFh
        ram:0739 b7              ??         B7h
        ram:073a 07              ??         07h
        ram:073b bb              ??         BBh
        ram:073c 07              ??         07h
        ram:073d bf              ??         BFh
        ram:073e 07              ??         07h
        ram:073f c4              ??         C4h
        ram:0740 07              ??         07h
        ram:0741 cc              ??         CCh
        ram:0742 09              ??         09h
        ram:0743 c8              ??         C8h
        ram:0744 09              ??         09h
        ram:0745 d6              ??         D6h
        ram:0746 09              ??         09h
        ram:0747 e0              ??         E0h
        ram:0748 09              ??         09h
        ram:0749 e2              ??         E2h
        ram:074a 09              ??         09h
        ram:074b e6              ??         E6h
        ram:074c 09              ??         09h
        ram:074d de              ??         DEh
        ram:074e 09              ??         09h
        ram:074f e8              ??         E8h
        ram:0750 09              ??         09h
        ram:0751 c3              ??         C3h
        ram:0752 08              ??         08h
        ram:0753 af              ??         AFh
        ram:0754 08              ??         08h
        ram:0755 ff              ??         FFh
        ram:0756 09              ??         09h
        ram:0757 00              ??         00h
        ram:0758 ff              ??         FFh
        ram:0759 98              ??         98h
        ram:075a 09              ??         09h
        ram:075b ec              ??         ECh
        ram:075c 09              ??         09h
        ram:075d da              ??         DAh
        ram:075e 09              ??         09h
        ram:075f c4              ??         C4h
        ram:0760 09              ??         09h
        ram:0761 d2              ??         D2h
        ram:0762 09              ??         09h
        ram:0763 be              ??         BEh
        ram:0764 09              ??         09h
        ram:0765 d3              ??         D3h
        ram:0766 07              ??         07h
        ram:0767 db              ??         DBh
        ram:0768 07              ??         07h
        ram:0769 b2              ??         B2h
        ram:076a 09              ??         09h
        ram:076b fb              ??         FBh
        ram:076c 09              ??         09h
        ram:076d b7              ??         B7h
        ram:076e 08              ??         08h
        ram:076f b8              ??         B8h
        ram:0770 09              ??         09h
        ram:0771 ae              ??         AEh
        ram:0772 09              ??         09h
        ram:0773 e3              ??         E3h
        ram:0774 07              ??         07h
        ram:0775 59              ??         59h    Y
        ram:0776 09              ??         09h
        ram:0777 00              ??         00h
        ram:0778 ff              ??         FFh
        ram:0779 00              ??         00h
        ram:077a ff              ??         FFh
        ram:077b 10              ??         10h
        ram:077c 41              ??         41h    A
        ram:077d 6e              ??         6Eh    n
        ram:077e 73              ??         73h    s
        ram:077f 00              ??         00h
        ram:0780 30              ??         30h    0
        ram:0781 70              ??         70h    p
        ram:0782 6f              ??         6Fh    o
        ram:0783 6c              ??         6Ch    l
        ram:0784 79              ??         79h    y
        ram:0785 00              ??         00h
        ram:0786 70 73 69        ds         "psimult"
                 6d 75 6c
                 74 00
        ram:078e 30              ??         30h    0
        ram:078f 73              ??         73h    s
        ram:0790 69              ??         69h    i
        ram:0791 6e              ??         6Eh    n
        ram:0792 00              ??         00h
        ram:0793 30              ??         30h    0
        ram:0794 73              ??         73h    s
        ram:0795 69              ??         69h    i
        ram:0796 6e              ??         6Eh    n
        ram:0797 11              ??         11h
        ram:0798 00              ??         00h
        ram:0799 60 53 6f        ds         "`Solver"
                 6c 76 65
                 72 00
        ram:07a1 30              ??         30h    0
        ram:07a2 63              ??         63h    c
        ram:07a3 6f              ??         6Fh    o
        ram:07a4 73              ??         73h    s
        ram:07a5 00              ??         00h
        ram:07a6 30              ??         30h    0
        ram:07a7 63              ??         63h    c
        ram:07a8 6f              ??         6Fh    o
        ram:07a9 73              ??         73h    s
        ram:07aa 11              ??         11h
        ram:07ab 00              ??         00h
        ram:07ac 30              ??         30h    0
        ram:07ad 74              ??         74h    t
        ram:07ae 61              ??         61h    a
        ram:07af 6e              ??         6Eh    n
        ram:07b0 00              ??         00h
        ram:07b1 30              ??         30h    0
        ram:07b2 74              ??         74h    t
        ram:07b3 61              ??         61h    a
        ram:07b4 6e              ??         6Eh    n
        ram:07b5 11              ??         11h
        ram:07b6 00              ??         00h
        ram:07b7 30              ??         30h    0
        ram:07b8 6c              ??         6Ch    l
        ram:07b9 6e              ??         6Eh    n
        ram:07ba 00              ??         00h
        ram:07bb 10              ??         10h
        ram:07bc 65              ??         65h    e
        ram:07bd 5e              ??         5Eh    ^
        ram:07be 00              ??         00h
        ram:07bf 30              ??         30h    0
        ram:07c0 6c              ??         6Ch    l
        ram:07c1 6f              ??         6Fh    o
        ram:07c2 67              ??         67h    g
        ram:07c3 00              ??         00h
        ram:07c4 00              ??         00h
        ram:07c5 1d              ??         1Dh
        ram:07c6 5e              ??         5Eh    ^
        ram:07c7 00              ??         00h
        ram:07c8 10              ??         10h
        ram:07c9 78              ??         78h    x
        ram:07ca 00              ??         00h
        ram:07cb 41              ??         41h    A
        ram:07cc 00              ??         00h
        ram:07cd 01              ??         01h
        ram:07ce c3              ??         C3h
        ram:07cf ed              ??         EDh
        ram:07d0 3e              ??         3Eh    >
        ram:07d1 80              ??         80h
        ram:07d2 07              ??         07h
        ram:07d3 c1              ??         C1h
        ram:07d4 00              ??         00h
        ram:07d5 02              ??         02h
        ram:07d6 c3              ??         C3h
        ram:07d7 f3              ??         F3h
        ram:07d8 3e              ??         3Eh    >
        ram:07d9 86              ??         86h
        ram:07da 07              ??         07h
        ram:07db c1              ??         C1h
        ram:07dc 00              ??         00h
        ram:07dd 03              ??         03h
        ram:07de c3              ??         C3h
        ram:07df f9              ??         F9h
        ram:07e0 3e              ??         3Eh    >
        ram:07e1 99              ??         99h
        ram:07e2 07              ??         07h
        ram:07e3 c1              ??         C1h
        ram:07e4 00              ??         00h
        ram:07e5 04              ??         04h
        ram:07e6 c3              ??         C3h
        ram:07e7 ff              ??         FFh
        ram:07e8 3e              ??         3Eh    >
        ram:07e9 45              ??         45h    E
        ram:07ea 44              ??         44h    D
        ram:07eb 49              ??         49h    I
        ram:07ec 54              ??         54h    T
        ram:07ed 00              ??         00h
        ram:07ee 41              ??         41h    A
        ram:07ef 80              ??         80h
        ram:07f0 21              ??         21h    !
        ram:07f1 c3              ??         C3h
        ram:07f2 05              ??         05h
        ram:07f3 3f 44 45        ds         "?DELET"
                 4c 45 54 00
        ram:07fa 41              ??         41h    A
        ram:07fb 01              ??         01h
        ram:07fc 04              ??         04h
        ram:07fd c3              ??         C3h
        ram:07fe ff              ??         FFh
        ram:07ff 3e              ??         3Eh    >
        ram:0800 53              ??         53h    S
        ram:0801 4f              ??         4Fh    O
        ram:0802 4c              ??         4Ch    L
        ram:0803 56              ??         56h    V
        ram:0804 45              ??         45h    E
        ram:0805 00              ??         00h
        ram:0806 41              ??         41h    A
        ram:0807 00              ??         00h
        ram:0808 05              ??         05h
        ram:0809 c3              ??         C3h
        ram:080a 0b              ??         0Bh
        ram:080b 3f              ??         3Fh    ?
        ram:080c 45              ??         45h    E
        ram:080d 44              ??         44h    D
        ram:080e 49              ??         49h    I
        ram:080f 54              ??         54h    T
        ram:0810 00              ??         00h
        ram:0811 41              ??         41h    A
        ram:0812 00              ??         00h
        ram:0813 06              ??         06h
        ram:0814 c3              ??         C3h
        ram:0815 11              ??         11h
        ram:0816 3f              ??         3Fh    ?
        ram:0817 45              ??         45h    E
        ram:0818 44              ??         44h    D
        ram:0819 49              ??         49h    I
        ram:081a 54              ??         54h    T
        ram:081b 00              ??         00h
        ram:081c 41              ??         41h    A
        ram:081d 00              ??         00h
        ram:081e 07              ??         07h
        ram:081f c3              ??         C3h
        ram:0820 17              ??         17h
        ram:0821 3f              ??         3Fh    ?
        ram:0822 45              ??         45h    E
        ram:0823 44              ??         44h    D
        ram:0824 49              ??         49h    I
        ram:0825 54              ??         54h    T
        ram:0826 00              ??         00h
        ram:0827 41              ??         41h    A
        ram:0828 00              ??         00h
        ram:0829 08              ??         08h
        ram:082a c3              ??         C3h
        ram:082b 1d              ??         1Dh
        ram:082c 3f              ??         3Fh    ?
        ram:082d 45              ??         45h    E
        ram:082e 44              ??         44h    D
        ram:082f 49              ??         49h    I
        ram:0830 54              ??         54h    T
        ram:0831 00              ??         00h
        ram:0832 41              ??         41h    A
        ram:0833 00              ??         00h
        ram:0834 4c              ??         4Ch    L
        ram:0835 c3              ??         C3h
        ram:0836 23              ??         23h    #
        ram:0837 3f              ??         3Fh    ?
        ram:0838 41              ??         41h    A
        ram:0839 00              ??         00h
        ram:083a 4d              ??         4Dh    M
        ram:083b c3              ??         C3h
        ram:083c 29              ??         29h    )
        ram:083d 3f              ??         3Fh    ?
        ram:083e 44              ??         44h    D
        ram:083f 52              ??         52h    R
        ram:0840 41              ??         41h    A
        ram:0841 57              ??         57h    W
        ram:0842 00              ??         00h
        ram:0843 41              ??         41h    A
        ram:0844 00              ??         00h
        ram:0845 49              ??         49h    I
        ram:0846 c3              ??         C3h
        ram:0847 2f              ??         2Fh    /
        ram:0848 3f              ??         3Fh    ?
        ram:0849 79              ??         79h    y
        ram:084a 28              ??         28h    (
        ram:084b 78              ??         78h    x
        ram:084c 29              ??         29h    )
        ram:084d 3d              ??         3Dh    =
        ram:084e 00              ??         00h
        ram:084f 41              ??         41h    A
        ram:0850 01              ??         01h
        ram:0851 49              ??         49h    I
        ram:0852 c3              ??         C3h
        ram:0853 2f              ??         2Fh    /
        ram:0854 3f              ??         3Fh    ?
        ram:0855 45              ??         45h    E
        ram:0856 28              ??         28h    (
        ram:0857 74              ??         74h    t
        ram:0858 29              ??         29h    )
        ram:0859 3d              ??         3Dh    =
        ram:085a 00              ??         00h
        ram:085b 41              ??         41h    A
        ram:085c 02              ??         02h
        ram:085d 49              ??         49h    I
        ram:085e c3              ??         C3h
        ram:085f 2f              ??         2Fh    /
        ram:0860 3f              ??         3Fh    ?
        ram:0861 72              ??         72h    r
        ram:0862 28              ??         28h    (
        ram:0863 c1              ??         C1h
        ram:0864 29              ??         29h    )
        ram:0865 3d              ??         3Dh    =
        ram:0866 00              ??         00h
        ram:0867 41              ??         41h    A
        ram:0868 03              ??         03h
        ram:0869 49              ??         49h    I
        ram:086a c3              ??         C3h
        ram:086b 2f              ??         2Fh    /
        ram:086c 3f              ??         3Fh    ?
        ram:086d 51              ??         51h    Q
        ram:086e 27              ??         27h    '
        ram:086f 28              ??         28h    (
        ram:0870 74              ??         74h    t
        ram:0871 29              ??         29h    )
        ram:0872 3d              ??         3Dh    =
        ram:0873 00              ??         00h
        ram:0874 41              ??         41h    A
        ram:0875 00              ??         00h
        ram:0876 4a              ??         4Ah    J
        ram:0877 c3              ??         C3h
        ram:0878 35              ??         35h    5
        ram:0879 3f              ??         3Fh    ?
        ram:087a 52              ??         52h    R
        ram:087b 41              ??         41h    A
        ram:087c 4e              ??         4Eh    N
        ram:087d 47              ??         47h    G
        ram:087e 45              ??         45h    E
        ram:087f 00              ??         00h
        ram:0880 41              ??         41h    A
        ram:0881 00              ??         00h
        ram:0882 60              ??         60h    `
        ram:0883 c3              ??         C3h
        ram:0884 3b              ??         3Bh    ;
        ram:0885 3f              ??         3Fh    ?
        ram:0886 46              ??         46h    F
        ram:0887 4f              ??         4Fh    O
        ram:0888 52              ??         52h    R
        ram:0889 4d              ??         4Dh    M
        ram:088a 54              ??         54h    T
        ram:088b 00              ??         00h
        ram:088c 41              ??         41h    A
        ram:088d 00              ??         00h
        ram:088e e0              ??         E0h
        ram:088f c3              ??         C3h
        ram:0890 3b              ??         3Bh    ;
        ram:0891 3f              ??         3Fh    ?
        ram:0892 46              ??         46h    F
        ram:0893 4f              ??         4Fh    O
        ram:0894 52              ??         52h    R
        ram:0895 4d              ??         4Dh    M
        ram:0896 54              ??         54h    T
        ram:0897 00              ??         00h
        ram:0898 41              ??         41h    A
        ram:0899 00              ??         00h
        ram:089a 4b              ??         4Bh    K
        ram:089b c3              ??         C3h
        ram:089c 41              ??         41h    A
        ram:089d 3f              ??         3Fh    ?
        ram:089e 5a              ??         5Ah    Z
        ram:089f 46              ??         46h    F
        ram:08a0 41              ??         41h    A
        ram:08a1 43              ??         43h    C
        ram:08a2 54              ??         54h    T
        ram:08a3 00              ??         00h
        ram:08a4 41              ??         41h    A
        ram:08a5 00              ??         00h
        ram:08a6 0e              ??         0Eh
        ram:08a7 c3              ??         C3h
        ram:08a8 47              ??         47h    G
        ram:08a9 3f              ??         3Fh    ?
        ram:08aa 45              ??         45h    E
        ram:08ab 44              ??         44h    D
        ram:08ac 49              ??         49h    I
        ram:08ad 54              ??         54h    T
        ram:08ae 00              ??         00h
        ram:08af 01              ??         01h
        ram:08b0 00              ??         00h
        ram:08b1 97              ??         97h
        ram:08b2 c3              ??         C3h
        ram:08b3 4d              ??         4Dh    M
        ram:08b4 3f              ??         3Fh    ?
        ram:08b5 bd              ??         BDh
        ram:08b6 08              ??         08h
        ram:08b7 c1              ??         C1h
        ram:08b8 00              ??         00h
        ram:08b9 1f              ??         1Fh
        ram:08ba c3              ??         C3h
        ram:08bb 53              ??         53h    S
        ram:08bc 3f              ??         3Fh    ?
        ram:08bd 41              ??         41h    A
        ram:08be 00              ??         00h
        ram:08bf 9f              ??         9Fh
        ram:08c0 c3              ??         C3h
        ram:08c1 53              ??         53h    S
        ram:08c2 3f              ??         3Fh    ?
        ram:08c3 01              ??         01h
        ram:08c4 00              ??         00h
        ram:08c5 96              ??         96h
        ram:08c6 c3              ??         C3h
        ram:08c7 05              ??         05h
        ram:08c8 3f              ??         3Fh    ?
        ram:08c9 41              ??         41h    A
        ram:08ca 00              ??         00h
        ram:08cb 98              ??         98h
        ram:08cc c3              ??         C3h
        ram:08cd 59              ??         59h    Y
        ram:08ce 3f              ??         3Fh    ?
        ram:08cf 41              ??         41h    A
        ram:08d0 00              ??         00h
        ram:08d1 0f              ??         0Fh
        ram:08d2 c3              ??         C3h
        ram:08d3 5f 3f 49        ds         "_?INTER"
                 4e 54 45
                 52 00
        ram:08db 41              ??         41h    A
        ram:08dc 00              ??         00h
        ram:08dd 10              ??         10h
        ram:08de c3              ??         C3h
        ram:08df 65              ??         65h    e
        ram:08e0 3f              ??         3Fh    ?
        ram:08e1 45              ??         45h    E
        ram:08e2 44              ??         44h    D
        ram:08e3 49              ??         49h    I
        ram:08e4 54              ??         54h    T
        ram:08e5 00              ??         00h
        ram:08e6 41              ??         41h    A
        ram:08e7 00              ??         00h
        ram:08e8 1a              ??         1Ah
        ram:08e9 c3              ??         C3h
        ram:08ea 6b              ??         6Bh    k
        ram:08eb 3f              ??         3Fh    ?
        ram:08ec 43              ??         43h    C
        ram:08ed 41              ??         41h    A
        ram:08ee 4c              ??         4Ch    L
        ram:08ef 43              ??         43h    C
        ram:08f0 00              ??         00h
        ram:08f1 41              ??         41h    A
        ram:08f2 01              ??         01h
        ram:08f3 1a              ??         1Ah
        ram:08f4 c3              ??         C3h
        ram:08f5 71              ??         71h    q
        ram:08f6 3f              ??         3Fh    ?
        ram:08f7 31              ??         31h    1
        ram:08f8 2d              ??         2Dh    -
        ram:08f9 56              ??         56h    V
        ram:08fa 41              ??         41h    A
        ram:08fb 52              ??         52h    R
        ram:08fc 00              ??         00h
        ram:08fd 41              ??         41h    A
        ram:08fe 02              ??         02h
        ram:08ff 1a              ??         1Ah
        ram:0900 c3              ??         C3h
        ram:0901 71              ??         71h    q
        ram:0902 3f              ??         3Fh    ?
        ram:0903 4c              ??         4Ch    L
        ram:0904 49              ??         49h    I
        ram:0905 4e              ??         4Eh    N
        ram:0906 52              ??         52h    R
        ram:0907 00              ??         00h
        ram:0908 41              ??         41h    A
        ram:0909 04              ??         04h
        ram:090a 1a              ??         1Ah
        ram:090b c3              ??         C3h
        ram:090c 71              ??         71h    q
        ram:090d 3f              ??         3Fh    ?
        ram:090e 4c              ??         4Ch    L
        ram:090f 4e              ??         4Eh    N
        ram:0910 52              ??         52h    R
        ram:0911 00              ??         00h
        ram:0912 41              ??         41h    A
        ram:0913 03              ??         03h
        ram:0914 1a              ??         1Ah
        ram:0915 c3              ??         C3h
        ram:0916 71              ??         71h    q
        ram:0917 3f              ??         3Fh    ?
        ram:0918 45              ??         45h    E
        ram:0919 58              ??         58h    X
        ram:091a 50              ??         50h    P
        ram:091b 52              ??         52h    R
        ram:091c 00              ??         00h
        ram:091d 41              ??         41h    A
        ram:091e 05              ??         05h
        ram:091f 1a              ??         1Ah
        ram:0920 c3              ??         C3h
        ram:0921 71              ??         71h    q
        ram:0922 3f              ??         3Fh    ?
        ram:0923 50              ??         50h    P
        ram:0924 57              ??         57h    W
        ram:0925 52              ??         52h    R
        ram:0926 52              ??         52h    R
        ram:0927 00              ??         00h
        ram:0928 41              ??         41h    A
        ram:0929 06              ??         06h
        ram:092a 1a              ??         1Ah
        ram:092b c3              ??         C3h
        ram:092c 71              ??         71h    q
        ram:092d 3f              ??         3Fh    ?
        ram:092e 50              ??         50h    P
        ram:092f 32              ??         32h    2
        ram:0930 52              ??         52h    R
        ram:0931 45              ??         45h    E
        ram:0932 47              ??         47h    G
        ram:0933 00              ??         00h
        ram:0934 41              ??         41h    A
        ram:0935 07              ??         07h
        ram:0936 1a              ??         1Ah
        ram:0937 c3              ??         C3h
        ram:0938 71              ??         71h    q
        ram:0939 3f              ??         3Fh    ?
        ram:093a 50              ??         50h    P
        ram:093b 33              ??         33h    3
        ram:093c 52              ??         52h    R
        ram:093d 45              ??         45h    E
        ram:093e 47              ??         47h    G
        ram:093f 00              ??         00h
        ram:0940 41              ??         41h    A
        ram:0941 08              ??         08h
        ram:0942 1a              ??         1Ah
        ram:0943 c3              ??         C3h
        ram:0944 71              ??         71h    q
        ram:0945 3f              ??         3Fh    ?
        ram:0946 50              ??         50h    P
        ram:0947 34              ??         34h    4
        ram:0948 52              ??         52h    R
        ram:0949 45              ??         45h    E
        ram:094a 47              ??         47h    G
        ram:094b 00              ??         00h
        ram:094c 41              ??         41h    A
        ram:094d 00              ??         00h
        ram:094e 11              ??         11h
        ram:094f c3              ??         C3h
        ram:0950 77              ??         77h    w
        ram:0951 3f              ??         3Fh    ?
        ram:0952 46              ??         46h    F
        ram:0953 43              ??         43h    C
        ram:0954 53              ??         53h    S
        ram:0955 54              ??         54h    T
        ram:0956 00              ??         00h
        ram:0957 ee              ??         EEh
        ram:0958 09              ??         09h
        ram:0959 c1              ??         C1h
        ram:095a 00              ??         00h
        ram:095b 12              ??         12h
        ram:095c c3              ??         C3h
        ram:095d 7d              ??         7Dh    }
        ram:095e 3f              ??         3Fh    ?
        ram:095f 41              ??         41h    A
        ram:0960 00              ??         00h
        ram:0961 53              ??         53h    S
        ram:0962 c3              ??         C3h
        ram:0963 83              ??         83h
        ram:0964 3f              ??         3Fh    ?
        ram:0965 49              ??         49h    I
        ram:0966 4e              ??         4Eh    N
        ram:0967 49              ??         49h    I
        ram:0968 54              ??         54h    T
        ram:0969 43              ??         43h    C
        ram:096a 00              ??         00h
        ram:096b 41              ??         41h    A
        ram:096c 00              ??         00h
        ram:096d 54              ??         54h    T
        ram:096e c3              ??         C3h
        ram:096f 89              ??         89h
        ram:0970 3f              ??         3Fh    ?
        ram:0971 41              ??         41h    A
        ram:0972 58              ??         58h    X
        ram:0973 45              ??         45h    E
        ram:0974 53              ??         53h    S
        ram:0975 00              ??         00h
        ram:0976 41              ??         41h    A
        ram:0977 00              ??         00h
        ram:0978 1b              ??         1Bh
        ram:0979 c3              ??         C3h
        ram:097a 8f              ??         8Fh
        ram:097b 3f              ??         3Fh    ?
        ram:097c 4d              ??         4Dh    M
        ram:097d 45              ??         45h    E
        ram:097e 4d              ??         4Dh    M
        ram:097f 00              ??         00h
        ram:0980 41              ??         41h    A
        ram:0981 00              ??         00h
        ram:0982 1c              ??         1Ch
        ram:0983 c3              ??         C3h
        ram:0984 95              ??         95h
        ram:0985 3f              ??         3Fh    ?
        ram:0986 44              ??         44h    D
        ram:0987 46              ??         46h    F
        ram:0988 4c              ??         4Ch    L
        ram:0989 54              ??         54h    T
        ram:098a 53              ??         53h    S
        ram:098b 00              ??         00h
        ram:098c 41              ??         41h    A
        ram:098d 00              ??         00h
        ram:098e 1d              ??         1Dh
        ram:098f c3              ??         C3h
        ram:0990 9b              ??         9Bh
        ram:0991 3f              ??         3Fh    ?
        ram:0992 41              ??         41h    A
        ram:0993 4c              ??         4Ch    L
        ram:0994 4c              ??         4Ch    L
        ram:0995 00              ??         00h
        ram:0996 00              ??         00h
        ram:0997 00              ??         00h
        ram:0998 c1              ??         C1h
        ram:0999 00              ??         00h
        ram:099a 19              ??         19h
        ram:099b c3              ??         C3h
        ram:099c a1              ??         A1h
        ram:099d 3f              ??         3Fh    ?
        ram:099e 41              ??         41h    A
        ram:099f 00              ??         00h
        ram:09a0 15              ??         15h
        ram:09a1 c3              ??         C3h
        ram:09a2 a7              ??         A7h
        ram:09a3 3f              ??         3Fh    ?
        ram:09a4 41              ??         41h    A
        ram:09a5 00              ??         00h
        ram:09a6 1e              ??         1Eh
        ram:09a7 c3              ??         C3h
        ram:09a8 ad              ??         ADh
        ram:09a9 3f              ??         3Fh    ?
        ram:09aa 52              ??         52h    R
        ram:09ab 41              ??         41h    A
        ram:09ac 4d              ??         4Dh    M
        ram:09ad 00              ??         00h
        ram:09ae 02              ??         02h
        ram:09af 0b              ??         0Bh
        ram:09b0 b4              ??         B4h
        ram:09b1 09              ??         09h
        ram:09b2 82              ??         82h
        ram:09b3 34              ??         34h    4
        ram:09b4 02              ??         02h
        ram:09b5 3b              ??         3Bh    ;
        ram:09b6 ba              ??         BAh
        ram:09b7 09              ??         09h
        ram:09b8 82              ??         82h
        ram:09b9 28              ??         28h    (
        ram:09ba 02              ??         02h
        ram:09bb 2a              ??         2Ah    *
        ram:09bc c0              ??         C0h
        ram:09bd 09              ??         09h
        ram:09be 82              ??         82h
        ram:09bf 21              ??         21h    !
        ram:09c0 02              ??         02h
        ram:09c1 27              ??         27h    '
        ram:09c2 c6              ??         C6h
        ram:09c3 09              ??         09h
        ram:09c4 82              ??         82h
        ram:09c5 1c              ??         1Ch
        ram:09c6 02              ??         02h
        ram:09c7 20              ??         20h
        ram:09c8 02              ??         02h
        ram:09c9 16              ??         16h
        ram:09ca ce              ??         CEh
        ram:09cb 09              ??         09h
        ram:09cc 82              ??         82h
        ram:09cd 04              ??         04h
        ram:09ce 02              ??         02h
        ram:09cf 0a              ??         0Ah
        ram:09d0 d4              ??         D4h
        ram:09d1 09              ??         09h
        ram:09d2 82              ??         82h
        ram:09d3 18              ??         18h
        ram:09d4 02              ??         02h
        ram:09d5 1b              ??         1Bh
        ram:09d6 02              ??         02h
        ram:09d7 17              ??         17h
        ram:09d8 dc              ??         DCh
        ram:09d9 09              ??         09h
        ram:09da 82              ??         82h
        ram:09db 12              ??         12h
        ram:09dc 02              ??         02h
        ram:09dd 14              ??         14h
        ram:09de 42              ??         42h    B
        ram:09df 0c              ??         0Ch
        ram:09e0 02              ??         02h
        ram:09e1 15              ??         15h
        ram:09e2 02              ??         02h
        ram:09e3 6e              ??         6Eh    n
        ram:09e4 02              ??         02h
        ram:09e5 2e              ??         2Eh    .
        ram:09e6 42              ??         42h    B
        ram:09e7 00              ??         00h
        ram:09e8 02              ??         02h
        ram:09e9 7b              ??         7Bh    {
        ram:09ea 00              ??         00h
        ram:09eb 00              ??         00h
        ram:09ec 82              ??         82h
        ram:09ed 6b              ??         6Bh    k
        ram:09ee 02              ??         02h
        ram:09ef 7c              ??         7Ch    |
        ram:09f0 00              ??         00h
        ram:09f1 04              ??         04h
        ram:09f2 c3              ??         C3h
        ram:09f3 b3              ??         B3h
        ram:09f4 3f              ??         3Fh    ?
        ram:09f5 04              ??         04h
        ram:09f6 c3              ??         C3h
        ram:09f7 b5              ??         B5h
        ram:09f8 05              ??         05h
        ram:09f9 e4              ??         E4h
        ram:09fa 09              ??         09h
        ram:09fb 84              ??         84h
        ram:09fc c3              ??         C3h
        ram:09fd b9              ??         B9h
        ram:09fe 3f              ??         3Fh    ?
        ram:09ff 04              ??         04h
        ram:0a00 c3              ??         C3h
        ram:0a01 62              ??         62h    b
        ram:0a02 04              ??         04h
        ram:0a03 51              ??         51h    Q
        ram:0a04 55              ??         55h    U
        ram:0a05 49              ??         49h    I
        ram:0a06 54              ??         54h    T
        ram:0a07 00              ??         00h
                             LAB_ram_0a08                                    XREF[2]:     FUN_ram_0ff6:1008(j),
                                                                                          ram:2598(j)
        ram:0a08 3e 81           LD         A,0x81
        ram:0a0a 18 7b           JR         LAB_ram_0a87
        ram:0a0c 3e              ??         3Eh    >
        ram:0a0d 82              ??         82h
        ram:0a0e 18              ??         18h
        ram:0a0f 77              ??         77h    w
        ram:0a10 3e              ??         3Eh    >
        ram:0a11 83              ??         83h
        ram:0a12 18              ??         18h
        ram:0a13 73              ??         73h    s
        ram:0a14 3e              ??         3Eh    >
        ram:0a15 84              ??         84h
        ram:0a16 18              ??         18h
        ram:0a17 6f              ??         6Fh    o
        ram:0a18 3e              ??         3Eh    >
        ram:0a19 85              ??         85h
        ram:0a1a 18              ??         18h
        ram:0a1b 6b              ??         6Bh    k
        ram:0a1c 3e              ??         3Eh    >
        ram:0a1d 87              ??         87h
        ram:0a1e 18              ??         18h
        ram:0a1f 67              ??         67h    g
        ram:0a20 3e              ??         3Eh    >
        ram:0a21 88              ??         88h
        ram:0a22 18              ??         18h
        ram:0a23 63              ??         63h    c
        ram:0a24 3e              ??         3Eh    >
        ram:0a25 89              ??         89h
        ram:0a26 18              ??         18h
        ram:0a27 5f              ??         5Fh    _
        ram:0a28 3e              ??         3Eh    >
        ram:0a29 8a              ??         8Ah
        ram:0a2a 18              ??         18h
        ram:0a2b 5b              ??         5Bh    [
        ram:0a2c 3e              ??         3Eh    >
        ram:0a2d 8b              ??         8Bh
        ram:0a2e 18              ??         18h
        ram:0a2f 57              ??         57h    W
        ram:0a30 3e              ??         3Eh    >
        ram:0a31 8c              ??         8Ch
        ram:0a32 18              ??         18h
        ram:0a33 53              ??         53h    S
        ram:0a34 3e              ??         3Eh    >
        ram:0a35 8d              ??         8Dh
        ram:0a36 18              ??         18h
        ram:0a37 4f              ??         4Fh    O
        ram:0a38 3e              ??         3Eh    >
        ram:0a39 8e              ??         8Eh
        ram:0a3a 18              ??         18h
        ram:0a3b 4b              ??         4Bh    K
                             LAB_ram_0a3c                                    XREF[2]:     ram:2d5c(j),
                                                                                          FUN_ram_2fb8:2fbc(j)
        ram:0a3c 3e 8f           LD         A,0x8f
        ram:0a3e 18 47           JR         LAB_ram_0a87
        ram:0a40 fd              ??         FDh
        ram:0a41 cb              ??         CBh
        ram:0a42 13              ??         13h
        ram:0a43 56              ??         56h    V
        ram:0a44 c8              ??         C8h
        ram:0a45 3e              ??         3Eh    >
        ram:0a46 0f              ??         0Fh
        ram:0a47 18              ??         18h
        ram:0a48 3e              ??         3Eh    >
        ram:0a49 3e              ??         3Eh    >
        ram:0a4a 90              ??         90h
        ram:0a4b 18              ??         18h
        ram:0a4c 3a              ??         3Ah    :
        ram:0a4d 3e              ??         3Eh    >
        ram:0a4e 91              ??         91h
        ram:0a4f 18              ??         18h
        ram:0a50 36              ??         36h    6
        ram:0a51 3e              ??         3Eh    >
        ram:0a52 92              ??         92h
        ram:0a53 18              ??         18h
        ram:0a54 32              ??         32h    2
        ram:0a55 3e              ??         3Eh    >
        ram:0a56 93              ??         93h
        ram:0a57 18              ??         18h
        ram:0a58 2e              ??         2Eh    .
        ram:0a59 3e              ??         3Eh    >
        ram:0a5a 14              ??         14h
        ram:0a5b 18              ??         18h
        ram:0a5c 2a              ??         2Ah    *
        ram:0a5d 3e              ??         3Eh    >
        ram:0a5e 15              ??         15h
        ram:0a5f 18              ??         18h
        ram:0a60 26              ??         26h    &
        ram:0a61 3e              ??         3Eh    >
        ram:0a62 86              ??         86h
        ram:0a63 18              ??         18h
        ram:0a64 22              ??         22h    "
        ram:0a65 3e              ??         3Eh    >
        ram:0a66 97              ??         97h
        ram:0a67 18              ??         18h
        ram:0a68 1e              ??         1Eh
        ram:0a69 3e              ??         3Eh    >
        ram:0a6a 98              ??         98h
        ram:0a6b 18              ??         18h
        ram:0a6c 1a              ??         1Ah
        ram:0a6d 3e              ??         3Eh    >
        ram:0a6e 99              ??         99h
        ram:0a6f 18              ??         18h
        ram:0a70 16              ??         16h
        ram:0a71 3e              ??         3Eh    >
        ram:0a72 9c              ??         9Ch
        ram:0a73 18              ??         18h
        ram:0a74 12              ??         12h
        ram:0a75 3e              ??         3Eh    >
        ram:0a76 9d              ??         9Dh
        ram:0a77 18              ??         18h
        ram:0a78 0e              ??         0Eh
        ram:0a79 3e              ??         3Eh    >
        ram:0a7a 9e              ??         9Eh
        ram:0a7b 18              ??         18h
        ram:0a7c 0a              ??         0Ah
        ram:0a7d 3e              ??         3Eh    >
        ram:0a7e a0              ??         A0h
        ram:0a7f 18              ??         18h
        ram:0a80 06              ??         06h
        ram:0a81 3e              ??         3Eh    >
        ram:0a82 a1              ??         A1h
        ram:0a83 18              ??         18h
        ram:0a84 02              ??         02h
        ram:0a85 3e              ??         3Eh    >
        ram:0a86 22              ??         22h    "
                             LAB_ram_0a87                                    XREF[2]:     ram:0a0a(j),
                                                                                          FUN_ram_2d3f:0a3e(j)
        ram:0a87 32 37 83        LD         (DAT_ram_8337),A
        ram:0a8a 3e c0           LD         A,0xc0
        ram:0a8c d3 07           OUT        (DAT_io_0007),A
        ram:0a8e fd cb 12 96     RES        0x2,(IY+0x12)
        ram:0a92 fd cb 11 b6     RES        0x6,(IY+0x11)
        ram:0a96 ed 7b 38 83     LD         SP,(DAT_ram_8338)
        ram:0a9a 2a e3 8b        LD         HL,(DAT_ram_8be3)
        ram:0a9d d1              POP        DE
        ram:0a9e 19              ADD        HL,DE
        ram:0a9f 22 e5 8b        LD         (DAT_ram_8be5),HL
        ram:0aa2 d1              POP        DE
        ram:0aa3 2a df 8b        LD         HL,(DAT_ram_8bdf)
        ram:0aa6 19              ADD        HL,DE
        ram:0aa7 22 e1 8b        LD         (DAT_ram_8be1),HL
        ram:0aaa e1              POP        HL
        ram:0aab 22 38 83        LD         (DAT_ram_8338),HL
        ram:0aae f1              POP        AF
        ram:0aaf d3 05           OUT        (DAT_io_0005),A
        ram:0ab1 3a 37 83        LD         A,(DAT_ram_8337)
        ram:0ab4 c9              RET
        ram:0ab5 d1              ??         D1h
        ram:0ab6 e5              ??         E5h
        ram:0ab7 47              ??         47h    G
        ram:0ab8 db              ??         DBh
        ram:0ab9 05              ??         05h
        ram:0aba f5              ??         F5h
        ram:0abb 78              ??         78h    x
        ram:0abc 2a              ??         2Ah    *
        ram:0abd 38              ??         38h    8
        ram:0abe 83              ??         83h
        ram:0abf e5              ??         E5h
        ram:0ac0 ed              ??         EDh
        ram:0ac1 4b              ??         4Bh    K
        ram:0ac2 df              ??         DFh
        ram:0ac3 8b              ??         8Bh
        ram:0ac4 2a              ??         2Ah    *
        ram:0ac5 e1              ??         E1h
        ram:0ac6 8b              ??         8Bh
        ram:0ac7 b7              ??         B7h
        ram:0ac8 ed              ??         EDh
        ram:0ac9 42              ??         42h    B
        ram:0aca e5              ??         E5h
        ram:0acb ed              ??         EDh
        ram:0acc 4b              ??         4Bh    K
        ram:0acd e3              ??         E3h
        ram:0ace 8b              ??         8Bh
        ram:0acf 2a              ??         2Ah    *
        ram:0ad0 e5              ??         E5h
        ram:0ad1 8b              ??         8Bh
        ram:0ad2 ed              ??         EDh
        ram:0ad3 42              ??         42h    B
        ram:0ad4 e5              ??         E5h
        ram:0ad5 ed              ??         EDh
        ram:0ad6 73              ??         73h    s
        ram:0ad7 38              ??         38h    8
        ram:0ad8 83              ??         83h
        ram:0ad9 eb              ??         EBh
        ram:0ada e9              ??         E9h
        ram:0adb c1              ??         C1h
        ram:0adc ed              ??         EDh
        ram:0add 7b              ??         7Bh    {
        ram:0ade 38              ??         38h    8
        ram:0adf 83              ??         83h
        ram:0ae0 f1              ??         F1h
        ram:0ae1 f1              ??         F1h
        ram:0ae2 e3              ??         E3h
        ram:0ae3 22              ??         22h    "
        ram:0ae4 38              ??         38h    8
        ram:0ae5 83              ??         83h
        ram:0ae6 e1              ??         E1h
        ram:0ae7 f1              ??         F1h
        ram:0ae8 f1              ??         F1h
        ram:0ae9 c5              ??         C5h
        ram:0aea c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0aeb()
             undefined         A:1            <RETURN>
                             FUN_ram_0aeb                                    XREF[1]:     RST7:004f(c)
        ram:0aeb 06 00           LD         B,0x0
                             LAB_ram_0aed                                    XREF[1]:     ram:0af6(j)
        ram:0aed 21 7a 09        LD         HL,0x97a
                             LAB_ram_0af0                                    XREF[1]:     ram:0afb(j)
        ram:0af0 db 03           IN         A,(DAT_io_0003)
        ram:0af2 e6 08           AND        0x8
        ram:0af4 b8              CP         B
        ram:0af5 47              LD         B,A
        ram:0af6 20 f5           JR         NZ,LAB_ram_0aed
        ram:0af8 2b              DEC        HL
        ram:0af9 7d              LD         A,L
        ram:0afa b4              OR         H
        ram:0afb 20 f3           JR         NZ,LAB_ram_0af0
        ram:0afd b8              CP         B
        ram:0afe 28 15           JR         Z,LAB_ram_0b15
        ram:0b00 db 06           IN         A,(DAT_io_0006)
        ram:0b02 fe 41           CP         0x41
        ram:0b04 c2 13 0d        JP         NZ,RST0::InitializeDefaults
        ram:0b07 fd cb 09 5e     BIT        0x3,(IY+0x9)
        ram:0b0b c0              RET        NZ
        ram:0b0c e1              POP        HL
        ram:0b0d 97              SUB        A
        ram:0b0e d3 03           OUT        (DAT_io_0003),A
        ram:0b10 3e 01           LD         A,0x1
        ram:0b12 c3 48 00        JP         LAB_ram_0048
                             LAB_ram_0b15                                    XREF[1]:     ram:0afe(j)
        ram:0b15 db 06           IN         A,(DAT_io_0006)
        ram:0b17 fe 41           CP         0x41
        ram:0b19 c2 ab 0b        JP         NZ,LAB_ram_0bab
        ram:0b1c fd cb 12 5e     BIT        0x3,(IY+0x12)
        ram:0b20 28 3d           JR         Z,LAB_ram_0b5f
        ram:0b22 3e 02           LD         A,0x2
        ram:0b24 d3 03           OUT        (DAT_io_0003),A
        ram:0b26 fd cb 08 56     BIT        0x2,(IY+0x8)
        ram:0b2a 28 21           JR         Z,LAB_ram_0b4d
        ram:0b2c cd 2d 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0b2f cd 33 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0b32 fd              ??         FDh
        ram:0b33 cb              ??         CBh
        ram:0b34 01              ??         01h
        ram:0b35 e6              ??         E6h
        ram:0b36 cd              ??         CDh
        ram:0b37 cc              ??         CCh
        ram:0b38 0c              ??         0Ch
        ram:0b39 fd              ??         FDh
        ram:0b3a cb              ??         CBh
        ram:0b3b 01              ??         01h
        ram:0b3c a6              ??         A6h
                             LAB_ram_0b3d                                    XREF[1]:     ram:010b(j)
        ram:0b3d 21 4f 83        LD         HL,0x834f
        ram:0b40 cb 56           BIT        0x2,(HL=>DAT_ram_834f)
        ram:0b42 cb 96           RES        0x2,(HL=>DAT_ram_834f)
        ram:0b44 c4 39 3e        CALL       NZ,thunk_FUN_ram_335f                            undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CONDITIONAL_CALL)
        ram:0b47 cd ad 0c        CALL       FUN_ram_0cad                                     undefined FUN_ram_0cad()
        ram:0b4a 22 be 81        LD         (DAT_ram_81be),HL
                             LAB_ram_0b4d                                    XREF[1]:     FUN_ram_0aeb:0b2a(j)
        ram:0b4d 3e 01           LD         A,0x1
        ram:0b4f d3 03           OUT        (DAT_io_0003),A
        ram:0b51 fd cb 12 9e     RES        0x3,(IY+0x12)
        ram:0b55 fd cb 09 9e     RES        0x3,(IY+0x9)
        ram:0b59 08              EX         AF,AF_
        ram:0b5a d9              EXX
        ram:0b5b fb              EI
                             LAB_ram_0b5c                                    XREF[1]:     ram:0b5d(j)
        ram:0b5c 76              HALT
        ram:0b5d 18 fd           JR         LAB_ram_0b5c
                             LAB_ram_0b5f                                    XREF[1]:     ram:0b20(j)
        ram:0b5f cd 15 01        CALL       FUN_ram_0115                                     undefined FUN_ram_0115()
        ram:0b62 fd cb 09 5e     BIT        0x3,(IY+0x9)
        ram:0b66 20 3e           JR         NZ,LAB_ram_0ba6
                             LAB_ram_0b68                                    XREF[1]:     ram:0bd2(j)
        ram:0b68 fd cb 09 de     SET        0x3,(IY+0x9)=>DAT_ram_834f
        ram:0b6c 3e 03           LD         A,0x3
        ram:0b6e 32 0a 80        LD         (DAT_ram_800a),A
        ram:0b71 21 4e 83        LD         HL,0x834e
        ram:0b74 cb 66           BIT        0x4,(HL=>DAT_ram_834e)
        ram:0b76 cb a6           RES        0x4,(HL=>DAT_ram_834e)
        ram:0b78 20 1a           JR         NZ,LAB_ram_0b94
        ram:0b7a cb 56           BIT        0x2,(HL=>DAT_ram_834e)
        ram:0b7c 28 56           JR         Z,LAB_ram_0bd4
        ram:0b7e ed 7b bc 81     LD         SP,(DAT_ram_81bc)
        ram:0b82 cd 76 04        CALL       FUN_ram_0476                                     undefined FUN_ram_0476()
        ram:0b85 fd cb 0c 76     BIT        0x6,(IY+0xc)
        ram:0b89 c4 3f 3e        CALL       NZ,thunk_FUN_ram_335f                            undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CONDITIONAL_CALL)
        ram:0b8c 3e 0b           LD         A,0xb
        ram:0b8e d3 03           OUT        (DAT_io_0003),A
        ram:0b90 fb              EI
        ram:0b91 c3 fa 01        JP         LAB_ram_01fa
                             LAB_ram_0b94                                    XREF[1]:     ram:0b78(j)
        ram:0b94 3e 08           LD         A,0x8
        ram:0b96 d3 03           OUT        (DAT_io_0003),A
        ram:0b98 d1              POP        DE
        ram:0b99 d1              POP        DE
        ram:0b9a d1              POP        DE
        ram:0b9b cb de           SET        0x3,(HL=>DAT_ram_834e)
        ram:0b9d 3e 0b           LD         A,0xb
        ram:0b9f d3 03           OUT        (DAT_io_0003),A
        ram:0ba1 08              EX         AF,AF_
        ram:0ba2 d9              EXX
        ram:0ba3 fb              EI
        ram:0ba4 ed 4d           RETI
                             LAB_ram_0ba6                                    XREF[1]:     ram:0b66(j)
        ram:0ba6 fd cb 09 e6     SET        0x4,(IY+0x9)
        ram:0baa c9              RET
                             LAB_ram_0bab                                    XREF[1]:     ram:0b19(j)
        ram:0bab 3e 16           LD         A,0x16
        ram:0bad d3 04           OUT        (DAT_io_0004),A
        ram:0baf 3e 41           LD         A,0x41
        ram:0bb1 d3 06           OUT        (DAT_io_0006),A
        ram:0bb3 3e 0a           LD         A,0xa
        ram:0bb5 32 07 80        LD         (DAT_ram_8007),A
        ram:0bb8 97              SUB        A
        ram:0bb9 d3 03           OUT        (DAT_io_0003),A
        ram:0bbb fd 21 46 83     LD         IY,0x8346
        ram:0bbf cd ad 0c        CALL       FUN_ram_0cad                                     undefined FUN_ram_0cad()
        ram:0bc2 ed 5b be 81     LD         DE,(DAT_ram_81be)
        ram:0bc6 cd 8e 00        CALL       FUN_ram_008e                                     undefined FUN_ram_008e()
        ram:0bc9 20 09           JR         NZ,LAB_ram_0bd4
        ram:0bcb cd cc 0c        CALL       FUN_ram_0ccc                                     undefined FUN_ram_0ccc()
        ram:0bce fd cb 08 a6     RES        0x4,(IY+0x8)=>DAT_ram_834e
        ram:0bd2 18 94           JR         LAB_ram_0b68
                             LAB_ram_0bd4                                    XREF[2]:     ram:0b7c(j), ram:0bc9(j)
        ram:0bd4 31 00 fc        LD         SP,0xfc00
        ram:0bd7 21 00 80        LD         HL,0x8000
        ram:0bda 11 01 80        LD         DE,0x8001
        ram:0bdd 01 ff 7f        LD         BC,0x7fff
        ram:0be0 36 00           LD         (HL=>DAT_ram_8000),0x0
        ram:0be2 ed b0           LDIR
        ram:0be4 3e 0a           LD         A,0xa
        ram:0be6 32 07 80        LD         (DAT_ram_8007),A
        ram:0be9 d3 02           OUT        (DAT_io_0002),A
        ram:0beb 3e c0           LD         A,0xc0
        ram:0bed d3 07           OUT        (DAT_io_0007),A
        ram:0bef fd cb 09 de     SET        0x3,(IY+0x9)=>DAT_ram_834f
        ram:0bf3 cd 15 01        CALL       FUN_ram_0115                                     undefined FUN_ram_0115()
        ram:0bf6 fd cb 08 d6     SET        0x2,(IY+0x8)
        ram:0bfa 3e 03           LD         A,0x3
        ram:0bfc 32 0a 80        LD         (DAT_ram_800a),A
        ram:0bff fd cb 0d ce     SET        0x1,(IY+0xd)
        ram:0c03 21 00 08        LD         HL,0x800
        ram:0c06 22 2f 8b        LD         (DAT_ram_8b2f),HL
        ram:0c09 cd 39 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0c0c 21              ??         21h    !
        ram:0c0d 03              ??         03h
        ram:0c0e 05              ??         05h
        ram:0c0f 22              ??         22h    "
        ram:0c10 0c              ??         0Ch
        ram:0c11 80              ??         80h
        ram:0c12 21              ??         21h    !
        ram:0c13 d2              ??         D2h
        ram:0c14 31              ??         31h    1
        ram:0c15 cd              ??         CDh
        ram:0c16 45              ??         45h    E
        ram:0c17 3e              ??         3Eh    >
        ram:0c18 21              ??         21h    !
        ram:0c19 04              ??         04h
        ram:0c1a 05              ??         05h
        ram:0c1b 22              ??         22h    "
        ram:0c1c 0c              ??         0Ch
        ram:0c1d 80              ??         80h
        ram:0c1e 21              ??         21h    !
        ram:0c1f ee              ??         EEh
        ram:0c20 30              ??         30h    0
        ram:0c21 cd              ??         CDh
        ram:0c22 45              ??         45h    E
        ram:0c23 3e              ??         3Eh    >
        ram:0c24 cd 4b 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0c27 cd              ??         CDh
        ram:0c28 81              ??         81h
        ram:0c29 3e              ??         3Eh    >
        ram:0c2a 3e              ??         3Eh    >
        ram:0c2b ff              ??         FFh
        ram:0c2c 32              ??         32h    2
        ram:0c2d 3a              ??         3Ah    :
        ram:0c2e 8b              ??         8Bh
        ram:0c2f cd              ??         CDh
        ram:0c30 78              ??         78h    x
        ram:0c31 0c              ??         0Ch
        ram:0c32 cd 51 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0c35 cd              ??         CDh
        ram:0c36 57              ??         57h    W
        ram:0c37 3e              ??         3Eh    >
        ram:0c38 cd              ??         CDh
        ram:0c39 5d              ??         5Dh    ]
        ram:0c3a 3e              ??         3Eh    >
        ram:0c3b cd 63 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0c3e 21              ??         21h    !
        ram:0c3f 3b              ??         3Bh    ;
        ram:0c40 06              ??         06h
        ram:0c41 cd              ??         CDh
        ram:0c42 b5              ??         B5h
        ram:0c43 0a              ??         0Ah
        ram:0c44 ed              ??         EDh
        ram:0c45 73              ??         73h    s
        ram:0c46 bc              ??         BCh
        ram:0c47 81              ??         81h
        ram:0c48 db              ??         DBh
        ram:0c49 03              ??         03h
        ram:0c4a e6              ??         E6h
        ram:0c4b 08              ??         08h
        ram:0c4c 28              ??         28h    (
        ram:0c4d fa              ??         FAh
        ram:0c4e fd              ??         FDh
        ram:0c4f cb              ??         CBh
        ram:0c50 09              ??         09h
        ram:0c51 a6              ??         A6h
        ram:0c52 3e              ??         3Eh    >
        ram:0c53 0b              ??         0Bh
        ram:0c54 d3              ??         D3h
        ram:0c55 03              ??         03h
        ram:0c56 fb              ??         FBh
        ram:0c57 cd              ??         CDh
        ram:0c58 be              ??         BEh
        ram:0c59 01              ??         01h
        ram:0c5a fd              ??         FDh
        ram:0c5b cb              ??         CBh
        ram:0c5c 09              ??         09h
        ram:0c5d d6              ??         D6h
        ram:0c5e cd 87 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0c61 cd              ??         CDh
        ram:0c62 39              ??         39h    9
        ram:0c63 3e              ??         3Eh    >
        ram:0c64 fd              ??         FDh
        ram:0c65 cb              ??         CBh
        ram:0c66 09              ??         09h
        ram:0c67 96              ??         96h
        ram:0c68 c3              ??         C3h
        ram:0c69 11              ??         11h
        ram:0c6a 02              ??         02h
        ram:0c6b 05              ??         05h
        ram:0c6c 78              ??         78h    x
        ram:0c6d 53              ??         53h    S
        ram:0c6e 74              ??         74h    t
        ram:0c6f 61              ??         61h    a
        ram:0c70 74              ??         74h    t
        ram:0c71 05              ??         05h
        ram:0c72 79              ??         79h    y
        ram:0c73 53              ??         53h    S
        ram:0c74 74              ??         74h    t
        ram:0c75 61              ??         61h    a
        ram:0c76 74              ??         74h    t
        ram:0c77 00              ??         00h
        ram:0c78 21              ??         21h    !
        ram:0c79 f7              ??         F7h
        ram:0c7a 8b              ??         8Bh
        ram:0c7b 22              ??         22h    "
        ram:0c7c dd              ??         DDh
        ram:0c7d 8b              ??         8Bh
        ram:0c7e 22              ??         22h    "
        ram:0c7f df              ??         DFh
        ram:0c80 8b              ??         8Bh
        ram:0c81 22              ??         22h    "
        ram:0c82 e1              ??         E1h
        ram:0c83 8b              ??         8Bh
        ram:0c84 21              ??         21h    !
        ram:0c85 6f              ??         6Fh    o
        ram:0c86 fa              ??         FAh
        ram:0c87 22              ??         22h    "
        ram:0c88 eb              ??         EBh
        ram:0c89 8b              ??         8Bh
        ram:0c8a 22              ??         22h    "
        ram:0c8b e3              ??         E3h
        ram:0c8c 8b              ??         8Bh
        ram:0c8d 22              ??         22h    "
        ram:0c8e e5              ??         E5h
        ram:0c8f 8b              ??         8Bh
        ram:0c90 dd              ??         DDh
        ram:0c91 21              ??         21h    !
        ram:0c92 6b              ??         6Bh    k
        ram:0c93 0c              ??         0Ch
        ram:0c94 cd              ??         CDh
        ram:0c95 dc              ??         DCh
        ram:0c96 0c              ??         0Ch
        ram:0c97 21              ??         21h    !
        ram:0c98 00              ??         00h
        ram:0c99 00              ??         00h
        ram:0c9a cd              ??         CDh
        ram:0c9b d9              ??         D9h
        ram:0c9c 29              ??         29h    )
        ram:0c9d dd              ??         DDh
        ram:0c9e 7e              ??         7Eh    ~
        ram:0c9f 00              ??         00h
        ram:0ca0 b7              ??         B7h
        ram:0ca1 20              ??         20h
        ram:0ca2 f1              ??         F1h
        ram:0ca3 cd              ??         CDh
        ram:0ca4 98              ??         98h
        ram:0ca5 21              ??         21h    !
        ram:0ca6 cd              ??         CDh
        ram:0ca7 69              ??         69h    i
        ram:0ca8 3e              ??         3Eh    >
        ram:0ca9 cd c3 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0cac c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0cad()
             undefined         A:1            <RETURN>
                             FUN_ram_0cad                                    XREF[2]:     FUN_ram_00ea:0b47(c),
                                                                                          FUN_ram_0aeb:0bbf(c)
        ram:0cad dd e5           PUSH       IX
        ram:0caf dd 21 f7 8b     LD         IX,0x8bf7
        ram:0cb3 01 79 6e        LD         BC,0x6e79
        ram:0cb6 21 08 00        LD         HL,0x8
        ram:0cb9 54              LD         D,H
                             LAB_ram_0cba                                    XREF[1]:     ram:0cc3(j)
        ram:0cba dd 5e 00        LD         E,(IX+0x0)=>DAT_ram_8bf7
        ram:0cbd dd 23           INC        IX
        ram:0cbf 19              ADD        HL,DE
        ram:0cc0 0b              DEC        BC
        ram:0cc1 79              LD         A,C
        ram:0cc2 b0              OR         B
        ram:0cc3 20 f5           JR         NZ,LAB_ram_0cba
        ram:0cc5 5a              LD         E,D
        ram:0cc6 eb              EX         DE,HL
        ram:0cc7 ed 52           SBC        HL,DE
        ram:0cc9 dd e1           POP        IX
        ram:0ccb c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0ccc()
             undefined         A:1            <RETURN>
                             FUN_ram_0ccc                                    XREF[1]:     FUN_ram_0aeb:0bcb(c)
        ram:0ccc cd d2 01        CALL       FUN_ram_01d2                                     undefined FUN_ram_01d2()
        ram:0ccf cd 6f 3e        CALL       thunk_FUN_ram_335f                               undefined thunk_FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0cd2 fd              ??         FDh
        ram:0cd3 cb              ??         CBh
        ram:0cd4 0c              ??         0Ch
        ram:0cd5 b6              ??         B6h
        ram:0cd6 21              ??         21h    !
        ram:0cd7 cb              ??         CBh
        ram:0cd8 07              ??         07h
        ram:0cd9 c3              ??         C3h
        ram:0cda a4              ??         A4h
        ram:0cdb 04              ??         04h
        ram:0cdc 21              ??         21h    !
        ram:0cdd 83              ??         83h
        ram:0cde 80              ??         80h
        ram:0cdf dd              ??         DDh
        ram:0ce0 46              ??         46h    F
        ram:0ce1 00              ??         00h
        ram:0ce2 04              ??         04h
        ram:0ce3 dd              ??         DDh
        ram:0ce4 7e              ??         7Eh    ~
        ram:0ce5 00              ??         00h
        ram:0ce6 dd              ??         DDh
        ram:0ce7 23              ??         23h    #
        ram:0ce8 77              ??         77h    w
        ram:0ce9 23              ??         23h    #
        ram:0cea 10              ??         10h
        ram:0ceb f7              ??         F7h
        ram:0cec c9              ??         C9h
                             SetStackPointer                                 XREF[1]:     ram:0004(j)
                             ; System initialization - sets stack, video mode, interrupts
        ram:0ced 06 00           LD         B,0x0          ; B = 0 for stack clearing loop
        ram:0cef 31 9f fe        LD         SP,0xfe9f       ; Initial stack pointer
                             ClearStackSetVidInterMode                       XREF[2]:     ram:0cf2(j), ram:0cfc(j)
                             ; Clear stack and configure video/interrupt modes
        ram:0cf2 10 fe           DJNZ       ClearStackSetVidInterMode ; Loop to clear stack memory
        ram:0cf4 dd 21 01 00     LD         IX,0x1          ; IX = 1
        ram:0cf8 dd 39           ADD        IX,SP           ; IX = SP + 1
        ram:0cfa dd f9           LD         SP,IX           ; Adjust stack pointer
        ram:0cfc 30 f4           JR         NC,ClearStackSetVidInterMode ; Continue if no carry
        ram:0cfe 31 ce fb        LD         SP,0xfbce       ; Set final stack pointer to 0xFBCE
        ram:0d01 3e 17           LD         A,0x17          ; Configure video buffer width and interrupts
        ram:0d03 d3 04           OUT        (DAT_io_0004),A ; Port 4: 16-byte width, normal interrupts
        ram:0d05 3e 7c           LD         A,0x7c          ; Video buffer offset for normal display
        ram:0d07 d3 00           OUT        (0x0),A         ; Port 0: Set display buffer offset
        ram:0d09 ed 56           IM         1               ; Set interrupt mode 1
        ram:0d0b 3e c0           LD         A,0xc0          ; Link port configuration
        ram:0d0d d3 07           OUT        (DAT_io_0007),A ; Port 7: Configure link port
        ram:0d0f 3e 0a           LD         A,0xa           ; LCD contrast value
        ram:0d11 d3 02           OUT        (DAT_io_0002),A ; Port 2: Set display contrast
                             InitializeDefaults                              XREF[1]:     FUN_ram_0aeb:0b04(j)
                             ; Initialize system defaults and enable interrupts
        ram:0d13 97              SUB        A               ; A = 0
        ram:0d14 d3 03           OUT        (DAT_io_0003),A ; Port 3: Disable interrupts temporarily
        ram:0d16 3e 01           LD         A,0x1           ; Enable ON key interrupts
        ram:0d18 d3 03           OUT        (DAT_io_0003),A ; Port 3: Enable ON key interrupts
        ram:0d1a fb              EI                         ; Enable interrupts globally
        ram:0d1b 76              HALT                       ; Wait for first timer interrupt
        ram:0d1c cd 21 20        CALL       FUN_ram_2021    ; Initialize floating-point registers (OP1-OP6)
        ram:0d1f cd fe 1f        CALL       FUN_ram_1ffe    ; Copy OP2 to OP3 register during initialization
        ram:0d22 cd 8e 1f        CALL       FUN_ram_1f8e
        ram:0d25 da 60 20        JP         C,LAB_ram_2060  ; Jump to error handler if carry set
        ram:0d28 c3 56 20        JP         LAB_ram_2056    ; Jump to main program execution
        ram:0d2b cd              ??         CDh
        ram:0d2c 21              ??         21h    !
        ram:0d2d 20              ??         20h
        ram:0d2e cd              ??         CDh
        ram:0d2f fe              ??         FEh
        ram:0d30 1f              ??         1Fh
        ram:0d31 cd              ??         CDh
        ram:0d32 8e              ??         8Eh
        ram:0d33 1f              ??         1Fh
        ram:0d34 da              ??         DAh
        ram:0d35 56              ??         56h    V
        ram:0d36 20              ??         20h
        ram:0d37 c3              ??         C3h
        ram:0d38 60              ??         60h    `
        ram:0d39 20              ??         20h
        ram:0d3a cd              ??         CDh
        ram:0d3b 0b              ??         0Bh
        ram:0d3c 21              ??         21h    !
        ram:0d3d 18              ??         18h
        ram:0d3e 39              ??         39h    9
        ram:0d3f cd              ??         CDh
        ram:0d40 73              ??         73h    s
        ram:0d41 25              ??         25h    %
        ram:0d42 cd              ??         CDh
        ram:0d43 6e              ??         6Eh    n
        ram:0d44 25              ??         25h    %
        ram:0d45 18              ??         18h
        ram:0d46 31              ??         31h    1
        ram:0d47 cd              ??         CDh
        ram:0d48 ed              ??         EDh
        ram:0d49 23              ??         23h    #
        ram:0d4a c8              ??         C8h
        ram:0d4b 3a              ??         3Ah    :
        ram:0d4c 82              ??         82h
        ram:0d4d 80              ??         80h
        ram:0d4e f5              ??         F5h
        ram:0d4f cd              ??         CDh
        ram:0d50 5d              ??         5Dh    ]
        ram:0d51 0d              ??         0Dh
        ram:0d52 f1              ??         F1h
        ram:0d53 e6              ??         E6h
        ram:0d54 80              ??         80h
        ram:0d55 20              ??         20h
        ram:0d56 17              ??         17h
        ram:0d57 c9              ??         C9h
        ram:0d58 cd              ??         CDh
        ram:0d59 9b              ??         9Bh
        ram:0d5a 0f              ??         0Fh
        ram:0d5b 18              ??         18h
        ram:0d5c 24              ??         24h    $
        ram:0d5d cf              ??         CFh
        ram:0d5e cd              ??         CDh
        ram:0d5f c3              ??         C3h
        ram:0d60 0f              ??         0Fh
        ram:0d61 cd              ??         CDh
        ram:0d62 9b              ??         9Bh
        ram:0d63 0f              ??         0Fh
        ram:0d64 18              ??         18h
        ram:0d65 12              ??         12h
        ram:0d66 cf              ??         CFh
        ram:0d67 18              ??         18h
        ram:0d68 0f              ??         0Fh
        ram:0d69 cd              ??         CDh
        ram:0d6a 66              ??         66h    f
        ram:0d6b 21              ??         21h    !
        ram:0d6c 18              ??         18h
        ram:0d6d 0a              ??         0Ah
        ram:0d6e cd              ??         CDh
        ram:0d6f 66              ??         66h    f
        ram:0d70 21              ??         21h    !
        ram:0d71 21              ??         21h    !
        ram:0d72 8d              ??         8Dh
        ram:0d73 80              ??         80h
        ram:0d74 7e              ??         7Eh    ~
        ram:0d75 ee              ??         EEh
        ram:0d76 80              ??         80h
        ram:0d77 77              ??         77h    w
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0d78()
                             ; System function (RST6 thunk): Handle floating-point operations or validation
             undefined         A:1            <RETURN>
                             FUN_ram_0d78                                    XREF[1]:     RST6:0030(T), RST6:0030(j)
        ram:0d78 fd cb 0e b6     RES        0x6,(IY+0xe)
        ram:0d7c cd e3 1e        CALL       FUN_ram_1ee3                                     undefined FUN_ram_1ee3()
        ram:0d7f 18 04           JR         LAB_ram_0d85
        ram:0d81 fd              ??         FDh
        ram:0d82 cb              ??         CBh
        ram:0d83 0e              ??         0Eh
        ram:0d84 f6              ??         F6h
                             LAB_ram_0d85                                    XREF[1]:     ram:0d7f(j)
        ram:0d85 3a 90 80        LD         A,(DAT_ram_8090)  ; Load OP2 data byte (check if initialized)
        ram:0d88 b7              OR         A                 ; Check if zero
        ram:0d89 ca 58 1f        JP         Z,LAB_ram_1f58    ; If zero, clear OP1 type bits
        ram:0d8c 3a 85 80        LD         A,(DAT_ram_8085)  ; Load OP1 data byte (check if initialized)
        ram:0d8f b7              OR         A                 ; Check if zero
        ram:0d90 ca 95 20        JP         Z,FUN_ram_2095    ; If zero, handle uninitialized OP1
        ram:0d93 cd 82 26        CALL       FUN_ram_2682                                     undefined FUN_ram_2682()
        ram:0d96 30 45           JR         NC,LAB_ram_0ddd
        ram:0d98 19              ADD        HL,DE
        ram:0d99 ed 53 83 80     LD         (DAT_ram_8083),DE
        ram:0d9d eb              EX         DE,HL
        ram:0d9e b7              OR         A
        ram:0d9f ed 52           SBC        HL,DE
        ram:0da1 7c              LD         A,H
        ram:0da2 b7              OR         A
        ram:0da3 c2 95 20        JP         NZ,FUN_ram_2095
        ram:0da6 7d              LD         A,L
        ram:0da7 fe 10           CP         0x10
        ram:0da9 d2 95 20        JP         NC,FUN_ram_2095
        ram:0dac 47              LD         B,A
                             LAB_ram_0dad                                    XREF[1]:     ram:0db3(j)
        ram:0dad 21 85 80        LD         HL,0x8085
        ram:0db0 cd e3 21        CALL       FUN_ram_21e3                                     undefined FUN_ram_21e3()
        ram:0db3 10 f8           DJNZ       LAB_ram_0dad
        ram:0db5 3a 8d 80        LD         A,(DAT_ram_808d)
        ram:0db8 e6 80           AND        0x80
        ram:0dba 4f              LD         C,A
        ram:0dbb 3a 82 80        LD         A,(DAT_ram_8082)
        ram:0dbe e6 80           AND        0x80
        ram:0dc0 a9              XOR        C
        ram:0dc1 79              LD         A,C
        ram:0dc2 32 82 80        LD         (DAT_ram_8082),A
        ram:0dc5 28 39           JR         Z,LAB_ram_0e00
        ram:0dc7 cd 28 23        CALL       FUN_ram_2328                                     undefined FUN_ram_2328()
        ram:0dca 30 54           JR         NC,LAB_ram_0e20
        ram:0dcc cd aa 22        CALL       FUN_ram_22aa                                     undefined FUN_ram_22aa()
        ram:0dcf cd 30 23        CALL       FUN_ram_2330                                     undefined FUN_ram_2330()
        ram:0dd2 3a 82 80        LD         A,(DAT_ram_8082)
        ram:0dd5 ee 80           XOR        0x80
        ram:0dd7 32 82 80        LD         (DAT_ram_8082),A
        ram:0dda c3 23 0e        JP         LAB_ram_0e23
                             LAB_ram_0ddd                                    XREF[1]:     ram:0d96(j)
        ram:0ddd 28 10           JR         Z,LAB_ram_0def
        ram:0ddf 7c              LD         A,H
        ram:0de0 b7              OR         A
        ram:0de1 c0              RET        NZ
        ram:0de2 7d              LD         A,L
        ram:0de3 fe 10           CP         0x10
        ram:0de5 d0              RET        NC
        ram:0de6 47              LD         B,A
                             LAB_ram_0de7                                    XREF[1]:     ram:0ded(j)
        ram:0de7 21 90 80        LD         HL,0x8090
        ram:0dea cd e3 21        CALL       FUN_ram_21e3                                     undefined FUN_ram_21e3()
        ram:0ded 10 f8           DJNZ       LAB_ram_0de7
                             LAB_ram_0def                                    XREF[1]:     ram:0ddd(j)
        ram:0def 3a 82 80        LD         A,(DAT_ram_8082)
        ram:0df2 e6 80           AND        0x80
        ram:0df4 32 82 80        LD         (DAT_ram_8082),A
        ram:0df7 4f              LD         C,A
        ram:0df8 3a 8d 80        LD         A,(DAT_ram_808d)
        ram:0dfb e6 80           AND        0x80
        ram:0dfd a9              XOR        C
        ram:0dfe 20 15           JR         NZ,LAB_ram_0e15
                             LAB_ram_0e00                                    XREF[1]:     ram:0dc5(j)
        ram:0e00 cd b2 22        CALL       FUN_ram_22b2                                     undefined FUN_ram_22b2()
        ram:0e03 30 06           JR         NC,LAB_ram_0e0b
        ram:0e05 cd 08 22        CALL       FUN_ram_2208                                     undefined FUN_ram_2208()
        ram:0e08 cd 90 25        CALL       FUN_ram_2590                                     undefined FUN_ram_2590()
                             LAB_ram_0e0b                                    XREF[1]:     ram:0e03(j)
        ram:0e0b fd cb 0e 76     BIT        0x6,(IY+0xe)
        ram:0e0f ca 7c 0f        JP         Z,LAB_ram_0f7c
        ram:0e12 c3 d5 13        JP         LAB_ram_13d5
                             LAB_ram_0e15                                    XREF[1]:     ram:0dfe(j)
        ram:0e15 cd 30 23        CALL       FUN_ram_2330                                     undefined FUN_ram_2330()
        ram:0e18 30 09           JR         NC,LAB_ram_0e23
        ram:0e1a cd b2 22        CALL       FUN_ram_22b2                                     undefined FUN_ram_22b2()
        ram:0e1d cd 28 23        CALL       FUN_ram_2328                                     undefined FUN_ram_2328()
                             LAB_ram_0e20                                    XREF[1]:     ram:0dca(j)
        ram:0e20 cd 95 20        CALL       FUN_ram_2095                                     undefined FUN_ram_2095()
                             LAB_ram_0e23                                    XREF[2]:     ram:0dda(j), ram:0e18(j)
        ram:0e23 fd cb 0e 76     BIT        0x6,(IY+0xe)
        ram:0e27 ca 53 0f        JP         Z,LAB_ram_0f53
        ram:0e2a c3 d5 13        JP         LAB_ram_13d5
        ram:0e2d 3e              ??         3Eh    >
        ram:0e2e 05              ??         05h
        ram:0e2f 18              ??         18h
        ram:0e30 01              ??         01h
        ram:0e31 af              ??         AFh
        ram:0e32 cd              ??         CDh
        ram:0e33 86              ??         86h
        ram:0e34 24              ??         24h    $
        ram:0e35 fd              ??         FDh
        ram:0e36 cb              ??         CBh
        ram:0e37 0e              ??         0Eh
        ram:0e38 f6              ??         F6h
        ram:0e39 18              ??         18h
        ram:0e3a 27              ??         27h    '
        ram:0e3b cd              ??         CDh
        ram:0e3c e3              ??         E3h
        ram:0e3d 1e              ??         1Eh
        ram:0e3e cd              ??         CDh
        ram:0e3f 2d              ??         2Dh    -
        ram:0e40 0e              ??         0Eh
        ram:0e41 c3              ??         C3h
        ram:0e42 7c              ??         7Ch    |
        ram:0e43 0f              ??         0Fh
        ram:0e44 cd              ??         CDh
        ram:0e45 e3              ??         E3h
        ram:0e46 1e              ??         1Eh
        ram:0e47 cd              ??         CDh
        ram:0e48 31              ??         31h    1
        ram:0e49 0e              ??         0Eh
        ram:0e4a c3              ??         C3h
        ram:0e4b 7c              ??         7Ch    |
        ram:0e4c 0f              ??         0Fh
        ram:0e4d cd              ??         CDh
        ram:0e4e 5a              ??         5Ah    Z
        ram:0e4f 0e              ??         0Eh
        ram:0e50 18              ??         18h
        ram:0e51 09              ??         09h
        ram:0e52 21              ??         21h    !
        ram:0e53 eb              ??         EBh
        ram:0e54 1e              ??         1Eh
        ram:0e55 cd              ??         CDh
        ram:0e56 0b              ??         0Bh
        ram:0e57 21              ??         21h    !
        ram:0e58 18              ??         18h
        ram:0e59 01              ??         01h
        ram:0e5a cf              ??         CFh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0e5b()
             undefined         A:1            <RETURN>
                             FUN_ram_0e5b                                    XREF[1]:     RST5:0028(T), RST5:0028(j)
        ram:0e5b fd cb 0e b6     RES        0x6,(IY+0xe)
        ram:0e5f cd e3 1e        CALL       FUN_ram_1ee3                                     undefined FUN_ram_1ee3()
        ram:0e62 3a 85 80        LD         A,(DAT_ram_8085)
        ram:0e65 b7              OR         A
        ram:0e66 c8              RET        Z
        ram:0e67 3a 90 80        LD         A,(DAT_ram_8090)
        ram:0e6a b7              OR         A
        ram:0e6b ca 95 20        JP         Z,FUN_ram_2095
        ram:0e6e cd f6 0f        CALL       FUN_ram_0ff6                                     undefined FUN_ram_0ff6()
        ram:0e71 ed 53 83 80     LD         (DAT_ram_8083),DE
        ram:0e75 cd ad 21        CALL       FUN_ram_21ad                                     undefined FUN_ram_21ad()
        ram:0e78 06 08           LD         B,0x8
        ram:0e7a 21 98 80        LD         HL,0x8098
                             LAB_ram_0e7d                                    XREF[1]:     ram:0e81(j)
        ram:0e7d 2b              DEC        HL
        ram:0e7e be              CP         (HL=>DAT_ram_8097)
        ram:0e7f 20 0c           JR         NZ,LAB_ram_0e8d
        ram:0e81 10 fa           DJNZ       LAB_ram_0e7d
                             LAB_ram_0e83                                    XREF[1]:     ram:0f26(j)
        ram:0e83 21 9a 80        LD         HL,0x809a
        ram:0e86 cd e3 21        CALL       FUN_ram_21e3                                     undefined FUN_ram_21e3()
        ram:0e89 ed 67           RRD
        ram:0e8b e1              POP        HL
        ram:0e8c 2b              DEC        HL
                             LAB_ram_0e8d                                    XREF[1]:     ram:0e7f(j)
        ram:0e8d e5              PUSH       HL=>DAT_ram_8097
        ram:0e8e c5              PUSH       BC
        ram:0e8f 7e              LD         A,(HL=>DAT_ram_8097)
        ram:0e90 4f              LD         C,A
        ram:0e91 e6 0f           AND        0xf
        ram:0e93 28 3f           JR         Z,LAB_ram_0ed4
        ram:0e95 47              LD         B,A
                             LAB_ram_0e96                                    XREF[1]:     ram:0ed2(j)
        ram:0e96 11 a2 80        LD         DE,0x80a2
        ram:0e99 2a 8b 80        LD         HL,(DAT_ram_808b)
        ram:0e9c 1a              LD         A,(DE=>DAT_ram_80a2)
        ram:0e9d 84              ADD        A,H
        ram:0e9e 27              DAA
        ram:0e9f 12              LD         (DE=>DAT_ram_80a2),A
        ram:0ea0 1b              DEC        DE
        ram:0ea1 1a              LD         A,(DE=>DAT_ram_80a1)
        ram:0ea2 8d              ADC        A,L
        ram:0ea3 27              DAA
        ram:0ea4 12              LD         (DE=>DAT_ram_80a1),A
        ram:0ea5 1b              DEC        DE
        ram:0ea6 2a 89 80        LD         HL,(DAT_ram_8089)
        ram:0ea9 1a              LD         A,(DE=>DAT_ram_80a0)
        ram:0eaa 8c              ADC        A,H
        ram:0eab 27              DAA
        ram:0eac 12              LD         (DE=>DAT_ram_80a0),A
        ram:0ead 1b              DEC        DE
        ram:0eae 1a              LD         A,(DE=>DAT_ram_809f)
        ram:0eaf 8d              ADC        A,L
        ram:0eb0 27              DAA
        ram:0eb1 12              LD         (DE=>DAT_ram_809f),A
        ram:0eb2 1b              DEC        DE
        ram:0eb3 2a 87 80        LD         HL,(DAT_ram_8087)
        ram:0eb6 1a              LD         A,(DE=>DAT_ram_809e)
        ram:0eb7 8c              ADC        A,H
        ram:0eb8 27              DAA
        ram:0eb9 12              LD         (DE=>DAT_ram_809e),A
        ram:0eba 1b              DEC        DE
        ram:0ebb 1a              LD         A,(DE=>DAT_ram_809d)
        ram:0ebc 8d              ADC        A,L
        ram:0ebd 27              DAA
        ram:0ebe 12              LD         (DE=>DAT_ram_809d),A
        ram:0ebf 1b              DEC        DE
        ram:0ec0 2a 85 80        LD         HL,(DAT_ram_8085)
        ram:0ec3 1a              LD         A,(DE=>DAT_ram_809c)
        ram:0ec4 8c              ADC        A,H
        ram:0ec5 27              DAA
        ram:0ec6 12              LD         (DE=>DAT_ram_809c),A
        ram:0ec7 1b              DEC        DE
        ram:0ec8 1a              LD         A,(DE=>DAT_ram_809b)
        ram:0ec9 8d              ADC        A,L
        ram:0eca 27              DAA
        ram:0ecb 12              LD         (DE=>DAT_ram_809b),A
        ram:0ecc d2 d2 0e        JP         NC,LAB_ram_0ed2
        ram:0ecf 1b              DEC        DE
        ram:0ed0 eb              EX         DE,HL
        ram:0ed1 34              INC        (HL=>DAT_ram_809a)
                             LAB_ram_0ed2                                    XREF[1]:     ram:0ecc(j)
        ram:0ed2 10 c2           DJNZ       LAB_ram_0e96
                             LAB_ram_0ed4                                    XREF[1]:     ram:0e93(j)
        ram:0ed4 21 9a 80        LD         HL,0x809a
        ram:0ed7 cd e3 21        CALL       FUN_ram_21e3                                     undefined FUN_ram_21e3()
        ram:0eda ed 67           RRD
        ram:0edc 79              LD         A,C
        ram:0edd 1f              RRA
        ram:0ede 1f              RRA
        ram:0edf 1f              RRA
        ram:0ee0 1f              RRA
        ram:0ee1 e6 0f           AND        0xf
        ram:0ee3 28 3f           JR         Z,LAB_ram_0f24
        ram:0ee5 47              LD         B,A
                             LAB_ram_0ee6                                    XREF[1]:     ram:0f22(j)
        ram:0ee6 11 a2 80        LD         DE,0x80a2
        ram:0ee9 2a 8b 80        LD         HL,(DAT_ram_808b)
        ram:0eec 1a              LD         A,(DE=>DAT_ram_80a2)
        ram:0eed 84              ADD        A,H
        ram:0eee 27              DAA
        ram:0eef 12              LD         (DE=>DAT_ram_80a2),A
        ram:0ef0 1b              DEC        DE
        ram:0ef1 1a              LD         A,(DE=>DAT_ram_80a1)
        ram:0ef2 8d              ADC        A,L
        ram:0ef3 27              DAA
        ram:0ef4 12              LD         (DE=>DAT_ram_80a1),A
        ram:0ef5 1b              DEC        DE
        ram:0ef6 2a 89 80        LD         HL,(DAT_ram_8089)
        ram:0ef9 1a              LD         A,(DE=>DAT_ram_80a0)
        ram:0efa 8c              ADC        A,H
        ram:0efb 27              DAA
        ram:0efc 12              LD         (DE=>DAT_ram_80a0),A
        ram:0efd 1b              DEC        DE
        ram:0efe 1a              LD         A,(DE=>DAT_ram_809f)
        ram:0eff 8d              ADC        A,L
        ram:0f00 27              DAA
        ram:0f01 12              LD         (DE=>DAT_ram_809f),A
        ram:0f02 1b              DEC        DE
        ram:0f03 2a 87 80        LD         HL,(DAT_ram_8087)
        ram:0f06 1a              LD         A,(DE=>DAT_ram_809e)
        ram:0f07 8c              ADC        A,H
        ram:0f08 27              DAA
        ram:0f09 12              LD         (DE=>DAT_ram_809e),A
        ram:0f0a 1b              DEC        DE
        ram:0f0b 1a              LD         A,(DE=>DAT_ram_809d)
        ram:0f0c 8d              ADC        A,L
        ram:0f0d 27              DAA
        ram:0f0e 12              LD         (DE=>DAT_ram_809d),A
        ram:0f0f 1b              DEC        DE
        ram:0f10 2a 85 80        LD         HL,(DAT_ram_8085)
        ram:0f13 1a              LD         A,(DE=>DAT_ram_809c)
        ram:0f14 8c              ADC        A,H
        ram:0f15 27              DAA
        ram:0f16 12              LD         (DE=>DAT_ram_809c),A
        ram:0f17 1b              DEC        DE
        ram:0f18 1a              LD         A,(DE=>DAT_ram_809b)
        ram:0f19 8d              ADC        A,L
        ram:0f1a 27              DAA
        ram:0f1b 12              LD         (DE=>DAT_ram_809b),A
        ram:0f1c d2 22 0f        JP         NC,LAB_ram_0f22
        ram:0f1f 1b              DEC        DE
        ram:0f20 eb              EX         DE,HL
        ram:0f21 34              INC        (HL=>DAT_ram_809a)
                             LAB_ram_0f22                                    XREF[1]:     ram:0f1c(j)
        ram:0f22 10 c2           DJNZ       LAB_ram_0ee6
                             LAB_ram_0f24                                    XREF[1]:     ram:0ee3(j)
        ram:0f24 c1              POP        BC
        ram:0f25 05              DEC        B
        ram:0f26 c2 83 0e        JP         NZ,LAB_ram_0e83
        ram:0f29 e1              POP        HL
        ram:0f2a 3a 9a 80        LD         A,(DAT_ram_809a)
        ram:0f2d a7              AND        A
        ram:0f2e 28 0b           JR         Z,LAB_ram_0f3b
        ram:0f30 21 9a 80        LD         HL,0x809a
        ram:0f33 cd e3 21        CALL       FUN_ram_21e3                                     undefined FUN_ram_21e3()
        ram:0f36 ed 67           RRD
        ram:0f38 cd 90 25        CALL       FUN_ram_2590                                     undefined FUN_ram_2590()
                             LAB_ram_0f3b                                    XREF[1]:     ram:0f2e(j)
        ram:0f3b cd e7 20        CALL       FUN_ram_20e7                                     undefined FUN_ram_20e7()
        ram:0f3e fd cb 0e 76     BIT        0x6,(IY+0xe)
        ram:0f42 c0              RET        NZ
        ram:0f43 18 37           JR         LAB_ram_0f7c
        ram:0f45 e1              ??         E1h
        ram:0f46 18              ??         18h
        ram:0f47 0b              ??         0Bh
        ram:0f48 3a              ??         3Ah    :
        ram:0f49 ae              ??         AEh
        ram:0f4a 80              ??         80h
        ram:0f4b b7              ??         B7h
        ram:0f4c fc              ??         FCh
        ram:0f4d 90              ??         90h
        ram:0f4e 25              ??         25h    %
        ram:0f4f af              ??         AFh
        ram:0f50 32              ??         32h    2
        ram:0f51 82              ??         82h
        ram:0f52 80              ??         80h
                             LAB_ram_0f53                                    XREF[1]:     ram:0e27(j)
        ram:0f53 21 85 80        LD         HL,0x8085
        ram:0f56 7e              LD         A,(HL=>DAT_ram_8085)
        ram:0f57 e6 f0           AND        0xf0
        ram:0f59 20 21           JR         NZ,LAB_ram_0f7c
        ram:0f5b 0e 10           LD         C,0x10
                             LAB_ram_0f5d                                    XREF[1]:     ram:0f68(j)
        ram:0f5d 0d              DEC        C
        ram:0f5e ca 98 21        JP         Z,LAB_ram_2198
        ram:0f61 cd 14 22        CALL       FUN_ram_2214                                     undefined FUN_ram_2214()
        ram:0f64 23              INC        HL
        ram:0f65 7e              LD         A,(HL=>DAT_ram_8086)
        ram:0f66 e6 f0           AND        0xf0
        ram:0f68 ca 5d 0f        JP         Z,LAB_ram_0f5d
        ram:0f6b 3e 10           LD         A,0x10
        ram:0f6d 91              SUB        C
        ram:0f6e 4f              LD         C,A
        ram:0f6f 06 00           LD         B,0x0
        ram:0f71 2a 83 80        LD         HL,(DAT_ram_8083)
        ram:0f74 ed 42           SBC        HL,BC
        ram:0f76 da 98 21        JP         C,LAB_ram_2198
        ram:0f79 22 83 80        LD         (DAT_ram_8083),HL
                             LAB_ram_0f7c                                    XREF[3]:     FUN_ram_0d78:0e0f(j),
                                                                                          ram:0f43(j),
                                                                                          FUN_ram_0d78:0f59(j)
        ram:0f7c 3a 82 80        LD         A,(DAT_ram_8082)  ; Load OP1 variable type
        ram:0f7f e6 80           AND        0x80              ; Mask to keep only bit 7 (sign/type flag)
        ram:0f81 32 82 80        LD         (DAT_ram_8082),A  ; Store back to OP1 type
        ram:0f84 21 8c 80        LD         HL,0x808c
        ram:0f87 7e              LD         A,(HL=>DAT_ram_808c)
        ram:0f88 36 00           LD         (HL=>DAT_ram_808c),0x0
        ram:0f8a 2b              DEC        HL
        ram:0f8b c6 b0           ADD        A,0xb0
        ram:0f8d d0              RET        NC
        ram:0f8e cd 86 22        CALL       FUN_ram_2286                                     undefined FUN_ram_2286()
        ram:0f91 d0              RET        NC
        ram:0f92 23              INC        HL
        ram:0f93 36 10           LD         (HL=>DAT_ram_808c),0x10
        ram:0f95 c3 90 25        JP         FUN_ram_2590                                     undefined FUN_ram_2590()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:0f98 cd              ??         CDh
        ram:0f99 ac              ??         ACh
        ram:0f9a 0f              ??         0Fh
        ram:0f9b 3a              ??         3Ah    :
        ram:0f9c 85              ??         85h
        ram:0f9d 80              ??         80h
        ram:0f9e b7              ??         B7h
        ram:0f9f 3a              ??         3Ah    :
        ram:0fa0 82              ??         82h
        ram:0fa1 80              ??         80h
        ram:0fa2 20              ??         20h
        ram:0fa3 02              ??         02h
        ram:0fa4 f6              ??         F6h
        ram:0fa5 80              ??         80h
        ram:0fa6 ee              ??         EEh
        ram:0fa7 80              ??         80h
        ram:0fa8 32              ??         32h    2
        ram:0fa9 82              ??         82h
        ram:0faa 80              ??         80h
        ram:0fab c9              ??         C9h
        ram:0fac 3a              ??         3Ah    :
        ram:0fad 90              ??         90h
        ram:0fae 80              ??         80h
        ram:0faf b7              ??         B7h
        ram:0fb0 3a              ??         3Ah    :
        ram:0fb1 8d              ??         8Dh
        ram:0fb2 80              ??         80h
        ram:0fb3 20              ??         20h
        ram:0fb4 02              ??         02h
        ram:0fb5 f6              ??         F6h
        ram:0fb6 80              ??         80h
        ram:0fb7 ee              ??         EEh
        ram:0fb8 80              ??         80h
        ram:0fb9 32              ??         32h    2
        ram:0fba 8d              ??         8Dh
        ram:0fbb 80              ??         80h
        ram:0fbc c9              ??         C9h
        ram:0fbd e6              ??         E6h
        ram:0fbe 80              ??         80h
        ram:0fbf 32              ??         32h    2
        ram:0fc0 82              ??         82h
        ram:0fc1 80              ??         80h
        ram:0fc2 c9              ??         C9h
        ram:0fc3 cd              ??         CDh
        ram:0fc4 d1              ??         D1h
        ram:0fc5 23              ??         23h    #
        ram:0fc6 c8              ??         C8h
        ram:0fc7 af              ??         AFh
        ram:0fc8 32              ??         32h    2
        ram:0fc9 8c              ??         8Ch
        ram:0fca 80              ??         80h
        ram:0fcb cd              ??         CDh
        ram:0fcc ee              ??         EEh
        ram:0fcd 25              ??         25h    %
        ram:0fce d8              ??         D8h
        ram:0fcf 20              ??         20h
        ram:0fd0 45              ??         45h    E
        ram:0fd1 7d              ??         7Dh    }
        ram:0fd2 fe              ??         FEh
        ram:0fd3 0f              ??         0Fh
        ram:0fd4 38              ??         38h    8
        ram:0fd5 0a              ??         0Ah
        ram:0fd6 18              ??         18h
        ram:0fd7 3e              ??         3Eh    >
        ram:0fd8 3a              ??         3Ah    :
        ram:0fd9 84              ??         84h
        ram:0fda 80              ??         80h
        ram:0fdb fe              ??         FEh
        ram:0fdc fc              ??         FCh
        ram:0fdd da              ??         DAh
        ram:0fde 53              ??         53h    S
        ram:0fdf 0f              ??         0Fh
        ram:0fe0 cd              ??         CDh
        ram:0fe1 02              ??         02h
        ram:0fe2 22              ??         22h    "
        ram:0fe3 cd              ??         CDh
        ram:0fe4 88              ??         88h
        ram:0fe5 25              ??         25h    %
        ram:0fe6 18              ??         18h
        ram:0fe7 f0              ??         F0h
        ram:0fe8 3a              ??         3Ah    :
        ram:0fe9 8f              ??         8Fh
        ram:0fea 80              ??         80h
        ram:0feb ee              ??         EEh
        ram:0fec 07              ??         07h
        ram:0fed 57              ??         57h    W
        ram:0fee 3a              ??         3Ah    :
        ram:0fef 8e              ??         8Eh
        ram:0ff0 80              ??         80h
        ram:0ff1 2f              ??         2Fh    /
        ram:0ff2 5f              ??         5Fh    _
        ram:0ff3 13              ??         13h
        ram:0ff4 18              ??         18h
        ram:0ff5 04              ??         04h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_0ff6()
             undefined         A:1            <RETURN>
                             FUN_ram_0ff6                                    XREF[1]:     FUN_ram_0e5b:0e6e(c)
        ram:0ff6 ed 5b 8e 80     LD         DE,(DAT_ram_808e)
        ram:0ffa 2a 83 80        LD         HL,(DAT_ram_8083)
        ram:0ffd 7c              LD         A,H
        ram:0ffe e6 0f           AND        0xf
        ram:1000 67              LD         H,A
        ram:1001 19              ADD        HL,DE
        ram:1002 30 11           JR         NC,LAB_ram_1015
        ram:1004 11 00 f4        LD         DE,0xf400
        ram:1007 19              ADD        HL,DE
        ram:1008 da 08 0a        JP         C,LAB_ram_0a08
        ram:100b eb              EX         DE,HL
        ram:100c 3a 8d 80        LD         A,(DAT_ram_808d)
        ram:100f 21 82 80        LD         HL,0x8082
        ram:1012 ae              XOR        (HL=>DAT_ram_8082)
        ram:1013 77              LD         (HL=>DAT_ram_8082),A
        ram:1014 c9              RET
                             LAB_ram_1015                                    XREF[1]:     ram:1002(j)
        ram:1015 c1              POP        BC
        ram:1016 c3 98 21        JP         LAB_ram_2198
        ram:1019 fd              ??         FDh
        ram:101a cb              ??         CBh
        ram:101b 0e              ??         0Eh
        ram:101c f6              ??         F6h
        ram:101d 18              ??         18h
        ram:101e 0b              ??         0Bh
        ram:101f cf              ??         CFh
        ram:1020 cd              ??         CDh
        ram:1021 3e              ??         3Eh    >
        ram:1022 21              ??         21h    !
        ram:1023 fd              ??         FDh
        ram:1024 cb              ??         CBh
        ram:1025 0e              ??         0Eh
        ram:1026 b6              ??         B6h
        ram:1027 cd              ??         CDh
        ram:1028 e3              ??         E3h
        ram:1029 1e              ??         1Eh
        ram:102a 3a              ??         3Ah    :
        ram:102b 90              ??         90h
        ram:102c 80              ??         80h
        ram:102d b7              ??         B7h
        ram:102e ca              ??         CAh
        ram:102f 0c              ??         0Ch
        ram:1030 0a              ??         0Ah
        ram:1031 3a              ??         3Ah    :
        ram:1032 85              ??         85h
        ram:1033 80              ??         80h
        ram:1034 a7              ??         A7h
        ram:1035 c8              ??         C8h
        ram:1036 cd              ??         CDh
        ram:1037 e8              ??         E8h
        ram:1038 0f              ??         0Fh
        ram:1039 32              ??         32h    2
        ram:103a 98              ??         98h
        ram:103b 80              ??         80h
        ram:103c ed              ??         EDh
        ram:103d 53              ??         53h    S
        ram:103e 99              ??         99h
        ram:103f 80              ??         80h
        ram:1040 af              ??         AFh
        ram:1041 32              ??         32h    2
        ram:1042 84              ??         84h
        ram:1043 80              ??         80h
        ram:1044 06              ??         06h
        ram:1045 0f              ??         0Fh
        ram:1046 fd              ??         FDh
        ram:1047 cb              ??         CBh
        ram:1048 0e              ??         0Eh
        ram:1049 76              ??         76h    v
        ram:104a 28              ??         28h    (
        ram:104b 02              ??         02h
        ram:104c 06              ??         06h
        ram:104d 10              ??         10h
        ram:104e 21              ??         21h    !
        ram:104f 9b              ??         9Bh
        ram:1050 80              ??         80h
        ram:1051 e5              ??         E5h
        ram:1052 4f              ??         4Fh    O
        ram:1053 21              ??         21h    !
        ram:1054 97              ??         97h
        ram:1055 80              ??         80h
        ram:1056 11              ??         11h
        ram:1057 8c              ??         8Ch
        ram:1058 80              ??         80h
        ram:1059 cd              ??         CDh
        ram:105a 43              ??         43h    C
        ram:105b 23              ??         23h    #
        ram:105c 30              ??         30h    0
        ram:105d 18              ??         18h
        ram:105e 2a              ??         2Ah    *
        ram:105f 99              ??         99h
        ram:1060 80              ??         80h
        ram:1061 2b              ??         2Bh    +
        ram:1062 22              ??         22h    "
        ram:1063 99              ??         99h
        ram:1064 80              ??         80h
        ram:1065 0e              ??         0Eh
        ram:1066 00              ??         00h
        ram:1067 21              ??         21h    !
        ram:1068 97              ??         97h
        ram:1069 80              ??         80h
        ram:106a 11              ??         11h
        ram:106b 8c              ??         8Ch
        ram:106c 80              ??         80h
        ram:106d cd              ??         CDh
        ram:106e ce              ??         CEh
        ram:106f 22              ??         22h    "
        ram:1070 cd              ??         CDh
        ram:1071 14              ??         14h
        ram:1072 22              ??         22h    "
        ram:1073 77              ??         77h    w
        ram:1074 18              ??         18h
        ram:1075 01              ??         01h
        ram:1076 0c              ??         0Ch
        ram:1077 11              ??         11h
        ram:1078 8c              ??         8Ch
        ram:1079 80              ??         80h
        ram:107a 2a              ??         2Ah    *
        ram:107b 96              ??         96h
        ram:107c 80              ??         80h
        ram:107d 1a              ??         1Ah
        ram:107e 94              ??         94h
        ram:107f 27              ??         27h    '
        ram:1080 12              ??         12h
        ram:1081 1b              ??         1Bh
        ram:1082 1a              ??         1Ah
        ram:1083 9d              ??         9Dh
        ram:1084 27              ??         27h    '
        ram:1085 12              ??         12h
        ram:1086 1b              ??         1Bh
        ram:1087 2a              ??         2Ah    *
        ram:1088 94              ??         94h
        ram:1089 80              ??         80h
        ram:108a 1a              ??         1Ah
        ram:108b 9c              ??         9Ch
        ram:108c 27              ??         27h    '
        ram:108d 12              ??         12h
        ram:108e 1b              ??         1Bh
        ram:108f 1a              ??         1Ah
        ram:1090 9d              ??         9Dh
        ram:1091 27              ??         27h    '
        ram:1092 12              ??         12h
        ram:1093 1b              ??         1Bh
        ram:1094 2a              ??         2Ah    *
        ram:1095 92              ??         92h
        ram:1096 80              ??         80h
        ram:1097 1a              ??         1Ah
        ram:1098 9c              ??         9Ch
        ram:1099 27              ??         27h    '
        ram:109a 12              ??         12h
        ram:109b 1b              ??         1Bh
        ram:109c 1a              ??         1Ah
        ram:109d 9d              ??         9Dh
        ram:109e 27              ??         27h    '
        ram:109f 12              ??         12h
        ram:10a0 1b              ??         1Bh
        ram:10a1 2a              ??         2Ah    *
        ram:10a2 90              ??         90h
        ram:10a3 80              ??         80h
        ram:10a4 1a              ??         1Ah
        ram:10a5 9c              ??         9Ch
        ram:10a6 27              ??         27h    '
        ram:10a7 12              ??         12h
        ram:10a8 1b              ??         1Bh
        ram:10a9 1a              ??         1Ah
        ram:10aa 9d              ??         9Dh
        ram:10ab 27              ??         27h    '
        ram:10ac 12              ??         12h
        ram:10ad d2              ??         D2h
        ram:10ae 76              ??         76h    v
        ram:10af 10              ??         10h
        ram:10b0 1b              ??         1Bh
        ram:10b1 eb              ??         EBh
        ram:10b2 35              ??         35h    5
        ram:10b3 f2              ??         F2h
        ram:10b4 76              ??         76h    v
        ram:10b5 10              ??         10h
        ram:10b6 fd              ??         FDh
        ram:10b7 cb              ??         CBh
        ram:10b8 0e              ??         0Eh
        ram:10b9 76              ??         76h    v
        ram:10ba 28              ??         28h    (
        ram:10bb 06              ??         06h
        ram:10bc cb              ??         CBh
        ram:10bd 40              ??         40h    @
        ram:10be 28              ??         28h    (
        ram:10bf 06              ??         06h
        ram:10c0 18              ??         18h
        ram:10c1 0f              ??         0Fh
        ram:10c2 cb              ??         CBh
        ram:10c3 40              ??         40h    @
        ram:10c4 28              ??         28h    (
        ram:10c5 0b              ??         0Bh
        ram:10c6 79              ??         79h    y
        ram:10c7 87              ??         87h
        ram:10c8 87              ??         87h
        ram:10c9 87              ??         87h
        ram:10ca 87              ??         87h
        ram:10cb 4f              ??         4Fh    O
        ram:10cc 05              ??         05h
        ram:10cd 28              ??         28h    (
        ram:10ce 0d              ??         0Dh
        ram:10cf 18              ??         18h
        ram:10d0 96              ??         96h
        ram:10d1 e1              ??         E1h
        ram:10d2 71              ??         71h    q
        ram:10d3 05              ??         05h
        ram:10d4 28              ??         28h    (
        ram:10d5 08              ??         08h
        ram:10d6 23              ??         23h    #
        ram:10d7 e5              ??         E5h
        ram:10d8 0e              ??         0Eh
        ram:10d9 00              ??         00h
        ram:10da 18              ??         18h
        ram:10db 8b              ??         8Bh
        ram:10dc e1              ??         E1h
        ram:10dd 71              ??         71h    q
        ram:10de cd              ??         CDh
        ram:10df 60              ??         60h    `
        ram:10e0 20              ??         20h
        ram:10e1 fd              ??         FDh
        ram:10e2 cb              ??         CBh
        ram:10e3 0e              ??         0Eh
        ram:10e4 76              ??         76h    v
        ram:10e5 ca              ??         CAh
        ram:10e6 53              ??         53h    S
        ram:10e7 0f              ??         0Fh
        ram:10e8 c3              ??         C3h
        ram:10e9 d5              ??         D5h
        ram:10ea 13              ??         13h
        ram:10eb fd              ??         FDh
        ram:10ec cb              ??         CBh
        ram:10ed 0e              ??         0Eh
        ram:10ee f6              ??         F6h
        ram:10ef cd              ??         CDh
        ram:10f0 68              ??         68h    h
        ram:10f1 25              ??         25h    %
        ram:10f2 c2              ??         C2h
        ram:10f3 14              ??         14h
        ram:10f4 0a              ??         0Ah
        ram:10f5 18              ??         18h
        ram:10f6 0c              ??         0Ch
        ram:10f7 cd              ??         CDh
        ram:10f8 68              ??         68h    h
        ram:10f9 25              ??         25h    %
        ram:10fa 20              ??         20h
        ram:10fb f6              ??         F6h
        ram:10fc fd              ??         FDh
        ram:10fd cb              ??         CBh
        ram:10fe 0e              ??         0Eh
        ram:10ff b6              ??         B6h
        ram:1100 cd              ??         CDh
        ram:1101 e3              ??         E3h
        ram:1102 1e              ??         1Eh
        ram:1103 cd              ??         CDh
        ram:1104 d1              ??         D1h
        ram:1105 23              ??         23h    #
        ram:1106 c8              ??         C8h
        ram:1107 cd              ??         CDh
        ram:1108 ad              ??         ADh
        ram:1109 21              ??         21h    !
        ram:110a ed              ??         EDh
        ram:110b 4b              ??         4Bh    K
        ram:110c 83              ??         83h
        ram:110d 80              ??         80h
        ram:110e af              ??         AFh
        ram:110f 21              ??         21h    !
        ram:1110 84              ??         84h
        ram:1111 80              ??         80h
        ram:1112 cb              ??         CBh
        ram:1113 38              ??         38h    8
        ram:1114 cb              ??         CBh
        ram:1115 19              ??         19h
        ram:1116 ed              ??         EDh
        ram:1117 43              ??         43h    C
        ram:1118 99              ??         99h
        ram:1119 80              ??         80h
        ram:111a dc              ??         DCh
        ram:111b 14              ??         14h
        ram:111c 22              ??         22h    "
        ram:111d 77              ??         77h    w
        ram:111e cd              ??         CDh
        ram:111f a8              ??         A8h
        ram:1120 21              ??         21h    !
        ram:1121 11              ??         11h
        ram:1122 9b              ??         9Bh
        ram:1123 80              ??         80h
        ram:1124 3e              ??         3Eh    >
        ram:1125 10              ??         10h
        ram:1126 32              ??         32h    2
        ram:1127 8d              ??         8Dh
        ram:1128 80              ??         80h
        ram:1129 0e              ??         0Eh
        ram:112a 00              ??         00h
        ram:112b 21              ??         21h    !
        ram:112c 90              ??         90h
        ram:112d 80              ??         80h
        ram:112e d5              ??         D5h
        ram:112f e5              ??         E5h
        ram:1130 06              ??         06h
        ram:1131 01              ??         01h
        ram:1132 cd              ??         CDh
        ram:1133 95              ??         95h
        ram:1134 22              ??         22h    "
        ram:1135 21              ??         21h    !
        ram:1136 96              ??         96h
        ram:1137 80              ??         80h
        ram:1138 11              ??         11h
        ram:1139 8b              ??         8Bh
        ram:113a 80              ??         80h
        ram:113b cd              ??         CDh
        ram:113c 43              ??         43h    C
        ram:113d 23              ??         23h    #
        ram:113e 38              ??         38h    8
        ram:113f 0b              ??         0Bh
        ram:1140 0c              ??         0Ch
        ram:1141 e1              ??         E1h
        ram:1142 e5              ??         E5h
        ram:1143 06              ??         06h
        ram:1144 02              ??         02h
        ram:1145 cd              ??         CDh
        ram:1146 95              ??         95h
        ram:1147 22              ??         22h    "
        ram:1148 c3              ??         C3h
        ram:1149 35              ??         35h    5
        ram:114a 11              ??         11h
        ram:114b 21              ??         21h    !
        ram:114c 8d              ??         8Dh
        ram:114d 80              ??         80h
        ram:114e 35              ??         35h    5
        ram:114f 28              ??         28h    (
        ram:1150 3a              ??         3Ah    :
        ram:1151 79              ??         79h    y
        ram:1152 cb              ??         CBh
        ram:1153 46              ??         46h    F
        ram:1154 c4              ??         C4h
        ram:1155 c7              ??         C7h
        ram:1156 21              ??         21h    !
        ram:1157 c1              ??         C1h
        ram:1158 d1              ??         D1h
        ram:1159 12              ??         12h
        ram:115a cb              ??         CBh
        ram:115b 46              ??         46h    F
        ram:115c 20              ??         20h
        ram:115d 03              ??         03h
        ram:115e 03              ??         03h
        ram:115f 13              ??         13h
        ram:1160 af              ??         AFh
        ram:1161 d5              ??         D5h
        ram:1162 c5              ??         C5h
        ram:1163 4f              ??         4Fh    O
        ram:1164 21              ??         21h    !
        ram:1165 96              ??         96h
        ram:1166 80              ??         80h
        ram:1167 11              ??         11h
        ram:1168 8b              ??         8Bh
        ram:1169 80              ??         80h
        ram:116a b7              ??         B7h
        ram:116b cd              ??         CDh
        ram:116c ce              ??         CEh
        ram:116d 22              ??         22h    "
        ram:116e 21              ??         21h    !
        ram:116f 83              ??         83h
        ram:1170 80              ??         80h
        ram:1171 cd              ??         CDh
        ram:1172 02              ??         02h
        ram:1173 22              ??         22h    "
        ram:1174 ed              ??         EDh
        ram:1175 6f              ??         6Fh    o
        ram:1176 c5              ??         C5h
        ram:1177 cd              ??         CDh
        ram:1178 cf              ??         CFh
        ram:1179 20              ??         20h
        ram:117a c1              ??         C1h
        ram:117b 21              ??         21h    !
        ram:117c 96              ??         96h
        ram:117d 80              ??         80h
        ram:117e 54              ??         54h    T
        ram:117f 5d              ??         5Dh    ]
        ram:1180 cd              ??         CDh
        ram:1181 d4              ??         D4h
        ram:1182 22              ??         22h    "
        ram:1183 36              ??         36h    6
        ram:1184 00              ??         00h
        ram:1185 30              ??         30h    0
        ram:1186 01              ??         01h
        ram:1187 34              ??         34h    4
        ram:1188 e1              ??         E1h
        ram:1189 18              ??         18h
        ram:118a a4              ??         A4h
        ram:118b f1              ??         F1h
        ram:118c e1              ??         E1h
        ram:118d cd              ??         CDh
        ram:118e c6              ??         C6h
        ram:118f 21              ??         21h    !
        ram:1190 77              ??         77h    w
        ram:1191 3a              ??         3Ah    :
        ram:1192 82              ??         82h
        ram:1193 80              ??         80h
        ram:1194 cd              ??         CDh
        ram:1195 60              ??         60h    `
        ram:1196 20              ??         20h
        ram:1197 32              ??         32h    2
        ram:1198 82              ??         82h
        ram:1199 80              ??         80h
        ram:119a 3a              ??         3Ah    :
        ram:119b 84              ??         84h
        ram:119c 80              ??         80h
        ram:119d c6              ??         C6h
        ram:119e 7e              ??         7Eh    ~
        ram:119f 32              ??         32h    2
        ram:11a0 84              ??         84h
        ram:11a1 80              ??         80h
        ram:11a2 cd              ??         CDh
        ram:11a3 68              ??         68h    h
        ram:11a4 25              ??         25h    %
        ram:11a5 28              ??         28h    (
        ram:11a6 15              ??         15h
        ram:11a7 cf              ??         CFh
        ram:11a8 cd              ??         CDh
        ram:11a9 98              ??         98h
        ram:11aa 21              ??         21h    !
        ram:11ab 3e              ??         3Eh    >
        ram:11ac 01              ??         01h
        ram:11ad 32              ??         32h    2
        ram:11ae 8d              ??         8Dh
        ram:11af 80              ??         80h
        ram:11b0 fd              ??         FDh
        ram:11b1 cb              ??         CBh
        ram:11b2 0e              ??         0Eh
        ram:11b3 76              ??         76h    v
        ram:11b4 20              ??         20h
        ram:11b5 03              ??         03h
        ram:11b6 cd              ??         CDh
        ram:11b7 53              ??         53h    S
        ram:11b8 0f              ??         0Fh
        ram:11b9 c3              ??         C3h
        ram:11ba 66              ??         66h    f
        ram:11bb 1f              ??         1Fh
        ram:11bc fd              ??         FDh
        ram:11bd cb              ??         CBh
        ram:11be 0e              ??         0Eh
        ram:11bf 76              ??         76h    v
        ram:11c0 c0              ??         C0h
        ram:11c1 c3              ??         C3h
        ram:11c2 4f              ??         4Fh    O
        ram:11c3 0f              ??         0Fh
        ram:11c4 cd              ??         CDh
        ram:11c5 e0              ??         E0h
        ram:11c6 11              ??         11h
        ram:11c7 cd              ??         CDh
        ram:11c8 ba              ??         BAh
        ram:11c9 23              ??         23h    #
        ram:11ca cd              ??         CDh
        ram:11cb e0              ??         E0h
        ram:11cc 11              ??         11h
        ram:11cd cd              ??         CDh
        ram:11ce ba              ??         BAh
        ram:11cf 23              ??         23h    #
        ram:11d0 c3              ??         C3h
        ram:11d1 66              ??         66h    f
        ram:11d2 1f              ??         1Fh
        ram:11d3 d5              ??         D5h
        ram:11d4 cd              ??         CDh
        ram:11d5 fe              ??         FEh
        ram:11d6 11              ??         11h
        ram:11d7 cd              ??         CDh
        ram:11d8 ba              ??         BAh
        ram:11d9 23              ??         23h    #
        ram:11da d1              ??         D1h
        ram:11db cd              ??         CDh
        ram:11dc fe              ??         FEh
        ram:11dd 11              ??         11h
        ram:11de 18              ??         18h
        ram:11df ed              ??         EDh
        ram:11e0 2a              ??         2Ah    *
        ram:11e1 83              ??         83h
        ram:11e2 80              ??         80h
        ram:11e3 e5              ??         E5h
        ram:11e4 21              ??         21h    !
        ram:11e5 00              ??         00h
        ram:11e6 fc              ??         FCh
        ram:11e7 22              ??         22h    "
        ram:11e8 83              ??         83h
        ram:11e9 80              ??         80h
        ram:11ea 16              ??         16h
        ram:11eb 0b              ??         0Bh
        ram:11ec cd              ??         CDh
        ram:11ed fe              ??         FEh
        ram:11ee 11              ??         11h
        ram:11ef c1              ??         C1h
        ram:11f0 21              ??         21h    !
        ram:11f1 83              ??         83h
        ram:11f2 80              ??         80h
        ram:11f3 7e              ??         7Eh    ~
        ram:11f4 71              ??         71h    q
        ram:11f5 23              ??         23h    #
        ram:11f6 70              ??         70h    p
        ram:11f7 b7              ??         B7h
        ram:11f8 c8              ??         C8h
        ram:11f9 c3              ??         C3h
        ram:11fa 90              ??         90h
        ram:11fb 25              ??         25h    %
        ram:11fc 16              ??         16h
        ram:11fd 00              ??         00h
        ram:11fe cd              ??         CDh
        ram:11ff ee              ??         EEh
        ram:1200 25              ??         25h    %
        ram:1201 30              ??         30h    0
        ram:1202 11              ??         11h
        ram:1203 fe              ??         FEh
        ram:1204 fb              ??         FBh
        ram:1205 c2              ??         C2h
        ram:1206 98              ??         98h
        ram:1207 21              ??         21h    !
        ram:1208 7a              ??         7Ah    z
        ram:1209 3c              ??         3Ch    <
        ram:120a 85              ??         85h
        ram:120b d2              ??         D2h
        ram:120c 98              ??         98h
        ram:120d 21              ??         21h    !
        ram:120e 2f              ??         2Fh    /
        ram:120f e6              ??         E6h
        ram:1210 0f              ??         0Fh
        ram:1211 3d              ??         3Dh    =
        ram:1212 18              ??         18h
        ram:1213 06              ??         06h
        ram:1214 c0              ??         C0h
        ram:1215 3e              ??         3Eh    >
        ram:1216 0d              ??         0Dh
        ram:1217 92              ??         92h
        ram:1218 95              ??         95h
        ram:1219 d8              ??         D8h
        ram:121a cb              ??         CBh
        ram:121b 3f              ??         3Fh    ?
        ram:121c 21              ??         21h    !
        ram:121d 8b              ??         8Bh
        ram:121e 80              ??         80h
        ram:121f 28              ??         28h    (
        ram:1220 07              ??         07h
        ram:1221 47              ??         47h    G
        ram:1222 7e              ??         7Eh    ~
        ram:1223 36              ??         36h    6
        ram:1224 00              ??         00h
        ram:1225 2b              ??         2Bh    +
        ram:1226 10              ??         10h
        ram:1227 fa              ??         FAh
        ram:1228 30              ??         30h    0
        ram:1229 0e              ??         0Eh
        ram:122a 7e              ??         7Eh    ~
        ram:122b 47              ??         47h    G
        ram:122c e6              ??         E6h
        ram:122d f0              ??         F0h
        ram:122e 77              ??         77h    w
        ram:122f 78              ??         78h    x
        ram:1230 e6              ??         E6h
        ram:1231 0f              ??         0Fh
        ram:1232 fe              ??         FEh
        ram:1233 05              ??         05h
        ram:1234 06              ??         06h
        ram:1235 10              ??         10h
        ram:1236 18              ??         18h
        ram:1237 04              ??         04h
        ram:1238 fe              ??         FEh
        ram:1239 50              ??         50h    P
        ram:123a 06              ??         06h
        ram:123b 01              ??         01h
        ram:123c 38              ??         38h    8
        ram:123d 27              ??         27h    '
        ram:123e 3a              ??         3Ah    :
        ram:123f 82              ??         82h
        ram:1240 80              ??         80h
        ram:1241 f5              ??         F5h
        ram:1242 af              ??         AFh
        ram:1243 32              ??         32h    2
        ram:1244 82              ??         82h
        ram:1245 80              ??         80h
        ram:1246 ed              ??         EDh
        ram:1247 5b              ??         5Bh    [
        ram:1248 83              ??         83h
        ram:1249 80              ??         80h
        ram:124a 78              ??         78h    x
        ram:124b cd              ??         CDh
        ram:124c 9e              ??         9Eh
        ram:124d 22              ??         22h    "
        ram:124e f1              ??         F1h
        ram:124f e6              ??         E6h
        ram:1250 80              ??         80h
        ram:1251 32              ??         32h    2
        ram:1252 82              ??         82h
        ram:1253 80              ??         80h
        ram:1254 3a              ??         3Ah    :
        ram:1255 84              ??         84h
        ram:1256 80              ??         80h
        ram:1257 ed              ??         EDh
        ram:1258 53              ??         53h    S
        ram:1259 83              ??         83h
        ram:125a 80              ??         80h
        ram:125b ba              ??         BAh
        ram:125c c8              ??         C8h
        ram:125d 21              ??         21h    !
        ram:125e 85              ??         85h
        ram:125f 80              ??         80h
        ram:1260 36              ??         36h    6
        ram:1261 10              ??         10h
        ram:1262 c3              ??         C3h
        ram:1263 90              ??         90h
        ram:1264 25              ??         25h    %
        ram:1265 cd              ??         CDh
        ram:1266 d1              ??         D1h
        ram:1267 23              ??         23h    #
        ram:1268 c2              ??         C2h
        ram:1269 58              ??         58h    X
        ram:126a 1f              ??         1Fh
        ram:126b c3              ??         C3h
        ram:126c 98              ??         98h
        ram:126d 21              ??         21h    !
        ram:126e cd              ??         CDh
        ram:126f 68              ??         68h    h
        ram:1270 25              ??         25h    %
        ram:1271 28              ??         28h    (
        ram:1272 0e              ??         0Eh
        ram:1273 c3              ??         C3h
        ram:1274 14              ??         14h
        ram:1275 0a              ??         0Ah
        ram:1276 cd              ??         CDh
        ram:1277 68              ??         68h    h
        ram:1278 25              ??         25h    %
        ram:1279 28              ??         28h    (
        ram:127a 06              ??         06h
        ram:127b cd              ??         CDh
        ram:127c 93              ??         93h
        ram:127d 21              ??         21h    !
        ram:127e c3              ??         C3h
        ram:127f fd              ??         FDh
        ram:1280 3d              ??         3Dh    =
        ram:1281 0e              ??         0Eh
        ram:1282 02              ??         02h
        ram:1283 18              ??         18h
        ram:1284 0b              ??         0Bh
        ram:1285 0e              ??         0Eh
        ram:1286 00              ??         00h
        ram:1287 18              ??         18h
        ram:1288 07              ??         07h
        ram:1289 0e              ??         0Eh
        ram:128a 00              ??         00h
        ram:128b cd              ??         CDh
        ram:128c 68              ??         68h    h
        ram:128d 25              ??         25h    %
        ram:128e 20              ??         20h
        ram:128f e3              ??         E3h
        ram:1290 cd              ??         CDh
        ram:1291 e3              ??         E3h
        ram:1292 1e              ??         1Eh
        ram:1293 cd              ??         CDh
        ram:1294 d1              ??         D1h
        ram:1295 23              ??         23h    #
        ram:1296 ca              ??         CAh
        ram:1297 14              ??         14h
        ram:1298 0a              ??         0Ah
        ram:1299 cd              ??         CDh
        ram:129a 68              ??         68h    h
        ram:129b 25              ??         25h    %
        ram:129c 28              ??         28h    (
        ram:129d 06              ??         06h
        ram:129e cd              ??         CDh
        ram:129f 93              ??         93h
        ram:12a0 21              ??         21h    !
        ram:12a1 c3              ??         C3h
        ram:12a2 03              ??         03h
        ram:12a3 3e              ??         3Eh    >
        ram:12a4 c5              ??         C5h
        ram:12a5 cd              ??         CDh
        ram:12a6 88              ??         88h
        ram:12a7 26              ??         26h    &
        ram:12a8 30              ??         30h    0
        ram:12a9 4c              ??         4Ch    L
        ram:12aa cd              ??         CDh
        ram:12ab f5              ??         F5h
        ram:12ac 1f              ??         1Fh
        ram:12ad cd              ??         CDh
        ram:12ae 6e              ??         6Eh    n
        ram:12af 0d              ??         0Dh
        ram:12b0 cd              ??         CDh
        ram:12b1 92              ??         92h
        ram:12b2 26              ??         26h    &
        ram:12b3 38              ??         38h    8
        ram:12b4 07              ??         07h
        ram:12b5 20              ??         20h
        ram:12b6 3c              ??         3Ch    <
        ram:12b7 cd              ??         CDh
        ram:12b8 68              ??         68h    h
        ram:12b9 25              ??         25h    %
        ram:12ba 20              ??         20h
        ram:12bb 37              ??         37h    7
        ram:12bc cd              ??         CDh
        ram:12bd 21              ??         21h    !
        ram:12be 20              ??         20h
        ram:12bf cd              ??         CDh
        ram:12c0 5b              ??         5Bh    [
        ram:12c1 21              ??         21h    !
        ram:12c2 f7              ??         F7h
        ram:12c3 cf              ??         CFh
        ram:12c4 cd              ??         CDh
        ram:12c5 60              ??         60h    `
        ram:12c6 20              ??         20h
        ram:12c7 cd              ??         CDh
        ram:12c8 23              ??         23h    #
        ram:12c9 10              ??         10h
        ram:12ca cd              ??         CDh
        ram:12cb 66              ??         66h    f
        ram:12cc 21              ??         21h    !
        ram:12cd 3a              ??         3Ah    :
        ram:12ce 82              ??         82h
        ram:12cf 80              ??         80h
        ram:12d0 f5              ??         F5h
        ram:12d1 cd              ??         CDh
        ram:12d2 88              ??         88h
        ram:12d3 25              ??         25h    %
        ram:12d4 3e              ??         3Eh    >
        ram:12d5 80              ??         80h
        ram:12d6 cd              ??         CDh
        ram:12d7 e4              ??         E4h
        ram:12d8 1b              ??         1Bh
        ram:12d9 cd              ??         CDh
        ram:12da 66              ??         66h    f
        ram:12db 0d              ??         0Dh
        ram:12dc f1              ??         F1h
        ram:12dd c1              ??         C1h
        ram:12de e6              ??         E6h
        ram:12df 80              ??         80h
        ram:12e0 32              ??         32h    2
        ram:12e1 82              ??         82h
        ram:12e2 80              ??         80h
        ram:12e3 cb              ??         CBh
        ram:12e4 49              ??         49h    I
        ram:12e5 c0              ??         C0h
        ram:12e6 c5              ??         C5h
        ram:12e7 3e              ??         3Eh    >
        ram:12e8 03              ??         03h
        ram:12e9 cd              ??         CDh
        ram:12ea 32              ??         32h    2
        ram:12eb 0e              ??         0Eh
        ram:12ec c1              ??         C1h
        ram:12ed cb              ??         CBh
        ram:12ee 41              ??         41h    A
        ram:12ef c0              ??         C0h
        ram:12f0 c3              ??         C3h
        ram:12f1 7c              ??         7Ch    |
        ram:12f2 0f              ??         0Fh
        ram:12f3 cd              ??         CDh
        ram:12f4 56              ??         56h    V
        ram:12f5 20              ??         20h
        ram:12f6 cd              ??         CDh
        ram:12f7 a8              ??         A8h
        ram:12f8 21              ??         21h    !
        ram:12f9 32              ??         32h    2
        ram:12fa 98              ??         98h
        ram:12fb 80              ??         80h
        ram:12fc cd              ??         CDh
        ram:12fd 2b              ??         2Bh    +
        ram:12fe 24              ??         24h    $
        ram:12ff ca              ??         CAh
        ram:1300 69              ??         69h    i
        ram:1301 13              ??         13h
        ram:1302 cd              ??         CDh
        ram:1303 6c              ??         6Ch    l
        ram:1304 24              ??         24h    $
        ram:1305 18              ??         18h
        ram:1306 03              ??         03h
        ram:1307 cd              ??         CDh
        ram:1308 a2              ??         A2h
        ram:1309 22              ??         22h    "
        ram:130a 3a              ??         3Ah    :
        ram:130b 98              ??         98h
        ram:130c 80              ??         80h
        ram:130d cd              ??         CDh
        ram:130e 3b              ??         3Bh    ;
        ram:130f 22              ??         22h    "
        ram:1310 cd              ??         CDh
        ram:1311 c8              ??         C8h
        ram:1312 22              ??         22h    "
        ram:1313 d2              ??         D2h
        ram:1314 07              ??         07h
        ram:1315 13              ??         13h
        ram:1316 cd              ??         CDh
        ram:1317 2f              ??         2Fh    /
        ram:1318 24              ??         24h    $
        ram:1319 28              ??         28h    (
        ram:131a 49              ??         49h    I
        ram:131b cd              ??         CDh
        ram:131c 3d              ??         3Dh    =
        ram:131d 23              ??         23h    #
        ram:131e 21              ??         21h    !
        ram:131f 98              ??         98h
        ram:1320 80              ??         80h
        ram:1321 7e              ??         7Eh    ~
        ram:1322 34              ??         34h    4
        ram:1323 e6              ??         E6h
        ram:1324 08              ??         08h
        ram:1325 28              ??         28h    (
        ram:1326 db              ??         DBh
        ram:1327 11              ??         11h
        ram:1328 9e              ??         9Eh
        ram:1329 80              ??         80h
        ram:132a af              ??         AFh
        ram:132b 12              ??         12h
        ram:132c 21              ??         21h    !
        ram:132d 8c              ??         8Ch
        ram:132e 80              ??         80h
        ram:132f cd              ??         CDh
        ram:1330 5b              ??         5Bh    [
        ram:1331 23              ??         23h    #
        ram:1332 13              ??         13h
        ram:1333 1a              ??         1Ah
        ram:1334 cd              ??         CDh
        ram:1335 bf              ??         BFh
        ram:1336 21              ??         21h    !
        ram:1337 28              ??         28h    (
        ram:1338 0c              ??         0Ch
        ram:1339 d5              ??         D5h
        ram:133a cd              ??         CDh
        ram:133b 6b              ??         6Bh    k
        ram:133c 24              ??         24h    $
        ram:133d cd              ??         CDh
        ram:133e a2              ??         A2h
        ram:133f 22              ??         22h    "
        ram:1340 0d              ??         0Dh
        ram:1341 c2              ??         C2h
        ram:1342 3d              ??         3Dh    =
        ram:1343 13              ??         13h
        ram:1344 d1              ??         D1h
        ram:1345 21              ??         21h    !
        ram:1346 98              ??         98h
        ram:1347 80              ??         80h
        ram:1348 34              ??         34h    4
        ram:1349 cb              ??         CBh
        ram:134a 66              ??         66h    f
        ram:134b 20              ??         20h
        ram:134c 25              ??         25h    %
        ram:134d 1a              ??         1Ah
        ram:134e e6              ??         E6h
        ram:134f 0f              ??         0Fh
        ram:1350 28              ??         28h    (
        ram:1351 0c              ??         0Ch
        ram:1352 d5              ??         D5h
        ram:1353 cd              ??         CDh
        ram:1354 6b              ??         6Bh    k
        ram:1355 24              ??         24h    $
        ram:1356 cd              ??         CDh
        ram:1357 a2              ??         A2h
        ram:1358 22              ??         22h    "
        ram:1359 0d              ??         0Dh
        ram:135a c2              ??         C2h
        ram:135b 56              ??         56h    V
        ram:135c 13              ??         13h
        ram:135d d1              ??         D1h
        ram:135e 21              ??         21h    !
        ram:135f 98              ??         98h
        ram:1360 80              ??         80h
        ram:1361 34              ??         34h    4
        ram:1362 18              ??         18h
        ram:1363 ce              ??         CEh
        ram:1364 cd              ??         CDh
        ram:1365 a2              ??         A2h
        ram:1366 22              ??         22h    "
        ram:1367 18              ??         18h
        ram:1368 09              ??         09h
        ram:1369 cd              ??         CDh
        ram:136a ee              ??         EEh
        ram:136b 25              ??         25h    %
        ram:136c 30              ??         30h    0
        ram:136d 04              ??         04h
        ram:136e 2b              ??         2Bh    +
        ram:136f 22              ??         22h    "
        ram:1370 83              ??         83h
        ram:1371 80              ??         80h
        ram:1372 cd              ??         CDh
        ram:1373 ee              ??         EEh
        ram:1374 25              ??         25h    %
        ram:1375 30              ??         30h    0
        ram:1376 0d              ??         0Dh
        ram:1377 3e              ??         3Eh    >
        ram:1378 80              ??         80h
        ram:1379 32              ??         32h    2
        ram:137a 82              ??         82h
        ram:137b 80              ??         80h
        ram:137c cd              ??         CDh
        ram:137d 90              ??         90h
        ram:137e 25              ??         25h    %
        ram:137f cd              ??         CDh
        ram:1380 c7              ??         C7h
        ram:1381 20              ??         20h
        ram:1382 18              ??         18h
        ram:1383 0a              ??         0Ah
        ram:1384 af              ??         AFh
        ram:1385 32              ??         32h    2
        ram:1386 82              ??         82h
        ram:1387 80              ??         80h
        ram:1388 cd              ??         CDh
        ram:1389 9e              ??         9Eh
        ram:138a 21              ??         21h    !
        ram:138b cd              ??         CDh
        ram:138c 30              ??         30h    0
        ram:138d 23              ??         23h    #
        ram:138e cd              ??         CDh
        ram:138f fb              ??         FBh
        ram:1390 24              ??         24h    $
        ram:1391 11              ??         11h
        ram:1392 02              ??         02h
        ram:1393 fc              ??         FCh
        ram:1394 3a              ??         3Ah    :
        ram:1395 83              ??         83h
        ram:1396 80              ??         80h
        ram:1397 b7              ??         B7h
        ram:1398 20              ??         20h
        ram:1399 13              ??         13h
        ram:139a 1b              ??         1Bh
        ram:139b 3a              ??         3Ah    :
        ram:139c 84              ??         84h
        ram:139d 80              ??         80h
        ram:139e e6              ??         E6h
        ram:139f f0              ??         F0h
        ram:13a0 20              ??         20h
        ram:13a1 11              ??         11h
        ram:13a2 1b              ??         1Bh
        ram:13a3 3a              ??         3Ah    :
        ram:13a4 84              ??         84h
        ram:13a5 80              ??         80h
        ram:13a6 e6              ??         E6h
        ram:13a7 0f              ??         0Fh
        ram:13a8 20              ??         20h
        ram:13a9 0c              ??         0Ch
        ram:13aa 1b              ??         1Bh
        ram:13ab 18              ??         18h
        ram:13ac 0c              ??         0Ch
        ram:13ad 21              ??         21h    !
        ram:13ae 84              ??         84h
        ram:13af 80              ??         80h
        ram:13b0 cd              ??         CDh
        ram:13b1 db              ??         DBh
        ram:13b2 21              ??         21h    !
        ram:13b3 cd              ??         CDh
        ram:13b4 d7              ??         D7h
        ram:13b5 21              ??         21h    !
        ram:13b6 cd              ??         CDh
        ram:13b7 d7              ??         D7h
        ram:13b8 21              ??         21h    !
        ram:13b9 ed              ??         EDh
        ram:13ba 53              ??         53h    S
        ram:13bb 83              ??         83h
        ram:13bc 80              ??         80h
        ram:13bd c1              ??         C1h
        ram:13be cb              ??         CBh
        ram:13bf 41              ??         41h    A
        ram:13c0 20              ??         20h
        ram:13c1 13              ??         13h
        ram:13c2 c5              ??         C5h
        ram:13c3 cd              ??         CDh
        ram:13c4 53              ??         53h    S
        ram:13c5 0f              ??         0Fh
        ram:13c6 c1              ??         C1h
        ram:13c7 cb              ??         CBh
        ram:13c8 49              ??         49h    I
        ram:13c9 c8              ??         C8h
        ram:13ca 3e              ??         3Eh    >
        ram:13cb 06              ??         06h
        ram:13cc cd              ??         CDh
        ram:13cd 32              ??         32h    2
        ram:13ce 0e              ??         0Eh
        ram:13cf c3              ??         C3h
        ram:13d0 7c              ??         7Ch    |
        ram:13d1 0f              ??         0Fh
        ram:13d2 cd              ??         CDh
        ram:13d3 73              ??         73h    s
        ram:13d4 25              ??         25h    %
                             LAB_ram_13d5                                    XREF[2]:     ram:0e12(j), ram:0e2a(j)
        ram:13d5 0e 11           LD         C,0x11
                             LAB_ram_13d7                                    XREF[1]:     ram:13e6(j)
        ram:13d7 3a 85 80        LD         A,(DAT_ram_8085)
        ram:13da e6 f0           AND        0xf0
        ram:13dc c0              RET        NZ
        ram:13dd 0d              DEC        C
        ram:13de 28 09           JR         Z,LAB_ram_13e9
        ram:13e0 cd 14 22        CALL       FUN_ram_2214                                     undefined FUN_ram_2214()
        ram:13e3 cd 88 25        CALL       FUN_ram_2588                                     undefined FUN_ram_2588()
        ram:13e6 30 ef           JR         NC,LAB_ram_13d7
        ram:13e8 c9              RET
                             LAB_ram_13e9                                    XREF[1]:     ram:13de(j)
        ram:13e9 c3 98 21        JP         LAB_ram_2198
        ram:13ec 30              ??         30h    0
        ram:13ed 10              ??         10h
        ram:13ee 29              ??         29h    )
        ram:13ef 99              ??         99h
        ram:13f0 56              ??         56h    V
        ram:13f1 63              ??         63h    c
        ram:13f2 98              ??         98h
        ram:13f3 12              ??         12h
        ram:13f4 04              ??         04h
        ram:13f5 13              ??         13h
        ram:13f6 92              ??         92h
        ram:13f7 68              ??         68h    h
        ram:13f8 51              ??         51h    Q
        ram:13f9 58              ??         58h    X
        ram:13fa 22              ??         22h    "
        ram:13fb 50              ??         50h    P
        ram:13fc 00              ??         00h
        ram:13fd 43              ??         43h    C
        ram:13fe 21              ??         21h    !
        ram:13ff 37              ??         37h    7
        ram:1400 37              ??         37h    7
        ram:1401 82              ??         82h
        ram:1402 64              ??         64h    d
        ram:1403 26              ??         26h    &
        ram:1404 00              ??         00h
        ram:1405 04              ??         04h
        ram:1406 34              ??         34h    4
        ram:1407 07              ??         07h
        ram:1408 74              ??         74h    t
        ram:1409 79              ??         79h    y
        ram:140a 31              ??         31h    1
        ram:140b 86              ??         86h
        ram:140c 00              ??         00h
        ram:140d 00              ??         00h
        ram:140e 43              ??         43h    C
        ram:140f 42              ??         42h    B
        ram:1410 72              ??         72h    r
        ram:1411 76              ??         76h    v
        ram:1412 86              ??         86h
        ram:1413 27              ??         27h    '
        ram:1414 00              ??         00h
        ram:1415 00              ??         00h
        ram:1416 04              ??         04h
        ram:1417 34              ??         34h    4
        ram:1418 29              ??         29h    )
        ram:1419 23              ??         23h    #
        ram:141a 10              ??         10h
        ram:141b 45              ??         45h    E
        ram:141c 00              ??         00h
        ram:141d 00              ??         00h
        ram:141e 00              ??         00h
        ram:141f 43              ??         43h    C
        ram:1420 42              ??         42h    B
        ram:1421 94              ??         94h
        ram:1422 26              ??         26h    &
        ram:1423 48              ??         48h    H
        ram:1424 00              ??         00h
        ram:1425 00              ??         00h
        ram:1426 00              ??         00h
        ram:1427 04              ??         04h
        ram:1428 34              ??         34h    4
        ram:1429 29              ??         29h    )
        ram:142a 44              ??         44h    D
        ram:142b 60              ??         60h    `
        ram:142c 00              ??         00h
        ram:142d 00              ??         00h
        ram:142e 00              ??         00h
        ram:142f 00              ??         00h
        ram:1430 43              ??         43h    C
        ram:1431 42              ??         42h    B
        ram:1432 94              ??         94h
        ram:1433 48              ??         48h    H
        ram:1434 00              ??         00h
        ram:1435 00              ??         00h
        ram:1436 00              ??         00h
        ram:1437 00              ??         00h
        ram:1438 04              ??         04h
        ram:1439 34              ??         34h    4
        ram:143a 29              ??         29h    )
        ram:143b 45              ??         45h    E
        ram:143c 00              ??         00h
        ram:143d 00              ??         00h
        ram:143e 00              ??         00h
        ram:143f 00              ??         00h
        ram:1440 00              ??         00h
        ram:1441 43              ??         43h    C
        ram:1442 42              ??         42h    B
        ram:1443 94              ??         94h
        ram:1444 00              ??         00h
        ram:1445 00              ??         00h
        ram:1446 00              ??         00h
        ram:1447 00              ??         00h
        ram:1448 00              ??         00h
        ram:1449 04              ??         04h
        ram:144a 34              ??         34h    4
        ram:144b 29              ??         29h    )
        ram:144c 00              ??         00h
        ram:144d 00              ??         00h
        ram:144e 00              ??         00h
        ram:144f 00              ??         00h
        ram:1450 00              ??         00h
        ram:1451 00              ??         00h
        ram:1452 43              ??         43h    C
        ram:1453 43              ??         43h    C
        ram:1454 00              ??         00h
        ram:1455 00              ??         00h
        ram:1456 00              ??         00h
        ram:1457 00              ??         00h
        ram:1458 00              ??         00h
        ram:1459 00              ??         00h
        ram:145a 04              ??         04h
        ram:145b 34              ??         34h    4
        ram:145c 00              ??         00h
        ram:145d 00              ??         00h
        ram:145e 00              ??         00h
        ram:145f 00              ??         00h
        ram:1460 00              ??         00h
        ram:1461 00              ??         00h
        ram:1462 00              ??         00h
        ram:1463 43              ??         43h    C
        ram:1464 00              ??         00h
        ram:1465 00              ??         00h
        ram:1466 00              ??         00h
        ram:1467 00              ??         00h
        ram:1468 00              ??         00h
        ram:1469 00              ??         00h
        ram:146a 00              ??         00h
        ram:146b 04              ??         04h
        ram:146c cd              ??         CDh
        ram:146d 68              ??         68h    h
        ram:146e 25              ??         25h    %
        ram:146f c2              ??         C2h
        ram:1470 98              ??         98h
        ram:1471 21              ??         21h    !
        ram:1472 c3              ??         C3h
        ram:1473 08              ??         08h
        ram:1474 0a              ??         0Ah
        ram:1475 cd              ??         CDh
        ram:1476 e3              ??         E3h
        ram:1477 1e              ??         1Eh
        ram:1478 3e              ??         3Eh    >
        ram:1479 03              ??         03h
        ram:147a cd              ??         CDh
        ram:147b 32              ??         32h    2
        ram:147c 0e              ??         0Eh
        ram:147d 18              ??         18h
        ram:147e 03              ??         03h
        ram:147f cd              ??         CDh
        ram:1480 e3              ??         E3h
        ram:1481 1e              ??         1Eh
        ram:1482 cd              ??         CDh
        ram:1483 ee              ??         EEh
        ram:1484 25              ??         25h    %
        ram:1485 38              ??         38h    8
        ram:1486 54              ??         54h    T
        ram:1487 20              ??         20h
        ram:1488 e3              ??         E3h
        ram:1489 11              ??         11h
        ram:148a 00              ??         00h
        ram:148b 00              ??         00h
        ram:148c ed              ??         EDh
        ram:148d 53              ??         53h    S
        ram:148e 83              ??         83h
        ram:148f 80              ??         80h
        ram:1490 7d              ??         7Dh    }
        ram:1491 fe              ??         FEh
        ram:1492 03              ??         03h
        ram:1493 30              ??         30h    0
        ram:1494 d7              ??         D7h
        ram:1495 47              ??         47h    G
        ram:1496 cd              ??         CDh
        ram:1497 14              ??         14h
        ram:1498 22              ??         22h    "
        ram:1499 ed              ??         EDh
        ram:149a 6f              ??         6Fh    o
        ram:149b 78              ??         78h    x
        ram:149c b7              ??         B7h
        ram:149d 28              ??         28h    (
        ram:149e 14              ??         14h
        ram:149f 7e              ??         7Eh    ~
        ram:14a0 cd              ??         CDh
        ram:14a1 14              ??         14h
        ram:14a2 22              ??         22h    "
        ram:14a3 ed              ??         EDh
        ram:14a4 6f              ??         6Fh    o
        ram:14a5 cb              ??         CBh
        ram:14a6 40              ??         40h    @
        ram:14a7 20              ??         20h
        ram:14a8 0a              ??         0Ah
        ram:14a9 7e              ??         7Eh    ~
        ram:14aa cd              ??         CDh
        ram:14ab 14              ??         14h
        ram:14ac 22              ??         22h    "
        ram:14ad ed              ??         EDh
        ram:14ae 6f              ??         6Fh    o
        ram:14af 2b              ??         2Bh    +
        ram:14b0 ed              ??         EDh
        ram:14b1 6f              ??         6Fh    o
        ram:14b2 23              ??         23h    #
        ram:14b3 3a              ??         3Ah    :
        ram:14b4 84              ??         84h
        ram:14b5 80              ??         80h
        ram:14b6 0e              ??         0Eh
        ram:14b7 00              ??         00h
        ram:14b8 cd              ??         CDh
        ram:14b9 bf              ??         BFh
        ram:14ba 21              ??         21h    !
        ram:14bb 28              ??         28h    (
        ram:14bc 07              ??         07h
        ram:14bd 47              ??         47h    G
        ram:14be af              ??         AFh
        ram:14bf c6              ??         C6h
        ram:14c0 0a              ??         0Ah
        ram:14c1 05              ??         05h
        ram:14c2 20              ??         20h
        ram:14c3 fb              ??         FBh
        ram:14c4 47              ??         47h    G
        ram:14c5 7e              ??         7Eh    ~
        ram:14c6 e6              ??         E6h
        ram:14c7 0f              ??         0Fh
        ram:14c8 80              ??         80h
        ram:14c9 16              ??         16h
        ram:14ca 00              ??         00h
        ram:14cb 2b              ??         2Bh    +
        ram:14cc 46              ??         46h    F
        ram:14cd 05              ??         05h
        ram:14ce fa              ??         FAh
        ram:14cf d8              ??         D8h
        ram:14d0 14              ??         14h
        ram:14d1 c6              ??         C6h
        ram:14d2 64              ??         64h    d
        ram:14d3 30              ??         30h    0
        ram:14d4 f8              ??         F8h
        ram:14d5 14              ??         14h
        ram:14d6 18              ??         18h
        ram:14d7 f5              ??         F5h
        ram:14d8 5f              ??         5Fh    _
        ram:14d9 18              ??         18h
        ram:14da 18              ??         18h
        ram:14db fe              ??         FEh
        ram:14dc fb              ??         FBh
        ram:14dd c2              ??         C2h
        ram:14de 3e              ??         3Eh    >
        ram:14df 21              ??         21h    !
        ram:14e0 7d              ??         7Dh    }
        ram:14e1 2f              ??         2Fh    /
        ram:14e2 5f              ??         5Fh    _
        ram:14e3 fe              ??         FEh
        ram:14e4 0f              ??         0Fh
        ram:14e5 d2              ??         D2h
        ram:14e6 3e              ??         3Eh    >
        ram:14e7 21              ??         21h    !
        ram:14e8 d5              ??         D5h
        ram:14e9 cd              ??         CDh
        ram:14ea 3b              ??         3Bh    ;
        ram:14eb 22              ??         22h    "
        ram:14ec cd              ??         CDh
        ram:14ed e7              ??         E7h
        ram:14ee 20              ??         20h
        ram:14ef c1              ??         C1h
        ram:14f0 11              ??         11h
        ram:14f1 00              ??         00h
        ram:14f2 00              ??         00h
        ram:14f3 3e              ??         3Eh    >
        ram:14f4 fc              ??         FCh
        ram:14f5 82              ??         82h
        ram:14f6 57              ??         57h    W
        ram:14f7 ed              ??         EDh
        ram:14f8 53              ??         53h    S
        ram:14f9 83              ??         83h
        ram:14fa 80              ??         80h
        ram:14fb cd              ??         CDh
        ram:14fc 73              ??         73h    s
        ram:14fd 25              ??         25h    %
        ram:14fe e6              ??         E6h
        ram:14ff 80              ??         80h
        ram:1500 28              ??         28h    (
        ram:1501 1d              ??         1Dh
        ram:1502 7a              ??         7Ah    z
        ram:1503 ee              ??         EEh
        ram:1504 07              ??         07h
        ram:1505 57              ??         57h    W
        ram:1506 7b              ??         7Bh    {
        ram:1507 2f              ??         2Fh    /
        ram:1508 5f              ??         5Fh    _
        ram:1509 ed              ??         EDh
        ram:150a 53              ??         53h    S
        ram:150b 83              ??         83h
        ram:150c 80              ??         80h
        ram:150d cd              ??         CDh
        ram:150e 2f              ??         2Fh    /
        ram:150f 24              ??         24h    $
        ram:1510 20              ??         20h
        ram:1511 05              ??         05h
        ram:1512 cd              ??         CDh
        ram:1513 90              ??         90h
        ram:1514 25              ??         25h    %
        ram:1515 18              ??         18h
        ram:1516 08              ??         08h
        ram:1517 cf              ??         CFh
        ram:1518 cd              ??         CDh
        ram:1519 9e              ??         9Eh
        ram:151a 21              ??         21h    !
        ram:151b 4f              ??         4Fh    O
        ram:151c cd              ??         CDh
        ram:151d 30              ??         30h    0
        ram:151e 23              ??         23h    #
        ram:151f 79              ??         79h    y
        ram:1520 32              ??         32h    2
        ram:1521 98              ??         98h
        ram:1522 80              ??         80h
        ram:1523 21              ??         21h    !
        ram:1524 a6              ??         A6h
        ram:1525 80              ??         80h
        ram:1526 cd              ??         CDh
        ram:1527 78              ??         78h    x
        ram:1528 21              ??         21h    !
        ram:1529 47              ??         47h    G
        ram:152a 21              ??         21h    !
        ram:152b a6              ??         A6h
        ram:152c 80              ??         80h
        ram:152d cb              ??         CBh
        ram:152e 39              ??         39h    9
        ram:152f 09              ??         09h
        ram:1530 e5              ??         E5h
        ram:1531 af              ??         AFh
        ram:1532 4f              ??         4Fh    O
        ram:1533 11              ??         11h
        ram:1534 90              ??         90h
        ram:1535 80              ??         80h
        ram:1536 cd              ??         CDh
        ram:1537 6f              ??         6Fh    o
        ram:1538 24              ??         24h    $
        ram:1539 18              ??         18h
        ram:153a 08              ??         08h
        ram:153b 0c              ??         0Ch
        ram:153c 79              ??         79h    y
        ram:153d e6              ??         E6h
        ram:153e 0f              ??         0Fh
        ram:153f fe              ??         FEh
        ram:1540 09              ??         09h
        ram:1541 28              ??         28h    (
        ram:1542 09              ??         09h
        ram:1543 cd              ??         CDh
        ram:1544 30              ??         30h    0
        ram:1545 23              ??         23h    #
        ram:1546 d2              ??         D2h
        ram:1547 3b              ??         3Bh    ;
        ram:1548 15              ??         15h
        ram:1549 cd              ??         CDh
        ram:154a b2              ??         B2h
        ram:154b 22              ??         22h    "
        ram:154c 21              ??         21h    !
        ram:154d 98              ??         98h
        ram:154e 80              ??         80h
        ram:154f 7e              ??         7Eh    ~
        ram:1550 fe              ??         FEh
        ram:1551 0f              ??         0Fh
        ram:1552 28              ??         28h    (
        ram:1553 1f              ??         1Fh
        ram:1554 34              ??         34h    4
        ram:1555 e6              ??         E6h
        ram:1556 01              ??         01h
        ram:1557 28              ??         28h    (
        ram:1558 05              ??         05h
        ram:1559 e1              ??         E1h
        ram:155a 71              ??         71h    q
        ram:155b 23              ??         23h    #
        ram:155c 18              ??         18h
        ram:155d d2              ??         D2h
        ram:155e cd              ??         CDh
        ram:155f c6              ??         C6h
        ram:1560 21              ??         21h    !
        ram:1561 18              ??         18h
        ram:1562 cf              ??         CFh
        ram:1563 c8              ??         C8h
        ram:1564 f5              ??         F5h
        ram:1565 c5              ??         C5h
        ram:1566 79              ??         79h    y
        ram:1567 cd              ??         CDh
        ram:1568 3b              ??         3Bh    ;
        ram:1569 22              ??         22h    "
        ram:156a cd              ??         CDh
        ram:156b c8              ??         C8h
        ram:156c 22              ??         22h    "
        ram:156d c1              ??         C1h
        ram:156e f1              ??         F1h
        ram:156f 3d              ??         3Dh    =
        ram:1570 c3              ??         C3h
        ram:1571 63              ??         63h    c
        ram:1572 15              ??         15h
        ram:1573 e1              ??         E1h
        ram:1574 71              ??         71h    q
        ram:1575 21              ??         21h    !
        ram:1576 85              ??         85h
        ram:1577 80              ??         80h
        ram:1578 cd              ??         CDh
        ram:1579 62              ??         62h    b
        ram:157a 21              ??         21h    !
        ram:157b 11              ??         11h
        ram:157c 8c              ??         8Ch
        ram:157d 80              ??         80h
        ram:157e 21              ??         21h    !
        ram:157f ad              ??         ADh
        ram:1580 80              ??         80h
        ram:1581 01              ??         01h
        ram:1582 03              ??         03h
        ram:1583 00              ??         00h
        ram:1584 ed              ??         EDh
        ram:1585 b8              ??         B8h
        ram:1586 7e              ??         7Eh    ~
        ram:1587 e6              ??         E6h
        ram:1588 0f              ??         0Fh
        ram:1589 12              ??         12h
        ram:158a 0e              ??         0Eh
        ram:158b 00              ??         00h
        ram:158c 21              ??         21h    !
        ram:158d a6              ??         A6h
        ram:158e 80              ??         80h
        ram:158f e5              ??         E5h
        ram:1590 7e              ??         7Eh    ~
        ram:1591 f5              ??         F5h
        ram:1592 cd              ??         CDh
        ram:1593 bf              ??         BFh
        ram:1594 21              ??         21h    !
        ram:1595 cd              ??         CDh
        ram:1596 63              ??         63h    c
        ram:1597 15              ??         15h
        ram:1598 f1              ??         F1h
        ram:1599 cb              ??         CBh
        ram:159a 59              ??         59h    Y
        ram:159b c2              ??         C2h
        ram:159c 45              ??         45h    E
        ram:159d 0f              ??         0Fh
        ram:159e 0c              ??         0Ch
        ram:159f e6              ??         E6h
        ram:15a0 0f              ??         0Fh
        ram:15a1 cd              ??         CDh
        ram:15a2 63              ??         63h    c
        ram:15a3 15              ??         15h
        ram:15a4 e1              ??         E1h
        ram:15a5 0c              ??         0Ch
        ram:15a6 23              ??         23h    #
        ram:15a7 18              ??         18h
        ram:15a8 e6              ??         E6h
        ram:15a9 cd              ??         CDh
        ram:15aa d1              ??         D1h
        ram:15ab 23              ??         23h    #
        ram:15ac 28              ??         28h    (
        ram:15ad 1b              ??         1Bh
        ram:15ae cd              ??         CDh
        ram:15af fe              ??         FEh
        ram:15b0 1f              ??         1Fh
        ram:15b1 cd              ??         CDh
        ram:15b2 1f              ??         1Fh
        ram:15b3 10              ??         10h
        ram:15b4 cf              ??         CFh
        ram:15b5 cd              ??         CDh
        ram:15b6 56              ??         56h    V
        ram:15b7 20              ??         20h
        ram:15b8 cd              ??         CDh
        ram:15b9 e3              ??         E3h
        ram:15ba 1e              ??         1Eh
        ram:15bb cd              ??         CDh
        ram:15bc d1              ??         D1h
        ram:15bd 23              ??         23h    #
        ram:15be 20              ??         20h
        ram:15bf 0c              ??         0Ch
        ram:15c0 cd              ??         CDh
        ram:15c1 d6              ??         D6h
        ram:15c2 23              ??         23h    #
        ram:15c3 28              ??         28h    (
        ram:15c4 04              ??         04h
        ram:15c5 cd              ??         CDh
        ram:15c6 62              ??         62h    b
        ram:15c7 25              ??         25h    %
        ram:15c8 c8              ??         C8h
        ram:15c9 c3              ??         C3h
        ram:15ca 14              ??         14h
        ram:15cb 0a              ??         0Ah
        ram:15cc cd              ??         CDh
        ram:15cd d6              ??         D6h
        ram:15ce 23              ??         23h    #
        ram:15cf ca              ??         CAh
        ram:15d0 3e              ??         3Eh    >
        ram:15d1 21              ??         21h    !
        ram:15d2 af              ??         AFh
        ram:15d3 f5              ??         F5h
        ram:15d4 cd              ??         CDh
        ram:15d5 7d              ??         7Dh    }
        ram:15d6 20              ??         20h
        ram:15d7 cd              ??         CDh
        ram:15d8 68              ??         68h    h
        ram:15d9 25              ??         25h    %
        ram:15da 28              ??         28h    (
        ram:15db 3c              ??         3Ch    <
        ram:15dc 21              ??         21h    !
        ram:15dd 8e              ??         8Eh
        ram:15de 80              ??         80h
        ram:15df cd              ??         CDh
        ram:15e0 f0              ??         F0h
        ram:15e1 23              ??         23h    #
        ram:15e2 20              ??         20h
        ram:15e3 0a              ??         0Ah
        ram:15e4 21              ??         21h    !
        ram:15e5 ba              ??         BAh
        ram:15e6 80              ??         80h
        ram:15e7 cd              ??         CDh
        ram:15e8 f7              ??         F7h
        ram:15e9 23              ??         23h    #
        ram:15ea 28              ??         28h    (
        ram:15eb 29              ??         29h    )
        ram:15ec 18              ??         18h
        ram:15ed 23              ??         23h    #
        ram:15ee cd              ??         CDh
        ram:15ef f5              ??         F5h
        ram:15f0 1f              ??         1Fh
        ram:15f1 3a              ??         3Ah    :
        ram:15f2 8f              ??         8Fh
        ram:15f3 80              ??         80h
        ram:15f4 fe              ??         FEh
        ram:15f5 fc              ??         FCh
        ram:15f6 d2              ??         D2h
        ram:15f7 09              ??         09h
        ram:15f8 3e              ??         3Eh    >
        ram:15f9 cd              ??         CDh
        ram:15fa 3e              ??         3Eh    >
        ram:15fb 21              ??         21h    !
        ram:15fc cd              ??         CDh
        ram:15fd 23              ??         23h    #
        ram:15fe 10              ??         10h
        ram:15ff cd              ??         CDh
        ram:1600 e0              ??         E0h
        ram:1601 11              ??         11h
        ram:1602 cd              ??         CDh
        ram:1603 f4              ??         F4h
        ram:1604 23              ??         23h    #
        ram:1605 ca              ??         CAh
        ram:1606 09              ??         09h
        ram:1607 3e              ??         3Eh    >
        ram:1608 cd              ??         CDh
        ram:1609 ed              ??         EDh
        ram:160a 23              ??         23h    #
        ram:160b c2              ??         C2h
        ram:160c 09              ??         09h
        ram:160d 3e              ??         3Eh    >
        ram:160e cd              ??         CDh
        ram:160f 56              ??         56h    V
        ram:1610 20              ??         20h
        ram:1611 f1              ??         F1h
        ram:1612 3e              ??         3Eh    >
        ram:1613 80              ??         80h
        ram:1614 f5              ??         F5h
        ram:1615 cd              ??         CDh
        ram:1616 73              ??         73h    s
        ram:1617 25              ??         25h    %
        ram:1618 2a              ??         2Ah    *
        ram:1619 8e              ??         8Eh
        ram:161a 80              ??         80h
        ram:161b 11              ??         11h
        ram:161c 02              ??         02h
        ram:161d fc              ??         FCh
        ram:161e ed              ??         EDh
        ram:161f 52              ??         52h    R
        ram:1620 30              ??         30h    0
        ram:1621 23              ??         23h    #
        ram:1622 21              ??         21h    !
        ram:1623 8d              ??         8Dh
        ram:1624 80              ??         80h
        ram:1625 cb              ??         CBh
        ram:1626 7e              ??         7Eh    ~
        ram:1627 20              ??         20h
        ram:1628 1c              ??         1Ch
        ram:1629 23              ??         23h    #
        ram:162a cd              ??         CDh
        ram:162b f0              ??         F0h
        ram:162c 23              ??         23h    #
        ram:162d 20              ??         20h
        ram:162e 16              ??         16h
        ram:162f 3a              ??         3Ah    :
        ram:1630 8e              ??         8Eh
        ram:1631 80              ??         80h
        ram:1632 b7              ??         B7h
        ram:1633 3a              ??         3Ah    :
        ram:1634 90              ??         90h
        ram:1635 80              ??         80h
        ram:1636 cc              ??         CCh
        ram:1637 bf              ??         BFh
        ram:1638 21              ??         21h    !
        ram:1639 cf              ??         CFh
        ram:163a 18              ??         18h
        ram:163b 04              ??         04h
        ram:163c 27              ??         27h    '
        ram:163d f5              ??         F5h
        ram:163e ef              ??         EFh
        ram:163f f1              ??         F1h
        ram:1640 3d              ??         3Dh    =
        ram:1641 20              ??         20h
        ram:1642 f9              ??         F9h
        ram:1643 18              ??         18h
        ram:1644 1b              ??         1Bh
        ram:1645 0e              ??         0Eh
        ram:1646 01              ??         01h
        ram:1647 cd              ??         CDh
        ram:1648 90              ??         90h
        ram:1649 12              ??         12h
        ram:164a cd              ??         CDh
        ram:164b d1              ??         D1h
        ram:164c 23              ??         23h    #
        ram:164d 20              ??         20h
        ram:164e 05              ??         05h
        ram:164f cd              ??         CDh
        ram:1650 3e              ??         3Eh    >
        ram:1651 21              ??         21h    !
        ram:1652 18              ??         18h
        ram:1653 0c              ??         0Ch
        ram:1654 cd              ??         CDh
        ram:1655 49              ??         49h    I
        ram:1656 20              ??         20h
        ram:1657 cd              ??         CDh
        ram:1658 35              ??         35h    5
        ram:1659 0e              ??         0Eh
        ram:165a cd              ??         CDh
        ram:165b d5              ??         D5h
        ram:165c 13              ??         13h
        ram:165d cd              ??         CDh
        ram:165e 82              ??         82h
        ram:165f 14              ??         14h
        ram:1660 f1              ??         F1h
        ram:1661 32              ??         32h    2
        ram:1662 82              ??         82h
        ram:1663 80              ??         80h
        ram:1664 c9              ??         C9h
        ram:1665 3e              ??         3Eh    >
        ram:1666 81              ??         81h
        ram:1667 18              ??         18h
        ram:1668 12              ??         12h
        ram:1669 3e              ??         3Eh    >
        ram:166a 01              ??         01h
        ram:166b 18              ??         18h
        ram:166c 06              ??         06h
        ram:166d 3e              ??         3Eh    >
        ram:166e 02              ??         02h
        ram:166f 18              ??         18h
        ram:1670 02              ??         02h
        ram:1671 3e              ??         3Eh    >
        ram:1672 04              ??         04h
        ram:1673 fd              ??         FDh
        ram:1674 cb              ??         CBh
        ram:1675 00              ??         00h
        ram:1676 56              ??         56h    V
        ram:1677 20              ??         20h
        ram:1678 02              ??         02h
        ram:1679 f6              ??         F6h
        ram:167a 80              ??         80h
        ram:167b 32              ??         32h    2
        ram:167c a3              ??         A3h
        ram:167d 80              ??         80h
        ram:167e cd              ??         CDh
        ram:167f e3              ??         E3h
        ram:1680 1e              ??         1Eh
        ram:1681 cd              ??         CDh
        ram:1682 ad              ??         ADh
        ram:1683 21              ??         21h    !
        ram:1684 cd              ??         CDh
        ram:1685 ee              ??         EEh
        ram:1686 25              ??         25h    %
        ram:1687 da              ??         DAh
        ram:1688 fe              ??         FEh
        ram:1689 16              ??         16h
        ram:168a c2              ??         C2h
        ram:168b 14              ??         14h
        ram:168c 0a              ??         0Ah
        ram:168d 7d              ??         7Dh    }
        ram:168e fe              ??         FEh
        ram:168f 0c              ??         0Ch
        ram:1690 d2              ??         D2h
        ram:1691 14              ??         14h
        ram:1692 0a              ??         0Ah
        ram:1693 3a              ??         3Ah    :
        ram:1694 a3              ??         A3h
        ram:1695 80              ??         80h
        ram:1696 e6              ??         E6h
        ram:1697 80              ??         80h
        ram:1698 28              ??         28h    (
        ram:1699 0a              ??         0Ah
        ram:169a 21              ??         21h    !
        ram:169b df              ??         DFh
        ram:169c 24              ??         24h    $
        ram:169d cd              ??         CDh
        ram:169e ef              ??         EFh
        ram:169f 20              ??         20h
        ram:16a0 06              ??         06h
        ram:16a1 00              ??         00h
        ram:16a2 18              ??         18h
        ram:16a3 0c              ??         0Ch
        ram:16a4 7d              ??         7Dh    }
        ram:16a5 fe              ??         FEh
        ram:16a6 02              ??         02h
        ram:16a7 38              ??         38h    8
        ram:16a8 55              ??         55h    U
        ram:16a9 3e              ??         3Eh    >
        ram:16aa 36              ??         36h    6
        ram:16ab 32              ??         32h    2
        ram:16ac 9b              ??         9Bh
        ram:16ad 80              ??         80h
        ram:16ae 06              ??         06h
        ram:16af 02              ??         02h
        ram:16b0 0e              ??         0Eh
        ram:16b1 00              ??         00h
        ram:16b2 cd              ??         CDh
        ram:16b3 83              ??         83h
        ram:16b4 23              ??         23h    #
        ram:16b5 30              ??         30h    0
        ram:16b6 fb              ??         FBh
        ram:16b7 0d              ??         0Dh
        ram:16b8 f2              ??         F2h
        ram:16b9 b2              ??         B2h
        ram:16ba 16              ??         16h
        ram:16bb cd              ??         CDh
        ram:16bc 1f              ??         1Fh
        ram:16bd 23              ??         23h    #
        ram:16be 3a              ??         3Ah    :
        ram:16bf 83              ??         83h
        ram:16c0 80              ??         80h
        ram:16c1 b8              ??         B8h
        ram:16c2 28              ??         28h    (
        ram:16c3 0a              ??         0Ah
        ram:16c4 3d              ??         3Dh    =
        ram:16c5 32              ??         32h    2
        ram:16c6 83              ??         83h
        ram:16c7 80              ??         80h
        ram:16c8 cd              ??         CDh
        ram:16c9 02              ??         02h
        ram:16ca 22              ??         22h    "
        ram:16cb 4f              ??         4Fh    O
        ram:16cc 18              ??         18h
        ram:16cd e4              ??         E4h
        ram:16ce 3a              ??         3Ah    :
        ram:16cf a3              ??         A3h
        ram:16d0 80              ??         80h
        ram:16d1 e6              ??         E6h
        ram:16d2 80              ??         80h
        ram:16d3 28              ??         28h    (
        ram:16d4 0d              ??         0Dh
        ram:16d5 cd              ??         CDh
        ram:16d6 ba              ??         BAh
        ram:16d7 20              ??         20h
        ram:16d8 21              ??         21h    !
        ram:16d9 ec              ??         ECh
        ram:16da 24              ??         24h    $
        ram:16db cd              ??         CDh
        ram:16dc 74              ??         74h    t
        ram:16dd 23              ??         23h    #
        ram:16de 38              ??         38h    8
        ram:16df 1e              ??         1Eh
        ram:16e0 18              ??         18h
        ram:16e1 0e              ??         0Eh
        ram:16e2 3a              ??         3Ah    :
        ram:16e3 85              ??         85h
        ram:16e4 80              ??         80h
        ram:16e5 fe              ??         FEh
        ram:16e6 18              ??         18h
        ram:16e7 38              ??         38h    8
        ram:16e8 15              ??         15h
        ram:16e9 20              ??         20h
        ram:16ea 05              ??         05h
        ram:16eb cd              ??         CDh
        ram:16ec 30              ??         30h    0
        ram:16ed 24              ??         24h    $
        ram:16ee 28              ??         28h    (
        ram:16ef 0e              ??         0Eh
        ram:16f0 cd              ??         CDh
        ram:16f1 7a              ??         7Ah    z
        ram:16f2 23              ??         23h    #
        ram:16f3 cd              ??         CDh
        ram:16f4 df              ??         DFh
        ram:16f5 20              ??         20h
        ram:16f6 3a              ??         3Ah    :
        ram:16f7 82              ??         82h
        ram:16f8 80              ??         80h
        ram:16f9 ee              ??         EEh
        ram:16fa 80              ??         80h
        ram:16fb 32              ??         32h    2
        ram:16fc 82              ??         82h
        ram:16fd 80              ??         80h
        ram:16fe cd              ??         CDh
        ram:16ff d5              ??         D5h
        ram:1700 13              ??         13h
        ram:1701 cd              ??         CDh
        ram:1702 73              ??         73h    s
        ram:1703 25              ??         25h    %
        ram:1704 e6              ??         E6h
        ram:1705 80              ??         80h
        ram:1706 28              ??         28h    (
        ram:1707 02              ??         02h
        ram:1708 3e              ??         3Eh    >
        ram:1709 03              ??         03h
        ram:170a f5              ??         F5h
        ram:170b cd              ??         CDh
        ram:170c d1              ??         D1h
        ram:170d 23              ??         23h    #
        ram:170e ca              ??         CAh
        ram:170f 9f              ??         9Fh
        ram:1710 17              ??         17h
        ram:1711 cd              ??         CDh
        ram:1712 ad              ??         ADh
        ram:1713 21              ??         21h    !
        ram:1714 3a              ??         3Ah    :
        ram:1715 a3              ??         A3h
        ram:1716 80              ??         80h
        ram:1717 e6              ??         E6h
        ram:1718 80              ??         80h
        ram:1719 28              ??         28h    (
        ram:171a 10              ??         10h
        ram:171b 21              ??         21h    !
        ram:171c f4              ??         F4h
        ram:171d 24              ??         24h    $
        ram:171e cd              ??         CDh
        ram:171f ef              ??         EFh
        ram:1720 20              ??         20h
        ram:1721 cd              ??         CDh
        ram:1722 ee              ??         EEh
        ram:1723 25              ??         25h    %
        ram:1724 da              ??         DAh
        ram:1725 5b              ??         5Bh    [
        ram:1726 17              ??         17h
        ram:1727 0e              ??         0Eh
        ram:1728 00              ??         00h
        ram:1729 18              ??         18h
        ram:172a 15              ??         15h
        ram:172b cd              ??         CDh
        ram:172c 88              ??         88h
        ram:172d 26              ??         26h    &
        ram:172e 3e              ??         3Eh    >
        ram:172f 90              ??         90h
        ram:1730 32              ??         32h    2
        ram:1731 9b              ??         9Bh
        ram:1732 80              ??         80h
        ram:1733 38              ??         38h    8
        ram:1734 5a              ??         5Ah    Z
        ram:1735 0e              ??         0Eh
        ram:1736 00              ??         00h
        ram:1737 28              ??         28h    (
        ram:1738 07              ??         07h
        ram:1739 cd              ??         CDh
        ram:173a 88              ??         88h
        ram:173b 25              ??         25h    %
        ram:173c cd              ??         CDh
        ram:173d 02              ??         02h
        ram:173e 22              ??         22h    "
        ram:173f 4f              ??         4Fh    O
        ram:1740 cd              ??         CDh
        ram:1741 83              ??         83h
        ram:1742 23              ??         23h    #
        ram:1743 30              ??         30h    0
        ram:1744 09              ??         09h
        ram:1745 0d              ??         0Dh
        ram:1746 f2              ??         F2h
        ram:1747 4e              ??         4Eh    N
        ram:1748 17              ??         17h
        ram:1749 cd              ??         CDh
        ram:174a 1f              ??         1Fh
        ram:174b 23              ??         23h    #
        ram:174c 18              ??         18h
        ram:174d 06              ??         06h
        ram:174e f1              ??         F1h
        ram:174f ee              ??         EEh
        ram:1750 01              ??         01h
        ram:1751 f6              ??         F6h
        ram:1752 08              ??         08h
        ram:1753 f5              ??         F5h
        ram:1754 3a              ??         3Ah    :
        ram:1755 a3              ??         A3h
        ram:1756 80              ??         80h
        ram:1757 e6              ??         E6h
        ram:1758 80              ??         80h
        ram:1759 28              ??         28h    (
        ram:175a 23              ??         23h    #
        ram:175b cd              ??         CDh
        ram:175c d5              ??         D5h
        ram:175d 13              ??         13h
        ram:175e 3a              ??         3Ah    :
        ram:175f 85              ??         85h
        ram:1760 80              ??         80h
        ram:1761 b7              ??         B7h
        ram:1762 28              ??         28h    (
        ram:1763 3b              ??         3Bh    ;
        ram:1764 cd              ??         CDh
        ram:1765 92              ??         92h
        ram:1766 26              ??         26h    &
        ram:1767 38              ??         38h    8
        ram:1768 36              ??         36h    6
        ram:1769 20              ??         20h
        ram:176a 1a              ??         1Ah
        ram:176b cd              ??         CDh
        ram:176c ba              ??         BAh
        ram:176d 20              ??         20h
        ram:176e 21              ??         21h    !
        ram:176f f3              ??         F3h
        ram:1770 24              ??         24h    $
        ram:1771 cd              ??         CDh
        ram:1772 74              ??         74h    t
        ram:1773 23              ??         23h    #
        ram:1774 38              ??         38h    8
        ram:1775 19              ??         19h
        ram:1776 cd              ??         CDh
        ram:1777 cc              ??         CCh
        ram:1778 21              ??         21h    !
        ram:1779 cd              ??         CDh
        ram:177a 90              ??         90h
        ram:177b 25              ??         25h    %
        ram:177c 18              ??         18h
        ram:177d 07              ??         07h
        ram:177e 3a              ??         3Ah    :
        ram:177f 85              ??         85h
        ram:1780 80              ??         80h
        ram:1781 fe              ??         FEh
        ram:1782 45              ??         45h    E
        ram:1783 38              ??         38h    8
        ram:1784 0a              ??         0Ah
        ram:1785 cd              ??         CDh
        ram:1786 7a              ??         7Ah    z
        ram:1787 23              ??         23h    #
        ram:1788 cd              ??         CDh
        ram:1789 df              ??         DFh
        ram:178a 20              ??         20h
        ram:178b f1              ??         F1h
        ram:178c ee              ??         EEh
        ram:178d 08              ??         08h
        ram:178e f5              ??         F5h
        ram:178f cd              ??         CDh
        ram:1790 d5              ??         D5h
        ram:1791 13              ??         13h
        ram:1792 cd              ??         CDh
        ram:1793 e3              ??         E3h
        ram:1794 1e              ??         1Eh
        ram:1795 3a              ??         3Ah    :
        ram:1796 a3              ??         A3h
        ram:1797 80              ??         80h
        ram:1798 e6              ??         E6h
        ram:1799 80              ??         80h
        ram:179a 20              ??         20h
        ram:179b 03              ??         03h
        ram:179c cd              ??         CDh
        ram:179d 2d              ??         2Dh    -
        ram:179e 0e              ??         0Eh
        ram:179f 21              ??         21h    !
        ram:17a0 9b              ??         9Bh
        ram:17a1 80              ??         80h
        ram:17a2 cd              ??         CDh
        ram:17a3 62              ??         62h    b
        ram:17a4 21              ??         21h    !
        ram:17a5 3e              ??         3Eh    >
        ram:17a6 02              ??         02h
        ram:17a7 32              ??         32h    2
        ram:17a8 9c              ??         9Ch
        ram:17a9 80              ??         80h
        ram:17aa cd              ??         CDh
        ram:17ab 35              ??         35h    5
        ram:17ac 23              ??         23h    #
        ram:17ad c1              ??         C1h
        ram:17ae 38              ??         38h    8
        ram:17af 02              ??         02h
        ram:17b0 cb              ??         CBh
        ram:17b1 f0              ??         F0h
        ram:17b2 78              ??         78h    x
        ram:17b3 32              ??         32h    2
        ram:17b4 ae              ??         AEh
        ram:17b5 80              ??         80h
        ram:17b6 cd              ??         CDh
        ram:17b7 d1              ??         D1h
        ram:17b8 23              ??         23h    #
        ram:17b9 20              ??         20h
        ram:17ba 0c              ??         0Ch
        ram:17bb cd              ??         CDh
        ram:17bc 66              ??         66h    f
        ram:17bd 21              ??         21h    !
        ram:17be cd              ??         CDh
        ram:17bf 7c              ??         7Ch    |
        ram:17c0 0f              ??         0Fh
        ram:17c1 cd              ??         CDh
        ram:17c2 ba              ??         BAh
        ram:17c3 23              ??         23h    #
        ram:17c4 c3              ??         C3h
        ram:17c5 1a              ??         1Ah
        ram:17c6 19              ??         19h
        ram:17c7 cd              ??         CDh
        ram:17c8 d8              ??         D8h
        ram:17c9 1a              ??         1Ah
        ram:17ca 38              ??         38h    8
        ram:17cb ef              ??         EFh
        ram:17cc 47              ??         47h    G
        ram:17cd af              ??         AFh
        ram:17ce 23              ??         23h    #
        ram:17cf c5              ??         C5h
        ram:17d0 e5              ??         E5h
        ram:17d1 f5              ??         F5h
        ram:17d2 11              ??         11h
        ram:17d3 90              ??         90h
        ram:17d4 80              ??         80h
        ram:17d5 cd              ??         CDh
        ram:17d6 4a              ??         4Ah    J
        ram:17d7 24              ??         24h    $
        ram:17d8 cd              ??         CDh
        ram:17d9 40              ??         40h    @
        ram:17da 22              ??         22h    "
        ram:17db f1              ??         F1h
        ram:17dc 06              ??         06h
        ram:17dd 01              ??         01h
        ram:17de e6              ??         E6h
        ram:17df f0              ??         F0h
        ram:17e0 4f              ??         4Fh    O
        ram:17e1 b7              ??         B7h
        ram:17e2 fa              ??         FAh
        ram:17e3 f1              ??         F1h
        ram:17e4 17              ??         17h
        ram:17e5 cd              ??         CDh
        ram:17e6 3d              ??         3Dh    =
        ram:17e7 23              ??         23h    #
        ram:17e8 38              ??         38h    8
        ram:17e9 0d              ??         0Dh
        ram:17ea 0c              ??         0Ch
        ram:17eb 04              ??         04h
        ram:17ec c3              ??         C3h
        ram:17ed e5              ??         E5h
        ram:17ee 17              ??         17h
        ram:17ef 0c              ??         0Ch
        ram:17f0 04              ??         04h
        ram:17f1 cd              ??         CDh
        ram:17f2 c8              ??         C8h
        ram:17f3 22              ??         22h    "
        ram:17f4 d2              ??         D2h
        ram:17f5 ef              ??         EFh
        ram:17f6 17              ??         17h
        ram:17f7 04              ??         04h
        ram:17f8 79              ??         79h    y
        ram:17f9 ee              ??         EEh
        ram:17fa 80              ??         80h
        ram:17fb cb              ??         CBh
        ram:17fc 40              ??         40h    @
        ram:17fd 28              ??         28h    (
        ram:17fe e1              ??         E1h
        ram:17ff 4f              ??         4Fh    O
        ram:1800 3c              ??         3Ch    <
        ram:1801 e6              ??         E6h
        ram:1802 0f              ??         0Fh
        ram:1803 e1              ??         E1h
        ram:1804 77              ??         77h    w
        ram:1805 79              ??         79h    y
        ram:1806 c1              ??         C1h
        ram:1807 04              ??         04h
        ram:1808 cb              ??         CBh
        ram:1809 58              ??         58h    X
        ram:180a 28              ??         28h    (
        ram:180b c2              ??         C2h
        ram:180c b7              ??         B7h
        ram:180d fc              ??         FCh
        ram:180e c8              ??         C8h
        ram:180f 22              ??         22h    "
        ram:1810 3a              ??         3Ah    :
        ram:1811 af              ??         AFh
        ram:1812 80              ??         80h
        ram:1813 47              ??         47h    G
        ram:1814 cd              ??         CDh
        ram:1815 3f              ??         3Fh    ?
        ram:1816 24              ??         24h    $
        ram:1817 21              ??         21h    !
        ram:1818 af              ??         AFh
        ram:1819 80              ??         80h
        ram:181a 18              ??         18h
        ram:181b 02              ??         02h
        ram:181c c1              ??         C1h
        ram:181d e1              ??         E1h
        ram:181e cb              ??         CBh
        ram:181f 58              ??         58h    X
        ram:1820 20              ??         20h
        ram:1821 32              ??         32h    2
        ram:1822 04              ??         04h
        ram:1823 23              ??         23h    #
        ram:1824 e5              ??         E5h
        ram:1825 c5              ??         C5h
        ram:1826 3e              ??         3Eh    >
        ram:1827 0b              ??         0Bh
        ram:1828 96              ??         96h
        ram:1829 cb              ??         CBh
        ram:182a 3f              ??         3Fh    ?
        ram:182b 28              ??         28h    (
        ram:182c ef              ??         EFh
        ram:182d 57              ??         57h    W
        ram:182e 78              ??         78h    x
        ram:182f 80              ??         80h
        ram:1830 5f              ??         5Fh    _
        ram:1831 d5              ??         D5h
        ram:1832 cd              ??         CDh
        ram:1833 45              ??         45h    E
        ram:1834 22              ??         22h    "
        ram:1835 cd              ??         CDh
        ram:1836 ff              ??         FFh
        ram:1837 22              ??         22h    "
        ram:1838 d1              ??         D1h
        ram:1839 15              ??         15h
        ram:183a 28              ??         28h    (
        ram:183b e0              ??         E0h
        ram:183c 7b              ??         7Bh    {
        ram:183d d5              ??         D5h
        ram:183e fe              ??         FEh
        ram:183f 09              ??         09h
        ram:1840 38              ??         38h    8
        ram:1841 f0              ??         F0h
        ram:1842 4a              ??         4Ah    J
        ram:1843 cd              ??         CDh
        ram:1844 0f              ??         0Fh
        ram:1845 23              ??         23h    #
        ram:1846 30              ??         30h    0
        ram:1847 06              ??         06h
        ram:1848 eb              ??         EBh
        ram:1849 3e              ??         3Eh    >
        ram:184a 01              ??         01h
        ram:184b cd              ??         CDh
        ram:184c 88              ??         88h
        ram:184d 22              ??         22h    "
        ram:184e 0d              ??         0Dh
        ram:184f 20              ??         20h
        ram:1850 f2              ??         F2h
        ram:1851 d1              ??         D1h
        ram:1852 18              ??         18h
        ram:1853 c8              ??         C8h
        ram:1854 fd              ??         FDh
        ram:1855 cb              ??         CBh
        ram:1856 0e              ??         0Eh
        ram:1857 f6              ??         F6h
        ram:1858 cd              ??         CDh
        ram:1859 75              ??         75h    u
        ram:185a 0e              ??         0Eh
        ram:185b 21              ??         21h    !
        ram:185c ae              ??         AEh
        ram:185d 80              ??         80h
        ram:185e 7e              ??         7Eh    ~
        ram:185f cb              ??         CBh
        ram:1860 7f              ??         7Fh    
        ram:1861 20              ??         20h
        ram:1862 02              ??         02h
        ram:1863 f6              ??         F6h
        ram:1864 10              ??         10h
        ram:1865 77              ??         77h    w
        ram:1866 23              ??         23h    #
        ram:1867 4e              ??         4Eh    N
        ram:1868 34              ??         34h    4
        ram:1869 e6              ??         E6h
        ram:186a 40              ??         40h    @
        ram:186b 28              ??         28h    (
        ram:186c 05              ??         05h
        ram:186d cd              ??         CDh
        ram:186e 88              ??         88h
        ram:186f 25              ??         25h    %
        ram:1870 18              ??         18h
        ram:1871 06              ??         06h
        ram:1872 35              ??         35h    5
        ram:1873 eb              ??         EBh
        ram:1874 cd              ??         CDh
        ram:1875 e0              ??         E0h
        ram:1876 21              ??         21h    !
        ram:1877 eb              ??         EBh
        ram:1878 cd              ??         CDh
        ram:1879 e9              ??         E9h
        ram:187a 1a              ??         1Ah
        ram:187b 21              ??         21h    !
        ram:187c af              ??         AFh
        ram:187d 80              ??         80h
        ram:187e 0c              ??         0Ch
        ram:187f 23              ??         23h    #
        ram:1880 46              ??         46h    F
        ram:1881 e5              ??         E5h
        ram:1882 21              ??         21h    !
        ram:1883 8d              ??         8Dh
        ram:1884 80              ??         80h
        ram:1885 34              ??         34h    4
        ram:1886 21              ??         21h    !
        ram:1887 98              ??         98h
        ram:1888 80              ??         80h
        ram:1889 34              ??         34h    4
        ram:188a cb              ??         CBh
        ram:188b 59              ??         59h    Y
        ram:188c 28              ??         28h    (
        ram:188d 0f              ??         0Fh
        ram:188e 3a              ??         3Ah    :
        ram:188f ae              ??         AEh
        ram:1890 80              ??         80h
        ram:1891 e6              ??         E6h
        ram:1892 20              ??         20h
        ram:1893 20              ??         20h
        ram:1894 0a              ??         0Ah
        ram:1895 05              ??         05h
        ram:1896 f2              ??         F2h
        ram:1897 9f              ??         9Fh
        ram:1898 18              ??         18h
        ram:1899 e1              ??         E1h
        ram:189a c3              ??         C3h
        ram:189b 03              ??         03h
        ram:189c 19              ??         19h
        ram:189d cb              ??         CBh
        ram:189e 80              ??         80h
        ram:189f c5              ??         C5h
        ram:18a0 78              ??         78h    x
        ram:18a1 b7              ??         B7h
        ram:18a2 28              ??         28h    (
        ram:18a3 4a              ??         4Ah    J
        ram:18a4 3a              ??         3Ah    :
        ram:18a5 98              ??         98h
        ram:18a6 80              ??         80h
        ram:18a7 4f              ??         4Fh    O
        ram:18a8 c5              ??         C5h
        ram:18a9 79              ??         79h    y
        ram:18aa cd              ??         CDh
        ram:18ab ba              ??         BAh
        ram:18ac 20              ??         20h
        ram:18ad cd              ??         CDh
        ram:18ae 45              ??         45h    E
        ram:18af 22              ??         22h    "
        ram:18b0 3a              ??         3Ah    :
        ram:18b1 ae              ??         AEh
        ram:18b2 80              ??         80h
        ram:18b3 e6              ??         E6h
        ram:18b4 20              ??         20h
        ram:18b5 20              ??         20h
        ram:18b6 26              ??         26h    &
        ram:18b7 cd              ??         CDh
        ram:18b8 c8              ??         C8h
        ram:18b9 22              ??         22h    "
        ram:18ba d2              ??         D2h
        ram:18bb e0              ??         E0h
        ram:18bc 18              ??         18h
        ram:18bd cd              ??         CDh
        ram:18be e0              ??         E0h
        ram:18bf 21              ??         21h    !
        ram:18c0 cd              ??         CDh
        ram:18c1 90              ??         90h
        ram:18c2 25              ??         25h    %
        ram:18c3 21              ??         21h    !
        ram:18c4 85              ??         85h
        ram:18c5 80              ??         80h
        ram:18c6 3e              ??         3Eh    >
        ram:18c7 10              ??         10h
        ram:18c8 86              ??         86h
        ram:18c9 77              ??         77h    w
        ram:18ca 21              ??         21h    !
        ram:18cb af              ??         AFh
        ram:18cc 80              ??         80h
        ram:18cd 35              ??         35h    5
        ram:18ce cd              ??         CDh
        ram:18cf 31              ??         31h    1
        ram:18d0 22              ??         22h    "
        ram:18d1 21              ??         21h    !
        ram:18d2 8d              ??         8Dh
        ram:18d3 80              ??         80h
        ram:18d4 35              ??         35h    5
        ram:18d5 21              ??         21h    !
        ram:18d6 98              ??         98h
        ram:18d7 80              ??         80h
        ram:18d8 34              ??         34h    4
        ram:18d9 c1              ??         C1h
        ram:18da 4e              ??         4Eh    N
        ram:18db 18              ??         18h
        ram:18dc 07              ??         07h
        ram:18dd cd              ??         CDh
        ram:18de 3d              ??         3Dh    =
        ram:18df 23              ??         23h    #
        ram:18e0 cd              ??         CDh
        ram:18e1 31              ??         31h    1
        ram:18e2 22              ??         22h    "
        ram:18e3 c1              ??         C1h
        ram:18e4 3a              ??         3Ah    :
        ram:18e5 ae              ??         AEh
        ram:18e6 80              ??         80h
        ram:18e7 e6              ??         E6h
        ram:18e8 10              ??         10h
        ram:18e9 cd              ??         CDh
        ram:18ea 04              ??         04h
        ram:18eb 23              ??         23h    #
        ram:18ec 10              ??         10h
        ram:18ed ba              ??         BAh
        ram:18ee c1              ??         C1h
        ram:18ef e1              ??         E1h
        ram:18f0 cb              ??         CBh
        ram:18f1 59              ??         59h    Y
        ram:18f2 20              ??         20h
        ram:18f3 0f              ??         0Fh
        ram:18f4 7e              ??         7Eh    ~
        ram:18f5 b8              ??         B8h
        ram:18f6 c2              ??         C2h
        ram:18f7 7e              ??         7Eh    ~
        ram:18f8 18              ??         18h
        ram:18f9 11              ??         11h
        ram:18fa ae              ??         AEh
        ram:18fb 80              ??         80h
        ram:18fc 1a              ??         1Ah
        ram:18fd ee              ??         EEh
        ram:18fe 30              ??         30h    0
        ram:18ff 12              ??         12h
        ram:1900 c3              ??         C3h
        ram:1901 7e              ??         7Eh    ~
        ram:1902 18              ??         18h
        ram:1903 cd              ??         CDh
        ram:1904 48              ??         48h    H
        ram:1905 0f              ??         0Fh
        ram:1906 21              ??         21h    !
        ram:1907 ff              ??         FFh
        ram:1908 fb              ??         FBh
        ram:1909 3a              ??         3Ah    :
        ram:190a ae              ??         AEh
        ram:190b 80              ??         80h
        ram:190c e6              ??         E6h
        ram:190d 80              ??         80h
        ram:190e 28              ??         28h    (
        ram:190f 01              ??         01h
        ram:1910 23              ??         23h    #
        ram:1911 22              ??         22h    "
        ram:1912 8e              ??         8Eh
        ram:1913 80              ??         80h
        ram:1914 cd              ??         CDh
        ram:1915 ba              ??         BAh
        ram:1916 23              ??         23h    #
        ram:1917 cd              ??         CDh
        ram:1918 4f              ??         4Fh    O
        ram:1919 0f              ??         0Fh
        ram:191a 3a              ??         3Ah    :
        ram:191b ae              ??         AEh
        ram:191c 80              ??         80h
        ram:191d e6              ??         E6h
        ram:191e 08              ??         08h
        ram:191f cc              ??         CCh
        ram:1920 ba              ??         BAh
        ram:1921 23              ??         23h    #
        ram:1922 0e              ??         0Eh
        ram:1923 00              ??         00h
        ram:1924 3a              ??         3Ah    :
        ram:1925 ae              ??         AEh
        ram:1926 80              ??         80h
        ram:1927 e6              ??         E6h
        ram:1928 03              ??         03h
        ram:1929 28              ??         28h    (
        ram:192a 0d              ??         0Dh
        ram:192b fe              ??         FEh
        ram:192c 02              ??         02h
        ram:192d 38              ??         38h    8
        ram:192e 04              ??         04h
        ram:192f 0e              ??         0Eh
        ram:1930 80              ??         80h
        ram:1931 20              ??         20h
        ram:1932 05              ??         05h
        ram:1933 3e              ??         3Eh    >
        ram:1934 80              ??         80h
        ram:1935 32              ??         32h    2
        ram:1936 8d              ??         8Dh
        ram:1937 80              ??         80h
        ram:1938 79              ??         79h    y
        ram:1939 32              ??         32h    2
        ram:193a 82              ??         82h
        ram:193b 80              ??         80h
        ram:193c 3a              ??         3Ah    :
        ram:193d a3              ??         A3h
        ram:193e 80              ??         80h
        ram:193f e6              ??         E6h
        ram:1940 07              ??         07h
        ram:1941 fe              ??         FEh
        ram:1942 02              ??         02h
        ram:1943 d8              ??         D8h
        ram:1944 ca              ??         CAh
        ram:1945 95              ??         95h
        ram:1946 20              ??         20h
        ram:1947 cd              ??         CDh
        ram:1948 d6              ??         D6h
        ram:1949 23              ??         23h    #
        ram:194a ca              ??         CAh
        ram:194b 14              ??         14h
        ram:194c 0a              ??         0Ah
        ram:194d c3              ??         C3h
        ram:194e 23              ??         23h    #
        ram:194f 10              ??         10h
        ram:1950 09              ??         09h
        ram:1951 96              ??         96h
        ram:1952 68              ??         68h    h
        ram:1953 65              ??         65h    e
        ram:1954 24              ??         24h    $
        ram:1955 91              ??         91h
        ram:1956 16              ??         16h
        ram:1957 20              ??         20h
        ram:1958 10              ??         10h
        ram:1959 03              ??         03h
        ram:195a 35              ??         35h    5
        ram:195b 34              ??         34h    4
        ram:195c 77              ??         77h    w
        ram:195d 31              ??         31h    1
        ram:195e 07              ??         07h
        ram:195f 56              ??         56h    V
        ram:1960 09              ??         09h
        ram:1961 99              ??         99h
        ram:1962 96              ??         96h
        ram:1963 66              ??         66h    f
        ram:1964 68              ??         68h    h
        ram:1965 66              ??         66h    f
        ram:1966 65              ??         65h    e
        ram:1967 24              ??         24h    $
        ram:1968 10              ??         10h
        ram:1969 00              ??         00h
        ram:196a 03              ??         03h
        ram:196b 33              ??         33h    3
        ram:196c 35              ??         35h    5
        ram:196d 33              ??         33h    3
        ram:196e 34              ??         34h    4
        ram:196f 76              ??         76h    v
        ram:1970 09              ??         09h
        ram:1971 99              ??         99h
        ram:1972 99              ??         99h
        ram:1973 96              ??         96h
        ram:1974 66              ??         66h    f
        ram:1975 66              ??         66h    f
        ram:1976 68              ??         68h    h
        ram:1977 67              ??         67h    g
        ram:1978 10              ??         10h
        ram:1979 00              ??         00h
        ram:197a 00              ??         00h
        ram:197b 03              ??         03h
        ram:197c 33              ??         33h    3
        ram:197d 33              ??         33h    3
        ram:197e 35              ??         35h    5
        ram:197f 33              ??         33h    3
        ram:1980 09              ??         09h
        ram:1981 99              ??         99h
        ram:1982 99              ??         99h
        ram:1983 99              ??         99h
        ram:1984 96              ??         96h
        ram:1985 66              ??         66h    f
        ram:1986 66              ??         66h    f
        ram:1987 67              ??         67h    g
        ram:1988 10              ??         10h
        ram:1989 00              ??         00h
        ram:198a 00              ??         00h
        ram:198b 00              ??         00h
        ram:198c 03              ??         03h
        ram:198d 33              ??         33h    3
        ram:198e 33              ??         33h    3
        ram:198f 33              ??         33h    3
        ram:1990 09              ??         09h
        ram:1991 99              ??         99h
        ram:1992 99              ??         99h
        ram:1993 99              ??         99h
        ram:1994 99              ??         99h
        ram:1995 96              ??         96h
        ram:1996 66              ??         66h    f
        ram:1997 67              ??         67h    g
        ram:1998 10              ??         10h
        ram:1999 00              ??         00h
        ram:199a 00              ??         00h
        ram:199b 00              ??         00h
        ram:199c 00              ??         00h
        ram:199d 03              ??         03h
        ram:199e 33              ??         33h    3
        ram:199f 33              ??         33h    3
        ram:19a0 09              ??         09h
        ram:19a1 99              ??         99h
        ram:19a2 99              ??         99h
        ram:19a3 99              ??         99h
        ram:19a4 99              ??         99h
        ram:19a5 99              ??         99h
        ram:19a6 96              ??         96h
        ram:19a7 67              ??         67h    g
        ram:19a8 10              ??         10h
        ram:19a9 00              ??         00h
        ram:19aa 00              ??         00h
        ram:19ab 00              ??         00h
        ram:19ac 00              ??         00h
        ram:19ad 00              ??         00h
        ram:19ae 03              ??         03h
        ram:19af 33              ??         33h    3
        ram:19b0 09              ??         09h
        ram:19b1 99              ??         99h
        ram:19b2 99              ??         99h
        ram:19b3 99              ??         99h
        ram:19b4 99              ??         99h
        ram:19b5 99              ??         99h
        ram:19b6 99              ??         99h
        ram:19b7 97              ??         97h
        ram:19b8 10              ??         10h
        ram:19b9 00              ??         00h
        ram:19ba 00              ??         00h
        ram:19bb 00              ??         00h
        ram:19bc 00              ??         00h
        ram:19bd 00              ??         00h
        ram:19be 00              ??         00h
        ram:19bf 03              ??         03h
        ram:19c0 10              ??         10h
        ram:19c1 00              ??         00h
        ram:19c2 00              ??         00h
        ram:19c3 00              ??         00h
        ram:19c4 00              ??         00h
        ram:19c5 00              ??         00h
        ram:19c6 00              ??         00h
        ram:19c7 00              ??         00h
        ram:19c8 10              ??         10h
        ram:19c9 00              ??         00h
        ram:19ca 00              ??         00h
        ram:19cb 00              ??         00h
        ram:19cc 00              ??         00h
        ram:19cd 00              ??         00h
        ram:19ce 00              ??         00h
        ram:19cf 00              ??         00h
        ram:19d0 95              ??         95h
        ram:19d1 09              ??         09h
        ram:19d2 85              ??         85h
        ram:19d3 29              ??         29h    )
        ram:19d4 44              ??         44h    D
        ram:19d5 83              ??         83h
        ram:19d6 72              ??         72h    r
        ram:19d7 02              ??         02h
        ram:19d8 10              ??         10h
        ram:19d9 52              ??         52h    R
        ram:19da 06              ??         06h
        ram:19db 69              ??         69h    i
        ram:19dc 51              ??         51h    Q
        ram:19dd 89              ??         89h
        ram:19de 55              ??         55h    U
        ram:19df 92              ??         92h
        ram:19e0 99              ??         99h
        ram:19e1 94              ??         94h
        ram:19e2 95              ??         95h
        ram:19e3 10              ??         10h
        ram:19e4 19              ??         19h
        ram:19e5 99              ??         99h
        ram:19e6 69              ??         69h    i
        ram:19e7 80              ??         80h
        ram:19e8 10              ??         10h
        ram:19e9 00              ??         00h
        ram:19ea 50              ??         50h    P
        ram:19eb 52              ??         52h    R
        ram:19ec 03              ??         03h
        ram:19ed 08              ??         08h
        ram:19ee 13              ??         13h
        ram:19ef 30              ??         30h    0
        ram:19f0 99              ??         99h
        ram:19f1 99              ??         99h
        ram:19f2 94              ??         94h
        ram:19f3 94              ??         94h
        ram:19f4 95              ??         95h
        ram:19f5 10              ??         10h
        ram:19f6 20              ??         20h
        ram:19f7 35              ??         35h    5
        ram:19f8 10              ??         10h
        ram:19f9 00              ??         00h
        ram:19fa 00              ??         00h
        ram:19fb 50              ??         50h    P
        ram:19fc 50              ??         50h    P
        ram:19fd 52              ??         52h    R
        ram:19fe 03              ??         03h
        ram:19ff 05              ??         05h
        ram:1a00 99              ??         99h
        ram:1a01 99              ??         99h
        ram:1a02 99              ??         99h
        ram:1a03 94              ??         94h
        ram:1a04 94              ??         94h
        ram:1a05 94              ??         94h
        ram:1a06 95              ??         95h
        ram:1a07 10              ??         10h
        ram:1a08 10              ??         10h
        ram:1a09 00              ??         00h
        ram:1a0a 00              ??         00h
        ram:1a0b 00              ??         00h
        ram:1a0c 50              ??         50h    P
        ram:1a0d 50              ??         50h    P
        ram:1a0e 50              ??         50h    P
        ram:1a0f 52              ??         52h    R
        ram:1a10 99              ??         99h
        ram:1a11 99              ??         99h
        ram:1a12 99              ??         99h
        ram:1a13 99              ??         99h
        ram:1a14 94              ??         94h
        ram:1a15 94              ??         94h
        ram:1a16 94              ??         94h
        ram:1a17 95              ??         95h
        ram:1a18 10              ??         10h
        ram:1a19 00              ??         00h
        ram:1a1a 00              ??         00h
        ram:1a1b 00              ??         00h
        ram:1a1c 00              ??         00h
        ram:1a1d 50              ??         50h    P
        ram:1a1e 50              ??         50h    P
        ram:1a1f 51              ??         51h    Q
        ram:1a20 99              ??         99h
        ram:1a21 99              ??         99h
        ram:1a22 99              ??         99h
        ram:1a23 99              ??         99h
        ram:1a24 99              ??         99h
        ram:1a25 94              ??         94h
        ram:1a26 94              ??         94h
        ram:1a27 95              ??         95h
        ram:1a28 10              ??         10h
        ram:1a29 00              ??         00h
        ram:1a2a 00              ??         00h
        ram:1a2b 00              ??         00h
        ram:1a2c 00              ??         00h
        ram:1a2d 00              ??         00h
        ram:1a2e 50              ??         50h    P
        ram:1a2f 51              ??         51h    Q
        ram:1a30 99              ??         99h
        ram:1a31 99              ??         99h
        ram:1a32 99              ??         99h
        ram:1a33 99              ??         99h
        ram:1a34 99              ??         99h
        ram:1a35 99              ??         99h
        ram:1a36 94              ??         94h
        ram:1a37 95              ??         95h
        ram:1a38 10              ??         10h
        ram:1a39 00              ??         00h
        ram:1a3a 00              ??         00h
        ram:1a3b 00              ??         00h
        ram:1a3c 00              ??         00h
        ram:1a3d 00              ??         00h
        ram:1a3e 00              ??         00h
        ram:1a3f 51              ??         51h    Q
        ram:1a40 99              ??         99h
        ram:1a41 99              ??         99h
        ram:1a42 99              ??         99h
        ram:1a43 99              ??         99h
        ram:1a44 99              ??         99h
        ram:1a45 99              ??         99h
        ram:1a46 99              ??         99h
        ram:1a47 95              ??         95h
        ram:1a48 10              ??         10h
        ram:1a49 00              ??         00h
        ram:1a4a 00              ??         00h
        ram:1a4b 00              ??         00h
        ram:1a4c 00              ??         00h
        ram:1a4d 00              ??         00h
        ram:1a4e 00              ??         00h
        ram:1a4f 01              ??         01h
        ram:1a50 0e              ??         0Eh
        ram:1a51 81              ??         81h
        ram:1a52 18              ??         18h
        ram:1a53 0a              ??         0Ah
        ram:1a54 0e              ??         0Eh
        ram:1a55 04              ??         04h
        ram:1a56 18              ??         18h
        ram:1a57 06              ??         06h
        ram:1a58 0e              ??         0Eh
        ram:1a59 02              ??         02h
        ram:1a5a 18              ??         18h
        ram:1a5b 02              ??         02h
        ram:1a5c 0e              ??         0Eh
        ram:1a5d 01              ??         01h
        ram:1a5e cd              ??         CDh
        ram:1a5f 73              ??         73h    s
        ram:1a60 25              ??         25h    %
        ram:1a61 f5              ??         F5h
        ram:1a62 79              ??         79h    y
        ram:1a63 32              ??         32h    2
        ram:1a64 a3              ??         A3h
        ram:1a65 80              ??         80h
        ram:1a66 cd              ??         CDh
        ram:1a67 ee              ??         EEh
        ram:1a68 25              ??         25h    %
        ram:1a69 30              ??         30h    0
        ram:1a6a 0f              ??         0Fh
        ram:1a6b 3e              ??         3Eh    >
        ram:1a6c 80              ??         80h
        ram:1a6d cd              ??         CDh
        ram:1a6e b3              ??         B3h
        ram:1a6f 17              ??         17h
        ram:1a70 f1              ??         F1h
        ram:1a71 21              ??         21h    !
        ram:1a72 a3              ??         A3h
        ram:1a73 80              ??         80h
        ram:1a74 cb              ??         CBh
        ram:1a75 4e              ??         4Eh    N
        ram:1a76 c0              ??         C0h
        ram:1a77 c3              ??         C3h
        ram:1a78 bd              ??         BDh
        ram:1a79 0f              ??         0Fh
        ram:1a7a c5              ??         C5h
        ram:1a7b cb              ??         CBh
        ram:1a7c 51              ??         51h    Q
        ram:1a7d 28              ??         28h    (
        ram:1a7e 2c              ??         2Ch    ,
        ram:1a7f cd              ??         CDh
        ram:1a80 66              ??         66h    f
        ram:1a81 0d              ??         0Dh
        ram:1a82 11              ??         11h
        ram:1a83 02              ??         02h
        ram:1a84 fc              ??         FCh
        ram:1a85 cd              ??         CDh
        ram:1a86 8b              ??         8Bh
        ram:1a87 26              ??         26h    &
        ram:1a88 38              ??         38h    8
        ram:1a89 0b              ??         0Bh
        ram:1a8a cd              ??         CDh
        ram:1a8b 3e              ??         3Eh    >
        ram:1a8c 21              ??         21h    !
        ram:1a8d c1              ??         C1h
        ram:1a8e f1              ??         F1h
        ram:1a8f cb              ??         CBh
        ram:1a90 49              ??         49h    I
        ram:1a91 c0              ??         C0h
        ram:1a92 c3              ??         C3h
        ram:1a93 bd              ??         BDh
        ram:1a94 0f              ??         0Fh
        ram:1a95 cd              ??         CDh
        ram:1a96 75              ??         75h    u
        ram:1a97 14              ??         14h
        ram:1a98 cd              ??         CDh
        ram:1a99 69              ??         69h    i
        ram:1a9a 0d              ??         0Dh
        ram:1a9b cf              ??         CFh
        ram:1a9c cd              ??         CDh
        ram:1a9d 56              ??         56h    V
        ram:1a9e 21              ??         21h    !
        ram:1a9f cd              ??         CDh
        ram:1aa0 23              ??         23h    #
        ram:1aa1 10              ??         10h
        ram:1aa2 cf              ??         CFh
        ram:1aa3 cd              ??         CDh
        ram:1aa4 3e              ??         3Eh    >
        ram:1aa5 21              ??         21h    !
        ram:1aa6 cd              ??         CDh
        ram:1aa7 71              ??         71h    q
        ram:1aa8 0d              ??         0Dh
        ram:1aa9 18              ??         18h
        ram:1aaa e2              ??         E2h
        ram:1aab cd              ??         CDh
        ram:1aac 75              ??         75h    u
        ram:1aad 14              ??         14h
        ram:1aae cd              ??         CDh
        ram:1aaf 1f              ??         1Fh
        ram:1ab0 10              ??         10h
        ram:1ab1 cd              ??         CDh
        ram:1ab2 f5              ??         F5h
        ram:1ab3 1f              ??         1Fh
        ram:1ab4 cd              ??         CDh
        ram:1ab5 75              ??         75h    u
        ram:1ab6 20              ??         20h
        ram:1ab7 c1              ??         C1h
        ram:1ab8 cb              ??         CBh
        ram:1ab9 41              ??         41h    A
        ram:1aba c5              ??         C5h
        ram:1abb c4              ??         C4h
        ram:1abc 9b              ??         9Bh
        ram:1abd 0f              ??         0Fh
        ram:1abe f7              ??         F7h
        ram:1abf cd              ??         CDh
        ram:1ac0 52              ??         52h    R
        ram:1ac1 0e              ??         0Eh
        ram:1ac2 c1              ??         C1h
        ram:1ac3 cb              ??         CBh
        ram:1ac4 79              ??         79h    y
        ram:1ac5 28              ??         28h    (
        ram:1ac6 c7              ??         C7h
        ram:1ac7 c5              ??         C5h
        ram:1ac8 cd              ??         CDh
        ram:1ac9 b5              ??         B5h
        ram:1aca 23              ??         23h    #
        ram:1acb cd              ??         CDh
        ram:1acc 29              ??         29h    )
        ram:1acd 20              ??         20h
        ram:1ace f7              ??         F7h
        ram:1acf cd              ??         CDh
        ram:1ad0 52              ??         52h    R
        ram:1ad1 0e              ??         0Eh
        ram:1ad2 cf              ??         CFh
        ram:1ad3 cd              ??         CDh
        ram:1ad4 56              ??         56h    V
        ram:1ad5 20              ??         20h
        ram:1ad6 18              ??         18h
        ram:1ad7 b5              ??         B5h
        ram:1ad8 2a              ??         2Ah    *
        ram:1ad9 83              ??         83h
        ram:1ada 80              ??         80h
        ram:1adb 11              ??         11h
        ram:1adc f8              ??         F8h
        ram:1add fb              ??         FBh
        ram:1ade 7d              ??         7Dh    }
        ram:1adf b7              ??         B7h
        ram:1ae0 ed              ??         EDh
        ram:1ae1 52              ??         52h    R
        ram:1ae2 d8              ??         D8h
        ram:1ae3 2f              ??         2Fh    /
        ram:1ae4 21              ??         21h    !
        ram:1ae5 af              ??         AFh
        ram:1ae6 80              ??         80h
        ram:1ae7 77              ??         77h    w
        ram:1ae8 c9              ??         C9h
        ram:1ae9 3a              ??         3Ah    :
        ram:1aea af              ??         AFh
        ram:1aeb 80              ??         80h
        ram:1aec 57              ??         57h    W
        ram:1aed 81              ??         81h
        ram:1aee 32              ??         32h    2
        ram:1aef 8d              ??         8Dh
        ram:1af0 80              ??         80h
        ram:1af1 92              ??         92h
        ram:1af2 92              ??         92h
        ram:1af3 32              ??         32h    2
        ram:1af4 98              ??         98h
        ram:1af5 80              ??         80h
        ram:1af6 c9              ??         C9h
        ram:1af7 3e              ??         3Eh    >
        ram:1af8 01              ??         01h
        ram:1af9 06              ??         06h
        ram:1afa 20              ??         20h
        ram:1afb 18              ??         18h
        ram:1afc 34              ??         34h    4
        ram:1afd cd              ??         CDh
        ram:1afe 66              ??         66h    f
        ram:1aff 21              ??         21h    !
        ram:1b00 16              ??         16h
        ram:1b01 02              ??         02h
        ram:1b02 06              ??         06h
        ram:1b03 20              ??         20h
        ram:1b04 c5              ??         C5h
        ram:1b05 c3              ??         C3h
        ram:1b06 88              ??         88h
        ram:1b07 1b              ??         1Bh
        ram:1b08 af              ??         AFh
        ram:1b09 06              ??         06h
        ram:1b0a 20              ??         20h
        ram:1b0b 18              ??         18h
        ram:1b0c 24              ??         24h    $
        ram:1b0d cd              ??         CDh
        ram:1b0e c3              ??         C3h
        ram:1b0f 1e              ??         1Eh
        ram:1b10 da              ??         DAh
        ram:1b11 14              ??         14h
        ram:1b12 0a              ??         0Ah
        ram:1b13 18              ??         18h
        ram:1b14 06              ??         06h
        ram:1b15 cd              ??         CDh
        ram:1b16 c3              ??         C3h
        ram:1b17 1e              ??         1Eh
        ram:1b18 da              ??         DAh
        ram:1b19 0f              ??         0Fh
        ram:1b1a 3e              ??         3Eh    >
        ram:1b1b 3e              ??         3Eh    >
        ram:1b1c 01              ??         01h
        ram:1b1d 18              ??         18h
        ram:1b1e 10              ??         10h
        ram:1b1f cd              ??         CDh
        ram:1b20 66              ??         66h    f
        ram:1b21 21              ??         21h    !
        ram:1b22 16              ??         16h
        ram:1b23 02              ??         02h
        ram:1b24 c3              ??         C3h
        ram:1b25 86              ??         86h
        ram:1b26 1b              ??         1Bh
        ram:1b27 cd              ??         CDh
        ram:1b28 c3              ??         C3h
        ram:1b29 1e              ??         1Eh
        ram:1b2a c8              ??         C8h
        ram:1b2b da              ??         DAh
        ram:1b2c 15              ??         15h
        ram:1b2d 3e              ??         3Eh    >
        ram:1b2e af              ??         AFh
        ram:1b2f 06              ??         06h
        ram:1b30 00              ??         00h
        ram:1b31 c5              ??         C5h
        ram:1b32 b7              ??         B7h
        ram:1b33 f5              ??         F5h
        ram:1b34 cd              ??         CDh
        ram:1b35 e3              ??         E3h
        ram:1b36 1e              ??         1Eh
        ram:1b37 11              ??         11h
        ram:1b38 00              ??         00h
        ram:1b39 fc              ??         FCh
        ram:1b3a cd              ??         CDh
        ram:1b3b 8b              ??         8Bh
        ram:1b3c 26              ??         26h    &
        ram:1b3d 38              ??         38h    8
        ram:1b3e 0d              ??         0Dh
        ram:1b3f 20              ??         20h
        ram:1b40 08              ??         08h
        ram:1b41 cd              ??         CDh
        ram:1b42 d1              ??         D1h
        ram:1b43 23              ??         23h    #
        ram:1b44 28              ??         28h    (
        ram:1b45 06              ??         06h
        ram:1b46 cd              ??         CDh
        ram:1b47 2b              ??         2Bh    +
        ram:1b48 24              ??         24h    $
        ram:1b49 c2              ??         C2h
        ram:1b4a 14              ??         14h
        ram:1b4b 0a              ??         0Ah
        ram:1b4c cd              ??         CDh
        ram:1b4d 21              ??         21h    !
        ram:1b4e 20              ??         20h
        ram:1b4f cd              ??         CDh
        ram:1b50 f5              ??         F5h
        ram:1b51 1f              ??         1Fh
        ram:1b52 cd              ??         CDh
        ram:1b53 66              ??         66h    f
        ram:1b54 21              ??         21h    !
        ram:1b55 cd              ??         CDh
        ram:1b56 81              ??         81h
        ram:1b57 0d              ??         0Dh
        ram:1b58 cd              ??         CDh
        ram:1b59 8d              ??         8Dh
        ram:1b5a 20              ??         20h
        ram:1b5b cd              ??         CDh
        ram:1b5c 60              ??         60h    `
        ram:1b5d 20              ??         20h
        ram:1b5e cd              ??         CDh
        ram:1b5f 66              ??         66h    f
        ram:1b60 21              ??         21h    !
        ram:1b61 cd              ??         CDh
        ram:1b62 58              ??         58h    X
        ram:1b63 0d              ??         0Dh
        ram:1b64 cd              ??         CDh
        ram:1b65 29              ??         29h    )
        ram:1b66 20              ??         20h
        ram:1b67 cd              ??         CDh
        ram:1b68 35              ??         35h    5
        ram:1b69 0e              ??         0Eh
        ram:1b6a cd              ??         CDh
        ram:1b6b eb              ??         EBh
        ram:1b6c 10              ??         10h
        ram:1b6d cd              ??         CDh
        ram:1b6e 3f              ??         3Fh    ?
        ram:1b6f 1f              ??         1Fh
        ram:1b70 ca              ??         CAh
        ram:1b71 14              ??         14h
        ram:1b72 0a              ??         0Ah
        ram:1b73 af              ??         AFh
        ram:1b74 32              ??         32h    2
        ram:1b75 ad              ??         ADh
        ram:1b76 80              ??         80h
        ram:1b77 f1              ??         F1h
        ram:1b78 28              ??         28h    (
        ram:1b79 05              ??         05h
        ram:1b7a cd              ??         CDh
        ram:1b7b 07              ??         07h
        ram:1b7c 20              ??         20h
        ram:1b7d 18              ??         18h
        ram:1b7e 04              ??         04h
        ram:1b7f cf              ??         CFh
        ram:1b80 cd              ??         CDh
        ram:1b81 56              ??         56h    V
        ram:1b82 20              ??         20h
        ram:1b83 57              ??         57h    W
        ram:1b84 18              ??         18h
        ram:1b85 05              ??         05h
        ram:1b86 af              ??         AFh
        ram:1b87 f5              ??         F5h
        ram:1b88 cd              ??         CDh
        ram:1b89 e3              ??         E3h
        ram:1b8a 1e              ??         1Eh
        ram:1b8b cd              ??         CDh
        ram:1b8c 68              ??         68h    h
        ram:1b8d 25              ??         25h    %
        ram:1b8e 28              ??         28h    (
        ram:1b8f 04              ??         04h
        ram:1b90 7a              ??         7Ah    z
        ram:1b91 c6              ??         C6h
        ram:1b92 0c              ??         0Ch
        ram:1b93 57              ??         57h    W
        ram:1b94 cd              ??         CDh
        ram:1b95 62              ??         62h    b
        ram:1b96 25              ??         25h    %
        ram:1b97 28              ??         28h    (
        ram:1b98 04              ??         04h
        ram:1b99 7a              ??         7Ah    z
        ram:1b9a ee              ??         EEh
        ram:1b9b 04              ??         04h
        ram:1b9c 57              ??         57h    W
        ram:1b9d cd              ??         CDh
        ram:1b9e d6              ??         D6h
        ram:1b9f 23              ??         23h    #
        ram:1ba0 20              ??         20h
        ram:1ba1 0e              ??         0Eh
        ram:1ba2 cd              ??         CDh
        ram:1ba3 d1              ??         D1h
        ram:1ba4 23              ??         23h    #
        ram:1ba5 ca              ??         CAh
        ram:1ba6 98              ??         98h
        ram:1ba7 21              ??         21h    !
        ram:1ba8 cb              ??         CBh
        ram:1ba9 e2              ??         E2h
        ram:1baa d5              ??         D5h
        ram:1bab cd              ??         CDh
        ram:1bac ba              ??         BAh
        ram:1bad 23              ??         23h    #
        ram:1bae 18              ??         18h
        ram:1baf 1a              ??         1Ah
        ram:1bb0 d5              ??         D5h
        ram:1bb1 cd              ??         CDh
        ram:1bb2 d1              ??         D1h
        ram:1bb3 23              ??         23h    #
        ram:1bb4 28              ??         28h    (
        ram:1bb5 14              ??         14h
        ram:1bb6 cd              ??         CDh
        ram:1bb7 21              ??         21h    !
        ram:1bb8 20              ??         20h
        ram:1bb9 cd              ??         CDh
        ram:1bba 30              ??         30h    0
        ram:1bbb 23              ??         23h    #
        ram:1bbc ed              ??         EDh
        ram:1bbd 5b              ??         5Bh    [
        ram:1bbe 8e              ??         8Eh
        ram:1bbf 80              ??         80h
        ram:1bc0 cd              ??         CDh
        ram:1bc1 8c              ??         8Ch
        ram:1bc2 26              ??         26h    &
        ram:1bc3 cd              ??         CDh
        ram:1bc4 60              ??         60h    `
        ram:1bc5 20              ??         20h
        ram:1bc6 d1              ??         D1h
        ram:1bc7 30              ??         30h    0
        ram:1bc8 df              ??         DFh
        ram:1bc9 d5              ??         D5h
        ram:1bca cd              ??         CDh
        ram:1bcb 82              ??         82h
        ram:1bcc 26              ??         26h    &
        ram:1bcd 11              ??         11h
        ram:1bce 00              ??         00h
        ram:1bcf fc              ??         FCh
        ram:1bd0 19              ??         19h
        ram:1bd1 38              ??         38h    8
        ram:1bd2 0a              ??         0Ah
        ram:1bd3 ed              ??         EDh
        ram:1bd4 52              ??         52h    R
        ram:1bd5 20              ??         20h
        ram:1bd6 03              ??         03h
        ram:1bd7 eb              ??         EBh
        ram:1bd8 18              ??         18h
        ram:1bd9 03              ??         03h
        ram:1bda 21              ??         21h    !
        ram:1bdb 01              ??         01h
        ram:1bdc 00              ??         00h
        ram:1bdd 2b              ??         2Bh    +
        ram:1bde 22              ??         22h    "
        ram:1bdf 83              ??         83h
        ram:1be0 80              ??         80h
        ram:1be1 f1              ??         F1h
        ram:1be2 c1              ??         C1h
        ram:1be3 80              ??         80h
        ram:1be4 f5              ??         F5h
        ram:1be5 21              ??         21h    !
        ram:1be6 ff              ??         FFh
        ram:1be7 fb              ??         FBh
        ram:1be8 22              ??         22h    "
        ram:1be9 8e              ??         8Eh
        ram:1bea 80              ??         80h
        ram:1beb cd              ??         CDh
        ram:1bec d1              ??         D1h
        ram:1bed 23              ??         23h    #
        ram:1bee 28              ??         28h    (
        ram:1bef 0b              ??         0Bh
        ram:1bf0 cd              ??         CDh
        ram:1bf1 d8              ??         D8h
        ram:1bf2 1a              ??         1Ah
        ram:1bf3 30              ??         30h    0
        ram:1bf4 0e              ??         0Eh
        ram:1bf5 cd              ??         CDh
        ram:1bf6 23              ??         23h    #
        ram:1bf7 10              ??         10h
        ram:1bf8 cd              ??         CDh
        ram:1bf9 73              ??         73h    s
        ram:1bfa 25              ??         25h    %
        ram:1bfb f1              ??         F1h
        ram:1bfc 32              ??         32h    2
        ram:1bfd ae              ??         AEh
        ram:1bfe 80              ??         80h
        ram:1bff 47              ??         47h    G
        ram:1c00 c3              ??         C3h
        ram:1c01 0f              ??         0Fh
        ram:1c02 1d              ??         1Dh
        ram:1c03 cd              ??         CDh
        ram:1c04 21              ??         21h    !
        ram:1c05 20              ??         20h
        ram:1c06 21              ??         21h    !
        ram:1c07 97              ??         97h
        ram:1c08 80              ??         80h
        ram:1c09 11              ??         11h
        ram:1c0a a2              ??         A2h
        ram:1c0b 80              ??         80h
        ram:1c0c cd              ??         CDh
        ram:1c0d 43              ??         43h    C
        ram:1c0e 23              ??         23h    #
        ram:1c0f d1              ??         D1h
        ram:1c10 cb              ??         CBh
        ram:1c11 f2              ??         F2h
        ram:1c12 21              ??         21h    !
        ram:1c13 af              ??         AFh
        ram:1c14 80              ??         80h
        ram:1c15 7e              ??         7Eh    ~
        ram:1c16 38              ??         38h    8
        ram:1c17 0f              ??         0Fh
        ram:1c18 b7              ??         B7h
        ram:1c19 20              ??         20h
        ram:1c1a 09              ??         09h
        ram:1c1b d5              ??         D5h
        ram:1c1c 3e              ??         3Eh    >
        ram:1c1d 02              ??         02h
        ram:1c1e cd              ??         CDh
        ram:1c1f 81              ??         81h
        ram:1c20 24              ??         24h    $
        ram:1c21 c3              ??         C3h
        ram:1c22 20              ??         20h
        ram:1c23 1d              ??         1Dh
        ram:1c24 3d              ??         3Dh    =
        ram:1c25 cb              ??         CBh
        ram:1c26 b2              ??         B2h
        ram:1c27 2b              ??         2Bh    +
        ram:1c28 72              ??         72h    r
        ram:1c29 3c              ??         3Ch    <
        ram:1c2a 4f              ??         4Fh    O
        ram:1c2b c5              ??         C5h
        ram:1c2c cd              ??         CDh
        ram:1c2d e9              ??         E9h
        ram:1c2e 1a              ??         1Ah
        ram:1c2f 23              ??         23h    #
        ram:1c30 23              ??         23h    #
        ram:1c31 e5              ??         E5h
        ram:1c32 06              ??         06h
        ram:1c33 00              ??         00h
        ram:1c34 18              ??         18h
        ram:1c35 02              ??         02h
        ram:1c36 c1              ??         C1h
        ram:1c37 04              ??         04h
        ram:1c38 c5              ??         C5h
        ram:1c39 cd              ??         CDh
        ram:1c3a ba              ??         BAh
        ram:1c3b 20              ??         20h
        ram:1c3c 3a              ??         3Ah    :
        ram:1c3d 98              ??         98h
        ram:1c3e 80              ??         80h
        ram:1c3f cd              ??         CDh
        ram:1c40 45              ??         45h    E
        ram:1c41 22              ??         22h    "
        ram:1c42 cd              ??         CDh
        ram:1c43 3d              ??         3Dh    =
        ram:1c44 23              ??         23h    #
        ram:1c45 38              ??         38h    8
        ram:1c46 14              ??         14h
        ram:1c47 cd              ??         CDh
        ram:1c48 31              ??         31h    1
        ram:1c49 22              ??         22h    "
        ram:1c4a cd              ??         CDh
        ram:1c4b ff              ??         FFh
        ram:1c4c 22              ??         22h    "
        ram:1c4d d2              ??         D2h
        ram:1c4e 36              ??         36h    6
        ram:1c4f 1c              ??         1Ch
        ram:1c50 cd              ??         CDh
        ram:1c51 e0              ??         E0h
        ram:1c52 21              ??         21h    !
        ram:1c53 21              ??         21h    !
        ram:1c54 90              ??         90h
        ram:1c55 80              ??         80h
        ram:1c56 cd              ??         CDh
        ram:1c57 0b              ??         0Bh
        ram:1c58 22              ??         22h    "
        ram:1c59 18              ??         18h
        ram:1c5a db              ??         DBh
        ram:1c5b cd              ??         CDh
        ram:1c5c c2              ??         C2h
        ram:1c5d 20              ??         20h
        ram:1c5e c1              ??         C1h
        ram:1c5f e1              ??         E1h
        ram:1c60 70              ??         70h    p
        ram:1c61 cb              ??         CBh
        ram:1c62 59              ??         59h    Y
        ram:1c63 20              ??         20h
        ram:1c64 0f              ??         0Fh
        ram:1c65 0c              ??         0Ch
        ram:1c66 23              ??         23h    #
        ram:1c67 e5              ??         E5h
        ram:1c68 21              ??         21h    !
        ram:1c69 8d              ??         8Dh
        ram:1c6a 80              ??         80h
        ram:1c6b 34              ??         34h    4
        ram:1c6c 21              ??         21h    !
        ram:1c6d 98              ??         98h
        ram:1c6e 80              ??         80h
        ram:1c6f 34              ??         34h    4
        ram:1c70 06              ??         06h
        ram:1c71 00              ??         00h
        ram:1c72 18              ??         18h
        ram:1c73 c4              ??         C4h
        ram:1c74 cd              ??         CDh
        ram:1c75 d5              ??         D5h
        ram:1c76 13              ??         13h
        ram:1c77 cd              ??         CDh
        ram:1c78 21              ??         21h    !
        ram:1c79 20              ??         20h
        ram:1c7a cd              ??         CDh
        ram:1c7b 95              ??         95h
        ram:1c7c 20              ??         20h
        ram:1c7d cd              ??         CDh
        ram:1c7e d2              ??         D2h
        ram:1c7f 13              ??         13h
        ram:1c80 cf              ??         CFh
        ram:1c81 cd              ??         CDh
        ram:1c82 60              ??         60h    `
        ram:1c83 20              ??         20h
        ram:1c84 cd              ??         CDh
        ram:1c85 19              ??         19h
        ram:1c86 10              ??         10h
        ram:1c87 cd              ??         CDh
        ram:1c88 73              ??         73h    s
        ram:1c89 25              ??         25h    %
        ram:1c8a 21              ??         21h    !
        ram:1c8b 90              ??         90h
        ram:1c8c 80              ??         80h
        ram:1c8d cd              ??         CDh
        ram:1c8e 78              ??         78h    x
        ram:1c8f 21              ??         21h    !
        ram:1c90 21              ??         21h    !
        ram:1c91 af              ??         AFh
        ram:1c92 80              ??         80h
        ram:1c93 c1              ??         C1h
        ram:1c94 41              ??         41h    A
        ram:1c95 af              ??         AFh
        ram:1c96 32              ??         32h    2
        ram:1c97 9a              ??         9Ah
        ram:1c98 80              ??         80h
        ram:1c99 23              ??         23h    #
        ram:1c9a e5              ??         E5h
        ram:1c9b 7e              ??         7Eh    ~
        ram:1c9c b7              ??         B7h
        ram:1c9d 28              ??         28h    (
        ram:1c9e 30              ??         30h    0
        ram:1c9f 4f              ??         4Fh    O
        ram:1ca0 05              ??         05h
        ram:1ca1 cd              ??         CDh
        ram:1ca2 47              ??         47h    G
        ram:1ca3 24              ??         24h    $
        ram:1ca4 3a              ??         3Ah    :
        ram:1ca5 ae              ??         AEh
        ram:1ca6 80              ??         80h
        ram:1ca7 e6              ??         E6h
        ram:1ca8 40              ??         40h    @
        ram:1ca9 20              ??         20h
        ram:1caa 01              ??         01h
        ram:1cab 04              ??         04h
        ram:1cac c5              ??         C5h
        ram:1cad 78              ??         78h    x
        ram:1cae 21              ??         21h    !
        ram:1caf af              ??         AFh
        ram:1cb0 80              ??         80h
        ram:1cb1 96              ??         96h
        ram:1cb2 cd              ??         CDh
        ram:1cb3 34              ??         34h    4
        ram:1cb4 22              ??         22h    "
        ram:1cb5 c1              ??         C1h
        ram:1cb6 c5              ??         C5h
        ram:1cb7 21              ??         21h    !
        ram:1cb8 a2              ??         A2h
        ram:1cb9 80              ??         80h
        ram:1cba 11              ??         11h
        ram:1cbb 97              ??         97h
        ram:1cbc 80              ??         80h
        ram:1cbd cd              ??         CDh
        ram:1cbe ce              ??         CEh
        ram:1cbf 22              ??         22h    "
        ram:1cc0 38              ??         38h    8
        ram:1cc1 15              ??         15h
        ram:1cc2 0d              ??         0Dh
        ram:1cc3 c2              ??         C2h
        ram:1cc4 b7              ??         B7h
        ram:1cc5 1c              ??         1Ch
        ram:1cc6 c1              ??         C1h
        ram:1cc7 3a              ??         3Ah    :
        ram:1cc8 ae              ??         AEh
        ram:1cc9 80              ??         80h
        ram:1cca e6              ??         E6h
        ram:1ccb 40              ??         40h    @
        ram:1ccc 28              ??         28h    (
        ram:1ccd 01              ??         01h
        ram:1cce 04              ??         04h
        ram:1ccf e1              ??         E1h
        ram:1cd0 cb              ??         CBh
        ram:1cd1 58              ??         58h    X
        ram:1cd2 20              ??         20h
        ram:1cd3 09              ??         09h
        ram:1cd4 04              ??         04h
        ram:1cd5 18              ??         18h
        ram:1cd6 c2              ??         C2h
        ram:1cd7 21              ??         21h    !
        ram:1cd8 9a              ??         9Ah
        ram:1cd9 80              ??         80h
        ram:1cda 34              ??         34h    4
        ram:1cdb 18              ??         18h
        ram:1cdc e5              ??         E5h
        ram:1cdd 21              ??         21h    !
        ram:1cde 00              ??         00h
        ram:1cdf fc              ??         FCh
        ram:1ce0 3a              ??         3Ah    :
        ram:1ce1 af              ??         AFh
        ram:1ce2 80              ??         80h
        ram:1ce3 5f              ??         5Fh    _
        ram:1ce4 16              ??         16h
        ram:1ce5 00              ??         00h
        ram:1ce6 b7              ??         B7h
        ram:1ce7 ed              ??         EDh
        ram:1ce8 52              ??         52h    R
        ram:1ce9 3a              ??         3Ah    :
        ram:1cea ae              ??         AEh
        ram:1ceb 80              ??         80h
        ram:1cec f5              ??         F5h
        ram:1ced cb              ??         CBh
        ram:1cee 77              ??         77h    w
        ram:1cef 28              ??         28h    (
        ram:1cf0 01              ??         01h
        ram:1cf1 2b              ??         2Bh    +
        ram:1cf2 22              ??         22h    "
        ram:1cf3 8e              ??         8Eh
        ram:1cf4 80              ??         80h
        ram:1cf5 3a              ??         3Ah    :
        ram:1cf6 9a              ??         9Ah
        ram:1cf7 80              ??         80h
        ram:1cf8 b7              ??         B7h
        ram:1cf9 28              ??         28h    (
        ram:1cfa 0a              ??         0Ah
        ram:1cfb 23              ??         23h    #
        ram:1cfc 22              ??         22h    "
        ram:1cfd 8e              ??         8Eh
        ram:1cfe 80              ??         80h
        ram:1cff 21              ??         21h    !
        ram:1d00 90              ??         90h
        ram:1d01 80              ??         80h
        ram:1d02 cd              ??         CDh
        ram:1d03 e4              ??         E4h
        ram:1d04 21              ??         21h    !
        ram:1d05 cd              ??         CDh
        ram:1d06 ba              ??         BAh
        ram:1d07 23              ??         23h    #
        ram:1d08 cd              ??         CDh
        ram:1d09 d2              ??         D2h
        ram:1d0a 13              ??         13h
        ram:1d0b cd              ??         CDh
        ram:1d0c 81              ??         81h
        ram:1d0d 0d              ??         0Dh
        ram:1d0e c1              ??         C1h
        ram:1d0f cb              ??         CBh
        ram:1d10 78              ??         78h    x
        ram:1d11 20              ??         20h
        ram:1d12 35              ??         35h    5
        ram:1d13 cb              ??         CBh
        ram:1d14 60              ??         60h    `
        ram:1d15 28              ??         28h    (
        ram:1d16 0a              ??         0Ah
        ram:1d17 c5              ??         C5h
        ram:1d18 3e              ??         3Eh    >
        ram:1d19 01              ??         01h
        ram:1d1a cd              ??         CDh
        ram:1d1b 86              ??         86h
        ram:1d1c 24              ??         24h    $
        ram:1d1d cd              ??         CDh
        ram:1d1e 58              ??         58h    X
        ram:1d1f 0d              ??         0Dh
        ram:1d20 c1              ??         C1h
        ram:1d21 c5              ??         C5h
        ram:1d22 78              ??         78h    x
        ram:1d23 e6              ??         E6h
        ram:1d24 0c              ??         0Ch
        ram:1d25 28              ??         28h    (
        ram:1d26 0e              ??         0Eh
        ram:1d27 fe              ??         FEh
        ram:1d28 0c              ??         0Ch
        ram:1d29 28              ??         28h    (
        ram:1d2a 0e              ??         0Eh
        ram:1d2b c5              ??         C5h
        ram:1d2c 3e              ??         3Eh    >
        ram:1d2d 04              ??         04h
        ram:1d2e cd              ??         CDh
        ram:1d2f 86              ??         86h
        ram:1d30 24              ??         24h    $
        ram:1d31 cd              ??         CDh
        ram:1d32 58              ??         58h    X
        ram:1d33 0d              ??         0Dh
        ram:1d34 c1              ??         C1h
        ram:1d35 cb              ??         CBh
        ram:1d36 58              ??         58h    X
        ram:1d37 28              ??         28h    (
        ram:1d38 03              ??         03h
        ram:1d39 cd              ??         CDh
        ram:1d3a 9b              ??         9Bh
        ram:1d3b 0f              ??         0Fh
        ram:1d3c f1              ??         F1h
        ram:1d3d e6              ??         E6h
        ram:1d3e 20              ??         20h
        ram:1d3f 20              ??         20h
        ram:1d40 07              ??         07h
        ram:1d41 fd              ??         FDh
        ram:1d42 cb              ??         CBh
        ram:1d43 00              ??         00h
        ram:1d44 56              ??         56h    V
        ram:1d45 c4              ??         C4h
        ram:1d46 31              ??         31h    1
        ram:1d47 0e              ??         0Eh
        ram:1d48 c3              ??         C3h
        ram:1d49 53              ??         53h    S
        ram:1d4a 0f              ??         0Fh
        ram:1d4b cd              ??         CDh
        ram:1d4c c3              ??         C3h
        ram:1d4d 1e              ??         1Eh
        ram:1d4e c8              ??         C8h
        ram:1d4f da              ??         DAh
        ram:1d50 1b              ??         1Bh
        ram:1d51 3e              ??         3Eh    >
        ram:1d52 cd              ??         CDh
        ram:1d53 92              ??         92h
        ram:1d54 26              ??         26h    &
        ram:1d55 38              ??         38h    8
        ram:1d56 09              ??         09h
        ram:1d57 20              ??         20h
        ram:1d58 4a              ??         4Ah    J
        ram:1d59 3a              ??         3Ah    :
        ram:1d5a 85              ??         85h
        ram:1d5b 80              ??         80h
        ram:1d5c fe              ??         FEh
        ram:1d5d 70              ??         70h    p
        ram:1d5e 30              ??         30h    0
        ram:1d5f 1a              ??         1Ah
        ram:1d60 cd              ??         CDh
        ram:1d61 66              ??         66h    f
        ram:1d62 21              ??         21h    !
        ram:1d63 cd              ??         CDh
        ram:1d64 73              ??         73h    s
        ram:1d65 25              ??         25h    %
        ram:1d66 e6              ??         E6h
        ram:1d67 80              ??         80h
        ram:1d68 f5              ??         F5h
        ram:1d69 f6              ??         F6h
        ram:1d6a 80              ??         80h
        ram:1d6b 47              ??         47h    G
        ram:1d6c cd              ??         CDh
        ram:1d6d 88              ??         88h
        ram:1d6e 25              ??         25h    %
        ram:1d6f cd              ??         CDh
        ram:1d70 e3              ??         E3h
        ram:1d71 1e              ??         1Eh
        ram:1d72 78              ??         78h    x
        ram:1d73 cd              ??         CDh
        ram:1d74 e4              ??         E4h
        ram:1d75 1b              ??         1Bh
        ram:1d76 f1              ??         F1h
        ram:1d77 c3              ??         C3h
        ram:1d78 bd              ??         BDh
        ram:1d79 0f              ??         0Fh
        ram:1d7a cd              ??         CDh
        ram:1d7b 86              ??         86h
        ram:1d7c 1d              ??         1Dh
        ram:1d7d cd              ??         CDh
        ram:1d7e 23              ??         23h    #
        ram:1d7f 10              ??         10h
        ram:1d80 cd              ??         CDh
        ram:1d81 6e              ??         6Eh    n
        ram:1d82 12              ??         12h
        ram:1d83 c3              ??         C3h
        ram:1d84 52              ??         52h    R
        ram:1d85 0e              ??         0Eh
        ram:1d86 cd              ??         CDh
        ram:1d87 f5              ??         F5h
        ram:1d88 1f              ??         1Fh
        ram:1d89 cd              ??         CDh
        ram:1d8a 9b              ??         9Bh
        ram:1d8b 0f              ??         0Fh
        ram:1d8c cd              ??         CDh
        ram:1d8d 69              ??         69h    i
        ram:1d8e 0d              ??         0Dh
        ram:1d8f cd              ??         CDh
        ram:1d90 b5              ??         B5h
        ram:1d91 23              ??         23h    #
        ram:1d92 cd              ??         CDh
        ram:1d93 69              ??         69h    i
        ram:1d94 0d              ??         0Dh
        ram:1d95 c3              ??         C3h
        ram:1d96 07              ??         07h
        ram:1d97 20              ??         20h
        ram:1d98 cd              ??         CDh
        ram:1d99 73              ??         73h    s
        ram:1d9a 25              ??         25h    %
        ram:1d9b e6              ??         E6h
        ram:1d9c 80              ??         80h
        ram:1d9d f5              ??         F5h
        ram:1d9e 2a              ??         2Ah    *
        ram:1d9f 83              ??         83h
        ram:1da0 80              ??         80h
        ram:1da1 18              ??         18h
        ram:1da2 1b              ??         1Bh
        ram:1da3 c3              ??         C3h
        ram:1da4 14              ??         14h
        ram:1da5 0a              ??         0Ah
        ram:1da6 cd              ??         CDh
        ram:1da7 d1              ??         D1h
        ram:1da8 23              ??         23h    #
        ram:1da9 28              ??         28h    (
        ram:1daa 0d              ??         0Dh
        ram:1dab cd              ??         CDh
        ram:1dac 68              ??         68h    h
        ram:1dad 25              ??         25h    %
        ram:1dae 20              ??         20h
        ram:1daf 08              ??         08h
        ram:1db0 3e              ??         3Eh    >
        ram:1db1 01              ??         01h
        ram:1db2 f5              ??         F5h
        ram:1db3 cd              ??         CDh
        ram:1db4 ee              ??         EEh
        ram:1db5 25              ??         25h    %
        ram:1db6 30              ??         30h    0
        ram:1db7 06              ??         06h
        ram:1db8 cd              ??         CDh
        ram:1db9 93              ??         93h
        ram:1dba 21              ??         21h    !
        ram:1dbb c3              ??         C3h
        ram:1dbc 21              ??         21h    !
        ram:1dbd 3e              ??         3Eh    >
        ram:1dbe 11              ??         11h
        ram:1dbf 10              ??         10h
        ram:1dc0 fc              ??         FCh
        ram:1dc1 ed              ??         EDh
        ram:1dc2 52              ??         52h    R
        ram:1dc3 38              ??         38h    8
        ram:1dc4 0b              ??         0Bh
        ram:1dc5 cf              ??         CFh
        ram:1dc6 18              ??         18h
        ram:1dc7 36              ??         36h    6
        ram:1dc8 cd              ??         CDh
        ram:1dc9 5a              ??         5Ah    Z
        ram:1dca 0e              ??         0Eh
        ram:1dcb cd              ??         CDh
        ram:1dcc 69              ??         69h    i
        ram:1dcd 0d              ??         0Dh
        ram:1dce 18              ??         18h
        ram:1dcf 19              ??         19h
        ram:1dd0 cd              ??         CDh
        ram:1dd1 8d              ??         8Dh
        ram:1dd2 20              ??         20h
        ram:1dd3 f1              ??         F1h
        ram:1dd4 f5              ??         F5h
        ram:1dd5 e6              ??         E6h
        ram:1dd6 01              ??         01h
        ram:1dd7 28              ??         28h    (
        ram:1dd8 ef              ??         EFh
        ram:1dd9 cd              ??         CDh
        ram:1dda 69              ??         69h    i
        ram:1ddb 0d              ??         0Dh
        ram:1ddc cd              ??         CDh
        ram:1ddd 21              ??         21h    !
        ram:1dde 20              ??         20h
        ram:1ddf cd              ??         CDh
        ram:1de0 5b              ??         5Bh    [
        ram:1de1 20              ??         20h
        ram:1de2 cd              ??         CDh
        ram:1de3 6e              ??         6Eh    n
        ram:1de4 0d              ??         0Dh
        ram:1de5 cd              ??         CDh
        ram:1de6 19              ??         19h
        ram:1de7 20              ??         20h
        ram:1de8 ef              ??         EFh
        ram:1de9 cd              ??         CDh
        ram:1dea f7              ??         F7h
        ram:1deb 10              ??         10h
        ram:1dec cd              ??         CDh
        ram:1ded 29              ??         29h    )
        ram:1dee 20              ??         20h
        ram:1def f1              ??         F1h
        ram:1df0 f5              ??         F5h
        ram:1df1 cb              ??         CBh
        ram:1df2 47              ??         47h    G
        ram:1df3 cc              ??         CCh
        ram:1df4 ba              ??         BAh
        ram:1df5 23              ??         23h    #
        ram:1df6 cd              ??         CDh
        ram:1df7 ee              ??         EEh
        ram:1df8 25              ??         25h    %
        ram:1df9 30              ??         30h    0
        ram:1dfa 03              ??         03h
        ram:1dfb c3              ??         C3h
        ram:1dfc 69              ??         69h    i
        ram:1dfd 1d              ??         1Dh
        ram:1dfe f7              ??         F7h
        ram:1dff cd              ??         CDh
        ram:1e00 6e              ??         6Eh    n
        ram:1e01 12              ??         12h
        ram:1e02 f1              ??         F1h
        ram:1e03 c3              ??         C3h
        ram:1e04 bd              ??         BDh
        ram:1e05 0f              ??         0Fh
        ram:1e06 cd              ??         CDh
        ram:1e07 e7              ??         E7h
        ram:1e08 23              ??         23h    #
        ram:1e09 20              ??         20h
        ram:1e0a 11              ??         11h
        ram:1e0b cd              ??         CDh
        ram:1e0c 62              ??         62h    b
        ram:1e0d 25              ??         25h    %
        ram:1e0e 20              ??         20h
        ram:1e0f 0c              ??         0Ch
        ram:1e10 cd              ??         CDh
        ram:1e11 8d              ??         8Dh
        ram:1e12 20              ??         20h
        ram:1e13 cd              ??         CDh
        ram:1e14 fe              ??         FEh
        ram:1e15 1f              ??         1Fh
        ram:1e16 21              ??         21h    !
        ram:1e17 8e              ??         8Eh
        ram:1e18 80              ??         80h
        ram:1e19 cd              ??         CDh
        ram:1e1a f0              ??         F0h
        ram:1e1b 23              ??         23h    #
        ram:1e1c c2              ??         C2h
        ram:1e1d 14              ??         14h
        ram:1e1e 0a              ??         0Ah
        ram:1e1f cd              ??         CDh
        ram:1e20 d6              ??         D6h
        ram:1e21 23              ??         23h    #
        ram:1e22 ca              ??         CAh
        ram:1e23 3d              ??         3Dh    =
        ram:1e24 21              ??         21h    !
        ram:1e25 cd              ??         CDh
        ram:1e26 71              ??         71h    q
        ram:1e27 0d              ??         0Dh
        ram:1e28 cd              ??         CDh
        ram:1e29 68              ??         68h    h
        ram:1e2a 25              ??         25h    %
        ram:1e2b c2              ??         C2h
        ram:1e2c 15              ??         15h
        ram:1e2d 10              ??         10h
        ram:1e2e c9              ??         C9h
        ram:1e2f cd              ??         CDh
        ram:1e30 06              ??         06h
        ram:1e31 1e              ??         1Eh
        ram:1e32 cd              ??         CDh
        ram:1e33 d1              ??         D1h
        ram:1e34 23              ??         23h    #
        ram:1e35 ca              ??         CAh
        ram:1e36 3e              ??         3Eh    >
        ram:1e37 21              ??         21h    !
        ram:1e38 cd              ??         CDh
        ram:1e39 21              ??         21h    !
        ram:1e3a 20              ??         20h
        ram:1e3b cd              ??         CDh
        ram:1e3c 07              ??         07h
        ram:1e3d 20              ??         20h
        ram:1e3e cd              ??         CDh
        ram:1e3f 71              ??         71h    q
        ram:1e40 0d              ??         0Dh
        ram:1e41 cd              ??         CDh
        ram:1e42 68              ??         68h    h
        ram:1e43 25              ??         25h    %
        ram:1e44 c4              ??         C4h
        ram:1e45 ec              ??         ECh
        ram:1e46 1f              ??         1Fh
        ram:1e47 cd              ??         CDh
        ram:1e48 5b              ??         5Bh    [
        ram:1e49 20              ??         20h
        ram:1e4a af              ??         AFh
        ram:1e4b f5              ??         F5h
        ram:1e4c cd              ??         CDh
        ram:1e4d 07              ??         07h
        ram:1e4e 20              ??         20h
        ram:1e4f cd              ??         CDh
        ram:1e50 23              ??         23h    #
        ram:1e51 10              ??         10h
        ram:1e52 cd              ??         CDh
        ram:1e53 21              ??         21h    !
        ram:1e54 20              ??         20h
        ram:1e55 cd              ??         CDh
        ram:1e56 56              ??         56h    V
        ram:1e57 20              ??         20h
        ram:1e58 cd              ??         CDh
        ram:1e59 6e              ??         6Eh    n
        ram:1e5a 0d              ??         0Dh
        ram:1e5b cd              ??         CDh
        ram:1e5c d1              ??         D1h
        ram:1e5d 23              ??         23h    #
        ram:1e5e c1              ??         C1h
        ram:1e5f 20              ??         20h
        ram:1e60 08              ??         08h
        ram:1e61 cd              ??         CDh
        ram:1e62 60              ??         60h    `
        ram:1e63 20              ??         20h
        ram:1e64 16              ??         16h
        ram:1e65 00              ??         00h
        ram:1e66 c3              ??         C3h
        ram:1e67 fe              ??         FEh
        ram:1e68 11              ??         11h
        ram:1e69 c5              ??         C5h
        ram:1e6a cd              ??         CDh
        ram:1e6b f5              ??         F5h
        ram:1e6c 1f              ??         1Fh
        ram:1e6d cd              ??         CDh
        ram:1e6e 5b              ??         5Bh    [
        ram:1e6f 20              ??         20h
        ram:1e70 cd              ??         CDh
        ram:1e71 6e              ??         6Eh    n
        ram:1e72 0d              ??         0Dh
        ram:1e73 cd              ??         CDh
        ram:1e74 8d              ??         8Dh
        ram:1e75 20              ??         20h
        ram:1e76 cd              ??         CDh
        ram:1e77 19              ??         19h
        ram:1e78 20              ??         20h
        ram:1e79 ef              ??         EFh
        ram:1e7a f1              ??         F1h
        ram:1e7b f5              ??         F5h
        ram:1e7c b7              ??         B7h
        ram:1e7d 28              ??         28h    (
        ram:1e7e cd              ??         CDh
        ram:1e7f 18              ??         18h
        ram:1e80 d1              ??         D1h
        ram:1e81 cd              ??         CDh
        ram:1e82 06              ??         06h
        ram:1e83 1e              ??         1Eh
        ram:1e84 cd              ??         CDh
        ram:1e85 5b              ??         5Bh    [
        ram:1e86 20              ??         20h
        ram:1e87 3e              ??         3Eh    >
        ram:1e88 01              ??         01h
        ram:1e89 18              ??         18h
        ram:1e8a f0              ??         F0h
        ram:1e8b cd              ??         CDh
        ram:1e8c 85              ??         85h
        ram:1e8d 20              ??         20h
        ram:1e8e cd              ??         CDh
        ram:1e8f 95              ??         95h
        ram:1e90 20              ??         20h
        ram:1e91 cd              ??         CDh
        ram:1e92 69              ??         69h    i
        ram:1e93 16              ??         16h
        ram:1e94 cd              ??         CDh
        ram:1e95 fe              ??         FEh
        ram:1e96 1f              ??         1Fh
        ram:1e97 cd              ??         CDh
        ram:1e98 49              ??         49h    I
        ram:1e99 20              ??         20h
        ram:1e9a ef              ??         EFh
        ram:1e9b cd              ??         CDh
        ram:1e9c b5              ??         B5h
        ram:1e9d 23              ??         23h    #
        ram:1e9e cd              ??         CDh
        ram:1e9f 49              ??         49h    I
        ram:1ea0 20              ??         20h
        ram:1ea1 ef              ??         EFh
        ram:1ea2 c3              ??         C3h
        ram:1ea3 07              ??         07h
        ram:1ea4 20              ??         20h
        ram:1ea5 cd              ??         CDh
        ram:1ea6 75              ??         75h    u
        ram:1ea7 20              ??         20h
        ram:1ea8 cd              ??         CDh
        ram:1ea9 85              ??         85h
        ram:1eaa 20              ??         20h
        ram:1eab cd              ??         CDh
        ram:1eac 27              ??         27h    '
        ram:1ead 3e              ??         3Eh    >
        ram:1eae cd              ??         CDh
        ram:1eaf 49              ??         49h    I
        ram:1eb0 20              ??         20h
        ram:1eb1 cd              ??         CDh
        ram:1eb2 85              ??         85h
        ram:1eb3 20              ??         20h
        ram:1eb4 cd              ??         CDh
        ram:1eb5 5b              ??         5Bh    [
        ram:1eb6 20              ??         20h
        ram:1eb7 16              ??         16h
        ram:1eb8 00              ??         00h
        ram:1eb9 cd              ??         CDh
        ram:1eba 86              ??         86h
        ram:1ebb 1b              ??         1Bh
        ram:1ebc cf              ??         CFh
        ram:1ebd cd              ??         CDh
        ram:1ebe 51              ??         51h    Q
        ram:1ebf 20              ??         20h
        ram:1ec0 c3              ??         C3h
        ram:1ec1 66              ??         66h    f
        ram:1ec2 1f              ??         1Fh
        ram:1ec3 cd              ??         CDh
        ram:1ec4 d1              ??         D1h
        ram:1ec5 23              ??         23h    #
        ram:1ec6 c8              ??         C8h
        ram:1ec7 cd              ??         CDh
        ram:1ec8 ee              ??         EEh
        ram:1ec9 25              ??         25h    %
        ram:1eca 38              ??         38h    8
        ram:1ecb 0b              ??         0Bh
        ram:1ecc 20              ??         20h
        ram:1ecd 0d              ??         0Dh
        ram:1ece 7d              ??         7Dh    }
        ram:1ecf b7              ??         B7h
        ram:1ed0 20              ??         20h
        ram:1ed1 09              ??         09h
        ram:1ed2 cd              ??         CDh
        ram:1ed3 2b              ??         2Bh    +
        ram:1ed4 24              ??         24h    $
        ram:1ed5 20              ??         20h
        ram:1ed6 04              ??         04h
        ram:1ed7 3e              ??         3Eh    >
        ram:1ed8 01              ??         01h
        ram:1ed9 b7              ??         B7h
        ram:1eda c9              ??         C9h
        ram:1edb cd              ??         CDh
        ram:1edc 93              ??         93h
        ram:1edd 21              ??         21h    !
        ram:1ede 3e              ??         3Eh    >
        ram:1edf 01              ??         01h
        ram:1ee0 fe              ??         FEh
        ram:1ee1 02              ??         02h
        ram:1ee2 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_1ee3()
             undefined         A:1            <RETURN>
                             FUN_ram_1ee3                                    XREF[2]:     FUN_ram_0d78:0d7c(c),
                                                                                          FUN_ram_0e5b:0e5f(c)
        ram:1ee3 af              XOR        A
        ram:1ee4 32 8c 80        LD         (DAT_ram_808c),A
        ram:1ee7 32 97 80        LD         (DAT_ram_8097),A
        ram:1eea c9              RET
        ram:1eeb 00              ??         00h
        ram:1eec ff              ??         FFh
        ram:1eed fb              ??         FBh
        ram:1eee 50              ??         50h    P
        ram:1eef 00              ??         00h
        ram:1ef0 00              ??         00h
        ram:1ef1 00              ??         00h
        ram:1ef2 00              ??         00h
        ram:1ef3 00              ??         00h
        ram:1ef4 00              ??         00h
        ram:1ef5 01              ??         01h
        ram:1ef6 00              ??         00h
        ram:1ef7 fc              ??         FCh
        ram:1ef8 10              ??         10h
        ram:1ef9 00              ??         00h
        ram:1efa 00              ??         00h
        ram:1efb 00              ??         00h
        ram:1efc 00              ??         00h
        ram:1efd 00              ??         00h
        ram:1efe 00              ??         00h
        ram:1eff 01              ??         01h
        ram:1f00 00              ??         00h
        ram:1f01 fc              ??         FCh
        ram:1f02 00              ??         00h
        ram:1f03 00              ??         00h
        ram:1f04 00              ??         00h
        ram:1f05 00              ??         00h
        ram:1f06 00              ??         00h
        ram:1f07 00              ??         00h
        ram:1f08 00              ??         00h
        ram:1f09 01              ??         01h
        ram:1f0a 00              ??         00h
        ram:1f0b fc              ??         FCh
        ram:1f0c 00              ??         00h
        ram:1f0d 00              ??         00h
        ram:1f0e 00              ??         00h
        ram:1f0f 00              ??         00h
        ram:1f10 00              ??         00h
        ram:1f11 00              ??         00h
        ram:1f12 00              ??         00h
        ram:1f13 00              ??         00h
        ram:1f14 00              ??         00h
        ram:1f15 fc              ??         FCh
        ram:1f16 00              ??         00h
        ram:1f17 00              ??         00h
        ram:1f18 00              ??         00h
        ram:1f19 00              ??         00h
        ram:1f1a 00              ??         00h
        ram:1f1b 00              ??         00h
        ram:1f1c 00              ??         00h
        ram:1f1d 00              ??         00h
        ram:1f1e 00              ??         00h
        ram:1f1f fc              ??         FCh
        ram:1f20 10              ??         10h
        ram:1f21 00              ??         00h
        ram:1f22 00              ??         00h
        ram:1f23 00              ??         00h
        ram:1f24 00              ??         00h
        ram:1f25 00              ??         00h
        ram:1f26 00              ??         00h
        ram:1f27 21              ??         21h    !
        ram:1f28 13              ??         13h
        ram:1f29 1f              ??         1Fh
        ram:1f2a c3              ??         C3h
        ram:1f2b 9d              ??         9Dh
        ram:1f2c 20              ??         20h
        ram:1f2d 21              ??         21h    !
        ram:1f2e 1d              ??         1Dh
        ram:1f2f 1f              ??         1Fh
        ram:1f30 c3              ??         C3h
        ram:1f31 9d              ??         9Dh
        ram:1f32 20              ??         20h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_1f33()
             undefined         A:1            <RETURN>
                             FUN_ram_1f33                                    XREF[1]:     FUN_ram_2d3f:2d59(c)
        ram:1f33 44              LD         B,H
        ram:1f34 4d              LD         C,L
        ram:1f35 29              ADD        HL,HL
        ram:1f36 d8              RET        C
        ram:1f37 29              ADD        HL,HL
        ram:1f38 d8              RET        C
        ram:1f39 29              ADD        HL,HL
        ram:1f3a d8              RET        C
        ram:1f3b 09              ADD        HL,BC
        ram:1f3c d8              RET        C
        ram:1f3d 09              ADD        HL,BC
        ram:1f3e c9              RET
        ram:1f3f 3a              ??         3Ah    :
        ram:1f40 82              ??         82h
        ram:1f41 80              ??         80h
        ram:1f42 e6              ??         E6h
        ram:1f43 1f              ??         1Fh
        ram:1f44 fe              ??         FEh
        ram:1f45 01              ??         01h
        ram:1f46 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_1f47()
             undefined         A:1            <RETURN>
                             FUN_ram_1f47                                    XREF[1]:     FUN_ram_2e87:2e87(c)
        ram:1f47 3a 82 80        LD         A,(DAT_ram_8082)
        ram:1f4a e6 1f           AND        0x1f
        ram:1f4c c9              RET
        ram:1f4d cd              ??         CDh
        ram:1f4e ba              ??         BAh
        ram:1f4f 23              ??         23h    #
        ram:1f50 16              ??         16h
        ram:1f51 00              ??         00h
        ram:1f52 c3              ??         C3h
        ram:1f53 86              ??         86h
        ram:1f54 1b              ??         1Bh
        ram:1f55 cd              ??         CDh
        ram:1f56 95              ??         95h
        ram:1f57 20              ??         20h
                             LAB_ram_1f58                                    XREF[1]:     ram:0d89(j)
        ram:1f58 21 82 80        LD         HL,0x8082          ; Point to OP1 variable type
        ram:1f5b 7e              LD         A,(HL=>DAT_ram_8082) ; Load OP1 type
        ram:1f5c e6 e0           AND        0xe0               ; Mask to keep bits 5-7 (high type flags)
        ram:1f5e 77              LD         (HL=>DAT_ram_8082),A ; Store back, clearing lower type bits
        ram:1f5f c9              RET
        ram:1f60 cd              ??         CDh
        ram:1f61 98              ??         98h
        ram:1f62 21              ??         21h    !
        ram:1f63 cd              ??         CDh
        ram:1f64 93              ??         93h
        ram:1f65 21              ??         21h    !
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_1f66()
                             ; Set bit 0 in OP1 and OP2 variable types, preserving high bits
             undefined         A:1            <RETURN>
                             FUN_ram_1f66                                    XREF[1]:     FUN_ram_2e87:2e8e(c)
        ram:1f66 3a 82 80        LD         A,(DAT_ram_8082)  ; Load OP1 variable type
        ram:1f69 e6 e0           AND        0xe0              ; Mask high bits
        ram:1f6b f6 01           OR         0x1               ; Set bit 0
        ram:1f6d 32 82 80        LD         (DAT_ram_8082),A  ; Store back to OP1 type
        ram:1f70 3a 8d 80        LD         A,(DAT_ram_808d)  ; Load OP2 variable type
        ram:1f73 e6 e0           AND        0xe0              ; Mask high bits
        ram:1f75 f6 01           OR         0x1               ; Set bit 0
        ram:1f77 32 8d 80        LD         (DAT_ram_808d),A  ; Store back to OP2 type
        ram:1f7a c9              RET
        ram:1f7b cd              ??         CDh
        ram:1f7c 56              ??         56h    V
        ram:1f7d 20              ??         20h
        ram:1f7e cd              ??         CDh
        ram:1f7f 19              ??         19h
        ram:1f80 20              ??         20h
        ram:1f81 18              ??         18h
        ram:1f82 0b              ??         0Bh
        ram:1f83 cd              ??         CDh
        ram:1f84 0b              ??         0Bh
        ram:1f85 21              ??         21h    !
        ram:1f86 18              ??         18h
        ram:1f87 06              ??         06h
        ram:1f88 cd              ??         CDh
        ram:1f89 73              ??         73h    s
        ram:1f8a 25              ??         25h    %
        ram:1f8b cd              ??         CDh
        ram:1f8c 6e              ??         6Eh    n
        ram:1f8d 25              ??         25h    %
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_1f8e()
                             ; System state validation: Check if floating-point registers OP1 and OP2 are initialized
                             ; Ensures OP1 and OP2 have valid data before proceeding with calculations
             undefined         A:1            <RETURN>
                             FUN_ram_1f8e                                    XREF[1]:     RST0:0d22(c)
        ram:1f8e 3a 85 80        LD         A,(DAT_ram_8085)  ; Load OP1 data byte (part of floating-point value)
        ram:1f91 b7              OR         A                 ; Check if zero (uninitialized)
        ram:1f92 cc a3 21        CALL       Z,FUN_ram_21a3    ; If zero, initialize OP1 register
        ram:1f95 3a 90 80        LD         A,(DAT_ram_8090)  ; Load OP2 data byte (part of floating-point value)
        ram:1f98 b7              OR         A                 ; Check if zero (uninitialized)
        ram:1f99 cc a8 21        CALL       Z,FUN_ram_21a8    ; If zero, initialize OP2 register
        ram:1f9c 3a 82 80        LD         A,(DAT_ram_8082)  ; Load OP1 variable type
        ram:1f9f b7              OR         A                 ; Check if OP1 type is zero
        ram:1fa0 3a 8d 80        LD         A,(DAT_ram_808d)  ; Load OP2 variable type
        ram:1fa3 fa bd 1f        JP         M,LAB_ram_1fbd    ; If OP2 type negative (bit 7 set), handle special case
        ram:1fa6 e6 80           AND        0x80              ; Check bit 7 of OP2 type
        ram:1fa8 c0              RET        NZ                ; Return if set (special condition met)
        ram:1fa9 cd 82 26        CALL       FUN_ram_2682       ; Call system function (possibly error handling)
        ram:1fac 21 90 80        LD         HL,0x8090          ; Point to OP2 data area
        ram:1faf 11 85 80        LD         DE,0x8085          ; Point to OP1 data area
                             LAB_ram_1fb2                                    XREF[1]:     ram:1fd0(j)
        ram:1fb2 c0              RET        NZ                ; Return if comparison failed
        ram:1fb3 06 07           LD         B,0x7             ; Compare 7 bytes of data
                             LAB_ram_1fb5                                    XREF[1]:     ram:1fba(j)
        ram:1fb5 1a              LD         A,(DE=>DAT_ram_8085)
        ram:1fb6 be              CP         (HL=>DAT_ram_8090)
        ram:1fb7 c0              RET        NZ                ; Return if bytes don't match
        ram:1fb8 23              INC        HL
        ram:1fb9 13              INC        DE
        ram:1fba 10 f9           DJNZ       LAB_ram_1fb5
        ram:1fbc c9              RET                          ; Return (OP1 and OP2 data match)
                             LAB_ram_1fbd                                    XREF[1]:     ram:1fa3(j)
        ram:1fbd e6 80           AND        0x80              ; Check bit 7 of OP2 type again
        ram:1fbf 28 11           JR         Z,LAB_ram_1fd2    ; If not set, skip to decrement
        ram:1fc1 2a 8e 80        LD         HL,(DAT_ram_808e)  ; Load word from OP2+3 (data word)
        ram:1fc4 ed 5b 83 80     LD         DE,(DAT_ram_8083)  ; Load word from OP1+1 (data word)
        ram:1fc8 ed 52           SBC        HL,DE             ; Subtract DE from HL
        ram:1fca 21 85 80        LD         HL,0x8085          ; Point to OP1 data
        ram:1fcd 11 90 80        LD         DE,0x8090          ; Point to OP2 data
        ram:1fd0 18 e0           JR         LAB_ram_1fb2       ; Jump to compare 7 bytes
                             LAB_ram_1fd2                                    XREF[1]:     ram:1fbf(j)
        ram:1fd2 d6 01           SUB        0x1               ; Decrement A (OP2 type)
        ram:1fd4 c9              RET                          ; Return
        ram:1fd5 e5              PUSH       HL                ; Save HL
        ram:1fd6 cd 98 21        CALL       FUN_ram_2198       ; Call system function
        ram:1fd9 e1              POP        HL                ; Restore HL
        ram:1fda e5              PUSH       HL                ; Save HL
        ram:1fdb cd 11 21        CALL       FUN_ram_2111       ; Call system function
        ram:1fde e1              POP        HL                ; Restore HL
        ram:1fdf 2b              DEC        HL                ; Decrement HL
        ram:1fe0 7c              LD         A,H               ; Load A with H
        ram:1fe1 b5              OR         L                 ; OR with L
        ram:1fe2 20 f6           JR         NZ,LAB_ram_1fd5   ; Loop if not zero
        ram:1fe4 c9              RET                          ; Return
        ram:1fe5 cd 11 21        CALL       FUN_ram_2111       ; Call system function
        ram:1fe8 23              INC        HL                ; Increment HL
        ram:1fe9 c3 9d 20        JP         LAB_ram_209d_10_bytesCpy    ; Jump to 10-byte copy routine
        ram:1fec 21 98 80        LD         HL,0x8098          ; Source: OP3 register
        ram:1fee 80              ??         80h
        ram:1fef 11 a3 80        LD         DE,0x80a3          ; Destination: OP4 register
        ram:1ff0 a3 80           LD         DE,0x80a3          ; (continued)
        ram:1ff2 c3 9b 20        JP         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP4 = OP3
        ram:1ff5 21 82 80        LD         HL,0x8082          ; Source: OP1 register
        ram:1ff6 82              ??         82h
        ram:1ff7 80              ??         80h
        ram:1ff8 11              ??         11h
        ram:1ff9 a3              ??         A3h
        ram:1ffa 80              ??         80h
        ram:1ffb c3              ??         C3h
        ram:1ffc 9b              ??         9Bh
        ram:1ffd 20              ??         20h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_1ffe()
                             ; System initialization: Copy OP2 to OP3 register
                             ; Part of floating-point register initialization sequence
             undefined         A:1            <RETURN>
                             FUN_ram_1ffe                                    XREF[1]:     RST0:0d1f(c)
        ram:1ffe 21 8d 80        LD         HL,0x808d       ; Source: OP2 register
        ram:2001 11 a3 80        LD         DE,0x80a3       ; Destination: OP3 register
        ram:2004 c3 9b 20        JP         LAB_ram_209b_11_bytesCpy    ; Jump to memory copy routine
        ram:2007 21              ??         21h    !
        ram:2008 a3              ??         A3h
        ram:2009 80              ??         80h
        ram:200a 11              ??         11h
        ram:200b 8d              ??         8Dh
        ram:200c 80              ??         80h
        ram:200d c3              ??         C3h
        ram:200e 9b              ??         9Bh
        ram:200f 20              ??         20h
        ram:2010 21              ??         21h    !
        ram:2011 a3              ??         A3h
        ram:2012 80              ??         80h
        ram:2013 11              ??         11h
        ram:2014 98              ??         98h
        ram:2015 80              ??         80h
        ram:2016 c3              ??         C3h
        ram:2017 9b              ??         9Bh
        ram:2018 20              ??         20h
        ram:2019 21              ??         21h    !
        ram:201a 98              ??         98h
        ram:201b 80              ??         80h
        ram:201c 11              ??         11h
        ram:201d 8d              ??         8Dh
        ram:201e 80              ??         80h
        ram:201f 18              ??         18h
        ram:2020 7a              ??         7Ah    z
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2021()
                             ; System initialization: Set up floating-point register stack
                             ; Sequence: OP3=OP1, OP2=OP5, OP6=OP5, OP4=OP5, OP2=OP1, OP2=OP6, OP6=OP2, OP6=OP1, OP5=OP2, OP5=OP1
             undefined         A:1            <RETURN>
                             FUN_ram_2021                                    XREF[1]:     RST0:0d1c(c)
        ram:2021 11 98 80        LD         DE,0x8098          ; Destination: OP3 register
        ram:2024 21 82 80        LD         HL,0x8082          ; Source: OP1 register (initial values)
        ram:2027 18 72           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP3 = OP1
        ram:2029 21 ae 80        LD         HL,0x80ae          ; Source: OP5 register
        ram:202c 11 8d 80        LD         DE,0x808d          ; Destination: OP2 register
        ram:202f 18 6a           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP2 = OP5 (but OP5 not set yet?)
        ram:2031 21 ae 80        LD         HL,0x80ae          ; Source: OP5 register
        ram:2034 11 b9 80        LD         DE,0x80b9          ; Destination: OP6 register
        ram:2037 18 62           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP6 = OP5
        ram:2039 21 ae 80        LD         HL,0x80ae          ; Source: OP5 register
        ram:203c 11 a3 80        LD         DE,0x80a3          ; Destination: OP4 register
        ram:203f 18 5a           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP4 = OP5
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2041()
                             ; Floating-point operation: Copy OP1 to OP2 register
                             ; Used in floating-point addition (RST1) to prepare operands
             undefined         A:1            <RETURN>
                             FUN_ram_2041                                    XREF[1]:     RST1:0008(T), RST1:0008(j)
        ram:2041 21 82 80        LD         HL,0x8082          ; Source: OP1 register
        ram:2044 11 8d 80        LD         DE,0x808d          ; Destination: OP2 register
        ram:2047 18 52           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP2 = OP1 (final)
        ram:2049 21 b9 80        LD         HL,0x80b9          ; Source: OP6 register
        ram:204c 11 8d 80        LD         DE,0x808d          ; Destination: OP2 register
        ram:204f 18 4a           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP2 = OP6
        ram:2051 21 b9 80        LD         HL,0x80b9          ; Source: OP6 register
        ram:2054 18 42           JR         LAB_ram_2098       ; Jump to copy routine variant
                             LAB_ram_2056                                    XREF[1]:     ram:0d28(j)
        ram:2056 21 a3 80        LD         HL,0x80a3
        ram:2059 18 3d           JR         LAB_ram_2098
        ram:205b 21 ae 80        LD         HL,0x80ae          ; Source: OP5 register
        ram:205e 18 38           JR         LAB_ram_2098       ; Jump to copy routine
                             LAB_ram_2060                                    XREF[1]:     ram:0d25(j)
        ram:2060 21 98 80        LD         HL,0x8098
        ram:2063 18 33           JR         LAB_ram_2098
        ram:2065 21 a3 80        LD         HL,0x80a3          ; Source: OP4 register
        ram:2068 11 ae 80        LD         DE,0x80ae          ; Destination: OP5 register
        ram:206b 18 2e           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP5 = OP4
        ram:206d 21 98 80        LD         HL,0x8098          ; Source: OP3 register
        ram:2070 11 ae 80        LD         DE,0x80ae          ; Destination: OP5 register
        ram:2073 18 26           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP5 = OP3
        ram:2075 21 8d 80        LD         HL,0x808d          ; Source: OP2 register
        ram:2078 11 ae 80        LD         DE,0x80ae          ; Destination: OP5 register
        ram:207b 18 1e           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP5 = OP2
        ram:207d 21 8d 80        LD         HL,0x808d          ; Source: OP2 register
        ram:2080 11 b9 80        LD         DE,0x80b9          ; Destination: OP6 register
        ram:2083 18 16           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP6 = OP2
        ram:2085 21 82 80        LD         HL,0x8082          ; Source: OP1 register
        ram:2088 11 b9 80        LD         DE,0x80b9          ; Destination: OP6 register
        ram:208b 18 0e           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP6 = OP1
        ram:208d 21 82 80        LD         HL,0x8082          ; Source: OP1 register
        ram:2090 11 ae 80        LD         DE,0x80ae          ; Destination: OP5 register
        ram:2093 18 06           JR         LAB_ram_209b_11_bytesCpy    ; Copy 11 bytes: OP5 = OP1
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2095()
             undefined         A:1            <RETURN>
                             FUN_ram_2095                                    XREF[5]:     FUN_ram_0d78:0d90(j),
                                                                                          FUN_ram_0d78:0da3(j),
                                                                                          FUN_ram_0d78:0da9(j),
                                                                                          FUN_ram_0d78:0e20(c),
                                                                                          FUN_ram_0e5b:0e6b(j)
        ram:2095 21 8d 80        LD         HL,0x808d
                             LAB_ram_2098                                    XREF[2]:     ram:2059(j), ram:2063(j)
        ram:2098 11 82 80        LD         DE,0x8082
                             LAB_ram_209b_11_bytesCpy                                    XREF[3]:     FUN_ram_1ffe:2004(j),
                                                                                          FUN_ram_2021:2027(j),
                                                                                          FUN_ram_2041:2047(j)
                             ; Memory copy routine: Copies 11 bytes from (HL) to (DE) using LDI
                             ; Used during initialization to set up system memory areas
        ram:209b ed a0           LDI                        ; Copy byte from (HL) to (DE), increment both pointers
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_209d_10_bytesCpy()
                             ; Copy routine entry point: copies 10 bytes from (HL) to (DE)
             undefined         A:1            <RETURN>
                             FUN_ram_209d_10_bytesCpy                                    XREF[3]:     FUN_ram_2104:2107(c),
                                                                                          FUN_ram_2e87:2e59(c),
                                                                                          FUN_ram_2e87:2ea0(c)
        ram:209d ed a0           LDI
        ram:209f ed a0           LDI
                             LAB_ram_20a1_8_bytesCpy                                    XREF[1]:     FUN_ram_20e7:20ed(j)
                             ; Copy routine entry point: copies 8 bytes from (HL) to (DE)
        ram:20a1 ed a0           LDI
        ram:20a3 ed a0           LDI
        ram:20a5 ed a0           LDI
        ram:20a7 ed a0           LDI
        ram:20a9 ed a0           LDI
        ram:20ab ed a0           LDI
        ram:20ad ed a0           LDI
        ram:20af ed a0           LDI
        ram:20b1 c9              RET
        ram:20b2 11              ??         11h
        ram:20b3 a6              ??         A6h
        ram:20b4 80              ??         80h
        ram:20b5 21              ??         21h    !
        ram:20b6 90              ??         90h
        ram:20b7 80              ??         80h
        ram:20b8 18              ??         18h
        ram:20b9 e7              ??         E7h
        ram:20ba 21              ??         21h    !
        ram:20bb 85              ??         85h
        ram:20bc 80              ??         80h
        ram:20bd 11              ??         11h
        ram:20be a6              ??         A6h
        ram:20bf 80              ??         80h
        ram:20c0 18              ??         18h
        ram:20c1 df              ??         DFh
        ram:20c2 21              ??         21h    !
        ram:20c3 a6              ??         A6h
        ram:20c4 80              ??         80h
        ram:20c5 18              ??         18h
        ram:20c6 03              ??         03h
        ram:20c7 21              ??         21h    !
        ram:20c8 90              ??         90h
        ram:20c9 80              ??         80h
        ram:20ca 11              ??         11h
        ram:20cb 85              ??         85h
        ram:20cc 80              ??         80h
        ram:20cd 18              ??         18h
        ram:20ce d2              ??         D2h
        ram:20cf 11              ??         11h
        ram:20d0 90              ??         90h
        ram:20d1 80              ??         80h
        ram:20d2 21              ??         21h    !
        ram:20d3 9b              ??         9Bh
        ram:20d4 80              ??         80h
        ram:20d5 18              ??         18h
        ram:20d6 cc              ??         CCh
        ram:20d7 11              ??         11h
        ram:20d8 85              ??         85h
        ram:20d9 80              ??         80h
        ram:20da 21              ??         21h    !
        ram:20db b1              ??         B1h
        ram:20dc 80              ??         80h
        ram:20dd 18              ??         18h
        ram:20de c4              ??         C4h
        ram:20df 11              ??         11h
        ram:20e0 85              ??         85h
        ram:20e1 80              ??         80h
        ram:20e2 21              ??         21h    !
        ram:20e3 9b              ??         9Bh
        ram:20e4 80              ??         80h
        ram:20e5 18              ??         18h
        ram:20e6 bc              ??         BCh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_20e7()
             undefined         A:1            <RETURN>
                             FUN_ram_20e7                                    XREF[1]:     FUN_ram_0e5b:0f3b(c)
        ram:20e7 11 85 80        LD         DE,0x8085
        ram:20ea 21 9b 80        LD         HL,0x809b
        ram:20ed 18 b2           JR         LAB_ram_20a1_8_bytesCpy
        ram:20ef 11              ??         11h
        ram:20f0 9b              ??         9Bh
        ram:20f1 80              ??         80h
        ram:20f2 18              ??         18h
        ram:20f3 af              ??         AFh
        ram:20f4 21              ??         21h    !
        ram:20f5 8d              ??         8Dh
        ram:20f6 80              ??         80h
        ram:20f7 11              ??         11h
        ram:20f8 98              ??         98h
        ram:20f9 80              ??         80h
        ram:20fa 18              ??         18h
        ram:20fb 9f              ??         9Fh
        ram:20fc 21              ??         21h    !
        ram:20fd a3              ??         A3h
        ram:20fe 80              ??         80h
        ram:20ff 11              ??         11h
        ram:2100 b9              ??         B9h
        ram:2101 80              ??         80h
        ram:2102 18              ??         18h
        ram:2103 97              ??         97h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2104()
             undefined         A:1            <RETURN>
                             FUN_ram_2104                                    XREF[1]:     RST4:0020(T), RST4:0020(j)
        ram:2104 11 82 80        LD         DE,0x8082
        ram:2107 c3 9d 20        JP         FUN_ram_209d_10_bytesCpy                                     undefined FUN_ram_209d_10_bytesCpy()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:210a e7              ??         E7h
        ram:210b 11              ??         11h
        ram:210c 8d              ??         8Dh
        ram:210d 80              ??         80h
        ram:210e c3              ??         C3h
        ram:210f 9d              ??         9Dh
        ram:2110 20              ??         20h
        ram:2111 21              ??         21h    !
        ram:2112 82              ??         82h
        ram:2113 80              ??         80h
        ram:2114 c3              ??         C3h
        ram:2115 9d              ??         9Dh
        ram:2116 20              ??         20h
        ram:2117 21              ??         21h    !
        ram:2118 a3              ??         A3h
        ram:2119 80              ??         80h
        ram:211a 18              ??         18h
        ram:211b 4d              ??         4Dh    M
        ram:211c 21              ??         21h    !
        ram:211d 98              ??         98h
        ram:211e 80              ??         80h
        ram:211f 18              ??         18h
        ram:2120 48              ??         48h    H
        ram:2121 21              ??         21h    !
        ram:2122 8d              ??         8Dh
        ram:2123 80              ??         80h
        ram:2124 3e              ??         3Eh    >
        ram:2125 80              ??         80h
        ram:2126 18              ??         18h
        ram:2127 43              ??         43h    C
        ram:2128 21              ??         21h    !
        ram:2129 8d              ??         8Dh
        ram:212a 80              ??         80h
        ram:212b 3e              ??         3Eh    >
        ram:212c 50              ??         50h    P
        ram:212d 18              ??         18h
        ram:212e 3c              ??         3Ch    <
        ram:212f 21              ??         21h    !
        ram:2130 8d              ??         8Dh
        ram:2131 80              ??         80h
        ram:2132 3e              ??         3Eh    >
        ram:2133 40              ??         40h    @
        ram:2134 18              ??         18h
        ram:2135 35              ??         35h    5
        ram:2136 21              ??         21h    !
        ram:2137 8d              ??         8Dh
        ram:2138 80              ??         80h
        ram:2139 3e              ??         3Eh    >
        ram:213a 30              ??         30h    0
        ram:213b 18              ??         18h
        ram:213c 2e              ??         2Eh    .
        ram:213d e1              ??         E1h
        ram:213e 21              ??         21h    !
        ram:213f 82              ??         82h
        ram:2140 80              ??         80h
        ram:2141 18              ??         18h
        ram:2142 26              ??         26h    &
        ram:2143 21              ??         21h    !
        ram:2144 82              ??         82h
        ram:2145 80              ??         80h
        ram:2146 3e              ??         3Eh    >
        ram:2147 40              ??         40h    @
        ram:2148 18              ??         18h
        ram:2149 21              ??         21h    !
        ram:214a 21              ??         21h    !
        ram:214b 82              ??         82h
        ram:214c 80              ??         80h
        ram:214d 3e              ??         3Eh    >
        ram:214e 30              ??         30h    0
        ram:214f 18              ??         18h
        ram:2150 1a              ??         1Ah
        ram:2151 21              ??         21h    !
        ram:2152 98              ??         98h
        ram:2153 80              ??         80h
        ram:2154 18              ??         18h
        ram:2155 08              ??         08h
        ram:2156 21              ??         21h    !
        ram:2157 82              ??         82h
        ram:2158 80              ??         80h
        ram:2159 18              ??         18h
        ram:215a 03              ??         03h
        ram:215b 21              ??         21h    !
        ram:215c 8d              ??         8Dh
        ram:215d 80              ??         80h
        ram:215e 3e              ??         3Eh    >
        ram:215f 20              ??         20h
        ram:2160 18              ??         18h
        ram:2161 09              ??         09h
        ram:2162 3e              ??         3Eh    >
        ram:2163 10              ??         10h
        ram:2164 18              ??         18h
        ram:2165 0e              ??         0Eh
        ram:2166 21              ??         21h    !
        ram:2167 8d              ??         8Dh
        ram:2168 80              ??         80h
        ram:2169 3e              ??         3Eh    >
        ram:216a 10              ??         10h
                             LAB_ram_216b                                    XREF[1]:     ram:219c(j)
        ram:216b 36 00           LD         (HL=>DAT_ram_8082),0x0
        ram:216d 23              INC        HL
        ram:216e 36 00           LD         (HL=>DAT_ram_8083),0x0
        ram:2170 23              INC        HL
        ram:2171 36 fc           LD         (HL=>DAT_ram_8084),0xfc
                             LAB_ram_2173                                    XREF[1]:     FUN_ram_21a3:21b6(j)
        ram:2173 23              INC        HL
        ram:2174 77              LD         (HL=>DAT_ram_8085),A
        ram:2175 af              XOR        A
        ram:2176 18 02           JR         LAB_ram_217a
        ram:2178 af              ??         AFh
        ram:2179 77              ??         77h    w
                             LAB_ram_217a                                    XREF[1]:     ram:2176(j)
        ram:217a 23              INC        HL
        ram:217b 77              LD         (HL=>DAT_ram_8086),A
        ram:217c 23              INC        HL
        ram:217d 77              LD         (HL=>DAT_ram_8087),A
        ram:217e 23              INC        HL
        ram:217f 77              LD         (HL=>DAT_ram_8088),A
        ram:2180 23              INC        HL
        ram:2181 77              LD         (HL=>DAT_ram_8089),A
        ram:2182 23              INC        HL
        ram:2183 77              LD         (HL=>DAT_ram_808a),A
        ram:2184 23              INC        HL
        ram:2185 77              LD         (HL=>DAT_ram_808b),A
        ram:2186 23              INC        HL
        ram:2187 77              LD         (HL=>DAT_ram_808c),A
        ram:2188 c9              RET
        ram:2189 21              ??         21h    !
        ram:218a a3              ??         A3h
        ram:218b 80              ??         80h
        ram:218c 18              ??         18h
        ram:218d 0d              ??         0Dh
        ram:218e 21              ??         21h    !
        ram:218f 98              ??         98h
        ram:2190 80              ??         80h
        ram:2191 18              ??         18h
        ram:2192 08              ??         08h
        ram:2193 21              ??         21h    !
        ram:2194 8d              ??         8Dh
        ram:2195 80              ??         80h
        ram:2196 18              ??         18h
        ram:2197 03              ??         03h
                             LAB_ram_2198                                    XREF[4]:     ram:0f5e(j), ram:0f76(j),
                                                                                          FUN_ram_0ff6:1016(j),
                                                                                          ram:13e9(j)
        ram:2198 21 82 80        LD         HL,0x8082
        ram:219b af              XOR        A
        ram:219c 18 cd           JR         LAB_ram_216b
        ram:219e 21              ??         21h    !
        ram:219f 85              ??         85h
        ram:21a0 80              ??         80h
        ram:21a1 18              ??         18h
        ram:21a2 d5              ??         D5h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_21a3()
             undefined         A:1            <RETURN>
                             FUN_ram_21a3                                    XREF[1]:     FUN_ram_1f8e:1f92(c)
        ram:21a3 21 82 80        LD         HL,0x8082
        ram:21a6 18 08           JR         LAB_ram_21b0
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_21a8()
             undefined         A:1            <RETURN>
                             FUN_ram_21a8                                    XREF[1]:     FUN_ram_1f8e:1f99(c)
        ram:21a8 21 8d 80        LD         HL,0x808d
        ram:21ab 18 03           JR         LAB_ram_21b0
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_21ad()
             undefined         A:1            <RETURN>
                             FUN_ram_21ad                                    XREF[1]:     FUN_ram_0e5b:0e75(c)
        ram:21ad 21 98 80        LD         HL,0x8098
                             LAB_ram_21b0                                    XREF[2]:     ram:21a6(j),
                                                                                          FUN_ram_21a8:21ab(j)
        ram:21b0 af              XOR        A
        ram:21b1 77              LD         (HL=>DAT_ram_8098),A
        ram:21b2 23              INC        HL
        ram:21b3 77              LD         (HL=>DAT_ram_8099),A
        ram:21b4 23              INC        HL
        ram:21b5 77              LD         (HL=>DAT_ram_809a),A
        ram:21b6 18 bb           JR         LAB_ram_2173
        ram:21b8 36              ??         36h    6
        ram:21b9 00              ??         00h
        ram:21ba 23              ??         23h    #
        ram:21bb 10              ??         10h
        ram:21bc fb              ??         FBh
        ram:21bd c9              ??         C9h
        ram:21be 79              ??         79h    y
        ram:21bf 1f              ??         1Fh
        ram:21c0 1f              ??         1Fh
        ram:21c1 1f              ??         1Fh
        ram:21c2 1f              ??         1Fh
        ram:21c3 e6              ??         E6h
        ram:21c4 0f              ??         0Fh
        ram:21c5 c9              ??         C9h
        ram:21c6 79              ??         79h    y
        ram:21c7 87              ??         87h
        ram:21c8 87              ??         87h
        ram:21c9 87              ??         87h
        ram:21ca 87              ??         87h
        ram:21cb c9              ??         C9h
        ram:21cc 21              ??         21h    !
        ram:21cd 85              ??         85h
        ram:21ce 80              ??         80h
        ram:21cf af              ??         AFh
        ram:21d0 18              ??         18h
        ram:21d1 15              ??         15h
        ram:21d2 21              ??         21h    !
        ram:21d3 83              ??         83h
        ram:21d4 80              ??         80h
        ram:21d5 18              ??         18h
        ram:21d6 03              ??         03h
        ram:21d7 21              ??         21h    !
        ram:21d8 84              ??         84h
        ram:21d9 80              ??         80h
        ram:21da af              ??         AFh
        ram:21db ed              ??         EDh
        ram:21dc 67              ??         67h    g
        ram:21dd 23              ??         23h    #
        ram:21de 18              ??         18h
        ram:21df 04              ??         04h
        ram:21e0 21              ??         21h    !
        ram:21e1 85              ??         85h
        ram:21e2 80              ??         80h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_21e3()
             undefined         A:1            <RETURN>
                             FUN_ram_21e3                                    XREF[5]:     FUN_ram_0d78:0db0(c),
                                                                                          FUN_ram_0d78:0dea(c),
                                                                                          FUN_ram_0e5b:0e86(c),
                                                                                          FUN_ram_0e5b:0ed7(c),
                                                                                          FUN_ram_0e5b:0f33(c)
        ram:21e3 af              XOR        A
                             LAB_ram_21e4                                    XREF[1]:     FUN_ram_2208:220d(j)
        ram:21e4 ed 67           RRD
        ram:21e6 23              INC        HL
        ram:21e7 ed 67           RRD
        ram:21e9 23              INC        HL
        ram:21ea ed 67           RRD
        ram:21ec 23              INC        HL
        ram:21ed ed 67           RRD
        ram:21ef 23              INC        HL
        ram:21f0 ed 67           RRD
        ram:21f2 23              INC        HL
        ram:21f3 ed 67           RRD
        ram:21f5 23              INC        HL
        ram:21f6 ed 67           RRD
        ram:21f8 23              INC        HL
        ram:21f9 ed 67           RRD
        ram:21fb 23              INC        HL
        ram:21fc c9              RET
        ram:21fd 21              ??         21h    !
        ram:21fe a1              ??         A1h
        ram:21ff 80              ??         80h
        ram:2200 18              ??         18h
        ram:2201 03              ??         03h
        ram:2202 21              ??         21h    !
        ram:2203 8b              ??         8Bh
        ram:2204 80              ??         80h
        ram:2205 af              ??         AFh
        ram:2206 18              ??         18h
        ram:2207 13              ??         13h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2208()
             undefined         A:1            <RETURN>
                             FUN_ram_2208                                    XREF[1]:     FUN_ram_0d78:0e05(c)
        ram:2208 21 85 80        LD         HL,0x8085
        ram:220b 3e 01           LD         A,0x1
        ram:220d 18 d5           JR         LAB_ram_21e4
        ram:220f 21              ??         21h    !
        ram:2210 a2              ??         A2h
        ram:2211 80              ??         80h
        ram:2212 18              ??         18h
        ram:2213 03              ??         03h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2214()
             undefined         A:1            <RETURN>
                             FUN_ram_2214                                    XREF[2]:     FUN_ram_0d78:0f61(c),
                                                                                          FUN_ram_0d78:13e0(c)
        ram:2214 21 8c 80        LD         HL,0x808c
        ram:2217 af              XOR        A
        ram:2218 ed 6f           RLD
        ram:221a 2b              DEC        HL
        ram:221b ed 6f           RLD
        ram:221d 2b              DEC        HL
        ram:221e ed 6f           RLD
        ram:2220 2b              DEC        HL
        ram:2221 ed 6f           RLD
        ram:2223 2b              DEC        HL
        ram:2224 ed 6f           RLD
        ram:2226 2b              DEC        HL
        ram:2227 ed 6f           RLD
        ram:2229 2b              DEC        HL
        ram:222a ed 6f           RLD
        ram:222c 2b              DEC        HL
        ram:222d ed 6f           RLD
        ram:222f 2b              DEC        HL
        ram:2230 c9              RET
        ram:2231 3a              ??         3Ah    :
        ram:2232 8d              ??         8Dh
        ram:2233 80              ??         80h
        ram:2234 11              ??         11h
        ram:2235 a6              ??         A6h
        ram:2236 80              ??         80h
        ram:2237 18              ??         18h
        ram:2238 0f              ??         0Fh
        ram:2239 3e              ??         3Eh    >
        ram:223a 01              ??         01h
        ram:223b 11              ??         11h
        ram:223c 85              ??         85h
        ram:223d 80              ??         80h
        ram:223e 18              ??         18h
        ram:223f 08              ??         08h
        ram:2240 78              ??         78h    x
        ram:2241 21              ??         21h    !
        ram:2242 af              ??         AFh
        ram:2243 80              ??         80h
        ram:2244 96              ??         96h
        ram:2245 11              ??         11h
        ram:2246 90              ??         90h
        ram:2247 80              ??         80h
        ram:2248 cb              ??         CBh
        ram:2249 3f              ??         3Fh    ?
        ram:224a 21              ??         21h    !
        ram:224b 9b              ??         9Bh
        ram:224c 80              ??         80h
        ram:224d c2              ??         C2h
        ram:224e 63              ??         63h    c
        ram:224f 22              ??         22h    "
        ram:2250 eb              ??         EBh
        ram:2251 cd              ??         CDh
        ram:2252 a1              ??         A1h
        ram:2253 20              ??         20h
        ram:2254 d0              ??         D0h
        ram:2255 21              ??         21h    !
        ram:2256 9b              ??         9Bh
        ram:2257 80              ??         80h
        ram:2258 af              ??         AFh
        ram:2259 cd              ??         CDh
        ram:225a e7              ??         E7h
        ram:225b 21              ??         21h    !
        ram:225c ed              ??         EDh
        ram:225d 67              ??         67h    g
        ram:225e fe              ??         FEh
        ram:225f 05              ??         05h
        ram:2260 d8              ??         D8h
        ram:2261 18              ??         18h
        ram:2262 1d              ??         1Dh
        ram:2263 f5              ??         F5h
        ram:2264 47              ??         47h    G
        ram:2265 cd              ??         CDh
        ram:2266 b8              ??         B8h
        ram:2267 21              ??         21h    !
        ram:2268 4f              ??         4Fh    O
        ram:2269 21              ??         21h    !
        ram:226a 9b              ??         9Bh
        ram:226b 80              ??         80h
        ram:226c 09              ??         09h
        ram:226d eb              ??         EBh
        ram:226e 2f              ??         2Fh    /
        ram:226f c6              ??         C6h
        ram:2270 09              ??         09h
        ram:2271 28              ??         28h    (
        ram:2272 03              ??         03h
        ram:2273 4f              ??         4Fh    O
        ram:2274 ed              ??         EDh
        ram:2275 b0              ??         B0h
        ram:2276 f1              ??         F1h
        ram:2277 38              ??         38h    8
        ram:2278 dc              ??         DCh
        ram:2279 7e              ??         7Eh    ~
        ram:227a fe              ??         FEh
        ram:227b 50              ??         50h    P
        ram:227c d8              ??         D8h
        ram:227d 21              ??         21h    !
        ram:227e a2              ??         A2h
        ram:227f 80              ??         80h
        ram:2280 3e              ??         3Eh    >
        ram:2281 01              ??         01h
        ram:2282 06              ??         06h
        ram:2283 08              ??         08h
        ram:2284 18              ??         18h
        ram:2285 05              ??         05h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2286()
             undefined         A:1            <RETURN>
                             FUN_ram_2286                                    XREF[1]:     FUN_ram_0e5b:0f8e(c)
        ram:2286 3e 01           LD         A,0x1
        ram:2288 06 07           LD         B,0x7
        ram:228a b7              OR         A
                             LAB_ram_228b                                    XREF[1]:     ram:2292(j)
        ram:228b 8e              ADC        A,(HL)
        ram:228c 27              DAA
        ram:228d 77              LD         (HL),A
        ram:228e d0              RET        NC
        ram:228f 2b              DEC        HL
        ram:2290 3e 00           LD         A,0x0
        ram:2292 10 f7           DJNZ       LAB_ram_228b
        ram:2294 c9              RET
        ram:2295 3a              ??         3Ah    :
        ram:2296 8d              ??         8Dh
        ram:2297 80              ??         80h
        ram:2298 e6              ??         E6h
        ram:2299 01              ??         01h
        ram:229a 78              ??         78h    x
        ram:229b cc              ??         CCh
        ram:229c c7              ??         C7h
        ram:229d 21              ??         21h    !
        ram:229e 06              ??         06h
        ram:229f 08              ??         08h
        ram:22a0 18              ??         18h
        ram:22a1 e8              ??         E8h
        ram:22a2 21              ??         21h    !
        ram:22a3 ad              ??         ADh
        ram:22a4 80              ??         80h
        ram:22a5 11              ??         11h
        ram:22a6 97              ??         97h
        ram:22a7 80              ??         80h
        ram:22a8 18              ??         18h
        ram:22a9 24              ??         24h    $
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_22aa()
             undefined         A:1            <RETURN>
                             FUN_ram_22aa                                    XREF[1]:     FUN_ram_0d78:0dcc(c)
        ram:22aa 21 8c 80        LD         HL,0x808c
        ram:22ad 11 97 80        LD         DE,0x8097
        ram:22b0 18 1c           JR         LAB_ram_22ce
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_22b2()
             undefined         A:1            <RETURN>
                             FUN_ram_22b2                                    XREF[2]:     FUN_ram_0d78:0e00(c),
                                                                                          FUN_ram_0d78:0e1a(c)
        ram:22b2 21 97 80        LD         HL,0x8097
        ram:22b5 11 8c 80        LD         DE,0x808c
        ram:22b8 18 14           JR         LAB_ram_22ce
        ram:22ba 11              ??         11h
        ram:22bb 96              ??         96h
        ram:22bc 80              ??         80h
        ram:22bd 18              ??         18h
        ram:22be 03              ??         03h
        ram:22bf 11              ??         11h
        ram:22c0 8b              ??         8Bh
        ram:22c1 80              ??         80h
        ram:22c2 21              ??         21h    !
        ram:22c3 96              ??         96h
        ram:22c4 80              ??         80h
        ram:22c5 af              ??         AFh
        ram:22c6 18              ??         18h
        ram:22c7 0c              ??         0Ch
        ram:22c8 21              ??         21h    !
        ram:22c9 a2              ??         A2h
        ram:22ca 80              ??         80h
        ram:22cb 11              ??         11h
        ram:22cc 8c              ??         8Ch
        ram:22cd 80              ??         80h
                             LAB_ram_22ce                                    XREF[2]:     ram:22b0(j),
                                                                                          FUN_ram_22b2:22b8(j)
        ram:22ce 1a              LD         A,(DE=>DAT_ram_808c)
        ram:22cf 86              ADD        A,(HL=>DAT_ram_8097)
        ram:22d0 27              DAA
        ram:22d1 12              LD         (DE=>DAT_ram_808c),A
        ram:22d2 1b              DEC        DE
        ram:22d3 2b              DEC        HL
        ram:22d4 1a              LD         A,(DE=>DAT_ram_808b)
        ram:22d5 8e              ADC        A,(HL=>DAT_ram_8096)
        ram:22d6 27              DAA
        ram:22d7 12              LD         (DE=>DAT_ram_808b),A
        ram:22d8 1b              DEC        DE
        ram:22d9 2b              DEC        HL
        ram:22da 1a              LD         A,(DE=>DAT_ram_808a)
        ram:22db 8e              ADC        A,(HL=>DAT_ram_8095)
        ram:22dc 27              DAA
        ram:22dd 12              LD         (DE=>DAT_ram_808a),A
        ram:22de 1b              DEC        DE
        ram:22df 2b              DEC        HL
        ram:22e0 1a              LD         A,(DE=>DAT_ram_8089)
        ram:22e1 8e              ADC        A,(HL=>DAT_ram_8094)
        ram:22e2 27              DAA
        ram:22e3 12              LD         (DE=>DAT_ram_8089),A
        ram:22e4 1b              DEC        DE
        ram:22e5 2b              DEC        HL
        ram:22e6 1a              LD         A,(DE=>DAT_ram_8088)
        ram:22e7 8e              ADC        A,(HL=>DAT_ram_8093)
        ram:22e8 27              DAA
        ram:22e9 12              LD         (DE=>DAT_ram_8088),A
        ram:22ea 1b              DEC        DE
        ram:22eb 2b              DEC        HL
        ram:22ec 1a              LD         A,(DE=>DAT_ram_8087)
        ram:22ed 8e              ADC        A,(HL=>DAT_ram_8092)
        ram:22ee 27              DAA
        ram:22ef 12              LD         (DE=>DAT_ram_8087),A
        ram:22f0 1b              DEC        DE
        ram:22f1 2b              DEC        HL
        ram:22f2 1a              LD         A,(DE=>DAT_ram_8086)
        ram:22f3 8e              ADC        A,(HL=>DAT_ram_8091)
        ram:22f4 27              DAA
        ram:22f5 12              LD         (DE=>DAT_ram_8086),A
        ram:22f6 1b              DEC        DE
        ram:22f7 2b              DEC        HL
        ram:22f8 1a              LD         A,(DE=>DAT_ram_8085)
        ram:22f9 8e              ADC        A,(HL=>DAT_ram_8090)
        ram:22fa 27              DAA
        ram:22fb 12              LD         (DE=>DAT_ram_8085),A
        ram:22fc 1b              DEC        DE
        ram:22fd 2b              DEC        HL
        ram:22fe c9              RET
        ram:22ff 3a              ??         3Ah    :
        ram:2300 ae              ??         AEh
        ram:2301 80              ??         80h
        ram:2302 e6              ??         E6h
        ram:2303 80              ??         80h
        ram:2304 21              ??         21h    !
        ram:2305 a2              ??         A2h
        ram:2306 80              ??         80h
        ram:2307 11              ??         11h
        ram:2308 97              ??         97h
        ram:2309 80              ??         80h
        ram:230a 20              ??         20h
        ram:230b 37              ??         37h    7
        ram:230c c3              ??         C3h
        ram:230d ce              ??         CEh
        ram:230e 22              ??         22h    "
        ram:230f 3a              ??         3Ah    :
        ram:2310 ae              ??         AEh
        ram:2311 80              ??         80h
        ram:2312 e6              ??         E6h
        ram:2313 80              ??         80h
        ram:2314 21              ??         21h    !
        ram:2315 a2              ??         A2h
        ram:2316 80              ??         80h
        ram:2317 11              ??         11h
        ram:2318 97              ??         97h
        ram:2319 80              ??         80h
        ram:231a 20              ??         20h
        ram:231b 27              ??         27h    '
        ram:231c c3              ??         C3h
        ram:231d e6              ??         E6h
        ram:231e 22              ??         22h    "
        ram:231f 21              ??         21h    !
        ram:2320 a1              ??         A1h
        ram:2321 80              ??         80h
        ram:2322 11              ??         11h
        ram:2323 8b              ??         8Bh
        ram:2324 80              ??         80h
        ram:2325 af              ??         AFh
        ram:2326 18              ??         18h
        ram:2327 ac              ??         ACh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2328()
             undefined         A:1            <RETURN>
                             FUN_ram_2328                                    XREF[2]:     FUN_ram_0d78:0dc7(c),
                                                                                          FUN_ram_0d78:0e1d(c)
        ram:2328 21 8c 80        LD         HL,0x808c
        ram:232b 11 97 80        LD         DE,0x8097
        ram:232e 18 13           JR         LAB_ram_2343
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2330()
             undefined         A:1            <RETURN>
                             FUN_ram_2330                                    XREF[2]:     FUN_ram_0d78:0dcf(c),
                                                                                          FUN_ram_0d78:0e15(c)
        ram:2330 21 97 80        LD         HL,0x8097
        ram:2333 18 0b           JR         LAB_ram_2340
        ram:2335 21              ??         21h    !
        ram:2336 8c              ??         8Ch
        ram:2337 80              ??         80h
        ram:2338 11              ??         11h
        ram:2339 a2              ??         A2h
        ram:233a 80              ??         80h
        ram:233b 18              ??         18h
        ram:233c 06              ??         06h
        ram:233d 21              ??         21h    !
        ram:233e a2              ??         A2h
        ram:233f 80              ??         80h
                             LAB_ram_2340                                    XREF[1]:     ram:2333(j)
        ram:2340 11 8c 80        LD         DE,0x808c
                             LAB_ram_2343                                    XREF[1]:     ram:232e(j)
        ram:2343 1a              LD         A,(DE=>DAT_ram_808c)
        ram:2344 96              SUB        (HL=>DAT_ram_8097)
        ram:2345 27              DAA
        ram:2346 12              LD         (DE=>DAT_ram_808c),A
        ram:2347 1b              DEC        DE
        ram:2348 2b              DEC        HL
        ram:2349 1a              LD         A,(DE=>DAT_ram_808b)
        ram:234a 9e              SBC        A,(HL=>DAT_ram_8096)
        ram:234b 27              DAA
        ram:234c 12              LD         (DE=>DAT_ram_808b),A
        ram:234d 1b              DEC        DE
        ram:234e 2b              DEC        HL
        ram:234f 1a              LD         A,(DE=>DAT_ram_808a)
        ram:2350 9e              SBC        A,(HL=>DAT_ram_8095)
        ram:2351 27              DAA
        ram:2352 12              LD         (DE=>DAT_ram_808a),A
        ram:2353 1b              DEC        DE
        ram:2354 2b              DEC        HL
        ram:2355 1a              LD         A,(DE=>DAT_ram_8089)
        ram:2356 9e              SBC        A,(HL=>DAT_ram_8094)
        ram:2357 27              DAA
        ram:2358 12              LD         (DE=>DAT_ram_8089),A
        ram:2359 1b              DEC        DE
        ram:235a 2b              DEC        HL
        ram:235b 1a              LD         A,(DE=>DAT_ram_8088)
        ram:235c 9e              SBC        A,(HL=>DAT_ram_8093)
        ram:235d 27              DAA
        ram:235e 12              LD         (DE=>DAT_ram_8088),A
        ram:235f 1b              DEC        DE
        ram:2360 2b              DEC        HL
        ram:2361 1a              LD         A,(DE=>DAT_ram_8087)
        ram:2362 9e              SBC        A,(HL=>DAT_ram_8092)
        ram:2363 27              DAA
        ram:2364 12              LD         (DE=>DAT_ram_8087),A
        ram:2365 1b              DEC        DE
        ram:2366 2b              DEC        HL
        ram:2367 1a              LD         A,(DE=>DAT_ram_8086)
        ram:2368 9e              SBC        A,(HL=>DAT_ram_8091)
        ram:2369 27              DAA
        ram:236a 12              LD         (DE=>DAT_ram_8086),A
        ram:236b 1b              DEC        DE
        ram:236c 2b              DEC        HL
        ram:236d 1a              LD         A,(DE=>DAT_ram_8085)
        ram:236e 9e              SBC        A,(HL=>DAT_ram_8090)
        ram:236f 27              DAA
        ram:2370 12              LD         (DE=>DAT_ram_8085),A
        ram:2371 1b              DEC        DE
        ram:2372 2b              DEC        HL
        ram:2373 c9              RET
        ram:2374 11              ??         11h
        ram:2375 ac              ??         ACh
        ram:2376 80              ??         80h
        ram:2377 af              ??         AFh
        ram:2378 18              ??         18h
        ram:2379 cf              ??         CFh
        ram:237a 21              ??         21h    !
        ram:237b 8b              ??         8Bh
        ram:237c 80              ??         80h
        ram:237d 11              ??         11h
        ram:237e a1              ??         A1h
        ram:237f 80              ??         80h
        ram:2380 af              ??         AFh
        ram:2381 18              ??         18h
        ram:2382 c6              ??         C6h
        ram:2383 21              ??         21h    !
        ram:2384 a1              ??         A1h
        ram:2385 80              ??         80h
        ram:2386 11              ??         11h
        ram:2387 8b              ??         8Bh
        ram:2388 80              ??         80h
        ram:2389 af              ??         AFh
        ram:238a 18              ??         18h
        ram:238b bd              ??         BDh
        ram:238c 21              ??         21h    !
        ram:238d b9              ??         B9h
        ram:238e 80              ??         80h
        ram:238f 18              ??         18h
        ram:2390 1a              ??         1Ah
        ram:2391 21              ??         21h    !
        ram:2392 ae              ??         AEh
        ram:2393 80              ??         80h
        ram:2394 11              ??         11h
        ram:2395 b9              ??         B9h
        ram:2396 80              ??         80h
        ram:2397 18              ??         18h
        ram:2398 27              ??         27h    '
        ram:2399 21              ??         21h    !
        ram:239a ae              ??         AEh
        ram:239b 80              ??         80h
        ram:239c 18              ??         18h
        ram:239d 1f              ??         1Fh
        ram:239e 21              ??         21h    !
        ram:239f b9              ??         B9h
        ram:23a0 80              ??         80h
        ram:23a1 18              ??         18h
        ram:23a2 1a              ??         1Ah
        ram:23a3 21              ??         21h    !
        ram:23a4 a3              ??         A3h
        ram:23a5 80              ??         80h
        ram:23a6 18              ??         18h
        ram:23a7 03              ??         03h
        ram:23a8 21              ??         21h    !
        ram:23a9 ae              ??         AEh
        ram:23aa 80              ??         80h
        ram:23ab 11              ??         11h
        ram:23ac 8d              ??         8Dh
        ram:23ad 80              ??         80h
        ram:23ae 18              ??         18h
        ram:23af 10              ??         10h
        ram:23b0 21              ??         21h    !
        ram:23b1 98              ??         98h
        ram:23b2 80              ??         80h
        ram:23b3 18              ??         18h
        ram:23b4 08              ??         08h
        ram:23b5 21              ??         21h    !
        ram:23b6 a3              ??         A3h
        ram:23b7 80              ??         80h
        ram:23b8 18              ??         18h
        ram:23b9 03              ??         03h
        ram:23ba 21              ??         21h    !
        ram:23bb 8d              ??         8Dh
        ram:23bc 80              ??         80h
        ram:23bd 11              ??         11h
        ram:23be 82              ??         82h
        ram:23bf 80              ??         80h
        ram:23c0 06              ??         06h
        ram:23c1 0b              ??         0Bh
        ram:23c2 1a              ??         1Ah
        ram:23c3 4e              ??         4Eh    N
        ram:23c4 77              ??         77h    w
        ram:23c5 79              ??         79h    y
        ram:23c6 12              ??         12h
        ram:23c7 23              ??         23h    #
        ram:23c8 13              ??         13h
        ram:23c9 10              ??         10h
        ram:23ca f7              ??         F7h
        ram:23cb c9              ??         C9h
        ram:23cc 3a              ??         3Ah    :
        ram:23cd 90              ??         90h
        ram:23ce 80              ??         80h
        ram:23cf b7              ??         B7h
        ram:23d0 c0              ??         C0h
        ram:23d1 3a              ??         3Ah    :
        ram:23d2 85              ??         85h
        ram:23d3 80              ??         80h
        ram:23d4 a7              ??         A7h
        ram:23d5 c9              ??         C9h
        ram:23d6 3a              ??         3Ah    :
        ram:23d7 90              ??         90h
        ram:23d8 80              ??         80h
        ram:23d9 a7              ??         A7h
        ram:23da c9              ??         C9h
        ram:23db 3a              ??         3Ah    :
        ram:23dc 82              ??         82h
        ram:23dd 80              ??         80h
        ram:23de e6              ??         E6h
        ram:23df 1f              ??         1Fh
        ram:23e0 c0              ??         C0h
        ram:23e1 3a              ??         3Ah    :
        ram:23e2 85              ??         85h
        ram:23e3 80              ??         80h
        ram:23e4 d6              ??         D6h
        ram:23e5 10              ??         10h
        ram:23e6 d8              ??         D8h
        ram:23e7 3a              ??         3Ah    :
        ram:23e8 82              ??         82h
        ram:23e9 80              ??         80h
        ram:23ea e6              ??         E6h
        ram:23eb 80              ??         80h
        ram:23ec c0              ??         C0h
        ram:23ed 21              ??         21h    !
        ram:23ee 83              ??         83h
        ram:23ef 80              ??         80h
        ram:23f0 16              ??         16h
        ram:23f1 01              ??         01h
        ram:23f2 18              ??         18h
        ram:23f3 05              ??         05h
        ram:23f4 21              ??         21h    !
        ram:23f5 83              ??         83h
        ram:23f6 80              ??         80h
        ram:23f7 16              ??         16h
        ram:23f8 00              ??         00h
        ram:23f9 5e              ??         5Eh    ^
        ram:23fa 23              ??         23h    #
        ram:23fb 7e              ??         7Eh    ~
        ram:23fc fe              ??         FEh
        ram:23fd fc              ??         FCh
        ram:23fe d8              ??         D8h
        ram:23ff 28              ??         28h    (
        ram:2400 02              ??         02h
        ram:2401 af              ??         AFh
        ram:2402 c9              ??         C9h
        ram:2403 7b              ??         7Bh    {
        ram:2404 fe              ??         FEh
        ram:2405 10              ??         10h
        ram:2406 30              ??         30h    0
        ram:2407 f9              ??         F9h
        ram:2408 cb              ??         CBh
        ram:2409 3f              ??         3Fh    ?
        ram:240a 06              ??         06h
        ram:240b 00              ??         00h
        ram:240c 4f              ??         4Fh    O
        ram:240d 23              ??         23h    #
        ram:240e 09              ??         09h
        ram:240f 7e              ??         7Eh    ~
        ram:2410 cb              ??         CBh
        ram:2411 42              ??         42h    B
        ram:2412 20              ??         20h
        ram:2413 08              ??         08h
        ram:2414 cb              ??         CBh
        ram:2415 43              ??         43h    C
        ram:2416 cc              ??         CCh
        ram:2417 bf              ??         BFh
        ram:2418 21              ??         21h    !
        ram:2419 e6              ??         E6h
        ram:241a 01              ??         01h
        ram:241b c9              ??         C9h
        ram:241c cb              ??         CBh
        ram:241d 43              ??         43h    C
        ram:241e 20              ??         20h
        ram:241f 03              ??         03h
        ram:2420 e6              ??         E6h
        ram:2421 0f              ??         0Fh
        ram:2422 c0              ??         C0h
        ram:2423 3e              ??         3Eh    >
        ram:2424 06              ??         06h
        ram:2425 91              ??         91h
        ram:2426 c8              ??         C8h
        ram:2427 23              ??         23h    #
        ram:2428 47              ??         47h    G
        ram:2429 18              ??         18h
        ram:242a 0d              ??         0Dh
        ram:242b 3e              ??         3Eh    >
        ram:242c 10              ??         10h
        ram:242d 18              ??         18h
        ram:242e 01              ??         01h
        ram:242f af              ??         AFh
        ram:2430 21              ??         21h    !
        ram:2431 85              ??         85h
        ram:2432 80              ??         80h
        ram:2433 be              ??         BEh
        ram:2434 c0              ??         C0h
        ram:2435 23              ??         23h    #
        ram:2436 06              ??         06h
        ram:2437 07              ??         07h
        ram:2438 af              ??         AFh
        ram:2439 be              ??         BEh
        ram:243a c0              ??         C0h
        ram:243b 23              ??         23h    #
        ram:243c 10              ??         10h
        ram:243d fb              ??         FBh
        ram:243e c9              ??         C9h
        ram:243f 21              ??         21h    !
        ram:2440 d0              ??         D0h
        ram:2441 19              ??         19h
        ram:2442 11              ??         11h
        ram:2443 90              ??         90h
        ram:2444 80              ??         80h
        ram:2445 18              ??         18h
        ram:2446 06              ??         06h
        ram:2447 11              ??         11h
        ram:2448 a6              ??         A6h
        ram:2449 80              ??         80h
        ram:244a 21              ??         21h    !
        ram:244b 50              ??         50h    P
        ram:244c 19              ??         19h
        ram:244d 3a              ??         3Ah    :
        ram:244e ae              ??         AEh
        ram:244f 80              ??         80h
        ram:2450 c5              ??         C5h
        ram:2451 e6              ??         E6h
        ram:2452 80              ??         80h
        ram:2453 3e              ??         3Eh    >
        ram:2454 00              ??         00h
        ram:2455 0e              ??         0Eh
        ram:2456 10              ??         10h
        ram:2457 28              ??         28h    (
        ram:2458 05              ??         05h
        ram:2459 c6              ??         C6h
        ram:245a 08              ??         08h
        ram:245b 18              ??         18h
        ram:245c 01              ??         01h
        ram:245d 81              ??         81h
        ram:245e 05              ??         05h
        ram:245f f2              ??         F2h
        ram:2460 5d              ??         5Dh    ]
        ram:2461 24              ??         24h    $
        ram:2462 4f              ??         4Fh    O
        ram:2463 06              ??         06h
        ram:2464 00              ??         00h
        ram:2465 09              ??         09h
        ram:2466 cd              ??         CDh
        ram:2467 a1              ??         A1h
        ram:2468 20              ??         20h
        ram:2469 c1              ??         C1h
        ram:246a c9              ??         C9h
        ram:246b 4f              ??         4Fh    O
        ram:246c 11              ??         11h
        ram:246d a6              ??         A6h
        ram:246e 80              ??         80h
        ram:246f 21              ??         21h    !
        ram:2470 ec              ??         ECh
        ram:2471 13              ??         13h
        ram:2472 3a              ??         3Ah    :
        ram:2473 98              ??         98h
        ram:2474 80              ??         80h
        ram:2475 c5              ??         C5h
        ram:2476 0e              ??         0Eh
        ram:2477 08              ??         08h
        ram:2478 47              ??         47h    G
        ram:2479 af              ??         AFh
        ram:247a 18              ??         18h
        ram:247b e2              ??         E2h
        ram:247c c5              ??         C5h
        ram:247d 0e              ??         0Eh
        ram:247e 0a              ??         0Ah
        ram:247f 18              ??         18h
        ram:2480 f7              ??         F7h
        ram:2481 11              ??         11h
        ram:2482 82              ??         82h
        ram:2483 80              ??         80h
        ram:2484 18              ??         18h
        ram:2485 03              ??         03h
        ram:2486 11              ??         11h
        ram:2487 8d              ??         8Dh
        ram:2488 80              ??         80h
        ram:2489 f5              ??         F5h
        ram:248a af              ??         AFh
        ram:248b 12              ??         12h
        ram:248c 13              ??         13h
        ram:248d f1              ??         F1h
        ram:248e 21              ??         21h    !
        ram:248f 99              ??         99h
        ram:2490 24              ??         24h    $
        ram:2491 cd              ??         CDh
        ram:2492 7c              ??         7Ch    |
        ram:2493 24              ??         24h    $
        ram:2494 ed              ??         EDh
        ram:2495 a0              ??         A0h
        ram:2496 ed              ??         EDh
        ram:2497 a0              ??         A0h
        ram:2498 c9              ??         C9h
        ram:2499 01              ??         01h
        ram:249a fc              ??         FCh
        ram:249b 57              ??         57h    W
        ram:249c 29              ??         29h    )
        ram:249d 57              ??         57h    W
        ram:249e 79              ??         79h    y
        ram:249f 51              ??         51h    Q
        ram:24a0 30              ??         30h    0
        ram:24a1 82              ??         82h
        ram:24a2 32              ??         32h    2
        ram:24a3 00              ??         00h
        ram:24a4 fc              ??         FCh
        ram:24a5 15              ??         15h
        ram:24a6 70              ??         70h    p
        ram:24a7 79              ??         79h    y
        ram:24a8 63              ??         63h    c
        ram:24a9 26              ??         26h    &
        ram:24aa 79              ??         79h    y
        ram:24ab 48              ??         48h    H
        ram:24ac 97              ??         97h
        ram:24ad ff              ??         FFh
        ram:24ae fb              ??         FBh
        ram:24af 78              ??         78h    x
        ram:24b0 53              ??         53h    S
        ram:24b1 98              ??         98h
        ram:24b2 16              ??         16h
        ram:24b3 33              ??         33h    3
        ram:24b4 97              ??         97h
        ram:24b5 44              ??         44h    D
        ram:24b6 83              ??         83h
        ram:24b7 ff              ??         FFh
        ram:24b8 fb              ??         FBh
        ram:24b9 43              ??         43h    C
        ram:24ba 42              ??         42h    B
        ram:24bb 94              ??         94h
        ram:24bc 48              ??         48h    H
        ram:24bd 19              ??         19h
        ram:24be 03              ??         03h
        ram:24bf 25              ??         25h    %
        ram:24c0 18              ??         18h
        ram:24c1 00              ??         00h
        ram:24c2 fc              ??         FCh
        ram:24c3 31              ??         31h    1
        ram:24c4 41              ??         41h    A
        ram:24c5 59              ??         59h    Y
        ram:24c6 26              ??         26h    &
        ram:24c7 53              ??         53h    S
        ram:24c8 58              ??         58h    X
        ram:24c9 98              ??         98h
        ram:24ca 00              ??         00h
        ram:24cb fe              ??         FEh
        ram:24cc fb              ??         FBh
        ram:24cd 17              ??         17h
        ram:24ce 45              ??         45h    E
        ram:24cf 32              ??         32h    2
        ram:24d0 92              ??         92h
        ram:24d1 51              ??         51h    Q
        ram:24d2 99              ??         99h
        ram:24d3 43              ??         43h    C
        ram:24d4 30              ??         30h    0
        ram:24d5 00              ??         00h
        ram:24d6 fc              ??         FCh
        ram:24d7 23              ??         23h    #
        ram:24d8 02              ??         02h
        ram:24d9 58              ??         58h    X
        ram:24da 50              ??         50h    P
        ram:24db 92              ??         92h
        ram:24dc 99              ??         99h
        ram:24dd 40              ??         40h    @
        ram:24de 46              ??         46h    F
        ram:24df 62              ??         62h    b
        ram:24e0 83              ??         83h
        ram:24e1 18              ??         18h
        ram:24e2 53              ??         53h    S
        ram:24e3 07              ??         07h
        ram:24e4 17              ??         17h
        ram:24e5 96              ??         96h
        ram:24e6 31              ??         31h    1
        ram:24e7 41              ??         41h    A
        ram:24e8 59              ??         59h    Y
        ram:24e9 26              ??         26h    &
        ram:24ea 53              ??         53h    S
        ram:24eb 58              ??         58h    X
        ram:24ec 98              ??         98h
        ram:24ed 78              ??         78h    x
        ram:24ee 53              ??         53h    S
        ram:24ef 98              ??         98h
        ram:24f0 16              ??         16h
        ram:24f1 33              ??         33h    3
        ram:24f2 97              ??         97h
        ram:24f3 45              ??         45h    E
        ram:24f4 15              ??         15h
        ram:24f5 70              ??         70h    p
        ram:24f6 79              ??         79h    y
        ram:24f7 63              ??         63h    c
        ram:24f8 26              ??         26h    &
        ram:24f9 79              ??         79h    y
        ram:24fa 49              ??         49h    I
        ram:24fb cd              ??         CDh
        ram:24fc ee              ??         EEh
        ram:24fd 25              ??         25h    %
        ram:24fe 11              ??         11h
        ram:24ff 00              ??         00h
        ram:2500 fc              ??         FCh
        ram:2501 30              ??         30h    0
        ram:2502 01              ??         01h
        ram:2503 eb              ??         EBh
        ram:2504 b7              ??         B7h
        ram:2505 ed              ??         EDh
        ram:2506 52              ??         52h    R
        ram:2507 7c              ??         7Ch    |
        ram:2508 4f              ??         4Fh    O
        ram:2509 81              ??         81h
        ram:250a 57              ??         57h    W
        ram:250b 7d              ??         7Dh    }
        ram:250c cd              ??         CDh
        ram:250d bf              ??         BFh
        ram:250e 21              ??         21h    !
        ram:250f 47              ??         47h    G
        ram:2510 7d              ??         7Dh    }
        ram:2511 e6              ??         E6h
        ram:2512 0f              ??         0Fh
        ram:2513 c6              ??         C6h
        ram:2514 00              ??         00h
        ram:2515 27              ??         27h    '
        ram:2516 1e              ??         1Eh
        ram:2517 16              ??         16h
        ram:2518 cd              ??         CDh
        ram:2519 2e              ??         2Eh    .
        ram:251a 25              ??         25h    %
        ram:251b 41              ??         41h    A
        ram:251c 1e              ??         1Eh
        ram:251d 56              ??         56h    V
        ram:251e cd              ??         CDh
        ram:251f 2e              ??         2Eh    .
        ram:2520 25              ??         25h    %
        ram:2521 32              ??         32h    2
        ram:2522 84              ??         84h
        ram:2523 80              ??         80h
        ram:2524 7a              ??         7Ah    z
        ram:2525 fe              ??         FEh
        ram:2526 0a              ??         0Ah
        ram:2527 d2              ??         D2h
        ram:2528 08              ??         08h
        ram:2529 0a              ??         0Ah
        ram:252a 32              ??         32h    2
        ram:252b 83              ??         83h
        ram:252c 80              ??         80h
        ram:252d c9              ??         C9h
        ram:252e 05              ??         05h
        ram:252f f8              ??         F8h
        ram:2530 83              ??         83h
        ram:2531 27              ??         27h    '
        ram:2532 30              ??         30h    0
        ram:2533 fa              ??         FAh
        ram:2534 14              ??         14h
        ram:2535 18              ??         18h
        ram:2536 f7              ??         F7h
        ram:2537 eb              ??         EBh
        ram:2538 1a              ??         1Ah
        ram:2539 e6              ??         E6h
        ram:253a 0f              ??         0Fh
        ram:253b 6f              ??         6Fh    o
        ram:253c 26              ??         26h    &
        ram:253d 00              ??         00h
        ram:253e 0e              ??         0Eh
        ram:253f 0a              ??         0Ah
        ram:2540 44              ??         44h    D
        ram:2541 cd              ??         CDh
        ram:2542 59              ??         59h    Y
        ram:2543 25              ??         25h    %
        ram:2544 1b              ??         1Bh
        ram:2545 1a              ??         1Ah
        ram:2546 0e              ??         0Eh
        ram:2547 64              ??         64h    d
        ram:2548 e6              ??         E6h
        ram:2549 0f              ??         0Fh
        ram:254a cd              ??         CDh
        ram:254b 5d              ??         5Dh    ]
        ram:254c 25              ??         25h    %
        ram:254d 01              ??         01h
        ram:254e e8              ??         E8h
        ram:254f 03              ??         03h
        ram:2550 cd              ??         CDh
        ram:2551 59              ??         59h    Y
        ram:2552 25              ??         25h    %
        ram:2553 eb              ??         EBh
        ram:2554 72              ??         72h    r
        ram:2555 23              ??         23h    #
        ram:2556 73              ??         73h    s
        ram:2557 7b              ??         7Bh    {
        ram:2558 c9              ??         C9h
        ram:2559 1a              ??         1Ah
        ram:255a cd              ??         CDh
        ram:255b bf              ??         BFh
        ram:255c 21              ??         21h    !
        ram:255d 3d              ??         3Dh    =
        ram:255e f8              ??         F8h
        ram:255f 09              ??         09h
        ram:2560 18              ??         18h
        ram:2561 fb              ??         FBh
        ram:2562 3a              ??         3Ah    :
        ram:2563 8d              ??         8Dh
        ram:2564 80              ??         80h
        ram:2565 e6              ??         E6h
        ram:2566 80              ??         80h
        ram:2567 c9              ??         C9h
        ram:2568 3a              ??         3Ah    :
        ram:2569 82              ??         82h
        ram:256a 80              ??         80h
        ram:256b e6              ??         E6h
        ram:256c 80              ??         80h
        ram:256d c9              ??         C9h
        ram:256e 21              ??         21h    !
        ram:256f 8d              ??         8Dh
        ram:2570 80              ??         80h
        ram:2571 18              ??         18h
        ram:2572 03              ??         03h
        ram:2573 21              ??         21h    !
        ram:2574 82              ??         82h
        ram:2575 80              ??         80h
        ram:2576 7e              ??         7Eh    ~
        ram:2577 cb              ??         CBh
        ram:2578 be              ??         BEh
        ram:2579 c9              ??         C9h
        ram:257a cd              ??         CDh
        ram:257b 7d              ??         7Dh    }
        ram:257c 25              ??         25h    %
        ram:257d cd              ??         CDh
        ram:257e d1              ??         D1h
        ram:257f 23              ??         23h    #
        ram:2580 c8              ??         C8h
        ram:2581 cd              ??         CDh
        ram:2582 88              ??         88h
        ram:2583 25              ??         25h    %
        ram:2584 ca              ??         CAh
        ram:2585 98              ??         98h
        ram:2586 21              ??         21h    !
        ram:2587 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2588()
             undefined         A:1            <RETURN>
                             FUN_ram_2588                                    XREF[1]:     FUN_ram_0d78:13e3(c)
        ram:2588 2a 83 80        LD         HL,(DAT_ram_8083)
        ram:258b 2b              DEC        HL
        ram:258c 22 83 80        LD         (DAT_ram_8083),HL
        ram:258f c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2590()
             undefined         A:1            <RETURN>
                             FUN_ram_2590                                    XREF[3]:     FUN_ram_0d78:0e08(c),
                                                                                          FUN_ram_0e5b:0f38(c),
                                                                                          FUN_ram_0e5b:0f95(c)
        ram:2590 21 83 80        LD         HL,0x8083
        ram:2593 34              INC        (HL=>DAT_ram_8083)
        ram:2594 c0              RET        NZ
        ram:2595 23              INC        HL
        ram:2596 34              INC        (HL=>DAT_ram_8084)
        ram:2597 c0              RET        NZ
        ram:2598 c3 08 0a        JP         LAB_ram_0a08
        ram:259b 3a              ??         3Ah    :
        ram:259c 82              ??         82h
        ram:259d 80              ??         80h
        ram:259e e6              ??         E6h
        ram:259f 1f              ??         1Fh
        ram:25a0 fe              ??         FEh
        ram:25a1 01              ??         01h
        ram:25a2 f5              ??         F5h
        ram:25a3 38              ??         38h    8
        ram:25a4 21              ??         21h    !
        ram:25a5 20              ??         20h
        ram:25a6 38              ??         38h    8
        ram:25a7 3a              ??         3Ah    :
        ram:25a8 90              ??         90h
        ram:25a9 80              ??         80h
        ram:25aa b7              ??         B7h
        ram:25ab 20              ??         20h
        ram:25ac 08              ??         08h
        ram:25ad 3a              ??         3Ah    :
        ram:25ae 8d              ??         8Dh
        ram:25af 80              ??         80h
        ram:25b0 e6              ??         E6h
        ram:25b1 7f              ??         7Fh    
        ram:25b2 32              ??         32h    2
        ram:25b3 8d              ??         8Dh
        ram:25b4 80              ??         80h
        ram:25b5 ed              ??         EDh
        ram:25b6 5b              ??         5Bh    [
        ram:25b7 8e              ??         8Eh
        ram:25b8 80              ??         80h
        ram:25b9 cd              ??         CDh
        ram:25ba e1              ??         E1h
        ram:25bb 25              ??         25h    %
        ram:25bc 38              ??         38h    8
        ram:25bd 08              ??         08h
        ram:25be cd              ??         CDh
        ram:25bf 93              ??         93h
        ram:25c0 21              ??         21h    !
        ram:25c1 3e              ??         3Eh    >
        ram:25c2 01              ??         01h
        ram:25c3 32              ??         32h    2
        ram:25c4 8d              ??         8Dh
        ram:25c5 80              ??         80h
        ram:25c6 3a              ??         3Ah    :
        ram:25c7 85              ??         85h
        ram:25c8 80              ??         80h
        ram:25c9 b7              ??         B7h
        ram:25ca 20              ??         20h
        ram:25cb 05              ??         05h
        ram:25cc f1              ??         F1h
        ram:25cd 32              ??         32h    2
        ram:25ce 82              ??         82h
        ram:25cf 80              ??         80h
        ram:25d0 c9              ??         C9h
        ram:25d1 ed              ??         EDh
        ram:25d2 5b              ??         5Bh    [
        ram:25d3 83              ??         83h
        ram:25d4 80              ??         80h
        ram:25d5 cd              ??         CDh
        ram:25d6 e1              ??         E1h
        ram:25d7 25              ??         25h    %
        ram:25d8 38              ??         38h    8
        ram:25d9 05              ??         05h
        ram:25da cd              ??         CDh
        ram:25db 98              ??         98h
        ram:25dc 21              ??         21h    !
        ram:25dd 18              ??         18h
        ram:25de ed              ??         EDh
        ram:25df f1              ??         F1h
        ram:25e0 c9              ??         C9h
        ram:25e1 21              ??         21h    !
        ram:25e2 18              ??         18h
        ram:25e3 00              ??         00h
        ram:25e4 19              ??         19h
        ram:25e5 da              ??         DAh
        ram:25e6 08              ??         08h
        ram:25e7 0a              ??         0Ah
        ram:25e8 21              ??         21h    !
        ram:25e9 18              ??         18h
        ram:25ea f8              ??         F8h
        ram:25eb ed              ??         EDh
        ram:25ec 52              ??         52h    R
        ram:25ed c9              ??         C9h
        ram:25ee 2a              ??         2Ah    *
        ram:25ef 83              ??         83h
        ram:25f0 80              ??         80h
        ram:25f1 7c              ??         7Ch    |
        ram:25f2 fe              ??         FEh
        ram:25f3 fc              ??         FCh
        ram:25f4 c9              ??         C9h
        ram:25f5 2a              ??         2Ah    *
        ram:25f6 84              ??         84h
        ram:25f7 80              ??         80h
        ram:25f8 26              ??         26h    &
        ram:25f9 30              ??         30h    0
        ram:25fa 11              ??         11h
        ram:25fb 24              ??         24h    $
        ram:25fc 30              ??         30h    0
        ram:25fd b7              ??         B7h
        ram:25fe ed              ??         EDh
        ram:25ff 52              ??         52h    R
        ram:2600 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2601()
             undefined         A:1            <RETURN>
                             FUN_ram_2601                                    XREF[1]:     FUN_ram_2d3f:2d56(c)
        ram:2601 44              LD         B,H
        ram:2602 26 00           LD         H,0x0
        ram:2604 54              LD         D,H
        ram:2605 5c              LD         E,H
        ram:2606 eb              EX         DE,HL
        ram:2607 b7              OR         A
                             LAB_ram_2608                                    XREF[1]:     ram:260a(j)
        ram:2608 ed 5a           ADC        HL,DE
        ram:260a 10 fc           DJNZ       LAB_ram_2608
        ram:260c c9              RET
        ram:260d 21              ??         21h    !
        ram:260e 01              ??         01h
        ram:260f 2e              ??         2Eh    .
        ram:2610 18              ??         18h
        ram:2611 39              ??         39h    9
        ram:2612 21              ??         21h    !
        ram:2613 17              ??         17h
        ram:2614 26              ??         26h    &
        ram:2615 e7              ??         E7h
        ram:2616 c9              ??         C9h
        ram:2617 04              ??         04h
        ram:2618 05              ??         05h
        ram:2619 50              ??         50h    P
        ram:261a 52              ??         52h    R
        ram:261b 65              ??         65h    e
        ram:261c 67              ??         67h    g
        ram:261d 43              ??         43h    C
        ram:261e cd              ??         CDh
        ram:261f 3f              ??         3Fh    ?
        ram:2620 1f              ??         1Fh
        ram:2621 c8              ??         C8h
        ram:2622 cd              ??         CDh
        ram:2623 47              ??         47h    G
        ram:2624 1f              ??         1Fh
        ram:2625 c8              ??         C8h
        ram:2626 c3              ??         C3h
        ram:2627 28              ??         28h    (
        ram:2628 0a              ??         0Ah
        ram:2629 21              ??         21h    !
        ram:262a 01              ??         01h
        ram:262b 21              ??         21h    !
        ram:262c 18              ??         18h
        ram:262d 1d              ??         1Dh
        ram:262e 21              ??         21h    !
        ram:262f 01              ??         01h
        ram:2630 23              ??         23h    #
        ram:2631 18              ??         18h
        ram:2632 18              ??         18h
        ram:2633 21              ??         21h    !
        ram:2634 01              ??         01h
        ram:2635 40              ??         40h    @
        ram:2636 18              ??         18h
        ram:2637 13              ??         13h
        ram:2638 21              ??         21h    !
        ram:2639 01              ??         01h
        ram:263a 2a              ??         2Ah    *
        ram:263b 18              ??         18h
        ram:263c 0e              ??         0Eh
        ram:263d 26              ??         26h    &
        ram:263e c1              ??         C1h
        ram:263f 2e              ??         2Eh    .
        ram:2640 01              ??         01h
        ram:2641 18              ??         18h
        ram:2642 08              ??         08h
        ram:2643 21              ??         21h    !
        ram:2644 01              ??         01h
        ram:2645 72              ??         72h    r
        ram:2646 18              ??         18h
        ram:2647 03              ??         03h
        ram:2648 21              ??         21h    !
        ram:2649 01              ??         01h
        ram:264a 78              ??         78h    x
        ram:264b 22              ??         22h    "
        ram:264c 83              ??         83h
        ram:264d 80              ??         80h
        ram:264e c9              ??         C9h
        ram:264f 21              ??         21h    !
        ram:2650 01              ??         01h
        ram:2651 79              ??         79h    y
        ram:2652 18              ??         18h
        ram:2653 f7              ??         F7h
        ram:2654 21              ??         21h    !
        ram:2655 01              ??         01h
        ram:2656 74              ??         74h    t
        ram:2657 18              ??         18h
        ram:2658 f2              ??         F2h
        ram:2659 2a              ??         2Ah    *
        ram:265a e1              ??         E1h
        ram:265b 8b              ??         8Bh
        ram:265c 22              ??         22h    "
        ram:265d 29              ??         29h    )
        ram:265e 86              ??         86h
        ram:265f c9              ??         C9h
        ram:2660 cd              ??         CDh
        ram:2661 f5              ??         F5h
        ram:2662 25              ??         25h    %
        ram:2663 c0              ??         C0h
        ram:2664 d7              ??         D7h
        ram:2665 cb              ??         CBh
        ram:2666 fe              ??         FEh
        ram:2667 c9              ??         C9h
        ram:2668 cf              ??         CFh
        ram:2669 cd              ??         CDh
        ram:266a f1              ??         F1h
        ram:266b 3d              ??         3Dh    =
        ram:266c c8              ??         C8h
        ram:266d cd              ??         CDh
        ram:266e f7              ??         F7h
        ram:266f 3d              ??         3Dh    =
        ram:2670 c9              ??         C9h
        ram:2671 d7              ??         D7h
        ram:2672 cb              ??         CBh
        ram:2673 76              ??         76h    v
        ram:2674 c8              ??         C8h
        ram:2675 c3              ??         C3h
        ram:2676 1b              ??         1Bh
        ram:2677 00              ??         00h
        ram:2678 fd              ??         FDh
        ram:2679 cb              ??         CBh
        ram:267a 00              ??         00h
        ram:267b 46              ??         46h    F
        ram:267c c9              ??         C9h
        ram:267d fd              ??         FDh
        ram:267e cb              ??         CBh
        ram:267f 00              ??         00h
        ram:2680 c6              ??         C6h
        ram:2681 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2682()
             undefined         A:1            <RETURN>
                             FUN_ram_2682                                    XREF[2]:     FUN_ram_0d78:0d93(c),
                                                                                          FUN_ram_1f8e:1fa9(c)
        ram:2682 ed 5b 8e 80     LD         DE,(DAT_ram_808e)
        ram:2686 18 03           JR         LAB_ram_268b
        ram:2688 11              ??         11h
        ram:2689 01              ??         01h
        ram:268a fc              ??         FCh
                             LAB_ram_268b                                    XREF[1]:     ram:2686(j)
        ram:268b b7              OR         A
        ram:268c 2a 83 80        LD         HL,(DAT_ram_8083)
        ram:268f ed 52           SBC        HL,DE
        ram:2691 c9              RET
        ram:2692 11              ??         11h
        ram:2693 ff              ??         FFh
        ram:2694 fb              ??         FBh
        ram:2695 18              ??         18h
        ram:2696 f4              ??         F4h
        ram:2697 11              ??         11h
        ram:2698 0c              ??         0Ch
        ram:2699 fc              ??         FCh
        ram:269a 18              ??         18h
        ram:269b ef              ??         EFh
        ram:269c cd              ??         CDh
        ram:269d 0b              ??         0Bh
        ram:269e 00              ??         00h
        ram:269f ca              ??         CAh
        ram:26a0 4d              ??         4Dh    M
        ram:26a1 0a              ??         0Ah
        ram:26a2 c9              ??         C9h
        ram:26a3 cd              ??         CDh
        ram:26a4 75              ??         75h    u
        ram:26a5 00              ??         00h
        ram:26a6 c2              ??         C2h
        ram:26a7 61              ??         61h    a
        ram:26a8 0a              ??         0Ah
        ram:26a9 c9              ??         C9h
        ram:26aa fd              ??         FDh
        ram:26ab cb              ??         CBh
        ram:26ac 09              ??         09h
        ram:26ad 6e              ??         6Eh    n
        ram:26ae c9              ??         C9h
        ram:26af fd              ??         FDh
        ram:26b0 cb              ??         CBh
        ram:26b1 00              ??         00h
        ram:26b2 86              ??         86h
        ram:26b3 c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_26b4()
             undefined         A:1            <RETURN>
                             FUN_ram_26b4                                    XREF[1]:     FUN_ram_289d:289e(c)
        ram:26b4 2a e5 8b        LD         HL,(DAT_ram_8be5)
        ram:26b7 2b              DEC        HL
        ram:26b8 2b              DEC        HL
        ram:26b9 ed 4b e1 8b     LD         BC,(DAT_ram_8be1)
        ram:26bd b7              OR         A
        ram:26be ed 42           SBC        HL,BC
        ram:26c0 30 04           JR         NC,LAB_ram_26c6
        ram:26c2 21 00 00        LD         HL,0x0
        ram:26c5 c9              RET
                             LAB_ram_26c6                                    XREF[1]:     ram:26c0(j)
        ram:26c6 23              INC        HL
        ram:26c7 c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_26c8()
             undefined         A:1            <RETURN>
                             FUN_ram_26c8                                    XREF[1]:     RST2:0010(T), RST2:0010(j)
        ram:26c8 2a eb 8b        LD         HL,(DAT_ram_8beb)
        ram:26cb 3a 84 80        LD         A,(DAT_ram_8084)
        ram:26ce fe 24           CP         0x24
        ram:26d0 20 06           JR         NZ,LAB_ram_26d8
        ram:26d2 ed 5b e3 8b     LD         DE,(DAT_ram_8be3)
        ram:26d6 18 04           JR         LAB_ram_26dc
                             LAB_ram_26d8                                    XREF[1]:     ram:26d0(j)
        ram:26d8 eb              EX         DE,HL
        ram:26d9 21 6f fa        LD         HL,0xfa6f
                             LAB_ram_26dc                                    XREF[1]:     ram:26d6(j)
        ram:26dc 13              INC        DE
        ram:26dd af              XOR        A
        ram:26de 47              LD         B,A
        ram:26df 3a 83 80        LD         A,(DAT_ram_8083)
        ram:26e2 2b              DEC        HL
        ram:26e3 2b              DEC        HL
        ram:26e4 2b              DEC        HL
                             LAB_ram_26e5                                    XREF[2]:     ram:26f4(j), ram:271e(j)
        ram:26e5 ed 52           SBC        HL,DE
        ram:26e7 d8              RET        C
        ram:26e8 19              ADD        HL,DE
        ram:26e9 be              CP         (HL)
        ram:26ea 28 0a           JR         Z,LAB_ram_26f6
        ram:26ec 4e              LD         C,(HL)
        ram:26ed 0c              INC        C
        ram:26ee 0c              INC        C
        ram:26ef 0c              INC        C
        ram:26f0 0c              INC        C
        ram:26f1 b7              OR         A
        ram:26f2 ed 42           SBC        HL,BC
        ram:26f4 18 ef           JR         LAB_ram_26e5
                             LAB_ram_26f6                                    XREF[1]:     ram:26ea(j)
        ram:26f6 4f              LD         C,A
        ram:26f7 d5              PUSH       DE
        ram:26f8 11 83 80        LD         DE,0x8083
        ram:26fb e5              PUSH       HL
                             LAB_ram_26fc                                    XREF[1]:     ram:2703(j)
        ram:26fc 2b              DEC        HL
        ram:26fd 13              INC        DE
        ram:26fe 1a              LD         A,(DE=>DAT_ram_8084)
        ram:26ff be              CP         (HL)
        ram:2700 20 10           JR         NZ,LAB_ram_2712
        ram:2702 0d              DEC        C
        ram:2703 c2 fc 26        JP         NZ,LAB_ram_26fc
        ram:2706 e1              POP        HL
        ram:2707 d1              POP        DE
        ram:2708 23              INC        HL
        ram:2709 56              LD         D,(HL)
        ram:270a 23              INC        HL
        ram:270b 5e              LD         E,(HL)
        ram:270c 23              INC        HL
        ram:270d 7e              LD         A,(HL)
        ram:270e 32 82 80        LD         (DAT_ram_8082),A
        ram:2711 c9              RET
                             LAB_ram_2712                                    XREF[1]:     ram:2700(j)
        ram:2712 e1              POP        HL
        ram:2713 d1              POP        DE
        ram:2714 3a 83 80        LD         A,(DAT_ram_8083)
        ram:2717 c6 04           ADD        A,0x4
        ram:2719 4f              LD         C,A
        ram:271a d6 04           SUB        0x4
        ram:271c ed 42           SBC        HL,BC
        ram:271e 18 c5           JR         LAB_ram_26e5
        ram:2720 3a              ??         3Ah    :
        ram:2721 85              ??         85h
        ram:2722 80              ??         80h
        ram:2723 fe              ??         FEh
        ram:2724 09              ??         09h
        ram:2725 30              ??         30h    0
        ram:2726 fe              ??         FEh
        ram:2727 c6              ??         C6h
        ram:2728 04              ??         04h
        ram:2729 4f              ??         4Fh    O
        ram:272a 06              ??         06h
        ram:272b 00              ??         00h
        ram:272c 2a              ??         2Ah    *
        ram:272d e3              ??         E3h
        ram:272e 8b              ??         8Bh
        ram:272f ed              ??         EDh
        ram:2730 42              ??         42h    B
        ram:2731 22              ??         22h    "
        ram:2732 e3              ??         E3h
        ram:2733 8b              ??         8Bh
        ram:2734 3a              ??         3Ah    :
        ram:2735 86              ??         86h
        ram:2736 80              ??         80h
        ram:2737 fe              ??         FEh
        ram:2738 24              ??         24h    $
        ram:2739 28              ??         28h    (
        ram:273a 09              ??         09h
        ram:273b 2a              ??         2Ah    *
        ram:273c eb              ??         EBh
        ram:273d 8b              ??         8Bh
        ram:273e b7              ??         B7h
        ram:273f ed              ??         EDh
        ram:2740 42              ??         42h    B
        ram:2741 22              ??         22h    "
        ram:2742 eb              ??         EBh
        ram:2743 8b              ??         8Bh
        ram:2744 09              ??         09h
        ram:2745 ed              ??         EDh
        ram:2746 5b              ??         5Bh    [
        ram:2747 e5              ??         E5h
        ram:2748 8b              ??         8Bh
        ram:2749 e5              ??         E5h
        ram:274a ed              ??         EDh
        ram:274b 52              ??         52h    R
        ram:274c f5              ??         F5h
        ram:274d e5              ??         E5h
        ram:274e eb              ??         EBh
        ram:274f ed              ??         EDh
        ram:2750 42              ??         42h    B
        ram:2751 22              ??         22h    "
        ram:2752 e5              ??         E5h
        ram:2753 8b              ??         8Bh
        ram:2754 23              ??         23h    #
        ram:2755 54              ??         54h    T
        ram:2756 5d              ??         5Dh    ]
        ram:2757 09              ??         09h
        ram:2758 c1              ??         C1h
        ram:2759 f1              ??         F1h
        ram:275a 28              ??         28h    (
        ram:275b 02              ??         02h
        ram:275c ed              ??         EDh
        ram:275d b0              ??         B0h
        ram:275e d1              ??         D1h
        ram:275f d5              ??         D5h
        ram:2760 3a              ??         3Ah    :
        ram:2761 85              ??         85h
        ram:2762 80              ??         80h
        ram:2763 c6              ??         C6h
        ram:2764 04              ??         04h
        ram:2765 47              ??         47h    G
        ram:2766 f5              ??         F5h
        ram:2767 21              ??         21h    !
        ram:2768 82              ??         82h
        ram:2769 80              ??         80h
        ram:276a 7e              ??         7Eh    ~
        ram:276b 12              ??         12h
        ram:276c 23              ??         23h    #
        ram:276d 1b              ??         1Bh
        ram:276e 10              ??         10h
        ram:276f fa              ??         FAh
        ram:2770 f1              ??         F1h
        ram:2771 4f              ??         4Fh    O
        ram:2772 3a              ??         3Ah    :
        ram:2773 86              ??         86h
        ram:2774 80              ??         80h
        ram:2775 fe              ??         FEh
        ram:2776 24              ??         24h    $
        ram:2777 28              ??         28h    (
        ram:2778 09              ??         09h
        ram:2779 cd              ??         CDh
        ram:277a bf              ??         BFh
        ram:277b 2f              ??         2Fh    /
        ram:277c d1              ??         D1h
        ram:277d d5              ??         D5h
        ram:277e 13              ??         13h
        ram:277f cd              ??         CDh
        ram:2780 c5              ??         C5h
        ram:2781 2c              ??         2Ch    ,
        ram:2782 e1              ??         E1h
        ram:2783 c9              ??         C9h
        ram:2784 f5              ??         F5h
        ram:2785 2a              ??         2Ah    *
        ram:2786 df              ??         DFh
        ram:2787 8b              ??         8Bh
        ram:2788 c5              ??         C5h
        ram:2789 e5              ??         E5h
        ram:278a 09              ??         09h
        ram:278b 22              ??         22h    "
        ram:278c df              ??         DFh
        ram:278d 8b              ??         8Bh
        ram:278e ed              ??         EDh
        ram:278f 42              ??         42h    B
        ram:2790 eb              ??         EBh
        ram:2791 2a              ??         2Ah    *
        ram:2792 e1              ??         E1h
        ram:2793 8b              ??         8Bh
        ram:2794 ed              ??         EDh
        ram:2795 52              ??         52h    R
        ram:2796 e5              ??         E5h
        ram:2797 f5              ??         F5h
        ram:2798 19              ??         19h
        ram:2799 09              ??         09h
        ram:279a 22              ??         22h    "
        ram:279b e1              ??         E1h
        ram:279c 8b              ??         8Bh
        ram:279d 2b              ??         2Bh    +
        ram:279e 54              ??         54h    T
        ram:279f 5d              ??         5Dh    ]
        ram:27a0 ed              ??         EDh
        ram:27a1 42              ??         42h    B
        ram:27a2 f1              ??         F1h
        ram:27a3 c1              ??         C1h
        ram:27a4 28              ??         28h    (
        ram:27a5 19              ??         19h
        ram:27a6 ed              ??         EDh
        ram:27a7 a8              ??         A8h
        ram:27a8 ed              ??         EDh
        ram:27a9 a8              ??         A8h
        ram:27aa ed              ??         EDh
        ram:27ab a8              ??         A8h
        ram:27ac ed              ??         EDh
        ram:27ad a8              ??         A8h
        ram:27ae ed              ??         EDh
        ram:27af a8              ??         A8h
        ram:27b0 ed              ??         EDh
        ram:27b1 a8              ??         A8h
        ram:27b2 ed              ??         EDh
        ram:27b3 a8              ??         A8h
        ram:27b4 ed              ??         EDh
        ram:27b5 a8              ??         A8h
        ram:27b6 ed              ??         EDh
        ram:27b7 a8              ??         A8h
        ram:27b8 ed              ??         EDh
        ram:27b9 a8              ??         A8h
        ram:27ba 78              ??         78h    x
        ram:27bb b1              ??         B1h
        ram:27bc c2              ??         C2h
        ram:27bd a6              ??         A6h
        ram:27be 27              ??         27h    '
        ram:27bf d1              ??         D1h
        ram:27c0 c1              ??         C1h
        ram:27c1 f1              ??         F1h
        ram:27c2 28              ??         28h    (
        ram:27c3 2f              ??         2Fh    /
        ram:27c4 2a              ??         2Ah    *
        ram:27c5 dd              ??         DDh
        ram:27c6 8b              ??         8Bh
        ram:27c7 e5              ??         E5h
        ram:27c8 09              ??         09h
        ram:27c9 22              ??         22h    "
        ram:27ca dd              ??         DDh
        ram:27cb 8b              ??         8Bh
        ram:27cc ed              ??         EDh
        ram:27cd 42              ??         42h    B
        ram:27ce eb              ??         EBh
        ram:27cf ed              ??         EDh
        ram:27d0 52              ??         52h    R
        ram:27d1 28              ??         28h    (
        ram:27d2 21              ??         21h    !
        ram:27d3 c5              ??         C5h
        ram:27d4 44              ??         44h    D
        ram:27d5 4d              ??         4Dh    M
        ram:27d6 19              ??         19h
        ram:27d7 2b              ??         2Bh    +
        ram:27d8 ed              ??         EDh
        ram:27d9 5b              ??         5Bh    [
        ram:27da df              ??         DFh
        ram:27db 8b              ??         8Bh
        ram:27dc 1b              ??         1Bh
        ram:27dd ed              ??         EDh
        ram:27de b8              ??         B8h
        ram:27df eb              ??         EBh
        ram:27e0 c1              ??         C1h
        ram:27e1 cd              ??         CDh
        ram:27e2 bf              ??         BFh
        ram:27e3 2f              ??         2Fh    /
        ram:27e4 cd              ??         CDh
        ram:27e5 79              ??         79h    y
        ram:27e6 2c              ??         2Ch    ,
        ram:27e7 ed              ??         EDh
        ram:27e8 4b              ??         4Bh    K
        ram:27e9 d2              ??         D2h
        ram:27ea 8b              ??         8Bh
        ram:27eb cd              ??         CDh
        ram:27ec 92              ??         92h
        ram:27ed 2a              ??         2Ah    *
        ram:27ee cd              ??         CDh
        ram:27ef b3              ??         B3h
        ram:27f0 2a              ??         2Ah    *
        ram:27f1 d1              ??         D1h
        ram:27f2 c9              ??         C9h
        ram:27f3 d5              ??         D5h
        ram:27f4 1b              ??         1Bh
        ram:27f5 cd              ??         CDh
        ram:27f6 bf              ??         BFh
        ram:27f7 2f              ??         2Fh    /
        ram:27f8 18              ??         18h
        ram:27f9 f1              ??         F1h
        ram:27fa cd              ??         CDh
        ram:27fb 04              ??         04h
        ram:27fc 28              ??         28h    (
        ram:27fd d5              ??         D5h
        ram:27fe 1b              ??         1Bh
        ram:27ff cd              ??         CDh
        ram:2800 74              ??         74h    t
        ram:2801 2c              ??         2Ch    ,
        ram:2802 d1              ??         D1h
        ram:2803 c9              ??         C9h
        ram:2804 d5              ??         D5h
        ram:2805 e5              ??         E5h
        ram:2806 2a              ??         2Ah    *
        ram:2807 e1              ??         E1h
        ram:2808 8b              ??         8Bh
        ram:2809 b7              ??         B7h
        ram:280a ed              ??         EDh
        ram:280b 52              ??         52h    R
        ram:280c 28              ??         28h    (
        ram:280d 0e              ??         0Eh
        ram:280e 44              ??         44h    D
        ram:280f 4d              ??         4Dh    M
        ram:2810 19              ??         19h
        ram:2811 2b              ??         2Bh    +
        ram:2812 d1              ??         D1h
        ram:2813 d5              ??         D5h
        ram:2814 19              ??         19h
        ram:2815 eb              ??         EBh
        ram:2816 2a              ??         2Ah    *
        ram:2817 e1              ??         E1h
        ram:2818 8b              ??         8Bh
        ram:2819 2b              ??         2Bh    +
        ram:281a ed              ??         EDh
        ram:281b b8              ??         B8h
        ram:281c c1              ??         C1h
        ram:281d d1              ??         D1h
        ram:281e c9              ??         C9h
        ram:281f af              ??         AFh
        ram:2820 26              ??         26h    &
        ram:2821 00              ??         00h
        ram:2822 2e              ??         2Eh    .
        ram:2823 00              ??         00h
        ram:2824 22              ??         22h    "
        ram:2825 e7              ??         E7h
        ram:2826 8b              ??         8Bh
        ram:2827 22              ??         22h    "
        ram:2828 e9              ??         E9h
        ram:2829 8b              ??         8Bh
        ram:282a 2a              ??         2Ah    *
        ram:282b df              ??         DFh
        ram:282c 8b              ??         8Bh
        ram:282d ed              ??         EDh
        ram:282e 5b              ??         5Bh    [
        ram:282f dd              ??         DDh
        ram:2830 8b              ??         8Bh
        ram:2831 ed              ??         EDh
        ram:2832 52              ??         52h    R
        ram:2833 c8              ??         C8h
        ram:2834 e5              ??         E5h
        ram:2835 2a              ??         2Ah    *
        ram:2836 e1              ??         E1h
        ram:2837 8b              ??         8Bh
        ram:2838 ed              ??         EDh
        ram:2839 5b              ??         5Bh    [
        ram:283a df              ??         DFh
        ram:283b 8b              ??         8Bh
        ram:283c ed              ??         EDh
        ram:283d 52              ??         52h    R
        ram:283e 28              ??         28h    (
        ram:283f 20              ??         20h
        ram:2840 44              ??         44h    D
        ram:2841 4d              ??         4Dh    M
        ram:2842 eb              ??         EBh
        ram:2843 ed              ??         EDh
        ram:2844 5b              ??         5Bh    [
        ram:2845 dd              ??         DDh
        ram:2846 8b              ??         8Bh
        ram:2847 ed              ??         EDh
        ram:2848 a0              ??         A0h
        ram:2849 ed              ??         EDh
        ram:284a a0              ??         A0h
        ram:284b ed              ??         EDh
        ram:284c a0              ??         A0h
        ram:284d ed              ??         EDh
        ram:284e a0              ??         A0h
        ram:284f ed              ??         EDh
        ram:2850 a0              ??         A0h
        ram:2851 ed              ??         EDh
        ram:2852 a0              ??         A0h
        ram:2853 ed              ??         EDh
        ram:2854 a0              ??         A0h
        ram:2855 ed              ??         EDh
        ram:2856 a0              ??         A0h
        ram:2857 ed              ??         EDh
        ram:2858 a0              ??         A0h
        ram:2859 ed              ??         EDh
        ram:285a a0              ??         A0h
        ram:285b 78              ??         78h    x
        ram:285c b1              ??         B1h
        ram:285d c2              ??         C2h
        ram:285e 47              ??         47h    G
        ram:285f 28              ??         28h    (
        ram:2860 2a              ??         2Ah    *
        ram:2861 e1              ??         E1h
        ram:2862 8b              ??         8Bh
        ram:2863 c1              ??         C1h
        ram:2864 ed              ??         EDh
        ram:2865 42              ??         42h    B
        ram:2866 22              ??         22h    "
        ram:2867 e1              ??         E1h
        ram:2868 8b              ??         8Bh
        ram:2869 ed              ??         EDh
        ram:286a 5b              ??         5Bh    [
        ram:286b dd              ??         DDh
        ram:286c 8b              ??         8Bh
        ram:286d ed              ??         EDh
        ram:286e 53              ??         53h    S
        ram:286f df              ??         DFh
        ram:2870 8b              ??         8Bh
        ram:2871 1b              ??         1Bh
        ram:2872 cd              ??         CDh
        ram:2873 b3              ??         B3h
        ram:2874 2a              ??         2Ah    *
        ram:2875 2a              ??         2Ah    *
        ram:2876 e3              ??         E3h
        ram:2877 8b              ??         8Bh
        ram:2878 ed              ??         EDh
        ram:2879 5b              ??         5Bh    [
        ram:287a e5              ??         E5h
        ram:287b 8b              ??         8Bh
        ram:287c b7              ??         B7h
        ram:287d ed              ??         EDh
        ram:287e 52              ??         52h    R
        ram:287f 28              ??         28h    (
        ram:2880 12              ??         12h
        ram:2881 44              ??         44h    D
        ram:2882 4d              ??         4Dh    M
        ram:2883 19              ??         19h
        ram:2884 ed              ??         EDh
        ram:2885 5b              ??         5Bh    [
        ram:2886 eb              ??         EBh
        ram:2887 8b              ??         8Bh
        ram:2888 ed              ??         EDh
        ram:2889 53              ??         53h    S
        ram:288a e3              ??         E3h
        ram:288b 8b              ??         8Bh
        ram:288c ed              ??         EDh
        ram:288d b8              ??         B8h
        ram:288e ed              ??         EDh
        ram:288f 53              ??         53h    S
        ram:2890 e5              ??         E5h
        ram:2891 8b              ??         8Bh
        ram:2892 c9              ??         C9h
        ram:2893 2a              ??         2Ah    *
        ram:2894 eb              ??         EBh
        ram:2895 8b              ??         8Bh
        ram:2896 22              ??         22h    "
        ram:2897 e3              ??         E3h
        ram:2898 8b              ??         8Bh
        ram:2899 22              ??         22h    "
        ram:289a e5              ??         E5h
        ram:289b 8b              ??         8Bh
        ram:289c c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_289d()
             undefined         A:1            <RETURN>
                             FUN_ram_289d                                    XREF[1]:     FUN_ram_2fb8:2fb8(c)
        ram:289d eb              EX         DE,HL
                             LAB_ram_289e                                    XREF[1]:     ram:28c4(j)
        ram:289e cd b4 26        CALL       FUN_ram_26b4                                     undefined FUN_ram_26b4()
        ram:28a1 b7              OR         A
        ram:28a2 ed 52           SBC        HL,DE
        ram:28a4 d0              RET        NC
        ram:28a5 d5              PUSH       DE
        ram:28a6 2a eb 8b        LD         HL,(DAT_ram_8beb)
        ram:28a9 ed 4b e3 8b     LD         BC,(DAT_ram_8be3)
        ram:28ad 03              INC        BC
        ram:28ae 16 00           LD         D,0x0
                             LAB_ram_28b0                                    XREF[1]:     ram:28cd(j)
        ram:28b0 af              XOR        A
        ram:28b1 ed 42           SBC        HL,BC
        ram:28b3 38 1a           JR         C,LAB_ram_28cf
        ram:28b5 09              ADD        HL,BC
        ram:28b6 cb 7e           BIT        0x7,(HL)
        ram:28b8 28 0c           JR         Z,LAB_ram_28c6
        ram:28ba 2b              DEC        HL
        ram:28bb 5e              LD         E,(HL)
        ram:28bc 2b              DEC        HL
        ram:28bd 56              LD         D,(HL)
        ram:28be 23              INC        HL
        ram:28bf 23              INC        HL
        ram:28c0 cd 0b 2c        CALL       FUN_ram_2c0b                                     undefined FUN_ram_2c0b()
        ram:28c3 d1              POP        DE
        ram:28c4 18 d8           JR         LAB_ram_289e
                             LAB_ram_28c6                                    XREF[1]:     ram:28b8(j)
        ram:28c6 2b              DEC        HL
        ram:28c7 2b              DEC        HL
        ram:28c8 2b              DEC        HL
        ram:28c9 5e              LD         E,(HL)
        ram:28ca 1c              INC        E
        ram:28cb ed 52           SBC        HL,DE
        ram:28cd 18 e1           JR         LAB_ram_28b0
                             LAB_ram_28cf                                    XREF[1]:     ram:28b3(j)
        ram:28cf d1              POP        DE
        ram:28d0 c9              RET
        ram:28d1 e5              ??         E5h
        ram:28d2 f5              ??         F5h
        ram:28d3 2a              ??         2Ah    *
        ram:28d4 e7              ??         E7h
        ram:28d5 8b              ??         8Bh
        ram:28d6 22              ??         22h    "
        ram:28d7 85              ??         85h
        ram:28d8 80              ??         80h
        ram:28d9 23              ??         23h    #
        ram:28da 7c              ??         7Ch    |
        ram:28db b5              ??         B5h
        ram:28dc ca              ??         CAh
        ram:28dd 3c              ??         3Ch    <
        ram:28de 0a              ??         0Ah
        ram:28df 22              ??         22h    "
        ram:28e0 e7              ??         E7h
        ram:28e1 8b              ??         8Bh
        ram:28e2 26              ??         26h    &
        ram:28e3 24              ??         24h    $
        ram:28e4 2e              ??         2Eh    .
        ram:28e5 03              ??         03h
        ram:28e6 22              ??         22h    "
        ram:28e7 83              ??         83h
        ram:28e8 80              ??         80h
        ram:28e9 d7              ??         D7h
        ram:28ea 30              ??         30h    0
        ram:28eb 04              ??         04h
        ram:28ec f1              ??         F1h
        ram:28ed e1              ??         E1h
        ram:28ee b7              ??         B7h
        ram:28ef c9              ??         C9h
        ram:28f0 cb              ??         CBh
        ram:28f1 be              ??         BEh
        ram:28f2 eb              ??         EBh
        ram:28f3 cd              ??         CDh
        ram:28f4 3f              ??         3Fh    ?
        ram:28f5 2d              ??         2Dh    -
        ram:28f6 22              ??         22h    "
        ram:28f7 d4              ??         D4h
        ram:28f8 80              ??         80h
        ram:28f9 f1              ??         F1h
        ram:28fa c1              ??         C1h
        ram:28fb f5              ??         F5h
        ram:28fc c5              ??         C5h
        ram:28fd d5              ??         D5h
        ram:28fe cd              ??         CDh
        ram:28ff 3b              ??         3Bh    ;
        ram:2900 2d              ??         2Dh    -
        ram:2901 e1              ??         E1h
        ram:2902 ed              ??         EDh
        ram:2903 52              ??         52h    R
        ram:2904 30              ??         30h    0
        ram:2905 2d              ??         2Dh    -
        ram:2906 19              ??         19h
        ram:2907 eb              ??         EBh
        ram:2908 b7              ??         B7h
        ram:2909 ed              ??         EDh
        ram:290a 52              ??         52h    R
        ram:290b cd              ??         CDh
        ram:290c b8              ??         B8h
        ram:290d 2f              ??         2Fh    /
        ram:290e eb              ??         EBh
        ram:290f ed              ??         EDh
        ram:2910 5b              ??         5Bh    [
        ram:2911 d4              ??         D4h
        ram:2912 80              ??         80h
        ram:2913 13              ??         13h
        ram:2914 cd              ??         CDh
        ram:2915 fa              ??         FAh
        ram:2916 27              ??         27h    '
        ram:2917 d1              ??         D1h
        ram:2918 2a              ??         2Ah    *
        ram:2919 d4              ??         D4h
        ram:291a 80              ??         80h
        ram:291b 73              ??         73h    s
        ram:291c 23              ??         23h    #
        ram:291d 72              ??         72h    r
        ram:291e 7a              ??         7Ah    z
        ram:291f b3              ??         B3h
        ram:2920 28              ??         28h    (
        ram:2921 06              ??         06h
        ram:2922 f1              ??         F1h
        ram:2923 f5              ??         F5h
        ram:2924 23              ??         23h    #
        ram:2925 e6              ??         E6h
        ram:2926 01              ??         01h
        ram:2927 77              ??         77h    w
        ram:2928 cd              ??         CDh
        ram:2929 f5              ??         F5h
        ram:292a 1f              ??         1Fh
        ram:292b d7              ??         D7h
        ram:292c f1              ??         F1h
        ram:292d 77              ??         77h    w
        ram:292e 32              ??         32h    2
        ram:292f a3              ??         A3h
        ram:2930 80              ??         80h
        ram:2931 c1              ??         C1h
        ram:2932 c9              ??         C9h
        ram:2933 28              ??         28h    (
        ram:2934 e2              ??         E2h
        ram:2935 eb              ??         EBh
        ram:2936 2a              ??         2Ah    *
        ram:2937 d4              ??         D4h
        ram:2938 80              ??         80h
        ram:2939 23              ??         23h    #
        ram:293a cd              ??         CDh
        ram:293b 46              ??         46h    F
        ram:293c 2c              ??         2Ch    ,
        ram:293d 18              ??         18h
        ram:293e d8              ??         D8h
        ram:293f e5              ??         E5h
        ram:2940 3a              ??         3Ah    :
        ram:2941 83              ??         83h
        ram:2942 80              ??         80h
        ram:2943 c6              ??         C6h
        ram:2944 04              ??         04h
        ram:2945 4f              ??         4Fh    O
        ram:2946 06              ??         06h
        ram:2947 00              ??         00h
        ram:2948 09              ??         09h
        ram:2949 cd              ??         CDh
        ram:294a 9d              ??         9Dh
        ram:294b 28              ??         28h    (
        ram:294c c1              ??         C1h
        ram:294d c9              ??         C9h
        ram:294e cd              ??         CDh
        ram:294f 33              ??         33h    3
        ram:2950 1f              ??         1Fh
        ram:2951 da              ??         DAh
        ram:2952 3c              ??         3Ch    <
        ram:2953 0a              ??         0Ah
        ram:2954 11              ??         11h
        ram:2955 02              ??         02h
        ram:2956 00              ??         00h
        ram:2957 19              ??         19h
        ram:2958 38              ??         38h    8
        ram:2959 f7              ??         F7h
        ram:295a 32              ??         32h    2
        ram:295b 82              ??         82h
        ram:295c 80              ??         80h
        ram:295d cd              ??         CDh
        ram:295e 3f              ??         3Fh    ?
        ram:295f 29              ??         29h    )
        ram:2960 38              ??         38h    8
        ram:2961 ef              ??         EFh
        ram:2962 3a              ??         3Ah    :
        ram:2963 84              ??         84h
        ram:2964 80              ??         80h
        ram:2965 fe              ??         FEh
        ram:2966 24              ??         24h    $
        ram:2967 cd              ??         CDh
        ram:2968 84              ??         84h
        ram:2969 27              ??         27h    '
        ram:296a d5              ??         D5h
        ram:296b cd              ??         CDh
        ram:296c f5              ??         F5h
        ram:296d 1f              ??         1Fh
        ram:296e 11              ??         11h
        ram:296f 8d              ??         8Dh
        ram:2970 80              ??         80h
        ram:2971 21              ??         21h    !
        ram:2972 8b              ??         8Bh
        ram:2973 80              ??         80h
        ram:2974 01              ??         01h
        ram:2975 09              ??         09h
        ram:2976 00              ??         00h
        ram:2977 ed              ??         EDh
        ram:2978 b8              ??         B8h
        ram:2979 d1              ??         D1h
        ram:297a ed              ??         EDh
        ram:297b 53              ??         53h    S
        ram:297c 83              ??         83h
        ram:297d 80              ??         80h
        ram:297e cd              ??         CDh
        ram:297f 20              ??         20h
        ram:2980 27              ??         27h    '
        ram:2981 ed              ??         EDh
        ram:2982 5b              ??         5Bh    [
        ram:2983 83              ??         83h
        ram:2984 80              ??         80h
        ram:2985 c9              ??         C9h
        ram:2986 af              ??         AFh
        ram:2987 21              ??         21h    !
        ram:2988 0a              ??         0Ah
        ram:2989 00              ??         00h
        ram:298a 18              ??         18h
        ram:298b ce              ??         CEh
        ram:298c 3e              ??         3Eh    >
        ram:298d 08              ??         08h
        ram:298e 18              ??         18h
        ram:298f f7              ??         F7h
        ram:2990 3e              ??         3Eh    >
        ram:2991 09              ??         09h
        ram:2992 18              ??         18h
        ram:2993 02              ??         02h
        ram:2994 3e              ??         3Eh    >
        ram:2995 01              ??         01h
        ram:2996 21              ??         21h    !
        ram:2997 14              ??         14h
        ram:2998 00              ??         00h
        ram:2999 18              ??         18h
        ram:299a bf              ??         BFh
        ram:299b 3e              ??         3Eh    >
        ram:299c 02              ??         02h
        ram:299d 65              ??         65h    e
        ram:299e 2e              ??         2Eh    .
        ram:299f 01              ??         01h
        ram:29a0 cd              ??         CDh
        ram:29a1 d1              ??         D1h
        ram:29a2 28              ??         28h    (
        ram:29a3 6c              ??         6Ch    l
        ram:29a4 3e              ??         3Eh    >
        ram:29a5 02              ??         02h
        ram:29a6 26              ??         26h    &
        ram:29a7 00              ??         00h
        ram:29a8 e5              ??         E5h
        ram:29a9 cd              ??         CDh
        ram:29aa 4e              ??         4Eh    N
        ram:29ab 29              ??         29h    )
        ram:29ac c1              ??         C1h
        ram:29ad e5              ??         E5h
        ram:29ae 60              ??         60h    `
        ram:29af 69              ??         69h    i
        ram:29b0 eb              ??         EBh
        ram:29b1 53              ??         53h    S
        ram:29b2 1e              ??         1Eh
        ram:29b3 01              ??         01h
        ram:29b4 73              ??         73h    s
        ram:29b5 23              ??         23h    #
        ram:29b6 72              ??         72h    r
        ram:29b7 23              ??         23h    #
        ram:29b8 3a              ??         3Ah    :
        ram:29b9 a3              ??         A3h
        ram:29ba 80              ??         80h
        ram:29bb e6              ??         E6h
        ram:29bc 01              ??         01h
        ram:29bd 77              ??         77h    w
        ram:29be 2b              ??         2Bh    +
        ram:29bf 2b              ??         2Bh    +
        ram:29c0 eb              ??         EBh
        ram:29c1 e1              ??         E1h
        ram:29c2 c9              ??         C9h
        ram:29c3 3e              ??         3Eh    >
        ram:29c4 03              ??         03h
        ram:29c5 65              ??         65h    e
        ram:29c6 2e              ??         2Eh    .
        ram:29c7 01              ??         01h
        ram:29c8 cd              ??         CDh
        ram:29c9 d1              ??         D1h
        ram:29ca 28              ??         28h    (
        ram:29cb 6c              ??         6Ch    l
        ram:29cc 3e              ??         3Eh    >
        ram:29cd 03              ??         03h
        ram:29ce 26              ??         26h    &
        ram:29cf 00              ??         00h
        ram:29d0 e5              ??         E5h
        ram:29d1 29              ??         29h    )
        ram:29d2 18              ??         18h
        ram:29d3 d5              ??         D5h
        ram:29d4 3e              ??         3Eh    >
        ram:29d5 04              ??         04h
        ram:29d6 cd              ??         CDh
        ram:29d7 d1              ??         D1h
        ram:29d8 28              ??         28h    (
        ram:29d9 3e              ??         3Eh    >
        ram:29da 04              ??         04h
        ram:29db e5              ??         E5h
        ram:29dc cd              ??         CDh
        ram:29dd 4e              ??         4Eh    N
        ram:29de 29              ??         29h    )
        ram:29df c1              ??         C1h
        ram:29e0 e5              ??         E5h
        ram:29e1 60              ??         60h    `
        ram:29e2 69              ??         69h    i
        ram:29e3 78              ??         78h    x
        ram:29e4 b1              ??         B1h
        ram:29e5 20              ??         20h
        ram:29e6 06              ??         06h
        ram:29e7 12              ??         12h
        ram:29e8 13              ??         13h
        ram:29e9 12              ??         12h
        ram:29ea 1b              ??         1Bh
        ram:29eb e1              ??         E1h
        ram:29ec c9              ??         C9h
        ram:29ed eb              ??         EBh
        ram:29ee 73              ??         73h    s
        ram:29ef 18              ??         18h
        ram:29f0 c4              ??         C4h
        ram:29f1 3e              ??         3Eh    >
        ram:29f2 05              ??         05h
        ram:29f3 cd              ??         CDh
        ram:29f4 d1              ??         D1h
        ram:29f5 28              ??         28h    (
        ram:29f6 3e              ??         3Eh    >
        ram:29f7 05              ??         05h
        ram:29f8 e5              ??         E5h
        ram:29f9 29              ??         29h    )
        ram:29fa 18              ??         18h
        ram:29fb e0              ??         E0h
        ram:29fc 3e              ??         3Eh    >
        ram:29fd 06              ??         06h
        ram:29fe cd              ??         CDh
        ram:29ff d1              ??         D1h
        ram:2a00 28              ??         28h    (
        ram:2a01 e5              ??         E5h
        ram:2a02 cd              ??         CDh
        ram:2a03 01              ??         01h
        ram:2a04 26              ??         26h    &
        ram:2a05 3e              ??         3Eh    >
        ram:2a06 06              ??         06h
        ram:2a07 18              ??         18h
        ram:2a08 d3              ??         D3h
        ram:2a09 3e              ??         3Eh    >
        ram:2a0a 07              ??         07h
        ram:2a0b cd              ??         CDh
        ram:2a0c d1              ??         D1h
        ram:2a0d 28              ??         28h    (
        ram:2a0e e5              ??         E5h
        ram:2a0f cd              ??         CDh
        ram:2a10 01              ??         01h
        ram:2a11 26              ??         26h    &
        ram:2a12 3e              ??         3Eh    >
        ram:2a13 07              ??         07h
        ram:2a14 29              ??         29h    )
        ram:2a15 18              ??         18h
        ram:2a16 c5              ??         C5h
        ram:2a17 3e              ??         3Eh    >
        ram:2a18 0c              ??         0Ch
        ram:2a19 cd              ??         CDh
        ram:2a1a d1              ??         D1h
        ram:2a1b 28              ??         28h    (
        ram:2a1c 3e              ??         3Eh    >
        ram:2a1d 0c              ??         0Ch
        ram:2a1e e5              ??         E5h
        ram:2a1f cd              ??         CDh
        ram:2a20 54              ??         54h    T
        ram:2a21 29              ??         29h    )
        ram:2a22 c1              ??         C1h
        ram:2a23 eb              ??         EBh
        ram:2a24 71              ??         71h    q
        ram:2a25 23              ??         23h    #
        ram:2a26 70              ??         70h    p
        ram:2a27 2b              ??         2Bh    +
        ram:2a28 eb              ??         EBh
        ram:2a29 c9              ??         C9h
        ram:2a2a 3e              ??         3Eh    >
        ram:2a2b 0a              ??         0Ah
        ram:2a2c cd              ??         CDh
        ram:2a2d d1              ??         D1h
        ram:2a2e 28              ??         28h    (
        ram:2a2f 3e              ??         3Eh    >
        ram:2a30 0a              ??         0Ah
        ram:2a31 18              ??         18h
        ram:2a32 eb              ??         EBh
        ram:2a33 3e              ??         3Eh    >
        ram:2a34 11              ??         11h
        ram:2a35 21              ??         21h    !
        ram:2a36 f0              ??         F0h
        ram:2a37 03              ??         03h
        ram:2a38 18              ??         18h
        ram:2a39 e4              ??         E4h
        ram:2a3a 3e              ??         3Eh    >
        ram:2a3b 0d              ??         0Dh
        ram:2a3c 18              ??         18h
        ram:2a3d e0              ??         E0h
        ram:2a3e 3e              ??         3Eh    >
        ram:2a3f 0e              ??         0Eh
        ram:2a40 18              ??         18h
        ram:2a41 dc              ??         DCh
        ram:2a42 3e              ??         3Eh    >
        ram:2a43 0f              ??         0Fh
        ram:2a44 18              ??         18h
        ram:2a45 d8              ??         D8h
        ram:2a46 3e              ??         3Eh    >
        ram:2a47 10              ??         10h
        ram:2a48 18              ??         18h
        ram:2a49 d4              ??         D4h
        ram:2a4a 3e              ??         3Eh    >
        ram:2a4b 12              ??         12h
        ram:2a4c 18              ??         18h
        ram:2a4d d0              ??         D0h
        ram:2a4e 3a              ??         3Ah    :
        ram:2a4f 82              ??         82h
        ram:2a50 80              ??         80h
        ram:2a51 2a              ??         2Ah    *
        ram:2a52 d2              ??         D2h
        ram:2a53 80              ??         80h
        ram:2a54 cd              ??         CDh
        ram:2a55 3f              ??         3Fh    ?
        ram:2a56 2d              ??         2Dh    -
        ram:2a57 d5              ??         D5h
        ram:2a58 3a              ??         3Ah    :
        ram:2a59 a3              ??         A3h
        ram:2a5a 80              ??         80h
        ram:2a5b 2a              ??         2Ah    *
        ram:2a5c d0              ??         D0h
        ram:2a5d 80              ??         80h
        ram:2a5e cd              ??         CDh
        ram:2a5f 3f              ??         3Fh    ?
        ram:2a60 2d              ??         2Dh    -
        ram:2a61 eb              ??         EBh
        ram:2a62 d1              ??         D1h
        ram:2a63 ed              ??         EDh
        ram:2a64 52              ??         52h    R
        ram:2a65 38              ??         38h    8
        ram:2a66 18              ??         18h
        ram:2a67 28              ??         28h    (
        ram:2a68 09              ??         09h
        ram:2a69 ed              ??         EDh
        ram:2a6a 5b              ??         5Bh    [
        ram:2a6b d0              ??         D0h
        ram:2a6c 80              ??         80h
        ram:2a6d 13              ??         13h
        ram:2a6e eb              ??         EBh
        ram:2a6f cd              ??         CDh
        ram:2a70 46              ??         46h    F
        ram:2a71 2c              ??         2Ch    ,
        ram:2a72 2a              ??         2Ah    *
        ram:2a73 d9              ??         D9h
        ram:2a74 8b              ??         8Bh
        ram:2a75 cd              ??         CDh
        ram:2a76 47              ??         47h    G
        ram:2a77 1f              ??         1Fh
        ram:2a78 47              ??         47h    G
        ram:2a79 7e              ??         7Eh    ~
        ram:2a7a e6              ??         E6h
        ram:2a7b e0              ??         E0h
        ram:2a7c b0              ??         B0h
        ram:2a7d 77              ??         77h    w
        ram:2a7e c9              ??         C9h
        ram:2a7f 19              ??         19h
        ram:2a80 eb              ??         EBh
        ram:2a81 b7              ??         B7h
        ram:2a82 ed              ??         EDh
        ram:2a83 52              ??         52h    R
        ram:2a84 cd              ??         CDh
        ram:2a85 b8              ??         B8h
        ram:2a86 2f              ??         2Fh    /
        ram:2a87 eb              ??         EBh
        ram:2a88 ed              ??         EDh
        ram:2a89 5b              ??         5Bh    [
        ram:2a8a d0              ??         D0h
        ram:2a8b 80              ??         80h
        ram:2a8c 13              ??         13h
        ram:2a8d cd              ??         CDh
        ram:2a8e fa              ??         FAh
        ram:2a8f 27              ??         27h    '
        ram:2a90 18              ??         18h
        ram:2a91 e0              ??         E0h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2a92()
             undefined         A:1            <RETURN>
                             FUN_ram_2a92                                    XREF[1]:     FUN_ram_2c0b:2c5e(c)
        ram:2a92 2a 5f 8a        LD         HL,(DAT_ram_8a5f)
        ram:2a95 b7              OR         A
        ram:2a96 ed 52           SBC        HL,DE
        ram:2a98 d8              RET        C
        ram:2a99 c8              RET        Z
        ram:2a9a 19              ADD        HL,DE
        ram:2a9b ed 42           SBC        HL,BC
        ram:2a9d 22 5f 8a        LD         (DAT_ram_8a5f),HL
        ram:2aa0 2a 61 8a        LD         HL,(DAT_ram_8a61)
        ram:2aa3 b7              OR         A
        ram:2aa4 ed 42           SBC        HL,BC
        ram:2aa6 22 61 8a        LD         (DAT_ram_8a61),HL
        ram:2aa9 2a 63 8a        LD         HL,(DAT_ram_8a63)
        ram:2aac b7              OR         A
        ram:2aad ed 42           SBC        HL,BC
        ram:2aaf 22 63 8a        LD         (DAT_ram_8a63),HL
        ram:2ab2 c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2ab3()
             undefined         A:1            <RETURN>
                             FUN_ram_2ab3                                    XREF[1]:     FUN_ram_2c0b:2c49(c)
        ram:2ab3 2a c6 80        LD         HL,(DAT_ram_80c6)
        ram:2ab6 b7              OR         A
        ram:2ab7 ed 52           SBC        HL,DE
        ram:2ab9 38 09           JR         C,LAB_ram_2ac4
        ram:2abb 28 07           JR         Z,LAB_ram_2ac4
        ram:2abd 19              ADD        HL,DE
        ram:2abe b7              OR         A
        ram:2abf ed 42           SBC        HL,BC
        ram:2ac1 22 c6 80        LD         (DAT_ram_80c6),HL
                             LAB_ram_2ac4                                    XREF[2]:     ram:2ab9(j), ram:2abb(j)
        ram:2ac4 2a c8 80        LD         HL,(DAT_ram_80c8)
        ram:2ac7 b7              OR         A
        ram:2ac8 ed 52           SBC        HL,DE
        ram:2aca 38 09           JR         C,LAB_ram_2ad5
        ram:2acc 28 07           JR         Z,LAB_ram_2ad5
        ram:2ace 19              ADD        HL,DE
        ram:2acf b7              OR         A
        ram:2ad0 ed 42           SBC        HL,BC
        ram:2ad2 22 c8 80        LD         (DAT_ram_80c8),HL
                             LAB_ram_2ad5                                    XREF[2]:     ram:2aca(j), ram:2acc(j)
        ram:2ad5 2a ca 80        LD         HL,(DAT_ram_80ca)
        ram:2ad8 b7              OR         A
        ram:2ad9 ed 52           SBC        HL,DE
        ram:2adb 38 09           JR         C,LAB_ram_2ae6
        ram:2add 28 07           JR         Z,LAB_ram_2ae6
        ram:2adf 19              ADD        HL,DE
        ram:2ae0 b7              OR         A
        ram:2ae1 ed 42           SBC        HL,BC
        ram:2ae3 22 ca 80        LD         (DAT_ram_80ca),HL
                             LAB_ram_2ae6                                    XREF[2]:     ram:2adb(j), ram:2add(j)
        ram:2ae6 2a cc 80        LD         HL,(DAT_ram_80cc)
        ram:2ae9 b7              OR         A
        ram:2aea ed 52           SBC        HL,DE
        ram:2aec 38 09           JR         C,LAB_ram_2af7
        ram:2aee 28 07           JR         Z,LAB_ram_2af7
        ram:2af0 19              ADD        HL,DE
        ram:2af1 b7              OR         A
        ram:2af2 ed 42           SBC        HL,BC
        ram:2af4 22 cc 80        LD         (DAT_ram_80cc),HL
                             LAB_ram_2af7                                    XREF[2]:     ram:2aec(j), ram:2aee(j)
        ram:2af7 2a ce 80        LD         HL,(DAT_ram_80ce)
        ram:2afa b7              OR         A
        ram:2afb ed 52           SBC        HL,DE
        ram:2afd 38 09           JR         C,LAB_ram_2b08
        ram:2aff 28 07           JR         Z,LAB_ram_2b08
        ram:2b01 19              ADD        HL,DE
        ram:2b02 b7              OR         A
        ram:2b03 ed 42           SBC        HL,BC
        ram:2b05 22 ce 80        LD         (DAT_ram_80ce),HL
                             LAB_ram_2b08                                    XREF[2]:     ram:2afd(j), ram:2aff(j)
        ram:2b08 2a 96 8b        LD         HL,(DAT_ram_8b96)
        ram:2b0b b7              OR         A
        ram:2b0c ed 52           SBC        HL,DE
        ram:2b0e 38 09           JR         C,LAB_ram_2b19
        ram:2b10 28 07           JR         Z,LAB_ram_2b19
        ram:2b12 19              ADD        HL,DE
        ram:2b13 b7              OR         A
        ram:2b14 ed 42           SBC        HL,BC
        ram:2b16 22 96 8b        LD         (DAT_ram_8b96),HL
                             LAB_ram_2b19                                    XREF[2]:     ram:2b0e(j), ram:2b10(j)
        ram:2b19 2a 98 8b        LD         HL,(DAT_ram_8b98)
        ram:2b1c b7              OR         A
        ram:2b1d ed 52           SBC        HL,DE
        ram:2b1f 38 09           JR         C,LAB_ram_2b2a
        ram:2b21 28 07           JR         Z,LAB_ram_2b2a
        ram:2b23 19              ADD        HL,DE
        ram:2b24 b7              OR         A
        ram:2b25 ed 42           SBC        HL,BC
        ram:2b27 22 98 8b        LD         (DAT_ram_8b98),HL
                             LAB_ram_2b2a                                    XREF[2]:     ram:2b1f(j), ram:2b21(j)
        ram:2b2a 2a 29 86        LD         HL,(DAT_ram_8629)
        ram:2b2d b7              OR         A
        ram:2b2e ed 52           SBC        HL,DE
        ram:2b30 38 09           JR         C,LAB_ram_2b3b
        ram:2b32 28 07           JR         Z,LAB_ram_2b3b
        ram:2b34 19              ADD        HL,DE
        ram:2b35 b7              OR         A
        ram:2b36 ed 42           SBC        HL,BC
        ram:2b38 22 29 86        LD         (DAT_ram_8629),HL
                             LAB_ram_2b3b                                    XREF[2]:     ram:2b30(j), ram:2b32(j)
        ram:2b3b 2a 2b 86        LD         HL,(DAT_ram_862b)
        ram:2b3e b7              OR         A
        ram:2b3f ed 52           SBC        HL,DE
        ram:2b41 38 09           JR         C,LAB_ram_2b4c
        ram:2b43 28 07           JR         Z,LAB_ram_2b4c
        ram:2b45 19              ADD        HL,DE
        ram:2b46 b7              OR         A
        ram:2b47 ed 42           SBC        HL,BC
        ram:2b49 22 2b 86        LD         (DAT_ram_862b),HL
                             LAB_ram_2b4c                                    XREF[2]:     ram:2b41(j), ram:2b43(j)
        ram:2b4c 2a d4 80        LD         HL,(DAT_ram_80d4)
        ram:2b4f b7              OR         A
        ram:2b50 ed 52           SBC        HL,DE
        ram:2b52 38 09           JR         C,LAB_ram_2b5d
        ram:2b54 28 07           JR         Z,LAB_ram_2b5d
        ram:2b56 19              ADD        HL,DE
        ram:2b57 b7              OR         A
        ram:2b58 ed 42           SBC        HL,BC
        ram:2b5a 22 d4 80        LD         (DAT_ram_80d4),HL
                             LAB_ram_2b5d                                    XREF[2]:     ram:2b52(j), ram:2b54(j)
        ram:2b5d 2a 34 86        LD         HL,(DAT_ram_8634)
        ram:2b60 b7              OR         A
        ram:2b61 ed 52           SBC        HL,DE
        ram:2b63 38 09           JR         C,LAB_ram_2b6e
        ram:2b65 28 07           JR         Z,LAB_ram_2b6e
        ram:2b67 19              ADD        HL,DE
        ram:2b68 b7              OR         A
        ram:2b69 ed 42           SBC        HL,BC
        ram:2b6b 22 34 86        LD         (DAT_ram_8634),HL
                             LAB_ram_2b6e                                    XREF[2]:     ram:2b63(j), ram:2b65(j)
        ram:2b6e 2a 32 86        LD         HL,(DAT_ram_8632)
        ram:2b71 b7              OR         A
        ram:2b72 ed 52           SBC        HL,DE
        ram:2b74 38 09           JR         C,LAB_ram_2b7f
        ram:2b76 28 07           JR         Z,LAB_ram_2b7f
        ram:2b78 19              ADD        HL,DE
        ram:2b79 b7              OR         A
        ram:2b7a ed 42           SBC        HL,BC
        ram:2b7c 22 32 86        LD         (DAT_ram_8632),HL
                             LAB_ram_2b7f                                    XREF[2]:     ram:2b74(j), ram:2b76(j)
        ram:2b7f 2a 3f 86        LD         HL,(DAT_ram_863f)
        ram:2b82 b7              OR         A
        ram:2b83 ed 52           SBC        HL,DE
        ram:2b85 38 09           JR         C,LAB_ram_2b90
        ram:2b87 28 07           JR         Z,LAB_ram_2b90
        ram:2b89 19              ADD        HL,DE
        ram:2b8a b7              OR         A
        ram:2b8b ed 42           SBC        HL,BC
        ram:2b8d 22 3f 86        LD         (DAT_ram_863f),HL
                             LAB_ram_2b90                                    XREF[2]:     ram:2b85(j), ram:2b87(j)
        ram:2b90 2a 27 8b        LD         HL,(DAT_ram_8b27)
        ram:2b93 b7              OR         A
        ram:2b94 ed 52           SBC        HL,DE
        ram:2b96 38 09           JR         C,LAB_ram_2ba1
        ram:2b98 28 07           JR         Z,LAB_ram_2ba1
        ram:2b9a 19              ADD        HL,DE
        ram:2b9b b7              OR         A
        ram:2b9c ed 42           SBC        HL,BC
        ram:2b9e 22 27 8b        LD         (DAT_ram_8b27),HL
                             LAB_ram_2ba1                                    XREF[2]:     ram:2b96(j), ram:2b98(j)
        ram:2ba1 2a d0 80        LD         HL,(DAT_ram_80d0)
        ram:2ba4 b7              OR         A
        ram:2ba5 ed 52           SBC        HL,DE
        ram:2ba7 38 09           JR         C,LAB_ram_2bb2
        ram:2ba9 28 07           JR         Z,LAB_ram_2bb2
        ram:2bab 19              ADD        HL,DE
        ram:2bac b7              OR         A
        ram:2bad ed 42           SBC        HL,BC
        ram:2baf 22 d0 80        LD         (DAT_ram_80d0),HL
                             LAB_ram_2bb2                                    XREF[2]:     ram:2ba7(j), ram:2ba9(j)
        ram:2bb2 2a e3 85        LD         HL,(DAT_ram_85e3)
        ram:2bb5 b7              OR         A
        ram:2bb6 ed 52           SBC        HL,DE
        ram:2bb8 38 09           JR         C,LAB_ram_2bc3
        ram:2bba 28 07           JR         Z,LAB_ram_2bc3
        ram:2bbc 19              ADD        HL,DE
        ram:2bbd b7              OR         A
        ram:2bbe ed 42           SBC        HL,BC
        ram:2bc0 22 e3 85        LD         (DAT_ram_85e3),HL
                             LAB_ram_2bc3                                    XREF[2]:     ram:2bb8(j), ram:2bba(j)
        ram:2bc3 2a e7 85        LD         HL,(DAT_ram_85e7)
        ram:2bc6 b7              OR         A
        ram:2bc7 ed 52           SBC        HL,DE
        ram:2bc9 38 09           JR         C,LAB_ram_2bd4
        ram:2bcb 28 07           JR         Z,LAB_ram_2bd4
        ram:2bcd 19              ADD        HL,DE
        ram:2bce b7              OR         A
        ram:2bcf ed 42           SBC        HL,BC
        ram:2bd1 22 e7 85        LD         (DAT_ram_85e7),HL
                             LAB_ram_2bd4                                    XREF[2]:     ram:2bc9(j), ram:2bcb(j)
        ram:2bd4 2a eb 85        LD         HL,(DAT_ram_85eb)
        ram:2bd7 b7              OR         A
        ram:2bd8 ed 52           SBC        HL,DE
        ram:2bda 38 09           JR         C,LAB_ram_2be5
        ram:2bdc 28 07           JR         Z,LAB_ram_2be5
        ram:2bde 19              ADD        HL,DE
        ram:2bdf b7              OR         A
        ram:2be0 ed 42           SBC        HL,BC
        ram:2be2 22 eb 85        LD         (DAT_ram_85eb),HL
                             LAB_ram_2be5                                    XREF[2]:     ram:2bda(j), ram:2bdc(j)
        ram:2be5 2a d2 80        LD         HL,(DAT_ram_80d2)
        ram:2be8 b7              OR         A
        ram:2be9 ed 52           SBC        HL,DE
        ram:2beb d8              RET        C
        ram:2bec c8              RET        Z
        ram:2bed 19              ADD        HL,DE
        ram:2bee b7              OR         A
        ram:2bef ed 42           SBC        HL,BC
        ram:2bf1 22 d2 80        LD         (DAT_ram_80d2),HL
        ram:2bf4 c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2bf5()
             undefined         A:1            <RETURN>
                             FUN_ram_2bf5                                    XREF[1]:     FUN_ram_2c0b:2c46(c)
        ram:2bf5 d5              PUSH       DE
        ram:2bf6 e5              PUSH       HL
        ram:2bf7 19              ADD        HL,DE
        ram:2bf8 eb              EX         DE,HL
        ram:2bf9 2a e1 8b        LD         HL,(DAT_ram_8be1)
        ram:2bfc b7              OR         A
        ram:2bfd ed 52           SBC        HL,DE
        ram:2bff 44              LD         B,H
        ram:2c00 4d              LD         C,L
        ram:2c01 e1              POP        HL
        ram:2c02 e5              PUSH       HL
        ram:2c03 eb              EX         DE,HL
        ram:2c04 28 02           JR         Z,LAB_ram_2c08
        ram:2c06 ed b0           LDIR
                             LAB_ram_2c08                                    XREF[1]:     ram:2c04(j)
        ram:2c08 d1              POP        DE
        ram:2c09 c1              POP        BC
        ram:2c0a c9              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2c0b()
             undefined         A:1            <RETURN>
                             FUN_ram_2c0b                                    XREF[1]:     FUN_ram_289d:28c0(c)
        ram:2c0b 7e              LD         A,(HL)
        ram:2c0c cb 77           BIT        0x6,A
        ram:2c0e c4 1b 00        CALL       NZ,FUN_ram_001b                                  undefined FUN_ram_001b()
        ram:2c11 f5              PUSH       AF
        ram:2c12 d5              PUSH       DE
        ram:2c13 e5              PUSH       HL
        ram:2c14 2b              DEC        HL
        ram:2c15 2b              DEC        HL
        ram:2c16 2b              DEC        HL
        ram:2c17 4e              LD         C,(HL)
        ram:2c18 0c              INC        C
        ram:2c19 af              XOR        A
        ram:2c1a 47              LD         B,A
        ram:2c1b ed 42           SBC        HL,BC
        ram:2c1d 0c              INC        C
        ram:2c1e 0c              INC        C
        ram:2c1f 0c              INC        C
        ram:2c20 d1              POP        DE
        ram:2c21 c5              PUSH       BC
        ram:2c22 ed 4b e5 8b     LD         BC,(DAT_ram_8be5)
        ram:2c26 e5              PUSH       HL
        ram:2c27 ed 42           SBC        HL,BC
        ram:2c29 44              LD         B,H
        ram:2c2a 4d              LD         C,L
        ram:2c2b e1              POP        HL
        ram:2c2c d5              PUSH       DE
        ram:2c2d 28 02           JR         Z,LAB_ram_2c31
        ram:2c2f ed b8           LDDR
                             LAB_ram_2c31                                    XREF[1]:     ram:2c2d(j)
        ram:2c31 ed 53 e5 8b     LD         (DAT_ram_8be5),DE
        ram:2c35 d1              POP        DE
        ram:2c36 c1              POP        BC
        ram:2c37 2a e3 8b        LD         HL,(DAT_ram_8be3)
        ram:2c3a 09              ADD        HL,BC
        ram:2c3b 22 e3 8b        LD         (DAT_ram_8be3),HL
        ram:2c3e cd b8 2c        CALL       FUN_ram_2cb8                                     undefined FUN_ram_2cb8()
        ram:2c41 e1              POP        HL
        ram:2c42 f1              POP        AF
        ram:2c43 cd 3f 2d        CALL       FUN_ram_2d3f                                     undefined FUN_ram_2d3f()
        ram:2c46 cd f5 2b        CALL       FUN_ram_2bf5                                     undefined FUN_ram_2bf5()
        ram:2c49 cd b3 2a        CALL       FUN_ram_2ab3                                     undefined FUN_ram_2ab3()
        ram:2c4c 2a df 8b        LD         HL,(DAT_ram_8bdf)
        ram:2c4f b7              OR         A
        ram:2c50 ed 42           SBC        HL,BC
        ram:2c52 22 df 8b        LD         (DAT_ram_8bdf),HL
        ram:2c55 2a e1 8b        LD         HL,(DAT_ram_8be1)
        ram:2c58 b7              OR         A
        ram:2c59 ed 42           SBC        HL,BC
        ram:2c5b 22 e1 8b        LD         (DAT_ram_8be1),HL
        ram:2c5e cd 92 2a        CALL       FUN_ram_2a92                                     undefined FUN_ram_2a92()
        ram:2c61 2a dd 8b        LD         HL,(DAT_ram_8bdd)
        ram:2c64 b7              OR         A
        ram:2c65 ed 52           SBC        HL,DE
        ram:2c67 38 10           JR         C,LAB_ram_2c79
        ram:2c69 28 0e           JR         Z,LAB_ram_2c79
        ram:2c6b 19              ADD        HL,DE
        ram:2c6c b7              OR         A
        ram:2c6d ed 42           SBC        HL,BC
        ram:2c6f 22 dd 8b        LD         (DAT_ram_8bdd),HL
        ram:2c72 18 0b           JR         LAB_ram_2c7f
        ram:2c74 cd              ??         CDh
        ram:2c75 bf              ??         BFh
        ram:2c76 2f              ??         2Fh    /
        ram:2c77 18              ??         18h
        ram:2c78 d0              ??         D0h
                             LAB_ram_2c79                                    XREF[2]:     ram:2c67(j), ram:2c69(j)
        ram:2c79 2a eb 8b        LD         HL,(DAT_ram_8beb)
        ram:2c7c b7              OR         A
        ram:2c7d 18 03           JR         LAB_ram_2c82
                             LAB_ram_2c7f                                    XREF[1]:     ram:2c72(j)
        ram:2c7f 21 6f fa        LD         HL,0xfa6f
                             LAB_ram_2c82                                    XREF[1]:     ram:2c7d(j)
        ram:2c82 ed 43 d2 8b     LD         (DAT_ram_8bd2),BC
        ram:2c86 2b              DEC        HL
                             LAB_ram_2c87                                    XREF[1]:     ram:2cb5(j)
        ram:2c87 4e              LD         C,(HL=>DAT_ram_fa6e)
        ram:2c88 2b              DEC        HL
        ram:2c89 46              LD         B,(HL=>DAT_ram_fa6d)
        ram:2c8a eb              EX         DE,HL
        ram:2c8b b7              OR         A
        ram:2c8c ed 42           SBC        HL,BC
        ram:2c8e 30 13           JR         NC,LAB_ram_2ca3
        ram:2c90 09              ADD        HL,BC
        ram:2c91 e5              PUSH       HL
        ram:2c92 60              LD         H,B
        ram:2c93 69              LD         L,C
        ram:2c94 ed 4b d2 8b     LD         BC,(DAT_ram_8bd2)
        ram:2c98 b7              OR         A
        ram:2c99 ed 42           SBC        HL,BC
        ram:2c9b eb              EX         DE,HL
        ram:2c9c 72              LD         (HL=>DAT_ram_fa6d),D
        ram:2c9d 23              INC        HL
        ram:2c9e 73              LD         (HL=>DAT_ram_fa6e),E
        ram:2c9f 2b              DEC        HL
        ram:2ca0 d1              POP        DE
        ram:2ca1 18 02           JR         LAB_ram_2ca5
                             LAB_ram_2ca3                                    XREF[1]:     ram:2c8e(j)
        ram:2ca3 09              ADD        HL,BC
        ram:2ca4 eb              EX         DE,HL
                             LAB_ram_2ca5                                    XREF[1]:     ram:2ca1(j)
        ram:2ca5 2b              DEC        HL
        ram:2ca6 4e              LD         C,(HL=>DAT_ram_fa6c)
        ram:2ca7 af              XOR        A
        ram:2ca8 47              LD         B,A
        ram:2ca9 0c              INC        C
        ram:2caa 0c              INC        C
        ram:2cab ed 42           SBC        HL,BC
        ram:2cad ed 4b e3 8b     LD         BC,(DAT_ram_8be3)
        ram:2cb1 ed 42           SBC        HL,BC
        ram:2cb3 d8              RET        C
        ram:2cb4 09              ADD        HL,BC
        ram:2cb5 c3 87 2c        JP         LAB_ram_2c87
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2cb8()
             undefined         A:1            <RETURN>
                             FUN_ram_2cb8                                    XREF[1]:     FUN_ram_2c0b:2c3e(c)
        ram:2cb8 2a eb 8b        LD         HL,(DAT_ram_8beb)
        ram:2cbb b7              OR         A
        ram:2cbc ed 52           SBC        HL,DE
        ram:2cbe 30 05           JR         NC,LAB_ram_2cc5
        ram:2cc0 19              ADD        HL,DE
        ram:2cc1 09              ADD        HL,BC
        ram:2cc2 22 eb 8b        LD         (DAT_ram_8beb),HL
                             LAB_ram_2cc5                                    XREF[1]:     ram:2cbe(j)
        ram:2cc5 2a 25 8b        LD         HL,(DAT_ram_8b25)
        ram:2cc8 b7              OR         A
        ram:2cc9 ed 52           SBC        HL,DE
        ram:2ccb 30 05           JR         NC,LAB_ram_2cd2
        ram:2ccd 19              ADD        HL,DE
        ram:2cce 09              ADD        HL,BC
        ram:2ccf 22 25 8b        LD         (DAT_ram_8b25),HL
                             LAB_ram_2cd2                                    XREF[1]:     ram:2ccb(j)
        ram:2cd2 2a d5 8b        LD         HL,(DAT_ram_8bd5)
        ram:2cd5 b7              OR         A
        ram:2cd6 ed 52           SBC        HL,DE
        ram:2cd8 30 05           JR         NC,LAB_ram_2cdf
        ram:2cda 19              ADD        HL,DE
        ram:2cdb 09              ADD        HL,BC
        ram:2cdc 22 d5 8b        LD         (DAT_ram_8bd5),HL
                             LAB_ram_2cdf                                    XREF[1]:     ram:2cd8(j)
        ram:2cdf 2a d7 8b        LD         HL,(DAT_ram_8bd7)
        ram:2ce2 b7              OR         A
        ram:2ce3 ed 52           SBC        HL,DE
        ram:2ce5 30 05           JR         NC,LAB_ram_2cec
        ram:2ce7 19              ADD        HL,DE
        ram:2ce8 09              ADD        HL,BC
        ram:2ce9 22 d7 8b        LD         (DAT_ram_8bd7),HL
                             LAB_ram_2cec                                    XREF[1]:     ram:2ce5(j)
        ram:2cec 2a d9 8b        LD         HL,(DAT_ram_8bd9)
        ram:2cef b7              OR         A
        ram:2cf0 ed 52           SBC        HL,DE
        ram:2cf2 30 05           JR         NC,LAB_ram_2cf9
        ram:2cf4 19              ADD        HL,DE
        ram:2cf5 09              ADD        HL,BC
        ram:2cf6 22 d9 8b        LD         (DAT_ram_8bd9),HL
                             LAB_ram_2cf9                                    XREF[1]:     ram:2cf2(j)
        ram:2cf9 2a db 8b        LD         HL,(DAT_ram_8bdb)
        ram:2cfc b7              OR         A
        ram:2cfd ed 52           SBC        HL,DE
        ram:2cff 30 05           JR         NC,LAB_ram_2d06
        ram:2d01 19              ADD        HL,DE
        ram:2d02 09              ADD        HL,BC
        ram:2d03 22 db 8b        LD         (DAT_ram_8bdb),HL
                             LAB_ram_2d06                                    XREF[1]:     ram:2cff(j)
        ram:2d06 2a e1 85        LD         HL,(DAT_ram_85e1)
        ram:2d09 b7              OR         A
        ram:2d0a ed 52           SBC        HL,DE
        ram:2d0c 30 05           JR         NC,LAB_ram_2d13
        ram:2d0e 19              ADD        HL,DE
        ram:2d0f 09              ADD        HL,BC
        ram:2d10 22 e1 85        LD         (DAT_ram_85e1),HL
                             LAB_ram_2d13                                    XREF[1]:     ram:2d0c(j)
        ram:2d13 2a e5 85        LD         HL,(DAT_ram_85e5)
        ram:2d16 b7              OR         A
        ram:2d17 ed 52           SBC        HL,DE
        ram:2d19 30 05           JR         NC,LAB_ram_2d20
        ram:2d1b 19              ADD        HL,DE
        ram:2d1c 09              ADD        HL,BC
        ram:2d1d 22 e5 85        LD         (DAT_ram_85e5),HL
                             LAB_ram_2d20                                    XREF[1]:     ram:2d19(j)
        ram:2d20 2a e9 85        LD         HL,(DAT_ram_85e9)
        ram:2d23 b7              OR         A
        ram:2d24 ed 52           SBC        HL,DE
        ram:2d26 30 06           JR         NC,LAB_ram_2d2e
        ram:2d28 19              ADD        HL,DE
        ram:2d29 09              ADD        HL,BC
        ram:2d2a 22 e9 85        LD         (DAT_ram_85e9),HL
        ram:2d2d c9              RET
                             LAB_ram_2d2e                                    XREF[1]:     ram:2d26(j)
        ram:2d2e 2a 94 8b        LD         HL,(DAT_ram_8b94)
        ram:2d31 b7              OR         A
        ram:2d32 ed 52           SBC        HL,DE
        ram:2d34 d0              RET        NC
        ram:2d35 19              ADD        HL,DE
        ram:2d36 09              ADD        HL,BC
        ram:2d37 22 94 8b        LD         (DAT_ram_8b94),HL
        ram:2d3a c9              RET
        ram:2d3b 50              ??         50h    P
        ram:2d3c 59              ??         59h    Y
        ram:2d3d 18              ??         18h
        ram:2d3e 06              ??         06h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2d3f()
             undefined         A:1            <RETURN>
                             FUN_ram_2d3f                                    XREF[1]:     FUN_ram_2c0b:2c43(c)
        ram:2d3f e6 1f           AND        0x1f
        ram:2d41 5e              LD         E,(HL)
        ram:2d42 23              INC        HL
        ram:2d43 56              LD         D,(HL)
        ram:2d44 2b              DEC        HL
        ram:2d45 e5              PUSH       HL
        ram:2d46 fe 0a           CP         0xa
        ram:2d48 30 31           JR         NC,LAB_ram_2d7b
        ram:2d4a f5              PUSH       AF
        ram:2d4b e6 1e           AND        0x1e
        ram:2d4d 28 1e           JR         Z,LAB_ram_2d6d
        ram:2d4f fe 08           CP         0x8
        ram:2d51 28 1a           JR         Z,LAB_ram_2d6d
        ram:2d53 eb              EX         DE,HL
        ram:2d54 fe 04           CP         0x4
        ram:2d56 c4 01 26        CALL       NZ,FUN_ram_2601                                  undefined FUN_ram_2601()
        ram:2d59 cd 33 1f        CALL       FUN_ram_1f33                                     undefined FUN_ram_1f33()
                             LAB_ram_2d5c                                    XREF[2]:     ram:2d65(j), ram:2d76(j)
        ram:2d5c da 3c 0a        JP         C,LAB_ram_0a3c
        ram:2d5f f1              POP        AF
        ram:2d60 e6 01           AND        0x1
        ram:2d62 28 03           JR         Z,LAB_ram_2d67
        ram:2d64 29              ADD        HL,HL
        ram:2d65 38 f5           JR         C,LAB_ram_2d5c
                             LAB_ram_2d67                                    XREF[2]:     ram:2d62(j), ram:2d7c(j)
        ram:2d67 11 02 00        LD         DE,0x2
        ram:2d6a 19              ADD        HL,DE
        ram:2d6b 18 09           JR         LAB_ram_2d76
                             LAB_ram_2d6d                                    XREF[2]:     ram:2d4d(j), ram:2d51(j)
        ram:2d6d 21 0a 00        LD         HL,0xa
        ram:2d70 f1              POP        AF
        ram:2d71 e6 01           AND        0x1
        ram:2d73 28 03           JR         Z,LAB_ram_2d78
        ram:2d75 29              ADD        HL,HL
                             LAB_ram_2d76                                    XREF[1]:     ram:2d6b(j)
        ram:2d76 38 e4           JR         C,LAB_ram_2d5c
                             LAB_ram_2d78                                    XREF[1]:     ram:2d73(j)
        ram:2d78 eb              EX         DE,HL
        ram:2d79 e1              POP        HL
        ram:2d7a c9              RET
                             LAB_ram_2d7b                                    XREF[1]:     ram:2d48(j)
        ram:2d7b eb              EX         DE,HL
        ram:2d7c 18 e9           JR         LAB_ram_2d67
        ram:2d7e c5              ??         C5h
        ram:2d7f 21              ??         21h    !
        ram:2d80 02              ??         02h
        ram:2d81 00              ??         00h
        ram:2d82 cd              ??         CDh
        ram:2d83 b8              ??         B8h
        ram:2d84 2f              ??         2Fh    /
        ram:2d85 c1              ??         C1h
        ram:2d86 2a              ??         2Ah    *
        ram:2d87 e5              ??         E5h
        ram:2d88 8b              ??         8Bh
        ram:2d89 70              ??         70h    p
        ram:2d8a 2b              ??         2Bh    +
        ram:2d8b 71              ??         71h    q
        ram:2d8c 18              ??         18h
        ram:2d8d 15              ??         15h
        ram:2d8e 2a              ??         2Ah    *
        ram:2d8f e5              ??         E5h
        ram:2d90 8b              ??         8Bh
        ram:2d91 23              ??         23h    #
        ram:2d92 4e              ??         4Eh    N
        ram:2d93 23              ??         23h    #
        ram:2d94 46              ??         46h    F
        ram:2d95 18              ??         18h
        ram:2d96 0d              ??         0Dh
        ram:2d97 f5              ??         F5h
        ram:2d98 21              ??         21h    !
        ram:2d99 01              ??         01h
        ram:2d9a 00              ??         00h
        ram:2d9b cd              ??         CDh
        ram:2d9c b8              ??         B8h
        ram:2d9d 2f              ??         2Fh    /
        ram:2d9e f1              ??         F1h
        ram:2d9f 2a              ??         2Ah    *
        ram:2da0 e5              ??         E5h
        ram:2da1 8b              ??         8Bh
        ram:2da2 77              ??         77h    w
        ram:2da3 2b              ??         2Bh    +
        ram:2da4 22              ??         22h    "
        ram:2da5 e5              ??         E5h
        ram:2da6 8b              ??         8Bh
        ram:2da7 c9              ??         C9h
        ram:2da8 2a              ??         2Ah    *
        ram:2da9 e5              ??         E5h
        ram:2daa 8b              ??         8Bh
        ram:2dab 23              ??         23h    #
        ram:2dac 7e              ??         7Eh    ~
        ram:2dad 18              ??         18h
        ram:2dae f5              ??         F5h
        ram:2daf cd              ??         CDh
        ram:2db0 e0              ??         E0h
        ram:2db1 2d              ??         2Dh    -
        ram:2db2 3a              ??         3Ah    :
        ram:2db3 ae              ??         AEh
        ram:2db4 80              ??         80h
        ram:2db5 e6              ??         E6h
        ram:2db6 1f              ??         1Fh
        ram:2db7 fe              ??         FEh
        ram:2db8 01              ??         01h
        ram:2db9 c0              ??         C0h
        ram:2dba cd              ??         CDh
        ram:2dbb 31              ??         31h    1
        ram:2dbc 20              ??         20h
        ram:2dbd 18              ??         18h
        ram:2dbe 21              ??         21h    !
        ram:2dbf cd              ??         CDh
        ram:2dc0 ea              ??         EAh
        ram:2dc1 2d              ??         2Dh    -
        ram:2dc2 3a              ??         3Ah    :
        ram:2dc3 98              ??         98h
        ram:2dc4 80              ??         80h
        ram:2dc5 e6              ??         E6h
        ram:2dc6 1f              ??         1Fh
        ram:2dc7 fe              ??         FEh
        ram:2dc8 01              ??         01h
        ram:2dc9 c0              ??         C0h
        ram:2dca cd              ??         CDh
        ram:2dcb ec              ??         ECh
        ram:2dcc 1f              ??         1Fh
        ram:2dcd 18              ??         18h
        ram:2dce 1b              ??         1Bh
        ram:2dcf cd              ??         CDh
        ram:2dd0 f4              ??         F4h
        ram:2dd1 2d              ??         2Dh    -
        ram:2dd2 cd              ??         CDh
        ram:2dd3 47              ??         47h    G
        ram:2dd4 1f              ??         1Fh
        ram:2dd5 fe              ??         FEh
        ram:2dd6 01              ??         01h
        ram:2dd7 c0              ??         C0h
        ram:2dd8 cf              ??         CFh
        ram:2dd9 18              ??         18h
        ram:2dda 19              ??         19h
        ram:2ddb 11              ??         11h
        ram:2ddc b9              ??         B9h
        ram:2ddd 80              ??         80h
        ram:2dde 18              ??         18h
        ram:2ddf 17              ??         17h
        ram:2de0 11              ??         11h
        ram:2de1 ae              ??         AEh
        ram:2de2 80              ??         80h
        ram:2de3 18              ??         18h
        ram:2de4 12              ??         12h
        ram:2de5 11              ??         11h
        ram:2de6 a3              ??         A3h
        ram:2de7 80              ??         80h
        ram:2de8 18              ??         18h
        ram:2de9 0d              ??         0Dh
        ram:2dea 11              ??         11h
        ram:2deb 98              ??         98h
        ram:2dec 80              ??         80h
        ram:2ded 18              ??         18h
        ram:2dee 08              ??         08h
        ram:2def 11              ??         11h
        ram:2df0 8d              ??         8Dh
        ram:2df1 80              ??         80h
        ram:2df2 18              ??         18h
        ram:2df3 03              ??         03h
        ram:2df4 11              ??         11h
        ram:2df5 82              ??         82h
        ram:2df6 80              ??         80h
        ram:2df7 cd              ??         CDh
        ram:2df8 0c              ??         0Ch
        ram:2df9 2e              ??         2Eh    .
        ram:2dfa 18              ??         18h
        ram:2dfb 0a              ??         0Ah
        ram:2dfc 11              ??         11h
        ram:2dfd 82              ??         82h
        ram:2dfe 80              ??         80h
        ram:2dff cd              ??         CDh
        ram:2e00 09              ??         09h
        ram:2e01 2e              ??         2Eh    .
        ram:2e02 cd              ??         CDh
        ram:2e03 9d              ??         9Dh
        ram:2e04 20              ??         20h
        ram:2e05 13              ??         13h
        ram:2e06 c3              ??         C3h
        ram:2e07 9d              ??         9Dh
        ram:2e08 20              ??         20h
        ram:2e09 cd              ??         CDh
        ram:2e0a 0c              ??         0Ch
        ram:2e0b 2e              ??         2Eh    .
        ram:2e0c 01              ??         01h
        ram:2e0d 0a              ??         0Ah
        ram:2e0e 00              ??         00h
        ram:2e0f 2a              ??         2Ah    *
        ram:2e10 e1              ??         E1h
        ram:2e11 8b              ??         8Bh
        ram:2e12 b7              ??         B7h
        ram:2e13 ed              ??         EDh
        ram:2e14 42              ??         42h    B
        ram:2e15 18              ??         18h
        ram:2e16 0a              ??         0Ah
        ram:2e17 cd              ??         CDh
        ram:2e18 33              ??         33h    3
        ram:2e19 1f              ??         1Fh
        ram:2e1a eb              ??         EBh
        ram:2e1b 2a              ??         2Ah    *
        ram:2e1c e1              ??         E1h
        ram:2e1d 8b              ??         8Bh
        ram:2e1e b7              ??         B7h
        ram:2e1f ed              ??         EDh
        ram:2e20 52              ??         52h    R
        ram:2e21 22              ??         22h    "
        ram:2e22 e1              ??         E1h
        ram:2e23 8b              ??         8Bh
        ram:2e24 c9              ??         C9h
        ram:2e25 cd              ??         CDh
        ram:2e26 33              ??         33h    3
        ram:2e27 1f              ??         1Fh
        ram:2e28 cd              ??         CDh
        ram:2e29 b8              ??         B8h
        ram:2e2a 2f              ??         2Fh    /
        ram:2e2b 2a              ??         2Ah    *
        ram:2e2c e1              ??         E1h
        ram:2e2d 8b              ??         8Bh
        ram:2e2e 19              ??         19h
        ram:2e2f 18              ??         18h
        ram:2e30 f0              ??         F0h
        ram:2e31 21              ??         21h    !
        ram:2e32 b9              ??         B9h
        ram:2e33 80              ??         80h
        ram:2e34 18              ??         18h
        ram:2e35 17              ??         17h
        ram:2e36 21              ??         21h    !
        ram:2e37 ae              ??         AEh
        ram:2e38 80              ??         80h
        ram:2e39 18              ??         18h
        ram:2e3a 12              ??         12h
        ram:2e3b 21              ??         21h    !
        ram:2e3c a3              ??         A3h
        ram:2e3d 80              ??         80h
        ram:2e3e 18              ??         18h
        ram:2e3f 0d              ??         0Dh
        ram:2e40 21              ??         21h    !
        ram:2e41 98              ??         98h
        ram:2e42 80              ??         80h
        ram:2e43 18              ??         18h
        ram:2e44 08              ??         08h
        ram:2e45 21              ??         21h    !
        ram:2e46 8d              ??         8Dh
        ram:2e47 80              ??         80h
        ram:2e48 18              ??         18h
        ram:2e49 03              ??         03h
                             LAB_ram_2e4a                                    XREF[1]:     ram:2e8c(j)
        ram:2e4a 21 82 80        LD         HL,0x8082
        ram:2e4d e5              PUSH       HL=>DAT_ram_8082
        ram:2e4e 21 0a 00        LD         HL,0xa
        ram:2e51 cd b8 2f        CALL       FUN_ram_2fb8                                     undefined FUN_ram_2fb8()
        ram:2e54 e1              POP        HL
        ram:2e55 ed 5b e1 8b     LD         DE,(DAT_ram_8be1)
                             LAB_ram_2e59                                    XREF[1]:     ram:2ea4(j)
        ram:2e59 cd 9d 20        CALL       FUN_ram_209d_10_bytesCpy                                     undefined FUN_ram_209d_10_bytesCpy()
        ram:2e5c ed 53 e1 8b     LD         (DAT_ram_8be1),DE
        ram:2e60 c9              RET
        ram:2e61 3a              ??         3Ah    :
        ram:2e62 ae              ??         AEh
        ram:2e63 80              ??         80h
        ram:2e64 e6              ??         E6h
        ram:2e65 1f              ??         1Fh
        ram:2e66 fe              ??         FEh
        ram:2e67 01              ??         01h
        ram:2e68 20              ??         20h
        ram:2e69 cc              ??         CCh
        ram:2e6a 21              ??         21h    !
        ram:2e6b ae              ??         AEh
        ram:2e6c 80              ??         80h
        ram:2e6d 18              ??         18h
        ram:2e6e 25              ??         25h    %
        ram:2e6f 3a              ??         3Ah    :
        ram:2e70 98              ??         98h
        ram:2e71 80              ??         80h
        ram:2e72 e6              ??         E6h
        ram:2e73 1f              ??         1Fh
        ram:2e74 fe              ??         FEh
        ram:2e75 01              ??         01h
        ram:2e76 20              ??         20h
        ram:2e77 c8              ??         C8h
        ram:2e78 3a              ??         3Ah    :
        ram:2e79 a3              ??         A3h
        ram:2e7a 80              ??         80h
        ram:2e7b e6              ??         E6h
        ram:2e7c e0              ??         E0h
        ram:2e7d f6              ??         F6h
        ram:2e7e 01              ??         01h
        ram:2e7f 32              ??         32h    2
        ram:2e80 a3              ??         A3h
        ram:2e81 80              ??         80h
        ram:2e82 21              ??         21h    !
        ram:2e83 98              ??         98h
        ram:2e84 80              ??         80h
        ram:2e85 18              ??         18h
        ram:2e86 0d              ??         0Dh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2e87()
             undefined         A:1            <RETURN>
                             FUN_ram_2e87                                    XREF[1]:     RST3:0018(T), RST3:0018(j)
        ram:2e87 cd 47 1f        CALL       FUN_ram_1f47                                     undefined FUN_ram_1f47()
        ram:2e8a fe 01           CP         0x1
        ram:2e8c 20 bc           JR         NZ,LAB_ram_2e4a
        ram:2e8e cd 66 1f        CALL       FUN_ram_1f66                                     undefined FUN_ram_1f66()
        ram:2e91 21 82 80        LD         HL,0x8082
        ram:2e94 e5              PUSH       HL=>DAT_ram_8082
        ram:2e95 21 14 00        LD         HL,0x14
        ram:2e98 cd b8 2f        CALL       FUN_ram_2fb8                                     undefined FUN_ram_2fb8()
        ram:2e9b e1              POP        HL
        ram:2e9c ed 5b e1 8b     LD         DE,(DAT_ram_8be1)
        ram:2ea0 cd 9d 20        CALL       FUN_ram_209d_10_bytesCpy                                     undefined FUN_ram_209d_10_bytesCpy()
        ram:2ea3 23              INC        HL
        ram:2ea4 18 b3           JR         LAB_ram_2e59
        ram:2ea6 2a              ??         2Ah    *
        ram:2ea7 e1              ??         E1h
        ram:2ea8 8b              ??         8Bh
        ram:2ea9 01              ??         01h
        ram:2eaa ec              ??         ECh
        ram:2eab ff              ??         FFh
        ram:2eac 09              ??         09h
        ram:2ead 11              ??         11h
        ram:2eae 82              ??         82h
        ram:2eaf 80              ??         80h
        ram:2eb0 06              ??         06h
        ram:2eb1 0a              ??         0Ah
        ram:2eb2 cd              ??         CDh
        ram:2eb3 c2              ??         C2h
        ram:2eb4 23              ??         23h    #
        ram:2eb5 13              ??         13h
        ram:2eb6 06              ??         06h
        ram:2eb7 0a              ??         0Ah
        ram:2eb8 c3              ??         C3h
        ram:2eb9 c2              ??         C2h
        ram:2eba 23              ??         23h    #
        ram:2ebb 2a              ??         2Ah    *
        ram:2ebc e1              ??         E1h
        ram:2ebd 8b              ??         8Bh
        ram:2ebe 11              ??         11h
        ram:2ebf 82              ??         82h
        ram:2ec0 80              ??         80h
        ram:2ec1 01              ??         01h
        ram:2ec2 f6              ??         F6h
        ram:2ec3 ff              ??         FFh
        ram:2ec4 09              ??         09h
        ram:2ec5 18              ??         18h
        ram:2ec6 ef              ??         EFh
        ram:2ec7 11              ??         11h
        ram:2ec8 82              ??         82h
        ram:2ec9 80              ??         80h
        ram:2eca 2a              ??         2Ah    *
        ram:2ecb e1              ??         E1h
        ram:2ecc 8b              ??         8Bh
        ram:2ecd 0e              ??         0Eh
        ram:2ece 78              ??         78h    x
        ram:2ecf 18              ??         18h
        ram:2ed0 5b              ??         5Bh    [
        ram:2ed1 cd              ??         CDh
        ram:2ed2 de              ??         DEh
        ram:2ed3 2e              ??         2Eh    .
        ram:2ed4 11              ??         11h
        ram:2ed5 82              ??         82h
        ram:2ed6 80              ??         80h
        ram:2ed7 2a              ??         2Ah    *
        ram:2ed8 e1              ??         E1h
        ram:2ed9 8b              ??         8Bh
        ram:2eda 0e              ??         0Eh
        ram:2edb 3c              ??         3Ch    <
        ram:2edc 18              ??         18h
        ram:2edd 4e              ??         4Eh    N
        ram:2ede 11              ??         11h
        ram:2edf 8d              ??         8Dh
        ram:2ee0 80              ??         80h
        ram:2ee1 2a              ??         2Ah    *
        ram:2ee2 e1              ??         E1h
        ram:2ee3 8b              ??         8Bh
        ram:2ee4 0e              ??         0Eh
        ram:2ee5 32              ??         32h    2
        ram:2ee6 18              ??         18h
        ram:2ee7 44              ??         44h    D
        ram:2ee8 11              ??         11h
        ram:2ee9 b9              ??         B9h
        ram:2eea 80              ??         80h
        ram:2eeb 18              ??         18h
        ram:2eec 0b              ??         0Bh
        ram:2eed 11              ??         11h
        ram:2eee 8d              ??         8Dh
        ram:2eef 80              ??         80h
        ram:2ef0 18              ??         18h
        ram:2ef1 06              ??         06h
        ram:2ef2 cd              ??         CDh
        ram:2ef3 4d              ??         4Dh    M
        ram:2ef4 2f              ??         2Fh    /
        ram:2ef5 11              ??         11h
        ram:2ef6 82              ??         82h
        ram:2ef7 80              ??         80h
        ram:2ef8 2a              ??         2Ah    *
        ram:2ef9 e1              ??         E1h
        ram:2efa 8b              ??         8Bh
        ram:2efb 0e              ??         0Eh
        ram:2efc 28              ??         28h    (
        ram:2efd 18              ??         18h
        ram:2efe 2d              ??         2Dh    -
        ram:2eff 11              ??         11h
        ram:2f00 82              ??         82h
        ram:2f01 80              ??         80h
        ram:2f02 18              ??         18h
        ram:2f03 dd              ??         DDh
        ram:2f04 11              ??         11h
        ram:2f05 98              ??         98h
        ram:2f06 80              ??         80h
        ram:2f07 0e              ??         0Eh
        ram:2f08 1e              ??         1Eh
        ram:2f09 18              ??         18h
        ram:2f0a 4a              ??         4Ah    J
        ram:2f0b 11              ??         11h
        ram:2f0c ae              ??         AEh
        ram:2f0d 80              ??         80h
        ram:2f0e 18              ??         18h
        ram:2f0f 17              ??         17h
        ram:2f10 11              ??         11h
        ram:2f11 b9              ??         B9h
        ram:2f12 80              ??         80h
        ram:2f13 18              ??         18h
        ram:2f14 12              ??         12h
        ram:2f15 11              ??         11h
        ram:2f16 a3              ??         A3h
        ram:2f17 80              ??         80h
        ram:2f18 18              ??         18h
        ram:2f19 0d              ??         0Dh
        ram:2f1a 11              ??         11h
        ram:2f1b 98              ??         98h
        ram:2f1c 80              ??         80h
        ram:2f1d 18              ??         18h
        ram:2f1e 08              ??         08h
        ram:2f1f 11              ??         11h
        ram:2f20 8d              ??         8Dh
        ram:2f21 80              ??         80h
        ram:2f22 18              ??         18h
        ram:2f23 03              ??         03h
        ram:2f24 11              ??         11h
        ram:2f25 82              ??         82h
        ram:2f26 80              ??         80h
        ram:2f27 2a              ??         2Ah    *
        ram:2f28 e1              ??         E1h
        ram:2f29 8b              ??         8Bh
        ram:2f2a 0e              ??         0Eh
        ram:2f2b 0a              ??         0Ah
        ram:2f2c af              ??         AFh
        ram:2f2d 47              ??         47h    G
        ram:2f2e ed              ??         EDh
        ram:2f2f 42              ??         42h    B
        ram:2f30 c3              ??         C3h
        ram:2f31 9d              ??         9Dh
        ram:2f32 20              ??         20h
        ram:2f33 cd              ??         CDh
        ram:2f34 15              ??         15h
        ram:2f35 2f              ??         2Fh    /
        ram:2f36 11              ??         11h
        ram:2f37 98              ??         98h
        ram:2f38 80              ??         80h
        ram:2f39 18              ??         18h
        ram:2f3a 0b              ??         0Bh
        ram:2f3b 11              ??         11h
        ram:2f3c 8d              ??         8Dh
        ram:2f3d 80              ??         80h
        ram:2f3e 18              ??         18h
        ram:2f3f 06              ??         06h
        ram:2f40 cd              ??         CDh
        ram:2f41 1f              ??         1Fh
        ram:2f42 2f              ??         2Fh    /
        ram:2f43 11              ??         11h
        ram:2f44 82              ??         82h
        ram:2f45 80              ??         80h
        ram:2f46 2a              ??         2Ah    *
        ram:2f47 e1              ??         E1h
        ram:2f48 8b              ??         8Bh
        ram:2f49 0e              ??         0Eh
        ram:2f4a 14              ??         14h
        ram:2f4b 18              ??         18h
        ram:2f4c df              ??         DFh
        ram:2f4d 11              ??         11h
        ram:2f4e 8d              ??         8Dh
        ram:2f4f 80              ??         80h
        ram:2f50 18              ??         18h
        ram:2f51 03              ??         03h
        ram:2f52 11              ??         11h
        ram:2f53 82              ??         82h
        ram:2f54 80              ??         80h
        ram:2f55 2a              ??         2Ah    *
        ram:2f56 e1              ??         E1h
        ram:2f57 8b              ??         8Bh
        ram:2f58 0e              ??         0Eh
        ram:2f59 1e              ??         1Eh
        ram:2f5a 18              ??         18h
        ram:2f5b d0              ??         D0h
        ram:2f5c 11              ??         11h
        ram:2f5d 98              ??         98h
        ram:2f5e 80              ??         80h
        ram:2f5f 18              ??         18h
        ram:2f60 0d              ??         0Dh
        ram:2f61 11              ??         11h
        ram:2f62 8d              ??         8Dh
        ram:2f63 80              ??         80h
        ram:2f64 18              ??         18h
        ram:2f65 08              ??         08h
        ram:2f66 11              ??         11h
        ram:2f67 b9              ??         B9h
        ram:2f68 80              ??         80h
        ram:2f69 18              ??         18h
        ram:2f6a 03              ??         03h
        ram:2f6b 11              ??         11h
        ram:2f6c 82              ??         82h
        ram:2f6d 80              ??         80h
        ram:2f6e 2a              ??         2Ah    *
        ram:2f6f e1              ??         E1h
        ram:2f70 8b              ??         8Bh
        ram:2f71 0e              ??         0Eh
        ram:2f72 0a              ??         0Ah
        ram:2f73 af              ??         AFh
        ram:2f74 47              ??         47h    G
        ram:2f75 ed              ??         EDh
        ram:2f76 42              ??         42h    B
        ram:2f77 eb              ??         EBh
        ram:2f78 c3              ??         C3h
        ram:2f79 9d              ??         9Dh
        ram:2f7a 20              ??         20h
        ram:2f7b 11              ??         11h
        ram:2f7c ae              ??         AEh
        ram:2f7d 80              ??         80h
        ram:2f7e 18              ??         18h
        ram:2f7f 06              ??         06h
        ram:2f80 cd              ??         CDh
        ram:2f81 61              ??         61h    a
        ram:2f82 2f              ??         2Fh    /
        ram:2f83 11              ??         11h
        ram:2f84 82              ??         82h
        ram:2f85 80              ??         80h
        ram:2f86 2a              ??         2Ah    *
        ram:2f87 e1              ??         E1h
        ram:2f88 8b              ??         8Bh
        ram:2f89 0e              ??         0Eh
        ram:2f8a 14              ??         14h
        ram:2f8b 18              ??         18h
        ram:2f8c e6              ??         E6h
        ram:2f8d 11              ??         11h
        ram:2f8e 8d              ??         8Dh
        ram:2f8f 80              ??         80h
        ram:2f90 18              ??         18h
        ram:2f91 0d              ??         0Dh
        ram:2f92 11              ??         11h
        ram:2f93 98              ??         98h
        ram:2f94 80              ??         80h
        ram:2f95 18              ??         18h
        ram:2f96 08              ??         08h
        ram:2f97 11              ??         11h
        ram:2f98 b9              ??         B9h
        ram:2f99 80              ??         80h
        ram:2f9a 18              ??         18h
        ram:2f9b 03              ??         03h
        ram:2f9c 11              ??         11h
        ram:2f9d 82              ??         82h
        ram:2f9e 80              ??         80h
        ram:2f9f 2a              ??         2Ah    *
        ram:2fa0 e1              ??         E1h
        ram:2fa1 8b              ??         8Bh
        ram:2fa2 0e              ??         0Eh
        ram:2fa3 1e              ??         1Eh
        ram:2fa4 18              ??         18h
        ram:2fa5 cd              ??         CDh
        ram:2fa6 11              ??         11h
        ram:2fa7 ae              ??         AEh
        ram:2fa8 80              ??         80h
        ram:2fa9 18              ??         18h
        ram:2faa 06              ??         06h
        ram:2fab cd              ??         CDh
        ram:2fac 8d              ??         8Dh
        ram:2fad 2f              ??         2Fh    /
        ram:2fae 11              ??         11h
        ram:2faf 82              ??         82h
        ram:2fb0 80              ??         80h
        ram:2fb1 2a              ??         2Ah    *
        ram:2fb2 e1              ??         E1h
        ram:2fb3 8b              ??         8Bh
        ram:2fb4 0e              ??         0Eh
        ram:2fb5 28              ??         28h    (
        ram:2fb6 18              ??         18h
        ram:2fb7 bb              ??         BBh
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_2fb8()
             undefined         A:1            <RETURN>
                             FUN_ram_2fb8                                    XREF[2]:     FUN_ram_2e87:2e51(c),
                                                                                          FUN_ram_2e87:2e98(c)
        ram:2fb8 cd 9d 28        CALL       FUN_ram_289d                                     undefined FUN_ram_289d()
        ram:2fbb d0              RET        NC
        ram:2fbc c3 3c 0a        JP         LAB_ram_0a3c
        ram:2fbf af              ??         AFh
        ram:2fc0 67              ??         67h    g
        ram:2fc1 6f              ??         6Fh    o
        ram:2fc2 ed              ??         EDh
        ram:2fc3 42              ??         42h    B
        ram:2fc4 44              ??         44h    D
        ram:2fc5 4d              ??         4Dh    M
        ram:2fc6 c9              ??         C9h
        ram:2fc7 2a              ??         2Ah    *
        ram:2fc8 e1              ??         E1h
        ram:2fc9 8b              ??         8Bh
        ram:2fca 11              ??         11h
        ram:2fcb f6              ??         F6h
        ram:2fcc ff              ??         FFh
        ram:2fcd 19              ??         19h
        ram:2fce c9              ??         C9h
        ram:2fcf cd              ??         CDh
        ram:2fd0 d3              ??         D3h
        ram:2fd1 3d              ??         3Dh    =
        ram:2fd2 21              ??         21h    !
        ram:2fd3 03              ??         03h
        ram:2fd4 00              ??         00h
        ram:2fd5 22              ??         22h    "
        ram:2fd6 0c              ??         0Ch
        ram:2fd7 80              ??         80h
        ram:2fd8 21              ??         21h    !
        ram:2fd9 5b              ??         5Bh    [
        ram:2fda 32              ??         32h    2
        ram:2fdb cd              ??         CDh
        ram:2fdc 45              ??         45h    E
        ram:2fdd 3e              ??         3Eh    >
        ram:2fde cd              ??         CDh
        ram:2fdf 7b              ??         7Bh    {
        ram:2fe0 3e              ??         3Eh    >
        ram:2fe1 cd              ??         CDh
        ram:2fe2 87              ??         87h
        ram:2fe3 3e              ??         3Eh    >
        ram:2fe4 fe              ??         FEh
        ram:2fe5 06              ??         06h
        ram:2fe6 c2              ??         C2h
        ram:2fe7 62              ??         62h    b
        ram:2fe8 04              ??         04h
        ram:2fe9 cd              ??         CDh
        ram:2fea 39              ??         39h    9
        ram:2feb 3e              ??         3Eh    >
        ram:2fec fd              ??         FDh
        ram:2fed cb              ??         CBh
        ram:2fee 08              ??         08h
        ram:2fef 96              ??         96h
        ram:2ff0 21              ??         21h    !
        ram:2ff1 00              ??         00h
        ram:2ff2 00              ??         00h
        ram:2ff3 22              ??         22h    "
        ram:2ff4 64              ??         64h    d
        ram:2ff5 83              ??         83h
        ram:2ff6 31              ??         31h    1
        ram:2ff7 9c              ??         9Ch
        ram:2ff8 83              ??         83h
        ram:2ff9 21              ??         21h    !
        ram:2ffa 03              ??         03h
        ram:2ffb 06              ??         06h
        ram:2ffc 22              ??         22h    "
        ram:2ffd 0c              ??         0Ch
        ram:2ffe 80              ??         80h
        ram:2fff 2a              ??         2Ah    *
        ram:3000 64              ??         64h    d
        ram:3001 83              ??         83h
        ram:3002 e5              ??         E5h
        ram:3003 cd              ??         CDh
        ram:3004 d9              ??         D9h
        ram:3005 3d              ??         3Dh    =
        ram:3006 e1              ??         E1h
        ram:3007 23              ??         23h    #
        ram:3008 22              ??         22h    "
        ram:3009 64              ??         64h    d
        ram:300a 83              ??         83h
        ram:300b 97              ??         97h
        ram:300c 47              ??         47h    G
        ram:300d 0e              ??         0Eh
        ram:300e 05              ??         05h
        ram:300f ed              ??         EDh
        ram:3010 41              ??         41h    A
        ram:3011 21              ??         21h    !
        ram:3012 00              ??         00h
        ram:3013 40              ??         40h    @
        ram:3014 86              ??         86h
        ram:3015 23              ??         23h    #
        ram:3016 cb              ??         CBh
        ram:3017 7c              ??         7Ch    |
        ram:3018 28              ??         28h    (
        ram:3019 fa              ??         FAh
        ram:301a cd              ??         CDh
        ram:301b 75              ??         75h    u
        ram:301c 00              ??         00h
        ram:301d c2              ??         C2h
        ram:301e df              ??         DFh
        ram:301f 3d              ??         3Dh    =
        ram:3020 04              ??         04h
        ram:3021 cb              ??         CBh
        ram:3022 58              ??         58h    X
        ram:3023 28              ??         28h    (
        ram:3024 ea              ??         EAh
        ram:3025 21              ??         21h    !
        ram:3026 52              ??         52h    R
        ram:3027 32              ??         32h    2
        ram:3028 b7              ??         B7h
        ram:3029 c2              ??         C2h
        ram:302a e5              ??         E5h
        ram:302b 3d              ??         3Dh    =
        ram:302c c3              ??         C3h
        ram:302d eb              ??         EBh
        ram:302e 3d              ??         3Dh    =
        ram:302f f5              ??         F5h
        ram:3030 e5              ??         E5h
        ram:3031 01              ??         01h
        ram:3032 00              ??         00h
        ram:3033 00              ??         00h
        ram:3034 c5              ??         C5h
        ram:3035 97              ??         97h
        ram:3036 ed              ??         EDh
        ram:3037 b1              ??         B1h
        ram:3038 e1              ??         E1h
        ram:3039 b7              ??         B7h
        ram:303a ed              ??         EDh
        ram:303b 42              ??         42h    B
        ram:303c 2b              ??         2Bh    +
        ram:303d 4d              ??         4Dh    M
        ram:303e 44              ??         44h    D
        ram:303f e1              ??         E1h
        ram:3040 f1              ??         F1h
        ram:3041 c9              ??         C9h
        ram:3042 7e              ??         7Eh    ~
        ram:3043 12              ??         12h
        ram:3044 b7              ??         B7h
        ram:3045 c8              ??         C8h
        ram:3046 23              ??         23h    #
        ram:3047 13              ??         13h
        ram:3048 18              ??         18h
        ram:3049 f8              ??         F8h
        ram:304a 1a              ??         1Ah
        ram:304b b7              ??         B7h
        ram:304c 28              ??         28h    (
        ram:304d f4              ??         F4h
        ram:304e 13              ??         13h
        ram:304f 18              ??         18h
        ram:3050 f9              ??         F9h
        ram:3051 d5              ??         D5h
        ram:3052 e5              ??         E5h
        ram:3053 dd              ??         DDh
        ram:3054 e5              ??         E5h
        ram:3055 d5              ??         D5h
        ram:3056 dd              ??         DDh
        ram:3057 e1              ??         E1h
        ram:3058 56              ??         56h    V
        ram:3059 23              ??         23h    #
        ram:305a dd              ??         DDh
        ram:305b 5e              ??         5Eh    ^
        ram:305c 00              ??         00h
        ram:305d dd              ??         DDh
        ram:305e 23              ??         23h    #
        ram:305f 7a              ??         7Ah    z
        ram:3060 bb              ??         BBh
        ram:3061 38              ??         38h    8
        ram:3062 01              ??         01h
        ram:3063 7b              ??         7Bh    {
        ram:3064 47              ??         47h    G
        ram:3065 7e              ??         7Eh    ~
        ram:3066 23              ??         23h    #
        ram:3067 dd              ??         DDh
        ram:3068 be              ??         BEh
        ram:3069 00              ??         00h
        ram:306a dd              ??         DDh
        ram:306b 23              ??         23h    #
        ram:306c 20              ??         20h
        ram:306d 04              ??         04h
        ram:306e 10              ??         10h
        ram:306f f5              ??         F5h
        ram:3070 7a              ??         7Ah    z
        ram:3071 bb              ??         BBh
        ram:3072 dd              ??         DDh
        ram:3073 e1              ??         E1h
        ram:3074 e1              ??         E1h
        ram:3075 d1              ??         D1h
        ram:3076 c9              ??         C9h
        ram:3077 c5              ??         C5h
        ram:3078 4f              ??         4Fh    O
        ram:3079 e6              ??         E6h
        ram:307a f8              ??         F8h
        ram:307b 0f              ??         0Fh
        ram:307c 0f              ??         0Fh
        ram:307d 0f              ??         0Fh
        ram:307e 5f              ??         5Fh    _
        ram:307f 16              ??         16h
        ram:3080 00              ??         00h
        ram:3081 19              ??         19h
        ram:3082 e5              ??         E5h
        ram:3083 79              ??         79h    y
        ram:3084 e6              ??         E6h
        ram:3085 07              ??         07h
        ram:3086 5f              ??         5Fh    _
        ram:3087 7e              ??         7Eh    ~
        ram:3088 21              ??         21h    !
        ram:3089 92              ??         92h
        ram:308a 30              ??         30h    0
        ram:308b 19              ??         19h
        ram:308c 4e              ??         4Eh    N
        ram:308d a1              ??         A1h
        ram:308e 79              ??         79h    y
        ram:308f e1              ??         E1h
        ram:3090 c1              ??         C1h
        ram:3091 c9              ??         C9h
        ram:3092 01              ??         01h
        ram:3093 02              ??         02h
        ram:3094 04              ??         04h
        ram:3095 08              ??         08h
        ram:3096 10              ??         10h
        ram:3097 20              ??         20h
        ram:3098 40              ??         40h    @
        ram:3099 80              ??         80h
        ram:309a 2b              ??         2Bh    +
        ram:309b 61              ??         61h    a
        ram:309c 81              ??         81h
        ram:309d 78              ??         78h    x
        ram:309e 2b              ??         2Bh    +
        ram:309f 61              ??         61h    a
        ram:30a0 80              ??         80h
        ram:30a1 3d              ??         3Dh    =
        ram:30a2 30              ??         30h    0
        ram:30a3 00              ??         00h
        ram:30a4 61              ??         61h    a
        ram:30a5 00              ??         00h
        ram:30a6 41              ??         41h    A
        ram:30a7 4c              ??         4Ch    L
        ram:30a8 4c              ??         4Ch    L
        ram:30a9 00              ??         00h
        ram:30aa 41              ??         41h    A
        ram:30ab 6e              ??         6Eh    n
        ram:30ac 73              ??         73h    s
        ram:30ad 00              ??         00h
        ram:30ae 41              ??         41h    A
        ram:30af 52              ??         52h    R
        ram:30b0 43              ??         43h    C
        ram:30b1 3d              ??         3Dh    =
        ram:30b2 00              ??         00h
        ram:30b3 41 72 65        ds         "Are you sure?"
                 20 79 6f
                 75 20 73
        ram:30c1 41              ??         41h    A
        ram:30c2 58              ??         58h    X
        ram:30c3 45              ??         45h    E
        ram:30c4 53              ??         53h    S
        ram:30c5 00              ??         00h
        ram:30c6 62              ??         62h    b
        ram:30c7 00              ??         00h
        ram:30c8 62 6f 75        ds         "bound"
                 6e 64 00
        ram:30ce 43 41 54        ds         "CATALOG"
                 41 4c 4f
                 47 00
        ram:30d6 63              ??         63h    c
        ram:30d7 6f              ??         6Fh    o
        ram:30d8 65              ??         65h    e
        ram:30d9 66              ??         66h    f
        ram:30da 00              ??         00h
        ram:30db 43              ??         43h    C
        ram:30dc 4f              ??         4Fh    O
        ram:30dd 4e              ??         4Eh    N
        ram:30de 53              ??         53h    S
        ram:30df 00              ??         00h
        ram:30e0 43 4f 4e        ds         "CONSTANT"
                 53 54 41
                 4e 54 00
        ram:30e9 43              ??         43h    C
        ram:30ea 50              ??         50h    P
        ram:30eb 4c              ??         4Ch    L
        ram:30ec 58              ??         58h    X
        ram:30ed 00              ??         00h
        ram:30ee 44 65 66        ds         "Defaults set"
                 61 75 6c
                 74 73 20
        ram:30fb 44 45 4c        ds         "DELETE"
                 45 54 45 00
        ram:3102 64 69 66        ds         "difTol"
                 54 6f 6c 00
        ram:3109 44              ??         44h    D
        ram:310a 49              ??         49h    I
        ram:310b 53              ??         53h    S
        ram:310c 54              ??         54h    T
        ram:310d 3d              ??         3Dh    =
        ram:310e 00              ??         00h
        ram:310f 44              ??         44h    D
        ram:3110 6f              ??         6Fh    o
        ram:3111 6e              ??         6Eh    n
        ram:3112 65              ??         65h    e
        ram:3113 00              ??         00h
        ram:3114 64              ??         64h    d
        ram:3115 72              ??         72h    r
        ram:3116 2f              ??         2Fh    /
        ram:3117 64              ??         64h    d
        ram:3118 c1              ??         C1h
        ram:3119 3d              ??         3Dh    =
        ram:311a 00              ??         00h
        ram:311b 64              ??         64h    d
        ram:311c 78              ??         78h    x
        ram:311d 2f              ??         2Fh    /
        ram:311e 64              ??         64h    d
        ram:311f 74              ??         74h    t
        ram:3120 3d              ??         3Dh    =
        ram:3121 00              ??         00h
        ram:3122 64              ??         64h    d
        ram:3123 79              ??         79h    y
        ram:3124 2f              ??         2Fh    /
        ram:3125 64              ??         64h    d
        ram:3126 74              ??         74h    t
        ram:3127 3d              ??         3Dh    =
        ram:3128 00              ??         00h
        ram:3129 64              ??         64h    d
        ram:312a 79              ??         79h    y
        ram:312b 2f              ??         2Fh    /
        ram:312c 64              ??         64h    d
        ram:312d 78              ??         78h    x
        ram:312e 3d              ??         3Dh    =
        ram:312f 00              ??         00h
        ram:3130 65              ??         65h    e
        ram:3131 71              ??         71h    q
        ram:3132 6e              ??         6Eh    n
        ram:3133 3a              ??         3Ah    :
        ram:3134 00              ??         00h
        ram:3135 45              ??         45h    E
        ram:3136 51              ??         51h    Q
        ram:3137 55              ??         55h    U
        ram:3138 20              ??         20h
        ram:3139 00              ??         00h
        ram:313a 45              ??         45h    E
        ram:313b 52              ??         52h    R
        ram:313c 52              ??         52h    R
        ram:313d 20              ??         20h
        ram:313e 00              ??         00h
        ram:313f 45 52 52        ds         "ERROR "
                 4f 52 20 00
        ram:3146 45 76 61        ds         "Eval "
                 6c 20 00
        ram:314c 45              ??         45h    E
        ram:314d 78              ??         78h    x
        ram:314e 70              ??         70h    p
        ram:314f 52              ??         52h    R
        ram:3150 00              ??         00h
        ram:3151 20 46 41        ds         " FAIL"
                 49 4c 00
        ram:3157 46              ??         46h    F
        ram:3158 4d              ??         4Dh    M
        ram:3159 41              ??         41h    A
        ram:315a 58              ??         58h    X
        ram:315b 00              ??         00h
        ram:315c 46              ??         46h    F
        ram:315d 4d              ??         4Dh    M
        ram:315e 49              ??         49h    I
        ram:315f 4e              ??         4Eh    N
        ram:3160 00              ??         00h
        ram:3161 46 4f 52        ds         "FORECAST:"
                 45 43 41
                 53 54 3a 00
        ram:316b 47              ??         47h    G
        ram:316c 44              ??         44h    D
        ram:316d 42              ??         42h    B
        ram:316e 20              ??         20h
        ram:316f 00              ??         00h
        ram:3170 49              ??         49h    I
        ram:3171 4e              ??         4Eh    N
        ram:3172 46              ??         46h    F
        ram:3173 4c              ??         4Ch    L
        ram:3174 43              ??         43h    C
        ram:3175 00              ??         00h
        ram:3176 49 4e 49        ds         "INITIAL CONDITIONS"
                 54 49 41
                 4c 20 43
        ram:3189 49 4e 54        ds         "INTERPOLATE"
                 45 52 50
                 4f 4c 41
        ram:3195 49 53 45        ds         "ISECT"
                 43 54 00
        ram:319b 6c 65 66        ds         "left-rt="
                 74 2d 72
                 74 3d 00
        ram:31a4 4c              ??         4Ch    L
        ram:31a5 69              ??         69h    i
        ram:31a6 6e              ??         6Eh    n
        ram:31a7 52              ??         52h    R
        ram:31a8 00              ??         00h
        ram:31a9 4c              ??         4Ch    L
        ram:31aa 49              ??         49h    I
        ram:31ab 53              ??         53h    S
        ram:31ac 54              ??         54h    T
        ram:31ad 00              ??         00h
        ram:31ae 6c 69 73        ds         "list length mismatch"
                 74 20 6c
                 65 6e 67
        ram:31c3 4c              ??         4Ch    L
        ram:31c4 6e              ??         6Eh    n
        ram:31c5 52              ??         52h    R
        ram:31c6 00              ??         00h
        ram:31c7 4d              ??         4Dh    M
        ram:31c8 41              ??         41h    A
        ram:31c9 54              ??         54h    T
        ram:31ca 52              ??         52h    R
        ram:31cb 00              ??         00h
        ram:31cc 4d              ??         4Dh    M
        ram:31cd 41              ??         41h    A
        ram:31ce 54              ??         54h    T
        ram:31cf 52              ??         52h    R
        ram:31d0 58              ??         58h    X
        ram:31d1 00              ??         00h
        ram:31d2 4d 65 6d        ds         "Mem cleared"
                 20 63 6c
                 65 61 72
        ram:31de 4d 45 4d        ds         "MEM FREE "
                 20 46 52
                 45 45 20 00
        ram:31e8 6e              ??         6Eh    n
        ram:31e9 00              ??         00h
        ram:31ea 4e              ??         4Eh    N
        ram:31eb 61              ??         61h    a
        ram:31ec 6d              ??         6Dh    m
        ram:31ed 65              ??         65h    e
        ram:31ee 00              ??         00h
        ram:31ef 4e 61 6d        ds         "Name="
                 65 3d 00
        ram:31f5 4e 75 6d        ds         "Number"
                 62 65 72 00
        ram:31fc 4f              ??         4Fh    O
        ram:31fd 4b              ??         4Bh    K
        ram:31fe 00              ??         00h
        ram:31ff 6f 72 64        ds         "order"
                 65 72 00
        ram:3205 50              ??         50h    P
        ram:3206 4f              ??         4Fh    O
        ram:3207 4c              ??         4Ch    L
        ram:3208 59              ??         59h    Y
        ram:3209 00              ??         00h
        ram:320a 50              ??         50h    P
        ram:320b 32              ??         32h    2
        ram:320c 52              ??         52h    R
        ram:320d 65              ??         65h    e
        ram:320e 67              ??         67h    g
        ram:320f 00              ??         00h
        ram:3210 50              ??         50h    P
        ram:3211 33              ??         33h    3
        ram:3212 52              ??         52h    R
        ram:3213 65              ??         65h    e
        ram:3214 67              ??         67h    g
        ram:3215 00              ??         00h
        ram:3216 50              ??         50h    P
        ram:3217 34              ??         34h    4
        ram:3218 52              ??         52h    R
        ram:3219 65              ??         65h    e
        ram:321a 67              ??         67h    g
        ram:321b 00              ??         00h
        ram:321c 50              ??         50h    P
        ram:321d 49              ??         49h    I
        ram:321e 43              ??         43h    C
        ram:321f 20              ??         20h
        ram:3220 00              ??         00h
        ram:3221 50              ??         50h    P
        ram:3222 52              ??         52h    R
        ram:3223 65              ??         65h    e
        ram:3224 67              ??         67h    g
        ram:3225 43              ??         43h    C
        ram:3226 00              ??         00h
        ram:3227 50              ??         50h    P
        ram:3228 52              ??         52h    R
        ram:3229 47              ??         47h    G
        ram:322a 4d              ??         4Dh    M
        ram:322b 00              ??         00h
        ram:322c 50 52 4f        ds         "PROGRAM"
                 47 52 41
                 4d 00
        ram:3234 50              ??         50h    P
        ram:3235 77              ??         77h    w
        ram:3236 72              ??         72h    r
        ram:3237 52              ??         52h    R
        ram:3238 00              ??         00h
        ram:3239 63              ??         63h    c
        ram:323a 6f              ??         6Fh    o
        ram:323b 72              ??         72h    r
        ram:323c 72              ??         72h    r
        ram:323d 00              ??         00h
        ram:323e 52              ??         52h    R
        ram:323f 41              ??         41h    A
        ram:3240 4d              ??         4Dh    M
        ram:3241 00              ??         00h
        ram:3242 52 41 4e        ds         "RANGE"
                 47 45 00
        ram:3248 52              ??         52h    R
        ram:3249 63              ??         63h    c
        ram:324a 6c              ??         6Ch    l
        ram:324b 20              ??         20h
        ram:324c 00              ??         00h
        ram:324d 52              ??         52h    R
        ram:324e 45              ??         45h    E
        ram:324f 41              ??         41h    A
        ram:3250 4c              ??         4Ch    L
        ram:3251 00              ??         00h
        ram:3252 52              ??         52h    R
        ram:3253 4f              ??         4Fh    O
        ram:3254 4d              ??         4Dh    M
        ram:3255 00              ??         00h
        ram:3256 52              ??         52h    R
        ram:3257 4f              ??         4Fh    O
        ram:3258 4f              ??         4Fh    O
        ram:3259 54              ??         54h    T
        ram:325a 00              ??         00h
        ram:325b 45 6e 74        ds         "Enter self test?     9.0"
                 65 72 20
                 73 65 6c
        ram:3274 00              ??         00h
        ram:3275 53 49 4d        ds         "SIMULT"
                 55 4c 54 00
        ram:327c 53              ??         53h    S
        ram:327d 54              ??         54h    T
        ram:327e 41              ??         41h    A
        ram:327f 54              ??         54h    T
        ram:3280 00              ??         00h
        ram:3281 53              ??         53h    S
        ram:3282 74              ??         74h    t
        ram:3283 6f              ??         6Fh    o
        ram:3284 20              ??         20h
        ram:3285 00              ??         00h
        ram:3286 53              ??         53h    S
        ram:3287 54              ??         54h    T
        ram:3288 52              ??         52h    R
        ram:3289 4e              ??         4Eh    N
        ram:328a 00              ??         00h
        ram:328b 53              ??         53h    S
        ram:328c 54              ??         54h    T
        ram:328d 52              ??         52h    R
        ram:328e 4e              ??         4Eh    N
        ram:328f 47              ??         47h    G
        ram:3290 00              ??         00h
        ram:3291 53              ??         53h    S
        ram:3292 78              ??         78h    x
        ram:3293 00              ??         00h
        ram:3294 74              ??         74h    t
        ram:3295 3d              ??         3Dh    =
        ram:3296 00              ??         00h
        ram:3297 74              ??         74h    t
        ram:3298 4d              ??         4Dh    M
        ram:3299 61              ??         61h    a
        ram:329a 78              ??         78h    x
        ram:329b 00              ??         00h
        ram:329c 74              ??         74h    t
        ram:329d 4d              ??         4Dh    M
        ram:329e 69              ??         69h    i
        ram:329f 6e              ??         6Eh    n
        ram:32a0 00              ??         00h
        ram:32a1 74              ??         74h    t
        ram:32a2 6f              ??         6Fh    o
        ram:32a3 6c              ??         6Ch    l
        ram:32a4 00              ??         00h
        ram:32a5 54 4f 4c        ds         "TOLERANCE"
                 45 52 41
                 4e 43 45 00
        ram:32af 74              ??         74h    t
        ram:32b0 50              ??         50h    P
        ram:32b1 6c              ??         6Ch    l
        ram:32b2 6f              ??         6Fh    o
        ram:32b3 74              ??         74h    t
        ram:32b4 00              ??         00h
        ram:32b5 74 53 74        ds         "tStep"
                 65 70 00
        ram:32bb 56 61 6c        ds         "Value="
                 75 65 3d 00
        ram:32c2 56 41 52        ds         "VARIABLES"
                 49 41 42
                 4c 45 53 00
        ram:32cc 56              ??         56h    V
        ram:32cd 45              ??         45h    E
        ram:32ce 43              ??         43h    C
        ram:32cf 54              ??         54h    T
        ram:32d0 00              ??         00h
        ram:32d1 56 45 43        ds         "VECTOR"
                 54 4f 52 00
        ram:32d8 56 45 43        ds         "VECTR"
                 54 52 00
        ram:32de 57 41 52        ds         "WARNING"
                 4e 49 4e
                 47 00
        ram:32e6 78              ??         78h    x
        ram:32e7 3d              ??         3Dh    =
        ram:32e8 00              ??         00h
        ram:32e9 78              ??         78h    x
        ram:32ea 46              ??         46h    F
        ram:32eb 61              ??         61h    a
        ram:32ec 63              ??         63h    c
        ram:32ed 74              ??         74h    t
        ram:32ee 00              ??         00h
        ram:32ef 78 6c 69        ds         "xlist"
                 73 74 00
        ram:32f5 78              ??         78h    x
        ram:32f6 4d              ??         4Dh    M
        ram:32f7 61              ??         61h    a
        ram:32f8 78              ??         78h    x
        ram:32f9 00              ??         00h
        ram:32fa 78              ??         78h    x
        ram:32fb 4d              ??         4Dh    M
        ram:32fc 69              ??         69h    i
        ram:32fd 6e              ??         6Eh    n
        ram:32fe 00              ??         00h
        ram:32ff 78              ??         78h    x
        ram:3300 53              ??         53h    S
        ram:3301 63              ??         63h    c
        ram:3302 6c              ??         6Ch    l
        ram:3303 00              ??         00h
        ram:3304 cb              ??         CBh
        ram:3305 00              ??         00h
        ram:3306 79              ??         79h    y
        ram:3307 46              ??         46h    F
        ram:3308 61              ??         61h    a
        ram:3309 63              ??         63h    c
        ram:330a 74              ??         74h    t
        ram:330b 00              ??         00h
        ram:330c 59              ??         59h    Y
        ram:330d 49              ??         49h    I
        ram:330e 43              ??         43h    C
        ram:330f 50              ??         50h    P
        ram:3310 54              ??         54h    T
        ram:3311 00              ??         00h
        ram:3312 79              ??         79h    y
        ram:3313 6c              ??         6Ch    l
        ram:3314 69              ??         69h    i
        ram:3315 73              ??         73h    s
        ram:3316 74              ??         74h    t
        ram:3317 00              ??         00h
        ram:3318 79              ??         79h    y
        ram:3319 4d              ??         4Dh    M
        ram:331a 61              ??         61h    a
        ram:331b 78              ??         78h    x
        ram:331c 00              ??         00h
        ram:331d 79              ??         79h    y
        ram:331e 4d              ??         4Dh    M
        ram:331f 69              ??         69h    i
        ram:3320 6e              ??         6Eh    n
        ram:3321 00              ??         00h
        ram:3322 79              ??         79h    y
        ram:3323 53              ??         53h    S
        ram:3324 63              ??         63h    c
        ram:3325 6c              ??         6Ch    l
        ram:3326 00              ??         00h
        ram:3327 5a 4f 4f        ds         "ZOOM FACTORS"
                 4d 20 46
                 41 43 54
        ram:3334 c1              ??         C1h
        ram:3335 3d              ??         3Dh    =
        ram:3336 00              ??         00h
        ram:3337 c1              ??         C1h
        ram:3338 4d              ??         4Dh    M
        ram:3339 61              ??         61h    a
        ram:333a 78              ??         78h    x
        ram:333b 00              ??         00h
        ram:333c c1              ??         C1h
        ram:333d 4d              ??         4Dh    M
        ram:333e 69              ??         69h    i
        ram:333f 6e              ??         6Eh    n
        ram:3340 00              ??         00h
        ram:3341 c1              ??         C1h
        ram:3342 53              ??         53h    S
        ram:3343 74              ??         74h    t
        ram:3344 65              ??         65h    e
        ram:3345 70              ??         70h    p
        ram:3346 00              ??         00h
        ram:3347 c6              ??         C6h
        ram:3348 78              ??         78h    x
        ram:3349 00              ??         00h
        ram:334a c6              ??         C6h
        ram:334b 78              ??         78h    x
        ram:334c 12              ??         12h
        ram:334d 00              ??         00h
        ram:334e c7              ??         C7h
        ram:334f 78              ??         78h    x
        ram:3350 00              ??         00h
        ram:3351 08              ??         08h
        ram:3352 66              ??         66h    f
        ram:3353 28              ??         28h    (
        ram:3354 78              ??         78h    x
        ram:3355 29              ??         29h    )
        ram:3356 3d              ??         3Dh    =
        ram:3357 00              ??         00h
        ram:3358 2c              ??         2Ch    ,
        ram:3359 81              ??         81h
        ram:335a 78              ??         78h    x
        ram:335b 81              ??         81h
        ram:335c 00              ??         00h
        ram:335d bf              ??         BFh
        ram:335e 00              ??         00h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             noreturn undefined FUN_ram_335f()
             undefined         A:1            <RETURN>
             undefined1        Stack[0x1]:1   local_res1                              XREF[1]:     ram:3368(*)
             undefined1        Stack[0x0]:1   local_res0                              XREF[2]:     ram:336a(*),
                                                                                                   ram:336d(*)
                             FUN_ram_335f                                    XREF[22]:    thunk_FUN_ram_335f:3e2d(T),
                                                                                          thunk_FUN_ram_335f:3e2d(c),
                                                                                          thunk_FUN_ram_335f:3e33(T),
                                                                                          thunk_FUN_ram_335f:3e33(c),
                                                                                          thunk_FUN_ram_335f:3e39(T),
                                                                                          thunk_FUN_ram_335f:3e39(c),
                                                                                          thunk_FUN_ram_335f:3e3f(T),
                                                                                          thunk_FUN_ram_335f:3e3f(c),
                                                                                          thunk_FUN_ram_335f:3e4b(T),
                                                                                          thunk_FUN_ram_335f:3e4b(c),
                                                                                          thunk_FUN_ram_335f:3e51(T),
                                                                                          thunk_FUN_ram_335f:3e51(c),
                                                                                          thunk_FUN_ram_335f:3e63(T),
                                                                                          thunk_FUN_ram_335f:3e63(c),
                                                                                          thunk_FUN_ram_335f:3e6f(T),
                                                                                          thunk_FUN_ram_335f:3e6f(c),
                                                                                          thunk_FUN_ram_335f:3e75(T),
                                                                                          thunk_FUN_ram_335f:3e75(c),
                                                                                          thunk_FUN_ram_335f:3e7b(T),
                                                                                          thunk_FUN_ram_335f:3e7b(c), [more]
        ram:335f e5              PUSH       HL
        ram:3360 e5              PUSH       HL
        ram:3361 f5              PUSH       AF
        ram:3362 d5              PUSH       DE
        ram:3363 e5              PUSH       HL
        ram:3364 21 0b 00        LD         HL,0xb
        ram:3367 39              ADD        HL,SP
        ram:3368 56              LD         D,(HL=>local_res1)
        ram:3369 2b              DEC        HL
        ram:336a 5e              LD         E,(HL=>local_res0)
        ram:336b db 05           IN         A,(DAT_io_0005)
        ram:336d 77              LD         (HL=>local_res0),A
        ram:336e 2b              DEC        HL
        ram:336f 36 33           LD         (HL),0x33
        ram:3371 2b              DEC        HL
        ram:3372 36 84           LD         (HL),0x84
        ram:3374 2b              DEC        HL
        ram:3375 2b              DEC        HL
        ram:3376 1a              LD         A,(DE)
        ram:3377 13              INC        DE
        ram:3378 77              LD         (HL),A
        ram:3379 23              INC        HL
        ram:337a 1a              LD         A,(DE)
        ram:337b 13              INC        DE
        ram:337c 77              LD         (HL),A
        ram:337d 1a              LD         A,(DE)
        ram:337e d3 05           OUT        (DAT_io_0005),A
        ram:3380 e1              POP        HL
        ram:3381 d1              POP        DE
        ram:3382 f1              POP        AF
        ram:3383 c9              RET
        ram:3384 e3              ??         E3h
        ram:3385 f5              ??         F5h
        ram:3386 7d              ??         7Dh    }
        ram:3387 d3              ??         D3h
        ram:3388 05              ??         05h
        ram:3389 f1              ??         F1h
        ram:338a e1              ??         E1h
        ram:338b c9              ??         C9h
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined FUN_ram_338c()
             undefined         A:1            <RETURN>
             undefined2        Stack[0x0]:2   local_res0                              XREF[2]:     ram:338c(*),
                                                                                                   ram:3399(*)
                             FUN_ram_338c                                    XREF[13]:    ram:3f05(c), ram:3f0b(c),
                                                                                          ram:3f17(c), ram:3f1d(c),
                                                                                          ram:3f29(c), ram:3f2f(c),
                                                                                          ram:3f5f(c), ram:3f95(c),
                                                                                          ram:3f9b(c), ram:3fa1(c),
                                                                                          ram:3fa7(c), ram:3fad(c),
                                                                                          ram:3fb3(c)
        ram:338c e3              EX         (SP=>local_res0),HL
        ram:338d f5              PUSH       AF
        ram:338e d5              PUSH       DE
        ram:338f 5e              LD         E,(HL)
        ram:3390 23              INC        HL
        ram:3391 56              LD         D,(HL)
        ram:3392 23              INC        HL
        ram:3393 7e              LD         A,(HL)
        ram:3394 d3 05           OUT        (DAT_io_0005),A
        ram:3396 eb              EX         DE,HL
        ram:3397 d1              POP        DE
        ram:3398 f1              POP        AF
        ram:3399 e3              EX         (SP=>local_res0),HL
        ram:339a c9              RET
        ram:339b cd              ??         CDh
        ram:339c 5f              ??         5Fh    _
        ram:339d 33              ??         33h    3
        ram:339e 41              ??         41h    A
        ram:339f 7d              ??         7Dh    }
        ram:33a0 06              ??         06h
        ram:33a1 cd              ??         CDh
        ram:33a2 5f              ??         5Fh    _
        ram:33a3 33              ??         33h    3
        ram:33a4 84              ??         84h
        ram:33a5 7d              ??         7Dh    }
        ram:33a6 06              ??         06h
        ram:33a7 cd              ??         CDh
        ram:33a8 5f              ??         5Fh    _
        ram:33a9 33              ??         33h    3
        ram:33aa 81              ??         81h
        ram:33ab 43              ??         43h    C
        ram:33ac 07              ??         07h
        ram:33ad cd              ??         CDh
        ram:33ae 5f              ??         5Fh    _
        ram:33af 33              ??         33h    3
        ram:33b0 1e              ??         1Eh
        ram:33b1 49              ??         49h    I
        ram:33b2 07              ??         07h
        ram:33b3 cd              ??         CDh
        ram:33b4 5f              ??         5Fh    _
        ram:33b5 33              ??         33h    3
        ram:33b6 65              ??         65h    e
        ram:33b7 67              ??         67h    g
        ram:33b8 06              ??         06h
        ram:33b9 cd              ??         CDh
        ram:33ba 5f              ??         5Fh    _
        ram:33bb 33              ??         33h    3
        ram:33bc 12              ??         12h
        ram:33bd 69              ??         69h    i
        ram:33be 06              ??         06h
        ram:33bf cd              ??         CDh
        ram:33c0 5f              ??         5Fh    _
        ram:33c1 33              ??         33h    3
        ram:33c2 5c              ??         5Ch    \
        ram:33c3 69              ??         69h    i
        ram:33c4 06              ??         06h
        ram:33c5 cd              ??         CDh
        ram:33c6 5f              ??         5Fh    _
        ram:33c7 33              ??         33h    3
        ram:33c8 26              ??         26h    &
        ram:33c9 6d              ??         6Dh    m
        ram:33ca 06              ??         06h
        ram:33cb cd              ??         CDh
        ram:33cc 5f              ??         5Fh    _
        ram:33cd 33              ??         33h    3
        ram:33ce d6              ??         D6h
        ram:33cf 41              ??         41h    A
        ram:33d0 07              ??         07h
        ram:33d1 cd              ??         CDh
        ram:33d2 5f              ??         5Fh    _
        ram:33d3 33              ??         33h    3
        ram:33d4 36              ??         36h    6
        ram:33d5 69              ??         69h    i
        ram:33d6 07              ??         07h
        ram:33d7 cd              ??         CDh
        ram:33d8 5f              ??         5Fh    _
        ram:33d9 33              ??         33h    3
        ram:33da 78              ??         78h    x
        ram:33db 7d              ??         7Dh    }
        ram:33dc 06              ??         06h
        ram:33dd cd              ??         CDh
        ram:33de 5f              ??         5Fh    _
        ram:33df 33              ??         33h    3
        ram:33e0 22              ??         22h    "
        ram:33e1 52              ??         52h    R
        ram:33e2 07              ??         07h
        ram:33e3 cd              ??         CDh
        ram:33e4 5f              ??         5Fh    _
        ram:33e5 33              ??         33h    3
        ram:33e6 60              ??         60h    `
        ram:33e7 54              ??         54h    T
        ram:33e8 07              ??         07h
        ram:33e9 cd              ??         CDh
        ram:33ea 5f              ??         5Fh    _
        ram:33eb 33              ??         33h    3
        ram:33ec 5f              ??         5Fh    _
        ram:33ed 77              ??         77h    w
        ram:33ee 06              ??         06h
        ram:33ef cd              ??         CDh
        ram:33f0 5f              ??         5Fh    _
        ram:33f1 33              ??         33h    3
        ram:33f2 2b              ??         2Bh    +
        ram:33f3 4b              ??         4Bh    K
        ram:33f4 07              ??         07h
        ram:33f5 cd              ??         CDh
        ram:33f6 5f              ??         5Fh    _
        ram:33f7 33              ??         33h    3
        ram:33f8 d6              ??         D6h
        ram:33f9 5d              ??         5Dh    ]
        ram:33fa 06              ??         06h
        ram:33fb cd              ??         CDh
        ram:33fc 5f              ??         5Fh    _
        ram:33fd 33              ??         33h    3
        ram:33fe 09              ??         09h
        ram:33ff 55              ??         55h    U
        ram:3400 06              ??         06h
        ram:3401 cd              ??         CDh
        ram:3402 5f              ??         5Fh    _
        ram:3403 33              ??         33h    3
        ram:3404 f9              ??         F9h
        ram:3405 56              ??         56h    V
        ram:3406 06              ??         06h
        ram:3407 cd              ??         CDh
        ram:3408 5f              ??         5Fh    _
        ram:3409 33              ??         33h    3
        ram:340a d3              ??         D3h
        ram:340b 57              ??         57h    W
        ram:340c 06              ??         06h
        ram:340d cd              ??         CDh
        ram:340e 5f              ??         5Fh    _
        ram:340f 33              ??         33h    3
        ram:3410 d6              ??         D6h
        ram:3411 57              ??         57h    W
        ram:3412 06              ??         06h
        ram:3413 cd              ??         CDh
        ram:3414 8c              ??         8Ch
        ram:3415 33              ??         33h    3
        ram:3416 b2              ??         B2h
        ram:3417 58              ??         58h    X
        ram:3418 06              ??         06h
        ram:3419 cd              ??         CDh
        ram:341a 5f              ??         5Fh    _
        ram:341b 33              ??         33h    3
        ram:341c b8              ??         B8h
        ram:341d 54              ??         54h    T
        ram:341e 06              ??         06h
        ram:341f cd              ??         CDh
        ram:3420 5f              ??         5Fh    _
        ram:3421 33              ??         33h    3
        ram:3422 b3              ??         B3h
        ram:3423 55              ??         55h    U
        ram:3424 06              ??         06h
        ram:3425 cd              ??         CDh
        ram:3426 5f              ??         5Fh    _
        ram:3427 33              ??         33h    3
        ram:3428 96              ??         96h
        ram:3429 55              ??         55h    U
        ram:342a 06              ??         06h
        ram:342b cd              ??         CDh
        ram:342c 5f              ??         5Fh    _
        ram:342d 33              ??         33h    3
        ram:342e 22              ??         22h    "
        ram:342f 59              ??         59h    Y
        ram:3430 07              ??         07h
        ram:3431 cd              ??         CDh
        ram:3432 5f              ??         5Fh    _
        ram:3433 33              ??         33h    3
        ram:3434 7f              ??         7Fh    
        ram:3435 56              ??         56h    V
        ram:3436 06              ??         06h
        ram:3437 cd              ??         CDh
        ram:3438 5f              ??         5Fh    _
        ram:3439 33              ??         33h    3
        ram:343a 43              ??         43h    C
        ram:343b 4e              ??         4Eh    N
        ram:343c 06              ??         06h
        ram:343d cd              ??         CDh
        ram:343e 5f              ??         5Fh    _
        ram:343f 33              ??         33h    3
        ram:3440 41              ??         41h    A
        ram:3441 45              ??         45h    E
        ram:3442 06              ??         06h
        ram:3443 cd              ??         CDh
        ram:3444 5f              ??         5Fh    _
        ram:3445 33              ??         33h    3
        ram:3446 81              ??         81h
        ram:3447 45              ??         45h    E
        ram:3448 06              ??         06h
        ram:3449 cd              ??         CDh
        ram:344a 5f              ??         5Fh    _
        ram:344b 33              ??         33h    3
        ram:344c c2              ??         C2h
        ram:344d 45              ??         45h    E
        ram:344e 06              ??         06h
        ram:344f cd              ??         CDh
        ram:3450 5f              ??         5Fh    _
        ram:3451 33              ??         33h    3
        ram:3452 cf              ??         CFh
        ram:3453 45              ??         45h    E
        ram:3454 06              ??         06h
        ram:3455 cd              ??         CDh
        ram:3456 5f              ??         5Fh    _
        ram:3457 33              ??         33h    3
        ram:3458 eb              ??         EBh
        ram:3459 45              ??         45h    E
        ram:345a 06              ??         06h
        ram:345b cd              ??         CDh
        ram:345c 5f              ??         5Fh    _
        ram:345d 33              ??         33h    3
        ram:345e 77              ??         77h    w
        ram:345f 46              ??         46h    F
        ram:3460 06              ??         06h
        ram:3461 cd              ??         CDh
        ram:3462 5f              ??         5Fh    _
        ram:3463 33              ??         33h    3
        ram:3464 42              ??         42h    B
        ram:3465 49              ??         49h    I
        ram:3466 06              ??         06h
        ram:3467 cd              ??         CDh
        ram:3468 5f              ??         5Fh    _
        ram:3469 33              ??         33h    3
        ram:346a a2              ??         A2h
        ram:346b 49              ??         49h    I
        ram:346c 06              ??         06h
        ram:346d cd              ??         CDh
        ram:346e 5f              ??         5Fh    _
        ram:346f 33              ??         33h    3
        ram:3470 3d              ??         3Dh    =
        ram:3471 55              ??         55h    U
        ram:3472 06              ??         06h
        ram:3473 cd              ??         CDh
        ram:3474 5f              ??         5Fh    _
        ram:3475 33              ??         33h    3
        ram:3476 f5              ??         F5h
        ram:3477 56              ??         56h    V
        ram:3478 06              ??         06h
        ram:3479 cd              ??         CDh
        ram:347a 5f              ??         5Fh    _
        ram:347b 33              ??         33h    3
        ram:347c 51              ??         51h    Q
        ram:347d 55              ??         55h    U
        ram:347e 06              ??         06h
        ram:347f cd              ??         CDh
        ram:3480 5f              ??         5Fh    _
        ram:3481 33              ??         33h    3
        ram:3482 ee              ??         EEh
        ram:3483 56              ??         56h    V
        ram:3484 06              ??         06h
        ram:3485 cd              ??         CDh
        ram:3486 5f              ??         5Fh    _
        ram:3487 33              ??         33h    3
        ram:3488 6f              ??         6Fh    o
        ram:3489 65              ??         65h    e
        ram:348a 06              ??         06h
        ram:348b cd              ??         CDh
        ram:348c 5f              ??         5Fh    _
        ram:348d 33              ??         33h    3
        ram:348e e9              ??         E9h
        ram:348f 7d              ??         7Dh    }
        ram:3490 06              ??         06h
        ram:3491 cd              ??         CDh
        ram:3492 8c              ??         8Ch
        ram:3493 33              ??         33h    3
        ram:3494 8f              ??         8Fh
        ram:3495 5b              ??         5Bh    [
        ram:3496 06              ??         06h
        ram:3497 cd              ??         CDh
        ram:3498 5f              ??         5Fh    _
        ram:3499 33              ??         33h    3
        ram:349a 87              ??         87h
        ram:349b 65              ??         65h    e
        ram:349c 06              ??         06h
        ram:349d cd              ??         CDh
        ram:349e 5f              ??         5Fh    _
        ram:349f 33              ??         33h    3
        ram:34a0 c5              ??         C5h
        ram:34a1 7d              ??         7Dh    }
        ram:34a2 06              ??         06h
        ram:34a3 cd              ??         CDh
        ram:34a4 5f              ??         5Fh    _
        ram:34a5 33              ??         33h    3
        ram:34a6 c4              ??         C4h
        ram:34a7 56              ??         56h    V
        ram:34a8 06              ??         06h
        ram:34a9 cd              ??         CDh
        ram:34aa 5f              ??         5Fh    _
        ram:34ab 33              ??         33h    3
        ram:34ac 28              ??         28h    (
        ram:34ad 77              ??         77h    w
        ram:34ae 06              ??         06h
        ram:34af cd              ??         CDh
        ram:34b0 5f              ??         5Fh    _
        ram:34b1 33              ??         33h    3
        ram:34b2 e3              ??         E3h
        ram:34b3 58              ??         58h    X
        ram:34b4 07              ??         07h
        ram:34b5 cd              ??         CDh
        ram:34b6 5f              ??         5Fh    _
        ram:34b7 33              ??         33h    3
        ram:34b8 af              ??         AFh
        ram:34b9 58              ??         58h    X
        ram:34ba 06              ??         06h
        ram:34bb cd              ??         CDh
        ram:34bc 5f              ??         5Fh    _
        ram:34bd 33              ??         33h    3
        ram:34be 65              ??         65h    e
        ram:34bf 45              ??         45h    E
        ram:34c0 06              ??         06h
        ram:34c1 cd              ??         CDh
        ram:34c2 8c              ??         8Ch
        ram:34c3 33              ??         33h    3
        ram:34c4 93              ??         93h
        ram:34c5 62              ??         62h    b
        ram:34c6 06              ??         06h
        ram:34c7 cd              ??         CDh
        ram:34c8 5f              ??         5Fh    _
        ram:34c9 33              ??         33h    3
        ram:34ca 84              ??         84h
        ram:34cb 41              ??         41h    A
        ram:34cc 07              ??         07h
        ram:34cd cd              ??         CDh
        ram:34ce 8c              ??         8Ch
        ram:34cf 33              ??         33h    3
        ram:34d0 fc              ??         FCh
        ram:34d1 6d              ??         6Dh    m
        ram:34d2 05              ??         05h
        ram:34d3 cd              ??         CDh
        ram:34d4 5f              ??         5Fh    _
        ram:34d5 33              ??         33h    3
        ram:34d6 17              ??         17h
        ram:34d7 7c              ??         7Ch    |
        ram:34d8 04              ??         04h
        ram:34d9 cd              ??         CDh
        ram:34da 5f              ??         5Fh    _
        ram:34db 33              ??         33h    3
        ram:34dc ff              ??         FFh
        ram:34dd 57              ??         57h    W
        ram:34de 06              ??         06h
        ram:34df cd              ??         CDh
        ram:34e0 5f              ??         5Fh    _
        ram:34e1 33              ??         33h    3
        ram:34e2 26              ??         26h    &
        ram:34e3 44              ??         44h    D
        ram:34e4 05              ??         05h
        ram:34e5 cd              ??         CDh
        ram:34e6 5f              ??         5Fh    _
        ram:34e7 33              ??         33h    3
        ram:34e8 f6              ??         F6h
        ram:34e9 47              ??         47h    G
        ram:34ea 05              ??         05h
        ram:34eb cd              ??         CDh
        ram:34ec 5f              ??         5Fh    _
        ram:34ed 33              ??         33h    3
        ram:34ee c4              ??         C4h
        ram:34ef 47              ??         47h    G
        ram:34f0 05              ??         05h
        ram:34f1 cd              ??         CDh
        ram:34f2 5f              ??         5Fh    _
        ram:34f3 33              ??         33h    3
        ram:34f4 d1              ??         D1h
        ram:34f5 6b              ??         6Bh    k
        ram:34f6 04              ??         04h
        ram:34f7 cd              ??         CDh
        ram:34f8 5f              ??         5Fh    _
        ram:34f9 33              ??         33h    3
        ram:34fa 8c              ??         8Ch
        ram:34fb 64              ??         64h    d
        ram:34fc 06              ??         06h
        ram:34fd cd              ??         CDh
        ram:34fe 5f              ??         5Fh    _
        ram:34ff 33              ??         33h    3
        ram:3500 16              ??         16h
        ram:3501 64              ??         64h    d
        ram:3502 06              ??         06h
        ram:3503 cd              ??         CDh
        ram:3504 8c              ??         8Ch
        ram:3505 33              ??         33h    3
        ram:3506 b5              ??         B5h
        ram:3507 58              ??         58h    X
        ram:3508 06              ??         06h
        ram:3509 cd              ??         CDh
        ram:350a 5f              ??         5Fh    _
        ram:350b 33              ??         33h    3
        ram:350c 8f              ??         8Fh
        ram:350d 7b              ??         7Bh    {
        ram:350e 06              ??         06h
        ram:350f cd              ??         CDh
        ram:3510 5f              ??         5Fh    _
        ram:3511 33              ??         33h    3
        ram:3512 62              ??         62h    b
        ram:3513 7c              ??         7Ch    |
        ram:3514 06              ??         06h
        ram:3515 cd              ??         CDh
        ram:3516 8c              ??         8Ch
        ram:3517 33              ??         33h    3
        ram:3518 c0              ??         C0h
        ram:3519 54              ??         54h    T
        ram:351a 06              ??         06h
        ram:351b cd              ??         CDh
        ram:351c 5f              ??         5Fh    _
        ram:351d 33              ??         33h    3
        ram:351e 68              ??         68h    h
        ram:351f 55              ??         55h    U
        ram:3520 06              ??         06h
        ram:3521 cd              ??         CDh
        ram:3522 5f              ??         5Fh    _
        ram:3523 33              ??         33h    3
        ram:3524 da              ??         DAh
        ram:3525 7d              ??         7Dh    }
        ram:3526 06              ??         06h
        ram:3527 cd              ??         CDh
        ram:3528 5f              ??         5Fh    _
        ram:3529 33              ??         33h    3
        ram:352a be              ??         BEh
        ram:352b 57              ??         57h    W
        ram:352c 06              ??         06h
        ram:352d cd              ??         CDh
        ram:352e 5f              ??         5Fh    _
        ram:352f 33              ??         33h    3
        ram:3530 03              ??         03h
        ram:3531 40              ??         40h    @
        ram:3532 05              ??         05h
        ram:3533 cd              ??         CDh
        ram:3534 5f              ??         5Fh    _
        ram:3535 33              ??         33h    3
        ram:3536 00              ??         00h
        ram:3537 40              ??         40h    @
        ram:3538 05              ??         05h
        ram:3539 cd              ??         CDh
        ram:353a 8c              ??         8Ch
        ram:353b 33              ??         33h    3
        ram:353c 88              ??         88h
        ram:353d 62              ??         62h    b
        ram:353e 06              ??         06h
        ram:353f cd              ??         CDh
        ram:3540 8c              ??         8Ch
        ram:3541 33              ??         33h    3
        ram:3542 8e              ??         8Eh
        ram:3543 62              ??         62h    b
        ram:3544 06              ??         06h
        ram:3545 cd              ??         CDh
        ram:3546 5f              ??         5Fh    _
        ram:3547 33              ??         33h    3
        ram:3548 36              ??         36h    6
        ram:3549 7f              ??         7Fh    
        ram:354a 06              ??         06h
        ram:354b cd              ??         CDh
        ram:354c 5f              ??         5Fh    _
        ram:354d 33              ??         33h    3
        ram:354e 3f              ??         3Fh    ?
        ram:354f 63              ??         63h    c
        ram:3550 06              ??         06h
        ram:3551 cd              ??         CDh
        ram:3552 5f              ??         5Fh    _
        ram:3553 33              ??         33h    3
        ram:3554 41              ??         41h    A
        ram:3555 54              ??         54h    T
        ram:3556 06              ??         06h
        ram:3557 cd              ??         CDh
        ram:3558 8c              ??         8Ch
        ram:3559 33              ??         33h    3
        ram:355a a0              ??         A0h
        ram:355b 56              ??         56h    V
        ram:355c 04              ??         04h
        ram:355d cd              ??         CDh
        ram:355e 5f              ??         5Fh    _
        ram:355f 33              ??         33h    3
        ram:3560 3f              ??         3Fh    ?
        ram:3561 60              ??         60h    `
        ram:3562 04              ??         04h
        ram:3563 cd              ??         CDh
        ram:3564 5f              ??         5Fh    _
        ram:3565 33              ??         33h    3
        ram:3566 af              ??         AFh
        ram:3567 65              ??         65h    e
        ram:3568 04              ??         04h
        ram:3569 cd              ??         CDh
        ram:356a 5f              ??         5Fh    _
        ram:356b 33              ??         33h    3
        ram:356c b0              ??         B0h
        ram:356d 4e              ??         4Eh    N
        ram:356e 04              ??         04h
        ram:356f cd              ??         CDh
        ram:3570 5f              ??         5Fh    _
        ram:3571 33              ??         33h    3
        ram:3572 e8              ??         E8h
        ram:3573 6a              ??         6Ah    j
        ram:3574 05              ??         05h
        ram:3575 cd              ??         CDh
        ram:3576 5f              ??         5Fh    _
        ram:3577 33              ??         33h    3
        ram:3578 58              ??         58h    X
        ram:3579 43              ??         43h    C
        ram:357a 05              ??         05h
        ram:357b cd              ??         CDh
        ram:357c 5f              ??         5Fh    _
        ram:357d 33              ??         33h    3
        ram:357e 29              ??         29h    )
        ram:357f 49              ??         49h    I
        ram:3580 06              ??         06h
        ram:3581 cd              ??         CDh
        ram:3582 5f              ??         5Fh    _
        ram:3583 33              ??         33h    3
        ram:3584 ea              ??         EAh
        ram:3585 45              ??         45h    E
        ram:3586 06              ??         06h
        ram:3587 cd              ??         CDh
        ram:3588 5f              ??         5Fh    _
        ram:3589 33              ??         33h    3
        ram:358a c8              ??         C8h
        ram:358b 6c              ??         6Ch    l
        ram:358c 07              ??         07h
        ram:358d cd              ??         CDh
        ram:358e 5f              ??         5Fh    _
        ram:358f 33              ??         33h    3
        ram:3590 a9              ??         A9h
        ram:3591 6c              ??         6Ch    l
        ram:3592 07              ??         07h
        ram:3593 cd              ??         CDh
        ram:3594 5f              ??         5Fh    _
        ram:3595 33              ??         33h    3
        ram:3596 15              ??         15h
        ram:3597 4b              ??         4Bh    K
        ram:3598 07              ??         07h
        ram:3599 cd              ??         CDh
        ram:359a 5f              ??         5Fh    _
        ram:359b 33              ??         33h    3
        ram:359c eb              ??         EBh
        ram:359d 4a              ??         4Ah    J
        ram:359e 07              ??         07h
        ram:359f cd              ??         CDh
        ram:35a0 5f              ??         5Fh    _
        ram:35a1 33              ??         33h    3
        ram:35a2 f9              ??         F9h
        ram:35a3 4a              ??         4Ah    J
        ram:35a4 07              ??         07h
        ram:35a5 cd              ??         CDh
        ram:35a6 5f              ??         5Fh    _
        ram:35a7 33              ??         33h    3
        ram:35a8 07              ??         07h
        ram:35a9 4b              ??         4Bh    K
        ram:35aa 07              ??         07h
        ram:35ab cd              ??         CDh
        ram:35ac 5f              ??         5Fh    _
        ram:35ad 33              ??         33h    3
        ram:35ae ef              ??         EFh
        ram:35af 6c              ??         6Ch    l
        ram:35b0 07              ??         07h
        ram:35b1 cd              ??         CDh
        ram:35b2 5f              ??         5Fh    _
        ram:35b3 33              ??         33h    3
        ram:35b4 3a              ??         3Ah    :
        ram:35b5 59              ??         59h    Y
        ram:35b6 07              ??         07h
        ram:35b7 cd              ??         CDh
        ram:35b8 5f              ??         5Fh    _
        ram:35b9 33              ??         33h    3
        ram:35ba 36              ??         36h    6
        ram:35bb 6c              ??         6Ch    l
        ram:35bc 04              ??         04h
        ram:35bd cd              ??         CDh
        ram:35be 5f              ??         5Fh    _
        ram:35bf 33              ??         33h    3
        ram:35c0 0d              ??         0Dh
        ram:35c1 6d              ??         6Dh    m
        ram:35c2 07              ??         07h
        ram:35c3 cd              ??         CDh
        ram:35c4 5f              ??         5Fh    _
        ram:35c5 33              ??         33h    3
        ram:35c6 39              ??         39h    9
        ram:35c7 5e              ??         5Eh    ^
        ram:35c8 07              ??         07h
        ram:35c9 cd              ??         CDh
        ram:35ca 5f              ??         5Fh    _
        ram:35cb 33              ??         33h    3
        ram:35cc 49              ??         49h    I
        ram:35cd 6c              ??         6Ch    l
        ram:35ce 04              ??         04h
        ram:35cf cd              ??         CDh
        ram:35d0 5f              ??         5Fh    _
        ram:35d1 33              ??         33h    3
        ram:35d2 a3              ??         A3h
        ram:35d3 7c              ??         7Ch    |
        ram:35d4 06              ??         06h
        ram:35d5 cd              ??         CDh
        ram:35d6 5f              ??         5Fh    _
        ram:35d7 33              ??         33h    3
        ram:35d8 ef              ??         EFh
        ram:35d9 6b              ??         6Bh    k
        ram:35da 05              ??         05h
        ram:35db cd              ??         CDh
        ram:35dc 5f              ??         5Fh    _
        ram:35dd 33              ??         33h    3
        ram:35de b2              ??         B2h
        ram:35df 5a              ??         5Ah    Z
        ram:35e0 03              ??         03h
        ram:35e1 cd              ??         CDh
        ram:35e2 5f              ??         5Fh    _
        ram:35e3 33              ??         33h    3
        ram:35e4 b8              ??         B8h
        ram:35e5 5a              ??         5Ah    Z
        ram:35e6 03              ??         03h
        ram:35e7 cd              ??         CDh
        ram:35e8 5f              ??         5Fh    _
        ram:35e9 33              ??         33h    3
        ram:35ea d8              ??         D8h
        ram:35eb 5a              ??         5Ah    Z
        ram:35ec 03              ??         03h
        ram:35ed cd              ??         CDh
        ram:35ee 5f              ??         5Fh    _
        ram:35ef 33              ??         33h    3
        ram:35f0 ff              ??         FFh
        ram:35f1 5a              ??         5Ah    Z
        ram:35f2 03              ??         03h
        ram:35f3 cd              ??         CDh
        ram:35f4 5f              ??         5Fh    _
        ram:35f5 33              ??         33h    3
        ram:35f6 66              ??         66h    f
        ram:35f7 5b              ??         5Bh    [
        ram:35f8 03              ??         03h
        ram:35f9 cd              ??         CDh
        ram:35fa 5f              ??         5Fh    _
        ram:35fb 33              ??         33h    3
        ram:35fc 85              ??         85h
        ram:35fd 5c              ??         5Ch    \
        ram:35fe 03              ??         03h
        ram:35ff cd              ??         CDh
        ram:3600 5f              ??         5Fh    _
        ram:3601 33              ??         33h    3
        ram:3602 a1              ??         A1h
        ram:3603 5c              ??         5Ch    \
        ram:3604 03              ??         03h
        ram:3605 cd              ??         CDh
        ram:3606 5f              ??         5Fh    _
        ram:3607 33              ??         33h    3
        ram:3608 f8              ??         F8h
        ram:3609 5e              ??         5Eh    ^
        ram:360a 03              ??         03h
        ram:360b cd              ??         CDh
        ram:360c 5f              ??         5Fh    _
        ram:360d 33              ??         33h    3
        ram:360e b5              ??         B5h
        ram:360f 62              ??         62h    b
        ram:3610 03              ??         03h
        ram:3611 cd              ??         CDh
        ram:3612 5f              ??         5Fh    _
        ram:3613 33              ??         33h    3
        ram:3614 2b              ??         2Bh    +
        ram:3615 63              ??         63h    c
        ram:3616 03              ??         03h
        ram:3617 cd              ??         CDh
        ram:3618 5f              ??         5Fh    _
        ram:3619 33              ??         33h    3
        ram:361a 4a              ??         4Ah    J
        ram:361b 63              ??         63h    c
        ram:361c 03              ??         03h
        ram:361d cd              ??         CDh
        ram:361e 5f              ??         5Fh    _
        ram:361f 33              ??         33h    3
        ram:3620 7f              ??         7Fh    
        ram:3621 63              ??         63h    c
        ram:3622 03              ??         03h
        ram:3623 cd              ??         CDh
        ram:3624 5f              ??         5Fh    _
        ram:3625 33              ??         33h    3
        ram:3626 ee              ??         EEh
        ram:3627 63              ??         63h    c
        ram:3628 03              ??         03h
        ram:3629 cd              ??         CDh
        ram:362a 5f              ??         5Fh    _
        ram:362b 33              ??         33h    3
        ram:362c 03              ??         03h
        ram:362d 64              ??         64h    d
        ram:362e 03              ??         03h
        ram:362f cd              ??         CDh
        ram:3630 5f              ??         5Fh    _
        ram:3631 33              ??         33h    3
        ram:3632 2d              ??         2Dh    -
        ram:3633 64              ??         64h    d
        ram:3634 03              ??         03h
        ram:3635 cd              ??         CDh
        ram:3636 5f              ??         5Fh    _
        ram:3637 33              ??         33h    3
        ram:3638 39              ??         39h    9
        ram:3639 64              ??         64h    d
        ram:363a 03              ??         03h
        ram:363b cd              ??         CDh
        ram:363c 5f              ??         5Fh    _
        ram:363d 33              ??         33h    3
        ram:363e 3f              ??         3Fh    ?
        ram:363f 64              ??         64h    d
        ram:3640 03              ??         03h
        ram:3641 cd              ??         CDh
        ram:3642 5f              ??         5Fh    _
        ram:3643 33              ??         33h    3
        ram:3644 45              ??         45h    E
        ram:3645 64              ??         64h    d
        ram:3646 03              ??         03h
        ram:3647 cd              ??         CDh
        ram:3648 5f              ??         5Fh    _
        ram:3649 33              ??         33h    3
        ram:364a 4b              ??         4Bh    K
        ram:364b 64              ??         64h    d
        ram:364c 03              ??         03h
        ram:364d cd              ??         CDh
        ram:364e 5f              ??         5Fh    _
        ram:364f 33              ??         33h    3
        ram:3650 51              ??         51h    Q
        ram:3651 64              ??         64h    d
        ram:3652 03              ??         03h
        ram:3653 cd              ??         CDh
        ram:3654 5f              ??         5Fh    _
        ram:3655 33              ??         33h    3
        ram:3656 57              ??         57h    W
        ram:3657 64              ??         64h    d
        ram:3658 03              ??         03h
        ram:3659 cd              ??         CDh
        ram:365a 5f              ??         5Fh    _
        ram:365b 33              ??         33h    3
        ram:365c b0              ??         B0h
        ram:365d 64              ??         64h    d
        ram:365e 03              ??         03h
        ram:365f cd              ??         CDh
        ram:3660 5f              ??         5Fh    _
        ram:3661 33              ??         33h    3
        ram:3662 af              ??         AFh
        ram:3663 66              ??         66h    f
        ram:3664 03              ??         03h
        ram:3665 cd              ??         CDh
        ram:3666 5f              ??         5Fh    _
        ram:3667 33              ??         33h    3
        ram:3668 b3              ??         B3h
        ram:3669 66              ??         66h    f
        ram:366a 03              ??         03h
        ram:366b cd              ??         CDh
        ram:366c 5f              ??         5Fh    _
        ram:366d 33              ??         33h    3
        ram:366e 07              ??         07h
        ram:366f 67              ??         67h    g
        ram:3670 03              ??         03h
        ram:3671 cd              ??         CDh
        ram:3672 5f              ??         5Fh    _
        ram:3673 33              ??         33h    3
        ram:3674 a8              ??         A8h
        ram:3675 67              ??         67h    g
        ram:3676 03              ??         03h
        ram:3677 cd              ??         CDh
        ram:3678 5f              ??         5Fh    _
        ram:3679 33              ??         33h    3
        ram:367a ae              ??         AEh
        ram:367b 67              ??         67h    g
        ram:367c 03              ??         03h
        ram:367d cd              ??         CDh
        ram:367e 5f              ??         5Fh    _
        ram:367f 33              ??         33h    3
        ram:3680 b7              ??         B7h
        ram:3681 67              ??         67h    g
        ram:3682 03              ??         03h
        ram:3683 cd              ??         CDh
        ram:3684 5f              ??         5Fh    _
        ram:3685 33              ??         33h    3
        ram:3686 bc              ??         BCh
        ram:3687 67              ??         67h    g
        ram:3688 03              ??         03h
        ram:3689 cd              ??         CDh
        ram:368a 5f              ??         5Fh    _
        ram:368b 33              ??         33h    3
        ram:368c c1              ??         C1h
        ram:368d 67              ??         67h    g
        ram:368e 03              ??         03h
        ram:368f cd              ??         CDh
        ram:3690 5f              ??         5Fh    _
        ram:3691 33              ??         33h    3
        ram:3692 c6              ??         C6h
        ram:3693 67              ??         67h    g
        ram:3694 03              ??         03h
        ram:3695 cd              ??         CDh
        ram:3696 5f              ??         5Fh    _
        ram:3697 33              ??         33h    3
        ram:3698 13              ??         13h
        ram:3699 6b              ??         6Bh    k
        ram:369a 07              ??         07h
        ram:369b cd              ??         CDh
        ram:369c 5f              ??         5Fh    _
        ram:369d 33              ??         33h    3
        ram:369e 6b              ??         6Bh    k
        ram:369f 6b              ??         6Bh    k
        ram:36a0 07              ??         07h
        ram:36a1 cd              ??         CDh
        ram:36a2 5f              ??         5Fh    _
        ram:36a3 33              ??         33h    3
        ram:36a4 29              ??         29h    )
        ram:36a5 74              ??         74h    t
        ram:36a6 06              ??         06h
        ram:36a7 cd              ??         CDh
        ram:36a8 5f              ??         5Fh    _
        ram:36a9 33              ??         33h    3
        ram:36aa af              ??         AFh
        ram:36ab 43              ??         43h    C
        ram:36ac 04              ??         04h
        ram:36ad cd              ??         CDh
        ram:36ae 5f              ??         5Fh    _
        ram:36af 33              ??         33h    3
        ram:36b0 68              ??         68h    h
        ram:36b1 50              ??         50h    P
        ram:36b2 04              ??         04h
        ram:36b3 cd              ??         CDh
        ram:36b4 5f              ??         5Fh    _
        ram:36b5 33              ??         33h    3
        ram:36b6 ba              ??         BAh
        ram:36b7 6a              ??         6Ah    j
        ram:36b8 05              ??         05h
        ram:36b9 cd              ??         CDh
        ram:36ba 5f              ??         5Fh    _
        ram:36bb 33              ??         33h    3
        ram:36bc 8a              ??         8Ah
        ram:36bd 7c              ??         7Ch    |
        ram:36be 03              ??         03h
        ram:36bf cd              ??         CDh
        ram:36c0 5f              ??         5Fh    _
        ram:36c1 33              ??         33h    3
        ram:36c2 8c              ??         8Ch
        ram:36c3 73              ??         73h    s
        ram:36c4 05              ??         05h
        ram:36c5 cd              ??         CDh
        ram:36c6 5f              ??         5Fh    _
        ram:36c7 33              ??         33h    3
        ram:36c8 62              ??         62h    b
        ram:36c9 61              ??         61h    a
        ram:36ca 04              ??         04h
        ram:36cb cd              ??         CDh
        ram:36cc 5f              ??         5Fh    _
        ram:36cd 33              ??         33h    3
        ram:36ce 4b              ??         4Bh    K
        ram:36cf 61              ??         61h    a
        ram:36d0 04              ??         04h
        ram:36d1 cd              ??         CDh
        ram:36d2 5f              ??         5Fh    _
        ram:36d3 33              ??         33h    3
        ram:36d4 60              ??         60h    `
        ram:36d5 63              ??         63h    c
        ram:36d6 04              ??         04h
        ram:36d7 cd              ??         CDh
        ram:36d8 5f              ??         5Fh    _
        ram:36d9 33              ??         33h    3
        ram:36da e5              ??         E5h
        ram:36db 5f              ??         5Fh    _
        ram:36dc 04              ??         04h
        ram:36dd cd              ??         CDh
        ram:36de 5f              ??         5Fh    _
        ram:36df 33              ??         33h    3
        ram:36e0 e7              ??         E7h
        ram:36e1 65              ??         65h    e
        ram:36e2 04              ??         04h
        ram:36e3 cd              ??         CDh
        ram:36e4 5f              ??         5Fh    _
        ram:36e5 33              ??         33h    3
        ram:36e6 62              ??         62h    b
        ram:36e7 6c              ??         6Ch    l
        ram:36e8 04              ??         04h
        ram:36e9 cd              ??         CDh
        ram:36ea 5f              ??         5Fh    _
        ram:36eb 33              ??         33h    3
        ram:36ec 54              ??         54h    T
        ram:36ed 65              ??         65h    e
        ram:36ee 04              ??         04h
        ram:36ef cd              ??         CDh
        ram:36f0 5f              ??         5Fh    _
        ram:36f1 33              ??         33h    3
        ram:36f2 00              ??         00h
        ram:36f3 65              ??         65h    e
        ram:36f4 04              ??         04h
        ram:36f5 cd              ??         CDh
        ram:36f6 5f              ??         5Fh    _
        ram:36f7 33              ??         33h    3
        ram:36f8 7f              ??         7Fh    
        ram:36f9 64              ??         64h    d
        ram:36fa 04              ??         04h
        ram:36fb cd              ??         CDh
        ram:36fc 5f              ??         5Fh    _
        ram:36fd 33              ??         33h    3
        ram:36fe f6              ??         F6h
        ram:36ff 63              ??         63h    c
        ram:3700 04              ??         04h
        ram:3701 cd              ??         CDh
        ram:3702 5f              ??         5Fh    _
        ram:3703 33              ??         33h    3
        ram:3704 d2              ??         D2h
        ram:3705 63              ??         63h    c
        ram:3706 04              ??         04h
        ram:3707 cd              ??         CDh
        ram:3708 5f              ??         5Fh    _
        ram:3709 33              ??         33h    3
        ram:370a 12              ??         12h
        ram:370b 64              ??         64h    d
        ram:370c 04              ??         04h
        ram:370d cd              ??         CDh
        ram:370e 5f              ??         5Fh    _
        ram:370f 33              ??         33h    3
        ram:3710 b6              ??         B6h
        ram:3711 67              ??         67h    g
        ram:3712 04              ??         04h
        ram:3713 cd              ??         CDh
        ram:3714 5f              ??         5Fh    _
        ram:3715 33              ??         33h    3
        ram:3716 bd              ??         BDh
        ram:3717 67              ??         67h    g
        ram:3718 04              ??         04h
        ram:3719 cd              ??         CDh
        ram:371a 5f              ??         5Fh    _
        ram:371b 33              ??         33h    3
        ram:371c 0d              ??         0Dh
        ram:371d 45              ??         45h    E
        ram:371e 04              ??         04h
        ram:371f cd              ??         CDh
        ram:3720 5f              ??         5Fh    _
        ram:3721 33              ??         33h    3
        ram:3722 59              ??         59h    Y
        ram:3723 46              ??         46h    F
        ram:3724 04              ??         04h
        ram:3725 cd              ??         CDh
        ram:3726 5f              ??         5Fh    _
        ram:3727 33              ??         33h    3
        ram:3728 a5              ??         A5h
        ram:3729 67              ??         67h    g
        ram:372a 04              ??         04h
        ram:372b cd              ??         CDh
        ram:372c 5f              ??         5Fh    _
        ram:372d 33              ??         33h    3
        ram:372e ef              ??         EFh
        ram:372f 68              ??         68h    h
        ram:3730 04              ??         04h
        ram:3731 cd              ??         CDh
        ram:3732 5f              ??         5Fh    _
        ram:3733 33              ??         33h    3
        ram:3734 3a              ??         3Ah    :
        ram:3735 6c              ??         6Ch    l
        ram:3736 04              ??         04h
        ram:3737 cd              ??         CDh
        ram:3738 5f              ??         5Fh    _
        ram:3739 33              ??         33h    3
        ram:373a b2              ??         B2h
        ram:373b 67              ??         67h    g
        ram:373c 04              ??         04h
        ram:373d cd              ??         CDh
        ram:373e 5f              ??         5Fh    _
        ram:373f 33              ??         33h    3
        ram:3740 1a              ??         1Ah
        ram:3741 6c              ??         6Ch    l
        ram:3742 04              ??         04h
        ram:3743 cd              ??         CDh
        ram:3744 5f              ??         5Fh    _
        ram:3745 33              ??         33h    3
        ram:3746 5a              ??         5Ah    Z
        ram:3747 64              ??         64h    d
        ram:3748 04              ??         04h
        ram:3749 cd              ??         CDh
        ram:374a 5f              ??         5Fh    _
        ram:374b 33              ??         33h    3
        ram:374c 12              ??         12h
        ram:374d 44              ??         44h    D
        ram:374e 04              ??         04h
        ram:374f cd              ??         CDh
        ram:3750 5f              ??         5Fh    _
        ram:3751 33              ??         33h    3
        ram:3752 7b              ??         7Bh    {
        ram:3753 45              ??         45h    E
        ram:3754 04              ??         04h
        ram:3755 cd              ??         CDh
        ram:3756 5f              ??         5Fh    _
        ram:3757 33              ??         33h    3
        ram:3758 9d              ??         9Dh
        ram:3759 48              ??         48h    H
        ram:375a 04              ??         04h
        ram:375b cd              ??         CDh
        ram:375c 5f              ??         5Fh    _
        ram:375d 33              ??         33h    3
        ram:375e c9              ??         C9h
        ram:375f 49              ??         49h    I
        ram:3760 04              ??         04h
        ram:3761 cd              ??         CDh
        ram:3762 5f              ??         5Fh    _
        ram:3763 33              ??         33h    3
        ram:3764 d2              ??         D2h
        ram:3765 49              ??         49h    I
        ram:3766 04              ??         04h
        ram:3767 cd              ??         CDh
        ram:3768 5f              ??         5Fh    _
        ram:3769 33              ??         33h    3
        ram:376a d6              ??         D6h
        ram:376b 7c              ??         7Ch    |
        ram:376c 06              ??         06h
        ram:376d cd              ??         CDh
        ram:376e 5f              ??         5Fh    _
        ram:376f 33              ??         33h    3
        ram:3770 db              ??         DBh
        ram:3771 7c              ??         7Ch    |
        ram:3772 06              ??         06h
        ram:3773 cd              ??         CDh
        ram:3774 5f              ??         5Fh    _
        ram:3775 33              ??         33h    3
        ram:3776 17              ??         17h
        ram:3777 67              ??         67h    g
        ram:3778 04              ??         04h
        ram:3779 cd              ??         CDh
        ram:377a 5f              ??         5Fh    _
        ram:377b 33              ??         33h    3
        ram:377c fb              ??         FBh
        ram:377d 43              ??         43h    C
        ram:377e 04              ??         04h
        ram:377f cd              ??         CDh
        ram:3780 5f              ??         5Fh    _
        ram:3781 33              ??         33h    3
        ram:3782 ec              ??         ECh
        ram:3783 43              ??         43h    C
        ram:3784 04              ??         04h
        ram:3785 cd              ??         CDh
        ram:3786 5f              ??         5Fh    _
        ram:3787 33              ??         33h    3
        ram:3788 df              ??         DFh
        ram:3789 46              ??         46h    F
        ram:378a 04              ??         04h
        ram:378b cd              ??         CDh
        ram:378c 5f              ??         5Fh    _
        ram:378d 33              ??         33h    3
        ram:378e d0              ??         D0h
        ram:378f 43              ??         43h    C
        ram:3790 04              ??         04h
        ram:3791 cd              ??         CDh
        ram:3792 5f              ??         5Fh    _
        ram:3793 33              ??         33h    3
        ram:3794 55              ??         55h    U
        ram:3795 6c              ??         6Ch    l
        ram:3796 04              ??         04h
        ram:3797 cd              ??         CDh
        ram:3798 5f              ??         5Fh    _
        ram:3799 33              ??         33h    3
        ram:379a 3a              ??         3Ah    :
        ram:379b 4f              ??         4Fh    O
        ram:379c 07              ??         07h
        ram:379d cd              ??         CDh
        ram:379e 5f              ??         5Fh    _
        ram:379f 33              ??         33h    3
        ram:37a0 29              ??         29h    )
        ram:37a1 73              ??         73h    s
        ram:37a2 05              ??         05h
        ram:37a3 cd              ??         CDh
        ram:37a4 5f              ??         5Fh    _
        ram:37a5 33              ??         33h    3
        ram:37a6 91              ??         91h
        ram:37a7 63              ??         63h    c
        ram:37a8 05              ??         05h
        ram:37a9 cd              ??         CDh
        ram:37aa 5f              ??         5Fh    _
        ram:37ab 33              ??         33h    3
        ram:37ac 42              ??         42h    B
        ram:37ad 6e              ??         6Eh    n
        ram:37ae 03              ??         03h
        ram:37af cd              ??         CDh
        ram:37b0 5f              ??         5Fh    _
        ram:37b1 33              ??         33h    3
        ram:37b2 4b              ??         4Bh    K
        ram:37b3 6e              ??         6Eh    n
        ram:37b4 03              ??         03h
        ram:37b5 cd              ??         CDh
        ram:37b6 5f              ??         5Fh    _
        ram:37b7 33              ??         33h    3
        ram:37b8 2e              ??         2Eh    .
        ram:37b9 73              ??         73h    s
        ram:37ba 05              ??         05h
        ram:37bb cd              ??         CDh
        ram:37bc 5f              ??         5Fh    _
        ram:37bd 33              ??         33h    3
        ram:37be 54              ??         54h    T
        ram:37bf 4b              ??         4Bh    K
        ram:37c0 03              ??         03h
        ram:37c1 cd              ??         CDh
        ram:37c2 5f              ??         5Fh    _
        ram:37c3 33              ??         33h    3
        ram:37c4 8d              ??         8Dh
        ram:37c5 4b              ??         4Bh    K
        ram:37c6 03              ??         03h
        ram:37c7 cd              ??         CDh
        ram:37c8 5f              ??         5Fh    _
        ram:37c9 33              ??         33h    3
        ram:37ca d0              ??         D0h
        ram:37cb 4b              ??         4Bh    K
        ram:37cc 03              ??         03h
        ram:37cd cd              ??         CDh
        ram:37ce 5f              ??         5Fh    _
        ram:37cf 33              ??         33h    3
        ram:37d0 04              ??         04h
        ram:37d1 4d              ??         4Dh    M
        ram:37d2 03              ??         03h
        ram:37d3 cd              ??         CDh
        ram:37d4 5f              ??         5Fh    _
        ram:37d5 33              ??         33h    3
        ram:37d6 d3              ??         D3h
        ram:37d7 4e              ??         4Eh    N
        ram:37d8 03              ??         03h
        ram:37d9 cd              ??         CDh
        ram:37da 5f              ??         5Fh    _
        ram:37db 33              ??         33h    3
        ram:37dc 33              ??         33h    3
        ram:37dd 51              ??         51h    Q
        ram:37de 03              ??         03h
        ram:37df cd              ??         CDh
        ram:37e0 5f              ??         5Fh    _
        ram:37e1 33              ??         33h    3
        ram:37e2 50              ??         50h    P
        ram:37e3 51              ??         51h    Q
        ram:37e4 03              ??         03h
        ram:37e5 cd              ??         CDh
        ram:37e6 5f              ??         5Fh    _
        ram:37e7 33              ??         33h    3
        ram:37e8 5d              ??         5Dh    ]
        ram:37e9 51              ??         51h    Q
        ram:37ea 03              ??         03h
        ram:37eb cd              ??         CDh
        ram:37ec 5f              ??         5Fh    _
        ram:37ed 33              ??         33h    3
        ram:37ee 98              ??         98h
        ram:37ef 54              ??         54h    T
        ram:37f0 03              ??         03h
        ram:37f1 cd              ??         CDh
        ram:37f2 5f              ??         5Fh    _
        ram:37f3 33              ??         33h    3
        ram:37f4 a5              ??         A5h
        ram:37f5 54              ??         54h    T
        ram:37f6 03              ??         03h
        ram:37f7 cd              ??         CDh
        ram:37f8 5f              ??         5Fh    _
        ram:37f9 33              ??         33h    3
        ram:37fa cb              ??         CBh
        ram:37fb 7a              ??         7Ah    z
        ram:37fc 02              ??         02h
        ram:37fd cd              ??         CDh
        ram:37fe 5f              ??         5Fh    _
        ram:37ff 33              ??         33h    3
        ram:3800 13              ??         13h
        ram:3801 7b              ??         7Bh    {
        ram:3802 02              ??         02h
        ram:3803 cd              ??         CDh
        ram:3804 5f              ??         5Fh    _
        ram:3805 33              ??         33h    3
        ram:3806 6a              ??         6Ah    j
        ram:3807 7b              ??         7Bh    {
        ram:3808 02              ??         02h
        ram:3809 cd              ??         CDh
        ram:380a 5f              ??         5Fh    _
        ram:380b 33              ??         33h    3
        ram:380c c3              ??         C3h
        ram:380d 7b              ??         7Bh    {
        ram:380e 02              ??         02h
        ram:380f cd              ??         CDh
        ram:3810 5f              ??         5Fh    _
        ram:3811 33              ??         33h    3
        ram:3812 ec              ??         ECh
        ram:3813 7b              ??         7Bh    {
        ram:3814 02              ??         02h
        ram:3815 cd              ??         CDh
        ram:3816 5f              ??         5Fh    _
        ram:3817 33              ??         33h    3
        ram:3818 80              ??         80h
        ram:3819 7c              ??         7Ch    |
        ram:381a 02              ??         02h
        ram:381b cd              ??         CDh
        ram:381c 5f              ??         5Fh    _
        ram:381d 33              ??         33h    3
        ram:381e 84              ??         84h
        ram:381f 7c              ??         7Ch    |
        ram:3820 02              ??         02h
        ram:3821 cd              ??         CDh
        ram:3822 5f              ??         5Fh    _
        ram:3823 33              ??         33h    3
        ram:3824 09              ??         09h
        ram:3825 7d              ??         7Dh    }
        ram:3826 02              ??         02h
        ram:3827 cd              ??         CDh
        ram:3828 5f              ??         5Fh    _
        ram:3829 33              ??         33h    3
        ram:382a 52              ??         52h    R
        ram:382b 7d              ??         7Dh    }
        ram:382c 02              ??         02h
        ram:382d cd              ??         CDh
        ram:382e 5f              ??         5Fh    _
        ram:382f 33              ??         33h    3
        ram:3830 78              ??         78h    x
        ram:3831 7d              ??         7Dh    }
        ram:3832 02              ??         02h
        ram:3833 cd              ??         CDh
        ram:3834 5f              ??         5Fh    _
        ram:3835 33              ??         33h    3
        ram:3836 bd              ??         BDh
        ram:3837 7d              ??         7Dh    }
        ram:3838 02              ??         02h
        ram:3839 cd              ??         CDh
        ram:383a 5f              ??         5Fh    _
        ram:383b 33              ??         33h    3
        ram:383c e1              ??         E1h
        ram:383d 7d              ??         7Dh    }
        ram:383e 02              ??         02h
        ram:383f cd              ??         CDh
        ram:3840 5f              ??         5Fh    _
        ram:3841 33              ??         33h    3
        ram:3842 fa              ??         FAh
        ram:3843 7d              ??         7Dh    }
        ram:3844 02              ??         02h
        ram:3845 cd              ??         CDh
        ram:3846 5f              ??         5Fh    _
        ram:3847 33              ??         33h    3
        ram:3848 8c              ??         8Ch
        ram:3849 53              ??         53h    S
        ram:384a 03              ??         03h
        ram:384b cd              ??         CDh
        ram:384c 5f              ??         5Fh    _
        ram:384d 33              ??         33h    3
        ram:384e b8              ??         B8h
        ram:384f 6b              ??         6Bh    k
        ram:3850 04              ??         04h
        ram:3851 cd              ??         CDh
        ram:3852 5f              ??         5Fh    _
        ram:3853 33              ??         33h    3
        ram:3854 a4              ??         A4h
        ram:3855 76              ??         76h    v
        ram:3856 02              ??         02h
        ram:3857 cd              ??         CDh
        ram:3858 5f              ??         5Fh    _
        ram:3859 33              ??         33h    3
        ram:385a aa              ??         AAh
        ram:385b 76              ??         76h    v
        ram:385c 02              ??         02h
        ram:385d cd              ??         CDh
        ram:385e 5f              ??         5Fh    _
        ram:385f 33              ??         33h    3
        ram:3860 b0              ??         B0h
        ram:3861 76              ??         76h    v
        ram:3862 02              ??         02h
        ram:3863 cd              ??         CDh
        ram:3864 5f              ??         5Fh    _
        ram:3865 33              ??         33h    3
        ram:3866 d5              ??         D5h
        ram:3867 5c              ??         5Ch    \
        ram:3868 03              ??         03h
        ram:3869 cd              ??         CDh
        ram:386a 5f              ??         5Fh    _
        ram:386b 33              ??         33h    3
        ram:386c 51              ??         51h    Q
        ram:386d 61              ??         61h    a
        ram:386e 05              ??         05h
        ram:386f cd              ??         CDh
        ram:3870 5f              ??         5Fh    _
        ram:3871 33              ??         33h    3
        ram:3872 ff              ??         FFh
        ram:3873 7c              ??         7Ch    |
        ram:3874 02              ??         02h
        ram:3875 cd              ??         CDh
        ram:3876 5f              ??         5Fh    _
        ram:3877 33              ??         33h    3
        ram:3878 23              ??         23h    #
        ram:3879 61              ??         61h    a
        ram:387a 05              ??         05h
        ram:387b cd              ??         CDh
        ram:387c 5f              ??         5Fh    _
        ram:387d 33              ??         33h    3
        ram:387e aa              ??         AAh
        ram:387f 5c              ??         5Ch    \
        ram:3880 03              ??         03h
        ram:3881 cd              ??         CDh
        ram:3882 5f              ??         5Fh    _
        ram:3883 33              ??         33h    3
        ram:3884 38              ??         38h    8
        ram:3885 75              ??         75h    u
        ram:3886 02              ??         02h
        ram:3887 cd              ??         CDh
        ram:3888 5f              ??         5Fh    _
        ram:3889 33              ??         33h    3
        ram:388a 79              ??         79h    y
        ram:388b 5f              ??         5Fh    _
        ram:388c 05              ??         05h
        ram:388d cd              ??         CDh
        ram:388e 5f              ??         5Fh    _
        ram:388f 33              ??         33h    3
        ram:3890 06              ??         06h
        ram:3891 63              ??         63h    c
        ram:3892 05              ??         05h
        ram:3893 cd              ??         CDh
        ram:3894 5f              ??         5Fh    _
        ram:3895 33              ??         33h    3
        ram:3896 c4              ??         C4h
        ram:3897 5f              ??         5Fh    _
        ram:3898 05              ??         05h
        ram:3899 cd              ??         CDh
        ram:389a 5f              ??         5Fh    _
        ram:389b 33              ??         33h    3
        ram:389c c5              ??         C5h
        ram:389d 68              ??         68h    h
        ram:389e 02              ??         02h
        ram:389f cd              ??         CDh
        ram:38a0 5f              ??         5Fh    _
        ram:38a1 33              ??         33h    3
        ram:38a2 23              ??         23h    #
        ram:38a3 69              ??         69h    i
        ram:38a4 02              ??         02h
        ram:38a5 cd              ??         CDh
        ram:38a6 5f              ??         5Fh    _
        ram:38a7 33              ??         33h    3
        ram:38a8 41              ??         41h    A
        ram:38a9 69              ??         69h    i
        ram:38aa 02              ??         02h
        ram:38ab cd              ??         CDh
        ram:38ac 5f              ??         5Fh    _
        ram:38ad 33              ??         33h    3
        ram:38ae 49              ??         49h    I
        ram:38af 69              ??         69h    i
        ram:38b0 02              ??         02h
        ram:38b1 cd              ??         CDh
        ram:38b2 5f              ??         5Fh    _
        ram:38b3 33              ??         33h    3
        ram:38b4 fe              ??         FEh
        ram:38b5 6f              ??         6Fh    o
        ram:38b6 02              ??         02h
        ram:38b7 cd              ??         CDh
        ram:38b8 5f              ??         5Fh    _
        ram:38b9 33              ??         33h    3
        ram:38ba 73              ??         73h    s
        ram:38bb 70              ??         70h    p
        ram:38bc 02              ??         02h
        ram:38bd cd              ??         CDh
        ram:38be 5f              ??         5Fh    _
        ram:38bf 33              ??         33h    3
        ram:38c0 7c              ??         7Ch    |
        ram:38c1 70              ??         70h    p
        ram:38c2 02              ??         02h
        ram:38c3 cd              ??         CDh
        ram:38c4 5f              ??         5Fh    _
        ram:38c5 33              ??         33h    3
        ram:38c6 91              ??         91h
        ram:38c7 70              ??         70h    p
        ram:38c8 02              ??         02h
        ram:38c9 cd              ??         CDh
        ram:38ca 5f              ??         5Fh    _
        ram:38cb 33              ??         33h    3
        ram:38cc 3f              ??         3Fh    ?
        ram:38cd 78              ??         78h    x
        ram:38ce 05              ??         05h
        ram:38cf cd              ??         CDh
        ram:38d0 5f              ??         5Fh    _
        ram:38d1 33              ??         33h    3
        ram:38d2 b6              ??         B6h
        ram:38d3 67              ??         67h    g
        ram:38d4 02              ??         02h
        ram:38d5 cd              ??         CDh
        ram:38d6 5f              ??         5Fh    _
        ram:38d7 33              ??         33h    3
        ram:38d8 37              ??         37h    7
        ram:38d9 68              ??         68h    h
        ram:38da 02              ??         02h
        ram:38db cd              ??         CDh
        ram:38dc 5f              ??         5Fh    _
        ram:38dd 33              ??         33h    3
        ram:38de 3f              ??         3Fh    ?
        ram:38df 68              ??         68h    h
        ram:38e0 02              ??         02h
        ram:38e1 cd              ??         CDh
        ram:38e2 5f              ??         5Fh    _
        ram:38e3 33              ??         33h    3
        ram:38e4 47              ??         47h    G
        ram:38e5 68              ??         68h    h
        ram:38e6 02              ??         02h
        ram:38e7 cd              ??         CDh
        ram:38e8 5f              ??         5Fh    _
        ram:38e9 33              ??         33h    3
        ram:38ea 61              ??         61h    a
        ram:38eb 68              ??         68h    h
        ram:38ec 02              ??         02h
        ram:38ed cd              ??         CDh
        ram:38ee 5f              ??         5Fh    _
        ram:38ef 33              ??         33h    3
        ram:38f0 ae              ??         AEh
        ram:38f1 68              ??         68h    h
        ram:38f2 02              ??         02h
        ram:38f3 cd              ??         CDh
        ram:38f4 5f              ??         5Fh    _
        ram:38f5 33              ??         33h    3
        ram:38f6 f8              ??         F8h
        ram:38f7 60              ??         60h    `
        ram:38f8 05              ??         05h
        ram:38f9 cd              ??         CDh
        ram:38fa 5f              ??         5Fh    _
        ram:38fb 33              ??         33h    3
        ram:38fc 0b              ??         0Bh
        ram:38fd 61              ??         61h    a
        ram:38fe 05              ??         05h
        ram:38ff cd              ??         CDh
        ram:3900 5f              ??         5Fh    _
        ram:3901 33              ??         33h    3
        ram:3902 3e              ??         3Eh    >
        ram:3903 61              ??         61h    a
        ram:3904 05              ??         05h
        ram:3905 cd              ??         CDh
        ram:3906 5f              ??         5Fh    _
        ram:3907 33              ??         33h    3
        ram:3908 1f              ??         1Fh
        ram:3909 62              ??         62h    b
        ram:390a 05              ??         05h
        ram:390b cd              ??         CDh
        ram:390c 5f              ??         5Fh    _
        ram:390d 33              ??         33h    3
        ram:390e dd              ??         DDh
        ram:390f 60              ??         60h    `
        ram:3910 05              ??         05h
        ram:3911 cd              ??         CDh
        ram:3912 5f              ??         5Fh    _
        ram:3913 33              ??         33h    3
        ram:3914 28              ??         28h    (
        ram:3915 61              ??         61h    a
        ram:3916 05              ??         05h
        ram:3917 cd              ??         CDh
        ram:3918 5f              ??         5Fh    _
        ram:3919 33              ??         33h    3
        ram:391a 28              ??         28h    (
        ram:391b 62              ??         62h    b
        ram:391c 05              ??         05h
        ram:391d cd              ??         CDh
        ram:391e 5f              ??         5Fh    _
        ram:391f 33              ??         33h    3
        ram:3920 b4              ??         B4h
        ram:3921 66              ??         66h    f
        ram:3922 02              ??         02h
        ram:3923 cd              ??         CDh
        ram:3924 5f              ??         5Fh    _
        ram:3925 33              ??         33h    3
        ram:3926 12              ??         12h
        ram:3927 67              ??         67h    g
        ram:3928 02              ??         02h
        ram:3929 cd              ??         CDh
        ram:392a 5f              ??         5Fh    _
        ram:392b 33              ??         33h    3
        ram:392c 32              ??         32h    2
        ram:392d 62              ??         62h    b
        ram:392e 02              ??         02h
        ram:392f cd              ??         CDh
        ram:3930 5f              ??         5Fh    _
        ram:3931 33              ??         33h    3
        ram:3932 4f              ??         4Fh    O
        ram:3933 62              ??         62h    b
        ram:3934 02              ??         02h
        ram:3935 cd              ??         CDh
        ram:3936 5f              ??         5Fh    _
        ram:3937 33              ??         33h    3
        ram:3938 5b              ??         5Bh    [
        ram:3939 62              ??         62h    b
        ram:393a 02              ??         02h
        ram:393b cd              ??         CDh
        ram:393c 5f              ??         5Fh    _
        ram:393d 33              ??         33h    3
        ram:393e 5e              ??         5Eh    ^
        ram:393f 62              ??         62h    b
        ram:3940 02              ??         02h
        ram:3941 cd              ??         CDh
        ram:3942 5f              ??         5Fh    _
        ram:3943 33              ??         33h    3
        ram:3944 62              ??         62h    b
        ram:3945 62              ??         62h    b
        ram:3946 02              ??         02h
        ram:3947 cd              ??         CDh
        ram:3948 5f              ??         5Fh    _
        ram:3949 33              ??         33h    3
        ram:394a 89              ??         89h
        ram:394b 62              ??         62h    b
        ram:394c 02              ??         02h
        ram:394d cd              ??         CDh
        ram:394e 5f              ??         5Fh    _
        ram:394f 33              ??         33h    3
        ram:3950 74              ??         74h    t
        ram:3951 41              ??         41h    A
        ram:3952 03              ??         03h
        ram:3953 cd              ??         CDh
        ram:3954 5f              ??         5Fh    _
        ram:3955 33              ??         33h    3
        ram:3956 81              ??         81h
        ram:3957 41              ??         41h    A
        ram:3958 03              ??         03h
        ram:3959 cd              ??         CDh
        ram:395a 5f              ??         5Fh    _
        ram:395b 33              ??         33h    3
        ram:395c 8e              ??         8Eh
        ram:395d 41              ??         41h    A
        ram:395e 03              ??         03h
        ram:395f cd              ??         CDh
        ram:3960 5f              ??         5Fh    _
        ram:3961 33              ??         33h    3
        ram:3962 6e              ??         6Eh    n
        ram:3963 41              ??         41h    A
        ram:3964 03              ??         03h
        ram:3965 cd              ??         CDh
        ram:3966 5f              ??         5Fh    _
        ram:3967 33              ??         33h    3
        ram:3968 d2              ??         D2h
        ram:3969 65              ??         65h    e
        ram:396a 02              ??         02h
        ram:396b cd              ??         CDh
        ram:396c 5f              ??         5Fh    _
        ram:396d 33              ??         33h    3
        ram:396e e5              ??         E5h
        ram:396f 65              ??         65h    e
        ram:3970 02              ??         02h
        ram:3971 cd              ??         CDh
        ram:3972 5f              ??         5Fh    _
        ram:3973 33              ??         33h    3
        ram:3974 48              ??         48h    H
        ram:3975 62              ??         62h    b
        ram:3976 02              ??         02h
        ram:3977 cd              ??         CDh
        ram:3978 5f              ??         5Fh    _
        ram:3979 33              ??         33h    3
        ram:397a 6a              ??         6Ah    j
        ram:397b 62              ??         62h    b
        ram:397c 02              ??         02h
        ram:397d cd              ??         CDh
        ram:397e 5f              ??         5Fh    _
        ram:397f 33              ??         33h    3
        ram:3980 82              ??         82h
        ram:3981 62              ??         62h    b
        ram:3982 02              ??         02h
        ram:3983 cd              ??         CDh
        ram:3984 5f              ??         5Fh    _
        ram:3985 33              ??         33h    3
        ram:3986 e5              ??         E5h
        ram:3987 7c              ??         7Ch    |
        ram:3988 02              ??         02h
        ram:3989 cd              ??         CDh
        ram:398a 5f              ??         5Fh    _
        ram:398b 33              ??         33h    3
        ram:398c 07              ??         07h
        ram:398d 69              ??         69h    i
        ram:398e 02              ??         02h
        ram:398f cd              ??         CDh
        ram:3990 5f              ??         5Fh    _
        ram:3991 33              ??         33h    3
        ram:3992 0f              ??         0Fh
        ram:3993 69              ??         69h    i
        ram:3994 02              ??         02h
        ram:3995 cd              ??         CDh
        ram:3996 5f              ??         5Fh    _
        ram:3997 33              ??         33h    3
        ram:3998 9c              ??         9Ch
        ram:3999 77              ??         77h    w
        ram:399a 03              ??         03h
        ram:399b cd              ??         CDh
        ram:399c 5f              ??         5Fh    _
        ram:399d 33              ??         33h    3
        ram:399e e5              ??         E5h
        ram:399f 70              ??         70h    p
        ram:39a0 02              ??         02h
        ram:39a1 cd              ??         CDh
        ram:39a2 5f              ??         5Fh    _
        ram:39a3 33              ??         33h    3
        ram:39a4 84              ??         84h
        ram:39a5 63              ??         63h    c
        ram:39a6 02              ??         02h
        ram:39a7 cd              ??         CDh
        ram:39a8 5f              ??         5Fh    _
        ram:39a9 33              ??         33h    3
        ram:39aa 83              ??         83h
        ram:39ab 7d              ??         7Dh    }
        ram:39ac 03              ??         03h
        ram:39ad cd              ??         CDh
        ram:39ae 5f              ??         5Fh    _
        ram:39af 33              ??         33h    3
        ram:39b0 5e              ??         5Eh    ^
        ram:39b1 69              ??         69h    i
        ram:39b2 02              ??         02h
        ram:39b3 cd              ??         CDh
        ram:39b4 5f              ??         5Fh    _
        ram:39b5 33              ??         33h    3
        ram:39b6 b3              ??         B3h
        ram:39b7 7c              ??         7Ch    |
        ram:39b8 06              ??         06h
        ram:39b9 cd              ??         CDh
        ram:39ba 5f              ??         5Fh    _
        ram:39bb 33              ??         33h    3
        ram:39bc 6d              ??         6Dh    m
        ram:39bd 5a              ??         5Ah    Z
        ram:39be 06              ??         06h
        ram:39bf cd              ??         CDh
        ram:39c0 5f              ??         5Fh    _
        ram:39c1 33              ??         33h    3
        ram:39c2 b0              ??         B0h
        ram:39c3 73              ??         73h    s
        ram:39c4 03              ??         03h
        ram:39c5 cd              ??         CDh
        ram:39c6 5f              ??         5Fh    _
        ram:39c7 33              ??         33h    3
        ram:39c8 9b              ??         9Bh
        ram:39c9 41              ??         41h    A
        ram:39ca 03              ??         03h
        ram:39cb cd              ??         CDh
        ram:39cc 5f              ??         5Fh    _
        ram:39cd 33              ??         33h    3
        ram:39ce d0              ??         D0h
        ram:39cf 6a              ??         6Ah    j
        ram:39d0 02              ??         02h
        ram:39d1 cd              ??         CDh
        ram:39d2 5f              ??         5Fh    _
        ram:39d3 33              ??         33h    3
        ram:39d4 64              ??         64h    d
        ram:39d5 64              ??         64h    d
        ram:39d6 02              ??         02h
        ram:39d7 cd              ??         CDh
        ram:39d8 5f              ??         5Fh    _
        ram:39d9 33              ??         33h    3
        ram:39da c8              ??         C8h
        ram:39db 41              ??         41h    A
        ram:39dc 03              ??         03h
        ram:39dd cd              ??         CDh
        ram:39de 5f              ??         5Fh    _
        ram:39df 33              ??         33h    3
        ram:39e0 23              ??         23h    #
        ram:39e1 42              ??         42h    B
        ram:39e2 03              ??         03h
        ram:39e3 cd              ??         CDh
        ram:39e4 5f              ??         5Fh    _
        ram:39e5 33              ??         33h    3
        ram:39e6 cc              ??         CCh
        ram:39e7 41              ??         41h    A
        ram:39e8 03              ??         03h
        ram:39e9 cd              ??         CDh
        ram:39ea 5f              ??         5Fh    _
        ram:39eb 33              ??         33h    3
        ram:39ec 27              ??         27h    '
        ram:39ed 42              ??         42h    B
        ram:39ee 03              ??         03h
        ram:39ef cd              ??         CDh
        ram:39f0 5f              ??         5Fh    _
        ram:39f1 33              ??         33h    3
        ram:39f2 87              ??         87h
        ram:39f3 66              ??         66h    f
        ram:39f4 04              ??         04h
        ram:39f5 cd              ??         CDh
        ram:39f6 5f              ??         5Fh    _
        ram:39f7 33              ??         33h    3
        ram:39f8 02              ??         02h
        ram:39f9 40              ??         40h    @
        ram:39fa 03              ??         03h
        ram:39fb cd              ??         CDh
        ram:39fc 5f              ??         5Fh    _
        ram:39fd 33              ??         33h    3
        ram:39fe 02              ??         02h
        ram:39ff 49              ??         49h    I
        ram:3a00 05              ??         05h
        ram:3a01 cd              ??         CDh
        ram:3a02 5f              ??         5Fh    _
        ram:3a03 33              ??         33h    3
        ram:3a04 89              ??         89h
        ram:3a05 7a              ??         7Ah    z
        ram:3a06 02              ??         02h
        ram:3a07 cd              ??         CDh
        ram:3a08 5f              ??         5Fh    _
        ram:3a09 33              ??         33h    3
        ram:3a0a fc              ??         FCh
        ram:3a0b 58              ??         58h    X
        ram:3a0c 06              ??         06h
        ram:3a0d cd              ??         CDh
        ram:3a0e 5f              ??         5Fh    _
        ram:3a0f 33              ??         33h    3
        ram:3a10 b9              ??         B9h
        ram:3a11 79              ??         79h    y
        ram:3a12 02              ??         02h
        ram:3a13 cd              ??         CDh
        ram:3a14 5f              ??         5Fh    _
        ram:3a15 33              ??         33h    3
        ram:3a16 12              ??         12h
        ram:3a17 7a              ??         7Ah    z
        ram:3a18 02              ??         02h
        ram:3a19 cd              ??         CDh
        ram:3a1a 5f              ??         5Fh    _
        ram:3a1b 33              ??         33h    3
        ram:3a1c 85              ??         85h
        ram:3a1d 62              ??         62h    b
        ram:3a1e 02              ??         02h
        ram:3a1f cd              ??         CDh
        ram:3a20 5f              ??         5Fh    _
        ram:3a21 33              ??         33h    3
        ram:3a22 52              ??         52h    R
        ram:3a23 4a              ??         4Ah    J
        ram:3a24 04              ??         04h
        ram:3a25 cd              ??         CDh
        ram:3a26 5f              ??         5Fh    _
        ram:3a27 33              ??         33h    3
        ram:3a28 66              ??         66h    f
        ram:3a29 78              ??         78h    x
        ram:3a2a 05              ??         05h
        ram:3a2b cd              ??         CDh
        ram:3a2c 5f              ??         5Fh    _
        ram:3a2d 33              ??         33h    3
        ram:3a2e 8e              ??         8Eh
        ram:3a2f 7e              ??         7Eh    ~
        ram:3a30 02              ??         02h
        ram:3a31 cd              ??         CDh
        ram:3a32 5f              ??         5Fh    _
        ram:3a33 33              ??         33h    3
        ram:3a34 eb              ??         EBh
        ram:3a35 73              ??         73h    s
        ram:3a36 05              ??         05h
        ram:3a37 cd              ??         CDh
        ram:3a38 5f              ??         5Fh    _
        ram:3a39 33              ??         33h    3
        ram:3a3a 52              ??         52h    R
        ram:3a3b 78              ??         78h    x
        ram:3a3c 05              ??         05h
        ram:3a3d cd              ??         CDh
        ram:3a3e 5f              ??         5Fh    _
        ram:3a3f 33              ??         33h    3
        ram:3a40 ea              ??         EAh
        ram:3a41 65              ??         65h    e
        ram:3a42 02              ??         02h
        ram:3a43 cd              ??         CDh
        ram:3a44 5f              ??         5Fh    _
        ram:3a45 33              ??         33h    3
        ram:3a46 61              ??         61h    a
        ram:3a47 6a              ??         6Ah    j
        ram:3a48 02              ??         02h
        ram:3a49 cd              ??         CDh
        ram:3a4a 5f              ??         5Fh    _
        ram:3a4b 33              ??         33h    3
        ram:3a4c 9c              ??         9Ch
        ram:3a4d 66              ??         66h    f
        ram:3a4e 03              ??         03h
        ram:3a4f cd              ??         CDh
        ram:3a50 5f              ??         5Fh    _
        ram:3a51 33              ??         33h    3
        ram:3a52 45              ??         45h    E
        ram:3a53 69              ??         69h    i
        ram:3a54 02              ??         02h
        ram:3a55 cd              ??         CDh
        ram:3a56 8c              ??         8Ch
        ram:3a57 33              ??         33h    3
        ram:3a58 13              ??         13h
        ram:3a59 40              ??         40h    @
        ram:3a5a 05              ??         05h
        ram:3a5b cd              ??         CDh
        ram:3a5c 5f              ??         5Fh    _
        ram:3a5d 33              ??         33h    3
        ram:3a5e 6a              ??         6Ah    j
        ram:3a5f 65              ??         65h    e
        ram:3a60 02              ??         02h
        ram:3a61 cd              ??         CDh
        ram:3a62 5f              ??         5Fh    _
        ram:3a63 33              ??         33h    3
        ram:3a64 37              ??         37h    7
        ram:3a65 61              ??         61h    a
        ram:3a66 05              ??         05h
        ram:3a67 cd              ??         CDh
        ram:3a68 5f              ??         5Fh    _
        ram:3a69 33              ??         33h    3
        ram:3a6a 7c              ??         7Ch    |
        ram:3a6b 4c              ??         4Ch    L
        ram:3a6c 02              ??         02h
        ram:3a6d cd              ??         CDh
        ram:3a6e 5f              ??         5Fh    _
        ram:3a6f 33              ??         33h    3
        ram:3a70 99              ??         99h
        ram:3a71 54              ??         54h    T
        ram:3a72 02              ??         02h
        ram:3a73 cd              ??         CDh
        ram:3a74 5f              ??         5Fh    _
        ram:3a75 33              ??         33h    3
        ram:3a76 02              ??         02h
        ram:3a77 55              ??         55h    U
        ram:3a78 02              ??         02h
        ram:3a79 cd              ??         CDh
        ram:3a7a 5f              ??         5Fh    _
        ram:3a7b 33              ??         33h    3
        ram:3a7c 5f              ??         5Fh    _
        ram:3a7d 56              ??         56h    V
        ram:3a7e 02              ??         02h
        ram:3a7f cd              ??         CDh
        ram:3a80 5f              ??         5Fh    _
        ram:3a81 33              ??         33h    3
        ram:3a82 a9              ??         A9h
        ram:3a83 56              ??         56h    V
        ram:3a84 02              ??         02h
        ram:3a85 cd              ??         CDh
        ram:3a86 5f              ??         5Fh    _
        ram:3a87 33              ??         33h    3
        ram:3a88 df              ??         DFh
        ram:3a89 57              ??         57h    W
        ram:3a8a 02              ??         02h
        ram:3a8b cd              ??         CDh
        ram:3a8c 5f              ??         5Fh    _
        ram:3a8d 33              ??         33h    3
        ram:3a8e 85              ??         85h
        ram:3a8f 5e              ??         5Eh    ^
        ram:3a90 02              ??         02h
        ram:3a91 cd              ??         CDh
        ram:3a92 5f              ??         5Fh    _
        ram:3a93 33              ??         33h    3
        ram:3a94 51              ??         51h    Q
        ram:3a95 5f              ??         5Fh    _
        ram:3a96 02              ??         02h
        ram:3a97 cd              ??         CDh
        ram:3a98 5f              ??         5Fh    _
        ram:3a99 33              ??         33h    3
        ram:3a9a 1b              ??         1Bh
        ram:3a9b 61              ??         61h    a
        ram:3a9c 02              ??         02h
        ram:3a9d cd              ??         CDh
        ram:3a9e 5f              ??         5Fh    _
        ram:3a9f 33              ??         33h    3
        ram:3aa0 b6              ??         B6h
        ram:3aa1 56              ??         56h    V
        ram:3aa2 02              ??         02h
        ram:3aa3 cd              ??         CDh
        ram:3aa4 5f              ??         5Fh    _
        ram:3aa5 33              ??         33h    3
        ram:3aa6 74              ??         74h    t
        ram:3aa7 4c              ??         4Ch    L
        ram:3aa8 02              ??         02h
        ram:3aa9 cd              ??         CDh
        ram:3aaa 5f              ??         5Fh    _
        ram:3aab 33              ??         33h    3
        ram:3aac 2f              ??         2Fh    /
        ram:3aad 7e              ??         7Eh    ~
        ram:3aae 02              ??         02h
        ram:3aaf cd              ??         CDh
        ram:3ab0 5f              ??         5Fh    _
        ram:3ab1 33              ??         33h    3
        ram:3ab2 5b              ??         5Bh    [
        ram:3ab3 64              ??         64h    d
        ram:3ab4 03              ??         03h
        ram:3ab5 cd              ??         CDh
        ram:3ab6 5f              ??         5Fh    _
        ram:3ab7 33              ??         33h    3
        ram:3ab8 43              ??         43h    C
        ram:3ab9 61              ??         61h    a
        ram:3aba 05              ??         05h
        ram:3abb cd              ??         CDh
        ram:3abc 5f              ??         5Fh    _
        ram:3abd 33              ??         33h    3
        ram:3abe e5              ??         E5h
        ram:3abf 61              ??         61h    a
        ram:3ac0 05              ??         05h
        ram:3ac1 cd              ??         CDh
        ram:3ac2 5f              ??         5Fh    _
        ram:3ac3 33              ??         33h    3
        ram:3ac4 c9              ??         C9h
        ram:3ac5 67              ??         67h    g
        ram:3ac6 03              ??         03h
        ram:3ac7 cd              ??         CDh
        ram:3ac8 5f              ??         5Fh    _
        ram:3ac9 33              ??         33h    3
        ram:3aca e7              ??         E7h
        ram:3acb 67              ??         67h    g
        ram:3acc 03              ??         03h
        ram:3acd cd              ??         CDh
        ram:3ace 5f              ??         5Fh    _
        ram:3acf 33              ??         33h    3
        ram:3ad0 ea              ??         EAh
        ram:3ad1 60              ??         60h    `
        ram:3ad2 05              ??         05h
        ram:3ad3 cd              ??         CDh
        ram:3ad4 5f              ??         5Fh    _
        ram:3ad5 33              ??         33h    3
        ram:3ad6 69              ??         69h    i
        ram:3ad7 5b              ??         5Bh    [
        ram:3ad8 03              ??         03h
        ram:3ad9 cd              ??         CDh
        ram:3ada 5f              ??         5Fh    _
        ram:3adb 33              ??         33h    3
        ram:3adc 35              ??         35h    5
        ram:3add 71              ??         71h    q
        ram:3ade 02              ??         02h
        ram:3adf cd              ??         CDh
        ram:3ae0 5f              ??         5Fh    _
        ram:3ae1 33              ??         33h    3
        ram:3ae2 3a              ??         3Ah    :
        ram:3ae3 56              ??         56h    V
        ram:3ae4 02              ??         02h
        ram:3ae5 cd              ??         CDh
        ram:3ae6 5f              ??         5Fh    _
        ram:3ae7 33              ??         33h    3
        ram:3ae8 4b              ??         4Bh    K
        ram:3ae9 62              ??         62h    b
        ram:3aea 02              ??         02h
        ram:3aeb cd              ??         CDh
        ram:3aec 5f              ??         5Fh    _
        ram:3aed 33              ??         33h    3
        ram:3aee 31              ??         31h    1
        ram:3aef 45              ??         45h    E
        ram:3af0 02              ??         02h
        ram:3af1 cd              ??         CDh
        ram:3af2 5f              ??         5Fh    _
        ram:3af3 33              ??         33h    3
        ram:3af4 28              ??         28h    (
        ram:3af5 49              ??         49h    I
        ram:3af6 02              ??         02h
        ram:3af7 cd              ??         CDh
        ram:3af8 5f              ??         5Fh    _
        ram:3af9 33              ??         33h    3
        ram:3afa f9              ??         F9h
        ram:3afb 49              ??         49h    I
        ram:3afc 02              ??         02h
        ram:3afd cd              ??         CDh
        ram:3afe 5f              ??         5Fh    _
        ram:3aff 33              ??         33h    3
        ram:3b00 1b              ??         1Bh
        ram:3b01 4b              ??         4Bh    K
        ram:3b02 02              ??         02h
        ram:3b03 cd              ??         CDh
        ram:3b04 5f              ??         5Fh    _
        ram:3b05 33              ??         33h    3
        ram:3b06 1f              ??         1Fh
        ram:3b07 4b              ??         4Bh    K
        ram:3b08 02              ??         02h
        ram:3b09 cd              ??         CDh
        ram:3b0a 5f              ??         5Fh    _
        ram:3b0b 33              ??         33h    3
        ram:3b0c 23              ??         23h    #
        ram:3b0d 4b              ??         4Bh    K
        ram:3b0e 02              ??         02h
        ram:3b0f cd              ??         CDh
        ram:3b10 5f              ??         5Fh    _
        ram:3b11 33              ??         33h    3
        ram:3b12 3c              ??         3Ch    <
        ram:3b13 4b              ??         4Bh    K
        ram:3b14 02              ??         02h
        ram:3b15 cd              ??         CDh
        ram:3b16 5f              ??         5Fh    _
        ram:3b17 33              ??         33h    3
        ram:3b18 40              ??         40h    @
        ram:3b19 4b              ??         4Bh    K
        ram:3b1a 02              ??         02h
        ram:3b1b cd              ??         CDh
        ram:3b1c 5f              ??         5Fh    _
        ram:3b1d 33              ??         33h    3
        ram:3b1e 44              ??         44h    D
        ram:3b1f 4b              ??         4Bh    K
        ram:3b20 02              ??         02h
        ram:3b21 cd              ??         CDh
        ram:3b22 5f              ??         5Fh    _
        ram:3b23 33              ??         33h    3
        ram:3b24 00              ??         00h
        ram:3b25 40              ??         40h    @
        ram:3b26 02              ??         02h
        ram:3b27 cd              ??         CDh
        ram:3b28 5f              ??         5Fh    _
        ram:3b29 33              ??         33h    3
        ram:3b2a 03              ??         03h
        ram:3b2b 40              ??         40h    @
        ram:3b2c 02              ??         02h
        ram:3b2d cd              ??         CDh
        ram:3b2e 5f              ??         5Fh    _
        ram:3b2f 33              ??         33h    3
        ram:3b30 12              ??         12h
        ram:3b31 40              ??         40h    @
        ram:3b32 02              ??         02h
        ram:3b33 cd              ??         CDh
        ram:3b34 5f              ??         5Fh    _
        ram:3b35 33              ??         33h    3
        ram:3b36 15              ??         15h
        ram:3b37 40              ??         40h    @
        ram:3b38 02              ??         02h
        ram:3b39 cd              ??         CDh
        ram:3b3a 5f              ??         5Fh    _
        ram:3b3b 33              ??         33h    3
        ram:3b3c 4d              ??         4Dh    M
        ram:3b3d 40              ??         40h    @
        ram:3b3e 02              ??         02h
        ram:3b3f cd              ??         CDh
        ram:3b40 5f              ??         5Fh    _
        ram:3b41 33              ??         33h    3
        ram:3b42 d3              ??         D3h
        ram:3b43 40              ??         40h    @
        ram:3b44 02              ??         02h
        ram:3b45 cd              ??         CDh
        ram:3b46 5f              ??         5Fh    _
        ram:3b47 33              ??         33h    3
        ram:3b48 a1              ??         A1h
        ram:3b49 44              ??         44h    D
        ram:3b4a 02              ??         02h
        ram:3b4b cd              ??         CDh
        ram:3b4c 5f              ??         5Fh    _
        ram:3b4d 33              ??         33h    3
        ram:3b4e b5              ??         B5h
        ram:3b4f 44              ??         44h    D
        ram:3b50 02              ??         02h
        ram:3b51 cd              ??         CDh
        ram:3b52 5f              ??         5Fh    _
        ram:3b53 33              ??         33h    3
        ram:3b54 2f              ??         2Fh    /
        ram:3b55 45              ??         45h    E
        ram:3b56 06              ??         06h
        ram:3b57 cd              ??         CDh
        ram:3b58 5f              ??         5Fh    _
        ram:3b59 33              ??         33h    3
        ram:3b5a 55              ??         55h    U
        ram:3b5b 6c              ??         6Ch    l
        ram:3b5c 01              ??         01h
        ram:3b5d cd              ??         CDh
        ram:3b5e 5f              ??         5Fh    _
        ram:3b5f 33              ??         33h    3
        ram:3b60 f4              ??         F4h
        ram:3b61 6c              ??         6Ch    l
        ram:3b62 01              ??         01h
        ram:3b63 cd              ??         CDh
        ram:3b64 5f              ??         5Fh    _
        ram:3b65 33              ??         33h    3
        ram:3b66 fe              ??         FEh
        ram:3b67 6c              ??         6Ch    l
        ram:3b68 01              ??         01h
        ram:3b69 cd              ??         CDh
        ram:3b6a 5f              ??         5Fh    _
        ram:3b6b 33              ??         33h    3
        ram:3b6c 25              ??         25h    %
        ram:3b6d 6d              ??         6Dh    m
        ram:3b6e 01              ??         01h
        ram:3b6f cd              ??         CDh
        ram:3b70 5f              ??         5Fh    _
        ram:3b71 33              ??         33h    3
        ram:3b72 cb              ??         CBh
        ram:3b73 6d              ??         6Dh    m
        ram:3b74 01              ??         01h
        ram:3b75 cd              ??         CDh
        ram:3b76 5f              ??         5Fh    _
        ram:3b77 33              ??         33h    3
        ram:3b78 df              ??         DFh
        ram:3b79 6d              ??         6Dh    m
        ram:3b7a 01              ??         01h
        ram:3b7b cd              ??         CDh
        ram:3b7c 5f              ??         5Fh    _
        ram:3b7d 33              ??         33h    3
        ram:3b7e fc              ??         FCh
        ram:3b7f 6d              ??         6Dh    m
        ram:3b80 01              ??         01h
        ram:3b81 cd              ??         CDh
        ram:3b82 5f              ??         5Fh    _
        ram:3b83 33              ??         33h    3
        ram:3b84 21              ??         21h    !
        ram:3b85 6e              ??         6Eh    n
        ram:3b86 01              ??         01h
        ram:3b87 cd              ??         CDh
        ram:3b88 5f              ??         5Fh    _
        ram:3b89 33              ??         33h    3
        ram:3b8a 2b              ??         2Bh    +
        ram:3b8b 6e              ??         6Eh    n
        ram:3b8c 01              ??         01h
        ram:3b8d cd              ??         CDh
        ram:3b8e 8c              ??         8Ch
        ram:3b8f 33              ??         33h    3
        ram:3b90 5b              ??         5Bh    [
        ram:3b91 6f              ??         6Fh    o
        ram:3b92 01              ??         01h
        ram:3b93 cd              ??         CDh
        ram:3b94 5f              ??         5Fh    _
        ram:3b95 33              ??         33h    3
        ram:3b96 7e              ??         7Eh    ~
        ram:3b97 6f              ??         6Fh    o
        ram:3b98 01              ??         01h
        ram:3b99 cd              ??         CDh
        ram:3b9a 5f              ??         5Fh    _
        ram:3b9b 33              ??         33h    3
        ram:3b9c e7              ??         E7h
        ram:3b9d 70              ??         70h    p
        ram:3b9e 01              ??         01h
        ram:3b9f cd              ??         CDh
        ram:3ba0 5f              ??         5Fh    _
        ram:3ba1 33              ??         33h    3
        ram:3ba2 c6              ??         C6h
        ram:3ba3 71              ??         71h    q
        ram:3ba4 01              ??         01h
        ram:3ba5 cd              ??         CDh
        ram:3ba6 8c              ??         8Ch
        ram:3ba7 33              ??         33h    3
        ram:3ba8 2e              ??         2Eh    .
        ram:3ba9 72              ??         72h    r
        ram:3baa 01              ??         01h
        ram:3bab cd              ??         CDh
        ram:3bac 5f              ??         5Fh    _
        ram:3bad 33              ??         33h    3
        ram:3bae 2e              ??         2Eh    .
        ram:3baf 72              ??         72h    r
        ram:3bb0 01              ??         01h
        ram:3bb1 cd              ??         CDh
        ram:3bb2 8c              ??         8Ch
        ram:3bb3 33              ??         33h    3
        ram:3bb4 49              ??         49h    I
        ram:3bb5 72              ??         72h    r
        ram:3bb6 01              ??         01h
        ram:3bb7 cd              ??         CDh
        ram:3bb8 5f              ??         5Fh    _
        ram:3bb9 33              ??         33h    3
        ram:3bba 8e              ??         8Eh
        ram:3bbb 72              ??         72h    r
        ram:3bbc 01              ??         01h
        ram:3bbd cd              ??         CDh
        ram:3bbe 5f              ??         5Fh    _
        ram:3bbf 33              ??         33h    3
        ram:3bc0 c0              ??         C0h
        ram:3bc1 72              ??         72h    r
        ram:3bc2 01              ??         01h
        ram:3bc3 cd              ??         CDh
        ram:3bc4 5f              ??         5Fh    _
        ram:3bc5 33              ??         33h    3
        ram:3bc6 e7              ??         E7h
        ram:3bc7 72              ??         72h    r
        ram:3bc8 01              ??         01h
        ram:3bc9 cd              ??         CDh
        ram:3bca 5f              ??         5Fh    _
        ram:3bcb 33              ??         33h    3
        ram:3bcc d2              ??         D2h
        ram:3bcd 62              ??         62h    b
        ram:3bce 04              ??         04h
        ram:3bcf cd              ??         CDh
        ram:3bd0 5f              ??         5Fh    _
        ram:3bd1 33              ??         33h    3
        ram:3bd2 f7              ??         F7h
        ram:3bd3 62              ??         62h    b
        ram:3bd4 04              ??         04h
        ram:3bd5 cd              ??         CDh
        ram:3bd6 5f              ??         5Fh    _
        ram:3bd7 33              ??         33h    3
        ram:3bd8 0a              ??         0Ah
        ram:3bd9 63              ??         63h    c
        ram:3bda 04              ??         04h
        ram:3bdb cd              ??         CDh
        ram:3bdc 5f              ??         5Fh    _
        ram:3bdd 33              ??         33h    3
        ram:3bde 1d              ??         1Dh
        ram:3bdf 63              ??         63h    c
        ram:3be0 04              ??         04h
        ram:3be1 cd              ??         CDh
        ram:3be2 5f              ??         5Fh    _
        ram:3be3 33              ??         33h    3
        ram:3be4 d9              ??         D9h
        ram:3be5 71              ??         71h    q
        ram:3be6 01              ??         01h
        ram:3be7 cd              ??         CDh
        ram:3be8 5f              ??         5Fh    _
        ram:3be9 33              ??         33h    3
        ram:3bea b2              ??         B2h
        ram:3beb 6b              ??         6Bh    k
        ram:3bec 04              ??         04h
        ram:3bed cd              ??         CDh
        ram:3bee 5f              ??         5Fh    _
        ram:3bef 33              ??         33h    3
        ram:3bf0 f0              ??         F0h
        ram:3bf1 7c              ??         7Ch    |
        ram:3bf2 06              ??         06h
        ram:3bf3 cd              ??         CDh
        ram:3bf4 5f              ??         5Fh    _
        ram:3bf5 33              ??         33h    3
        ram:3bf6 b6              ??         B6h
        ram:3bf7 6b              ??         6Bh    k
        ram:3bf8 04              ??         04h
        ram:3bf9 cd              ??         CDh
        ram:3bfa 5f              ??         5Fh    _
        ram:3bfb 33              ??         33h    3
        ram:3bfc 51              ??         51h    Q
        ram:3bfd 4f              ??         4Fh    O
        ram:3bfe 04              ??         04h
        ram:3bff cd              ??         CDh
        ram:3c00 5f              ??         5Fh    _
        ram:3c01 33              ??         33h    3
        ram:3c02 6b              ??         6Bh    k
        ram:3c03 74              ??         74h    t
        ram:3c04 03              ??         03h
        ram:3c05 cd              ??         CDh
        ram:3c06 5f              ??         5Fh    _
        ram:3c07 33              ??         33h    3
        ram:3c08 bf              ??         BFh
        ram:3c09 47              ??         47h    G
        ram:3c0a 01              ??         01h
        ram:3c0b cd              ??         CDh
        ram:3c0c 5f              ??         5Fh    _
        ram:3c0d 33              ??         33h    3
        ram:3c0e d5              ??         D5h
        ram:3c0f 47              ??         47h    G
        ram:3c10 01              ??         01h
        ram:3c11 cd              ??         CDh
        ram:3c12 5f              ??         5Fh    _
        ram:3c13 33              ??         33h    3
        ram:3c14 eb              ??         EBh
        ram:3c15 47              ??         47h    G
        ram:3c16 01              ??         01h
        ram:3c17 cd              ??         CDh
        ram:3c18 5f              ??         5Fh    _
        ram:3c19 33              ??         33h    3
        ram:3c1a f1              ??         F1h
        ram:3c1b 47              ??         47h    G
        ram:3c1c 01              ??         01h
        ram:3c1d cd              ??         CDh
        ram:3c1e 5f              ??         5Fh    _
        ram:3c1f 33              ??         33h    3
        ram:3c20 f6              ??         F6h
        ram:3c21 47              ??         47h    G
        ram:3c22 01              ??         01h
        ram:3c23 cd              ??         CDh
        ram:3c24 5f              ??         5Fh    _
        ram:3c25 33              ??         33h    3
        ram:3c26 fa              ??         FAh
        ram:3c27 47              ??         47h    G
        ram:3c28 01              ??         01h
        ram:3c29 cd              ??         CDh
        ram:3c2a 5f              ??         5Fh    _
        ram:3c2b 33              ??         33h    3
        ram:3c2c 5d              ??         5Dh    ]
        ram:3c2d 48              ??         48h    H
        ram:3c2e 01              ??         01h
        ram:3c2f cd              ??         CDh
        ram:3c30 5f              ??         5Fh    _
        ram:3c31 33              ??         33h    3
        ram:3c32 ee              ??         EEh
        ram:3c33 48              ??         48h    H
        ram:3c34 01              ??         01h
        ram:3c35 cd              ??         CDh
        ram:3c36 5f              ??         5Fh    _
        ram:3c37 33              ??         33h    3
        ram:3c38 24              ??         24h    $
        ram:3c39 49              ??         49h    I
        ram:3c3a 01              ??         01h
        ram:3c3b cd              ??         CDh
        ram:3c3c 5f              ??         5Fh    _
        ram:3c3d 33              ??         33h    3
        ram:3c3e 6e              ??         6Eh    n
        ram:3c3f 4e              ??         4Eh    N
        ram:3c40 01              ??         01h
        ram:3c41 cd              ??         CDh
        ram:3c42 5f              ??         5Fh    _
        ram:3c43 33              ??         33h    3
        ram:3c44 bd              ??         BDh
        ram:3c45 7e              ??         7Eh    ~
        ram:3c46 02              ??         02h
        ram:3c47 cd              ??         CDh
        ram:3c48 5f              ??         5Fh    _
        ram:3c49 33              ??         33h    3
        ram:3c4a c0              ??         C0h
        ram:3c4b 7e              ??         7Eh    ~
        ram:3c4c 02              ??         02h
        ram:3c4d cd              ??         CDh
        ram:3c4e 5f              ??         5Fh    _
        ram:3c4f 33              ??         33h    3
        ram:3c50 b6              ??         B6h
        ram:3c51 7f              ??         7Fh    
        ram:3c52 02              ??         02h
        ram:3c53 cd              ??         CDh
        ram:3c54 5f              ??         5Fh    _
        ram:3c55 33              ??         33h    3
        ram:3c56 b8              ??         B8h
        ram:3c57 46              ??         46h    F
        ram:3c58 01              ??         01h
        ram:3c59 cd              ??         CDh
        ram:3c5a 5f              ??         5Fh    _
        ram:3c5b 33              ??         33h    3
        ram:3c5c f5              ??         F5h
        ram:3c5d 46              ??         46h    F
        ram:3c5e 01              ??         01h
        ram:3c5f cd              ??         CDh
        ram:3c60 5f              ??         5Fh    _
        ram:3c61 33              ??         33h    3
        ram:3c62 f8              ??         F8h
        ram:3c63 66              ??         66h    f
        ram:3c64 04              ??         04h
        ram:3c65 cd              ??         CDh
        ram:3c66 5f              ??         5Fh    _
        ram:3c67 33              ??         33h    3
        ram:3c68 bd              ??         BDh
        ram:3c69 5e              ??         5Eh    ^
        ram:3c6a 04              ??         04h
        ram:3c6b cd              ??         CDh
        ram:3c6c 5f              ??         5Fh    _
        ram:3c6d 33              ??         33h    3
        ram:3c6e 88              ??         88h
        ram:3c6f 69              ??         69h    i
        ram:3c70 04              ??         04h
        ram:3c71 cd              ??         CDh
        ram:3c72 5f              ??         5Fh    _
        ram:3c73 33              ??         33h    3
        ram:3c74 94              ??         94h
        ram:3c75 69              ??         69h    i
        ram:3c76 04              ??         04h
        ram:3c77 cd              ??         CDh
        ram:3c78 5f              ??         5Fh    _
        ram:3c79 33              ??         33h    3
        ram:3c7a d1              ??         D1h
        ram:3c7b 70              ??         70h    p
        ram:3c7c 01              ??         01h
        ram:3c7d cd              ??         CDh
        ram:3c7e 5f              ??         5Fh    _
        ram:3c7f 33              ??         33h    3
        ram:3c80 16              ??         16h
        ram:3c81 46              ??         46h    F
        ram:3c82 06              ??         06h
        ram:3c83 cd              ??         CDh
        ram:3c84 5f              ??         5Fh    _
        ram:3c85 33              ??         33h    3
        ram:3c86 2e              ??         2Eh    .
        ram:3c87 46              ??         46h    F
        ram:3c88 06              ??         06h
        ram:3c89 cd              ??         CDh
        ram:3c8a 5f              ??         5Fh    _
        ram:3c8b 33              ??         33h    3
        ram:3c8c 3c              ??         3Ch    <
        ram:3c8d 46              ??         46h    F
        ram:3c8e 01              ??         01h
        ram:3c8f cd              ??         CDh
        ram:3c90 5f              ??         5Fh    _
        ram:3c91 33              ??         33h    3
        ram:3c92 1f              ??         1Fh
        ram:3c93 7c              ??         7Ch    |
        ram:3c94 03              ??         03h
        ram:3c95 cd              ??         CDh
        ram:3c96 5f              ??         5Fh    _
        ram:3c97 33              ??         33h    3
        ram:3c98 49              ??         49h    I
        ram:3c99 72              ??         72h    r
        ram:3c9a 01              ??         01h
        ram:3c9b cd              ??         CDh
        ram:3c9c 5f              ??         5Fh    _
        ram:3c9d 33              ??         33h    3
        ram:3c9e c8              ??         C8h
        ram:3c9f 48              ??         48h    H
        ram:3ca0 06              ??         06h
        ram:3ca1 cd              ??         CDh
        ram:3ca2 5f              ??         5Fh    _
        ram:3ca3 33              ??         33h    3
        ram:3ca4 20              ??         20h
        ram:3ca5 59              ??         59h    Y
        ram:3ca6 07              ??         07h
        ram:3ca7 cd              ??         CDh
        ram:3ca8 5f              ??         5Fh    _
        ram:3ca9 33              ??         33h    3
        ram:3caa f4              ??         F4h
        ram:3cab 45              ??         45h    E
        ram:3cac 06              ??         06h
        ram:3cad cd              ??         CDh
        ram:3cae 5f              ??         5Fh    _
        ram:3caf 33              ??         33h    3
        ram:3cb0 5a              ??         5Ah    Z
        ram:3cb1 45              ??         45h    E
        ram:3cb2 06              ??         06h
        ram:3cb3 cd              ??         CDh
        ram:3cb4 5f              ??         5Fh    _
        ram:3cb5 33              ??         33h    3
        ram:3cb6 04              ??         04h
        ram:3cb7 47              ??         47h    G
        ram:3cb8 06              ??         06h
        ram:3cb9 cd              ??         CDh
        ram:3cba 5f              ??         5Fh    _
        ram:3cbb 33              ??         33h    3
        ram:3cbc bf              ??         BFh
        ram:3cbd 48              ??         48h    H
        ram:3cbe 06              ??         06h
        ram:3cbf cd              ??         CDh
        ram:3cc0 5f              ??         5Fh    _
        ram:3cc1 33              ??         33h    3
        ram:3cc2 20              ??         20h
        ram:3cc3 46              ??         46h    F
        ram:3cc4 06              ??         06h
        ram:3cc5 cd              ??         CDh
        ram:3cc6 5f              ??         5Fh    _
        ram:3cc7 33              ??         33h    3
        ram:3cc8 b5              ??         B5h
        ram:3cc9 65              ??         65h    e
        ram:3cca 07              ??         07h
        ram:3ccb cd              ??         CDh
        ram:3ccc 5f              ??         5Fh    _
        ram:3ccd 33              ??         33h    3
        ram:3cce 7e              ??         7Eh    ~
        ram:3ccf 49              ??         49h    I
        ram:3cd0 06              ??         06h
        ram:3cd1 cd              ??         CDh
        ram:3cd2 5f              ??         5Fh    _
        ram:3cd3 33              ??         33h    3
        ram:3cd4 c9              ??         C9h
        ram:3cd5 58              ??         58h    X
        ram:3cd6 07              ??         07h
        ram:3cd7 cd              ??         CDh
        ram:3cd8 5f              ??         5Fh    _
        ram:3cd9 33              ??         33h    3
        ram:3cda 28              ??         28h    (
        ram:3cdb 49              ??         49h    I
        ram:3cdc 06              ??         06h
        ram:3cdd cd              ??         CDh
        ram:3cde 5f              ??         5Fh    _
        ram:3cdf 33              ??         33h    3
        ram:3ce0 63              ??         63h    c
        ram:3ce1 5b              ??         5Bh    [
        ram:3ce2 03              ??         03h
        ram:3ce3 cd              ??         CDh
        ram:3ce4 5f              ??         5Fh    _
        ram:3ce5 33              ??         33h    3
        ram:3ce6 00              ??         00h
        ram:3ce7 4a              ??         4Ah    J
        ram:3ce8 07              ??         07h
        ram:3ce9 cd              ??         CDh
        ram:3cea 5f              ??         5Fh    _
        ram:3ceb 33              ??         33h    3
        ram:3cec c0              ??         C0h
        ram:3ced 4a              ??         4Ah    J
        ram:3cee 07              ??         07h
        ram:3cef cd              ??         CDh
        ram:3cf0 8c              ??         8Ch
        ram:3cf1 33              ??         33h    3
        ram:3cf2 eb              ??         EBh
        ram:3cf3 4a              ??         4Ah    J
        ram:3cf4 07              ??         07h
        ram:3cf5 cd              ??         CDh
        ram:3cf6 8c              ??         8Ch
        ram:3cf7 33              ??         33h    3
        ram:3cf8 15              ??         15h
        ram:3cf9 4b              ??         4Bh    K
        ram:3cfa 07              ??         07h
        ram:3cfb cd              ??         CDh
        ram:3cfc 8c              ??         8Ch
        ram:3cfd 33              ??         33h    3
        ram:3cfe f9              ??         F9h
        ram:3cff 4a              ??         4Ah    J
        ram:3d00 07              ??         07h
        ram:3d01 cd              ??         CDh
        ram:3d02 8c              ??         8Ch
        ram:3d03 33              ??         33h    3
        ram:3d04 07              ??         07h
        ram:3d05 4b              ??         4Bh    K
        ram:3d06 07              ??         07h
        ram:3d07 cd              ??         CDh
        ram:3d08 8c              ??         8Ch
        ram:3d09 33              ??         33h    3
        ram:3d0a 77              ??         77h    w
        ram:3d0b 46              ??         46h    F
        ram:3d0c 06              ??         06h
        ram:3d0d cd              ??         CDh
        ram:3d0e 8c              ??         8Ch
        ram:3d0f 33              ??         33h    3
        ram:3d10 93              ??         93h
        ram:3d11 46              ??         46h    F
        ram:3d12 06              ??         06h
        ram:3d13 cd              ??         CDh
        ram:3d14 8c              ??         8Ch
        ram:3d15 33              ??         33h    3
        ram:3d16 a4              ??         A4h
        ram:3d17 46              ??         46h    F
        ram:3d18 06              ??         06h
        ram:3d19 cd              ??         CDh
        ram:3d1a 8c              ??         8Ch
        ram:3d1b 33              ??         33h    3
        ram:3d1c d5              ??         D5h
        ram:3d1d 46              ??         46h    F
        ram:3d1e 06              ??         06h
        ram:3d1f cd              ??         CDh
        ram:3d20 8c              ??         8Ch
        ram:3d21 33              ??         33h    3
        ram:3d22 45              ??         45h    E
        ram:3d23 46              ??         46h    F
        ram:3d24 06              ??         06h
        ram:3d25 cd              ??         CDh
        ram:3d26 8c              ??         8Ch
        ram:3d27 33              ??         33h    3
        ram:3d28 5f              ??         5Fh    _
        ram:3d29 46              ??         46h    F
        ram:3d2a 06              ??         06h
        ram:3d2b cd              ??         CDh
        ram:3d2c 8c              ??         8Ch
        ram:3d2d 33              ??         33h    3
        ram:3d2e a2              ??         A2h
        ram:3d2f 49              ??         49h    I
        ram:3d30 06              ??         06h
        ram:3d31 cd              ??         CDh
        ram:3d32 5f              ??         5Fh    _
        ram:3d33 33              ??         33h    3
        ram:3d34 b2              ??         B2h
        ram:3d35 45              ??         45h    E
        ram:3d36 06              ??         06h
        ram:3d37 cd              ??         CDh
        ram:3d38 8c              ??         8Ch
        ram:3d39 33              ??         33h    3
        ram:3d3a 55              ??         55h    U
        ram:3d3b 48              ??         48h    H
        ram:3d3c 06              ??         06h
        ram:3d3d cd              ??         CDh
        ram:3d3e 5f              ??         5Fh    _
        ram:3d3f 33              ??         33h    3
        ram:3d40 b6              ??         B6h
        ram:3d41 48              ??         48h    H
        ram:3d42 06              ??         06h
        ram:3d43 cd              ??         CDh
        ram:3d44 5f              ??         5Fh    _
        ram:3d45 33              ??         33h    3
        ram:3d46 38              ??         38h    8
        ram:3d47 46              ??         46h    F
        ram:3d48 06              ??         06h
        ram:3d49 cd              ??         CDh
        ram:3d4a 8c              ??         8Ch
        ram:3d4b 33              ??         33h    3
        ram:3d4c 9d              ??         9Dh
        ram:3d4d 64              ??         64h    d
        ram:3d4e 06              ??         06h
        ram:3d4f cd              ??         CDh
        ram:3d50 5f              ??         5Fh    _
        ram:3d51 33              ??         33h    3
        ram:3d52 1d              ??         1Dh
        ram:3d53 47              ??         47h    G
        ram:3d54 06              ??         06h
        ram:3d55 cd              ??         CDh
        ram:3d56 5f              ??         5Fh    _
        ram:3d57 33              ??         33h    3
        ram:3d58 a1              ??         A1h
        ram:3d59 47              ??         47h    G
        ram:3d5a 06              ??         06h
        ram:3d5b cd              ??         CDh
        ram:3d5c 8c              ??         8Ch
        ram:3d5d 33              ??         33h    3
        ram:3d5e cb              ??         CBh
        ram:3d5f 47              ??         47h    G
        ram:3d60 06              ??         06h
        ram:3d61 cd              ??         CDh
        ram:3d62 5f              ??         5Fh    _
        ram:3d63 33              ??         33h    3
        ram:3d64 19              ??         19h
        ram:3d65 72              ??         72h    r
        ram:3d66 01              ??         01h
        ram:3d67 cd              ??         CDh
        ram:3d68 5f              ??         5Fh    _
        ram:3d69 33              ??         33h    3
        ram:3d6a 06              ??         06h
        ram:3d6b 6f              ??         6Fh    o
        ram:3d6c 01              ??         01h
        ram:3d6d cd              ??         CDh
        ram:3d6e 5f              ??         5Fh    _
        ram:3d6f 33              ??         33h    3
        ram:3d70 6f              ??         6Fh    o
        ram:3d71 57              ??         57h    W
        ram:3d72 07              ??         07h
        ram:3d73 cd              ??         CDh
        ram:3d74 5f              ??         5Fh    _
        ram:3d75 33              ??         33h    3
        ram:3d76 cc              ??         CCh
        ram:3d77 4a              ??         4Ah    J
        ram:3d78 07              ??         07h
        ram:3d79 cd              ??         CDh
        ram:3d7a 5f              ??         5Fh    _
        ram:3d7b 33              ??         33h    3
        ram:3d7c 9d              ??         9Dh
        ram:3d7d 72              ??         72h    r
        ram:3d7e 01              ??         01h
        ram:3d7f cd              ??         CDh
        ram:3d80 5f              ??         5Fh    _
        ram:3d81 33              ??         33h    3
        ram:3d82 76              ??         76h    v
        ram:3d83 53              ??         53h    S
        ram:3d84 06              ??         06h
        ram:3d85 cd              ??         CDh
        ram:3d86 5f              ??         5Fh    _
        ram:3d87 33              ??         33h    3
        ram:3d88 b9              ??         B9h
        ram:3d89 47              ??         47h    G
        ram:3d8a 01              ??         01h
        ram:3d8b cd              ??         CDh
        ram:3d8c 5f              ??         5Fh    _
        ram:3d8d 33              ??         33h    3
        ram:3d8e 33              ??         33h    3
        ram:3d8f 70              ??         70h    p
        ram:3d90 01              ??         01h
        ram:3d91 cd              ??         CDh
        ram:3d92 5f              ??         5Fh    _
        ram:3d93 33              ??         33h    3
        ram:3d94 f2              ??         F2h
        ram:3d95 6f              ??         6Fh    o
        ram:3d96 06              ??         06h
        ram:3d97 cd              ??         CDh
        ram:3d98 5f              ??         5Fh    _
        ram:3d99 33              ??         33h    3
        ram:3d9a 6f              ??         6Fh    o
        ram:3d9b 6f              ??         6Fh    o
        ram:3d9c 01              ??         01h
        ram:3d9d cd              ??         CDh
        ram:3d9e 5f              ??         5Fh    _
        ram:3d9f 33              ??         33h    3
        ram:3da0 f8              ??         F8h
        ram:3da1 6e              ??         6Eh    n
        ram:3da2 01              ??         01h
        ram:3da3 cd              ??         CDh
        ram:3da4 5f              ??         5Fh    _
        ram:3da5 33              ??         33h    3
        ram:3da6 d4              ??         D4h
        ram:3da7 6e              ??         6Eh    n
        ram:3da8 01              ??         01h
        ram:3da9 cd              ??         CDh
        ram:3daa 5f              ??         5Fh    _
        ram:3dab 33              ??         33h    3
        ram:3dac 65              ??         65h    e
        ram:3dad 6e              ??         6Eh    n
        ram:3dae 01              ??         01h
        ram:3daf cd              ??         CDh
        ram:3db0 5f              ??         5Fh    _
        ram:3db1 33              ??         33h    3
        ram:3db2 5b              ??         5Bh    [
        ram:3db3 6e              ??         6Eh    n
        ram:3db4 01              ??         01h
        ram:3db5 cd              ??         CDh
        ram:3db6 5f              ??         5Fh    _
        ram:3db7 33              ??         33h    3
        ram:3db8 5d              ??         5Dh    ]
        ram:3db9 4a              ??         4Ah    J
        ram:3dba 01              ??         01h
        ram:3dbb cd              ??         CDh
        ram:3dbc 5f              ??         5Fh    _
        ram:3dbd 33              ??         33h    3
        ram:3dbe 5b              ??         5Bh    [
        ram:3dbf 6f              ??         6Fh    o
        ram:3dc0 01              ??         01h
        ram:3dc1 cd              ??         CDh
        ram:3dc2 5f              ??         5Fh    _
        ram:3dc3 33              ??         33h    3
        ram:3dc4 84              ??         84h
        ram:3dc5 70              ??         70h    p
        ram:3dc6 01              ??         01h
        ram:3dc7 cd              ??         CDh
        ram:3dc8 5f              ??         5Fh    _
        ram:3dc9 33              ??         33h    3
        ram:3dca a7              ??         A7h
        ram:3dcb 70              ??         70h    p
        ram:3dcc 01              ??         01h
        ram:3dcd cd              ??         CDh
        ram:3dce 5f              ??         5Fh    _
        ram:3dcf 33              ??         33h    3
        ram:3dd0 58              ??         58h    X
        ram:3dd1 6b              ??         6Bh    k
        ram:3dd2 01              ??         01h
        ram:3dd3 cd              ??         CDh
        ram:3dd4 5f              ??         5Fh    _
        ram:3dd5 33              ??         33h    3
        ram:3dd6 f9              ??         F9h
        ram:3dd7 6f              ??         6Fh    o
        ram:3dd8 01              ??         01h
        ram:3dd9 cd              ??         CDh
        ram:3dda 5f              ??         5Fh    _
        ram:3ddb 33              ??         33h    3
        ram:3ddc b7              ??         B7h
        ram:3ddd 6c              ??         6Ch    l
        ram:3dde 01              ??         01h
        ram:3ddf cd              ??         CDh
        ram:3de0 8c              ??         8Ch
        ram:3de1 33              ??         33h    3
        ram:3de2 12              ??         12h
        ram:3de3 5d              ??         5Dh    ]
        ram:3de4 07              ??         07h
        ram:3de5 cd              ??         CDh
        ram:3de6 8c              ??         8Ch
        ram:3de7 33              ??         33h    3
        ram:3de8 bd              ??         BDh
        ram:3de9 5d              ??         5Dh    ]
        ram:3dea 07              ??         07h
        ram:3deb cd              ??         CDh
        ram:3dec 8c              ??         8Ch
        ram:3ded 33              ??         33h    3
        ram:3dee b6              ??         B6h
        ram:3def 7e              ??         7Eh    ~
        ram:3df0 03              ??         03h
        ram:3df1 cd              ??         CDh
        ram:3df2 5f              ??         5Fh    _
        ram:3df3 33              ??         33h    3
        ram:3df4 e8              ??         E8h
        ram:3df5 7c              ??         7Ch    |
        ram:3df6 06              ??         06h
        ram:3df7 cd              ??         CDh
        ram:3df8 5f              ??         5Fh    _
        ram:3df9 33              ??         33h    3
        ram:3dfa ed              ??         EDh
        ram:3dfb 7c              ??         7Ch    |
        ram:3dfc 06              ??         06h
        ram:3dfd cd              ??         CDh
        ram:3dfe 8c              ??         8Ch
        ram:3dff 33              ??         33h    3
        ram:3e00 22              ??         22h    "
        ram:3e01 43              ??         43h    C
        ram:3e02 02              ??         02h
        ram:3e03 cd              ??         CDh
        ram:3e04 8c              ??         8Ch
        ram:3e05 33              ??         33h    3
        ram:3e06 40              ??         40h    @
        ram:3e07 43              ??         43h    C
        ram:3e08 02              ??         02h
        ram:3e09 cd              ??         CDh
        ram:3e0a 8c              ??         8Ch
        ram:3e0b 33              ??         33h    3
        ram:3e0c 4f              ??         4Fh    O
        ram:3e0d 44              ??         44h    D
        ram:3e0e 02              ??         02h
        ram:3e0f cd              ??         CDh
        ram:3e10 8c              ??         8Ch
        ram:3e11 33              ??         33h    3
        ram:3e12 db              ??         DBh
        ram:3e13 41              ??         41h    A
        ram:3e14 02              ??         02h
        ram:3e15 cd              ??         CDh
        ram:3e16 8c              ??         8Ch
        ram:3e17 33              ??         33h    3
        ram:3e18 df              ??         DFh
        ram:3e19 41              ??         41h    A
        ram:3e1a 02              ??         02h
        ram:3e1b cd              ??         CDh
        ram:3e1c 8c              ??         8Ch
        ram:3e1d 33              ??         33h    3
        ram:3e1e 5f              ??         5Fh    _
        ram:3e1f 43              ??         43h    C
        ram:3e20 02              ??         02h
        ram:3e21 cd              ??         CDh
        ram:3e22 8c              ??         8Ch
        ram:3e23 33              ??         33h    3
        ram:3e24 d7              ??         D7h
        ram:3e25 41              ??         41h    A
        ram:3e26 02              ??         02h
        ram:3e27 cd              ??         CDh
        ram:3e28 5f              ??         5Fh    _
        ram:3e29 33              ??         33h    3
        ram:3e2a 98              ??         98h
        ram:3e2b 40              ??         40h    @
        ram:3e2c 02              ??         02h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     FUN_ram_0aeb:0b2c(c)
        ram:3e2d cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e30 b2              ??         B2h
        ram:3e31 7f              ??         7Fh    
        ram:3e32 03              ??         03h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0b2f(c)
        ram:3e33 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e36 f4              ??         F4h
        ram:3e37 45              ??         45h    E
        ram:3e38 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[2]:     FUN_ram_00ea:0b44(c),
                                                                                          FUN_ram_0aeb:0c09(c)
        ram:3e39 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e3c 1d              ??         1Dh
        ram:3e3d 70              ??         70h    p
        ram:3e3e 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     FUN_ram_0aeb:0b89(c)
        ram:3e3f cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e42 a3              ??         A3h
        ram:3e43 45              ??         45h    E
        ram:3e44 01              ??         01h
        ram:3e45 cd              ??         CDh
        ram:3e46 5f              ??         5Fh    _
        ram:3e47 33              ??         33h    3
        ram:3e48 db              ??         DBh
        ram:3e49 6c              ??         6Ch    l
        ram:3e4a 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0c24(c)
        ram:3e4b cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e4e c6              ??         C6h
        ram:3e4f 70              ??         70h    p
        ram:3e50 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0c32(c)
        ram:3e51 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e54 cd              ??         CDh
        ram:3e55 42              ??         42h    B
        ram:3e56 01              ??         01h
        ram:3e57 cd              ??         CDh
        ram:3e58 5f              ??         5Fh    _
        ram:3e59 33              ??         33h    3
        ram:3e5a 73              ??         73h    s
        ram:3e5b 60              ??         60h    `
        ram:3e5c 04              ??         04h
        ram:3e5d cd              ??         CDh
        ram:3e5e 5f              ??         5Fh    _
        ram:3e5f 33              ??         33h    3
        ram:3e60 83              ??         83h
        ram:3e61 45              ??         45h    E
        ram:3e62 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0c3b(c)
        ram:3e63 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e66 46              ??         46h    F
        ram:3e67 7e              ??         7Eh    ~
        ram:3e68 03              ??         03h
        ram:3e69 cd              ??         CDh
        ram:3e6a 5f              ??         5Fh    _
        ram:3e6b 33              ??         33h    3
        ram:3e6c 27              ??         27h    '
        ram:3e6d 64              ??         64h    d
        ram:3e6e 03              ??         03h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     FUN_ram_0ccc:0ccf(c)
        ram:3e6f cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e72 65              ??         65h    e
        ram:3e73 7c              ??         7Ch    |
        ram:3e74 03              ??         03h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:01f7(c)
        ram:3e75 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e78 f0              ??         F0h
        ram:3e79 50              ??         50h    P
        ram:3e7a 04              ??         04h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0208(c)
        ram:3e7b cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e7e 01              ??         01h
        ram:3e7f 72              ??         72h    r
        ram:3e80 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:020b(c)
        ram:3e81 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e84 2c              ??         2Ch    ,
        ram:3e85 46              ??         46h    F
        ram:3e86 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0c5e(c)
        ram:3e87 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e8a 79              ??         79h    y
        ram:3e8b 4b              ??         4Bh    K
        ram:3e8c 04              ??         04h
        ram:3e8d cd              ??         CDh
        ram:3e8e 5f              ??         5Fh    _
        ram:3e8f 33              ??         33h    3
        ram:3e90 de              ??         DEh
        ram:3e91 45              ??         45h    E
        ram:3e92 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0219(c)
        ram:3e93 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e96 e9              ??         E9h
        ram:3e97 71              ??         71h    q
        ram:3e98 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:023d(c)
        ram:3e99 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3e9c ee              ??         EEh
        ram:3e9d 4b              ??         4Bh    K
        ram:3e9e 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:04eb(c)
        ram:3e9f cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ea2 09              ??         09h
        ram:3ea3 4c              ??         4Ch    L
        ram:3ea4 01              ??         01h
        ram:3ea5 cd              ??         CDh
        ram:3ea6 5f              ??         5Fh    _
        ram:3ea7 33              ??         33h    3
        ram:3ea8 dd              ??         DDh
        ram:3ea9 47              ??         47h    G
        ram:3eaa 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f
        ram:3eab cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3eae 16              ??         16h
        ram:3eaf 73              ??         73h    s
        ram:3eb0 01              ??         01h
        ram:3eb1 cd              ??         CDh
        ram:3eb2 5f              ??         5Fh    _
        ram:3eb3 33              ??         33h    3
        ram:3eb4 24              ??         24h    $
        ram:3eb5 46              ??         46h    F
        ram:3eb6 06              ??         06h
        ram:3eb7 cd              ??         CDh
        ram:3eb8 5f              ??         5Fh    _
        ram:3eb9 33              ??         33h    3
        ram:3eba 18              ??         18h
        ram:3ebb 49              ??         49h    I
        ram:3ebc 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[4]:     ram:0519(c), ram:05e5(c),
                                                                                          ram:0608(c), ram:0617(c)
        ram:3ebd cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ec0 bf              ??         BFh
        ram:3ec1 49              ??         49h    I
        ram:3ec2 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0ca9(c)
        ram:3ec3 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ec6 fa              ??         FAh
        ram:3ec7 48              ??         48h    H
        ram:3ec8 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:05cb(c)
        ram:3ec9 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ecc cc              ??         CCh
        ram:3ecd 48              ??         48h    H
        ram:3ece 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:05f2(c)
        ram:3ecf cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ed2 dd              ??         DDh
        ram:3ed3 48              ??         48h    H
        ram:3ed4 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0629(c)
        ram:3ed5 cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ed8 11              ??         11h
        ram:3ed9 43              ??         43h    C
        ram:3eda 01              ??         01h
                             **************************************************************
                             *                       THUNK FUNCTION                       *
                             **************************************************************
                             thunk noreturn undefined thunk_FUN_ram_335f()
                               Thunked-Function: FUN_ram_335f
             undefined         A:1            <RETURN>
                             thunk_FUN_ram_335f                              XREF[1]:     ram:0635(c)
        ram:3edb cd 5f 33        CALL       FUN_ram_335f                                     undefined FUN_ram_335f()
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        ram:3ede 3e              ??         3Eh    >
        ram:3edf 63              ??         63h    c
        ram:3ee0 07              ??         07h
        ram:3ee1 cd              ??         CDh
        ram:3ee2 5f              ??         5Fh    _
        ram:3ee3 33              ??         33h    3
        ram:3ee4 7c              ??         7Ch    |
        ram:3ee5 41              ??         41h    A
        ram:3ee6 07              ??         07h
        ram:3ee7 cd              ??         CDh
        ram:3ee8 5f              ??         5Fh    _
        ram:3ee9 33              ??         33h    3
        ram:3eea 5d              ??         5Dh    ]
        ram:3eeb 41              ??         41h    A
        ram:3eec 07              ??         07h
        ram:3eed cd              ??         CDh
        ram:3eee 8c              ??         8Ch
        ram:3eef 33              ??         33h    3
        ram:3ef0 11              ??         11h
        ram:3ef1 43              ??         43h    C
        ram:3ef2 01              ??         01h
        ram:3ef3 cd              ??         CDh
        ram:3ef4 8c              ??         8Ch
        ram:3ef5 33              ??         33h    3
        ram:3ef6 eb              ??         EBh
        ram:3ef7 5a              ??         5Ah    Z
        ram:3ef8 06              ??         06h
        ram:3ef9 cd              ??         CDh
        ram:3efa 8c              ??         8Ch
        ram:3efb 33              ??         33h    3
        ram:3efc d5              ??         D5h
        ram:3efd 66              ??         66h    f
        ram:3efe 06              ??         06h
        ram:3eff cd              ??         CDh
        ram:3f00 8c              ??         8Ch
        ram:3f01 33              ??         33h    3
        ram:3f02 8c              ??         8Ch
        ram:3f03 5e              ??         5Eh    ^
        ram:3f04 07              ??         07h
        ram:3f05 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f08 fa 79 04        JP         M,LAB_ram_0479
        ram:3f0b cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f0e 87              ADD        A,A
        ram:3f0f 41              LD         B,C
        ram:3f10 06 cd           LD         B,0xcd
        ram:3f12 8c              ADC        A,H
        ram:3f13 33              INC        SP
        ram:3f14 14              INC        D
        ram:3f15 7f              LD         A,A
        ram:3f16 07              RLCA
        ram:3f17 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f1a 70              LD         (HL),B
        ram:3f1b 43              LD         B,E
        ram:3f1c 07              RLCA
        ram:3f1d cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f20 3b              DEC        SP
        ram:3f21 60              LD         H,B
        ram:3f22 06 cd           LD         B,0xcd
        ram:3f24 8c              ADC        A,H
        ram:3f25 33              INC        SP
        ram:3f26 f3              DI
        ram:3f27 4e              LD         C,(HL)
        ram:3f28 04              INC        B
        ram:3f29 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f2c c4 4e 04        CALL       NZ,FUN_ram_044e                                  undefined FUN_ram_044e()
        ram:3f2f cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f32 ab              XOR        E
        ram:3f33 49              LD         C,C
        ram:3f34 06 cd           LD         B,0xcd
        ram:3f36 8c              ADC        A,H
        ram:3f37 33              INC        SP
        ram:3f38 0a              LD         A,(BC)
        ram:3f39 66              LD         H,(HL)
        ram:3f3a 06 cd           LD         B,0xcd
        ram:3f3c 8c              ADC        A,H
        ram:3f3d 33              INC        SP
        ram:3f3e 62              LD         H,D
        ram:3f3f 65              LD         H,L
        ram:3f40 01 cd 8c        LD         BC,0x8ccd
        ram:3f43 33              INC        SP
        ram:3f44 d6 7f           SUB        0x7f
        ram:3f46 06 cd           LD         B,0xcd
        ram:3f48 8c              ADC        A,H
        ram:3f49 33              INC        SP
        ram:3f4a f7              RST        RST6                                             undefined RST6()
        ram:3f4b 74              LD         (HL),H
        ram:3f4c 06 cd           LD         B,0xcd
        ram:3f4e 8c              ADC        A,H
        ram:3f4f 33              INC        SP
        ram:3f50 00              NOP
        ram:3f51 40              LD         B,B
        ram:3f52 01 cd 8c        LD         BC,0x8ccd
        ram:3f55 33              INC        SP
        ram:3f56 26 65           LD         H,0x65
        ram:3f58 01 cd 8c        LD         BC,0x8ccd
        ram:3f5b 33              INC        SP
        ram:3f5c 00              NOP
        ram:3f5d 40              LD         B,B
        ram:3f5e 07              RLCA
        ram:3f5f cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f62 3f              CCF
        ram:3f63 50              LD         D,B
        ram:3f64 06 cd           LD         B,0xcd
        ram:3f66 8c              ADC        A,H
        ram:3f67 33              INC        SP
        ram:3f68 50              LD         D,B
        ram:3f69 6f              LD         L,A
        ram:3f6a 06 cd           LD         B,0xcd
        ram:3f6c 8c              ADC        A,H
        ram:3f6d 33              INC        SP
        ram:3f6e 13              INC        DE
        ram:3f6f 72              LD         (HL),D
        ram:3f70 06 cd           LD         B,0xcd
        ram:3f72 8c              ADC        A,H
        ram:3f73 33              INC        SP
        ram:3f74 bd              CP         L
        ram:3f75 72              LD         (HL),D
        ram:3f76 06 cd           LD         B,0xcd
        ram:3f78 8c              ADC        A,H
        ram:3f79 33              INC        SP
        ram:3f7a 12              LD         (DE),A
        ram:3f7b 7e              LD         A,(HL)
        ram:3f7c 06 cd           LD         B,0xcd
        ram:3f7e 8c              ADC        A,H
        ram:3f7f 33              INC        SP
        ram:3f80 aa              XOR        D
        ram:3f81 7f              LD         A,A
        ram:3f82 06 cd           LD         B,0xcd
        ram:3f84 8c              ADC        A,H
        ram:3f85 33              INC        SP
        ram:3f86 04              INC        B
        ram:3f87 43              LD         B,E
        ram:3f88 06 cd           LD         B,0xcd
        ram:3f8a 8c              ADC        A,H
        ram:3f8b 33              INC        SP
        ram:3f8c 00              NOP
        ram:3f8d 40              LD         B,B
        ram:3f8e 06 cd           LD         B,0xcd
        ram:3f90 8c              ADC        A,H
        ram:3f91 33              INC        SP
        ram:3f92 3f              CCF
        ram:3f93 78              LD         A,B
        ram:3f94 04              INC        B
        ram:3f95 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f98 44              LD         B,H
        ram:3f99 78              LD         A,B
        ram:3f9a 04              INC        B
        ram:3f9b cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3f9e 49              LD         C,C
        ram:3f9f 78              LD         A,B
        ram:3fa0 04              INC        B
        ram:3fa1 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3fa4 73              LD         (HL),E
        ram:3fa5 6c              LD         L,H
        ram:3fa6 05              DEC        B
        ram:3fa7 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3faa 87              ADD        A,A
        ram:3fab 7a              LD         A,D
        ram:3fac 03              INC        BC
        ram:3fad cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3fb0 13              INC        DE
        ram:3fb1 5c              LD         E,H
        ram:3fb2 07              RLCA
        ram:3fb3 cd 8c 33        CALL       FUN_ram_338c                                     undefined FUN_ram_338c()
        ram:3fb6 bd              CP         L
        ram:3fb7 4b              LD         C,E
        ram:3fb8 01 cd 8c        LD         BC,0x8ccd
        ram:3fbb 33              INC        SP
        ram:3fbc 0f              RRCA
        ram:3fbd 4e              LD         C,(HL=>DAT_ram_6565)
                             LAB_ram_3fbe+1                                  XREF[0,1]:   NMI_ISR:006a(c)
        ram:3fbe 01 cd 5f        LD         BC,0x5fcd
        ram:3fc1 33              INC        SP
        ram:3fc2 d1              POP        DE
        ram:3fc3 45              LD         B,L
        ram:3fc4 01 cd 5f        LD         BC,0x5fcd
        ram:3fc7 33              INC        SP
        ram:3fc8 2d              DEC        L
        ram:3fc9 6c              LD         L,H
        ram:3fca 01 ff ff        LD         BC,0xffff
        ram:3fcd ff              RST        RST7                                             undefined RST7()
        ram:3fce ff              RST        RST7                                             undefined RST7()
        ram:3fcf ff              RST        RST7                                             undefined RST7()
        ram:3fd0 ff              RST        RST7                                             undefined RST7()
        ram:3fd1 ff              RST        RST7                                             undefined RST7()
        ram:3fd2 ff              RST        RST7                                             undefined RST7()
        ram:3fd3 ff              RST        RST7                                             undefined RST7()
        ram:3fd4 ff              RST        RST7                                             undefined RST7()
        ram:3fd5 ff              RST        RST7                                             undefined RST7()
        ram:3fd6 ff              RST        RST7                                             undefined RST7()
        ram:3fd7 ff              RST        RST7                                             undefined RST7()
        ram:3fd8 ff              RST        RST7                                             undefined RST7()
        ram:3fd9 ff              RST        RST7                                             undefined RST7()
        ram:3fda ff              RST        RST7                                             undefined RST7()
        ram:3fdb ff              RST        RST7                                             undefined RST7()
        ram:3fdc ff              RST        RST7                                             undefined RST7()
        ram:3fdd ff              RST        RST7                                             undefined RST7()
        ram:3fde ff              RST        RST7                                             undefined RST7()
        ram:3fdf ff              RST        RST7                                             undefined RST7()
        ram:3fe0 ff              RST        RST7                                             undefined RST7()
        ram:3fe1 ff              RST        RST7                                             undefined RST7()
        ram:3fe2 ff              RST        RST7                                             undefined RST7()
        ram:3fe3 ff              RST        RST7                                             undefined RST7()
        ram:3fe4 ff              RST        RST7                                             undefined RST7()
        ram:3fe5 ff              RST        RST7                                             undefined RST7()
        ram:3fe6 ff              RST        RST7                                             undefined RST7()
        ram:3fe7 ff              RST        RST7                                             undefined RST7()
        ram:3fe8 ff              RST        RST7                                             undefined RST7()
        ram:3fe9 ff              RST        RST7                                             undefined RST7()
        ram:3fea ff              RST        RST7                                             undefined RST7()
        ram:3feb ff              RST        RST7                                             undefined RST7()
        ram:3fec ff              RST        RST7                                             undefined RST7()
        ram:3fed ff              RST        RST7                                             undefined RST7()
        ram:3fee ff              RST        RST7                                             undefined RST7()
        ram:3fef ff              RST        RST7                                             undefined RST7()
        ram:3ff0 ff              RST        RST7                                             undefined RST7()
        ram:3ff1 ff              RST        RST7                                             undefined RST7()
        ram:3ff2 ff              RST        RST7                                             undefined RST7()
        ram:3ff3 ff              RST        RST7                                             undefined RST7()
        ram:3ff4 ff              RST        RST7                                             undefined RST7()
        ram:3ff5 ff              RST        RST7                                             undefined RST7()
        ram:3ff6 ff              RST        RST7                                             undefined RST7()
        ram:3ff7 ff              RST        RST7                                             undefined RST7()
        ram:3ff8 ff              RST        RST7                                             undefined RST7()
        ram:3ff9 ff              RST        RST7                                             undefined RST7()
        ram:3ffa ff              RST        RST7                                             undefined RST7()
        ram:3ffb ff              RST        RST7                                             undefined RST7()
        ram:3ffc ff              RST        RST7                                             undefined RST7()
        ram:3ffd ff              RST        RST7                                             undefined RST7()
        ram:3ffe ff              RST        RST7                                             undefined RST7()
        ram:3fff ff              RST        RST7                                             undefined RST7()
