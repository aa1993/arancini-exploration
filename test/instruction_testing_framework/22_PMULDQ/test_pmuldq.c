#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i64
#define STR_IN_TYPE i32
#define STR_OUT_TYPE i64
#define C_IN_TYPE int
#define C_OUT_TYPE long
#define INST_NAME pmuldq
#define INTRINSIC_FUN _mm_mul_epi32
#define SRC1 {214748364, 5, 50, 7};
#define SRC2 {2147483647, -5, 5, 23};
#define CON  {461168599910003508, 250};

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester_asm_flags.h"
