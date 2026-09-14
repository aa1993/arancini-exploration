
test_movlhps_assert_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 1c 17 00 00       	call   402770 <__funcs_on_exit>
  401054:	e8 27 17 00 00       	call   402780 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 a0 5d 00 00       	call   406e00 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 59 50 00 00       	call   4060c0 <_Exit>

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
  40108a:	49 c7 c0 e4 70 40 00 	mov    $0x4070e4,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 f9 15 00 00       	jmp    4026a0 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 67 00 00 	lea    0x67fa(%rip),%rcx        # 408000 <_fini+0xf1c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 32 11 00 00       	call   402960 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 59 43 00 00       	call   405ba0 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 04 0f 00 00       	call   402760 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 67 00 00 	lea    0x6777(%rip),%rcx        # 408021 <_fini+0xf3d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 96 10 00 00       	call   402960 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 bd 42 00 00       	call   405ba0 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 68 0e 00 00       	call   402760 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 65 00 00 	lea    0x65ce(%rip),%rsi        # 408030 <_fini+0xf4c>
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
  401a9f:	e8 bc 0e 00 00       	call   402960 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 df 40 00 00       	call   405ba0 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 8a 0c 00 00       	call   402760 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 64 00 00 	lea    0x64d7(%rip),%rsi        # 408078 <_fini+0xf94>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 9e 0d 00 00       	call   402960 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 c1 3f 00 00       	call   405ba0 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 6c 0b 00 00       	call   402760 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 64 00 00 	lea    0x643b(%rip),%rsi        # 408099 <_fini+0xfb5>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 e8 0c 00 00       	call   402960 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 0f 3f 00 00       	call   405ba0 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 ba 0a 00 00       	call   402760 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 63 00 00 	lea    0x63b7(%rip),%rsi        # 4080aa <_fini+0xfc6>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 59 0c 00 00       	call   402960 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 80 3e 00 00       	call   405ba0 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 2b 0a 00 00       	call   402760 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 61 00 00 	lea    0x6191(%rip),%rsi        # 408030 <_fini+0xf4c>
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
  401edc:	e8 7f 0a 00 00       	call   402960 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 a2 3c 00 00       	call   405ba0 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 4d 08 00 00       	call   402760 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 60 00 00 	lea    0x609a(%rip),%rsi        # 408078 <_fini+0xf94>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 61 09 00 00       	call   402960 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 84 3b 00 00       	call   405ba0 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 2f 07 00 00       	call   402760 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 60 00 00 	lea    0x601a(%rip),%rsi        # 4080b5 <_fini+0xfd1>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 ab 08 00 00       	call   402960 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 d2 3a 00 00       	call   405ba0 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 7d 06 00 00       	call   402760 <__stack_chk_fail>
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
  402129:	48 8d 35 96 5f 00 00 	lea    0x5f96(%rip),%rsi        # 4080c6 <_fini+0xfe2>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 1c 08 00 00       	call   402960 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 43 3a 00 00       	call   405ba0 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 ee 05 00 00       	call   402760 <__stack_chk_fail>
  402172:	c9                   	leave
  402173:	c3                   	ret

