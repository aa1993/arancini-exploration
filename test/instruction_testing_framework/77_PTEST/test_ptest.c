#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 2
#define SSE_TYPE __m128i
#define INSERT_TYPE i64
#define EXTRACT_TYPE i64
#define STR_IN_TYPE u64
#define STR_OUT_TYPE u64
#define C_IN_TYPE unsigned long
#define C_OUT_TYPE unsigned long
#define INST_NAME ptest
#define SRC1 {0xaaaaaaaaaaaaaaaaul, 0xaaaaaaaaaaaaaaaaul}
#define SRC2 {0x5555555555555555ul, 0x5555555555555555ul}
#define CON {0, 1}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester_asm_flags.h"
