#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i64
#define EXTRACT_TYPE i64
#define STR_IN_TYPE i64
#define STR_OUT_TYPE i64
#define C_IN_TYPE long
#define C_OUT_TYPE long
#define INST_NAME pcmpgtq
#define INTRINSIC_FUN _mm_cmpgt_epi64
#define SRC1 {-892828429081155145, 3573193465232913594}
#define SRC2 {7308782461721296904, 3473193465232913594}
#define CON {0, -1}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
