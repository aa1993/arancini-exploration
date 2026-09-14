//#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 16
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i8
#define STR_IN_TYPE i8
#define STR_OUT_TYPE i8
#define C_IN_TYPE char
#define C_OUT_TYPE char
#define INST_NAME popcnt
#define INTRINSIC_FUN _mm_popcnt_u64
#define SRC1 0xF0F0F0F0F0F0F0F0
#define CON  32

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include <immintrin.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"
int main() {
    long src = SRC1;
    long con = CON;
    long res;
    long flags;

    asm volatile (
       STR(INST_NAME)" %[src], %[dest]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [dest] "=r" (res), [flags] "=r" (flags)         // output
        : [src] "r" (src)      // input
    );
    char flags_s[255];
    flags_to_string(flags_s, flags);

#ifdef PRINT
    printf(STR(INST_NAME)"\nsrc: %#lx\n |\n\\/\nres: %ld\ncon: %ld\nflags: %s\n",
        src, res, con, flags_s);
#else
    if(res != con){
        printf("\33[1;31m"STR(INST_NAME)" has failed!!! res: %ld != con: %ld\33[0m\n", res, con);
        return 1;
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
