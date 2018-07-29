CROSS_PREFIX=aarch64-linux-gnu-

all: test64.elf

startup64.o: startup64.s
	$(CROSS_PREFIX)as -g -c $< -o $@

test64.elf: startup64.o
	$(CROSS_PREFIX)ld -Ttest64.ld $^ -o $@

test64.bin: test64.elf
	$(CROSS_PREFIX)objcopy -O binary $< $@

clean:
	rm -f test64.elf startup64.o test64.o
