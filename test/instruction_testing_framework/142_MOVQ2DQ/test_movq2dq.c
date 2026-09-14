#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 4
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE i32
#define STR_OUT_TYPE i32
#define C_IN_TYPE int
#define C_OUT_TYPE int
#define INST_NAME movq2dq
#define INTRINSIC_FUN _mm_movpi64_epi64
#define SRC1 {427757791, 903235736}
#define CON {427757791, 903235736, 0, 0}

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
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    __m64 v1;
    v1 = _mm_set_pi32(in1[1], in1[0]);

    SSE_TYPE res = INTRINSIC_FUN(v1);

    EXTRACT(out, res);

    char in1_s[255];
    sprintf(in1_s, "(%d, %d)",
          in1[0], in1[1]);
    char out_s[255];
    TO_STRING_OUT(out_s, out);

#ifdef PRINT
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%s\n",in1_s, out_s);
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
