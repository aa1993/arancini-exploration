#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i16
#define STR_IN_TYPE u16
#define STR_OUT_TYPE u16
#define C_IN_TYPE unsigned short
#define C_OUT_TYPE unsigned short
#define INST_NAME phminposuw
#define INTRINSIC_FUN _mm_minpos_epu16
#define SRC1 {14185, 3017, 33468, 44808, 18387, 6038, 47010, 39538}
#define SRC2 {13952, 55003, 46410, 63631, 47078, 40261, 54655, 37493}
#define CON {3017, 1, 0, 0, 0, 0, 0, 0}
#define FUNC_ARG (v2)

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


void insert_f32( __m128* dest, float input[]){
    *dest = _mm_set_ps(input[3], input[2], input[1], input[0]);
}
void insert_f64( __m128d* dest, double input[]){
    *dest = _mm_set_pd(input[1], input[0]);
}
void insert_i8( __m128i* dest, char input[]){
    *dest = _mm_set_epi8(input[15], input[14], input[13], input[12], input[11], input[10], input[9], input[8], input[7], input[6], input[5], input[4], input[3], input[2], input[1], input[0]);
}
void insert_i16( __m128i* dest, short input[]){
    *dest = _mm_set_epi16(input[7], input[6], input[5], input[4], input[3], input[2], input[1], input[0]);
}
void insert_i32( __m128i* dest, int input[]){
    *dest = _mm_set_epi32(input[3], input[2], input[1], input[0]);
}
void insert_i64( __m128i* dest, long input[]){
    *dest = _mm_set_epi64x(input[1], input[0]);
}
void extract_f32( float dest[], __m128 input){
    _mm_storeu_ps(dest, input);
}
void extract_f64( double dest[], __m128d input){
    _mm_storeu_pd(dest, input);
}
void extract_i8( char dest[], __m128i input){
    _mm_storeu_si128((__m128i*)dest, input);
}
void extract_i16( short* dest, __m128i input){
    _mm_storeu_si128((__m128i*)dest, input);
}
void extract_i32( int dest[], __m128i input){
    _mm_storeu_si128((__m128i*)dest, input);
}
void extract_i64( long dest[], __m128i input){
    _mm_storeu_si128((__m128i*)dest, input);
}
void to_string_f32(char* dest,  float src[]){
    char res[255];
    sprintf(res, "(%.17g, %.17g, %.17g, %.17g)",
          src[0], src[1], src[2], src[3]);
    strcpy(dest, res);
}
void to_string_f64(char* dest,  double src[]){
    char res[255];
    sprintf(res, "(%.17g, %.17g)",
          src[0], src[1]);
    strcpy(dest, res);
}
void to_string_i8(char* dest,  char src[]){
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
    strcpy(dest, res);
}
void to_string_i16(char* dest, short src[]){
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
    strcpy(dest, res);
}
void to_string_i32(char* dest,  int src[]){
    char res[255];
    sprintf(res, "(%d, %d, %d, %d)",
          src[0], src[1], src[2], src[3]);
    strcpy(dest, res);
}
void to_string_i64(char* dest,  long src[]){
    char res[255];
    sprintf(res, "(%ld, %ld)",
          src[0], src[1]);
    strcpy(dest, res);
}
void to_string_u8(char* dest, unsigned char src[]){
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
    strcpy(dest, res);
}
void to_string_u16(char* dest, unsigned short src[]){
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
    strcpy(dest, res);
}
void to_string_u32(char* dest,  unsigned int src[]){
    char res[255];
    sprintf(res, "(%u, %u, %u, %u)",
          src[0], src[1], src[2], src[3]);
    strcpy(dest, res);
}
void to_string_u64(char* dest,  unsigned long src[]){
    char res[255];
    sprintf(res, "(%lu, %lu)",
          src[0], src[1]);
    strcpy(dest, res);
}

int main() {
    C_IN_TYPE in1[IN_LEN] = SRC1;
    C_IN_TYPE in2[IN_LEN] = SRC2;
    C_OUT_TYPE con[OUT_LEN] = CON;
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
    SSE_TYPE v2;
    INSERT(&v2, in2);

    SSE_TYPE res = INTRINSIC_FUN(v1);

    EXTRACT(out, res);

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
    char out_s[255];
    TO_STRING_OUT(out_s, out);

#ifdef PRINT
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%s\n", in1_s, out_s);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
        if(out[i] != con[i]){
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d] != con[%d]", i, i);
            return 1;
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
}
