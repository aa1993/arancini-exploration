#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 1
#define SSE_TYPE __m128d
#define INSERT_TYPE f64
#define EXTRACT_TYPE f64
#define STR_IN_TYPE f64
#define STR_OUT_TYPE f64
#define C_IN_TYPE double
#define C_OUT_TYPE int
#define INST_NAME movmskpd
#define INTRINSIC_FUN _mm_movemask_pd
#define SRC1 {-83.4023, 647.31934}
#define CON 1

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

    C_OUT_TYPE out = INTRINSIC_FUN(v1);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);

#ifdef PRINT
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%d\n",in1_s, out);
#endif
#ifndef PRINT
        if(out != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out:%d != con:%d\33[0m\n", out, con);
            return 1;
        }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
