#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 1
#define SSE_TYPE __m128i
#define INSERT_TYPE i64
#define EXTRACT_TYPE i64
#define STR_IN_TYPE i64
#define STR_OUT_TYPE i64
#define C_IN_TYPE long
#define C_OUT_TYPE long
#define INST_NAME movdq2q
#define INTRINSIC_FUN _mm_movepi64_pi64
#define SRC1 {392828429081155145, 6473193465232913594}
#define CON 392828429081155145

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

    SSE_TYPE v1;
    INSERT(&v1, in1);

    long out = (long)INTRINSIC_FUN(v1);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);

#ifdef PRINT
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%ld\n",in1_s, out);
#endif
#ifndef PRINT
        if(out != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out:%ld != con:%ld\33[0m\n", out, con);
            return 1;
        }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
