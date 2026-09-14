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
#define INST_NAME unpcklpd
#define INTRINSIC_FUN _mm_unpacklo_pd
#define SRC1 {892828429081155145, 7473193465232913594}
#define SRC2 {-7308782461721296904, 6433197465242943594}
#define CON {892828429081155145, -7308782461721296904}

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
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"
int main() {
    C_IN_TYPE in1[IN_LEN] = SRC1;
    C_IN_TYPE in2[IN_LEN] = SRC2;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    SSE_TYPE res = (__m128i)INTRINSIC_FUN((__m128d)v1,(__m128d) v2);

    EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
#ifdef SRC2
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
#endif
    char out_s[255];
    TO_STRING_OUT(out_s, out);
    char con_s[255];
    TO_STRING_OUT(con_s, con);

#ifdef PRINT
#ifdef IMM8
    printf("%s\n "STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%s\n\ncon: %s\n",in1_s, in2_s, IMM8, out_s, con_s);
#elifdef SRC2
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\n\ncon: %s\n",in1_s, in2_s, out_s, con_s);
#else
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%s\n\ncon: %s\n",in1_s, out_s, con_s);
#endif
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out[i] != con[i]){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d]:%ld != con[%d]:%ld\33[0m\n", i,out[i],i, con[i]);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
