#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 4
#define SSE_TYPE __m128d
#define SSE_TYPE_OUT __m128
#define INSERT_TYPE f64
#define EXTRACT_TYPE f32
#define STR_IN_TYPE f64
#define STR_OUT_TYPE f32
#define C_IN_TYPE double
#define C_OUT_TYPE float
#define INST_NAME cvtpd2ps
#define INTRINSIC_FUN _mm_cvtpd_ps
#define SRC1 {55.6, 43.4}
#define SRC2 {65.3, 73.6}
#define CON  {65.3f, 73.6f, 0, 0}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
