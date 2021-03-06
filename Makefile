
ifeq ($(strip $(DEVKITPPC)),)
$(error "Please set DEVKITPPC in your environment. export DEVKITPPC=<path to>devkitPPC")
endif


.PHONY: all


SRCS = init.s text.s extab.s extabindex.s ctors.s dtors.s rodata.s data.s sdata.s sdata2.s bss.s sbss.s
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
