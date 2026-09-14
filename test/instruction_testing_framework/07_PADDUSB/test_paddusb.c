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
#define INST_NAME paddusb
#define INTRINSIC_FUN _mm_adds_epu8
#define SRC1 {128, 5, 3, 7, 50, 100, 15 ,127, 128, 5, 3, 7, 50, 100, 15 ,127};
#define SRC2 {10, 15, 17, 23, 1, 0, 255, 188, 10, 15, 17, 23, 1, 0, 180, 200};
#define CON  {138, 20, 20, 30, 51, 100, 255, 255, 138, 20, 20, 30, 51, 100, 195, 255};

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
