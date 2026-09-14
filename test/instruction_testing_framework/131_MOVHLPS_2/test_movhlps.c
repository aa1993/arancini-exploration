#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 4
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE i32
#define STR_OUT_TYPE i32
#define C_IN_TYPE int
#define C_OUT_TYPE int
#define INST_NAME movhlps
#define INTRINSIC_FUN _mm_movehl_ps
#define SRC1 {427757791, 903235736, -1976786759, -149336700}
#define SRC2 {1048884625, -1470057930, -1031355084, 1661823780}
#define CON {-1031355084, 1661823780, -1976786759, -149336700}

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
#include <stdalign.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"

void flags_to_string(char* dest,  long src){
    char res[255];
    sprintf(res, "{CF: %ld, PF:%ld, AF:%ld, ZF: %ld, SF: %ld, TF: %ld, IF: %ld, DF: %ld, OF: %ld}",
          src>>0 & 1,
          src>>2 & 1,
          src>>4 & 1,
          src>>6 & 1,
          src>>7 & 1,
          src>>8 & 1,
          src>>9 & 1,
          src>>10 & 1,
          src>>11 & 1
          );
    strcpy(dest, res);
}

int main() {
    alignas(SSE_TYPE) C_IN_TYPE in1[IN_LEN] = SRC1;
    alignas(SSE_TYPE) C_IN_TYPE in2[IN_LEN] = SRC2;
    alignas(SSE_TYPE) C_OUT_TYPE con[OUT_LEN] = CON;
    alignas(SSE_TYPE) C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    long flags;

    asm volatile (
       STR(INST_NAME)" %[v2], %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+x"(v1),[flags] "=r" (flags)         // output
        : [v2] "x"(v2)      // input
    );
//    SSE_TYPE res = (__m128i)INTRINSIC_FUN((__m128)v1,(__m128) v2);

    EXTRACT(out, v1);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char out_s[255];
    TO_STRING_OUT(out_s, out);
    char con_s[255];
    TO_STRING_OUT(con_s, con);
    char flags_s[255];
    flags_to_string(flags_s, flags);

#ifdef PRINT
#ifdef IMM8
    printf("%s\n "STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%s\n",in1_s, in2_s, IMM8, out_s);
#elifdef SRC2
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\n\ncon: %s\nflags: %s\n",in1_s, in2_s, out_s, con_s, flags_s);
#else
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%s\n",in1_s, out_s);
#endif
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
