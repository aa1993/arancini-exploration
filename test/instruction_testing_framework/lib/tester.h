#ifdef SSE_TEST
#include <immintrin.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "sse_service.h"
int main() {
    C_IN_TYPE in1[IN_LEN] = SRC1;
#ifdef SRC2
    C_IN_TYPE in2[IN_LEN] = SRC2;
#endif
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];
    long flags;

    SSE_TYPE v1;
    INSERT(&v1, in1);
#ifdef SRC2
    SSE_TYPE v2;
    INSERT(&v2, in2);
#endif


#ifdef SRC2
#ifdef IMM8
    asm volatile (
       STR(INST_NAME)" $"STR(IMM8)", %[v2], %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+x"(v1),[flags] "=r" (flags)         // output
        : [v2] "x"(v2)      // input
    );
#else
    asm volatile (
       STR(INST_NAME)" %[v2], %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+x"(v1),[flags] "=r" (flags)         // output
        : [v2] "x"(v2)      // input
    );
#endif
#else
#ifdef IMM8
    asm volatile (
       STR(INST_NAME)" $"STR(IMM8)", %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+x"(v1),[flags] "=r" (flags)         // output
    );
#else
    asm volatile (
       STR(INST_NAME)" %[v1], %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+x"(v1),[flags] "=r" (flags)         // output
    );
#endif
#endif

#ifdef SSE_TYPE_OUT
    EXTRACT(out, (SSE_TYPE_OUT)v1);
#else
    EXTRACT(out, v1);
#endif

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
#ifdef SRC2
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
#endif
#ifdef SRC3
    char in3_s[255];
    TO_STRING_IN(in3_s, in3);
#endif
#ifdef IMM8
    char imm8_s[255];
    imm8_to_string(imm8_s, IMM8);
#endif
    char out_s[255];
    TO_STRING_OUT(out_s, out);
    char con_s[255];
    TO_STRING_OUT(con_s, con);
    char flags_s[255];
    flags_to_string(flags_s, flags);

#ifdef PRINT
#ifdef SRC3
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\nxmm0: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, in2_s, in3_s, out_s, con_s, flags_s);
#else
#ifdef SRC2
#ifdef IMM8
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\nimm8: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, in2_s, imm8_s, out_s, con_s, flags_s);
#else
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, in2_s, out_s, con_s, flags_s);
#endif
#else
#ifdef IMM8
    printf(STR(INST_NAME)"\nsrc1: %s\nimm8: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, imm8_s, out_s, con_s, flags_s);
#else
    printf(STR(INST_NAME)"\nsrc1: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, out_s, con_s, flags_s);
#endif
#endif
#endif
#else
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
#endif
