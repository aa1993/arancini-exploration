//#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i16
#define STR_IN_TYPE i32
#define STR_OUT_TYPE u16
#define C_IN_TYPE int
#define C_OUT_TYPE unsigned short
#define INST_NAME packusdw
#define INTRINSIC_FUN _mm_packus_epi32
#define SRC1 {47791, 903235736, -19759, -149336700}
#define SRC2 {10325, 14930, -10084, 21780}
#define CON {47791, 65535, 0, 0, 10325, 14930, 0, 21780}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
