#ifndef sse_service
#define sse_service

#include <immintrin.h>
#include <stdio.h>
#include <stdint.h>
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
void insert_i64( __m128i* dest, int64_t input[]){
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
void extract_i64( int64_t dest[], __m128i input){
    _mm_storeu_si128((__m128i*)dest, input);
}
void to_string_f32(char* dest,  float src[]){
    char res[255];
    sprintf(res, "(%.17gf, %.17gf, %.17gf, %.17gf)",
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
void to_string_i64(char* dest,  int64_t src[]){
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
void to_string_u64(char* dest,  uint64_t src[]){
    char res[255];
    sprintf(res, "(%lu, %lu)",
          src[0], src[1]);
    strcpy(dest, res);
}
#endif
