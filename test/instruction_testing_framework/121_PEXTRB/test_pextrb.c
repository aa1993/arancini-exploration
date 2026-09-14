#define PRINT
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
#define INST_NAME pextrb
#define INTRINSIC_FUN _mm_extract_epi8
#define SRC1 {127, -122, 110, -33, 67, -55, 63, 127, -18, 29, 9, 38, 47, 36, 0, -128}
#define IMM8 4
#define CON 67

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
