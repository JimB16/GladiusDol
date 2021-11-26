/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-powerpc", "elf32-powerpc",
	      "elf32-powerpc")
OUTPUT_ARCH(powerpc:common)
ENTRY(__start)
/* SEARCH_DIR("/powerpc/powerpc-eabi-elf/lib"); */
/* Do we need any of these for elf?
   __DYNAMIC = 0;    */
/* PROVIDE (__stack = 0x817F0000); */


MEMORY {

	ram_80000000 : ORIGIN = 0x80000000, LENGTH = 24M
	ram_80003100 : ORIGIN = 0x80003100, LENGTH = 24M /* init.s */
	ram_800056c0 : ORIGIN = 0x800056c0, LENGTH = 24M /* text.s */
	ram_80005600 : ORIGIN = 0x80005600, LENGTH = 24M /* extab.s */
	ram_80005660 : ORIGIN = 0x80005660, LENGTH = 24M /* extabindex.s */
	ram_802c3ea0 : ORIGIN = 0x802c3ea0, LENGTH = 24M /* ctors.s ??? */
	ram_802c40e0 : ORIGIN = 0x802c40e0, LENGTH = 24M /* dtors.s ??? */
	ram_802c4100 : ORIGIN = 0x802c4100, LENGTH = 24M /* rodata.s ??? */
	ram_802ea4e0 : ORIGIN = 0x802ea4e0, LENGTH = 24M /* data.s ??? */
	ram_803143a0 : ORIGIN = 0x803143a0, LENGTH = 24M /* bss not right address yet */
	ram_804844e0 : ORIGIN = 0x804844e0, LENGTH = 24M /* sdata.s ??? */
	ram_804867e0 : ORIGIN = 0x804867e0, LENGTH = 24M /* sbss not right address yet */
	ram_80488de0 : ORIGIN = 0x80488de0, LENGTH = 24M /* sdata2.s ??? */
}

__ram_80003100_start	=	ORIGIN(ram_80003100);
__ram_80003100_top	=	ORIGIN(ram_80003100) + LENGTH(ram_80003100);;
__ram_800056c0_start	=	ORIGIN(ram_800056c0);
__ram_800056c0_top	=	ORIGIN(ram_800056c0) + LENGTH(ram_800056c0);;
__ram_80005600_start	=	ORIGIN(ram_80005600);
__ram_80005600_top	=	ORIGIN(ram_80005600) + LENGTH(ram_80005600);;
__ram_80005660_start	=	ORIGIN(ram_80005660);
__ram_80005660_top	=	ORIGIN(ram_80005660) + LENGTH(ram_80005660);;
__ram_802c3ea0_start	=	ORIGIN(ram_802c3ea0);
__ram_802c3ea0_top	=	ORIGIN(ram_802c3ea0) + LENGTH(ram_802c3ea0);;
__ram_802c40e0_start	=	ORIGIN(ram_802c40e0);
__ram_802c40e0_top	=	ORIGIN(ram_802c40e0) + LENGTH(ram_802c40e0);;
__ram_802c4100_start	=	ORIGIN(ram_802c4100);
__ram_802c4100_top	=	ORIGIN(ram_802c4100) + LENGTH(ram_802c4100);;
__ram_802ea4e0_start	=	ORIGIN(ram_802ea4e0);
__ram_802ea4e0_top	=	ORIGIN(ram_802ea4e0) + LENGTH(ram_802ea4e0);;
__ram_804844e0_start	=	ORIGIN(ram_804844e0);
__ram_804844e0_top	=	ORIGIN(ram_804844e0) + LENGTH(ram_804844e0);;
__ram_804867e0_start	=	ORIGIN(ram_804867e0);
__ram_804867e0_top	=	ORIGIN(ram_804867e0) + LENGTH(ram_804867e0);;
__ram_80488de0_start	=	ORIGIN(ram_80488de0);
__ram_80488de0_top	=	ORIGIN(ram_80488de0) + LENGTH(ram_80488de0);;


