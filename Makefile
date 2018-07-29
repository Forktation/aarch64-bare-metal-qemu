CROSS_PREFIX=aarch64-linux-gnu-

all: test64.elf

startup64.o: startup64.s
	$(CROSS_PREFIX)as -g -c $< -o $@

test64.elf: startup64.o
	$(CROSS_PREFIX)ld -Ttest64.ld $^ -o $@

clean:
	rm -f test64.elf startup64.o test64.o
