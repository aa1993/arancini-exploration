#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i64
#define STR_IN_TYPE i8
#define STR_OUT_TYPE i64
#define C_IN_TYPE char
#define C_OUT_TYPE long
#define INST_NAME pmovsxbq
#define INTRINSIC_FUN _mm_cvtepi8_epi64
#define SRC1 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
#define SRC2 {127, -122, 110, -33, 67, -55, 63, 127, -18, 29, 9, 38, 47, 36, 0, -128}
#define CON {127, -122}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
