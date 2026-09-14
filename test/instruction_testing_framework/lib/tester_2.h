#ifdef SSE_TEST
#include <immintrin.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "sse_service_2.h"
int main() {
    C_IN_TYPE in1[IN_LEN] = SRC1;
#ifdef SRC2
    C_IN_TYPE in2[IN_LEN] = SRC2;
#endif
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
#ifdef SRC2
    SSE_TYPE v2;
    INSERT(&v2, in2);
#endif

#ifdef IMM8
    SSE_TYPE res = INTRINSIC_FUN(v1, v2, IMM8);
#elifdef SRC2
    SSE_TYPE res = INTRINSIC_FUN(v1, v2);
#else
    SSE_TYPE res = INTRINSIC_FUN(v1);
#endif

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
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n%X\n |\n\\/\nres: %s\n\ncon: %s\n",in1_s, in2_s, IMM8, out_s, con_s);
#elifdef SRC2
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\n\ncon: %s\n",in1_s, in2_s, out_s, con_s);
#else
    printf(STR(INST_NAME)"\nsrc: %s\n |\n\\/\nres: %s\n\ncon: %s\n",in1_s, out_s, con_s);
#endif
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out[i] != con[i]){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d]:%X != con[%d]:%X\33[0m\n", i,out[i],i, con[i]);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
#endif
