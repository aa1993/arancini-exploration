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
#define INST_NAME psllw
#define INTRINSIC_FUN _mm_sll_epi16
#define SRC1 {22586, -16489, -4548, 16320, 3472, -18086, -29378, -8854}
#define SRC2 {3, 0, 0, 0, 0, 0, 0, 0}
#define CON {-15920, -840, 29152, -512, 27776, -13616, 27120, -5296}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
