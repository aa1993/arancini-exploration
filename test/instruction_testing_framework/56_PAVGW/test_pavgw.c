#define PRINT
#define SSE_TEST
#define IN_LEN 8
#define OUT_LEN 8
#define SSE_TYPE __m128i
#define INSERT_TYPE i16
#define EXTRACT_TYPE i16
#define STR_IN_TYPE u16
#define STR_OUT_TYPE u16
#define C_IN_TYPE unsigned short
#define C_OUT_TYPE unsigned short
#define INST_NAME pavgw
#define INTRINSIC_FUN _mm_avg_epu16
#define SRC1 {14185, 3017, 33468, 44808, 18387, 6038, 47010, 39538}
#define SRC2 {13952, 55003, 46410, 63631, 47078, 40261, 54655, 37493}
#define CON {14069, 29010, 39939, 54220, 32733, 23150, 50833, 38516}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
