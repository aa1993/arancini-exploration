//#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 2
#define SSE_TYPE __m128d
#define INSERT_TYPE f64
#define EXTRACT_TYPE i64
#define STR_IN_TYPE f64
#define STR_OUT_TYPE i64
#define C_IN_TYPE double
#define C_OUT_TYPE int64_t
#define INST_NAME cmppd
#define INTRINSIC_FUN _mm_cmp_pd
#define SRC1 {55.6, 43.4}
#define SRC2 {55.6, 73.6}
#define IMM8 0
#define CON {-1, 0}

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

#include "./../../lib/sse_service_3.h"
int main() {
    C_IN_TYPE in1[IN_LEN] = SRC1;
    C_IN_TYPE in2[IN_LEN] = SRC2;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    __m128i res = (__m128i) INTRINSIC_FUN(v1, v2, IMM8);

    EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char out_s[255];
    TO_STRING_OUT(out_s, out);

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%s\n",in1_s, in2_s, IMM8, out_s);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out[i] != con[i]){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d]:%lX != con[%d]:%lX\33[0m\n", i, out[i], i, con[i]);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
