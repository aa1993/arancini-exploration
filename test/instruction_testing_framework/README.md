# Testing framework

This testing framework was developed to help create test for a large quantity of SSE instructions. It should help new contributors get an idea of how to create dedicated tests for new instructions. It can help get a easy introduction into inline assembly for C.

## How it works.

The core parts of this framework are the tester.h and sse_service.h files. The idea is to generate testing through macros because most of the time the test have the same structure or pattern. Most of the time example data get loaded into some specific registers, the instructions get executed and finally a resulting effect, most of the time resulting value, is extracted and checked. Because this framework was developed during the implementation of SSE instructions, it mostly specializes to handle these instructions. The macros as seen in every test are defined and after that the tester.h file is loaded which contains the entry point of the test and the execution of the test itself. The test can ether print out the result and the value which got loaded of just print out if the resulting value matches the resulting value.

## intrinsic vs inline assembly

This testing framework was first developed to use intrinsic functions of the corresponding SSE instructions, but later on inline assembly was used to test the instructions. The reason for that was that the compiler would not always convert the intrinsic functions into the instruction u expect. One example for that was the `movlhps`, which compilation of its intrinsic function didn't contain the instruction. The effect was the same, but it would help to test the instructions translation later on. What is why we recommend using inline assembly or checking the produced assembly code. Some of our examples still use intrinsic functions because they are the easier solution.

## Used macros

	- `PRINT`: If defined, the test will only print out the values; if not, it will only print out the evaluation of the test
	- `IN_LEN (16, 8, 4, 2)`: The amount of elements inside the input vectors
	- `OUT_LEN (16, 8, 4, 2)`: The amount of elements inside the output vectors
	- `SSE_TYPE (__m128i, __m128d, __m128)`: The type in C which will be used by the intrinsic function as input and output type. `__m128i` for integer, `__m128` for float and `__m128d` for double
	- `SSE_TYPE_OUT (__m128i, __m128d, __m128)`: (Optional) To convert result into a different interpretation. The type in C which will be used by the intrinsic function as input and output type. `__m128i` for integer, `__m128` for float and `__m128d` for double
	- `INSERT_TYPE (i8, i16, i32, i64, f32, f64)`: The suffix used for the different insert functions to insert the right type into the intrinsic typed variable
	- `EXTRACT_TYPE (i8, i16, i32, i64, f32, f64)`: The suffix used for the different extract functions to extract the right type from the resulting intrinsic variable
	- `STR_IN_TYPE (i8, i16, i32, i64, u8, u16, u32, u64, f32, f64)`: The suffix used for the different functions which convert the input values into an appropriate string format. Here signed and unsigned integer and floating point values with different bit length are possible.
	- `STR_OUT_TYPE (i8, i16, i32, i64, u8, u16, u32, u64, f32, f64)`: The suffix used for the different functions which convert the output and expected values into an appropriate string format. Here signed and unsigned integer and floating point values with different bit length are possible.
	- `C_IN_TYPE ([unsigned] char, [unsigned] short, [unsigned] int, [unsigned] long, float, double)`: The type in C of the input elements
	- `C_OUT_TYPE ([unsigned] char, [unsigned] short, [unsigned] int, [unsigned] long, float, double)`: The type in C of the output elements
	- `INST_NAME`: The name of the instruction
	- `INTRINSIC_FUN`: The name of the intrinsic function of the instruction
	- `SRC1`: The value of the first operand
	- `SRC2`: (Optional) The value of the second operand. Only used for instructions taking an xmm register as their second operand
	- `IMM8`: (Optional) The value of an immediate 8-bit value. Only used by instructions taking an immediate 8-bit value as the last operand
	- `CON`: The hardcoded resulting value which will be compared with the result
