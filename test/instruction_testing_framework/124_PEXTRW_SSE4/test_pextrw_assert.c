//#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i16
#define STR_IN_TYPE i16
#define STR_OUT_TYPE i16
#define C_IN_TYPE short
#define C_OUT_TYPE short
#define INST_NAME pextrw
#define INTRINSIC_FUN _mm_extract_epi16
#define SRC1 {22586, -16489, -4548, 16320, 3472, -18086, -29378, -8854}
#define IMM8 5
#define CON -18086

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
    C_IN_TYPE in1[IN_LEN] = SRC1;
    C_OUT_TYPE con = CON;
    C_OUT_TYPE out;

    SSE_TYPE v1;
    INSERT(&v1, in1);

    out = INTRINSIC_FUN(v1, IMM8);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%d\n |\n\\/\n%d\n",in1_s, IMM8, out);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out: %d != con: %d\33[0m\n", out, con);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
