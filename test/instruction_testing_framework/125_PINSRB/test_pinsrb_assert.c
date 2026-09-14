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
#define INST_NAME pinsrb
#define INTRINSIC_FUN _mm_insert_epi8
#define SRC1 {127, -122, 110, -33, 67, -55, 63, 127, -18, 29, 9, 38, 47, 36, 0, -128}
#define SRC2 -128
#define IMM8 4
#define CON {127, -122, 110, -33, -128, -55, 63, 127, -18, 29, 9, 38, 47, 36, 0, -128}

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
    int in2 = SRC2;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);

    SSE_TYPE res = INTRINSIC_FUN(v1, in2, IMM8);

    EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);

    char out_s[255];
    TO_STRING_OUT(out_s, out);

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%d\n%d\n |\n\\/\n%s\n",in1_s, in2, IMM8, out_s);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out[i] != con[i]){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d] != con[%d]\33[0m\n", i, i);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
