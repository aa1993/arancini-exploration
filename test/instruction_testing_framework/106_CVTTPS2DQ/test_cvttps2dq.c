#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 4
#define SSE_TYPE __m128
#define SSE_TYPE_OUT __m128i
#define INSERT_TYPE f32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE f32
#define STR_OUT_TYPE i32
#define C_IN_TYPE float
#define C_OUT_TYPE int
#define INST_NAME cvttps2dq
#define INTRINSIC_FUN _mm_cvttps_epi32
#define SRC1 {55.6f, 43.4f, 0.456f, 2.34f}
#define SRC2 {65.3f, 73.6f, -12.4f, -2.0f}
#define CON  {65, 73, -12, -2}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
