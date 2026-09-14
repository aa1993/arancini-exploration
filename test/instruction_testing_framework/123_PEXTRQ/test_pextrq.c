#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i64
#define EXTRACT_TYPE i64
#define STR_IN_TYPE i64
#define STR_OUT_TYPE i64
#define C_IN_TYPE long
#define C_OUT_TYPE long
#define INST_NAME pextrq
#define INTRINSIC_FUN _mm_extract_epi64
#define SRC1 {692828429081155145, -5473193465232913594}
#define IMM8 0
#define CON 692828429081155145

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
    printf("%s\n "STR(INST_NAME)"\n%d\n |\n\\/\n%ld\n",in1_s, IMM8, out);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out: %ld != con: %ld\33[0m\n", out, con);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
