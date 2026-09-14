#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i16
//#define STR_IN_TYPE u8
#define STR_OUT_TYPE i16
//#define C_IN_TYPE char
#define C_OUT_TYPE short
#define INST_NAME pmaddubsw
#define INTRINSIC_FUN _mm_maddubs_epi16
#define SRC1 {193, 66, 0, 45, 254, 57, 103, 77, 199, 146, 248, 111, 51, 43, 48, 20}
#define SRC2 {102, 61, -11, -48, -53, -108, 96, 90, 124, 103, 98, 83, -113, -16, -110, 11}
#define CON {23712, -2160, -19618, 16818, 32767, 32767, -6451, -5060}

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
    unsigned char in1[IN_LEN] = SRC1;
    char in2[IN_LEN] = SRC2;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    SSE_TYPE res = INTRINSIC_FUN(v1, v2);

    EXTRACT(out, res);

    char in1_s[255];
#define STR_IN_TYPE u8
    TO_STRING_IN(in1_s, in1);
#define STR_IN_TYPE i8
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char out_s[255];
    TO_STRING_OUT(out_s, out);
    char con_s[255];
    TO_STRING_OUT(con_s, con);

#ifdef PRINT
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\ncon: %s\n",in1_s, in2_s, out_s, con_s);
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
