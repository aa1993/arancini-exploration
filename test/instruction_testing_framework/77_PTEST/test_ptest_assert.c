//#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i64
#define EXTRACT_TYPE i64
#define STR_IN_TYPE u64
#define STR_OUT_TYPE u64
#define C_IN_TYPE unsigned long
#define C_OUT_TYPE unsigned long
#define INST_NAME ptest
#define SRC1 {0xaaaaaaaaaaaaaaaaul, 0xaaaaaaaaaaaaaaaaul}
#define SRC2 {0x5555555555555555ul, 0x5555555555555555ul}
#define CON1 0
#define CON2 1

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
    int con1 = CON1;
    int con2 = CON2;

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    int res1 = _mm_testc_si128(v1, v2);
    int res2 = _mm_testz_si128(v1, v2);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n |\n\\/\nc:%d z:%d\n",in1_s, in2_s, res1, res2);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(res1 != con1){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! res.c: %d != con.c: %d\33[0m\n",res1, con1);
            return 1;
        }
        if(res2 != con2){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! res.z: %d != con.z: %d\33[0m\n",res2, con2);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
