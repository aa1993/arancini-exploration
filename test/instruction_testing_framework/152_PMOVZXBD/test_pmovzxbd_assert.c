//#define PRINT
#define SSE_TEST
#define IN_LEN 16
#define OUT_LEN 4
#define SSE_TYPE __m128i
#define INSERT_TYPE i8
#define EXTRACT_TYPE i32
#define STR_IN_TYPE u8
#define STR_OUT_TYPE u32
#define C_IN_TYPE unsigned char
#define C_OUT_TYPE unsigned int
#define INST_NAME pmovzxbd
#define INTRINSIC_FUN _mm_cvtepu8_epi32
#define SRC1 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
#define SRC2 {193, 66, 0, 45, 254, 57, 103, 77, 199, 146, 248, 111, 51, 43, 48, 20}
#define CON {193, 66, 0, 45}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
