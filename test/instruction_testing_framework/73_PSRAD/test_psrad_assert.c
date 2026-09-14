//#define PRINT
#define SSE_TEST
#define IN_LEN 4
#define OUT_LEN 4
#define SSE_TYPE __m128i
#define INSERT_TYPE i32
#define EXTRACT_TYPE i32
#define STR_IN_TYPE i32
#define STR_OUT_TYPE i32
#define C_IN_TYPE int
#define C_OUT_TYPE int
#define INST_NAME psrad
#define INTRINSIC_FUN _mm_sra_epi32
#define SRC1 {427757791, 903235736, -1976786759, -149336700}
#define SRC2 {3, 0, 0, 0}
#define CON {53469723, 112904467, -247098345, -18667088}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
