//#define PRINT
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
#define INST_NAME pandn
#define INTRINSIC_FUN _mm_andnot_si128
#define SRC1 {8159679463526561565, 1370721966679275064}
#define SRC2 {11903833648522563387, 4024362774026441828}
#define CON {9512421009429563426, 2654907723992318020}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
