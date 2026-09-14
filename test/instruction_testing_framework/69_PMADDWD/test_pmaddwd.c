#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 4
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i32
#define STR_IN_TYPE i16
#define STR_OUT_TYPE i32
#define C_IN_TYPE short
#define C_OUT_TYPE int
#define INST_NAME pmaddwd
#define INTRINSIC_FUN _mm_madd_epi16
#define SRC1 {32767, 13, -32768, -7, 50, 100, 15 ,32767}
#define SRC2 {-10, 32767, 17, -32768, -1, 0, -500, -300}
#define CON {98301, -327680, -50, -9837600}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

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

    SSE_TYPE res = INTRINSIC_FUN(v1, v2);

    EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char out_s[255];
    TO_STRING_OUT(out_s, out);

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n |\n\\/\n%s\n",in1_s, in2_s, out_s);
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
