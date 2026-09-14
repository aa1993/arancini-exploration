//#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 2
#define SSE_TYPE __m128
//#define SSE_TYPE_OUT __m128i
#define INSERT_TYPE f32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE f32
#define STR_OUT_TYPE i32
#define C_IN_TYPE float
#define C_OUT_TYPE int
#define INST_NAME cvttps2pi
#define INTRINSIC_FUN _mm_cvttps_pi32
#define SRC1 {0, 0}
#define SRC2 {65.3f, 73.6f, -12.4f, -2.0f}
#define CON  {65, 73}

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

typedef union {
    __m64 mm;
    int i32[2];
} __m64i32;

void m64_insert_i32( __m64i32* dest, int input[]);
void m64_extract_i32( int dest[], __m64i32 input);
void m64_to_string_i32(char* dest,  int src[]);

int main() {
    C_OUT_TYPE in1[OUT_LEN] = SRC1;
    C_IN_TYPE in2[IN_LEN] = SRC2;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];
    long flags = 0;

    //SSE_TYPE v1;
    //INSERT(&v1, in1);
    __m64i32 v1;
    m64_insert_i32( &v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    asm volatile (
       STR(INST_NAME)" %[v2], %[v1]\n\t"
       "emms\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+y"(v1.mm),[flags] "=r" (flags)         // output
        : [v2] "x"(v2)      // input
    );
    asm volatile (
       "emms\n\t"
    );

    m64_extract_i32(out, v1);

    char in1_s[255];
    m64_to_string_i32(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char out_s[255];
    m64_to_string_i32(out_s, out);
    char con_s[255];
    m64_to_string_i32(con_s, con);
    char flags_s[255];
    flags_to_string(flags_s, flags);

#ifdef PRINT
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, in2_s, out_s, con_s, flags_s);
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

void m64_insert_i32( __m64i32* dest, int input[]){
    (*dest).i32[0] = input[0];
    (*dest).i32[1] = input[1];
}
void m64_extract_i32( int dest[], __m64i32 input){
    dest[0] = input.i32[0];
    dest[1] = input.i32[1];
}
void m64_to_string_i32(char* dest,  int src[]){
    char res[255];
    sprintf(res, "(%d, %d)",
          src[0], src[1]);
    strcpy(dest, res);
}
