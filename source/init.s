
.include "source/offsets.s"
.include "source/constants.s"
.include "source/values.s"


# bootfile.dol offset at 0x100
.section .ram80003100, "ax"



.globl Function_0x80003100
Function_0x80003100: # 0x80003100
    mflr    r0
    lis     r3, unk_800030e4@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, unk_800030e4@l(r3)
    andi.   r0, r0, 0xeef
    cmpwi   r0, 0xeef
    bne-    branch_0x80003130
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      Function_0x80233cd8
branch_0x80003130:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl Function_0x80003140
Function_0x80003140: # 0x80003140
    li      r0, 0x1
    stb     r0, R13Off_m0x3aa0(r13)
    blr


.globl Function_0x8000314c
Function_0x8000314c: # 0x8000314c
    lbz     r3, R13Off_m0x3aa0(r13)
    blr


.globl __start
__start: # 0x80003154
    bl      Function_0x800032b0
    bl      Function_0x80003400
    li      r0, -0x1
    stwu    sp, -0x8(sp)
    stw     r0, 0x4(sp)
    stw     r0, 0x0(sp)
    bl      Function_0x80003340
    li      r0, 0x0
    lis     r6, unk_80000044@h
    addi    r6, r6, unk_80000044@l
    stw     r0, 0x0(r6)
    lis     r6, unk_800000f4@h
    addi    r6, r6, unk_800000f4@l
    lwz     r6, 0x0(r6)
    cmplwi  r6, 0x0
    beq-    branch_0x8000319c
    lwz     r7, 0xc(r6)
    b       branch_0x800031bc

branch_0x8000319c:
    lis     r5, unk_80000034@h
    addi    r5, r5, unk_80000034@l
    lwz     r5, 0x0(r5)
    cmplwi  r5, 0x0
    beq-    branch_0x800031f8
    lis     r7, unk_800030e8@h
    addi    r7, r7, unk_800030e8@l
    lwz     r7, 0x0(r7)
branch_0x800031bc:
    li      r5, 0x0
    cmplwi  r7, 0x2
    beq-    branch_0x800031e8
    cmplwi  r7, 0x3
    li      r5, 0x1
    beq-    branch_0x800031e8
    cmplwi  r7, 0x4
    bne-    branch_0x800031f8
    li      r5, 0x2
    bl      Function_0x80003140
    b       branch_0x800031f8

branch_0x800031e8:
    lis     r6, unk_802b3670@h
    addi    r6, r6, unk_802b3670@l
    mtlr    r6
    blrl
branch_0x800031f8:
    lis     r6, unk_800000f4@h
    addi    r6, r6, unk_800000f4@l
    lwz     r5, 0x0(r6)
    cmplwi  r5, 0x0
    beq+    branch_0x80003258
    lwz     r6, 0x8(r5)
    cmplwi  r6, 0x0
    beq+    branch_0x80003258
    add     r6, r5, r6
    lwz     r14, 0x0(r6)
    cmplwi  r14, 0x0
    beq-    branch_0x80003258
    addi    r15, r6, 0x4
    mtctr   r14
branch_0x80003230:
    addi    r6, r6, 0x4
    lwz     r7, 0x0(r6)
    add     r7, r7, r5
    stw     r7, 0x0(r6)
    bdnz+      branch_0x80003230
    lis     r5, unk_80000034@h
    addi    r5, r5, unk_80000034@l
    clrrwi  r7, r15, 5
    stw     r7, 0x0(r5)
    b       branch_0x80003260

branch_0x80003258:
    li      r14, 0x0
    li      r15, 0x0
branch_0x80003260:
    bl      Function_0x8022d920
    bl      Function_0x802301f0
    lis     r4, unk_800030e6@h
    addi    r4, r4, unk_800030e6@l
    lhz     r3, 0x0(r4)
    andi.   r5, r3, 0x8000
    beq-    branch_0x80003288
    andi.   r3, r3, 0x7fff
    cmplwi  r3, 0x1
    bne-    branch_0x8000328c
branch_0x80003288:
    bl      Function_0x80003100
branch_0x8000328c:
    bl      Function_0x8000314c
    cmplwi  r3, 0x1
    bne-    branch_0x8000329c
    bl      Function_0x802b3708
branch_0x8000329c:
    bl      Function_0x80236310
    mr      r3, r14
    mr      r4, r15
    bl      Function_0x8000a16c
    b       Function_0x802b52d4


