//#define PRINT
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
#define INST_NAME haddps
#define INTRINSIC_FUN _mm_hadd_ps
#define SRC1 {55.55f, 45.35f, 55.44f, 43.66}
#define SRC2 {65.45f, 35.65f, 159.45f, 23.544f}
#define CON  {100.899994f, 99.099998f, 101.099998f, 182.994003f}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester_asm_flags.h"
