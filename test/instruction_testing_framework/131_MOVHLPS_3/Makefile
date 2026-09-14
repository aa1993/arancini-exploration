TARGET=movhlps
TARGET1=./test_$(TARGET)_intrinsic
SRC1=$(TARGET1).c
TARGET2=./test_$(TARGET)_asm
SRC2=$(TARGET2).c

# Compiler
CC=gcc
MCC=musl-gcc

# Flags
CFLAGS=-m64 -mssse3 -msse4.1 -g

all: $(TARGET1) $(TARGET2)

$(TARGET1): $(SRC1)
	$(MCC) $(CFLAGS) -static $^ -o $@
$(TARGET2): $(SRC2)
	$(MCC) $(CFLAGS) -static $^ -o $@
clean:
	rm -f $(TARGET1)
	rm -f $(TARGET2)
