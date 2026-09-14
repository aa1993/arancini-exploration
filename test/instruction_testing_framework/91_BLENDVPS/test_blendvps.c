#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 4
#define SSE_TYPE __m128
#define INSERT_TYPE f32
#define EXTRACT_TYPE f32
#define STR_IN_TYPE f32
#define STR_OUT_TYPE f32
#define C_IN_TYPE float
#define C_OUT_TYPE float
#define INST_NAME pblendvps
#define INTRINSIC_FUN _mm_blendv_ps
#define SRC1 {55.6f, 43.4f, 0.456f, 2.34f}
#define SRC2 {65.3f, 73.6f, -12.4f, -2.0f}
#define SRC3 {-1.0f, 1.0f, -1.0f, -1.0f}
#define CON {65.300003051757812f, 43.400001525878906f, -12.399999618530273f, -2.0f}

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
    C_IN_TYPE in2[IN_LEN] = SRC2;
    C_IN_TYPE in3[IN_LEN] = SRC3;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);
    SSE_TYPE v3;
    INSERT(&v3, in3);

    SSE_TYPE res = INTRINSIC_FUN(v1, v2, v3);

    EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char in3_s[255];
    TO_STRING_IN(in3_s, in3);
    char out_s[255];
    TO_STRING_OUT(out_s, out);

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n%s\n |\n\\/\n%s\n",in1_s, in2_s, in3_s, out_s);
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