0000000000402174 <main>:
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "sse_service.h"
int main() {
  402174:	f3 0f 1e fa          	endbr64
  402178:	55                   	push   %rbp
  402179:	48 89 e5             	mov    %rsp,%rbp
  40217c:	48 81 ec b0 03 00 00 	sub    $0x3b0,%rsp
  402183:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40218a:	00 00 
  40218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402190:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402192:	f3 0f 10 05 9e 5f 00 	movss  0x5f9e(%rip),%xmm0        # 408138 <_fini+0x1054>
  402199:	00 
  40219a:	f3 0f 11 85 b0 fc ff 	movss  %xmm0,-0x350(%rbp)
  4021a1:	ff 
  4021a2:	f3 0f 10 05 92 5f 00 	movss  0x5f92(%rip),%xmm0        # 40813c <_fini+0x1058>
  4021a9:	00 
  4021aa:	f3 0f 11 85 b4 fc ff 	movss  %xmm0,-0x34c(%rbp)
  4021b1:	ff 
  4021b2:	f3 0f 10 05 86 5f 00 	movss  0x5f86(%rip),%xmm0        # 408140 <_fini+0x105c>
  4021b9:	00 
  4021ba:	f3 0f 11 85 b8 fc ff 	movss  %xmm0,-0x348(%rbp)
  4021c1:	ff 
  4021c2:	f3 0f 10 05 7a 5f 00 	movss  0x5f7a(%rip),%xmm0        # 408144 <_fini+0x1060>
  4021c9:	00 
  4021ca:	f3 0f 11 85 bc fc ff 	movss  %xmm0,-0x344(%rbp)
  4021d1:	ff 
#ifdef SRC2
    C_IN_TYPE in2[IN_LEN] = SRC2;
  4021d2:	f3 0f 10 05 6e 5f 00 	movss  0x5f6e(%rip),%xmm0        # 408148 <_fini+0x1064>
  4021d9:	00 
  4021da:	f3 0f 11 85 c0 fc ff 	movss  %xmm0,-0x340(%rbp)
  4021e1:	ff 
  4021e2:	f3 0f 10 05 62 5f 00 	movss  0x5f62(%rip),%xmm0        # 40814c <_fini+0x1068>
  4021e9:	00 
  4021ea:	f3 0f 11 85 c4 fc ff 	movss  %xmm0,-0x33c(%rbp)
  4021f1:	ff 
  4021f2:	f3 0f 10 05 56 5f 00 	movss  0x5f56(%rip),%xmm0        # 408150 <_fini+0x106c>
  4021f9:	00 
  4021fa:	f3 0f 11 85 c8 fc ff 	movss  %xmm0,-0x338(%rbp)
  402201:	ff 
  402202:	f3 0f 10 05 4a 5f 00 	movss  0x5f4a(%rip),%xmm0        # 408154 <_fini+0x1070>
  402209:	00 
  40220a:	f3 0f 11 85 cc fc ff 	movss  %xmm0,-0x334(%rbp)
  402211:	ff 
#endif
    C_OUT_TYPE con[OUT_LEN] = CON;
  402212:	f3 0f 10 05 1e 5f 00 	movss  0x5f1e(%rip),%xmm0        # 408138 <_fini+0x1054>
  402219:	00 
  40221a:	f3 0f 11 85 d0 fc ff 	movss  %xmm0,-0x330(%rbp)
  402221:	ff 
  402222:	f3 0f 10 05 12 5f 00 	movss  0x5f12(%rip),%xmm0        # 40813c <_fini+0x1058>
  402229:	00 
  40222a:	f3 0f 11 85 d4 fc ff 	movss  %xmm0,-0x32c(%rbp)
  402231:	ff 
  402232:	f3 0f 10 05 0e 5f 00 	movss  0x5f0e(%rip),%xmm0        # 408148 <_fini+0x1064>
  402239:	00 
  40223a:	f3 0f 11 85 d8 fc ff 	movss  %xmm0,-0x328(%rbp)
  402241:	ff 
  402242:	f3 0f 10 05 02 5f 00 	movss  0x5f02(%rip),%xmm0        # 40814c <_fini+0x1068>
  402249:	00 
  40224a:	f3 0f 11 85 dc fc ff 	movss  %xmm0,-0x324(%rbp)
  402251:	ff 
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
  402252:	48 8d 95 b0 fc ff ff 	lea    -0x350(%rbp),%rdx
  402259:	48 8d 85 60 fc ff ff 	lea    -0x3a0(%rbp),%rax
  402260:	48 89 d6             	mov    %rdx,%rsi
  402263:	48 89 c7             	mov    %rax,%rdi
  402266:	e8 fe ee ff ff       	call   401169 <insert_f32>
#ifdef SRC2
    SSE_TYPE v2;
    INSERT(&v2, in2);
  40226b:	48 8d 95 c0 fc ff ff 	lea    -0x340(%rbp),%rdx
  402272:	48 8d 85 70 fc ff ff 	lea    -0x390(%rbp),%rax
  402279:	48 89 d6             	mov    %rdx,%rsi
  40227c:	48 89 c7             	mov    %rax,%rdi
  40227f:	e8 e5 ee ff ff       	call   401169 <insert_f32>
#endif

#ifdef IMM8
    SSE_TYPE res = INTRINSIC_FUN(v1, v2, IMM8);
#elifdef SRC2
    SSE_TYPE res = INTRINSIC_FUN(v1, v2);
  402284:	0f 28 85 70 fc ff ff 	movaps -0x390(%rbp),%xmm0
  40228b:	0f 28 8d 60 fc ff ff 	movaps -0x3a0(%rbp),%xmm1
  402292:	0f 29 8d 90 fc ff ff 	movaps %xmm1,-0x370(%rbp)
  402299:	0f 29 85 a0 fc ff ff 	movaps %xmm0,-0x360(%rbp)
  return (__m128) __builtin_ia32_movlhps ((__v4sf)__A, (__v4sf)__B);
  4022a0:	0f 28 85 90 fc ff ff 	movaps -0x370(%rbp),%xmm0
  4022a7:	0f 16 85 a0 fc ff ff 	movhps -0x360(%rbp),%xmm0
  4022ae:	90                   	nop
  4022af:	0f 29 85 80 fc ff ff 	movaps %xmm0,-0x380(%rbp)
#else
    SSE_TYPE res = INTRINSIC_FUN(v1);
#endif

    EXTRACT(out, res);
  4022b6:	0f 28 85 80 fc ff ff 	movaps -0x380(%rbp),%xmm0
  4022bd:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
  4022c4:	48 89 c7             	mov    %rax,%rdi
  4022c7:	e8 8a f3 ff ff       	call   401656 <extract_f32>

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  4022cc:	48 8d 95 b0 fc ff ff 	lea    -0x350(%rbp),%rdx
  4022d3:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  4022da:	48 89 d6             	mov    %rdx,%rsi
  4022dd:	48 89 c7             	mov    %rax,%rdi
  4022e0:	e8 95 f4 ff ff       	call   40177a <to_string_f32>
#ifdef SRC2
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  4022e5:	48 8d 95 c0 fc ff ff 	lea    -0x340(%rbp),%rdx
  4022ec:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  4022f3:	48 89 d6             	mov    %rdx,%rsi
  4022f6:	48 89 c7             	mov    %rax,%rdi
  4022f9:	e8 7c f4 ff ff       	call   40177a <to_string_f32>
#endif
    char out_s[255];
    TO_STRING_OUT(out_s, out);
  4022fe:	48 8d 95 e0 fc ff ff 	lea    -0x320(%rbp),%rdx
  402305:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40230c:	48 89 d6             	mov    %rdx,%rsi
  40230f:	48 89 c7             	mov    %rax,%rdi
  402312:	e8 63 f4 ff ff       	call   40177a <to_string_f32>
#else
    printf(STR(INST_NAME)"\n%s\n |\n\\/\n%s\n",in1_s, out_s);
#endif
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
  402317:	c7 85 5c fc ff ff 00 	movl   $0x0,-0x3a4(%rbp)
  40231e:	00 00 00 
  402321:	eb 5c                	jmp    40237f <main+0x20b>
        if(out[i] != con[i]){
  402323:	8b 85 5c fc ff ff    	mov    -0x3a4(%rbp),%eax
  402329:	48 98                	cltq
  40232b:	f3 0f 10 84 85 e0 fc 	movss  -0x320(%rbp,%rax,4),%xmm0
  402332:	ff ff 
  402334:	8b 85 5c fc ff ff    	mov    -0x3a4(%rbp),%eax
  40233a:	48 98                	cltq
  40233c:	f3 0f 10 8c 85 d0 fc 	movss  -0x330(%rbp,%rax,4),%xmm1
  402343:	ff ff 
  402345:	0f 2e c1             	ucomiss %xmm1,%xmm0
  402348:	7a 05                	jp     40234f <main+0x1db>
  40234a:	0f 2e c1             	ucomiss %xmm1,%xmm0
  40234d:	74 29                	je     402378 <main+0x204>
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d] != con[%d]\33[0m\n", i, i);
  40234f:	8b 95 5c fc ff ff    	mov    -0x3a4(%rbp),%edx
  402355:	8b 85 5c fc ff ff    	mov    -0x3a4(%rbp),%eax
  40235b:	48 8d 0d 76 5d 00 00 	lea    0x5d76(%rip),%rcx        # 4080d8 <_fini+0xff4>
  402362:	89 c6                	mov    %eax,%esi
  402364:	48 89 cf             	mov    %rcx,%rdi
  402367:	b8 00 00 00 00       	mov    $0x0,%eax
  40236c:	e8 4f 04 00 00       	call   4027c0 <printf>
            return 1;
  402371:	b8 01 00 00 00       	mov    $0x1,%eax
  402376:	eb 24                	jmp    40239c <main+0x228>
    for( int i = 0; i<OUT_LEN;i++){
  402378:	83 85 5c fc ff ff 01 	addl   $0x1,-0x3a4(%rbp)
  40237f:	83 bd 5c fc ff ff 03 	cmpl   $0x3,-0x3a4(%rbp)
  402386:	7e 9b                	jle    402323 <main+0x1af>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
  402388:	48 8d 05 81 5d 00 00 	lea    0x5d81(%rip),%rax        # 408110 <_fini+0x102c>
  40238f:	48 89 c7             	mov    %rax,%rdi
  402392:	e8 f9 04 00 00       	call   402890 <puts>
#endif

    return 0;
  402397:	b8 00 00 00 00       	mov    $0x0,%eax
}
  40239c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4023a0:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4023a7:	00 00 
  4023a9:	74 05                	je     4023b0 <main+0x23c>
  4023ab:	e8 b0 03 00 00       	call   402760 <__stack_chk_fail>
  4023b0:	c9                   	leave
  4023b1:	c3                   	ret
  4023b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4023b9:	00 00 00 
  4023bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004023c0 <dummy>:
  4023c0:	f3 0f 1e fa          	endbr64
  4023c4:	c3                   	ret
  4023c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4023cc:	00 00 00 
  4023cf:	90                   	nop

00000000004023d0 <dummy1>:
  4023d0:	f3 0f 1e fa          	endbr64
  4023d4:	c3                   	ret
  4023d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4023dc:	00 00 00 
  4023df:	90                   	nop

00000000004023e0 <__init_libc>:
  4023e0:	f3 0f 1e fa          	endbr64
  4023e4:	55                   	push   %rbp
  4023e5:	48 89 fa             	mov    %rdi,%rdx
  4023e8:	31 c0                	xor    %eax,%eax
  4023ea:	b9 26 00 00 00       	mov    $0x26,%ecx
  4023ef:	48 89 e5             	mov    %rsp,%rbp
  4023f2:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  4023f9:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402400:	f3 48 ab             	rep stos %rax,(%rdi)
  402403:	48 c7 c0 e8 b5 40 00 	mov    $0x40b5e8,%rax
  40240a:	48 89 10             	mov    %rdx,(%rax)
  40240d:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  402411:	0f 84 c9 01 00 00    	je     4025e0 <__init_libc+0x200>
  402417:	31 c0                	xor    %eax,%eax
  402419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402420:	48 89 c1             	mov    %rax,%rcx
  402423:	48 83 c0 01          	add    $0x1,%rax
  402427:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  40242c:	75 f2                	jne    402420 <__init_libc+0x40>
  40242e:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  402435:	00 
  402436:	48 01 d0             	add    %rdx,%rax
  402439:	48 89 05 28 8d 00 00 	mov    %rax,0x8d28(%rip)        # 40b168 <__libc+0x8>
  402440:	48 8b 10             	mov    (%rax),%rdx
  402443:	48 83 c0 08          	add    $0x8,%rax
  402447:	48 85 d2             	test   %rdx,%rdx
  40244a:	0f 84 a0 01 00 00    	je     4025f0 <__init_libc+0x210>
  402450:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402455:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40245c:	00 00 00 00 
  402460:	48 83 fa 25          	cmp    $0x25,%rdx
  402464:	77 0b                	ja     402471 <__init_libc+0x91>
  402466:	48 8b 08             	mov    (%rax),%rcx
  402469:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  402470:	ff 
  402471:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402475:	48 83 c0 10          	add    $0x10,%rax
  402479:	48 85 d2             	test   %rdx,%rdx
  40247c:	75 e2                	jne    402460 <__init_libc+0x80>
  40247e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402485:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402489:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402490:	48 89 0d b1 8c 00 00 	mov    %rcx,0x8cb1(%rip)        # 40b148 <__hwcap>
  402497:	48 85 c0             	test   %rax,%rax
  40249a:	74 07                	je     4024a3 <__init_libc+0xc3>
  40249c:	48 89 05 8d 8c 00 00 	mov    %rax,0x8c8d(%rip)        # 40b130 <__sysinfo>
  4024a3:	48 89 15 e6 8c 00 00 	mov    %rdx,0x8ce6(%rip)        # 40b190 <__libc+0x30>
  4024aa:	48 85 f6             	test   %rsi,%rsi
  4024ad:	0f 84 15 01 00 00    	je     4025c8 <__init_libc+0x1e8>
  4024b3:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  4024ba:	48 c7 c1 40 b1 40 00 	mov    $0x40b140,%rcx
  4024c1:	48 89 30             	mov    %rsi,(%rax)
  4024c4:	48 8d 46 01          	lea    0x1(%rsi),%rax
  4024c8:	48 89 31             	mov    %rsi,(%rcx)
  4024cb:	0f b6 16             	movzbl (%rsi),%edx
  4024ce:	84 d2                	test   %dl,%dl
  4024d0:	74 21                	je     4024f3 <__init_libc+0x113>
  4024d2:	0f 1f 00             	nopl   (%rax)
  4024d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4024dc:	00 00 00 00 
  4024e0:	80 fa 2f             	cmp    $0x2f,%dl
  4024e3:	75 03                	jne    4024e8 <__init_libc+0x108>
  4024e5:	48 89 01             	mov    %rax,(%rcx)
  4024e8:	0f b6 10             	movzbl (%rax),%edx
  4024eb:	48 83 c0 01          	add    $0x1,%rax
  4024ef:	84 d2                	test   %dl,%dl
  4024f1:	75 ed                	jne    4024e0 <__init_libc+0x100>
  4024f3:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4024fa:	e8 11 39 00 00       	call   405e10 <__init_tls>
  4024ff:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  402503:	e8 e8 01 00 00       	call   4026f0 <__init_ssp>
  402508:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  40250f:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  402516:	0f 84 84 00 00 00    	je     4025a0 <__init_libc+0x1c0>
  40251c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402520:	b8 07 00 00 00       	mov    $0x7,%eax
  402525:	be 03 00 00 00       	mov    $0x3,%esi
  40252a:	31 d2                	xor    %edx,%edx
  40252c:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  402533:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  40253a:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  402541:	00 00 00 00 
  402545:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  40254c:	00 00 00 
  40254f:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  402556:	00 00 00 
  402559:	0f 05                	syscall
  40255b:	85 c0                	test   %eax,%eax
  40255d:	79 01                	jns    402560 <__init_libc+0x180>
  40255f:	f4                   	hlt
  402560:	48 89 fa             	mov    %rdi,%rdx
  402563:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  40256a:	be 02 80 00 00       	mov    $0x8002,%esi
  40256f:	48 8d 3d e2 5b 00 00 	lea    0x5be2(%rip),%rdi        # 408158 <_fini+0x1074>
  402576:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  40257a:	74 0d                	je     402589 <__init_libc+0x1a9>
  40257c:	b8 02 00 00 00       	mov    $0x2,%eax
  402581:	0f 05                	syscall
  402583:	48 85 c0             	test   %rax,%rax
  402586:	79 01                	jns    402589 <__init_libc+0x1a9>
  402588:	f4                   	hlt
  402589:	48 83 c2 08          	add    $0x8,%rdx
  40258d:	4c 39 c2             	cmp    %r8,%rdx
  402590:	75 e4                	jne    402576 <__init_libc+0x196>
  402592:	c6 05 c9 8b 00 00 01 	movb   $0x1,0x8bc9(%rip)        # 40b162 <__libc+0x2>
  402599:	c9                   	leave
  40259a:	c3                   	ret
  40259b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025a0:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  4025a7:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  4025ae:	0f 85 68 ff ff ff    	jne    40251c <__init_libc+0x13c>
  4025b4:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4025b9:	0f 85 5d ff ff ff    	jne    40251c <__init_libc+0x13c>
  4025bf:	c9                   	leave
  4025c0:	c3                   	ret
  4025c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025c8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4025cc:	48 85 c0             	test   %rax,%rax
  4025cf:	74 2f                	je     402600 <__init_libc+0x220>
  4025d1:	48 89 c6             	mov    %rax,%rsi
  4025d4:	e9 da fe ff ff       	jmp    4024b3 <__init_libc+0xd3>
  4025d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025e0:	b8 08 00 00 00       	mov    $0x8,%eax
  4025e5:	e9 4c fe ff ff       	jmp    402436 <__init_libc+0x56>
  4025ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4025f0:	48 c7 05 4d 8b 00 00 	movq   $0x0,0x8b4d(%rip)        # 40b148 <__hwcap>
  4025f7:	00 00 00 00 
  4025fb:	e9 a3 fe ff ff       	jmp    4024a3 <__init_libc+0xc3>
  402600:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  402607:	48 8d 3d 89 5b 00 00 	lea    0x5b89(%rip),%rdi        # 408197 <_fini+0x10b3>
  40260e:	48 89 38             	mov    %rdi,(%rax)
  402611:	48 c7 c0 40 b1 40 00 	mov    $0x40b140,%rax
  402618:	48 89 38             	mov    %rdi,(%rax)
  40261b:	e9 d3 fe ff ff       	jmp    4024f3 <__init_libc+0x113>

0000000000402620 <__libc_start_init>:
  402620:	f3 0f 1e fa          	endbr64
  402624:	55                   	push   %rbp
  402625:	48 89 e5             	mov    %rsp,%rbp
  402628:	41 54                	push   %r12
  40262a:	53                   	push   %rbx
  40262b:	e8 d0 e9 ff ff       	call   401000 <_init>
  402630:	48 c7 c3 c0 af 40 00 	mov    $0x40afc0,%rbx
  402637:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  40263e:	4c 39 e3             	cmp    %r12,%rbx
  402641:	73 18                	jae    40265b <__libc_start_init+0x3b>
  402643:	66 90                	xchg   %ax,%ax
  402645:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40264c:	00 00 00 00 
  402650:	ff 13                	call   *(%rbx)
  402652:	48 83 c3 08          	add    $0x8,%rbx
  402656:	4c 39 e3             	cmp    %r12,%rbx
  402659:	72 f5                	jb     402650 <__libc_start_init+0x30>
  40265b:	5b                   	pop    %rbx
  40265c:	41 5c                	pop    %r12
  40265e:	5d                   	pop    %rbp
  40265f:	c3                   	ret

0000000000402660 <libc_start_main_stage2>:
  402660:	f3 0f 1e fa          	endbr64
  402664:	55                   	push   %rbp
  402665:	48 63 c6             	movslq %esi,%rax
  402668:	48 89 e5             	mov    %rsp,%rbp
  40266b:	41 56                	push   %r14
  40266d:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  402672:	41 55                	push   %r13
  402674:	49 89 fd             	mov    %rdi,%r13
  402677:	41 54                	push   %r12
  402679:	49 89 d4             	mov    %rdx,%r12
  40267c:	53                   	push   %rbx
  40267d:	48 89 c3             	mov    %rax,%rbx
  402680:	e8 9b ff ff ff       	call   402620 <__libc_start_init>
  402685:	89 df                	mov    %ebx,%edi
  402687:	4c 89 f2             	mov    %r14,%rdx
  40268a:	4c 89 e6             	mov    %r12,%rsi
  40268d:	41 ff d5             	call   *%r13
  402690:	89 c7                	mov    %eax,%edi
  402692:	e8 a9 e9 ff ff       	call   401040 <exit>
  402697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40269e:	00 00 

00000000004026a0 <__libc_start_main>:
  4026a0:	f3 0f 1e fa          	endbr64
  4026a4:	55                   	push   %rbp
  4026a5:	48 63 c6             	movslq %esi,%rax
  4026a8:	48 89 e5             	mov    %rsp,%rbp
  4026ab:	41 54                	push   %r12
  4026ad:	49 89 fc             	mov    %rdi,%r12
  4026b0:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  4026b5:	53                   	push   %rbx
  4026b6:	48 89 c3             	mov    %rax,%rbx
  4026b9:	48 83 ec 10          	sub    $0x10,%rsp
  4026bd:	48 8b 32             	mov    (%rdx),%rsi
  4026c0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4026c4:	e8 17 fd ff ff       	call   4023e0 <__init_libc>
  4026c9:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 402660 <libc_start_main_stage2>
  4026d0:	89 de                	mov    %ebx,%esi
  4026d2:	4c 89 e7             	mov    %r12,%rdi
  4026d5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4026d9:	48 83 c4 10          	add    $0x10,%rsp
  4026dd:	5b                   	pop    %rbx
  4026de:	41 5c                	pop    %r12
  4026e0:	5d                   	pop    %rbp
  4026e1:	ff e0                	jmp    *%rax
  4026e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026ea:	00 00 00 
  4026ed:	0f 1f 00             	nopl   (%rax)

00000000004026f0 <__init_ssp>:
  4026f0:	f3 0f 1e fa          	endbr64
  4026f4:	55                   	push   %rbp
  4026f5:	48 89 e5             	mov    %rsp,%rbp
  4026f8:	48 83 ec 10          	sub    $0x10,%rsp
  4026fc:	48 85 ff             	test   %rdi,%rdi
  4026ff:	74 3f                	je     402740 <__init_ssp+0x50>
  402701:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  402708:	48 89 fe             	mov    %rdi,%rsi
  40270b:	ba 08 00 00 00       	mov    $0x8,%edx
  402710:	48 89 cf             	mov    %rcx,%rdi
  402713:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  402717:	e8 d1 34 00 00       	call   405bed <memcpy>
  40271c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402720:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  402724:	48 8b 11             	mov    (%rcx),%rdx
  402727:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40272e:	00 00 
  402730:	48 89 50 28          	mov    %rdx,0x28(%rax)
  402734:	c9                   	leave
  402735:	c3                   	ret
  402736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40273d:	00 00 00 
  402740:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  402747:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  40274e:	48 89 01             	mov    %rax,(%rcx)
  402751:	eb cd                	jmp    402720 <__init_ssp+0x30>
  402753:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40275a:	00 00 00 
  40275d:	0f 1f 00             	nopl   (%rax)

0000000000402760 <__stack_chk_fail>:
  402760:	f3 0f 1e fa          	endbr64
  402764:	f4                   	hlt
  402765:	c3                   	ret
  402766:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40276d:	00 00 00 

0000000000402770 <__funcs_on_exit>:
  402770:	f3 0f 1e fa          	endbr64
  402774:	c3                   	ret
  402775:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40277c:	00 00 00 
  40277f:	90                   	nop

0000000000402780 <__libc_exit_fini>:
  402780:	f3 0f 1e fa          	endbr64
  402784:	55                   	push   %rbp
  402785:	48 89 e5             	mov    %rsp,%rbp
  402788:	41 54                	push   %r12
  40278a:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  402791:	53                   	push   %rbx
  402792:	48 c7 c3 d0 af 40 00 	mov    $0x40afd0,%rbx
  402799:	49 39 dc             	cmp    %rbx,%r12
  40279c:	73 0f                	jae    4027ad <__libc_exit_fini+0x2d>
  40279e:	66 90                	xchg   %ax,%ax
  4027a0:	48 83 eb 08          	sub    $0x8,%rbx
  4027a4:	31 c0                	xor    %eax,%eax
  4027a6:	ff 13                	call   *(%rbx)
  4027a8:	49 39 dc             	cmp    %rbx,%r12
  4027ab:	72 f3                	jb     4027a0 <__libc_exit_fini+0x20>
  4027ad:	5b                   	pop    %rbx
  4027ae:	31 c0                	xor    %eax,%eax
  4027b0:	41 5c                	pop    %r12
  4027b2:	5d                   	pop    %rbp
  4027b3:	e9 2c 49 00 00       	jmp    4070e4 <_fini>
  4027b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4027bf:	00 

00000000004027c0 <printf>:
  4027c0:	f3 0f 1e fa          	endbr64
  4027c4:	55                   	push   %rbp
  4027c5:	48 89 e5             	mov    %rsp,%rbp
  4027c8:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  4027cf:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  4027d6:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  4027dd:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  4027e4:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4027eb:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  4027f2:	84 c0                	test   %al,%al
  4027f4:	74 20                	je     402816 <printf+0x56>
  4027f6:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  4027fa:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  4027fe:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402802:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402806:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  40280a:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  40280e:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402812:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402816:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40281d:	00 00 
  40281f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402826:	31 c0                	xor    %eax,%eax
  402828:	48 8d 45 10          	lea    0x10(%rbp),%rax
  40282c:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402833:	48 89 fe             	mov    %rdi,%rsi
  402836:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40283d:	48 8d 3d dc 87 00 00 	lea    0x87dc(%rip),%rdi        # 40b020 <__stdout_FILE>
  402844:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  40284b:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  402852:	00 00 00 
  402855:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40285c:	00 00 00 
  40285f:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402866:	e8 e5 30 00 00       	call   405950 <vfprintf>
  40286b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402872:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402879:	00 00 
  40287b:	75 02                	jne    40287f <printf+0xbf>
  40287d:	c9                   	leave
  40287e:	c3                   	ret
  40287f:	e8 dc fe ff ff       	call   402760 <__stack_chk_fail>
  402884:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40288b:	00 00 00 
  40288e:	66 90                	xchg   %ax,%ax

0000000000402890 <puts>:
  402890:	f3 0f 1e fa          	endbr64
  402894:	55                   	push   %rbp
  402895:	48 89 e5             	mov    %rsp,%rbp
  402898:	53                   	push   %rbx
  402899:	48 83 ec 18          	sub    $0x18,%rsp
  40289d:	8b 05 09 88 00 00    	mov    0x8809(%rip),%eax        # 40b0ac <__stdout_FILE+0x8c>
  4028a3:	85 c0                	test   %eax,%eax
  4028a5:	79 61                	jns    402908 <puts+0x78>
  4028a7:	48 8d 35 72 87 00 00 	lea    0x8772(%rip),%rsi        # 40b020 <__stdout_FILE>
  4028ae:	e8 cd 3c 00 00       	call   406580 <fputs>
  4028b3:	85 c0                	test   %eax,%eax
  4028b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028ba:	78 41                	js     4028fd <puts+0x6d>
  4028bc:	31 db                	xor    %ebx,%ebx
  4028be:	83 3d eb 87 00 00 0a 	cmpl   $0xa,0x87eb(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  4028c5:	74 79                	je     402940 <puts+0xb0>
  4028c7:	48 8b 05 7a 87 00 00 	mov    0x877a(%rip),%rax        # 40b048 <__stdout_FILE+0x28>
  4028ce:	48 3b 05 6b 87 00 00 	cmp    0x876b(%rip),%rax        # 40b040 <__stdout_FILE+0x20>
  4028d5:	74 69                	je     402940 <puts+0xb0>
  4028d7:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4028db:	48 89 15 66 87 00 00 	mov    %rdx,0x8766(%rip)        # 40b048 <__stdout_FILE+0x28>
  4028e2:	c6 00 0a             	movb   $0xa,(%rax)
  4028e5:	31 c0                	xor    %eax,%eax
  4028e7:	85 db                	test   %ebx,%ebx
  4028e9:	74 12                	je     4028fd <puts+0x6d>
  4028eb:	48 8d 3d 2e 87 00 00 	lea    0x872e(%rip),%rdi        # 40b020 <__stdout_FILE>
  4028f2:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4028f5:	e8 46 3a 00 00       	call   406340 <__unlockfile>
  4028fa:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4028fd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402901:	c9                   	leave
  402902:	c3                   	ret
  402903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402908:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40290c:	48 8d 3d 0d 87 00 00 	lea    0x870d(%rip),%rdi        # 40b020 <__stdout_FILE>
  402913:	e8 68 39 00 00       	call   406280 <__lockfile>
  402918:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40291c:	48 8d 35 fd 86 00 00 	lea    0x86fd(%rip),%rsi        # 40b020 <__stdout_FILE>
  402923:	89 c3                	mov    %eax,%ebx
  402925:	e8 56 3c 00 00       	call   406580 <fputs>
  40292a:	85 c0                	test   %eax,%eax
  40292c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402931:	78 b4                	js     4028e7 <puts+0x57>
  402933:	83 3d 76 87 00 00 0a 	cmpl   $0xa,0x8776(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  40293a:	75 8b                	jne    4028c7 <puts+0x37>
  40293c:	0f 1f 40 00          	nopl   0x0(%rax)
  402940:	be 0a 00 00 00       	mov    $0xa,%esi
  402945:	48 8d 3d d4 86 00 00 	lea    0x86d4(%rip),%rdi        # 40b020 <__stdout_FILE>
  40294c:	e8 3f 3a 00 00       	call   406390 <__overflow>
  402951:	c1 f8 1f             	sar    $0x1f,%eax
  402954:	eb 91                	jmp    4028e7 <puts+0x57>
  402956:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40295d:	00 00 00 

0000000000402960 <sprintf>:
  402960:	f3 0f 1e fa          	endbr64
  402964:	55                   	push   %rbp
  402965:	48 89 e5             	mov    %rsp,%rbp
  402968:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40296f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402976:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40297d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402984:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  40298b:	84 c0                	test   %al,%al
  40298d:	74 20                	je     4029af <sprintf+0x4f>
  40298f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402993:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402997:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  40299b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  40299f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  4029a3:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  4029a7:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  4029ab:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  4029af:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029b6:	00 00 
  4029b8:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4029bf:	31 c0                	xor    %eax,%eax
  4029c1:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4029c5:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4029cc:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  4029d3:	00 00 00 
  4029d6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4029dd:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4029e4:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4029eb:	00 00 00 
  4029ee:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4029f5:	e8 86 31 00 00       	call   405b80 <vsprintf>
  4029fa:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402a01:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a08:	00 00 
  402a0a:	75 02                	jne    402a0e <sprintf+0xae>
  402a0c:	c9                   	leave
  402a0d:	c3                   	ret
  402a0e:	e8 4d fd ff ff       	call   402760 <__stack_chk_fail>
  402a13:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402a1a:	00 00 00 
  402a1d:	0f 1f 00             	nopl   (%rax)

0000000000402a20 <pop_arg>:
  402a20:	83 ee 09             	sub    $0x9,%esi
  402a23:	83 fe 11             	cmp    $0x11,%esi
  402a26:	77 50                	ja     402a78 <pop_arg+0x58>
  402a28:	48 8d 0d 69 57 00 00 	lea    0x5769(%rip),%rcx        # 408198 <_fini+0x10b4>
  402a2f:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402a33:	48 01 c8             	add    %rcx,%rax
  402a36:	3e ff e0             	notrack jmp *%rax
  402a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a40:	8b 02                	mov    (%rdx),%eax
  402a42:	83 f8 2f             	cmp    $0x2f,%eax
  402a45:	77 39                	ja     402a80 <pop_arg+0x60>
  402a47:	89 c1                	mov    %eax,%ecx
  402a49:	83 c0 08             	add    $0x8,%eax
  402a4c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a50:	89 02                	mov    %eax,(%rdx)
  402a52:	48 8b 01             	mov    (%rcx),%rax
  402a55:	48 89 07             	mov    %rax,(%rdi)
  402a58:	c3                   	ret
  402a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a60:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402a64:	48 83 c0 0f          	add    $0xf,%rax
  402a68:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402a6c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402a70:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402a74:	db 28                	fldt   (%rax)
  402a76:	db 3f                	fstpt  (%rdi)
  402a78:	c3                   	ret
  402a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a80:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a84:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a88:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a8c:	48 8b 01             	mov    (%rcx),%rax
  402a8f:	48 89 07             	mov    %rax,(%rdi)
  402a92:	c3                   	ret
  402a93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a98:	8b 02                	mov    (%rdx),%eax
  402a9a:	83 f8 2f             	cmp    $0x2f,%eax
  402a9d:	0f 87 55 01 00 00    	ja     402bf8 <pop_arg+0x1d8>
  402aa3:	89 c1                	mov    %eax,%ecx
  402aa5:	83 c0 08             	add    $0x8,%eax
  402aa8:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402aac:	89 02                	mov    %eax,(%rdx)
  402aae:	0f b7 01             	movzwl (%rcx),%eax
  402ab1:	48 89 07             	mov    %rax,(%rdi)
  402ab4:	c3                   	ret
  402ab5:	0f 1f 00             	nopl   (%rax)
  402ab8:	8b 42 04             	mov    0x4(%rdx),%eax
  402abb:	3d af 00 00 00       	cmp    $0xaf,%eax
  402ac0:	0f 87 1a 01 00 00    	ja     402be0 <pop_arg+0x1c0>
  402ac6:	89 c1                	mov    %eax,%ecx
  402ac8:	83 c0 10             	add    $0x10,%eax
  402acb:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402acf:	89 42 04             	mov    %eax,0x4(%rdx)
  402ad2:	dd 01                	fldl   (%rcx)
  402ad4:	db 3f                	fstpt  (%rdi)
  402ad6:	c3                   	ret
  402ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402ade:	00 00 
  402ae0:	8b 02                	mov    (%rdx),%eax
  402ae2:	83 f8 2f             	cmp    $0x2f,%eax
  402ae5:	0f 87 dd 00 00 00    	ja     402bc8 <pop_arg+0x1a8>
  402aeb:	89 c1                	mov    %eax,%ecx
  402aed:	83 c0 08             	add    $0x8,%eax
  402af0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402af4:	89 02                	mov    %eax,(%rdx)
  402af6:	48 63 01             	movslq (%rcx),%rax
  402af9:	48 89 07             	mov    %rax,(%rdi)
  402afc:	c3                   	ret
  402afd:	0f 1f 00             	nopl   (%rax)
  402b00:	8b 02                	mov    (%rdx),%eax
  402b02:	83 f8 2f             	cmp    $0x2f,%eax
  402b05:	0f 87 a5 00 00 00    	ja     402bb0 <pop_arg+0x190>
  402b0b:	89 c1                	mov    %eax,%ecx
  402b0d:	83 c0 08             	add    $0x8,%eax
  402b10:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b14:	89 02                	mov    %eax,(%rdx)
  402b16:	8b 01                	mov    (%rcx),%eax
  402b18:	48 89 07             	mov    %rax,(%rdi)
  402b1b:	c3                   	ret
  402b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  402b20:	8b 02                	mov    (%rdx),%eax
  402b22:	83 f8 2f             	cmp    $0x2f,%eax
  402b25:	77 79                	ja     402ba0 <pop_arg+0x180>
  402b27:	89 c1                	mov    %eax,%ecx
  402b29:	83 c0 08             	add    $0x8,%eax
  402b2c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b30:	89 02                	mov    %eax,(%rdx)
  402b32:	0f b6 01             	movzbl (%rcx),%eax
  402b35:	48 89 07             	mov    %rax,(%rdi)
  402b38:	c3                   	ret
  402b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b40:	8b 02                	mov    (%rdx),%eax
  402b42:	83 f8 2f             	cmp    $0x2f,%eax
  402b45:	77 49                	ja     402b90 <pop_arg+0x170>
  402b47:	89 c1                	mov    %eax,%ecx
  402b49:	83 c0 08             	add    $0x8,%eax
  402b4c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b50:	89 02                	mov    %eax,(%rdx)
  402b52:	48 0f be 01          	movsbq (%rcx),%rax
  402b56:	48 89 07             	mov    %rax,(%rdi)
  402b59:	c3                   	ret
  402b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b60:	8b 02                	mov    (%rdx),%eax
  402b62:	83 f8 2f             	cmp    $0x2f,%eax
  402b65:	77 19                	ja     402b80 <pop_arg+0x160>
  402b67:	89 c1                	mov    %eax,%ecx
  402b69:	83 c0 08             	add    $0x8,%eax
  402b6c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b70:	89 02                	mov    %eax,(%rdx)
  402b72:	48 0f bf 01          	movswq (%rcx),%rax
  402b76:	48 89 07             	mov    %rax,(%rdi)
  402b79:	c3                   	ret
  402b7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b80:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b84:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b88:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b8c:	eb e4                	jmp    402b72 <pop_arg+0x152>
  402b8e:	66 90                	xchg   %ax,%ax
  402b90:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b94:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b98:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b9c:	eb b4                	jmp    402b52 <pop_arg+0x132>
  402b9e:	66 90                	xchg   %ax,%ax
  402ba0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402ba4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402ba8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bac:	eb 84                	jmp    402b32 <pop_arg+0x112>
  402bae:	66 90                	xchg   %ax,%ax
  402bb0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bb4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402bb8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bbc:	e9 55 ff ff ff       	jmp    402b16 <pop_arg+0xf6>
  402bc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bc8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bcc:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402bd0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bd4:	e9 1d ff ff ff       	jmp    402af6 <pop_arg+0xd6>
  402bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402be0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402be4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402be8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bec:	e9 e1 fe ff ff       	jmp    402ad2 <pop_arg+0xb2>
  402bf1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bf8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bfc:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c00:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c04:	e9 a5 fe ff ff       	jmp    402aae <pop_arg+0x8e>
  402c09:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402c10:	00 00 00 
  402c13:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402c1a:	00 00 00 
  402c1d:	0f 1f 00             	nopl   (%rax)

0000000000402c20 <pad.part.0>:
  402c20:	55                   	push   %rbp
  402c21:	29 ca                	sub    %ecx,%edx
  402c23:	40 0f be f6          	movsbl %sil,%esi
  402c27:	48 89 e5             	mov    %rsp,%rbp
  402c2a:	41 56                	push   %r14
  402c2c:	41 55                	push   %r13
  402c2e:	41 54                	push   %r12
  402c30:	4c 63 e2             	movslq %edx,%r12
  402c33:	ba 00 01 00 00       	mov    $0x100,%edx
  402c38:	53                   	push   %rbx
  402c39:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402c40:	41 39 d4             	cmp    %edx,%r12d
  402c43:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402c4a:	00 00 
  402c4c:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402c50:	49 89 fd             	mov    %rdi,%r13
  402c53:	49 0f 4e d4          	cmovle %r12,%rdx
  402c57:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402c5e:	e8 bc 2f 00 00       	call   405c1f <memset>
  402c63:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402c6a:	0f 8e 88 00 00 00    	jle    402cf8 <pad.part.0+0xd8>
  402c70:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c74:	44 89 e3             	mov    %r12d,%ebx
  402c77:	eb 15                	jmp    402c8e <pad.part.0+0x6e>
  402c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c80:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402c86:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402c8c:	76 2a                	jbe    402cb8 <pad.part.0+0x98>
  402c8e:	a8 20                	test   $0x20,%al
  402c90:	75 ee                	jne    402c80 <pad.part.0+0x60>
  402c92:	4c 89 ea             	mov    %r13,%rdx
  402c95:	be 00 01 00 00       	mov    $0x100,%esi
  402c9a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402ca1:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402ca7:	e8 24 39 00 00       	call   4065d0 <__fwritex>
  402cac:	41 8b 45 00          	mov    0x0(%r13),%eax
  402cb0:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402cb6:	77 d6                	ja     402c8e <pad.part.0+0x6e>
  402cb8:	45 0f b6 e4          	movzbl %r12b,%r12d
  402cbc:	a8 20                	test   $0x20,%al
  402cbe:	74 20                	je     402ce0 <pad.part.0+0xc0>
  402cc0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402cc4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402ccb:	00 00 
  402ccd:	75 2f                	jne    402cfe <pad.part.0+0xde>
  402ccf:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402cd6:	5b                   	pop    %rbx
  402cd7:	41 5c                	pop    %r12
  402cd9:	41 5d                	pop    %r13
  402cdb:	41 5e                	pop    %r14
  402cdd:	5d                   	pop    %rbp
  402cde:	c3                   	ret
  402cdf:	90                   	nop
  402ce0:	49 63 f4             	movslq %r12d,%rsi
  402ce3:	4c 89 ea             	mov    %r13,%rdx
  402ce6:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402ced:	e8 de 38 00 00       	call   4065d0 <__fwritex>
  402cf2:	eb cc                	jmp    402cc0 <pad.part.0+0xa0>
  402cf4:	0f 1f 40 00          	nopl   0x0(%rax)
  402cf8:	41 8b 45 00          	mov    0x0(%r13),%eax
  402cfc:	eb be                	jmp    402cbc <pad.part.0+0x9c>
  402cfe:	e8 5d fa ff ff       	call   402760 <__stack_chk_fail>
  402d03:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d0a:	00 00 00 
  402d0d:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d14:	00 00 00 
  402d17:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d1e:	00 00 00 
  402d21:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d28:	00 00 00 
  402d2b:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d32:	00 00 00 
  402d35:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d3c:	00 00 00 
  402d3f:	90                   	nop

0000000000402d40 <fmt_fp>:
  402d40:	55                   	push   %rbp
  402d41:	48 89 e5             	mov    %rsp,%rbp
  402d44:	41 57                	push   %r15
  402d46:	41 56                	push   %r14
  402d48:	41 55                	push   %r13
  402d4a:	41 54                	push   %r12
  402d4c:	53                   	push   %rbx
  402d4d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402d54:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402d59:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402d60:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402d67:	41 89 d7             	mov    %edx,%r15d
  402d6a:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402d70:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402d76:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402d7d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d84:	00 00 
  402d86:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402d8a:	31 c0                	xor    %eax,%eax
  402d8c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402d93:	00 00 00 
  402d96:	ff 75 18             	push   0x18(%rbp)
  402d99:	ff 75 10             	push   0x10(%rbp)
  402d9c:	e8 ef 33 00 00       	call   406190 <__signbitl>
  402da1:	41 5d                	pop    %r13
  402da3:	41 5e                	pop    %r14
  402da5:	85 c0                	test   %eax,%eax
  402da7:	0f 84 8b 00 00 00    	je     402e38 <fmt_fp+0xf8>
  402dad:	db 6d 10             	fldt   0x10(%rbp)
  402db0:	48 8d 05 ab 53 00 00 	lea    0x53ab(%rip),%rax        # 408162 <_fini+0x107e>
  402db7:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402dbe:	00 00 00 
  402dc1:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402dc8:	d9 e0                	fchs
  402dca:	db 7d 10             	fstpt  0x10(%rbp)
  402dcd:	ff 75 18             	push   0x18(%rbp)
  402dd0:	ff 75 10             	push   0x10(%rbp)
  402dd3:	e8 48 33 00 00       	call   406120 <__fpclassifyl>
  402dd8:	5b                   	pop    %rbx
  402dd9:	41 5c                	pop    %r12
  402ddb:	83 f8 01             	cmp    $0x1,%eax
  402dde:	0f 8e bc 04 00 00    	jle    4032a0 <fmt_fp+0x560>
  402de4:	ff 75 18             	push   0x18(%rbp)
  402de7:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402dee:	ff 75 10             	push   0x10(%rbp)
  402df1:	e8 ba 33 00 00       	call   4061b0 <frexpl>
  402df6:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402dfd:	41 5a                	pop    %r10
  402dff:	d8 c0                	fadd   %st(0),%st
  402e01:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402e08:	41 5b                	pop    %r11
  402e0a:	41 83 ce 20          	or     $0x20,%r14d
  402e0e:	d9 ee                	fldz
  402e10:	d9 c9                	fxch   %st(1)
  402e12:	db e9                	fucomi %st(1),%st
  402e14:	dd d9                	fstp   %st(1)
  402e16:	7a 58                	jp     402e70 <fmt_fp+0x130>
  402e18:	75 56                	jne    402e70 <fmt_fp+0x130>
  402e1a:	41 83 fe 61          	cmp    $0x61,%r14d
  402e1e:	0f 84 37 06 00 00    	je     40345b <fmt_fp+0x71b>
  402e24:	45 85 ff             	test   %r15d,%r15d
  402e27:	0f 88 84 13 00 00    	js     4041b1 <fmt_fp+0x1471>
  402e2d:	40 0f 95 c6          	setne  %sil
  402e31:	eb 65                	jmp    402e98 <fmt_fp+0x158>
  402e33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402e38:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402e3e:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402e44:	0f 84 2c 04 00 00    	je     403276 <fmt_fp+0x536>
  402e4a:	48 8d 05 14 53 00 00 	lea    0x5314(%rip),%rax        # 408165 <_fini+0x1081>
  402e51:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402e58:	00 00 00 
  402e5b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402e62:	e9 66 ff ff ff       	jmp    402dcd <fmt_fp+0x8d>
  402e67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e6e:	00 00 
  402e70:	41 83 fe 61          	cmp    $0x61,%r14d
  402e74:	0f 84 d6 05 00 00    	je     403450 <fmt_fp+0x710>
  402e7a:	45 85 ff             	test   %r15d,%r15d
  402e7d:	0f 88 3e 13 00 00    	js     4041c1 <fmt_fp+0x1481>
  402e83:	40 0f 95 c6          	setne  %sil
  402e87:	41 83 e9 1d          	sub    $0x1d,%r9d
  402e8b:	d8 0d 53 56 00 00    	fmuls  0x5653(%rip)        # 4084e4 <states+0x1e4>
  402e91:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402e98:	45 85 c9             	test   %r9d,%r9d
  402e9b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402ea2:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402ea9:	d9 05 39 56 00 00    	flds   0x5639(%rip)        # 4084e8 <states+0x1e8>
  402eaf:	d9 c9                	fxch   %st(1)
  402eb1:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402eb7:	48 0f 49 c2          	cmovns %rdx,%rax
  402ebb:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402ec2:	48 89 c3             	mov    %rax,%rbx
  402ec5:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402ecc:	80 cc 0c             	or     $0xc,%ah
  402ecf:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402ed6:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402edd:	00 00 
  402edf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ee6:	00 00 00 00 
  402eea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ef1:	00 00 00 00 
  402ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402efc:	00 00 00 00 
  402f00:	d9 c0                	fld    %st(0)
  402f02:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402f08:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402f0e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402f14:	48 83 c3 04          	add    $0x4,%rbx
  402f18:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402f1f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402f22:	89 c0                	mov    %eax,%eax
  402f24:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402f2b:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402f31:	de e9                	fsubrp %st,%st(1)
  402f33:	d8 c9                	fmul   %st(1),%st
  402f35:	d9 ee                	fldz
  402f37:	d9 c9                	fxch   %st(1)
  402f39:	db e9                	fucomi %st(1),%st
  402f3b:	dd d9                	fstp   %st(1)
  402f3d:	7a c1                	jp     402f00 <fmt_fp+0x1c0>
  402f3f:	75 bf                	jne    402f00 <fmt_fp+0x1c0>
  402f41:	dd d8                	fstp   %st(0)
  402f43:	dd d8                	fstp   %st(0)
  402f45:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402f4c:	45 85 c9             	test   %r9d,%r9d
  402f4f:	0f 8e b0 00 00 00    	jle    403005 <fmt_fp+0x2c5>
  402f55:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402f5c:	b8 44 00 
  402f5f:	90                   	nop
  402f60:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402f65:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402f69:	41 39 c9             	cmp    %ecx,%r9d
  402f6c:	41 0f 4e c9          	cmovle %r9d,%ecx
  402f70:	4d 39 e2             	cmp    %r12,%r10
  402f73:	72 4b                	jb     402fc0 <fmt_fp+0x280>
  402f75:	31 c0                	xor    %eax,%eax
  402f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402f7e:	00 00 
  402f80:	45 8b 02             	mov    (%r10),%r8d
  402f83:	49 83 ea 04          	sub    $0x4,%r10
  402f87:	49 d3 e0             	shl    %cl,%r8
  402f8a:	49 01 c0             	add    %rax,%r8
  402f8d:	4c 89 c2             	mov    %r8,%rdx
  402f90:	48 c1 ea 09          	shr    $0x9,%rdx
  402f94:	48 89 d0             	mov    %rdx,%rax
  402f97:	48 f7 e7             	mul    %rdi
  402f9a:	48 c1 ea 0b          	shr    $0xb,%rdx
  402f9e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402fa5:	49 29 c0             	sub    %rax,%r8
  402fa8:	89 d0                	mov    %edx,%eax
  402faa:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402fae:	4d 39 e2             	cmp    %r12,%r10
  402fb1:	73 cd                	jae    402f80 <fmt_fp+0x240>
  402fb3:	85 d2                	test   %edx,%edx
  402fb5:	74 09                	je     402fc0 <fmt_fp+0x280>
  402fb7:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402fbc:	49 83 ec 04          	sub    $0x4,%r12
  402fc0:	49 39 dc             	cmp    %rbx,%r12
  402fc3:	72 24                	jb     402fe9 <fmt_fp+0x2a9>
  402fc5:	eb 2b                	jmp    402ff2 <fmt_fp+0x2b2>
  402fc7:	0f 1f 00             	nopl   (%rax)
  402fca:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fd1:	00 00 00 00 
  402fd5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fdc:	00 00 00 00 
  402fe0:	48 83 eb 04          	sub    $0x4,%rbx
  402fe4:	49 39 dc             	cmp    %rbx,%r12
  402fe7:	73 09                	jae    402ff2 <fmt_fp+0x2b2>
  402fe9:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  402fed:	45 85 c0             	test   %r8d,%r8d
  402ff0:	74 ee                	je     402fe0 <fmt_fp+0x2a0>
  402ff2:	41 29 c9             	sub    %ecx,%r9d
  402ff5:	45 85 c9             	test   %r9d,%r9d
  402ff8:	0f 8f 62 ff ff ff    	jg     402f60 <fmt_fp+0x220>
  402ffe:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  403005:	45 85 c9             	test   %r9d,%r9d
  403008:	0f 84 35 01 00 00    	je     403143 <fmt_fp+0x403>
  40300e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  403012:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  403019:	41 89 f0             	mov    %esi,%r8d
  40301c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  403023:	48 c1 e8 21          	shr    $0x21,%rax
  403027:	48 8d 78 01          	lea    0x1(%rax),%rdi
  40302b:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  403032:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  403039:	00 
  40303a:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  403041:	0f 1f 40 00          	nopl   0x0(%rax)
  403045:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40304c:	00 00 00 00 
  403050:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  403054:	0f 8d d6 06 00 00    	jge    403730 <fmt_fp+0x9f0>
  40305a:	41 83 c1 09          	add    $0x9,%r9d
  40305e:	b9 09 00 00 00       	mov    $0x9,%ecx
  403063:	49 39 dc             	cmp    %rbx,%r12
  403066:	0f 83 d5 06 00 00    	jae    403741 <fmt_fp+0xa01>
  40306c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  403072:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  403079:	4c 89 e6             	mov    %r12,%rsi
  40307c:	31 d2                	xor    %edx,%edx
  40307e:	41 d3 e2             	shl    %cl,%r10d
  403081:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  403087:	41 83 ea 01          	sub    $0x1,%r10d
  40308b:	41 d3 ff             	sar    %cl,%r15d
  40308e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403094:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40309b:	00 00 00 00 
  40309f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030a6:	00 00 00 00 
  4030aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030b1:	00 00 00 00 
  4030b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030bc:	00 00 00 00 
  4030c0:	8b 06                	mov    (%rsi),%eax
  4030c2:	48 83 c6 04          	add    $0x4,%rsi
  4030c6:	41 89 c1             	mov    %eax,%r9d
  4030c9:	44 21 d0             	and    %r10d,%eax
  4030cc:	41 0f af c7          	imul   %r15d,%eax
  4030d0:	41 d3 e9             	shr    %cl,%r9d
  4030d3:	41 01 d1             	add    %edx,%r9d
  4030d6:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  4030da:	89 c2                	mov    %eax,%edx
  4030dc:	48 39 de             	cmp    %rbx,%rsi
  4030df:	72 df                	jb     4030c0 <fmt_fp+0x380>
  4030e1:	41 8b 0c 24          	mov    (%r12),%ecx
  4030e5:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  4030ea:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  4030f1:	85 c9                	test   %ecx,%ecx
  4030f3:	49 0f 45 c4          	cmovne %r12,%rax
  4030f7:	85 d2                	test   %edx,%edx
  4030f9:	74 06                	je     403101 <fmt_fp+0x3c1>
  4030fb:	89 13                	mov    %edx,(%rbx)
  4030fd:	48 83 c3 04          	add    $0x4,%rbx
  403101:	49 89 c4             	mov    %rax,%r12
  403104:	41 83 fe 66          	cmp    $0x66,%r14d
  403108:	0f 84 52 06 00 00    	je     403760 <fmt_fp+0xa20>
  40310e:	48 89 da             	mov    %rbx,%rdx
  403111:	48 29 c2             	sub    %rax,%rdx
  403114:	4c 01 d8             	add    %r11,%rax
  403117:	48 c1 fa 02          	sar    $0x2,%rdx
  40311b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  403122:	48 0f 4f d8          	cmovg  %rax,%rbx
  403126:	45 85 c9             	test   %r9d,%r9d
  403129:	0f 85 21 ff ff ff    	jne    403050 <fmt_fp+0x310>
  40312f:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  403136:	00 00 00 
  403139:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  403140:	44 89 c6             	mov    %r8d,%esi
  403143:	49 39 dc             	cmp    %rbx,%r12
  403146:	0f 83 5d 0b 00 00    	jae    403ca9 <fmt_fp+0xf69>
  40314c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403153:	41 83 fe 66          	cmp    $0x66,%r14d
  403157:	41 8b 14 24          	mov    (%r12),%edx
  40315b:	0f 95 c1             	setne  %cl
  40315e:	4c 29 e0             	sub    %r12,%rax
  403161:	48 c1 f8 02          	sar    $0x2,%rax
  403165:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  403168:	b8 0a 00 00 00       	mov    $0xa,%eax
  40316d:	83 fa 09             	cmp    $0x9,%edx
  403170:	76 1a                	jbe    40318c <fmt_fp+0x44c>
  403172:	0f 1f 00             	nopl   (%rax)
  403175:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40317c:	00 00 00 00 
  403180:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403183:	83 c7 01             	add    $0x1,%edi
  403186:	01 c0                	add    %eax,%eax
  403188:	39 c2                	cmp    %eax,%edx
  40318a:	73 f4                	jae    403180 <fmt_fp+0x440>
  40318c:	31 d2                	xor    %edx,%edx
  40318e:	84 c9                	test   %cl,%cl
  403190:	44 89 f8             	mov    %r15d,%eax
  403193:	0f 45 d7             	cmovne %edi,%edx
  403196:	29 d0                	sub    %edx,%eax
  403198:	31 d2                	xor    %edx,%edx
  40319a:	41 83 fe 67          	cmp    $0x67,%r14d
  40319e:	0f 94 c2             	sete   %dl
  4031a1:	21 f2                	and    %esi,%edx
  4031a3:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  4031aa:	29 d0                	sub    %edx,%eax
  4031ac:	48 89 da             	mov    %rbx,%rdx
  4031af:	48 29 f2             	sub    %rsi,%rdx
  4031b2:	48 63 c8             	movslq %eax,%rcx
  4031b5:	48 c1 fa 02          	sar    $0x2,%rdx
  4031b9:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  4031be:	48 39 d1             	cmp    %rdx,%rcx
  4031c1:	0f 8d 0f 06 00 00    	jge    4037d6 <fmt_fp+0xa96>
  4031c7:	05 00 40 02 00       	add    $0x24000,%eax
  4031cc:	48 63 d0             	movslq %eax,%rdx
  4031cf:	89 c1                	mov    %eax,%ecx
  4031d1:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  4031d8:	c1 f9 1f             	sar    $0x1f,%ecx
  4031db:	48 c1 fa 21          	sar    $0x21,%rdx
  4031df:	29 ca                	sub    %ecx,%edx
  4031e1:	48 63 ca             	movslq %edx,%rcx
  4031e4:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  4031eb:	ff 
  4031ec:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  4031ef:	29 c8                	sub    %ecx,%eax
  4031f1:	89 c2                	mov    %eax,%edx
  4031f3:	8d 40 01             	lea    0x1(%rax),%eax
  4031f6:	83 fa 08             	cmp    $0x8,%edx
  4031f9:	0f 84 df 13 00 00    	je     4045de <fmt_fp+0x189e>
  4031ff:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403204:	90                   	nop
  403205:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40320c:	00 00 00 00 
  403210:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403213:	83 c0 01             	add    $0x1,%eax
  403216:	01 c9                	add    %ecx,%ecx
  403218:	83 f8 09             	cmp    $0x9,%eax
  40321b:	75 f3                	jne    403210 <fmt_fp+0x4d0>
  40321d:	41 89 cb             	mov    %ecx,%r11d
  403220:	44 8b 16             	mov    (%rsi),%r10d
  403223:	31 d2                	xor    %edx,%edx
  403225:	44 89 d0             	mov    %r10d,%eax
  403228:	41 f7 f3             	div    %r11d
  40322b:	41 89 d1             	mov    %edx,%r9d
  40322e:	85 d2                	test   %edx,%edx
  403230:	0f 85 35 05 00 00    	jne    40376b <fmt_fp+0xa2b>
  403236:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  40323a:	48 89 da             	mov    %rbx,%rdx
  40323d:	4c 39 c3             	cmp    %r8,%rbx
  403240:	0f 84 89 05 00 00    	je     4037cf <fmt_fp+0xa8f>
  403246:	a8 01                	test   $0x1,%al
  403248:	0f 85 36 10 00 00    	jne    404284 <fmt_fp+0x1544>
  40324e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403254:	75 0f                	jne    403265 <fmt_fp+0x525>
  403256:	49 39 f4             	cmp    %rsi,%r12
  403259:	73 0a                	jae    403265 <fmt_fp+0x525>
  40325b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40325f:	0f 85 1f 10 00 00    	jne    404284 <fmt_fp+0x1544>
  403265:	d9 05 69 52 00 00    	flds   0x5269(%rip)        # 4084d4 <states+0x1d4>
  40326b:	d9 05 67 52 00 00    	flds   0x5267(%rip)        # 4084d8 <states+0x1d8>
  403271:	e9 1d 05 00 00       	jmp    403793 <fmt_fp+0xa53>
  403276:	48 8d 1d e6 4e 00 00 	lea    0x4ee6(%rip),%rbx        # 408163 <_fini+0x107f>
  40327d:	83 e7 01             	and    $0x1,%edi
  403280:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403284:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40328a:	48 0f 44 c3          	cmove  %rbx,%rax
  40328e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403295:	e9 33 fb ff ff       	jmp    402dcd <fmt_fp+0x8d>
  40329a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4032a0:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4032a7:	0f 84 94 00 00 00    	je     403341 <fmt_fp+0x601>
  4032ad:	db 6d 10             	fldt   0x10(%rbp)
  4032b0:	4c 8d 25 c2 4e 00 00 	lea    0x4ec2(%rip),%r12        # 408179 <_fini+0x1095>
  4032b7:	48 8d 05 c3 4e 00 00 	lea    0x4ec3(%rip),%rax        # 408181 <_fini+0x109d>
  4032be:	df e8                	fucomip %st(0),%st
  4032c0:	4c 0f 4b e0          	cmovnp %rax,%r12
  4032c4:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  4032ca:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4032d0:	8d 58 03             	lea    0x3(%rax),%ebx
  4032d3:	39 d3                	cmp    %edx,%ebx
  4032d5:	41 0f 9d c5          	setge  %r13b
  4032d9:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  4032e0:	75 09                	jne    4032eb <fmt_fp+0x5ab>
  4032e2:	45 84 ed             	test   %r13b,%r13b
  4032e5:	0f 84 0a 01 00 00    	je     4033f5 <fmt_fp+0x6b5>
  4032eb:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4032f2:	f6 00 20             	testb  $0x20,(%rax)
  4032f5:	0f 84 1d 01 00 00    	je     403418 <fmt_fp+0x6d8>
  4032fb:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403301:	80 f4 20             	xor    $0x20,%ah
  403304:	a9 00 20 01 00       	test   $0x12000,%eax
  403309:	75 09                	jne    403314 <fmt_fp+0x5d4>
  40330b:	45 84 ed             	test   %r13b,%r13b
  40330e:	0f 84 c3 00 00 00    	je     4033d7 <fmt_fp+0x697>
  403314:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40331a:	39 c3                	cmp    %eax,%ebx
  40331c:	0f 4d c3             	cmovge %ebx,%eax
  40331f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  403323:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40332a:	00 00 
  40332c:	0f 85 4d 13 00 00    	jne    40467f <fmt_fp+0x193f>
  403332:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  403336:	5b                   	pop    %rbx
  403337:	41 5c                	pop    %r12
  403339:	41 5d                	pop    %r13
  40333b:	41 5e                	pop    %r14
  40333d:	41 5f                	pop    %r15
  40333f:	5d                   	pop    %rbp
  403340:	c3                   	ret
  403341:	db 6d 10             	fldt   0x10(%rbp)
  403344:	4c 8d 25 32 4e 00 00 	lea    0x4e32(%rip),%r12        # 40817d <_fini+0x1099>
  40334b:	48 8d 05 23 4e 00 00 	lea    0x4e23(%rip),%rax        # 408175 <_fini+0x1091>
  403352:	df e8                	fucomip %st(0),%st
  403354:	4c 0f 4b e0          	cmovnp %rax,%r12
  403358:	e9 67 ff ff ff       	jmp    4032c4 <fmt_fp+0x584>
  40335d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403364:	f6 07 20             	testb  $0x20,(%rdi)
  403367:	0f 84 11 03 00 00    	je     40367e <fmt_fp+0x93e>
  40336d:	45 29 f7             	sub    %r14d,%r15d
  403370:	45 85 ff             	test   %r15d,%r15d
  403373:	7e 9f                	jle    403314 <fmt_fp+0x5d4>
  403375:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40337b:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403382:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403389:	31 c9                	xor    %ecx,%ecx
  40338b:	44 89 fa             	mov    %r15d,%edx
  40338e:	be 30 00 00 00       	mov    $0x30,%esi
  403393:	e8 88 f8 ff ff       	call   402c20 <pad.part.0>
  403398:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40339f:	f6 00 20             	testb  $0x20,(%rax)
  4033a2:	75 12                	jne    4033b6 <fmt_fp+0x676>
  4033a4:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  4033ab:	48 89 c2             	mov    %rax,%rdx
  4033ae:	4c 89 e6             	mov    %r12,%rsi
  4033b1:	e8 1a 32 00 00       	call   4065d0 <__fwritex>
  4033b6:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4033bc:	80 f4 20             	xor    $0x20,%ah
  4033bf:	a9 00 20 01 00       	test   $0x12000,%eax
  4033c4:	0f 85 4a ff ff ff    	jne    403314 <fmt_fp+0x5d4>
  4033ca:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  4033d1:	0f 85 3d ff ff ff    	jne    403314 <fmt_fp+0x5d4>
  4033d7:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4033dd:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033e4:	89 d9                	mov    %ebx,%ecx
  4033e6:	be 20 00 00 00       	mov    $0x20,%esi
  4033eb:	e8 30 f8 ff ff       	call   402c20 <pad.part.0>
  4033f0:	e9 1f ff ff ff       	jmp    403314 <fmt_fp+0x5d4>
  4033f5:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033fc:	89 d9                	mov    %ebx,%ecx
  4033fe:	be 20 00 00 00       	mov    $0x20,%esi
  403403:	e8 18 f8 ff ff       	call   402c20 <pad.part.0>
  403408:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40340f:	f6 00 20             	testb  $0x20,(%rax)
  403412:	0f 85 e3 fe ff ff    	jne    4032fb <fmt_fp+0x5bb>
  403418:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40341f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403426:	49 89 c6             	mov    %rax,%r14
  403429:	48 89 c2             	mov    %rax,%rdx
  40342c:	e8 9f 31 00 00       	call   4065d0 <__fwritex>
  403431:	41 f6 06 20          	testb  $0x20,(%r14)
  403435:	0f 85 c0 fe ff ff    	jne    4032fb <fmt_fp+0x5bb>
  40343b:	4c 89 f2             	mov    %r14,%rdx
  40343e:	be 03 00 00 00       	mov    $0x3,%esi
  403443:	4c 89 e7             	mov    %r12,%rdi
  403446:	e8 85 31 00 00       	call   4065d0 <__fwritex>
  40344b:	e9 ab fe ff ff       	jmp    4032fb <fmt_fp+0x5bb>
  403450:	41 83 e9 01          	sub    $0x1,%r9d
  403454:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40345b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403462:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403469:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  40346f:	48 8d 47 09          	lea    0x9(%rdi),%rax
  403473:	48 0f 44 c7          	cmove  %rdi,%rax
  403477:	83 c3 02             	add    $0x2,%ebx
  40347a:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403481:	41 83 ff 0e          	cmp    $0xe,%r15d
  403485:	0f 86 28 0c 00 00    	jbe    4040b3 <fmt_fp+0x1373>
  40348b:	d9 05 4f 50 00 00    	flds   0x504f(%rip)        # 4084e0 <states+0x1e0>
  403491:	45 85 c9             	test   %r9d,%r9d
  403494:	0f 84 54 11 00 00    	je     4045ee <fmt_fp+0x18ae>
  40349a:	44 89 c9             	mov    %r9d,%ecx
  40349d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4034a1:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  4034a8:	cc cc cc 
  4034ab:	f7 d9                	neg    %ecx
  4034ad:	4d 89 e8             	mov    %r13,%r8
  4034b0:	41 0f 48 c9          	cmovs  %r9d,%ecx
  4034b4:	48 63 c9             	movslq %ecx,%rcx
  4034b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4034be:	00 00 
  4034c0:	48 89 c8             	mov    %rcx,%rax
  4034c3:	4c 89 c7             	mov    %r8,%rdi
  4034c6:	49 83 e8 01          	sub    $0x1,%r8
  4034ca:	48 f7 e6             	mul    %rsi
  4034cd:	48 89 c8             	mov    %rcx,%rax
  4034d0:	48 c1 ea 03          	shr    $0x3,%rdx
  4034d4:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  4034d8:	4d 01 d2             	add    %r10,%r10
  4034db:	4c 29 d0             	sub    %r10,%rax
  4034de:	83 c0 30             	add    $0x30,%eax
  4034e1:	48 83 f9 09          	cmp    $0x9,%rcx
  4034e5:	48 89 d1             	mov    %rdx,%rcx
  4034e8:	41 88 00             	mov    %al,(%r8)
  4034eb:	77 d3                	ja     4034c0 <fmt_fp+0x780>
  4034ed:	4d 39 e8             	cmp    %r13,%r8
  4034f0:	0f 84 9f 0d 00 00    	je     404295 <fmt_fp+0x1555>
  4034f6:	b8 2d 00 00 00       	mov    $0x2d,%eax
  4034fb:	45 85 c9             	test   %r9d,%r9d
  4034fe:	78 05                	js     403505 <fmt_fp+0x7c5>
  403500:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403505:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40350b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40350f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403513:	d9 ee                	fldz
  403515:	d9 ca                	fxch   %st(2)
  403517:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40351e:	45 85 ff             	test   %r15d,%r15d
  403521:	48 8d 0d b8 4d 00 00 	lea    0x4db8(%rip),%rcx        # 4082e0 <xdigits>
  403528:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  40352e:	8d 46 0f             	lea    0xf(%rsi),%eax
  403531:	40 0f 9f c7          	setg   %dil
  403535:	83 e6 20             	and    $0x20,%esi
  403538:	41 88 40 fe          	mov    %al,-0x2(%r8)
  40353c:	4c 89 e8             	mov    %r13,%rax
  40353f:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403545:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40354c:	80 ce 0c             	or     $0xc,%dh
  40354f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403556:	eb 1b                	jmp    403573 <fmt_fp+0x833>
  403558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40355f:	00 
  403560:	4c 89 c0             	mov    %r8,%rax
  403563:	d9 c2                	fld    %st(2)
  403565:	d9 c9                	fxch   %st(1)
  403567:	db e9                	fucomi %st(1),%st
  403569:	dd d9                	fstp   %st(1)
  40356b:	7a 06                	jp     403573 <fmt_fp+0x833>
  40356d:	0f 84 dc 10 00 00    	je     40464f <fmt_fp+0x190f>
  403573:	d9 c0                	fld    %st(0)
  403575:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  40357b:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403581:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403587:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40358b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403591:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403598:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40359d:	de e9                	fsubrp %st,%st(1)
  40359f:	41 09 f3             	or     %esi,%r11d
  4035a2:	44 88 18             	mov    %r11b,(%rax)
  4035a5:	d8 c9                	fmul   %st(1),%st
  4035a7:	4c 39 e8             	cmp    %r13,%rax
  4035aa:	75 b4                	jne    403560 <fmt_fp+0x820>
  4035ac:	d9 c2                	fld    %st(2)
  4035ae:	df e9                	fucomip %st(1),%st
  4035b0:	0f 9a c2             	setp   %dl
  4035b3:	41 0f 45 d1          	cmovne %r9d,%edx
  4035b7:	84 d2                	test   %dl,%dl
  4035b9:	0f 85 31 06 00 00    	jne    403bf0 <fmt_fp+0xeb0>
  4035bf:	40 84 ff             	test   %dil,%dil
  4035c2:	0f 85 28 06 00 00    	jne    403bf0 <fmt_fp+0xeb0>
  4035c8:	dd d8                	fstp   %st(0)
  4035ca:	dd d8                	fstp   %st(0)
  4035cc:	dd d8                	fstp   %st(0)
  4035ce:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4035d5:	74 08                	je     4035df <fmt_fp+0x89f>
  4035d7:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  4035db:	4c 8d 40 02          	lea    0x2(%rax),%r8
  4035df:	4d 89 ec             	mov    %r13,%r12
  4035e2:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  4035e7:	48 63 c3             	movslq %ebx,%rax
  4035ea:	49 63 cf             	movslq %r15d,%rcx
  4035ed:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  4035f4:	4c 29 e2             	sub    %r12,%rdx
  4035f7:	48 29 c2             	sub    %rax,%rdx
  4035fa:	48 39 d1             	cmp    %rdx,%rcx
  4035fd:	0f 8f 24 10 00 00    	jg     404627 <fmt_fp+0x18e7>
  403603:	4d 29 e8             	sub    %r13,%r8
  403606:	45 85 ff             	test   %r15d,%r15d
  403609:	74 0d                	je     403618 <fmt_fp+0x8d8>
  40360b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40360f:	48 39 d1             	cmp    %rdx,%rcx
  403612:	0f 8d ac 0c 00 00    	jge    4042c4 <fmt_fp+0x1584>
  403618:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40361c:	45 89 f7             	mov    %r14d,%r15d
  40361f:	44 01 fb             	add    %r15d,%ebx
  403622:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  403629:	20 01 
  40362b:	0f 85 a0 0b 00 00    	jne    4041d1 <fmt_fp+0x1491>
  403631:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403637:	39 d3                	cmp    %edx,%ebx
  403639:	0f 8d 1e fd ff ff    	jge    40335d <fmt_fp+0x61d>
  40363f:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403646:	89 d9                	mov    %ebx,%ecx
  403648:	be 20 00 00 00       	mov    $0x20,%esi
  40364d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403654:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40365b:	e8 c0 f5 ff ff       	call   402c20 <pad.part.0>
  403660:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403667:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  40366e:	f6 00 20             	testb  $0x20,(%rax)
  403671:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  403678:	0f 85 ef fc ff ff    	jne    40336d <fmt_fp+0x62d>
  40367e:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403685:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40368c:	48 89 c6             	mov    %rax,%rsi
  40368f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403696:	e8 35 2f 00 00       	call   4065d0 <__fwritex>
  40369b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4036a1:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4036a7:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4036ae:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4036b5:	35 00 00 01 00       	xor    $0x10000,%eax
  4036ba:	a9 00 20 01 00       	test   $0x12000,%eax
  4036bf:	75 37                	jne    4036f8 <fmt_fp+0x9b8>
  4036c1:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  4036c8:	75 2e                	jne    4036f8 <fmt_fp+0x9b8>
  4036ca:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4036d0:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4036d7:	89 d9                	mov    %ebx,%ecx
  4036d9:	be 30 00 00 00       	mov    $0x30,%esi
  4036de:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4036e5:	e8 36 f5 ff ff       	call   402c20 <pad.part.0>
  4036ea:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  4036f1:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4036f8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4036ff:	f6 00 20             	testb  $0x20,(%rax)
  403702:	0f 85 05 0b 00 00    	jne    40420d <fmt_fp+0x14cd>
  403708:	48 89 c2             	mov    %rax,%rdx
  40370b:	4c 89 c6             	mov    %r8,%rsi
  40370e:	4c 89 ef             	mov    %r13,%rdi
  403711:	45 29 f7             	sub    %r14d,%r15d
  403714:	e8 b7 2e 00 00       	call   4065d0 <__fwritex>
  403719:	45 85 ff             	test   %r15d,%r15d
  40371c:	0f 8e 76 fc ff ff    	jle    403398 <fmt_fp+0x658>
  403722:	e9 5b fc ff ff       	jmp    403382 <fmt_fp+0x642>
  403727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40372e:	00 00 
  403730:	44 89 c9             	mov    %r9d,%ecx
  403733:	45 31 c9             	xor    %r9d,%r9d
  403736:	f7 d9                	neg    %ecx
  403738:	49 39 dc             	cmp    %rbx,%r12
  40373b:	0f 82 2b f9 ff ff    	jb     40306c <fmt_fp+0x32c>
  403741:	41 8b 34 24          	mov    (%r12),%esi
  403745:	85 f6                	test   %esi,%esi
  403747:	0f 84 66 05 00 00    	je     403cb3 <fmt_fp+0xf73>
  40374d:	41 83 fe 66          	cmp    $0x66,%r14d
  403751:	0f 85 cf f9 ff ff    	jne    403126 <fmt_fp+0x3e6>
  403757:	4c 89 e0             	mov    %r12,%rax
  40375a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403760:	49 89 c4             	mov    %rax,%r12
  403763:	48 89 f8             	mov    %rdi,%rax
  403766:	e9 a3 f9 ff ff       	jmp    40310e <fmt_fp+0x3ce>
  40376b:	a8 01                	test   $0x1,%al
  40376d:	0f 84 2f 0b 00 00    	je     4042a2 <fmt_fp+0x1562>
  403773:	db 2d 87 4d 00 00    	fldt   0x4d87(%rip)        # 408500 <states+0x200>
  403779:	d1 f9                	sar    $1,%ecx
  40377b:	41 39 c9             	cmp    %ecx,%r9d
  40377e:	0f 82 06 0b 00 00    	jb     40428a <fmt_fp+0x154a>
  403784:	44 39 c9             	cmp    %r9d,%ecx
  403787:	0f 84 31 0e 00 00    	je     4045be <fmt_fp+0x187e>
  40378d:	d9 05 49 4d 00 00    	flds   0x4d49(%rip)        # 4084dc <states+0x1dc>
  403793:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403799:	85 d2                	test   %edx,%edx
  40379b:	74 14                	je     4037b1 <fmt_fp+0xa71>
  40379d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  4037a4:	80 38 2d             	cmpb   $0x2d,(%rax)
  4037a7:	75 08                	jne    4037b1 <fmt_fp+0xa71>
  4037a9:	d9 c9                	fxch   %st(1)
  4037ab:	d9 e0                	fchs
  4037ad:	d9 c9                	fxch   %st(1)
  4037af:	d9 e0                	fchs
  4037b1:	d8 c1                	fadd   %st(1),%st
  4037b3:	44 89 d0             	mov    %r10d,%eax
  4037b6:	44 29 c8             	sub    %r9d,%eax
  4037b9:	df e9                	fucomip %st(1),%st
  4037bb:	dd d8                	fstp   %st(0)
  4037bd:	0f 8a 4c 09 00 00    	jp     40410f <fmt_fp+0x13cf>
  4037c3:	0f 85 46 09 00 00    	jne    40410f <fmt_fp+0x13cf>
  4037c9:	89 06                	mov    %eax,(%rsi)
  4037cb:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4037cf:	48 39 d3             	cmp    %rdx,%rbx
  4037d2:	48 0f 47 da          	cmova  %rdx,%rbx
  4037d6:	49 39 dc             	cmp    %rbx,%r12
  4037d9:	72 0e                	jb     4037e9 <fmt_fp+0xaa9>
  4037db:	eb 13                	jmp    4037f0 <fmt_fp+0xab0>
  4037dd:	0f 1f 00             	nopl   (%rax)
  4037e0:	48 83 eb 04          	sub    $0x4,%rbx
  4037e4:	49 39 dc             	cmp    %rbx,%r12
  4037e7:	73 07                	jae    4037f0 <fmt_fp+0xab0>
  4037e9:	8b 43 fc             	mov    -0x4(%rbx),%eax
  4037ec:	85 c0                	test   %eax,%eax
  4037ee:	74 f0                	je     4037e0 <fmt_fp+0xaa0>
  4037f0:	41 83 fe 67          	cmp    $0x67,%r14d
  4037f4:	0f 84 25 05 00 00    	je     403d1f <fmt_fp+0xfdf>
  4037fa:	45 85 ff             	test   %r15d,%r15d
  4037fd:	0f 85 ba 04 00 00    	jne    403cbd <fmt_fp+0xf7d>
  403803:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40380a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403810:	41 c1 e9 03          	shr    $0x3,%r9d
  403814:	41 83 e1 01          	and    $0x1,%r9d
  403818:	41 83 c1 01          	add    $0x1,%r9d
  40381c:	45 29 ca             	sub    %r9d,%r10d
  40381f:	41 83 fe 66          	cmp    $0x66,%r14d
  403823:	0f 84 80 0b 00 00    	je     4043a9 <fmt_fp+0x1669>
  403829:	4d 63 d2             	movslq %r10d,%r10
  40382c:	85 ff                	test   %edi,%edi
  40382e:	0f 84 9e 0d 00 00    	je     4045d2 <fmt_fp+0x1892>
  403834:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  40383b:	cc cc cc 
  40383e:	89 fe                	mov    %edi,%esi
  403840:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403844:	f7 de                	neg    %esi
  403846:	4c 89 e9             	mov    %r13,%rcx
  403849:	0f 48 f7             	cmovs  %edi,%esi
  40384c:	48 63 f6             	movslq %esi,%rsi
  40384f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403854:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40385b:	00 00 00 00 
  40385f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403866:	00 00 00 00 
  40386a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403871:	00 00 00 00 
  403875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40387c:	00 00 00 00 
  403880:	48 89 f0             	mov    %rsi,%rax
  403883:	48 83 e9 01          	sub    $0x1,%rcx
  403887:	49 f7 e0             	mul    %r8
  40388a:	48 89 f0             	mov    %rsi,%rax
  40388d:	48 c1 ea 03          	shr    $0x3,%rdx
  403891:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403895:	4d 01 db             	add    %r11,%r11
  403898:	4c 29 d8             	sub    %r11,%rax
  40389b:	83 c0 30             	add    $0x30,%eax
  40389e:	48 83 fe 09          	cmp    $0x9,%rsi
  4038a2:	48 89 d6             	mov    %rdx,%rsi
  4038a5:	88 01                	mov    %al,(%rcx)
  4038a7:	77 d7                	ja     403880 <fmt_fp+0xb40>
  4038a9:	4c 89 e8             	mov    %r13,%rax
  4038ac:	48 29 c8             	sub    %rcx,%rax
  4038af:	48 83 f8 01          	cmp    $0x1,%rax
  4038b3:	7f 1e                	jg     4038d3 <fmt_fp+0xb93>
  4038b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038bc:	00 00 00 00 
  4038c0:	48 83 e9 01          	sub    $0x1,%rcx
  4038c4:	4c 89 e8             	mov    %r13,%rax
  4038c7:	c6 01 30             	movb   $0x30,(%rcx)
  4038ca:	48 29 c8             	sub    %rcx,%rax
  4038cd:	48 83 f8 01          	cmp    $0x1,%rax
  4038d1:	7e ed                	jle    4038c0 <fmt_fp+0xb80>
  4038d3:	c1 ff 1f             	sar    $0x1f,%edi
  4038d6:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  4038da:	83 e7 02             	and    $0x2,%edi
  4038dd:	49 29 c5             	sub    %rax,%r13
  4038e0:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  4038e7:	83 c7 2b             	add    $0x2b,%edi
  4038ea:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  4038ee:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  4038f5:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  4038f9:	4d 39 d5             	cmp    %r10,%r13
  4038fc:	0f 8f 25 0d 00 00    	jg     404627 <fmt_fp+0x18e7>
  403902:	45 01 e9             	add    %r13d,%r9d
  403905:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  40390a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403910:	41 39 c1             	cmp    %eax,%r9d
  403913:	0f 8f 0e 0d 00 00    	jg     404627 <fmt_fp+0x18e7>
  403919:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40391f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  403925:	44 01 c8             	add    %r9d,%eax
  403928:	39 f8                	cmp    %edi,%eax
  40392a:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  403930:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  403937:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  40393e:	20 01 
  403940:	0f 85 3c 07 00 00    	jne    404082 <fmt_fp+0x1342>
  403946:	39 f8                	cmp    %edi,%eax
  403948:	0f 8d c5 06 00 00    	jge    404013 <fmt_fp+0x12d3>
  40394e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403955:	89 fa                	mov    %edi,%edx
  403957:	89 c1                	mov    %eax,%ecx
  403959:	be 20 00 00 00       	mov    $0x20,%esi
  40395e:	4c 89 ef             	mov    %r13,%rdi
  403961:	e8 ba f2 ff ff       	call   402c20 <pad.part.0>
  403966:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  40396b:	0f 84 b2 06 00 00    	je     404023 <fmt_fp+0x12e3>
  403971:	41 83 fe 66          	cmp    $0x66,%r14d
  403975:	0f 84 75 04 00 00    	je     403df0 <fmt_fp+0x10b0>
  40397b:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403980:	49 39 dc             	cmp    %rbx,%r12
  403983:	48 0f 43 d8          	cmovae %rax,%rbx
  403987:	45 85 ff             	test   %r15d,%r15d
  40398a:	0f 88 af 01 00 00    	js     403b3f <fmt_fp+0xdff>
  403990:	49 39 dc             	cmp    %rbx,%r12
  403993:	0f 83 a6 01 00 00    	jae    403b3f <fmt_fp+0xdff>
  403999:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40399e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  4039a5:	4d 89 e6             	mov    %r12,%r14
  4039a8:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  4039ac:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  4039b3:	66 0f 6e c0          	movd   %eax,%xmm0
  4039b7:	49 89 dc             	mov    %rbx,%r12
  4039ba:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  4039c1:	cc cc cc 
  4039c4:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  4039c8:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4039cd:	0f 1f 00             	nopl   (%rax)
  4039d0:	41 8b 0e             	mov    (%r14),%ecx
  4039d3:	4c 89 c7             	mov    %r8,%rdi
  4039d6:	48 85 c9             	test   %rcx,%rcx
  4039d9:	0f 84 e1 01 00 00    	je     403bc0 <fmt_fp+0xe80>
  4039df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039e6:	00 00 00 00 
  4039ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039f1:	00 00 00 00 
  4039f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039fc:	00 00 00 00 
  403a00:	48 89 c8             	mov    %rcx,%rax
  403a03:	48 83 ef 01          	sub    $0x1,%rdi
  403a07:	49 f7 e5             	mul    %r13
  403a0a:	48 89 c8             	mov    %rcx,%rax
  403a0d:	48 c1 ea 03          	shr    $0x3,%rdx
  403a11:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403a15:	48 01 f6             	add    %rsi,%rsi
  403a18:	48 29 f0             	sub    %rsi,%rax
  403a1b:	83 c0 30             	add    $0x30,%eax
  403a1e:	48 83 f9 09          	cmp    $0x9,%rcx
  403a22:	48 89 d1             	mov    %rdx,%rcx
  403a25:	88 07                	mov    %al,(%rdi)
  403a27:	77 d7                	ja     403a00 <fmt_fp+0xcc0>
  403a29:	4c 39 c7             	cmp    %r8,%rdi
  403a2c:	0f 84 8e 01 00 00    	je     403bc0 <fmt_fp+0xe80>
  403a32:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403a39:	0f 84 96 01 00 00    	je     403bd5 <fmt_fp+0xe95>
  403a3f:	48 39 fb             	cmp    %rdi,%rbx
  403a42:	0f 83 c9 02 00 00    	jae    403d11 <fmt_fp+0xfd1>
  403a48:	48 89 fe             	mov    %rdi,%rsi
  403a4b:	48 89 f8             	mov    %rdi,%rax
  403a4e:	48 29 de             	sub    %rbx,%rsi
  403a51:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403a55:	48 83 fa 0e          	cmp    $0xe,%rdx
  403a59:	76 3d                	jbe    403a98 <fmt_fp+0xd58>
  403a5b:	48 89 f1             	mov    %rsi,%rcx
  403a5e:	48 89 fa             	mov    %rdi,%rdx
  403a61:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403a65:	48 29 ca             	sub    %rcx,%rdx
  403a68:	f6 c1 10             	test   $0x10,%cl
  403a6b:	74 13                	je     403a80 <fmt_fp+0xd40>
  403a6d:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403a71:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403a75:	48 39 d0             	cmp    %rdx,%rax
  403a78:	74 16                	je     403a90 <fmt_fp+0xd50>
  403a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a80:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403a84:	48 83 e8 20          	sub    $0x20,%rax
  403a88:	0f 11 00             	movups %xmm0,(%rax)
  403a8b:	48 39 d0             	cmp    %rdx,%rax
  403a8e:	75 f0                	jne    403a80 <fmt_fp+0xd40>
  403a90:	48 39 f1             	cmp    %rsi,%rcx
  403a93:	74 3b                	je     403ad0 <fmt_fp+0xd90>
  403a95:	48 29 cf             	sub    %rcx,%rdi
  403a98:	48 89 d8             	mov    %rbx,%rax
  403a9b:	48 f7 d0             	not    %rax
  403a9e:	48 01 f8             	add    %rdi,%rax
  403aa1:	48 83 ef 01          	sub    $0x1,%rdi
  403aa5:	c6 07 30             	movb   $0x30,(%rdi)
  403aa8:	48 39 fb             	cmp    %rdi,%rbx
  403aab:	73 23                	jae    403ad0 <fmt_fp+0xd90>
  403aad:	a8 01                	test   $0x1,%al
  403aaf:	74 0f                	je     403ac0 <fmt_fp+0xd80>
  403ab1:	48 83 ef 01          	sub    $0x1,%rdi
  403ab5:	c6 07 30             	movb   $0x30,(%rdi)
  403ab8:	48 39 fb             	cmp    %rdi,%rbx
  403abb:	73 13                	jae    403ad0 <fmt_fp+0xd90>
  403abd:	0f 1f 00             	nopl   (%rax)
  403ac0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403ac4:	48 83 ef 02          	sub    $0x2,%rdi
  403ac8:	c6 07 30             	movb   $0x30,(%rdi)
  403acb:	48 39 fb             	cmp    %rdi,%rbx
  403ace:	72 f0                	jb     403ac0 <fmt_fp+0xd80>
  403ad0:	41 8b 02             	mov    (%r10),%eax
  403ad3:	49 89 d9             	mov    %rbx,%r9
  403ad6:	83 e0 20             	and    $0x20,%eax
  403ad9:	4c 89 c1             	mov    %r8,%rcx
  403adc:	4c 29 c9             	sub    %r9,%rcx
  403adf:	85 c0                	test   %eax,%eax
  403ae1:	75 47                	jne    403b2a <fmt_fp+0xdea>
  403ae3:	49 63 f7             	movslq %r15d,%rsi
  403ae6:	4c 89 d2             	mov    %r10,%rdx
  403ae9:	4c 89 cf             	mov    %r9,%rdi
  403aec:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403af3:	48 39 ce             	cmp    %rcx,%rsi
  403af6:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403afd:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403b01:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403b08:	e8 c3 2a 00 00       	call   4065d0 <__fwritex>
  403b0d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403b14:	66 0f 6f 05 f4 49 00 	movdqa 0x49f4(%rip),%xmm0        # 408510 <states+0x210>
  403b1b:	00 
  403b1c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403b23:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403b2a:	49 83 c6 04          	add    $0x4,%r14
  403b2e:	41 29 cf             	sub    %ecx,%r15d
  403b31:	4d 39 e6             	cmp    %r12,%r14
  403b34:	73 09                	jae    403b3f <fmt_fp+0xdff>
  403b36:	45 85 ff             	test   %r15d,%r15d
  403b39:	0f 89 91 fe ff ff    	jns    4039d0 <fmt_fp+0xc90>
  403b3f:	41 8d 57 12          	lea    0x12(%r15),%edx
  403b43:	83 fa 12             	cmp    $0x12,%edx
  403b46:	7e 16                	jle    403b5e <fmt_fp+0xe1e>
  403b48:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403b4f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403b54:	be 30 00 00 00       	mov    $0x30,%esi
  403b59:	e8 c2 f0 ff ff       	call   402c20 <pad.part.0>
  403b5e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403b65:	f6 00 20             	testb  $0x20,(%rax)
  403b68:	0f 84 86 05 00 00    	je     4040f4 <fmt_fp+0x13b4>
  403b6e:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403b74:	80 f4 20             	xor    $0x20,%ah
  403b77:	a9 00 20 01 00       	test   $0x12000,%eax
  403b7c:	75 26                	jne    403ba4 <fmt_fp+0xe64>
  403b7e:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403b85:	75 1d                	jne    403ba4 <fmt_fp+0xe64>
  403b87:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403b8d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403b93:	be 20 00 00 00       	mov    $0x20,%esi
  403b98:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403b9f:	e8 7c f0 ff ff       	call   402c20 <pad.part.0>
  403ba4:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403baa:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403bb0:	39 c7                	cmp    %eax,%edi
  403bb2:	0f 4d c7             	cmovge %edi,%eax
  403bb5:	e9 65 f7 ff ff       	jmp    40331f <fmt_fp+0x5df>
  403bba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403bc0:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403bc4:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403bc8:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403bcf:	0f 85 73 fe ff ff    	jne    403a48 <fmt_fp+0xd08>
  403bd5:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403bd9:	41 f6 02 20          	testb  $0x20,(%r10)
  403bdd:	74 1e                	je     403bfd <fmt_fp+0xebd>
  403bdf:	4c 89 c1             	mov    %r8,%rcx
  403be2:	4c 29 c9             	sub    %r9,%rcx
  403be5:	e9 40 ff ff ff       	jmp    403b2a <fmt_fp+0xdea>
  403bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403bf0:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403bf4:	48 83 c0 02          	add    $0x2,%rax
  403bf8:	e9 66 f9 ff ff       	jmp    403563 <fmt_fp+0x823>
  403bfd:	4c 89 d2             	mov    %r10,%rdx
  403c00:	be 01 00 00 00       	mov    $0x1,%esi
  403c05:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403c0c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403c13:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403c1a:	e8 b1 29 00 00       	call   4065d0 <__fwritex>
  403c1f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c26:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403c2c:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403c33:	66 0f 6f 05 d5 48 00 	movdqa 0x48d5(%rip),%xmm0        # 408510 <states+0x210>
  403c3a:	00 
  403c3b:	41 8b 02             	mov    (%r10),%eax
  403c3e:	83 e2 08             	and    $0x8,%edx
  403c41:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c48:	83 e0 20             	and    $0x20,%eax
  403c4b:	44 09 fa             	or     %r15d,%edx
  403c4e:	0f 84 85 fe ff ff    	je     403ad9 <fmt_fp+0xd99>
  403c54:	85 c0                	test   %eax,%eax
  403c56:	75 87                	jne    403bdf <fmt_fp+0xe9f>
  403c58:	4c 89 d2             	mov    %r10,%rdx
  403c5b:	be 01 00 00 00       	mov    $0x1,%esi
  403c60:	48 8d 3d 1e 45 00 00 	lea    0x451e(%rip),%rdi        # 408185 <_fini+0x10a1>
  403c67:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403c6e:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403c75:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403c7c:	e8 4f 29 00 00       	call   4065d0 <__fwritex>
  403c81:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c88:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c8f:	66 0f 6f 05 79 48 00 	movdqa 0x4879(%rip),%xmm0        # 408510 <states+0x210>
  403c96:	00 
  403c97:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403c9e:	41 8b 02             	mov    (%r10),%eax
  403ca1:	83 e0 20             	and    $0x20,%eax
  403ca4:	e9 30 fe ff ff       	jmp    403ad9 <fmt_fp+0xd99>
  403ca9:	44 89 f8             	mov    %r15d,%eax
  403cac:	31 ff                	xor    %edi,%edi
  403cae:	e9 e5 f4 ff ff       	jmp    403198 <fmt_fp+0x458>
  403cb3:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403cb8:	e9 44 f4 ff ff       	jmp    403101 <fmt_fp+0x3c1>
  403cbd:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403cc4:	0f 8f 5d 09 00 00    	jg     404627 <fmt_fp+0x18e7>
  403cca:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403cd1:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403cd5:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403cdb:	45 29 ca             	sub    %r9d,%r10d
  403cde:	41 83 ce 20          	or     $0x20,%r14d
  403ce2:	41 83 fe 66          	cmp    $0x66,%r14d
  403ce6:	0f 85 3d fb ff ff    	jne    403829 <fmt_fp+0xae9>
  403cec:	44 39 d7             	cmp    %r10d,%edi
  403cef:	0f 8f 32 09 00 00    	jg     404627 <fmt_fp+0x18e7>
  403cf5:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403cfb:	85 ff                	test   %edi,%edi
  403cfd:	0f 8e 02 fc ff ff    	jle    403905 <fmt_fp+0xbc5>
  403d03:	41 01 f9             	add    %edi,%r9d
  403d06:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403d0c:	e9 f4 fb ff ff       	jmp    403905 <fmt_fp+0xbc5>
  403d11:	41 8b 02             	mov    (%r10),%eax
  403d14:	49 89 f9             	mov    %rdi,%r9
  403d17:	83 e0 20             	and    $0x20,%eax
  403d1a:	e9 ba fd ff ff       	jmp    403ad9 <fmt_fp+0xd99>
  403d1f:	45 85 ff             	test   %r15d,%r15d
  403d22:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403d28:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403d2c:	41 39 f9             	cmp    %edi,%r9d
  403d2f:	0f 8e e9 04 00 00    	jle    40421e <fmt_fp+0x14de>
  403d35:	83 ff fc             	cmp    $0xfffffffc,%edi
  403d38:	0f 8c e0 04 00 00    	jl     40421e <fmt_fp+0x14de>
  403d3e:	8d 47 01             	lea    0x1(%rdi),%eax
  403d41:	45 89 cf             	mov    %r9d,%r15d
  403d44:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403d4b:	41 29 c7             	sub    %eax,%r15d
  403d4e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403d55:	0f 85 9c 05 00 00    	jne    4042f7 <fmt_fp+0x15b7>
  403d5b:	be 09 00 00 00       	mov    $0x9,%esi
  403d60:	49 39 dc             	cmp    %rbx,%r12
  403d63:	73 1f                	jae    403d84 <fmt_fp+0x1044>
  403d65:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403d69:	45 85 c9             	test   %r9d,%r9d
  403d6c:	74 16                	je     403d84 <fmt_fp+0x1044>
  403d6e:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403d75:	d1 c8                	ror    $1,%eax
  403d77:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403d7c:	0f 86 e0 04 00 00    	jbe    404262 <fmt_fp+0x1522>
  403d82:	31 f6                	xor    %esi,%esi
  403d84:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403d8b:	41 83 ce 20          	or     $0x20,%r14d
  403d8f:	41 83 fe 66          	cmp    $0x66,%r14d
  403d93:	0f 85 ac 05 00 00    	jne    404345 <fmt_fp+0x1605>
  403d99:	48 89 d8             	mov    %rbx,%rax
  403d9c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403da3:	ba 00 00 00 00       	mov    $0x0,%edx
  403da8:	48 c1 f8 02          	sar    $0x2,%rax
  403dac:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403db1:	48 29 f0             	sub    %rsi,%rax
  403db4:	48 0f 48 c2          	cmovs  %rdx,%rax
  403db8:	49 63 d7             	movslq %r15d,%rdx
  403dbb:	48 39 d0             	cmp    %rdx,%rax
  403dbe:	48 0f 4f c2          	cmovg  %rdx,%rax
  403dc2:	48 85 c0             	test   %rax,%rax
  403dc5:	0f 84 66 08 00 00    	je     404631 <fmt_fp+0x18f1>
  403dcb:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403dd1:	0f 8f 50 08 00 00    	jg     404627 <fmt_fp+0x18e7>
  403dd7:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403ddb:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403de1:	41 89 c7             	mov    %eax,%r15d
  403de4:	45 29 ca             	sub    %r9d,%r10d
  403de7:	e9 00 ff ff ff       	jmp    403cec <fmt_fp+0xfac>
  403dec:	0f 1f 40 00          	nopl   0x0(%rax)
  403df0:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403df7:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403dfe:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403e03:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403e0a:	cc cc cc 
  403e0d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403e14:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403e1b:	66 0f 6e c7          	movd   %edi,%xmm0
  403e1f:	4c 39 e0             	cmp    %r12,%rax
  403e22:	49 89 c6             	mov    %rax,%r14
  403e25:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403e2a:	4c 0f 46 e0          	cmovbe %rax,%r12
  403e2e:	4c 89 e3             	mov    %r12,%rbx
  403e31:	0f 1f 40 00          	nopl   0x0(%rax)
  403e35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e3c:	00 00 00 00 
  403e40:	41 8b 0c 24          	mov    (%r12),%ecx
  403e44:	48 85 c9             	test   %rcx,%rcx
  403e47:	0f 84 43 02 00 00    	je     404090 <fmt_fp+0x1350>
  403e4d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403e51:	48 89 f7             	mov    %rsi,%rdi
  403e54:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e5b:	00 00 00 00 
  403e5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e66:	00 00 00 00 
  403e6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e71:	00 00 00 00 
  403e75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e7c:	00 00 00 00 
  403e80:	48 89 c8             	mov    %rcx,%rax
  403e83:	48 83 ef 01          	sub    $0x1,%rdi
  403e87:	49 f7 e5             	mul    %r13
  403e8a:	48 89 c8             	mov    %rcx,%rax
  403e8d:	48 c1 ea 03          	shr    $0x3,%rdx
  403e91:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403e95:	4d 01 c0             	add    %r8,%r8
  403e98:	4c 29 c0             	sub    %r8,%rax
  403e9b:	83 c0 30             	add    $0x30,%eax
  403e9e:	48 83 f9 09          	cmp    $0x9,%rcx
  403ea2:	48 89 d1             	mov    %rdx,%rcx
  403ea5:	88 07                	mov    %al,(%rdi)
  403ea7:	77 d7                	ja     403e80 <fmt_fp+0x1140>
  403ea9:	4c 39 e3             	cmp    %r12,%rbx
  403eac:	0f 84 36 01 00 00    	je     403fe8 <fmt_fp+0x12a8>
  403eb2:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403eb6:	48 39 fa             	cmp    %rdi,%rdx
  403eb9:	0f 83 32 01 00 00    	jae    403ff1 <fmt_fp+0x12b1>
  403ebf:	49 89 fa             	mov    %rdi,%r10
  403ec2:	48 89 f8             	mov    %rdi,%rax
  403ec5:	49 29 d2             	sub    %rdx,%r10
  403ec8:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403ecc:	48 83 f9 0e          	cmp    $0xe,%rcx
  403ed0:	76 46                	jbe    403f18 <fmt_fp+0x11d8>
  403ed2:	4c 89 d6             	mov    %r10,%rsi
  403ed5:	48 89 f9             	mov    %rdi,%rcx
  403ed8:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403edc:	48 29 f1             	sub    %rsi,%rcx
  403edf:	40 f6 c6 10          	test   $0x10,%sil
  403ee3:	74 1b                	je     403f00 <fmt_fp+0x11c0>
  403ee5:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403ee9:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403eed:	48 39 c8             	cmp    %rcx,%rax
  403ef0:	74 1e                	je     403f10 <fmt_fp+0x11d0>
  403ef2:	0f 1f 00             	nopl   (%rax)
  403ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403efc:	00 00 00 00 
  403f00:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403f04:	48 83 e8 20          	sub    $0x20,%rax
  403f08:	0f 11 00             	movups %xmm0,(%rax)
  403f0b:	48 39 c8             	cmp    %rcx,%rax
  403f0e:	75 f0                	jne    403f00 <fmt_fp+0x11c0>
  403f10:	4c 39 d6             	cmp    %r10,%rsi
  403f13:	74 3b                	je     403f50 <fmt_fp+0x1210>
  403f15:	48 29 f7             	sub    %rsi,%rdi
  403f18:	48 89 d0             	mov    %rdx,%rax
  403f1b:	48 f7 d0             	not    %rax
  403f1e:	48 01 f8             	add    %rdi,%rax
  403f21:	48 83 ef 01          	sub    $0x1,%rdi
  403f25:	c6 07 30             	movb   $0x30,(%rdi)
  403f28:	48 39 fa             	cmp    %rdi,%rdx
  403f2b:	73 23                	jae    403f50 <fmt_fp+0x1210>
  403f2d:	a8 01                	test   $0x1,%al
  403f2f:	74 0f                	je     403f40 <fmt_fp+0x1200>
  403f31:	48 83 ef 01          	sub    $0x1,%rdi
  403f35:	c6 07 30             	movb   $0x30,(%rdi)
  403f38:	48 39 fa             	cmp    %rdi,%rdx
  403f3b:	73 13                	jae    403f50 <fmt_fp+0x1210>
  403f3d:	0f 1f 00             	nopl   (%rax)
  403f40:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403f44:	48 83 ef 02          	sub    $0x2,%rdi
  403f48:	c6 07 30             	movb   $0x30,(%rdi)
  403f4b:	48 39 fa             	cmp    %rdi,%rdx
  403f4e:	72 f0                	jb     403f40 <fmt_fp+0x1200>
  403f50:	be 09 00 00 00       	mov    $0x9,%esi
  403f55:	48 89 d7             	mov    %rdx,%rdi
  403f58:	41 f6 07 20          	testb  $0x20,(%r15)
  403f5c:	0f 84 9c 00 00 00    	je     403ffe <fmt_fp+0x12be>
  403f62:	49 83 c4 04          	add    $0x4,%r12
  403f66:	4d 39 e6             	cmp    %r12,%r14
  403f69:	0f 83 d1 fe ff ff    	jae    403e40 <fmt_fp+0x1100>
  403f6f:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403f76:	49 89 dc             	mov    %rbx,%r12
  403f79:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403f80:	45 85 ff             	test   %r15d,%r15d
  403f83:	0f 85 36 04 00 00    	jne    4043bf <fmt_fp+0x167f>
  403f89:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403f90:	0f 84 d8 fb ff ff    	je     403b6e <fmt_fp+0xe2e>
  403f96:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403f9d:	f6 02 20             	testb  $0x20,(%rdx)
  403fa0:	0f 85 c8 fb ff ff    	jne    403b6e <fmt_fp+0xe2e>
  403fa6:	be 01 00 00 00       	mov    $0x1,%esi
  403fab:	48 8d 3d d3 41 00 00 	lea    0x41d3(%rip),%rdi        # 408185 <_fini+0x10a1>
  403fb2:	e8 19 26 00 00       	call   4065d0 <__fwritex>
  403fb7:	41 83 c7 09          	add    $0x9,%r15d
  403fbb:	41 83 ff 09          	cmp    $0x9,%r15d
  403fbf:	0f 8e a9 fb ff ff    	jle    403b6e <fmt_fp+0xe2e>
  403fc5:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403fcc:	b9 09 00 00 00       	mov    $0x9,%ecx
  403fd1:	44 89 fa             	mov    %r15d,%edx
  403fd4:	be 30 00 00 00       	mov    $0x30,%esi
  403fd9:	e8 42 ec ff ff       	call   402c20 <pad.part.0>
  403fde:	e9 8b fb ff ff       	jmp    403b6e <fmt_fp+0xe2e>
  403fe3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403fe8:	48 39 f7             	cmp    %rsi,%rdi
  403feb:	0f 84 b0 00 00 00    	je     4040a1 <fmt_fp+0x1361>
  403ff1:	48 29 fe             	sub    %rdi,%rsi
  403ff4:	41 f6 07 20          	testb  $0x20,(%r15)
  403ff8:	0f 85 64 ff ff ff    	jne    403f62 <fmt_fp+0x1222>
  403ffe:	4c 89 fa             	mov    %r15,%rdx
  404001:	e8 ca 25 00 00       	call   4065d0 <__fwritex>
  404006:	66 0f 6f 05 02 45 00 	movdqa 0x4502(%rip),%xmm0        # 408510 <states+0x210>
  40400d:	00 
  40400e:	e9 4f ff ff ff       	jmp    403f62 <fmt_fp+0x1222>
  404013:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40401a:	f6 00 20             	testb  $0x20,(%rax)
  40401d:	0f 85 4e f9 ff ff    	jne    403971 <fmt_fp+0xc31>
  404023:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40402a:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  404031:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  404038:	e8 93 25 00 00       	call   4065d0 <__fwritex>
  40403d:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404043:	35 00 00 01 00       	xor    $0x10000,%eax
  404048:	a9 00 20 01 00       	test   $0x12000,%eax
  40404d:	0f 85 1e f9 ff ff    	jne    403971 <fmt_fp+0xc31>
  404053:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  40405a:	0f 85 11 f9 ff ff    	jne    403971 <fmt_fp+0xc31>
  404060:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  404066:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40406c:	be 30 00 00 00       	mov    $0x30,%esi
  404071:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404078:	e8 a3 eb ff ff       	call   402c20 <pad.part.0>
  40407d:	e9 ef f8 ff ff       	jmp    403971 <fmt_fp+0xc31>
  404082:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  404089:	f6 00 20             	testb  $0x20,(%rax)
  40408c:	75 af                	jne    40403d <fmt_fp+0x12fd>
  40408e:	eb 93                	jmp    404023 <fmt_fp+0x12e3>
  404090:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  404094:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  404098:	4c 39 e3             	cmp    %r12,%rbx
  40409b:	0f 85 1e fe ff ff    	jne    403ebf <fmt_fp+0x117f>
  4040a1:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  4040a5:	be 01 00 00 00       	mov    $0x1,%esi
  4040aa:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  4040ae:	e9 a5 fe ff ff       	jmp    403f58 <fmt_fp+0x1218>
  4040b3:	d9 05 17 44 00 00    	flds   0x4417(%rip)        # 4084d0 <states+0x1d0>
  4040b9:	d9 05 21 44 00 00    	flds   0x4421(%rip)        # 4084e0 <states+0x1e0>
  4040bf:	b8 0e 00 00 00       	mov    $0xe,%eax
  4040c4:	44 29 f8             	sub    %r15d,%eax
  4040c7:	90                   	nop
  4040c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4040cf:	00 
  4040d0:	dc c9                	fmul   %st,%st(1)
  4040d2:	83 e8 01             	sub    $0x1,%eax
  4040d5:	73 f9                	jae    4040d0 <fmt_fp+0x1390>
  4040d7:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  4040de:	80 38 2d             	cmpb   $0x2d,(%rax)
  4040e1:	0f 84 c6 04 00 00    	je     4045ad <fmt_fp+0x186d>
  4040e7:	d9 ca                	fxch   %st(2)
  4040e9:	d8 c1                	fadd   %st(1),%st
  4040eb:	de e1                	fsubp  %st,%st(1)
  4040ed:	d9 c9                	fxch   %st(1)
  4040ef:	e9 9d f3 ff ff       	jmp    403491 <fmt_fp+0x751>
  4040f4:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  4040fb:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  4040ff:	48 89 c2             	mov    %rax,%rdx
  404102:	48 29 fe             	sub    %rdi,%rsi
  404105:	e8 c6 24 00 00       	call   4065d0 <__fwritex>
  40410a:	e9 5f fa ff ff       	jmp    403b6e <fmt_fp+0xe2e>
  40410f:	44 01 d8             	add    %r11d,%eax
  404112:	89 06                	mov    %eax,(%rsi)
  404114:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  404119:	0f 86 3e 05 00 00    	jbe    40465d <fmt_fp+0x191d>
  40411f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404126:	00 00 00 00 
  40412a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404131:	00 00 00 00 
  404135:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40413c:	00 00 00 00 
  404140:	48 89 f2             	mov    %rsi,%rdx
  404143:	48 83 ee 04          	sub    $0x4,%rsi
  404147:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  40414e:	4c 39 e6             	cmp    %r12,%rsi
  404151:	73 0d                	jae    404160 <fmt_fp+0x1420>
  404153:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  40415a:	00 00 
  40415c:	49 83 ec 04          	sub    $0x4,%r12
  404160:	8b 06                	mov    (%rsi),%eax
  404162:	83 c0 01             	add    $0x1,%eax
  404165:	89 06                	mov    %eax,(%rsi)
  404167:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  40416c:	77 d2                	ja     404140 <fmt_fp+0x1400>
  40416e:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  404175:	41 8b 0c 24          	mov    (%r12),%ecx
  404179:	4c 29 e0             	sub    %r12,%rax
  40417c:	48 c1 f8 02          	sar    $0x2,%rax
  404180:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  404183:	83 f9 09             	cmp    $0x9,%ecx
  404186:	0f 86 43 f6 ff ff    	jbe    4037cf <fmt_fp+0xa8f>
  40418c:	b8 0a 00 00 00       	mov    $0xa,%eax
  404191:	0f 1f 40 00          	nopl   0x0(%rax)
  404195:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40419c:	00 00 00 00 
  4041a0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4041a3:	83 c7 01             	add    $0x1,%edi
  4041a6:	01 c0                	add    %eax,%eax
  4041a8:	39 c1                	cmp    %eax,%ecx
  4041aa:	73 f4                	jae    4041a0 <fmt_fp+0x1460>
  4041ac:	e9 1e f6 ff ff       	jmp    4037cf <fmt_fp+0xa8f>
  4041b1:	be 01 00 00 00       	mov    $0x1,%esi
  4041b6:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  4041bc:	e9 d7 ec ff ff       	jmp    402e98 <fmt_fp+0x158>
  4041c1:	be 01 00 00 00       	mov    $0x1,%esi
  4041c6:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  4041cc:	e9 b6 ec ff ff       	jmp    402e87 <fmt_fp+0x147>
  4041d1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4041d8:	f6 07 20             	testb  $0x20,(%rdi)
  4041db:	0f 84 9d f4 ff ff    	je     40367e <fmt_fp+0x93e>
  4041e1:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4041e7:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4041ed:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4041f4:	35 00 00 01 00       	xor    $0x10000,%eax
  4041f9:	a9 00 20 01 00       	test   $0x12000,%eax
  4041fe:	75 0d                	jne    40420d <fmt_fp+0x14cd>
  404200:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404207:	0f 84 bd f4 ff ff    	je     4036ca <fmt_fp+0x98a>
  40420d:	45 29 f7             	sub    %r14d,%r15d
  404210:	45 85 ff             	test   %r15d,%r15d
  404213:	0f 8e 9d f1 ff ff    	jle    4033b6 <fmt_fp+0x676>
  404219:	e9 64 f1 ff ff       	jmp    403382 <fmt_fp+0x642>
  40421e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  404225:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  404229:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  404230:	0f 85 9c 00 00 00    	jne    4042d2 <fmt_fp+0x1592>
  404236:	49 39 dc             	cmp    %rbx,%r12
  404239:	0f 83 01 01 00 00    	jae    404340 <fmt_fp+0x1600>
  40423f:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404243:	45 85 c9             	test   %r9d,%r9d
  404246:	0f 84 f4 00 00 00    	je     404340 <fmt_fp+0x1600>
  40424c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404253:	31 f6                	xor    %esi,%esi
  404255:	d1 c8                	ror    $1,%eax
  404257:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40425c:	0f 87 e3 00 00 00    	ja     404345 <fmt_fp+0x1605>
  404262:	31 f6                	xor    %esi,%esi
  404264:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404269:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40426c:	44 89 c8             	mov    %r9d,%eax
  40426f:	31 d2                	xor    %edx,%edx
  404271:	83 c6 01             	add    $0x1,%esi
  404274:	01 c9                	add    %ecx,%ecx
  404276:	f7 f1                	div    %ecx
  404278:	85 d2                	test   %edx,%edx
  40427a:	74 ed                	je     404269 <fmt_fp+0x1529>
  40427c:	48 63 f6             	movslq %esi,%rsi
  40427f:	e9 00 fb ff ff       	jmp    403d84 <fmt_fp+0x1044>
  404284:	db 2d 76 42 00 00    	fldt   0x4276(%rip)        # 408500 <states+0x200>
  40428a:	d9 05 48 42 00 00    	flds   0x4248(%rip)        # 4084d8 <states+0x1d8>
  404290:	e9 fe f4 ff ff       	jmp    403793 <fmt_fp+0xa53>
  404295:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404299:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40429d:	e9 54 f2 ff ff       	jmp    4034f6 <fmt_fp+0x7b6>
  4042a2:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4042a8:	75 0f                	jne    4042b9 <fmt_fp+0x1579>
  4042aa:	49 39 f4             	cmp    %rsi,%r12
  4042ad:	73 0a                	jae    4042b9 <fmt_fp+0x1579>
  4042af:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4042b3:	0f 85 ba f4 ff ff    	jne    403773 <fmt_fp+0xa33>
  4042b9:	d9 05 15 42 00 00    	flds   0x4215(%rip)        # 4084d4 <states+0x1d4>
  4042bf:	e9 b5 f4 ff ff       	jmp    403779 <fmt_fp+0xa39>
  4042c4:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  4042c9:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  4042cd:	e9 4d f3 ff ff       	jmp    40361f <fmt_fp+0x8df>
  4042d2:	45 85 ff             	test   %r15d,%r15d
  4042d5:	0f 85 24 03 00 00    	jne    4045ff <fmt_fp+0x18bf>
  4042db:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4042e2:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4042e8:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4042ee:	41 83 ce 20          	or     $0x20,%r14d
  4042f2:	e9 3d f5 ff ff       	jmp    403834 <fmt_fp+0xaf4>
  4042f7:	45 85 ff             	test   %r15d,%r15d
  4042fa:	0f 85 bd f9 ff ff    	jne    403cbd <fmt_fp+0xf7d>
  404300:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404307:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40430d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404313:	41 83 ce 20          	or     $0x20,%r14d
  404317:	41 83 fe 66          	cmp    $0x66,%r14d
  40431b:	0f 85 08 f5 ff ff    	jne    403829 <fmt_fp+0xae9>
  404321:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  404327:	0f 84 fa 02 00 00    	je     404627 <fmt_fp+0x18e7>
  40432d:	85 ff                	test   %edi,%edi
  40432f:	0f 85 ce f9 ff ff    	jne    403d03 <fmt_fp+0xfc3>
  404335:	e9 df f5 ff ff       	jmp    403919 <fmt_fp+0xbd9>
  40433a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404340:	be 09 00 00 00       	mov    $0x9,%esi
  404345:	48 89 d8             	mov    %rbx,%rax
  404348:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40434f:	48 63 d7             	movslq %edi,%rdx
  404352:	48 c1 f8 02          	sar    $0x2,%rax
  404356:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40435b:	48 01 d0             	add    %rdx,%rax
  40435e:	ba 00 00 00 00       	mov    $0x0,%edx
  404363:	48 29 f0             	sub    %rsi,%rax
  404366:	48 0f 48 c2          	cmovs  %rdx,%rax
  40436a:	49 63 d7             	movslq %r15d,%rdx
  40436d:	48 39 d0             	cmp    %rdx,%rax
  404370:	48 0f 4f c2          	cmovg  %rdx,%rax
  404374:	41 89 c7             	mov    %eax,%r15d
  404377:	48 85 c0             	test   %rax,%rax
  40437a:	0f 85 3d f9 ff ff    	jne    403cbd <fmt_fp+0xf7d>
  404380:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404387:	41 83 ce 20          	or     $0x20,%r14d
  40438b:	41 83 fe 66          	cmp    $0x66,%r14d
  40438f:	0f 84 9c 02 00 00    	je     404631 <fmt_fp+0x18f1>
  404395:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40439b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4043a1:	45 31 ff             	xor    %r15d,%r15d
  4043a4:	e9 80 f4 ff ff       	jmp    403829 <fmt_fp+0xae9>
  4043a9:	44 39 d7             	cmp    %r10d,%edi
  4043ac:	0f 8f 75 02 00 00    	jg     404627 <fmt_fp+0x18e7>
  4043b2:	85 ff                	test   %edi,%edi
  4043b4:	0f 8f 49 f9 ff ff    	jg     403d03 <fmt_fp+0xfc3>
  4043ba:	e9 5a f5 ff ff       	jmp    403919 <fmt_fp+0xbd9>
  4043bf:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  4043c6:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  4043cb:	48 89 f8             	mov    %rdi,%rax
  4043ce:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  4043d2:	4c 29 e0             	sub    %r12,%rax
  4043d5:	48 39 d1             	cmp    %rdx,%rcx
  4043d8:	ba 00 00 00 00       	mov    $0x0,%edx
  4043dd:	48 0f 42 c2          	cmovb  %rdx,%rax
  4043e1:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  4043e6:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4043ed:	f6 00 20             	testb  $0x20,(%rax)
  4043f0:	0f 84 70 02 00 00    	je     404666 <fmt_fp+0x1926>
  4043f6:	45 85 ff             	test   %r15d,%r15d
  4043f9:	0f 8e b8 fb ff ff    	jle    403fb7 <fmt_fp+0x1277>
  4043ff:	49 39 de             	cmp    %rbx,%r14
  404402:	0f 83 af fb ff ff    	jae    403fb7 <fmt_fp+0x1277>
  404408:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40440d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404411:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404415:	49 89 d9             	mov    %rbx,%r9
  404418:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40441f:	66 0f 6e c0          	movd   %eax,%xmm0
  404423:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  40442a:	cc cc cc 
  40442d:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  404432:	0f 1f 00             	nopl   (%rax)
  404435:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40443c:	00 00 00 00 
  404440:	41 8b 0e             	mov    (%r14),%ecx
  404443:	4c 89 c7             	mov    %r8,%rdi
  404446:	48 85 c9             	test   %rcx,%rcx
  404449:	74 67                	je     4044b2 <fmt_fp+0x1772>
  40444b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404452:	00 00 
  404454:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40445b:	00 00 00 00 
  40445f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404466:	00 00 00 00 
  40446a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404471:	00 00 00 00 
  404475:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40447c:	00 00 00 00 
  404480:	48 89 c8             	mov    %rcx,%rax
  404483:	48 83 ef 01          	sub    $0x1,%rdi
  404487:	49 f7 e4             	mul    %r12
  40448a:	48 89 c8             	mov    %rcx,%rax
  40448d:	48 c1 ea 03          	shr    $0x3,%rdx
  404491:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404495:	48 01 f6             	add    %rsi,%rsi
  404498:	48 29 f0             	sub    %rsi,%rax
  40449b:	83 c0 30             	add    $0x30,%eax
  40449e:	48 83 f9 09          	cmp    $0x9,%rcx
  4044a2:	48 89 d1             	mov    %rdx,%rcx
  4044a5:	88 07                	mov    %al,(%rdi)
  4044a7:	77 d7                	ja     404480 <fmt_fp+0x1740>
  4044a9:	49 39 fd             	cmp    %rdi,%r13
  4044ac:	0f 83 91 00 00 00    	jae    404543 <fmt_fp+0x1803>
  4044b2:	48 89 fe             	mov    %rdi,%rsi
  4044b5:	48 89 f8             	mov    %rdi,%rax
  4044b8:	4c 29 ee             	sub    %r13,%rsi
  4044bb:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  4044bf:	48 83 fa 0e          	cmp    $0xe,%rdx
  4044c3:	76 43                	jbe    404508 <fmt_fp+0x17c8>
  4044c5:	48 89 f1             	mov    %rsi,%rcx
  4044c8:	48 89 fa             	mov    %rdi,%rdx
  4044cb:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4044cf:	48 29 ca             	sub    %rcx,%rdx
  4044d2:	f6 c1 10             	test   $0x10,%cl
  4044d5:	74 19                	je     4044f0 <fmt_fp+0x17b0>
  4044d7:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  4044db:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  4044df:	48 39 d0             	cmp    %rdx,%rax
  4044e2:	74 1c                	je     404500 <fmt_fp+0x17c0>
  4044e4:	90                   	nop
  4044e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044ec:	00 00 00 00 
  4044f0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  4044f4:	48 83 e8 20          	sub    $0x20,%rax
  4044f8:	0f 11 00             	movups %xmm0,(%rax)
  4044fb:	48 39 d0             	cmp    %rdx,%rax
  4044fe:	75 f0                	jne    4044f0 <fmt_fp+0x17b0>
  404500:	48 39 f1             	cmp    %rsi,%rcx
  404503:	74 3b                	je     404540 <fmt_fp+0x1800>
  404505:	48 29 cf             	sub    %rcx,%rdi
  404508:	4c 89 e8             	mov    %r13,%rax
  40450b:	48 f7 d0             	not    %rax
  40450e:	48 01 f8             	add    %rdi,%rax
  404511:	48 83 ef 01          	sub    $0x1,%rdi
  404515:	c6 07 30             	movb   $0x30,(%rdi)
  404518:	49 39 fd             	cmp    %rdi,%r13
  40451b:	73 23                	jae    404540 <fmt_fp+0x1800>
  40451d:	a8 01                	test   $0x1,%al
  40451f:	74 0f                	je     404530 <fmt_fp+0x17f0>
  404521:	48 83 ef 01          	sub    $0x1,%rdi
  404525:	c6 07 30             	movb   $0x30,(%rdi)
  404528:	49 39 fd             	cmp    %rdi,%r13
  40452b:	73 13                	jae    404540 <fmt_fp+0x1800>
  40452d:	0f 1f 00             	nopl   (%rax)
  404530:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  404534:	48 83 ef 02          	sub    $0x2,%rdi
  404538:	c6 07 30             	movb   $0x30,(%rdi)
  40453b:	49 39 fd             	cmp    %rdi,%r13
  40453e:	72 f0                	jb     404530 <fmt_fp+0x17f0>
  404540:	4c 89 ef             	mov    %r13,%rdi
  404543:	f6 03 20             	testb  $0x20,(%rbx)
  404546:	74 28                	je     404570 <fmt_fp+0x1830>
  404548:	49 83 c6 04          	add    $0x4,%r14
  40454c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404550:	4d 39 ce             	cmp    %r9,%r14
  404553:	0f 83 62 fa ff ff    	jae    403fbb <fmt_fp+0x127b>
  404559:	85 c0                	test   %eax,%eax
  40455b:	0f 8e 5a fa ff ff    	jle    403fbb <fmt_fp+0x127b>
  404561:	41 89 c7             	mov    %eax,%r15d
  404564:	e9 d7 fe ff ff       	jmp    404440 <fmt_fp+0x1700>
  404569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404570:	b8 09 00 00 00       	mov    $0x9,%eax
  404575:	48 89 da             	mov    %rbx,%rdx
  404578:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  40457f:	41 39 c7             	cmp    %eax,%r15d
  404582:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404589:	41 0f 4e c7          	cmovle %r15d,%eax
  40458d:	48 63 f0             	movslq %eax,%rsi
  404590:	e8 3b 20 00 00       	call   4065d0 <__fwritex>
  404595:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40459c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  4045a3:	66 0f 6f 05 65 3f 00 	movdqa 0x3f65(%rip),%xmm0        # 408510 <states+0x210>
  4045aa:	00 
  4045ab:	eb 9b                	jmp    404548 <fmt_fp+0x1808>
  4045ad:	d9 ca                	fxch   %st(2)
  4045af:	d9 e0                	fchs
  4045b1:	d8 e1                	fsub   %st(1),%st
  4045b3:	de c1                	faddp  %st,%st(1)
  4045b5:	d9 e0                	fchs
  4045b7:	d9 c9                	fxch   %st(1)
  4045b9:	e9 d3 ee ff ff       	jmp    403491 <fmt_fp+0x751>
  4045be:	48 8d 46 04          	lea    0x4(%rsi),%rax
  4045c2:	48 39 c3             	cmp    %rax,%rbx
  4045c5:	0f 85 c2 f1 ff ff    	jne    40378d <fmt_fp+0xa4d>
  4045cb:	d9 e8                	fld1
  4045cd:	e9 c1 f1 ff ff       	jmp    403793 <fmt_fp+0xa53>
  4045d2:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4045d6:	4c 89 e9             	mov    %r13,%rcx
  4045d9:	e9 e2 f2 ff ff       	jmp    4038c0 <fmt_fp+0xb80>
  4045de:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  4045e4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4045e9:	e9 32 ec ff ff       	jmp    403220 <fmt_fp+0x4e0>
  4045ee:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4045f2:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  4045f6:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4045fa:	e9 01 ef ff ff       	jmp    403500 <fmt_fp+0x7c0>
  4045ff:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404606:	74 1f                	je     404627 <fmt_fp+0x18e7>
  404608:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40460f:	41 83 c1 01          	add    $0x1,%r9d
  404613:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404618:	44 29 c8             	sub    %r9d,%eax
  40461b:	41 83 ce 20          	or     $0x20,%r14d
  40461f:	4c 63 d0             	movslq %eax,%r10
  404622:	e9 0d f2 ff ff       	jmp    403834 <fmt_fp+0xaf4>
  404627:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40462c:	e9 ee ec ff ff       	jmp    40331f <fmt_fp+0x5df>
  404631:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  404637:	74 ee                	je     404627 <fmt_fp+0x18e7>
  404639:	45 31 ff             	xor    %r15d,%r15d
  40463c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404642:	85 ff                	test   %edi,%edi
  404644:	0f 8f b9 f6 ff ff    	jg     403d03 <fmt_fp+0xfc3>
  40464a:	e9 ca f2 ff ff       	jmp    403919 <fmt_fp+0xbd9>
  40464f:	dd d8                	fstp   %st(0)
  404651:	dd d8                	fstp   %st(0)
  404653:	dd d8                	fstp   %st(0)
  404655:	49 89 c0             	mov    %rax,%r8
  404658:	e9 82 ef ff ff       	jmp    4035df <fmt_fp+0x89f>
  40465d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  404661:	e9 08 fb ff ff       	jmp    40416e <fmt_fp+0x142e>
  404666:	48 89 c2             	mov    %rax,%rdx
  404669:	be 01 00 00 00       	mov    $0x1,%esi
  40466e:	48 8d 3d 10 3b 00 00 	lea    0x3b10(%rip),%rdi        # 408185 <_fini+0x10a1>
  404675:	e8 56 1f 00 00       	call   4065d0 <__fwritex>
  40467a:	e9 77 fd ff ff       	jmp    4043f6 <fmt_fp+0x16b6>
  40467f:	e8 dc e0 ff ff       	call   402760 <__stack_chk_fail>
  404684:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40468b:	00 00 00 
  40468e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404695:	00 00 00 
  404698:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40469f:	00 00 00 
  4046a2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046a9:	00 00 00 
  4046ac:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046b3:	00 00 00 
  4046b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046bd:	00 00 00 

00000000004046c0 <printf_core>:
  4046c0:	55                   	push   %rbp
  4046c1:	48 89 e5             	mov    %rsp,%rbp
  4046c4:	41 57                	push   %r15
  4046c6:	4c 8d 3d 33 3c 00 00 	lea    0x3c33(%rip),%r15        # 408300 <states>
  4046cd:	41 56                	push   %r14
  4046cf:	49 89 f6             	mov    %rsi,%r14
  4046d2:	41 55                	push   %r13
  4046d4:	45 31 ed             	xor    %r13d,%r13d
  4046d7:	41 54                	push   %r12
  4046d9:	53                   	push   %rbx
  4046da:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  4046e1:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  4046e5:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  4046ec:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  4046f3:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  4046fa:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404701:	00 00 
  404703:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404707:	45 31 c0             	xor    %r8d,%r8d
  40470a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404711:	00 00 00 
  404714:	41 0f b6 06          	movzbl (%r14),%eax
  404718:	45 01 c5             	add    %r8d,%r13d
  40471b:	84 c0                	test   %al,%al
  40471d:	0f 84 ad 06 00 00    	je     404dd0 <printf_core+0x710>
  404723:	4d 89 f2             	mov    %r14,%r10
  404726:	eb 25                	jmp    40474d <printf_core+0x8d>
  404728:	66 90                	xchg   %ax,%ax
  40472a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404731:	00 00 00 00 
  404735:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40473c:	00 00 00 00 
  404740:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404745:	49 83 c2 01          	add    $0x1,%r10
  404749:	84 c0                	test   %al,%al
  40474b:	74 73                	je     4047c0 <printf_core+0x100>
  40474d:	3c 25                	cmp    $0x25,%al
  40474f:	75 ef                	jne    404740 <printf_core+0x80>
  404751:	4c 89 d3             	mov    %r10,%rbx
  404754:	eb 17                	jmp    40476d <printf_core+0xad>
  404756:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40475d:	00 00 00 
  404760:	48 83 c3 02          	add    $0x2,%rbx
  404764:	49 83 c2 01          	add    $0x1,%r10
  404768:	80 3b 25             	cmpb   $0x25,(%rbx)
  40476b:	75 06                	jne    404773 <printf_core+0xb3>
  40476d:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  404771:	74 ed                	je     404760 <printf_core+0xa0>
  404773:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  404779:	4d 29 f2             	sub    %r14,%r10
  40477c:	45 29 eb             	sub    %r13d,%r11d
  40477f:	49 63 c3             	movslq %r11d,%rax
  404782:	49 39 c2             	cmp    %rax,%r10
  404785:	0f 8f 15 03 00 00    	jg     404aa0 <printf_core+0x3e0>
  40478b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40478f:	45 89 d0             	mov    %r10d,%r8d
  404792:	48 85 c0             	test   %rax,%rax
  404795:	74 09                	je     4047a0 <printf_core+0xe0>
  404797:	f6 00 20             	testb  $0x20,(%rax)
  40479a:	0f 84 10 03 00 00    	je     404ab0 <printf_core+0x3f0>
  4047a0:	45 85 d2             	test   %r10d,%r10d
  4047a3:	74 2b                	je     4047d0 <printf_core+0x110>
  4047a5:	45 39 c3             	cmp    %r8d,%r11d
  4047a8:	0f 8c f2 02 00 00    	jl     404aa0 <printf_core+0x3e0>
  4047ae:	49 89 de             	mov    %rbx,%r14
  4047b1:	e9 5e ff ff ff       	jmp    404714 <printf_core+0x54>
  4047b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047bd:	00 00 00 
  4047c0:	3c 25                	cmp    $0x25,%al
  4047c2:	74 8d                	je     404751 <printf_core+0x91>
  4047c4:	4c 89 d3             	mov    %r10,%rbx
  4047c7:	eb aa                	jmp    404773 <printf_core+0xb3>
  4047c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4047d0:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  4047d4:	8d 79 d0             	lea    -0x30(%rcx),%edi
  4047d7:	89 c8                	mov    %ecx,%eax
  4047d9:	83 ff 09             	cmp    $0x9,%edi
  4047dc:	77 1a                	ja     4047f8 <printf_core+0x138>
  4047de:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  4047e2:	0f 84 e5 03 00 00    	je     404bcd <printf_core+0x50d>
  4047e8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4047ec:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4047f1:	eb 1a                	jmp    40480d <printf_core+0x14d>
  4047f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4047f8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4047fc:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404801:	83 e9 20             	sub    $0x20,%ecx
  404804:	83 f9 1f             	cmp    $0x1f,%ecx
  404807:	0f 87 b5 05 00 00    	ja     404dc2 <printf_core+0x702>
  40480d:	45 31 e4             	xor    %r12d,%r12d
  404810:	be 89 28 01 00       	mov    $0x12889,%esi
  404815:	eb 48                	jmp    40485f <printf_core+0x19f>
  404817:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40481e:	00 
  40481f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404826:	00 00 00 00 
  40482a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404831:	00 00 00 00 
  404835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40483c:	00 00 00 00 
  404840:	b8 01 00 00 00       	mov    $0x1,%eax
  404845:	48 83 c2 01          	add    $0x1,%rdx
  404849:	d3 e0                	shl    %cl,%eax
  40484b:	0f be 0a             	movsbl (%rdx),%ecx
  40484e:	41 09 c4             	or     %eax,%r12d
  404851:	89 c8                	mov    %ecx,%eax
  404853:	83 e9 20             	sub    $0x20,%ecx
  404856:	83 f9 1f             	cmp    $0x1f,%ecx
  404859:	0f 87 49 01 00 00    	ja     4049a8 <printf_core+0x2e8>
  40485f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  404862:	0f a3 ce             	bt     %ecx,%esi
  404865:	72 d9                	jb     404840 <printf_core+0x180>
  404867:	3c 2a                	cmp    $0x2a,%al
  404869:	0f 85 39 01 00 00    	jne    4049a8 <printf_core+0x2e8>
  40486f:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  404874:	48 89 c8             	mov    %rcx,%rax
  404877:	83 e9 30             	sub    $0x30,%ecx
  40487a:	83 f9 09             	cmp    $0x9,%ecx
  40487d:	0f 86 0d 03 00 00    	jbe    404b90 <printf_core+0x4d0>
  404883:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404889:	85 c9                	test   %ecx,%ecx
  40488b:	0f 85 dc 00 00 00    	jne    40496d <printf_core+0x2ad>
  404891:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404895:	45 89 d1             	mov    %r10d,%r9d
  404898:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40489d:	0f 84 58 01 00 00    	je     4049fb <printf_core+0x33b>
  4048a3:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4048aa:	8b 06                	mov    (%rsi),%eax
  4048ac:	83 f8 2f             	cmp    $0x2f,%eax
  4048af:	0f 87 4a 03 00 00    	ja     404bff <printf_core+0x53f>
  4048b5:	89 c2                	mov    %eax,%edx
  4048b7:	83 c0 08             	add    $0x8,%eax
  4048ba:	48 03 56 10          	add    0x10(%rsi),%rdx
  4048be:	89 06                	mov    %eax,(%rsi)
  4048c0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  4048c7:	00 00 00 
  4048ca:	44 8b 0a             	mov    (%rdx),%r9d
  4048cd:	44 89 e2             	mov    %r12d,%edx
  4048d0:	0f b6 03             	movzbl (%rbx),%eax
  4048d3:	80 ce 20             	or     $0x20,%dh
  4048d6:	45 85 c9             	test   %r9d,%r9d
  4048d9:	44 0f 48 e2          	cmovs  %edx,%r12d
  4048dd:	44 89 ca             	mov    %r9d,%edx
  4048e0:	f7 da                	neg    %edx
  4048e2:	45 85 c9             	test   %r9d,%r9d
  4048e5:	44 0f 48 ca          	cmovs  %edx,%r9d
  4048e9:	3c 2e                	cmp    $0x2e,%al
  4048eb:	0f 84 12 01 00 00    	je     404a03 <printf_core+0x343>
  4048f1:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  4048f8:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4048ff:	31 c0                	xor    %eax,%eax
  404901:	eb 5f                	jmp    404962 <printf_core+0x2a2>
  404903:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404909:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404910:	00 00 00 00 
  404914:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40491b:	00 00 00 00 
  40491f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404926:	00 00 00 00 
  40492a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404931:	00 00 00 00 
  404935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40493c:	00 00 00 00 
  404940:	89 c1                	mov    %eax,%ecx
  404942:	48 63 d2             	movslq %edx,%rdx
  404945:	48 83 c3 01          	add    $0x1,%rbx
  404949:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  40494d:	4c 01 fe             	add    %r15,%rsi
  404950:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404954:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404957:	83 fa 07             	cmp    $0x7,%edx
  40495a:	0f 87 90 01 00 00    	ja     404af0 <printf_core+0x430>
  404960:	89 f0                	mov    %esi,%eax
  404962:	0f be 13             	movsbl (%rbx),%edx
  404965:	83 ea 41             	sub    $0x41,%edx
  404968:	83 fa 39             	cmp    $0x39,%edx
  40496b:	76 d3                	jbe    404940 <printf_core+0x280>
  40496d:	e8 de 16 00 00       	call   406050 <__errno_location>
  404972:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  404978:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  40497e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404982:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404989:	00 00 
  40498b:	0f 85 a2 0f 00 00    	jne    405933 <printf_core+0x1273>
  404991:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404995:	44 89 d8             	mov    %r11d,%eax
  404998:	5b                   	pop    %rbx
  404999:	41 5c                	pop    %r12
  40499b:	41 5d                	pop    %r13
  40499d:	41 5e                	pop    %r14
  40499f:	41 5f                	pop    %r15
  4049a1:	5d                   	pop    %rbp
  4049a2:	c3                   	ret
  4049a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4049a8:	0f be 0a             	movsbl (%rdx),%ecx
  4049ab:	45 89 d1             	mov    %r10d,%r9d
  4049ae:	48 89 d3             	mov    %rdx,%rbx
  4049b1:	89 c8                	mov    %ecx,%eax
  4049b3:	83 e9 30             	sub    $0x30,%ecx
  4049b6:	83 f9 09             	cmp    $0x9,%ecx
  4049b9:	77 40                	ja     4049fb <printf_core+0x33b>
  4049bb:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  4049c2:	0f 8f c8 00 00 00    	jg     404a90 <printf_core+0x3d0>
  4049c8:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  4049cc:	83 e8 30             	sub    $0x30,%eax
  4049cf:	0f be c0             	movsbl %al,%eax
  4049d2:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  4049d8:	39 f0                	cmp    %esi,%eax
  4049da:	0f 8f b0 00 00 00    	jg     404a90 <printf_core+0x3d0>
  4049e0:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4049e4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  4049e8:	29 c8                	sub    %ecx,%eax
  4049ea:	41 89 c1             	mov    %eax,%r9d
  4049ed:	89 d0                	mov    %edx,%eax
  4049ef:	83 ea 30             	sub    $0x30,%edx
  4049f2:	83 fa 09             	cmp    $0x9,%edx
  4049f5:	0f 86 3d 0f 00 00    	jbe    405938 <printf_core+0x1278>
  4049fb:	3c 2e                	cmp    $0x2e,%al
  4049fd:	0f 85 ee fe ff ff    	jne    4048f1 <printf_core+0x231>
  404a03:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404a07:	3c 2a                	cmp    $0x2a,%al
  404a09:	0f 85 11 02 00 00    	jne    404c20 <printf_core+0x560>
  404a0f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404a13:	89 c2                	mov    %eax,%edx
  404a15:	83 e8 30             	sub    $0x30,%eax
  404a18:	83 f8 09             	cmp    $0x9,%eax
  404a1b:	77 0a                	ja     404a27 <printf_core+0x367>
  404a1d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  404a21:	0f 84 4f 03 00 00    	je     404d76 <printf_core+0x6b6>
  404a27:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  404a2d:	85 c0                	test   %eax,%eax
  404a2f:	0f 85 38 ff ff ff    	jne    40496d <printf_core+0x2ad>
  404a35:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404a3a:	0f 84 6f 03 00 00    	je     404daf <printf_core+0x6ef>
  404a40:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404a47:	8b 06                	mov    (%rsi),%eax
  404a49:	83 f8 2f             	cmp    $0x2f,%eax
  404a4c:	0f 87 60 02 00 00    	ja     404cb2 <printf_core+0x5f2>
  404a52:	89 c2                	mov    %eax,%edx
  404a54:	83 c0 08             	add    $0x8,%eax
  404a57:	48 03 56 10          	add    0x10(%rsi),%rdx
  404a5b:	89 06                	mov    %eax,(%rsi)
  404a5d:	8b 02                	mov    (%rdx),%eax
  404a5f:	89 45 80             	mov    %eax,-0x80(%rbp)
  404a62:	f7 d0                	not    %eax
  404a64:	c1 e8 1f             	shr    $0x1f,%eax
  404a67:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404a6d:	48 83 c3 02          	add    $0x2,%rbx
  404a71:	e9 89 fe ff ff       	jmp    4048ff <printf_core+0x23f>
  404a76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404a7d:	00 00 00 
  404a80:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404a84:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404a88:	83 e8 30             	sub    $0x30,%eax
  404a8b:	83 f8 09             	cmp    $0x9,%eax
  404a8e:	77 10                	ja     404aa0 <printf_core+0x3e0>
  404a90:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404a94:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404a98:	83 ea 30             	sub    $0x30,%edx
  404a9b:	83 fa 09             	cmp    $0x9,%edx
  404a9e:	76 e0                	jbe    404a80 <printf_core+0x3c0>
  404aa0:	e8 ab 15 00 00       	call   406050 <__errno_location>
  404aa5:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404aab:	e9 c8 fe ff ff       	jmp    404978 <printf_core+0x2b8>
  404ab0:	49 63 f2             	movslq %r10d,%rsi
  404ab3:	48 89 c2             	mov    %rax,%rdx
  404ab6:	4c 89 f7             	mov    %r14,%rdi
  404ab9:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404ac0:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404ac7:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404acb:	e8 00 1b 00 00       	call   4065d0 <__fwritex>
  404ad0:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404ad7:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404ade:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404ae2:	e9 b9 fc ff ff       	jmp    4047a0 <printf_core+0xe0>
  404ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404aee:	00 00 
  404af0:	85 f6                	test   %esi,%esi
  404af2:	0f 84 75 fe ff ff    	je     40496d <printf_core+0x2ad>
  404af8:	83 fe 1b             	cmp    $0x1b,%esi
  404afb:	0f 84 e5 00 00 00    	je     404be6 <printf_core+0x526>
  404b01:	83 ff ff             	cmp    $0xffffffff,%edi
  404b04:	0f 84 01 02 00 00    	je     404d0b <printf_core+0x64b>
  404b0a:	48 63 ff             	movslq %edi,%rdi
  404b0d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b12:	0f 84 b2 01 00 00    	je     404cca <printf_core+0x60a>
  404b18:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404b1f:	48 c1 e7 04          	shl    $0x4,%rdi
  404b23:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404b28:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404b2c:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404b30:	f6 07 20             	testb  $0x20,(%rdi)
  404b33:	0f 85 3f fe ff ff    	jne    404978 <printf_core+0x2b8>
  404b39:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404b3d:	89 d6                	mov    %edx,%esi
  404b3f:	85 c0                	test   %eax,%eax
  404b41:	74 13                	je     404b56 <printf_core+0x496>
  404b43:	89 d7                	mov    %edx,%edi
  404b45:	83 e6 df             	and    $0xffffffdf,%esi
  404b48:	83 e7 0f             	and    $0xf,%edi
  404b4b:	40 0f be f6          	movsbl %sil,%esi
  404b4f:	40 80 ff 03          	cmp    $0x3,%dil
  404b53:	0f 44 d6             	cmove  %esi,%edx
  404b56:	44 89 e6             	mov    %r12d,%esi
  404b59:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404b5f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404b66:	44 0f 45 e6          	cmovne %esi,%r12d
  404b6a:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404b6d:	83 fe 37             	cmp    $0x37,%esi
  404b70:	0f 87 c2 02 00 00    	ja     404e38 <printf_core+0x778>
  404b76:	48 8d 3d 63 36 00 00 	lea    0x3663(%rip),%rdi        # 4081e0 <_fini+0x10fc>
  404b7d:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404b81:	48 01 fe             	add    %rdi,%rsi
  404b84:	3e ff e6             	notrack jmp *%rsi
  404b87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404b8e:	00 00 
  404b90:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404b94:	0f 84 ab 01 00 00    	je     404d45 <printf_core+0x685>
  404b9a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404ba0:	85 f6                	test   %esi,%esi
  404ba2:	0f 85 c5 fd ff ff    	jne    40496d <printf_core+0x2ad>
  404ba8:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404bac:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bb1:	0f 85 ec fc ff ff    	jne    4048a3 <printf_core+0x1e3>
  404bb7:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404bbe:	45 89 d1             	mov    %r10d,%r9d
  404bc1:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404bc8:	e9 32 fd ff ff       	jmp    4048ff <printf_core+0x23f>
  404bcd:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404bd1:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404bd5:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404bdc:	00 00 00 
  404bdf:	89 c8                	mov    %ecx,%eax
  404be1:	e9 1b fc ff ff       	jmp    404801 <printf_core+0x141>
  404be6:	83 ff ff             	cmp    $0xffffffff,%edi
  404be9:	0f 85 7e fd ff ff    	jne    40496d <printf_core+0x2ad>
  404bef:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bf4:	0f 85 32 ff ff ff    	jne    404b2c <printf_core+0x46c>
  404bfa:	e9 af fb ff ff       	jmp    4047ae <printf_core+0xee>
  404bff:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404c06:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404c0a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404c0e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404c12:	e9 a9 fc ff ff       	jmp    4048c0 <printf_core+0x200>
  404c17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404c1e:	00 00 
  404c20:	0f be d0             	movsbl %al,%edx
  404c23:	48 83 c3 01          	add    $0x1,%rbx
  404c27:	83 ea 30             	sub    $0x30,%edx
  404c2a:	83 fa 09             	cmp    $0x9,%edx
  404c2d:	0f 87 93 0b 00 00    	ja     4057c6 <printf_core+0x1106>
  404c33:	44 89 d2             	mov    %r10d,%edx
  404c36:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404c3c:	0f 8f fe 0c 00 00    	jg     405940 <printf_core+0x1280>
  404c42:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404c45:	83 e8 30             	sub    $0x30,%eax
  404c48:	0f be c0             	movsbl %al,%eax
  404c4b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404c51:	39 c2                	cmp    %eax,%edx
  404c53:	0f 8d 87 00 00 00    	jge    404ce0 <printf_core+0x620>
  404c59:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404c5d:	83 e8 30             	sub    $0x30,%eax
  404c60:	83 f8 09             	cmp    $0x9,%eax
  404c63:	0f 87 8b 0a 00 00    	ja     4056f4 <printf_core+0x1034>
  404c69:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404c6d:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404c71:	83 ea 30             	sub    $0x30,%edx
  404c74:	83 fa 09             	cmp    $0x9,%edx
  404c77:	77 20                	ja     404c99 <printf_core+0x5d9>
  404c79:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404c7d:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404c81:	83 ea 30             	sub    $0x30,%edx
  404c84:	83 fa 09             	cmp    $0x9,%edx
  404c87:	77 13                	ja     404c9c <printf_core+0x5dc>
  404c89:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404c8d:	48 83 c0 02          	add    $0x2,%rax
  404c91:	83 ea 30             	sub    $0x30,%edx
  404c94:	83 fa 09             	cmp    $0x9,%edx
  404c97:	76 e0                	jbe    404c79 <printf_core+0x5b9>
  404c99:	48 89 c3             	mov    %rax,%rbx
  404c9c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404ca3:	00 00 00 
  404ca6:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404cad:	e9 4d fc ff ff       	jmp    4048ff <printf_core+0x23f>
  404cb2:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404cb9:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404cbd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404cc1:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404cc5:	e9 93 fd ff ff       	jmp    404a5d <printf_core+0x39d>
  404cca:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404cd1:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404cd4:	e9 d5 fa ff ff       	jmp    4047ae <printf_core+0xee>
  404cd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ce0:	48 83 c3 01          	add    $0x1,%rbx
  404ce4:	29 c8                	sub    %ecx,%eax
  404ce6:	0f be 0b             	movsbl (%rbx),%ecx
  404ce9:	89 c2                	mov    %eax,%edx
  404ceb:	89 c8                	mov    %ecx,%eax
  404ced:	83 e9 30             	sub    $0x30,%ecx
  404cf0:	83 f9 09             	cmp    $0x9,%ecx
  404cf3:	0f 86 3d ff ff ff    	jbe    404c36 <printf_core+0x576>
  404cf9:	89 55 80             	mov    %edx,-0x80(%rbp)
  404cfc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d03:	00 00 00 
  404d06:	e9 f4 fb ff ff       	jmp    4048ff <printf_core+0x23f>
  404d0b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d10:	0f 84 15 0c 00 00    	je     40592b <printf_core+0x126b>
  404d16:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404d1d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404d21:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404d27:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404d2e:	e8 ed dc ff ff       	call   402a20 <pop_arg>
  404d33:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404d39:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404d40:	e9 e7 fd ff ff       	jmp    404b2c <printf_core+0x46c>
  404d45:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404d49:	48 83 e8 30          	sub    $0x30,%rax
  404d4d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d52:	0f 84 b6 09 00 00    	je     40570e <printf_core+0x104e>
  404d58:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404d5f:	48 c1 e0 04          	shl    $0x4,%rax
  404d63:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404d6a:	00 00 00 
  404d6d:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404d71:	e9 57 fb ff ff       	jmp    4048cd <printf_core+0x20d>
  404d76:	48 0f be c2          	movsbq %dl,%rax
  404d7a:	48 83 e8 30          	sub    $0x30,%rax
  404d7e:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d83:	0f 84 a9 09 00 00    	je     405732 <printf_core+0x1072>
  404d89:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404d90:	48 c1 e0 04          	shl    $0x4,%rax
  404d94:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404d98:	89 45 80             	mov    %eax,-0x80(%rbp)
  404d9b:	f7 d0                	not    %eax
  404d9d:	c1 e8 1f             	shr    $0x1f,%eax
  404da0:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404da6:	48 83 c3 04          	add    $0x4,%rbx
  404daa:	e9 50 fb ff ff       	jmp    4048ff <printf_core+0x23f>
  404daf:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404db3:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404dba:	00 00 00 
  404dbd:	e9 ab fc ff ff       	jmp    404a6d <printf_core+0x3ad>
  404dc2:	48 89 d3             	mov    %rdx,%rbx
  404dc5:	45 89 d1             	mov    %r10d,%r9d
  404dc8:	45 31 e4             	xor    %r12d,%r12d
  404dcb:	e9 2b fc ff ff       	jmp    4049fb <printf_core+0x33b>
  404dd0:	45 89 eb             	mov    %r13d,%r11d
  404dd3:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404dd8:	0f 85 a0 fb ff ff    	jne    40497e <printf_core+0x2be>
  404dde:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404de5:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404deb:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404df1:	48 83 c7 10          	add    $0x10,%rdi
  404df5:	85 c9                	test   %ecx,%ecx
  404df7:	0f 84 2e 0b 00 00    	je     40592b <printf_core+0x126b>
  404dfd:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404e04:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404e0b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404e0f:	85 f6                	test   %esi,%esi
  404e11:	0f 84 90 0a 00 00    	je     4058a7 <printf_core+0x11e7>
  404e17:	e8 04 dc ff ff       	call   402a20 <pop_arg>
  404e1c:	49 83 c0 01          	add    $0x1,%r8
  404e20:	48 83 c7 10          	add    $0x10,%rdi
  404e24:	49 83 f8 0a          	cmp    $0xa,%r8
  404e28:	75 e1                	jne    404e0b <printf_core+0x74b>
  404e2a:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404e30:	e9 49 fb ff ff       	jmp    40497e <printf_core+0x2be>
  404e35:	0f 1f 00             	nopl   (%rax)
  404e38:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404e3c:	4c 29 f0             	sub    %r14,%rax
  404e3f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404e46:	48 89 c7             	mov    %rax,%rdi
  404e49:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404e4d:	48 39 c7             	cmp    %rax,%rdi
  404e50:	0f 8e da 07 00 00    	jle    405630 <printf_core+0xf70>
  404e56:	48 89 f8             	mov    %rdi,%rax
  404e59:	48 8d 3d 27 33 00 00 	lea    0x3327(%rip),%rdi        # 408187 <_fini+0x10a3>
  404e60:	89 45 80             	mov    %eax,-0x80(%rbp)
  404e63:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404e6a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404e70:	44 89 d0             	mov    %r10d,%eax
  404e73:	66 90                	xchg   %ax,%ax
  404e75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e7c:	00 00 00 00 
  404e80:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404e86:	41 39 c9             	cmp    %ecx,%r9d
  404e89:	41 89 c8             	mov    %ecx,%r8d
  404e8c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404e90:	45 39 c3             	cmp    %r8d,%r11d
  404e93:	0f 8c 07 fc ff ff    	jl     404aa0 <printf_core+0x3e0>
  404e99:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404ea0:	0f 85 e2 06 00 00    	jne    405588 <printf_core+0xec8>
  404ea6:	41 39 c9             	cmp    %ecx,%r9d
  404ea9:	0f 8e 40 07 00 00    	jle    4055ef <printf_core+0xf2f>
  404eaf:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404eb3:	44 89 c2             	mov    %r8d,%edx
  404eb6:	be 20 00 00 00       	mov    $0x20,%esi
  404ebb:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404ec1:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404ec8:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404ecf:	e8 4c dd ff ff       	call   402c20 <pad.part.0>
  404ed4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404ed8:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404edf:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404ee6:	f6 00 20             	testb  $0x20,(%rax)
  404ee9:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404eef:	0f 84 07 07 00 00    	je     4055fc <printf_core+0xf3c>
  404ef5:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404efc:	89 c1                	mov    %eax,%ecx
  404efe:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404f01:	0f 8d a7 f8 ff ff    	jge    4047ae <printf_core+0xee>
  404f07:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404f0e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404f15:	8b 55 80             	mov    -0x80(%rbp),%edx
  404f18:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f1c:	be 30 00 00 00       	mov    $0x30,%esi
  404f21:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404f28:	e8 f3 dc ff ff       	call   402c20 <pad.part.0>
  404f2d:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404f34:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404f38:	f6 00 20             	testb  $0x20,(%rax)
  404f3b:	75 1b                	jne    404f58 <printf_core+0x898>
  404f3d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404f41:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404f48:	4c 89 f7             	mov    %r14,%rdi
  404f4b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404f4f:	e8 7c 16 00 00       	call   4065d0 <__fwritex>
  404f54:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f58:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404f5f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404f66:	0f 85 42 f8 ff ff    	jne    4047ae <printf_core+0xee>
  404f6c:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404f73:	0f 85 35 f8 ff ff    	jne    4047ae <printf_core+0xee>
  404f79:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f7d:	44 89 c2             	mov    %r8d,%edx
  404f80:	be 20 00 00 00       	mov    $0x20,%esi
  404f85:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404f89:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f8f:	e8 8c dc ff ff       	call   402c20 <pad.part.0>
  404f94:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f98:	e9 11 f8 ff ff       	jmp    4047ae <printf_core+0xee>
  404f9d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404fa1:	45 85 c0             	test   %r8d,%r8d
  404fa4:	79 0d                	jns    404fb3 <printf_core+0x8f3>
  404fa6:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404fad:	0f 85 ed fa ff ff    	jne    404aa0 <printf_core+0x3e0>
  404fb3:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404fba:	41 89 d0             	mov    %edx,%r8d
  404fbd:	44 89 ce             	mov    %r9d,%esi
  404fc0:	44 89 e1             	mov    %r12d,%ecx
  404fc3:	ff 75 98             	push   -0x68(%rbp)
  404fc6:	ff 75 90             	push   -0x70(%rbp)
  404fc9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404fcd:	8b 55 80             	mov    -0x80(%rbp),%edx
  404fd0:	e8 6b dd ff ff       	call   402d40 <fmt_fp>
  404fd5:	5e                   	pop    %rsi
  404fd6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404fdd:	83 f8 ff             	cmp    $0xffffffff,%eax
  404fe0:	41 89 c0             	mov    %eax,%r8d
  404fe3:	5f                   	pop    %rdi
  404fe4:	0f 85 bb f7 ff ff    	jne    4047a5 <printf_core+0xe5>
  404fea:	e9 b1 fa ff ff       	jmp    404aa0 <printf_core+0x3e0>
  404fef:	90                   	nop
  404ff0:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  404ff4:	48 85 f6             	test   %rsi,%rsi
  404ff7:	0f 88 4f 08 00 00    	js     40584c <printf_core+0x118c>
  404ffd:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  405004:	0f 85 61 08 00 00    	jne    40586b <printf_core+0x11ab>
  40500a:	41 f6 c4 01          	test   $0x1,%r12b
  40500e:	0f 85 7b 08 00 00    	jne    40588f <printf_core+0x11cf>
  405014:	48 8d 3d 6c 31 00 00 	lea    0x316c(%rip),%rdi        # 408187 <_fini+0x10a3>
  40501b:	44 89 d0             	mov    %r10d,%eax
  40501e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405025:	48 85 f6             	test   %rsi,%rsi
  405028:	0f 84 55 08 00 00    	je     405883 <printf_core+0x11c3>
  40502e:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  405035:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405039:	89 c7                	mov    %eax,%edi
  40503b:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  405042:	cc cc cc 
  405045:	4d 89 c6             	mov    %r8,%r14
  405048:	90                   	nop
  405049:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405050:	00 00 00 00 
  405054:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40505b:	00 00 00 00 
  40505f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405066:	00 00 00 00 
  40506a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405071:	00 00 00 00 
  405075:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40507c:	00 00 00 00 
  405080:	48 89 f0             	mov    %rsi,%rax
  405083:	49 83 ee 01          	sub    $0x1,%r14
  405087:	48 f7 e1             	mul    %rcx
  40508a:	48 89 f0             	mov    %rsi,%rax
  40508d:	48 c1 ea 03          	shr    $0x3,%rdx
  405091:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  405095:	4d 01 d2             	add    %r10,%r10
  405098:	4c 29 d0             	sub    %r10,%rax
  40509b:	83 c0 30             	add    $0x30,%eax
  40509e:	48 83 fe 09          	cmp    $0x9,%rsi
  4050a2:	48 89 d6             	mov    %rdx,%rsi
  4050a5:	41 88 06             	mov    %al,(%r14)
  4050a8:	77 d6                	ja     405080 <printf_core+0x9c0>
  4050aa:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4050b1:	89 f8                	mov    %edi,%eax
  4050b3:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4050b6:	85 ff                	test   %edi,%edi
  4050b8:	79 0d                	jns    4050c7 <printf_core+0xa07>
  4050ba:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  4050c1:	0f 85 d9 f9 ff ff    	jne    404aa0 <printf_core+0x3e0>
  4050c7:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  4050cd:	44 89 e2             	mov    %r12d,%edx
  4050d0:	8b 75 80             	mov    -0x80(%rbp),%esi
  4050d3:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  4050d9:	85 c9                	test   %ecx,%ecx
  4050db:	44 0f 45 e2          	cmovne %edx,%r12d
  4050df:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  4050e4:	0f 94 c2             	sete   %dl
  4050e7:	85 f6                	test   %esi,%esi
  4050e9:	75 08                	jne    4050f3 <printf_core+0xa33>
  4050eb:	84 d2                	test   %dl,%dl
  4050ed:	0f 85 e4 05 00 00    	jne    4056d7 <printf_core+0x1017>
  4050f3:	4c 89 c7             	mov    %r8,%rdi
  4050f6:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  4050fa:	0f b6 d2             	movzbl %dl,%edx
  4050fd:	4c 29 f7             	sub    %r14,%rdi
  405100:	48 01 fa             	add    %rdi,%rdx
  405103:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  40510a:	48 39 ca             	cmp    %rcx,%rdx
  40510d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  405111:	48 63 ca             	movslq %edx,%rcx
  405114:	48 39 cf             	cmp    %rcx,%rdi
  405117:	0f 4e fa             	cmovle %edx,%edi
  40511a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  40511f:	29 c2                	sub    %eax,%edx
  405121:	89 7d 80             	mov    %edi,-0x80(%rbp)
  405124:	39 fa                	cmp    %edi,%edx
  405126:	0f 8c 74 f9 ff ff    	jl     404aa0 <printf_core+0x3e0>
  40512c:	8b 7d 80             	mov    -0x80(%rbp),%edi
  40512f:	01 c7                	add    %eax,%edi
  405131:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  405137:	e9 44 fd ff ff       	jmp    404e80 <printf_core+0x7c0>
  40513c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405140:	48 85 c0             	test   %rax,%rax
  405143:	0f 84 9a 02 00 00    	je     4053e3 <printf_core+0xd23>
  405149:	44 89 e7             	mov    %r12d,%edi
  40514c:	83 e7 08             	and    $0x8,%edi
  40514f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  405155:	89 d7                	mov    %edx,%edi
  405157:	83 e7 20             	and    $0x20,%edi
  40515a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  405160:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405164:	48 8d 35 75 31 00 00 	lea    0x3175(%rip),%rsi        # 4082e0 <xdigits>
  40516b:	4d 89 c6             	mov    %r8,%r14
  40516e:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405175:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40517c:	00 00 00 00 
  405180:	48 89 c1             	mov    %rax,%rcx
  405183:	49 83 ee 01          	sub    $0x1,%r14
  405187:	83 e1 0f             	and    $0xf,%ecx
  40518a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  40518e:	09 fa                	or     %edi,%edx
  405190:	48 c1 e8 04          	shr    $0x4,%rax
  405194:	41 88 16             	mov    %dl,(%r14)
  405197:	75 e7                	jne    405180 <printf_core+0xac0>
  405199:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40519f:	85 c0                	test   %eax,%eax
  4051a1:	0f 85 f9 05 00 00    	jne    4057a0 <printf_core+0x10e0>
  4051a7:	48 8d 3d d9 2f 00 00 	lea    0x2fd9(%rip),%rdi        # 408187 <_fini+0x10a3>
  4051ae:	44 89 d0             	mov    %r10d,%eax
  4051b1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4051b8:	e9 f6 fe ff ff       	jmp    4050b3 <printf_core+0x9f3>
  4051bd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4051c1:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  4051c5:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4051cc:	48 85 d2             	test   %rdx,%rdx
  4051cf:	0f 84 06 07 00 00    	je     4058db <printf_core+0x121b>
  4051d5:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  4051dc:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  4051e0:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  4051e7:	31 db                	xor    %ebx,%ebx
  4051e9:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  4051f0:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  4051f4:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  4051fb:	49 89 ce             	mov    %rcx,%r14
  4051fe:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405202:	49 89 d5             	mov    %rdx,%r13
  405205:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40520c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405213:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40521a:	eb 34                	jmp    405250 <printf_core+0xb90>
  40521c:	0f 1f 40 00          	nopl   0x0(%rax)
  405220:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  405227:	e8 24 10 00 00       	call   406250 <wctomb>
  40522c:	85 c0                	test   %eax,%eax
  40522e:	0f 88 44 f7 ff ff    	js     404978 <printf_core+0x2b8>
  405234:	4c 89 ea             	mov    %r13,%rdx
  405237:	48 98                	cltq
  405239:	48 29 da             	sub    %rbx,%rdx
  40523c:	48 39 c2             	cmp    %rax,%rdx
  40523f:	72 16                	jb     405257 <printf_core+0xb97>
  405241:	48 01 c3             	add    %rax,%rbx
  405244:	4d 63 ec             	movslq %r12d,%r13
  405247:	49 83 c6 04          	add    $0x4,%r14
  40524b:	4c 39 eb             	cmp    %r13,%rbx
  40524e:	73 07                	jae    405257 <printf_core+0xb97>
  405250:	41 8b 36             	mov    (%r14),%esi
  405253:	85 f6                	test   %esi,%esi
  405255:	75 c9                	jne    405220 <printf_core+0xb60>
  405257:	49 89 de             	mov    %rbx,%r14
  40525a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405261:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  405268:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  40526f:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  405276:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  40527d:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405281:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405288:	0f 87 12 f8 ff ff    	ja     404aa0 <printf_core+0x3e0>
  40528e:	45 39 f1             	cmp    %r14d,%r9d
  405291:	44 89 f0             	mov    %r14d,%eax
  405294:	0f 9e c2             	setle  %dl
  405297:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40529e:	0f 95 c1             	setne  %cl
  4052a1:	08 d1                	or     %dl,%cl
  4052a3:	0f 84 5c 05 00 00    	je     405805 <printf_core+0x1145>
  4052a9:	4d 85 f6             	test   %r14,%r14
  4052ac:	0f 84 96 06 00 00    	je     405948 <printf_core+0x1288>
  4052b2:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  4052b6:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  4052bd:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  4052c4:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  4052cb:	45 31 e4             	xor    %r12d,%r12d
  4052ce:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  4052d5:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  4052d9:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  4052dd:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4052e4:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  4052eb:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  4052f1:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  4052f7:	eb 10                	jmp    405309 <printf_core+0xc49>
  4052f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405300:	4d 39 f4             	cmp    %r14,%r12
  405303:	0f 83 46 03 00 00    	jae    40564f <printf_core+0xf8f>
  405309:	8b 33                	mov    (%rbx),%esi
  40530b:	85 f6                	test   %esi,%esi
  40530d:	0f 84 3c 03 00 00    	je     40564f <printf_core+0xf8f>
  405313:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405317:	e8 34 0f 00 00       	call   406250 <wctomb>
  40531c:	48 63 f0             	movslq %eax,%rsi
  40531f:	49 01 f4             	add    %rsi,%r12
  405322:	4d 39 e6             	cmp    %r12,%r14
  405325:	0f 82 24 03 00 00    	jb     40564f <printf_core+0xf8f>
  40532b:	48 83 c3 04          	add    $0x4,%rbx
  40532f:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  405334:	75 ca                	jne    405300 <printf_core+0xc40>
  405336:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  40533a:	4c 89 ea             	mov    %r13,%rdx
  40533d:	e8 8e 12 00 00       	call   4065d0 <__fwritex>
  405342:	eb bc                	jmp    405300 <printf_core+0xc40>
  405344:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405348:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40534c:	4d 89 c6             	mov    %r8,%r14
  40534f:	48 85 c0             	test   %rax,%rax
  405352:	74 21                	je     405375 <printf_core+0xcb5>
  405354:	90                   	nop
  405355:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40535c:	00 00 00 00 
  405360:	89 c2                	mov    %eax,%edx
  405362:	49 83 ee 01          	sub    $0x1,%r14
  405366:	83 e2 07             	and    $0x7,%edx
  405369:	83 c2 30             	add    $0x30,%edx
  40536c:	48 c1 e8 03          	shr    $0x3,%rax
  405370:	41 88 16             	mov    %dl,(%r14)
  405373:	75 eb                	jne    405360 <printf_core+0xca0>
  405375:	41 f6 c4 08          	test   $0x8,%r12b
  405379:	0f 84 28 fe ff ff    	je     4051a7 <printf_core+0xae7>
  40537f:	4c 89 c0             	mov    %r8,%rax
  405382:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405386:	4c 29 f0             	sub    %r14,%rax
  405389:	48 39 d0             	cmp    %rdx,%rax
  40538c:	0f 8c 15 fe ff ff    	jl     4051a7 <printf_core+0xae7>
  405392:	83 c0 01             	add    $0x1,%eax
  405395:	48 8d 3d eb 2d 00 00 	lea    0x2deb(%rip),%rdi        # 408187 <_fini+0x10a3>
  40539c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40539f:	44 89 d0             	mov    %r10d,%eax
  4053a2:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4053a9:	e9 05 fd ff ff       	jmp    4050b3 <printf_core+0x9f3>
  4053ae:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4053b1:	b8 10 00 00 00       	mov    $0x10,%eax
  4053b6:	ba 78 00 00 00       	mov    $0x78,%edx
  4053bb:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  4053c2:	00 00 00 
  4053c5:	39 c7                	cmp    %eax,%edi
  4053c7:	0f 43 c7             	cmovae %edi,%eax
  4053ca:	41 83 cc 08          	or     $0x8,%r12d
  4053ce:	bf 20 00 00 00       	mov    $0x20,%edi
  4053d3:	89 45 80             	mov    %eax,-0x80(%rbp)
  4053d6:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053da:	48 85 c0             	test   %rax,%rax
  4053dd:	0f 85 77 fd ff ff    	jne    40515a <printf_core+0xa9a>
  4053e3:	48 8d 3d 9d 2d 00 00 	lea    0x2d9d(%rip),%rdi        # 408187 <_fini+0x10a3>
  4053ea:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4053ee:	44 89 d0             	mov    %r10d,%eax
  4053f1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4053f8:	4d 89 c6             	mov    %r8,%r14
  4053fb:	e9 b3 fc ff ff       	jmp    4050b3 <printf_core+0x9f3>
  405400:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405404:	48 8d 05 86 2d 00 00 	lea    0x2d86(%rip),%rax        # 408191 <_fini+0x10ad>
  40540b:	4d 85 f6             	test   %r14,%r14
  40540e:	4c 0f 44 f0          	cmove  %rax,%r14
  405412:	8b 45 80             	mov    -0x80(%rbp),%eax
  405415:	85 c0                	test   %eax,%eax
  405417:	0f 88 36 03 00 00    	js     405753 <printf_core+0x1093>
  40541d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  405421:	4c 89 f7             	mov    %r14,%rdi
  405424:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40542b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405432:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405439:	e8 82 07 00 00       	call   405bc0 <strnlen>
  40543e:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405445:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40544c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405453:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405457:	4c 29 f2             	sub    %r14,%rdx
  40545a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40545d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405464:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  40546b:	48 89 d7             	mov    %rdx,%rdi
  40546e:	48 63 d0             	movslq %eax,%rdx
  405471:	48 39 d7             	cmp    %rdx,%rdi
  405474:	0f 8e b9 01 00 00    	jle    405633 <printf_core+0xf73>
  40547a:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405481:	e9 d3 f9 ff ff       	jmp    404e59 <printf_core+0x799>
  405486:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40548a:	48 85 f6             	test   %rsi,%rsi
  40548d:	0f 85 46 03 00 00    	jne    4057d9 <printf_core+0x1119>
  405493:	48 8d 3d ed 2c 00 00 	lea    0x2ced(%rip),%rdi        # 408187 <_fini+0x10a3>
  40549a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40549e:	44 89 d0             	mov    %r10d,%eax
  4054a1:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4054a8:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4054af:	00 00 00 
  4054b2:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  4054b6:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4054bd:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  4054c4:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  4054cb:	01 00 00 00 
  4054cf:	e9 ac f9 ff ff       	jmp    404e80 <printf_core+0x7c0>
  4054d4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4054db:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4054e2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4054e9:	e8 62 0b 00 00       	call   406050 <__errno_location>
  4054ee:	8b 38                	mov    (%rax),%edi
  4054f0:	e8 ab 0b 00 00       	call   4060a0 <strerror>
  4054f5:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4054fc:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405503:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40550a:	49 89 c6             	mov    %rax,%r14
  40550d:	e9 00 ff ff ff       	jmp    405412 <printf_core+0xd52>
  405512:	83 f8 07             	cmp    $0x7,%eax
  405515:	0f 87 93 f2 ff ff    	ja     4047ae <printf_core+0xee>
  40551b:	48 8d 15 9e 2d 00 00 	lea    0x2d9e(%rip),%rdx        # 4082c0 <_fini+0x11dc>
  405522:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  405526:	48 01 d0             	add    %rdx,%rax
  405529:	3e ff e0             	notrack jmp *%rax
  40552c:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  405530:	49 63 c5             	movslq %r13d,%rax
  405533:	48 89 02             	mov    %rax,(%rdx)
  405536:	e9 73 f2 ff ff       	jmp    4047ae <printf_core+0xee>
  40553b:	48 8d 3d 45 2c 00 00 	lea    0x2c45(%rip),%rdi        # 408187 <_fini+0x10a3>
  405542:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405546:	44 89 d0             	mov    %r10d,%eax
  405549:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405550:	e9 d0 fa ff ff       	jmp    405025 <printf_core+0x965>
  405555:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405559:	e9 35 ff ff ff       	jmp    405493 <printf_core+0xdd3>
  40555e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405562:	44 89 28             	mov    %r13d,(%rax)
  405565:	e9 44 f2 ff ff       	jmp    4047ae <printf_core+0xee>
  40556a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40556e:	66 44 89 28          	mov    %r13w,(%rax)
  405572:	e9 37 f2 ff ff       	jmp    4047ae <printf_core+0xee>
  405577:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40557b:	44 88 28             	mov    %r13b,(%rax)
  40557e:	e9 2b f2 ff ff       	jmp    4047ae <printf_core+0xee>
  405583:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405588:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40558c:	f6 07 20             	testb  $0x20,(%rdi)
  40558f:	74 6b                	je     4055fc <printf_core+0xf3c>
  405591:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405597:	44 89 e0             	mov    %r12d,%eax
  40559a:	41 39 c9             	cmp    %ecx,%r9d
  40559d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  4055a4:	35 00 00 01 00       	xor    $0x10000,%eax
  4055a9:	a9 00 20 01 00       	test   $0x12000,%eax
  4055ae:	75 28                	jne    4055d8 <printf_core+0xf18>
  4055b0:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  4055b7:	75 1f                	jne    4055d8 <printf_core+0xf18>
  4055b9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4055bd:	44 89 c2             	mov    %r8d,%edx
  4055c0:	be 30 00 00 00       	mov    $0x30,%esi
  4055c5:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  4055cc:	e8 4f d6 ff ff       	call   402c20 <pad.part.0>
  4055d1:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  4055d8:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4055df:	89 c1                	mov    %eax,%ecx
  4055e1:	3b 45 80             	cmp    -0x80(%rbp),%eax
  4055e4:	0f 8d 4a f9 ff ff    	jge    404f34 <printf_core+0x874>
  4055ea:	e9 26 f9 ff ff       	jmp    404f15 <printf_core+0x855>
  4055ef:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4055f3:	f6 07 20             	testb  $0x20,(%rdi)
  4055f6:	0f 85 f9 f8 ff ff    	jne    404ef5 <printf_core+0x835>
  4055fc:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405600:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405607:	48 63 f0             	movslq %eax,%rsi
  40560a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405611:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405618:	e8 b3 0f 00 00       	call   4065d0 <__fwritex>
  40561d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  405624:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  40562b:	e9 61 ff ff ff       	jmp    405591 <printf_core+0xed1>
  405630:	8b 45 80             	mov    -0x80(%rbp),%eax
  405633:	48 8d 3d 4d 2b 00 00 	lea    0x2b4d(%rip),%rdi        # 408187 <_fini+0x10a3>
  40563a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405640:	44 89 d0             	mov    %r10d,%eax
  405643:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40564a:	e9 31 f8 ff ff       	jmp    404e80 <printf_core+0x7c0>
  40564f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405656:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40565d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  405664:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  40566b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  405671:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  405678:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  40567f:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405686:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40568d:	75 39                	jne    4056c8 <printf_core+0x1008>
  40568f:	84 d2                	test   %dl,%dl
  405691:	75 35                	jne    4056c8 <printf_core+0x1008>
  405693:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405697:	89 c1                	mov    %eax,%ecx
  405699:	44 89 ca             	mov    %r9d,%edx
  40569c:	be 20 00 00 00       	mov    $0x20,%esi
  4056a1:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4056a8:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4056ae:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4056b2:	e8 69 d5 ff ff       	call   402c20 <pad.part.0>
  4056b7:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4056be:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4056c4:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4056c8:	41 39 c1             	cmp    %eax,%r9d
  4056cb:	41 0f 4d c1          	cmovge %r9d,%eax
  4056cf:	41 89 c0             	mov    %eax,%r8d
  4056d2:	e9 ce f0 ff ff       	jmp    4047a5 <printf_core+0xe5>
  4056d7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4056dd:	4d 89 c6             	mov    %r8,%r14
  4056e0:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4056e4:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  4056eb:	00 00 00 00 
  4056ef:	e9 8c f7 ff ff       	jmp    404e80 <printf_core+0x7c0>
  4056f4:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4056fb:	00 00 00 
  4056fe:	48 83 c3 01          	add    $0x1,%rbx
  405702:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405709:	e9 f1 f1 ff ff       	jmp    4048ff <printf_core+0x23f>
  40570e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405715:	45 89 d1             	mov    %r10d,%r9d
  405718:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40571f:	00 00 00 
  405722:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  405729:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  40572d:	e9 c9 f2 ff ff       	jmp    4049fb <printf_core+0x33b>
  405732:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405739:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40573d:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405744:	00 00 00 
  405747:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40574e:	e9 53 f6 ff ff       	jmp    404da6 <printf_core+0x6e6>
  405753:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405758:	4c 89 f7             	mov    %r14,%rdi
  40575b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40575f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  405766:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  40576d:	e8 4e 04 00 00       	call   405bc0 <strnlen>
  405772:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  405776:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40577d:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405781:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405788:	80 3a 00             	cmpb   $0x0,(%rdx)
  40578b:	0f 84 c6 fc ff ff    	je     405457 <printf_core+0xd97>
  405791:	e9 0a f3 ff ff       	jmp    404aa0 <printf_core+0x3e0>
  405796:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40579d:	00 00 00 
  4057a0:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  4057a6:	48 8d 15 da 29 00 00 	lea    0x29da(%rip),%rdx        # 408187 <_fini+0x10a3>
  4057ad:	c1 f8 04             	sar    $0x4,%eax
  4057b0:	48 98                	cltq
  4057b2:	48 01 d0             	add    %rdx,%rax
  4057b5:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4057bc:	b8 02 00 00 00       	mov    $0x2,%eax
  4057c1:	e9 ed f8 ff ff       	jmp    4050b3 <printf_core+0x9f3>
  4057c6:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4057ca:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4057d1:	00 00 00 
  4057d4:	e9 26 f1 ff ff       	jmp    4048ff <printf_core+0x23f>
  4057d9:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  4057dd:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  4057e0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4057e7:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  4057ee:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4057f2:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4057f9:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405800:	e9 d0 f9 ff ff       	jmp    4051d5 <printf_core+0xb15>
  405805:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405809:	44 89 ca             	mov    %r9d,%edx
  40580c:	44 89 f1             	mov    %r14d,%ecx
  40580f:	be 20 00 00 00       	mov    $0x20,%esi
  405814:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40581b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40581f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  405826:	e8 f5 d3 ff ff       	call   402c20 <pad.part.0>
  40582b:	4d 85 f6             	test   %r14,%r14
  40582e:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405832:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405838:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  40583f:	0f 84 83 fe ff ff    	je     4056c8 <printf_core+0x1008>
  405845:	31 d2                	xor    %edx,%edx
  405847:	e9 66 fa ff ff       	jmp    4052b2 <printf_core+0xbf2>
  40584c:	48 f7 de             	neg    %rsi
  40584f:	48 8d 3d 31 29 00 00 	lea    0x2931(%rip),%rdi        # 408187 <_fini+0x10a3>
  405856:	b8 01 00 00 00       	mov    $0x1,%eax
  40585b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40585f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405866:	e9 c3 f7 ff ff       	jmp    40502e <printf_core+0x96e>
  40586b:	48 8d 3d 16 29 00 00 	lea    0x2916(%rip),%rdi        # 408188 <_fini+0x10a4>
  405872:	b8 01 00 00 00       	mov    $0x1,%eax
  405877:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40587e:	e9 a2 f7 ff ff       	jmp    405025 <printf_core+0x965>
  405883:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405887:	4d 89 c6             	mov    %r8,%r14
  40588a:	e9 24 f8 ff ff       	jmp    4050b3 <printf_core+0x9f3>
  40588f:	48 8d 3d f3 28 00 00 	lea    0x28f3(%rip),%rdi        # 408189 <_fini+0x10a5>
  405896:	b8 01 00 00 00       	mov    $0x1,%eax
  40589b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4058a2:	e9 7e f7 ff ff       	jmp    405025 <printf_core+0x965>
  4058a7:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  4058ae:	eb 1e                	jmp    4058ce <printf_core+0x120e>
  4058b0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4058b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4058bc:	00 00 00 00 
  4058c0:	49 83 c0 01          	add    $0x1,%r8
  4058c4:	49 83 f8 0a          	cmp    $0xa,%r8
  4058c8:	0f 84 5c f5 ff ff    	je     404e2a <printf_core+0x76a>
  4058ce:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  4058d2:	85 d2                	test   %edx,%edx
  4058d4:	74 ea                	je     4058c0 <printf_core+0x1200>
  4058d6:	e9 92 f0 ff ff       	jmp    40496d <printf_core+0x2ad>
  4058db:	45 85 c9             	test   %r9d,%r9d
  4058de:	0f 94 c0             	sete   %al
  4058e1:	89 c2                	mov    %eax,%edx
  4058e3:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4058ea:	75 5c                	jne    405948 <printf_core+0x1288>
  4058ec:	84 c0                	test   %al,%al
  4058ee:	75 58                	jne    405948 <printf_core+0x1288>
  4058f0:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4058f4:	44 89 ca             	mov    %r9d,%edx
  4058f7:	31 c9                	xor    %ecx,%ecx
  4058f9:	be 20 00 00 00       	mov    $0x20,%esi
  4058fe:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405905:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405909:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405910:	e8 0b d3 ff ff       	call   402c20 <pad.part.0>
  405915:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40591b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  40591f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405926:	e9 9d fd ff ff       	jmp    4056c8 <printf_core+0x1008>
  40592b:	45 31 db             	xor    %r11d,%r11d
  40592e:	e9 4b f0 ff ff       	jmp    40497e <printf_core+0x2be>
  405933:	e8 28 ce ff ff       	call   402760 <__stack_chk_fail>
  405938:	48 89 da             	mov    %rbx,%rdx
  40593b:	e9 7b f0 ff ff       	jmp    4049bb <printf_core+0x2fb>
  405940:	48 89 d8             	mov    %rbx,%rax
  405943:	e9 31 f3 ff ff       	jmp    404c79 <printf_core+0x5b9>
  405948:	44 89 d0             	mov    %r10d,%eax
  40594b:	e9 2f fd ff ff       	jmp    40567f <printf_core+0xfbf>

0000000000405950 <vfprintf>:
  405950:	f3 0f 1e fa          	endbr64
  405954:	55                   	push   %rbp
  405955:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405959:	48 89 e5             	mov    %rsp,%rbp
  40595c:	41 57                	push   %r15
  40595e:	41 56                	push   %r14
  405960:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  405967:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  40596e:	41 55                	push   %r13
  405970:	4c 89 f1             	mov    %r14,%rcx
  405973:	49 89 fd             	mov    %rdi,%r13
  405976:	31 ff                	xor    %edi,%edi
  405978:	41 54                	push   %r12
  40597a:	53                   	push   %rbx
  40597b:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405982:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405989:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405990:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405997:	00 00 
  405999:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40599d:	31 c0                	xor    %eax,%eax
  40599f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  4059a6:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4059ad:	00 00 00 00 
  4059b1:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  4059b8:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4059bf:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  4059c3:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  4059ca:	48 8b 42 10          	mov    0x10(%rdx),%rax
  4059ce:	48 89 da             	mov    %rbx,%rdx
  4059d1:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  4059d8:	e8 e3 ec ff ff       	call   4046c0 <printf_core>
  4059dd:	85 c0                	test   %eax,%eax
  4059df:	0f 88 68 01 00 00    	js     405b4d <vfprintf+0x1fd>
  4059e5:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  4059ec:	31 db                	xor    %ebx,%ebx
  4059ee:	85 c0                	test   %eax,%eax
  4059f0:	78 0a                	js     4059fc <vfprintf+0xac>
  4059f2:	4c 89 ef             	mov    %r13,%rdi
  4059f5:	e8 86 08 00 00       	call   406280 <__lockfile>
  4059fa:	89 c3                	mov    %eax,%ebx
  4059fc:	41 8b 45 00          	mov    0x0(%r13),%eax
  405a00:	89 c1                	mov    %eax,%ecx
  405a02:	83 e0 df             	and    $0xffffffdf,%eax
  405a05:	83 e1 20             	and    $0x20,%ecx
  405a08:	41 89 45 00          	mov    %eax,0x0(%r13)
  405a0c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405a12:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405a17:	74 77                	je     405a90 <vfprintf+0x140>
  405a19:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  405a1e:	0f 84 39 01 00 00    	je     405b5d <vfprintf+0x20d>
  405a24:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405a2b:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405a32:	4c 89 f1             	mov    %r14,%rcx
  405a35:	4c 89 ef             	mov    %r13,%rdi
  405a38:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405a3f:	e8 7c ec ff ff       	call   4046c0 <printf_core>
  405a44:	41 89 c4             	mov    %eax,%r12d
  405a47:	41 8b 45 00          	mov    0x0(%r13),%eax
  405a4b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405a50:	a8 20                	test   $0x20,%al
  405a52:	44 0f 45 e2          	cmovne %edx,%r12d
  405a56:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  405a5c:	41 89 45 00          	mov    %eax,0x0(%r13)
  405a60:	85 db                	test   %ebx,%ebx
  405a62:	0f 85 d8 00 00 00    	jne    405b40 <vfprintf+0x1f0>
  405a68:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405a6c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405a73:	00 00 
  405a75:	0f 85 dd 00 00 00    	jne    405b58 <vfprintf+0x208>
  405a7b:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405a82:	44 89 e0             	mov    %r12d,%eax
  405a85:	5b                   	pop    %rbx
  405a86:	41 5c                	pop    %r12
  405a88:	41 5d                	pop    %r13
  405a8a:	41 5e                	pop    %r14
  405a8c:	41 5f                	pop    %r15
  405a8e:	5d                   	pop    %rbp
  405a8f:	c3                   	ret
  405a90:	49 8b 45 58          	mov    0x58(%r13),%rax
  405a94:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405a9b:	00 
  405a9c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405aa0:	4c 89 ef             	mov    %r13,%rdi
  405aa3:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405aaa:	00 
  405aab:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405ab1:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405ab8:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405abf:	49 89 45 58          	mov    %rax,0x58(%r13)
  405ac3:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405ac8:	e8 43 0a 00 00       	call   406510 <__towrite>
  405acd:	85 c0                	test   %eax,%eax
  405acf:	75 23                	jne    405af4 <vfprintf+0x1a4>
  405ad1:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405ad8:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405adf:	4c 89 f1             	mov    %r14,%rcx
  405ae2:	4c 89 ef             	mov    %r13,%rdi
  405ae5:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405aec:	e8 cf eb ff ff       	call   4046c0 <printf_core>
  405af1:	41 89 c4             	mov    %eax,%r12d
  405af4:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405afb:	4d 85 f6             	test   %r14,%r14
  405afe:	0f 84 43 ff ff ff    	je     405a47 <vfprintf+0xf7>
  405b04:	31 d2                	xor    %edx,%edx
  405b06:	31 f6                	xor    %esi,%esi
  405b08:	4c 89 ef             	mov    %r13,%rdi
  405b0b:	41 ff 55 48          	call   *0x48(%r13)
  405b0f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405b14:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405b18:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405b1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405b21:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405b28:	00 
  405b29:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405b30:	00 
  405b31:	44 0f 44 e0          	cmove  %eax,%r12d
  405b35:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405b3a:	e9 08 ff ff ff       	jmp    405a47 <vfprintf+0xf7>
  405b3f:	90                   	nop
  405b40:	4c 89 ef             	mov    %r13,%rdi
  405b43:	e8 f8 07 00 00       	call   406340 <__unlockfile>
  405b48:	e9 1b ff ff ff       	jmp    405a68 <vfprintf+0x118>
  405b4d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b53:	e9 10 ff ff ff       	jmp    405a68 <vfprintf+0x118>
  405b58:	e8 03 cc ff ff       	call   402760 <__stack_chk_fail>
  405b5d:	4c 89 ef             	mov    %r13,%rdi
  405b60:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b66:	e8 a5 09 00 00       	call   406510 <__towrite>
  405b6b:	85 c0                	test   %eax,%eax
  405b6d:	0f 85 d4 fe ff ff    	jne    405a47 <vfprintf+0xf7>
  405b73:	e9 ac fe ff ff       	jmp    405a24 <vfprintf+0xd4>
  405b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405b7f:	00 

0000000000405b80 <vsprintf>:
  405b80:	f3 0f 1e fa          	endbr64
  405b84:	48 89 d1             	mov    %rdx,%rcx
  405b87:	48 89 f2             	mov    %rsi,%rdx
  405b8a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405b8f:	e9 ac 0c 00 00       	jmp    406840 <vsnprintf>
  405b94:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405b9b:	00 00 00 
  405b9e:	66 90                	xchg   %ax,%ax

0000000000405ba0 <strcpy>:
  405ba0:	f3 0f 1e fa          	endbr64
  405ba4:	55                   	push   %rbp
  405ba5:	48 89 e5             	mov    %rsp,%rbp
  405ba8:	53                   	push   %rbx
  405ba9:	48 89 fb             	mov    %rdi,%rbx
  405bac:	48 83 ec 08          	sub    $0x8,%rsp
  405bb0:	e8 8b 0e 00 00       	call   406a40 <__stpcpy>
  405bb5:	48 89 d8             	mov    %rbx,%rax
  405bb8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405bbc:	c9                   	leave
  405bbd:	c3                   	ret
  405bbe:	66 90                	xchg   %ax,%ax

0000000000405bc0 <strnlen>:
  405bc0:	f3 0f 1e fa          	endbr64
  405bc4:	55                   	push   %rbp
  405bc5:	48 89 f2             	mov    %rsi,%rdx
  405bc8:	48 89 e5             	mov    %rsp,%rbp
  405bcb:	41 54                	push   %r12
  405bcd:	49 89 fc             	mov    %rdi,%r12
  405bd0:	53                   	push   %rbx
  405bd1:	48 89 f3             	mov    %rsi,%rbx
  405bd4:	31 f6                	xor    %esi,%esi
  405bd6:	e8 25 0d 00 00       	call   406900 <memchr>
  405bdb:	48 89 c2             	mov    %rax,%rdx
  405bde:	4c 29 e0             	sub    %r12,%rax
  405be1:	48 85 d2             	test   %rdx,%rdx
  405be4:	48 0f 44 c3          	cmove  %rbx,%rax
  405be8:	5b                   	pop    %rbx
  405be9:	41 5c                	pop    %r12
  405beb:	5d                   	pop    %rbp
  405bec:	c3                   	ret

0000000000405bed <memcpy>:
  405bed:	48 89 f8             	mov    %rdi,%rax
  405bf0:	48 83 fa 08          	cmp    $0x8,%rdx
  405bf4:	72 14                	jb     405c0a <memcpy+0x1d>
  405bf6:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405bfc:	74 0c                	je     405c0a <memcpy+0x1d>
  405bfe:	a4                   	movsb  (%rsi),(%rdi)
  405bff:	48 ff ca             	dec    %rdx
  405c02:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405c08:	75 f4                	jne    405bfe <memcpy+0x11>
  405c0a:	48 89 d1             	mov    %rdx,%rcx
  405c0d:	48 c1 e9 03          	shr    $0x3,%rcx
  405c11:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405c14:	83 e2 07             	and    $0x7,%edx
  405c17:	74 05                	je     405c1e <memcpy+0x31>
  405c19:	a4                   	movsb  (%rsi),(%rdi)
  405c1a:	ff ca                	dec    %edx
  405c1c:	75 fb                	jne    405c19 <memcpy+0x2c>
  405c1e:	c3                   	ret

0000000000405c1f <memset>:
  405c1f:	48 0f b6 c6          	movzbq %sil,%rax
  405c23:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405c2a:	01 01 01 
  405c2d:	49 0f af c0          	imul   %r8,%rax
  405c31:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405c35:	77 78                	ja     405caf <memset+0x90>
  405c37:	85 d2                	test   %edx,%edx
  405c39:	74 70                	je     405cab <memset+0x8c>
  405c3b:	40 88 37             	mov    %sil,(%rdi)
  405c3e:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405c43:	83 fa 02             	cmp    $0x2,%edx
  405c46:	76 63                	jbe    405cab <memset+0x8c>
  405c48:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405c4c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405c51:	83 fa 06             	cmp    $0x6,%edx
  405c54:	76 55                	jbe    405cab <memset+0x8c>
  405c56:	89 47 03             	mov    %eax,0x3(%rdi)
  405c59:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405c5d:	83 fa 0e             	cmp    $0xe,%edx
  405c60:	76 49                	jbe    405cab <memset+0x8c>
  405c62:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405c66:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405c6b:	83 fa 1e             	cmp    $0x1e,%edx
  405c6e:	76 3b                	jbe    405cab <memset+0x8c>
  405c70:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405c74:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405c78:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405c7d:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405c82:	83 fa 3e             	cmp    $0x3e,%edx
  405c85:	76 24                	jbe    405cab <memset+0x8c>
  405c87:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405c8b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405c8f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405c93:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405c97:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405c9c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405ca1:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405ca6:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405cab:	48 89 f8             	mov    %rdi,%rax
  405cae:	c3                   	ret
  405caf:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405cb5:	49 89 f8             	mov    %rdi,%r8
  405cb8:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405cbd:	48 89 d1             	mov    %rdx,%rcx
  405cc0:	75 0b                	jne    405ccd <memset+0xae>
  405cc2:	48 c1 e9 03          	shr    $0x3,%rcx
  405cc6:	f3 48 ab             	rep stos %rax,(%rdi)
  405cc9:	4c 89 c0             	mov    %r8,%rax
  405ccc:	c3                   	ret
  405ccd:	31 d2                	xor    %edx,%edx
  405ccf:	29 fa                	sub    %edi,%edx
  405cd1:	83 e2 0f             	and    $0xf,%edx
  405cd4:	48 89 07             	mov    %rax,(%rdi)
  405cd7:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405cdb:	48 29 d1             	sub    %rdx,%rcx
  405cde:	48 01 d7             	add    %rdx,%rdi
  405ce1:	eb df                	jmp    405cc2 <memset+0xa3>
  405ce3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405cea:	00 00 00 
  405ced:	0f 1f 00             	nopl   (%rax)

0000000000405cf0 <__init_tp>:
  405cf0:	f3 0f 1e fa          	endbr64
  405cf4:	55                   	push   %rbp
  405cf5:	48 89 e5             	mov    %rsp,%rbp
  405cf8:	53                   	push   %rbx
  405cf9:	48 89 fb             	mov    %rdi,%rbx
  405cfc:	48 83 ec 08          	sub    $0x8,%rsp
  405d00:	48 89 3f             	mov    %rdi,(%rdi)
  405d03:	e8 c5 0e 00 00       	call   406bcd <__set_thread_area>
  405d08:	85 c0                	test   %eax,%eax
  405d0a:	78 65                	js     405d71 <__init_tp+0x81>
  405d0c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405d11:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405d15:	74 51                	je     405d68 <__init_tp+0x78>
  405d17:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405d1e:	b8 da 00 00 00       	mov    $0xda,%eax
  405d23:	48 8d 3d 66 5a 00 00 	lea    0x5a66(%rip),%rdi        # 40b790 <__thread_list_lock>
  405d2a:	0f 05                	syscall
  405d2c:	89 43 30             	mov    %eax,0x30(%rbx)
  405d2f:	48 8d 05 62 54 00 00 	lea    0x5462(%rip),%rax        # 40b198 <__libc+0x38>
  405d36:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405d3d:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405d44:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405d4b:	48 8b 05 de 53 00 00 	mov    0x53de(%rip),%rax        # 40b130 <__sysinfo>
  405d52:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405d56:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405d5a:	31 c0                	xor    %eax,%eax
  405d5c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405d60:	c9                   	leave
  405d61:	c3                   	ret
  405d62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405d68:	c6 05 f1 53 00 00 01 	movb   $0x1,0x53f1(%rip)        # 40b160 <__libc>
  405d6f:	eb a6                	jmp    405d17 <__init_tp+0x27>
  405d71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405d76:	eb e4                	jmp    405d5c <__init_tp+0x6c>
  405d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405d7f:	00 

0000000000405d80 <__copy_tls>:
  405d80:	f3 0f 1e fa          	endbr64
  405d84:	55                   	push   %rbp
  405d85:	48 8b 05 ec 53 00 00 	mov    0x53ec(%rip),%rax        # 40b178 <__libc+0x18>
  405d8c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405d93:	ff 
  405d94:	48 89 e5             	mov    %rsp,%rbp
  405d97:	41 56                	push   %r14
  405d99:	49 89 fe             	mov    %rdi,%r14
  405d9c:	41 55                	push   %r13
  405d9e:	4c 8b 2d db 53 00 00 	mov    0x53db(%rip),%r13        # 40b180 <__libc+0x20>
  405da5:	41 54                	push   %r12
  405da7:	53                   	push   %rbx
  405da8:	48 8b 1d c1 53 00 00 	mov    0x53c1(%rip),%rbx        # 40b170 <__libc+0x10>
  405daf:	49 f7 dd             	neg    %r13
  405db2:	49 21 c5             	and    %rax,%r13
  405db5:	48 85 db             	test   %rbx,%rbx
  405db8:	74 32                	je     405dec <__copy_tls+0x6c>
  405dba:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405dbe:	66 90                	xchg   %ax,%ax
  405dc0:	4c 89 e8             	mov    %r13,%rax
  405dc3:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405dc7:	4c 89 ef             	mov    %r13,%rdi
  405dca:	49 83 c4 08          	add    $0x8,%r12
  405dce:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405dd3:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405dd7:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405ddb:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405ddf:	e8 09 fe ff ff       	call   405bed <memcpy>
  405de4:	48 8b 1b             	mov    (%rbx),%rbx
  405de7:	48 85 db             	test   %rbx,%rbx
  405dea:	75 d4                	jne    405dc0 <__copy_tls+0x40>
  405dec:	48 8b 05 95 53 00 00 	mov    0x5395(%rip),%rax        # 40b188 <__libc+0x28>
  405df3:	49 89 06             	mov    %rax,(%r14)
  405df6:	4c 89 e8             	mov    %r13,%rax
  405df9:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405dfd:	5b                   	pop    %rbx
  405dfe:	41 5c                	pop    %r12
  405e00:	41 5d                	pop    %r13
  405e02:	41 5e                	pop    %r14
  405e04:	5d                   	pop    %rbp
  405e05:	c3                   	ret
  405e06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e0d:	00 00 00 

0000000000405e10 <__init_tls>:
  405e10:	f3 0f 1e fa          	endbr64
  405e14:	55                   	push   %rbp
  405e15:	48 89 e5             	mov    %rsp,%rbp
  405e18:	53                   	push   %rbx
  405e19:	48 83 ec 08          	sub    $0x8,%rsp
  405e1d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405e21:	48 85 c9             	test   %rcx,%rcx
  405e24:	0f 84 fe 01 00 00    	je     406028 <__init_tls+0x218>
  405e2a:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405e2e:	31 f6                	xor    %esi,%esi
  405e30:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405e34:	45 31 c0             	xor    %r8d,%r8d
  405e37:	4c 89 d0             	mov    %r10,%rax
  405e3a:	eb 29                	jmp    405e65 <__init_tls+0x55>
  405e3c:	0f 1f 40 00          	nopl   0x0(%rax)
  405e40:	83 fa 02             	cmp    $0x2,%edx
  405e43:	0f 85 77 01 00 00    	jne    405fc0 <__init_tls+0x1b0>
  405e49:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405e50:	48 85 d2             	test   %rdx,%rdx
  405e53:	74 07                	je     405e5c <__init_tls+0x4c>
  405e55:	48 89 d6             	mov    %rdx,%rsi
  405e58:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405e5c:	48 01 f8             	add    %rdi,%rax
  405e5f:	48 83 e9 01          	sub    $0x1,%rcx
  405e63:	74 17                	je     405e7c <__init_tls+0x6c>
  405e65:	8b 10                	mov    (%rax),%edx
  405e67:	83 fa 06             	cmp    $0x6,%edx
  405e6a:	75 d4                	jne    405e40 <__init_tls+0x30>
  405e6c:	4c 89 d6             	mov    %r10,%rsi
  405e6f:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405e73:	48 01 f8             	add    %rdi,%rax
  405e76:	48 83 e9 01          	sub    $0x1,%rcx
  405e7a:	75 e9                	jne    405e65 <__init_tls+0x55>
  405e7c:	4d 85 c0             	test   %r8,%r8
  405e7f:	0f 84 a3 01 00 00    	je     406028 <__init_tls+0x218>
  405e85:	49 8b 40 20          	mov    0x20(%r8),%rax
  405e89:	49 03 70 10          	add    0x10(%r8),%rsi
  405e8d:	48 8d 1d 6c 57 00 00 	lea    0x576c(%rip),%rbx        # 40b600 <main_tls>
  405e94:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405e98:	48 89 35 69 57 00 00 	mov    %rsi,0x5769(%rip)        # 40b608 <main_tls+0x8>
  405e9f:	48 89 05 6a 57 00 00 	mov    %rax,0x576a(%rip)        # 40b610 <main_tls+0x10>
  405ea6:	49 8b 40 30          	mov    0x30(%r8),%rax
  405eaa:	48 c7 05 d3 52 00 00 	movq   $0x1,0x52d3(%rip)        # 40b188 <__libc+0x28>
  405eb1:	01 00 00 00 
  405eb5:	48 89 05 64 57 00 00 	mov    %rax,0x5764(%rip)        # 40b620 <main_tls+0x20>
  405ebc:	48 89 1d ad 52 00 00 	mov    %rbx,0x52ad(%rip)        # 40b170 <__libc+0x10>
  405ec3:	48 01 d6             	add    %rdx,%rsi
  405ec6:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405eca:	48 f7 de             	neg    %rsi
  405ecd:	48 21 ce             	and    %rcx,%rsi
  405ed0:	48 01 d6             	add    %rdx,%rsi
  405ed3:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405eda:	48 89 35 37 57 00 00 	mov    %rsi,0x5737(%rip)        # 40b618 <main_tls+0x18>
  405ee1:	48 89 35 40 57 00 00 	mov    %rsi,0x5740(%rip)        # 40b628 <main_tls+0x28>
  405ee8:	48 83 f8 07          	cmp    $0x7,%rax
  405eec:	77 15                	ja     405f03 <__init_tls+0xf3>
  405eee:	48 c7 05 27 57 00 00 	movq   $0x8,0x5727(%rip)        # 40b620 <main_tls+0x20>
  405ef5:	08 00 00 00 
  405ef9:	ba e7 00 00 00       	mov    $0xe7,%edx
  405efe:	b8 08 00 00 00       	mov    $0x8,%eax
  405f03:	48 01 d6             	add    %rdx,%rsi
  405f06:	48 89 05 73 52 00 00 	mov    %rax,0x5273(%rip)        # 40b180 <__libc+0x20>
  405f0d:	48 8d 3d 2c 57 00 00 	lea    0x572c(%rip),%rdi        # 40b640 <builtin_tls>
  405f14:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405f18:	48 89 35 59 52 00 00 	mov    %rsi,0x5259(%rip)        # 40b178 <__libc+0x18>
  405f1f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405f26:	76 21                	jbe    405f49 <__init_tls+0x139>
  405f28:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405f2e:	45 31 c9             	xor    %r9d,%r9d
  405f31:	b8 09 00 00 00       	mov    $0x9,%eax
  405f36:	31 ff                	xor    %edi,%edi
  405f38:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405f3f:	ba 03 00 00 00       	mov    $0x3,%edx
  405f44:	0f 05                	syscall
  405f46:	48 89 c7             	mov    %rax,%rdi
  405f49:	e8 32 fe ff ff       	call   405d80 <__copy_tls>
  405f4e:	48 89 00             	mov    %rax,(%rax)
  405f51:	48 89 c7             	mov    %rax,%rdi
  405f54:	48 89 c3             	mov    %rax,%rbx
  405f57:	e8 71 0c 00 00       	call   406bcd <__set_thread_area>
  405f5c:	85 c0                	test   %eax,%eax
  405f5e:	0f 88 b8 00 00 00    	js     40601c <__init_tls+0x20c>
  405f64:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405f69:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405f6d:	0f 84 9d 00 00 00    	je     406010 <__init_tls+0x200>
  405f73:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405f7a:	b8 da 00 00 00       	mov    $0xda,%eax
  405f7f:	48 8d 3d 0a 58 00 00 	lea    0x580a(%rip),%rdi        # 40b790 <__thread_list_lock>
  405f86:	0f 05                	syscall
  405f88:	89 43 30             	mov    %eax,0x30(%rbx)
  405f8b:	48 8d 05 06 52 00 00 	lea    0x5206(%rip),%rax        # 40b198 <__libc+0x38>
  405f92:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405f99:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405fa0:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405fa7:	48 8b 05 82 51 00 00 	mov    0x5182(%rip),%rax        # 40b130 <__sysinfo>
  405fae:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405fb2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405fb6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405fba:	c9                   	leave
  405fbb:	c3                   	ret
  405fbc:	0f 1f 40 00          	nopl   0x0(%rax)
  405fc0:	83 fa 07             	cmp    $0x7,%edx
  405fc3:	75 0b                	jne    405fd0 <__init_tls+0x1c0>
  405fc5:	49 89 c0             	mov    %rax,%r8
  405fc8:	e9 8f fe ff ff       	jmp    405e5c <__init_tls+0x4c>
  405fcd:	0f 1f 00             	nopl   (%rax)
  405fd0:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  405fd6:	0f 85 80 fe ff ff    	jne    405e5c <__init_tls+0x4c>
  405fdc:	48 8b 50 28          	mov    0x28(%rax),%rdx
  405fe0:	44 8b 0d 25 51 00 00 	mov    0x5125(%rip),%r9d        # 40b10c <__default_stacksize>
  405fe7:	49 39 d1             	cmp    %rdx,%r9
  405fea:	0f 83 6c fe ff ff    	jae    405e5c <__init_tls+0x4c>
  405ff0:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405ff6:	4c 39 ca             	cmp    %r9,%rdx
  405ff9:	49 0f 47 d1          	cmova  %r9,%rdx
  405ffd:	89 15 09 51 00 00    	mov    %edx,0x5109(%rip)        # 40b10c <__default_stacksize>
  406003:	e9 54 fe ff ff       	jmp    405e5c <__init_tls+0x4c>
  406008:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40600f:	00 
  406010:	c6 05 49 51 00 00 01 	movb   $0x1,0x5149(%rip)        # 40b160 <__libc>
  406017:	e9 57 ff ff ff       	jmp    405f73 <__init_tls+0x163>
  40601c:	f4                   	hlt
  40601d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406021:	c9                   	leave
  406022:	c3                   	ret
  406023:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406028:	48 8b 15 e9 55 00 00 	mov    0x55e9(%rip),%rdx        # 40b618 <main_tls+0x18>
  40602f:	48 8b 35 d2 55 00 00 	mov    0x55d2(%rip),%rsi        # 40b608 <main_tls+0x8>
  406036:	48 8b 05 e3 55 00 00 	mov    0x55e3(%rip),%rax        # 40b620 <main_tls+0x20>
  40603d:	e9 81 fe ff ff       	jmp    405ec3 <__init_tls+0xb3>
  406042:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406049:	00 00 00 
  40604c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406050 <__errno_location>:
  406050:	f3 0f 1e fa          	endbr64
  406054:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40605b:	00 00 
  40605d:	48 83 c0 34          	add    $0x34,%rax
  406061:	c3                   	ret
  406062:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406069:	00 00 00 
  40606c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406070 <__strerror_l>:
  406070:	f3 0f 1e fa          	endbr64
  406074:	48 8d 05 c5 25 00 00 	lea    0x25c5(%rip),%rax        # 408640 <errmsgstr>
  40607b:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  406081:	77 11                	ja     406094 <__strerror_l+0x24>
  406083:	48 63 ff             	movslq %edi,%rdi
  406086:	48 8d 15 93 24 00 00 	lea    0x2493(%rip),%rdx        # 408520 <errmsgidx>
  40608d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  406091:	48 01 d0             	add    %rdx,%rax
  406094:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  406098:	48 89 c7             	mov    %rax,%rdi
  40609b:	e9 50 00 00 00       	jmp    4060f0 <__lctrans>

00000000004060a0 <strerror>:
  4060a0:	f3 0f 1e fa          	endbr64
  4060a4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4060ab:	00 00 
  4060ad:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  4060b4:	e9 b7 ff ff ff       	jmp    406070 <__strerror_l>
  4060b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004060c0 <_Exit>:
  4060c0:	f3 0f 1e fa          	endbr64
  4060c4:	48 63 ff             	movslq %edi,%rdi
  4060c7:	b8 e7 00 00 00       	mov    $0xe7,%eax
  4060cc:	0f 05                	syscall
  4060ce:	66 90                	xchg   %ax,%ax
  4060d0:	b8 3c 00 00 00       	mov    $0x3c,%eax
  4060d5:	0f 05                	syscall
  4060d7:	eb f7                	jmp    4060d0 <_Exit+0x10>
  4060d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004060e0 <__lctrans_impl>:
  4060e0:	f3 0f 1e fa          	endbr64
  4060e4:	48 89 f8             	mov    %rdi,%rax
  4060e7:	c3                   	ret
  4060e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4060ef:	00 

00000000004060f0 <__lctrans>:
  4060f0:	f3 0f 1e fa          	endbr64
  4060f4:	e9 e7 ff ff ff       	jmp    4060e0 <__lctrans_impl>
  4060f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406100 <__lctrans_cur>:
  406100:	f3 0f 1e fa          	endbr64
  406104:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40610b:	00 00 
  40610d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  406114:	48 8b 70 28          	mov    0x28(%rax),%rsi
  406118:	e9 c3 ff ff ff       	jmp    4060e0 <__lctrans_impl>
  40611d:	0f 1f 00             	nopl   (%rax)

0000000000406120 <__fpclassifyl>:
  406120:	f3 0f 1e fa          	endbr64
  406124:	55                   	push   %rbp
  406125:	48 89 e5             	mov    %rsp,%rbp
  406128:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  40612c:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406130:	48 89 ca             	mov    %rcx,%rdx
  406133:	89 c6                	mov    %eax,%esi
  406135:	25 ff 7f 00 00       	and    $0x7fff,%eax
  40613a:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40613e:	66 81 e6 ff 7f       	and    $0x7fff,%si
  406143:	09 d0                	or     %edx,%eax
  406145:	74 31                	je     406178 <__fpclassifyl+0x58>
  406147:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  40614e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  406153:	74 0b                	je     406160 <__fpclassifyl+0x40>
  406155:	5d                   	pop    %rbp
  406156:	c3                   	ret
  406157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40615e:	00 00 
  406160:	31 c0                	xor    %eax,%eax
  406162:	48 85 d2             	test   %rdx,%rdx
  406165:	74 ee                	je     406155 <__fpclassifyl+0x35>
  406167:	31 c0                	xor    %eax,%eax
  406169:	48 01 c9             	add    %rcx,%rcx
  40616c:	5d                   	pop    %rbp
  40616d:	0f 94 c0             	sete   %al
  406170:	c3                   	ret
  406171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406178:	48 83 f9 01          	cmp    $0x1,%rcx
  40617c:	b8 02 00 00 00       	mov    $0x2,%eax
  406181:	5d                   	pop    %rbp
  406182:	83 d8 ff             	sbb    $0xffffffff,%eax
  406185:	c3                   	ret
  406186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40618d:	00 00 00 

0000000000406190 <__signbitl>:
  406190:	f3 0f 1e fa          	endbr64
  406194:	55                   	push   %rbp
  406195:	48 89 e5             	mov    %rsp,%rbp
  406198:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  40619c:	5d                   	pop    %rbp
  40619d:	66 c1 e8 0f          	shr    $0xf,%ax
  4061a1:	0f b7 c0             	movzwl %ax,%eax
  4061a4:	c3                   	ret
  4061a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061ac:	00 00 00 
  4061af:	90                   	nop

00000000004061b0 <frexpl>:
  4061b0:	f3 0f 1e fa          	endbr64
  4061b4:	55                   	push   %rbp
  4061b5:	48 89 e5             	mov    %rsp,%rbp
  4061b8:	48 83 ec 20          	sub    $0x20,%rsp
  4061bc:	db 6d 10             	fldt   0x10(%rbp)
  4061bf:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4061c3:	89 c2                	mov    %eax,%edx
  4061c5:	d9 c0                	fld    %st(0)
  4061c7:	db 7d f0             	fstpt  -0x10(%rbp)
  4061ca:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  4061cf:	74 2f                	je     406200 <frexpl+0x50>
  4061d1:	dd d8                	fstp   %st(0)
  4061d3:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  4061d8:	74 38                	je     406212 <frexpl+0x62>
  4061da:	0f b7 d2             	movzwl %dx,%edx
  4061dd:	66 25 00 80          	and    $0x8000,%ax
  4061e1:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  4061e7:	66 0d fe 3f          	or     $0x3ffe,%ax
  4061eb:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  4061ef:	db 6d f0             	fldt   -0x10(%rbp)
  4061f2:	89 17                	mov    %edx,(%rdi)
  4061f4:	c9                   	leave
  4061f5:	c3                   	ret
  4061f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061fd:	00 00 00 
  406200:	d9 ee                	fldz
  406202:	d9 c9                	fxch   %st(1)
  406204:	df e9                	fucomip %st(1),%st
  406206:	dd d8                	fstp   %st(0)
  406208:	7a 16                	jp     406220 <frexpl+0x70>
  40620a:	75 14                	jne    406220 <frexpl+0x70>
  40620c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406212:	db 6d 10             	fldt   0x10(%rbp)
  406215:	c9                   	leave
  406216:	c3                   	ret
  406217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40621e:	00 00 
  406220:	db 6d 10             	fldt   0x10(%rbp)
  406223:	d8 0d c3 22 00 00    	fmuls  0x22c3(%rip)        # 4084ec <states+0x1ec>
  406229:	48 83 ec 10          	sub    $0x10,%rsp
  40622d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406231:	db 3c 24             	fstpt  (%rsp)
  406234:	e8 77 ff ff ff       	call   4061b0 <frexpl>
  406239:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40623d:	83 2f 78             	subl   $0x78,(%rdi)
  406240:	58                   	pop    %rax
  406241:	5a                   	pop    %rdx
  406242:	c9                   	leave
  406243:	c3                   	ret
  406244:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40624b:	00 00 00 
  40624e:	66 90                	xchg   %ax,%ax

0000000000406250 <wctomb>:
  406250:	f3 0f 1e fa          	endbr64
  406254:	48 85 ff             	test   %rdi,%rdi
  406257:	74 17                	je     406270 <wctomb+0x20>
  406259:	55                   	push   %rbp
  40625a:	31 d2                	xor    %edx,%edx
  40625c:	48 89 e5             	mov    %rsp,%rbp
  40625f:	e8 dc 09 00 00       	call   406c40 <wcrtomb>
  406264:	5d                   	pop    %rbp
  406265:	c3                   	ret
  406266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40626d:	00 00 00 
  406270:	31 c0                	xor    %eax,%eax
  406272:	c3                   	ret
  406273:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40627a:	00 00 00 
  40627d:	0f 1f 00             	nopl   (%rax)

0000000000406280 <__lockfile>:
  406280:	f3 0f 1e fa          	endbr64
  406284:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40628a:	48 89 fa             	mov    %rdi,%rdx
  40628d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406294:	00 00 
  406296:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40629a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40629f:	31 c9                	xor    %ecx,%ecx
  4062a1:	44 39 c0             	cmp    %r8d,%eax
  4062a4:	74 3f                	je     4062e5 <__lockfile+0x65>
  4062a6:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4062ad:	89 c8                	mov    %ecx,%eax
  4062af:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  4062b6:	00 00 
  4062b8:	85 c0                	test   %eax,%eax
  4062ba:	74 24                	je     4062e0 <__lockfile+0x60>
  4062bc:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  4062c3:	89 c8                	mov    %ecx,%eax
  4062c5:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  4062cc:	00 00 
  4062ce:	89 c1                	mov    %eax,%ecx
  4062d0:	85 c0                	test   %eax,%eax
  4062d2:	75 33                	jne    406307 <__lockfile+0x87>
  4062d4:	90                   	nop
  4062d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4062dc:	00 00 00 00 
  4062e0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4062e5:	89 c8                	mov    %ecx,%eax
  4062e7:	c3                   	ret
  4062e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4062ef:	00 
  4062f0:	89 c8                	mov    %ecx,%eax
  4062f2:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  4062f6:	39 c8                	cmp    %ecx,%eax
  4062f8:	74 1d                	je     406317 <__lockfile+0x97>
  4062fa:	31 c0                	xor    %eax,%eax
  4062fc:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406301:	89 c1                	mov    %eax,%ecx
  406303:	85 c0                	test   %eax,%eax
  406305:	74 d9                	je     4062e0 <__lockfile+0x60>
  406307:	89 ca                	mov    %ecx,%edx
  406309:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40630f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406315:	74 d9                	je     4062f0 <__lockfile+0x70>
  406317:	48 63 d2             	movslq %edx,%rdx
  40631a:	45 31 d2             	xor    %r10d,%r10d
  40631d:	b8 ca 00 00 00       	mov    $0xca,%eax
  406322:	be 80 00 00 00       	mov    $0x80,%esi
  406327:	0f 05                	syscall
  406329:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  40632d:	75 cb                	jne    4062fa <__lockfile+0x7a>
  40632f:	45 31 d2             	xor    %r10d,%r10d
  406332:	31 f6                	xor    %esi,%esi
  406334:	b8 ca 00 00 00       	mov    $0xca,%eax
  406339:	0f 05                	syscall
  40633b:	eb bd                	jmp    4062fa <__lockfile+0x7a>
  40633d:	0f 1f 00             	nopl   (%rax)

0000000000406340 <__unlockfile>:
  406340:	f3 0f 1e fa          	endbr64
  406344:	48 89 fa             	mov    %rdi,%rdx
  406347:	31 c0                	xor    %eax,%eax
  406349:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406350:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406356:	a9 00 00 00 40       	test   $0x40000000,%eax
  40635b:	74 17                	je     406374 <__unlockfile+0x34>
  40635d:	be 81 00 00 00       	mov    $0x81,%esi
  406362:	b8 ca 00 00 00       	mov    $0xca,%eax
  406367:	ba 01 00 00 00       	mov    $0x1,%edx
  40636c:	0f 05                	syscall
  40636e:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406372:	74 04                	je     406378 <__unlockfile+0x38>
  406374:	c3                   	ret
  406375:	0f 1f 00             	nopl   (%rax)
  406378:	b8 ca 00 00 00       	mov    $0xca,%eax
  40637d:	be 01 00 00 00       	mov    $0x1,%esi
  406382:	0f 05                	syscall
  406384:	c3                   	ret
  406385:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40638c:	00 00 00 
  40638f:	90                   	nop

0000000000406390 <__overflow>:
  406390:	f3 0f 1e fa          	endbr64
  406394:	55                   	push   %rbp
  406395:	48 89 e5             	mov    %rsp,%rbp
  406398:	48 83 ec 20          	sub    $0x20,%rsp
  40639c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4063a3:	00 00 
  4063a5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4063a9:	31 c0                	xor    %eax,%eax
  4063ab:	48 8b 47 20          	mov    0x20(%rdi),%rax
  4063af:	40 88 75 f7          	mov    %sil,-0x9(%rbp)
  4063b3:	48 85 c0             	test   %rax,%rax
  4063b6:	74 50                	je     406408 <__overflow+0x78>
  4063b8:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  4063bc:	48 39 c2             	cmp    %rax,%rdx
  4063bf:	74 0c                	je     4063cd <__overflow+0x3d>
  4063c1:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  4063c5:	3b 87 90 00 00 00    	cmp    0x90(%rdi),%eax
  4063cb:	75 2b                	jne    4063f8 <__overflow+0x68>
  4063cd:	48 8d 75 f7          	lea    -0x9(%rbp),%rsi
  4063d1:	ba 01 00 00 00       	mov    $0x1,%edx
  4063d6:	ff 57 48             	call   *0x48(%rdi)
  4063d9:	48 83 f8 01          	cmp    $0x1,%rax
  4063dd:	75 41                	jne    406420 <__overflow+0x90>
  4063df:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  4063e3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4063e7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4063ee:	00 00 
  4063f0:	75 35                	jne    406427 <__overflow+0x97>
  4063f2:	c9                   	leave
  4063f3:	c3                   	ret
  4063f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4063f8:	48 8d 72 01          	lea    0x1(%rdx),%rsi
  4063fc:	48 89 77 28          	mov    %rsi,0x28(%rdi)
  406400:	88 02                	mov    %al,(%rdx)
  406402:	eb df                	jmp    4063e3 <__overflow+0x53>
  406404:	0f 1f 40 00          	nopl   0x0(%rax)
  406408:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40640c:	e8 ff 00 00 00       	call   406510 <__towrite>
  406411:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  406415:	85 c0                	test   %eax,%eax
  406417:	75 07                	jne    406420 <__overflow+0x90>
  406419:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40641d:	eb 99                	jmp    4063b8 <__overflow+0x28>
  40641f:	90                   	nop
  406420:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  406425:	eb bc                	jmp    4063e3 <__overflow+0x53>
  406427:	e8 34 c3 ff ff       	call   402760 <__stack_chk_fail>
  40642c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406430 <__aio_close>:
  406430:	f3 0f 1e fa          	endbr64
  406434:	89 f8                	mov    %edi,%eax
  406436:	c3                   	ret
  406437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40643e:	00 00 

0000000000406440 <__stdio_close>:
  406440:	f3 0f 1e fa          	endbr64
  406444:	55                   	push   %rbp
  406445:	8b 7f 78             	mov    0x78(%rdi),%edi
  406448:	48 89 e5             	mov    %rsp,%rbp
  40644b:	e8 e0 ff ff ff       	call   406430 <__aio_close>
  406450:	48 63 f8             	movslq %eax,%rdi
  406453:	b8 03 00 00 00       	mov    $0x3,%eax
  406458:	0f 05                	syscall
  40645a:	48 89 c7             	mov    %rax,%rdi
  40645d:	e8 9e 07 00 00       	call   406c00 <__syscall_ret>
  406462:	5d                   	pop    %rbp
  406463:	c3                   	ret
  406464:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40646b:	00 00 00 
  40646e:	66 90                	xchg   %ax,%ax

0000000000406470 <__stdio_seek>:
  406470:	f3 0f 1e fa          	endbr64
  406474:	8b 7f 78             	mov    0x78(%rdi),%edi
  406477:	e9 64 07 00 00       	jmp    406be0 <__lseek>
  40647c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406480 <__stdout_write>:
  406480:	f3 0f 1e fa          	endbr64
  406484:	55                   	push   %rbp
  406485:	48 8d 05 d4 09 00 00 	lea    0x9d4(%rip),%rax        # 406e60 <__stdio_write>
  40648c:	49 89 f8             	mov    %rdi,%r8
  40648f:	49 89 f1             	mov    %rsi,%r9
  406492:	48 89 e5             	mov    %rsp,%rbp
  406495:	48 83 ec 10          	sub    $0x10,%rsp
  406499:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  4064a0:	00 00 
  4064a2:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  4064a6:	49 89 d2             	mov    %rdx,%r10
  4064a9:	48 89 47 48          	mov    %rax,0x48(%rdi)
  4064ad:	f6 07 40             	testb  $0x40,(%rdi)
  4064b0:	75 19                	jne    4064cb <__stdout_write+0x4b>
  4064b2:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  4064b6:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4064ba:	b8 10 00 00 00       	mov    $0x10,%eax
  4064bf:	be 13 54 00 00       	mov    $0x5413,%esi
  4064c4:	0f 05                	syscall
  4064c6:	48 85 c0             	test   %rax,%rax
  4064c9:	75 25                	jne    4064f0 <__stdout_write+0x70>
  4064cb:	4c 89 d2             	mov    %r10,%rdx
  4064ce:	4c 89 ce             	mov    %r9,%rsi
  4064d1:	4c 89 c7             	mov    %r8,%rdi
  4064d4:	e8 87 09 00 00       	call   406e60 <__stdio_write>
  4064d9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4064dd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4064e4:	00 00 
  4064e6:	75 15                	jne    4064fd <__stdout_write+0x7d>
  4064e8:	c9                   	leave
  4064e9:	c3                   	ret
  4064ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064f0:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  4064f7:	ff ff ff ff 
  4064fb:	eb ce                	jmp    4064cb <__stdout_write+0x4b>
  4064fd:	e8 5e c2 ff ff       	call   402760 <__stack_chk_fail>
  406502:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406509:	00 00 00 
  40650c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406510 <__towrite>:
  406510:	f3 0f 1e fa          	endbr64
  406514:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  40651a:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40651d:	09 d0                	or     %edx,%eax
  40651f:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  406525:	8b 07                	mov    (%rdi),%eax
  406527:	a8 08                	test   $0x8,%al
  406529:	75 35                	jne    406560 <__towrite+0x50>
  40652b:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40652f:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  406533:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406537:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  40653b:	48 01 c1             	add    %rax,%rcx
  40653e:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406543:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406547:	31 c0                	xor    %eax,%eax
  406549:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40654e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406552:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406556:	c3                   	ret
  406557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40655e:	00 00 
  406560:	83 c8 20             	or     $0x20,%eax
  406563:	89 07                	mov    %eax,(%rdi)
  406565:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40656a:	c3                   	ret
  40656b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406570 <__towrite_needs_stdio_exit>:
  406570:	f3 0f 1e fa          	endbr64
  406574:	e9 87 08 00 00       	jmp    406e00 <__stdio_exit>
  406579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406580 <fputs>:
  406580:	f3 0f 1e fa          	endbr64
  406584:	55                   	push   %rbp
  406585:	48 89 e5             	mov    %rsp,%rbp
  406588:	41 54                	push   %r12
  40658a:	49 89 f4             	mov    %rsi,%r12
  40658d:	53                   	push   %rbx
  40658e:	48 83 ec 10          	sub    $0x10,%rsp
  406592:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406596:	e8 a5 05 00 00       	call   406b40 <strlen>
  40659b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40659f:	4c 89 e1             	mov    %r12,%rcx
  4065a2:	be 01 00 00 00       	mov    $0x1,%esi
  4065a7:	48 89 c2             	mov    %rax,%rdx
  4065aa:	48 89 c3             	mov    %rax,%rbx
  4065ad:	e8 1e 01 00 00       	call   4066d0 <fwrite>
  4065b2:	48 39 d8             	cmp    %rbx,%rax
  4065b5:	0f 95 c0             	setne  %al
  4065b8:	48 83 c4 10          	add    $0x10,%rsp
  4065bc:	0f b6 c0             	movzbl %al,%eax
  4065bf:	5b                   	pop    %rbx
  4065c0:	41 5c                	pop    %r12
  4065c2:	f7 d8                	neg    %eax
  4065c4:	5d                   	pop    %rbp
  4065c5:	c3                   	ret
  4065c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4065cd:	00 00 00 

00000000004065d0 <__fwritex>:
  4065d0:	f3 0f 1e fa          	endbr64
  4065d4:	55                   	push   %rbp
  4065d5:	48 89 f9             	mov    %rdi,%rcx
  4065d8:	48 89 e5             	mov    %rsp,%rbp
  4065db:	41 54                	push   %r12
  4065dd:	49 89 f4             	mov    %rsi,%r12
  4065e0:	53                   	push   %rbx
  4065e1:	48 89 d3             	mov    %rdx,%rbx
  4065e4:	48 83 ec 10          	sub    $0x10,%rsp
  4065e8:	48 8b 42 20          	mov    0x20(%rdx),%rax
  4065ec:	48 85 c0             	test   %rax,%rax
  4065ef:	0f 84 ab 00 00 00    	je     4066a0 <__fwritex+0xd0>
  4065f5:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4065f9:	48 29 f8             	sub    %rdi,%rax
  4065fc:	4c 39 e0             	cmp    %r12,%rax
  4065ff:	72 57                	jb     406658 <__fwritex+0x88>
  406601:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406607:	4c 89 e2             	mov    %r12,%rdx
  40660a:	85 c0                	test   %eax,%eax
  40660c:	79 3d                	jns    40664b <__fwritex+0x7b>
  40660e:	4d 89 e0             	mov    %r12,%r8
  406611:	4c 89 c2             	mov    %r8,%rdx
  406614:	48 89 ce             	mov    %rcx,%rsi
  406617:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  40661b:	e8 cd f5 ff ff       	call   405bed <memcpy>
  406620:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  406624:	4c 01 43 28          	add    %r8,0x28(%rbx)
  406628:	4c 89 e0             	mov    %r12,%rax
  40662b:	48 83 c4 10          	add    $0x10,%rsp
  40662f:	5b                   	pop    %rbx
  406630:	41 5c                	pop    %r12
  406632:	5d                   	pop    %rbp
  406633:	c3                   	ret
  406634:	90                   	nop
  406635:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40663c:	00 00 00 00 
  406640:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406645:	74 29                	je     406670 <__fwritex+0xa0>
  406647:	48 83 ea 01          	sub    $0x1,%rdx
  40664b:	48 85 d2             	test   %rdx,%rdx
  40664e:	75 f0                	jne    406640 <__fwritex+0x70>
  406650:	eb bc                	jmp    40660e <__fwritex+0x3e>
  406652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406658:	48 8b 43 48          	mov    0x48(%rbx),%rax
  40665c:	48 83 c4 10          	add    $0x10,%rsp
  406660:	4c 89 e2             	mov    %r12,%rdx
  406663:	48 89 df             	mov    %rbx,%rdi
  406666:	48 89 ce             	mov    %rcx,%rsi
  406669:	5b                   	pop    %rbx
  40666a:	41 5c                	pop    %r12
  40666c:	5d                   	pop    %rbp
  40666d:	ff e0                	jmp    *%rax
  40666f:	90                   	nop
  406670:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  406674:	48 89 ce             	mov    %rcx,%rsi
  406677:	48 89 df             	mov    %rbx,%rdi
  40667a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40667e:	ff 53 48             	call   *0x48(%rbx)
  406681:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406685:	48 39 d0             	cmp    %rdx,%rax
  406688:	72 a1                	jb     40662b <__fwritex+0x5b>
  40668a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40668e:	4d 89 e0             	mov    %r12,%r8
  406691:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406695:	49 29 d0             	sub    %rdx,%r8
  406698:	48 01 d1             	add    %rdx,%rcx
  40669b:	e9 71 ff ff ff       	jmp    406611 <__fwritex+0x41>
  4066a0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4066a4:	48 89 d7             	mov    %rdx,%rdi
  4066a7:	e8 64 fe ff ff       	call   406510 <__towrite>
  4066ac:	85 c0                	test   %eax,%eax
  4066ae:	75 10                	jne    4066c0 <__fwritex+0xf0>
  4066b0:	48 8b 43 20          	mov    0x20(%rbx),%rax
  4066b4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4066b8:	e9 38 ff ff ff       	jmp    4065f5 <__fwritex+0x25>
  4066bd:	0f 1f 00             	nopl   (%rax)
  4066c0:	31 c0                	xor    %eax,%eax
  4066c2:	e9 64 ff ff ff       	jmp    40662b <__fwritex+0x5b>
  4066c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4066ce:	00 00 

00000000004066d0 <fwrite>:
  4066d0:	f3 0f 1e fa          	endbr64
  4066d4:	55                   	push   %rbp
  4066d5:	31 c0                	xor    %eax,%eax
  4066d7:	48 89 e5             	mov    %rsp,%rbp
  4066da:	41 57                	push   %r15
  4066dc:	41 56                	push   %r14
  4066de:	49 89 f6             	mov    %rsi,%r14
  4066e1:	41 55                	push   %r13
  4066e3:	4c 0f af f2          	imul   %rdx,%r14
  4066e7:	41 54                	push   %r12
  4066e9:	49 89 cc             	mov    %rcx,%r12
  4066ec:	53                   	push   %rbx
  4066ed:	48 89 f3             	mov    %rsi,%rbx
  4066f0:	48 83 ec 18          	sub    $0x18,%rsp
  4066f4:	48 85 f6             	test   %rsi,%rsi
  4066f7:	48 0f 45 c2          	cmovne %rdx,%rax
  4066fb:	49 89 c5             	mov    %rax,%r13
  4066fe:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406704:	85 c0                	test   %eax,%eax
  406706:	79 30                	jns    406738 <fwrite+0x68>
  406708:	48 89 ca             	mov    %rcx,%rdx
  40670b:	4c 89 f6             	mov    %r14,%rsi
  40670e:	e8 bd fe ff ff       	call   4065d0 <__fwritex>
  406713:	49 39 c6             	cmp    %rax,%r14
  406716:	74 08                	je     406720 <fwrite+0x50>
  406718:	31 d2                	xor    %edx,%edx
  40671a:	48 f7 f3             	div    %rbx
  40671d:	49 89 c5             	mov    %rax,%r13
  406720:	48 83 c4 18          	add    $0x18,%rsp
  406724:	4c 89 e8             	mov    %r13,%rax
  406727:	5b                   	pop    %rbx
  406728:	41 5c                	pop    %r12
  40672a:	41 5d                	pop    %r13
  40672c:	41 5e                	pop    %r14
  40672e:	41 5f                	pop    %r15
  406730:	5d                   	pop    %rbp
  406731:	c3                   	ret
  406732:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406738:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  40673c:	48 89 cf             	mov    %rcx,%rdi
  40673f:	e8 3c fb ff ff       	call   406280 <__lockfile>
  406744:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406748:	4c 89 e2             	mov    %r12,%rdx
  40674b:	4c 89 f6             	mov    %r14,%rsi
  40674e:	41 89 c7             	mov    %eax,%r15d
  406751:	e8 7a fe ff ff       	call   4065d0 <__fwritex>
  406756:	45 85 ff             	test   %r15d,%r15d
  406759:	74 b8                	je     406713 <fwrite+0x43>
  40675b:	4c 89 e7             	mov    %r12,%rdi
  40675e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406762:	e8 d9 fb ff ff       	call   406340 <__unlockfile>
  406767:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40676b:	eb a6                	jmp    406713 <fwrite+0x43>
  40676d:	0f 1f 00             	nopl   (%rax)

0000000000406770 <sn_write>:
  406770:	f3 0f 1e fa          	endbr64
  406774:	55                   	push   %rbp
  406775:	48 89 f1             	mov    %rsi,%rcx
  406778:	48 89 e5             	mov    %rsp,%rbp
  40677b:	41 55                	push   %r13
  40677d:	49 89 d5             	mov    %rdx,%r13
  406780:	41 54                	push   %r12
  406782:	53                   	push   %rbx
  406783:	48 89 fb             	mov    %rdi,%rbx
  406786:	48 83 ec 18          	sub    $0x18,%rsp
  40678a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406791:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406795:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406799:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40679e:	49 8b 3c 24          	mov    (%r12),%rdi
  4067a2:	48 29 f2             	sub    %rsi,%rdx
  4067a5:	48 39 c2             	cmp    %rax,%rdx
  4067a8:	48 0f 47 d0          	cmova  %rax,%rdx
  4067ac:	48 85 d2             	test   %rdx,%rdx
  4067af:	75 2f                	jne    4067e0 <sn_write+0x70>
  4067b1:	49 39 c5             	cmp    %rax,%r13
  4067b4:	49 0f 46 c5          	cmovbe %r13,%rax
  4067b8:	48 89 c2             	mov    %rax,%rdx
  4067bb:	48 85 c0             	test   %rax,%rax
  4067be:	75 5c                	jne    40681c <sn_write+0xac>
  4067c0:	c6 07 00             	movb   $0x0,(%rdi)
  4067c3:	48 8b 43 58          	mov    0x58(%rbx),%rax
  4067c7:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4067cb:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4067cf:	48 83 c4 18          	add    $0x18,%rsp
  4067d3:	4c 89 e8             	mov    %r13,%rax
  4067d6:	5b                   	pop    %rbx
  4067d7:	41 5c                	pop    %r12
  4067d9:	41 5d                	pop    %r13
  4067db:	5d                   	pop    %rbp
  4067dc:	c3                   	ret
  4067dd:	0f 1f 00             	nopl   (%rax)
  4067e0:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4067e4:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4067e8:	e8 00 f4 ff ff       	call   405bed <memcpy>
  4067ed:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4067f1:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4067f6:	49 8b 3c 24          	mov    (%r12),%rdi
  4067fa:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4067fe:	48 29 d0             	sub    %rdx,%rax
  406801:	48 01 d7             	add    %rdx,%rdi
  406804:	49 39 c5             	cmp    %rax,%r13
  406807:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40680c:	49 0f 46 c5          	cmovbe %r13,%rax
  406810:	49 89 3c 24          	mov    %rdi,(%r12)
  406814:	48 89 c2             	mov    %rax,%rdx
  406817:	48 85 c0             	test   %rax,%rax
  40681a:	74 a4                	je     4067c0 <sn_write+0x50>
  40681c:	48 89 ce             	mov    %rcx,%rsi
  40681f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  406823:	e8 c5 f3 ff ff       	call   405bed <memcpy>
  406828:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40682c:	49 8b 3c 24          	mov    (%r12),%rdi
  406830:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  406835:	48 01 d7             	add    %rdx,%rdi
  406838:	49 89 3c 24          	mov    %rdi,(%r12)
  40683c:	eb 82                	jmp    4067c0 <sn_write+0x50>
  40683e:	66 90                	xchg   %ax,%ax

0000000000406840 <vsnprintf>:
  406840:	f3 0f 1e fa          	endbr64
  406844:	55                   	push   %rbp
  406845:	49 89 c9             	mov    %rcx,%r9
  406848:	49 89 d0             	mov    %rdx,%r8
  40684b:	48 89 e5             	mov    %rsp,%rbp
  40684e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  406855:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40685c:	00 00 
  40685e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406862:	31 c0                	xor    %eax,%eax
  406864:	48 85 f6             	test   %rsi,%rsi
  406867:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  40686b:	0f 95 c1             	setne  %cl
  40686e:	48 0f 45 d7          	cmovne %rdi,%rdx
  406872:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  406879:	0f b6 c9             	movzbl %cl,%ecx
  40687c:	48 29 ce             	sub    %rcx,%rsi
  40687f:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406884:	c6 02 00             	movb   $0x0,(%rdx)
  406887:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40688e:	4c 89 ca             	mov    %r9,%rdx
  406891:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406898:	4c 89 c6             	mov    %r8,%rsi
  40689b:	f3 48 ab             	rep stos %rax,(%rdi)
  40689e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 406770 <sn_write>
  4068a5:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4068ac:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4068b3:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  4068b7:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  4068be:	48 8b 05 fb 24 00 00 	mov    0x24fb(%rip),%rax        # 408dc0 <errmsgstr+0x780>
  4068c5:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  4068c9:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4068d0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  4068d4:	e8 77 f0 ff ff       	call   405950 <vfprintf>
  4068d9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4068dd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4068e4:	00 00 
  4068e6:	75 02                	jne    4068ea <vsnprintf+0xaa>
  4068e8:	c9                   	leave
  4068e9:	c3                   	ret
  4068ea:	e8 71 be ff ff       	call   402760 <__stack_chk_fail>
  4068ef:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4068f6:	00 00 00 
  4068f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406900 <memchr>:
  406900:	f3 0f 1e fa          	endbr64
  406904:	48 89 d0             	mov    %rdx,%rax
  406907:	40 0f b6 ce          	movzbl %sil,%ecx
  40690b:	40 f6 c7 07          	test   $0x7,%dil
  40690f:	75 1c                	jne    40692d <memchr+0x2d>
  406911:	eb 2d                	jmp    406940 <memchr+0x40>
  406913:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406918:	0f b6 17             	movzbl (%rdi),%edx
  40691b:	39 ca                	cmp    %ecx,%edx
  40691d:	74 28                	je     406947 <memchr+0x47>
  40691f:	48 83 c7 01          	add    $0x1,%rdi
  406923:	48 83 e8 01          	sub    $0x1,%rax
  406927:	40 f6 c7 07          	test   $0x7,%dil
  40692b:	74 13                	je     406940 <memchr+0x40>
  40692d:	48 85 c0             	test   %rax,%rax
  406930:	75 e6                	jne    406918 <memchr+0x18>
  406932:	31 d2                	xor    %edx,%edx
  406934:	48 89 d0             	mov    %rdx,%rax
  406937:	c3                   	ret
  406938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40693f:	00 
  406940:	31 d2                	xor    %edx,%edx
  406942:	48 85 c0             	test   %rax,%rax
  406945:	74 ed                	je     406934 <memchr+0x34>
  406947:	0f b6 17             	movzbl (%rdi),%edx
  40694a:	39 ca                	cmp    %ecx,%edx
  40694c:	0f 84 ce 00 00 00    	je     406a20 <memchr+0x120>
  406952:	48 83 f8 07          	cmp    $0x7,%rax
  406956:	0f 86 c4 00 00 00    	jbe    406a20 <memchr+0x120>
  40695c:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  406963:	01 01 01 
  406966:	4c 63 c1             	movslq %ecx,%r8
  406969:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  406970:	fe fe fe 
  406973:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40697a:	80 80 80 
  40697d:	4c 0f af c2          	imul   %rdx,%r8
  406981:	48 89 fa             	mov    %rdi,%rdx
  406984:	eb 48                	jmp    4069ce <memchr+0xce>
  406986:	0f 1f 00             	nopl   (%rax)
  406989:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406990:	00 00 00 00 
  406994:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40699b:	00 00 00 00 
  40699f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069a6:	00 00 00 00 
  4069aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069b1:	00 00 00 00 
  4069b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069bc:	00 00 00 00 
  4069c0:	48 83 e8 08          	sub    $0x8,%rax
  4069c4:	48 83 c2 08          	add    $0x8,%rdx
  4069c8:	48 83 f8 07          	cmp    $0x7,%rax
  4069cc:	76 5a                	jbe    406a28 <memchr+0x128>
  4069ce:	48 8b 32             	mov    (%rdx),%rsi
  4069d1:	4c 31 c6             	xor    %r8,%rsi
  4069d4:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  4069d8:	48 f7 d6             	not    %rsi
  4069db:	48 21 fe             	and    %rdi,%rsi
  4069de:	4c 85 ce             	test   %r9,%rsi
  4069e1:	74 dd                	je     4069c0 <memchr+0xc0>
  4069e3:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4069ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069f1:	00 00 00 00 
  4069f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069fc:	00 00 00 00 
  406a00:	0f b6 32             	movzbl (%rdx),%esi
  406a03:	39 ce                	cmp    %ecx,%esi
  406a05:	0f 84 29 ff ff ff    	je     406934 <memchr+0x34>
  406a0b:	48 83 c2 01          	add    $0x1,%rdx
  406a0f:	48 83 e8 01          	sub    $0x1,%rax
  406a13:	75 eb                	jne    406a00 <memchr+0x100>
  406a15:	e9 18 ff ff ff       	jmp    406932 <memchr+0x32>
  406a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a20:	48 89 fa             	mov    %rdi,%rdx
  406a23:	eb db                	jmp    406a00 <memchr+0x100>
  406a25:	0f 1f 00             	nopl   (%rax)
  406a28:	48 85 c0             	test   %rax,%rax
  406a2b:	75 d3                	jne    406a00 <memchr+0x100>
  406a2d:	e9 00 ff ff ff       	jmp    406932 <memchr+0x32>
  406a32:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406a39:	00 00 00 
  406a3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406a40 <__stpcpy>:
  406a40:	f3 0f 1e fa          	endbr64
  406a44:	48 89 f9             	mov    %rdi,%rcx
  406a47:	48 89 f8             	mov    %rdi,%rax
  406a4a:	48 89 f2             	mov    %rsi,%rdx
  406a4d:	48 31 f1             	xor    %rsi,%rcx
  406a50:	83 e1 07             	and    $0x7,%ecx
  406a53:	74 5c                	je     406ab1 <__stpcpy+0x71>
  406a55:	0f b6 0a             	movzbl (%rdx),%ecx
  406a58:	88 08                	mov    %cl,(%rax)
  406a5a:	84 c9                	test   %cl,%cl
  406a5c:	0f 84 c6 00 00 00    	je     406b28 <__stpcpy+0xe8>
  406a62:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406a69:	00 
  406a6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a71:	00 00 00 00 
  406a75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a7c:	00 00 00 00 
  406a80:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406a84:	48 83 c2 01          	add    $0x1,%rdx
  406a88:	48 83 c0 01          	add    $0x1,%rax
  406a8c:	88 08                	mov    %cl,(%rax)
  406a8e:	84 c9                	test   %cl,%cl
  406a90:	75 ee                	jne    406a80 <__stpcpy+0x40>
  406a92:	c3                   	ret
  406a93:	66 90                	xchg   %ax,%ax
  406a95:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a9c:	00 00 00 00 
  406aa0:	0f b6 0a             	movzbl (%rdx),%ecx
  406aa3:	88 08                	mov    %cl,(%rax)
  406aa5:	84 c9                	test   %cl,%cl
  406aa7:	74 e9                	je     406a92 <__stpcpy+0x52>
  406aa9:	48 83 c2 01          	add    $0x1,%rdx
  406aad:	48 83 c0 01          	add    $0x1,%rax
  406ab1:	f6 c2 07             	test   $0x7,%dl
  406ab4:	75 ea                	jne    406aa0 <__stpcpy+0x60>
  406ab6:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  406abd:	fe fe fe 
  406ac0:	48 8b 0a             	mov    (%rdx),%rcx
  406ac3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  406aca:	80 80 80 
  406acd:	48 89 cf             	mov    %rcx,%rdi
  406ad0:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406ad4:	48 f7 d7             	not    %rdi
  406ad7:	48 21 fe             	and    %rdi,%rsi
  406ada:	4c 85 ce             	test   %r9,%rsi
  406add:	0f 85 72 ff ff ff    	jne    406a55 <__stpcpy+0x15>
  406ae3:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406aea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406af1:	00 00 00 00 
  406af5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406afc:	00 00 00 00 
  406b00:	48 83 c2 08          	add    $0x8,%rdx
  406b04:	48 89 08             	mov    %rcx,(%rax)
  406b07:	48 83 c0 08          	add    $0x8,%rax
  406b0b:	48 8b 0a             	mov    (%rdx),%rcx
  406b0e:	48 89 cf             	mov    %rcx,%rdi
  406b11:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406b15:	48 f7 d7             	not    %rdi
  406b18:	48 21 fe             	and    %rdi,%rsi
  406b1b:	4c 85 ce             	test   %r9,%rsi
  406b1e:	74 e0                	je     406b00 <__stpcpy+0xc0>
  406b20:	e9 30 ff ff ff       	jmp    406a55 <__stpcpy+0x15>
  406b25:	0f 1f 00             	nopl   (%rax)
  406b28:	c3                   	ret
  406b29:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406b30:	00 00 00 
  406b33:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406b3a:	00 00 00 
  406b3d:	0f 1f 00             	nopl   (%rax)

0000000000406b40 <strlen>:
  406b40:	f3 0f 1e fa          	endbr64
  406b44:	49 89 f8             	mov    %rdi,%r8
  406b47:	48 89 f8             	mov    %rdi,%rax
  406b4a:	40 f6 c7 07          	test   $0x7,%dil
  406b4e:	75 18                	jne    406b68 <strlen+0x28>
  406b50:	eb 26                	jmp    406b78 <strlen+0x38>
  406b52:	0f 1f 00             	nopl   (%rax)
  406b55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b5c:	00 00 00 00 
  406b60:	48 83 c0 01          	add    $0x1,%rax
  406b64:	a8 07                	test   $0x7,%al
  406b66:	74 10                	je     406b78 <strlen+0x38>
  406b68:	80 38 00             	cmpb   $0x0,(%rax)
  406b6b:	75 f3                	jne    406b60 <strlen+0x20>
  406b6d:	4c 29 c0             	sub    %r8,%rax
  406b70:	c3                   	ret
  406b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b78:	48 bf ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rdi
  406b7f:	fe fe fe 
  406b82:	48 8b 10             	mov    (%rax),%rdx
  406b85:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  406b8c:	80 80 80 
  406b8f:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406b93:	48 f7 d2             	not    %rdx
  406b96:	48 21 ca             	and    %rcx,%rdx
  406b99:	48 85 f2             	test   %rsi,%rdx
  406b9c:	75 26                	jne    406bc4 <strlen+0x84>
  406b9e:	66 90                	xchg   %ax,%ax
  406ba0:	48 8b 50 08          	mov    0x8(%rax),%rdx
  406ba4:	48 83 c0 08          	add    $0x8,%rax
  406ba8:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406bac:	48 f7 d2             	not    %rdx
  406baf:	48 21 ca             	and    %rcx,%rdx
  406bb2:	48 85 f2             	test   %rsi,%rdx
  406bb5:	74 e9                	je     406ba0 <strlen+0x60>
  406bb7:	eb 0b                	jmp    406bc4 <strlen+0x84>
  406bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406bc0:	48 83 c0 01          	add    $0x1,%rax
  406bc4:	80 38 00             	cmpb   $0x0,(%rax)
  406bc7:	75 f7                	jne    406bc0 <strlen+0x80>
  406bc9:	4c 29 c0             	sub    %r8,%rax
  406bcc:	c3                   	ret

0000000000406bcd <__set_thread_area>:
  406bcd:	48 89 fe             	mov    %rdi,%rsi
  406bd0:	bf 02 10 00 00       	mov    $0x1002,%edi
  406bd5:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406bda:	0f 05                	syscall
  406bdc:	c3                   	ret
  406bdd:	0f 1f 00             	nopl   (%rax)

0000000000406be0 <__lseek>:
  406be0:	f3 0f 1e fa          	endbr64
  406be4:	48 63 ff             	movslq %edi,%rdi
  406be7:	48 63 d2             	movslq %edx,%rdx
  406bea:	b8 08 00 00 00       	mov    $0x8,%eax
  406bef:	0f 05                	syscall
  406bf1:	48 89 c7             	mov    %rax,%rdi
  406bf4:	e9 07 00 00 00       	jmp    406c00 <__syscall_ret>
  406bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406c00 <__syscall_ret>:
  406c00:	f3 0f 1e fa          	endbr64
  406c04:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406c0b:	77 0b                	ja     406c18 <__syscall_ret+0x18>
  406c0d:	48 89 f8             	mov    %rdi,%rax
  406c10:	c3                   	ret
  406c11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c18:	55                   	push   %rbp
  406c19:	48 89 e5             	mov    %rsp,%rbp
  406c1c:	53                   	push   %rbx
  406c1d:	48 89 fb             	mov    %rdi,%rbx
  406c20:	48 83 ec 08          	sub    $0x8,%rsp
  406c24:	e8 27 f4 ff ff       	call   406050 <__errno_location>
  406c29:	89 df                	mov    %ebx,%edi
  406c2b:	f7 df                	neg    %edi
  406c2d:	89 38                	mov    %edi,(%rax)
  406c2f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406c36:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c3a:	c9                   	leave
  406c3b:	c3                   	ret
  406c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406c40 <wcrtomb>:
  406c40:	f3 0f 1e fa          	endbr64
  406c44:	48 85 ff             	test   %rdi,%rdi
  406c47:	0f 84 d6 00 00 00    	je     406d23 <wcrtomb+0xe3>
  406c4d:	83 fe 7f             	cmp    $0x7f,%esi
  406c50:	0f 86 ca 00 00 00    	jbe    406d20 <wcrtomb+0xe0>
  406c56:	55                   	push   %rbp
  406c57:	89 f0                	mov    %esi,%eax
  406c59:	48 89 f9             	mov    %rdi,%rcx
  406c5c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406c63:	00 00 
  406c65:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406c6c:	48 89 e5             	mov    %rsp,%rbp
  406c6f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406c73:	74 53                	je     406cc8 <wcrtomb+0x88>
  406c75:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406c7b:	0f 86 af 00 00 00    	jbe    406d30 <wcrtomb+0xf0>
  406c81:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406c87:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406c8d:	0f 86 bd 00 00 00    	jbe    406d50 <wcrtomb+0x110>
  406c93:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406c99:	0f 86 b1 00 00 00    	jbe    406d50 <wcrtomb+0x110>
  406c9f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406ca5:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406cab:	76 33                	jbe    406ce0 <wcrtomb+0xa0>
  406cad:	e8 9e f3 ff ff       	call   406050 <__errno_location>
  406cb2:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406cb8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406cbf:	5d                   	pop    %rbp
  406cc0:	c3                   	ret
  406cc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406cc8:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406ccd:	83 f8 7f             	cmp    $0x7f,%eax
  406cd0:	77 db                	ja     406cad <wcrtomb+0x6d>
  406cd2:	40 88 37             	mov    %sil,(%rdi)
  406cd5:	b8 01 00 00 00       	mov    $0x1,%eax
  406cda:	5d                   	pop    %rbp
  406cdb:	c3                   	ret
  406cdc:	0f 1f 40 00          	nopl   0x0(%rax)
  406ce0:	89 c7                	mov    %eax,%edi
  406ce2:	83 e0 3f             	and    $0x3f,%eax
  406ce5:	89 f2                	mov    %esi,%edx
  406ce7:	c1 fe 0c             	sar    $0xc,%esi
  406cea:	c1 ff 06             	sar    $0x6,%edi
  406ced:	c1 e0 08             	shl    $0x8,%eax
  406cf0:	83 e6 3f             	and    $0x3f,%esi
  406cf3:	83 e7 3f             	and    $0x3f,%edi
  406cf6:	c1 fa 12             	sar    $0x12,%edx
  406cf9:	09 f8                	or     %edi,%eax
  406cfb:	0f b6 d2             	movzbl %dl,%edx
  406cfe:	c1 e0 08             	shl    $0x8,%eax
  406d01:	09 f0                	or     %esi,%eax
  406d03:	8b 35 e7 17 00 00    	mov    0x17e7(%rip),%esi        # 4084f0 <states+0x1f0>
  406d09:	c1 e0 08             	shl    $0x8,%eax
  406d0c:	09 d0                	or     %edx,%eax
  406d0e:	09 f0                	or     %esi,%eax
  406d10:	89 01                	mov    %eax,(%rcx)
  406d12:	b8 04 00 00 00       	mov    $0x4,%eax
  406d17:	5d                   	pop    %rbp
  406d18:	c3                   	ret
  406d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406d20:	40 88 37             	mov    %sil,(%rdi)
  406d23:	b8 01 00 00 00       	mov    $0x1,%eax
  406d28:	c3                   	ret
  406d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406d30:	89 f2                	mov    %esi,%edx
  406d32:	83 e0 3f             	and    $0x3f,%eax
  406d35:	c1 fa 06             	sar    $0x6,%edx
  406d38:	83 c8 80             	or     $0xffffff80,%eax
  406d3b:	83 ca c0             	or     $0xffffffc0,%edx
  406d3e:	88 47 01             	mov    %al,0x1(%rdi)
  406d41:	b8 02 00 00 00       	mov    $0x2,%eax
  406d46:	88 17                	mov    %dl,(%rdi)
  406d48:	5d                   	pop    %rbp
  406d49:	c3                   	ret
  406d4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d50:	89 c2                	mov    %eax,%edx
  406d52:	c1 fa 0c             	sar    $0xc,%edx
  406d55:	83 ca e0             	or     $0xffffffe0,%edx
  406d58:	88 11                	mov    %dl,(%rcx)
  406d5a:	89 c2                	mov    %eax,%edx
  406d5c:	83 e0 3f             	and    $0x3f,%eax
  406d5f:	c1 fa 06             	sar    $0x6,%edx
  406d62:	83 c8 80             	or     $0xffffff80,%eax
  406d65:	83 e2 3f             	and    $0x3f,%edx
  406d68:	88 41 02             	mov    %al,0x2(%rcx)
  406d6b:	b8 03 00 00 00       	mov    $0x3,%eax
  406d70:	83 ca 80             	or     $0xffffff80,%edx
  406d73:	88 51 01             	mov    %dl,0x1(%rcx)
  406d76:	5d                   	pop    %rbp
  406d77:	c3                   	ret
  406d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406d7f:	00 

0000000000406d80 <close_file>:
  406d80:	48 85 ff             	test   %rdi,%rdi
  406d83:	74 6b                	je     406df0 <close_file+0x70>
  406d85:	55                   	push   %rbp
  406d86:	48 89 e5             	mov    %rsp,%rbp
  406d89:	53                   	push   %rbx
  406d8a:	48 89 fb             	mov    %rdi,%rbx
  406d8d:	48 83 ec 08          	sub    $0x8,%rsp
  406d91:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406d97:	85 c0                	test   %eax,%eax
  406d99:	79 3d                	jns    406dd8 <close_file+0x58>
  406d9b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406d9f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406da3:	74 0a                	je     406daf <close_file+0x2f>
  406da5:	31 d2                	xor    %edx,%edx
  406da7:	31 f6                	xor    %esi,%esi
  406da9:	48 89 df             	mov    %rbx,%rdi
  406dac:	ff 53 48             	call   *0x48(%rbx)
  406daf:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406db3:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406db7:	48 39 c6             	cmp    %rax,%rsi
  406dba:	74 24                	je     406de0 <close_file+0x60>
  406dbc:	48 29 c6             	sub    %rax,%rsi
  406dbf:	48 89 df             	mov    %rbx,%rdi
  406dc2:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406dc6:	ba 01 00 00 00       	mov    $0x1,%edx
  406dcb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406dcf:	c9                   	leave
  406dd0:	ff e0                	jmp    *%rax
  406dd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406dd8:	e8 a3 f4 ff ff       	call   406280 <__lockfile>
  406ddd:	eb bc                	jmp    406d9b <close_file+0x1b>
  406ddf:	90                   	nop
  406de0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406de4:	c9                   	leave
  406de5:	c3                   	ret
  406de6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406ded:	00 00 00 
  406df0:	c3                   	ret
  406df1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406df8:	00 00 00 
  406dfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406e00 <__stdio_exit>:
  406e00:	f3 0f 1e fa          	endbr64
  406e04:	55                   	push   %rbp
  406e05:	48 89 e5             	mov    %rsp,%rbp
  406e08:	53                   	push   %rbx
  406e09:	48 83 ec 08          	sub    $0x8,%rsp
  406e0d:	e8 7e 01 00 00       	call   406f90 <__ofl_lock>
  406e12:	48 8b 18             	mov    (%rax),%rbx
  406e15:	48 85 db             	test   %rbx,%rbx
  406e18:	74 17                	je     406e31 <__stdio_exit+0x31>
  406e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e20:	48 89 df             	mov    %rbx,%rdi
  406e23:	e8 58 ff ff ff       	call   406d80 <close_file>
  406e28:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406e2c:	48 85 db             	test   %rbx,%rbx
  406e2f:	75 ef                	jne    406e20 <__stdio_exit+0x20>
  406e31:	48 8b 3d 60 49 00 00 	mov    0x4960(%rip),%rdi        # 40b798 <__stderr_used>
  406e38:	e8 43 ff ff ff       	call   406d80 <close_file>
  406e3d:	48 8b 3d c4 41 00 00 	mov    0x41c4(%rip),%rdi        # 40b008 <__stdout_used>
  406e44:	e8 37 ff ff ff       	call   406d80 <close_file>
  406e49:	48 8b 3d 48 49 00 00 	mov    0x4948(%rip),%rdi        # 40b798 <__stderr_used>
  406e50:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406e54:	c9                   	leave
  406e55:	e9 26 ff ff ff       	jmp    406d80 <close_file>
  406e5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406e60 <__stdio_write>:
  406e60:	f3 0f 1e fa          	endbr64
  406e64:	55                   	push   %rbp
  406e65:	48 89 e5             	mov    %rsp,%rbp
  406e68:	41 57                	push   %r15
  406e6a:	41 56                	push   %r14
  406e6c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406e70:	41 55                	push   %r13
  406e72:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406e78:	41 54                	push   %r12
  406e7a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406e80:	53                   	push   %rbx
  406e81:	48 89 fb             	mov    %rdi,%rbx
  406e84:	48 83 ec 48          	sub    $0x48,%rsp
  406e88:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406e8c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406e90:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406e97:	00 00 
  406e99:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406e9d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406ea1:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406ea5:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406ea9:	49 29 c0             	sub    %rax,%r8
  406eac:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406eb0:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406eb4:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406eb8:	eb 37                	jmp    406ef1 <__stdio_write+0x91>
  406eba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ec0:	48 85 c0             	test   %rax,%rax
  406ec3:	0f 88 8f 00 00 00    	js     406f58 <__stdio_write+0xf8>
  406ec9:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406ecd:	49 29 c6             	sub    %rax,%r14
  406ed0:	48 39 c2             	cmp    %rax,%rdx
  406ed3:	73 12                	jae    406ee7 <__stdio_write+0x87>
  406ed5:	41 83 ed 01          	sub    $0x1,%r13d
  406ed9:	48 29 d0             	sub    %rdx,%rax
  406edc:	49 83 c7 10          	add    $0x10,%r15
  406ee0:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406ee4:	4d 63 e5             	movslq %r13d,%r12
  406ee7:	48 29 c2             	sub    %rax,%rdx
  406eea:	49 01 07             	add    %rax,(%r15)
  406eed:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406ef1:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406ef5:	b8 14 00 00 00       	mov    $0x14,%eax
  406efa:	4c 89 fe             	mov    %r15,%rsi
  406efd:	4c 89 e2             	mov    %r12,%rdx
  406f00:	0f 05                	syscall
  406f02:	48 89 c7             	mov    %rax,%rdi
  406f05:	e8 f6 fc ff ff       	call   406c00 <__syscall_ret>
  406f0a:	49 39 c6             	cmp    %rax,%r14
  406f0d:	75 b1                	jne    406ec0 <__stdio_write+0x60>
  406f0f:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406f13:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406f17:	48 01 c1             	add    %rax,%rcx
  406f1a:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406f1f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406f23:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406f27:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406f2c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406f30:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406f34:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406f38:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406f3f:	00 00 
  406f41:	75 3a                	jne    406f7d <__stdio_write+0x11d>
  406f43:	48 83 c4 48          	add    $0x48,%rsp
  406f47:	5b                   	pop    %rbx
  406f48:	41 5c                	pop    %r12
  406f4a:	41 5d                	pop    %r13
  406f4c:	41 5e                	pop    %r14
  406f4e:	41 5f                	pop    %r15
  406f50:	5d                   	pop    %rbp
  406f51:	c3                   	ret
  406f52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406f58:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406f5c:	83 0b 20             	orl    $0x20,(%rbx)
  406f5f:	31 c0                	xor    %eax,%eax
  406f61:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406f68:	00 
  406f69:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406f6d:	41 83 fd 02          	cmp    $0x2,%r13d
  406f71:	74 c1                	je     406f34 <__stdio_write+0xd4>
  406f73:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406f77:	49 2b 47 08          	sub    0x8(%r15),%rax
  406f7b:	eb b7                	jmp    406f34 <__stdio_write+0xd4>
  406f7d:	e8 de b7 ff ff       	call   402760 <__stack_chk_fail>
  406f82:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406f89:	00 00 00 
  406f8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406f90 <__ofl_lock>:
  406f90:	f3 0f 1e fa          	endbr64
  406f94:	55                   	push   %rbp
  406f95:	48 8d 3d 04 48 00 00 	lea    0x4804(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f9c:	48 89 e5             	mov    %rsp,%rbp
  406f9f:	e8 1c 00 00 00       	call   406fc0 <__lock>
  406fa4:	48 8d 05 fd 47 00 00 	lea    0x47fd(%rip),%rax        # 40b7a8 <ofl_head>
  406fab:	5d                   	pop    %rbp
  406fac:	c3                   	ret
  406fad:	0f 1f 00             	nopl   (%rax)

0000000000406fb0 <__ofl_unlock>:
  406fb0:	f3 0f 1e fa          	endbr64
  406fb4:	48 8d 3d e5 47 00 00 	lea    0x47e5(%rip),%rdi        # 40b7a0 <ofl_lock>
  406fbb:	e9 e0 00 00 00       	jmp    4070a0 <__unlock>

0000000000406fc0 <__lock>:
  406fc0:	f3 0f 1e fa          	endbr64
  406fc4:	0f be 0d 98 41 00 00 	movsbl 0x4198(%rip),%ecx        # 40b163 <__libc+0x3>
  406fcb:	85 c9                	test   %ecx,%ecx
  406fcd:	74 51                	je     407020 <__lock+0x60>
  406fcf:	31 c0                	xor    %eax,%eax
  406fd1:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406fd6:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406fda:	89 c2                	mov    %eax,%edx
  406fdc:	85 c9                	test   %ecx,%ecx
  406fde:	78 48                	js     407028 <__lock+0x68>
  406fe0:	85 c0                	test   %eax,%eax
  406fe2:	74 3c                	je     407020 <__lock+0x60>
  406fe4:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406fea:	eb 1e                	jmp    40700a <__lock+0x4a>
  406fec:	0f 1f 40 00          	nopl   0x0(%rax)
  406ff0:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406ff6:	89 d1                	mov    %edx,%ecx
  406ff8:	89 c8                	mov    %ecx,%eax
  406ffa:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406ffe:	89 c2                	mov    %eax,%edx
  407000:	39 c1                	cmp    %eax,%ecx
  407002:	74 1c                	je     407020 <__lock+0x60>
  407004:	41 83 e8 01          	sub    $0x1,%r8d
  407008:	74 2e                	je     407038 <__lock+0x78>
  40700a:	85 d2                	test   %edx,%edx
  40700c:	79 e2                	jns    406ff0 <__lock+0x30>
  40700e:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  407014:	89 d6                	mov    %edx,%esi
  407016:	eb e0                	jmp    406ff8 <__lock+0x38>
  407018:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40701f:	00 
  407020:	c3                   	ret
  407021:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407028:	c6 05 34 41 00 00 00 	movb   $0x0,0x4134(%rip)        # 40b163 <__libc+0x3>
  40702f:	85 c0                	test   %eax,%eax
  407031:	75 b1                	jne    406fe4 <__lock+0x24>
  407033:	c3                   	ret
  407034:	0f 1f 40 00          	nopl   0x0(%rax)
  407038:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  40703e:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  407043:	41 83 c0 01          	add    $0x1,%r8d
  407047:	eb 1c                	jmp    407065 <__lock+0xa5>
  407049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407050:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  407057:	89 d0                	mov    %edx,%eax
  407059:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  40705e:	41 89 c0             	mov    %eax,%r8d
  407061:	39 c2                	cmp    %eax,%edx
  407063:	74 bb                	je     407020 <__lock+0x60>
  407065:	44 89 c2             	mov    %r8d,%edx
  407068:	45 85 c0             	test   %r8d,%r8d
  40706b:	79 e3                	jns    407050 <__lock+0x90>
  40706d:	49 63 d0             	movslq %r8d,%rdx
  407070:	45 31 d2             	xor    %r10d,%r10d
  407073:	b8 ca 00 00 00       	mov    $0xca,%eax
  407078:	be 80 00 00 00       	mov    $0x80,%esi
  40707d:	0f 05                	syscall
  40707f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407083:	75 09                	jne    40708e <__lock+0xce>
  407085:	31 f6                	xor    %esi,%esi
  407087:	b8 ca 00 00 00       	mov    $0xca,%eax
  40708c:	0f 05                	syscall
  40708e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  407095:	eb b9                	jmp    407050 <__lock+0x90>
  407097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40709e:	00 00 

00000000004070a0 <__unlock>:
  4070a0:	f3 0f 1e fa          	endbr64
  4070a4:	8b 07                	mov    (%rdi),%eax
  4070a6:	85 c0                	test   %eax,%eax
  4070a8:	78 06                	js     4070b0 <__unlock+0x10>
  4070aa:	c3                   	ret
  4070ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4070b0:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4070b5:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  4070b9:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  4070be:	74 ea                	je     4070aa <__unlock+0xa>
  4070c0:	be 81 00 00 00       	mov    $0x81,%esi
  4070c5:	b8 ca 00 00 00       	mov    $0xca,%eax
  4070ca:	ba 01 00 00 00       	mov    $0x1,%edx
  4070cf:	0f 05                	syscall
  4070d1:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4070d5:	75 d3                	jne    4070aa <__unlock+0xa>
  4070d7:	b8 ca 00 00 00       	mov    $0xca,%eax
  4070dc:	be 01 00 00 00       	mov    $0x1,%esi
  4070e1:	0f 05                	syscall
  4070e3:	c3                   	ret

Disassembly of section .fini:

00000000004070e4 <_fini>:
  4070e4:	50                   	push   %rax
  4070e5:	58                   	pop    %rax
  4070e6:	c3                   	ret
