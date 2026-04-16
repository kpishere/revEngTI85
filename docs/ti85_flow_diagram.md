# TI-85 ROM Flow Diagram

This document illustrates the main program flow and interrupt loops based on the TI-85 ROM disassembly.

## Main Program Flow

```mermaid
flowchart TD
    A[Power On / Reset] --> B[RST0: Startup Handler]
    B --> C[Initialize System FUN_ram_1ee3]
    C --> D[Set up Floating-Point Registers FUN_ram_2021]
    D --> E[Main Loop / Event Handling]
    E --> F{Interrupt or Event?}
    F -->|Yes| G[Handle Interrupt RST vectors]
    F -->|No| E
    G --> E
```

## Interrupt Loops

### RST0 (Startup)
```mermaid
flowchart TD
    RST0[RST0 Vector] --> Init1[Call FUN_ram_1ee3: System Init]
    Init1 --> Init2[Call FUN_ram_2021: Register Setup]
    Init2 --> Main[Enter Main Program Loop]
```

### RST6 (System Function)
```mermaid
flowchart TD
    RST6[RST6 Vector] --> CheckOP1[Check OP1 Initialized]
    CheckOP1 -->|Not Init| ClearOP1[Clear OP1 Type Bits]
    CheckOP1 -->|Init| CheckOP2[Check OP2 Initialized]
    CheckOP2 -->|Not Init| HandleError[Call Error Handler]
    CheckOP2 -->|Init| CompareRegs[Compare OP1/OP2 Data]
    CompareRegs -->|Match| Continue
    CompareRegs -->|No Match| SpecialCase[Handle Special Case]
    SpecialCase --> Continue
```

### RST7 (System Function)
```mermaid
flowchart TD
    RST7[RST7 Vector] --> SystemFunc[Perform System Operation]
    SystemFunc --> Return[Return to Main]
```

### Other Interrupts
- RST1-RST5: Thunk to floating-point operations (add, multiply, divide, etc.)
- General Interrupt Handler: Handles peripherals

## Key Functions Overview

- **FUN_ram_1f8e**: System state validation for OP1/OP2
- **FUN_ram_2021**: Initialize floating-point register stack
- **Copy Routines**: LAB_ram_209b (11 bytes), LAB_ram_209d (10 bytes)
- **Interrupt Handlers**: RST vectors for system calls and hardware interrupts

This diagram provides a high-level view of the program structure. For detailed code paths, refer to the disassembly.
