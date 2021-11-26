
.include "source/macros.s"


.section .ram802c4100, "ax"

.globl unk_802c4100
unk_802c4100: # 0x802c4100 (0x0)

.incbin "./code/Data_0x802c4100.bin", 0x0, 0x802c41a8 - 0x802c4100


.globl unk_802c41a8
unk_802c41a8: # 0x802c41a8 (0xa8)
string_align "$d\\Config\\Pax.cfg"


.globl unk_802c41bc
unk_802c41bc: # 0x802c41a8 (0xbc)


.incbin "./code/Data_0x802c4100.bin", 0xbc, 0x802c4840 - 0x802c41bc


# 0x802c4840 (0x740)
string_align "$d\\Config\\skills.tok"


.incbin "./code/Data_0x802c4100.bin", 0x758, 0x802cbb48 - 0x802c4858


.globl unk_802cbb48
unk_802cbb48: # 0x802cbb48 (0x7a48)
string_align "gladius.bec"


.globl unk_802cbb54
unk_802cbb54: # 0x802cbb54 (0x7a54)

.incbin "./code/Data_0x802c4100.bin", 0x7a54, 0x802d64a8 - 0x802cbb54


.globl unk_802d64a8
unk_802d64a8: # 0x802d64a8 (0x123a8)
string_align "Yoink - Prize memory exhausted"


.globl unk_802d64c8
unk_802d64c8: # 0x802d64c8 (0x123c8)
string_align "$d\\Config\\badges.tok"


.globl unk_802d64e0
unk_802d64e0: # 0x802d64e0 (0x123e0)
string_align "BadgeData"


.globl unk_802d64ec
unk_802d64ec: # 0x802d64ec (0x123ec)
string_align "BadgeStringBuffer"


# 0x802d6500 (0x12400)
.incbin "./code/Data_0x802c4100.bin", 0x12400, 0x802d6528 - 0x802d6500


.globl unk_802d6528
unk_802d6528: # 0x802d6528 (0x12428)
string_align "CurSchool.tok"


.globl unk_802d6538
unk_802d6538: # 0x802d6538 (0x12438)
string_align "InterfaceBattleTactics"


# 0x802d6550 (0x12450)
.incbin "./code/Data_0x802c4100.bin", 0x12450, 0x802d6794 - 0x802d6550


.globl unk_802d6794
unk_802d6794: # 0x802d6794 (0x12694)
string_align "SetIntVar"
string_align "SetFloatVar"
string_align "GetStringVar"

.globl unk_802d67bc
unk_802d67bc: # 0x802d67bc (0x126bc)
string_align "GetIntVar"
string_align "GetFloatVar"
string_align "VarExists"

.incbin "./code/Data_0x802c4100.bin", 0x126bc+0x24, 0x802d7908 - (0x802d67bc+0x24)


# 0x802d7908 (0x13808)
string_align "PriamDay"


# 0x802d7914 (0x13814)
.incbin "./code/Data_0x802c4100.bin", 0x13814, 0x802d81a0 - 0x802d7914


.globl unk_802d81a0
unk_802d81a0: # 0x802d81a0 (0x140a0)
string_align "Invalid GlobalVar: %s"


.globl unk_802d81b8
unk_802d81b8: # 0x802d81b8 (0x140b8)
string_align "GlobalVarListSmallSize"


# 0x802d81d0 (0x140d0)
.incbin "./code/Data_0x802c4100.bin", 0x140d0, 0x802e3080 - 0x802d81d0


.globl unk_802e3080
unk_802e3080: # 0x802e3080 (0x1ef80)
.long 0x00000000, 0x1DB71064, 0x3B6E20C8, 0x26D930AC
.long 0x76DC4190, 0x6B6B51F4, 0x4DB26158, 0x5005713C
.long 0xEDB88320, 0xF00F9344, 0xD6D6A3E8, 0xCB61B38C
.long 0x9B64C2B0, 0x86D3D2D4, 0xA00AE278, 0xBDBDF21C


.globl unk_802e30c0
unk_802e30c0: # 0x802e30c0 (0x1efc0)
# CRC32 Table
.long 0x00000000, 0x77073096, 0xEE0E612C, 0x990951BA
.long 0x076DC419, 0x706AF48F, 0xE963A535, 0x9E6495A3
.long 0x0EDB8832, 0x79DCB8A4, 0xE0D5E91E, 0x97D2D988
.long 0x09B64C2B, 0x7EB17CBD, 0xE7B82D07, 0x90BF1D91


# 0x802e3100 (0x1f000)
.incbin "./code/Data_0x802c4100.bin", 0x1f000, 0x802e4048 - 0x802e3100


# 0x802e4048 (0x1ff48)
string_align "The Gladius\x99 file on the Memory Card in Slot %s is corrupt and must be deleted.  Press <p Confirm> to delete."

# 0x802e40b8 (0x1ffb8)
string_align "Continue Without Saving"

# 0x802e40d0 (0x1ffd0)
string_align "Manage Memory Card"


.incbin "./code/Data_0x802c4100.bin", 0x1ffe4, 0x802ea4e0 - 0x802e40e4


# 0x13808