#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define SSE_TYPE __m128
#define INSERT_TYPE f32
#define STR_IN_TYPE f32
#define C_IN_TYPE float
#define C_OUT_TYPE float
#define INST_NAME extractps
#define INTRINSIC_FUN _mm_extract_ps
#define SRC1 {55.6f, 43.4f, 0.456f, 2.34f};
#define IMM8 0b1
#define CON 1110284698

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
    int con = CON;

    SSE_TYPE v1;
    INSERT(&v1, in1);

    int res = INTRINSIC_FUN(v1, IMM8);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);

#ifdef PRINT
    printf(STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%d\n",in1_s, IMM8, res);
#endif
#ifndef PRINT
        if(res != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! res:%d != con:%d\33[0m\n", res, con);
            return 1;
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
