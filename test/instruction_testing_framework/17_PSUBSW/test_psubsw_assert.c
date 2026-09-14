//#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i16
#define STR_IN_TYPE i16
#define STR_OUT_TYPE i16
#define C_IN_TYPE short
#define C_OUT_TYPE short
#define INST_NAME psubsw
#define INTRINSIC_FUN _mm_subs_epi16
#define SRC1 {32767, -10, -32768, -7, 50, 100, 15 ,32767};
#define SRC2 {-32768, 32767, 17, -32768, -1, 0, -500, -300};
#define CON  {32767, -32768, -32768, 32761, 51, 100, 515, 32767};

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester_asm_flags.h"