.globl Function_0x800032b0
Function_0x800032b0: # 0x800032b0
    li      r0, 0x0
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    li      r11, 0x0
    li      r12, 0x0
    li      r14, 0x0
    li      r15, 0x0
    li      r16, 0x0
    li      r17, 0x0
    li      r18, 0x0
    li      r19, 0x0
    li      r20, 0x0
    li      r21, 0x0
    li      r22, 0x0
    li      r23, 0x0
    li      r24, 0x0
    li      r25, 0x0
    li      r26, 0x0
    li      r27, 0x0
    li      r28, 0x0
    li      r29, 0x0
    li      r30, 0x0
    li      r31, 0x0
    lis     sp, unk_804a0c58@h
    ori     sp, sp, unk_804a0c58@l
    lis     r2, unk_80490de0@h
    ori     r2, r2, unk_80490de0@l
    lis     r13, unk_8048c4e0@h
    ori     r13, r13, unk_8048c4e0@l
    blr


.globl Function_0x80003340
Function_0x80003340: # 0x80003340
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    lis     r3, _rom_copy_info@h
    addi    r0, r3, _rom_copy_info@l
    mr      r29, r0
    b       branch_0x80003368

branch_0x80003368:
    b       branch_0x8000336c

branch_0x8000336c:
    lwz     r30, 0x8(r29)
    cmplwi  r30, 0x0
    beq-    branch_0x800033ac
    lwz     r4, 0x0(r29)
    lwz     r31, 0x4(r29)
    beq-    branch_0x800033a4
    cmplw   r31, r4
    beq-    branch_0x800033a4
    mr      r3, r31
    mr      r5, r30
    bl      Function_0x80003540
    mr      r3, r31
    mr      r4, r30
    bl      Function_0x80003424
branch_0x800033a4:
    addi    r29, r29, 0xc
    b       branch_0x8000336c

branch_0x800033ac:
    lis     r3, _bss_init_info@h
    addi    r0, r3, _bss_init_info@l
    mr      r29, r0
    b       branch_0x800033bc

branch_0x800033bc:
    b       branch_0x800033c0