SECTIONS
{

  /* DOL header (from TITANIK's GC docs)
   */
  . = 0x80003000;

  .header	:
  {
  	file_start = .;
	/*    0000-001B  Text[0..6] sections File Positions */
	LONG(Text0_Offset);
	LONG(Text1_Offset);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    001C-0047  Data[0..10] sections File Positions */
	LONG(Data0_Offset);
	LONG(Data1_Offset);
	LONG(Data2_Offset);
	LONG(Data3_Offset);
	LONG(Data4_Offset);
	LONG(Data5_Offset);
	LONG(Data6_Offset);
	LONG(Data7_Offset); /* 0038 */
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0048-0063  Text[0..6] sections Mem Address */
	LONG(Text0_Start);
	LONG(Text1_Start);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0064-008F  Data[0..10] sections Mem Address */
	LONG(Data0_Start);
	LONG(Data1_Start);
	LONG(Data2_Start);
	LONG(Data3_Start);
	LONG(Data4_Start);
	LONG(Data5_Start);
	LONG(Data6_Start);
	LONG(Data7_Start);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    0090-00AB  Text[0..6] sections Sizes */
	LONG(Text0_Size);
	LONG(Text1_Size);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00AC-00D7  Data[0..10] sections Sizes */
	LONG(Data0_Size);
	LONG(Data1_Size);
	LONG(Data2_Size);
	LONG(Data3_Size);
	LONG(Data4_Size);
	LONG(Data5_Size); /* 00C0 */
	LONG(Data6_Size); /* 00C4 */
	LONG(Data7_Size);
	LONG(0);
	LONG(0);
	LONG(0);

	/*    00D8  BSS Mem address
	 *    00DC  BSS Size */
	LONG(bss_mem_start);
	LONG(bss_mem_size);

	/*    00E0  Entry Point */
	LONG(ABSOLUTE(__start));
    
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
	LONG(0);
  } > ram_80000000

/*  	file_start = .;*/
   . = file_start + 0x100; 

  text_mem_start = .;

  temp1 = .;
  .ram80003100 __ram_80003100_start : AT (temp1) { *(.ram80003100) . = ALIGN(1); } > ram_80003100 = 0xff
  __load_stop_ram80003100 = LOADADDR (.ram80003100) + SIZEOF (.ram80003100);
  Text0_Offset = temp1 - 0x80000000;
  Text0_Start = ADDR (.ram80003100);
  Text0_Size = SIZEOF (.ram80003100);

  temp2 = temp1 + Text0_Size;
  .ram800056c0 __ram_800056c0_start : AT (temp2) { *(.ram800056c0) . = ALIGN(1); } > ram_800056c0 = 0xff
  Text1_Offset = temp2 - 0x80000000;
  Text1_Start = ADDR (.ram800056c0);
  Text1_Size = SIZEOF (.ram800056c0);

  temp3 = temp2 + Text1_Size;
  .ram80005600 __ram_80005600_start : AT (temp3) { *(.ram80005600) . = ALIGN(1); } > ram_80005600 = 0xff
  Data0_Offset = temp3 - 0x80000000;
  Data0_Start = ADDR (.ram80005600);
  Data0_Size = SIZEOF (.ram80005600);

  temp4 = temp3 + Data0_Size;
  .ram80005660 __ram_80005660_start : AT (temp4) { *(.ram80005660) . = ALIGN(1); } > ram_80005660 = 0xff
  Data1_Offset = temp4 - 0x80000000;
  Data1_Start = ADDR (.ram80005660);
  Data1_Size = SIZEOF (.ram80005660);

  temp5 = temp4 + Data1_Size;
  .ram802c3ea0 __ram_802c3ea0_start : AT (temp5) { *(.ram802c3ea0) . = ALIGN(1); } > ram_802c3ea0 = 0xff
  Data2_Offset = temp5 - 0x80000000;
  Data2_Start = ADDR (.ram802c3ea0);
  Data2_Size = SIZEOF (.ram802c3ea0);

  temp6 = temp5 + Data2_Size;
  .ram802c40e0 __ram_802c40e0_start : AT (temp6) { *(.ram802c40e0) } > ram_802c40e0 = 0xff
  Data3_Offset = temp6 - 0x80000000;
  Data3_Start = ADDR (.ram802c40e0);
  Data3_Size = SIZEOF (.ram802c40e0);

  temp7 = temp6 + Data3_Size;
  .ram802c4100 __ram_802c4100_start : AT (temp7) { *(.ram802c4100) . = ALIGN(1); } > ram_802c4100 = 0x22
  Data4_Offset = temp7 - 0x80000000;
  Data4_Start = ADDR (.ram802c4100);
  Data4_Size = SIZEOF (.ram802c4100);

  temp8 = temp7 + Data4_Size;
  .ram802ea4e0 __ram_802ea4e0_start : AT (temp8) { *(.ram802ea4e0) . = ALIGN(1); } = 0x33
  Data5_Offset = temp8 - 0x80000000;
  Data5_Start = ADDR (.ram802ea4e0);
  Data5_Size = SIZEOF (.ram802ea4e0);

  __ram_803143a0_start = 0x803143a0;
  .ram803143a0 (__ram_803143a0_start) (NOLOAD) :
  {
    *(.ram803143a0)
  }>ram_803143a0 = 0xff
  __bss_size = SIZEOF(.ram803143a0);
  bss_mem_start = ADDR (.ram803143a0);
  bss_mem_size = SIZEOF (.ram803143a0) + (0x17c8b8 - 0x00170130); /* + 0xc788 */

  temp9 = temp8 + Data5_Size;
  .ram804844e0 __ram_804844e0_start : AT (temp9) { *(.ram804844e0) . = ALIGN(1); } > ram_804844e0 = 0xff
  Data6_Offset = temp9 - 0x80000000;
  Data6_Start = ADDR (.ram804844e0);
  Data6_Size = SIZEOF (.ram804844e0);

  __ram_804867e0_start = 0x804867e0;
  .ram804867e0 (__ram_804867e0_start) (NOLOAD) :
  {
    *(.ram804867e0)
  }>ram_804867e0 = 0xff
  __sbss_size = SIZEOF(.ram804867e0);
  sbss_mem_start = ADDR (.ram804867e0);
  sbss_mem_size = SIZEOF (.ram804867e0);

  temp10 = temp9 + Data6_Size;
  .ram80488de0 __ram_80488de0_start : AT (temp10) { *(.ram80488de0) . = ALIGN(1); } > ram_80488de0 = 0xff
  Data7_Offset = temp10 - 0x80000000;
  Data7_Start = ADDR (.ram80488de0);
  Data7_Size = SIZEOF (.ram80488de0);
  Data7_Stop = temp10 + Data7_Size;
	/*
	.fillend :
	{
		FILL(0x00);
		. = . + ((((Data7_Stop) + 0x100 - 1) & ~(0x100 - 1)) - (Data7_Stop)) - 1;
	    BYTE(0x00);
	} > ram_80488de0 = 0x00
*/
 text_mem_size = . - text_mem_start;
  data_mem_start = .;

data_mem_size = . - data_mem_start;
text_file_start = text_mem_start - file_start;
data_file_start = data_mem_start - file_start;


  _end = .;
  __end = .;
  PROVIDE (end = .);
}
