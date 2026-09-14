//#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 16
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i8
#define STR_IN_TYPE i16
#define STR_OUT_TYPE u8
#define C_IN_TYPE short
#define C_OUT_TYPE unsigned char
#define INST_NAME packusws
#define INTRINSIC_FUN _mm_packus_epi16
#define SRC1 {32767, -16489, 48, 20, 132, -18086, 233, -8854}
#define SRC2 {-18934, -30042, -32768, 4231, -29484, 22, 35, -32147}
#define CON {255, 0, 48, 20, 132, 0, 233, 0, 0, 0, 0, 255, 0, 22, 35, 0}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
