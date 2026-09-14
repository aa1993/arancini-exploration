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
#define INST_NAME divps
#define INTRINSIC_FUN _mm_div_ps
#define SRC1 {55.6f, 43.4f, 0.456f, 2.34f};
#define SRC2 {65.3f, 73.6f, -12.4f, -2.0f};
#define CON {0.85145473480224609f, 0.58967393636703491f, -0.036774195730686188f, -1.1699999570846558f}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
