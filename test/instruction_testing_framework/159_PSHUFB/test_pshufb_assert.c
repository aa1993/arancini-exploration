//#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 16
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i8
#define STR_IN_TYPE i8
#define STR_OUT_TYPE i8
#define C_IN_TYPE char
#define C_OUT_TYPE char
#define INST_NAME pshufb
#define INTRINSIC_FUN _mm_shuffle_epi8
#define SRC1 {127, -122, 110, -33, 67, -55, 63, 127, -18, 29, 9, 38, 47, 36, 0, -128}
#define SRC2 {1, -4, -55, 15, -44, -32, 5, 6, 7, 13, 13, 13, 2, 3, 4, 5}
#define CON {-122, 0, 0, -128, 0, 0, -55, 63, 127, 36, 36, 36, 110, -33, 67, -55}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
