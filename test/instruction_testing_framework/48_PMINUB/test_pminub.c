#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 16
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i8
#define STR_IN_TYPE u8
#define STR_OUT_TYPE u8
#define C_IN_TYPE unsigned char
#define C_OUT_TYPE unsigned char
#define INST_NAME pminub
#define INTRINSIC_FUN _mm_min_epu8
#define SRC1 {193, 66, 0, 45, 254, 57, 103, 77, 199, 146, 248, 111, 51, 43, 48, 20}
#define SRC2 {101, 5, 134, 60, 2, 68, 32, 186, 250, 233, 50, 179, 38, 202, 62, 4}
#define CON {101, 5, 0, 45, 2, 57, 32, 77, 199, 146, 50, 111, 38, 43, 48, 4}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
