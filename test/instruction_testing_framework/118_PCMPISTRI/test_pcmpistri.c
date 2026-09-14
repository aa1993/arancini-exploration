#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 1
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i8
#define STR_IN_TYPE i8
#define STR_OUT_TYPE i32
#define C_IN_TYPE char
#define C_OUT_TYPE int
#define INST_NAME pcmpistri
#define INTRINSIC_FUN _mm_cmpistri
#define SRC1 {110, 110, -112, -109, 67, -55, 63, 127, -18, 102, 9, 38, 47, 36, 0, 102}
//#define SRC1_LEN 16
#define SRC2 {110, -110, 112, -33, -53, 110, -33, 110, 114, 110, 98, 83, -113, 110, 110, 110}
//#define SRC2_LEN 16
#define IMM8 0b1001110
#define CON 15

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
//    C_OUT_TYPE con[OUT_LEN] = CON;
    int con = CON;
//    C_OUT_TYPE out[OUT_LEN];
//    int a = SRC1_LEN;
//    int d = SRC2_LEN;
    long flags;

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    int res = 0;

//    SSE_TYPE res = INTRINSIC_FUN(v1, SRC1_LEN,  v2, SRC2_LEN, IMM8);
    asm volatile (
       STR(INST_NAME)" $"STR(IMM8)", %[v2], %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [res] "=c" (res),[flags] "=r" (flags)         // output
        : [v1] "x"(v1), [v2] "x"(v2)//, [a] "a" (a), [d] "d" (d)    // input
    );

    //EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char imm8_s[255];
    imm8_to_string(imm8_s, IMM8);
    //char out_s[255];
    //TO_STRING_OUT(out_s, out);
    //char con_s[255];
    //TO_STRING_OUT(con_s, con);
    char flags_s[255];
    flags_to_string(flags_s, flags);

#ifdef PRINT
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\nimm8: %s\n |\n\\/\nres: %d\ncon: %d\nflags: %s\n",
        in1_s, in2_s, imm8_s, res, con, flags_s);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(res != con){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! res: %d != con: %d\33[0m\n", res, con);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
