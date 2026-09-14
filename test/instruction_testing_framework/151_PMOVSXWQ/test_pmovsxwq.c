#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i64
#define STR_IN_TYPE i16
#define STR_OUT_TYPE i64
#define C_IN_TYPE short
#define C_OUT_TYPE long
#define INST_NAME pmovsxwq
#define INTRINSIC_FUN _mm_cvtepi16_epi64
#define SRC1 {0, 0, 0, 0, 0, 0, 0, 0}
#define SRC2 {127, -122, 110, -33, 67, -55, 63, 127}
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
