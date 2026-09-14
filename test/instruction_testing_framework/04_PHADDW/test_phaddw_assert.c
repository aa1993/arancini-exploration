//#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i16
#define STR_IN_TYPE i16
#define STR_OUT_TYPE i16
#define C_IN_TYPE short
#define C_OUT_TYPE short
#define INST_NAME phaddw
#define INTRINSIC_FUN _mm_hadd_epi16
#define SRC1 {15, 13, -3, -7, 50, 100, 15 ,32767};
#define SRC2 {-10, 15, 17, -23, -1, 0, -500, -300};
#define CON  {28, -10, 150, -32754, 5, -6, -1, -800};

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester_asm_flags.h"
