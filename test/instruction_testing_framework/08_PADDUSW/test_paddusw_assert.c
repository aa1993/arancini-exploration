//#define PRINT
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
#define INST_NAME paddusw
#define INTRINSIC_FUN _mm_adds_epu16
#define SRC1 {128, 5, 65500, 7, 50, 100, 15 ,127};
#define SRC2 {10, 15, 50000, 23, 1, 0, 255, 188};
#define CON  {138, 20, 65535, 30, 51, 100, 270, 315};

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester_asm_flags.h"
