TARGET=rcpps
SRC1=./test_$(TARGET).c
SRC2=./test_$(TARGET)_assert.c
SRC3=./test_$(TARGET)_calculate.c

# Compiler
CC=gcc
MCC=musl-gcc

# Flags
CFLAGS=-m64 -mssse3 -msse4.1 -g

all: ./test_$(TARGET)_static_musl ./test_$(TARGET)_assert_static_musl ./test_$(TARGET)_calculate

./test_$(TARGET)_static_musl: $(SRC1)
	$(MCC) $(CFLAGS) -static $^ -o $@
./test_$(TARGET)_assert_static_musl: $(SRC2)
	$(MCC) $(CFLAGS) -static $^ -o $@
./test_$(TARGET)_calculate: $(SRC3)
	$(MCC) $(CFLAGS) -static $^ -o $@
clean:
	rm -f ./test_$(TARGET)_static_musl
	rm -f ./test_$(TARGET)_assert_static_musl
	rm -f ./test_$(TARGET)_calculate
