
ifeq ($(strip $(DEVKITPPC)),)
$(error "Please set DEVKITPPC in your environment. export DEVKITPPC=<path to>devkitPPC")
endif


.PHONY: all


SRCS = Text_0x80003100.s Text_0x800056c0.s Data_0x80005600.s Data_0x80005660.s Data_0x802c3ea0.s Data_0x802c40e0.s Data_0x802c4100.s Data_0x802ea4e0.s Data_0x804844e0.s Data_0x80488de0.s
OBJS = $(addprefix build/, $(SRCS:.s=.o))
DEPS = $(addprefix build/, $(SRCS:.s=.d))
DEPFLAGS = -MT $@ -MMD -MP -MF build/$*.d


all: build/bootfile.bin

clean:
	rm -f build/*


build:
	mkdir -p $@

-include $(DEPS)

build/%.d: ;

build/%.o: source/%.s build/%.d | build
	$(DEVKITPPC)/bin/powerpc-eabi-as --MD $(subst .s,.d,build/$(notdir $<)) -mbig-endian -mregnames -m750cl $< -o $@

build/bootfile.elf: $(OBJS) $(DEPS) gcn.ld
	$(DEVKITPPC)/bin/powerpc-eabi-ld -T gcn.ld -Map build/bootfile.map --nmagic --warn-section-align $(OBJS) -o $@

build/bootfile.bin: build/bootfile.elf
	$(DEVKITPPC)/bin/powerpc-eabi-objcopy -v -O binary $< $@

cmp: build/bootfile.bin code/bootfile.dol
	hexdump -C build/bootfile.bin > build/bootfile.bin.txt
	hexdump -C code/bootfile.dol > code/bootfile.dol.txt
	diff -u code/bootfile.dol.txt build/bootfile.bin.txt | less > build/diff_bootfile.txt
