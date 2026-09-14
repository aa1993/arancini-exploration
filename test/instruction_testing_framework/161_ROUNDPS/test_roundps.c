#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 4
#define SSE_TYPE __m128
#define INSERT_TYPE f32
#define EXTRACT_TYPE f32
#define STR_IN_TYPE f32
#define STR_OUT_TYPE f32
#define C_IN_TYPE float
#define C_OUT_TYPE float
#define INST_NAME roundps
#define INTRINSIC_FUN _mm_round_ps
#define SRC1 {0.0f, 0.0f, 0.0f, 0.0f}
#define SRC2 {2.456f, -3.5f, 4.5556f, 256.5f}
#define IMM8 0b00000000
#define CON {2.0f, -4.0f, 5.0f, 256.0f}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
