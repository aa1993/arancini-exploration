//#define PRINT
#define SSE_TEST
#define IN_LEN 1
#define OUT_LEN 1
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE i32
#define STR_OUT_TYPE i32
#define C_IN_TYPE int
#define C_OUT_TYPE int
#define INST_NAME movnti
#define INTRINSIC_FUN _mm_stream_si32
#define SRC1 427757791
#define CON 427757791

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
    C_IN_TYPE in1 = SRC1;
    C_OUT_TYPE out;
    C_OUT_TYPE con = CON;

//    SSE_TYPE v1;
//    INSERT(&v1, in1);
//    SSE_TYPE res;

    INTRINSIC_FUN(&out, in1);

//    EXTRACT(out, res);

//    char in1_s[255];
//    TO_STRING_IN(in1_s, in1);
//
//    char out_s[255];
//    TO_STRING_IN(out_s, out);

#ifdef PRINT
    printf(STR(INST_NAME)"\n%d\n |\n\\/\n%d\n",in1, out);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out:%d != con:%d\33[0m\n", out, con);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