branch_0x800033c0:
    lwz     r5, 0x4(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x800033e4
    lwz     r3, 0x0(r29)
    beq-    branch_0x800033dc
    li      r4, 0x0
    bl      Function_0x80003458
branch_0x800033dc:
    addi    r29, r29, 0x8
    b       branch_0x800033c0

branch_0x800033e4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Function_0x80003400
Function_0x80003400: # 0x80003400
    mfmsr   r0
    ori     r0, r0, 0x2000
    mtmsr   r0
    mflr    r31
    bl      Function_0x80230994
    bl      Function_0x8022ff3c
    bl      Function_0x80231be8
    mtlr    r31
    blr


.globl Function_0x80003424
Function_0x80003424: # 0x80003424
    lis     r5, unk_fffffff1@h
    ori     r5, r5, unk_fffffff1@l
    and     r5, r5, r3
    subf    r3, r5, r3
    add     r4, r4, r3
branch_0x80003438:
    dcbst   r0, r5
    sync
    icbi    r0, r5
    addic   r5, r5, 0x8
    subic.  r4, r4, 0x8
    bge+    branch_0x80003438
    isync
    blr


.globl Function_0x80003458
Function_0x80003458: # 0x80003458
    stwu    sp, -0x10(sp)
    mflr    r0
    stw     r0, 0x14(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    bl      Function_0x80003488
    lwz     r0, 0x14(sp)
    mr      r3, r31
    lwz     r31, 0xc(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl Function_0x80003488
Function_0x80003488: # 0x80003488
    cmplwi  r5, 0x20
    clrlwi  r4, r4, 24
    addi    r6, r3, -0x1
    mr      r7, r4
    blt-    branch_0x80003528
    not     r0, r6
    clrlwi. r3, r0, 30
    beq-    branch_0x800034b8
    subf    r5, r3, r5
branch_0x800034ac:
    subic.  r3, r3, 0x1
    stbu    r7, 0x1(r6)
    bne+    branch_0x800034ac
branch_0x800034b8:
    cmplwi  r7, 0x0
    beq-    branch_0x800034d8
    slwi    r3, r7, 24
    slwi    r0, r7, 16
    slwi    r4, r7, 8
    or      r0, r3, r0
    or      r0, r4, r0
    or      r7, r7, r0
branch_0x800034d8:
    srwi.   r3, r5, 5
    addi    r4, r6, -0x3
    beq-    branch_0x8000350c
branch_0x800034e4:
    stw     r7, 0x4(r4)
    subic.  r3, r3, 0x1
    stw     r7, 0x8(r4)
    stw     r7, 0xc(r4)
    stw     r7, 0x10(r4)
    stw     r7, 0x14(r4)
    stw     r7, 0x18(r4)
    stw     r7, 0x1c(r4)
    stwu    r7, 0x20(r4)
    bne+    branch_0x800034e4
branch_0x8000350c:
    extrwi. r3, r5, 3, 27
    beq-    branch_0x80003520
branch_0x80003514:
    subic.  r3, r3, 0x1
    stwu    r7, 0x4(r4)
    bne+    branch_0x80003514
branch_0x80003520:
    addi    r6, r4, 0x3
    clrlwi  r5, r5, 30
branch_0x80003528:
    cmplwi  r5, 0x0
    beqlr-    

branch_0x80003530:
    subic.  r5, r5, 0x1
    stbu    r7, 0x1(r6)
    bne+    branch_0x80003530
    blr


.globl Function_0x80003540
Function_0x80003540: # 0x80003540
    cmplw   r4, r3
    blt-    branch_0x8000356c
    addi    r4, r4, -0x1
    addi    r6, r3, -0x1
    addi    r5, r5, 0x1
    b       branch_0x80003560

branch_0x80003558:
    lbzu    r0, 0x1(r4)
    stbu    r0, 0x1(r6)
branch_0x80003560:
    subic.  r5, r5, 0x1
    bne+    branch_0x80003558
    blr

branch_0x8000356c:
    add     r4, r4, r5
    add     r6, r3, r5
    addi    r5, r5, 0x1
    b       branch_0x80003584

branch_0x8000357c:
    lbzu    r0, -0x1(r4)
    stbu    r0, -0x1(r6)
branch_0x80003584:
    subic.  r5, r5, 0x1
    bne+    branch_0x8000357c
    blr


.globl Function_0x80003590
Function_0x80003590: # 0x80003590
    stwu    sp, -0x10(sp)
    mflr    r0
    stw     r0, 0x14(sp)
    stw     r31, 0xc(sp)
    mr      r31, r3
    bl      Function_0x802b1698
    lwz     r0, 0x14(sp)
    mr      r3, r31
    lwz     r31, 0xc(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl Function_0x800035c0
Function_0x800035c0: # 0x800035c0
    addi    r4, r4, -0x1
    addi    r6, r3, -0x1
    addi    r5, r5, 0x1
    b       branch_0x800035d8

branch_0x800035d0:
    lbzu    r0, 0x1(r4)
    stbu    r0, 0x1(r6)
branch_0x800035d8:
    subic.  r5, r5, 0x1
    bne+    branch_0x800035d0
    blr


.globl unk_800035e4
unk_800035e4: # 0x800035e4
.ascii "Metrowerks Target Resident Kernel for PowerPC"

.zero 0x800036e4 - 0x80003611


.globl Function_0x800036e4
Function_0x800036e4: # 0x800036e4
    b       Function_0x80005518


.zero 0x800037e4 - 0x800036e8

.globl Function_0x800037e4
Function_0x800037e4: # 0x800037e4
    mtspr   SPRG1, r2
    mfspr   r2, SRR0
    icbi    r0, r2
    mfspr   r2, DAR
    dcbi    r0, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x200
    rfi


.zero 0x800038e4 - 0x80003830

.globl Function_0x800038e4
Function_0x800038e4: # 0x800038e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x300
    rfi


.zero 0x800039e4 - 0x80003918

.globl Function_0x800039e4
Function_0x800039e4: # 0x800039e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x400
    rfi


.zero 0x80003ae4 - 0x80003a18

.globl Function_0x80003ae4
Function_0x80003ae4: # 0x80003ae4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x500
    rfi


.zero 0x80003be4 - 0x80003b18

.globl Function_0x80003be4
Function_0x80003be4: # 0x80003be4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x600
    rfi


.zero 0x80003ce4 - 0x80003c18

.globl Function_0x80003ce4
Function_0x80003ce4: # 0x80003ce4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x700
    rfi


.zero 0x80003de4 - 0x80003d18

.globl Function_0x80003de4
Function_0x80003de4: # 0x80003de4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x800
    rfi


.zero 0x80003ee4 - 0x80003e18

.globl Function_0x80003ee4
Function_0x80003ee4: # 0x80003ee4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x900
    rfi


.zero 0x800041e4 - 0x80003f18

.globl Function_0x800041e4
Function_0x800041e4: # 0x800041e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0xc00
    rfi


.zero 0x800042e4 - 0x80004218

.globl Function_0x800042e4
Function_0x800042e4: # 0x800042e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0xd00
    rfi


.zero 0x800043e4 - 0x80004318

.globl Function_0x800043e4
Function_0x800043e4: # 0x800043e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0xe00
    rfi


.zero 0x800044e4 - 0x80004418

.globl Function_0x800044e4
Function_0x800044e4: # 0x800044e4
    b       branch_0x80004538


.zero 0x80004504 - 0x800044e8

.globl Function_0x80004504
Function_0x80004504: # 0x80004504
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0xf20
    rfi

branch_0x80004538:
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0xf00
    rfi


.zero 0x800045e4 - 0x8000456c

.globl Function_0x800045e4
Function_0x800045e4: # 0x800045e4
    mtspr   SPRG1, r2
    mfcr    r2
    mtspr   SPRG2, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x80004614
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   SPRG1, r2
branch_0x80004614:
    mfspr   r2, SPRG2
    mtcrf   255, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1000
    rfi


.zero 0x800046e4 - 0x80004654

.globl Function_0x800046e4
Function_0x800046e4: # 0x800046e4
    mtspr   SPRG1, r2
    mfcr    r2
    mtspr   SPRG2, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x80004714
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   SPRG1, r2
branch_0x80004714:
    mfspr   r2, SPRG2
    mtcrf   255, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1100
    rfi


.zero 0x800047e4 - 0x80004754

.globl Function_0x800047e4
Function_0x800047e4: # 0x800047e4
    mtspr   SPRG1, r2
    mfcr    r2
    mtspr   SPRG2, r2
    mfmsr   r2
    andis.  r2, r2, 0x2
    beq-    branch_0x80004814
    mfmsr   r2
    xoris   r2, r2, 0x2
    sync
    mtmsr   r2
    sync
    mtspr   SPRG1, r2
branch_0x80004814:
    mfspr   r2, SPRG2
    mtcrf   255, r2
    mfspr   r2, SPRG1
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1200
    rfi


.zero 0x800048e4 - 0x80004854

.globl Function_0x800048e4
Function_0x800048e4: # 0x800048e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1300
    rfi


.zero 0x800049e4 - 0x80004918

.globl Function_0x800049e4
Function_0x800049e4: # 0x800049e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1400
    rfi


.zero 0x80004be4 - 0x80004a18

.globl Function_0x80004be4
Function_0x80004be4: # 0x80004be4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1600
    rfi


.zero 0x80004ce4 - 0x80004c18

.globl Function_0x80004ce4
Function_0x80004ce4: # 0x80004ce4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1700
    rfi


.zero 0x800051e4 - 0x80004d18

.globl Function_0x800051e4
Function_0x800051e4: # 0x800051e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1c00
    rfi


.zero 0x800052e4 - 0x80005218

.globl Function_0x800052e4
Function_0x800052e4: # 0x800052e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1d00
    rfi


.zero 0x800053e4 - 0x80005318

.globl Function_0x800053e4
Function_0x800053e4: # 0x800053e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1e00
    rfi


.zero 0x800054e4 - 0x80005418

.globl Function_0x800054e4
Function_0x800054e4: # 0x800054e4
    mtspr   SPRG1, r2
    mtspr   SPRG2, r3
    mtspr   SPRG3, r4
    mfspr   r2, SRR0
    mfspr   r4, SRR1
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   SRR1, r3
    lis     r3, unk_802b179c@h
    ori     r3, r3, unk_802b179c@l
    mtspr   SRR0, r3
    li      r3, 0x1f00
    rfi


.globl Function_0x80005518
Function_0x80005518: # 0x80005518
    stwu    sp, -0x10(sp)
    mflr    r0
    li      r3, 0x0
    li      r4, 0x0
    stw     r0, 0x14(sp)
    li      r5, 0x0
    bl      Function_0x80233cd8
    lwz     r0, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr



.globl _rom_copy_info
_rom_copy_info: # 0x80005544
.long 0x80003100, 0x80003100, 0x000024E8 # Text0_Start, Text0_Start, Text0_Size
.long 0x80005600, 0x80005600, 0x00000048
.long 0x80005660, 0x80005660, 0x0000005C
.long 0x800056C0, 0x800056C0, 0x002BE7CC
.long 0x802C3EA0, 0x802C3EA0, 0x0000022C
.long 0x802C40E0, 0x802C40E0, 0x00000010
.long 0x802C4100, 0x802C4100, 0x000263D0
.long 0x802EA4E0, 0x802EA4E0, 0x00029EB0
.long 0x804844E0, 0x804844E0, 0x000022FC
.long 0x80488DE0, 0x80488DE0, 0x00007E50
.long 0x00000000, 0x00000000, 0x00000000

.globl _bss_init_info
_bss_init_info: # 0x800055c8
.long 0x803143A0, 0x00170130 # bss
.long 0x804867E0, 0x000025F8 # sbss
.long 0x80490C40, 0x00000018
.long 0x00000000, 0x00000000

.long 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
