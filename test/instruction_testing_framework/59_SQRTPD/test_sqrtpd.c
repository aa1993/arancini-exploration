#define PRINT
#define SSE_TEST
#define IN_LEN 2
#define OUT_LEN 2
#define SSE_TYPE __m128d
#define INSERT_TYPE f64
#define EXTRACT_TYPE f64
#define STR_IN_TYPE f64
#define STR_OUT_TYPE f64
#define C_IN_TYPE double
#define C_OUT_TYPE double
#define INST_NAME sqrtpd
#define INTRINSIC_FUN _mm_sqrt_pd
#define SRC1 {55.6, 43.4}
#define CON {7.4565407529228995, 6.5878676368002411}

#define STR(x) STR_IMPL(x)
#define STR_IMPL(x) #x

#define CONCAT(a, b) CONCAT_IMPL(a, b)
#define CONCAT_IMPL(a, b) a##b

#define INSERT CONCAT(insert_, INSERT_TYPE)
#define EXTRACT CONCAT(extract_, EXTRACT_TYPE)
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/tester.h"
