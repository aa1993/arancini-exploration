
./test_ptest_assert_static_musl:     Dateiformat elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	50                   	push   %rax
  401001:	58                   	pop    %rax
  401002:	c3                   	ret

Disassembly of section .text:

0000000000401040 <exit>:
  401040:	f3 0f 1e fa          	endbr64
  401044:	55                   	push   %rbp
  401045:	48 89 e5             	mov    %rsp,%rbp
  401048:	53                   	push   %rbx
  401049:	89 fb                	mov    %edi,%ebx
  40104b:	48 83 ec 08          	sub    $0x8,%rsp
  40104f:	e8 dc 16 00 00       	call   402730 <__funcs_on_exit>
  401054:	e8 e7 16 00 00       	call   402740 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 60 5d 00 00       	call   406dc0 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 19 50 00 00       	call   406080 <_Exit>

0000000000401067 <_start>:
  401067:	48 31 ed             	xor    %rbp,%rbp
  40106a:	48 89 e7             	mov    %rsp,%rdi
  40106d:	48 8d 35 8c ef bf ff 	lea    -0x401074(%rip),%rsi        # 0 <_init-0x401000>
  401074:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401078:	e8 03 00 00 00       	call   401080 <_start_c>
  40107d:	0f 1f 00             	nopl   (%rax)

0000000000401080 <_start_c>:
  401080:	f3 0f 1e fa          	endbr64
  401084:	8b 37                	mov    (%rdi),%esi
  401086:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40108a:	49 c7 c0 a4 70 40 00 	mov    $0x4070a4,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 b9 15 00 00       	jmp    402660 <__libc_start_main>
  4010a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4010ae:	00 00 

00000000004010b0 <deregister_tm_clones>:
  4010b0:	48 8d 3d 59 a0 00 00 	lea    0xa059(%rip),%rdi        # 40b110 <__TMC_END__>
  4010b7:	48 8d 05 52 a0 00 00 	lea    0xa052(%rip),%rax        # 40b110 <__TMC_END__>
  4010be:	48 39 f8             	cmp    %rdi,%rax
  4010c1:	74 15                	je     4010d8 <deregister_tm_clones+0x28>
  4010c3:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
  4010ca:	48 85 c0             	test   %rax,%rax
  4010cd:	74 09                	je     4010d8 <deregister_tm_clones+0x28>
  4010cf:	ff e0                	jmp    *%rax
  4010d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4010d8:	c3                   	ret
  4010d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004010e0 <register_tm_clones>:
  4010e0:	48 8d 3d 29 a0 00 00 	lea    0xa029(%rip),%rdi        # 40b110 <__TMC_END__>
  4010e7:	48 8d 35 22 a0 00 00 	lea    0xa022(%rip),%rsi        # 40b110 <__TMC_END__>
  4010ee:	48 29 fe             	sub    %rdi,%rsi
  4010f1:	48 89 f0             	mov    %rsi,%rax
  4010f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010f8:	48 c1 f8 03          	sar    $0x3,%rax
  4010fc:	48 01 c6             	add    %rax,%rsi
  4010ff:	48 d1 fe             	sar    $1,%rsi
  401102:	74 14                	je     401118 <register_tm_clones+0x38>
  401104:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
  40110b:	48 85 c0             	test   %rax,%rax
  40110e:	74 08                	je     401118 <register_tm_clones+0x38>
  401110:	ff e0                	jmp    *%rax
  401112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401118:	c3                   	ret
  401119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401120 <__do_global_dtors_aux>:
  401120:	f3 0f 1e fa          	endbr64
  401124:	80 3d f5 9f 00 00 00 	cmpb   $0x0,0x9ff5(%rip)        # 40b120 <completed.0>
  40112b:	75 2b                	jne    401158 <__do_global_dtors_aux+0x38>
  40112d:	55                   	push   %rbp
  40112e:	48 83 3d aa 9e 00 00 	cmpq   $0x0,0x9eaa(%rip)        # 40afe0 <__stdio_ofl_lockptr+0x8>
  401135:	00 
  401136:	48 89 e5             	mov    %rsp,%rbp
  401139:	74 0c                	je     401147 <__do_global_dtors_aux+0x27>
  40113b:	48 8b 3d be 9e 00 00 	mov    0x9ebe(%rip),%rdi        # 40b000 <__dso_handle>
  401142:	e8 b9 ee bf ff       	call   0 <_init-0x401000>
  401147:	e8 64 ff ff ff       	call   4010b0 <deregister_tm_clones>
  40114c:	c6 05 cd 9f 00 00 01 	movb   $0x1,0x9fcd(%rip)        # 40b120 <completed.0>
  401153:	5d                   	pop    %rbp
  401154:	c3                   	ret
  401155:	0f 1f 00             	nopl   (%rax)
  401158:	c3                   	ret
  401159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401160 <frame_dummy>:
  401160:	f3 0f 1e fa          	endbr64
  401164:	e9 77 ff ff ff       	jmp    4010e0 <register_tm_clones>

0000000000401169 <insert_f32>:
#include <stdio.h>
#include <string.h>
#include <assert.h>


void insert_f32( __m128* dest, float input[]){
  401169:	f3 0f 1e fa          	endbr64
  40116d:	55                   	push   %rbp
  40116e:	48 89 e5             	mov    %rsp,%rbp
  401171:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401175:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    *dest = _mm_set_ps(input[3], input[2], input[1], input[0]);
  401179:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40117d:	f3 0f 10 00          	movss  (%rax),%xmm0
  401181:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401185:	48 83 c0 04          	add    $0x4,%rax
  401189:	f3 0f 10 08          	movss  (%rax),%xmm1
  40118d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401191:	48 83 c0 08          	add    $0x8,%rax
  401195:	f3 0f 10 10          	movss  (%rax),%xmm2
  401199:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40119d:	48 83 c0 0c          	add    $0xc,%rax
  4011a1:	f3 0f 10 18          	movss  (%rax),%xmm3
  4011a5:	f3 0f 11 5d f0       	movss  %xmm3,-0x10(%rbp)
  4011aa:	f3 0f 11 55 f4       	movss  %xmm2,-0xc(%rbp)
  4011af:	f3 0f 11 4d f8       	movss  %xmm1,-0x8(%rbp)
  4011b4:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)

/* Create the vector [Z Y X W].  */
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_ps (const float __Z, const float __Y, const float __X, const float __W)
{
  return __extension__ (__m128)(__v4sf){ __W, __X, __Y, __Z };
  4011b9:	f3 0f 10 55 f0       	movss  -0x10(%rbp),%xmm2
  4011be:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  4011c3:	0f 28 c8             	movaps %xmm0,%xmm1
  4011c6:	0f 14 ca             	unpcklps %xmm2,%xmm1
  4011c9:	f3 0f 10 55 f8       	movss  -0x8(%rbp),%xmm2
  4011ce:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  4011d3:	0f 14 c2             	unpcklps %xmm2,%xmm0
  4011d6:	0f 16 c1             	movlhps %xmm1,%xmm0
  4011d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4011dd:	0f 29 00             	movaps %xmm0,(%rax)
}
  4011e0:	90                   	nop
  4011e1:	5d                   	pop    %rbp
  4011e2:	c3                   	ret

00000000004011e3 <insert_f64>:
void insert_f64( __m128d* dest, double input[]){
  4011e3:	f3 0f 1e fa          	endbr64
  4011e7:	55                   	push   %rbp
  4011e8:	48 89 e5             	mov    %rsp,%rbp
  4011eb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4011ef:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    *dest = _mm_set_pd(input[1], input[0]);
  4011f3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4011f7:	f2 0f 10 00          	movsd  (%rax),%xmm0
  4011fb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4011ff:	48 83 c0 08          	add    $0x8,%rax
  401203:	f2 0f 10 08          	movsd  (%rax),%xmm1
  401207:	f2 0f 11 4d f0       	movsd  %xmm1,-0x10(%rbp)
  40120c:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)

/* Create a vector with the lower value X and upper value W.  */
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pd (double __W, double __X)
{
  return __extension__ (__m128d){ __X, __W };
  401211:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
  401216:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
  40121b:	66 0f 14 c1          	unpcklpd %xmm1,%xmm0
  40121f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401223:	0f 29 00             	movaps %xmm0,(%rax)
}
  401226:	90                   	nop
  401227:	5d                   	pop    %rbp
  401228:	c3                   	ret

0000000000401229 <insert_i8>:
void insert_i8( __m128i* dest, char input[]){
  401229:	f3 0f 1e fa          	endbr64
  40122d:	55                   	push   %rbp
  40122e:	48 89 e5             	mov    %rsp,%rbp
  401231:	41 57                	push   %r15
  401233:	41 56                	push   %r14
  401235:	41 55                	push   %r13
  401237:	41 54                	push   %r12
  401239:	53                   	push   %rbx
  40123a:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  40123e:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    *dest = _mm_set_epi8(input[15], input[14], input[13], input[12], input[11], input[10], input[9], input[8], input[7], input[6], input[5], input[4], input[3], input[2], input[1], input[0]);
  401242:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401246:	0f b6 00             	movzbl (%rax),%eax
  401249:	0f be c8             	movsbl %al,%ecx
  40124c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401250:	48 83 c0 01          	add    $0x1,%rax
  401254:	0f b6 00             	movzbl (%rax),%eax
  401257:	0f be f0             	movsbl %al,%esi
  40125a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40125e:	48 83 c0 02          	add    $0x2,%rax
  401262:	0f b6 00             	movzbl (%rax),%eax
  401265:	0f be f8             	movsbl %al,%edi
  401268:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40126c:	48 83 c0 03          	add    $0x3,%rax
  401270:	0f b6 00             	movzbl (%rax),%eax
  401273:	44 0f be c0          	movsbl %al,%r8d
  401277:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40127b:	48 83 c0 04          	add    $0x4,%rax
  40127f:	0f b6 00             	movzbl (%rax),%eax
  401282:	44 0f be c8          	movsbl %al,%r9d
  401286:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40128a:	48 83 c0 05          	add    $0x5,%rax
  40128e:	0f b6 00             	movzbl (%rax),%eax
  401291:	44 0f be d0          	movsbl %al,%r10d
  401295:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401299:	48 83 c0 06          	add    $0x6,%rax
  40129d:	0f b6 00             	movzbl (%rax),%eax
  4012a0:	44 0f be d8          	movsbl %al,%r11d
  4012a4:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4012a8:	48 83 c0 07          	add    $0x7,%rax
  4012ac:	0f b6 00             	movzbl (%rax),%eax
  4012af:	0f be d8             	movsbl %al,%ebx
  4012b2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4012b6:	48 83 c0 08          	add    $0x8,%rax
  4012ba:	0f b6 00             	movzbl (%rax),%eax
  4012bd:	44 0f be e0          	movsbl %al,%r12d
  4012c1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4012c5:	48 83 c0 09          	add    $0x9,%rax
  4012c9:	0f b6 00             	movzbl (%rax),%eax
  4012cc:	44 0f be e8          	movsbl %al,%r13d
  4012d0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4012d4:	48 83 c0 0a          	add    $0xa,%rax
  4012d8:	0f b6 00             	movzbl (%rax),%eax
  4012db:	44 0f be f0          	movsbl %al,%r14d
  4012df:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4012e3:	48 83 c0 0b          	add    $0xb,%rax
  4012e7:	0f b6 00             	movzbl (%rax),%eax
  4012ea:	44 0f be f8          	movsbl %al,%r15d
  4012ee:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4012f2:	48 83 c0 0c          	add    $0xc,%rax
  4012f6:	0f b6 00             	movzbl (%rax),%eax
  4012f9:	0f be c0             	movsbl %al,%eax
  4012fc:	89 45 ac             	mov    %eax,-0x54(%rbp)
  4012ff:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401303:	48 83 c0 0d          	add    $0xd,%rax
  401307:	0f b6 00             	movzbl (%rax),%eax
  40130a:	0f be d0             	movsbl %al,%edx
  40130d:	89 55 a8             	mov    %edx,-0x58(%rbp)
  401310:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401314:	48 83 c0 0e          	add    $0xe,%rax
  401318:	0f b6 00             	movzbl (%rax),%eax
  40131b:	0f be d0             	movsbl %al,%edx
  40131e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401322:	48 83 c0 0f          	add    $0xf,%rax
  401326:	0f b6 00             	movzbl (%rax),%eax
  401329:	0f be c0             	movsbl %al,%eax
  40132c:	88 45 c0             	mov    %al,-0x40(%rbp)
  40132f:	88 55 c1             	mov    %dl,-0x3f(%rbp)
  401332:	0f b6 55 a8          	movzbl -0x58(%rbp),%edx
  401336:	88 55 c2             	mov    %dl,-0x3e(%rbp)
  401339:	0f b6 45 ac          	movzbl -0x54(%rbp),%eax
  40133d:	88 45 c3             	mov    %al,-0x3d(%rbp)
  401340:	44 88 7d c4          	mov    %r15b,-0x3c(%rbp)
  401344:	44 88 75 c5          	mov    %r14b,-0x3b(%rbp)
  401348:	44 88 6d c6          	mov    %r13b,-0x3a(%rbp)
  40134c:	44 88 65 c7          	mov    %r12b,-0x39(%rbp)
  401350:	88 5d c8             	mov    %bl,-0x38(%rbp)
  401353:	44 88 5d c9          	mov    %r11b,-0x37(%rbp)
  401357:	44 88 55 ca          	mov    %r10b,-0x36(%rbp)
  40135b:	44 88 4d cb          	mov    %r9b,-0x35(%rbp)
  40135f:	44 88 45 cc          	mov    %r8b,-0x34(%rbp)
  401363:	40 88 7d cd          	mov    %dil,-0x33(%rbp)
  401367:	40 88 75 ce          	mov    %sil,-0x32(%rbp)
  40136b:	88 4d cf             	mov    %cl,-0x31(%rbp)
_mm_set_epi8 (char __q15, char __q14, char __q13, char __q12,
	      char __q11, char __q10, char __q09, char __q08,
	      char __q07, char __q06, char __q05, char __q04,
	      char __q03, char __q02, char __q01, char __q00)
{
  return __extension__ (__m128i)(__v16qi){
  40136e:	0f b6 45 cf          	movzbl -0x31(%rbp),%eax
  401372:	66 0f 6e c0          	movd   %eax,%xmm0
  401376:	0f b6 45 ce          	movzbl -0x32(%rbp),%eax
  40137a:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  401380:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  401384:	0f b6 45 cd          	movzbl -0x33(%rbp),%eax
  401388:	66 0f 6e c0          	movd   %eax,%xmm0
  40138c:	0f b6 45 cc          	movzbl -0x34(%rbp),%eax
  401390:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  401396:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
  40139b:	0f b6 45 cb          	movzbl -0x35(%rbp),%eax
  40139f:	66 0f 6e c0          	movd   %eax,%xmm0
  4013a3:	0f b6 45 ca          	movzbl -0x36(%rbp),%eax
  4013a7:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  4013ad:	66 0f 6f e0          	movdqa %xmm0,%xmm4
  4013b1:	0f b6 45 c9          	movzbl -0x37(%rbp),%eax
  4013b5:	66 0f 6e c0          	movd   %eax,%xmm0
  4013b9:	0f b6 45 c8          	movzbl -0x38(%rbp),%eax
  4013bd:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  4013c3:	66 0f 6f f8          	movdqa %xmm0,%xmm7
  4013c7:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
  4013cb:	66 0f 6e c0          	movd   %eax,%xmm0
  4013cf:	0f b6 45 c6          	movzbl -0x3a(%rbp),%eax
  4013d3:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  4013d9:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  4013dd:	0f b6 45 c5          	movzbl -0x3b(%rbp),%eax
  4013e1:	66 0f 6e c0          	movd   %eax,%xmm0
  4013e5:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
  4013e9:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  4013ef:	66 0f 6f f0          	movdqa %xmm0,%xmm6
  4013f3:	0f b6 45 c3          	movzbl -0x3d(%rbp),%eax
  4013f7:	66 0f 6e c0          	movd   %eax,%xmm0
  4013fb:	0f b6 45 c2          	movzbl -0x3e(%rbp),%eax
  4013ff:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  401405:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  401409:	0f b6 45 c1          	movzbl -0x3f(%rbp),%eax
  40140d:	66 0f 6e c0          	movd   %eax,%xmm0
  401411:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
  401415:	66 0f 3a 20 c0 01    	pinsrb $0x1,%eax,%xmm0
  40141b:	66 0f 6f e8          	movdqa %xmm0,%xmm5
  40141f:	66 41 0f 61 c8       	punpcklwd %xmm8,%xmm1
  401424:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  401428:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  40142c:	66 0f 61 e7          	punpcklwd %xmm7,%xmm4
  401430:	66 0f 6f c4          	movdqa %xmm4,%xmm0
  401434:	66 0f 6f e0          	movdqa %xmm0,%xmm4
  401438:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
  40143c:	66 0f 6f c2          	movdqa %xmm2,%xmm0
  401440:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  401444:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
  401448:	66 0f 6f c3          	movdqa %xmm3,%xmm0
  40144c:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  401450:	66 0f 62 cc          	punpckldq %xmm4,%xmm1
  401454:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  401458:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  40145c:	66 0f 62 d3          	punpckldq %xmm3,%xmm2
  401460:	66 0f 6f c2          	movdqa %xmm2,%xmm0
  401464:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  401468:	66 0f 6c ca          	punpcklqdq %xmm2,%xmm1
  40146c:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  401470:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  401474:	0f 29 00             	movaps %xmm0,(%rax)
}
  401477:	90                   	nop
  401478:	5b                   	pop    %rbx
  401479:	41 5c                	pop    %r12
  40147b:	41 5d                	pop    %r13
  40147d:	41 5e                	pop    %r14
  40147f:	41 5f                	pop    %r15
  401481:	5d                   	pop    %rbp
  401482:	c3                   	ret

0000000000401483 <insert_i16>:
void insert_i16( __m128i* dest, short input[]){
  401483:	f3 0f 1e fa          	endbr64
  401487:	55                   	push   %rbp
  401488:	48 89 e5             	mov    %rsp,%rbp
  40148b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40148f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    *dest = _mm_set_epi16(input[7], input[6], input[5], input[4], input[3], input[2], input[1], input[0]);
  401493:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401497:	0f b7 00             	movzwl (%rax),%eax
  40149a:	98                   	cwtl
  40149b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40149f:	48 83 c2 02          	add    $0x2,%rdx
  4014a3:	0f b7 12             	movzwl (%rdx),%edx
  4014a6:	0f bf d2             	movswl %dx,%edx
  4014a9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4014ad:	48 83 c1 04          	add    $0x4,%rcx
  4014b1:	0f b7 09             	movzwl (%rcx),%ecx
  4014b4:	0f bf c9             	movswl %cx,%ecx
  4014b7:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  4014bb:	48 83 c6 06          	add    $0x6,%rsi
  4014bf:	0f b7 36             	movzwl (%rsi),%esi
  4014c2:	0f bf f6             	movswl %si,%esi
  4014c5:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  4014c9:	48 83 c7 08          	add    $0x8,%rdi
  4014cd:	0f b7 3f             	movzwl (%rdi),%edi
  4014d0:	0f bf ff             	movswl %di,%edi
  4014d3:	4c 8b 45 e0          	mov    -0x20(%rbp),%r8
  4014d7:	49 83 c0 0a          	add    $0xa,%r8
  4014db:	45 0f b7 00          	movzwl (%r8),%r8d
  4014df:	45 0f bf c0          	movswl %r8w,%r8d
  4014e3:	4c 8b 4d e0          	mov    -0x20(%rbp),%r9
  4014e7:	49 83 c1 0c          	add    $0xc,%r9
  4014eb:	45 0f b7 09          	movzwl (%r9),%r9d
  4014ef:	45 0f bf c9          	movswl %r9w,%r9d
  4014f3:	4c 8b 55 e0          	mov    -0x20(%rbp),%r10
  4014f7:	49 83 c2 0e          	add    $0xe,%r10
  4014fb:	45 0f b7 12          	movzwl (%r10),%r10d
  4014ff:	45 0f bf d2          	movswl %r10w,%r10d
  401503:	66 44 89 55 f0       	mov    %r10w,-0x10(%rbp)
  401508:	66 44 89 4d f2       	mov    %r9w,-0xe(%rbp)
  40150d:	66 44 89 45 f4       	mov    %r8w,-0xc(%rbp)
  401512:	66 89 7d f6          	mov    %di,-0xa(%rbp)
  401516:	66 89 75 f8          	mov    %si,-0x8(%rbp)
  40151a:	66 89 4d fa          	mov    %cx,-0x6(%rbp)
  40151e:	66 89 55 fc          	mov    %dx,-0x4(%rbp)
  401522:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
  return __extension__ (__m128i)(__v8hi){
  401526:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
  40152a:	66 0f 6e c0          	movd   %eax,%xmm0
  40152e:	0f b7 45 fc          	movzwl -0x4(%rbp),%eax
  401532:	66 0f c4 c0 01       	pinsrw $0x1,%eax,%xmm0
  401537:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  40153b:	0f b7 45 fa          	movzwl -0x6(%rbp),%eax
  40153f:	66 0f 6e c0          	movd   %eax,%xmm0
  401543:	0f b7 45 f8          	movzwl -0x8(%rbp),%eax
  401547:	66 0f c4 c0 01       	pinsrw $0x1,%eax,%xmm0
  40154c:	66 0f 6f e0          	movdqa %xmm0,%xmm4
  401550:	0f b7 45 f6          	movzwl -0xa(%rbp),%eax
  401554:	66 0f 6e c0          	movd   %eax,%xmm0
  401558:	0f b7 45 f4          	movzwl -0xc(%rbp),%eax
  40155c:	66 0f c4 c0 01       	pinsrw $0x1,%eax,%xmm0
  401561:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  401565:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
  401569:	66 0f 6e c0          	movd   %eax,%xmm0
  40156d:	0f b7 45 f0          	movzwl -0x10(%rbp),%eax
  401571:	66 0f c4 c0 01       	pinsrw $0x1,%eax,%xmm0
  401576:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  40157a:	66 0f 62 cc          	punpckldq %xmm4,%xmm1
  40157e:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  401582:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  401586:	66 0f 62 d3          	punpckldq %xmm3,%xmm2
  40158a:	66 0f 6f c2          	movdqa %xmm2,%xmm0
  40158e:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  401592:	66 0f 6c ca          	punpcklqdq %xmm2,%xmm1
  401596:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  40159a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40159e:	0f 29 00             	movaps %xmm0,(%rax)
}
  4015a1:	90                   	nop
  4015a2:	5d                   	pop    %rbp
  4015a3:	c3                   	ret

00000000004015a4 <insert_i32>:
void insert_i32( __m128i* dest, int input[]){
  4015a4:	f3 0f 1e fa          	endbr64
  4015a8:	55                   	push   %rbp
  4015a9:	48 89 e5             	mov    %rsp,%rbp
  4015ac:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4015b0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    *dest = _mm_set_epi32(input[3], input[2], input[1], input[0]);
  4015b4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4015b8:	8b 00                	mov    (%rax),%eax
  4015ba:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4015be:	48 83 c2 04          	add    $0x4,%rdx
  4015c2:	8b 12                	mov    (%rdx),%edx
  4015c4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4015c8:	48 83 c1 08          	add    $0x8,%rcx
  4015cc:	8b 09                	mov    (%rcx),%ecx
  4015ce:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  4015d2:	48 83 c6 0c          	add    $0xc,%rsi
  4015d6:	8b 36                	mov    (%rsi),%esi
  4015d8:	89 75 f0             	mov    %esi,-0x10(%rbp)
  4015db:	89 4d f4             	mov    %ecx,-0xc(%rbp)
  4015de:	89 55 f8             	mov    %edx,-0x8(%rbp)
  4015e1:	89 45 fc             	mov    %eax,-0x4(%rbp)
  return __extension__ (__m128i)(__v4si){ __q0, __q1, __q2, __q3 };
  4015e4:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4015e7:	66 0f 6e 45 f4       	movd   -0xc(%rbp),%xmm0
  4015ec:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  4015f0:	66 0f 3a 22 c8 01    	pinsrd $0x1,%eax,%xmm1
  4015f6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4015f9:	66 0f 6e 45 fc       	movd   -0x4(%rbp),%xmm0
  4015fe:	66 0f 3a 22 c0 01    	pinsrd $0x1,%eax,%xmm0
  401604:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  401608:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40160c:	0f 29 00             	movaps %xmm0,(%rax)
}
  40160f:	90                   	nop
  401610:	5d                   	pop    %rbp
  401611:	c3                   	ret

0000000000401612 <insert_i64>:
void insert_i64( __m128i* dest, long input[]){
  401612:	f3 0f 1e fa          	endbr64
  401616:	55                   	push   %rbp
  401617:	48 89 e5             	mov    %rsp,%rbp
  40161a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40161e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    *dest = _mm_set_epi64x(input[1], input[0]);
  401622:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401626:	48 8b 00             	mov    (%rax),%rax
  401629:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40162d:	48 83 c2 08          	add    $0x8,%rdx
  401631:	48 8b 12             	mov    (%rdx),%rdx
  401634:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  401638:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  return __extension__ (__m128i)(__v2di){ __q0, __q1 };
  40163c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401640:	f3 0f 7e 45 f8       	movq   -0x8(%rbp),%xmm0
  401645:	66 48 0f 3a 22 c0 01 	pinsrq $0x1,%rax,%xmm0
  40164c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401650:	0f 29 00             	movaps %xmm0,(%rax)
}
  401653:	90                   	nop
  401654:	5d                   	pop    %rbp
  401655:	c3                   	ret

0000000000401656 <extract_f32>:
void extract_f32( float dest[], __m128 input){
  401656:	f3 0f 1e fa          	endbr64
  40165a:	55                   	push   %rbp
  40165b:	48 89 e5             	mov    %rsp,%rbp
  40165e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401662:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
  401666:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40166a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40166e:	0f 28 45 c0          	movaps -0x40(%rbp),%xmm0
  401672:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)

/* Store four SPFP values.  The address need not be 16-byte aligned.  */
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_ps (float *__P, __m128 __A)
{
  *(__m128_u *)__P = __A;
  401676:	0f 28 45 f0          	movaps -0x10(%rbp),%xmm0
  40167a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40167e:	0f 11 00             	movups %xmm0,(%rax)
}
  401681:	90                   	nop
    _mm_storeu_ps(dest, input);
}
  401682:	90                   	nop
  401683:	5d                   	pop    %rbp
  401684:	c3                   	ret

0000000000401685 <extract_f64>:
void extract_f64( double dest[], __m128d input){
  401685:	f3 0f 1e fa          	endbr64
  401689:	55                   	push   %rbp
  40168a:	48 89 e5             	mov    %rsp,%rbp
  40168d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401691:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
  401695:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401699:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40169d:	66 0f 28 45 c0       	movapd -0x40(%rbp),%xmm0
  4016a2:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)
  *(__m128d_u *)__P = __A;
  4016a6:	66 0f 28 45 f0       	movapd -0x10(%rbp),%xmm0
  4016ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016af:	0f 11 00             	movups %xmm0,(%rax)
}
  4016b2:	90                   	nop
    _mm_storeu_pd(dest, input);
}
  4016b3:	90                   	nop
  4016b4:	5d                   	pop    %rbp
  4016b5:	c3                   	ret

00000000004016b6 <extract_i8>:
void extract_i8( char dest[], __m128i input){
  4016b6:	f3 0f 1e fa          	endbr64
  4016ba:	55                   	push   %rbp
  4016bb:	48 89 e5             	mov    %rsp,%rbp
  4016be:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4016c2:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
  4016c6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4016ca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4016ce:	66 0f 6f 45 c0       	movdqa -0x40(%rbp),%xmm0
  4016d3:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)
}

extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_si128 (__m128i_u *__P, __m128i __B)
{
  *__P = __B;
  4016d7:	66 0f 6f 45 f0       	movdqa -0x10(%rbp),%xmm0
  4016dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016e0:	0f 11 00             	movups %xmm0,(%rax)
}
  4016e3:	90                   	nop
    _mm_storeu_si128((__m128i*)dest, input);
}
  4016e4:	90                   	nop
  4016e5:	5d                   	pop    %rbp
  4016e6:	c3                   	ret

00000000004016e7 <extract_i16>:
void extract_i16( short* dest, __m128i input){
  4016e7:	f3 0f 1e fa          	endbr64
  4016eb:	55                   	push   %rbp
  4016ec:	48 89 e5             	mov    %rsp,%rbp
  4016ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4016f3:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
  4016f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4016fb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4016ff:	66 0f 6f 45 c0       	movdqa -0x40(%rbp),%xmm0
  401704:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)
  *__P = __B;
  401708:	66 0f 6f 45 f0       	movdqa -0x10(%rbp),%xmm0
  40170d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401711:	0f 11 00             	movups %xmm0,(%rax)
}
  401714:	90                   	nop
    _mm_storeu_si128((__m128i*)dest, input);
}
  401715:	90                   	nop
  401716:	5d                   	pop    %rbp
  401717:	c3                   	ret

0000000000401718 <extract_i32>:
void extract_i32( int dest[], __m128i input){
  401718:	f3 0f 1e fa          	endbr64
  40171c:	55                   	push   %rbp
  40171d:	48 89 e5             	mov    %rsp,%rbp
  401720:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401724:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
  401728:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40172c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401730:	66 0f 6f 45 c0       	movdqa -0x40(%rbp),%xmm0
  401735:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)
  *__P = __B;
  401739:	66 0f 6f 45 f0       	movdqa -0x10(%rbp),%xmm0
  40173e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401742:	0f 11 00             	movups %xmm0,(%rax)
}
  401745:	90                   	nop
    _mm_storeu_si128((__m128i*)dest, input);
}
  401746:	90                   	nop
  401747:	5d                   	pop    %rbp
  401748:	c3                   	ret

0000000000401749 <extract_i64>:
void extract_i64( long dest[], __m128i input){
  401749:	f3 0f 1e fa          	endbr64
  40174d:	55                   	push   %rbp
  40174e:	48 89 e5             	mov    %rsp,%rbp
  401751:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401755:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
  401759:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40175d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401761:	66 0f 6f 45 c0       	movdqa -0x40(%rbp),%xmm0
  401766:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)
  *__P = __B;
  40176a:	66 0f 6f 45 f0       	movdqa -0x10(%rbp),%xmm0
  40176f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401773:	0f 11 00             	movups %xmm0,(%rax)
}
  401776:	90                   	nop
    _mm_storeu_si128((__m128i*)dest, input);
}
  401777:	90                   	nop
  401778:	5d                   	pop    %rbp
  401779:	c3                   	ret

000000000040177a <to_string_f32>:
void to_string_f32(char* dest,  float src[]){
  40177a:	f3 0f 1e fa          	endbr64
  40177e:	55                   	push   %rbp
  40177f:	48 89 e5             	mov    %rsp,%rbp
  401782:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401789:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  401790:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  401797:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40179e:	00 00 
  4017a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017a4:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%.17gf, %.17gf, %.17gf, %.17gf)",
          src[0], src[1], src[2], src[3]);
  4017a6:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4017ad:	48 83 c0 0c          	add    $0xc,%rax
  4017b1:	f3 0f 10 00          	movss  (%rax),%xmm0
    sprintf(res, "(%.17gf, %.17gf, %.17gf, %.17gf)",
  4017b5:	66 0f ef d2          	pxor   %xmm2,%xmm2
  4017b9:	f3 0f 5a d0          	cvtss2sd %xmm0,%xmm2
          src[0], src[1], src[2], src[3]);
  4017bd:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4017c4:	48 83 c0 08          	add    $0x8,%rax
  4017c8:	f3 0f 10 00          	movss  (%rax),%xmm0
    sprintf(res, "(%.17gf, %.17gf, %.17gf, %.17gf)",
  4017cc:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4017d0:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
          src[0], src[1], src[2], src[3]);
  4017d4:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4017db:	48 83 c0 04          	add    $0x4,%rax
  4017df:	f3 0f 10 00          	movss  (%rax),%xmm0
    sprintf(res, "(%.17gf, %.17gf, %.17gf, %.17gf)",
  4017e3:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
          src[0], src[1], src[2], src[3]);
  4017e7:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4017ee:	f3 0f 10 18          	movss  (%rax),%xmm3
    sprintf(res, "(%.17gf, %.17gf, %.17gf, %.17gf)",
  4017f2:	66 0f ef e4          	pxor   %xmm4,%xmm4
  4017f6:	f3 0f 5a e3          	cvtss2sd %xmm3,%xmm4
  4017fa:	66 48 0f 7e e2       	movq   %xmm4,%rdx
  4017ff:	48 8d 0d fa 67 00 00 	lea    0x67fa(%rip),%rcx        # 408000 <_fini+0xf5c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 f2 10 00 00       	call   402920 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 19 43 00 00       	call   405b60 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 c4 0e 00 00       	call   402720 <__stack_chk_fail>
  40185c:	c9                   	leave
  40185d:	c3                   	ret

000000000040185e <to_string_f64>:
void to_string_f64(char* dest,  double src[]){
  40185e:	f3 0f 1e fa          	endbr64
  401862:	55                   	push   %rbp
  401863:	48 89 e5             	mov    %rsp,%rbp
  401866:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  40186d:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  401874:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  40187b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401882:	00 00 
  401884:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401888:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%.17g, %.17g)",
          src[0], src[1]);
  40188a:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401891:	48 83 c0 08          	add    $0x8,%rax
    sprintf(res, "(%.17g, %.17g)",
  401895:	f2 0f 10 00          	movsd  (%rax),%xmm0
  401899:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4018a0:	48 8b 10             	mov    (%rax),%rdx
  4018a3:	48 8d 0d 73 67 00 00 	lea    0x6773(%rip),%rcx        # 40801d <_fini+0xf79>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 56 10 00 00       	call   402920 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 7d 42 00 00       	call   405b60 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 28 0e 00 00       	call   402720 <__stack_chk_fail>
  4018f8:	c9                   	leave
  4018f9:	c3                   	ret

00000000004018fa <to_string_i8>:
void to_string_i8(char* dest,  char src[]){
  4018fa:	f3 0f 1e fa          	endbr64
  4018fe:	55                   	push   %rbp
  4018ff:	48 89 e5             	mov    %rsp,%rbp
  401902:	41 57                	push   %r15
  401904:	41 56                	push   %r14
  401906:	41 55                	push   %r13
  401908:	41 54                	push   %r12
  40190a:	53                   	push   %rbx
  40190b:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
  401912:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
  401919:	48 89 b5 b0 fe ff ff 	mov    %rsi,-0x150(%rbp)
  401920:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401927:	00 00 
  401929:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40192d:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  40192f:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401936:	48 83 c0 0f          	add    $0xf,%rax
  40193a:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  40193d:	0f be f8             	movsbl %al,%edi
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401940:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401947:	48 83 c0 0e          	add    $0xe,%rax
  40194b:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  40194e:	44 0f be c0          	movsbl %al,%r8d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401952:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401959:	48 83 c0 0d          	add    $0xd,%rax
  40195d:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401960:	44 0f be c8          	movsbl %al,%r9d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401964:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  40196b:	48 83 c0 0c          	add    $0xc,%rax
  40196f:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401972:	0f be c0             	movsbl %al,%eax
  401975:	89 85 ac fe ff ff    	mov    %eax,-0x154(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  40197b:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401982:	48 83 c0 0b          	add    $0xb,%rax
  401986:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401989:	0f be d8             	movsbl %al,%ebx
  40198c:	89 9d a8 fe ff ff    	mov    %ebx,-0x158(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401992:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401999:	48 83 c0 0a          	add    $0xa,%rax
  40199d:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  4019a0:	44 0f be f8          	movsbl %al,%r15d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  4019a4:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  4019ab:	48 83 c0 09          	add    $0x9,%rax
  4019af:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  4019b2:	44 0f be f0          	movsbl %al,%r14d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  4019b6:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  4019bd:	48 83 c0 08          	add    $0x8,%rax
  4019c1:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  4019c4:	44 0f be e8          	movsbl %al,%r13d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  4019c8:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  4019cf:	48 83 c0 07          	add    $0x7,%rax
  4019d3:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  4019d6:	44 0f be e0          	movsbl %al,%r12d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  4019da:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  4019e1:	48 83 c0 06          	add    $0x6,%rax
  4019e5:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  4019e8:	0f be d8             	movsbl %al,%ebx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  4019eb:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  4019f2:	48 83 c0 05          	add    $0x5,%rax
  4019f6:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  4019f9:	44 0f be d8          	movsbl %al,%r11d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  4019fd:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401a04:	48 83 c0 04          	add    $0x4,%rax
  401a08:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401a0b:	44 0f be d0          	movsbl %al,%r10d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401a0f:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401a16:	48 83 c0 03          	add    $0x3,%rax
  401a1a:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401a1d:	0f be c8             	movsbl %al,%ecx
  401a20:	89 8d a4 fe ff ff    	mov    %ecx,-0x15c(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401a26:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401a2d:	48 83 c0 02          	add    $0x2,%rax
  401a31:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401a34:	0f be d0             	movsbl %al,%edx
  401a37:	89 95 a0 fe ff ff    	mov    %edx,-0x160(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401a3d:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401a44:	48 83 c0 01          	add    $0x1,%rax
  401a48:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401a4b:	0f be c8             	movsbl %al,%ecx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401a4e:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401a55:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401a58:	0f be d0             	movsbl %al,%edx
  401a5b:	48 8d 35 ce 65 00 00 	lea    0x65ce(%rip),%rsi        # 408030 <_fini+0xf8c>
  401a62:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  401a69:	57                   	push   %rdi
  401a6a:	41 50                	push   %r8
  401a6c:	41 51                	push   %r9
  401a6e:	8b bd ac fe ff ff    	mov    -0x154(%rbp),%edi
  401a74:	57                   	push   %rdi
  401a75:	8b bd a8 fe ff ff    	mov    -0x158(%rbp),%edi
  401a7b:	57                   	push   %rdi
  401a7c:	41 57                	push   %r15
  401a7e:	41 56                	push   %r14
  401a80:	41 55                	push   %r13
  401a82:	41 54                	push   %r12
  401a84:	53                   	push   %rbx
  401a85:	41 53                	push   %r11
  401a87:	41 52                	push   %r10
  401a89:	44 8b 8d a4 fe ff ff 	mov    -0x15c(%rbp),%r9d
  401a90:	44 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%r8d
  401a97:	48 89 c7             	mov    %rax,%rdi
  401a9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9f:	e8 7c 0e 00 00       	call   402920 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 9f 40 00 00       	call   405b60 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 4a 0c 00 00       	call   402720 <__stack_chk_fail>
  401ad6:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  401ada:	5b                   	pop    %rbx
  401adb:	41 5c                	pop    %r12
  401add:	41 5d                	pop    %r13
  401adf:	41 5e                	pop    %r14
  401ae1:	41 5f                	pop    %r15
  401ae3:	5d                   	pop    %rbp
  401ae4:	c3                   	ret

0000000000401ae5 <to_string_i16>:
void to_string_i16(char* dest, short src[]){
  401ae5:	f3 0f 1e fa          	endbr64
  401ae9:	55                   	push   %rbp
  401aea:	48 89 e5             	mov    %rsp,%rbp
  401aed:	53                   	push   %rbx
  401aee:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
  401af5:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
  401afc:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  401b03:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b0a:	00 00 
  401b0c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401b10:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b12:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b19:	48 83 c0 0e          	add    $0xe,%rax
  401b1d:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b20:	44 0f bf d0          	movswl %ax,%r10d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b24:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b2b:	48 83 c0 0c          	add    $0xc,%rax
  401b2f:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b32:	44 0f bf c8          	movswl %ax,%r9d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b36:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b3d:	48 83 c0 0a          	add    $0xa,%rax
  401b41:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b44:	44 0f bf c0          	movswl %ax,%r8d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b48:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b4f:	48 83 c0 08          	add    $0x8,%rax
  401b53:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b56:	0f bf f8             	movswl %ax,%edi
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b59:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b60:	48 83 c0 06          	add    $0x6,%rax
  401b64:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b67:	0f bf d8             	movswl %ax,%ebx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b6a:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b71:	48 83 c0 04          	add    $0x4,%rax
  401b75:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b78:	44 0f bf d8          	movswl %ax,%r11d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b7c:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b83:	48 83 c0 02          	add    $0x2,%rax
  401b87:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b8a:	0f bf c8             	movswl %ax,%ecx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401b8d:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401b94:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401b97:	0f bf d0             	movswl %ax,%edx
  401b9a:	48 8d 35 d7 64 00 00 	lea    0x64d7(%rip),%rsi        # 408078 <_fini+0xfd4>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 5e 0d 00 00       	call   402920 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 81 3f 00 00       	call   405b60 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 2c 0b 00 00       	call   402720 <__stack_chk_fail>
  401bf4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401bf8:	c9                   	leave
  401bf9:	c3                   	ret

0000000000401bfa <to_string_i32>:
void to_string_i32(char* dest,  int src[]){
  401bfa:	f3 0f 1e fa          	endbr64
  401bfe:	55                   	push   %rbp
  401bff:	48 89 e5             	mov    %rsp,%rbp
  401c02:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401c09:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  401c10:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  401c17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c1e:	00 00 
  401c20:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401c24:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%d, %d, %d, %d)",
          src[0], src[1], src[2], src[3]);
  401c26:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401c2d:	48 83 c0 0c          	add    $0xc,%rax
    sprintf(res, "(%d, %d, %d, %d)",
  401c31:	44 8b 00             	mov    (%rax),%r8d
          src[0], src[1], src[2], src[3]);
  401c34:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401c3b:	48 83 c0 08          	add    $0x8,%rax
    sprintf(res, "(%d, %d, %d, %d)",
  401c3f:	8b 38                	mov    (%rax),%edi
          src[0], src[1], src[2], src[3]);
  401c41:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401c48:	48 83 c0 04          	add    $0x4,%rax
    sprintf(res, "(%d, %d, %d, %d)",
  401c4c:	8b 08                	mov    (%rax),%ecx
  401c4e:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401c55:	8b 10                	mov    (%rax),%edx
  401c57:	48 8d 35 3b 64 00 00 	lea    0x643b(%rip),%rsi        # 408099 <_fini+0xff5>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 a8 0c 00 00       	call   402920 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 cf 3e 00 00       	call   405b60 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 7a 0a 00 00       	call   402720 <__stack_chk_fail>
  401ca6:	c9                   	leave
  401ca7:	c3                   	ret

0000000000401ca8 <to_string_i64>:
void to_string_i64(char* dest,  long src[]){
  401ca8:	f3 0f 1e fa          	endbr64
  401cac:	55                   	push   %rbp
  401cad:	48 89 e5             	mov    %rsp,%rbp
  401cb0:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401cb7:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  401cbe:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  401cc5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ccc:	00 00 
  401cce:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401cd2:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%ld, %ld)",
          src[0], src[1]);
  401cd4:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401cdb:	48 83 c0 08          	add    $0x8,%rax
    sprintf(res, "(%ld, %ld)",
  401cdf:	48 8b 08             	mov    (%rax),%rcx
  401ce2:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401ce9:	48 8b 10             	mov    (%rax),%rdx
  401cec:	48 8d 35 b7 63 00 00 	lea    0x63b7(%rip),%rsi        # 4080aa <_fini+0x1006>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 19 0c 00 00       	call   402920 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 40 3e 00 00       	call   405b60 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 eb 09 00 00       	call   402720 <__stack_chk_fail>
  401d35:	c9                   	leave
  401d36:	c3                   	ret

0000000000401d37 <to_string_u8>:
void to_string_u8(char* dest, unsigned char src[]){
  401d37:	f3 0f 1e fa          	endbr64
  401d3b:	55                   	push   %rbp
  401d3c:	48 89 e5             	mov    %rsp,%rbp
  401d3f:	41 57                	push   %r15
  401d41:	41 56                	push   %r14
  401d43:	41 55                	push   %r13
  401d45:	41 54                	push   %r12
  401d47:	53                   	push   %rbx
  401d48:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
  401d4f:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
  401d56:	48 89 b5 b0 fe ff ff 	mov    %rsi,-0x150(%rbp)
  401d5d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d64:	00 00 
  401d66:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401d6a:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401d6c:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401d73:	48 83 c0 0f          	add    $0xf,%rax
  401d77:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401d7a:	0f b6 f8             	movzbl %al,%edi
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401d7d:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401d84:	48 83 c0 0e          	add    $0xe,%rax
  401d88:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401d8b:	44 0f b6 c0          	movzbl %al,%r8d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401d8f:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401d96:	48 83 c0 0d          	add    $0xd,%rax
  401d9a:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401d9d:	44 0f b6 c8          	movzbl %al,%r9d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401da1:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401da8:	48 83 c0 0c          	add    $0xc,%rax
  401dac:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401daf:	0f b6 c0             	movzbl %al,%eax
  401db2:	89 85 ac fe ff ff    	mov    %eax,-0x154(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401db8:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401dbf:	48 83 c0 0b          	add    $0xb,%rax
  401dc3:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401dc6:	0f b6 d8             	movzbl %al,%ebx
  401dc9:	89 9d a8 fe ff ff    	mov    %ebx,-0x158(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401dcf:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401dd6:	48 83 c0 0a          	add    $0xa,%rax
  401dda:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401ddd:	44 0f b6 f8          	movzbl %al,%r15d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401de1:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401de8:	48 83 c0 09          	add    $0x9,%rax
  401dec:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401def:	44 0f b6 f0          	movzbl %al,%r14d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401df3:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401dfa:	48 83 c0 08          	add    $0x8,%rax
  401dfe:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e01:	44 0f b6 e8          	movzbl %al,%r13d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e05:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e0c:	48 83 c0 07          	add    $0x7,%rax
  401e10:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e13:	44 0f b6 e0          	movzbl %al,%r12d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e17:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e1e:	48 83 c0 06          	add    $0x6,%rax
  401e22:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e25:	0f b6 d8             	movzbl %al,%ebx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e28:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e2f:	48 83 c0 05          	add    $0x5,%rax
  401e33:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e36:	44 0f b6 d8          	movzbl %al,%r11d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e3a:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e41:	48 83 c0 04          	add    $0x4,%rax
  401e45:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e48:	44 0f b6 d0          	movzbl %al,%r10d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e4c:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e53:	48 83 c0 03          	add    $0x3,%rax
  401e57:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e5a:	0f b6 c8             	movzbl %al,%ecx
  401e5d:	89 8d a4 fe ff ff    	mov    %ecx,-0x15c(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e63:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e6a:	48 83 c0 02          	add    $0x2,%rax
  401e6e:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e71:	0f b6 d0             	movzbl %al,%edx
  401e74:	89 95 a0 fe ff ff    	mov    %edx,-0x160(%rbp)
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e7a:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e81:	48 83 c0 01          	add    $0x1,%rax
  401e85:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e88:	0f b6 c8             	movzbl %al,%ecx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7], src[8], src[9], src[10], src[11], src[12], src[13], src[14], src[15]);
  401e8b:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e92:	0f b6 00             	movzbl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)",
  401e95:	0f b6 d0             	movzbl %al,%edx
  401e98:	48 8d 35 91 61 00 00 	lea    0x6191(%rip),%rsi        # 408030 <_fini+0xf8c>
  401e9f:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  401ea6:	57                   	push   %rdi
  401ea7:	41 50                	push   %r8
  401ea9:	41 51                	push   %r9
  401eab:	8b bd ac fe ff ff    	mov    -0x154(%rbp),%edi
  401eb1:	57                   	push   %rdi
  401eb2:	8b bd a8 fe ff ff    	mov    -0x158(%rbp),%edi
  401eb8:	57                   	push   %rdi
  401eb9:	41 57                	push   %r15
  401ebb:	41 56                	push   %r14
  401ebd:	41 55                	push   %r13
  401ebf:	41 54                	push   %r12
  401ec1:	53                   	push   %rbx
  401ec2:	41 53                	push   %r11
  401ec4:	41 52                	push   %r10
  401ec6:	44 8b 8d a4 fe ff ff 	mov    -0x15c(%rbp),%r9d
  401ecd:	44 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%r8d
  401ed4:	48 89 c7             	mov    %rax,%rdi
  401ed7:	b8 00 00 00 00       	mov    $0x0,%eax
  401edc:	e8 3f 0a 00 00       	call   402920 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 62 3c 00 00       	call   405b60 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 0d 08 00 00       	call   402720 <__stack_chk_fail>
  401f13:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  401f17:	5b                   	pop    %rbx
  401f18:	41 5c                	pop    %r12
  401f1a:	41 5d                	pop    %r13
  401f1c:	41 5e                	pop    %r14
  401f1e:	41 5f                	pop    %r15
  401f20:	5d                   	pop    %rbp
  401f21:	c3                   	ret

0000000000401f22 <to_string_u16>:
void to_string_u16(char* dest, unsigned short src[]){
  401f22:	f3 0f 1e fa          	endbr64
  401f26:	55                   	push   %rbp
  401f27:	48 89 e5             	mov    %rsp,%rbp
  401f2a:	53                   	push   %rbx
  401f2b:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
  401f32:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
  401f39:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  401f40:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f47:	00 00 
  401f49:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401f4d:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401f4f:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401f56:	48 83 c0 0e          	add    $0xe,%rax
  401f5a:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401f5d:	44 0f b7 d0          	movzwl %ax,%r10d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401f61:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401f68:	48 83 c0 0c          	add    $0xc,%rax
  401f6c:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401f6f:	44 0f b7 c8          	movzwl %ax,%r9d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401f73:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401f7a:	48 83 c0 0a          	add    $0xa,%rax
  401f7e:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401f81:	44 0f b7 c0          	movzwl %ax,%r8d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401f85:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401f8c:	48 83 c0 08          	add    $0x8,%rax
  401f90:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401f93:	0f b7 f8             	movzwl %ax,%edi
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401f96:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401f9d:	48 83 c0 06          	add    $0x6,%rax
  401fa1:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401fa4:	0f b7 d8             	movzwl %ax,%ebx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401fa7:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401fae:	48 83 c0 04          	add    $0x4,%rax
  401fb2:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401fb5:	44 0f b7 d8          	movzwl %ax,%r11d
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401fb9:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401fc0:	48 83 c0 02          	add    $0x2,%rax
  401fc4:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401fc7:	0f b7 c8             	movzwl %ax,%ecx
          src[0], src[1], src[2], src[3], src[4], src[5], src[6], src[7]);
  401fca:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  401fd1:	0f b7 00             	movzwl (%rax),%eax
    sprintf(res, "(%d, %d, %d, %d, %d, %d, %d, %d)",
  401fd4:	0f b7 d0             	movzwl %ax,%edx
  401fd7:	48 8d 35 9a 60 00 00 	lea    0x609a(%rip),%rsi        # 408078 <_fini+0xfd4>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 21 09 00 00       	call   402920 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 44 3b 00 00       	call   405b60 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 ef 06 00 00       	call   402720 <__stack_chk_fail>
  402031:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402035:	c9                   	leave
  402036:	c3                   	ret

0000000000402037 <to_string_u32>:
void to_string_u32(char* dest,  unsigned int src[]){
  402037:	f3 0f 1e fa          	endbr64
  40203b:	55                   	push   %rbp
  40203c:	48 89 e5             	mov    %rsp,%rbp
  40203f:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  402046:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  40204d:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  402054:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40205b:	00 00 
  40205d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402061:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%u, %u, %u, %u)",
          src[0], src[1], src[2], src[3]);
  402063:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  40206a:	48 83 c0 0c          	add    $0xc,%rax
    sprintf(res, "(%u, %u, %u, %u)",
  40206e:	44 8b 00             	mov    (%rax),%r8d
          src[0], src[1], src[2], src[3]);
  402071:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402078:	48 83 c0 08          	add    $0x8,%rax
    sprintf(res, "(%u, %u, %u, %u)",
  40207c:	8b 38                	mov    (%rax),%edi
          src[0], src[1], src[2], src[3]);
  40207e:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402085:	48 83 c0 04          	add    $0x4,%rax
    sprintf(res, "(%u, %u, %u, %u)",
  402089:	8b 08                	mov    (%rax),%ecx
  40208b:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402092:	8b 10                	mov    (%rax),%edx
  402094:	48 8d 35 1a 60 00 00 	lea    0x601a(%rip),%rsi        # 4080b5 <_fini+0x1011>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 6b 08 00 00       	call   402920 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 92 3a 00 00       	call   405b60 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 3d 06 00 00       	call   402720 <__stack_chk_fail>
  4020e3:	c9                   	leave
  4020e4:	c3                   	ret

00000000004020e5 <to_string_u64>:
void to_string_u64(char* dest,  unsigned long src[]){
  4020e5:	f3 0f 1e fa          	endbr64
  4020e9:	55                   	push   %rbp
  4020ea:	48 89 e5             	mov    %rsp,%rbp
  4020ed:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  4020f4:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  4020fb:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  402102:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402109:	00 00 
  40210b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40210f:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%lu, %lu)",
          src[0], src[1]);
  402111:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402118:	48 83 c0 08          	add    $0x8,%rax
    sprintf(res, "(%lu, %lu)",
  40211c:	48 8b 08             	mov    (%rax),%rcx
  40211f:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402126:	48 8b 10             	mov    (%rax),%rdx
  402129:	48 8d 35 96 5f 00 00 	lea    0x5f96(%rip),%rsi        # 4080c6 <_fini+0x1022>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 dc 07 00 00       	call   402920 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 03 3a 00 00       	call   405b60 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 ae 05 00 00       	call   402720 <__stack_chk_fail>
  402172:	c9                   	leave
  402173:	c3                   	ret

0000000000402174 <main>:
#define TO_STRING_IN CONCAT(to_string_, STR_IN_TYPE)
#define TO_STRING_OUT CONCAT(to_string_, STR_OUT_TYPE)

#include "./../lib/sse_service.h"

int main() {
  402174:	f3 0f 1e fa          	endbr64
  402178:	55                   	push   %rbp
  402179:	48 89 e5             	mov    %rsp,%rbp
  40217c:	48 81 ec b0 02 00 00 	sub    $0x2b0,%rsp
  402183:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40218a:	00 00 
  40218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402190:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402192:	48 b8 aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaaa,%rax
  402199:	aa aa aa 
  40219c:	48 89 85 d0 fd ff ff 	mov    %rax,-0x230(%rbp)
  4021a3:	48 89 85 d8 fd ff ff 	mov    %rax,-0x228(%rbp)
    C_IN_TYPE in2[IN_LEN] = SRC2;
  4021aa:	48 b8 55 55 55 55 55 	movabs $0x5555555555555555,%rax
  4021b1:	55 55 55 
  4021b4:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  4021bb:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
    int con1 = CON1;
  4021c2:	c7 85 60 fd ff ff 00 	movl   $0x0,-0x2a0(%rbp)
  4021c9:	00 00 00 
    int con2 = CON2;
  4021cc:	c7 85 64 fd ff ff 01 	movl   $0x1,-0x29c(%rbp)
  4021d3:	00 00 00 

    SSE_TYPE v1;
    INSERT(&v1, in1);
  4021d6:	48 8d 95 d0 fd ff ff 	lea    -0x230(%rbp),%rdx
  4021dd:	48 8d 85 70 fd ff ff 	lea    -0x290(%rbp),%rax
  4021e4:	48 89 d6             	mov    %rdx,%rsi
  4021e7:	48 89 c7             	mov    %rax,%rdi
  4021ea:	e8 23 f4 ff ff       	call   401612 <insert_i64>
    SSE_TYPE v2;
    INSERT(&v2, in2);
  4021ef:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
  4021f6:	48 8d 85 80 fd ff ff 	lea    -0x280(%rbp),%rax
  4021fd:	48 89 d6             	mov    %rdx,%rsi
  402200:	48 89 c7             	mov    %rax,%rdi
  402203:	e8 0a f4 ff ff       	call   401612 <insert_i64>

    int res1 = _mm_testc_si128(v1, v2);
  402208:	66 0f 6f 85 80 fd ff 	movdqa -0x280(%rbp),%xmm0
  40220f:	ff 
  402210:	66 0f 6f 8d 70 fd ff 	movdqa -0x290(%rbp),%xmm1
  402217:	ff 
  402218:	0f 29 8d b0 fd ff ff 	movaps %xmm1,-0x250(%rbp)
  40221f:	0f 29 85 c0 fd ff ff 	movaps %xmm0,-0x240(%rbp)
/* Packed integer 128-bit bitwise comparison. Return 1 if
   (__V & ~__M) == 0.  */
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_testc_si128 (__m128i __M, __m128i __V)
{
  return __builtin_ia32_ptestc128 ((__v2di)__M, (__v2di)__V);
  402226:	b8 00 00 00 00       	mov    $0x0,%eax
  40222b:	66 0f 6f 85 b0 fd ff 	movdqa -0x250(%rbp),%xmm0
  402232:	ff 
  402233:	66 0f 38 17 85 c0 fd 	ptest  -0x240(%rbp),%xmm0
  40223a:	ff ff 
  40223c:	0f 92 c0             	setb   %al
  40223f:	89 85 68 fd ff ff    	mov    %eax,-0x298(%rbp)
    int res2 = _mm_testz_si128(v1, v2);
  402245:	66 0f 6f 85 80 fd ff 	movdqa -0x280(%rbp),%xmm0
  40224c:	ff 
  40224d:	66 0f 6f 8d 70 fd ff 	movdqa -0x290(%rbp),%xmm1
  402254:	ff 
  402255:	0f 29 8d 90 fd ff ff 	movaps %xmm1,-0x270(%rbp)
  40225c:	0f 29 85 a0 fd ff ff 	movaps %xmm0,-0x260(%rbp)
  return __builtin_ia32_ptestz128 ((__v2di)__M, (__v2di)__V);
  402263:	b8 00 00 00 00       	mov    $0x0,%eax
  402268:	66 0f 6f 85 90 fd ff 	movdqa -0x270(%rbp),%xmm0
  40226f:	ff 
  402270:	66 0f 38 17 85 a0 fd 	ptest  -0x260(%rbp),%xmm0
  402277:	ff ff 
  402279:	0f 94 c0             	sete   %al
  40227c:	89 85 6c fd ff ff    	mov    %eax,-0x294(%rbp)

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  402282:	48 8d 95 d0 fd ff ff 	lea    -0x230(%rbp),%rdx
  402289:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  402290:	48 89 d6             	mov    %rdx,%rsi
  402293:	48 89 c7             	mov    %rax,%rdi
  402296:	e8 4a fe ff ff       	call   4020e5 <to_string_u64>
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  40229b:	48 8d 95 e0 fd ff ff 	lea    -0x220(%rbp),%rdx
  4022a2:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4022a9:	48 89 d6             	mov    %rdx,%rsi
  4022ac:	48 89 c7             	mov    %rax,%rdi
  4022af:	e8 31 fe ff ff       	call   4020e5 <to_string_u64>

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n |\n\\/\nc:%d z:%d\n",in1_s, in2_s, res1, res2);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
  4022b4:	c7 85 5c fd ff ff 00 	movl   $0x0,-0x2a4(%rbp)
  4022bb:	00 00 00 
  4022be:	eb 75                	jmp    402335 <main+0x1c1>
        if(res1 != con1){
  4022c0:	8b 85 68 fd ff ff    	mov    -0x298(%rbp),%eax
  4022c6:	3b 85 60 fd ff ff    	cmp    -0x2a0(%rbp),%eax
  4022cc:	74 29                	je     4022f7 <main+0x183>
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! res.c: %d != con.c: %d\33[0m\n",res1, con1);
  4022ce:	8b 95 60 fd ff ff    	mov    -0x2a0(%rbp),%edx
  4022d4:	8b 85 68 fd ff ff    	mov    -0x298(%rbp),%eax
  4022da:	48 8d 0d f7 5d 00 00 	lea    0x5df7(%rip),%rcx        # 4080d8 <_fini+0x1034>
  4022e1:	89 c6                	mov    %eax,%esi
  4022e3:	48 89 cf             	mov    %rcx,%rdi
  4022e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022eb:	e8 90 04 00 00       	call   402780 <printf>
            return 1;
  4022f0:	b8 01 00 00 00       	mov    $0x1,%eax
  4022f5:	eb 5b                	jmp    402352 <main+0x1de>
        }
        if(res2 != con2){
  4022f7:	8b 85 6c fd ff ff    	mov    -0x294(%rbp),%eax
  4022fd:	3b 85 64 fd ff ff    	cmp    -0x29c(%rbp),%eax
  402303:	74 29                	je     40232e <main+0x1ba>
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! res.z: %d != con.z: %d\33[0m\n",res2, con2);
  402305:	8b 95 64 fd ff ff    	mov    -0x29c(%rbp),%edx
  40230b:	8b 85 6c fd ff ff    	mov    -0x294(%rbp),%eax
  402311:	48 8d 0d f8 5d 00 00 	lea    0x5df8(%rip),%rcx        # 408110 <_fini+0x106c>
  402318:	89 c6                	mov    %eax,%esi
  40231a:	48 89 cf             	mov    %rcx,%rdi
  40231d:	b8 00 00 00 00       	mov    $0x0,%eax
  402322:	e8 59 04 00 00       	call   402780 <printf>
            return 1;
  402327:	b8 01 00 00 00       	mov    $0x1,%eax
  40232c:	eb 24                	jmp    402352 <main+0x1de>
    for( int i = 0; i<OUT_LEN;i++){
  40232e:	83 85 5c fd ff ff 01 	addl   $0x1,-0x2a4(%rbp)
  402335:	83 bd 5c fd ff ff 01 	cmpl   $0x1,-0x2a4(%rbp)
  40233c:	7e 82                	jle    4022c0 <main+0x14c>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
  40233e:	48 8d 05 03 5e 00 00 	lea    0x5e03(%rip),%rax        # 408148 <_fini+0x10a4>
  402345:	48 89 c7             	mov    %rax,%rdi
  402348:	e8 03 05 00 00       	call   402850 <puts>
#endif

    return 0;
  40234d:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402352:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402356:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40235d:	00 00 
  40235f:	74 05                	je     402366 <main+0x1f2>
  402361:	e8 ba 03 00 00       	call   402720 <__stack_chk_fail>
  402366:	c9                   	leave
  402367:	c3                   	ret
  402368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40236f:	00 

0000000000402370 <dummy>:
  402370:	f3 0f 1e fa          	endbr64
  402374:	c3                   	ret
  402375:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40237c:	00 00 00 
  40237f:	90                   	nop

0000000000402380 <dummy1>:
  402380:	f3 0f 1e fa          	endbr64
  402384:	c3                   	ret
  402385:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40238c:	00 00 00 
  40238f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402396:	00 00 00 
  402399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004023a0 <__init_libc>:
  4023a0:	f3 0f 1e fa          	endbr64
  4023a4:	55                   	push   %rbp
  4023a5:	48 89 fa             	mov    %rdi,%rdx
  4023a8:	31 c0                	xor    %eax,%eax
  4023aa:	b9 26 00 00 00       	mov    $0x26,%ecx
  4023af:	48 89 e5             	mov    %rsp,%rbp
  4023b2:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  4023b9:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4023c0:	f3 48 ab             	rep stos %rax,(%rdi)
  4023c3:	48 c7 c0 e8 b5 40 00 	mov    $0x40b5e8,%rax
  4023ca:	48 89 10             	mov    %rdx,(%rax)
  4023cd:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  4023d1:	0f 84 c9 01 00 00    	je     4025a0 <__init_libc+0x200>
  4023d7:	31 c0                	xor    %eax,%eax
  4023d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023e0:	48 89 c1             	mov    %rax,%rcx
  4023e3:	48 83 c0 01          	add    $0x1,%rax
  4023e7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4023ec:	75 f2                	jne    4023e0 <__init_libc+0x40>
  4023ee:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4023f5:	00 
  4023f6:	48 01 d0             	add    %rdx,%rax
  4023f9:	48 89 05 68 8d 00 00 	mov    %rax,0x8d68(%rip)        # 40b168 <__libc+0x8>
  402400:	48 8b 10             	mov    (%rax),%rdx
  402403:	48 83 c0 08          	add    $0x8,%rax
  402407:	48 85 d2             	test   %rdx,%rdx
  40240a:	0f 84 a0 01 00 00    	je     4025b0 <__init_libc+0x210>
  402410:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402415:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40241c:	00 00 00 00 
  402420:	48 83 fa 25          	cmp    $0x25,%rdx
  402424:	77 0b                	ja     402431 <__init_libc+0x91>
  402426:	48 8b 08             	mov    (%rax),%rcx
  402429:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  402430:	ff 
  402431:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402435:	48 83 c0 10          	add    $0x10,%rax
  402439:	48 85 d2             	test   %rdx,%rdx
  40243c:	75 e2                	jne    402420 <__init_libc+0x80>
  40243e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402445:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402449:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402450:	48 89 0d f1 8c 00 00 	mov    %rcx,0x8cf1(%rip)        # 40b148 <__hwcap>
  402457:	48 85 c0             	test   %rax,%rax
  40245a:	74 07                	je     402463 <__init_libc+0xc3>
  40245c:	48 89 05 cd 8c 00 00 	mov    %rax,0x8ccd(%rip)        # 40b130 <__sysinfo>
  402463:	48 89 15 26 8d 00 00 	mov    %rdx,0x8d26(%rip)        # 40b190 <__libc+0x30>
  40246a:	48 85 f6             	test   %rsi,%rsi
  40246d:	0f 84 15 01 00 00    	je     402588 <__init_libc+0x1e8>
  402473:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  40247a:	48 c7 c1 40 b1 40 00 	mov    $0x40b140,%rcx
  402481:	48 89 30             	mov    %rsi,(%rax)
  402484:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402488:	48 89 31             	mov    %rsi,(%rcx)
  40248b:	0f b6 16             	movzbl (%rsi),%edx
  40248e:	84 d2                	test   %dl,%dl
  402490:	74 21                	je     4024b3 <__init_libc+0x113>
  402492:	0f 1f 00             	nopl   (%rax)
  402495:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40249c:	00 00 00 00 
  4024a0:	80 fa 2f             	cmp    $0x2f,%dl
  4024a3:	75 03                	jne    4024a8 <__init_libc+0x108>
  4024a5:	48 89 01             	mov    %rax,(%rcx)
  4024a8:	0f b6 10             	movzbl (%rax),%edx
  4024ab:	48 83 c0 01          	add    $0x1,%rax
  4024af:	84 d2                	test   %dl,%dl
  4024b1:	75 ed                	jne    4024a0 <__init_libc+0x100>
  4024b3:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4024ba:	e8 11 39 00 00       	call   405dd0 <__init_tls>
  4024bf:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4024c3:	e8 e8 01 00 00       	call   4026b0 <__init_ssp>
  4024c8:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  4024cf:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  4024d6:	0f 84 84 00 00 00    	je     402560 <__init_libc+0x1c0>
  4024dc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4024e0:	b8 07 00 00 00       	mov    $0x7,%eax
  4024e5:	be 03 00 00 00       	mov    $0x3,%esi
  4024ea:	31 d2                	xor    %edx,%edx
  4024ec:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4024f3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4024fa:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  402501:	00 00 00 00 
  402505:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  40250c:	00 00 00 
  40250f:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  402516:	00 00 00 
  402519:	0f 05                	syscall
  40251b:	85 c0                	test   %eax,%eax
  40251d:	79 01                	jns    402520 <__init_libc+0x180>
  40251f:	f4                   	hlt
  402520:	48 89 fa             	mov    %rdi,%rdx
  402523:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  40252a:	be 02 80 00 00       	mov    $0x8002,%esi
  40252f:	48 8d 3d 38 5c 00 00 	lea    0x5c38(%rip),%rdi        # 40816e <_fini+0x10ca>
  402536:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  40253a:	74 0d                	je     402549 <__init_libc+0x1a9>
  40253c:	b8 02 00 00 00       	mov    $0x2,%eax
  402541:	0f 05                	syscall
  402543:	48 85 c0             	test   %rax,%rax
  402546:	79 01                	jns    402549 <__init_libc+0x1a9>
  402548:	f4                   	hlt
  402549:	48 83 c2 08          	add    $0x8,%rdx
  40254d:	4c 39 c2             	cmp    %r8,%rdx
  402550:	75 e4                	jne    402536 <__init_libc+0x196>
  402552:	c6 05 09 8c 00 00 01 	movb   $0x1,0x8c09(%rip)        # 40b162 <__libc+0x2>
  402559:	c9                   	leave
  40255a:	c3                   	ret
  40255b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402560:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402567:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40256e:	0f 85 68 ff ff ff    	jne    4024dc <__init_libc+0x13c>
  402574:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402579:	0f 85 5d ff ff ff    	jne    4024dc <__init_libc+0x13c>
  40257f:	c9                   	leave
  402580:	c3                   	ret
  402581:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402588:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40258c:	48 85 c0             	test   %rax,%rax
  40258f:	74 2f                	je     4025c0 <__init_libc+0x220>
  402591:	48 89 c6             	mov    %rax,%rsi
  402594:	e9 da fe ff ff       	jmp    402473 <__init_libc+0xd3>
  402599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025a0:	b8 08 00 00 00       	mov    $0x8,%eax
  4025a5:	e9 4c fe ff ff       	jmp    4023f6 <__init_libc+0x56>
  4025aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4025b0:	48 c7 05 8d 8b 00 00 	movq   $0x0,0x8b8d(%rip)        # 40b148 <__hwcap>
  4025b7:	00 00 00 00 
  4025bb:	e9 a3 fe ff ff       	jmp    402463 <__init_libc+0xc3>
  4025c0:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  4025c7:	48 8d 3d df 5b 00 00 	lea    0x5bdf(%rip),%rdi        # 4081ad <_fini+0x1109>
  4025ce:	48 89 38             	mov    %rdi,(%rax)
  4025d1:	48 c7 c0 40 b1 40 00 	mov    $0x40b140,%rax
  4025d8:	48 89 38             	mov    %rdi,(%rax)
  4025db:	e9 d3 fe ff ff       	jmp    4024b3 <__init_libc+0x113>

00000000004025e0 <__libc_start_init>:
  4025e0:	f3 0f 1e fa          	endbr64
  4025e4:	55                   	push   %rbp
  4025e5:	48 89 e5             	mov    %rsp,%rbp
  4025e8:	41 54                	push   %r12
  4025ea:	53                   	push   %rbx
  4025eb:	e8 10 ea ff ff       	call   401000 <_init>
  4025f0:	48 c7 c3 c0 af 40 00 	mov    $0x40afc0,%rbx
  4025f7:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  4025fe:	4c 39 e3             	cmp    %r12,%rbx
  402601:	73 18                	jae    40261b <__libc_start_init+0x3b>
  402603:	66 90                	xchg   %ax,%ax
  402605:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40260c:	00 00 00 00 
  402610:	ff 13                	call   *(%rbx)
  402612:	48 83 c3 08          	add    $0x8,%rbx
  402616:	4c 39 e3             	cmp    %r12,%rbx
  402619:	72 f5                	jb     402610 <__libc_start_init+0x30>
  40261b:	5b                   	pop    %rbx
  40261c:	41 5c                	pop    %r12
  40261e:	5d                   	pop    %rbp
  40261f:	c3                   	ret

0000000000402620 <libc_start_main_stage2>:
  402620:	f3 0f 1e fa          	endbr64
  402624:	55                   	push   %rbp
  402625:	48 63 c6             	movslq %esi,%rax
  402628:	48 89 e5             	mov    %rsp,%rbp
  40262b:	41 56                	push   %r14
  40262d:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  402632:	41 55                	push   %r13
  402634:	49 89 fd             	mov    %rdi,%r13
  402637:	41 54                	push   %r12
  402639:	49 89 d4             	mov    %rdx,%r12
  40263c:	53                   	push   %rbx
  40263d:	48 89 c3             	mov    %rax,%rbx
  402640:	e8 9b ff ff ff       	call   4025e0 <__libc_start_init>
  402645:	89 df                	mov    %ebx,%edi
  402647:	4c 89 f2             	mov    %r14,%rdx
  40264a:	4c 89 e6             	mov    %r12,%rsi
  40264d:	41 ff d5             	call   *%r13
  402650:	89 c7                	mov    %eax,%edi
  402652:	e8 e9 e9 ff ff       	call   401040 <exit>
  402657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40265e:	00 00 

0000000000402660 <__libc_start_main>:
  402660:	f3 0f 1e fa          	endbr64
  402664:	55                   	push   %rbp
  402665:	48 63 c6             	movslq %esi,%rax
  402668:	48 89 e5             	mov    %rsp,%rbp
  40266b:	41 54                	push   %r12
  40266d:	49 89 fc             	mov    %rdi,%r12
  402670:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402675:	53                   	push   %rbx
  402676:	48 89 c3             	mov    %rax,%rbx
  402679:	48 83 ec 10          	sub    $0x10,%rsp
  40267d:	48 8b 32             	mov    (%rdx),%rsi
  402680:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402684:	e8 17 fd ff ff       	call   4023a0 <__init_libc>
  402689:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 402620 <libc_start_main_stage2>
  402690:	89 de                	mov    %ebx,%esi
  402692:	4c 89 e7             	mov    %r12,%rdi
  402695:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402699:	48 83 c4 10          	add    $0x10,%rsp
  40269d:	5b                   	pop    %rbx
  40269e:	41 5c                	pop    %r12
  4026a0:	5d                   	pop    %rbp
  4026a1:	ff e0                	jmp    *%rax
  4026a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026aa:	00 00 00 
  4026ad:	0f 1f 00             	nopl   (%rax)

00000000004026b0 <__init_ssp>:
  4026b0:	f3 0f 1e fa          	endbr64
  4026b4:	55                   	push   %rbp
  4026b5:	48 89 e5             	mov    %rsp,%rbp
  4026b8:	48 83 ec 10          	sub    $0x10,%rsp
  4026bc:	48 85 ff             	test   %rdi,%rdi
  4026bf:	74 3f                	je     402700 <__init_ssp+0x50>
  4026c1:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  4026c8:	48 89 fe             	mov    %rdi,%rsi
  4026cb:	ba 08 00 00 00       	mov    $0x8,%edx
  4026d0:	48 89 cf             	mov    %rcx,%rdi
  4026d3:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  4026d7:	e8 d1 34 00 00       	call   405bad <memcpy>
  4026dc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4026e0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4026e4:	48 8b 11             	mov    (%rcx),%rdx
  4026e7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4026ee:	00 00 
  4026f0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4026f4:	c9                   	leave
  4026f5:	c3                   	ret
  4026f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026fd:	00 00 00 
  402700:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  402707:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  40270e:	48 89 01             	mov    %rax,(%rcx)
  402711:	eb cd                	jmp    4026e0 <__init_ssp+0x30>
  402713:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40271a:	00 00 00 
  40271d:	0f 1f 00             	nopl   (%rax)

0000000000402720 <__stack_chk_fail>:
  402720:	f3 0f 1e fa          	endbr64
  402724:	f4                   	hlt
  402725:	c3                   	ret
  402726:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40272d:	00 00 00 

0000000000402730 <__funcs_on_exit>:
  402730:	f3 0f 1e fa          	endbr64
  402734:	c3                   	ret
  402735:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40273c:	00 00 00 
  40273f:	90                   	nop

0000000000402740 <__libc_exit_fini>:
  402740:	f3 0f 1e fa          	endbr64
  402744:	55                   	push   %rbp
  402745:	48 89 e5             	mov    %rsp,%rbp
  402748:	41 54                	push   %r12
  40274a:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  402751:	53                   	push   %rbx
  402752:	48 c7 c3 d0 af 40 00 	mov    $0x40afd0,%rbx
  402759:	49 39 dc             	cmp    %rbx,%r12
  40275c:	73 0f                	jae    40276d <__libc_exit_fini+0x2d>
  40275e:	66 90                	xchg   %ax,%ax
  402760:	48 83 eb 08          	sub    $0x8,%rbx
  402764:	31 c0                	xor    %eax,%eax
  402766:	ff 13                	call   *(%rbx)
  402768:	49 39 dc             	cmp    %rbx,%r12
  40276b:	72 f3                	jb     402760 <__libc_exit_fini+0x20>
  40276d:	5b                   	pop    %rbx
  40276e:	31 c0                	xor    %eax,%eax
  402770:	41 5c                	pop    %r12
  402772:	5d                   	pop    %rbp
  402773:	e9 2c 49 00 00       	jmp    4070a4 <_fini>
  402778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40277f:	00 

0000000000402780 <printf>:
  402780:	f3 0f 1e fa          	endbr64
  402784:	55                   	push   %rbp
  402785:	48 89 e5             	mov    %rsp,%rbp
  402788:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40278f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402796:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40279d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  4027a4:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4027ab:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  4027b2:	84 c0                	test   %al,%al
  4027b4:	74 20                	je     4027d6 <printf+0x56>
  4027b6:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  4027ba:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  4027be:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  4027c2:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  4027c6:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  4027ca:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  4027ce:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  4027d2:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  4027d6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027dd:	00 00 
  4027df:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4027e6:	31 c0                	xor    %eax,%eax
  4027e8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4027ec:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4027f3:	48 89 fe             	mov    %rdi,%rsi
  4027f6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4027fd:	48 8d 3d 1c 88 00 00 	lea    0x881c(%rip),%rdi        # 40b020 <__stdout_FILE>
  402804:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  40280b:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  402812:	00 00 00 
  402815:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40281c:	00 00 00 
  40281f:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402826:	e8 e5 30 00 00       	call   405910 <vfprintf>
  40282b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402832:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402839:	00 00 
  40283b:	75 02                	jne    40283f <printf+0xbf>
  40283d:	c9                   	leave
  40283e:	c3                   	ret
  40283f:	e8 dc fe ff ff       	call   402720 <__stack_chk_fail>
  402844:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40284b:	00 00 00 
  40284e:	66 90                	xchg   %ax,%ax

0000000000402850 <puts>:
  402850:	f3 0f 1e fa          	endbr64
  402854:	55                   	push   %rbp
  402855:	48 89 e5             	mov    %rsp,%rbp
  402858:	53                   	push   %rbx
  402859:	48 83 ec 18          	sub    $0x18,%rsp
  40285d:	8b 05 49 88 00 00    	mov    0x8849(%rip),%eax        # 40b0ac <__stdout_FILE+0x8c>
  402863:	85 c0                	test   %eax,%eax
  402865:	79 61                	jns    4028c8 <puts+0x78>
  402867:	48 8d 35 b2 87 00 00 	lea    0x87b2(%rip),%rsi        # 40b020 <__stdout_FILE>
  40286e:	e8 cd 3c 00 00       	call   406540 <fputs>
  402873:	85 c0                	test   %eax,%eax
  402875:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40287a:	78 41                	js     4028bd <puts+0x6d>
  40287c:	31 db                	xor    %ebx,%ebx
  40287e:	83 3d 2b 88 00 00 0a 	cmpl   $0xa,0x882b(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  402885:	74 79                	je     402900 <puts+0xb0>
  402887:	48 8b 05 ba 87 00 00 	mov    0x87ba(%rip),%rax        # 40b048 <__stdout_FILE+0x28>
  40288e:	48 3b 05 ab 87 00 00 	cmp    0x87ab(%rip),%rax        # 40b040 <__stdout_FILE+0x20>
  402895:	74 69                	je     402900 <puts+0xb0>
  402897:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40289b:	48 89 15 a6 87 00 00 	mov    %rdx,0x87a6(%rip)        # 40b048 <__stdout_FILE+0x28>
  4028a2:	c6 00 0a             	movb   $0xa,(%rax)
  4028a5:	31 c0                	xor    %eax,%eax
  4028a7:	85 db                	test   %ebx,%ebx
  4028a9:	74 12                	je     4028bd <puts+0x6d>
  4028ab:	48 8d 3d 6e 87 00 00 	lea    0x876e(%rip),%rdi        # 40b020 <__stdout_FILE>
  4028b2:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4028b5:	e8 46 3a 00 00       	call   406300 <__unlockfile>
  4028ba:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4028bd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4028c1:	c9                   	leave
  4028c2:	c3                   	ret
  4028c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4028c8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4028cc:	48 8d 3d 4d 87 00 00 	lea    0x874d(%rip),%rdi        # 40b020 <__stdout_FILE>
  4028d3:	e8 68 39 00 00       	call   406240 <__lockfile>
  4028d8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4028dc:	48 8d 35 3d 87 00 00 	lea    0x873d(%rip),%rsi        # 40b020 <__stdout_FILE>
  4028e3:	89 c3                	mov    %eax,%ebx
  4028e5:	e8 56 3c 00 00       	call   406540 <fputs>
  4028ea:	85 c0                	test   %eax,%eax
  4028ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028f1:	78 b4                	js     4028a7 <puts+0x57>
  4028f3:	83 3d b6 87 00 00 0a 	cmpl   $0xa,0x87b6(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  4028fa:	75 8b                	jne    402887 <puts+0x37>
  4028fc:	0f 1f 40 00          	nopl   0x0(%rax)
  402900:	be 0a 00 00 00       	mov    $0xa,%esi
  402905:	48 8d 3d 14 87 00 00 	lea    0x8714(%rip),%rdi        # 40b020 <__stdout_FILE>
  40290c:	e8 3f 3a 00 00       	call   406350 <__overflow>
  402911:	c1 f8 1f             	sar    $0x1f,%eax
  402914:	eb 91                	jmp    4028a7 <puts+0x57>
  402916:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40291d:	00 00 00 

0000000000402920 <sprintf>:
  402920:	f3 0f 1e fa          	endbr64
  402924:	55                   	push   %rbp
  402925:	48 89 e5             	mov    %rsp,%rbp
  402928:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40292f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402936:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40293d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402944:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  40294b:	84 c0                	test   %al,%al
  40294d:	74 20                	je     40296f <sprintf+0x4f>
  40294f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402953:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402957:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  40295b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  40295f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402963:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402967:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  40296b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  40296f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402976:	00 00 
  402978:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40297f:	31 c0                	xor    %eax,%eax
  402981:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402985:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  40298c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402993:	00 00 00 
  402996:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40299d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4029a4:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4029ab:	00 00 00 
  4029ae:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4029b5:	e8 86 31 00 00       	call   405b40 <vsprintf>
  4029ba:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4029c1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029c8:	00 00 
  4029ca:	75 02                	jne    4029ce <sprintf+0xae>
  4029cc:	c9                   	leave
  4029cd:	c3                   	ret
  4029ce:	e8 4d fd ff ff       	call   402720 <__stack_chk_fail>
  4029d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029da:	00 00 00 
  4029dd:	0f 1f 00             	nopl   (%rax)

00000000004029e0 <pop_arg>:
  4029e0:	83 ee 09             	sub    $0x9,%esi
  4029e3:	83 fe 11             	cmp    $0x11,%esi
  4029e6:	77 50                	ja     402a38 <pop_arg+0x58>
  4029e8:	48 8d 0d c1 57 00 00 	lea    0x57c1(%rip),%rcx        # 4081b0 <_fini+0x110c>
  4029ef:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  4029f3:	48 01 c8             	add    %rcx,%rax
  4029f6:	3e ff e0             	notrack jmp *%rax
  4029f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a00:	8b 02                	mov    (%rdx),%eax
  402a02:	83 f8 2f             	cmp    $0x2f,%eax
  402a05:	77 39                	ja     402a40 <pop_arg+0x60>
  402a07:	89 c1                	mov    %eax,%ecx
  402a09:	83 c0 08             	add    $0x8,%eax
  402a0c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a10:	89 02                	mov    %eax,(%rdx)
  402a12:	48 8b 01             	mov    (%rcx),%rax
  402a15:	48 89 07             	mov    %rax,(%rdi)
  402a18:	c3                   	ret
  402a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a20:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402a24:	48 83 c0 0f          	add    $0xf,%rax
  402a28:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402a2c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402a30:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402a34:	db 28                	fldt   (%rax)
  402a36:	db 3f                	fstpt  (%rdi)
  402a38:	c3                   	ret
  402a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a4c:	48 8b 01             	mov    (%rcx),%rax
  402a4f:	48 89 07             	mov    %rax,(%rdi)
  402a52:	c3                   	ret
  402a53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a58:	8b 02                	mov    (%rdx),%eax
  402a5a:	83 f8 2f             	cmp    $0x2f,%eax
  402a5d:	0f 87 55 01 00 00    	ja     402bb8 <pop_arg+0x1d8>
  402a63:	89 c1                	mov    %eax,%ecx
  402a65:	83 c0 08             	add    $0x8,%eax
  402a68:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a6c:	89 02                	mov    %eax,(%rdx)
  402a6e:	0f b7 01             	movzwl (%rcx),%eax
  402a71:	48 89 07             	mov    %rax,(%rdi)
  402a74:	c3                   	ret
  402a75:	0f 1f 00             	nopl   (%rax)
  402a78:	8b 42 04             	mov    0x4(%rdx),%eax
  402a7b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402a80:	0f 87 1a 01 00 00    	ja     402ba0 <pop_arg+0x1c0>
  402a86:	89 c1                	mov    %eax,%ecx
  402a88:	83 c0 10             	add    $0x10,%eax
  402a8b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a8f:	89 42 04             	mov    %eax,0x4(%rdx)
  402a92:	dd 01                	fldl   (%rcx)
  402a94:	db 3f                	fstpt  (%rdi)
  402a96:	c3                   	ret
  402a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402a9e:	00 00 
  402aa0:	8b 02                	mov    (%rdx),%eax
  402aa2:	83 f8 2f             	cmp    $0x2f,%eax
  402aa5:	0f 87 dd 00 00 00    	ja     402b88 <pop_arg+0x1a8>
  402aab:	89 c1                	mov    %eax,%ecx
  402aad:	83 c0 08             	add    $0x8,%eax
  402ab0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ab4:	89 02                	mov    %eax,(%rdx)
  402ab6:	48 63 01             	movslq (%rcx),%rax
  402ab9:	48 89 07             	mov    %rax,(%rdi)
  402abc:	c3                   	ret
  402abd:	0f 1f 00             	nopl   (%rax)
  402ac0:	8b 02                	mov    (%rdx),%eax
  402ac2:	83 f8 2f             	cmp    $0x2f,%eax
  402ac5:	0f 87 a5 00 00 00    	ja     402b70 <pop_arg+0x190>
  402acb:	89 c1                	mov    %eax,%ecx
  402acd:	83 c0 08             	add    $0x8,%eax
  402ad0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ad4:	89 02                	mov    %eax,(%rdx)
  402ad6:	8b 01                	mov    (%rcx),%eax
  402ad8:	48 89 07             	mov    %rax,(%rdi)
  402adb:	c3                   	ret
  402adc:	0f 1f 40 00          	nopl   0x0(%rax)
  402ae0:	8b 02                	mov    (%rdx),%eax
  402ae2:	83 f8 2f             	cmp    $0x2f,%eax
  402ae5:	77 79                	ja     402b60 <pop_arg+0x180>
  402ae7:	89 c1                	mov    %eax,%ecx
  402ae9:	83 c0 08             	add    $0x8,%eax
  402aec:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402af0:	89 02                	mov    %eax,(%rdx)
  402af2:	0f b6 01             	movzbl (%rcx),%eax
  402af5:	48 89 07             	mov    %rax,(%rdi)
  402af8:	c3                   	ret
  402af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b00:	8b 02                	mov    (%rdx),%eax
  402b02:	83 f8 2f             	cmp    $0x2f,%eax
  402b05:	77 49                	ja     402b50 <pop_arg+0x170>
  402b07:	89 c1                	mov    %eax,%ecx
  402b09:	83 c0 08             	add    $0x8,%eax
  402b0c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b10:	89 02                	mov    %eax,(%rdx)
  402b12:	48 0f be 01          	movsbq (%rcx),%rax
  402b16:	48 89 07             	mov    %rax,(%rdi)
  402b19:	c3                   	ret
  402b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b20:	8b 02                	mov    (%rdx),%eax
  402b22:	83 f8 2f             	cmp    $0x2f,%eax
  402b25:	77 19                	ja     402b40 <pop_arg+0x160>
  402b27:	89 c1                	mov    %eax,%ecx
  402b29:	83 c0 08             	add    $0x8,%eax
  402b2c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b30:	89 02                	mov    %eax,(%rdx)
  402b32:	48 0f bf 01          	movswq (%rcx),%rax
  402b36:	48 89 07             	mov    %rax,(%rdi)
  402b39:	c3                   	ret
  402b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b4c:	eb e4                	jmp    402b32 <pop_arg+0x152>
  402b4e:	66 90                	xchg   %ax,%ax
  402b50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b5c:	eb b4                	jmp    402b12 <pop_arg+0x132>
  402b5e:	66 90                	xchg   %ax,%ax
  402b60:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b64:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b68:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b6c:	eb 84                	jmp    402af2 <pop_arg+0x112>
  402b6e:	66 90                	xchg   %ax,%ax
  402b70:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b74:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b78:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b7c:	e9 55 ff ff ff       	jmp    402ad6 <pop_arg+0xf6>
  402b81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b88:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b8c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b90:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b94:	e9 1d ff ff ff       	jmp    402ab6 <pop_arg+0xd6>
  402b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ba0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402ba4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402ba8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bac:	e9 e1 fe ff ff       	jmp    402a92 <pop_arg+0xb2>
  402bb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bb8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bbc:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402bc0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bc4:	e9 a5 fe ff ff       	jmp    402a6e <pop_arg+0x8e>
  402bc9:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402bd0:	00 00 00 
  402bd3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402bda:	00 00 00 
  402bdd:	0f 1f 00             	nopl   (%rax)

0000000000402be0 <pad.part.0>:
  402be0:	55                   	push   %rbp
  402be1:	29 ca                	sub    %ecx,%edx
  402be3:	40 0f be f6          	movsbl %sil,%esi
  402be7:	48 89 e5             	mov    %rsp,%rbp
  402bea:	41 56                	push   %r14
  402bec:	41 55                	push   %r13
  402bee:	41 54                	push   %r12
  402bf0:	4c 63 e2             	movslq %edx,%r12
  402bf3:	ba 00 01 00 00       	mov    $0x100,%edx
  402bf8:	53                   	push   %rbx
  402bf9:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402c00:	41 39 d4             	cmp    %edx,%r12d
  402c03:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402c0a:	00 00 
  402c0c:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402c10:	49 89 fd             	mov    %rdi,%r13
  402c13:	49 0f 4e d4          	cmovle %r12,%rdx
  402c17:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402c1e:	e8 bc 2f 00 00       	call   405bdf <memset>
  402c23:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402c2a:	0f 8e 88 00 00 00    	jle    402cb8 <pad.part.0+0xd8>
  402c30:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c34:	44 89 e3             	mov    %r12d,%ebx
  402c37:	eb 15                	jmp    402c4e <pad.part.0+0x6e>
  402c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c40:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402c46:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402c4c:	76 2a                	jbe    402c78 <pad.part.0+0x98>
  402c4e:	a8 20                	test   $0x20,%al
  402c50:	75 ee                	jne    402c40 <pad.part.0+0x60>
  402c52:	4c 89 ea             	mov    %r13,%rdx
  402c55:	be 00 01 00 00       	mov    $0x100,%esi
  402c5a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402c61:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402c67:	e8 24 39 00 00       	call   406590 <__fwritex>
  402c6c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c70:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402c76:	77 d6                	ja     402c4e <pad.part.0+0x6e>
  402c78:	45 0f b6 e4          	movzbl %r12b,%r12d
  402c7c:	a8 20                	test   $0x20,%al
  402c7e:	74 20                	je     402ca0 <pad.part.0+0xc0>
  402c80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402c84:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402c8b:	00 00 
  402c8d:	75 2f                	jne    402cbe <pad.part.0+0xde>
  402c8f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402c96:	5b                   	pop    %rbx
  402c97:	41 5c                	pop    %r12
  402c99:	41 5d                	pop    %r13
  402c9b:	41 5e                	pop    %r14
  402c9d:	5d                   	pop    %rbp
  402c9e:	c3                   	ret
  402c9f:	90                   	nop
  402ca0:	49 63 f4             	movslq %r12d,%rsi
  402ca3:	4c 89 ea             	mov    %r13,%rdx
  402ca6:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402cad:	e8 de 38 00 00       	call   406590 <__fwritex>
  402cb2:	eb cc                	jmp    402c80 <pad.part.0+0xa0>
  402cb4:	0f 1f 40 00          	nopl   0x0(%rax)
  402cb8:	41 8b 45 00          	mov    0x0(%r13),%eax
  402cbc:	eb be                	jmp    402c7c <pad.part.0+0x9c>
  402cbe:	e8 5d fa ff ff       	call   402720 <__stack_chk_fail>
  402cc3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cca:	00 00 00 
  402ccd:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cd4:	00 00 00 
  402cd7:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cde:	00 00 00 
  402ce1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402ce8:	00 00 00 
  402ceb:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cf2:	00 00 00 
  402cf5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cfc:	00 00 00 
  402cff:	90                   	nop

0000000000402d00 <fmt_fp>:
  402d00:	55                   	push   %rbp
  402d01:	48 89 e5             	mov    %rsp,%rbp
  402d04:	41 57                	push   %r15
  402d06:	41 56                	push   %r14
  402d08:	41 55                	push   %r13
  402d0a:	41 54                	push   %r12
  402d0c:	53                   	push   %rbx
  402d0d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402d14:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402d19:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402d20:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402d27:	41 89 d7             	mov    %edx,%r15d
  402d2a:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402d30:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402d36:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402d3d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d44:	00 00 
  402d46:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402d4a:	31 c0                	xor    %eax,%eax
  402d4c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402d53:	00 00 00 
  402d56:	ff 75 18             	push   0x18(%rbp)
  402d59:	ff 75 10             	push   0x10(%rbp)
  402d5c:	e8 ef 33 00 00       	call   406150 <__signbitl>
  402d61:	41 5d                	pop    %r13
  402d63:	41 5e                	pop    %r14
  402d65:	85 c0                	test   %eax,%eax
  402d67:	0f 84 8b 00 00 00    	je     402df8 <fmt_fp+0xf8>
  402d6d:	db 6d 10             	fldt   0x10(%rbp)
  402d70:	48 8d 05 01 54 00 00 	lea    0x5401(%rip),%rax        # 408178 <_fini+0x10d4>
  402d77:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402d7e:	00 00 00 
  402d81:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402d88:	d9 e0                	fchs
  402d8a:	db 7d 10             	fstpt  0x10(%rbp)
  402d8d:	ff 75 18             	push   0x18(%rbp)
  402d90:	ff 75 10             	push   0x10(%rbp)
  402d93:	e8 48 33 00 00       	call   4060e0 <__fpclassifyl>
  402d98:	5b                   	pop    %rbx
  402d99:	41 5c                	pop    %r12
  402d9b:	83 f8 01             	cmp    $0x1,%eax
  402d9e:	0f 8e bc 04 00 00    	jle    403260 <fmt_fp+0x560>
  402da4:	ff 75 18             	push   0x18(%rbp)
  402da7:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402dae:	ff 75 10             	push   0x10(%rbp)
  402db1:	e8 ba 33 00 00       	call   406170 <frexpl>
  402db6:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402dbd:	41 5a                	pop    %r10
  402dbf:	d8 c0                	fadd   %st(0),%st
  402dc1:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402dc8:	41 5b                	pop    %r11
  402dca:	41 83 ce 20          	or     $0x20,%r14d
  402dce:	d9 ee                	fldz
  402dd0:	d9 c9                	fxch   %st(1)
  402dd2:	db e9                	fucomi %st(1),%st
  402dd4:	dd d9                	fstp   %st(1)
  402dd6:	7a 58                	jp     402e30 <fmt_fp+0x130>
  402dd8:	75 56                	jne    402e30 <fmt_fp+0x130>
  402dda:	41 83 fe 61          	cmp    $0x61,%r14d
  402dde:	0f 84 37 06 00 00    	je     40341b <fmt_fp+0x71b>
  402de4:	45 85 ff             	test   %r15d,%r15d
  402de7:	0f 88 84 13 00 00    	js     404171 <fmt_fp+0x1471>
  402ded:	40 0f 95 c6          	setne  %sil
  402df1:	eb 65                	jmp    402e58 <fmt_fp+0x158>
  402df3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402df8:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402dfe:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402e04:	0f 84 2c 04 00 00    	je     403236 <fmt_fp+0x536>
  402e0a:	48 8d 05 6a 53 00 00 	lea    0x536a(%rip),%rax        # 40817b <_fini+0x10d7>
  402e11:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402e18:	00 00 00 
  402e1b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402e22:	e9 66 ff ff ff       	jmp    402d8d <fmt_fp+0x8d>
  402e27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e2e:	00 00 
  402e30:	41 83 fe 61          	cmp    $0x61,%r14d
  402e34:	0f 84 d6 05 00 00    	je     403410 <fmt_fp+0x710>
  402e3a:	45 85 ff             	test   %r15d,%r15d
  402e3d:	0f 88 3e 13 00 00    	js     404181 <fmt_fp+0x1481>
  402e43:	40 0f 95 c6          	setne  %sil
  402e47:	41 83 e9 1d          	sub    $0x1d,%r9d
  402e4b:	d8 0d b3 56 00 00    	fmuls  0x56b3(%rip)        # 408504 <states+0x1e4>
  402e51:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402e58:	45 85 c9             	test   %r9d,%r9d
  402e5b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402e62:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402e69:	d9 05 99 56 00 00    	flds   0x5699(%rip)        # 408508 <states+0x1e8>
  402e6f:	d9 c9                	fxch   %st(1)
  402e71:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402e77:	48 0f 49 c2          	cmovns %rdx,%rax
  402e7b:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402e82:	48 89 c3             	mov    %rax,%rbx
  402e85:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402e8c:	80 cc 0c             	or     $0xc,%ah
  402e8f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402e96:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e9d:	00 00 
  402e9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ea6:	00 00 00 00 
  402eaa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402eb1:	00 00 00 00 
  402eb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ebc:	00 00 00 00 
  402ec0:	d9 c0                	fld    %st(0)
  402ec2:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402ec8:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402ece:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402ed4:	48 83 c3 04          	add    $0x4,%rbx
  402ed8:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402edf:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402ee2:	89 c0                	mov    %eax,%eax
  402ee4:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402eeb:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402ef1:	de e9                	fsubrp %st,%st(1)
  402ef3:	d8 c9                	fmul   %st(1),%st
  402ef5:	d9 ee                	fldz
  402ef7:	d9 c9                	fxch   %st(1)
  402ef9:	db e9                	fucomi %st(1),%st
  402efb:	dd d9                	fstp   %st(1)
  402efd:	7a c1                	jp     402ec0 <fmt_fp+0x1c0>
  402eff:	75 bf                	jne    402ec0 <fmt_fp+0x1c0>
  402f01:	dd d8                	fstp   %st(0)
  402f03:	dd d8                	fstp   %st(0)
  402f05:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402f0c:	45 85 c9             	test   %r9d,%r9d
  402f0f:	0f 8e b0 00 00 00    	jle    402fc5 <fmt_fp+0x2c5>
  402f15:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402f1c:	b8 44 00 
  402f1f:	90                   	nop
  402f20:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402f25:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402f29:	41 39 c9             	cmp    %ecx,%r9d
  402f2c:	41 0f 4e c9          	cmovle %r9d,%ecx
  402f30:	4d 39 e2             	cmp    %r12,%r10
  402f33:	72 4b                	jb     402f80 <fmt_fp+0x280>
  402f35:	31 c0                	xor    %eax,%eax
  402f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402f3e:	00 00 
  402f40:	45 8b 02             	mov    (%r10),%r8d
  402f43:	49 83 ea 04          	sub    $0x4,%r10
  402f47:	49 d3 e0             	shl    %cl,%r8
  402f4a:	49 01 c0             	add    %rax,%r8
  402f4d:	4c 89 c2             	mov    %r8,%rdx
  402f50:	48 c1 ea 09          	shr    $0x9,%rdx
  402f54:	48 89 d0             	mov    %rdx,%rax
  402f57:	48 f7 e7             	mul    %rdi
  402f5a:	48 c1 ea 0b          	shr    $0xb,%rdx
  402f5e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402f65:	49 29 c0             	sub    %rax,%r8
  402f68:	89 d0                	mov    %edx,%eax
  402f6a:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402f6e:	4d 39 e2             	cmp    %r12,%r10
  402f71:	73 cd                	jae    402f40 <fmt_fp+0x240>
  402f73:	85 d2                	test   %edx,%edx
  402f75:	74 09                	je     402f80 <fmt_fp+0x280>
  402f77:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402f7c:	49 83 ec 04          	sub    $0x4,%r12
  402f80:	49 39 dc             	cmp    %rbx,%r12
  402f83:	72 24                	jb     402fa9 <fmt_fp+0x2a9>
  402f85:	eb 2b                	jmp    402fb2 <fmt_fp+0x2b2>
  402f87:	0f 1f 00             	nopl   (%rax)
  402f8a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f91:	00 00 00 00 
  402f95:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f9c:	00 00 00 00 
  402fa0:	48 83 eb 04          	sub    $0x4,%rbx
  402fa4:	49 39 dc             	cmp    %rbx,%r12
  402fa7:	73 09                	jae    402fb2 <fmt_fp+0x2b2>
  402fa9:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  402fad:	45 85 c0             	test   %r8d,%r8d
  402fb0:	74 ee                	je     402fa0 <fmt_fp+0x2a0>
  402fb2:	41 29 c9             	sub    %ecx,%r9d
  402fb5:	45 85 c9             	test   %r9d,%r9d
  402fb8:	0f 8f 62 ff ff ff    	jg     402f20 <fmt_fp+0x220>
  402fbe:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402fc5:	45 85 c9             	test   %r9d,%r9d
  402fc8:	0f 84 35 01 00 00    	je     403103 <fmt_fp+0x403>
  402fce:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  402fd2:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  402fd9:	41 89 f0             	mov    %esi,%r8d
  402fdc:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  402fe3:	48 c1 e8 21          	shr    $0x21,%rax
  402fe7:	48 8d 78 01          	lea    0x1(%rax),%rdi
  402feb:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  402ff2:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  402ff9:	00 
  402ffa:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  403001:	0f 1f 40 00          	nopl   0x0(%rax)
  403005:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40300c:	00 00 00 00 
  403010:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  403014:	0f 8d d6 06 00 00    	jge    4036f0 <fmt_fp+0x9f0>
  40301a:	41 83 c1 09          	add    $0x9,%r9d
  40301e:	b9 09 00 00 00       	mov    $0x9,%ecx
  403023:	49 39 dc             	cmp    %rbx,%r12
  403026:	0f 83 d5 06 00 00    	jae    403701 <fmt_fp+0xa01>
  40302c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  403032:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  403039:	4c 89 e6             	mov    %r12,%rsi
  40303c:	31 d2                	xor    %edx,%edx
  40303e:	41 d3 e2             	shl    %cl,%r10d
  403041:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  403047:	41 83 ea 01          	sub    $0x1,%r10d
  40304b:	41 d3 ff             	sar    %cl,%r15d
  40304e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403054:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40305b:	00 00 00 00 
  40305f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403066:	00 00 00 00 
  40306a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403071:	00 00 00 00 
  403075:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40307c:	00 00 00 00 
  403080:	8b 06                	mov    (%rsi),%eax
  403082:	48 83 c6 04          	add    $0x4,%rsi
  403086:	41 89 c1             	mov    %eax,%r9d
  403089:	44 21 d0             	and    %r10d,%eax
  40308c:	41 0f af c7          	imul   %r15d,%eax
  403090:	41 d3 e9             	shr    %cl,%r9d
  403093:	41 01 d1             	add    %edx,%r9d
  403096:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  40309a:	89 c2                	mov    %eax,%edx
  40309c:	48 39 de             	cmp    %rbx,%rsi
  40309f:	72 df                	jb     403080 <fmt_fp+0x380>
  4030a1:	41 8b 0c 24          	mov    (%r12),%ecx
  4030a5:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  4030aa:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  4030b1:	85 c9                	test   %ecx,%ecx
  4030b3:	49 0f 45 c4          	cmovne %r12,%rax
  4030b7:	85 d2                	test   %edx,%edx
  4030b9:	74 06                	je     4030c1 <fmt_fp+0x3c1>
  4030bb:	89 13                	mov    %edx,(%rbx)
  4030bd:	48 83 c3 04          	add    $0x4,%rbx
  4030c1:	49 89 c4             	mov    %rax,%r12
  4030c4:	41 83 fe 66          	cmp    $0x66,%r14d
  4030c8:	0f 84 52 06 00 00    	je     403720 <fmt_fp+0xa20>
  4030ce:	48 89 da             	mov    %rbx,%rdx
  4030d1:	48 29 c2             	sub    %rax,%rdx
  4030d4:	4c 01 d8             	add    %r11,%rax
  4030d7:	48 c1 fa 02          	sar    $0x2,%rdx
  4030db:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  4030e2:	48 0f 4f d8          	cmovg  %rax,%rbx
  4030e6:	45 85 c9             	test   %r9d,%r9d
  4030e9:	0f 85 21 ff ff ff    	jne    403010 <fmt_fp+0x310>
  4030ef:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  4030f6:	00 00 00 
  4030f9:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  403100:	44 89 c6             	mov    %r8d,%esi
  403103:	49 39 dc             	cmp    %rbx,%r12
  403106:	0f 83 5d 0b 00 00    	jae    403c69 <fmt_fp+0xf69>
  40310c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403113:	41 83 fe 66          	cmp    $0x66,%r14d
  403117:	41 8b 14 24          	mov    (%r12),%edx
  40311b:	0f 95 c1             	setne  %cl
  40311e:	4c 29 e0             	sub    %r12,%rax
  403121:	48 c1 f8 02          	sar    $0x2,%rax
  403125:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  403128:	b8 0a 00 00 00       	mov    $0xa,%eax
  40312d:	83 fa 09             	cmp    $0x9,%edx
  403130:	76 1a                	jbe    40314c <fmt_fp+0x44c>
  403132:	0f 1f 00             	nopl   (%rax)
  403135:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40313c:	00 00 00 00 
  403140:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403143:	83 c7 01             	add    $0x1,%edi
  403146:	01 c0                	add    %eax,%eax
  403148:	39 c2                	cmp    %eax,%edx
  40314a:	73 f4                	jae    403140 <fmt_fp+0x440>
  40314c:	31 d2                	xor    %edx,%edx
  40314e:	84 c9                	test   %cl,%cl
  403150:	44 89 f8             	mov    %r15d,%eax
  403153:	0f 45 d7             	cmovne %edi,%edx
  403156:	29 d0                	sub    %edx,%eax
  403158:	31 d2                	xor    %edx,%edx
  40315a:	41 83 fe 67          	cmp    $0x67,%r14d
  40315e:	0f 94 c2             	sete   %dl
  403161:	21 f2                	and    %esi,%edx
  403163:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  40316a:	29 d0                	sub    %edx,%eax
  40316c:	48 89 da             	mov    %rbx,%rdx
  40316f:	48 29 f2             	sub    %rsi,%rdx
  403172:	48 63 c8             	movslq %eax,%rcx
  403175:	48 c1 fa 02          	sar    $0x2,%rdx
  403179:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  40317e:	48 39 d1             	cmp    %rdx,%rcx
  403181:	0f 8d 0f 06 00 00    	jge    403796 <fmt_fp+0xa96>
  403187:	05 00 40 02 00       	add    $0x24000,%eax
  40318c:	48 63 d0             	movslq %eax,%rdx
  40318f:	89 c1                	mov    %eax,%ecx
  403191:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403198:	c1 f9 1f             	sar    $0x1f,%ecx
  40319b:	48 c1 fa 21          	sar    $0x21,%rdx
  40319f:	29 ca                	sub    %ecx,%edx
  4031a1:	48 63 ca             	movslq %edx,%rcx
  4031a4:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  4031ab:	ff 
  4031ac:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  4031af:	29 c8                	sub    %ecx,%eax
  4031b1:	89 c2                	mov    %eax,%edx
  4031b3:	8d 40 01             	lea    0x1(%rax),%eax
  4031b6:	83 fa 08             	cmp    $0x8,%edx
  4031b9:	0f 84 df 13 00 00    	je     40459e <fmt_fp+0x189e>
  4031bf:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4031c4:	90                   	nop
  4031c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031cc:	00 00 00 00 
  4031d0:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4031d3:	83 c0 01             	add    $0x1,%eax
  4031d6:	01 c9                	add    %ecx,%ecx
  4031d8:	83 f8 09             	cmp    $0x9,%eax
  4031db:	75 f3                	jne    4031d0 <fmt_fp+0x4d0>
  4031dd:	41 89 cb             	mov    %ecx,%r11d
  4031e0:	44 8b 16             	mov    (%rsi),%r10d
  4031e3:	31 d2                	xor    %edx,%edx
  4031e5:	44 89 d0             	mov    %r10d,%eax
  4031e8:	41 f7 f3             	div    %r11d
  4031eb:	41 89 d1             	mov    %edx,%r9d
  4031ee:	85 d2                	test   %edx,%edx
  4031f0:	0f 85 35 05 00 00    	jne    40372b <fmt_fp+0xa2b>
  4031f6:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  4031fa:	48 89 da             	mov    %rbx,%rdx
  4031fd:	4c 39 c3             	cmp    %r8,%rbx
  403200:	0f 84 89 05 00 00    	je     40378f <fmt_fp+0xa8f>
  403206:	a8 01                	test   $0x1,%al
  403208:	0f 85 36 10 00 00    	jne    404244 <fmt_fp+0x1544>
  40320e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403214:	75 0f                	jne    403225 <fmt_fp+0x525>
  403216:	49 39 f4             	cmp    %rsi,%r12
  403219:	73 0a                	jae    403225 <fmt_fp+0x525>
  40321b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40321f:	0f 85 1f 10 00 00    	jne    404244 <fmt_fp+0x1544>
  403225:	d9 05 c9 52 00 00    	flds   0x52c9(%rip)        # 4084f4 <states+0x1d4>
  40322b:	d9 05 c7 52 00 00    	flds   0x52c7(%rip)        # 4084f8 <states+0x1d8>
  403231:	e9 1d 05 00 00       	jmp    403753 <fmt_fp+0xa53>
  403236:	48 8d 1d 3c 4f 00 00 	lea    0x4f3c(%rip),%rbx        # 408179 <_fini+0x10d5>
  40323d:	83 e7 01             	and    $0x1,%edi
  403240:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403244:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40324a:	48 0f 44 c3          	cmove  %rbx,%rax
  40324e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403255:	e9 33 fb ff ff       	jmp    402d8d <fmt_fp+0x8d>
  40325a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403260:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403267:	0f 84 94 00 00 00    	je     403301 <fmt_fp+0x601>
  40326d:	db 6d 10             	fldt   0x10(%rbp)
  403270:	4c 8d 25 18 4f 00 00 	lea    0x4f18(%rip),%r12        # 40818f <_fini+0x10eb>
  403277:	48 8d 05 19 4f 00 00 	lea    0x4f19(%rip),%rax        # 408197 <_fini+0x10f3>
  40327e:	df e8                	fucomip %st(0),%st
  403280:	4c 0f 4b e0          	cmovnp %rax,%r12
  403284:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40328a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403290:	8d 58 03             	lea    0x3(%rax),%ebx
  403293:	39 d3                	cmp    %edx,%ebx
  403295:	41 0f 9d c5          	setge  %r13b
  403299:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  4032a0:	75 09                	jne    4032ab <fmt_fp+0x5ab>
  4032a2:	45 84 ed             	test   %r13b,%r13b
  4032a5:	0f 84 0a 01 00 00    	je     4033b5 <fmt_fp+0x6b5>
  4032ab:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4032b2:	f6 00 20             	testb  $0x20,(%rax)
  4032b5:	0f 84 1d 01 00 00    	je     4033d8 <fmt_fp+0x6d8>
  4032bb:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4032c1:	80 f4 20             	xor    $0x20,%ah
  4032c4:	a9 00 20 01 00       	test   $0x12000,%eax
  4032c9:	75 09                	jne    4032d4 <fmt_fp+0x5d4>
  4032cb:	45 84 ed             	test   %r13b,%r13b
  4032ce:	0f 84 c3 00 00 00    	je     403397 <fmt_fp+0x697>
  4032d4:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  4032da:	39 c3                	cmp    %eax,%ebx
  4032dc:	0f 4d c3             	cmovge %ebx,%eax
  4032df:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4032e3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4032ea:	00 00 
  4032ec:	0f 85 4d 13 00 00    	jne    40463f <fmt_fp+0x193f>
  4032f2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4032f6:	5b                   	pop    %rbx
  4032f7:	41 5c                	pop    %r12
  4032f9:	41 5d                	pop    %r13
  4032fb:	41 5e                	pop    %r14
  4032fd:	41 5f                	pop    %r15
  4032ff:	5d                   	pop    %rbp
  403300:	c3                   	ret
  403301:	db 6d 10             	fldt   0x10(%rbp)
  403304:	4c 8d 25 88 4e 00 00 	lea    0x4e88(%rip),%r12        # 408193 <_fini+0x10ef>
  40330b:	48 8d 05 79 4e 00 00 	lea    0x4e79(%rip),%rax        # 40818b <_fini+0x10e7>
  403312:	df e8                	fucomip %st(0),%st
  403314:	4c 0f 4b e0          	cmovnp %rax,%r12
  403318:	e9 67 ff ff ff       	jmp    403284 <fmt_fp+0x584>
  40331d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403324:	f6 07 20             	testb  $0x20,(%rdi)
  403327:	0f 84 11 03 00 00    	je     40363e <fmt_fp+0x93e>
  40332d:	45 29 f7             	sub    %r14d,%r15d
  403330:	45 85 ff             	test   %r15d,%r15d
  403333:	7e 9f                	jle    4032d4 <fmt_fp+0x5d4>
  403335:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40333b:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403342:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403349:	31 c9                	xor    %ecx,%ecx
  40334b:	44 89 fa             	mov    %r15d,%edx
  40334e:	be 30 00 00 00       	mov    $0x30,%esi
  403353:	e8 88 f8 ff ff       	call   402be0 <pad.part.0>
  403358:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40335f:	f6 00 20             	testb  $0x20,(%rax)
  403362:	75 12                	jne    403376 <fmt_fp+0x676>
  403364:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  40336b:	48 89 c2             	mov    %rax,%rdx
  40336e:	4c 89 e6             	mov    %r12,%rsi
  403371:	e8 1a 32 00 00       	call   406590 <__fwritex>
  403376:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  40337c:	80 f4 20             	xor    $0x20,%ah
  40337f:	a9 00 20 01 00       	test   $0x12000,%eax
  403384:	0f 85 4a ff ff ff    	jne    4032d4 <fmt_fp+0x5d4>
  40338a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403391:	0f 85 3d ff ff ff    	jne    4032d4 <fmt_fp+0x5d4>
  403397:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40339d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033a4:	89 d9                	mov    %ebx,%ecx
  4033a6:	be 20 00 00 00       	mov    $0x20,%esi
  4033ab:	e8 30 f8 ff ff       	call   402be0 <pad.part.0>
  4033b0:	e9 1f ff ff ff       	jmp    4032d4 <fmt_fp+0x5d4>
  4033b5:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033bc:	89 d9                	mov    %ebx,%ecx
  4033be:	be 20 00 00 00       	mov    $0x20,%esi
  4033c3:	e8 18 f8 ff ff       	call   402be0 <pad.part.0>
  4033c8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4033cf:	f6 00 20             	testb  $0x20,(%rax)
  4033d2:	0f 85 e3 fe ff ff    	jne    4032bb <fmt_fp+0x5bb>
  4033d8:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  4033df:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4033e6:	49 89 c6             	mov    %rax,%r14
  4033e9:	48 89 c2             	mov    %rax,%rdx
  4033ec:	e8 9f 31 00 00       	call   406590 <__fwritex>
  4033f1:	41 f6 06 20          	testb  $0x20,(%r14)
  4033f5:	0f 85 c0 fe ff ff    	jne    4032bb <fmt_fp+0x5bb>
  4033fb:	4c 89 f2             	mov    %r14,%rdx
  4033fe:	be 03 00 00 00       	mov    $0x3,%esi
  403403:	4c 89 e7             	mov    %r12,%rdi
  403406:	e8 85 31 00 00       	call   406590 <__fwritex>
  40340b:	e9 ab fe ff ff       	jmp    4032bb <fmt_fp+0x5bb>
  403410:	41 83 e9 01          	sub    $0x1,%r9d
  403414:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40341b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403422:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403429:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  40342f:	48 8d 47 09          	lea    0x9(%rdi),%rax
  403433:	48 0f 44 c7          	cmove  %rdi,%rax
  403437:	83 c3 02             	add    $0x2,%ebx
  40343a:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403441:	41 83 ff 0e          	cmp    $0xe,%r15d
  403445:	0f 86 28 0c 00 00    	jbe    404073 <fmt_fp+0x1373>
  40344b:	d9 05 af 50 00 00    	flds   0x50af(%rip)        # 408500 <states+0x1e0>
  403451:	45 85 c9             	test   %r9d,%r9d
  403454:	0f 84 54 11 00 00    	je     4045ae <fmt_fp+0x18ae>
  40345a:	44 89 c9             	mov    %r9d,%ecx
  40345d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403461:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  403468:	cc cc cc 
  40346b:	f7 d9                	neg    %ecx
  40346d:	4d 89 e8             	mov    %r13,%r8
  403470:	41 0f 48 c9          	cmovs  %r9d,%ecx
  403474:	48 63 c9             	movslq %ecx,%rcx
  403477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40347e:	00 00 
  403480:	48 89 c8             	mov    %rcx,%rax
  403483:	4c 89 c7             	mov    %r8,%rdi
  403486:	49 83 e8 01          	sub    $0x1,%r8
  40348a:	48 f7 e6             	mul    %rsi
  40348d:	48 89 c8             	mov    %rcx,%rax
  403490:	48 c1 ea 03          	shr    $0x3,%rdx
  403494:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403498:	4d 01 d2             	add    %r10,%r10
  40349b:	4c 29 d0             	sub    %r10,%rax
  40349e:	83 c0 30             	add    $0x30,%eax
  4034a1:	48 83 f9 09          	cmp    $0x9,%rcx
  4034a5:	48 89 d1             	mov    %rdx,%rcx
  4034a8:	41 88 00             	mov    %al,(%r8)
  4034ab:	77 d3                	ja     403480 <fmt_fp+0x780>
  4034ad:	4d 39 e8             	cmp    %r13,%r8
  4034b0:	0f 84 9f 0d 00 00    	je     404255 <fmt_fp+0x1555>
  4034b6:	b8 2d 00 00 00       	mov    $0x2d,%eax
  4034bb:	45 85 c9             	test   %r9d,%r9d
  4034be:	78 05                	js     4034c5 <fmt_fp+0x7c5>
  4034c0:	b8 2b 00 00 00       	mov    $0x2b,%eax
  4034c5:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  4034cb:	41 88 40 ff          	mov    %al,-0x1(%r8)
  4034cf:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  4034d3:	d9 ee                	fldz
  4034d5:	d9 ca                	fxch   %st(2)
  4034d7:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  4034de:	45 85 ff             	test   %r15d,%r15d
  4034e1:	48 8d 0d 18 4e 00 00 	lea    0x4e18(%rip),%rcx        # 408300 <xdigits>
  4034e8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4034ee:	8d 46 0f             	lea    0xf(%rsi),%eax
  4034f1:	40 0f 9f c7          	setg   %dil
  4034f5:	83 e6 20             	and    $0x20,%esi
  4034f8:	41 88 40 fe          	mov    %al,-0x2(%r8)
  4034fc:	4c 89 e8             	mov    %r13,%rax
  4034ff:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403505:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40350c:	80 ce 0c             	or     $0xc,%dh
  40350f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403516:	eb 1b                	jmp    403533 <fmt_fp+0x833>
  403518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40351f:	00 
  403520:	4c 89 c0             	mov    %r8,%rax
  403523:	d9 c2                	fld    %st(2)
  403525:	d9 c9                	fxch   %st(1)
  403527:	db e9                	fucomi %st(1),%st
  403529:	dd d9                	fstp   %st(1)
  40352b:	7a 06                	jp     403533 <fmt_fp+0x833>
  40352d:	0f 84 dc 10 00 00    	je     40460f <fmt_fp+0x190f>
  403533:	d9 c0                	fld    %st(0)
  403535:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  40353b:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403541:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403547:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40354b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403551:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403558:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40355d:	de e9                	fsubrp %st,%st(1)
  40355f:	41 09 f3             	or     %esi,%r11d
  403562:	44 88 18             	mov    %r11b,(%rax)
  403565:	d8 c9                	fmul   %st(1),%st
  403567:	4c 39 e8             	cmp    %r13,%rax
  40356a:	75 b4                	jne    403520 <fmt_fp+0x820>
  40356c:	d9 c2                	fld    %st(2)
  40356e:	df e9                	fucomip %st(1),%st
  403570:	0f 9a c2             	setp   %dl
  403573:	41 0f 45 d1          	cmovne %r9d,%edx
  403577:	84 d2                	test   %dl,%dl
  403579:	0f 85 31 06 00 00    	jne    403bb0 <fmt_fp+0xeb0>
  40357f:	40 84 ff             	test   %dil,%dil
  403582:	0f 85 28 06 00 00    	jne    403bb0 <fmt_fp+0xeb0>
  403588:	dd d8                	fstp   %st(0)
  40358a:	dd d8                	fstp   %st(0)
  40358c:	dd d8                	fstp   %st(0)
  40358e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403595:	74 08                	je     40359f <fmt_fp+0x89f>
  403597:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40359b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40359f:	4d 89 ec             	mov    %r13,%r12
  4035a2:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  4035a7:	48 63 c3             	movslq %ebx,%rax
  4035aa:	49 63 cf             	movslq %r15d,%rcx
  4035ad:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  4035b4:	4c 29 e2             	sub    %r12,%rdx
  4035b7:	48 29 c2             	sub    %rax,%rdx
  4035ba:	48 39 d1             	cmp    %rdx,%rcx
  4035bd:	0f 8f 24 10 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  4035c3:	4d 29 e8             	sub    %r13,%r8
  4035c6:	45 85 ff             	test   %r15d,%r15d
  4035c9:	74 0d                	je     4035d8 <fmt_fp+0x8d8>
  4035cb:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  4035cf:	48 39 d1             	cmp    %rdx,%rcx
  4035d2:	0f 8d ac 0c 00 00    	jge    404284 <fmt_fp+0x1584>
  4035d8:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  4035dc:	45 89 f7             	mov    %r14d,%r15d
  4035df:	44 01 fb             	add    %r15d,%ebx
  4035e2:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4035e9:	20 01 
  4035eb:	0f 85 a0 0b 00 00    	jne    404191 <fmt_fp+0x1491>
  4035f1:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4035f7:	39 d3                	cmp    %edx,%ebx
  4035f9:	0f 8d 1e fd ff ff    	jge    40331d <fmt_fp+0x61d>
  4035ff:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403606:	89 d9                	mov    %ebx,%ecx
  403608:	be 20 00 00 00       	mov    $0x20,%esi
  40360d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403614:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40361b:	e8 c0 f5 ff ff       	call   402be0 <pad.part.0>
  403620:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403627:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  40362e:	f6 00 20             	testb  $0x20,(%rax)
  403631:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  403638:	0f 85 ef fc ff ff    	jne    40332d <fmt_fp+0x62d>
  40363e:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403645:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40364c:	48 89 c6             	mov    %rax,%rsi
  40364f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403656:	e8 35 2f 00 00       	call   406590 <__fwritex>
  40365b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403661:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403667:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  40366e:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403675:	35 00 00 01 00       	xor    $0x10000,%eax
  40367a:	a9 00 20 01 00       	test   $0x12000,%eax
  40367f:	75 37                	jne    4036b8 <fmt_fp+0x9b8>
  403681:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403688:	75 2e                	jne    4036b8 <fmt_fp+0x9b8>
  40368a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403690:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403697:	89 d9                	mov    %ebx,%ecx
  403699:	be 30 00 00 00       	mov    $0x30,%esi
  40369e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4036a5:	e8 36 f5 ff ff       	call   402be0 <pad.part.0>
  4036aa:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  4036b1:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4036b8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4036bf:	f6 00 20             	testb  $0x20,(%rax)
  4036c2:	0f 85 05 0b 00 00    	jne    4041cd <fmt_fp+0x14cd>
  4036c8:	48 89 c2             	mov    %rax,%rdx
  4036cb:	4c 89 c6             	mov    %r8,%rsi
  4036ce:	4c 89 ef             	mov    %r13,%rdi
  4036d1:	45 29 f7             	sub    %r14d,%r15d
  4036d4:	e8 b7 2e 00 00       	call   406590 <__fwritex>
  4036d9:	45 85 ff             	test   %r15d,%r15d
  4036dc:	0f 8e 76 fc ff ff    	jle    403358 <fmt_fp+0x658>
  4036e2:	e9 5b fc ff ff       	jmp    403342 <fmt_fp+0x642>
  4036e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4036ee:	00 00 
  4036f0:	44 89 c9             	mov    %r9d,%ecx
  4036f3:	45 31 c9             	xor    %r9d,%r9d
  4036f6:	f7 d9                	neg    %ecx
  4036f8:	49 39 dc             	cmp    %rbx,%r12
  4036fb:	0f 82 2b f9 ff ff    	jb     40302c <fmt_fp+0x32c>
  403701:	41 8b 34 24          	mov    (%r12),%esi
  403705:	85 f6                	test   %esi,%esi
  403707:	0f 84 66 05 00 00    	je     403c73 <fmt_fp+0xf73>
  40370d:	41 83 fe 66          	cmp    $0x66,%r14d
  403711:	0f 85 cf f9 ff ff    	jne    4030e6 <fmt_fp+0x3e6>
  403717:	4c 89 e0             	mov    %r12,%rax
  40371a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403720:	49 89 c4             	mov    %rax,%r12
  403723:	48 89 f8             	mov    %rdi,%rax
  403726:	e9 a3 f9 ff ff       	jmp    4030ce <fmt_fp+0x3ce>
  40372b:	a8 01                	test   $0x1,%al
  40372d:	0f 84 2f 0b 00 00    	je     404262 <fmt_fp+0x1562>
  403733:	db 2d e7 4d 00 00    	fldt   0x4de7(%rip)        # 408520 <states+0x200>
  403739:	d1 f9                	sar    $1,%ecx
  40373b:	41 39 c9             	cmp    %ecx,%r9d
  40373e:	0f 82 06 0b 00 00    	jb     40424a <fmt_fp+0x154a>
  403744:	44 39 c9             	cmp    %r9d,%ecx
  403747:	0f 84 31 0e 00 00    	je     40457e <fmt_fp+0x187e>
  40374d:	d9 05 a9 4d 00 00    	flds   0x4da9(%rip)        # 4084fc <states+0x1dc>
  403753:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403759:	85 d2                	test   %edx,%edx
  40375b:	74 14                	je     403771 <fmt_fp+0xa71>
  40375d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403764:	80 38 2d             	cmpb   $0x2d,(%rax)
  403767:	75 08                	jne    403771 <fmt_fp+0xa71>
  403769:	d9 c9                	fxch   %st(1)
  40376b:	d9 e0                	fchs
  40376d:	d9 c9                	fxch   %st(1)
  40376f:	d9 e0                	fchs
  403771:	d8 c1                	fadd   %st(1),%st
  403773:	44 89 d0             	mov    %r10d,%eax
  403776:	44 29 c8             	sub    %r9d,%eax
  403779:	df e9                	fucomip %st(1),%st
  40377b:	dd d8                	fstp   %st(0)
  40377d:	0f 8a 4c 09 00 00    	jp     4040cf <fmt_fp+0x13cf>
  403783:	0f 85 46 09 00 00    	jne    4040cf <fmt_fp+0x13cf>
  403789:	89 06                	mov    %eax,(%rsi)
  40378b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40378f:	48 39 d3             	cmp    %rdx,%rbx
  403792:	48 0f 47 da          	cmova  %rdx,%rbx
  403796:	49 39 dc             	cmp    %rbx,%r12
  403799:	72 0e                	jb     4037a9 <fmt_fp+0xaa9>
  40379b:	eb 13                	jmp    4037b0 <fmt_fp+0xab0>
  40379d:	0f 1f 00             	nopl   (%rax)
  4037a0:	48 83 eb 04          	sub    $0x4,%rbx
  4037a4:	49 39 dc             	cmp    %rbx,%r12
  4037a7:	73 07                	jae    4037b0 <fmt_fp+0xab0>
  4037a9:	8b 43 fc             	mov    -0x4(%rbx),%eax
  4037ac:	85 c0                	test   %eax,%eax
  4037ae:	74 f0                	je     4037a0 <fmt_fp+0xaa0>
  4037b0:	41 83 fe 67          	cmp    $0x67,%r14d
  4037b4:	0f 84 25 05 00 00    	je     403cdf <fmt_fp+0xfdf>
  4037ba:	45 85 ff             	test   %r15d,%r15d
  4037bd:	0f 85 ba 04 00 00    	jne    403c7d <fmt_fp+0xf7d>
  4037c3:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  4037ca:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  4037d0:	41 c1 e9 03          	shr    $0x3,%r9d
  4037d4:	41 83 e1 01          	and    $0x1,%r9d
  4037d8:	41 83 c1 01          	add    $0x1,%r9d
  4037dc:	45 29 ca             	sub    %r9d,%r10d
  4037df:	41 83 fe 66          	cmp    $0x66,%r14d
  4037e3:	0f 84 80 0b 00 00    	je     404369 <fmt_fp+0x1669>
  4037e9:	4d 63 d2             	movslq %r10d,%r10
  4037ec:	85 ff                	test   %edi,%edi
  4037ee:	0f 84 9e 0d 00 00    	je     404592 <fmt_fp+0x1892>
  4037f4:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  4037fb:	cc cc cc 
  4037fe:	89 fe                	mov    %edi,%esi
  403800:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403804:	f7 de                	neg    %esi
  403806:	4c 89 e9             	mov    %r13,%rcx
  403809:	0f 48 f7             	cmovs  %edi,%esi
  40380c:	48 63 f6             	movslq %esi,%rsi
  40380f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403814:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40381b:	00 00 00 00 
  40381f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403826:	00 00 00 00 
  40382a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403831:	00 00 00 00 
  403835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40383c:	00 00 00 00 
  403840:	48 89 f0             	mov    %rsi,%rax
  403843:	48 83 e9 01          	sub    $0x1,%rcx
  403847:	49 f7 e0             	mul    %r8
  40384a:	48 89 f0             	mov    %rsi,%rax
  40384d:	48 c1 ea 03          	shr    $0x3,%rdx
  403851:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403855:	4d 01 db             	add    %r11,%r11
  403858:	4c 29 d8             	sub    %r11,%rax
  40385b:	83 c0 30             	add    $0x30,%eax
  40385e:	48 83 fe 09          	cmp    $0x9,%rsi
  403862:	48 89 d6             	mov    %rdx,%rsi
  403865:	88 01                	mov    %al,(%rcx)
  403867:	77 d7                	ja     403840 <fmt_fp+0xb40>
  403869:	4c 89 e8             	mov    %r13,%rax
  40386c:	48 29 c8             	sub    %rcx,%rax
  40386f:	48 83 f8 01          	cmp    $0x1,%rax
  403873:	7f 1e                	jg     403893 <fmt_fp+0xb93>
  403875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40387c:	00 00 00 00 
  403880:	48 83 e9 01          	sub    $0x1,%rcx
  403884:	4c 89 e8             	mov    %r13,%rax
  403887:	c6 01 30             	movb   $0x30,(%rcx)
  40388a:	48 29 c8             	sub    %rcx,%rax
  40388d:	48 83 f8 01          	cmp    $0x1,%rax
  403891:	7e ed                	jle    403880 <fmt_fp+0xb80>
  403893:	c1 ff 1f             	sar    $0x1f,%edi
  403896:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40389a:	83 e7 02             	and    $0x2,%edi
  40389d:	49 29 c5             	sub    %rax,%r13
  4038a0:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  4038a7:	83 c7 2b             	add    $0x2b,%edi
  4038aa:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  4038ae:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  4038b5:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  4038b9:	4d 39 d5             	cmp    %r10,%r13
  4038bc:	0f 8f 25 0d 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  4038c2:	45 01 e9             	add    %r13d,%r9d
  4038c5:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4038ca:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  4038d0:	41 39 c1             	cmp    %eax,%r9d
  4038d3:	0f 8f 0e 0d 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  4038d9:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  4038df:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  4038e5:	44 01 c8             	add    %r9d,%eax
  4038e8:	39 f8                	cmp    %edi,%eax
  4038ea:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  4038f0:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  4038f7:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4038fe:	20 01 
  403900:	0f 85 3c 07 00 00    	jne    404042 <fmt_fp+0x1342>
  403906:	39 f8                	cmp    %edi,%eax
  403908:	0f 8d c5 06 00 00    	jge    403fd3 <fmt_fp+0x12d3>
  40390e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403915:	89 fa                	mov    %edi,%edx
  403917:	89 c1                	mov    %eax,%ecx
  403919:	be 20 00 00 00       	mov    $0x20,%esi
  40391e:	4c 89 ef             	mov    %r13,%rdi
  403921:	e8 ba f2 ff ff       	call   402be0 <pad.part.0>
  403926:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  40392b:	0f 84 b2 06 00 00    	je     403fe3 <fmt_fp+0x12e3>
  403931:	41 83 fe 66          	cmp    $0x66,%r14d
  403935:	0f 84 75 04 00 00    	je     403db0 <fmt_fp+0x10b0>
  40393b:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403940:	49 39 dc             	cmp    %rbx,%r12
  403943:	48 0f 43 d8          	cmovae %rax,%rbx
  403947:	45 85 ff             	test   %r15d,%r15d
  40394a:	0f 88 af 01 00 00    	js     403aff <fmt_fp+0xdff>
  403950:	49 39 dc             	cmp    %rbx,%r12
  403953:	0f 83 a6 01 00 00    	jae    403aff <fmt_fp+0xdff>
  403959:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40395e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403965:	4d 89 e6             	mov    %r12,%r14
  403968:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  40396c:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403973:	66 0f 6e c0          	movd   %eax,%xmm0
  403977:	49 89 dc             	mov    %rbx,%r12
  40397a:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403981:	cc cc cc 
  403984:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403988:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  40398d:	0f 1f 00             	nopl   (%rax)
  403990:	41 8b 0e             	mov    (%r14),%ecx
  403993:	4c 89 c7             	mov    %r8,%rdi
  403996:	48 85 c9             	test   %rcx,%rcx
  403999:	0f 84 e1 01 00 00    	je     403b80 <fmt_fp+0xe80>
  40399f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039a6:	00 00 00 00 
  4039aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039b1:	00 00 00 00 
  4039b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039bc:	00 00 00 00 
  4039c0:	48 89 c8             	mov    %rcx,%rax
  4039c3:	48 83 ef 01          	sub    $0x1,%rdi
  4039c7:	49 f7 e5             	mul    %r13
  4039ca:	48 89 c8             	mov    %rcx,%rax
  4039cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4039d1:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  4039d5:	48 01 f6             	add    %rsi,%rsi
  4039d8:	48 29 f0             	sub    %rsi,%rax
  4039db:	83 c0 30             	add    $0x30,%eax
  4039de:	48 83 f9 09          	cmp    $0x9,%rcx
  4039e2:	48 89 d1             	mov    %rdx,%rcx
  4039e5:	88 07                	mov    %al,(%rdi)
  4039e7:	77 d7                	ja     4039c0 <fmt_fp+0xcc0>
  4039e9:	4c 39 c7             	cmp    %r8,%rdi
  4039ec:	0f 84 8e 01 00 00    	je     403b80 <fmt_fp+0xe80>
  4039f2:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  4039f9:	0f 84 96 01 00 00    	je     403b95 <fmt_fp+0xe95>
  4039ff:	48 39 fb             	cmp    %rdi,%rbx
  403a02:	0f 83 c9 02 00 00    	jae    403cd1 <fmt_fp+0xfd1>
  403a08:	48 89 fe             	mov    %rdi,%rsi
  403a0b:	48 89 f8             	mov    %rdi,%rax
  403a0e:	48 29 de             	sub    %rbx,%rsi
  403a11:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403a15:	48 83 fa 0e          	cmp    $0xe,%rdx
  403a19:	76 3d                	jbe    403a58 <fmt_fp+0xd58>
  403a1b:	48 89 f1             	mov    %rsi,%rcx
  403a1e:	48 89 fa             	mov    %rdi,%rdx
  403a21:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403a25:	48 29 ca             	sub    %rcx,%rdx
  403a28:	f6 c1 10             	test   $0x10,%cl
  403a2b:	74 13                	je     403a40 <fmt_fp+0xd40>
  403a2d:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403a31:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403a35:	48 39 d0             	cmp    %rdx,%rax
  403a38:	74 16                	je     403a50 <fmt_fp+0xd50>
  403a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a40:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403a44:	48 83 e8 20          	sub    $0x20,%rax
  403a48:	0f 11 00             	movups %xmm0,(%rax)
  403a4b:	48 39 d0             	cmp    %rdx,%rax
  403a4e:	75 f0                	jne    403a40 <fmt_fp+0xd40>
  403a50:	48 39 f1             	cmp    %rsi,%rcx
  403a53:	74 3b                	je     403a90 <fmt_fp+0xd90>
  403a55:	48 29 cf             	sub    %rcx,%rdi
  403a58:	48 89 d8             	mov    %rbx,%rax
  403a5b:	48 f7 d0             	not    %rax
  403a5e:	48 01 f8             	add    %rdi,%rax
  403a61:	48 83 ef 01          	sub    $0x1,%rdi
  403a65:	c6 07 30             	movb   $0x30,(%rdi)
  403a68:	48 39 fb             	cmp    %rdi,%rbx
  403a6b:	73 23                	jae    403a90 <fmt_fp+0xd90>
  403a6d:	a8 01                	test   $0x1,%al
  403a6f:	74 0f                	je     403a80 <fmt_fp+0xd80>
  403a71:	48 83 ef 01          	sub    $0x1,%rdi
  403a75:	c6 07 30             	movb   $0x30,(%rdi)
  403a78:	48 39 fb             	cmp    %rdi,%rbx
  403a7b:	73 13                	jae    403a90 <fmt_fp+0xd90>
  403a7d:	0f 1f 00             	nopl   (%rax)
  403a80:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403a84:	48 83 ef 02          	sub    $0x2,%rdi
  403a88:	c6 07 30             	movb   $0x30,(%rdi)
  403a8b:	48 39 fb             	cmp    %rdi,%rbx
  403a8e:	72 f0                	jb     403a80 <fmt_fp+0xd80>
  403a90:	41 8b 02             	mov    (%r10),%eax
  403a93:	49 89 d9             	mov    %rbx,%r9
  403a96:	83 e0 20             	and    $0x20,%eax
  403a99:	4c 89 c1             	mov    %r8,%rcx
  403a9c:	4c 29 c9             	sub    %r9,%rcx
  403a9f:	85 c0                	test   %eax,%eax
  403aa1:	75 47                	jne    403aea <fmt_fp+0xdea>
  403aa3:	49 63 f7             	movslq %r15d,%rsi
  403aa6:	4c 89 d2             	mov    %r10,%rdx
  403aa9:	4c 89 cf             	mov    %r9,%rdi
  403aac:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403ab3:	48 39 ce             	cmp    %rcx,%rsi
  403ab6:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403abd:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403ac1:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403ac8:	e8 c3 2a 00 00       	call   406590 <__fwritex>
  403acd:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403ad4:	66 0f 6f 05 54 4a 00 	movdqa 0x4a54(%rip),%xmm0        # 408530 <states+0x210>
  403adb:	00 
  403adc:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403ae3:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403aea:	49 83 c6 04          	add    $0x4,%r14
  403aee:	41 29 cf             	sub    %ecx,%r15d
  403af1:	4d 39 e6             	cmp    %r12,%r14
  403af4:	73 09                	jae    403aff <fmt_fp+0xdff>
  403af6:	45 85 ff             	test   %r15d,%r15d
  403af9:	0f 89 91 fe ff ff    	jns    403990 <fmt_fp+0xc90>
  403aff:	41 8d 57 12          	lea    0x12(%r15),%edx
  403b03:	83 fa 12             	cmp    $0x12,%edx
  403b06:	7e 16                	jle    403b1e <fmt_fp+0xe1e>
  403b08:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403b0f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403b14:	be 30 00 00 00       	mov    $0x30,%esi
  403b19:	e8 c2 f0 ff ff       	call   402be0 <pad.part.0>
  403b1e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403b25:	f6 00 20             	testb  $0x20,(%rax)
  403b28:	0f 84 86 05 00 00    	je     4040b4 <fmt_fp+0x13b4>
  403b2e:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403b34:	80 f4 20             	xor    $0x20,%ah
  403b37:	a9 00 20 01 00       	test   $0x12000,%eax
  403b3c:	75 26                	jne    403b64 <fmt_fp+0xe64>
  403b3e:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403b45:	75 1d                	jne    403b64 <fmt_fp+0xe64>
  403b47:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403b4d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403b53:	be 20 00 00 00       	mov    $0x20,%esi
  403b58:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403b5f:	e8 7c f0 ff ff       	call   402be0 <pad.part.0>
  403b64:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403b6a:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403b70:	39 c7                	cmp    %eax,%edi
  403b72:	0f 4d c7             	cmovge %edi,%eax
  403b75:	e9 65 f7 ff ff       	jmp    4032df <fmt_fp+0x5df>
  403b7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403b80:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403b84:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403b88:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403b8f:	0f 85 73 fe ff ff    	jne    403a08 <fmt_fp+0xd08>
  403b95:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403b99:	41 f6 02 20          	testb  $0x20,(%r10)
  403b9d:	74 1e                	je     403bbd <fmt_fp+0xebd>
  403b9f:	4c 89 c1             	mov    %r8,%rcx
  403ba2:	4c 29 c9             	sub    %r9,%rcx
  403ba5:	e9 40 ff ff ff       	jmp    403aea <fmt_fp+0xdea>
  403baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403bb0:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403bb4:	48 83 c0 02          	add    $0x2,%rax
  403bb8:	e9 66 f9 ff ff       	jmp    403523 <fmt_fp+0x823>
  403bbd:	4c 89 d2             	mov    %r10,%rdx
  403bc0:	be 01 00 00 00       	mov    $0x1,%esi
  403bc5:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403bcc:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403bd3:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403bda:	e8 b1 29 00 00       	call   406590 <__fwritex>
  403bdf:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403be6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403bec:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403bf3:	66 0f 6f 05 35 49 00 	movdqa 0x4935(%rip),%xmm0        # 408530 <states+0x210>
  403bfa:	00 
  403bfb:	41 8b 02             	mov    (%r10),%eax
  403bfe:	83 e2 08             	and    $0x8,%edx
  403c01:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c08:	83 e0 20             	and    $0x20,%eax
  403c0b:	44 09 fa             	or     %r15d,%edx
  403c0e:	0f 84 85 fe ff ff    	je     403a99 <fmt_fp+0xd99>
  403c14:	85 c0                	test   %eax,%eax
  403c16:	75 87                	jne    403b9f <fmt_fp+0xe9f>
  403c18:	4c 89 d2             	mov    %r10,%rdx
  403c1b:	be 01 00 00 00       	mov    $0x1,%esi
  403c20:	48 8d 3d 74 45 00 00 	lea    0x4574(%rip),%rdi        # 40819b <_fini+0x10f7>
  403c27:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403c2e:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403c35:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403c3c:	e8 4f 29 00 00       	call   406590 <__fwritex>
  403c41:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c48:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c4f:	66 0f 6f 05 d9 48 00 	movdqa 0x48d9(%rip),%xmm0        # 408530 <states+0x210>
  403c56:	00 
  403c57:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403c5e:	41 8b 02             	mov    (%r10),%eax
  403c61:	83 e0 20             	and    $0x20,%eax
  403c64:	e9 30 fe ff ff       	jmp    403a99 <fmt_fp+0xd99>
  403c69:	44 89 f8             	mov    %r15d,%eax
  403c6c:	31 ff                	xor    %edi,%edi
  403c6e:	e9 e5 f4 ff ff       	jmp    403158 <fmt_fp+0x458>
  403c73:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403c78:	e9 44 f4 ff ff       	jmp    4030c1 <fmt_fp+0x3c1>
  403c7d:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403c84:	0f 8f 5d 09 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  403c8a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403c91:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403c95:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403c9b:	45 29 ca             	sub    %r9d,%r10d
  403c9e:	41 83 ce 20          	or     $0x20,%r14d
  403ca2:	41 83 fe 66          	cmp    $0x66,%r14d
  403ca6:	0f 85 3d fb ff ff    	jne    4037e9 <fmt_fp+0xae9>
  403cac:	44 39 d7             	cmp    %r10d,%edi
  403caf:	0f 8f 32 09 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  403cb5:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403cbb:	85 ff                	test   %edi,%edi
  403cbd:	0f 8e 02 fc ff ff    	jle    4038c5 <fmt_fp+0xbc5>
  403cc3:	41 01 f9             	add    %edi,%r9d
  403cc6:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403ccc:	e9 f4 fb ff ff       	jmp    4038c5 <fmt_fp+0xbc5>
  403cd1:	41 8b 02             	mov    (%r10),%eax
  403cd4:	49 89 f9             	mov    %rdi,%r9
  403cd7:	83 e0 20             	and    $0x20,%eax
  403cda:	e9 ba fd ff ff       	jmp    403a99 <fmt_fp+0xd99>
  403cdf:	45 85 ff             	test   %r15d,%r15d
  403ce2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403ce8:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403cec:	41 39 f9             	cmp    %edi,%r9d
  403cef:	0f 8e e9 04 00 00    	jle    4041de <fmt_fp+0x14de>
  403cf5:	83 ff fc             	cmp    $0xfffffffc,%edi
  403cf8:	0f 8c e0 04 00 00    	jl     4041de <fmt_fp+0x14de>
  403cfe:	8d 47 01             	lea    0x1(%rdi),%eax
  403d01:	45 89 cf             	mov    %r9d,%r15d
  403d04:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403d0b:	41 29 c7             	sub    %eax,%r15d
  403d0e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403d15:	0f 85 9c 05 00 00    	jne    4042b7 <fmt_fp+0x15b7>
  403d1b:	be 09 00 00 00       	mov    $0x9,%esi
  403d20:	49 39 dc             	cmp    %rbx,%r12
  403d23:	73 1f                	jae    403d44 <fmt_fp+0x1044>
  403d25:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403d29:	45 85 c9             	test   %r9d,%r9d
  403d2c:	74 16                	je     403d44 <fmt_fp+0x1044>
  403d2e:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403d35:	d1 c8                	ror    $1,%eax
  403d37:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403d3c:	0f 86 e0 04 00 00    	jbe    404222 <fmt_fp+0x1522>
  403d42:	31 f6                	xor    %esi,%esi
  403d44:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403d4b:	41 83 ce 20          	or     $0x20,%r14d
  403d4f:	41 83 fe 66          	cmp    $0x66,%r14d
  403d53:	0f 85 ac 05 00 00    	jne    404305 <fmt_fp+0x1605>
  403d59:	48 89 d8             	mov    %rbx,%rax
  403d5c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403d63:	ba 00 00 00 00       	mov    $0x0,%edx
  403d68:	48 c1 f8 02          	sar    $0x2,%rax
  403d6c:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403d71:	48 29 f0             	sub    %rsi,%rax
  403d74:	48 0f 48 c2          	cmovs  %rdx,%rax
  403d78:	49 63 d7             	movslq %r15d,%rdx
  403d7b:	48 39 d0             	cmp    %rdx,%rax
  403d7e:	48 0f 4f c2          	cmovg  %rdx,%rax
  403d82:	48 85 c0             	test   %rax,%rax
  403d85:	0f 84 66 08 00 00    	je     4045f1 <fmt_fp+0x18f1>
  403d8b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403d91:	0f 8f 50 08 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  403d97:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403d9b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403da1:	41 89 c7             	mov    %eax,%r15d
  403da4:	45 29 ca             	sub    %r9d,%r10d
  403da7:	e9 00 ff ff ff       	jmp    403cac <fmt_fp+0xfac>
  403dac:	0f 1f 40 00          	nopl   0x0(%rax)
  403db0:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403db7:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403dbe:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403dc3:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403dca:	cc cc cc 
  403dcd:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403dd4:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403ddb:	66 0f 6e c7          	movd   %edi,%xmm0
  403ddf:	4c 39 e0             	cmp    %r12,%rax
  403de2:	49 89 c6             	mov    %rax,%r14
  403de5:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403dea:	4c 0f 46 e0          	cmovbe %rax,%r12
  403dee:	4c 89 e3             	mov    %r12,%rbx
  403df1:	0f 1f 40 00          	nopl   0x0(%rax)
  403df5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403dfc:	00 00 00 00 
  403e00:	41 8b 0c 24          	mov    (%r12),%ecx
  403e04:	48 85 c9             	test   %rcx,%rcx
  403e07:	0f 84 43 02 00 00    	je     404050 <fmt_fp+0x1350>
  403e0d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403e11:	48 89 f7             	mov    %rsi,%rdi
  403e14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e1b:	00 00 00 00 
  403e1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e26:	00 00 00 00 
  403e2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e31:	00 00 00 00 
  403e35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e3c:	00 00 00 00 
  403e40:	48 89 c8             	mov    %rcx,%rax
  403e43:	48 83 ef 01          	sub    $0x1,%rdi
  403e47:	49 f7 e5             	mul    %r13
  403e4a:	48 89 c8             	mov    %rcx,%rax
  403e4d:	48 c1 ea 03          	shr    $0x3,%rdx
  403e51:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403e55:	4d 01 c0             	add    %r8,%r8
  403e58:	4c 29 c0             	sub    %r8,%rax
  403e5b:	83 c0 30             	add    $0x30,%eax
  403e5e:	48 83 f9 09          	cmp    $0x9,%rcx
  403e62:	48 89 d1             	mov    %rdx,%rcx
  403e65:	88 07                	mov    %al,(%rdi)
  403e67:	77 d7                	ja     403e40 <fmt_fp+0x1140>
  403e69:	4c 39 e3             	cmp    %r12,%rbx
  403e6c:	0f 84 36 01 00 00    	je     403fa8 <fmt_fp+0x12a8>
  403e72:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403e76:	48 39 fa             	cmp    %rdi,%rdx
  403e79:	0f 83 32 01 00 00    	jae    403fb1 <fmt_fp+0x12b1>
  403e7f:	49 89 fa             	mov    %rdi,%r10
  403e82:	48 89 f8             	mov    %rdi,%rax
  403e85:	49 29 d2             	sub    %rdx,%r10
  403e88:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403e8c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403e90:	76 46                	jbe    403ed8 <fmt_fp+0x11d8>
  403e92:	4c 89 d6             	mov    %r10,%rsi
  403e95:	48 89 f9             	mov    %rdi,%rcx
  403e98:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403e9c:	48 29 f1             	sub    %rsi,%rcx
  403e9f:	40 f6 c6 10          	test   $0x10,%sil
  403ea3:	74 1b                	je     403ec0 <fmt_fp+0x11c0>
  403ea5:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403ea9:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403ead:	48 39 c8             	cmp    %rcx,%rax
  403eb0:	74 1e                	je     403ed0 <fmt_fp+0x11d0>
  403eb2:	0f 1f 00             	nopl   (%rax)
  403eb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ebc:	00 00 00 00 
  403ec0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403ec4:	48 83 e8 20          	sub    $0x20,%rax
  403ec8:	0f 11 00             	movups %xmm0,(%rax)
  403ecb:	48 39 c8             	cmp    %rcx,%rax
  403ece:	75 f0                	jne    403ec0 <fmt_fp+0x11c0>
  403ed0:	4c 39 d6             	cmp    %r10,%rsi
  403ed3:	74 3b                	je     403f10 <fmt_fp+0x1210>
  403ed5:	48 29 f7             	sub    %rsi,%rdi
  403ed8:	48 89 d0             	mov    %rdx,%rax
  403edb:	48 f7 d0             	not    %rax
  403ede:	48 01 f8             	add    %rdi,%rax
  403ee1:	48 83 ef 01          	sub    $0x1,%rdi
  403ee5:	c6 07 30             	movb   $0x30,(%rdi)
  403ee8:	48 39 fa             	cmp    %rdi,%rdx
  403eeb:	73 23                	jae    403f10 <fmt_fp+0x1210>
  403eed:	a8 01                	test   $0x1,%al
  403eef:	74 0f                	je     403f00 <fmt_fp+0x1200>
  403ef1:	48 83 ef 01          	sub    $0x1,%rdi
  403ef5:	c6 07 30             	movb   $0x30,(%rdi)
  403ef8:	48 39 fa             	cmp    %rdi,%rdx
  403efb:	73 13                	jae    403f10 <fmt_fp+0x1210>
  403efd:	0f 1f 00             	nopl   (%rax)
  403f00:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403f04:	48 83 ef 02          	sub    $0x2,%rdi
  403f08:	c6 07 30             	movb   $0x30,(%rdi)
  403f0b:	48 39 fa             	cmp    %rdi,%rdx
  403f0e:	72 f0                	jb     403f00 <fmt_fp+0x1200>
  403f10:	be 09 00 00 00       	mov    $0x9,%esi
  403f15:	48 89 d7             	mov    %rdx,%rdi
  403f18:	41 f6 07 20          	testb  $0x20,(%r15)
  403f1c:	0f 84 9c 00 00 00    	je     403fbe <fmt_fp+0x12be>
  403f22:	49 83 c4 04          	add    $0x4,%r12
  403f26:	4d 39 e6             	cmp    %r12,%r14
  403f29:	0f 83 d1 fe ff ff    	jae    403e00 <fmt_fp+0x1100>
  403f2f:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403f36:	49 89 dc             	mov    %rbx,%r12
  403f39:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403f40:	45 85 ff             	test   %r15d,%r15d
  403f43:	0f 85 36 04 00 00    	jne    40437f <fmt_fp+0x167f>
  403f49:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403f50:	0f 84 d8 fb ff ff    	je     403b2e <fmt_fp+0xe2e>
  403f56:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403f5d:	f6 02 20             	testb  $0x20,(%rdx)
  403f60:	0f 85 c8 fb ff ff    	jne    403b2e <fmt_fp+0xe2e>
  403f66:	be 01 00 00 00       	mov    $0x1,%esi
  403f6b:	48 8d 3d 29 42 00 00 	lea    0x4229(%rip),%rdi        # 40819b <_fini+0x10f7>
  403f72:	e8 19 26 00 00       	call   406590 <__fwritex>
  403f77:	41 83 c7 09          	add    $0x9,%r15d
  403f7b:	41 83 ff 09          	cmp    $0x9,%r15d
  403f7f:	0f 8e a9 fb ff ff    	jle    403b2e <fmt_fp+0xe2e>
  403f85:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403f8c:	b9 09 00 00 00       	mov    $0x9,%ecx
  403f91:	44 89 fa             	mov    %r15d,%edx
  403f94:	be 30 00 00 00       	mov    $0x30,%esi
  403f99:	e8 42 ec ff ff       	call   402be0 <pad.part.0>
  403f9e:	e9 8b fb ff ff       	jmp    403b2e <fmt_fp+0xe2e>
  403fa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403fa8:	48 39 f7             	cmp    %rsi,%rdi
  403fab:	0f 84 b0 00 00 00    	je     404061 <fmt_fp+0x1361>
  403fb1:	48 29 fe             	sub    %rdi,%rsi
  403fb4:	41 f6 07 20          	testb  $0x20,(%r15)
  403fb8:	0f 85 64 ff ff ff    	jne    403f22 <fmt_fp+0x1222>
  403fbe:	4c 89 fa             	mov    %r15,%rdx
  403fc1:	e8 ca 25 00 00       	call   406590 <__fwritex>
  403fc6:	66 0f 6f 05 62 45 00 	movdqa 0x4562(%rip),%xmm0        # 408530 <states+0x210>
  403fcd:	00 
  403fce:	e9 4f ff ff ff       	jmp    403f22 <fmt_fp+0x1222>
  403fd3:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403fda:	f6 00 20             	testb  $0x20,(%rax)
  403fdd:	0f 85 4e f9 ff ff    	jne    403931 <fmt_fp+0xc31>
  403fe3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  403fea:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403ff1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403ff8:	e8 93 25 00 00       	call   406590 <__fwritex>
  403ffd:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404003:	35 00 00 01 00       	xor    $0x10000,%eax
  404008:	a9 00 20 01 00       	test   $0x12000,%eax
  40400d:	0f 85 1e f9 ff ff    	jne    403931 <fmt_fp+0xc31>
  404013:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  40401a:	0f 85 11 f9 ff ff    	jne    403931 <fmt_fp+0xc31>
  404020:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  404026:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40402c:	be 30 00 00 00       	mov    $0x30,%esi
  404031:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404038:	e8 a3 eb ff ff       	call   402be0 <pad.part.0>
  40403d:	e9 ef f8 ff ff       	jmp    403931 <fmt_fp+0xc31>
  404042:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  404049:	f6 00 20             	testb  $0x20,(%rax)
  40404c:	75 af                	jne    403ffd <fmt_fp+0x12fd>
  40404e:	eb 93                	jmp    403fe3 <fmt_fp+0x12e3>
  404050:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  404054:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  404058:	4c 39 e3             	cmp    %r12,%rbx
  40405b:	0f 85 1e fe ff ff    	jne    403e7f <fmt_fp+0x117f>
  404061:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  404065:	be 01 00 00 00       	mov    $0x1,%esi
  40406a:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  40406e:	e9 a5 fe ff ff       	jmp    403f18 <fmt_fp+0x1218>
  404073:	d9 05 77 44 00 00    	flds   0x4477(%rip)        # 4084f0 <states+0x1d0>
  404079:	d9 05 81 44 00 00    	flds   0x4481(%rip)        # 408500 <states+0x1e0>
  40407f:	b8 0e 00 00 00       	mov    $0xe,%eax
  404084:	44 29 f8             	sub    %r15d,%eax
  404087:	90                   	nop
  404088:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40408f:	00 
  404090:	dc c9                	fmul   %st,%st(1)
  404092:	83 e8 01             	sub    $0x1,%eax
  404095:	73 f9                	jae    404090 <fmt_fp+0x1390>
  404097:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  40409e:	80 38 2d             	cmpb   $0x2d,(%rax)
  4040a1:	0f 84 c6 04 00 00    	je     40456d <fmt_fp+0x186d>
  4040a7:	d9 ca                	fxch   %st(2)
  4040a9:	d8 c1                	fadd   %st(1),%st
  4040ab:	de e1                	fsubp  %st,%st(1)
  4040ad:	d9 c9                	fxch   %st(1)
  4040af:	e9 9d f3 ff ff       	jmp    403451 <fmt_fp+0x751>
  4040b4:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  4040bb:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  4040bf:	48 89 c2             	mov    %rax,%rdx
  4040c2:	48 29 fe             	sub    %rdi,%rsi
  4040c5:	e8 c6 24 00 00       	call   406590 <__fwritex>
  4040ca:	e9 5f fa ff ff       	jmp    403b2e <fmt_fp+0xe2e>
  4040cf:	44 01 d8             	add    %r11d,%eax
  4040d2:	89 06                	mov    %eax,(%rsi)
  4040d4:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  4040d9:	0f 86 3e 05 00 00    	jbe    40461d <fmt_fp+0x191d>
  4040df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4040e6:	00 00 00 00 
  4040ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4040f1:	00 00 00 00 
  4040f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4040fc:	00 00 00 00 
  404100:	48 89 f2             	mov    %rsi,%rdx
  404103:	48 83 ee 04          	sub    $0x4,%rsi
  404107:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  40410e:	4c 39 e6             	cmp    %r12,%rsi
  404111:	73 0d                	jae    404120 <fmt_fp+0x1420>
  404113:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  40411a:	00 00 
  40411c:	49 83 ec 04          	sub    $0x4,%r12
  404120:	8b 06                	mov    (%rsi),%eax
  404122:	83 c0 01             	add    $0x1,%eax
  404125:	89 06                	mov    %eax,(%rsi)
  404127:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  40412c:	77 d2                	ja     404100 <fmt_fp+0x1400>
  40412e:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  404135:	41 8b 0c 24          	mov    (%r12),%ecx
  404139:	4c 29 e0             	sub    %r12,%rax
  40413c:	48 c1 f8 02          	sar    $0x2,%rax
  404140:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  404143:	83 f9 09             	cmp    $0x9,%ecx
  404146:	0f 86 43 f6 ff ff    	jbe    40378f <fmt_fp+0xa8f>
  40414c:	b8 0a 00 00 00       	mov    $0xa,%eax
  404151:	0f 1f 40 00          	nopl   0x0(%rax)
  404155:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40415c:	00 00 00 00 
  404160:	8d 04 80             	lea    (%rax,%rax,4),%eax
  404163:	83 c7 01             	add    $0x1,%edi
  404166:	01 c0                	add    %eax,%eax
  404168:	39 c1                	cmp    %eax,%ecx
  40416a:	73 f4                	jae    404160 <fmt_fp+0x1460>
  40416c:	e9 1e f6 ff ff       	jmp    40378f <fmt_fp+0xa8f>
  404171:	be 01 00 00 00       	mov    $0x1,%esi
  404176:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40417c:	e9 d7 ec ff ff       	jmp    402e58 <fmt_fp+0x158>
  404181:	be 01 00 00 00       	mov    $0x1,%esi
  404186:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40418c:	e9 b6 ec ff ff       	jmp    402e47 <fmt_fp+0x147>
  404191:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404198:	f6 07 20             	testb  $0x20,(%rdi)
  40419b:	0f 84 9d f4 ff ff    	je     40363e <fmt_fp+0x93e>
  4041a1:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4041a7:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4041ad:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4041b4:	35 00 00 01 00       	xor    $0x10000,%eax
  4041b9:	a9 00 20 01 00       	test   $0x12000,%eax
  4041be:	75 0d                	jne    4041cd <fmt_fp+0x14cd>
  4041c0:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  4041c7:	0f 84 bd f4 ff ff    	je     40368a <fmt_fp+0x98a>
  4041cd:	45 29 f7             	sub    %r14d,%r15d
  4041d0:	45 85 ff             	test   %r15d,%r15d
  4041d3:	0f 8e 9d f1 ff ff    	jle    403376 <fmt_fp+0x676>
  4041d9:	e9 64 f1 ff ff       	jmp    403342 <fmt_fp+0x642>
  4041de:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  4041e5:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  4041e9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4041f0:	0f 85 9c 00 00 00    	jne    404292 <fmt_fp+0x1592>
  4041f6:	49 39 dc             	cmp    %rbx,%r12
  4041f9:	0f 83 01 01 00 00    	jae    404300 <fmt_fp+0x1600>
  4041ff:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404203:	45 85 c9             	test   %r9d,%r9d
  404206:	0f 84 f4 00 00 00    	je     404300 <fmt_fp+0x1600>
  40420c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404213:	31 f6                	xor    %esi,%esi
  404215:	d1 c8                	ror    $1,%eax
  404217:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40421c:	0f 87 e3 00 00 00    	ja     404305 <fmt_fp+0x1605>
  404222:	31 f6                	xor    %esi,%esi
  404224:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404229:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40422c:	44 89 c8             	mov    %r9d,%eax
  40422f:	31 d2                	xor    %edx,%edx
  404231:	83 c6 01             	add    $0x1,%esi
  404234:	01 c9                	add    %ecx,%ecx
  404236:	f7 f1                	div    %ecx
  404238:	85 d2                	test   %edx,%edx
  40423a:	74 ed                	je     404229 <fmt_fp+0x1529>
  40423c:	48 63 f6             	movslq %esi,%rsi
  40423f:	e9 00 fb ff ff       	jmp    403d44 <fmt_fp+0x1044>
  404244:	db 2d d6 42 00 00    	fldt   0x42d6(%rip)        # 408520 <states+0x200>
  40424a:	d9 05 a8 42 00 00    	flds   0x42a8(%rip)        # 4084f8 <states+0x1d8>
  404250:	e9 fe f4 ff ff       	jmp    403753 <fmt_fp+0xa53>
  404255:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404259:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40425d:	e9 54 f2 ff ff       	jmp    4034b6 <fmt_fp+0x7b6>
  404262:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  404268:	75 0f                	jne    404279 <fmt_fp+0x1579>
  40426a:	49 39 f4             	cmp    %rsi,%r12
  40426d:	73 0a                	jae    404279 <fmt_fp+0x1579>
  40426f:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  404273:	0f 85 ba f4 ff ff    	jne    403733 <fmt_fp+0xa33>
  404279:	d9 05 75 42 00 00    	flds   0x4275(%rip)        # 4084f4 <states+0x1d4>
  40427f:	e9 b5 f4 ff ff       	jmp    403739 <fmt_fp+0xa39>
  404284:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404289:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40428d:	e9 4d f3 ff ff       	jmp    4035df <fmt_fp+0x8df>
  404292:	45 85 ff             	test   %r15d,%r15d
  404295:	0f 85 24 03 00 00    	jne    4045bf <fmt_fp+0x18bf>
  40429b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4042a2:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4042a8:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4042ae:	41 83 ce 20          	or     $0x20,%r14d
  4042b2:	e9 3d f5 ff ff       	jmp    4037f4 <fmt_fp+0xaf4>
  4042b7:	45 85 ff             	test   %r15d,%r15d
  4042ba:	0f 85 bd f9 ff ff    	jne    403c7d <fmt_fp+0xf7d>
  4042c0:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4042c7:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4042cd:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4042d3:	41 83 ce 20          	or     $0x20,%r14d
  4042d7:	41 83 fe 66          	cmp    $0x66,%r14d
  4042db:	0f 85 08 f5 ff ff    	jne    4037e9 <fmt_fp+0xae9>
  4042e1:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  4042e7:	0f 84 fa 02 00 00    	je     4045e7 <fmt_fp+0x18e7>
  4042ed:	85 ff                	test   %edi,%edi
  4042ef:	0f 85 ce f9 ff ff    	jne    403cc3 <fmt_fp+0xfc3>
  4042f5:	e9 df f5 ff ff       	jmp    4038d9 <fmt_fp+0xbd9>
  4042fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404300:	be 09 00 00 00       	mov    $0x9,%esi
  404305:	48 89 d8             	mov    %rbx,%rax
  404308:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40430f:	48 63 d7             	movslq %edi,%rdx
  404312:	48 c1 f8 02          	sar    $0x2,%rax
  404316:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40431b:	48 01 d0             	add    %rdx,%rax
  40431e:	ba 00 00 00 00       	mov    $0x0,%edx
  404323:	48 29 f0             	sub    %rsi,%rax
  404326:	48 0f 48 c2          	cmovs  %rdx,%rax
  40432a:	49 63 d7             	movslq %r15d,%rdx
  40432d:	48 39 d0             	cmp    %rdx,%rax
  404330:	48 0f 4f c2          	cmovg  %rdx,%rax
  404334:	41 89 c7             	mov    %eax,%r15d
  404337:	48 85 c0             	test   %rax,%rax
  40433a:	0f 85 3d f9 ff ff    	jne    403c7d <fmt_fp+0xf7d>
  404340:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404347:	41 83 ce 20          	or     $0x20,%r14d
  40434b:	41 83 fe 66          	cmp    $0x66,%r14d
  40434f:	0f 84 9c 02 00 00    	je     4045f1 <fmt_fp+0x18f1>
  404355:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40435b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404361:	45 31 ff             	xor    %r15d,%r15d
  404364:	e9 80 f4 ff ff       	jmp    4037e9 <fmt_fp+0xae9>
  404369:	44 39 d7             	cmp    %r10d,%edi
  40436c:	0f 8f 75 02 00 00    	jg     4045e7 <fmt_fp+0x18e7>
  404372:	85 ff                	test   %edi,%edi
  404374:	0f 8f 49 f9 ff ff    	jg     403cc3 <fmt_fp+0xfc3>
  40437a:	e9 5a f5 ff ff       	jmp    4038d9 <fmt_fp+0xbd9>
  40437f:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404386:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40438b:	48 89 f8             	mov    %rdi,%rax
  40438e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404392:	4c 29 e0             	sub    %r12,%rax
  404395:	48 39 d1             	cmp    %rdx,%rcx
  404398:	ba 00 00 00 00       	mov    $0x0,%edx
  40439d:	48 0f 42 c2          	cmovb  %rdx,%rax
  4043a1:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  4043a6:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4043ad:	f6 00 20             	testb  $0x20,(%rax)
  4043b0:	0f 84 70 02 00 00    	je     404626 <fmt_fp+0x1926>
  4043b6:	45 85 ff             	test   %r15d,%r15d
  4043b9:	0f 8e b8 fb ff ff    	jle    403f77 <fmt_fp+0x1277>
  4043bf:	49 39 de             	cmp    %rbx,%r14
  4043c2:	0f 83 af fb ff ff    	jae    403f77 <fmt_fp+0x1277>
  4043c8:	b8 30 30 30 30       	mov    $0x30303030,%eax
  4043cd:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4043d1:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  4043d5:	49 89 d9             	mov    %rbx,%r9
  4043d8:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  4043df:	66 0f 6e c0          	movd   %eax,%xmm0
  4043e3:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  4043ea:	cc cc cc 
  4043ed:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4043f2:	0f 1f 00             	nopl   (%rax)
  4043f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4043fc:	00 00 00 00 
  404400:	41 8b 0e             	mov    (%r14),%ecx
  404403:	4c 89 c7             	mov    %r8,%rdi
  404406:	48 85 c9             	test   %rcx,%rcx
  404409:	74 67                	je     404472 <fmt_fp+0x1772>
  40440b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404412:	00 00 
  404414:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40441b:	00 00 00 00 
  40441f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404426:	00 00 00 00 
  40442a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404431:	00 00 00 00 
  404435:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40443c:	00 00 00 00 
  404440:	48 89 c8             	mov    %rcx,%rax
  404443:	48 83 ef 01          	sub    $0x1,%rdi
  404447:	49 f7 e4             	mul    %r12
  40444a:	48 89 c8             	mov    %rcx,%rax
  40444d:	48 c1 ea 03          	shr    $0x3,%rdx
  404451:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404455:	48 01 f6             	add    %rsi,%rsi
  404458:	48 29 f0             	sub    %rsi,%rax
  40445b:	83 c0 30             	add    $0x30,%eax
  40445e:	48 83 f9 09          	cmp    $0x9,%rcx
  404462:	48 89 d1             	mov    %rdx,%rcx
  404465:	88 07                	mov    %al,(%rdi)
  404467:	77 d7                	ja     404440 <fmt_fp+0x1740>
  404469:	49 39 fd             	cmp    %rdi,%r13
  40446c:	0f 83 91 00 00 00    	jae    404503 <fmt_fp+0x1803>
  404472:	48 89 fe             	mov    %rdi,%rsi
  404475:	48 89 f8             	mov    %rdi,%rax
  404478:	4c 29 ee             	sub    %r13,%rsi
  40447b:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  40447f:	48 83 fa 0e          	cmp    $0xe,%rdx
  404483:	76 43                	jbe    4044c8 <fmt_fp+0x17c8>
  404485:	48 89 f1             	mov    %rsi,%rcx
  404488:	48 89 fa             	mov    %rdi,%rdx
  40448b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40448f:	48 29 ca             	sub    %rcx,%rdx
  404492:	f6 c1 10             	test   $0x10,%cl
  404495:	74 19                	je     4044b0 <fmt_fp+0x17b0>
  404497:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40449b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40449f:	48 39 d0             	cmp    %rdx,%rax
  4044a2:	74 1c                	je     4044c0 <fmt_fp+0x17c0>
  4044a4:	90                   	nop
  4044a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044ac:	00 00 00 00 
  4044b0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  4044b4:	48 83 e8 20          	sub    $0x20,%rax
  4044b8:	0f 11 00             	movups %xmm0,(%rax)
  4044bb:	48 39 d0             	cmp    %rdx,%rax
  4044be:	75 f0                	jne    4044b0 <fmt_fp+0x17b0>
  4044c0:	48 39 f1             	cmp    %rsi,%rcx
  4044c3:	74 3b                	je     404500 <fmt_fp+0x1800>
  4044c5:	48 29 cf             	sub    %rcx,%rdi
  4044c8:	4c 89 e8             	mov    %r13,%rax
  4044cb:	48 f7 d0             	not    %rax
  4044ce:	48 01 f8             	add    %rdi,%rax
  4044d1:	48 83 ef 01          	sub    $0x1,%rdi
  4044d5:	c6 07 30             	movb   $0x30,(%rdi)
  4044d8:	49 39 fd             	cmp    %rdi,%r13
  4044db:	73 23                	jae    404500 <fmt_fp+0x1800>
  4044dd:	a8 01                	test   $0x1,%al
  4044df:	74 0f                	je     4044f0 <fmt_fp+0x17f0>
  4044e1:	48 83 ef 01          	sub    $0x1,%rdi
  4044e5:	c6 07 30             	movb   $0x30,(%rdi)
  4044e8:	49 39 fd             	cmp    %rdi,%r13
  4044eb:	73 13                	jae    404500 <fmt_fp+0x1800>
  4044ed:	0f 1f 00             	nopl   (%rax)
  4044f0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  4044f4:	48 83 ef 02          	sub    $0x2,%rdi
  4044f8:	c6 07 30             	movb   $0x30,(%rdi)
  4044fb:	49 39 fd             	cmp    %rdi,%r13
  4044fe:	72 f0                	jb     4044f0 <fmt_fp+0x17f0>
  404500:	4c 89 ef             	mov    %r13,%rdi
  404503:	f6 03 20             	testb  $0x20,(%rbx)
  404506:	74 28                	je     404530 <fmt_fp+0x1830>
  404508:	49 83 c6 04          	add    $0x4,%r14
  40450c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404510:	4d 39 ce             	cmp    %r9,%r14
  404513:	0f 83 62 fa ff ff    	jae    403f7b <fmt_fp+0x127b>
  404519:	85 c0                	test   %eax,%eax
  40451b:	0f 8e 5a fa ff ff    	jle    403f7b <fmt_fp+0x127b>
  404521:	41 89 c7             	mov    %eax,%r15d
  404524:	e9 d7 fe ff ff       	jmp    404400 <fmt_fp+0x1700>
  404529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404530:	b8 09 00 00 00       	mov    $0x9,%eax
  404535:	48 89 da             	mov    %rbx,%rdx
  404538:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  40453f:	41 39 c7             	cmp    %eax,%r15d
  404542:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404549:	41 0f 4e c7          	cmovle %r15d,%eax
  40454d:	48 63 f0             	movslq %eax,%rsi
  404550:	e8 3b 20 00 00       	call   406590 <__fwritex>
  404555:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40455c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404563:	66 0f 6f 05 c5 3f 00 	movdqa 0x3fc5(%rip),%xmm0        # 408530 <states+0x210>
  40456a:	00 
  40456b:	eb 9b                	jmp    404508 <fmt_fp+0x1808>
  40456d:	d9 ca                	fxch   %st(2)
  40456f:	d9 e0                	fchs
  404571:	d8 e1                	fsub   %st(1),%st
  404573:	de c1                	faddp  %st,%st(1)
  404575:	d9 e0                	fchs
  404577:	d9 c9                	fxch   %st(1)
  404579:	e9 d3 ee ff ff       	jmp    403451 <fmt_fp+0x751>
  40457e:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404582:	48 39 c3             	cmp    %rax,%rbx
  404585:	0f 85 c2 f1 ff ff    	jne    40374d <fmt_fp+0xa4d>
  40458b:	d9 e8                	fld1
  40458d:	e9 c1 f1 ff ff       	jmp    403753 <fmt_fp+0xa53>
  404592:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404596:	4c 89 e9             	mov    %r13,%rcx
  404599:	e9 e2 f2 ff ff       	jmp    403880 <fmt_fp+0xb80>
  40459e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  4045a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4045a9:	e9 32 ec ff ff       	jmp    4031e0 <fmt_fp+0x4e0>
  4045ae:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4045b2:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  4045b6:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4045ba:	e9 01 ef ff ff       	jmp    4034c0 <fmt_fp+0x7c0>
  4045bf:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  4045c6:	74 1f                	je     4045e7 <fmt_fp+0x18e7>
  4045c8:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4045cf:	41 83 c1 01          	add    $0x1,%r9d
  4045d3:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4045d8:	44 29 c8             	sub    %r9d,%eax
  4045db:	41 83 ce 20          	or     $0x20,%r14d
  4045df:	4c 63 d0             	movslq %eax,%r10
  4045e2:	e9 0d f2 ff ff       	jmp    4037f4 <fmt_fp+0xaf4>
  4045e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4045ec:	e9 ee ec ff ff       	jmp    4032df <fmt_fp+0x5df>
  4045f1:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  4045f7:	74 ee                	je     4045e7 <fmt_fp+0x18e7>
  4045f9:	45 31 ff             	xor    %r15d,%r15d
  4045fc:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404602:	85 ff                	test   %edi,%edi
  404604:	0f 8f b9 f6 ff ff    	jg     403cc3 <fmt_fp+0xfc3>
  40460a:	e9 ca f2 ff ff       	jmp    4038d9 <fmt_fp+0xbd9>
  40460f:	dd d8                	fstp   %st(0)
  404611:	dd d8                	fstp   %st(0)
  404613:	dd d8                	fstp   %st(0)
  404615:	49 89 c0             	mov    %rax,%r8
  404618:	e9 82 ef ff ff       	jmp    40359f <fmt_fp+0x89f>
  40461d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  404621:	e9 08 fb ff ff       	jmp    40412e <fmt_fp+0x142e>
  404626:	48 89 c2             	mov    %rax,%rdx
  404629:	be 01 00 00 00       	mov    $0x1,%esi
  40462e:	48 8d 3d 66 3b 00 00 	lea    0x3b66(%rip),%rdi        # 40819b <_fini+0x10f7>
  404635:	e8 56 1f 00 00       	call   406590 <__fwritex>
  40463a:	e9 77 fd ff ff       	jmp    4043b6 <fmt_fp+0x16b6>
  40463f:	e8 dc e0 ff ff       	call   402720 <__stack_chk_fail>
  404644:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40464b:	00 00 00 
  40464e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404655:	00 00 00 
  404658:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40465f:	00 00 00 
  404662:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404669:	00 00 00 
  40466c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404673:	00 00 00 
  404676:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40467d:	00 00 00 

0000000000404680 <printf_core>:
  404680:	55                   	push   %rbp
  404681:	48 89 e5             	mov    %rsp,%rbp
  404684:	41 57                	push   %r15
  404686:	4c 8d 3d 93 3c 00 00 	lea    0x3c93(%rip),%r15        # 408320 <states>
  40468d:	41 56                	push   %r14
  40468f:	49 89 f6             	mov    %rsi,%r14
  404692:	41 55                	push   %r13
  404694:	45 31 ed             	xor    %r13d,%r13d
  404697:	41 54                	push   %r12
  404699:	53                   	push   %rbx
  40469a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  4046a1:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  4046a5:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  4046ac:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  4046b3:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  4046ba:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  4046c1:	00 00 
  4046c3:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  4046c7:	45 31 c0             	xor    %r8d,%r8d
  4046ca:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  4046d1:	00 00 00 
  4046d4:	41 0f b6 06          	movzbl (%r14),%eax
  4046d8:	45 01 c5             	add    %r8d,%r13d
  4046db:	84 c0                	test   %al,%al
  4046dd:	0f 84 ad 06 00 00    	je     404d90 <printf_core+0x710>
  4046e3:	4d 89 f2             	mov    %r14,%r10
  4046e6:	eb 25                	jmp    40470d <printf_core+0x8d>
  4046e8:	66 90                	xchg   %ax,%ax
  4046ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046f1:	00 00 00 00 
  4046f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046fc:	00 00 00 00 
  404700:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404705:	49 83 c2 01          	add    $0x1,%r10
  404709:	84 c0                	test   %al,%al
  40470b:	74 73                	je     404780 <printf_core+0x100>
  40470d:	3c 25                	cmp    $0x25,%al
  40470f:	75 ef                	jne    404700 <printf_core+0x80>
  404711:	4c 89 d3             	mov    %r10,%rbx
  404714:	eb 17                	jmp    40472d <printf_core+0xad>
  404716:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40471d:	00 00 00 
  404720:	48 83 c3 02          	add    $0x2,%rbx
  404724:	49 83 c2 01          	add    $0x1,%r10
  404728:	80 3b 25             	cmpb   $0x25,(%rbx)
  40472b:	75 06                	jne    404733 <printf_core+0xb3>
  40472d:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  404731:	74 ed                	je     404720 <printf_core+0xa0>
  404733:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  404739:	4d 29 f2             	sub    %r14,%r10
  40473c:	45 29 eb             	sub    %r13d,%r11d
  40473f:	49 63 c3             	movslq %r11d,%rax
  404742:	49 39 c2             	cmp    %rax,%r10
  404745:	0f 8f 15 03 00 00    	jg     404a60 <printf_core+0x3e0>
  40474b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40474f:	45 89 d0             	mov    %r10d,%r8d
  404752:	48 85 c0             	test   %rax,%rax
  404755:	74 09                	je     404760 <printf_core+0xe0>
  404757:	f6 00 20             	testb  $0x20,(%rax)
  40475a:	0f 84 10 03 00 00    	je     404a70 <printf_core+0x3f0>
  404760:	45 85 d2             	test   %r10d,%r10d
  404763:	74 2b                	je     404790 <printf_core+0x110>
  404765:	45 39 c3             	cmp    %r8d,%r11d
  404768:	0f 8c f2 02 00 00    	jl     404a60 <printf_core+0x3e0>
  40476e:	49 89 de             	mov    %rbx,%r14
  404771:	e9 5e ff ff ff       	jmp    4046d4 <printf_core+0x54>
  404776:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40477d:	00 00 00 
  404780:	3c 25                	cmp    $0x25,%al
  404782:	74 8d                	je     404711 <printf_core+0x91>
  404784:	4c 89 d3             	mov    %r10,%rbx
  404787:	eb aa                	jmp    404733 <printf_core+0xb3>
  404789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404790:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404794:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404797:	89 c8                	mov    %ecx,%eax
  404799:	83 ff 09             	cmp    $0x9,%edi
  40479c:	77 1a                	ja     4047b8 <printf_core+0x138>
  40479e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  4047a2:	0f 84 e5 03 00 00    	je     404b8d <printf_core+0x50d>
  4047a8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4047ac:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4047b1:	eb 1a                	jmp    4047cd <printf_core+0x14d>
  4047b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4047b8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4047bc:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4047c1:	83 e9 20             	sub    $0x20,%ecx
  4047c4:	83 f9 1f             	cmp    $0x1f,%ecx
  4047c7:	0f 87 b5 05 00 00    	ja     404d82 <printf_core+0x702>
  4047cd:	45 31 e4             	xor    %r12d,%r12d
  4047d0:	be 89 28 01 00       	mov    $0x12889,%esi
  4047d5:	eb 48                	jmp    40481f <printf_core+0x19f>
  4047d7:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4047de:	00 
  4047df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047e6:	00 00 00 00 
  4047ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047f1:	00 00 00 00 
  4047f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047fc:	00 00 00 00 
  404800:	b8 01 00 00 00       	mov    $0x1,%eax
  404805:	48 83 c2 01          	add    $0x1,%rdx
  404809:	d3 e0                	shl    %cl,%eax
  40480b:	0f be 0a             	movsbl (%rdx),%ecx
  40480e:	41 09 c4             	or     %eax,%r12d
  404811:	89 c8                	mov    %ecx,%eax
  404813:	83 e9 20             	sub    $0x20,%ecx
  404816:	83 f9 1f             	cmp    $0x1f,%ecx
  404819:	0f 87 49 01 00 00    	ja     404968 <printf_core+0x2e8>
  40481f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  404822:	0f a3 ce             	bt     %ecx,%esi
  404825:	72 d9                	jb     404800 <printf_core+0x180>
  404827:	3c 2a                	cmp    $0x2a,%al
  404829:	0f 85 39 01 00 00    	jne    404968 <printf_core+0x2e8>
  40482f:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  404834:	48 89 c8             	mov    %rcx,%rax
  404837:	83 e9 30             	sub    $0x30,%ecx
  40483a:	83 f9 09             	cmp    $0x9,%ecx
  40483d:	0f 86 0d 03 00 00    	jbe    404b50 <printf_core+0x4d0>
  404843:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404849:	85 c9                	test   %ecx,%ecx
  40484b:	0f 85 dc 00 00 00    	jne    40492d <printf_core+0x2ad>
  404851:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404855:	45 89 d1             	mov    %r10d,%r9d
  404858:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40485d:	0f 84 58 01 00 00    	je     4049bb <printf_core+0x33b>
  404863:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  40486a:	8b 06                	mov    (%rsi),%eax
  40486c:	83 f8 2f             	cmp    $0x2f,%eax
  40486f:	0f 87 4a 03 00 00    	ja     404bbf <printf_core+0x53f>
  404875:	89 c2                	mov    %eax,%edx
  404877:	83 c0 08             	add    $0x8,%eax
  40487a:	48 03 56 10          	add    0x10(%rsi),%rdx
  40487e:	89 06                	mov    %eax,(%rsi)
  404880:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404887:	00 00 00 
  40488a:	44 8b 0a             	mov    (%rdx),%r9d
  40488d:	44 89 e2             	mov    %r12d,%edx
  404890:	0f b6 03             	movzbl (%rbx),%eax
  404893:	80 ce 20             	or     $0x20,%dh
  404896:	45 85 c9             	test   %r9d,%r9d
  404899:	44 0f 48 e2          	cmovs  %edx,%r12d
  40489d:	44 89 ca             	mov    %r9d,%edx
  4048a0:	f7 da                	neg    %edx
  4048a2:	45 85 c9             	test   %r9d,%r9d
  4048a5:	44 0f 48 ca          	cmovs  %edx,%r9d
  4048a9:	3c 2e                	cmp    $0x2e,%al
  4048ab:	0f 84 12 01 00 00    	je     4049c3 <printf_core+0x343>
  4048b1:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  4048b8:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4048bf:	31 c0                	xor    %eax,%eax
  4048c1:	eb 5f                	jmp    404922 <printf_core+0x2a2>
  4048c3:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4048c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048d0:	00 00 00 00 
  4048d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048db:	00 00 00 00 
  4048df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048e6:	00 00 00 00 
  4048ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048f1:	00 00 00 00 
  4048f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048fc:	00 00 00 00 
  404900:	89 c1                	mov    %eax,%ecx
  404902:	48 63 d2             	movslq %edx,%rdx
  404905:	48 83 c3 01          	add    $0x1,%rbx
  404909:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  40490d:	4c 01 fe             	add    %r15,%rsi
  404910:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404914:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404917:	83 fa 07             	cmp    $0x7,%edx
  40491a:	0f 87 90 01 00 00    	ja     404ab0 <printf_core+0x430>
  404920:	89 f0                	mov    %esi,%eax
  404922:	0f be 13             	movsbl (%rbx),%edx
  404925:	83 ea 41             	sub    $0x41,%edx
  404928:	83 fa 39             	cmp    $0x39,%edx
  40492b:	76 d3                	jbe    404900 <printf_core+0x280>
  40492d:	e8 de 16 00 00       	call   406010 <__errno_location>
  404932:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  404938:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  40493e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404942:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404949:	00 00 
  40494b:	0f 85 a2 0f 00 00    	jne    4058f3 <printf_core+0x1273>
  404951:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404955:	44 89 d8             	mov    %r11d,%eax
  404958:	5b                   	pop    %rbx
  404959:	41 5c                	pop    %r12
  40495b:	41 5d                	pop    %r13
  40495d:	41 5e                	pop    %r14
  40495f:	41 5f                	pop    %r15
  404961:	5d                   	pop    %rbp
  404962:	c3                   	ret
  404963:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404968:	0f be 0a             	movsbl (%rdx),%ecx
  40496b:	45 89 d1             	mov    %r10d,%r9d
  40496e:	48 89 d3             	mov    %rdx,%rbx
  404971:	89 c8                	mov    %ecx,%eax
  404973:	83 e9 30             	sub    $0x30,%ecx
  404976:	83 f9 09             	cmp    $0x9,%ecx
  404979:	77 40                	ja     4049bb <printf_core+0x33b>
  40497b:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404982:	0f 8f c8 00 00 00    	jg     404a50 <printf_core+0x3d0>
  404988:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  40498c:	83 e8 30             	sub    $0x30,%eax
  40498f:	0f be c0             	movsbl %al,%eax
  404992:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404998:	39 f0                	cmp    %esi,%eax
  40499a:	0f 8f b0 00 00 00    	jg     404a50 <printf_core+0x3d0>
  4049a0:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4049a4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  4049a8:	29 c8                	sub    %ecx,%eax
  4049aa:	41 89 c1             	mov    %eax,%r9d
  4049ad:	89 d0                	mov    %edx,%eax
  4049af:	83 ea 30             	sub    $0x30,%edx
  4049b2:	83 fa 09             	cmp    $0x9,%edx
  4049b5:	0f 86 3d 0f 00 00    	jbe    4058f8 <printf_core+0x1278>
  4049bb:	3c 2e                	cmp    $0x2e,%al
  4049bd:	0f 85 ee fe ff ff    	jne    4048b1 <printf_core+0x231>
  4049c3:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4049c7:	3c 2a                	cmp    $0x2a,%al
  4049c9:	0f 85 11 02 00 00    	jne    404be0 <printf_core+0x560>
  4049cf:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  4049d3:	89 c2                	mov    %eax,%edx
  4049d5:	83 e8 30             	sub    $0x30,%eax
  4049d8:	83 f8 09             	cmp    $0x9,%eax
  4049db:	77 0a                	ja     4049e7 <printf_core+0x367>
  4049dd:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  4049e1:	0f 84 4f 03 00 00    	je     404d36 <printf_core+0x6b6>
  4049e7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  4049ed:	85 c0                	test   %eax,%eax
  4049ef:	0f 85 38 ff ff ff    	jne    40492d <printf_core+0x2ad>
  4049f5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4049fa:	0f 84 6f 03 00 00    	je     404d6f <printf_core+0x6ef>
  404a00:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404a07:	8b 06                	mov    (%rsi),%eax
  404a09:	83 f8 2f             	cmp    $0x2f,%eax
  404a0c:	0f 87 60 02 00 00    	ja     404c72 <printf_core+0x5f2>
  404a12:	89 c2                	mov    %eax,%edx
  404a14:	83 c0 08             	add    $0x8,%eax
  404a17:	48 03 56 10          	add    0x10(%rsi),%rdx
  404a1b:	89 06                	mov    %eax,(%rsi)
  404a1d:	8b 02                	mov    (%rdx),%eax
  404a1f:	89 45 80             	mov    %eax,-0x80(%rbp)
  404a22:	f7 d0                	not    %eax
  404a24:	c1 e8 1f             	shr    $0x1f,%eax
  404a27:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404a2d:	48 83 c3 02          	add    $0x2,%rbx
  404a31:	e9 89 fe ff ff       	jmp    4048bf <printf_core+0x23f>
  404a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404a3d:	00 00 00 
  404a40:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404a44:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404a48:	83 e8 30             	sub    $0x30,%eax
  404a4b:	83 f8 09             	cmp    $0x9,%eax
  404a4e:	77 10                	ja     404a60 <printf_core+0x3e0>
  404a50:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404a54:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404a58:	83 ea 30             	sub    $0x30,%edx
  404a5b:	83 fa 09             	cmp    $0x9,%edx
  404a5e:	76 e0                	jbe    404a40 <printf_core+0x3c0>
  404a60:	e8 ab 15 00 00       	call   406010 <__errno_location>
  404a65:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404a6b:	e9 c8 fe ff ff       	jmp    404938 <printf_core+0x2b8>
  404a70:	49 63 f2             	movslq %r10d,%rsi
  404a73:	48 89 c2             	mov    %rax,%rdx
  404a76:	4c 89 f7             	mov    %r14,%rdi
  404a79:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404a80:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404a87:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404a8b:	e8 00 1b 00 00       	call   406590 <__fwritex>
  404a90:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404a97:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404a9e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404aa2:	e9 b9 fc ff ff       	jmp    404760 <printf_core+0xe0>
  404aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404aae:	00 00 
  404ab0:	85 f6                	test   %esi,%esi
  404ab2:	0f 84 75 fe ff ff    	je     40492d <printf_core+0x2ad>
  404ab8:	83 fe 1b             	cmp    $0x1b,%esi
  404abb:	0f 84 e5 00 00 00    	je     404ba6 <printf_core+0x526>
  404ac1:	83 ff ff             	cmp    $0xffffffff,%edi
  404ac4:	0f 84 01 02 00 00    	je     404ccb <printf_core+0x64b>
  404aca:	48 63 ff             	movslq %edi,%rdi
  404acd:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404ad2:	0f 84 b2 01 00 00    	je     404c8a <printf_core+0x60a>
  404ad8:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404adf:	48 c1 e7 04          	shl    $0x4,%rdi
  404ae3:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404ae8:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404aec:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404af0:	f6 07 20             	testb  $0x20,(%rdi)
  404af3:	0f 85 3f fe ff ff    	jne    404938 <printf_core+0x2b8>
  404af9:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404afd:	89 d6                	mov    %edx,%esi
  404aff:	85 c0                	test   %eax,%eax
  404b01:	74 13                	je     404b16 <printf_core+0x496>
  404b03:	89 d7                	mov    %edx,%edi
  404b05:	83 e6 df             	and    $0xffffffdf,%esi
  404b08:	83 e7 0f             	and    $0xf,%edi
  404b0b:	40 0f be f6          	movsbl %sil,%esi
  404b0f:	40 80 ff 03          	cmp    $0x3,%dil
  404b13:	0f 44 d6             	cmove  %esi,%edx
  404b16:	44 89 e6             	mov    %r12d,%esi
  404b19:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404b1f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404b26:	44 0f 45 e6          	cmovne %esi,%r12d
  404b2a:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404b2d:	83 fe 37             	cmp    $0x37,%esi
  404b30:	0f 87 c2 02 00 00    	ja     404df8 <printf_core+0x778>
  404b36:	48 8d 3d bb 36 00 00 	lea    0x36bb(%rip),%rdi        # 4081f8 <_fini+0x1154>
  404b3d:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404b41:	48 01 fe             	add    %rdi,%rsi
  404b44:	3e ff e6             	notrack jmp *%rsi
  404b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404b4e:	00 00 
  404b50:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404b54:	0f 84 ab 01 00 00    	je     404d05 <printf_core+0x685>
  404b5a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404b60:	85 f6                	test   %esi,%esi
  404b62:	0f 85 c5 fd ff ff    	jne    40492d <printf_core+0x2ad>
  404b68:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404b6c:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b71:	0f 85 ec fc ff ff    	jne    404863 <printf_core+0x1e3>
  404b77:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404b7e:	45 89 d1             	mov    %r10d,%r9d
  404b81:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404b88:	e9 32 fd ff ff       	jmp    4048bf <printf_core+0x23f>
  404b8d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404b91:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404b95:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404b9c:	00 00 00 
  404b9f:	89 c8                	mov    %ecx,%eax
  404ba1:	e9 1b fc ff ff       	jmp    4047c1 <printf_core+0x141>
  404ba6:	83 ff ff             	cmp    $0xffffffff,%edi
  404ba9:	0f 85 7e fd ff ff    	jne    40492d <printf_core+0x2ad>
  404baf:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bb4:	0f 85 32 ff ff ff    	jne    404aec <printf_core+0x46c>
  404bba:	e9 af fb ff ff       	jmp    40476e <printf_core+0xee>
  404bbf:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404bc6:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404bca:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404bce:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404bd2:	e9 a9 fc ff ff       	jmp    404880 <printf_core+0x200>
  404bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404bde:	00 00 
  404be0:	0f be d0             	movsbl %al,%edx
  404be3:	48 83 c3 01          	add    $0x1,%rbx
  404be7:	83 ea 30             	sub    $0x30,%edx
  404bea:	83 fa 09             	cmp    $0x9,%edx
  404bed:	0f 87 93 0b 00 00    	ja     405786 <printf_core+0x1106>
  404bf3:	44 89 d2             	mov    %r10d,%edx
  404bf6:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404bfc:	0f 8f fe 0c 00 00    	jg     405900 <printf_core+0x1280>
  404c02:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404c05:	83 e8 30             	sub    $0x30,%eax
  404c08:	0f be c0             	movsbl %al,%eax
  404c0b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404c11:	39 c2                	cmp    %eax,%edx
  404c13:	0f 8d 87 00 00 00    	jge    404ca0 <printf_core+0x620>
  404c19:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404c1d:	83 e8 30             	sub    $0x30,%eax
  404c20:	83 f8 09             	cmp    $0x9,%eax
  404c23:	0f 87 8b 0a 00 00    	ja     4056b4 <printf_core+0x1034>
  404c29:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404c2d:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404c31:	83 ea 30             	sub    $0x30,%edx
  404c34:	83 fa 09             	cmp    $0x9,%edx
  404c37:	77 20                	ja     404c59 <printf_core+0x5d9>
  404c39:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404c3d:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404c41:	83 ea 30             	sub    $0x30,%edx
  404c44:	83 fa 09             	cmp    $0x9,%edx
  404c47:	77 13                	ja     404c5c <printf_core+0x5dc>
  404c49:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404c4d:	48 83 c0 02          	add    $0x2,%rax
  404c51:	83 ea 30             	sub    $0x30,%edx
  404c54:	83 fa 09             	cmp    $0x9,%edx
  404c57:	76 e0                	jbe    404c39 <printf_core+0x5b9>
  404c59:	48 89 c3             	mov    %rax,%rbx
  404c5c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404c63:	00 00 00 
  404c66:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404c6d:	e9 4d fc ff ff       	jmp    4048bf <printf_core+0x23f>
  404c72:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404c79:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404c7d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404c81:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404c85:	e9 93 fd ff ff       	jmp    404a1d <printf_core+0x39d>
  404c8a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404c91:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404c94:	e9 d5 fa ff ff       	jmp    40476e <printf_core+0xee>
  404c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ca0:	48 83 c3 01          	add    $0x1,%rbx
  404ca4:	29 c8                	sub    %ecx,%eax
  404ca6:	0f be 0b             	movsbl (%rbx),%ecx
  404ca9:	89 c2                	mov    %eax,%edx
  404cab:	89 c8                	mov    %ecx,%eax
  404cad:	83 e9 30             	sub    $0x30,%ecx
  404cb0:	83 f9 09             	cmp    $0x9,%ecx
  404cb3:	0f 86 3d ff ff ff    	jbe    404bf6 <printf_core+0x576>
  404cb9:	89 55 80             	mov    %edx,-0x80(%rbp)
  404cbc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404cc3:	00 00 00 
  404cc6:	e9 f4 fb ff ff       	jmp    4048bf <printf_core+0x23f>
  404ccb:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404cd0:	0f 84 15 0c 00 00    	je     4058eb <printf_core+0x126b>
  404cd6:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404cdd:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404ce1:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404ce7:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404cee:	e8 ed dc ff ff       	call   4029e0 <pop_arg>
  404cf3:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404cf9:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404d00:	e9 e7 fd ff ff       	jmp    404aec <printf_core+0x46c>
  404d05:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404d09:	48 83 e8 30          	sub    $0x30,%rax
  404d0d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d12:	0f 84 b6 09 00 00    	je     4056ce <printf_core+0x104e>
  404d18:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404d1f:	48 c1 e0 04          	shl    $0x4,%rax
  404d23:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404d2a:	00 00 00 
  404d2d:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404d31:	e9 57 fb ff ff       	jmp    40488d <printf_core+0x20d>
  404d36:	48 0f be c2          	movsbq %dl,%rax
  404d3a:	48 83 e8 30          	sub    $0x30,%rax
  404d3e:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d43:	0f 84 a9 09 00 00    	je     4056f2 <printf_core+0x1072>
  404d49:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404d50:	48 c1 e0 04          	shl    $0x4,%rax
  404d54:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404d58:	89 45 80             	mov    %eax,-0x80(%rbp)
  404d5b:	f7 d0                	not    %eax
  404d5d:	c1 e8 1f             	shr    $0x1f,%eax
  404d60:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404d66:	48 83 c3 04          	add    $0x4,%rbx
  404d6a:	e9 50 fb ff ff       	jmp    4048bf <printf_core+0x23f>
  404d6f:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404d73:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d7a:	00 00 00 
  404d7d:	e9 ab fc ff ff       	jmp    404a2d <printf_core+0x3ad>
  404d82:	48 89 d3             	mov    %rdx,%rbx
  404d85:	45 89 d1             	mov    %r10d,%r9d
  404d88:	45 31 e4             	xor    %r12d,%r12d
  404d8b:	e9 2b fc ff ff       	jmp    4049bb <printf_core+0x33b>
  404d90:	45 89 eb             	mov    %r13d,%r11d
  404d93:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d98:	0f 85 a0 fb ff ff    	jne    40493e <printf_core+0x2be>
  404d9e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404da5:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404dab:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404db1:	48 83 c7 10          	add    $0x10,%rdi
  404db5:	85 c9                	test   %ecx,%ecx
  404db7:	0f 84 2e 0b 00 00    	je     4058eb <printf_core+0x126b>
  404dbd:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404dc4:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404dcb:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404dcf:	85 f6                	test   %esi,%esi
  404dd1:	0f 84 90 0a 00 00    	je     405867 <printf_core+0x11e7>
  404dd7:	e8 04 dc ff ff       	call   4029e0 <pop_arg>
  404ddc:	49 83 c0 01          	add    $0x1,%r8
  404de0:	48 83 c7 10          	add    $0x10,%rdi
  404de4:	49 83 f8 0a          	cmp    $0xa,%r8
  404de8:	75 e1                	jne    404dcb <printf_core+0x74b>
  404dea:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404df0:	e9 49 fb ff ff       	jmp    40493e <printf_core+0x2be>
  404df5:	0f 1f 00             	nopl   (%rax)
  404df8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404dfc:	4c 29 f0             	sub    %r14,%rax
  404dff:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404e06:	48 89 c7             	mov    %rax,%rdi
  404e09:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404e0d:	48 39 c7             	cmp    %rax,%rdi
  404e10:	0f 8e da 07 00 00    	jle    4055f0 <printf_core+0xf70>
  404e16:	48 89 f8             	mov    %rdi,%rax
  404e19:	48 8d 3d 7d 33 00 00 	lea    0x337d(%rip),%rdi        # 40819d <_fini+0x10f9>
  404e20:	89 45 80             	mov    %eax,-0x80(%rbp)
  404e23:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404e2a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404e30:	44 89 d0             	mov    %r10d,%eax
  404e33:	66 90                	xchg   %ax,%ax
  404e35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e3c:	00 00 00 00 
  404e40:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404e46:	41 39 c9             	cmp    %ecx,%r9d
  404e49:	41 89 c8             	mov    %ecx,%r8d
  404e4c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404e50:	45 39 c3             	cmp    %r8d,%r11d
  404e53:	0f 8c 07 fc ff ff    	jl     404a60 <printf_core+0x3e0>
  404e59:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404e60:	0f 85 e2 06 00 00    	jne    405548 <printf_core+0xec8>
  404e66:	41 39 c9             	cmp    %ecx,%r9d
  404e69:	0f 8e 40 07 00 00    	jle    4055af <printf_core+0xf2f>
  404e6f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404e73:	44 89 c2             	mov    %r8d,%edx
  404e76:	be 20 00 00 00       	mov    $0x20,%esi
  404e7b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404e81:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404e88:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404e8f:	e8 4c dd ff ff       	call   402be0 <pad.part.0>
  404e94:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404e98:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404e9f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404ea6:	f6 00 20             	testb  $0x20,(%rax)
  404ea9:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404eaf:	0f 84 07 07 00 00    	je     4055bc <printf_core+0xf3c>
  404eb5:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404ebc:	89 c1                	mov    %eax,%ecx
  404ebe:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404ec1:	0f 8d a7 f8 ff ff    	jge    40476e <printf_core+0xee>
  404ec7:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404ece:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404ed5:	8b 55 80             	mov    -0x80(%rbp),%edx
  404ed8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404edc:	be 30 00 00 00       	mov    $0x30,%esi
  404ee1:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404ee8:	e8 f3 dc ff ff       	call   402be0 <pad.part.0>
  404eed:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404ef4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404ef8:	f6 00 20             	testb  $0x20,(%rax)
  404efb:	75 1b                	jne    404f18 <printf_core+0x898>
  404efd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404f01:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404f08:	4c 89 f7             	mov    %r14,%rdi
  404f0b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404f0f:	e8 7c 16 00 00       	call   406590 <__fwritex>
  404f14:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f18:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404f1f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404f26:	0f 85 42 f8 ff ff    	jne    40476e <printf_core+0xee>
  404f2c:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404f33:	0f 85 35 f8 ff ff    	jne    40476e <printf_core+0xee>
  404f39:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f3d:	44 89 c2             	mov    %r8d,%edx
  404f40:	be 20 00 00 00       	mov    $0x20,%esi
  404f45:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404f49:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f4f:	e8 8c dc ff ff       	call   402be0 <pad.part.0>
  404f54:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f58:	e9 11 f8 ff ff       	jmp    40476e <printf_core+0xee>
  404f5d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f61:	45 85 c0             	test   %r8d,%r8d
  404f64:	79 0d                	jns    404f73 <printf_core+0x8f3>
  404f66:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404f6d:	0f 85 ed fa ff ff    	jne    404a60 <printf_core+0x3e0>
  404f73:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404f7a:	41 89 d0             	mov    %edx,%r8d
  404f7d:	44 89 ce             	mov    %r9d,%esi
  404f80:	44 89 e1             	mov    %r12d,%ecx
  404f83:	ff 75 98             	push   -0x68(%rbp)
  404f86:	ff 75 90             	push   -0x70(%rbp)
  404f89:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f8d:	8b 55 80             	mov    -0x80(%rbp),%edx
  404f90:	e8 6b dd ff ff       	call   402d00 <fmt_fp>
  404f95:	5e                   	pop    %rsi
  404f96:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404f9d:	83 f8 ff             	cmp    $0xffffffff,%eax
  404fa0:	41 89 c0             	mov    %eax,%r8d
  404fa3:	5f                   	pop    %rdi
  404fa4:	0f 85 bb f7 ff ff    	jne    404765 <printf_core+0xe5>
  404faa:	e9 b1 fa ff ff       	jmp    404a60 <printf_core+0x3e0>
  404faf:	90                   	nop
  404fb0:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  404fb4:	48 85 f6             	test   %rsi,%rsi
  404fb7:	0f 88 4f 08 00 00    	js     40580c <printf_core+0x118c>
  404fbd:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  404fc4:	0f 85 61 08 00 00    	jne    40582b <printf_core+0x11ab>
  404fca:	41 f6 c4 01          	test   $0x1,%r12b
  404fce:	0f 85 7b 08 00 00    	jne    40584f <printf_core+0x11cf>
  404fd4:	48 8d 3d c2 31 00 00 	lea    0x31c2(%rip),%rdi        # 40819d <_fini+0x10f9>
  404fdb:	44 89 d0             	mov    %r10d,%eax
  404fde:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404fe5:	48 85 f6             	test   %rsi,%rsi
  404fe8:	0f 84 55 08 00 00    	je     405843 <printf_core+0x11c3>
  404fee:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  404ff5:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404ff9:	89 c7                	mov    %eax,%edi
  404ffb:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  405002:	cc cc cc 
  405005:	4d 89 c6             	mov    %r8,%r14
  405008:	90                   	nop
  405009:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405010:	00 00 00 00 
  405014:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40501b:	00 00 00 00 
  40501f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405026:	00 00 00 00 
  40502a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405031:	00 00 00 00 
  405035:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40503c:	00 00 00 00 
  405040:	48 89 f0             	mov    %rsi,%rax
  405043:	49 83 ee 01          	sub    $0x1,%r14
  405047:	48 f7 e1             	mul    %rcx
  40504a:	48 89 f0             	mov    %rsi,%rax
  40504d:	48 c1 ea 03          	shr    $0x3,%rdx
  405051:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  405055:	4d 01 d2             	add    %r10,%r10
  405058:	4c 29 d0             	sub    %r10,%rax
  40505b:	83 c0 30             	add    $0x30,%eax
  40505e:	48 83 fe 09          	cmp    $0x9,%rsi
  405062:	48 89 d6             	mov    %rdx,%rsi
  405065:	41 88 06             	mov    %al,(%r14)
  405068:	77 d6                	ja     405040 <printf_core+0x9c0>
  40506a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405071:	89 f8                	mov    %edi,%eax
  405073:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405076:	85 ff                	test   %edi,%edi
  405078:	79 0d                	jns    405087 <printf_core+0xa07>
  40507a:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  405081:	0f 85 d9 f9 ff ff    	jne    404a60 <printf_core+0x3e0>
  405087:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40508d:	44 89 e2             	mov    %r12d,%edx
  405090:	8b 75 80             	mov    -0x80(%rbp),%esi
  405093:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  405099:	85 c9                	test   %ecx,%ecx
  40509b:	44 0f 45 e2          	cmovne %edx,%r12d
  40509f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  4050a4:	0f 94 c2             	sete   %dl
  4050a7:	85 f6                	test   %esi,%esi
  4050a9:	75 08                	jne    4050b3 <printf_core+0xa33>
  4050ab:	84 d2                	test   %dl,%dl
  4050ad:	0f 85 e4 05 00 00    	jne    405697 <printf_core+0x1017>
  4050b3:	4c 89 c7             	mov    %r8,%rdi
  4050b6:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  4050ba:	0f b6 d2             	movzbl %dl,%edx
  4050bd:	4c 29 f7             	sub    %r14,%rdi
  4050c0:	48 01 fa             	add    %rdi,%rdx
  4050c3:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  4050ca:	48 39 ca             	cmp    %rcx,%rdx
  4050cd:	48 0f 4c d1          	cmovl  %rcx,%rdx
  4050d1:	48 63 ca             	movslq %edx,%rcx
  4050d4:	48 39 cf             	cmp    %rcx,%rdi
  4050d7:	0f 4e fa             	cmovle %edx,%edi
  4050da:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  4050df:	29 c2                	sub    %eax,%edx
  4050e1:	89 7d 80             	mov    %edi,-0x80(%rbp)
  4050e4:	39 fa                	cmp    %edi,%edx
  4050e6:	0f 8c 74 f9 ff ff    	jl     404a60 <printf_core+0x3e0>
  4050ec:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4050ef:	01 c7                	add    %eax,%edi
  4050f1:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  4050f7:	e9 44 fd ff ff       	jmp    404e40 <printf_core+0x7c0>
  4050fc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405100:	48 85 c0             	test   %rax,%rax
  405103:	0f 84 9a 02 00 00    	je     4053a3 <printf_core+0xd23>
  405109:	44 89 e7             	mov    %r12d,%edi
  40510c:	83 e7 08             	and    $0x8,%edi
  40510f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  405115:	89 d7                	mov    %edx,%edi
  405117:	83 e7 20             	and    $0x20,%edi
  40511a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  405120:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405124:	48 8d 35 d5 31 00 00 	lea    0x31d5(%rip),%rsi        # 408300 <xdigits>
  40512b:	4d 89 c6             	mov    %r8,%r14
  40512e:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405135:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40513c:	00 00 00 00 
  405140:	48 89 c1             	mov    %rax,%rcx
  405143:	49 83 ee 01          	sub    $0x1,%r14
  405147:	83 e1 0f             	and    $0xf,%ecx
  40514a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  40514e:	09 fa                	or     %edi,%edx
  405150:	48 c1 e8 04          	shr    $0x4,%rax
  405154:	41 88 16             	mov    %dl,(%r14)
  405157:	75 e7                	jne    405140 <printf_core+0xac0>
  405159:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40515f:	85 c0                	test   %eax,%eax
  405161:	0f 85 f9 05 00 00    	jne    405760 <printf_core+0x10e0>
  405167:	48 8d 3d 2f 30 00 00 	lea    0x302f(%rip),%rdi        # 40819d <_fini+0x10f9>
  40516e:	44 89 d0             	mov    %r10d,%eax
  405171:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405178:	e9 f6 fe ff ff       	jmp    405073 <printf_core+0x9f3>
  40517d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405181:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405185:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40518c:	48 85 d2             	test   %rdx,%rdx
  40518f:	0f 84 06 07 00 00    	je     40589b <printf_core+0x121b>
  405195:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40519c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  4051a0:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  4051a7:	31 db                	xor    %ebx,%ebx
  4051a9:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  4051b0:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  4051b4:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  4051bb:	49 89 ce             	mov    %rcx,%r14
  4051be:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  4051c2:	49 89 d5             	mov    %rdx,%r13
  4051c5:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  4051cc:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  4051d3:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  4051da:	eb 34                	jmp    405210 <printf_core+0xb90>
  4051dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4051e0:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  4051e7:	e8 24 10 00 00       	call   406210 <wctomb>
  4051ec:	85 c0                	test   %eax,%eax
  4051ee:	0f 88 44 f7 ff ff    	js     404938 <printf_core+0x2b8>
  4051f4:	4c 89 ea             	mov    %r13,%rdx
  4051f7:	48 98                	cltq
  4051f9:	48 29 da             	sub    %rbx,%rdx
  4051fc:	48 39 c2             	cmp    %rax,%rdx
  4051ff:	72 16                	jb     405217 <printf_core+0xb97>
  405201:	48 01 c3             	add    %rax,%rbx
  405204:	4d 63 ec             	movslq %r12d,%r13
  405207:	49 83 c6 04          	add    $0x4,%r14
  40520b:	4c 39 eb             	cmp    %r13,%rbx
  40520e:	73 07                	jae    405217 <printf_core+0xb97>
  405210:	41 8b 36             	mov    (%r14),%esi
  405213:	85 f6                	test   %esi,%esi
  405215:	75 c9                	jne    4051e0 <printf_core+0xb60>
  405217:	49 89 de             	mov    %rbx,%r14
  40521a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405221:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  405228:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  40522f:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  405236:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  40523d:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405241:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405248:	0f 87 12 f8 ff ff    	ja     404a60 <printf_core+0x3e0>
  40524e:	45 39 f1             	cmp    %r14d,%r9d
  405251:	44 89 f0             	mov    %r14d,%eax
  405254:	0f 9e c2             	setle  %dl
  405257:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40525e:	0f 95 c1             	setne  %cl
  405261:	08 d1                	or     %dl,%cl
  405263:	0f 84 5c 05 00 00    	je     4057c5 <printf_core+0x1145>
  405269:	4d 85 f6             	test   %r14,%r14
  40526c:	0f 84 96 06 00 00    	je     405908 <printf_core+0x1288>
  405272:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  405276:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  40527d:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405284:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40528b:	45 31 e4             	xor    %r12d,%r12d
  40528e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405295:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405299:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40529d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4052a4:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  4052ab:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  4052b1:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  4052b7:	eb 10                	jmp    4052c9 <printf_core+0xc49>
  4052b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4052c0:	4d 39 f4             	cmp    %r14,%r12
  4052c3:	0f 83 46 03 00 00    	jae    40560f <printf_core+0xf8f>
  4052c9:	8b 33                	mov    (%rbx),%esi
  4052cb:	85 f6                	test   %esi,%esi
  4052cd:	0f 84 3c 03 00 00    	je     40560f <printf_core+0xf8f>
  4052d3:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4052d7:	e8 34 0f 00 00       	call   406210 <wctomb>
  4052dc:	48 63 f0             	movslq %eax,%rsi
  4052df:	49 01 f4             	add    %rsi,%r12
  4052e2:	4d 39 e6             	cmp    %r12,%r14
  4052e5:	0f 82 24 03 00 00    	jb     40560f <printf_core+0xf8f>
  4052eb:	48 83 c3 04          	add    $0x4,%rbx
  4052ef:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4052f4:	75 ca                	jne    4052c0 <printf_core+0xc40>
  4052f6:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4052fa:	4c 89 ea             	mov    %r13,%rdx
  4052fd:	e8 8e 12 00 00       	call   406590 <__fwritex>
  405302:	eb bc                	jmp    4052c0 <printf_core+0xc40>
  405304:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405308:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40530c:	4d 89 c6             	mov    %r8,%r14
  40530f:	48 85 c0             	test   %rax,%rax
  405312:	74 21                	je     405335 <printf_core+0xcb5>
  405314:	90                   	nop
  405315:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40531c:	00 00 00 00 
  405320:	89 c2                	mov    %eax,%edx
  405322:	49 83 ee 01          	sub    $0x1,%r14
  405326:	83 e2 07             	and    $0x7,%edx
  405329:	83 c2 30             	add    $0x30,%edx
  40532c:	48 c1 e8 03          	shr    $0x3,%rax
  405330:	41 88 16             	mov    %dl,(%r14)
  405333:	75 eb                	jne    405320 <printf_core+0xca0>
  405335:	41 f6 c4 08          	test   $0x8,%r12b
  405339:	0f 84 28 fe ff ff    	je     405167 <printf_core+0xae7>
  40533f:	4c 89 c0             	mov    %r8,%rax
  405342:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405346:	4c 29 f0             	sub    %r14,%rax
  405349:	48 39 d0             	cmp    %rdx,%rax
  40534c:	0f 8c 15 fe ff ff    	jl     405167 <printf_core+0xae7>
  405352:	83 c0 01             	add    $0x1,%eax
  405355:	48 8d 3d 41 2e 00 00 	lea    0x2e41(%rip),%rdi        # 40819d <_fini+0x10f9>
  40535c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40535f:	44 89 d0             	mov    %r10d,%eax
  405362:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405369:	e9 05 fd ff ff       	jmp    405073 <printf_core+0x9f3>
  40536e:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405371:	b8 10 00 00 00       	mov    $0x10,%eax
  405376:	ba 78 00 00 00       	mov    $0x78,%edx
  40537b:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405382:	00 00 00 
  405385:	39 c7                	cmp    %eax,%edi
  405387:	0f 43 c7             	cmovae %edi,%eax
  40538a:	41 83 cc 08          	or     $0x8,%r12d
  40538e:	bf 20 00 00 00       	mov    $0x20,%edi
  405393:	89 45 80             	mov    %eax,-0x80(%rbp)
  405396:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40539a:	48 85 c0             	test   %rax,%rax
  40539d:	0f 85 77 fd ff ff    	jne    40511a <printf_core+0xa9a>
  4053a3:	48 8d 3d f3 2d 00 00 	lea    0x2df3(%rip),%rdi        # 40819d <_fini+0x10f9>
  4053aa:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4053ae:	44 89 d0             	mov    %r10d,%eax
  4053b1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4053b8:	4d 89 c6             	mov    %r8,%r14
  4053bb:	e9 b3 fc ff ff       	jmp    405073 <printf_core+0x9f3>
  4053c0:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  4053c4:	48 8d 05 dc 2d 00 00 	lea    0x2ddc(%rip),%rax        # 4081a7 <_fini+0x1103>
  4053cb:	4d 85 f6             	test   %r14,%r14
  4053ce:	4c 0f 44 f0          	cmove  %rax,%r14
  4053d2:	8b 45 80             	mov    -0x80(%rbp),%eax
  4053d5:	85 c0                	test   %eax,%eax
  4053d7:	0f 88 36 03 00 00    	js     405713 <printf_core+0x1093>
  4053dd:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  4053e1:	4c 89 f7             	mov    %r14,%rdi
  4053e4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4053eb:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4053f2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4053f9:	e8 82 07 00 00       	call   405b80 <strnlen>
  4053fe:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405405:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40540c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405413:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405417:	4c 29 f2             	sub    %r14,%rdx
  40541a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40541d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405424:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  40542b:	48 89 d7             	mov    %rdx,%rdi
  40542e:	48 63 d0             	movslq %eax,%rdx
  405431:	48 39 d7             	cmp    %rdx,%rdi
  405434:	0f 8e b9 01 00 00    	jle    4055f3 <printf_core+0xf73>
  40543a:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405441:	e9 d3 f9 ff ff       	jmp    404e19 <printf_core+0x799>
  405446:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40544a:	48 85 f6             	test   %rsi,%rsi
  40544d:	0f 85 46 03 00 00    	jne    405799 <printf_core+0x1119>
  405453:	48 8d 3d 43 2d 00 00 	lea    0x2d43(%rip),%rdi        # 40819d <_fini+0x10f9>
  40545a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40545e:	44 89 d0             	mov    %r10d,%eax
  405461:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405468:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40546f:	00 00 00 
  405472:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  405476:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40547d:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405484:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40548b:	01 00 00 00 
  40548f:	e9 ac f9 ff ff       	jmp    404e40 <printf_core+0x7c0>
  405494:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40549b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4054a2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4054a9:	e8 62 0b 00 00       	call   406010 <__errno_location>
  4054ae:	8b 38                	mov    (%rax),%edi
  4054b0:	e8 ab 0b 00 00       	call   406060 <strerror>
  4054b5:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4054bc:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4054c3:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  4054ca:	49 89 c6             	mov    %rax,%r14
  4054cd:	e9 00 ff ff ff       	jmp    4053d2 <printf_core+0xd52>
  4054d2:	83 f8 07             	cmp    $0x7,%eax
  4054d5:	0f 87 93 f2 ff ff    	ja     40476e <printf_core+0xee>
  4054db:	48 8d 15 f6 2d 00 00 	lea    0x2df6(%rip),%rdx        # 4082d8 <_fini+0x1234>
  4054e2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4054e6:	48 01 d0             	add    %rdx,%rax
  4054e9:	3e ff e0             	notrack jmp *%rax
  4054ec:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4054f0:	49 63 c5             	movslq %r13d,%rax
  4054f3:	48 89 02             	mov    %rax,(%rdx)
  4054f6:	e9 73 f2 ff ff       	jmp    40476e <printf_core+0xee>
  4054fb:	48 8d 3d 9b 2c 00 00 	lea    0x2c9b(%rip),%rdi        # 40819d <_fini+0x10f9>
  405502:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405506:	44 89 d0             	mov    %r10d,%eax
  405509:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405510:	e9 d0 fa ff ff       	jmp    404fe5 <printf_core+0x965>
  405515:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405519:	e9 35 ff ff ff       	jmp    405453 <printf_core+0xdd3>
  40551e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405522:	44 89 28             	mov    %r13d,(%rax)
  405525:	e9 44 f2 ff ff       	jmp    40476e <printf_core+0xee>
  40552a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40552e:	66 44 89 28          	mov    %r13w,(%rax)
  405532:	e9 37 f2 ff ff       	jmp    40476e <printf_core+0xee>
  405537:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40553b:	44 88 28             	mov    %r13b,(%rax)
  40553e:	e9 2b f2 ff ff       	jmp    40476e <printf_core+0xee>
  405543:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405548:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40554c:	f6 07 20             	testb  $0x20,(%rdi)
  40554f:	74 6b                	je     4055bc <printf_core+0xf3c>
  405551:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405557:	44 89 e0             	mov    %r12d,%eax
  40555a:	41 39 c9             	cmp    %ecx,%r9d
  40555d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405564:	35 00 00 01 00       	xor    $0x10000,%eax
  405569:	a9 00 20 01 00       	test   $0x12000,%eax
  40556e:	75 28                	jne    405598 <printf_core+0xf18>
  405570:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405577:	75 1f                	jne    405598 <printf_core+0xf18>
  405579:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40557d:	44 89 c2             	mov    %r8d,%edx
  405580:	be 30 00 00 00       	mov    $0x30,%esi
  405585:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40558c:	e8 4f d6 ff ff       	call   402be0 <pad.part.0>
  405591:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405598:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40559f:	89 c1                	mov    %eax,%ecx
  4055a1:	3b 45 80             	cmp    -0x80(%rbp),%eax
  4055a4:	0f 8d 4a f9 ff ff    	jge    404ef4 <printf_core+0x874>
  4055aa:	e9 26 f9 ff ff       	jmp    404ed5 <printf_core+0x855>
  4055af:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4055b3:	f6 07 20             	testb  $0x20,(%rdi)
  4055b6:	0f 85 f9 f8 ff ff    	jne    404eb5 <printf_core+0x835>
  4055bc:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  4055c0:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  4055c7:	48 63 f0             	movslq %eax,%rsi
  4055ca:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  4055d1:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  4055d8:	e8 b3 0f 00 00       	call   406590 <__fwritex>
  4055dd:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4055e4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4055eb:	e9 61 ff ff ff       	jmp    405551 <printf_core+0xed1>
  4055f0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4055f3:	48 8d 3d a3 2b 00 00 	lea    0x2ba3(%rip),%rdi        # 40819d <_fini+0x10f9>
  4055fa:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405600:	44 89 d0             	mov    %r10d,%eax
  405603:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40560a:	e9 31 f8 ff ff       	jmp    404e40 <printf_core+0x7c0>
  40560f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405616:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40561d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  405624:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  40562b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  405631:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  405638:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  40563f:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405646:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40564d:	75 39                	jne    405688 <printf_core+0x1008>
  40564f:	84 d2                	test   %dl,%dl
  405651:	75 35                	jne    405688 <printf_core+0x1008>
  405653:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405657:	89 c1                	mov    %eax,%ecx
  405659:	44 89 ca             	mov    %r9d,%edx
  40565c:	be 20 00 00 00       	mov    $0x20,%esi
  405661:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405668:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40566e:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405672:	e8 69 d5 ff ff       	call   402be0 <pad.part.0>
  405677:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40567e:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405684:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405688:	41 39 c1             	cmp    %eax,%r9d
  40568b:	41 0f 4d c1          	cmovge %r9d,%eax
  40568f:	41 89 c0             	mov    %eax,%r8d
  405692:	e9 ce f0 ff ff       	jmp    404765 <printf_core+0xe5>
  405697:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40569d:	4d 89 c6             	mov    %r8,%r14
  4056a0:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4056a4:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  4056ab:	00 00 00 00 
  4056af:	e9 8c f7 ff ff       	jmp    404e40 <printf_core+0x7c0>
  4056b4:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4056bb:	00 00 00 
  4056be:	48 83 c3 01          	add    $0x1,%rbx
  4056c2:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4056c9:	e9 f1 f1 ff ff       	jmp    4048bf <printf_core+0x23f>
  4056ce:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4056d5:	45 89 d1             	mov    %r10d,%r9d
  4056d8:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  4056df:	00 00 00 
  4056e2:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4056e9:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  4056ed:	e9 c9 f2 ff ff       	jmp    4049bb <printf_core+0x33b>
  4056f2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4056f9:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4056fd:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405704:	00 00 00 
  405707:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40570e:	e9 53 f6 ff ff       	jmp    404d66 <printf_core+0x6e6>
  405713:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405718:	4c 89 f7             	mov    %r14,%rdi
  40571b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40571f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  405726:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  40572d:	e8 4e 04 00 00       	call   405b80 <strnlen>
  405732:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  405736:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40573d:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405741:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405748:	80 3a 00             	cmpb   $0x0,(%rdx)
  40574b:	0f 84 c6 fc ff ff    	je     405417 <printf_core+0xd97>
  405751:	e9 0a f3 ff ff       	jmp    404a60 <printf_core+0x3e0>
  405756:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40575d:	00 00 00 
  405760:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  405766:	48 8d 15 30 2a 00 00 	lea    0x2a30(%rip),%rdx        # 40819d <_fini+0x10f9>
  40576d:	c1 f8 04             	sar    $0x4,%eax
  405770:	48 98                	cltq
  405772:	48 01 d0             	add    %rdx,%rax
  405775:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40577c:	b8 02 00 00 00       	mov    $0x2,%eax
  405781:	e9 ed f8 ff ff       	jmp    405073 <printf_core+0x9f3>
  405786:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40578a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405791:	00 00 00 
  405794:	e9 26 f1 ff ff       	jmp    4048bf <printf_core+0x23f>
  405799:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40579d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  4057a0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4057a7:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  4057ae:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4057b2:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4057b9:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4057c0:	e9 d0 f9 ff ff       	jmp    405195 <printf_core+0xb15>
  4057c5:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4057c9:	44 89 ca             	mov    %r9d,%edx
  4057cc:	44 89 f1             	mov    %r14d,%ecx
  4057cf:	be 20 00 00 00       	mov    $0x20,%esi
  4057d4:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  4057db:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4057df:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  4057e6:	e8 f5 d3 ff ff       	call   402be0 <pad.part.0>
  4057eb:	4d 85 f6             	test   %r14,%r14
  4057ee:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4057f2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4057f8:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  4057ff:	0f 84 83 fe ff ff    	je     405688 <printf_core+0x1008>
  405805:	31 d2                	xor    %edx,%edx
  405807:	e9 66 fa ff ff       	jmp    405272 <printf_core+0xbf2>
  40580c:	48 f7 de             	neg    %rsi
  40580f:	48 8d 3d 87 29 00 00 	lea    0x2987(%rip),%rdi        # 40819d <_fini+0x10f9>
  405816:	b8 01 00 00 00       	mov    $0x1,%eax
  40581b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40581f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405826:	e9 c3 f7 ff ff       	jmp    404fee <printf_core+0x96e>
  40582b:	48 8d 3d 6c 29 00 00 	lea    0x296c(%rip),%rdi        # 40819e <_fini+0x10fa>
  405832:	b8 01 00 00 00       	mov    $0x1,%eax
  405837:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40583e:	e9 a2 f7 ff ff       	jmp    404fe5 <printf_core+0x965>
  405843:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405847:	4d 89 c6             	mov    %r8,%r14
  40584a:	e9 24 f8 ff ff       	jmp    405073 <printf_core+0x9f3>
  40584f:	48 8d 3d 49 29 00 00 	lea    0x2949(%rip),%rdi        # 40819f <_fini+0x10fb>
  405856:	b8 01 00 00 00       	mov    $0x1,%eax
  40585b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405862:	e9 7e f7 ff ff       	jmp    404fe5 <printf_core+0x965>
  405867:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40586e:	eb 1e                	jmp    40588e <printf_core+0x120e>
  405870:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40587c:	00 00 00 00 
  405880:	49 83 c0 01          	add    $0x1,%r8
  405884:	49 83 f8 0a          	cmp    $0xa,%r8
  405888:	0f 84 5c f5 ff ff    	je     404dea <printf_core+0x76a>
  40588e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405892:	85 d2                	test   %edx,%edx
  405894:	74 ea                	je     405880 <printf_core+0x1200>
  405896:	e9 92 f0 ff ff       	jmp    40492d <printf_core+0x2ad>
  40589b:	45 85 c9             	test   %r9d,%r9d
  40589e:	0f 94 c0             	sete   %al
  4058a1:	89 c2                	mov    %eax,%edx
  4058a3:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4058aa:	75 5c                	jne    405908 <printf_core+0x1288>
  4058ac:	84 c0                	test   %al,%al
  4058ae:	75 58                	jne    405908 <printf_core+0x1288>
  4058b0:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4058b4:	44 89 ca             	mov    %r9d,%edx
  4058b7:	31 c9                	xor    %ecx,%ecx
  4058b9:	be 20 00 00 00       	mov    $0x20,%esi
  4058be:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4058c5:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4058c9:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4058d0:	e8 0b d3 ff ff       	call   402be0 <pad.part.0>
  4058d5:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4058db:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4058df:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4058e6:	e9 9d fd ff ff       	jmp    405688 <printf_core+0x1008>
  4058eb:	45 31 db             	xor    %r11d,%r11d
  4058ee:	e9 4b f0 ff ff       	jmp    40493e <printf_core+0x2be>
  4058f3:	e8 28 ce ff ff       	call   402720 <__stack_chk_fail>
  4058f8:	48 89 da             	mov    %rbx,%rdx
  4058fb:	e9 7b f0 ff ff       	jmp    40497b <printf_core+0x2fb>
  405900:	48 89 d8             	mov    %rbx,%rax
  405903:	e9 31 f3 ff ff       	jmp    404c39 <printf_core+0x5b9>
  405908:	44 89 d0             	mov    %r10d,%eax
  40590b:	e9 2f fd ff ff       	jmp    40563f <printf_core+0xfbf>

0000000000405910 <vfprintf>:
  405910:	f3 0f 1e fa          	endbr64
  405914:	55                   	push   %rbp
  405915:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405919:	48 89 e5             	mov    %rsp,%rbp
  40591c:	41 57                	push   %r15
  40591e:	41 56                	push   %r14
  405920:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  405927:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  40592e:	41 55                	push   %r13
  405930:	4c 89 f1             	mov    %r14,%rcx
  405933:	49 89 fd             	mov    %rdi,%r13
  405936:	31 ff                	xor    %edi,%edi
  405938:	41 54                	push   %r12
  40593a:	53                   	push   %rbx
  40593b:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405942:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405949:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405950:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405957:	00 00 
  405959:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40595d:	31 c0                	xor    %eax,%eax
  40595f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405966:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  40596d:	00 00 00 00 
  405971:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405978:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  40597f:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405983:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  40598a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  40598e:	48 89 da             	mov    %rbx,%rdx
  405991:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405998:	e8 e3 ec ff ff       	call   404680 <printf_core>
  40599d:	85 c0                	test   %eax,%eax
  40599f:	0f 88 68 01 00 00    	js     405b0d <vfprintf+0x1fd>
  4059a5:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  4059ac:	31 db                	xor    %ebx,%ebx
  4059ae:	85 c0                	test   %eax,%eax
  4059b0:	78 0a                	js     4059bc <vfprintf+0xac>
  4059b2:	4c 89 ef             	mov    %r13,%rdi
  4059b5:	e8 86 08 00 00       	call   406240 <__lockfile>
  4059ba:	89 c3                	mov    %eax,%ebx
  4059bc:	41 8b 45 00          	mov    0x0(%r13),%eax
  4059c0:	89 c1                	mov    %eax,%ecx
  4059c2:	83 e0 df             	and    $0xffffffdf,%eax
  4059c5:	83 e1 20             	and    $0x20,%ecx
  4059c8:	41 89 45 00          	mov    %eax,0x0(%r13)
  4059cc:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  4059d2:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  4059d7:	74 77                	je     405a50 <vfprintf+0x140>
  4059d9:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  4059de:	0f 84 39 01 00 00    	je     405b1d <vfprintf+0x20d>
  4059e4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  4059eb:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  4059f2:	4c 89 f1             	mov    %r14,%rcx
  4059f5:	4c 89 ef             	mov    %r13,%rdi
  4059f8:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4059ff:	e8 7c ec ff ff       	call   404680 <printf_core>
  405a04:	41 89 c4             	mov    %eax,%r12d
  405a07:	41 8b 45 00          	mov    0x0(%r13),%eax
  405a0b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405a10:	a8 20                	test   $0x20,%al
  405a12:	44 0f 45 e2          	cmovne %edx,%r12d
  405a16:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  405a1c:	41 89 45 00          	mov    %eax,0x0(%r13)
  405a20:	85 db                	test   %ebx,%ebx
  405a22:	0f 85 d8 00 00 00    	jne    405b00 <vfprintf+0x1f0>
  405a28:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405a2c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405a33:	00 00 
  405a35:	0f 85 dd 00 00 00    	jne    405b18 <vfprintf+0x208>
  405a3b:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405a42:	44 89 e0             	mov    %r12d,%eax
  405a45:	5b                   	pop    %rbx
  405a46:	41 5c                	pop    %r12
  405a48:	41 5d                	pop    %r13
  405a4a:	41 5e                	pop    %r14
  405a4c:	41 5f                	pop    %r15
  405a4e:	5d                   	pop    %rbp
  405a4f:	c3                   	ret
  405a50:	49 8b 45 58          	mov    0x58(%r13),%rax
  405a54:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405a5b:	00 
  405a5c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405a60:	4c 89 ef             	mov    %r13,%rdi
  405a63:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405a6a:	00 
  405a6b:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405a71:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405a78:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405a7f:	49 89 45 58          	mov    %rax,0x58(%r13)
  405a83:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405a88:	e8 43 0a 00 00       	call   4064d0 <__towrite>
  405a8d:	85 c0                	test   %eax,%eax
  405a8f:	75 23                	jne    405ab4 <vfprintf+0x1a4>
  405a91:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405a98:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405a9f:	4c 89 f1             	mov    %r14,%rcx
  405aa2:	4c 89 ef             	mov    %r13,%rdi
  405aa5:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405aac:	e8 cf eb ff ff       	call   404680 <printf_core>
  405ab1:	41 89 c4             	mov    %eax,%r12d
  405ab4:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405abb:	4d 85 f6             	test   %r14,%r14
  405abe:	0f 84 43 ff ff ff    	je     405a07 <vfprintf+0xf7>
  405ac4:	31 d2                	xor    %edx,%edx
  405ac6:	31 f6                	xor    %esi,%esi
  405ac8:	4c 89 ef             	mov    %r13,%rdi
  405acb:	41 ff 55 48          	call   *0x48(%r13)
  405acf:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405ad4:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405ad8:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405adc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405ae1:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405ae8:	00 
  405ae9:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405af0:	00 
  405af1:	44 0f 44 e0          	cmove  %eax,%r12d
  405af5:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405afa:	e9 08 ff ff ff       	jmp    405a07 <vfprintf+0xf7>
  405aff:	90                   	nop
  405b00:	4c 89 ef             	mov    %r13,%rdi
  405b03:	e8 f8 07 00 00       	call   406300 <__unlockfile>
  405b08:	e9 1b ff ff ff       	jmp    405a28 <vfprintf+0x118>
  405b0d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b13:	e9 10 ff ff ff       	jmp    405a28 <vfprintf+0x118>
  405b18:	e8 03 cc ff ff       	call   402720 <__stack_chk_fail>
  405b1d:	4c 89 ef             	mov    %r13,%rdi
  405b20:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b26:	e8 a5 09 00 00       	call   4064d0 <__towrite>
  405b2b:	85 c0                	test   %eax,%eax
  405b2d:	0f 85 d4 fe ff ff    	jne    405a07 <vfprintf+0xf7>
  405b33:	e9 ac fe ff ff       	jmp    4059e4 <vfprintf+0xd4>
  405b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405b3f:	00 

0000000000405b40 <vsprintf>:
  405b40:	f3 0f 1e fa          	endbr64
  405b44:	48 89 d1             	mov    %rdx,%rcx
  405b47:	48 89 f2             	mov    %rsi,%rdx
  405b4a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405b4f:	e9 ac 0c 00 00       	jmp    406800 <vsnprintf>
  405b54:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405b5b:	00 00 00 
  405b5e:	66 90                	xchg   %ax,%ax

0000000000405b60 <strcpy>:
  405b60:	f3 0f 1e fa          	endbr64
  405b64:	55                   	push   %rbp
  405b65:	48 89 e5             	mov    %rsp,%rbp
  405b68:	53                   	push   %rbx
  405b69:	48 89 fb             	mov    %rdi,%rbx
  405b6c:	48 83 ec 08          	sub    $0x8,%rsp
  405b70:	e8 8b 0e 00 00       	call   406a00 <__stpcpy>
  405b75:	48 89 d8             	mov    %rbx,%rax
  405b78:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405b7c:	c9                   	leave
  405b7d:	c3                   	ret
  405b7e:	66 90                	xchg   %ax,%ax

0000000000405b80 <strnlen>:
  405b80:	f3 0f 1e fa          	endbr64
  405b84:	55                   	push   %rbp
  405b85:	48 89 f2             	mov    %rsi,%rdx
  405b88:	48 89 e5             	mov    %rsp,%rbp
  405b8b:	41 54                	push   %r12
  405b8d:	49 89 fc             	mov    %rdi,%r12
  405b90:	53                   	push   %rbx
  405b91:	48 89 f3             	mov    %rsi,%rbx
  405b94:	31 f6                	xor    %esi,%esi
  405b96:	e8 25 0d 00 00       	call   4068c0 <memchr>
  405b9b:	48 89 c2             	mov    %rax,%rdx
  405b9e:	4c 29 e0             	sub    %r12,%rax
  405ba1:	48 85 d2             	test   %rdx,%rdx
  405ba4:	48 0f 44 c3          	cmove  %rbx,%rax
  405ba8:	5b                   	pop    %rbx
  405ba9:	41 5c                	pop    %r12
  405bab:	5d                   	pop    %rbp
  405bac:	c3                   	ret

0000000000405bad <memcpy>:
  405bad:	48 89 f8             	mov    %rdi,%rax
  405bb0:	48 83 fa 08          	cmp    $0x8,%rdx
  405bb4:	72 14                	jb     405bca <memcpy+0x1d>
  405bb6:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405bbc:	74 0c                	je     405bca <memcpy+0x1d>
  405bbe:	a4                   	movsb  (%rsi),(%rdi)
  405bbf:	48 ff ca             	dec    %rdx
  405bc2:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405bc8:	75 f4                	jne    405bbe <memcpy+0x11>
  405bca:	48 89 d1             	mov    %rdx,%rcx
  405bcd:	48 c1 e9 03          	shr    $0x3,%rcx
  405bd1:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405bd4:	83 e2 07             	and    $0x7,%edx
  405bd7:	74 05                	je     405bde <memcpy+0x31>
  405bd9:	a4                   	movsb  (%rsi),(%rdi)
  405bda:	ff ca                	dec    %edx
  405bdc:	75 fb                	jne    405bd9 <memcpy+0x2c>
  405bde:	c3                   	ret

0000000000405bdf <memset>:
  405bdf:	48 0f b6 c6          	movzbq %sil,%rax
  405be3:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405bea:	01 01 01 
  405bed:	49 0f af c0          	imul   %r8,%rax
  405bf1:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405bf5:	77 78                	ja     405c6f <memset+0x90>
  405bf7:	85 d2                	test   %edx,%edx
  405bf9:	74 70                	je     405c6b <memset+0x8c>
  405bfb:	40 88 37             	mov    %sil,(%rdi)
  405bfe:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405c03:	83 fa 02             	cmp    $0x2,%edx
  405c06:	76 63                	jbe    405c6b <memset+0x8c>
  405c08:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405c0c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405c11:	83 fa 06             	cmp    $0x6,%edx
  405c14:	76 55                	jbe    405c6b <memset+0x8c>
  405c16:	89 47 03             	mov    %eax,0x3(%rdi)
  405c19:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405c1d:	83 fa 0e             	cmp    $0xe,%edx
  405c20:	76 49                	jbe    405c6b <memset+0x8c>
  405c22:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405c26:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405c2b:	83 fa 1e             	cmp    $0x1e,%edx
  405c2e:	76 3b                	jbe    405c6b <memset+0x8c>
  405c30:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405c34:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405c38:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405c3d:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405c42:	83 fa 3e             	cmp    $0x3e,%edx
  405c45:	76 24                	jbe    405c6b <memset+0x8c>
  405c47:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405c4b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405c4f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405c53:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405c57:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405c5c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405c61:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405c66:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405c6b:	48 89 f8             	mov    %rdi,%rax
  405c6e:	c3                   	ret
  405c6f:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405c75:	49 89 f8             	mov    %rdi,%r8
  405c78:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405c7d:	48 89 d1             	mov    %rdx,%rcx
  405c80:	75 0b                	jne    405c8d <memset+0xae>
  405c82:	48 c1 e9 03          	shr    $0x3,%rcx
  405c86:	f3 48 ab             	rep stos %rax,(%rdi)
  405c89:	4c 89 c0             	mov    %r8,%rax
  405c8c:	c3                   	ret
  405c8d:	31 d2                	xor    %edx,%edx
  405c8f:	29 fa                	sub    %edi,%edx
  405c91:	83 e2 0f             	and    $0xf,%edx
  405c94:	48 89 07             	mov    %rax,(%rdi)
  405c97:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405c9b:	48 29 d1             	sub    %rdx,%rcx
  405c9e:	48 01 d7             	add    %rdx,%rdi
  405ca1:	eb df                	jmp    405c82 <memset+0xa3>
  405ca3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405caa:	00 00 00 
  405cad:	0f 1f 00             	nopl   (%rax)

0000000000405cb0 <__init_tp>:
  405cb0:	f3 0f 1e fa          	endbr64
  405cb4:	55                   	push   %rbp
  405cb5:	48 89 e5             	mov    %rsp,%rbp
  405cb8:	53                   	push   %rbx
  405cb9:	48 89 fb             	mov    %rdi,%rbx
  405cbc:	48 83 ec 08          	sub    $0x8,%rsp
  405cc0:	48 89 3f             	mov    %rdi,(%rdi)
  405cc3:	e8 c5 0e 00 00       	call   406b8d <__set_thread_area>
  405cc8:	85 c0                	test   %eax,%eax
  405cca:	78 65                	js     405d31 <__init_tp+0x81>
  405ccc:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405cd1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405cd5:	74 51                	je     405d28 <__init_tp+0x78>
  405cd7:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405cde:	b8 da 00 00 00       	mov    $0xda,%eax
  405ce3:	48 8d 3d a6 5a 00 00 	lea    0x5aa6(%rip),%rdi        # 40b790 <__thread_list_lock>
  405cea:	0f 05                	syscall
  405cec:	89 43 30             	mov    %eax,0x30(%rbx)
  405cef:	48 8d 05 a2 54 00 00 	lea    0x54a2(%rip),%rax        # 40b198 <__libc+0x38>
  405cf6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405cfd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405d04:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405d0b:	48 8b 05 1e 54 00 00 	mov    0x541e(%rip),%rax        # 40b130 <__sysinfo>
  405d12:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405d16:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405d1a:	31 c0                	xor    %eax,%eax
  405d1c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405d20:	c9                   	leave
  405d21:	c3                   	ret
  405d22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405d28:	c6 05 31 54 00 00 01 	movb   $0x1,0x5431(%rip)        # 40b160 <__libc>
  405d2f:	eb a6                	jmp    405cd7 <__init_tp+0x27>
  405d31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405d36:	eb e4                	jmp    405d1c <__init_tp+0x6c>
  405d38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405d3f:	00 

0000000000405d40 <__copy_tls>:
  405d40:	f3 0f 1e fa          	endbr64
  405d44:	55                   	push   %rbp
  405d45:	48 8b 05 2c 54 00 00 	mov    0x542c(%rip),%rax        # 40b178 <__libc+0x18>
  405d4c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405d53:	ff 
  405d54:	48 89 e5             	mov    %rsp,%rbp
  405d57:	41 56                	push   %r14
  405d59:	49 89 fe             	mov    %rdi,%r14
  405d5c:	41 55                	push   %r13
  405d5e:	4c 8b 2d 1b 54 00 00 	mov    0x541b(%rip),%r13        # 40b180 <__libc+0x20>
  405d65:	41 54                	push   %r12
  405d67:	53                   	push   %rbx
  405d68:	48 8b 1d 01 54 00 00 	mov    0x5401(%rip),%rbx        # 40b170 <__libc+0x10>
  405d6f:	49 f7 dd             	neg    %r13
  405d72:	49 21 c5             	and    %rax,%r13
  405d75:	48 85 db             	test   %rbx,%rbx
  405d78:	74 32                	je     405dac <__copy_tls+0x6c>
  405d7a:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405d7e:	66 90                	xchg   %ax,%ax
  405d80:	4c 89 e8             	mov    %r13,%rax
  405d83:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405d87:	4c 89 ef             	mov    %r13,%rdi
  405d8a:	49 83 c4 08          	add    $0x8,%r12
  405d8e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405d93:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405d97:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405d9b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405d9f:	e8 09 fe ff ff       	call   405bad <memcpy>
  405da4:	48 8b 1b             	mov    (%rbx),%rbx
  405da7:	48 85 db             	test   %rbx,%rbx
  405daa:	75 d4                	jne    405d80 <__copy_tls+0x40>
  405dac:	48 8b 05 d5 53 00 00 	mov    0x53d5(%rip),%rax        # 40b188 <__libc+0x28>
  405db3:	49 89 06             	mov    %rax,(%r14)
  405db6:	4c 89 e8             	mov    %r13,%rax
  405db9:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405dbd:	5b                   	pop    %rbx
  405dbe:	41 5c                	pop    %r12
  405dc0:	41 5d                	pop    %r13
  405dc2:	41 5e                	pop    %r14
  405dc4:	5d                   	pop    %rbp
  405dc5:	c3                   	ret
  405dc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405dcd:	00 00 00 

0000000000405dd0 <__init_tls>:
  405dd0:	f3 0f 1e fa          	endbr64
  405dd4:	55                   	push   %rbp
  405dd5:	48 89 e5             	mov    %rsp,%rbp
  405dd8:	53                   	push   %rbx
  405dd9:	48 83 ec 08          	sub    $0x8,%rsp
  405ddd:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405de1:	48 85 c9             	test   %rcx,%rcx
  405de4:	0f 84 fe 01 00 00    	je     405fe8 <__init_tls+0x218>
  405dea:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405dee:	31 f6                	xor    %esi,%esi
  405df0:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405df4:	45 31 c0             	xor    %r8d,%r8d
  405df7:	4c 89 d0             	mov    %r10,%rax
  405dfa:	eb 29                	jmp    405e25 <__init_tls+0x55>
  405dfc:	0f 1f 40 00          	nopl   0x0(%rax)
  405e00:	83 fa 02             	cmp    $0x2,%edx
  405e03:	0f 85 77 01 00 00    	jne    405f80 <__init_tls+0x1b0>
  405e09:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405e10:	48 85 d2             	test   %rdx,%rdx
  405e13:	74 07                	je     405e1c <__init_tls+0x4c>
  405e15:	48 89 d6             	mov    %rdx,%rsi
  405e18:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405e1c:	48 01 f8             	add    %rdi,%rax
  405e1f:	48 83 e9 01          	sub    $0x1,%rcx
  405e23:	74 17                	je     405e3c <__init_tls+0x6c>
  405e25:	8b 10                	mov    (%rax),%edx
  405e27:	83 fa 06             	cmp    $0x6,%edx
  405e2a:	75 d4                	jne    405e00 <__init_tls+0x30>
  405e2c:	4c 89 d6             	mov    %r10,%rsi
  405e2f:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405e33:	48 01 f8             	add    %rdi,%rax
  405e36:	48 83 e9 01          	sub    $0x1,%rcx
  405e3a:	75 e9                	jne    405e25 <__init_tls+0x55>
  405e3c:	4d 85 c0             	test   %r8,%r8
  405e3f:	0f 84 a3 01 00 00    	je     405fe8 <__init_tls+0x218>
  405e45:	49 8b 40 20          	mov    0x20(%r8),%rax
  405e49:	49 03 70 10          	add    0x10(%r8),%rsi
  405e4d:	48 8d 1d ac 57 00 00 	lea    0x57ac(%rip),%rbx        # 40b600 <main_tls>
  405e54:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405e58:	48 89 35 a9 57 00 00 	mov    %rsi,0x57a9(%rip)        # 40b608 <main_tls+0x8>
  405e5f:	48 89 05 aa 57 00 00 	mov    %rax,0x57aa(%rip)        # 40b610 <main_tls+0x10>
  405e66:	49 8b 40 30          	mov    0x30(%r8),%rax
  405e6a:	48 c7 05 13 53 00 00 	movq   $0x1,0x5313(%rip)        # 40b188 <__libc+0x28>
  405e71:	01 00 00 00 
  405e75:	48 89 05 a4 57 00 00 	mov    %rax,0x57a4(%rip)        # 40b620 <main_tls+0x20>
  405e7c:	48 89 1d ed 52 00 00 	mov    %rbx,0x52ed(%rip)        # 40b170 <__libc+0x10>
  405e83:	48 01 d6             	add    %rdx,%rsi
  405e86:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405e8a:	48 f7 de             	neg    %rsi
  405e8d:	48 21 ce             	and    %rcx,%rsi
  405e90:	48 01 d6             	add    %rdx,%rsi
  405e93:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405e9a:	48 89 35 77 57 00 00 	mov    %rsi,0x5777(%rip)        # 40b618 <main_tls+0x18>
  405ea1:	48 89 35 80 57 00 00 	mov    %rsi,0x5780(%rip)        # 40b628 <main_tls+0x28>
  405ea8:	48 83 f8 07          	cmp    $0x7,%rax
  405eac:	77 15                	ja     405ec3 <__init_tls+0xf3>
  405eae:	48 c7 05 67 57 00 00 	movq   $0x8,0x5767(%rip)        # 40b620 <main_tls+0x20>
  405eb5:	08 00 00 00 
  405eb9:	ba e7 00 00 00       	mov    $0xe7,%edx
  405ebe:	b8 08 00 00 00       	mov    $0x8,%eax
  405ec3:	48 01 d6             	add    %rdx,%rsi
  405ec6:	48 89 05 b3 52 00 00 	mov    %rax,0x52b3(%rip)        # 40b180 <__libc+0x20>
  405ecd:	48 8d 3d 6c 57 00 00 	lea    0x576c(%rip),%rdi        # 40b640 <builtin_tls>
  405ed4:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405ed8:	48 89 35 99 52 00 00 	mov    %rsi,0x5299(%rip)        # 40b178 <__libc+0x18>
  405edf:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405ee6:	76 21                	jbe    405f09 <__init_tls+0x139>
  405ee8:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405eee:	45 31 c9             	xor    %r9d,%r9d
  405ef1:	b8 09 00 00 00       	mov    $0x9,%eax
  405ef6:	31 ff                	xor    %edi,%edi
  405ef8:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405eff:	ba 03 00 00 00       	mov    $0x3,%edx
  405f04:	0f 05                	syscall
  405f06:	48 89 c7             	mov    %rax,%rdi
  405f09:	e8 32 fe ff ff       	call   405d40 <__copy_tls>
  405f0e:	48 89 00             	mov    %rax,(%rax)
  405f11:	48 89 c7             	mov    %rax,%rdi
  405f14:	48 89 c3             	mov    %rax,%rbx
  405f17:	e8 71 0c 00 00       	call   406b8d <__set_thread_area>
  405f1c:	85 c0                	test   %eax,%eax
  405f1e:	0f 88 b8 00 00 00    	js     405fdc <__init_tls+0x20c>
  405f24:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405f29:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405f2d:	0f 84 9d 00 00 00    	je     405fd0 <__init_tls+0x200>
  405f33:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405f3a:	b8 da 00 00 00       	mov    $0xda,%eax
  405f3f:	48 8d 3d 4a 58 00 00 	lea    0x584a(%rip),%rdi        # 40b790 <__thread_list_lock>
  405f46:	0f 05                	syscall
  405f48:	89 43 30             	mov    %eax,0x30(%rbx)
  405f4b:	48 8d 05 46 52 00 00 	lea    0x5246(%rip),%rax        # 40b198 <__libc+0x38>
  405f52:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405f59:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405f60:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405f67:	48 8b 05 c2 51 00 00 	mov    0x51c2(%rip),%rax        # 40b130 <__sysinfo>
  405f6e:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405f72:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405f76:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405f7a:	c9                   	leave
  405f7b:	c3                   	ret
  405f7c:	0f 1f 40 00          	nopl   0x0(%rax)
  405f80:	83 fa 07             	cmp    $0x7,%edx
  405f83:	75 0b                	jne    405f90 <__init_tls+0x1c0>
  405f85:	49 89 c0             	mov    %rax,%r8
  405f88:	e9 8f fe ff ff       	jmp    405e1c <__init_tls+0x4c>
  405f8d:	0f 1f 00             	nopl   (%rax)
  405f90:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  405f96:	0f 85 80 fe ff ff    	jne    405e1c <__init_tls+0x4c>
  405f9c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  405fa0:	44 8b 0d 65 51 00 00 	mov    0x5165(%rip),%r9d        # 40b10c <__default_stacksize>
  405fa7:	49 39 d1             	cmp    %rdx,%r9
  405faa:	0f 83 6c fe ff ff    	jae    405e1c <__init_tls+0x4c>
  405fb0:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405fb6:	4c 39 ca             	cmp    %r9,%rdx
  405fb9:	49 0f 47 d1          	cmova  %r9,%rdx
  405fbd:	89 15 49 51 00 00    	mov    %edx,0x5149(%rip)        # 40b10c <__default_stacksize>
  405fc3:	e9 54 fe ff ff       	jmp    405e1c <__init_tls+0x4c>
  405fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405fcf:	00 
  405fd0:	c6 05 89 51 00 00 01 	movb   $0x1,0x5189(%rip)        # 40b160 <__libc>
  405fd7:	e9 57 ff ff ff       	jmp    405f33 <__init_tls+0x163>
  405fdc:	f4                   	hlt
  405fdd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405fe1:	c9                   	leave
  405fe2:	c3                   	ret
  405fe3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405fe8:	48 8b 15 29 56 00 00 	mov    0x5629(%rip),%rdx        # 40b618 <main_tls+0x18>
  405fef:	48 8b 35 12 56 00 00 	mov    0x5612(%rip),%rsi        # 40b608 <main_tls+0x8>
  405ff6:	48 8b 05 23 56 00 00 	mov    0x5623(%rip),%rax        # 40b620 <main_tls+0x20>
  405ffd:	e9 81 fe ff ff       	jmp    405e83 <__init_tls+0xb3>
  406002:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406009:	00 00 00 
  40600c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406010 <__errno_location>:
  406010:	f3 0f 1e fa          	endbr64
  406014:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40601b:	00 00 
  40601d:	48 83 c0 34          	add    $0x34,%rax
  406021:	c3                   	ret
  406022:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406029:	00 00 00 
  40602c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406030 <__strerror_l>:
  406030:	f3 0f 1e fa          	endbr64
  406034:	48 8d 05 25 26 00 00 	lea    0x2625(%rip),%rax        # 408660 <errmsgstr>
  40603b:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  406041:	77 11                	ja     406054 <__strerror_l+0x24>
  406043:	48 63 ff             	movslq %edi,%rdi
  406046:	48 8d 15 f3 24 00 00 	lea    0x24f3(%rip),%rdx        # 408540 <errmsgidx>
  40604d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  406051:	48 01 d0             	add    %rdx,%rax
  406054:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  406058:	48 89 c7             	mov    %rax,%rdi
  40605b:	e9 50 00 00 00       	jmp    4060b0 <__lctrans>

0000000000406060 <strerror>:
  406060:	f3 0f 1e fa          	endbr64
  406064:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40606b:	00 00 
  40606d:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  406074:	e9 b7 ff ff ff       	jmp    406030 <__strerror_l>
  406079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406080 <_Exit>:
  406080:	f3 0f 1e fa          	endbr64
  406084:	48 63 ff             	movslq %edi,%rdi
  406087:	b8 e7 00 00 00       	mov    $0xe7,%eax
  40608c:	0f 05                	syscall
  40608e:	66 90                	xchg   %ax,%ax
  406090:	b8 3c 00 00 00       	mov    $0x3c,%eax
  406095:	0f 05                	syscall
  406097:	eb f7                	jmp    406090 <_Exit+0x10>
  406099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004060a0 <__lctrans_impl>:
  4060a0:	f3 0f 1e fa          	endbr64
  4060a4:	48 89 f8             	mov    %rdi,%rax
  4060a7:	c3                   	ret
  4060a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4060af:	00 

00000000004060b0 <__lctrans>:
  4060b0:	f3 0f 1e fa          	endbr64
  4060b4:	e9 e7 ff ff ff       	jmp    4060a0 <__lctrans_impl>
  4060b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004060c0 <__lctrans_cur>:
  4060c0:	f3 0f 1e fa          	endbr64
  4060c4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4060cb:	00 00 
  4060cd:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  4060d4:	48 8b 70 28          	mov    0x28(%rax),%rsi
  4060d8:	e9 c3 ff ff ff       	jmp    4060a0 <__lctrans_impl>
  4060dd:	0f 1f 00             	nopl   (%rax)

00000000004060e0 <__fpclassifyl>:
  4060e0:	f3 0f 1e fa          	endbr64
  4060e4:	55                   	push   %rbp
  4060e5:	48 89 e5             	mov    %rsp,%rbp
  4060e8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4060ec:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4060f0:	48 89 ca             	mov    %rcx,%rdx
  4060f3:	89 c6                	mov    %eax,%esi
  4060f5:	25 ff 7f 00 00       	and    $0x7fff,%eax
  4060fa:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4060fe:	66 81 e6 ff 7f       	and    $0x7fff,%si
  406103:	09 d0                	or     %edx,%eax
  406105:	74 31                	je     406138 <__fpclassifyl+0x58>
  406107:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  40610e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  406113:	74 0b                	je     406120 <__fpclassifyl+0x40>
  406115:	5d                   	pop    %rbp
  406116:	c3                   	ret
  406117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40611e:	00 00 
  406120:	31 c0                	xor    %eax,%eax
  406122:	48 85 d2             	test   %rdx,%rdx
  406125:	74 ee                	je     406115 <__fpclassifyl+0x35>
  406127:	31 c0                	xor    %eax,%eax
  406129:	48 01 c9             	add    %rcx,%rcx
  40612c:	5d                   	pop    %rbp
  40612d:	0f 94 c0             	sete   %al
  406130:	c3                   	ret
  406131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406138:	48 83 f9 01          	cmp    $0x1,%rcx
  40613c:	b8 02 00 00 00       	mov    $0x2,%eax
  406141:	5d                   	pop    %rbp
  406142:	83 d8 ff             	sbb    $0xffffffff,%eax
  406145:	c3                   	ret
  406146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40614d:	00 00 00 

0000000000406150 <__signbitl>:
  406150:	f3 0f 1e fa          	endbr64
  406154:	55                   	push   %rbp
  406155:	48 89 e5             	mov    %rsp,%rbp
  406158:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  40615c:	5d                   	pop    %rbp
  40615d:	66 c1 e8 0f          	shr    $0xf,%ax
  406161:	0f b7 c0             	movzwl %ax,%eax
  406164:	c3                   	ret
  406165:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40616c:	00 00 00 
  40616f:	90                   	nop

0000000000406170 <frexpl>:
  406170:	f3 0f 1e fa          	endbr64
  406174:	55                   	push   %rbp
  406175:	48 89 e5             	mov    %rsp,%rbp
  406178:	48 83 ec 20          	sub    $0x20,%rsp
  40617c:	db 6d 10             	fldt   0x10(%rbp)
  40617f:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406183:	89 c2                	mov    %eax,%edx
  406185:	d9 c0                	fld    %st(0)
  406187:	db 7d f0             	fstpt  -0x10(%rbp)
  40618a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40618f:	74 2f                	je     4061c0 <frexpl+0x50>
  406191:	dd d8                	fstp   %st(0)
  406193:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406198:	74 38                	je     4061d2 <frexpl+0x62>
  40619a:	0f b7 d2             	movzwl %dx,%edx
  40619d:	66 25 00 80          	and    $0x8000,%ax
  4061a1:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  4061a7:	66 0d fe 3f          	or     $0x3ffe,%ax
  4061ab:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  4061af:	db 6d f0             	fldt   -0x10(%rbp)
  4061b2:	89 17                	mov    %edx,(%rdi)
  4061b4:	c9                   	leave
  4061b5:	c3                   	ret
  4061b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061bd:	00 00 00 
  4061c0:	d9 ee                	fldz
  4061c2:	d9 c9                	fxch   %st(1)
  4061c4:	df e9                	fucomip %st(1),%st
  4061c6:	dd d8                	fstp   %st(0)
  4061c8:	7a 16                	jp     4061e0 <frexpl+0x70>
  4061ca:	75 14                	jne    4061e0 <frexpl+0x70>
  4061cc:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  4061d2:	db 6d 10             	fldt   0x10(%rbp)
  4061d5:	c9                   	leave
  4061d6:	c3                   	ret
  4061d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4061de:	00 00 
  4061e0:	db 6d 10             	fldt   0x10(%rbp)
  4061e3:	d8 0d 23 23 00 00    	fmuls  0x2323(%rip)        # 40850c <states+0x1ec>
  4061e9:	48 83 ec 10          	sub    $0x10,%rsp
  4061ed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4061f1:	db 3c 24             	fstpt  (%rsp)
  4061f4:	e8 77 ff ff ff       	call   406170 <frexpl>
  4061f9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4061fd:	83 2f 78             	subl   $0x78,(%rdi)
  406200:	58                   	pop    %rax
  406201:	5a                   	pop    %rdx
  406202:	c9                   	leave
  406203:	c3                   	ret
  406204:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40620b:	00 00 00 
  40620e:	66 90                	xchg   %ax,%ax

0000000000406210 <wctomb>:
  406210:	f3 0f 1e fa          	endbr64
  406214:	48 85 ff             	test   %rdi,%rdi
  406217:	74 17                	je     406230 <wctomb+0x20>
  406219:	55                   	push   %rbp
  40621a:	31 d2                	xor    %edx,%edx
  40621c:	48 89 e5             	mov    %rsp,%rbp
  40621f:	e8 dc 09 00 00       	call   406c00 <wcrtomb>
  406224:	5d                   	pop    %rbp
  406225:	c3                   	ret
  406226:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40622d:	00 00 00 
  406230:	31 c0                	xor    %eax,%eax
  406232:	c3                   	ret
  406233:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40623a:	00 00 00 
  40623d:	0f 1f 00             	nopl   (%rax)

0000000000406240 <__lockfile>:
  406240:	f3 0f 1e fa          	endbr64
  406244:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40624a:	48 89 fa             	mov    %rdi,%rdx
  40624d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406254:	00 00 
  406256:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40625a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40625f:	31 c9                	xor    %ecx,%ecx
  406261:	44 39 c0             	cmp    %r8d,%eax
  406264:	74 3f                	je     4062a5 <__lockfile+0x65>
  406266:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  40626d:	89 c8                	mov    %ecx,%eax
  40626f:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  406276:	00 00 
  406278:	85 c0                	test   %eax,%eax
  40627a:	74 24                	je     4062a0 <__lockfile+0x60>
  40627c:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406283:	89 c8                	mov    %ecx,%eax
  406285:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40628c:	00 00 
  40628e:	89 c1                	mov    %eax,%ecx
  406290:	85 c0                	test   %eax,%eax
  406292:	75 33                	jne    4062c7 <__lockfile+0x87>
  406294:	90                   	nop
  406295:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40629c:	00 00 00 00 
  4062a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4062a5:	89 c8                	mov    %ecx,%eax
  4062a7:	c3                   	ret
  4062a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4062af:	00 
  4062b0:	89 c8                	mov    %ecx,%eax
  4062b2:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  4062b6:	39 c8                	cmp    %ecx,%eax
  4062b8:	74 1d                	je     4062d7 <__lockfile+0x97>
  4062ba:	31 c0                	xor    %eax,%eax
  4062bc:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  4062c1:	89 c1                	mov    %eax,%ecx
  4062c3:	85 c0                	test   %eax,%eax
  4062c5:	74 d9                	je     4062a0 <__lockfile+0x60>
  4062c7:	89 ca                	mov    %ecx,%edx
  4062c9:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  4062cf:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  4062d5:	74 d9                	je     4062b0 <__lockfile+0x70>
  4062d7:	48 63 d2             	movslq %edx,%rdx
  4062da:	45 31 d2             	xor    %r10d,%r10d
  4062dd:	b8 ca 00 00 00       	mov    $0xca,%eax
  4062e2:	be 80 00 00 00       	mov    $0x80,%esi
  4062e7:	0f 05                	syscall
  4062e9:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4062ed:	75 cb                	jne    4062ba <__lockfile+0x7a>
  4062ef:	45 31 d2             	xor    %r10d,%r10d
  4062f2:	31 f6                	xor    %esi,%esi
  4062f4:	b8 ca 00 00 00       	mov    $0xca,%eax
  4062f9:	0f 05                	syscall
  4062fb:	eb bd                	jmp    4062ba <__lockfile+0x7a>
  4062fd:	0f 1f 00             	nopl   (%rax)

0000000000406300 <__unlockfile>:
  406300:	f3 0f 1e fa          	endbr64
  406304:	48 89 fa             	mov    %rdi,%rdx
  406307:	31 c0                	xor    %eax,%eax
  406309:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406310:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406316:	a9 00 00 00 40       	test   $0x40000000,%eax
  40631b:	74 17                	je     406334 <__unlockfile+0x34>
  40631d:	be 81 00 00 00       	mov    $0x81,%esi
  406322:	b8 ca 00 00 00       	mov    $0xca,%eax
  406327:	ba 01 00 00 00       	mov    $0x1,%edx
  40632c:	0f 05                	syscall
  40632e:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406332:	74 04                	je     406338 <__unlockfile+0x38>
  406334:	c3                   	ret
  406335:	0f 1f 00             	nopl   (%rax)
  406338:	b8 ca 00 00 00       	mov    $0xca,%eax
  40633d:	be 01 00 00 00       	mov    $0x1,%esi
  406342:	0f 05                	syscall
  406344:	c3                   	ret
  406345:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40634c:	00 00 00 
  40634f:	90                   	nop

0000000000406350 <__overflow>:
  406350:	f3 0f 1e fa          	endbr64
  406354:	55                   	push   %rbp
  406355:	48 89 e5             	mov    %rsp,%rbp
  406358:	48 83 ec 20          	sub    $0x20,%rsp
  40635c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406363:	00 00 
  406365:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406369:	31 c0                	xor    %eax,%eax
  40636b:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40636f:	40 88 75 f7          	mov    %sil,-0x9(%rbp)
  406373:	48 85 c0             	test   %rax,%rax
  406376:	74 50                	je     4063c8 <__overflow+0x78>
  406378:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  40637c:	48 39 c2             	cmp    %rax,%rdx
  40637f:	74 0c                	je     40638d <__overflow+0x3d>
  406381:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406385:	3b 87 90 00 00 00    	cmp    0x90(%rdi),%eax
  40638b:	75 2b                	jne    4063b8 <__overflow+0x68>
  40638d:	48 8d 75 f7          	lea    -0x9(%rbp),%rsi
  406391:	ba 01 00 00 00       	mov    $0x1,%edx
  406396:	ff 57 48             	call   *0x48(%rdi)
  406399:	48 83 f8 01          	cmp    $0x1,%rax
  40639d:	75 41                	jne    4063e0 <__overflow+0x90>
  40639f:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  4063a3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4063a7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4063ae:	00 00 
  4063b0:	75 35                	jne    4063e7 <__overflow+0x97>
  4063b2:	c9                   	leave
  4063b3:	c3                   	ret
  4063b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4063b8:	48 8d 72 01          	lea    0x1(%rdx),%rsi
  4063bc:	48 89 77 28          	mov    %rsi,0x28(%rdi)
  4063c0:	88 02                	mov    %al,(%rdx)
  4063c2:	eb df                	jmp    4063a3 <__overflow+0x53>
  4063c4:	0f 1f 40 00          	nopl   0x0(%rax)
  4063c8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4063cc:	e8 ff 00 00 00       	call   4064d0 <__towrite>
  4063d1:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4063d5:	85 c0                	test   %eax,%eax
  4063d7:	75 07                	jne    4063e0 <__overflow+0x90>
  4063d9:	48 8b 47 20          	mov    0x20(%rdi),%rax
  4063dd:	eb 99                	jmp    406378 <__overflow+0x28>
  4063df:	90                   	nop
  4063e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4063e5:	eb bc                	jmp    4063a3 <__overflow+0x53>
  4063e7:	e8 34 c3 ff ff       	call   402720 <__stack_chk_fail>
  4063ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004063f0 <__aio_close>:
  4063f0:	f3 0f 1e fa          	endbr64
  4063f4:	89 f8                	mov    %edi,%eax
  4063f6:	c3                   	ret
  4063f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4063fe:	00 00 

0000000000406400 <__stdio_close>:
  406400:	f3 0f 1e fa          	endbr64
  406404:	55                   	push   %rbp
  406405:	8b 7f 78             	mov    0x78(%rdi),%edi
  406408:	48 89 e5             	mov    %rsp,%rbp
  40640b:	e8 e0 ff ff ff       	call   4063f0 <__aio_close>
  406410:	48 63 f8             	movslq %eax,%rdi
  406413:	b8 03 00 00 00       	mov    $0x3,%eax
  406418:	0f 05                	syscall
  40641a:	48 89 c7             	mov    %rax,%rdi
  40641d:	e8 9e 07 00 00       	call   406bc0 <__syscall_ret>
  406422:	5d                   	pop    %rbp
  406423:	c3                   	ret
  406424:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40642b:	00 00 00 
  40642e:	66 90                	xchg   %ax,%ax

0000000000406430 <__stdio_seek>:
  406430:	f3 0f 1e fa          	endbr64
  406434:	8b 7f 78             	mov    0x78(%rdi),%edi
  406437:	e9 64 07 00 00       	jmp    406ba0 <__lseek>
  40643c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406440 <__stdout_write>:
  406440:	f3 0f 1e fa          	endbr64
  406444:	55                   	push   %rbp
  406445:	48 8d 05 d4 09 00 00 	lea    0x9d4(%rip),%rax        # 406e20 <__stdio_write>
  40644c:	49 89 f8             	mov    %rdi,%r8
  40644f:	49 89 f1             	mov    %rsi,%r9
  406452:	48 89 e5             	mov    %rsp,%rbp
  406455:	48 83 ec 10          	sub    $0x10,%rsp
  406459:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406460:	00 00 
  406462:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406466:	49 89 d2             	mov    %rdx,%r10
  406469:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40646d:	f6 07 40             	testb  $0x40,(%rdi)
  406470:	75 19                	jne    40648b <__stdout_write+0x4b>
  406472:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406476:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40647a:	b8 10 00 00 00       	mov    $0x10,%eax
  40647f:	be 13 54 00 00       	mov    $0x5413,%esi
  406484:	0f 05                	syscall
  406486:	48 85 c0             	test   %rax,%rax
  406489:	75 25                	jne    4064b0 <__stdout_write+0x70>
  40648b:	4c 89 d2             	mov    %r10,%rdx
  40648e:	4c 89 ce             	mov    %r9,%rsi
  406491:	4c 89 c7             	mov    %r8,%rdi
  406494:	e8 87 09 00 00       	call   406e20 <__stdio_write>
  406499:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40649d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4064a4:	00 00 
  4064a6:	75 15                	jne    4064bd <__stdout_write+0x7d>
  4064a8:	c9                   	leave
  4064a9:	c3                   	ret
  4064aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064b0:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  4064b7:	ff ff ff ff 
  4064bb:	eb ce                	jmp    40648b <__stdout_write+0x4b>
  4064bd:	e8 5e c2 ff ff       	call   402720 <__stack_chk_fail>
  4064c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4064c9:	00 00 00 
  4064cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004064d0 <__towrite>:
  4064d0:	f3 0f 1e fa          	endbr64
  4064d4:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  4064da:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4064dd:	09 d0                	or     %edx,%eax
  4064df:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  4064e5:	8b 07                	mov    (%rdi),%eax
  4064e7:	a8 08                	test   $0x8,%al
  4064e9:	75 35                	jne    406520 <__towrite+0x50>
  4064eb:	48 8b 47 58          	mov    0x58(%rdi),%rax
  4064ef:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  4064f3:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4064f7:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  4064fb:	48 01 c1             	add    %rax,%rcx
  4064fe:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406503:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406507:	31 c0                	xor    %eax,%eax
  406509:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40650e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406512:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406516:	c3                   	ret
  406517:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40651e:	00 00 
  406520:	83 c8 20             	or     $0x20,%eax
  406523:	89 07                	mov    %eax,(%rdi)
  406525:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40652a:	c3                   	ret
  40652b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406530 <__towrite_needs_stdio_exit>:
  406530:	f3 0f 1e fa          	endbr64
  406534:	e9 87 08 00 00       	jmp    406dc0 <__stdio_exit>
  406539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406540 <fputs>:
  406540:	f3 0f 1e fa          	endbr64
  406544:	55                   	push   %rbp
  406545:	48 89 e5             	mov    %rsp,%rbp
  406548:	41 54                	push   %r12
  40654a:	49 89 f4             	mov    %rsi,%r12
  40654d:	53                   	push   %rbx
  40654e:	48 83 ec 10          	sub    $0x10,%rsp
  406552:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406556:	e8 a5 05 00 00       	call   406b00 <strlen>
  40655b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40655f:	4c 89 e1             	mov    %r12,%rcx
  406562:	be 01 00 00 00       	mov    $0x1,%esi
  406567:	48 89 c2             	mov    %rax,%rdx
  40656a:	48 89 c3             	mov    %rax,%rbx
  40656d:	e8 1e 01 00 00       	call   406690 <fwrite>
  406572:	48 39 d8             	cmp    %rbx,%rax
  406575:	0f 95 c0             	setne  %al
  406578:	48 83 c4 10          	add    $0x10,%rsp
  40657c:	0f b6 c0             	movzbl %al,%eax
  40657f:	5b                   	pop    %rbx
  406580:	41 5c                	pop    %r12
  406582:	f7 d8                	neg    %eax
  406584:	5d                   	pop    %rbp
  406585:	c3                   	ret
  406586:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40658d:	00 00 00 

0000000000406590 <__fwritex>:
  406590:	f3 0f 1e fa          	endbr64
  406594:	55                   	push   %rbp
  406595:	48 89 f9             	mov    %rdi,%rcx
  406598:	48 89 e5             	mov    %rsp,%rbp
  40659b:	41 54                	push   %r12
  40659d:	49 89 f4             	mov    %rsi,%r12
  4065a0:	53                   	push   %rbx
  4065a1:	48 89 d3             	mov    %rdx,%rbx
  4065a4:	48 83 ec 10          	sub    $0x10,%rsp
  4065a8:	48 8b 42 20          	mov    0x20(%rdx),%rax
  4065ac:	48 85 c0             	test   %rax,%rax
  4065af:	0f 84 ab 00 00 00    	je     406660 <__fwritex+0xd0>
  4065b5:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4065b9:	48 29 f8             	sub    %rdi,%rax
  4065bc:	4c 39 e0             	cmp    %r12,%rax
  4065bf:	72 57                	jb     406618 <__fwritex+0x88>
  4065c1:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  4065c7:	4c 89 e2             	mov    %r12,%rdx
  4065ca:	85 c0                	test   %eax,%eax
  4065cc:	79 3d                	jns    40660b <__fwritex+0x7b>
  4065ce:	4d 89 e0             	mov    %r12,%r8
  4065d1:	4c 89 c2             	mov    %r8,%rdx
  4065d4:	48 89 ce             	mov    %rcx,%rsi
  4065d7:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  4065db:	e8 cd f5 ff ff       	call   405bad <memcpy>
  4065e0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4065e4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4065e8:	4c 89 e0             	mov    %r12,%rax
  4065eb:	48 83 c4 10          	add    $0x10,%rsp
  4065ef:	5b                   	pop    %rbx
  4065f0:	41 5c                	pop    %r12
  4065f2:	5d                   	pop    %rbp
  4065f3:	c3                   	ret
  4065f4:	90                   	nop
  4065f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4065fc:	00 00 00 00 
  406600:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406605:	74 29                	je     406630 <__fwritex+0xa0>
  406607:	48 83 ea 01          	sub    $0x1,%rdx
  40660b:	48 85 d2             	test   %rdx,%rdx
  40660e:	75 f0                	jne    406600 <__fwritex+0x70>
  406610:	eb bc                	jmp    4065ce <__fwritex+0x3e>
  406612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406618:	48 8b 43 48          	mov    0x48(%rbx),%rax
  40661c:	48 83 c4 10          	add    $0x10,%rsp
  406620:	4c 89 e2             	mov    %r12,%rdx
  406623:	48 89 df             	mov    %rbx,%rdi
  406626:	48 89 ce             	mov    %rcx,%rsi
  406629:	5b                   	pop    %rbx
  40662a:	41 5c                	pop    %r12
  40662c:	5d                   	pop    %rbp
  40662d:	ff e0                	jmp    *%rax
  40662f:	90                   	nop
  406630:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  406634:	48 89 ce             	mov    %rcx,%rsi
  406637:	48 89 df             	mov    %rbx,%rdi
  40663a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40663e:	ff 53 48             	call   *0x48(%rbx)
  406641:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406645:	48 39 d0             	cmp    %rdx,%rax
  406648:	72 a1                	jb     4065eb <__fwritex+0x5b>
  40664a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40664e:	4d 89 e0             	mov    %r12,%r8
  406651:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406655:	49 29 d0             	sub    %rdx,%r8
  406658:	48 01 d1             	add    %rdx,%rcx
  40665b:	e9 71 ff ff ff       	jmp    4065d1 <__fwritex+0x41>
  406660:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406664:	48 89 d7             	mov    %rdx,%rdi
  406667:	e8 64 fe ff ff       	call   4064d0 <__towrite>
  40666c:	85 c0                	test   %eax,%eax
  40666e:	75 10                	jne    406680 <__fwritex+0xf0>
  406670:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406674:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406678:	e9 38 ff ff ff       	jmp    4065b5 <__fwritex+0x25>
  40667d:	0f 1f 00             	nopl   (%rax)
  406680:	31 c0                	xor    %eax,%eax
  406682:	e9 64 ff ff ff       	jmp    4065eb <__fwritex+0x5b>
  406687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40668e:	00 00 

0000000000406690 <fwrite>:
  406690:	f3 0f 1e fa          	endbr64
  406694:	55                   	push   %rbp
  406695:	31 c0                	xor    %eax,%eax
  406697:	48 89 e5             	mov    %rsp,%rbp
  40669a:	41 57                	push   %r15
  40669c:	41 56                	push   %r14
  40669e:	49 89 f6             	mov    %rsi,%r14
  4066a1:	41 55                	push   %r13
  4066a3:	4c 0f af f2          	imul   %rdx,%r14
  4066a7:	41 54                	push   %r12
  4066a9:	49 89 cc             	mov    %rcx,%r12
  4066ac:	53                   	push   %rbx
  4066ad:	48 89 f3             	mov    %rsi,%rbx
  4066b0:	48 83 ec 18          	sub    $0x18,%rsp
  4066b4:	48 85 f6             	test   %rsi,%rsi
  4066b7:	48 0f 45 c2          	cmovne %rdx,%rax
  4066bb:	49 89 c5             	mov    %rax,%r13
  4066be:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  4066c4:	85 c0                	test   %eax,%eax
  4066c6:	79 30                	jns    4066f8 <fwrite+0x68>
  4066c8:	48 89 ca             	mov    %rcx,%rdx
  4066cb:	4c 89 f6             	mov    %r14,%rsi
  4066ce:	e8 bd fe ff ff       	call   406590 <__fwritex>
  4066d3:	49 39 c6             	cmp    %rax,%r14
  4066d6:	74 08                	je     4066e0 <fwrite+0x50>
  4066d8:	31 d2                	xor    %edx,%edx
  4066da:	48 f7 f3             	div    %rbx
  4066dd:	49 89 c5             	mov    %rax,%r13
  4066e0:	48 83 c4 18          	add    $0x18,%rsp
  4066e4:	4c 89 e8             	mov    %r13,%rax
  4066e7:	5b                   	pop    %rbx
  4066e8:	41 5c                	pop    %r12
  4066ea:	41 5d                	pop    %r13
  4066ec:	41 5e                	pop    %r14
  4066ee:	41 5f                	pop    %r15
  4066f0:	5d                   	pop    %rbp
  4066f1:	c3                   	ret
  4066f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4066f8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4066fc:	48 89 cf             	mov    %rcx,%rdi
  4066ff:	e8 3c fb ff ff       	call   406240 <__lockfile>
  406704:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406708:	4c 89 e2             	mov    %r12,%rdx
  40670b:	4c 89 f6             	mov    %r14,%rsi
  40670e:	41 89 c7             	mov    %eax,%r15d
  406711:	e8 7a fe ff ff       	call   406590 <__fwritex>
  406716:	45 85 ff             	test   %r15d,%r15d
  406719:	74 b8                	je     4066d3 <fwrite+0x43>
  40671b:	4c 89 e7             	mov    %r12,%rdi
  40671e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406722:	e8 d9 fb ff ff       	call   406300 <__unlockfile>
  406727:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40672b:	eb a6                	jmp    4066d3 <fwrite+0x43>
  40672d:	0f 1f 00             	nopl   (%rax)

0000000000406730 <sn_write>:
  406730:	f3 0f 1e fa          	endbr64
  406734:	55                   	push   %rbp
  406735:	48 89 f1             	mov    %rsi,%rcx
  406738:	48 89 e5             	mov    %rsp,%rbp
  40673b:	41 55                	push   %r13
  40673d:	49 89 d5             	mov    %rdx,%r13
  406740:	41 54                	push   %r12
  406742:	53                   	push   %rbx
  406743:	48 89 fb             	mov    %rdi,%rbx
  406746:	48 83 ec 18          	sub    $0x18,%rsp
  40674a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406751:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406755:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406759:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40675e:	49 8b 3c 24          	mov    (%r12),%rdi
  406762:	48 29 f2             	sub    %rsi,%rdx
  406765:	48 39 c2             	cmp    %rax,%rdx
  406768:	48 0f 47 d0          	cmova  %rax,%rdx
  40676c:	48 85 d2             	test   %rdx,%rdx
  40676f:	75 2f                	jne    4067a0 <sn_write+0x70>
  406771:	49 39 c5             	cmp    %rax,%r13
  406774:	49 0f 46 c5          	cmovbe %r13,%rax
  406778:	48 89 c2             	mov    %rax,%rdx
  40677b:	48 85 c0             	test   %rax,%rax
  40677e:	75 5c                	jne    4067dc <sn_write+0xac>
  406780:	c6 07 00             	movb   $0x0,(%rdi)
  406783:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406787:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40678b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40678f:	48 83 c4 18          	add    $0x18,%rsp
  406793:	4c 89 e8             	mov    %r13,%rax
  406796:	5b                   	pop    %rbx
  406797:	41 5c                	pop    %r12
  406799:	41 5d                	pop    %r13
  40679b:	5d                   	pop    %rbp
  40679c:	c3                   	ret
  40679d:	0f 1f 00             	nopl   (%rax)
  4067a0:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4067a4:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4067a8:	e8 00 f4 ff ff       	call   405bad <memcpy>
  4067ad:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4067b1:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4067b6:	49 8b 3c 24          	mov    (%r12),%rdi
  4067ba:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4067be:	48 29 d0             	sub    %rdx,%rax
  4067c1:	48 01 d7             	add    %rdx,%rdi
  4067c4:	49 39 c5             	cmp    %rax,%r13
  4067c7:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4067cc:	49 0f 46 c5          	cmovbe %r13,%rax
  4067d0:	49 89 3c 24          	mov    %rdi,(%r12)
  4067d4:	48 89 c2             	mov    %rax,%rdx
  4067d7:	48 85 c0             	test   %rax,%rax
  4067da:	74 a4                	je     406780 <sn_write+0x50>
  4067dc:	48 89 ce             	mov    %rcx,%rsi
  4067df:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4067e3:	e8 c5 f3 ff ff       	call   405bad <memcpy>
  4067e8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4067ec:	49 8b 3c 24          	mov    (%r12),%rdi
  4067f0:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  4067f5:	48 01 d7             	add    %rdx,%rdi
  4067f8:	49 89 3c 24          	mov    %rdi,(%r12)
  4067fc:	eb 82                	jmp    406780 <sn_write+0x50>
  4067fe:	66 90                	xchg   %ax,%ax

0000000000406800 <vsnprintf>:
  406800:	f3 0f 1e fa          	endbr64
  406804:	55                   	push   %rbp
  406805:	49 89 c9             	mov    %rcx,%r9
  406808:	49 89 d0             	mov    %rdx,%r8
  40680b:	48 89 e5             	mov    %rsp,%rbp
  40680e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  406815:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40681c:	00 00 
  40681e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406822:	31 c0                	xor    %eax,%eax
  406824:	48 85 f6             	test   %rsi,%rsi
  406827:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  40682b:	0f 95 c1             	setne  %cl
  40682e:	48 0f 45 d7          	cmovne %rdi,%rdx
  406832:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  406839:	0f b6 c9             	movzbl %cl,%ecx
  40683c:	48 29 ce             	sub    %rcx,%rsi
  40683f:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406844:	c6 02 00             	movb   $0x0,(%rdx)
  406847:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40684e:	4c 89 ca             	mov    %r9,%rdx
  406851:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406858:	4c 89 c6             	mov    %r8,%rsi
  40685b:	f3 48 ab             	rep stos %rax,(%rdi)
  40685e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 406730 <sn_write>
  406865:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40686c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406873:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406877:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40687e:	48 8b 05 5b 25 00 00 	mov    0x255b(%rip),%rax        # 408de0 <errmsgstr+0x780>
  406885:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406889:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406890:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406894:	e8 77 f0 ff ff       	call   405910 <vfprintf>
  406899:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40689d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4068a4:	00 00 
  4068a6:	75 02                	jne    4068aa <vsnprintf+0xaa>
  4068a8:	c9                   	leave
  4068a9:	c3                   	ret
  4068aa:	e8 71 be ff ff       	call   402720 <__stack_chk_fail>
  4068af:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4068b6:	00 00 00 
  4068b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004068c0 <memchr>:
  4068c0:	f3 0f 1e fa          	endbr64
  4068c4:	48 89 d0             	mov    %rdx,%rax
  4068c7:	40 0f b6 ce          	movzbl %sil,%ecx
  4068cb:	40 f6 c7 07          	test   $0x7,%dil
  4068cf:	75 1c                	jne    4068ed <memchr+0x2d>
  4068d1:	eb 2d                	jmp    406900 <memchr+0x40>
  4068d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4068d8:	0f b6 17             	movzbl (%rdi),%edx
  4068db:	39 ca                	cmp    %ecx,%edx
  4068dd:	74 28                	je     406907 <memchr+0x47>
  4068df:	48 83 c7 01          	add    $0x1,%rdi
  4068e3:	48 83 e8 01          	sub    $0x1,%rax
  4068e7:	40 f6 c7 07          	test   $0x7,%dil
  4068eb:	74 13                	je     406900 <memchr+0x40>
  4068ed:	48 85 c0             	test   %rax,%rax
  4068f0:	75 e6                	jne    4068d8 <memchr+0x18>
  4068f2:	31 d2                	xor    %edx,%edx
  4068f4:	48 89 d0             	mov    %rdx,%rax
  4068f7:	c3                   	ret
  4068f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4068ff:	00 
  406900:	31 d2                	xor    %edx,%edx
  406902:	48 85 c0             	test   %rax,%rax
  406905:	74 ed                	je     4068f4 <memchr+0x34>
  406907:	0f b6 17             	movzbl (%rdi),%edx
  40690a:	39 ca                	cmp    %ecx,%edx
  40690c:	0f 84 ce 00 00 00    	je     4069e0 <memchr+0x120>
  406912:	48 83 f8 07          	cmp    $0x7,%rax
  406916:	0f 86 c4 00 00 00    	jbe    4069e0 <memchr+0x120>
  40691c:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  406923:	01 01 01 
  406926:	4c 63 c1             	movslq %ecx,%r8
  406929:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  406930:	fe fe fe 
  406933:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40693a:	80 80 80 
  40693d:	4c 0f af c2          	imul   %rdx,%r8
  406941:	48 89 fa             	mov    %rdi,%rdx
  406944:	eb 48                	jmp    40698e <memchr+0xce>
  406946:	0f 1f 00             	nopl   (%rax)
  406949:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406950:	00 00 00 00 
  406954:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40695b:	00 00 00 00 
  40695f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406966:	00 00 00 00 
  40696a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406971:	00 00 00 00 
  406975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40697c:	00 00 00 00 
  406980:	48 83 e8 08          	sub    $0x8,%rax
  406984:	48 83 c2 08          	add    $0x8,%rdx
  406988:	48 83 f8 07          	cmp    $0x7,%rax
  40698c:	76 5a                	jbe    4069e8 <memchr+0x128>
  40698e:	48 8b 32             	mov    (%rdx),%rsi
  406991:	4c 31 c6             	xor    %r8,%rsi
  406994:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406998:	48 f7 d6             	not    %rsi
  40699b:	48 21 fe             	and    %rdi,%rsi
  40699e:	4c 85 ce             	test   %r9,%rsi
  4069a1:	74 dd                	je     406980 <memchr+0xc0>
  4069a3:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4069aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069b1:	00 00 00 00 
  4069b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069bc:	00 00 00 00 
  4069c0:	0f b6 32             	movzbl (%rdx),%esi
  4069c3:	39 ce                	cmp    %ecx,%esi
  4069c5:	0f 84 29 ff ff ff    	je     4068f4 <memchr+0x34>
  4069cb:	48 83 c2 01          	add    $0x1,%rdx
  4069cf:	48 83 e8 01          	sub    $0x1,%rax
  4069d3:	75 eb                	jne    4069c0 <memchr+0x100>
  4069d5:	e9 18 ff ff ff       	jmp    4068f2 <memchr+0x32>
  4069da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4069e0:	48 89 fa             	mov    %rdi,%rdx
  4069e3:	eb db                	jmp    4069c0 <memchr+0x100>
  4069e5:	0f 1f 00             	nopl   (%rax)
  4069e8:	48 85 c0             	test   %rax,%rax
  4069eb:	75 d3                	jne    4069c0 <memchr+0x100>
  4069ed:	e9 00 ff ff ff       	jmp    4068f2 <memchr+0x32>
  4069f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4069f9:	00 00 00 
  4069fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406a00 <__stpcpy>:
  406a00:	f3 0f 1e fa          	endbr64
  406a04:	48 89 f9             	mov    %rdi,%rcx
  406a07:	48 89 f8             	mov    %rdi,%rax
  406a0a:	48 89 f2             	mov    %rsi,%rdx
  406a0d:	48 31 f1             	xor    %rsi,%rcx
  406a10:	83 e1 07             	and    $0x7,%ecx
  406a13:	74 5c                	je     406a71 <__stpcpy+0x71>
  406a15:	0f b6 0a             	movzbl (%rdx),%ecx
  406a18:	88 08                	mov    %cl,(%rax)
  406a1a:	84 c9                	test   %cl,%cl
  406a1c:	0f 84 c6 00 00 00    	je     406ae8 <__stpcpy+0xe8>
  406a22:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406a29:	00 
  406a2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a31:	00 00 00 00 
  406a35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a3c:	00 00 00 00 
  406a40:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406a44:	48 83 c2 01          	add    $0x1,%rdx
  406a48:	48 83 c0 01          	add    $0x1,%rax
  406a4c:	88 08                	mov    %cl,(%rax)
  406a4e:	84 c9                	test   %cl,%cl
  406a50:	75 ee                	jne    406a40 <__stpcpy+0x40>
  406a52:	c3                   	ret
  406a53:	66 90                	xchg   %ax,%ax
  406a55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a5c:	00 00 00 00 
  406a60:	0f b6 0a             	movzbl (%rdx),%ecx
  406a63:	88 08                	mov    %cl,(%rax)
  406a65:	84 c9                	test   %cl,%cl
  406a67:	74 e9                	je     406a52 <__stpcpy+0x52>
  406a69:	48 83 c2 01          	add    $0x1,%rdx
  406a6d:	48 83 c0 01          	add    $0x1,%rax
  406a71:	f6 c2 07             	test   $0x7,%dl
  406a74:	75 ea                	jne    406a60 <__stpcpy+0x60>
  406a76:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  406a7d:	fe fe fe 
  406a80:	48 8b 0a             	mov    (%rdx),%rcx
  406a83:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  406a8a:	80 80 80 
  406a8d:	48 89 cf             	mov    %rcx,%rdi
  406a90:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406a94:	48 f7 d7             	not    %rdi
  406a97:	48 21 fe             	and    %rdi,%rsi
  406a9a:	4c 85 ce             	test   %r9,%rsi
  406a9d:	0f 85 72 ff ff ff    	jne    406a15 <__stpcpy+0x15>
  406aa3:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406aaa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406ab1:	00 00 00 00 
  406ab5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406abc:	00 00 00 00 
  406ac0:	48 83 c2 08          	add    $0x8,%rdx
  406ac4:	48 89 08             	mov    %rcx,(%rax)
  406ac7:	48 83 c0 08          	add    $0x8,%rax
  406acb:	48 8b 0a             	mov    (%rdx),%rcx
  406ace:	48 89 cf             	mov    %rcx,%rdi
  406ad1:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406ad5:	48 f7 d7             	not    %rdi
  406ad8:	48 21 fe             	and    %rdi,%rsi
  406adb:	4c 85 ce             	test   %r9,%rsi
  406ade:	74 e0                	je     406ac0 <__stpcpy+0xc0>
  406ae0:	e9 30 ff ff ff       	jmp    406a15 <__stpcpy+0x15>
  406ae5:	0f 1f 00             	nopl   (%rax)
  406ae8:	c3                   	ret
  406ae9:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406af0:	00 00 00 
  406af3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406afa:	00 00 00 
  406afd:	0f 1f 00             	nopl   (%rax)

0000000000406b00 <strlen>:
  406b00:	f3 0f 1e fa          	endbr64
  406b04:	49 89 f8             	mov    %rdi,%r8
  406b07:	48 89 f8             	mov    %rdi,%rax
  406b0a:	40 f6 c7 07          	test   $0x7,%dil
  406b0e:	75 18                	jne    406b28 <strlen+0x28>
  406b10:	eb 26                	jmp    406b38 <strlen+0x38>
  406b12:	0f 1f 00             	nopl   (%rax)
  406b15:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b1c:	00 00 00 00 
  406b20:	48 83 c0 01          	add    $0x1,%rax
  406b24:	a8 07                	test   $0x7,%al
  406b26:	74 10                	je     406b38 <strlen+0x38>
  406b28:	80 38 00             	cmpb   $0x0,(%rax)
  406b2b:	75 f3                	jne    406b20 <strlen+0x20>
  406b2d:	4c 29 c0             	sub    %r8,%rax
  406b30:	c3                   	ret
  406b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b38:	48 bf ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rdi
  406b3f:	fe fe fe 
  406b42:	48 8b 10             	mov    (%rax),%rdx
  406b45:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  406b4c:	80 80 80 
  406b4f:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406b53:	48 f7 d2             	not    %rdx
  406b56:	48 21 ca             	and    %rcx,%rdx
  406b59:	48 85 f2             	test   %rsi,%rdx
  406b5c:	75 26                	jne    406b84 <strlen+0x84>
  406b5e:	66 90                	xchg   %ax,%ax
  406b60:	48 8b 50 08          	mov    0x8(%rax),%rdx
  406b64:	48 83 c0 08          	add    $0x8,%rax
  406b68:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406b6c:	48 f7 d2             	not    %rdx
  406b6f:	48 21 ca             	and    %rcx,%rdx
  406b72:	48 85 f2             	test   %rsi,%rdx
  406b75:	74 e9                	je     406b60 <strlen+0x60>
  406b77:	eb 0b                	jmp    406b84 <strlen+0x84>
  406b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b80:	48 83 c0 01          	add    $0x1,%rax
  406b84:	80 38 00             	cmpb   $0x0,(%rax)
  406b87:	75 f7                	jne    406b80 <strlen+0x80>
  406b89:	4c 29 c0             	sub    %r8,%rax
  406b8c:	c3                   	ret

0000000000406b8d <__set_thread_area>:
  406b8d:	48 89 fe             	mov    %rdi,%rsi
  406b90:	bf 02 10 00 00       	mov    $0x1002,%edi
  406b95:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406b9a:	0f 05                	syscall
  406b9c:	c3                   	ret
  406b9d:	0f 1f 00             	nopl   (%rax)

0000000000406ba0 <__lseek>:
  406ba0:	f3 0f 1e fa          	endbr64
  406ba4:	48 63 ff             	movslq %edi,%rdi
  406ba7:	48 63 d2             	movslq %edx,%rdx
  406baa:	b8 08 00 00 00       	mov    $0x8,%eax
  406baf:	0f 05                	syscall
  406bb1:	48 89 c7             	mov    %rax,%rdi
  406bb4:	e9 07 00 00 00       	jmp    406bc0 <__syscall_ret>
  406bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406bc0 <__syscall_ret>:
  406bc0:	f3 0f 1e fa          	endbr64
  406bc4:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406bcb:	77 0b                	ja     406bd8 <__syscall_ret+0x18>
  406bcd:	48 89 f8             	mov    %rdi,%rax
  406bd0:	c3                   	ret
  406bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406bd8:	55                   	push   %rbp
  406bd9:	48 89 e5             	mov    %rsp,%rbp
  406bdc:	53                   	push   %rbx
  406bdd:	48 89 fb             	mov    %rdi,%rbx
  406be0:	48 83 ec 08          	sub    $0x8,%rsp
  406be4:	e8 27 f4 ff ff       	call   406010 <__errno_location>
  406be9:	89 df                	mov    %ebx,%edi
  406beb:	f7 df                	neg    %edi
  406bed:	89 38                	mov    %edi,(%rax)
  406bef:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406bf6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406bfa:	c9                   	leave
  406bfb:	c3                   	ret
  406bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406c00 <wcrtomb>:
  406c00:	f3 0f 1e fa          	endbr64
  406c04:	48 85 ff             	test   %rdi,%rdi
  406c07:	0f 84 d6 00 00 00    	je     406ce3 <wcrtomb+0xe3>
  406c0d:	83 fe 7f             	cmp    $0x7f,%esi
  406c10:	0f 86 ca 00 00 00    	jbe    406ce0 <wcrtomb+0xe0>
  406c16:	55                   	push   %rbp
  406c17:	89 f0                	mov    %esi,%eax
  406c19:	48 89 f9             	mov    %rdi,%rcx
  406c1c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406c23:	00 00 
  406c25:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406c2c:	48 89 e5             	mov    %rsp,%rbp
  406c2f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406c33:	74 53                	je     406c88 <wcrtomb+0x88>
  406c35:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406c3b:	0f 86 af 00 00 00    	jbe    406cf0 <wcrtomb+0xf0>
  406c41:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406c47:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406c4d:	0f 86 bd 00 00 00    	jbe    406d10 <wcrtomb+0x110>
  406c53:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406c59:	0f 86 b1 00 00 00    	jbe    406d10 <wcrtomb+0x110>
  406c5f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406c65:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406c6b:	76 33                	jbe    406ca0 <wcrtomb+0xa0>
  406c6d:	e8 9e f3 ff ff       	call   406010 <__errno_location>
  406c72:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406c78:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406c7f:	5d                   	pop    %rbp
  406c80:	c3                   	ret
  406c81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c88:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406c8d:	83 f8 7f             	cmp    $0x7f,%eax
  406c90:	77 db                	ja     406c6d <wcrtomb+0x6d>
  406c92:	40 88 37             	mov    %sil,(%rdi)
  406c95:	b8 01 00 00 00       	mov    $0x1,%eax
  406c9a:	5d                   	pop    %rbp
  406c9b:	c3                   	ret
  406c9c:	0f 1f 40 00          	nopl   0x0(%rax)
  406ca0:	89 c7                	mov    %eax,%edi
  406ca2:	83 e0 3f             	and    $0x3f,%eax
  406ca5:	89 f2                	mov    %esi,%edx
  406ca7:	c1 fe 0c             	sar    $0xc,%esi
  406caa:	c1 ff 06             	sar    $0x6,%edi
  406cad:	c1 e0 08             	shl    $0x8,%eax
  406cb0:	83 e6 3f             	and    $0x3f,%esi
  406cb3:	83 e7 3f             	and    $0x3f,%edi
  406cb6:	c1 fa 12             	sar    $0x12,%edx
  406cb9:	09 f8                	or     %edi,%eax
  406cbb:	0f b6 d2             	movzbl %dl,%edx
  406cbe:	c1 e0 08             	shl    $0x8,%eax
  406cc1:	09 f0                	or     %esi,%eax
  406cc3:	8b 35 47 18 00 00    	mov    0x1847(%rip),%esi        # 408510 <states+0x1f0>
  406cc9:	c1 e0 08             	shl    $0x8,%eax
  406ccc:	09 d0                	or     %edx,%eax
  406cce:	09 f0                	or     %esi,%eax
  406cd0:	89 01                	mov    %eax,(%rcx)
  406cd2:	b8 04 00 00 00       	mov    $0x4,%eax
  406cd7:	5d                   	pop    %rbp
  406cd8:	c3                   	ret
  406cd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ce0:	40 88 37             	mov    %sil,(%rdi)
  406ce3:	b8 01 00 00 00       	mov    $0x1,%eax
  406ce8:	c3                   	ret
  406ce9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406cf0:	89 f2                	mov    %esi,%edx
  406cf2:	83 e0 3f             	and    $0x3f,%eax
  406cf5:	c1 fa 06             	sar    $0x6,%edx
  406cf8:	83 c8 80             	or     $0xffffff80,%eax
  406cfb:	83 ca c0             	or     $0xffffffc0,%edx
  406cfe:	88 47 01             	mov    %al,0x1(%rdi)
  406d01:	b8 02 00 00 00       	mov    $0x2,%eax
  406d06:	88 17                	mov    %dl,(%rdi)
  406d08:	5d                   	pop    %rbp
  406d09:	c3                   	ret
  406d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d10:	89 c2                	mov    %eax,%edx
  406d12:	c1 fa 0c             	sar    $0xc,%edx
  406d15:	83 ca e0             	or     $0xffffffe0,%edx
  406d18:	88 11                	mov    %dl,(%rcx)
  406d1a:	89 c2                	mov    %eax,%edx
  406d1c:	83 e0 3f             	and    $0x3f,%eax
  406d1f:	c1 fa 06             	sar    $0x6,%edx
  406d22:	83 c8 80             	or     $0xffffff80,%eax
  406d25:	83 e2 3f             	and    $0x3f,%edx
  406d28:	88 41 02             	mov    %al,0x2(%rcx)
  406d2b:	b8 03 00 00 00       	mov    $0x3,%eax
  406d30:	83 ca 80             	or     $0xffffff80,%edx
  406d33:	88 51 01             	mov    %dl,0x1(%rcx)
  406d36:	5d                   	pop    %rbp
  406d37:	c3                   	ret
  406d38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406d3f:	00 

0000000000406d40 <close_file>:
  406d40:	48 85 ff             	test   %rdi,%rdi
  406d43:	74 6b                	je     406db0 <close_file+0x70>
  406d45:	55                   	push   %rbp
  406d46:	48 89 e5             	mov    %rsp,%rbp
  406d49:	53                   	push   %rbx
  406d4a:	48 89 fb             	mov    %rdi,%rbx
  406d4d:	48 83 ec 08          	sub    $0x8,%rsp
  406d51:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406d57:	85 c0                	test   %eax,%eax
  406d59:	79 3d                	jns    406d98 <close_file+0x58>
  406d5b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406d5f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406d63:	74 0a                	je     406d6f <close_file+0x2f>
  406d65:	31 d2                	xor    %edx,%edx
  406d67:	31 f6                	xor    %esi,%esi
  406d69:	48 89 df             	mov    %rbx,%rdi
  406d6c:	ff 53 48             	call   *0x48(%rbx)
  406d6f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406d73:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406d77:	48 39 c6             	cmp    %rax,%rsi
  406d7a:	74 24                	je     406da0 <close_file+0x60>
  406d7c:	48 29 c6             	sub    %rax,%rsi
  406d7f:	48 89 df             	mov    %rbx,%rdi
  406d82:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406d86:	ba 01 00 00 00       	mov    $0x1,%edx
  406d8b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d8f:	c9                   	leave
  406d90:	ff e0                	jmp    *%rax
  406d92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d98:	e8 a3 f4 ff ff       	call   406240 <__lockfile>
  406d9d:	eb bc                	jmp    406d5b <close_file+0x1b>
  406d9f:	90                   	nop
  406da0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406da4:	c9                   	leave
  406da5:	c3                   	ret
  406da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406dad:	00 00 00 
  406db0:	c3                   	ret
  406db1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406db8:	00 00 00 
  406dbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406dc0 <__stdio_exit>:
  406dc0:	f3 0f 1e fa          	endbr64
  406dc4:	55                   	push   %rbp
  406dc5:	48 89 e5             	mov    %rsp,%rbp
  406dc8:	53                   	push   %rbx
  406dc9:	48 83 ec 08          	sub    $0x8,%rsp
  406dcd:	e8 7e 01 00 00       	call   406f50 <__ofl_lock>
  406dd2:	48 8b 18             	mov    (%rax),%rbx
  406dd5:	48 85 db             	test   %rbx,%rbx
  406dd8:	74 17                	je     406df1 <__stdio_exit+0x31>
  406dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406de0:	48 89 df             	mov    %rbx,%rdi
  406de3:	e8 58 ff ff ff       	call   406d40 <close_file>
  406de8:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406dec:	48 85 db             	test   %rbx,%rbx
  406def:	75 ef                	jne    406de0 <__stdio_exit+0x20>
  406df1:	48 8b 3d a0 49 00 00 	mov    0x49a0(%rip),%rdi        # 40b798 <__stderr_used>
  406df8:	e8 43 ff ff ff       	call   406d40 <close_file>
  406dfd:	48 8b 3d 04 42 00 00 	mov    0x4204(%rip),%rdi        # 40b008 <__stdout_used>
  406e04:	e8 37 ff ff ff       	call   406d40 <close_file>
  406e09:	48 8b 3d 88 49 00 00 	mov    0x4988(%rip),%rdi        # 40b798 <__stderr_used>
  406e10:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406e14:	c9                   	leave
  406e15:	e9 26 ff ff ff       	jmp    406d40 <close_file>
  406e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406e20 <__stdio_write>:
  406e20:	f3 0f 1e fa          	endbr64
  406e24:	55                   	push   %rbp
  406e25:	48 89 e5             	mov    %rsp,%rbp
  406e28:	41 57                	push   %r15
  406e2a:	41 56                	push   %r14
  406e2c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406e30:	41 55                	push   %r13
  406e32:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406e38:	41 54                	push   %r12
  406e3a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406e40:	53                   	push   %rbx
  406e41:	48 89 fb             	mov    %rdi,%rbx
  406e44:	48 83 ec 48          	sub    $0x48,%rsp
  406e48:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406e4c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406e50:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406e57:	00 00 
  406e59:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406e5d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406e61:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406e65:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406e69:	49 29 c0             	sub    %rax,%r8
  406e6c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406e70:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406e74:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406e78:	eb 37                	jmp    406eb1 <__stdio_write+0x91>
  406e7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e80:	48 85 c0             	test   %rax,%rax
  406e83:	0f 88 8f 00 00 00    	js     406f18 <__stdio_write+0xf8>
  406e89:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406e8d:	49 29 c6             	sub    %rax,%r14
  406e90:	48 39 c2             	cmp    %rax,%rdx
  406e93:	73 12                	jae    406ea7 <__stdio_write+0x87>
  406e95:	41 83 ed 01          	sub    $0x1,%r13d
  406e99:	48 29 d0             	sub    %rdx,%rax
  406e9c:	49 83 c7 10          	add    $0x10,%r15
  406ea0:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406ea4:	4d 63 e5             	movslq %r13d,%r12
  406ea7:	48 29 c2             	sub    %rax,%rdx
  406eaa:	49 01 07             	add    %rax,(%r15)
  406ead:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406eb1:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406eb5:	b8 14 00 00 00       	mov    $0x14,%eax
  406eba:	4c 89 fe             	mov    %r15,%rsi
  406ebd:	4c 89 e2             	mov    %r12,%rdx
  406ec0:	0f 05                	syscall
  406ec2:	48 89 c7             	mov    %rax,%rdi
  406ec5:	e8 f6 fc ff ff       	call   406bc0 <__syscall_ret>
  406eca:	49 39 c6             	cmp    %rax,%r14
  406ecd:	75 b1                	jne    406e80 <__stdio_write+0x60>
  406ecf:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406ed3:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406ed7:	48 01 c1             	add    %rax,%rcx
  406eda:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406edf:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406ee3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406ee7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406eec:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406ef0:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406ef4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406ef8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406eff:	00 00 
  406f01:	75 3a                	jne    406f3d <__stdio_write+0x11d>
  406f03:	48 83 c4 48          	add    $0x48,%rsp
  406f07:	5b                   	pop    %rbx
  406f08:	41 5c                	pop    %r12
  406f0a:	41 5d                	pop    %r13
  406f0c:	41 5e                	pop    %r14
  406f0e:	41 5f                	pop    %r15
  406f10:	5d                   	pop    %rbp
  406f11:	c3                   	ret
  406f12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406f18:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406f1c:	83 0b 20             	orl    $0x20,(%rbx)
  406f1f:	31 c0                	xor    %eax,%eax
  406f21:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406f28:	00 
  406f29:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406f2d:	41 83 fd 02          	cmp    $0x2,%r13d
  406f31:	74 c1                	je     406ef4 <__stdio_write+0xd4>
  406f33:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406f37:	49 2b 47 08          	sub    0x8(%r15),%rax
  406f3b:	eb b7                	jmp    406ef4 <__stdio_write+0xd4>
  406f3d:	e8 de b7 ff ff       	call   402720 <__stack_chk_fail>
  406f42:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406f49:	00 00 00 
  406f4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406f50 <__ofl_lock>:
  406f50:	f3 0f 1e fa          	endbr64
  406f54:	55                   	push   %rbp
  406f55:	48 8d 3d 44 48 00 00 	lea    0x4844(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f5c:	48 89 e5             	mov    %rsp,%rbp
  406f5f:	e8 1c 00 00 00       	call   406f80 <__lock>
  406f64:	48 8d 05 3d 48 00 00 	lea    0x483d(%rip),%rax        # 40b7a8 <ofl_head>
  406f6b:	5d                   	pop    %rbp
  406f6c:	c3                   	ret
  406f6d:	0f 1f 00             	nopl   (%rax)

0000000000406f70 <__ofl_unlock>:
  406f70:	f3 0f 1e fa          	endbr64
  406f74:	48 8d 3d 25 48 00 00 	lea    0x4825(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f7b:	e9 e0 00 00 00       	jmp    407060 <__unlock>

0000000000406f80 <__lock>:
  406f80:	f3 0f 1e fa          	endbr64
  406f84:	0f be 0d d8 41 00 00 	movsbl 0x41d8(%rip),%ecx        # 40b163 <__libc+0x3>
  406f8b:	85 c9                	test   %ecx,%ecx
  406f8d:	74 51                	je     406fe0 <__lock+0x60>
  406f8f:	31 c0                	xor    %eax,%eax
  406f91:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406f96:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406f9a:	89 c2                	mov    %eax,%edx
  406f9c:	85 c9                	test   %ecx,%ecx
  406f9e:	78 48                	js     406fe8 <__lock+0x68>
  406fa0:	85 c0                	test   %eax,%eax
  406fa2:	74 3c                	je     406fe0 <__lock+0x60>
  406fa4:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406faa:	eb 1e                	jmp    406fca <__lock+0x4a>
  406fac:	0f 1f 40 00          	nopl   0x0(%rax)
  406fb0:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406fb6:	89 d1                	mov    %edx,%ecx
  406fb8:	89 c8                	mov    %ecx,%eax
  406fba:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406fbe:	89 c2                	mov    %eax,%edx
  406fc0:	39 c1                	cmp    %eax,%ecx
  406fc2:	74 1c                	je     406fe0 <__lock+0x60>
  406fc4:	41 83 e8 01          	sub    $0x1,%r8d
  406fc8:	74 2e                	je     406ff8 <__lock+0x78>
  406fca:	85 d2                	test   %edx,%edx
  406fcc:	79 e2                	jns    406fb0 <__lock+0x30>
  406fce:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406fd4:	89 d6                	mov    %edx,%esi
  406fd6:	eb e0                	jmp    406fb8 <__lock+0x38>
  406fd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406fdf:	00 
  406fe0:	c3                   	ret
  406fe1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406fe8:	c6 05 74 41 00 00 00 	movb   $0x0,0x4174(%rip)        # 40b163 <__libc+0x3>
  406fef:	85 c0                	test   %eax,%eax
  406ff1:	75 b1                	jne    406fa4 <__lock+0x24>
  406ff3:	c3                   	ret
  406ff4:	0f 1f 40 00          	nopl   0x0(%rax)
  406ff8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406ffe:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  407003:	41 83 c0 01          	add    $0x1,%r8d
  407007:	eb 1c                	jmp    407025 <__lock+0xa5>
  407009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407010:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  407017:	89 d0                	mov    %edx,%eax
  407019:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  40701e:	41 89 c0             	mov    %eax,%r8d
  407021:	39 c2                	cmp    %eax,%edx
  407023:	74 bb                	je     406fe0 <__lock+0x60>
  407025:	44 89 c2             	mov    %r8d,%edx
  407028:	45 85 c0             	test   %r8d,%r8d
  40702b:	79 e3                	jns    407010 <__lock+0x90>
  40702d:	49 63 d0             	movslq %r8d,%rdx
  407030:	45 31 d2             	xor    %r10d,%r10d
  407033:	b8 ca 00 00 00       	mov    $0xca,%eax
  407038:	be 80 00 00 00       	mov    $0x80,%esi
  40703d:	0f 05                	syscall
  40703f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407043:	75 09                	jne    40704e <__lock+0xce>
  407045:	31 f6                	xor    %esi,%esi
  407047:	b8 ca 00 00 00       	mov    $0xca,%eax
  40704c:	0f 05                	syscall
  40704e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  407055:	eb b9                	jmp    407010 <__lock+0x90>
  407057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40705e:	00 00 

0000000000407060 <__unlock>:
  407060:	f3 0f 1e fa          	endbr64
  407064:	8b 07                	mov    (%rdi),%eax
  407066:	85 c0                	test   %eax,%eax
  407068:	78 06                	js     407070 <__unlock+0x10>
  40706a:	c3                   	ret
  40706b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407070:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  407075:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  407079:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  40707e:	74 ea                	je     40706a <__unlock+0xa>
  407080:	be 81 00 00 00       	mov    $0x81,%esi
  407085:	b8 ca 00 00 00       	mov    $0xca,%eax
  40708a:	ba 01 00 00 00       	mov    $0x1,%edx
  40708f:	0f 05                	syscall
  407091:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407095:	75 d3                	jne    40706a <__unlock+0xa>
  407097:	b8 ca 00 00 00       	mov    $0xca,%eax
  40709c:	be 01 00 00 00       	mov    $0x1,%esi
  4070a1:	0f 05                	syscall
  4070a3:	c3                   	ret

Disassembly of section .fini:

00000000004070a4 <_fini>:
  4070a4:	50                   	push   %rax
  4070a5:	58                   	pop    %rax
  4070a6:	c3                   	ret
