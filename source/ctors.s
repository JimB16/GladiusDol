
.section .ram802c3ea0, "ax"


.globl unk_802c3ea0
unk_802c3ea0: # 0x802c3ea0
.long Function_0x802aea20, Function_0x80008c54, Function_0x80009e00, Function_0x8000ba28
# .long ...


.incbin "./code/Data_0x802c3ea0.bin", 0x0+0x10, 0x802c40e0 - (0x802c3ea0+0x10)


