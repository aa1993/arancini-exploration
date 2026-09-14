#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 4
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE u32
#define STR_OUT_TYPE u32
#define C_IN_TYPE unsigned int
#define C_OUT_TYPE unsigned int
#define INST_NAME pminud
#define INTRINSIC_FUN _mm_min_epu32
#define SRC1 {2364581444, 458946884, 2696049715, 3918891053}
#define SRC2 {2185622031, 2073453698, 3939585350, 2969356587}
#define CON {2185622031, 458946884, 2696049715, 2969356587}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
