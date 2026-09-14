
test_movnti_assert_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 7c 15 00 00       	call   4025d0 <__funcs_on_exit>
  401054:	e8 87 15 00 00       	call   4025e0 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 e0 5b 00 00       	call   406c40 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 99 4e 00 00       	call   405f00 <_Exit>

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
  40108a:	49 c7 c0 24 6f 40 00 	mov    $0x406f24,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 59 14 00 00       	jmp    402500 <__libc_start_main>
  4010a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4010ae:	00 00 

00000000004010b0 <deregister_tm_clones>:
  4010b0:	48 8d 3d 59 90 00 00 	lea    0x9059(%rip),%rdi        # 40a110 <__TMC_END__>
  4010b7:	48 8d 05 52 90 00 00 	lea    0x9052(%rip),%rax        # 40a110 <__TMC_END__>
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
  4010e0:	48 8d 3d 29 90 00 00 	lea    0x9029(%rip),%rdi        # 40a110 <__TMC_END__>
  4010e7:	48 8d 35 22 90 00 00 	lea    0x9022(%rip),%rsi        # 40a110 <__TMC_END__>
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
  401124:	80 3d f5 8f 00 00 00 	cmpb   $0x0,0x8ff5(%rip)        # 40a120 <completed.0>
  40112b:	75 2b                	jne    401158 <__do_global_dtors_aux+0x38>
  40112d:	55                   	push   %rbp
  40112e:	48 83 3d aa 8e 00 00 	cmpq   $0x0,0x8eaa(%rip)        # 409fe0 <__stdio_ofl_lockptr+0x8>
  401135:	00 
  401136:	48 89 e5             	mov    %rsp,%rbp
  401139:	74 0c                	je     401147 <__do_global_dtors_aux+0x27>
  40113b:	48 8b 3d be 8e 00 00 	mov    0x8ebe(%rip),%rdi        # 40a000 <__dso_handle>
  401142:	e8 b9 ee bf ff       	call   0 <_init-0x401000>
  401147:	e8 64 ff ff ff       	call   4010b0 <deregister_tm_clones>
  40114c:	c6 05 cd 8f 00 00 01 	movb   $0x1,0x8fcd(%rip)        # 40a120 <completed.0>
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
  4017ff:	48 8d 0d fa 57 00 00 	lea    0x57fa(%rip),%rcx        # 407000 <_fini+0xdc>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 92 0f 00 00       	call   4027c0 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 99 41 00 00       	call   4059e0 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 64 0d 00 00       	call   4025c0 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 57 00 00 	lea    0x5777(%rip),%rcx        # 407021 <_fini+0xfd>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 f6 0e 00 00       	call   4027c0 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 fd 40 00 00       	call   4059e0 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 c8 0c 00 00       	call   4025c0 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 55 00 00 	lea    0x55ce(%rip),%rsi        # 407030 <_fini+0x10c>
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
  401a9f:	e8 1c 0d 00 00       	call   4027c0 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 1f 3f 00 00       	call   4059e0 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 ea 0a 00 00       	call   4025c0 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 54 00 00 	lea    0x54d7(%rip),%rsi        # 407078 <_fini+0x154>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 fe 0b 00 00       	call   4027c0 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 01 3e 00 00       	call   4059e0 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 cc 09 00 00       	call   4025c0 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 54 00 00 	lea    0x543b(%rip),%rsi        # 407099 <_fini+0x175>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 48 0b 00 00       	call   4027c0 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 4f 3d 00 00       	call   4059e0 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 1a 09 00 00       	call   4025c0 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 53 00 00 	lea    0x53b7(%rip),%rsi        # 4070aa <_fini+0x186>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 b9 0a 00 00       	call   4027c0 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 c0 3c 00 00       	call   4059e0 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 8b 08 00 00       	call   4025c0 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 51 00 00 	lea    0x5191(%rip),%rsi        # 407030 <_fini+0x10c>
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
  401edc:	e8 df 08 00 00       	call   4027c0 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 e2 3a 00 00       	call   4059e0 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 ad 06 00 00       	call   4025c0 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 50 00 00 	lea    0x509a(%rip),%rsi        # 407078 <_fini+0x154>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 c1 07 00 00       	call   4027c0 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 c4 39 00 00       	call   4059e0 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 8f 05 00 00       	call   4025c0 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 50 00 00 	lea    0x501a(%rip),%rsi        # 4070b5 <_fini+0x191>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 0b 07 00 00       	call   4027c0 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 12 39 00 00       	call   4059e0 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 dd 04 00 00       	call   4025c0 <__stack_chk_fail>
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
  402129:	48 8d 35 96 4f 00 00 	lea    0x4f96(%rip),%rsi        # 4070c6 <_fini+0x1a2>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 7c 06 00 00       	call   4027c0 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 83 38 00 00       	call   4059e0 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 4e 04 00 00       	call   4025c0 <__stack_chk_fail>
  402172:	c9                   	leave
  402173:	c3                   	ret

0000000000402174 <main>:
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"
int main() {
  402174:	f3 0f 1e fa          	endbr64
  402178:	55                   	push   %rbp
  402179:	48 89 e5             	mov    %rsp,%rbp
  40217c:	48 83 ec 30          	sub    $0x30,%rsp
  402180:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402187:	00 00 
  402189:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40218d:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1 = SRC1;
  40218f:	c7 45 e4 df 10 7f 19 	movl   $0x197f10df,-0x1c(%rbp)
    C_OUT_TYPE out;
    C_OUT_TYPE con = CON;
  402196:	c7 45 e8 df 10 7f 19 	movl   $0x197f10df,-0x18(%rbp)
  40219d:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
  4021a1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4021a5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4021a8:	89 45 ec             	mov    %eax,-0x14(%rbp)
}

extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_si32 (int *__A, int __B)
{
  __builtin_ia32_movnti (__A, __B);
  4021ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4021af:	8b 55 ec             	mov    -0x14(%rbp),%edx
  4021b2:	0f c3 10             	movnti %edx,(%rax)
}
  4021b5:	90                   	nop

#ifdef PRINT
    printf(STR(INST_NAME)"\n%d\n |\n\\/\n%d\n",in1, out);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
  4021b6:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  4021bd:	eb 2f                	jmp    4021ee <main+0x7a>
        if(out != con){
  4021bf:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4021c2:	39 45 e8             	cmp    %eax,-0x18(%rbp)
  4021c5:	74 23                	je     4021ea <main+0x76>
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out:%d != con:%d\33[0m\n", out, con);
  4021c7:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4021ca:	8b 55 e8             	mov    -0x18(%rbp),%edx
  4021cd:	48 8d 0d 04 4f 00 00 	lea    0x4f04(%rip),%rcx        # 4070d8 <_fini+0x1b4>
  4021d4:	89 c6                	mov    %eax,%esi
  4021d6:	48 89 cf             	mov    %rcx,%rdi
  4021d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021de:	e8 3d 04 00 00       	call   402620 <printf>
            return 1;
  4021e3:	b8 01 00 00 00       	mov    $0x1,%eax
  4021e8:	eb 1e                	jmp    402208 <main+0x94>
    for( int i = 0; i<OUT_LEN;i++){
  4021ea:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
  4021ee:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
  4021f2:	7e cb                	jle    4021bf <main+0x4b>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
  4021f4:	48 8d 05 15 4f 00 00 	lea    0x4f15(%rip),%rax        # 407110 <_fini+0x1ec>
  4021fb:	48 89 c7             	mov    %rax,%rdi
  4021fe:	e8 ed 04 00 00       	call   4026f0 <puts>
#endif

    return 0;
  402203:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402208:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40220c:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402213:	00 00 
  402215:	74 05                	je     40221c <main+0xa8>
  402217:	e8 a4 03 00 00       	call   4025c0 <__stack_chk_fail>
  40221c:	c9                   	leave
  40221d:	c3                   	ret
  40221e:	66 90                	xchg   %ax,%ax

0000000000402220 <dummy>:
  402220:	f3 0f 1e fa          	endbr64
  402224:	c3                   	ret
  402225:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40222c:	00 00 00 
  40222f:	90                   	nop

0000000000402230 <dummy1>:
  402230:	f3 0f 1e fa          	endbr64
  402234:	c3                   	ret
  402235:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40223c:	00 00 00 
  40223f:	90                   	nop

0000000000402240 <__init_libc>:
  402240:	f3 0f 1e fa          	endbr64
  402244:	55                   	push   %rbp
  402245:	48 89 fa             	mov    %rdi,%rdx
  402248:	31 c0                	xor    %eax,%eax
  40224a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40224f:	48 89 e5             	mov    %rsp,%rbp
  402252:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402259:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402260:	f3 48 ab             	rep stos %rax,(%rdi)
  402263:	48 c7 c0 e8 a5 40 00 	mov    $0x40a5e8,%rax
  40226a:	48 89 10             	mov    %rdx,(%rax)
  40226d:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  402271:	0f 84 c9 01 00 00    	je     402440 <__init_libc+0x200>
  402277:	31 c0                	xor    %eax,%eax
  402279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402280:	48 89 c1             	mov    %rax,%rcx
  402283:	48 83 c0 01          	add    $0x1,%rax
  402287:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  40228c:	75 f2                	jne    402280 <__init_libc+0x40>
  40228e:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  402295:	00 
  402296:	48 01 d0             	add    %rdx,%rax
  402299:	48 89 05 c8 7e 00 00 	mov    %rax,0x7ec8(%rip)        # 40a168 <__libc+0x8>
  4022a0:	48 8b 10             	mov    (%rax),%rdx
  4022a3:	48 83 c0 08          	add    $0x8,%rax
  4022a7:	48 85 d2             	test   %rdx,%rdx
  4022aa:	0f 84 a0 01 00 00    	je     402450 <__init_libc+0x210>
  4022b0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4022bc:	00 00 00 00 
  4022c0:	48 83 fa 25          	cmp    $0x25,%rdx
  4022c4:	77 0b                	ja     4022d1 <__init_libc+0x91>
  4022c6:	48 8b 08             	mov    (%rax),%rcx
  4022c9:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  4022d0:	ff 
  4022d1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4022d5:	48 83 c0 10          	add    $0x10,%rax
  4022d9:	48 85 d2             	test   %rdx,%rdx
  4022dc:	75 e2                	jne    4022c0 <__init_libc+0x80>
  4022de:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  4022e5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4022e9:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  4022f0:	48 89 0d 51 7e 00 00 	mov    %rcx,0x7e51(%rip)        # 40a148 <__hwcap>
  4022f7:	48 85 c0             	test   %rax,%rax
  4022fa:	74 07                	je     402303 <__init_libc+0xc3>
  4022fc:	48 89 05 2d 7e 00 00 	mov    %rax,0x7e2d(%rip)        # 40a130 <__sysinfo>
  402303:	48 89 15 86 7e 00 00 	mov    %rdx,0x7e86(%rip)        # 40a190 <__libc+0x30>
  40230a:	48 85 f6             	test   %rsi,%rsi
  40230d:	0f 84 15 01 00 00    	je     402428 <__init_libc+0x1e8>
  402313:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  40231a:	48 c7 c1 40 a1 40 00 	mov    $0x40a140,%rcx
  402321:	48 89 30             	mov    %rsi,(%rax)
  402324:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402328:	48 89 31             	mov    %rsi,(%rcx)
  40232b:	0f b6 16             	movzbl (%rsi),%edx
  40232e:	84 d2                	test   %dl,%dl
  402330:	74 21                	je     402353 <__init_libc+0x113>
  402332:	0f 1f 00             	nopl   (%rax)
  402335:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40233c:	00 00 00 00 
  402340:	80 fa 2f             	cmp    $0x2f,%dl
  402343:	75 03                	jne    402348 <__init_libc+0x108>
  402345:	48 89 01             	mov    %rax,(%rcx)
  402348:	0f b6 10             	movzbl (%rax),%edx
  40234b:	48 83 c0 01          	add    $0x1,%rax
  40234f:	84 d2                	test   %dl,%dl
  402351:	75 ed                	jne    402340 <__init_libc+0x100>
  402353:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40235a:	e8 f1 38 00 00       	call   405c50 <__init_tls>
  40235f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  402363:	e8 e8 01 00 00       	call   402550 <__init_ssp>
  402368:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  40236f:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  402376:	0f 84 84 00 00 00    	je     402400 <__init_libc+0x1c0>
  40237c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402380:	b8 07 00 00 00       	mov    $0x7,%eax
  402385:	be 03 00 00 00       	mov    $0x3,%esi
  40238a:	31 d2                	xor    %edx,%edx
  40238c:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  402393:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  40239a:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4023a1:	00 00 00 00 
  4023a5:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  4023ac:	00 00 00 
  4023af:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  4023b6:	00 00 00 
  4023b9:	0f 05                	syscall
  4023bb:	85 c0                	test   %eax,%eax
  4023bd:	79 01                	jns    4023c0 <__init_libc+0x180>
  4023bf:	f4                   	hlt
  4023c0:	48 89 fa             	mov    %rdi,%rdx
  4023c3:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  4023ca:	be 02 80 00 00       	mov    $0x8002,%esi
  4023cf:	48 8d 3d 61 4d 00 00 	lea    0x4d61(%rip),%rdi        # 407137 <_fini+0x213>
  4023d6:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  4023da:	74 0d                	je     4023e9 <__init_libc+0x1a9>
  4023dc:	b8 02 00 00 00       	mov    $0x2,%eax
  4023e1:	0f 05                	syscall
  4023e3:	48 85 c0             	test   %rax,%rax
  4023e6:	79 01                	jns    4023e9 <__init_libc+0x1a9>
  4023e8:	f4                   	hlt
  4023e9:	48 83 c2 08          	add    $0x8,%rdx
  4023ed:	4c 39 c2             	cmp    %r8,%rdx
  4023f0:	75 e4                	jne    4023d6 <__init_libc+0x196>
  4023f2:	c6 05 69 7d 00 00 01 	movb   $0x1,0x7d69(%rip)        # 40a162 <__libc+0x2>
  4023f9:	c9                   	leave
  4023fa:	c3                   	ret
  4023fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402400:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402407:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40240e:	0f 85 68 ff ff ff    	jne    40237c <__init_libc+0x13c>
  402414:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402419:	0f 85 5d ff ff ff    	jne    40237c <__init_libc+0x13c>
  40241f:	c9                   	leave
  402420:	c3                   	ret
  402421:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402428:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40242c:	48 85 c0             	test   %rax,%rax
  40242f:	74 2f                	je     402460 <__init_libc+0x220>
  402431:	48 89 c6             	mov    %rax,%rsi
  402434:	e9 da fe ff ff       	jmp    402313 <__init_libc+0xd3>
  402439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402440:	b8 08 00 00 00       	mov    $0x8,%eax
  402445:	e9 4c fe ff ff       	jmp    402296 <__init_libc+0x56>
  40244a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402450:	48 c7 05 ed 7c 00 00 	movq   $0x0,0x7ced(%rip)        # 40a148 <__hwcap>
  402457:	00 00 00 00 
  40245b:	e9 a3 fe ff ff       	jmp    402303 <__init_libc+0xc3>
  402460:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  402467:	48 8d 3d 08 4d 00 00 	lea    0x4d08(%rip),%rdi        # 407176 <_fini+0x252>
  40246e:	48 89 38             	mov    %rdi,(%rax)
  402471:	48 c7 c0 40 a1 40 00 	mov    $0x40a140,%rax
  402478:	48 89 38             	mov    %rdi,(%rax)
  40247b:	e9 d3 fe ff ff       	jmp    402353 <__init_libc+0x113>

0000000000402480 <__libc_start_init>:
  402480:	f3 0f 1e fa          	endbr64
  402484:	55                   	push   %rbp
  402485:	48 89 e5             	mov    %rsp,%rbp
  402488:	41 54                	push   %r12
  40248a:	53                   	push   %rbx
  40248b:	e8 70 eb ff ff       	call   401000 <_init>
  402490:	48 c7 c3 c0 9f 40 00 	mov    $0x409fc0,%rbx
  402497:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  40249e:	4c 39 e3             	cmp    %r12,%rbx
  4024a1:	73 18                	jae    4024bb <__libc_start_init+0x3b>
  4024a3:	66 90                	xchg   %ax,%ax
  4024a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4024ac:	00 00 00 00 
  4024b0:	ff 13                	call   *(%rbx)
  4024b2:	48 83 c3 08          	add    $0x8,%rbx
  4024b6:	4c 39 e3             	cmp    %r12,%rbx
  4024b9:	72 f5                	jb     4024b0 <__libc_start_init+0x30>
  4024bb:	5b                   	pop    %rbx
  4024bc:	41 5c                	pop    %r12
  4024be:	5d                   	pop    %rbp
  4024bf:	c3                   	ret

00000000004024c0 <libc_start_main_stage2>:
  4024c0:	f3 0f 1e fa          	endbr64
  4024c4:	55                   	push   %rbp
  4024c5:	48 63 c6             	movslq %esi,%rax
  4024c8:	48 89 e5             	mov    %rsp,%rbp
  4024cb:	41 56                	push   %r14
  4024cd:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  4024d2:	41 55                	push   %r13
  4024d4:	49 89 fd             	mov    %rdi,%r13
  4024d7:	41 54                	push   %r12
  4024d9:	49 89 d4             	mov    %rdx,%r12
  4024dc:	53                   	push   %rbx
  4024dd:	48 89 c3             	mov    %rax,%rbx
  4024e0:	e8 9b ff ff ff       	call   402480 <__libc_start_init>
  4024e5:	89 df                	mov    %ebx,%edi
  4024e7:	4c 89 f2             	mov    %r14,%rdx
  4024ea:	4c 89 e6             	mov    %r12,%rsi
  4024ed:	41 ff d5             	call   *%r13
  4024f0:	89 c7                	mov    %eax,%edi
  4024f2:	e8 49 eb ff ff       	call   401040 <exit>
  4024f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4024fe:	00 00 

0000000000402500 <__libc_start_main>:
  402500:	f3 0f 1e fa          	endbr64
  402504:	55                   	push   %rbp
  402505:	48 63 c6             	movslq %esi,%rax
  402508:	48 89 e5             	mov    %rsp,%rbp
  40250b:	41 54                	push   %r12
  40250d:	49 89 fc             	mov    %rdi,%r12
  402510:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402515:	53                   	push   %rbx
  402516:	48 89 c3             	mov    %rax,%rbx
  402519:	48 83 ec 10          	sub    $0x10,%rsp
  40251d:	48 8b 32             	mov    (%rdx),%rsi
  402520:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402524:	e8 17 fd ff ff       	call   402240 <__init_libc>
  402529:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 4024c0 <libc_start_main_stage2>
  402530:	89 de                	mov    %ebx,%esi
  402532:	4c 89 e7             	mov    %r12,%rdi
  402535:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402539:	48 83 c4 10          	add    $0x10,%rsp
  40253d:	5b                   	pop    %rbx
  40253e:	41 5c                	pop    %r12
  402540:	5d                   	pop    %rbp
  402541:	ff e0                	jmp    *%rax
  402543:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40254a:	00 00 00 
  40254d:	0f 1f 00             	nopl   (%rax)

0000000000402550 <__init_ssp>:
  402550:	f3 0f 1e fa          	endbr64
  402554:	55                   	push   %rbp
  402555:	48 89 e5             	mov    %rsp,%rbp
  402558:	48 83 ec 10          	sub    $0x10,%rsp
  40255c:	48 85 ff             	test   %rdi,%rdi
  40255f:	74 3f                	je     4025a0 <__init_ssp+0x50>
  402561:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  402568:	48 89 fe             	mov    %rdi,%rsi
  40256b:	ba 08 00 00 00       	mov    $0x8,%edx
  402570:	48 89 cf             	mov    %rcx,%rdi
  402573:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  402577:	e8 b1 34 00 00       	call   405a2d <memcpy>
  40257c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402580:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  402584:	48 8b 11             	mov    (%rcx),%rdx
  402587:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40258e:	00 00 
  402590:	48 89 50 28          	mov    %rdx,0x28(%rax)
  402594:	c9                   	leave
  402595:	c3                   	ret
  402596:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40259d:	00 00 00 
  4025a0:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  4025a7:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  4025ae:	48 89 01             	mov    %rax,(%rcx)
  4025b1:	eb cd                	jmp    402580 <__init_ssp+0x30>
  4025b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025ba:	00 00 00 
  4025bd:	0f 1f 00             	nopl   (%rax)

00000000004025c0 <__stack_chk_fail>:
  4025c0:	f3 0f 1e fa          	endbr64
  4025c4:	f4                   	hlt
  4025c5:	c3                   	ret
  4025c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025cd:	00 00 00 

00000000004025d0 <__funcs_on_exit>:
  4025d0:	f3 0f 1e fa          	endbr64
  4025d4:	c3                   	ret
  4025d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025dc:	00 00 00 
  4025df:	90                   	nop

00000000004025e0 <__libc_exit_fini>:
  4025e0:	f3 0f 1e fa          	endbr64
  4025e4:	55                   	push   %rbp
  4025e5:	48 89 e5             	mov    %rsp,%rbp
  4025e8:	41 54                	push   %r12
  4025ea:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  4025f1:	53                   	push   %rbx
  4025f2:	48 c7 c3 d0 9f 40 00 	mov    $0x409fd0,%rbx
  4025f9:	49 39 dc             	cmp    %rbx,%r12
  4025fc:	73 0f                	jae    40260d <__libc_exit_fini+0x2d>
  4025fe:	66 90                	xchg   %ax,%ax
  402600:	48 83 eb 08          	sub    $0x8,%rbx
  402604:	31 c0                	xor    %eax,%eax
  402606:	ff 13                	call   *(%rbx)
  402608:	49 39 dc             	cmp    %rbx,%r12
  40260b:	72 f3                	jb     402600 <__libc_exit_fini+0x20>
  40260d:	5b                   	pop    %rbx
  40260e:	31 c0                	xor    %eax,%eax
  402610:	41 5c                	pop    %r12
  402612:	5d                   	pop    %rbp
  402613:	e9 0c 49 00 00       	jmp    406f24 <_fini>
  402618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40261f:	00 

0000000000402620 <printf>:
  402620:	f3 0f 1e fa          	endbr64
  402624:	55                   	push   %rbp
  402625:	48 89 e5             	mov    %rsp,%rbp
  402628:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40262f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402636:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40263d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402644:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40264b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402652:	84 c0                	test   %al,%al
  402654:	74 20                	je     402676 <printf+0x56>
  402656:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40265a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40265e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402662:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402666:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  40266a:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  40266e:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402672:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402676:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40267d:	00 00 
  40267f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402686:	31 c0                	xor    %eax,%eax
  402688:	48 8d 45 10          	lea    0x10(%rbp),%rax
  40268c:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402693:	48 89 fe             	mov    %rdi,%rsi
  402696:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40269d:	48 8d 3d 7c 79 00 00 	lea    0x797c(%rip),%rdi        # 40a020 <__stdout_FILE>
  4026a4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4026ab:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  4026b2:	00 00 00 
  4026b5:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4026bc:	00 00 00 
  4026bf:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4026c6:	e8 c5 30 00 00       	call   405790 <vfprintf>
  4026cb:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4026d2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4026d9:	00 00 
  4026db:	75 02                	jne    4026df <printf+0xbf>
  4026dd:	c9                   	leave
  4026de:	c3                   	ret
  4026df:	e8 dc fe ff ff       	call   4025c0 <__stack_chk_fail>
  4026e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026eb:	00 00 00 
  4026ee:	66 90                	xchg   %ax,%ax

00000000004026f0 <puts>:
  4026f0:	f3 0f 1e fa          	endbr64
  4026f4:	55                   	push   %rbp
  4026f5:	48 89 e5             	mov    %rsp,%rbp
  4026f8:	53                   	push   %rbx
  4026f9:	48 83 ec 18          	sub    $0x18,%rsp
  4026fd:	8b 05 a9 79 00 00    	mov    0x79a9(%rip),%eax        # 40a0ac <__stdout_FILE+0x8c>
  402703:	85 c0                	test   %eax,%eax
  402705:	79 61                	jns    402768 <puts+0x78>
  402707:	48 8d 35 12 79 00 00 	lea    0x7912(%rip),%rsi        # 40a020 <__stdout_FILE>
  40270e:	e8 ad 3c 00 00       	call   4063c0 <fputs>
  402713:	85 c0                	test   %eax,%eax
  402715:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40271a:	78 41                	js     40275d <puts+0x6d>
  40271c:	31 db                	xor    %ebx,%ebx
  40271e:	83 3d 8b 79 00 00 0a 	cmpl   $0xa,0x798b(%rip)        # 40a0b0 <__stdout_FILE+0x90>
  402725:	74 79                	je     4027a0 <puts+0xb0>
  402727:	48 8b 05 1a 79 00 00 	mov    0x791a(%rip),%rax        # 40a048 <__stdout_FILE+0x28>
  40272e:	48 3b 05 0b 79 00 00 	cmp    0x790b(%rip),%rax        # 40a040 <__stdout_FILE+0x20>
  402735:	74 69                	je     4027a0 <puts+0xb0>
  402737:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40273b:	48 89 15 06 79 00 00 	mov    %rdx,0x7906(%rip)        # 40a048 <__stdout_FILE+0x28>
  402742:	c6 00 0a             	movb   $0xa,(%rax)
  402745:	31 c0                	xor    %eax,%eax
  402747:	85 db                	test   %ebx,%ebx
  402749:	74 12                	je     40275d <puts+0x6d>
  40274b:	48 8d 3d ce 78 00 00 	lea    0x78ce(%rip),%rdi        # 40a020 <__stdout_FILE>
  402752:	89 45 e8             	mov    %eax,-0x18(%rbp)
  402755:	e8 26 3a 00 00       	call   406180 <__unlockfile>
  40275a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40275d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402761:	c9                   	leave
  402762:	c3                   	ret
  402763:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402768:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40276c:	48 8d 3d ad 78 00 00 	lea    0x78ad(%rip),%rdi        # 40a020 <__stdout_FILE>
  402773:	e8 48 39 00 00       	call   4060c0 <__lockfile>
  402778:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40277c:	48 8d 35 9d 78 00 00 	lea    0x789d(%rip),%rsi        # 40a020 <__stdout_FILE>
  402783:	89 c3                	mov    %eax,%ebx
  402785:	e8 36 3c 00 00       	call   4063c0 <fputs>
  40278a:	85 c0                	test   %eax,%eax
  40278c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402791:	78 b4                	js     402747 <puts+0x57>
  402793:	83 3d 16 79 00 00 0a 	cmpl   $0xa,0x7916(%rip)        # 40a0b0 <__stdout_FILE+0x90>
  40279a:	75 8b                	jne    402727 <puts+0x37>
  40279c:	0f 1f 40 00          	nopl   0x0(%rax)
  4027a0:	be 0a 00 00 00       	mov    $0xa,%esi
  4027a5:	48 8d 3d 74 78 00 00 	lea    0x7874(%rip),%rdi        # 40a020 <__stdout_FILE>
  4027ac:	e8 1f 3a 00 00       	call   4061d0 <__overflow>
  4027b1:	c1 f8 1f             	sar    $0x1f,%eax
  4027b4:	eb 91                	jmp    402747 <puts+0x57>
  4027b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027bd:	00 00 00 

00000000004027c0 <sprintf>:
  4027c0:	f3 0f 1e fa          	endbr64
  4027c4:	55                   	push   %rbp
  4027c5:	48 89 e5             	mov    %rsp,%rbp
  4027c8:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  4027cf:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  4027d6:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  4027dd:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4027e4:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  4027eb:	84 c0                	test   %al,%al
  4027ed:	74 20                	je     40280f <sprintf+0x4f>
  4027ef:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  4027f3:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  4027f7:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  4027fb:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  4027ff:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402803:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402807:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  40280b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  40280f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402816:	00 00 
  402818:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40281f:	31 c0                	xor    %eax,%eax
  402821:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402825:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  40282c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402833:	00 00 00 
  402836:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40283d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402844:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40284b:	00 00 00 
  40284e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402855:	e8 66 31 00 00       	call   4059c0 <vsprintf>
  40285a:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402861:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402868:	00 00 
  40286a:	75 02                	jne    40286e <sprintf+0xae>
  40286c:	c9                   	leave
  40286d:	c3                   	ret
  40286e:	e8 4d fd ff ff       	call   4025c0 <__stack_chk_fail>
  402873:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40287a:	00 00 00 
  40287d:	0f 1f 00             	nopl   (%rax)

0000000000402880 <pop_arg>:
  402880:	83 ee 09             	sub    $0x9,%esi
  402883:	83 fe 11             	cmp    $0x11,%esi
  402886:	77 50                	ja     4028d8 <pop_arg+0x58>
  402888:	48 8d 0d e9 48 00 00 	lea    0x48e9(%rip),%rcx        # 407178 <_fini+0x254>
  40288f:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402893:	48 01 c8             	add    %rcx,%rax
  402896:	3e ff e0             	notrack jmp *%rax
  402899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4028a0:	8b 02                	mov    (%rdx),%eax
  4028a2:	83 f8 2f             	cmp    $0x2f,%eax
  4028a5:	77 39                	ja     4028e0 <pop_arg+0x60>
  4028a7:	89 c1                	mov    %eax,%ecx
  4028a9:	83 c0 08             	add    $0x8,%eax
  4028ac:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4028b0:	89 02                	mov    %eax,(%rdx)
  4028b2:	48 8b 01             	mov    (%rcx),%rax
  4028b5:	48 89 07             	mov    %rax,(%rdi)
  4028b8:	c3                   	ret
  4028b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4028c0:	48 8b 42 08          	mov    0x8(%rdx),%rax
  4028c4:	48 83 c0 0f          	add    $0xf,%rax
  4028c8:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4028cc:	48 8d 48 10          	lea    0x10(%rax),%rcx
  4028d0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  4028d4:	db 28                	fldt   (%rax)
  4028d6:	db 3f                	fstpt  (%rdi)
  4028d8:	c3                   	ret
  4028d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4028e0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4028e4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  4028e8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4028ec:	48 8b 01             	mov    (%rcx),%rax
  4028ef:	48 89 07             	mov    %rax,(%rdi)
  4028f2:	c3                   	ret
  4028f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4028f8:	8b 02                	mov    (%rdx),%eax
  4028fa:	83 f8 2f             	cmp    $0x2f,%eax
  4028fd:	0f 87 55 01 00 00    	ja     402a58 <pop_arg+0x1d8>
  402903:	89 c1                	mov    %eax,%ecx
  402905:	83 c0 08             	add    $0x8,%eax
  402908:	48 03 4a 10          	add    0x10(%rdx),%rcx
  40290c:	89 02                	mov    %eax,(%rdx)
  40290e:	0f b7 01             	movzwl (%rcx),%eax
  402911:	48 89 07             	mov    %rax,(%rdi)
  402914:	c3                   	ret
  402915:	0f 1f 00             	nopl   (%rax)
  402918:	8b 42 04             	mov    0x4(%rdx),%eax
  40291b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402920:	0f 87 1a 01 00 00    	ja     402a40 <pop_arg+0x1c0>
  402926:	89 c1                	mov    %eax,%ecx
  402928:	83 c0 10             	add    $0x10,%eax
  40292b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  40292f:	89 42 04             	mov    %eax,0x4(%rdx)
  402932:	dd 01                	fldl   (%rcx)
  402934:	db 3f                	fstpt  (%rdi)
  402936:	c3                   	ret
  402937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40293e:	00 00 
  402940:	8b 02                	mov    (%rdx),%eax
  402942:	83 f8 2f             	cmp    $0x2f,%eax
  402945:	0f 87 dd 00 00 00    	ja     402a28 <pop_arg+0x1a8>
  40294b:	89 c1                	mov    %eax,%ecx
  40294d:	83 c0 08             	add    $0x8,%eax
  402950:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402954:	89 02                	mov    %eax,(%rdx)
  402956:	48 63 01             	movslq (%rcx),%rax
  402959:	48 89 07             	mov    %rax,(%rdi)
  40295c:	c3                   	ret
  40295d:	0f 1f 00             	nopl   (%rax)
  402960:	8b 02                	mov    (%rdx),%eax
  402962:	83 f8 2f             	cmp    $0x2f,%eax
  402965:	0f 87 a5 00 00 00    	ja     402a10 <pop_arg+0x190>
  40296b:	89 c1                	mov    %eax,%ecx
  40296d:	83 c0 08             	add    $0x8,%eax
  402970:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402974:	89 02                	mov    %eax,(%rdx)
  402976:	8b 01                	mov    (%rcx),%eax
  402978:	48 89 07             	mov    %rax,(%rdi)
  40297b:	c3                   	ret
  40297c:	0f 1f 40 00          	nopl   0x0(%rax)
  402980:	8b 02                	mov    (%rdx),%eax
  402982:	83 f8 2f             	cmp    $0x2f,%eax
  402985:	77 79                	ja     402a00 <pop_arg+0x180>
  402987:	89 c1                	mov    %eax,%ecx
  402989:	83 c0 08             	add    $0x8,%eax
  40298c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402990:	89 02                	mov    %eax,(%rdx)
  402992:	0f b6 01             	movzbl (%rcx),%eax
  402995:	48 89 07             	mov    %rax,(%rdi)
  402998:	c3                   	ret
  402999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029a0:	8b 02                	mov    (%rdx),%eax
  4029a2:	83 f8 2f             	cmp    $0x2f,%eax
  4029a5:	77 49                	ja     4029f0 <pop_arg+0x170>
  4029a7:	89 c1                	mov    %eax,%ecx
  4029a9:	83 c0 08             	add    $0x8,%eax
  4029ac:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4029b0:	89 02                	mov    %eax,(%rdx)
  4029b2:	48 0f be 01          	movsbq (%rcx),%rax
  4029b6:	48 89 07             	mov    %rax,(%rdi)
  4029b9:	c3                   	ret
  4029ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4029c0:	8b 02                	mov    (%rdx),%eax
  4029c2:	83 f8 2f             	cmp    $0x2f,%eax
  4029c5:	77 19                	ja     4029e0 <pop_arg+0x160>
  4029c7:	89 c1                	mov    %eax,%ecx
  4029c9:	83 c0 08             	add    $0x8,%eax
  4029cc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4029d0:	89 02                	mov    %eax,(%rdx)
  4029d2:	48 0f bf 01          	movswq (%rcx),%rax
  4029d6:	48 89 07             	mov    %rax,(%rdi)
  4029d9:	c3                   	ret
  4029da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4029e0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4029e4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  4029e8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4029ec:	eb e4                	jmp    4029d2 <pop_arg+0x152>
  4029ee:	66 90                	xchg   %ax,%ax
  4029f0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4029f4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  4029f8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4029fc:	eb b4                	jmp    4029b2 <pop_arg+0x132>
  4029fe:	66 90                	xchg   %ax,%ax
  402a00:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a04:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a08:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a0c:	eb 84                	jmp    402992 <pop_arg+0x112>
  402a0e:	66 90                	xchg   %ax,%ax
  402a10:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a14:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a18:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a1c:	e9 55 ff ff ff       	jmp    402976 <pop_arg+0xf6>
  402a21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a28:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a2c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a30:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a34:	e9 1d ff ff ff       	jmp    402956 <pop_arg+0xd6>
  402a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a4c:	e9 e1 fe ff ff       	jmp    402932 <pop_arg+0xb2>
  402a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a58:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a5c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a60:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a64:	e9 a5 fe ff ff       	jmp    40290e <pop_arg+0x8e>
  402a69:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402a70:	00 00 00 
  402a73:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402a7a:	00 00 00 
  402a7d:	0f 1f 00             	nopl   (%rax)

0000000000402a80 <pad.part.0>:
  402a80:	55                   	push   %rbp
  402a81:	29 ca                	sub    %ecx,%edx
  402a83:	40 0f be f6          	movsbl %sil,%esi
  402a87:	48 89 e5             	mov    %rsp,%rbp
  402a8a:	41 56                	push   %r14
  402a8c:	41 55                	push   %r13
  402a8e:	41 54                	push   %r12
  402a90:	4c 63 e2             	movslq %edx,%r12
  402a93:	ba 00 01 00 00       	mov    $0x100,%edx
  402a98:	53                   	push   %rbx
  402a99:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402aa0:	41 39 d4             	cmp    %edx,%r12d
  402aa3:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402aaa:	00 00 
  402aac:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402ab0:	49 89 fd             	mov    %rdi,%r13
  402ab3:	49 0f 4e d4          	cmovle %r12,%rdx
  402ab7:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402abe:	e8 9c 2f 00 00       	call   405a5f <memset>
  402ac3:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402aca:	0f 8e 88 00 00 00    	jle    402b58 <pad.part.0+0xd8>
  402ad0:	41 8b 45 00          	mov    0x0(%r13),%eax
  402ad4:	44 89 e3             	mov    %r12d,%ebx
  402ad7:	eb 15                	jmp    402aee <pad.part.0+0x6e>
  402ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ae0:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402ae6:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402aec:	76 2a                	jbe    402b18 <pad.part.0+0x98>
  402aee:	a8 20                	test   $0x20,%al
  402af0:	75 ee                	jne    402ae0 <pad.part.0+0x60>
  402af2:	4c 89 ea             	mov    %r13,%rdx
  402af5:	be 00 01 00 00       	mov    $0x100,%esi
  402afa:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402b01:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402b07:	e8 04 39 00 00       	call   406410 <__fwritex>
  402b0c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402b10:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402b16:	77 d6                	ja     402aee <pad.part.0+0x6e>
  402b18:	45 0f b6 e4          	movzbl %r12b,%r12d
  402b1c:	a8 20                	test   $0x20,%al
  402b1e:	74 20                	je     402b40 <pad.part.0+0xc0>
  402b20:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402b24:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402b2b:	00 00 
  402b2d:	75 2f                	jne    402b5e <pad.part.0+0xde>
  402b2f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402b36:	5b                   	pop    %rbx
  402b37:	41 5c                	pop    %r12
  402b39:	41 5d                	pop    %r13
  402b3b:	41 5e                	pop    %r14
  402b3d:	5d                   	pop    %rbp
  402b3e:	c3                   	ret
  402b3f:	90                   	nop
  402b40:	49 63 f4             	movslq %r12d,%rsi
  402b43:	4c 89 ea             	mov    %r13,%rdx
  402b46:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402b4d:	e8 be 38 00 00       	call   406410 <__fwritex>
  402b52:	eb cc                	jmp    402b20 <pad.part.0+0xa0>
  402b54:	0f 1f 40 00          	nopl   0x0(%rax)
  402b58:	41 8b 45 00          	mov    0x0(%r13),%eax
  402b5c:	eb be                	jmp    402b1c <pad.part.0+0x9c>
  402b5e:	e8 5d fa ff ff       	call   4025c0 <__stack_chk_fail>
  402b63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402b6a:	00 00 00 
  402b6d:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402b74:	00 00 00 
  402b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402b7e:	00 00 

0000000000402b80 <fmt_fp>:
  402b80:	55                   	push   %rbp
  402b81:	48 89 e5             	mov    %rsp,%rbp
  402b84:	41 57                	push   %r15
  402b86:	41 56                	push   %r14
  402b88:	41 55                	push   %r13
  402b8a:	41 54                	push   %r12
  402b8c:	53                   	push   %rbx
  402b8d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402b94:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402b99:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402ba0:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402ba7:	41 89 d7             	mov    %edx,%r15d
  402baa:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402bb0:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402bb6:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402bbd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402bc4:	00 00 
  402bc6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402bca:	31 c0                	xor    %eax,%eax
  402bcc:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402bd3:	00 00 00 
  402bd6:	ff 75 18             	push   0x18(%rbp)
  402bd9:	ff 75 10             	push   0x10(%rbp)
  402bdc:	e8 ef 33 00 00       	call   405fd0 <__signbitl>
  402be1:	41 5d                	pop    %r13
  402be3:	41 5e                	pop    %r14
  402be5:	85 c0                	test   %eax,%eax
  402be7:	0f 84 8b 00 00 00    	je     402c78 <fmt_fp+0xf8>
  402bed:	db 6d 10             	fldt   0x10(%rbp)
  402bf0:	48 8d 05 4a 45 00 00 	lea    0x454a(%rip),%rax        # 407141 <_fini+0x21d>
  402bf7:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402bfe:	00 00 00 
  402c01:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402c08:	d9 e0                	fchs
  402c0a:	db 7d 10             	fstpt  0x10(%rbp)
  402c0d:	ff 75 18             	push   0x18(%rbp)
  402c10:	ff 75 10             	push   0x10(%rbp)
  402c13:	e8 48 33 00 00       	call   405f60 <__fpclassifyl>
  402c18:	5b                   	pop    %rbx
  402c19:	41 5c                	pop    %r12
  402c1b:	83 f8 01             	cmp    $0x1,%eax
  402c1e:	0f 8e bc 04 00 00    	jle    4030e0 <fmt_fp+0x560>
  402c24:	ff 75 18             	push   0x18(%rbp)
  402c27:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402c2e:	ff 75 10             	push   0x10(%rbp)
  402c31:	e8 ba 33 00 00       	call   405ff0 <frexpl>
  402c36:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402c3d:	41 5a                	pop    %r10
  402c3f:	d8 c0                	fadd   %st(0),%st
  402c41:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402c48:	41 5b                	pop    %r11
  402c4a:	41 83 ce 20          	or     $0x20,%r14d
  402c4e:	d9 ee                	fldz
  402c50:	d9 c9                	fxch   %st(1)
  402c52:	db e9                	fucomi %st(1),%st
  402c54:	dd d9                	fstp   %st(1)
  402c56:	7a 58                	jp     402cb0 <fmt_fp+0x130>
  402c58:	75 56                	jne    402cb0 <fmt_fp+0x130>
  402c5a:	41 83 fe 61          	cmp    $0x61,%r14d
  402c5e:	0f 84 37 06 00 00    	je     40329b <fmt_fp+0x71b>
  402c64:	45 85 ff             	test   %r15d,%r15d
  402c67:	0f 88 84 13 00 00    	js     403ff1 <fmt_fp+0x1471>
  402c6d:	40 0f 95 c6          	setne  %sil
  402c71:	eb 65                	jmp    402cd8 <fmt_fp+0x158>
  402c73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402c78:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402c7e:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402c84:	0f 84 2c 04 00 00    	je     4030b6 <fmt_fp+0x536>
  402c8a:	48 8d 05 b3 44 00 00 	lea    0x44b3(%rip),%rax        # 407144 <_fini+0x220>
  402c91:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402c98:	00 00 00 
  402c9b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402ca2:	e9 66 ff ff ff       	jmp    402c0d <fmt_fp+0x8d>
  402ca7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402cae:	00 00 
  402cb0:	41 83 fe 61          	cmp    $0x61,%r14d
  402cb4:	0f 84 d6 05 00 00    	je     403290 <fmt_fp+0x710>
  402cba:	45 85 ff             	test   %r15d,%r15d
  402cbd:	0f 88 3e 13 00 00    	js     404001 <fmt_fp+0x1481>
  402cc3:	40 0f 95 c6          	setne  %sil
  402cc7:	41 83 e9 1d          	sub    $0x1d,%r9d
  402ccb:	d8 0d f3 47 00 00    	fmuls  0x47f3(%rip)        # 4074c4 <states+0x1e4>
  402cd1:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402cd8:	45 85 c9             	test   %r9d,%r9d
  402cdb:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402ce2:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402ce9:	d9 05 d9 47 00 00    	flds   0x47d9(%rip)        # 4074c8 <states+0x1e8>
  402cef:	d9 c9                	fxch   %st(1)
  402cf1:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402cf7:	48 0f 49 c2          	cmovns %rdx,%rax
  402cfb:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402d02:	48 89 c3             	mov    %rax,%rbx
  402d05:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402d0c:	80 cc 0c             	or     $0xc,%ah
  402d0f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402d16:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402d1d:	00 00 
  402d1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d26:	00 00 00 00 
  402d2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d31:	00 00 00 00 
  402d35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d3c:	00 00 00 00 
  402d40:	d9 c0                	fld    %st(0)
  402d42:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402d48:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402d4e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402d54:	48 83 c3 04          	add    $0x4,%rbx
  402d58:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402d5f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402d62:	89 c0                	mov    %eax,%eax
  402d64:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402d6b:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402d71:	de e9                	fsubrp %st,%st(1)
  402d73:	d8 c9                	fmul   %st(1),%st
  402d75:	d9 ee                	fldz
  402d77:	d9 c9                	fxch   %st(1)
  402d79:	db e9                	fucomi %st(1),%st
  402d7b:	dd d9                	fstp   %st(1)
  402d7d:	7a c1                	jp     402d40 <fmt_fp+0x1c0>
  402d7f:	75 bf                	jne    402d40 <fmt_fp+0x1c0>
  402d81:	dd d8                	fstp   %st(0)
  402d83:	dd d8                	fstp   %st(0)
  402d85:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402d8c:	45 85 c9             	test   %r9d,%r9d
  402d8f:	0f 8e b0 00 00 00    	jle    402e45 <fmt_fp+0x2c5>
  402d95:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402d9c:	b8 44 00 
  402d9f:	90                   	nop
  402da0:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402da5:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402da9:	41 39 c9             	cmp    %ecx,%r9d
  402dac:	41 0f 4e c9          	cmovle %r9d,%ecx
  402db0:	4d 39 e2             	cmp    %r12,%r10
  402db3:	72 4b                	jb     402e00 <fmt_fp+0x280>
  402db5:	31 c0                	xor    %eax,%eax
  402db7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402dbe:	00 00 
  402dc0:	45 8b 02             	mov    (%r10),%r8d
  402dc3:	49 83 ea 04          	sub    $0x4,%r10
  402dc7:	49 d3 e0             	shl    %cl,%r8
  402dca:	49 01 c0             	add    %rax,%r8
  402dcd:	4c 89 c2             	mov    %r8,%rdx
  402dd0:	48 c1 ea 09          	shr    $0x9,%rdx
  402dd4:	48 89 d0             	mov    %rdx,%rax
  402dd7:	48 f7 e7             	mul    %rdi
  402dda:	48 c1 ea 0b          	shr    $0xb,%rdx
  402dde:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402de5:	49 29 c0             	sub    %rax,%r8
  402de8:	89 d0                	mov    %edx,%eax
  402dea:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402dee:	4d 39 e2             	cmp    %r12,%r10
  402df1:	73 cd                	jae    402dc0 <fmt_fp+0x240>
  402df3:	85 d2                	test   %edx,%edx
  402df5:	74 09                	je     402e00 <fmt_fp+0x280>
  402df7:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402dfc:	49 83 ec 04          	sub    $0x4,%r12
  402e00:	49 39 dc             	cmp    %rbx,%r12
  402e03:	72 24                	jb     402e29 <fmt_fp+0x2a9>
  402e05:	eb 2b                	jmp    402e32 <fmt_fp+0x2b2>
  402e07:	0f 1f 00             	nopl   (%rax)
  402e0a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e11:	00 00 00 00 
  402e15:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e1c:	00 00 00 00 
  402e20:	48 83 eb 04          	sub    $0x4,%rbx
  402e24:	49 39 dc             	cmp    %rbx,%r12
  402e27:	73 09                	jae    402e32 <fmt_fp+0x2b2>
  402e29:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  402e2d:	45 85 c0             	test   %r8d,%r8d
  402e30:	74 ee                	je     402e20 <fmt_fp+0x2a0>
  402e32:	41 29 c9             	sub    %ecx,%r9d
  402e35:	45 85 c9             	test   %r9d,%r9d
  402e38:	0f 8f 62 ff ff ff    	jg     402da0 <fmt_fp+0x220>
  402e3e:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402e45:	45 85 c9             	test   %r9d,%r9d
  402e48:	0f 84 35 01 00 00    	je     402f83 <fmt_fp+0x403>
  402e4e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  402e52:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  402e59:	41 89 f0             	mov    %esi,%r8d
  402e5c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  402e63:	48 c1 e8 21          	shr    $0x21,%rax
  402e67:	48 8d 78 01          	lea    0x1(%rax),%rdi
  402e6b:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  402e72:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  402e79:	00 
  402e7a:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  402e81:	0f 1f 40 00          	nopl   0x0(%rax)
  402e85:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e8c:	00 00 00 00 
  402e90:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  402e94:	0f 8d d6 06 00 00    	jge    403570 <fmt_fp+0x9f0>
  402e9a:	41 83 c1 09          	add    $0x9,%r9d
  402e9e:	b9 09 00 00 00       	mov    $0x9,%ecx
  402ea3:	49 39 dc             	cmp    %rbx,%r12
  402ea6:	0f 83 d5 06 00 00    	jae    403581 <fmt_fp+0xa01>
  402eac:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  402eb2:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  402eb9:	4c 89 e6             	mov    %r12,%rsi
  402ebc:	31 d2                	xor    %edx,%edx
  402ebe:	41 d3 e2             	shl    %cl,%r10d
  402ec1:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  402ec7:	41 83 ea 01          	sub    $0x1,%r10d
  402ecb:	41 d3 ff             	sar    %cl,%r15d
  402ece:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402ed4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402edb:	00 00 00 00 
  402edf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ee6:	00 00 00 00 
  402eea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ef1:	00 00 00 00 
  402ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402efc:	00 00 00 00 
  402f00:	8b 06                	mov    (%rsi),%eax
  402f02:	48 83 c6 04          	add    $0x4,%rsi
  402f06:	41 89 c1             	mov    %eax,%r9d
  402f09:	44 21 d0             	and    %r10d,%eax
  402f0c:	41 0f af c7          	imul   %r15d,%eax
  402f10:	41 d3 e9             	shr    %cl,%r9d
  402f13:	41 01 d1             	add    %edx,%r9d
  402f16:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  402f1a:	89 c2                	mov    %eax,%edx
  402f1c:	48 39 de             	cmp    %rbx,%rsi
  402f1f:	72 df                	jb     402f00 <fmt_fp+0x380>
  402f21:	41 8b 0c 24          	mov    (%r12),%ecx
  402f25:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  402f2a:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  402f31:	85 c9                	test   %ecx,%ecx
  402f33:	49 0f 45 c4          	cmovne %r12,%rax
  402f37:	85 d2                	test   %edx,%edx
  402f39:	74 06                	je     402f41 <fmt_fp+0x3c1>
  402f3b:	89 13                	mov    %edx,(%rbx)
  402f3d:	48 83 c3 04          	add    $0x4,%rbx
  402f41:	49 89 c4             	mov    %rax,%r12
  402f44:	41 83 fe 66          	cmp    $0x66,%r14d
  402f48:	0f 84 52 06 00 00    	je     4035a0 <fmt_fp+0xa20>
  402f4e:	48 89 da             	mov    %rbx,%rdx
  402f51:	48 29 c2             	sub    %rax,%rdx
  402f54:	4c 01 d8             	add    %r11,%rax
  402f57:	48 c1 fa 02          	sar    $0x2,%rdx
  402f5b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  402f62:	48 0f 4f d8          	cmovg  %rax,%rbx
  402f66:	45 85 c9             	test   %r9d,%r9d
  402f69:	0f 85 21 ff ff ff    	jne    402e90 <fmt_fp+0x310>
  402f6f:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402f76:	00 00 00 
  402f79:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  402f80:	44 89 c6             	mov    %r8d,%esi
  402f83:	49 39 dc             	cmp    %rbx,%r12
  402f86:	0f 83 5d 0b 00 00    	jae    403ae9 <fmt_fp+0xf69>
  402f8c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  402f93:	41 83 fe 66          	cmp    $0x66,%r14d
  402f97:	41 8b 14 24          	mov    (%r12),%edx
  402f9b:	0f 95 c1             	setne  %cl
  402f9e:	4c 29 e0             	sub    %r12,%rax
  402fa1:	48 c1 f8 02          	sar    $0x2,%rax
  402fa5:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  402fa8:	b8 0a 00 00 00       	mov    $0xa,%eax
  402fad:	83 fa 09             	cmp    $0x9,%edx
  402fb0:	76 1a                	jbe    402fcc <fmt_fp+0x44c>
  402fb2:	0f 1f 00             	nopl   (%rax)
  402fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fbc:	00 00 00 00 
  402fc0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  402fc3:	83 c7 01             	add    $0x1,%edi
  402fc6:	01 c0                	add    %eax,%eax
  402fc8:	39 c2                	cmp    %eax,%edx
  402fca:	73 f4                	jae    402fc0 <fmt_fp+0x440>
  402fcc:	31 d2                	xor    %edx,%edx
  402fce:	84 c9                	test   %cl,%cl
  402fd0:	44 89 f8             	mov    %r15d,%eax
  402fd3:	0f 45 d7             	cmovne %edi,%edx
  402fd6:	29 d0                	sub    %edx,%eax
  402fd8:	31 d2                	xor    %edx,%edx
  402fda:	41 83 fe 67          	cmp    $0x67,%r14d
  402fde:	0f 94 c2             	sete   %dl
  402fe1:	21 f2                	and    %esi,%edx
  402fe3:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  402fea:	29 d0                	sub    %edx,%eax
  402fec:	48 89 da             	mov    %rbx,%rdx
  402fef:	48 29 f2             	sub    %rsi,%rdx
  402ff2:	48 63 c8             	movslq %eax,%rcx
  402ff5:	48 c1 fa 02          	sar    $0x2,%rdx
  402ff9:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  402ffe:	48 39 d1             	cmp    %rdx,%rcx
  403001:	0f 8d 0f 06 00 00    	jge    403616 <fmt_fp+0xa96>
  403007:	05 00 40 02 00       	add    $0x24000,%eax
  40300c:	48 63 d0             	movslq %eax,%rdx
  40300f:	89 c1                	mov    %eax,%ecx
  403011:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403018:	c1 f9 1f             	sar    $0x1f,%ecx
  40301b:	48 c1 fa 21          	sar    $0x21,%rdx
  40301f:	29 ca                	sub    %ecx,%edx
  403021:	48 63 ca             	movslq %edx,%rcx
  403024:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  40302b:	ff 
  40302c:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  40302f:	29 c8                	sub    %ecx,%eax
  403031:	89 c2                	mov    %eax,%edx
  403033:	8d 40 01             	lea    0x1(%rax),%eax
  403036:	83 fa 08             	cmp    $0x8,%edx
  403039:	0f 84 df 13 00 00    	je     40441e <fmt_fp+0x189e>
  40303f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403044:	90                   	nop
  403045:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40304c:	00 00 00 00 
  403050:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403053:	83 c0 01             	add    $0x1,%eax
  403056:	01 c9                	add    %ecx,%ecx
  403058:	83 f8 09             	cmp    $0x9,%eax
  40305b:	75 f3                	jne    403050 <fmt_fp+0x4d0>
  40305d:	41 89 cb             	mov    %ecx,%r11d
  403060:	44 8b 16             	mov    (%rsi),%r10d
  403063:	31 d2                	xor    %edx,%edx
  403065:	44 89 d0             	mov    %r10d,%eax
  403068:	41 f7 f3             	div    %r11d
  40306b:	41 89 d1             	mov    %edx,%r9d
  40306e:	85 d2                	test   %edx,%edx
  403070:	0f 85 35 05 00 00    	jne    4035ab <fmt_fp+0xa2b>
  403076:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  40307a:	48 89 da             	mov    %rbx,%rdx
  40307d:	4c 39 c3             	cmp    %r8,%rbx
  403080:	0f 84 89 05 00 00    	je     40360f <fmt_fp+0xa8f>
  403086:	a8 01                	test   $0x1,%al
  403088:	0f 85 36 10 00 00    	jne    4040c4 <fmt_fp+0x1544>
  40308e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403094:	75 0f                	jne    4030a5 <fmt_fp+0x525>
  403096:	49 39 f4             	cmp    %rsi,%r12
  403099:	73 0a                	jae    4030a5 <fmt_fp+0x525>
  40309b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40309f:	0f 85 1f 10 00 00    	jne    4040c4 <fmt_fp+0x1544>
  4030a5:	d9 05 09 44 00 00    	flds   0x4409(%rip)        # 4074b4 <states+0x1d4>
  4030ab:	d9 05 07 44 00 00    	flds   0x4407(%rip)        # 4074b8 <states+0x1d8>
  4030b1:	e9 1d 05 00 00       	jmp    4035d3 <fmt_fp+0xa53>
  4030b6:	48 8d 1d 85 40 00 00 	lea    0x4085(%rip),%rbx        # 407142 <_fini+0x21e>
  4030bd:	83 e7 01             	and    $0x1,%edi
  4030c0:	48 8d 43 05          	lea    0x5(%rbx),%rax
  4030c4:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  4030ca:	48 0f 44 c3          	cmove  %rbx,%rax
  4030ce:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  4030d5:	e9 33 fb ff ff       	jmp    402c0d <fmt_fp+0x8d>
  4030da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4030e0:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4030e7:	0f 84 94 00 00 00    	je     403181 <fmt_fp+0x601>
  4030ed:	db 6d 10             	fldt   0x10(%rbp)
  4030f0:	4c 8d 25 61 40 00 00 	lea    0x4061(%rip),%r12        # 407158 <_fini+0x234>
  4030f7:	48 8d 05 62 40 00 00 	lea    0x4062(%rip),%rax        # 407160 <_fini+0x23c>
  4030fe:	df e8                	fucomip %st(0),%st
  403100:	4c 0f 4b e0          	cmovnp %rax,%r12
  403104:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40310a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403110:	8d 58 03             	lea    0x3(%rax),%ebx
  403113:	39 d3                	cmp    %edx,%ebx
  403115:	41 0f 9d c5          	setge  %r13b
  403119:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  403120:	75 09                	jne    40312b <fmt_fp+0x5ab>
  403122:	45 84 ed             	test   %r13b,%r13b
  403125:	0f 84 0a 01 00 00    	je     403235 <fmt_fp+0x6b5>
  40312b:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403132:	f6 00 20             	testb  $0x20,(%rax)
  403135:	0f 84 1d 01 00 00    	je     403258 <fmt_fp+0x6d8>
  40313b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403141:	80 f4 20             	xor    $0x20,%ah
  403144:	a9 00 20 01 00       	test   $0x12000,%eax
  403149:	75 09                	jne    403154 <fmt_fp+0x5d4>
  40314b:	45 84 ed             	test   %r13b,%r13b
  40314e:	0f 84 c3 00 00 00    	je     403217 <fmt_fp+0x697>
  403154:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40315a:	39 c3                	cmp    %eax,%ebx
  40315c:	0f 4d c3             	cmovge %ebx,%eax
  40315f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  403163:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40316a:	00 00 
  40316c:	0f 85 4d 13 00 00    	jne    4044bf <fmt_fp+0x193f>
  403172:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  403176:	5b                   	pop    %rbx
  403177:	41 5c                	pop    %r12
  403179:	41 5d                	pop    %r13
  40317b:	41 5e                	pop    %r14
  40317d:	41 5f                	pop    %r15
  40317f:	5d                   	pop    %rbp
  403180:	c3                   	ret
  403181:	db 6d 10             	fldt   0x10(%rbp)
  403184:	4c 8d 25 d1 3f 00 00 	lea    0x3fd1(%rip),%r12        # 40715c <_fini+0x238>
  40318b:	48 8d 05 c2 3f 00 00 	lea    0x3fc2(%rip),%rax        # 407154 <_fini+0x230>
  403192:	df e8                	fucomip %st(0),%st
  403194:	4c 0f 4b e0          	cmovnp %rax,%r12
  403198:	e9 67 ff ff ff       	jmp    403104 <fmt_fp+0x584>
  40319d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4031a4:	f6 07 20             	testb  $0x20,(%rdi)
  4031a7:	0f 84 11 03 00 00    	je     4034be <fmt_fp+0x93e>
  4031ad:	45 29 f7             	sub    %r14d,%r15d
  4031b0:	45 85 ff             	test   %r15d,%r15d
  4031b3:	7e 9f                	jle    403154 <fmt_fp+0x5d4>
  4031b5:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4031bb:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4031c2:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4031c9:	31 c9                	xor    %ecx,%ecx
  4031cb:	44 89 fa             	mov    %r15d,%edx
  4031ce:	be 30 00 00 00       	mov    $0x30,%esi
  4031d3:	e8 a8 f8 ff ff       	call   402a80 <pad.part.0>
  4031d8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4031df:	f6 00 20             	testb  $0x20,(%rax)
  4031e2:	75 12                	jne    4031f6 <fmt_fp+0x676>
  4031e4:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  4031eb:	48 89 c2             	mov    %rax,%rdx
  4031ee:	4c 89 e6             	mov    %r12,%rsi
  4031f1:	e8 1a 32 00 00       	call   406410 <__fwritex>
  4031f6:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4031fc:	80 f4 20             	xor    $0x20,%ah
  4031ff:	a9 00 20 01 00       	test   $0x12000,%eax
  403204:	0f 85 4a ff ff ff    	jne    403154 <fmt_fp+0x5d4>
  40320a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403211:	0f 85 3d ff ff ff    	jne    403154 <fmt_fp+0x5d4>
  403217:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40321d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403224:	89 d9                	mov    %ebx,%ecx
  403226:	be 20 00 00 00       	mov    $0x20,%esi
  40322b:	e8 50 f8 ff ff       	call   402a80 <pad.part.0>
  403230:	e9 1f ff ff ff       	jmp    403154 <fmt_fp+0x5d4>
  403235:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40323c:	89 d9                	mov    %ebx,%ecx
  40323e:	be 20 00 00 00       	mov    $0x20,%esi
  403243:	e8 38 f8 ff ff       	call   402a80 <pad.part.0>
  403248:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40324f:	f6 00 20             	testb  $0x20,(%rax)
  403252:	0f 85 e3 fe ff ff    	jne    40313b <fmt_fp+0x5bb>
  403258:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40325f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403266:	49 89 c6             	mov    %rax,%r14
  403269:	48 89 c2             	mov    %rax,%rdx
  40326c:	e8 9f 31 00 00       	call   406410 <__fwritex>
  403271:	41 f6 06 20          	testb  $0x20,(%r14)
  403275:	0f 85 c0 fe ff ff    	jne    40313b <fmt_fp+0x5bb>
  40327b:	4c 89 f2             	mov    %r14,%rdx
  40327e:	be 03 00 00 00       	mov    $0x3,%esi
  403283:	4c 89 e7             	mov    %r12,%rdi
  403286:	e8 85 31 00 00       	call   406410 <__fwritex>
  40328b:	e9 ab fe ff ff       	jmp    40313b <fmt_fp+0x5bb>
  403290:	41 83 e9 01          	sub    $0x1,%r9d
  403294:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40329b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4032a2:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4032a9:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  4032af:	48 8d 47 09          	lea    0x9(%rdi),%rax
  4032b3:	48 0f 44 c7          	cmove  %rdi,%rax
  4032b7:	83 c3 02             	add    $0x2,%ebx
  4032ba:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  4032c1:	41 83 ff 0e          	cmp    $0xe,%r15d
  4032c5:	0f 86 28 0c 00 00    	jbe    403ef3 <fmt_fp+0x1373>
  4032cb:	d9 05 ef 41 00 00    	flds   0x41ef(%rip)        # 4074c0 <states+0x1e0>
  4032d1:	45 85 c9             	test   %r9d,%r9d
  4032d4:	0f 84 54 11 00 00    	je     40442e <fmt_fp+0x18ae>
  4032da:	44 89 c9             	mov    %r9d,%ecx
  4032dd:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4032e1:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  4032e8:	cc cc cc 
  4032eb:	f7 d9                	neg    %ecx
  4032ed:	4d 89 e8             	mov    %r13,%r8
  4032f0:	41 0f 48 c9          	cmovs  %r9d,%ecx
  4032f4:	48 63 c9             	movslq %ecx,%rcx
  4032f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4032fe:	00 00 
  403300:	48 89 c8             	mov    %rcx,%rax
  403303:	4c 89 c7             	mov    %r8,%rdi
  403306:	49 83 e8 01          	sub    $0x1,%r8
  40330a:	48 f7 e6             	mul    %rsi
  40330d:	48 89 c8             	mov    %rcx,%rax
  403310:	48 c1 ea 03          	shr    $0x3,%rdx
  403314:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403318:	4d 01 d2             	add    %r10,%r10
  40331b:	4c 29 d0             	sub    %r10,%rax
  40331e:	83 c0 30             	add    $0x30,%eax
  403321:	48 83 f9 09          	cmp    $0x9,%rcx
  403325:	48 89 d1             	mov    %rdx,%rcx
  403328:	41 88 00             	mov    %al,(%r8)
  40332b:	77 d3                	ja     403300 <fmt_fp+0x780>
  40332d:	4d 39 e8             	cmp    %r13,%r8
  403330:	0f 84 9f 0d 00 00    	je     4040d5 <fmt_fp+0x1555>
  403336:	b8 2d 00 00 00       	mov    $0x2d,%eax
  40333b:	45 85 c9             	test   %r9d,%r9d
  40333e:	78 05                	js     403345 <fmt_fp+0x7c5>
  403340:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403345:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40334b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40334f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403353:	d9 ee                	fldz
  403355:	d9 ca                	fxch   %st(2)
  403357:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40335e:	45 85 ff             	test   %r15d,%r15d
  403361:	48 8d 0d 58 3f 00 00 	lea    0x3f58(%rip),%rcx        # 4072c0 <xdigits>
  403368:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  40336e:	8d 46 0f             	lea    0xf(%rsi),%eax
  403371:	40 0f 9f c7          	setg   %dil
  403375:	83 e6 20             	and    $0x20,%esi
  403378:	41 88 40 fe          	mov    %al,-0x2(%r8)
  40337c:	4c 89 e8             	mov    %r13,%rax
  40337f:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403385:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40338c:	80 ce 0c             	or     $0xc,%dh
  40338f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403396:	eb 1b                	jmp    4033b3 <fmt_fp+0x833>
  403398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40339f:	00 
  4033a0:	4c 89 c0             	mov    %r8,%rax
  4033a3:	d9 c2                	fld    %st(2)
  4033a5:	d9 c9                	fxch   %st(1)
  4033a7:	db e9                	fucomi %st(1),%st
  4033a9:	dd d9                	fstp   %st(1)
  4033ab:	7a 06                	jp     4033b3 <fmt_fp+0x833>
  4033ad:	0f 84 dc 10 00 00    	je     40448f <fmt_fp+0x190f>
  4033b3:	d9 c0                	fld    %st(0)
  4033b5:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  4033bb:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  4033c1:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  4033c7:	4c 8d 40 01          	lea    0x1(%rax),%r8
  4033cb:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  4033d1:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  4033d8:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  4033dd:	de e9                	fsubrp %st,%st(1)
  4033df:	41 09 f3             	or     %esi,%r11d
  4033e2:	44 88 18             	mov    %r11b,(%rax)
  4033e5:	d8 c9                	fmul   %st(1),%st
  4033e7:	4c 39 e8             	cmp    %r13,%rax
  4033ea:	75 b4                	jne    4033a0 <fmt_fp+0x820>
  4033ec:	d9 c2                	fld    %st(2)
  4033ee:	df e9                	fucomip %st(1),%st
  4033f0:	0f 9a c2             	setp   %dl
  4033f3:	41 0f 45 d1          	cmovne %r9d,%edx
  4033f7:	84 d2                	test   %dl,%dl
  4033f9:	0f 85 31 06 00 00    	jne    403a30 <fmt_fp+0xeb0>
  4033ff:	40 84 ff             	test   %dil,%dil
  403402:	0f 85 28 06 00 00    	jne    403a30 <fmt_fp+0xeb0>
  403408:	dd d8                	fstp   %st(0)
  40340a:	dd d8                	fstp   %st(0)
  40340c:	dd d8                	fstp   %st(0)
  40340e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403415:	74 08                	je     40341f <fmt_fp+0x89f>
  403417:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40341b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40341f:	4d 89 ec             	mov    %r13,%r12
  403422:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  403427:	48 63 c3             	movslq %ebx,%rax
  40342a:	49 63 cf             	movslq %r15d,%rcx
  40342d:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  403434:	4c 29 e2             	sub    %r12,%rdx
  403437:	48 29 c2             	sub    %rax,%rdx
  40343a:	48 39 d1             	cmp    %rdx,%rcx
  40343d:	0f 8f 24 10 00 00    	jg     404467 <fmt_fp+0x18e7>
  403443:	4d 29 e8             	sub    %r13,%r8
  403446:	45 85 ff             	test   %r15d,%r15d
  403449:	74 0d                	je     403458 <fmt_fp+0x8d8>
  40344b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40344f:	48 39 d1             	cmp    %rdx,%rcx
  403452:	0f 8d ac 0c 00 00    	jge    404104 <fmt_fp+0x1584>
  403458:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40345c:	45 89 f7             	mov    %r14d,%r15d
  40345f:	44 01 fb             	add    %r15d,%ebx
  403462:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  403469:	20 01 
  40346b:	0f 85 a0 0b 00 00    	jne    404011 <fmt_fp+0x1491>
  403471:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403477:	39 d3                	cmp    %edx,%ebx
  403479:	0f 8d 1e fd ff ff    	jge    40319d <fmt_fp+0x61d>
  40347f:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403486:	89 d9                	mov    %ebx,%ecx
  403488:	be 20 00 00 00       	mov    $0x20,%esi
  40348d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403494:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40349b:	e8 e0 f5 ff ff       	call   402a80 <pad.part.0>
  4034a0:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4034a7:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  4034ae:	f6 00 20             	testb  $0x20,(%rax)
  4034b1:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  4034b8:	0f 85 ef fc ff ff    	jne    4031ad <fmt_fp+0x62d>
  4034be:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  4034c5:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4034cc:	48 89 c6             	mov    %rax,%rsi
  4034cf:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4034d6:	e8 35 2f 00 00       	call   406410 <__fwritex>
  4034db:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4034e1:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4034e7:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4034ee:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4034f5:	35 00 00 01 00       	xor    $0x10000,%eax
  4034fa:	a9 00 20 01 00       	test   $0x12000,%eax
  4034ff:	75 37                	jne    403538 <fmt_fp+0x9b8>
  403501:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403508:	75 2e                	jne    403538 <fmt_fp+0x9b8>
  40350a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403510:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403517:	89 d9                	mov    %ebx,%ecx
  403519:	be 30 00 00 00       	mov    $0x30,%esi
  40351e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403525:	e8 56 f5 ff ff       	call   402a80 <pad.part.0>
  40352a:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  403531:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403538:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40353f:	f6 00 20             	testb  $0x20,(%rax)
  403542:	0f 85 05 0b 00 00    	jne    40404d <fmt_fp+0x14cd>
  403548:	48 89 c2             	mov    %rax,%rdx
  40354b:	4c 89 c6             	mov    %r8,%rsi
  40354e:	4c 89 ef             	mov    %r13,%rdi
  403551:	45 29 f7             	sub    %r14d,%r15d
  403554:	e8 b7 2e 00 00       	call   406410 <__fwritex>
  403559:	45 85 ff             	test   %r15d,%r15d
  40355c:	0f 8e 76 fc ff ff    	jle    4031d8 <fmt_fp+0x658>
  403562:	e9 5b fc ff ff       	jmp    4031c2 <fmt_fp+0x642>
  403567:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40356e:	00 00 
  403570:	44 89 c9             	mov    %r9d,%ecx
  403573:	45 31 c9             	xor    %r9d,%r9d
  403576:	f7 d9                	neg    %ecx
  403578:	49 39 dc             	cmp    %rbx,%r12
  40357b:	0f 82 2b f9 ff ff    	jb     402eac <fmt_fp+0x32c>
  403581:	41 8b 34 24          	mov    (%r12),%esi
  403585:	85 f6                	test   %esi,%esi
  403587:	0f 84 66 05 00 00    	je     403af3 <fmt_fp+0xf73>
  40358d:	41 83 fe 66          	cmp    $0x66,%r14d
  403591:	0f 85 cf f9 ff ff    	jne    402f66 <fmt_fp+0x3e6>
  403597:	4c 89 e0             	mov    %r12,%rax
  40359a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4035a0:	49 89 c4             	mov    %rax,%r12
  4035a3:	48 89 f8             	mov    %rdi,%rax
  4035a6:	e9 a3 f9 ff ff       	jmp    402f4e <fmt_fp+0x3ce>
  4035ab:	a8 01                	test   $0x1,%al
  4035ad:	0f 84 2f 0b 00 00    	je     4040e2 <fmt_fp+0x1562>
  4035b3:	db 2d 27 3f 00 00    	fldt   0x3f27(%rip)        # 4074e0 <states+0x200>
  4035b9:	d1 f9                	sar    $1,%ecx
  4035bb:	41 39 c9             	cmp    %ecx,%r9d
  4035be:	0f 82 06 0b 00 00    	jb     4040ca <fmt_fp+0x154a>
  4035c4:	44 39 c9             	cmp    %r9d,%ecx
  4035c7:	0f 84 31 0e 00 00    	je     4043fe <fmt_fp+0x187e>
  4035cd:	d9 05 e9 3e 00 00    	flds   0x3ee9(%rip)        # 4074bc <states+0x1dc>
  4035d3:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  4035d9:	85 d2                	test   %edx,%edx
  4035db:	74 14                	je     4035f1 <fmt_fp+0xa71>
  4035dd:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  4035e4:	80 38 2d             	cmpb   $0x2d,(%rax)
  4035e7:	75 08                	jne    4035f1 <fmt_fp+0xa71>
  4035e9:	d9 c9                	fxch   %st(1)
  4035eb:	d9 e0                	fchs
  4035ed:	d9 c9                	fxch   %st(1)
  4035ef:	d9 e0                	fchs
  4035f1:	d8 c1                	fadd   %st(1),%st
  4035f3:	44 89 d0             	mov    %r10d,%eax
  4035f6:	44 29 c8             	sub    %r9d,%eax
  4035f9:	df e9                	fucomip %st(1),%st
  4035fb:	dd d8                	fstp   %st(0)
  4035fd:	0f 8a 4c 09 00 00    	jp     403f4f <fmt_fp+0x13cf>
  403603:	0f 85 46 09 00 00    	jne    403f4f <fmt_fp+0x13cf>
  403609:	89 06                	mov    %eax,(%rsi)
  40360b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40360f:	48 39 d3             	cmp    %rdx,%rbx
  403612:	48 0f 47 da          	cmova  %rdx,%rbx
  403616:	49 39 dc             	cmp    %rbx,%r12
  403619:	72 0e                	jb     403629 <fmt_fp+0xaa9>
  40361b:	eb 13                	jmp    403630 <fmt_fp+0xab0>
  40361d:	0f 1f 00             	nopl   (%rax)
  403620:	48 83 eb 04          	sub    $0x4,%rbx
  403624:	49 39 dc             	cmp    %rbx,%r12
  403627:	73 07                	jae    403630 <fmt_fp+0xab0>
  403629:	8b 43 fc             	mov    -0x4(%rbx),%eax
  40362c:	85 c0                	test   %eax,%eax
  40362e:	74 f0                	je     403620 <fmt_fp+0xaa0>
  403630:	41 83 fe 67          	cmp    $0x67,%r14d
  403634:	0f 84 25 05 00 00    	je     403b5f <fmt_fp+0xfdf>
  40363a:	45 85 ff             	test   %r15d,%r15d
  40363d:	0f 85 ba 04 00 00    	jne    403afd <fmt_fp+0xf7d>
  403643:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40364a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403650:	41 c1 e9 03          	shr    $0x3,%r9d
  403654:	41 83 e1 01          	and    $0x1,%r9d
  403658:	41 83 c1 01          	add    $0x1,%r9d
  40365c:	45 29 ca             	sub    %r9d,%r10d
  40365f:	41 83 fe 66          	cmp    $0x66,%r14d
  403663:	0f 84 80 0b 00 00    	je     4041e9 <fmt_fp+0x1669>
  403669:	4d 63 d2             	movslq %r10d,%r10
  40366c:	85 ff                	test   %edi,%edi
  40366e:	0f 84 9e 0d 00 00    	je     404412 <fmt_fp+0x1892>
  403674:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  40367b:	cc cc cc 
  40367e:	89 fe                	mov    %edi,%esi
  403680:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403684:	f7 de                	neg    %esi
  403686:	4c 89 e9             	mov    %r13,%rcx
  403689:	0f 48 f7             	cmovs  %edi,%esi
  40368c:	48 63 f6             	movslq %esi,%rsi
  40368f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403694:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40369b:	00 00 00 00 
  40369f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036a6:	00 00 00 00 
  4036aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036b1:	00 00 00 00 
  4036b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036bc:	00 00 00 00 
  4036c0:	48 89 f0             	mov    %rsi,%rax
  4036c3:	48 83 e9 01          	sub    $0x1,%rcx
  4036c7:	49 f7 e0             	mul    %r8
  4036ca:	48 89 f0             	mov    %rsi,%rax
  4036cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4036d1:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  4036d5:	4d 01 db             	add    %r11,%r11
  4036d8:	4c 29 d8             	sub    %r11,%rax
  4036db:	83 c0 30             	add    $0x30,%eax
  4036de:	48 83 fe 09          	cmp    $0x9,%rsi
  4036e2:	48 89 d6             	mov    %rdx,%rsi
  4036e5:	88 01                	mov    %al,(%rcx)
  4036e7:	77 d7                	ja     4036c0 <fmt_fp+0xb40>
  4036e9:	4c 89 e8             	mov    %r13,%rax
  4036ec:	48 29 c8             	sub    %rcx,%rax
  4036ef:	48 83 f8 01          	cmp    $0x1,%rax
  4036f3:	7f 1e                	jg     403713 <fmt_fp+0xb93>
  4036f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036fc:	00 00 00 00 
  403700:	48 83 e9 01          	sub    $0x1,%rcx
  403704:	4c 89 e8             	mov    %r13,%rax
  403707:	c6 01 30             	movb   $0x30,(%rcx)
  40370a:	48 29 c8             	sub    %rcx,%rax
  40370d:	48 83 f8 01          	cmp    $0x1,%rax
  403711:	7e ed                	jle    403700 <fmt_fp+0xb80>
  403713:	c1 ff 1f             	sar    $0x1f,%edi
  403716:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40371a:	83 e7 02             	and    $0x2,%edi
  40371d:	49 29 c5             	sub    %rax,%r13
  403720:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  403727:	83 c7 2b             	add    $0x2b,%edi
  40372a:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  40372e:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  403735:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  403739:	4d 39 d5             	cmp    %r10,%r13
  40373c:	0f 8f 25 0d 00 00    	jg     404467 <fmt_fp+0x18e7>
  403742:	45 01 e9             	add    %r13d,%r9d
  403745:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  40374a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403750:	41 39 c1             	cmp    %eax,%r9d
  403753:	0f 8f 0e 0d 00 00    	jg     404467 <fmt_fp+0x18e7>
  403759:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40375f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  403765:	44 01 c8             	add    %r9d,%eax
  403768:	39 f8                	cmp    %edi,%eax
  40376a:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  403770:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  403777:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  40377e:	20 01 
  403780:	0f 85 3c 07 00 00    	jne    403ec2 <fmt_fp+0x1342>
  403786:	39 f8                	cmp    %edi,%eax
  403788:	0f 8d c5 06 00 00    	jge    403e53 <fmt_fp+0x12d3>
  40378e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403795:	89 fa                	mov    %edi,%edx
  403797:	89 c1                	mov    %eax,%ecx
  403799:	be 20 00 00 00       	mov    $0x20,%esi
  40379e:	4c 89 ef             	mov    %r13,%rdi
  4037a1:	e8 da f2 ff ff       	call   402a80 <pad.part.0>
  4037a6:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4037ab:	0f 84 b2 06 00 00    	je     403e63 <fmt_fp+0x12e3>
  4037b1:	41 83 fe 66          	cmp    $0x66,%r14d
  4037b5:	0f 84 75 04 00 00    	je     403c30 <fmt_fp+0x10b0>
  4037bb:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  4037c0:	49 39 dc             	cmp    %rbx,%r12
  4037c3:	48 0f 43 d8          	cmovae %rax,%rbx
  4037c7:	45 85 ff             	test   %r15d,%r15d
  4037ca:	0f 88 af 01 00 00    	js     40397f <fmt_fp+0xdff>
  4037d0:	49 39 dc             	cmp    %rbx,%r12
  4037d3:	0f 83 a6 01 00 00    	jae    40397f <fmt_fp+0xdff>
  4037d9:	b8 30 30 30 30       	mov    $0x30303030,%eax
  4037de:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  4037e5:	4d 89 e6             	mov    %r12,%r14
  4037e8:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  4037ec:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  4037f3:	66 0f 6e c0          	movd   %eax,%xmm0
  4037f7:	49 89 dc             	mov    %rbx,%r12
  4037fa:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403801:	cc cc cc 
  403804:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403808:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  40380d:	0f 1f 00             	nopl   (%rax)
  403810:	41 8b 0e             	mov    (%r14),%ecx
  403813:	4c 89 c7             	mov    %r8,%rdi
  403816:	48 85 c9             	test   %rcx,%rcx
  403819:	0f 84 e1 01 00 00    	je     403a00 <fmt_fp+0xe80>
  40381f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403826:	00 00 00 00 
  40382a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403831:	00 00 00 00 
  403835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40383c:	00 00 00 00 
  403840:	48 89 c8             	mov    %rcx,%rax
  403843:	48 83 ef 01          	sub    $0x1,%rdi
  403847:	49 f7 e5             	mul    %r13
  40384a:	48 89 c8             	mov    %rcx,%rax
  40384d:	48 c1 ea 03          	shr    $0x3,%rdx
  403851:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403855:	48 01 f6             	add    %rsi,%rsi
  403858:	48 29 f0             	sub    %rsi,%rax
  40385b:	83 c0 30             	add    $0x30,%eax
  40385e:	48 83 f9 09          	cmp    $0x9,%rcx
  403862:	48 89 d1             	mov    %rdx,%rcx
  403865:	88 07                	mov    %al,(%rdi)
  403867:	77 d7                	ja     403840 <fmt_fp+0xcc0>
  403869:	4c 39 c7             	cmp    %r8,%rdi
  40386c:	0f 84 8e 01 00 00    	je     403a00 <fmt_fp+0xe80>
  403872:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403879:	0f 84 96 01 00 00    	je     403a15 <fmt_fp+0xe95>
  40387f:	48 39 fb             	cmp    %rdi,%rbx
  403882:	0f 83 c9 02 00 00    	jae    403b51 <fmt_fp+0xfd1>
  403888:	48 89 fe             	mov    %rdi,%rsi
  40388b:	48 89 f8             	mov    %rdi,%rax
  40388e:	48 29 de             	sub    %rbx,%rsi
  403891:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403895:	48 83 fa 0e          	cmp    $0xe,%rdx
  403899:	76 3d                	jbe    4038d8 <fmt_fp+0xd58>
  40389b:	48 89 f1             	mov    %rsi,%rcx
  40389e:	48 89 fa             	mov    %rdi,%rdx
  4038a1:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4038a5:	48 29 ca             	sub    %rcx,%rdx
  4038a8:	f6 c1 10             	test   $0x10,%cl
  4038ab:	74 13                	je     4038c0 <fmt_fp+0xd40>
  4038ad:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  4038b1:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  4038b5:	48 39 d0             	cmp    %rdx,%rax
  4038b8:	74 16                	je     4038d0 <fmt_fp+0xd50>
  4038ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4038c0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  4038c4:	48 83 e8 20          	sub    $0x20,%rax
  4038c8:	0f 11 00             	movups %xmm0,(%rax)
  4038cb:	48 39 d0             	cmp    %rdx,%rax
  4038ce:	75 f0                	jne    4038c0 <fmt_fp+0xd40>
  4038d0:	48 39 f1             	cmp    %rsi,%rcx
  4038d3:	74 3b                	je     403910 <fmt_fp+0xd90>
  4038d5:	48 29 cf             	sub    %rcx,%rdi
  4038d8:	48 89 d8             	mov    %rbx,%rax
  4038db:	48 f7 d0             	not    %rax
  4038de:	48 01 f8             	add    %rdi,%rax
  4038e1:	48 83 ef 01          	sub    $0x1,%rdi
  4038e5:	c6 07 30             	movb   $0x30,(%rdi)
  4038e8:	48 39 fb             	cmp    %rdi,%rbx
  4038eb:	73 23                	jae    403910 <fmt_fp+0xd90>
  4038ed:	a8 01                	test   $0x1,%al
  4038ef:	74 0f                	je     403900 <fmt_fp+0xd80>
  4038f1:	48 83 ef 01          	sub    $0x1,%rdi
  4038f5:	c6 07 30             	movb   $0x30,(%rdi)
  4038f8:	48 39 fb             	cmp    %rdi,%rbx
  4038fb:	73 13                	jae    403910 <fmt_fp+0xd90>
  4038fd:	0f 1f 00             	nopl   (%rax)
  403900:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403904:	48 83 ef 02          	sub    $0x2,%rdi
  403908:	c6 07 30             	movb   $0x30,(%rdi)
  40390b:	48 39 fb             	cmp    %rdi,%rbx
  40390e:	72 f0                	jb     403900 <fmt_fp+0xd80>
  403910:	41 8b 02             	mov    (%r10),%eax
  403913:	49 89 d9             	mov    %rbx,%r9
  403916:	83 e0 20             	and    $0x20,%eax
  403919:	4c 89 c1             	mov    %r8,%rcx
  40391c:	4c 29 c9             	sub    %r9,%rcx
  40391f:	85 c0                	test   %eax,%eax
  403921:	75 47                	jne    40396a <fmt_fp+0xdea>
  403923:	49 63 f7             	movslq %r15d,%rsi
  403926:	4c 89 d2             	mov    %r10,%rdx
  403929:	4c 89 cf             	mov    %r9,%rdi
  40392c:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403933:	48 39 ce             	cmp    %rcx,%rsi
  403936:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  40393d:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403941:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403948:	e8 c3 2a 00 00       	call   406410 <__fwritex>
  40394d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403954:	66 0f 6f 05 94 3b 00 	movdqa 0x3b94(%rip),%xmm0        # 4074f0 <states+0x210>
  40395b:	00 
  40395c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403963:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  40396a:	49 83 c6 04          	add    $0x4,%r14
  40396e:	41 29 cf             	sub    %ecx,%r15d
  403971:	4d 39 e6             	cmp    %r12,%r14
  403974:	73 09                	jae    40397f <fmt_fp+0xdff>
  403976:	45 85 ff             	test   %r15d,%r15d
  403979:	0f 89 91 fe ff ff    	jns    403810 <fmt_fp+0xc90>
  40397f:	41 8d 57 12          	lea    0x12(%r15),%edx
  403983:	83 fa 12             	cmp    $0x12,%edx
  403986:	7e 16                	jle    40399e <fmt_fp+0xe1e>
  403988:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40398f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403994:	be 30 00 00 00       	mov    $0x30,%esi
  403999:	e8 e2 f0 ff ff       	call   402a80 <pad.part.0>
  40399e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4039a5:	f6 00 20             	testb  $0x20,(%rax)
  4039a8:	0f 84 86 05 00 00    	je     403f34 <fmt_fp+0x13b4>
  4039ae:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4039b4:	80 f4 20             	xor    $0x20,%ah
  4039b7:	a9 00 20 01 00       	test   $0x12000,%eax
  4039bc:	75 26                	jne    4039e4 <fmt_fp+0xe64>
  4039be:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  4039c5:	75 1d                	jne    4039e4 <fmt_fp+0xe64>
  4039c7:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  4039cd:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4039d3:	be 20 00 00 00       	mov    $0x20,%esi
  4039d8:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4039df:	e8 9c f0 ff ff       	call   402a80 <pad.part.0>
  4039e4:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  4039ea:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  4039f0:	39 c7                	cmp    %eax,%edi
  4039f2:	0f 4d c7             	cmovge %edi,%eax
  4039f5:	e9 65 f7 ff ff       	jmp    40315f <fmt_fp+0x5df>
  4039fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a00:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403a04:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403a08:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403a0f:	0f 85 73 fe ff ff    	jne    403888 <fmt_fp+0xd08>
  403a15:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403a19:	41 f6 02 20          	testb  $0x20,(%r10)
  403a1d:	74 1e                	je     403a3d <fmt_fp+0xebd>
  403a1f:	4c 89 c1             	mov    %r8,%rcx
  403a22:	4c 29 c9             	sub    %r9,%rcx
  403a25:	e9 40 ff ff ff       	jmp    40396a <fmt_fp+0xdea>
  403a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a30:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403a34:	48 83 c0 02          	add    $0x2,%rax
  403a38:	e9 66 f9 ff ff       	jmp    4033a3 <fmt_fp+0x823>
  403a3d:	4c 89 d2             	mov    %r10,%rdx
  403a40:	be 01 00 00 00       	mov    $0x1,%esi
  403a45:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403a4c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403a53:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403a5a:	e8 b1 29 00 00       	call   406410 <__fwritex>
  403a5f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403a66:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403a6c:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403a73:	66 0f 6f 05 75 3a 00 	movdqa 0x3a75(%rip),%xmm0        # 4074f0 <states+0x210>
  403a7a:	00 
  403a7b:	41 8b 02             	mov    (%r10),%eax
  403a7e:	83 e2 08             	and    $0x8,%edx
  403a81:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403a88:	83 e0 20             	and    $0x20,%eax
  403a8b:	44 09 fa             	or     %r15d,%edx
  403a8e:	0f 84 85 fe ff ff    	je     403919 <fmt_fp+0xd99>
  403a94:	85 c0                	test   %eax,%eax
  403a96:	75 87                	jne    403a1f <fmt_fp+0xe9f>
  403a98:	4c 89 d2             	mov    %r10,%rdx
  403a9b:	be 01 00 00 00       	mov    $0x1,%esi
  403aa0:	48 8d 3d bd 36 00 00 	lea    0x36bd(%rip),%rdi        # 407164 <_fini+0x240>
  403aa7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403aae:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403ab5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403abc:	e8 4f 29 00 00       	call   406410 <__fwritex>
  403ac1:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403ac8:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403acf:	66 0f 6f 05 19 3a 00 	movdqa 0x3a19(%rip),%xmm0        # 4074f0 <states+0x210>
  403ad6:	00 
  403ad7:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403ade:	41 8b 02             	mov    (%r10),%eax
  403ae1:	83 e0 20             	and    $0x20,%eax
  403ae4:	e9 30 fe ff ff       	jmp    403919 <fmt_fp+0xd99>
  403ae9:	44 89 f8             	mov    %r15d,%eax
  403aec:	31 ff                	xor    %edi,%edi
  403aee:	e9 e5 f4 ff ff       	jmp    402fd8 <fmt_fp+0x458>
  403af3:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403af8:	e9 44 f4 ff ff       	jmp    402f41 <fmt_fp+0x3c1>
  403afd:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403b04:	0f 8f 5d 09 00 00    	jg     404467 <fmt_fp+0x18e7>
  403b0a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403b11:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403b15:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403b1b:	45 29 ca             	sub    %r9d,%r10d
  403b1e:	41 83 ce 20          	or     $0x20,%r14d
  403b22:	41 83 fe 66          	cmp    $0x66,%r14d
  403b26:	0f 85 3d fb ff ff    	jne    403669 <fmt_fp+0xae9>
  403b2c:	44 39 d7             	cmp    %r10d,%edi
  403b2f:	0f 8f 32 09 00 00    	jg     404467 <fmt_fp+0x18e7>
  403b35:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403b3b:	85 ff                	test   %edi,%edi
  403b3d:	0f 8e 02 fc ff ff    	jle    403745 <fmt_fp+0xbc5>
  403b43:	41 01 f9             	add    %edi,%r9d
  403b46:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403b4c:	e9 f4 fb ff ff       	jmp    403745 <fmt_fp+0xbc5>
  403b51:	41 8b 02             	mov    (%r10),%eax
  403b54:	49 89 f9             	mov    %rdi,%r9
  403b57:	83 e0 20             	and    $0x20,%eax
  403b5a:	e9 ba fd ff ff       	jmp    403919 <fmt_fp+0xd99>
  403b5f:	45 85 ff             	test   %r15d,%r15d
  403b62:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403b68:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403b6c:	41 39 f9             	cmp    %edi,%r9d
  403b6f:	0f 8e e9 04 00 00    	jle    40405e <fmt_fp+0x14de>
  403b75:	83 ff fc             	cmp    $0xfffffffc,%edi
  403b78:	0f 8c e0 04 00 00    	jl     40405e <fmt_fp+0x14de>
  403b7e:	8d 47 01             	lea    0x1(%rdi),%eax
  403b81:	45 89 cf             	mov    %r9d,%r15d
  403b84:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403b8b:	41 29 c7             	sub    %eax,%r15d
  403b8e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403b95:	0f 85 9c 05 00 00    	jne    404137 <fmt_fp+0x15b7>
  403b9b:	be 09 00 00 00       	mov    $0x9,%esi
  403ba0:	49 39 dc             	cmp    %rbx,%r12
  403ba3:	73 1f                	jae    403bc4 <fmt_fp+0x1044>
  403ba5:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403ba9:	45 85 c9             	test   %r9d,%r9d
  403bac:	74 16                	je     403bc4 <fmt_fp+0x1044>
  403bae:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403bb5:	d1 c8                	ror    $1,%eax
  403bb7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403bbc:	0f 86 e0 04 00 00    	jbe    4040a2 <fmt_fp+0x1522>
  403bc2:	31 f6                	xor    %esi,%esi
  403bc4:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403bcb:	41 83 ce 20          	or     $0x20,%r14d
  403bcf:	41 83 fe 66          	cmp    $0x66,%r14d
  403bd3:	0f 85 ac 05 00 00    	jne    404185 <fmt_fp+0x1605>
  403bd9:	48 89 d8             	mov    %rbx,%rax
  403bdc:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403be3:	ba 00 00 00 00       	mov    $0x0,%edx
  403be8:	48 c1 f8 02          	sar    $0x2,%rax
  403bec:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403bf1:	48 29 f0             	sub    %rsi,%rax
  403bf4:	48 0f 48 c2          	cmovs  %rdx,%rax
  403bf8:	49 63 d7             	movslq %r15d,%rdx
  403bfb:	48 39 d0             	cmp    %rdx,%rax
  403bfe:	48 0f 4f c2          	cmovg  %rdx,%rax
  403c02:	48 85 c0             	test   %rax,%rax
  403c05:	0f 84 66 08 00 00    	je     404471 <fmt_fp+0x18f1>
  403c0b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403c11:	0f 8f 50 08 00 00    	jg     404467 <fmt_fp+0x18e7>
  403c17:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403c1b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403c21:	41 89 c7             	mov    %eax,%r15d
  403c24:	45 29 ca             	sub    %r9d,%r10d
  403c27:	e9 00 ff ff ff       	jmp    403b2c <fmt_fp+0xfac>
  403c2c:	0f 1f 40 00          	nopl   0x0(%rax)
  403c30:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403c37:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403c3e:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403c43:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403c4a:	cc cc cc 
  403c4d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403c54:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403c5b:	66 0f 6e c7          	movd   %edi,%xmm0
  403c5f:	4c 39 e0             	cmp    %r12,%rax
  403c62:	49 89 c6             	mov    %rax,%r14
  403c65:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403c6a:	4c 0f 46 e0          	cmovbe %rax,%r12
  403c6e:	4c 89 e3             	mov    %r12,%rbx
  403c71:	0f 1f 40 00          	nopl   0x0(%rax)
  403c75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403c7c:	00 00 00 00 
  403c80:	41 8b 0c 24          	mov    (%r12),%ecx
  403c84:	48 85 c9             	test   %rcx,%rcx
  403c87:	0f 84 43 02 00 00    	je     403ed0 <fmt_fp+0x1350>
  403c8d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403c91:	48 89 f7             	mov    %rsi,%rdi
  403c94:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403c9b:	00 00 00 00 
  403c9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ca6:	00 00 00 00 
  403caa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cb1:	00 00 00 00 
  403cb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cbc:	00 00 00 00 
  403cc0:	48 89 c8             	mov    %rcx,%rax
  403cc3:	48 83 ef 01          	sub    $0x1,%rdi
  403cc7:	49 f7 e5             	mul    %r13
  403cca:	48 89 c8             	mov    %rcx,%rax
  403ccd:	48 c1 ea 03          	shr    $0x3,%rdx
  403cd1:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403cd5:	4d 01 c0             	add    %r8,%r8
  403cd8:	4c 29 c0             	sub    %r8,%rax
  403cdb:	83 c0 30             	add    $0x30,%eax
  403cde:	48 83 f9 09          	cmp    $0x9,%rcx
  403ce2:	48 89 d1             	mov    %rdx,%rcx
  403ce5:	88 07                	mov    %al,(%rdi)
  403ce7:	77 d7                	ja     403cc0 <fmt_fp+0x1140>
  403ce9:	4c 39 e3             	cmp    %r12,%rbx
  403cec:	0f 84 36 01 00 00    	je     403e28 <fmt_fp+0x12a8>
  403cf2:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403cf6:	48 39 fa             	cmp    %rdi,%rdx
  403cf9:	0f 83 32 01 00 00    	jae    403e31 <fmt_fp+0x12b1>
  403cff:	49 89 fa             	mov    %rdi,%r10
  403d02:	48 89 f8             	mov    %rdi,%rax
  403d05:	49 29 d2             	sub    %rdx,%r10
  403d08:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403d0c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403d10:	76 46                	jbe    403d58 <fmt_fp+0x11d8>
  403d12:	4c 89 d6             	mov    %r10,%rsi
  403d15:	48 89 f9             	mov    %rdi,%rcx
  403d18:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403d1c:	48 29 f1             	sub    %rsi,%rcx
  403d1f:	40 f6 c6 10          	test   $0x10,%sil
  403d23:	74 1b                	je     403d40 <fmt_fp+0x11c0>
  403d25:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403d29:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403d2d:	48 39 c8             	cmp    %rcx,%rax
  403d30:	74 1e                	je     403d50 <fmt_fp+0x11d0>
  403d32:	0f 1f 00             	nopl   (%rax)
  403d35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403d3c:	00 00 00 00 
  403d40:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403d44:	48 83 e8 20          	sub    $0x20,%rax
  403d48:	0f 11 00             	movups %xmm0,(%rax)
  403d4b:	48 39 c8             	cmp    %rcx,%rax
  403d4e:	75 f0                	jne    403d40 <fmt_fp+0x11c0>
  403d50:	4c 39 d6             	cmp    %r10,%rsi
  403d53:	74 3b                	je     403d90 <fmt_fp+0x1210>
  403d55:	48 29 f7             	sub    %rsi,%rdi
  403d58:	48 89 d0             	mov    %rdx,%rax
  403d5b:	48 f7 d0             	not    %rax
  403d5e:	48 01 f8             	add    %rdi,%rax
  403d61:	48 83 ef 01          	sub    $0x1,%rdi
  403d65:	c6 07 30             	movb   $0x30,(%rdi)
  403d68:	48 39 fa             	cmp    %rdi,%rdx
  403d6b:	73 23                	jae    403d90 <fmt_fp+0x1210>
  403d6d:	a8 01                	test   $0x1,%al
  403d6f:	74 0f                	je     403d80 <fmt_fp+0x1200>
  403d71:	48 83 ef 01          	sub    $0x1,%rdi
  403d75:	c6 07 30             	movb   $0x30,(%rdi)
  403d78:	48 39 fa             	cmp    %rdi,%rdx
  403d7b:	73 13                	jae    403d90 <fmt_fp+0x1210>
  403d7d:	0f 1f 00             	nopl   (%rax)
  403d80:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403d84:	48 83 ef 02          	sub    $0x2,%rdi
  403d88:	c6 07 30             	movb   $0x30,(%rdi)
  403d8b:	48 39 fa             	cmp    %rdi,%rdx
  403d8e:	72 f0                	jb     403d80 <fmt_fp+0x1200>
  403d90:	be 09 00 00 00       	mov    $0x9,%esi
  403d95:	48 89 d7             	mov    %rdx,%rdi
  403d98:	41 f6 07 20          	testb  $0x20,(%r15)
  403d9c:	0f 84 9c 00 00 00    	je     403e3e <fmt_fp+0x12be>
  403da2:	49 83 c4 04          	add    $0x4,%r12
  403da6:	4d 39 e6             	cmp    %r12,%r14
  403da9:	0f 83 d1 fe ff ff    	jae    403c80 <fmt_fp+0x1100>
  403daf:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403db6:	49 89 dc             	mov    %rbx,%r12
  403db9:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403dc0:	45 85 ff             	test   %r15d,%r15d
  403dc3:	0f 85 36 04 00 00    	jne    4041ff <fmt_fp+0x167f>
  403dc9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403dd0:	0f 84 d8 fb ff ff    	je     4039ae <fmt_fp+0xe2e>
  403dd6:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403ddd:	f6 02 20             	testb  $0x20,(%rdx)
  403de0:	0f 85 c8 fb ff ff    	jne    4039ae <fmt_fp+0xe2e>
  403de6:	be 01 00 00 00       	mov    $0x1,%esi
  403deb:	48 8d 3d 72 33 00 00 	lea    0x3372(%rip),%rdi        # 407164 <_fini+0x240>
  403df2:	e8 19 26 00 00       	call   406410 <__fwritex>
  403df7:	41 83 c7 09          	add    $0x9,%r15d
  403dfb:	41 83 ff 09          	cmp    $0x9,%r15d
  403dff:	0f 8e a9 fb ff ff    	jle    4039ae <fmt_fp+0xe2e>
  403e05:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403e0c:	b9 09 00 00 00       	mov    $0x9,%ecx
  403e11:	44 89 fa             	mov    %r15d,%edx
  403e14:	be 30 00 00 00       	mov    $0x30,%esi
  403e19:	e8 62 ec ff ff       	call   402a80 <pad.part.0>
  403e1e:	e9 8b fb ff ff       	jmp    4039ae <fmt_fp+0xe2e>
  403e23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403e28:	48 39 f7             	cmp    %rsi,%rdi
  403e2b:	0f 84 b0 00 00 00    	je     403ee1 <fmt_fp+0x1361>
  403e31:	48 29 fe             	sub    %rdi,%rsi
  403e34:	41 f6 07 20          	testb  $0x20,(%r15)
  403e38:	0f 85 64 ff ff ff    	jne    403da2 <fmt_fp+0x1222>
  403e3e:	4c 89 fa             	mov    %r15,%rdx
  403e41:	e8 ca 25 00 00       	call   406410 <__fwritex>
  403e46:	66 0f 6f 05 a2 36 00 	movdqa 0x36a2(%rip),%xmm0        # 4074f0 <states+0x210>
  403e4d:	00 
  403e4e:	e9 4f ff ff ff       	jmp    403da2 <fmt_fp+0x1222>
  403e53:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403e5a:	f6 00 20             	testb  $0x20,(%rax)
  403e5d:	0f 85 4e f9 ff ff    	jne    4037b1 <fmt_fp+0xc31>
  403e63:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  403e6a:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403e71:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403e78:	e8 93 25 00 00       	call   406410 <__fwritex>
  403e7d:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403e83:	35 00 00 01 00       	xor    $0x10000,%eax
  403e88:	a9 00 20 01 00       	test   $0x12000,%eax
  403e8d:	0f 85 1e f9 ff ff    	jne    4037b1 <fmt_fp+0xc31>
  403e93:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403e9a:	0f 85 11 f9 ff ff    	jne    4037b1 <fmt_fp+0xc31>
  403ea0:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403ea6:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403eac:	be 30 00 00 00       	mov    $0x30,%esi
  403eb1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403eb8:	e8 c3 eb ff ff       	call   402a80 <pad.part.0>
  403ebd:	e9 ef f8 ff ff       	jmp    4037b1 <fmt_fp+0xc31>
  403ec2:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403ec9:	f6 00 20             	testb  $0x20,(%rax)
  403ecc:	75 af                	jne    403e7d <fmt_fp+0x12fd>
  403ece:	eb 93                	jmp    403e63 <fmt_fp+0x12e3>
  403ed0:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  403ed4:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403ed8:	4c 39 e3             	cmp    %r12,%rbx
  403edb:	0f 85 1e fe ff ff    	jne    403cff <fmt_fp+0x117f>
  403ee1:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403ee5:	be 01 00 00 00       	mov    $0x1,%esi
  403eea:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403eee:	e9 a5 fe ff ff       	jmp    403d98 <fmt_fp+0x1218>
  403ef3:	d9 05 b7 35 00 00    	flds   0x35b7(%rip)        # 4074b0 <states+0x1d0>
  403ef9:	d9 05 c1 35 00 00    	flds   0x35c1(%rip)        # 4074c0 <states+0x1e0>
  403eff:	b8 0e 00 00 00       	mov    $0xe,%eax
  403f04:	44 29 f8             	sub    %r15d,%eax
  403f07:	90                   	nop
  403f08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403f0f:	00 
  403f10:	dc c9                	fmul   %st,%st(1)
  403f12:	83 e8 01             	sub    $0x1,%eax
  403f15:	73 f9                	jae    403f10 <fmt_fp+0x1390>
  403f17:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403f1e:	80 38 2d             	cmpb   $0x2d,(%rax)
  403f21:	0f 84 c6 04 00 00    	je     4043ed <fmt_fp+0x186d>
  403f27:	d9 ca                	fxch   %st(2)
  403f29:	d8 c1                	fadd   %st(1),%st
  403f2b:	de e1                	fsubp  %st,%st(1)
  403f2d:	d9 c9                	fxch   %st(1)
  403f2f:	e9 9d f3 ff ff       	jmp    4032d1 <fmt_fp+0x751>
  403f34:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  403f3b:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  403f3f:	48 89 c2             	mov    %rax,%rdx
  403f42:	48 29 fe             	sub    %rdi,%rsi
  403f45:	e8 c6 24 00 00       	call   406410 <__fwritex>
  403f4a:	e9 5f fa ff ff       	jmp    4039ae <fmt_fp+0xe2e>
  403f4f:	44 01 d8             	add    %r11d,%eax
  403f52:	89 06                	mov    %eax,(%rsi)
  403f54:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  403f59:	0f 86 3e 05 00 00    	jbe    40449d <fmt_fp+0x191d>
  403f5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f66:	00 00 00 00 
  403f6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f71:	00 00 00 00 
  403f75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f7c:	00 00 00 00 
  403f80:	48 89 f2             	mov    %rsi,%rdx
  403f83:	48 83 ee 04          	sub    $0x4,%rsi
  403f87:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  403f8e:	4c 39 e6             	cmp    %r12,%rsi
  403f91:	73 0d                	jae    403fa0 <fmt_fp+0x1420>
  403f93:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  403f9a:	00 00 
  403f9c:	49 83 ec 04          	sub    $0x4,%r12
  403fa0:	8b 06                	mov    (%rsi),%eax
  403fa2:	83 c0 01             	add    $0x1,%eax
  403fa5:	89 06                	mov    %eax,(%rsi)
  403fa7:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  403fac:	77 d2                	ja     403f80 <fmt_fp+0x1400>
  403fae:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403fb5:	41 8b 0c 24          	mov    (%r12),%ecx
  403fb9:	4c 29 e0             	sub    %r12,%rax
  403fbc:	48 c1 f8 02          	sar    $0x2,%rax
  403fc0:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  403fc3:	83 f9 09             	cmp    $0x9,%ecx
  403fc6:	0f 86 43 f6 ff ff    	jbe    40360f <fmt_fp+0xa8f>
  403fcc:	b8 0a 00 00 00       	mov    $0xa,%eax
  403fd1:	0f 1f 40 00          	nopl   0x0(%rax)
  403fd5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fdc:	00 00 00 00 
  403fe0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403fe3:	83 c7 01             	add    $0x1,%edi
  403fe6:	01 c0                	add    %eax,%eax
  403fe8:	39 c1                	cmp    %eax,%ecx
  403fea:	73 f4                	jae    403fe0 <fmt_fp+0x1460>
  403fec:	e9 1e f6 ff ff       	jmp    40360f <fmt_fp+0xa8f>
  403ff1:	be 01 00 00 00       	mov    $0x1,%esi
  403ff6:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  403ffc:	e9 d7 ec ff ff       	jmp    402cd8 <fmt_fp+0x158>
  404001:	be 01 00 00 00       	mov    $0x1,%esi
  404006:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40400c:	e9 b6 ec ff ff       	jmp    402cc7 <fmt_fp+0x147>
  404011:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404018:	f6 07 20             	testb  $0x20,(%rdi)
  40401b:	0f 84 9d f4 ff ff    	je     4034be <fmt_fp+0x93e>
  404021:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404027:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40402d:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  404034:	35 00 00 01 00       	xor    $0x10000,%eax
  404039:	a9 00 20 01 00       	test   $0x12000,%eax
  40403e:	75 0d                	jne    40404d <fmt_fp+0x14cd>
  404040:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404047:	0f 84 bd f4 ff ff    	je     40350a <fmt_fp+0x98a>
  40404d:	45 29 f7             	sub    %r14d,%r15d
  404050:	45 85 ff             	test   %r15d,%r15d
  404053:	0f 8e 9d f1 ff ff    	jle    4031f6 <fmt_fp+0x676>
  404059:	e9 64 f1 ff ff       	jmp    4031c2 <fmt_fp+0x642>
  40405e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  404065:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  404069:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  404070:	0f 85 9c 00 00 00    	jne    404112 <fmt_fp+0x1592>
  404076:	49 39 dc             	cmp    %rbx,%r12
  404079:	0f 83 01 01 00 00    	jae    404180 <fmt_fp+0x1600>
  40407f:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404083:	45 85 c9             	test   %r9d,%r9d
  404086:	0f 84 f4 00 00 00    	je     404180 <fmt_fp+0x1600>
  40408c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404093:	31 f6                	xor    %esi,%esi
  404095:	d1 c8                	ror    $1,%eax
  404097:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40409c:	0f 87 e3 00 00 00    	ja     404185 <fmt_fp+0x1605>
  4040a2:	31 f6                	xor    %esi,%esi
  4040a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4040a9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4040ac:	44 89 c8             	mov    %r9d,%eax
  4040af:	31 d2                	xor    %edx,%edx
  4040b1:	83 c6 01             	add    $0x1,%esi
  4040b4:	01 c9                	add    %ecx,%ecx
  4040b6:	f7 f1                	div    %ecx
  4040b8:	85 d2                	test   %edx,%edx
  4040ba:	74 ed                	je     4040a9 <fmt_fp+0x1529>
  4040bc:	48 63 f6             	movslq %esi,%rsi
  4040bf:	e9 00 fb ff ff       	jmp    403bc4 <fmt_fp+0x1044>
  4040c4:	db 2d 16 34 00 00    	fldt   0x3416(%rip)        # 4074e0 <states+0x200>
  4040ca:	d9 05 e8 33 00 00    	flds   0x33e8(%rip)        # 4074b8 <states+0x1d8>
  4040d0:	e9 fe f4 ff ff       	jmp    4035d3 <fmt_fp+0xa53>
  4040d5:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4040d9:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  4040dd:	e9 54 f2 ff ff       	jmp    403336 <fmt_fp+0x7b6>
  4040e2:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4040e8:	75 0f                	jne    4040f9 <fmt_fp+0x1579>
  4040ea:	49 39 f4             	cmp    %rsi,%r12
  4040ed:	73 0a                	jae    4040f9 <fmt_fp+0x1579>
  4040ef:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4040f3:	0f 85 ba f4 ff ff    	jne    4035b3 <fmt_fp+0xa33>
  4040f9:	d9 05 b5 33 00 00    	flds   0x33b5(%rip)        # 4074b4 <states+0x1d4>
  4040ff:	e9 b5 f4 ff ff       	jmp    4035b9 <fmt_fp+0xa39>
  404104:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404109:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40410d:	e9 4d f3 ff ff       	jmp    40345f <fmt_fp+0x8df>
  404112:	45 85 ff             	test   %r15d,%r15d
  404115:	0f 85 24 03 00 00    	jne    40443f <fmt_fp+0x18bf>
  40411b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404122:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  404128:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  40412e:	41 83 ce 20          	or     $0x20,%r14d
  404132:	e9 3d f5 ff ff       	jmp    403674 <fmt_fp+0xaf4>
  404137:	45 85 ff             	test   %r15d,%r15d
  40413a:	0f 85 bd f9 ff ff    	jne    403afd <fmt_fp+0xf7d>
  404140:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404147:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40414d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404153:	41 83 ce 20          	or     $0x20,%r14d
  404157:	41 83 fe 66          	cmp    $0x66,%r14d
  40415b:	0f 85 08 f5 ff ff    	jne    403669 <fmt_fp+0xae9>
  404161:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  404167:	0f 84 fa 02 00 00    	je     404467 <fmt_fp+0x18e7>
  40416d:	85 ff                	test   %edi,%edi
  40416f:	0f 85 ce f9 ff ff    	jne    403b43 <fmt_fp+0xfc3>
  404175:	e9 df f5 ff ff       	jmp    403759 <fmt_fp+0xbd9>
  40417a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404180:	be 09 00 00 00       	mov    $0x9,%esi
  404185:	48 89 d8             	mov    %rbx,%rax
  404188:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40418f:	48 63 d7             	movslq %edi,%rdx
  404192:	48 c1 f8 02          	sar    $0x2,%rax
  404196:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40419b:	48 01 d0             	add    %rdx,%rax
  40419e:	ba 00 00 00 00       	mov    $0x0,%edx
  4041a3:	48 29 f0             	sub    %rsi,%rax
  4041a6:	48 0f 48 c2          	cmovs  %rdx,%rax
  4041aa:	49 63 d7             	movslq %r15d,%rdx
  4041ad:	48 39 d0             	cmp    %rdx,%rax
  4041b0:	48 0f 4f c2          	cmovg  %rdx,%rax
  4041b4:	41 89 c7             	mov    %eax,%r15d
  4041b7:	48 85 c0             	test   %rax,%rax
  4041ba:	0f 85 3d f9 ff ff    	jne    403afd <fmt_fp+0xf7d>
  4041c0:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4041c7:	41 83 ce 20          	or     $0x20,%r14d
  4041cb:	41 83 fe 66          	cmp    $0x66,%r14d
  4041cf:	0f 84 9c 02 00 00    	je     404471 <fmt_fp+0x18f1>
  4041d5:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  4041db:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4041e1:	45 31 ff             	xor    %r15d,%r15d
  4041e4:	e9 80 f4 ff ff       	jmp    403669 <fmt_fp+0xae9>
  4041e9:	44 39 d7             	cmp    %r10d,%edi
  4041ec:	0f 8f 75 02 00 00    	jg     404467 <fmt_fp+0x18e7>
  4041f2:	85 ff                	test   %edi,%edi
  4041f4:	0f 8f 49 f9 ff ff    	jg     403b43 <fmt_fp+0xfc3>
  4041fa:	e9 5a f5 ff ff       	jmp    403759 <fmt_fp+0xbd9>
  4041ff:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404206:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40420b:	48 89 f8             	mov    %rdi,%rax
  40420e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404212:	4c 29 e0             	sub    %r12,%rax
  404215:	48 39 d1             	cmp    %rdx,%rcx
  404218:	ba 00 00 00 00       	mov    $0x0,%edx
  40421d:	48 0f 42 c2          	cmovb  %rdx,%rax
  404221:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  404226:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40422d:	f6 00 20             	testb  $0x20,(%rax)
  404230:	0f 84 70 02 00 00    	je     4044a6 <fmt_fp+0x1926>
  404236:	45 85 ff             	test   %r15d,%r15d
  404239:	0f 8e b8 fb ff ff    	jle    403df7 <fmt_fp+0x1277>
  40423f:	49 39 de             	cmp    %rbx,%r14
  404242:	0f 83 af fb ff ff    	jae    403df7 <fmt_fp+0x1277>
  404248:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40424d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404251:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404255:	49 89 d9             	mov    %rbx,%r9
  404258:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40425f:	66 0f 6e c0          	movd   %eax,%xmm0
  404263:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  40426a:	cc cc cc 
  40426d:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  404272:	0f 1f 00             	nopl   (%rax)
  404275:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40427c:	00 00 00 00 
  404280:	41 8b 0e             	mov    (%r14),%ecx
  404283:	4c 89 c7             	mov    %r8,%rdi
  404286:	48 85 c9             	test   %rcx,%rcx
  404289:	74 67                	je     4042f2 <fmt_fp+0x1772>
  40428b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404292:	00 00 
  404294:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40429b:	00 00 00 00 
  40429f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042a6:	00 00 00 00 
  4042aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042b1:	00 00 00 00 
  4042b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042bc:	00 00 00 00 
  4042c0:	48 89 c8             	mov    %rcx,%rax
  4042c3:	48 83 ef 01          	sub    $0x1,%rdi
  4042c7:	49 f7 e4             	mul    %r12
  4042ca:	48 89 c8             	mov    %rcx,%rax
  4042cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4042d1:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  4042d5:	48 01 f6             	add    %rsi,%rsi
  4042d8:	48 29 f0             	sub    %rsi,%rax
  4042db:	83 c0 30             	add    $0x30,%eax
  4042de:	48 83 f9 09          	cmp    $0x9,%rcx
  4042e2:	48 89 d1             	mov    %rdx,%rcx
  4042e5:	88 07                	mov    %al,(%rdi)
  4042e7:	77 d7                	ja     4042c0 <fmt_fp+0x1740>
  4042e9:	49 39 fd             	cmp    %rdi,%r13
  4042ec:	0f 83 91 00 00 00    	jae    404383 <fmt_fp+0x1803>
  4042f2:	48 89 fe             	mov    %rdi,%rsi
  4042f5:	48 89 f8             	mov    %rdi,%rax
  4042f8:	4c 29 ee             	sub    %r13,%rsi
  4042fb:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  4042ff:	48 83 fa 0e          	cmp    $0xe,%rdx
  404303:	76 43                	jbe    404348 <fmt_fp+0x17c8>
  404305:	48 89 f1             	mov    %rsi,%rcx
  404308:	48 89 fa             	mov    %rdi,%rdx
  40430b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40430f:	48 29 ca             	sub    %rcx,%rdx
  404312:	f6 c1 10             	test   $0x10,%cl
  404315:	74 19                	je     404330 <fmt_fp+0x17b0>
  404317:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40431b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40431f:	48 39 d0             	cmp    %rdx,%rax
  404322:	74 1c                	je     404340 <fmt_fp+0x17c0>
  404324:	90                   	nop
  404325:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40432c:	00 00 00 00 
  404330:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404334:	48 83 e8 20          	sub    $0x20,%rax
  404338:	0f 11 00             	movups %xmm0,(%rax)
  40433b:	48 39 d0             	cmp    %rdx,%rax
  40433e:	75 f0                	jne    404330 <fmt_fp+0x17b0>
  404340:	48 39 f1             	cmp    %rsi,%rcx
  404343:	74 3b                	je     404380 <fmt_fp+0x1800>
  404345:	48 29 cf             	sub    %rcx,%rdi
  404348:	4c 89 e8             	mov    %r13,%rax
  40434b:	48 f7 d0             	not    %rax
  40434e:	48 01 f8             	add    %rdi,%rax
  404351:	48 83 ef 01          	sub    $0x1,%rdi
  404355:	c6 07 30             	movb   $0x30,(%rdi)
  404358:	49 39 fd             	cmp    %rdi,%r13
  40435b:	73 23                	jae    404380 <fmt_fp+0x1800>
  40435d:	a8 01                	test   $0x1,%al
  40435f:	74 0f                	je     404370 <fmt_fp+0x17f0>
  404361:	48 83 ef 01          	sub    $0x1,%rdi
  404365:	c6 07 30             	movb   $0x30,(%rdi)
  404368:	49 39 fd             	cmp    %rdi,%r13
  40436b:	73 13                	jae    404380 <fmt_fp+0x1800>
  40436d:	0f 1f 00             	nopl   (%rax)
  404370:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  404374:	48 83 ef 02          	sub    $0x2,%rdi
  404378:	c6 07 30             	movb   $0x30,(%rdi)
  40437b:	49 39 fd             	cmp    %rdi,%r13
  40437e:	72 f0                	jb     404370 <fmt_fp+0x17f0>
  404380:	4c 89 ef             	mov    %r13,%rdi
  404383:	f6 03 20             	testb  $0x20,(%rbx)
  404386:	74 28                	je     4043b0 <fmt_fp+0x1830>
  404388:	49 83 c6 04          	add    $0x4,%r14
  40438c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404390:	4d 39 ce             	cmp    %r9,%r14
  404393:	0f 83 62 fa ff ff    	jae    403dfb <fmt_fp+0x127b>
  404399:	85 c0                	test   %eax,%eax
  40439b:	0f 8e 5a fa ff ff    	jle    403dfb <fmt_fp+0x127b>
  4043a1:	41 89 c7             	mov    %eax,%r15d
  4043a4:	e9 d7 fe ff ff       	jmp    404280 <fmt_fp+0x1700>
  4043a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4043b0:	b8 09 00 00 00       	mov    $0x9,%eax
  4043b5:	48 89 da             	mov    %rbx,%rdx
  4043b8:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  4043bf:	41 39 c7             	cmp    %eax,%r15d
  4043c2:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  4043c9:	41 0f 4e c7          	cmovle %r15d,%eax
  4043cd:	48 63 f0             	movslq %eax,%rsi
  4043d0:	e8 3b 20 00 00       	call   406410 <__fwritex>
  4043d5:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  4043dc:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  4043e3:	66 0f 6f 05 05 31 00 	movdqa 0x3105(%rip),%xmm0        # 4074f0 <states+0x210>
  4043ea:	00 
  4043eb:	eb 9b                	jmp    404388 <fmt_fp+0x1808>
  4043ed:	d9 ca                	fxch   %st(2)
  4043ef:	d9 e0                	fchs
  4043f1:	d8 e1                	fsub   %st(1),%st
  4043f3:	de c1                	faddp  %st,%st(1)
  4043f5:	d9 e0                	fchs
  4043f7:	d9 c9                	fxch   %st(1)
  4043f9:	e9 d3 ee ff ff       	jmp    4032d1 <fmt_fp+0x751>
  4043fe:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404402:	48 39 c3             	cmp    %rax,%rbx
  404405:	0f 85 c2 f1 ff ff    	jne    4035cd <fmt_fp+0xa4d>
  40440b:	d9 e8                	fld1
  40440d:	e9 c1 f1 ff ff       	jmp    4035d3 <fmt_fp+0xa53>
  404412:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404416:	4c 89 e9             	mov    %r13,%rcx
  404419:	e9 e2 f2 ff ff       	jmp    403700 <fmt_fp+0xb80>
  40441e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  404424:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404429:	e9 32 ec ff ff       	jmp    403060 <fmt_fp+0x4e0>
  40442e:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404432:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  404436:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  40443a:	e9 01 ef ff ff       	jmp    403340 <fmt_fp+0x7c0>
  40443f:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404446:	74 1f                	je     404467 <fmt_fp+0x18e7>
  404448:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40444f:	41 83 c1 01          	add    $0x1,%r9d
  404453:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404458:	44 29 c8             	sub    %r9d,%eax
  40445b:	41 83 ce 20          	or     $0x20,%r14d
  40445f:	4c 63 d0             	movslq %eax,%r10
  404462:	e9 0d f2 ff ff       	jmp    403674 <fmt_fp+0xaf4>
  404467:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40446c:	e9 ee ec ff ff       	jmp    40315f <fmt_fp+0x5df>
  404471:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  404477:	74 ee                	je     404467 <fmt_fp+0x18e7>
  404479:	45 31 ff             	xor    %r15d,%r15d
  40447c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404482:	85 ff                	test   %edi,%edi
  404484:	0f 8f b9 f6 ff ff    	jg     403b43 <fmt_fp+0xfc3>
  40448a:	e9 ca f2 ff ff       	jmp    403759 <fmt_fp+0xbd9>
  40448f:	dd d8                	fstp   %st(0)
  404491:	dd d8                	fstp   %st(0)
  404493:	dd d8                	fstp   %st(0)
  404495:	49 89 c0             	mov    %rax,%r8
  404498:	e9 82 ef ff ff       	jmp    40341f <fmt_fp+0x89f>
  40449d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4044a1:	e9 08 fb ff ff       	jmp    403fae <fmt_fp+0x142e>
  4044a6:	48 89 c2             	mov    %rax,%rdx
  4044a9:	be 01 00 00 00       	mov    $0x1,%esi
  4044ae:	48 8d 3d af 2c 00 00 	lea    0x2caf(%rip),%rdi        # 407164 <_fini+0x240>
  4044b5:	e8 56 1f 00 00       	call   406410 <__fwritex>
  4044ba:	e9 77 fd ff ff       	jmp    404236 <fmt_fp+0x16b6>
  4044bf:	e8 fc e0 ff ff       	call   4025c0 <__stack_chk_fail>
  4044c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044cb:	00 00 00 
  4044ce:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044d5:	00 00 00 
  4044d8:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044df:	00 00 00 
  4044e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044e9:	00 00 00 
  4044ec:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044f3:	00 00 00 
  4044f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4044fd:	00 00 00 

0000000000404500 <printf_core>:
  404500:	55                   	push   %rbp
  404501:	48 89 e5             	mov    %rsp,%rbp
  404504:	41 57                	push   %r15
  404506:	4c 8d 3d d3 2d 00 00 	lea    0x2dd3(%rip),%r15        # 4072e0 <states>
  40450d:	41 56                	push   %r14
  40450f:	49 89 f6             	mov    %rsi,%r14
  404512:	41 55                	push   %r13
  404514:	45 31 ed             	xor    %r13d,%r13d
  404517:	41 54                	push   %r12
  404519:	53                   	push   %rbx
  40451a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  404521:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  404525:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  40452c:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  404533:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  40453a:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404541:	00 00 
  404543:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404547:	45 31 c0             	xor    %r8d,%r8d
  40454a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404551:	00 00 00 
  404554:	41 0f b6 06          	movzbl (%r14),%eax
  404558:	45 01 c5             	add    %r8d,%r13d
  40455b:	84 c0                	test   %al,%al
  40455d:	0f 84 ad 06 00 00    	je     404c10 <printf_core+0x710>
  404563:	4d 89 f2             	mov    %r14,%r10
  404566:	eb 25                	jmp    40458d <printf_core+0x8d>
  404568:	66 90                	xchg   %ax,%ax
  40456a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404571:	00 00 00 00 
  404575:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40457c:	00 00 00 00 
  404580:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404585:	49 83 c2 01          	add    $0x1,%r10
  404589:	84 c0                	test   %al,%al
  40458b:	74 73                	je     404600 <printf_core+0x100>
  40458d:	3c 25                	cmp    $0x25,%al
  40458f:	75 ef                	jne    404580 <printf_core+0x80>
  404591:	4c 89 d3             	mov    %r10,%rbx
  404594:	eb 17                	jmp    4045ad <printf_core+0xad>
  404596:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40459d:	00 00 00 
  4045a0:	48 83 c3 02          	add    $0x2,%rbx
  4045a4:	49 83 c2 01          	add    $0x1,%r10
  4045a8:	80 3b 25             	cmpb   $0x25,(%rbx)
  4045ab:	75 06                	jne    4045b3 <printf_core+0xb3>
  4045ad:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  4045b1:	74 ed                	je     4045a0 <printf_core+0xa0>
  4045b3:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  4045b9:	4d 29 f2             	sub    %r14,%r10
  4045bc:	45 29 eb             	sub    %r13d,%r11d
  4045bf:	49 63 c3             	movslq %r11d,%rax
  4045c2:	49 39 c2             	cmp    %rax,%r10
  4045c5:	0f 8f 15 03 00 00    	jg     4048e0 <printf_core+0x3e0>
  4045cb:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4045cf:	45 89 d0             	mov    %r10d,%r8d
  4045d2:	48 85 c0             	test   %rax,%rax
  4045d5:	74 09                	je     4045e0 <printf_core+0xe0>
  4045d7:	f6 00 20             	testb  $0x20,(%rax)
  4045da:	0f 84 10 03 00 00    	je     4048f0 <printf_core+0x3f0>
  4045e0:	45 85 d2             	test   %r10d,%r10d
  4045e3:	74 2b                	je     404610 <printf_core+0x110>
  4045e5:	45 39 c3             	cmp    %r8d,%r11d
  4045e8:	0f 8c f2 02 00 00    	jl     4048e0 <printf_core+0x3e0>
  4045ee:	49 89 de             	mov    %rbx,%r14
  4045f1:	e9 5e ff ff ff       	jmp    404554 <printf_core+0x54>
  4045f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4045fd:	00 00 00 
  404600:	3c 25                	cmp    $0x25,%al
  404602:	74 8d                	je     404591 <printf_core+0x91>
  404604:	4c 89 d3             	mov    %r10,%rbx
  404607:	eb aa                	jmp    4045b3 <printf_core+0xb3>
  404609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404610:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404614:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404617:	89 c8                	mov    %ecx,%eax
  404619:	83 ff 09             	cmp    $0x9,%edi
  40461c:	77 1a                	ja     404638 <printf_core+0x138>
  40461e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  404622:	0f 84 e5 03 00 00    	je     404a0d <printf_core+0x50d>
  404628:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40462c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404631:	eb 1a                	jmp    40464d <printf_core+0x14d>
  404633:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404638:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40463c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404641:	83 e9 20             	sub    $0x20,%ecx
  404644:	83 f9 1f             	cmp    $0x1f,%ecx
  404647:	0f 87 b5 05 00 00    	ja     404c02 <printf_core+0x702>
  40464d:	45 31 e4             	xor    %r12d,%r12d
  404650:	be 89 28 01 00       	mov    $0x12889,%esi
  404655:	eb 48                	jmp    40469f <printf_core+0x19f>
  404657:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40465e:	00 
  40465f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404666:	00 00 00 00 
  40466a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404671:	00 00 00 00 
  404675:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40467c:	00 00 00 00 
  404680:	b8 01 00 00 00       	mov    $0x1,%eax
  404685:	48 83 c2 01          	add    $0x1,%rdx
  404689:	d3 e0                	shl    %cl,%eax
  40468b:	0f be 0a             	movsbl (%rdx),%ecx
  40468e:	41 09 c4             	or     %eax,%r12d
  404691:	89 c8                	mov    %ecx,%eax
  404693:	83 e9 20             	sub    $0x20,%ecx
  404696:	83 f9 1f             	cmp    $0x1f,%ecx
  404699:	0f 87 49 01 00 00    	ja     4047e8 <printf_core+0x2e8>
  40469f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  4046a2:	0f a3 ce             	bt     %ecx,%esi
  4046a5:	72 d9                	jb     404680 <printf_core+0x180>
  4046a7:	3c 2a                	cmp    $0x2a,%al
  4046a9:	0f 85 39 01 00 00    	jne    4047e8 <printf_core+0x2e8>
  4046af:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  4046b4:	48 89 c8             	mov    %rcx,%rax
  4046b7:	83 e9 30             	sub    $0x30,%ecx
  4046ba:	83 f9 09             	cmp    $0x9,%ecx
  4046bd:	0f 86 0d 03 00 00    	jbe    4049d0 <printf_core+0x4d0>
  4046c3:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  4046c9:	85 c9                	test   %ecx,%ecx
  4046cb:	0f 85 dc 00 00 00    	jne    4047ad <printf_core+0x2ad>
  4046d1:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4046d5:	45 89 d1             	mov    %r10d,%r9d
  4046d8:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4046dd:	0f 84 58 01 00 00    	je     40483b <printf_core+0x33b>
  4046e3:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4046ea:	8b 06                	mov    (%rsi),%eax
  4046ec:	83 f8 2f             	cmp    $0x2f,%eax
  4046ef:	0f 87 4a 03 00 00    	ja     404a3f <printf_core+0x53f>
  4046f5:	89 c2                	mov    %eax,%edx
  4046f7:	83 c0 08             	add    $0x8,%eax
  4046fa:	48 03 56 10          	add    0x10(%rsi),%rdx
  4046fe:	89 06                	mov    %eax,(%rsi)
  404700:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404707:	00 00 00 
  40470a:	44 8b 0a             	mov    (%rdx),%r9d
  40470d:	44 89 e2             	mov    %r12d,%edx
  404710:	0f b6 03             	movzbl (%rbx),%eax
  404713:	80 ce 20             	or     $0x20,%dh
  404716:	45 85 c9             	test   %r9d,%r9d
  404719:	44 0f 48 e2          	cmovs  %edx,%r12d
  40471d:	44 89 ca             	mov    %r9d,%edx
  404720:	f7 da                	neg    %edx
  404722:	45 85 c9             	test   %r9d,%r9d
  404725:	44 0f 48 ca          	cmovs  %edx,%r9d
  404729:	3c 2e                	cmp    $0x2e,%al
  40472b:	0f 84 12 01 00 00    	je     404843 <printf_core+0x343>
  404731:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404738:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  40473f:	31 c0                	xor    %eax,%eax
  404741:	eb 5f                	jmp    4047a2 <printf_core+0x2a2>
  404743:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404749:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404750:	00 00 00 00 
  404754:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40475b:	00 00 00 00 
  40475f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404766:	00 00 00 00 
  40476a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404771:	00 00 00 00 
  404775:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40477c:	00 00 00 00 
  404780:	89 c1                	mov    %eax,%ecx
  404782:	48 63 d2             	movslq %edx,%rdx
  404785:	48 83 c3 01          	add    $0x1,%rbx
  404789:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  40478d:	4c 01 fe             	add    %r15,%rsi
  404790:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404794:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404797:	83 fa 07             	cmp    $0x7,%edx
  40479a:	0f 87 90 01 00 00    	ja     404930 <printf_core+0x430>
  4047a0:	89 f0                	mov    %esi,%eax
  4047a2:	0f be 13             	movsbl (%rbx),%edx
  4047a5:	83 ea 41             	sub    $0x41,%edx
  4047a8:	83 fa 39             	cmp    $0x39,%edx
  4047ab:	76 d3                	jbe    404780 <printf_core+0x280>
  4047ad:	e8 de 16 00 00       	call   405e90 <__errno_location>
  4047b2:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  4047b8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  4047be:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4047c2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4047c9:	00 00 
  4047cb:	0f 85 a2 0f 00 00    	jne    405773 <printf_core+0x1273>
  4047d1:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4047d5:	44 89 d8             	mov    %r11d,%eax
  4047d8:	5b                   	pop    %rbx
  4047d9:	41 5c                	pop    %r12
  4047db:	41 5d                	pop    %r13
  4047dd:	41 5e                	pop    %r14
  4047df:	41 5f                	pop    %r15
  4047e1:	5d                   	pop    %rbp
  4047e2:	c3                   	ret
  4047e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4047e8:	0f be 0a             	movsbl (%rdx),%ecx
  4047eb:	45 89 d1             	mov    %r10d,%r9d
  4047ee:	48 89 d3             	mov    %rdx,%rbx
  4047f1:	89 c8                	mov    %ecx,%eax
  4047f3:	83 e9 30             	sub    $0x30,%ecx
  4047f6:	83 f9 09             	cmp    $0x9,%ecx
  4047f9:	77 40                	ja     40483b <printf_core+0x33b>
  4047fb:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404802:	0f 8f c8 00 00 00    	jg     4048d0 <printf_core+0x3d0>
  404808:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  40480c:	83 e8 30             	sub    $0x30,%eax
  40480f:	0f be c0             	movsbl %al,%eax
  404812:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404818:	39 f0                	cmp    %esi,%eax
  40481a:	0f 8f b0 00 00 00    	jg     4048d0 <printf_core+0x3d0>
  404820:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404824:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404828:	29 c8                	sub    %ecx,%eax
  40482a:	41 89 c1             	mov    %eax,%r9d
  40482d:	89 d0                	mov    %edx,%eax
  40482f:	83 ea 30             	sub    $0x30,%edx
  404832:	83 fa 09             	cmp    $0x9,%edx
  404835:	0f 86 3d 0f 00 00    	jbe    405778 <printf_core+0x1278>
  40483b:	3c 2e                	cmp    $0x2e,%al
  40483d:	0f 85 ee fe ff ff    	jne    404731 <printf_core+0x231>
  404843:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404847:	3c 2a                	cmp    $0x2a,%al
  404849:	0f 85 11 02 00 00    	jne    404a60 <printf_core+0x560>
  40484f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404853:	89 c2                	mov    %eax,%edx
  404855:	83 e8 30             	sub    $0x30,%eax
  404858:	83 f8 09             	cmp    $0x9,%eax
  40485b:	77 0a                	ja     404867 <printf_core+0x367>
  40485d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  404861:	0f 84 4f 03 00 00    	je     404bb6 <printf_core+0x6b6>
  404867:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  40486d:	85 c0                	test   %eax,%eax
  40486f:	0f 85 38 ff ff ff    	jne    4047ad <printf_core+0x2ad>
  404875:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40487a:	0f 84 6f 03 00 00    	je     404bef <printf_core+0x6ef>
  404880:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404887:	8b 06                	mov    (%rsi),%eax
  404889:	83 f8 2f             	cmp    $0x2f,%eax
  40488c:	0f 87 60 02 00 00    	ja     404af2 <printf_core+0x5f2>
  404892:	89 c2                	mov    %eax,%edx
  404894:	83 c0 08             	add    $0x8,%eax
  404897:	48 03 56 10          	add    0x10(%rsi),%rdx
  40489b:	89 06                	mov    %eax,(%rsi)
  40489d:	8b 02                	mov    (%rdx),%eax
  40489f:	89 45 80             	mov    %eax,-0x80(%rbp)
  4048a2:	f7 d0                	not    %eax
  4048a4:	c1 e8 1f             	shr    $0x1f,%eax
  4048a7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4048ad:	48 83 c3 02          	add    $0x2,%rbx
  4048b1:	e9 89 fe ff ff       	jmp    40473f <printf_core+0x23f>
  4048b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4048bd:	00 00 00 
  4048c0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4048c4:	0f be 40 01          	movsbl 0x1(%rax),%eax
  4048c8:	83 e8 30             	sub    $0x30,%eax
  4048cb:	83 f8 09             	cmp    $0x9,%eax
  4048ce:	77 10                	ja     4048e0 <printf_core+0x3e0>
  4048d0:	48 8d 42 01          	lea    0x1(%rdx),%rax
  4048d4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  4048d8:	83 ea 30             	sub    $0x30,%edx
  4048db:	83 fa 09             	cmp    $0x9,%edx
  4048de:	76 e0                	jbe    4048c0 <printf_core+0x3c0>
  4048e0:	e8 ab 15 00 00       	call   405e90 <__errno_location>
  4048e5:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  4048eb:	e9 c8 fe ff ff       	jmp    4047b8 <printf_core+0x2b8>
  4048f0:	49 63 f2             	movslq %r10d,%rsi
  4048f3:	48 89 c2             	mov    %rax,%rdx
  4048f6:	4c 89 f7             	mov    %r14,%rdi
  4048f9:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404900:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404907:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40490b:	e8 00 1b 00 00       	call   406410 <__fwritex>
  404910:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404917:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40491e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404922:	e9 b9 fc ff ff       	jmp    4045e0 <printf_core+0xe0>
  404927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40492e:	00 00 
  404930:	85 f6                	test   %esi,%esi
  404932:	0f 84 75 fe ff ff    	je     4047ad <printf_core+0x2ad>
  404938:	83 fe 1b             	cmp    $0x1b,%esi
  40493b:	0f 84 e5 00 00 00    	je     404a26 <printf_core+0x526>
  404941:	83 ff ff             	cmp    $0xffffffff,%edi
  404944:	0f 84 01 02 00 00    	je     404b4b <printf_core+0x64b>
  40494a:	48 63 ff             	movslq %edi,%rdi
  40494d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404952:	0f 84 b2 01 00 00    	je     404b0a <printf_core+0x60a>
  404958:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  40495f:	48 c1 e7 04          	shl    $0x4,%rdi
  404963:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404968:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  40496c:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404970:	f6 07 20             	testb  $0x20,(%rdi)
  404973:	0f 85 3f fe ff ff    	jne    4047b8 <printf_core+0x2b8>
  404979:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  40497d:	89 d6                	mov    %edx,%esi
  40497f:	85 c0                	test   %eax,%eax
  404981:	74 13                	je     404996 <printf_core+0x496>
  404983:	89 d7                	mov    %edx,%edi
  404985:	83 e6 df             	and    $0xffffffdf,%esi
  404988:	83 e7 0f             	and    $0xf,%edi
  40498b:	40 0f be f6          	movsbl %sil,%esi
  40498f:	40 80 ff 03          	cmp    $0x3,%dil
  404993:	0f 44 d6             	cmove  %esi,%edx
  404996:	44 89 e6             	mov    %r12d,%esi
  404999:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  40499f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  4049a6:	44 0f 45 e6          	cmovne %esi,%r12d
  4049aa:	8d 72 bf             	lea    -0x41(%rdx),%esi
  4049ad:	83 fe 37             	cmp    $0x37,%esi
  4049b0:	0f 87 c2 02 00 00    	ja     404c78 <printf_core+0x778>
  4049b6:	48 8d 3d 03 28 00 00 	lea    0x2803(%rip),%rdi        # 4071c0 <_fini+0x29c>
  4049bd:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  4049c1:	48 01 fe             	add    %rdi,%rsi
  4049c4:	3e ff e6             	notrack jmp *%rsi
  4049c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4049ce:	00 00 
  4049d0:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  4049d4:	0f 84 ab 01 00 00    	je     404b85 <printf_core+0x685>
  4049da:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  4049e0:	85 f6                	test   %esi,%esi
  4049e2:	0f 85 c5 fd ff ff    	jne    4047ad <printf_core+0x2ad>
  4049e8:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4049ec:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4049f1:	0f 85 ec fc ff ff    	jne    4046e3 <printf_core+0x1e3>
  4049f7:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  4049fe:	45 89 d1             	mov    %r10d,%r9d
  404a01:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404a08:	e9 32 fd ff ff       	jmp    40473f <printf_core+0x23f>
  404a0d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404a11:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404a15:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404a1c:	00 00 00 
  404a1f:	89 c8                	mov    %ecx,%eax
  404a21:	e9 1b fc ff ff       	jmp    404641 <printf_core+0x141>
  404a26:	83 ff ff             	cmp    $0xffffffff,%edi
  404a29:	0f 85 7e fd ff ff    	jne    4047ad <printf_core+0x2ad>
  404a2f:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404a34:	0f 85 32 ff ff ff    	jne    40496c <printf_core+0x46c>
  404a3a:	e9 af fb ff ff       	jmp    4045ee <printf_core+0xee>
  404a3f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404a46:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404a4a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404a4e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404a52:	e9 a9 fc ff ff       	jmp    404700 <printf_core+0x200>
  404a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404a5e:	00 00 
  404a60:	0f be d0             	movsbl %al,%edx
  404a63:	48 83 c3 01          	add    $0x1,%rbx
  404a67:	83 ea 30             	sub    $0x30,%edx
  404a6a:	83 fa 09             	cmp    $0x9,%edx
  404a6d:	0f 87 93 0b 00 00    	ja     405606 <printf_core+0x1106>
  404a73:	44 89 d2             	mov    %r10d,%edx
  404a76:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404a7c:	0f 8f fe 0c 00 00    	jg     405780 <printf_core+0x1280>
  404a82:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404a85:	83 e8 30             	sub    $0x30,%eax
  404a88:	0f be c0             	movsbl %al,%eax
  404a8b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404a91:	39 c2                	cmp    %eax,%edx
  404a93:	0f 8d 87 00 00 00    	jge    404b20 <printf_core+0x620>
  404a99:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404a9d:	83 e8 30             	sub    $0x30,%eax
  404aa0:	83 f8 09             	cmp    $0x9,%eax
  404aa3:	0f 87 8b 0a 00 00    	ja     405534 <printf_core+0x1034>
  404aa9:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404aad:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404ab1:	83 ea 30             	sub    $0x30,%edx
  404ab4:	83 fa 09             	cmp    $0x9,%edx
  404ab7:	77 20                	ja     404ad9 <printf_core+0x5d9>
  404ab9:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404abd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404ac1:	83 ea 30             	sub    $0x30,%edx
  404ac4:	83 fa 09             	cmp    $0x9,%edx
  404ac7:	77 13                	ja     404adc <printf_core+0x5dc>
  404ac9:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404acd:	48 83 c0 02          	add    $0x2,%rax
  404ad1:	83 ea 30             	sub    $0x30,%edx
  404ad4:	83 fa 09             	cmp    $0x9,%edx
  404ad7:	76 e0                	jbe    404ab9 <printf_core+0x5b9>
  404ad9:	48 89 c3             	mov    %rax,%rbx
  404adc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404ae3:	00 00 00 
  404ae6:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404aed:	e9 4d fc ff ff       	jmp    40473f <printf_core+0x23f>
  404af2:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404af9:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404afd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404b01:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404b05:	e9 93 fd ff ff       	jmp    40489d <printf_core+0x39d>
  404b0a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404b11:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404b14:	e9 d5 fa ff ff       	jmp    4045ee <printf_core+0xee>
  404b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404b20:	48 83 c3 01          	add    $0x1,%rbx
  404b24:	29 c8                	sub    %ecx,%eax
  404b26:	0f be 0b             	movsbl (%rbx),%ecx
  404b29:	89 c2                	mov    %eax,%edx
  404b2b:	89 c8                	mov    %ecx,%eax
  404b2d:	83 e9 30             	sub    $0x30,%ecx
  404b30:	83 f9 09             	cmp    $0x9,%ecx
  404b33:	0f 86 3d ff ff ff    	jbe    404a76 <printf_core+0x576>
  404b39:	89 55 80             	mov    %edx,-0x80(%rbp)
  404b3c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404b43:	00 00 00 
  404b46:	e9 f4 fb ff ff       	jmp    40473f <printf_core+0x23f>
  404b4b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b50:	0f 84 15 0c 00 00    	je     40576b <printf_core+0x126b>
  404b56:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404b5d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404b61:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404b67:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404b6e:	e8 0d dd ff ff       	call   402880 <pop_arg>
  404b73:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404b79:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404b80:	e9 e7 fd ff ff       	jmp    40496c <printf_core+0x46c>
  404b85:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404b89:	48 83 e8 30          	sub    $0x30,%rax
  404b8d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b92:	0f 84 b6 09 00 00    	je     40554e <printf_core+0x104e>
  404b98:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404b9f:	48 c1 e0 04          	shl    $0x4,%rax
  404ba3:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404baa:	00 00 00 
  404bad:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404bb1:	e9 57 fb ff ff       	jmp    40470d <printf_core+0x20d>
  404bb6:	48 0f be c2          	movsbq %dl,%rax
  404bba:	48 83 e8 30          	sub    $0x30,%rax
  404bbe:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bc3:	0f 84 a9 09 00 00    	je     405572 <printf_core+0x1072>
  404bc9:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404bd0:	48 c1 e0 04          	shl    $0x4,%rax
  404bd4:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404bd8:	89 45 80             	mov    %eax,-0x80(%rbp)
  404bdb:	f7 d0                	not    %eax
  404bdd:	c1 e8 1f             	shr    $0x1f,%eax
  404be0:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404be6:	48 83 c3 04          	add    $0x4,%rbx
  404bea:	e9 50 fb ff ff       	jmp    40473f <printf_core+0x23f>
  404bef:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404bf3:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404bfa:	00 00 00 
  404bfd:	e9 ab fc ff ff       	jmp    4048ad <printf_core+0x3ad>
  404c02:	48 89 d3             	mov    %rdx,%rbx
  404c05:	45 89 d1             	mov    %r10d,%r9d
  404c08:	45 31 e4             	xor    %r12d,%r12d
  404c0b:	e9 2b fc ff ff       	jmp    40483b <printf_core+0x33b>
  404c10:	45 89 eb             	mov    %r13d,%r11d
  404c13:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c18:	0f 85 a0 fb ff ff    	jne    4047be <printf_core+0x2be>
  404c1e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404c25:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404c2b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404c31:	48 83 c7 10          	add    $0x10,%rdi
  404c35:	85 c9                	test   %ecx,%ecx
  404c37:	0f 84 2e 0b 00 00    	je     40576b <printf_core+0x126b>
  404c3d:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404c44:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404c4b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404c4f:	85 f6                	test   %esi,%esi
  404c51:	0f 84 90 0a 00 00    	je     4056e7 <printf_core+0x11e7>
  404c57:	e8 24 dc ff ff       	call   402880 <pop_arg>
  404c5c:	49 83 c0 01          	add    $0x1,%r8
  404c60:	48 83 c7 10          	add    $0x10,%rdi
  404c64:	49 83 f8 0a          	cmp    $0xa,%r8
  404c68:	75 e1                	jne    404c4b <printf_core+0x74b>
  404c6a:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404c70:	e9 49 fb ff ff       	jmp    4047be <printf_core+0x2be>
  404c75:	0f 1f 00             	nopl   (%rax)
  404c78:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404c7c:	4c 29 f0             	sub    %r14,%rax
  404c7f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404c86:	48 89 c7             	mov    %rax,%rdi
  404c89:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404c8d:	48 39 c7             	cmp    %rax,%rdi
  404c90:	0f 8e da 07 00 00    	jle    405470 <printf_core+0xf70>
  404c96:	48 89 f8             	mov    %rdi,%rax
  404c99:	48 8d 3d c6 24 00 00 	lea    0x24c6(%rip),%rdi        # 407166 <_fini+0x242>
  404ca0:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ca3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404caa:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404cb0:	44 89 d0             	mov    %r10d,%eax
  404cb3:	66 90                	xchg   %ax,%ax
  404cb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404cbc:	00 00 00 00 
  404cc0:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404cc6:	41 39 c9             	cmp    %ecx,%r9d
  404cc9:	41 89 c8             	mov    %ecx,%r8d
  404ccc:	45 0f 4d c1          	cmovge %r9d,%r8d
  404cd0:	45 39 c3             	cmp    %r8d,%r11d
  404cd3:	0f 8c 07 fc ff ff    	jl     4048e0 <printf_core+0x3e0>
  404cd9:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404ce0:	0f 85 e2 06 00 00    	jne    4053c8 <printf_core+0xec8>
  404ce6:	41 39 c9             	cmp    %ecx,%r9d
  404ce9:	0f 8e 40 07 00 00    	jle    40542f <printf_core+0xf2f>
  404cef:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404cf3:	44 89 c2             	mov    %r8d,%edx
  404cf6:	be 20 00 00 00       	mov    $0x20,%esi
  404cfb:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404d01:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404d08:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404d0f:	e8 6c dd ff ff       	call   402a80 <pad.part.0>
  404d14:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404d18:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404d1f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404d26:	f6 00 20             	testb  $0x20,(%rax)
  404d29:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404d2f:	0f 84 07 07 00 00    	je     40543c <printf_core+0xf3c>
  404d35:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404d3c:	89 c1                	mov    %eax,%ecx
  404d3e:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404d41:	0f 8d a7 f8 ff ff    	jge    4045ee <printf_core+0xee>
  404d47:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404d4e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404d55:	8b 55 80             	mov    -0x80(%rbp),%edx
  404d58:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404d5c:	be 30 00 00 00       	mov    $0x30,%esi
  404d61:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404d68:	e8 13 dd ff ff       	call   402a80 <pad.part.0>
  404d6d:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404d74:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404d78:	f6 00 20             	testb  $0x20,(%rax)
  404d7b:	75 1b                	jne    404d98 <printf_core+0x898>
  404d7d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404d81:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404d88:	4c 89 f7             	mov    %r14,%rdi
  404d8b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404d8f:	e8 7c 16 00 00       	call   406410 <__fwritex>
  404d94:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404d98:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404d9f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404da6:	0f 85 42 f8 ff ff    	jne    4045ee <printf_core+0xee>
  404dac:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404db3:	0f 85 35 f8 ff ff    	jne    4045ee <printf_core+0xee>
  404db9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404dbd:	44 89 c2             	mov    %r8d,%edx
  404dc0:	be 20 00 00 00       	mov    $0x20,%esi
  404dc5:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404dc9:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404dcf:	e8 ac dc ff ff       	call   402a80 <pad.part.0>
  404dd4:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404dd8:	e9 11 f8 ff ff       	jmp    4045ee <printf_core+0xee>
  404ddd:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404de1:	45 85 c0             	test   %r8d,%r8d
  404de4:	79 0d                	jns    404df3 <printf_core+0x8f3>
  404de6:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404ded:	0f 85 ed fa ff ff    	jne    4048e0 <printf_core+0x3e0>
  404df3:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404dfa:	41 89 d0             	mov    %edx,%r8d
  404dfd:	44 89 ce             	mov    %r9d,%esi
  404e00:	44 89 e1             	mov    %r12d,%ecx
  404e03:	ff 75 98             	push   -0x68(%rbp)
  404e06:	ff 75 90             	push   -0x70(%rbp)
  404e09:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404e0d:	8b 55 80             	mov    -0x80(%rbp),%edx
  404e10:	e8 6b dd ff ff       	call   402b80 <fmt_fp>
  404e15:	5e                   	pop    %rsi
  404e16:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404e1d:	83 f8 ff             	cmp    $0xffffffff,%eax
  404e20:	41 89 c0             	mov    %eax,%r8d
  404e23:	5f                   	pop    %rdi
  404e24:	0f 85 bb f7 ff ff    	jne    4045e5 <printf_core+0xe5>
  404e2a:	e9 b1 fa ff ff       	jmp    4048e0 <printf_core+0x3e0>
  404e2f:	90                   	nop
  404e30:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  404e34:	48 85 f6             	test   %rsi,%rsi
  404e37:	0f 88 4f 08 00 00    	js     40568c <printf_core+0x118c>
  404e3d:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  404e44:	0f 85 61 08 00 00    	jne    4056ab <printf_core+0x11ab>
  404e4a:	41 f6 c4 01          	test   $0x1,%r12b
  404e4e:	0f 85 7b 08 00 00    	jne    4056cf <printf_core+0x11cf>
  404e54:	48 8d 3d 0b 23 00 00 	lea    0x230b(%rip),%rdi        # 407166 <_fini+0x242>
  404e5b:	44 89 d0             	mov    %r10d,%eax
  404e5e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404e65:	48 85 f6             	test   %rsi,%rsi
  404e68:	0f 84 55 08 00 00    	je     4056c3 <printf_core+0x11c3>
  404e6e:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  404e75:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404e79:	89 c7                	mov    %eax,%edi
  404e7b:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  404e82:	cc cc cc 
  404e85:	4d 89 c6             	mov    %r8,%r14
  404e88:	90                   	nop
  404e89:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e90:	00 00 00 00 
  404e94:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e9b:	00 00 00 00 
  404e9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ea6:	00 00 00 00 
  404eaa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404eb1:	00 00 00 00 
  404eb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ebc:	00 00 00 00 
  404ec0:	48 89 f0             	mov    %rsi,%rax
  404ec3:	49 83 ee 01          	sub    $0x1,%r14
  404ec7:	48 f7 e1             	mul    %rcx
  404eca:	48 89 f0             	mov    %rsi,%rax
  404ecd:	48 c1 ea 03          	shr    $0x3,%rdx
  404ed1:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  404ed5:	4d 01 d2             	add    %r10,%r10
  404ed8:	4c 29 d0             	sub    %r10,%rax
  404edb:	83 c0 30             	add    $0x30,%eax
  404ede:	48 83 fe 09          	cmp    $0x9,%rsi
  404ee2:	48 89 d6             	mov    %rdx,%rsi
  404ee5:	41 88 06             	mov    %al,(%r14)
  404ee8:	77 d6                	ja     404ec0 <printf_core+0x9c0>
  404eea:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  404ef1:	89 f8                	mov    %edi,%eax
  404ef3:	8b 7d 80             	mov    -0x80(%rbp),%edi
  404ef6:	85 ff                	test   %edi,%edi
  404ef8:	79 0d                	jns    404f07 <printf_core+0xa07>
  404efa:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404f01:	0f 85 d9 f9 ff ff    	jne    4048e0 <printf_core+0x3e0>
  404f07:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f0d:	44 89 e2             	mov    %r12d,%edx
  404f10:	8b 75 80             	mov    -0x80(%rbp),%esi
  404f13:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  404f19:	85 c9                	test   %ecx,%ecx
  404f1b:	44 0f 45 e2          	cmovne %edx,%r12d
  404f1f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  404f24:	0f 94 c2             	sete   %dl
  404f27:	85 f6                	test   %esi,%esi
  404f29:	75 08                	jne    404f33 <printf_core+0xa33>
  404f2b:	84 d2                	test   %dl,%dl
  404f2d:	0f 85 e4 05 00 00    	jne    405517 <printf_core+0x1017>
  404f33:	4c 89 c7             	mov    %r8,%rdi
  404f36:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  404f3a:	0f b6 d2             	movzbl %dl,%edx
  404f3d:	4c 29 f7             	sub    %r14,%rdi
  404f40:	48 01 fa             	add    %rdi,%rdx
  404f43:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  404f4a:	48 39 ca             	cmp    %rcx,%rdx
  404f4d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  404f51:	48 63 ca             	movslq %edx,%rcx
  404f54:	48 39 cf             	cmp    %rcx,%rdi
  404f57:	0f 4e fa             	cmovle %edx,%edi
  404f5a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  404f5f:	29 c2                	sub    %eax,%edx
  404f61:	89 7d 80             	mov    %edi,-0x80(%rbp)
  404f64:	39 fa                	cmp    %edi,%edx
  404f66:	0f 8c 74 f9 ff ff    	jl     4048e0 <printf_core+0x3e0>
  404f6c:	8b 7d 80             	mov    -0x80(%rbp),%edi
  404f6f:	01 c7                	add    %eax,%edi
  404f71:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  404f77:	e9 44 fd ff ff       	jmp    404cc0 <printf_core+0x7c0>
  404f7c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  404f80:	48 85 c0             	test   %rax,%rax
  404f83:	0f 84 9a 02 00 00    	je     405223 <printf_core+0xd23>
  404f89:	44 89 e7             	mov    %r12d,%edi
  404f8c:	83 e7 08             	and    $0x8,%edi
  404f8f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  404f95:	89 d7                	mov    %edx,%edi
  404f97:	83 e7 20             	and    $0x20,%edi
  404f9a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  404fa0:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404fa4:	48 8d 35 15 23 00 00 	lea    0x2315(%rip),%rsi        # 4072c0 <xdigits>
  404fab:	4d 89 c6             	mov    %r8,%r14
  404fae:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404fbc:	00 00 00 00 
  404fc0:	48 89 c1             	mov    %rax,%rcx
  404fc3:	49 83 ee 01          	sub    $0x1,%r14
  404fc7:	83 e1 0f             	and    $0xf,%ecx
  404fca:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  404fce:	09 fa                	or     %edi,%edx
  404fd0:	48 c1 e8 04          	shr    $0x4,%rax
  404fd4:	41 88 16             	mov    %dl,(%r14)
  404fd7:	75 e7                	jne    404fc0 <printf_core+0xac0>
  404fd9:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404fdf:	85 c0                	test   %eax,%eax
  404fe1:	0f 85 f9 05 00 00    	jne    4055e0 <printf_core+0x10e0>
  404fe7:	48 8d 3d 78 21 00 00 	lea    0x2178(%rip),%rdi        # 407166 <_fini+0x242>
  404fee:	44 89 d0             	mov    %r10d,%eax
  404ff1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404ff8:	e9 f6 fe ff ff       	jmp    404ef3 <printf_core+0x9f3>
  404ffd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405001:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405005:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40500c:	48 85 d2             	test   %rdx,%rdx
  40500f:	0f 84 06 07 00 00    	je     40571b <printf_core+0x121b>
  405015:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40501c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  405020:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  405027:	31 db                	xor    %ebx,%ebx
  405029:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  405030:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  405034:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40503b:	49 89 ce             	mov    %rcx,%r14
  40503e:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405042:	49 89 d5             	mov    %rdx,%r13
  405045:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40504c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405053:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40505a:	eb 34                	jmp    405090 <printf_core+0xb90>
  40505c:	0f 1f 40 00          	nopl   0x0(%rax)
  405060:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  405067:	e8 24 10 00 00       	call   406090 <wctomb>
  40506c:	85 c0                	test   %eax,%eax
  40506e:	0f 88 44 f7 ff ff    	js     4047b8 <printf_core+0x2b8>
  405074:	4c 89 ea             	mov    %r13,%rdx
  405077:	48 98                	cltq
  405079:	48 29 da             	sub    %rbx,%rdx
  40507c:	48 39 c2             	cmp    %rax,%rdx
  40507f:	72 16                	jb     405097 <printf_core+0xb97>
  405081:	48 01 c3             	add    %rax,%rbx
  405084:	4d 63 ec             	movslq %r12d,%r13
  405087:	49 83 c6 04          	add    $0x4,%r14
  40508b:	4c 39 eb             	cmp    %r13,%rbx
  40508e:	73 07                	jae    405097 <printf_core+0xb97>
  405090:	41 8b 36             	mov    (%r14),%esi
  405093:	85 f6                	test   %esi,%esi
  405095:	75 c9                	jne    405060 <printf_core+0xb60>
  405097:	49 89 de             	mov    %rbx,%r14
  40509a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4050a1:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  4050a8:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  4050af:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  4050b6:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  4050bd:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  4050c1:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  4050c8:	0f 87 12 f8 ff ff    	ja     4048e0 <printf_core+0x3e0>
  4050ce:	45 39 f1             	cmp    %r14d,%r9d
  4050d1:	44 89 f0             	mov    %r14d,%eax
  4050d4:	0f 9e c2             	setle  %dl
  4050d7:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4050de:	0f 95 c1             	setne  %cl
  4050e1:	08 d1                	or     %dl,%cl
  4050e3:	0f 84 5c 05 00 00    	je     405645 <printf_core+0x1145>
  4050e9:	4d 85 f6             	test   %r14,%r14
  4050ec:	0f 84 96 06 00 00    	je     405788 <printf_core+0x1288>
  4050f2:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  4050f6:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  4050fd:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405104:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40510b:	45 31 e4             	xor    %r12d,%r12d
  40510e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405115:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405119:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40511d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  405124:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  40512b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405131:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  405137:	eb 10                	jmp    405149 <printf_core+0xc49>
  405139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405140:	4d 39 f4             	cmp    %r14,%r12
  405143:	0f 83 46 03 00 00    	jae    40548f <printf_core+0xf8f>
  405149:	8b 33                	mov    (%rbx),%esi
  40514b:	85 f6                	test   %esi,%esi
  40514d:	0f 84 3c 03 00 00    	je     40548f <printf_core+0xf8f>
  405153:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405157:	e8 34 0f 00 00       	call   406090 <wctomb>
  40515c:	48 63 f0             	movslq %eax,%rsi
  40515f:	49 01 f4             	add    %rsi,%r12
  405162:	4d 39 e6             	cmp    %r12,%r14
  405165:	0f 82 24 03 00 00    	jb     40548f <printf_core+0xf8f>
  40516b:	48 83 c3 04          	add    $0x4,%rbx
  40516f:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  405174:	75 ca                	jne    405140 <printf_core+0xc40>
  405176:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  40517a:	4c 89 ea             	mov    %r13,%rdx
  40517d:	e8 8e 12 00 00       	call   406410 <__fwritex>
  405182:	eb bc                	jmp    405140 <printf_core+0xc40>
  405184:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405188:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40518c:	4d 89 c6             	mov    %r8,%r14
  40518f:	48 85 c0             	test   %rax,%rax
  405192:	74 21                	je     4051b5 <printf_core+0xcb5>
  405194:	90                   	nop
  405195:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40519c:	00 00 00 00 
  4051a0:	89 c2                	mov    %eax,%edx
  4051a2:	49 83 ee 01          	sub    $0x1,%r14
  4051a6:	83 e2 07             	and    $0x7,%edx
  4051a9:	83 c2 30             	add    $0x30,%edx
  4051ac:	48 c1 e8 03          	shr    $0x3,%rax
  4051b0:	41 88 16             	mov    %dl,(%r14)
  4051b3:	75 eb                	jne    4051a0 <printf_core+0xca0>
  4051b5:	41 f6 c4 08          	test   $0x8,%r12b
  4051b9:	0f 84 28 fe ff ff    	je     404fe7 <printf_core+0xae7>
  4051bf:	4c 89 c0             	mov    %r8,%rax
  4051c2:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  4051c6:	4c 29 f0             	sub    %r14,%rax
  4051c9:	48 39 d0             	cmp    %rdx,%rax
  4051cc:	0f 8c 15 fe ff ff    	jl     404fe7 <printf_core+0xae7>
  4051d2:	83 c0 01             	add    $0x1,%eax
  4051d5:	48 8d 3d 8a 1f 00 00 	lea    0x1f8a(%rip),%rdi        # 407166 <_fini+0x242>
  4051dc:	89 45 80             	mov    %eax,-0x80(%rbp)
  4051df:	44 89 d0             	mov    %r10d,%eax
  4051e2:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4051e9:	e9 05 fd ff ff       	jmp    404ef3 <printf_core+0x9f3>
  4051ee:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4051f1:	b8 10 00 00 00       	mov    $0x10,%eax
  4051f6:	ba 78 00 00 00       	mov    $0x78,%edx
  4051fb:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405202:	00 00 00 
  405205:	39 c7                	cmp    %eax,%edi
  405207:	0f 43 c7             	cmovae %edi,%eax
  40520a:	41 83 cc 08          	or     $0x8,%r12d
  40520e:	bf 20 00 00 00       	mov    $0x20,%edi
  405213:	89 45 80             	mov    %eax,-0x80(%rbp)
  405216:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40521a:	48 85 c0             	test   %rax,%rax
  40521d:	0f 85 77 fd ff ff    	jne    404f9a <printf_core+0xa9a>
  405223:	48 8d 3d 3c 1f 00 00 	lea    0x1f3c(%rip),%rdi        # 407166 <_fini+0x242>
  40522a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40522e:	44 89 d0             	mov    %r10d,%eax
  405231:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405238:	4d 89 c6             	mov    %r8,%r14
  40523b:	e9 b3 fc ff ff       	jmp    404ef3 <printf_core+0x9f3>
  405240:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405244:	48 8d 05 25 1f 00 00 	lea    0x1f25(%rip),%rax        # 407170 <_fini+0x24c>
  40524b:	4d 85 f6             	test   %r14,%r14
  40524e:	4c 0f 44 f0          	cmove  %rax,%r14
  405252:	8b 45 80             	mov    -0x80(%rbp),%eax
  405255:	85 c0                	test   %eax,%eax
  405257:	0f 88 36 03 00 00    	js     405593 <printf_core+0x1093>
  40525d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  405261:	4c 89 f7             	mov    %r14,%rdi
  405264:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40526b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405272:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405279:	e8 82 07 00 00       	call   405a00 <strnlen>
  40527e:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405285:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40528c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405293:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405297:	4c 29 f2             	sub    %r14,%rdx
  40529a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40529d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4052a4:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  4052ab:	48 89 d7             	mov    %rdx,%rdi
  4052ae:	48 63 d0             	movslq %eax,%rdx
  4052b1:	48 39 d7             	cmp    %rdx,%rdi
  4052b4:	0f 8e b9 01 00 00    	jle    405473 <printf_core+0xf73>
  4052ba:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4052c1:	e9 d3 f9 ff ff       	jmp    404c99 <printf_core+0x799>
  4052c6:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4052ca:	48 85 f6             	test   %rsi,%rsi
  4052cd:	0f 85 46 03 00 00    	jne    405619 <printf_core+0x1119>
  4052d3:	48 8d 3d 8c 1e 00 00 	lea    0x1e8c(%rip),%rdi        # 407166 <_fini+0x242>
  4052da:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  4052de:	44 89 d0             	mov    %r10d,%eax
  4052e1:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4052e8:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4052ef:	00 00 00 
  4052f2:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  4052f6:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4052fd:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405304:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40530b:	01 00 00 00 
  40530f:	e9 ac f9 ff ff       	jmp    404cc0 <printf_core+0x7c0>
  405314:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40531b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405322:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405329:	e8 62 0b 00 00       	call   405e90 <__errno_location>
  40532e:	8b 38                	mov    (%rax),%edi
  405330:	e8 ab 0b 00 00       	call   405ee0 <strerror>
  405335:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  40533c:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405343:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40534a:	49 89 c6             	mov    %rax,%r14
  40534d:	e9 00 ff ff ff       	jmp    405252 <printf_core+0xd52>
  405352:	83 f8 07             	cmp    $0x7,%eax
  405355:	0f 87 93 f2 ff ff    	ja     4045ee <printf_core+0xee>
  40535b:	48 8d 15 3e 1f 00 00 	lea    0x1f3e(%rip),%rdx        # 4072a0 <_fini+0x37c>
  405362:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  405366:	48 01 d0             	add    %rdx,%rax
  405369:	3e ff e0             	notrack jmp *%rax
  40536c:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  405370:	49 63 c5             	movslq %r13d,%rax
  405373:	48 89 02             	mov    %rax,(%rdx)
  405376:	e9 73 f2 ff ff       	jmp    4045ee <printf_core+0xee>
  40537b:	48 8d 3d e4 1d 00 00 	lea    0x1de4(%rip),%rdi        # 407166 <_fini+0x242>
  405382:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405386:	44 89 d0             	mov    %r10d,%eax
  405389:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405390:	e9 d0 fa ff ff       	jmp    404e65 <printf_core+0x965>
  405395:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405399:	e9 35 ff ff ff       	jmp    4052d3 <printf_core+0xdd3>
  40539e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053a2:	44 89 28             	mov    %r13d,(%rax)
  4053a5:	e9 44 f2 ff ff       	jmp    4045ee <printf_core+0xee>
  4053aa:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053ae:	66 44 89 28          	mov    %r13w,(%rax)
  4053b2:	e9 37 f2 ff ff       	jmp    4045ee <printf_core+0xee>
  4053b7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053bb:	44 88 28             	mov    %r13b,(%rax)
  4053be:	e9 2b f2 ff ff       	jmp    4045ee <printf_core+0xee>
  4053c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4053c8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4053cc:	f6 07 20             	testb  $0x20,(%rdi)
  4053cf:	74 6b                	je     40543c <printf_core+0xf3c>
  4053d1:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  4053d7:	44 89 e0             	mov    %r12d,%eax
  4053da:	41 39 c9             	cmp    %ecx,%r9d
  4053dd:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  4053e4:	35 00 00 01 00       	xor    $0x10000,%eax
  4053e9:	a9 00 20 01 00       	test   $0x12000,%eax
  4053ee:	75 28                	jne    405418 <printf_core+0xf18>
  4053f0:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  4053f7:	75 1f                	jne    405418 <printf_core+0xf18>
  4053f9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4053fd:	44 89 c2             	mov    %r8d,%edx
  405400:	be 30 00 00 00       	mov    $0x30,%esi
  405405:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40540c:	e8 6f d6 ff ff       	call   402a80 <pad.part.0>
  405411:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405418:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40541f:	89 c1                	mov    %eax,%ecx
  405421:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405424:	0f 8d 4a f9 ff ff    	jge    404d74 <printf_core+0x874>
  40542a:	e9 26 f9 ff ff       	jmp    404d55 <printf_core+0x855>
  40542f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405433:	f6 07 20             	testb  $0x20,(%rdi)
  405436:	0f 85 f9 f8 ff ff    	jne    404d35 <printf_core+0x835>
  40543c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405440:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405447:	48 63 f0             	movslq %eax,%rsi
  40544a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405451:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405458:	e8 b3 0f 00 00       	call   406410 <__fwritex>
  40545d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  405464:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  40546b:	e9 61 ff ff ff       	jmp    4053d1 <printf_core+0xed1>
  405470:	8b 45 80             	mov    -0x80(%rbp),%eax
  405473:	48 8d 3d ec 1c 00 00 	lea    0x1cec(%rip),%rdi        # 407166 <_fini+0x242>
  40547a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405480:	44 89 d0             	mov    %r10d,%eax
  405483:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40548a:	e9 31 f8 ff ff       	jmp    404cc0 <printf_core+0x7c0>
  40548f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405496:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40549d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  4054a4:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  4054ab:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  4054b1:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  4054b8:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  4054bf:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  4054c6:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  4054cd:	75 39                	jne    405508 <printf_core+0x1008>
  4054cf:	84 d2                	test   %dl,%dl
  4054d1:	75 35                	jne    405508 <printf_core+0x1008>
  4054d3:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4054d7:	89 c1                	mov    %eax,%ecx
  4054d9:	44 89 ca             	mov    %r9d,%edx
  4054dc:	be 20 00 00 00       	mov    $0x20,%esi
  4054e1:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4054e8:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4054ee:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4054f2:	e8 89 d5 ff ff       	call   402a80 <pad.part.0>
  4054f7:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4054fe:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405504:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405508:	41 39 c1             	cmp    %eax,%r9d
  40550b:	41 0f 4d c1          	cmovge %r9d,%eax
  40550f:	41 89 c0             	mov    %eax,%r8d
  405512:	e9 ce f0 ff ff       	jmp    4045e5 <printf_core+0xe5>
  405517:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40551d:	4d 89 c6             	mov    %r8,%r14
  405520:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  405524:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  40552b:	00 00 00 00 
  40552f:	e9 8c f7 ff ff       	jmp    404cc0 <printf_core+0x7c0>
  405534:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40553b:	00 00 00 
  40553e:	48 83 c3 01          	add    $0x1,%rbx
  405542:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405549:	e9 f1 f1 ff ff       	jmp    40473f <printf_core+0x23f>
  40554e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405555:	45 89 d1             	mov    %r10d,%r9d
  405558:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40555f:	00 00 00 
  405562:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  405569:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  40556d:	e9 c9 f2 ff ff       	jmp    40483b <printf_core+0x33b>
  405572:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405579:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40557d:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405584:	00 00 00 
  405587:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40558e:	e9 53 f6 ff ff       	jmp    404be6 <printf_core+0x6e6>
  405593:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405598:	4c 89 f7             	mov    %r14,%rdi
  40559b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40559f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  4055a6:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4055ad:	e8 4e 04 00 00       	call   405a00 <strnlen>
  4055b2:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4055b6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4055bd:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  4055c1:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  4055c8:	80 3a 00             	cmpb   $0x0,(%rdx)
  4055cb:	0f 84 c6 fc ff ff    	je     405297 <printf_core+0xd97>
  4055d1:	e9 0a f3 ff ff       	jmp    4048e0 <printf_core+0x3e0>
  4055d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4055dd:	00 00 00 
  4055e0:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  4055e6:	48 8d 15 79 1b 00 00 	lea    0x1b79(%rip),%rdx        # 407166 <_fini+0x242>
  4055ed:	c1 f8 04             	sar    $0x4,%eax
  4055f0:	48 98                	cltq
  4055f2:	48 01 d0             	add    %rdx,%rax
  4055f5:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4055fc:	b8 02 00 00 00       	mov    $0x2,%eax
  405601:	e9 ed f8 ff ff       	jmp    404ef3 <printf_core+0x9f3>
  405606:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40560a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405611:	00 00 00 
  405614:	e9 26 f1 ff ff       	jmp    40473f <printf_core+0x23f>
  405619:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40561d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  405620:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  405627:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  40562e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  405632:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  405639:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405640:	e9 d0 f9 ff ff       	jmp    405015 <printf_core+0xb15>
  405645:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405649:	44 89 ca             	mov    %r9d,%edx
  40564c:	44 89 f1             	mov    %r14d,%ecx
  40564f:	be 20 00 00 00       	mov    $0x20,%esi
  405654:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40565b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40565f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  405666:	e8 15 d4 ff ff       	call   402a80 <pad.part.0>
  40566b:	4d 85 f6             	test   %r14,%r14
  40566e:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405672:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405678:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  40567f:	0f 84 83 fe ff ff    	je     405508 <printf_core+0x1008>
  405685:	31 d2                	xor    %edx,%edx
  405687:	e9 66 fa ff ff       	jmp    4050f2 <printf_core+0xbf2>
  40568c:	48 f7 de             	neg    %rsi
  40568f:	48 8d 3d d0 1a 00 00 	lea    0x1ad0(%rip),%rdi        # 407166 <_fini+0x242>
  405696:	b8 01 00 00 00       	mov    $0x1,%eax
  40569b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40569f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4056a6:	e9 c3 f7 ff ff       	jmp    404e6e <printf_core+0x96e>
  4056ab:	48 8d 3d b5 1a 00 00 	lea    0x1ab5(%rip),%rdi        # 407167 <_fini+0x243>
  4056b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4056b7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4056be:	e9 a2 f7 ff ff       	jmp    404e65 <printf_core+0x965>
  4056c3:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4056c7:	4d 89 c6             	mov    %r8,%r14
  4056ca:	e9 24 f8 ff ff       	jmp    404ef3 <printf_core+0x9f3>
  4056cf:	48 8d 3d 92 1a 00 00 	lea    0x1a92(%rip),%rdi        # 407168 <_fini+0x244>
  4056d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4056db:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4056e2:	e9 7e f7 ff ff       	jmp    404e65 <printf_core+0x965>
  4056e7:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  4056ee:	eb 1e                	jmp    40570e <printf_core+0x120e>
  4056f0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4056f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4056fc:	00 00 00 00 
  405700:	49 83 c0 01          	add    $0x1,%r8
  405704:	49 83 f8 0a          	cmp    $0xa,%r8
  405708:	0f 84 5c f5 ff ff    	je     404c6a <printf_core+0x76a>
  40570e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405712:	85 d2                	test   %edx,%edx
  405714:	74 ea                	je     405700 <printf_core+0x1200>
  405716:	e9 92 f0 ff ff       	jmp    4047ad <printf_core+0x2ad>
  40571b:	45 85 c9             	test   %r9d,%r9d
  40571e:	0f 94 c0             	sete   %al
  405721:	89 c2                	mov    %eax,%edx
  405723:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40572a:	75 5c                	jne    405788 <printf_core+0x1288>
  40572c:	84 c0                	test   %al,%al
  40572e:	75 58                	jne    405788 <printf_core+0x1288>
  405730:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405734:	44 89 ca             	mov    %r9d,%edx
  405737:	31 c9                	xor    %ecx,%ecx
  405739:	be 20 00 00 00       	mov    $0x20,%esi
  40573e:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405745:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405749:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405750:	e8 2b d3 ff ff       	call   402a80 <pad.part.0>
  405755:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40575b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  40575f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405766:	e9 9d fd ff ff       	jmp    405508 <printf_core+0x1008>
  40576b:	45 31 db             	xor    %r11d,%r11d
  40576e:	e9 4b f0 ff ff       	jmp    4047be <printf_core+0x2be>
  405773:	e8 48 ce ff ff       	call   4025c0 <__stack_chk_fail>
  405778:	48 89 da             	mov    %rbx,%rdx
  40577b:	e9 7b f0 ff ff       	jmp    4047fb <printf_core+0x2fb>
  405780:	48 89 d8             	mov    %rbx,%rax
  405783:	e9 31 f3 ff ff       	jmp    404ab9 <printf_core+0x5b9>
  405788:	44 89 d0             	mov    %r10d,%eax
  40578b:	e9 2f fd ff ff       	jmp    4054bf <printf_core+0xfbf>

0000000000405790 <vfprintf>:
  405790:	f3 0f 1e fa          	endbr64
  405794:	55                   	push   %rbp
  405795:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405799:	48 89 e5             	mov    %rsp,%rbp
  40579c:	41 57                	push   %r15
  40579e:	41 56                	push   %r14
  4057a0:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  4057a7:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4057ae:	41 55                	push   %r13
  4057b0:	4c 89 f1             	mov    %r14,%rcx
  4057b3:	49 89 fd             	mov    %rdi,%r13
  4057b6:	31 ff                	xor    %edi,%edi
  4057b8:	41 54                	push   %r12
  4057ba:	53                   	push   %rbx
  4057bb:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  4057c2:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  4057c9:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  4057d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4057d7:	00 00 
  4057d9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4057dd:	31 c0                	xor    %eax,%eax
  4057df:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  4057e6:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4057ed:	00 00 00 00 
  4057f1:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  4057f8:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4057ff:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405803:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  40580a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  40580e:	48 89 da             	mov    %rbx,%rdx
  405811:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405818:	e8 e3 ec ff ff       	call   404500 <printf_core>
  40581d:	85 c0                	test   %eax,%eax
  40581f:	0f 88 68 01 00 00    	js     40598d <vfprintf+0x1fd>
  405825:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  40582c:	31 db                	xor    %ebx,%ebx
  40582e:	85 c0                	test   %eax,%eax
  405830:	78 0a                	js     40583c <vfprintf+0xac>
  405832:	4c 89 ef             	mov    %r13,%rdi
  405835:	e8 86 08 00 00       	call   4060c0 <__lockfile>
  40583a:	89 c3                	mov    %eax,%ebx
  40583c:	41 8b 45 00          	mov    0x0(%r13),%eax
  405840:	89 c1                	mov    %eax,%ecx
  405842:	83 e0 df             	and    $0xffffffdf,%eax
  405845:	83 e1 20             	and    $0x20,%ecx
  405848:	41 89 45 00          	mov    %eax,0x0(%r13)
  40584c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405852:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405857:	74 77                	je     4058d0 <vfprintf+0x140>
  405859:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  40585e:	0f 84 39 01 00 00    	je     40599d <vfprintf+0x20d>
  405864:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  40586b:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405872:	4c 89 f1             	mov    %r14,%rcx
  405875:	4c 89 ef             	mov    %r13,%rdi
  405878:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  40587f:	e8 7c ec ff ff       	call   404500 <printf_core>
  405884:	41 89 c4             	mov    %eax,%r12d
  405887:	41 8b 45 00          	mov    0x0(%r13),%eax
  40588b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405890:	a8 20                	test   $0x20,%al
  405892:	44 0f 45 e2          	cmovne %edx,%r12d
  405896:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  40589c:	41 89 45 00          	mov    %eax,0x0(%r13)
  4058a0:	85 db                	test   %ebx,%ebx
  4058a2:	0f 85 d8 00 00 00    	jne    405980 <vfprintf+0x1f0>
  4058a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4058ac:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4058b3:	00 00 
  4058b5:	0f 85 dd 00 00 00    	jne    405998 <vfprintf+0x208>
  4058bb:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  4058c2:	44 89 e0             	mov    %r12d,%eax
  4058c5:	5b                   	pop    %rbx
  4058c6:	41 5c                	pop    %r12
  4058c8:	41 5d                	pop    %r13
  4058ca:	41 5e                	pop    %r14
  4058cc:	41 5f                	pop    %r15
  4058ce:	5d                   	pop    %rbp
  4058cf:	c3                   	ret
  4058d0:	49 8b 45 58          	mov    0x58(%r13),%rax
  4058d4:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  4058db:	00 
  4058dc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4058e0:	4c 89 ef             	mov    %r13,%rdi
  4058e3:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  4058ea:	00 
  4058eb:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  4058f1:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  4058f8:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4058ff:	49 89 45 58          	mov    %rax,0x58(%r13)
  405903:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405908:	e8 43 0a 00 00       	call   406350 <__towrite>
  40590d:	85 c0                	test   %eax,%eax
  40590f:	75 23                	jne    405934 <vfprintf+0x1a4>
  405911:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405918:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  40591f:	4c 89 f1             	mov    %r14,%rcx
  405922:	4c 89 ef             	mov    %r13,%rdi
  405925:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  40592c:	e8 cf eb ff ff       	call   404500 <printf_core>
  405931:	41 89 c4             	mov    %eax,%r12d
  405934:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  40593b:	4d 85 f6             	test   %r14,%r14
  40593e:	0f 84 43 ff ff ff    	je     405887 <vfprintf+0xf7>
  405944:	31 d2                	xor    %edx,%edx
  405946:	31 f6                	xor    %esi,%esi
  405948:	4c 89 ef             	mov    %r13,%rdi
  40594b:	41 ff 55 48          	call   *0x48(%r13)
  40594f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405954:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405958:	4d 89 75 58          	mov    %r14,0x58(%r13)
  40595c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405961:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405968:	00 
  405969:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405970:	00 
  405971:	44 0f 44 e0          	cmove  %eax,%r12d
  405975:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  40597a:	e9 08 ff ff ff       	jmp    405887 <vfprintf+0xf7>
  40597f:	90                   	nop
  405980:	4c 89 ef             	mov    %r13,%rdi
  405983:	e8 f8 07 00 00       	call   406180 <__unlockfile>
  405988:	e9 1b ff ff ff       	jmp    4058a8 <vfprintf+0x118>
  40598d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405993:	e9 10 ff ff ff       	jmp    4058a8 <vfprintf+0x118>
  405998:	e8 23 cc ff ff       	call   4025c0 <__stack_chk_fail>
  40599d:	4c 89 ef             	mov    %r13,%rdi
  4059a0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  4059a6:	e8 a5 09 00 00       	call   406350 <__towrite>
  4059ab:	85 c0                	test   %eax,%eax
  4059ad:	0f 85 d4 fe ff ff    	jne    405887 <vfprintf+0xf7>
  4059b3:	e9 ac fe ff ff       	jmp    405864 <vfprintf+0xd4>
  4059b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4059bf:	00 

00000000004059c0 <vsprintf>:
  4059c0:	f3 0f 1e fa          	endbr64
  4059c4:	48 89 d1             	mov    %rdx,%rcx
  4059c7:	48 89 f2             	mov    %rsi,%rdx
  4059ca:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  4059cf:	e9 ac 0c 00 00       	jmp    406680 <vsnprintf>
  4059d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4059db:	00 00 00 
  4059de:	66 90                	xchg   %ax,%ax

00000000004059e0 <strcpy>:
  4059e0:	f3 0f 1e fa          	endbr64
  4059e4:	55                   	push   %rbp
  4059e5:	48 89 e5             	mov    %rsp,%rbp
  4059e8:	53                   	push   %rbx
  4059e9:	48 89 fb             	mov    %rdi,%rbx
  4059ec:	48 83 ec 08          	sub    $0x8,%rsp
  4059f0:	e8 8b 0e 00 00       	call   406880 <__stpcpy>
  4059f5:	48 89 d8             	mov    %rbx,%rax
  4059f8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4059fc:	c9                   	leave
  4059fd:	c3                   	ret
  4059fe:	66 90                	xchg   %ax,%ax

0000000000405a00 <strnlen>:
  405a00:	f3 0f 1e fa          	endbr64
  405a04:	55                   	push   %rbp
  405a05:	48 89 f2             	mov    %rsi,%rdx
  405a08:	48 89 e5             	mov    %rsp,%rbp
  405a0b:	41 54                	push   %r12
  405a0d:	49 89 fc             	mov    %rdi,%r12
  405a10:	53                   	push   %rbx
  405a11:	48 89 f3             	mov    %rsi,%rbx
  405a14:	31 f6                	xor    %esi,%esi
  405a16:	e8 25 0d 00 00       	call   406740 <memchr>
  405a1b:	48 89 c2             	mov    %rax,%rdx
  405a1e:	4c 29 e0             	sub    %r12,%rax
  405a21:	48 85 d2             	test   %rdx,%rdx
  405a24:	48 0f 44 c3          	cmove  %rbx,%rax
  405a28:	5b                   	pop    %rbx
  405a29:	41 5c                	pop    %r12
  405a2b:	5d                   	pop    %rbp
  405a2c:	c3                   	ret

0000000000405a2d <memcpy>:
  405a2d:	48 89 f8             	mov    %rdi,%rax
  405a30:	48 83 fa 08          	cmp    $0x8,%rdx
  405a34:	72 14                	jb     405a4a <memcpy+0x1d>
  405a36:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405a3c:	74 0c                	je     405a4a <memcpy+0x1d>
  405a3e:	a4                   	movsb  (%rsi),(%rdi)
  405a3f:	48 ff ca             	dec    %rdx
  405a42:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405a48:	75 f4                	jne    405a3e <memcpy+0x11>
  405a4a:	48 89 d1             	mov    %rdx,%rcx
  405a4d:	48 c1 e9 03          	shr    $0x3,%rcx
  405a51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405a54:	83 e2 07             	and    $0x7,%edx
  405a57:	74 05                	je     405a5e <memcpy+0x31>
  405a59:	a4                   	movsb  (%rsi),(%rdi)
  405a5a:	ff ca                	dec    %edx
  405a5c:	75 fb                	jne    405a59 <memcpy+0x2c>
  405a5e:	c3                   	ret

0000000000405a5f <memset>:
  405a5f:	48 0f b6 c6          	movzbq %sil,%rax
  405a63:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405a6a:	01 01 01 
  405a6d:	49 0f af c0          	imul   %r8,%rax
  405a71:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405a75:	77 78                	ja     405aef <memset+0x90>
  405a77:	85 d2                	test   %edx,%edx
  405a79:	74 70                	je     405aeb <memset+0x8c>
  405a7b:	40 88 37             	mov    %sil,(%rdi)
  405a7e:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405a83:	83 fa 02             	cmp    $0x2,%edx
  405a86:	76 63                	jbe    405aeb <memset+0x8c>
  405a88:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405a8c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405a91:	83 fa 06             	cmp    $0x6,%edx
  405a94:	76 55                	jbe    405aeb <memset+0x8c>
  405a96:	89 47 03             	mov    %eax,0x3(%rdi)
  405a99:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405a9d:	83 fa 0e             	cmp    $0xe,%edx
  405aa0:	76 49                	jbe    405aeb <memset+0x8c>
  405aa2:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405aa6:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405aab:	83 fa 1e             	cmp    $0x1e,%edx
  405aae:	76 3b                	jbe    405aeb <memset+0x8c>
  405ab0:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405ab4:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405ab8:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405abd:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405ac2:	83 fa 3e             	cmp    $0x3e,%edx
  405ac5:	76 24                	jbe    405aeb <memset+0x8c>
  405ac7:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405acb:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405acf:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405ad3:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405ad7:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405adc:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405ae1:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405ae6:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405aeb:	48 89 f8             	mov    %rdi,%rax
  405aee:	c3                   	ret
  405aef:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405af5:	49 89 f8             	mov    %rdi,%r8
  405af8:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405afd:	48 89 d1             	mov    %rdx,%rcx
  405b00:	75 0b                	jne    405b0d <memset+0xae>
  405b02:	48 c1 e9 03          	shr    $0x3,%rcx
  405b06:	f3 48 ab             	rep stos %rax,(%rdi)
  405b09:	4c 89 c0             	mov    %r8,%rax
  405b0c:	c3                   	ret
  405b0d:	31 d2                	xor    %edx,%edx
  405b0f:	29 fa                	sub    %edi,%edx
  405b11:	83 e2 0f             	and    $0xf,%edx
  405b14:	48 89 07             	mov    %rax,(%rdi)
  405b17:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405b1b:	48 29 d1             	sub    %rdx,%rcx
  405b1e:	48 01 d7             	add    %rdx,%rdi
  405b21:	eb df                	jmp    405b02 <memset+0xa3>
  405b23:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405b2a:	00 00 00 
  405b2d:	0f 1f 00             	nopl   (%rax)

0000000000405b30 <__init_tp>:
  405b30:	f3 0f 1e fa          	endbr64
  405b34:	55                   	push   %rbp
  405b35:	48 89 e5             	mov    %rsp,%rbp
  405b38:	53                   	push   %rbx
  405b39:	48 89 fb             	mov    %rdi,%rbx
  405b3c:	48 83 ec 08          	sub    $0x8,%rsp
  405b40:	48 89 3f             	mov    %rdi,(%rdi)
  405b43:	e8 c5 0e 00 00       	call   406a0d <__set_thread_area>
  405b48:	85 c0                	test   %eax,%eax
  405b4a:	78 65                	js     405bb1 <__init_tp+0x81>
  405b4c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405b51:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405b55:	74 51                	je     405ba8 <__init_tp+0x78>
  405b57:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405b5e:	b8 da 00 00 00       	mov    $0xda,%eax
  405b63:	48 8d 3d 26 4c 00 00 	lea    0x4c26(%rip),%rdi        # 40a790 <__thread_list_lock>
  405b6a:	0f 05                	syscall
  405b6c:	89 43 30             	mov    %eax,0x30(%rbx)
  405b6f:	48 8d 05 22 46 00 00 	lea    0x4622(%rip),%rax        # 40a198 <__libc+0x38>
  405b76:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405b7d:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405b84:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405b8b:	48 8b 05 9e 45 00 00 	mov    0x459e(%rip),%rax        # 40a130 <__sysinfo>
  405b92:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405b96:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405b9a:	31 c0                	xor    %eax,%eax
  405b9c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405ba0:	c9                   	leave
  405ba1:	c3                   	ret
  405ba2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ba8:	c6 05 b1 45 00 00 01 	movb   $0x1,0x45b1(%rip)        # 40a160 <__libc>
  405baf:	eb a6                	jmp    405b57 <__init_tp+0x27>
  405bb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405bb6:	eb e4                	jmp    405b9c <__init_tp+0x6c>
  405bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405bbf:	00 

0000000000405bc0 <__copy_tls>:
  405bc0:	f3 0f 1e fa          	endbr64
  405bc4:	55                   	push   %rbp
  405bc5:	48 8b 05 ac 45 00 00 	mov    0x45ac(%rip),%rax        # 40a178 <__libc+0x18>
  405bcc:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405bd3:	ff 
  405bd4:	48 89 e5             	mov    %rsp,%rbp
  405bd7:	41 56                	push   %r14
  405bd9:	49 89 fe             	mov    %rdi,%r14
  405bdc:	41 55                	push   %r13
  405bde:	4c 8b 2d 9b 45 00 00 	mov    0x459b(%rip),%r13        # 40a180 <__libc+0x20>
  405be5:	41 54                	push   %r12
  405be7:	53                   	push   %rbx
  405be8:	48 8b 1d 81 45 00 00 	mov    0x4581(%rip),%rbx        # 40a170 <__libc+0x10>
  405bef:	49 f7 dd             	neg    %r13
  405bf2:	49 21 c5             	and    %rax,%r13
  405bf5:	48 85 db             	test   %rbx,%rbx
  405bf8:	74 32                	je     405c2c <__copy_tls+0x6c>
  405bfa:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405bfe:	66 90                	xchg   %ax,%ax
  405c00:	4c 89 e8             	mov    %r13,%rax
  405c03:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405c07:	4c 89 ef             	mov    %r13,%rdi
  405c0a:	49 83 c4 08          	add    $0x8,%r12
  405c0e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405c13:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405c17:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405c1b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405c1f:	e8 09 fe ff ff       	call   405a2d <memcpy>
  405c24:	48 8b 1b             	mov    (%rbx),%rbx
  405c27:	48 85 db             	test   %rbx,%rbx
  405c2a:	75 d4                	jne    405c00 <__copy_tls+0x40>
  405c2c:	48 8b 05 55 45 00 00 	mov    0x4555(%rip),%rax        # 40a188 <__libc+0x28>
  405c33:	49 89 06             	mov    %rax,(%r14)
  405c36:	4c 89 e8             	mov    %r13,%rax
  405c39:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405c3d:	5b                   	pop    %rbx
  405c3e:	41 5c                	pop    %r12
  405c40:	41 5d                	pop    %r13
  405c42:	41 5e                	pop    %r14
  405c44:	5d                   	pop    %rbp
  405c45:	c3                   	ret
  405c46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405c4d:	00 00 00 

0000000000405c50 <__init_tls>:
  405c50:	f3 0f 1e fa          	endbr64
  405c54:	55                   	push   %rbp
  405c55:	48 89 e5             	mov    %rsp,%rbp
  405c58:	53                   	push   %rbx
  405c59:	48 83 ec 08          	sub    $0x8,%rsp
  405c5d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405c61:	48 85 c9             	test   %rcx,%rcx
  405c64:	0f 84 fe 01 00 00    	je     405e68 <__init_tls+0x218>
  405c6a:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405c6e:	31 f6                	xor    %esi,%esi
  405c70:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405c74:	45 31 c0             	xor    %r8d,%r8d
  405c77:	4c 89 d0             	mov    %r10,%rax
  405c7a:	eb 29                	jmp    405ca5 <__init_tls+0x55>
  405c7c:	0f 1f 40 00          	nopl   0x0(%rax)
  405c80:	83 fa 02             	cmp    $0x2,%edx
  405c83:	0f 85 77 01 00 00    	jne    405e00 <__init_tls+0x1b0>
  405c89:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405c90:	48 85 d2             	test   %rdx,%rdx
  405c93:	74 07                	je     405c9c <__init_tls+0x4c>
  405c95:	48 89 d6             	mov    %rdx,%rsi
  405c98:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405c9c:	48 01 f8             	add    %rdi,%rax
  405c9f:	48 83 e9 01          	sub    $0x1,%rcx
  405ca3:	74 17                	je     405cbc <__init_tls+0x6c>
  405ca5:	8b 10                	mov    (%rax),%edx
  405ca7:	83 fa 06             	cmp    $0x6,%edx
  405caa:	75 d4                	jne    405c80 <__init_tls+0x30>
  405cac:	4c 89 d6             	mov    %r10,%rsi
  405caf:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405cb3:	48 01 f8             	add    %rdi,%rax
  405cb6:	48 83 e9 01          	sub    $0x1,%rcx
  405cba:	75 e9                	jne    405ca5 <__init_tls+0x55>
  405cbc:	4d 85 c0             	test   %r8,%r8
  405cbf:	0f 84 a3 01 00 00    	je     405e68 <__init_tls+0x218>
  405cc5:	49 8b 40 20          	mov    0x20(%r8),%rax
  405cc9:	49 03 70 10          	add    0x10(%r8),%rsi
  405ccd:	48 8d 1d 2c 49 00 00 	lea    0x492c(%rip),%rbx        # 40a600 <main_tls>
  405cd4:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405cd8:	48 89 35 29 49 00 00 	mov    %rsi,0x4929(%rip)        # 40a608 <main_tls+0x8>
  405cdf:	48 89 05 2a 49 00 00 	mov    %rax,0x492a(%rip)        # 40a610 <main_tls+0x10>
  405ce6:	49 8b 40 30          	mov    0x30(%r8),%rax
  405cea:	48 c7 05 93 44 00 00 	movq   $0x1,0x4493(%rip)        # 40a188 <__libc+0x28>
  405cf1:	01 00 00 00 
  405cf5:	48 89 05 24 49 00 00 	mov    %rax,0x4924(%rip)        # 40a620 <main_tls+0x20>
  405cfc:	48 89 1d 6d 44 00 00 	mov    %rbx,0x446d(%rip)        # 40a170 <__libc+0x10>
  405d03:	48 01 d6             	add    %rdx,%rsi
  405d06:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405d0a:	48 f7 de             	neg    %rsi
  405d0d:	48 21 ce             	and    %rcx,%rsi
  405d10:	48 01 d6             	add    %rdx,%rsi
  405d13:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405d1a:	48 89 35 f7 48 00 00 	mov    %rsi,0x48f7(%rip)        # 40a618 <main_tls+0x18>
  405d21:	48 89 35 00 49 00 00 	mov    %rsi,0x4900(%rip)        # 40a628 <main_tls+0x28>
  405d28:	48 83 f8 07          	cmp    $0x7,%rax
  405d2c:	77 15                	ja     405d43 <__init_tls+0xf3>
  405d2e:	48 c7 05 e7 48 00 00 	movq   $0x8,0x48e7(%rip)        # 40a620 <main_tls+0x20>
  405d35:	08 00 00 00 
  405d39:	ba e7 00 00 00       	mov    $0xe7,%edx
  405d3e:	b8 08 00 00 00       	mov    $0x8,%eax
  405d43:	48 01 d6             	add    %rdx,%rsi
  405d46:	48 89 05 33 44 00 00 	mov    %rax,0x4433(%rip)        # 40a180 <__libc+0x20>
  405d4d:	48 8d 3d ec 48 00 00 	lea    0x48ec(%rip),%rdi        # 40a640 <builtin_tls>
  405d54:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405d58:	48 89 35 19 44 00 00 	mov    %rsi,0x4419(%rip)        # 40a178 <__libc+0x18>
  405d5f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405d66:	76 21                	jbe    405d89 <__init_tls+0x139>
  405d68:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405d6e:	45 31 c9             	xor    %r9d,%r9d
  405d71:	b8 09 00 00 00       	mov    $0x9,%eax
  405d76:	31 ff                	xor    %edi,%edi
  405d78:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405d7f:	ba 03 00 00 00       	mov    $0x3,%edx
  405d84:	0f 05                	syscall
  405d86:	48 89 c7             	mov    %rax,%rdi
  405d89:	e8 32 fe ff ff       	call   405bc0 <__copy_tls>
  405d8e:	48 89 00             	mov    %rax,(%rax)
  405d91:	48 89 c7             	mov    %rax,%rdi
  405d94:	48 89 c3             	mov    %rax,%rbx
  405d97:	e8 71 0c 00 00       	call   406a0d <__set_thread_area>
  405d9c:	85 c0                	test   %eax,%eax
  405d9e:	0f 88 b8 00 00 00    	js     405e5c <__init_tls+0x20c>
  405da4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405da9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405dad:	0f 84 9d 00 00 00    	je     405e50 <__init_tls+0x200>
  405db3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405dba:	b8 da 00 00 00       	mov    $0xda,%eax
  405dbf:	48 8d 3d ca 49 00 00 	lea    0x49ca(%rip),%rdi        # 40a790 <__thread_list_lock>
  405dc6:	0f 05                	syscall
  405dc8:	89 43 30             	mov    %eax,0x30(%rbx)
  405dcb:	48 8d 05 c6 43 00 00 	lea    0x43c6(%rip),%rax        # 40a198 <__libc+0x38>
  405dd2:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405dd9:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405de0:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405de7:	48 8b 05 42 43 00 00 	mov    0x4342(%rip),%rax        # 40a130 <__sysinfo>
  405dee:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405df2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405df6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405dfa:	c9                   	leave
  405dfb:	c3                   	ret
  405dfc:	0f 1f 40 00          	nopl   0x0(%rax)
  405e00:	83 fa 07             	cmp    $0x7,%edx
  405e03:	75 0b                	jne    405e10 <__init_tls+0x1c0>
  405e05:	49 89 c0             	mov    %rax,%r8
  405e08:	e9 8f fe ff ff       	jmp    405c9c <__init_tls+0x4c>
  405e0d:	0f 1f 00             	nopl   (%rax)
  405e10:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  405e16:	0f 85 80 fe ff ff    	jne    405c9c <__init_tls+0x4c>
  405e1c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  405e20:	44 8b 0d e5 42 00 00 	mov    0x42e5(%rip),%r9d        # 40a10c <__default_stacksize>
  405e27:	49 39 d1             	cmp    %rdx,%r9
  405e2a:	0f 83 6c fe ff ff    	jae    405c9c <__init_tls+0x4c>
  405e30:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405e36:	4c 39 ca             	cmp    %r9,%rdx
  405e39:	49 0f 47 d1          	cmova  %r9,%rdx
  405e3d:	89 15 c9 42 00 00    	mov    %edx,0x42c9(%rip)        # 40a10c <__default_stacksize>
  405e43:	e9 54 fe ff ff       	jmp    405c9c <__init_tls+0x4c>
  405e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405e4f:	00 
  405e50:	c6 05 09 43 00 00 01 	movb   $0x1,0x4309(%rip)        # 40a160 <__libc>
  405e57:	e9 57 ff ff ff       	jmp    405db3 <__init_tls+0x163>
  405e5c:	f4                   	hlt
  405e5d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405e61:	c9                   	leave
  405e62:	c3                   	ret
  405e63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405e68:	48 8b 15 a9 47 00 00 	mov    0x47a9(%rip),%rdx        # 40a618 <main_tls+0x18>
  405e6f:	48 8b 35 92 47 00 00 	mov    0x4792(%rip),%rsi        # 40a608 <main_tls+0x8>
  405e76:	48 8b 05 a3 47 00 00 	mov    0x47a3(%rip),%rax        # 40a620 <main_tls+0x20>
  405e7d:	e9 81 fe ff ff       	jmp    405d03 <__init_tls+0xb3>
  405e82:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e89:	00 00 00 
  405e8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405e90 <__errno_location>:
  405e90:	f3 0f 1e fa          	endbr64
  405e94:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405e9b:	00 00 
  405e9d:	48 83 c0 34          	add    $0x34,%rax
  405ea1:	c3                   	ret
  405ea2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405ea9:	00 00 00 
  405eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405eb0 <__strerror_l>:
  405eb0:	f3 0f 1e fa          	endbr64
  405eb4:	48 8d 05 65 17 00 00 	lea    0x1765(%rip),%rax        # 407620 <errmsgstr>
  405ebb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  405ec1:	77 11                	ja     405ed4 <__strerror_l+0x24>
  405ec3:	48 63 ff             	movslq %edi,%rdi
  405ec6:	48 8d 15 33 16 00 00 	lea    0x1633(%rip),%rdx        # 407500 <errmsgidx>
  405ecd:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  405ed1:	48 01 d0             	add    %rdx,%rax
  405ed4:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  405ed8:	48 89 c7             	mov    %rax,%rdi
  405edb:	e9 50 00 00 00       	jmp    405f30 <__lctrans>

0000000000405ee0 <strerror>:
  405ee0:	f3 0f 1e fa          	endbr64
  405ee4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405eeb:	00 00 
  405eed:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  405ef4:	e9 b7 ff ff ff       	jmp    405eb0 <__strerror_l>
  405ef9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405f00 <_Exit>:
  405f00:	f3 0f 1e fa          	endbr64
  405f04:	48 63 ff             	movslq %edi,%rdi
  405f07:	b8 e7 00 00 00       	mov    $0xe7,%eax
  405f0c:	0f 05                	syscall
  405f0e:	66 90                	xchg   %ax,%ax
  405f10:	b8 3c 00 00 00       	mov    $0x3c,%eax
  405f15:	0f 05                	syscall
  405f17:	eb f7                	jmp    405f10 <_Exit+0x10>
  405f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405f20 <__lctrans_impl>:
  405f20:	f3 0f 1e fa          	endbr64
  405f24:	48 89 f8             	mov    %rdi,%rax
  405f27:	c3                   	ret
  405f28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405f2f:	00 

0000000000405f30 <__lctrans>:
  405f30:	f3 0f 1e fa          	endbr64
  405f34:	e9 e7 ff ff ff       	jmp    405f20 <__lctrans_impl>
  405f39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405f40 <__lctrans_cur>:
  405f40:	f3 0f 1e fa          	endbr64
  405f44:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405f4b:	00 00 
  405f4d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  405f54:	48 8b 70 28          	mov    0x28(%rax),%rsi
  405f58:	e9 c3 ff ff ff       	jmp    405f20 <__lctrans_impl>
  405f5d:	0f 1f 00             	nopl   (%rax)

0000000000405f60 <__fpclassifyl>:
  405f60:	f3 0f 1e fa          	endbr64
  405f64:	55                   	push   %rbp
  405f65:	48 89 e5             	mov    %rsp,%rbp
  405f68:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  405f6c:	48 8b 45 18          	mov    0x18(%rbp),%rax
  405f70:	48 89 ca             	mov    %rcx,%rdx
  405f73:	89 c6                	mov    %eax,%esi
  405f75:	25 ff 7f 00 00       	and    $0x7fff,%eax
  405f7a:	48 c1 ea 3f          	shr    $0x3f,%rdx
  405f7e:	66 81 e6 ff 7f       	and    $0x7fff,%si
  405f83:	09 d0                	or     %edx,%eax
  405f85:	74 31                	je     405fb8 <__fpclassifyl+0x58>
  405f87:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  405f8e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  405f93:	74 0b                	je     405fa0 <__fpclassifyl+0x40>
  405f95:	5d                   	pop    %rbp
  405f96:	c3                   	ret
  405f97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405f9e:	00 00 
  405fa0:	31 c0                	xor    %eax,%eax
  405fa2:	48 85 d2             	test   %rdx,%rdx
  405fa5:	74 ee                	je     405f95 <__fpclassifyl+0x35>
  405fa7:	31 c0                	xor    %eax,%eax
  405fa9:	48 01 c9             	add    %rcx,%rcx
  405fac:	5d                   	pop    %rbp
  405fad:	0f 94 c0             	sete   %al
  405fb0:	c3                   	ret
  405fb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405fb8:	48 83 f9 01          	cmp    $0x1,%rcx
  405fbc:	b8 02 00 00 00       	mov    $0x2,%eax
  405fc1:	5d                   	pop    %rbp
  405fc2:	83 d8 ff             	sbb    $0xffffffff,%eax
  405fc5:	c3                   	ret
  405fc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405fcd:	00 00 00 

0000000000405fd0 <__signbitl>:
  405fd0:	f3 0f 1e fa          	endbr64
  405fd4:	55                   	push   %rbp
  405fd5:	48 89 e5             	mov    %rsp,%rbp
  405fd8:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  405fdc:	5d                   	pop    %rbp
  405fdd:	66 c1 e8 0f          	shr    $0xf,%ax
  405fe1:	0f b7 c0             	movzwl %ax,%eax
  405fe4:	c3                   	ret
  405fe5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405fec:	00 00 00 
  405fef:	90                   	nop

0000000000405ff0 <frexpl>:
  405ff0:	f3 0f 1e fa          	endbr64
  405ff4:	55                   	push   %rbp
  405ff5:	48 89 e5             	mov    %rsp,%rbp
  405ff8:	48 83 ec 20          	sub    $0x20,%rsp
  405ffc:	db 6d 10             	fldt   0x10(%rbp)
  405fff:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406003:	89 c2                	mov    %eax,%edx
  406005:	d9 c0                	fld    %st(0)
  406007:	db 7d f0             	fstpt  -0x10(%rbp)
  40600a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40600f:	74 2f                	je     406040 <frexpl+0x50>
  406011:	dd d8                	fstp   %st(0)
  406013:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406018:	74 38                	je     406052 <frexpl+0x62>
  40601a:	0f b7 d2             	movzwl %dx,%edx
  40601d:	66 25 00 80          	and    $0x8000,%ax
  406021:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  406027:	66 0d fe 3f          	or     $0x3ffe,%ax
  40602b:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40602f:	db 6d f0             	fldt   -0x10(%rbp)
  406032:	89 17                	mov    %edx,(%rdi)
  406034:	c9                   	leave
  406035:	c3                   	ret
  406036:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40603d:	00 00 00 
  406040:	d9 ee                	fldz
  406042:	d9 c9                	fxch   %st(1)
  406044:	df e9                	fucomip %st(1),%st
  406046:	dd d8                	fstp   %st(0)
  406048:	7a 16                	jp     406060 <frexpl+0x70>
  40604a:	75 14                	jne    406060 <frexpl+0x70>
  40604c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406052:	db 6d 10             	fldt   0x10(%rbp)
  406055:	c9                   	leave
  406056:	c3                   	ret
  406057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40605e:	00 00 
  406060:	db 6d 10             	fldt   0x10(%rbp)
  406063:	d8 0d 63 14 00 00    	fmuls  0x1463(%rip)        # 4074cc <states+0x1ec>
  406069:	48 83 ec 10          	sub    $0x10,%rsp
  40606d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406071:	db 3c 24             	fstpt  (%rsp)
  406074:	e8 77 ff ff ff       	call   405ff0 <frexpl>
  406079:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40607d:	83 2f 78             	subl   $0x78,(%rdi)
  406080:	58                   	pop    %rax
  406081:	5a                   	pop    %rdx
  406082:	c9                   	leave
  406083:	c3                   	ret
  406084:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40608b:	00 00 00 
  40608e:	66 90                	xchg   %ax,%ax

0000000000406090 <wctomb>:
  406090:	f3 0f 1e fa          	endbr64
  406094:	48 85 ff             	test   %rdi,%rdi
  406097:	74 17                	je     4060b0 <wctomb+0x20>
  406099:	55                   	push   %rbp
  40609a:	31 d2                	xor    %edx,%edx
  40609c:	48 89 e5             	mov    %rsp,%rbp
  40609f:	e8 dc 09 00 00       	call   406a80 <wcrtomb>
  4060a4:	5d                   	pop    %rbp
  4060a5:	c3                   	ret
  4060a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060ad:	00 00 00 
  4060b0:	31 c0                	xor    %eax,%eax
  4060b2:	c3                   	ret
  4060b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060ba:	00 00 00 
  4060bd:	0f 1f 00             	nopl   (%rax)

00000000004060c0 <__lockfile>:
  4060c0:	f3 0f 1e fa          	endbr64
  4060c4:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  4060ca:	48 89 fa             	mov    %rdi,%rdx
  4060cd:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  4060d4:	00 00 
  4060d6:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  4060da:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  4060df:	31 c9                	xor    %ecx,%ecx
  4060e1:	44 39 c0             	cmp    %r8d,%eax
  4060e4:	74 3f                	je     406125 <__lockfile+0x65>
  4060e6:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4060ed:	89 c8                	mov    %ecx,%eax
  4060ef:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  4060f6:	00 00 
  4060f8:	85 c0                	test   %eax,%eax
  4060fa:	74 24                	je     406120 <__lockfile+0x60>
  4060fc:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406103:	89 c8                	mov    %ecx,%eax
  406105:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40610c:	00 00 
  40610e:	89 c1                	mov    %eax,%ecx
  406110:	85 c0                	test   %eax,%eax
  406112:	75 33                	jne    406147 <__lockfile+0x87>
  406114:	90                   	nop
  406115:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40611c:	00 00 00 00 
  406120:	b9 01 00 00 00       	mov    $0x1,%ecx
  406125:	89 c8                	mov    %ecx,%eax
  406127:	c3                   	ret
  406128:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40612f:	00 
  406130:	89 c8                	mov    %ecx,%eax
  406132:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406136:	39 c8                	cmp    %ecx,%eax
  406138:	74 1d                	je     406157 <__lockfile+0x97>
  40613a:	31 c0                	xor    %eax,%eax
  40613c:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406141:	89 c1                	mov    %eax,%ecx
  406143:	85 c0                	test   %eax,%eax
  406145:	74 d9                	je     406120 <__lockfile+0x60>
  406147:	89 ca                	mov    %ecx,%edx
  406149:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40614f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406155:	74 d9                	je     406130 <__lockfile+0x70>
  406157:	48 63 d2             	movslq %edx,%rdx
  40615a:	45 31 d2             	xor    %r10d,%r10d
  40615d:	b8 ca 00 00 00       	mov    $0xca,%eax
  406162:	be 80 00 00 00       	mov    $0x80,%esi
  406167:	0f 05                	syscall
  406169:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  40616d:	75 cb                	jne    40613a <__lockfile+0x7a>
  40616f:	45 31 d2             	xor    %r10d,%r10d
  406172:	31 f6                	xor    %esi,%esi
  406174:	b8 ca 00 00 00       	mov    $0xca,%eax
  406179:	0f 05                	syscall
  40617b:	eb bd                	jmp    40613a <__lockfile+0x7a>
  40617d:	0f 1f 00             	nopl   (%rax)

0000000000406180 <__unlockfile>:
  406180:	f3 0f 1e fa          	endbr64
  406184:	48 89 fa             	mov    %rdi,%rdx
  406187:	31 c0                	xor    %eax,%eax
  406189:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406190:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406196:	a9 00 00 00 40       	test   $0x40000000,%eax
  40619b:	74 17                	je     4061b4 <__unlockfile+0x34>
  40619d:	be 81 00 00 00       	mov    $0x81,%esi
  4061a2:	b8 ca 00 00 00       	mov    $0xca,%eax
  4061a7:	ba 01 00 00 00       	mov    $0x1,%edx
  4061ac:	0f 05                	syscall
  4061ae:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4061b2:	74 04                	je     4061b8 <__unlockfile+0x38>
  4061b4:	c3                   	ret
  4061b5:	0f 1f 00             	nopl   (%rax)
  4061b8:	b8 ca 00 00 00       	mov    $0xca,%eax
  4061bd:	be 01 00 00 00       	mov    $0x1,%esi
  4061c2:	0f 05                	syscall
  4061c4:	c3                   	ret
  4061c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061cc:	00 00 00 
  4061cf:	90                   	nop

00000000004061d0 <__overflow>:
  4061d0:	f3 0f 1e fa          	endbr64
  4061d4:	55                   	push   %rbp
  4061d5:	48 89 e5             	mov    %rsp,%rbp
  4061d8:	48 83 ec 20          	sub    $0x20,%rsp
  4061dc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4061e3:	00 00 
  4061e5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4061e9:	31 c0                	xor    %eax,%eax
  4061eb:	48 8b 47 20          	mov    0x20(%rdi),%rax
  4061ef:	40 88 75 f7          	mov    %sil,-0x9(%rbp)
  4061f3:	48 85 c0             	test   %rax,%rax
  4061f6:	74 50                	je     406248 <__overflow+0x78>
  4061f8:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  4061fc:	48 39 c2             	cmp    %rax,%rdx
  4061ff:	74 0c                	je     40620d <__overflow+0x3d>
  406201:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406205:	3b 87 90 00 00 00    	cmp    0x90(%rdi),%eax
  40620b:	75 2b                	jne    406238 <__overflow+0x68>
  40620d:	48 8d 75 f7          	lea    -0x9(%rbp),%rsi
  406211:	ba 01 00 00 00       	mov    $0x1,%edx
  406216:	ff 57 48             	call   *0x48(%rdi)
  406219:	48 83 f8 01          	cmp    $0x1,%rax
  40621d:	75 41                	jne    406260 <__overflow+0x90>
  40621f:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406223:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  406227:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40622e:	00 00 
  406230:	75 35                	jne    406267 <__overflow+0x97>
  406232:	c9                   	leave
  406233:	c3                   	ret
  406234:	0f 1f 40 00          	nopl   0x0(%rax)
  406238:	48 8d 72 01          	lea    0x1(%rdx),%rsi
  40623c:	48 89 77 28          	mov    %rsi,0x28(%rdi)
  406240:	88 02                	mov    %al,(%rdx)
  406242:	eb df                	jmp    406223 <__overflow+0x53>
  406244:	0f 1f 40 00          	nopl   0x0(%rax)
  406248:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40624c:	e8 ff 00 00 00       	call   406350 <__towrite>
  406251:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  406255:	85 c0                	test   %eax,%eax
  406257:	75 07                	jne    406260 <__overflow+0x90>
  406259:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40625d:	eb 99                	jmp    4061f8 <__overflow+0x28>
  40625f:	90                   	nop
  406260:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  406265:	eb bc                	jmp    406223 <__overflow+0x53>
  406267:	e8 54 c3 ff ff       	call   4025c0 <__stack_chk_fail>
  40626c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406270 <__aio_close>:
  406270:	f3 0f 1e fa          	endbr64
  406274:	89 f8                	mov    %edi,%eax
  406276:	c3                   	ret
  406277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40627e:	00 00 

0000000000406280 <__stdio_close>:
  406280:	f3 0f 1e fa          	endbr64
  406284:	55                   	push   %rbp
  406285:	8b 7f 78             	mov    0x78(%rdi),%edi
  406288:	48 89 e5             	mov    %rsp,%rbp
  40628b:	e8 e0 ff ff ff       	call   406270 <__aio_close>
  406290:	48 63 f8             	movslq %eax,%rdi
  406293:	b8 03 00 00 00       	mov    $0x3,%eax
  406298:	0f 05                	syscall
  40629a:	48 89 c7             	mov    %rax,%rdi
  40629d:	e8 9e 07 00 00       	call   406a40 <__syscall_ret>
  4062a2:	5d                   	pop    %rbp
  4062a3:	c3                   	ret
  4062a4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062ab:	00 00 00 
  4062ae:	66 90                	xchg   %ax,%ax

00000000004062b0 <__stdio_seek>:
  4062b0:	f3 0f 1e fa          	endbr64
  4062b4:	8b 7f 78             	mov    0x78(%rdi),%edi
  4062b7:	e9 64 07 00 00       	jmp    406a20 <__lseek>
  4062bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004062c0 <__stdout_write>:
  4062c0:	f3 0f 1e fa          	endbr64
  4062c4:	55                   	push   %rbp
  4062c5:	48 8d 05 d4 09 00 00 	lea    0x9d4(%rip),%rax        # 406ca0 <__stdio_write>
  4062cc:	49 89 f8             	mov    %rdi,%r8
  4062cf:	49 89 f1             	mov    %rsi,%r9
  4062d2:	48 89 e5             	mov    %rsp,%rbp
  4062d5:	48 83 ec 10          	sub    $0x10,%rsp
  4062d9:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  4062e0:	00 00 
  4062e2:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  4062e6:	49 89 d2             	mov    %rdx,%r10
  4062e9:	48 89 47 48          	mov    %rax,0x48(%rdi)
  4062ed:	f6 07 40             	testb  $0x40,(%rdi)
  4062f0:	75 19                	jne    40630b <__stdout_write+0x4b>
  4062f2:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  4062f6:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4062fa:	b8 10 00 00 00       	mov    $0x10,%eax
  4062ff:	be 13 54 00 00       	mov    $0x5413,%esi
  406304:	0f 05                	syscall
  406306:	48 85 c0             	test   %rax,%rax
  406309:	75 25                	jne    406330 <__stdout_write+0x70>
  40630b:	4c 89 d2             	mov    %r10,%rdx
  40630e:	4c 89 ce             	mov    %r9,%rsi
  406311:	4c 89 c7             	mov    %r8,%rdi
  406314:	e8 87 09 00 00       	call   406ca0 <__stdio_write>
  406319:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40631d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406324:	00 00 
  406326:	75 15                	jne    40633d <__stdout_write+0x7d>
  406328:	c9                   	leave
  406329:	c3                   	ret
  40632a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406330:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406337:	ff ff ff ff 
  40633b:	eb ce                	jmp    40630b <__stdout_write+0x4b>
  40633d:	e8 7e c2 ff ff       	call   4025c0 <__stack_chk_fail>
  406342:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406349:	00 00 00 
  40634c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406350 <__towrite>:
  406350:	f3 0f 1e fa          	endbr64
  406354:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  40635a:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40635d:	09 d0                	or     %edx,%eax
  40635f:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  406365:	8b 07                	mov    (%rdi),%eax
  406367:	a8 08                	test   $0x8,%al
  406369:	75 35                	jne    4063a0 <__towrite+0x50>
  40636b:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40636f:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  406373:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406377:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  40637b:	48 01 c1             	add    %rax,%rcx
  40637e:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406383:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406387:	31 c0                	xor    %eax,%eax
  406389:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40638e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406392:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406396:	c3                   	ret
  406397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40639e:	00 00 
  4063a0:	83 c8 20             	or     $0x20,%eax
  4063a3:	89 07                	mov    %eax,(%rdi)
  4063a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4063aa:	c3                   	ret
  4063ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004063b0 <__towrite_needs_stdio_exit>:
  4063b0:	f3 0f 1e fa          	endbr64
  4063b4:	e9 87 08 00 00       	jmp    406c40 <__stdio_exit>
  4063b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004063c0 <fputs>:
  4063c0:	f3 0f 1e fa          	endbr64
  4063c4:	55                   	push   %rbp
  4063c5:	48 89 e5             	mov    %rsp,%rbp
  4063c8:	41 54                	push   %r12
  4063ca:	49 89 f4             	mov    %rsi,%r12
  4063cd:	53                   	push   %rbx
  4063ce:	48 83 ec 10          	sub    $0x10,%rsp
  4063d2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4063d6:	e8 a5 05 00 00       	call   406980 <strlen>
  4063db:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4063df:	4c 89 e1             	mov    %r12,%rcx
  4063e2:	be 01 00 00 00       	mov    $0x1,%esi
  4063e7:	48 89 c2             	mov    %rax,%rdx
  4063ea:	48 89 c3             	mov    %rax,%rbx
  4063ed:	e8 1e 01 00 00       	call   406510 <fwrite>
  4063f2:	48 39 d8             	cmp    %rbx,%rax
  4063f5:	0f 95 c0             	setne  %al
  4063f8:	48 83 c4 10          	add    $0x10,%rsp
  4063fc:	0f b6 c0             	movzbl %al,%eax
  4063ff:	5b                   	pop    %rbx
  406400:	41 5c                	pop    %r12
  406402:	f7 d8                	neg    %eax
  406404:	5d                   	pop    %rbp
  406405:	c3                   	ret
  406406:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40640d:	00 00 00 

0000000000406410 <__fwritex>:
  406410:	f3 0f 1e fa          	endbr64
  406414:	55                   	push   %rbp
  406415:	48 89 f9             	mov    %rdi,%rcx
  406418:	48 89 e5             	mov    %rsp,%rbp
  40641b:	41 54                	push   %r12
  40641d:	49 89 f4             	mov    %rsi,%r12
  406420:	53                   	push   %rbx
  406421:	48 89 d3             	mov    %rdx,%rbx
  406424:	48 83 ec 10          	sub    $0x10,%rsp
  406428:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40642c:	48 85 c0             	test   %rax,%rax
  40642f:	0f 84 ab 00 00 00    	je     4064e0 <__fwritex+0xd0>
  406435:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406439:	48 29 f8             	sub    %rdi,%rax
  40643c:	4c 39 e0             	cmp    %r12,%rax
  40643f:	72 57                	jb     406498 <__fwritex+0x88>
  406441:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406447:	4c 89 e2             	mov    %r12,%rdx
  40644a:	85 c0                	test   %eax,%eax
  40644c:	79 3d                	jns    40648b <__fwritex+0x7b>
  40644e:	4d 89 e0             	mov    %r12,%r8
  406451:	4c 89 c2             	mov    %r8,%rdx
  406454:	48 89 ce             	mov    %rcx,%rsi
  406457:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  40645b:	e8 cd f5 ff ff       	call   405a2d <memcpy>
  406460:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  406464:	4c 01 43 28          	add    %r8,0x28(%rbx)
  406468:	4c 89 e0             	mov    %r12,%rax
  40646b:	48 83 c4 10          	add    $0x10,%rsp
  40646f:	5b                   	pop    %rbx
  406470:	41 5c                	pop    %r12
  406472:	5d                   	pop    %rbp
  406473:	c3                   	ret
  406474:	90                   	nop
  406475:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40647c:	00 00 00 00 
  406480:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406485:	74 29                	je     4064b0 <__fwritex+0xa0>
  406487:	48 83 ea 01          	sub    $0x1,%rdx
  40648b:	48 85 d2             	test   %rdx,%rdx
  40648e:	75 f0                	jne    406480 <__fwritex+0x70>
  406490:	eb bc                	jmp    40644e <__fwritex+0x3e>
  406492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406498:	48 8b 43 48          	mov    0x48(%rbx),%rax
  40649c:	48 83 c4 10          	add    $0x10,%rsp
  4064a0:	4c 89 e2             	mov    %r12,%rdx
  4064a3:	48 89 df             	mov    %rbx,%rdi
  4064a6:	48 89 ce             	mov    %rcx,%rsi
  4064a9:	5b                   	pop    %rbx
  4064aa:	41 5c                	pop    %r12
  4064ac:	5d                   	pop    %rbp
  4064ad:	ff e0                	jmp    *%rax
  4064af:	90                   	nop
  4064b0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4064b4:	48 89 ce             	mov    %rcx,%rsi
  4064b7:	48 89 df             	mov    %rbx,%rdi
  4064ba:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4064be:	ff 53 48             	call   *0x48(%rbx)
  4064c1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4064c5:	48 39 d0             	cmp    %rdx,%rax
  4064c8:	72 a1                	jb     40646b <__fwritex+0x5b>
  4064ca:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4064ce:	4d 89 e0             	mov    %r12,%r8
  4064d1:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4064d5:	49 29 d0             	sub    %rdx,%r8
  4064d8:	48 01 d1             	add    %rdx,%rcx
  4064db:	e9 71 ff ff ff       	jmp    406451 <__fwritex+0x41>
  4064e0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4064e4:	48 89 d7             	mov    %rdx,%rdi
  4064e7:	e8 64 fe ff ff       	call   406350 <__towrite>
  4064ec:	85 c0                	test   %eax,%eax
  4064ee:	75 10                	jne    406500 <__fwritex+0xf0>
  4064f0:	48 8b 43 20          	mov    0x20(%rbx),%rax
  4064f4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4064f8:	e9 38 ff ff ff       	jmp    406435 <__fwritex+0x25>
  4064fd:	0f 1f 00             	nopl   (%rax)
  406500:	31 c0                	xor    %eax,%eax
  406502:	e9 64 ff ff ff       	jmp    40646b <__fwritex+0x5b>
  406507:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40650e:	00 00 

0000000000406510 <fwrite>:
  406510:	f3 0f 1e fa          	endbr64
  406514:	55                   	push   %rbp
  406515:	31 c0                	xor    %eax,%eax
  406517:	48 89 e5             	mov    %rsp,%rbp
  40651a:	41 57                	push   %r15
  40651c:	41 56                	push   %r14
  40651e:	49 89 f6             	mov    %rsi,%r14
  406521:	41 55                	push   %r13
  406523:	4c 0f af f2          	imul   %rdx,%r14
  406527:	41 54                	push   %r12
  406529:	49 89 cc             	mov    %rcx,%r12
  40652c:	53                   	push   %rbx
  40652d:	48 89 f3             	mov    %rsi,%rbx
  406530:	48 83 ec 18          	sub    $0x18,%rsp
  406534:	48 85 f6             	test   %rsi,%rsi
  406537:	48 0f 45 c2          	cmovne %rdx,%rax
  40653b:	49 89 c5             	mov    %rax,%r13
  40653e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406544:	85 c0                	test   %eax,%eax
  406546:	79 30                	jns    406578 <fwrite+0x68>
  406548:	48 89 ca             	mov    %rcx,%rdx
  40654b:	4c 89 f6             	mov    %r14,%rsi
  40654e:	e8 bd fe ff ff       	call   406410 <__fwritex>
  406553:	49 39 c6             	cmp    %rax,%r14
  406556:	74 08                	je     406560 <fwrite+0x50>
  406558:	31 d2                	xor    %edx,%edx
  40655a:	48 f7 f3             	div    %rbx
  40655d:	49 89 c5             	mov    %rax,%r13
  406560:	48 83 c4 18          	add    $0x18,%rsp
  406564:	4c 89 e8             	mov    %r13,%rax
  406567:	5b                   	pop    %rbx
  406568:	41 5c                	pop    %r12
  40656a:	41 5d                	pop    %r13
  40656c:	41 5e                	pop    %r14
  40656e:	41 5f                	pop    %r15
  406570:	5d                   	pop    %rbp
  406571:	c3                   	ret
  406572:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406578:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  40657c:	48 89 cf             	mov    %rcx,%rdi
  40657f:	e8 3c fb ff ff       	call   4060c0 <__lockfile>
  406584:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406588:	4c 89 e2             	mov    %r12,%rdx
  40658b:	4c 89 f6             	mov    %r14,%rsi
  40658e:	41 89 c7             	mov    %eax,%r15d
  406591:	e8 7a fe ff ff       	call   406410 <__fwritex>
  406596:	45 85 ff             	test   %r15d,%r15d
  406599:	74 b8                	je     406553 <fwrite+0x43>
  40659b:	4c 89 e7             	mov    %r12,%rdi
  40659e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4065a2:	e8 d9 fb ff ff       	call   406180 <__unlockfile>
  4065a7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4065ab:	eb a6                	jmp    406553 <fwrite+0x43>
  4065ad:	0f 1f 00             	nopl   (%rax)

00000000004065b0 <sn_write>:
  4065b0:	f3 0f 1e fa          	endbr64
  4065b4:	55                   	push   %rbp
  4065b5:	48 89 f1             	mov    %rsi,%rcx
  4065b8:	48 89 e5             	mov    %rsp,%rbp
  4065bb:	41 55                	push   %r13
  4065bd:	49 89 d5             	mov    %rdx,%r13
  4065c0:	41 54                	push   %r12
  4065c2:	53                   	push   %rbx
  4065c3:	48 89 fb             	mov    %rdi,%rbx
  4065c6:	48 83 ec 18          	sub    $0x18,%rsp
  4065ca:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  4065d1:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  4065d5:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  4065d9:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4065de:	49 8b 3c 24          	mov    (%r12),%rdi
  4065e2:	48 29 f2             	sub    %rsi,%rdx
  4065e5:	48 39 c2             	cmp    %rax,%rdx
  4065e8:	48 0f 47 d0          	cmova  %rax,%rdx
  4065ec:	48 85 d2             	test   %rdx,%rdx
  4065ef:	75 2f                	jne    406620 <sn_write+0x70>
  4065f1:	49 39 c5             	cmp    %rax,%r13
  4065f4:	49 0f 46 c5          	cmovbe %r13,%rax
  4065f8:	48 89 c2             	mov    %rax,%rdx
  4065fb:	48 85 c0             	test   %rax,%rax
  4065fe:	75 5c                	jne    40665c <sn_write+0xac>
  406600:	c6 07 00             	movb   $0x0,(%rdi)
  406603:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406607:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40660b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40660f:	48 83 c4 18          	add    $0x18,%rsp
  406613:	4c 89 e8             	mov    %r13,%rax
  406616:	5b                   	pop    %rbx
  406617:	41 5c                	pop    %r12
  406619:	41 5d                	pop    %r13
  40661b:	5d                   	pop    %rbp
  40661c:	c3                   	ret
  40661d:	0f 1f 00             	nopl   (%rax)
  406620:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406624:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406628:	e8 00 f4 ff ff       	call   405a2d <memcpy>
  40662d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406631:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406636:	49 8b 3c 24          	mov    (%r12),%rdi
  40663a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40663e:	48 29 d0             	sub    %rdx,%rax
  406641:	48 01 d7             	add    %rdx,%rdi
  406644:	49 39 c5             	cmp    %rax,%r13
  406647:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40664c:	49 0f 46 c5          	cmovbe %r13,%rax
  406650:	49 89 3c 24          	mov    %rdi,(%r12)
  406654:	48 89 c2             	mov    %rax,%rdx
  406657:	48 85 c0             	test   %rax,%rax
  40665a:	74 a4                	je     406600 <sn_write+0x50>
  40665c:	48 89 ce             	mov    %rcx,%rsi
  40665f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  406663:	e8 c5 f3 ff ff       	call   405a2d <memcpy>
  406668:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40666c:	49 8b 3c 24          	mov    (%r12),%rdi
  406670:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  406675:	48 01 d7             	add    %rdx,%rdi
  406678:	49 89 3c 24          	mov    %rdi,(%r12)
  40667c:	eb 82                	jmp    406600 <sn_write+0x50>
  40667e:	66 90                	xchg   %ax,%ax

0000000000406680 <vsnprintf>:
  406680:	f3 0f 1e fa          	endbr64
  406684:	55                   	push   %rbp
  406685:	49 89 c9             	mov    %rcx,%r9
  406688:	49 89 d0             	mov    %rdx,%r8
  40668b:	48 89 e5             	mov    %rsp,%rbp
  40668e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  406695:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40669c:	00 00 
  40669e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4066a2:	31 c0                	xor    %eax,%eax
  4066a4:	48 85 f6             	test   %rsi,%rsi
  4066a7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4066ab:	0f 95 c1             	setne  %cl
  4066ae:	48 0f 45 d7          	cmovne %rdi,%rdx
  4066b2:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4066b9:	0f b6 c9             	movzbl %cl,%ecx
  4066bc:	48 29 ce             	sub    %rcx,%rsi
  4066bf:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  4066c4:	c6 02 00             	movb   $0x0,(%rdx)
  4066c7:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  4066ce:	4c 89 ca             	mov    %r9,%rdx
  4066d1:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  4066d8:	4c 89 c6             	mov    %r8,%rsi
  4066db:	f3 48 ab             	rep stos %rax,(%rdi)
  4066de:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 4065b0 <sn_write>
  4066e5:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4066ec:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4066f3:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  4066f7:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  4066fe:	48 8b 05 9b 16 00 00 	mov    0x169b(%rip),%rax        # 407da0 <errmsgstr+0x780>
  406705:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406709:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406710:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406714:	e8 77 f0 ff ff       	call   405790 <vfprintf>
  406719:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40671d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406724:	00 00 
  406726:	75 02                	jne    40672a <vsnprintf+0xaa>
  406728:	c9                   	leave
  406729:	c3                   	ret
  40672a:	e8 91 be ff ff       	call   4025c0 <__stack_chk_fail>
  40672f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406736:	00 00 00 
  406739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406740 <memchr>:
  406740:	f3 0f 1e fa          	endbr64
  406744:	48 89 d0             	mov    %rdx,%rax
  406747:	40 0f b6 ce          	movzbl %sil,%ecx
  40674b:	40 f6 c7 07          	test   $0x7,%dil
  40674f:	75 1c                	jne    40676d <memchr+0x2d>
  406751:	eb 2d                	jmp    406780 <memchr+0x40>
  406753:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406758:	0f b6 17             	movzbl (%rdi),%edx
  40675b:	39 ca                	cmp    %ecx,%edx
  40675d:	74 28                	je     406787 <memchr+0x47>
  40675f:	48 83 c7 01          	add    $0x1,%rdi
  406763:	48 83 e8 01          	sub    $0x1,%rax
  406767:	40 f6 c7 07          	test   $0x7,%dil
  40676b:	74 13                	je     406780 <memchr+0x40>
  40676d:	48 85 c0             	test   %rax,%rax
  406770:	75 e6                	jne    406758 <memchr+0x18>
  406772:	31 d2                	xor    %edx,%edx
  406774:	48 89 d0             	mov    %rdx,%rax
  406777:	c3                   	ret
  406778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40677f:	00 
  406780:	31 d2                	xor    %edx,%edx
  406782:	48 85 c0             	test   %rax,%rax
  406785:	74 ed                	je     406774 <memchr+0x34>
  406787:	0f b6 17             	movzbl (%rdi),%edx
  40678a:	39 ca                	cmp    %ecx,%edx
  40678c:	0f 84 ce 00 00 00    	je     406860 <memchr+0x120>
  406792:	48 83 f8 07          	cmp    $0x7,%rax
  406796:	0f 86 c4 00 00 00    	jbe    406860 <memchr+0x120>
  40679c:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4067a3:	01 01 01 
  4067a6:	4c 63 c1             	movslq %ecx,%r8
  4067a9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4067b0:	fe fe fe 
  4067b3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4067ba:	80 80 80 
  4067bd:	4c 0f af c2          	imul   %rdx,%r8
  4067c1:	48 89 fa             	mov    %rdi,%rdx
  4067c4:	eb 48                	jmp    40680e <memchr+0xce>
  4067c6:	0f 1f 00             	nopl   (%rax)
  4067c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067d0:	00 00 00 00 
  4067d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067db:	00 00 00 00 
  4067df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067e6:	00 00 00 00 
  4067ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067f1:	00 00 00 00 
  4067f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067fc:	00 00 00 00 
  406800:	48 83 e8 08          	sub    $0x8,%rax
  406804:	48 83 c2 08          	add    $0x8,%rdx
  406808:	48 83 f8 07          	cmp    $0x7,%rax
  40680c:	76 5a                	jbe    406868 <memchr+0x128>
  40680e:	48 8b 32             	mov    (%rdx),%rsi
  406811:	4c 31 c6             	xor    %r8,%rsi
  406814:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406818:	48 f7 d6             	not    %rsi
  40681b:	48 21 fe             	and    %rdi,%rsi
  40681e:	4c 85 ce             	test   %r9,%rsi
  406821:	74 dd                	je     406800 <memchr+0xc0>
  406823:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40682a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406831:	00 00 00 00 
  406835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40683c:	00 00 00 00 
  406840:	0f b6 32             	movzbl (%rdx),%esi
  406843:	39 ce                	cmp    %ecx,%esi
  406845:	0f 84 29 ff ff ff    	je     406774 <memchr+0x34>
  40684b:	48 83 c2 01          	add    $0x1,%rdx
  40684f:	48 83 e8 01          	sub    $0x1,%rax
  406853:	75 eb                	jne    406840 <memchr+0x100>
  406855:	e9 18 ff ff ff       	jmp    406772 <memchr+0x32>
  40685a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406860:	48 89 fa             	mov    %rdi,%rdx
  406863:	eb db                	jmp    406840 <memchr+0x100>
  406865:	0f 1f 00             	nopl   (%rax)
  406868:	48 85 c0             	test   %rax,%rax
  40686b:	75 d3                	jne    406840 <memchr+0x100>
  40686d:	e9 00 ff ff ff       	jmp    406772 <memchr+0x32>
  406872:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406879:	00 00 00 
  40687c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406880 <__stpcpy>:
  406880:	f3 0f 1e fa          	endbr64
  406884:	48 89 f9             	mov    %rdi,%rcx
  406887:	48 89 f8             	mov    %rdi,%rax
  40688a:	48 89 f2             	mov    %rsi,%rdx
  40688d:	48 31 f1             	xor    %rsi,%rcx
  406890:	83 e1 07             	and    $0x7,%ecx
  406893:	74 5c                	je     4068f1 <__stpcpy+0x71>
  406895:	0f b6 0a             	movzbl (%rdx),%ecx
  406898:	88 08                	mov    %cl,(%rax)
  40689a:	84 c9                	test   %cl,%cl
  40689c:	0f 84 c6 00 00 00    	je     406968 <__stpcpy+0xe8>
  4068a2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4068a9:	00 
  4068aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068b1:	00 00 00 00 
  4068b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068bc:	00 00 00 00 
  4068c0:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  4068c4:	48 83 c2 01          	add    $0x1,%rdx
  4068c8:	48 83 c0 01          	add    $0x1,%rax
  4068cc:	88 08                	mov    %cl,(%rax)
  4068ce:	84 c9                	test   %cl,%cl
  4068d0:	75 ee                	jne    4068c0 <__stpcpy+0x40>
  4068d2:	c3                   	ret
  4068d3:	66 90                	xchg   %ax,%ax
  4068d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068dc:	00 00 00 00 
  4068e0:	0f b6 0a             	movzbl (%rdx),%ecx
  4068e3:	88 08                	mov    %cl,(%rax)
  4068e5:	84 c9                	test   %cl,%cl
  4068e7:	74 e9                	je     4068d2 <__stpcpy+0x52>
  4068e9:	48 83 c2 01          	add    $0x1,%rdx
  4068ed:	48 83 c0 01          	add    $0x1,%rax
  4068f1:	f6 c2 07             	test   $0x7,%dl
  4068f4:	75 ea                	jne    4068e0 <__stpcpy+0x60>
  4068f6:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  4068fd:	fe fe fe 
  406900:	48 8b 0a             	mov    (%rdx),%rcx
  406903:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40690a:	80 80 80 
  40690d:	48 89 cf             	mov    %rcx,%rdi
  406910:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406914:	48 f7 d7             	not    %rdi
  406917:	48 21 fe             	and    %rdi,%rsi
  40691a:	4c 85 ce             	test   %r9,%rsi
  40691d:	0f 85 72 ff ff ff    	jne    406895 <__stpcpy+0x15>
  406923:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40692a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406931:	00 00 00 00 
  406935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40693c:	00 00 00 00 
  406940:	48 83 c2 08          	add    $0x8,%rdx
  406944:	48 89 08             	mov    %rcx,(%rax)
  406947:	48 83 c0 08          	add    $0x8,%rax
  40694b:	48 8b 0a             	mov    (%rdx),%rcx
  40694e:	48 89 cf             	mov    %rcx,%rdi
  406951:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406955:	48 f7 d7             	not    %rdi
  406958:	48 21 fe             	and    %rdi,%rsi
  40695b:	4c 85 ce             	test   %r9,%rsi
  40695e:	74 e0                	je     406940 <__stpcpy+0xc0>
  406960:	e9 30 ff ff ff       	jmp    406895 <__stpcpy+0x15>
  406965:	0f 1f 00             	nopl   (%rax)
  406968:	c3                   	ret
  406969:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406970:	00 00 00 
  406973:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40697a:	00 00 00 
  40697d:	0f 1f 00             	nopl   (%rax)

0000000000406980 <strlen>:
  406980:	f3 0f 1e fa          	endbr64
  406984:	49 89 f8             	mov    %rdi,%r8
  406987:	48 89 f8             	mov    %rdi,%rax
  40698a:	40 f6 c7 07          	test   $0x7,%dil
  40698e:	75 18                	jne    4069a8 <strlen+0x28>
  406990:	eb 26                	jmp    4069b8 <strlen+0x38>
  406992:	0f 1f 00             	nopl   (%rax)
  406995:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40699c:	00 00 00 00 
  4069a0:	48 83 c0 01          	add    $0x1,%rax
  4069a4:	a8 07                	test   $0x7,%al
  4069a6:	74 10                	je     4069b8 <strlen+0x38>
  4069a8:	80 38 00             	cmpb   $0x0,(%rax)
  4069ab:	75 f3                	jne    4069a0 <strlen+0x20>
  4069ad:	4c 29 c0             	sub    %r8,%rax
  4069b0:	c3                   	ret
  4069b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4069b8:	48 bf ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rdi
  4069bf:	fe fe fe 
  4069c2:	48 8b 10             	mov    (%rax),%rdx
  4069c5:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  4069cc:	80 80 80 
  4069cf:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  4069d3:	48 f7 d2             	not    %rdx
  4069d6:	48 21 ca             	and    %rcx,%rdx
  4069d9:	48 85 f2             	test   %rsi,%rdx
  4069dc:	75 26                	jne    406a04 <strlen+0x84>
  4069de:	66 90                	xchg   %ax,%ax
  4069e0:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4069e4:	48 83 c0 08          	add    $0x8,%rax
  4069e8:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  4069ec:	48 f7 d2             	not    %rdx
  4069ef:	48 21 ca             	and    %rcx,%rdx
  4069f2:	48 85 f2             	test   %rsi,%rdx
  4069f5:	74 e9                	je     4069e0 <strlen+0x60>
  4069f7:	eb 0b                	jmp    406a04 <strlen+0x84>
  4069f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a00:	48 83 c0 01          	add    $0x1,%rax
  406a04:	80 38 00             	cmpb   $0x0,(%rax)
  406a07:	75 f7                	jne    406a00 <strlen+0x80>
  406a09:	4c 29 c0             	sub    %r8,%rax
  406a0c:	c3                   	ret

0000000000406a0d <__set_thread_area>:
  406a0d:	48 89 fe             	mov    %rdi,%rsi
  406a10:	bf 02 10 00 00       	mov    $0x1002,%edi
  406a15:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406a1a:	0f 05                	syscall
  406a1c:	c3                   	ret
  406a1d:	0f 1f 00             	nopl   (%rax)

0000000000406a20 <__lseek>:
  406a20:	f3 0f 1e fa          	endbr64
  406a24:	48 63 ff             	movslq %edi,%rdi
  406a27:	48 63 d2             	movslq %edx,%rdx
  406a2a:	b8 08 00 00 00       	mov    $0x8,%eax
  406a2f:	0f 05                	syscall
  406a31:	48 89 c7             	mov    %rax,%rdi
  406a34:	e9 07 00 00 00       	jmp    406a40 <__syscall_ret>
  406a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406a40 <__syscall_ret>:
  406a40:	f3 0f 1e fa          	endbr64
  406a44:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406a4b:	77 0b                	ja     406a58 <__syscall_ret+0x18>
  406a4d:	48 89 f8             	mov    %rdi,%rax
  406a50:	c3                   	ret
  406a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a58:	55                   	push   %rbp
  406a59:	48 89 e5             	mov    %rsp,%rbp
  406a5c:	53                   	push   %rbx
  406a5d:	48 89 fb             	mov    %rdi,%rbx
  406a60:	48 83 ec 08          	sub    $0x8,%rsp
  406a64:	e8 27 f4 ff ff       	call   405e90 <__errno_location>
  406a69:	89 df                	mov    %ebx,%edi
  406a6b:	f7 df                	neg    %edi
  406a6d:	89 38                	mov    %edi,(%rax)
  406a6f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406a76:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406a7a:	c9                   	leave
  406a7b:	c3                   	ret
  406a7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406a80 <wcrtomb>:
  406a80:	f3 0f 1e fa          	endbr64
  406a84:	48 85 ff             	test   %rdi,%rdi
  406a87:	0f 84 d6 00 00 00    	je     406b63 <wcrtomb+0xe3>
  406a8d:	83 fe 7f             	cmp    $0x7f,%esi
  406a90:	0f 86 ca 00 00 00    	jbe    406b60 <wcrtomb+0xe0>
  406a96:	55                   	push   %rbp
  406a97:	89 f0                	mov    %esi,%eax
  406a99:	48 89 f9             	mov    %rdi,%rcx
  406a9c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406aa3:	00 00 
  406aa5:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406aac:	48 89 e5             	mov    %rsp,%rbp
  406aaf:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406ab3:	74 53                	je     406b08 <wcrtomb+0x88>
  406ab5:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406abb:	0f 86 af 00 00 00    	jbe    406b70 <wcrtomb+0xf0>
  406ac1:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406ac7:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406acd:	0f 86 bd 00 00 00    	jbe    406b90 <wcrtomb+0x110>
  406ad3:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406ad9:	0f 86 b1 00 00 00    	jbe    406b90 <wcrtomb+0x110>
  406adf:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406ae5:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406aeb:	76 33                	jbe    406b20 <wcrtomb+0xa0>
  406aed:	e8 9e f3 ff ff       	call   405e90 <__errno_location>
  406af2:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406af8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406aff:	5d                   	pop    %rbp
  406b00:	c3                   	ret
  406b01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b08:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406b0d:	83 f8 7f             	cmp    $0x7f,%eax
  406b10:	77 db                	ja     406aed <wcrtomb+0x6d>
  406b12:	40 88 37             	mov    %sil,(%rdi)
  406b15:	b8 01 00 00 00       	mov    $0x1,%eax
  406b1a:	5d                   	pop    %rbp
  406b1b:	c3                   	ret
  406b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  406b20:	89 c7                	mov    %eax,%edi
  406b22:	83 e0 3f             	and    $0x3f,%eax
  406b25:	89 f2                	mov    %esi,%edx
  406b27:	c1 fe 0c             	sar    $0xc,%esi
  406b2a:	c1 ff 06             	sar    $0x6,%edi
  406b2d:	c1 e0 08             	shl    $0x8,%eax
  406b30:	83 e6 3f             	and    $0x3f,%esi
  406b33:	83 e7 3f             	and    $0x3f,%edi
  406b36:	c1 fa 12             	sar    $0x12,%edx
  406b39:	09 f8                	or     %edi,%eax
  406b3b:	0f b6 d2             	movzbl %dl,%edx
  406b3e:	c1 e0 08             	shl    $0x8,%eax
  406b41:	09 f0                	or     %esi,%eax
  406b43:	8b 35 87 09 00 00    	mov    0x987(%rip),%esi        # 4074d0 <states+0x1f0>
  406b49:	c1 e0 08             	shl    $0x8,%eax
  406b4c:	09 d0                	or     %edx,%eax
  406b4e:	09 f0                	or     %esi,%eax
  406b50:	89 01                	mov    %eax,(%rcx)
  406b52:	b8 04 00 00 00       	mov    $0x4,%eax
  406b57:	5d                   	pop    %rbp
  406b58:	c3                   	ret
  406b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b60:	40 88 37             	mov    %sil,(%rdi)
  406b63:	b8 01 00 00 00       	mov    $0x1,%eax
  406b68:	c3                   	ret
  406b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b70:	89 f2                	mov    %esi,%edx
  406b72:	83 e0 3f             	and    $0x3f,%eax
  406b75:	c1 fa 06             	sar    $0x6,%edx
  406b78:	83 c8 80             	or     $0xffffff80,%eax
  406b7b:	83 ca c0             	or     $0xffffffc0,%edx
  406b7e:	88 47 01             	mov    %al,0x1(%rdi)
  406b81:	b8 02 00 00 00       	mov    $0x2,%eax
  406b86:	88 17                	mov    %dl,(%rdi)
  406b88:	5d                   	pop    %rbp
  406b89:	c3                   	ret
  406b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406b90:	89 c2                	mov    %eax,%edx
  406b92:	c1 fa 0c             	sar    $0xc,%edx
  406b95:	83 ca e0             	or     $0xffffffe0,%edx
  406b98:	88 11                	mov    %dl,(%rcx)
  406b9a:	89 c2                	mov    %eax,%edx
  406b9c:	83 e0 3f             	and    $0x3f,%eax
  406b9f:	c1 fa 06             	sar    $0x6,%edx
  406ba2:	83 c8 80             	or     $0xffffff80,%eax
  406ba5:	83 e2 3f             	and    $0x3f,%edx
  406ba8:	88 41 02             	mov    %al,0x2(%rcx)
  406bab:	b8 03 00 00 00       	mov    $0x3,%eax
  406bb0:	83 ca 80             	or     $0xffffff80,%edx
  406bb3:	88 51 01             	mov    %dl,0x1(%rcx)
  406bb6:	5d                   	pop    %rbp
  406bb7:	c3                   	ret
  406bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406bbf:	00 

0000000000406bc0 <close_file>:
  406bc0:	48 85 ff             	test   %rdi,%rdi
  406bc3:	74 6b                	je     406c30 <close_file+0x70>
  406bc5:	55                   	push   %rbp
  406bc6:	48 89 e5             	mov    %rsp,%rbp
  406bc9:	53                   	push   %rbx
  406bca:	48 89 fb             	mov    %rdi,%rbx
  406bcd:	48 83 ec 08          	sub    $0x8,%rsp
  406bd1:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406bd7:	85 c0                	test   %eax,%eax
  406bd9:	79 3d                	jns    406c18 <close_file+0x58>
  406bdb:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406bdf:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406be3:	74 0a                	je     406bef <close_file+0x2f>
  406be5:	31 d2                	xor    %edx,%edx
  406be7:	31 f6                	xor    %esi,%esi
  406be9:	48 89 df             	mov    %rbx,%rdi
  406bec:	ff 53 48             	call   *0x48(%rbx)
  406bef:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406bf3:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406bf7:	48 39 c6             	cmp    %rax,%rsi
  406bfa:	74 24                	je     406c20 <close_file+0x60>
  406bfc:	48 29 c6             	sub    %rax,%rsi
  406bff:	48 89 df             	mov    %rbx,%rdi
  406c02:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406c06:	ba 01 00 00 00       	mov    $0x1,%edx
  406c0b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c0f:	c9                   	leave
  406c10:	ff e0                	jmp    *%rax
  406c12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c18:	e8 a3 f4 ff ff       	call   4060c0 <__lockfile>
  406c1d:	eb bc                	jmp    406bdb <close_file+0x1b>
  406c1f:	90                   	nop
  406c20:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c24:	c9                   	leave
  406c25:	c3                   	ret
  406c26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406c2d:	00 00 00 
  406c30:	c3                   	ret
  406c31:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406c38:	00 00 00 
  406c3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406c40 <__stdio_exit>:
  406c40:	f3 0f 1e fa          	endbr64
  406c44:	55                   	push   %rbp
  406c45:	48 89 e5             	mov    %rsp,%rbp
  406c48:	53                   	push   %rbx
  406c49:	48 83 ec 08          	sub    $0x8,%rsp
  406c4d:	e8 7e 01 00 00       	call   406dd0 <__ofl_lock>
  406c52:	48 8b 18             	mov    (%rax),%rbx
  406c55:	48 85 db             	test   %rbx,%rbx
  406c58:	74 17                	je     406c71 <__stdio_exit+0x31>
  406c5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c60:	48 89 df             	mov    %rbx,%rdi
  406c63:	e8 58 ff ff ff       	call   406bc0 <close_file>
  406c68:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406c6c:	48 85 db             	test   %rbx,%rbx
  406c6f:	75 ef                	jne    406c60 <__stdio_exit+0x20>
  406c71:	48 8b 3d 20 3b 00 00 	mov    0x3b20(%rip),%rdi        # 40a798 <__stderr_used>
  406c78:	e8 43 ff ff ff       	call   406bc0 <close_file>
  406c7d:	48 8b 3d 84 33 00 00 	mov    0x3384(%rip),%rdi        # 40a008 <__stdout_used>
  406c84:	e8 37 ff ff ff       	call   406bc0 <close_file>
  406c89:	48 8b 3d 08 3b 00 00 	mov    0x3b08(%rip),%rdi        # 40a798 <__stderr_used>
  406c90:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c94:	c9                   	leave
  406c95:	e9 26 ff ff ff       	jmp    406bc0 <close_file>
  406c9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406ca0 <__stdio_write>:
  406ca0:	f3 0f 1e fa          	endbr64
  406ca4:	55                   	push   %rbp
  406ca5:	48 89 e5             	mov    %rsp,%rbp
  406ca8:	41 57                	push   %r15
  406caa:	41 56                	push   %r14
  406cac:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406cb0:	41 55                	push   %r13
  406cb2:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406cb8:	41 54                	push   %r12
  406cba:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406cc0:	53                   	push   %rbx
  406cc1:	48 89 fb             	mov    %rdi,%rbx
  406cc4:	48 83 ec 48          	sub    $0x48,%rsp
  406cc8:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406ccc:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406cd0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406cd7:	00 00 
  406cd9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406cdd:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406ce1:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406ce5:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406ce9:	49 29 c0             	sub    %rax,%r8
  406cec:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406cf0:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406cf4:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406cf8:	eb 37                	jmp    406d31 <__stdio_write+0x91>
  406cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d00:	48 85 c0             	test   %rax,%rax
  406d03:	0f 88 8f 00 00 00    	js     406d98 <__stdio_write+0xf8>
  406d09:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406d0d:	49 29 c6             	sub    %rax,%r14
  406d10:	48 39 c2             	cmp    %rax,%rdx
  406d13:	73 12                	jae    406d27 <__stdio_write+0x87>
  406d15:	41 83 ed 01          	sub    $0x1,%r13d
  406d19:	48 29 d0             	sub    %rdx,%rax
  406d1c:	49 83 c7 10          	add    $0x10,%r15
  406d20:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406d24:	4d 63 e5             	movslq %r13d,%r12
  406d27:	48 29 c2             	sub    %rax,%rdx
  406d2a:	49 01 07             	add    %rax,(%r15)
  406d2d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406d31:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406d35:	b8 14 00 00 00       	mov    $0x14,%eax
  406d3a:	4c 89 fe             	mov    %r15,%rsi
  406d3d:	4c 89 e2             	mov    %r12,%rdx
  406d40:	0f 05                	syscall
  406d42:	48 89 c7             	mov    %rax,%rdi
  406d45:	e8 f6 fc ff ff       	call   406a40 <__syscall_ret>
  406d4a:	49 39 c6             	cmp    %rax,%r14
  406d4d:	75 b1                	jne    406d00 <__stdio_write+0x60>
  406d4f:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406d53:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406d57:	48 01 c1             	add    %rax,%rcx
  406d5a:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406d5f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406d63:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406d67:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406d6c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406d70:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406d74:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406d78:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406d7f:	00 00 
  406d81:	75 3a                	jne    406dbd <__stdio_write+0x11d>
  406d83:	48 83 c4 48          	add    $0x48,%rsp
  406d87:	5b                   	pop    %rbx
  406d88:	41 5c                	pop    %r12
  406d8a:	41 5d                	pop    %r13
  406d8c:	41 5e                	pop    %r14
  406d8e:	41 5f                	pop    %r15
  406d90:	5d                   	pop    %rbp
  406d91:	c3                   	ret
  406d92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d98:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406d9c:	83 0b 20             	orl    $0x20,(%rbx)
  406d9f:	31 c0                	xor    %eax,%eax
  406da1:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406da8:	00 
  406da9:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406dad:	41 83 fd 02          	cmp    $0x2,%r13d
  406db1:	74 c1                	je     406d74 <__stdio_write+0xd4>
  406db3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406db7:	49 2b 47 08          	sub    0x8(%r15),%rax
  406dbb:	eb b7                	jmp    406d74 <__stdio_write+0xd4>
  406dbd:	e8 fe b7 ff ff       	call   4025c0 <__stack_chk_fail>
  406dc2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406dc9:	00 00 00 
  406dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406dd0 <__ofl_lock>:
  406dd0:	f3 0f 1e fa          	endbr64
  406dd4:	55                   	push   %rbp
  406dd5:	48 8d 3d c4 39 00 00 	lea    0x39c4(%rip),%rdi        # 40a7a0 <ofl_lock>
  406ddc:	48 89 e5             	mov    %rsp,%rbp
  406ddf:	e8 1c 00 00 00       	call   406e00 <__lock>
  406de4:	48 8d 05 bd 39 00 00 	lea    0x39bd(%rip),%rax        # 40a7a8 <ofl_head>
  406deb:	5d                   	pop    %rbp
  406dec:	c3                   	ret
  406ded:	0f 1f 00             	nopl   (%rax)

0000000000406df0 <__ofl_unlock>:
  406df0:	f3 0f 1e fa          	endbr64
  406df4:	48 8d 3d a5 39 00 00 	lea    0x39a5(%rip),%rdi        # 40a7a0 <ofl_lock>
  406dfb:	e9 e0 00 00 00       	jmp    406ee0 <__unlock>

0000000000406e00 <__lock>:
  406e00:	f3 0f 1e fa          	endbr64
  406e04:	0f be 0d 58 33 00 00 	movsbl 0x3358(%rip),%ecx        # 40a163 <__libc+0x3>
  406e0b:	85 c9                	test   %ecx,%ecx
  406e0d:	74 51                	je     406e60 <__lock+0x60>
  406e0f:	31 c0                	xor    %eax,%eax
  406e11:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406e16:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406e1a:	89 c2                	mov    %eax,%edx
  406e1c:	85 c9                	test   %ecx,%ecx
  406e1e:	78 48                	js     406e68 <__lock+0x68>
  406e20:	85 c0                	test   %eax,%eax
  406e22:	74 3c                	je     406e60 <__lock+0x60>
  406e24:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406e2a:	eb 1e                	jmp    406e4a <__lock+0x4a>
  406e2c:	0f 1f 40 00          	nopl   0x0(%rax)
  406e30:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406e36:	89 d1                	mov    %edx,%ecx
  406e38:	89 c8                	mov    %ecx,%eax
  406e3a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406e3e:	89 c2                	mov    %eax,%edx
  406e40:	39 c1                	cmp    %eax,%ecx
  406e42:	74 1c                	je     406e60 <__lock+0x60>
  406e44:	41 83 e8 01          	sub    $0x1,%r8d
  406e48:	74 2e                	je     406e78 <__lock+0x78>
  406e4a:	85 d2                	test   %edx,%edx
  406e4c:	79 e2                	jns    406e30 <__lock+0x30>
  406e4e:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406e54:	89 d6                	mov    %edx,%esi
  406e56:	eb e0                	jmp    406e38 <__lock+0x38>
  406e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406e5f:	00 
  406e60:	c3                   	ret
  406e61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406e68:	c6 05 f4 32 00 00 00 	movb   $0x0,0x32f4(%rip)        # 40a163 <__libc+0x3>
  406e6f:	85 c0                	test   %eax,%eax
  406e71:	75 b1                	jne    406e24 <__lock+0x24>
  406e73:	c3                   	ret
  406e74:	0f 1f 40 00          	nopl   0x0(%rax)
  406e78:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406e7e:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406e83:	41 83 c0 01          	add    $0x1,%r8d
  406e87:	eb 1c                	jmp    406ea5 <__lock+0xa5>
  406e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406e90:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406e97:	89 d0                	mov    %edx,%eax
  406e99:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406e9e:	41 89 c0             	mov    %eax,%r8d
  406ea1:	39 c2                	cmp    %eax,%edx
  406ea3:	74 bb                	je     406e60 <__lock+0x60>
  406ea5:	44 89 c2             	mov    %r8d,%edx
  406ea8:	45 85 c0             	test   %r8d,%r8d
  406eab:	79 e3                	jns    406e90 <__lock+0x90>
  406ead:	49 63 d0             	movslq %r8d,%rdx
  406eb0:	45 31 d2             	xor    %r10d,%r10d
  406eb3:	b8 ca 00 00 00       	mov    $0xca,%eax
  406eb8:	be 80 00 00 00       	mov    $0x80,%esi
  406ebd:	0f 05                	syscall
  406ebf:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406ec3:	75 09                	jne    406ece <__lock+0xce>
  406ec5:	31 f6                	xor    %esi,%esi
  406ec7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406ecc:	0f 05                	syscall
  406ece:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  406ed5:	eb b9                	jmp    406e90 <__lock+0x90>
  406ed7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406ede:	00 00 

0000000000406ee0 <__unlock>:
  406ee0:	f3 0f 1e fa          	endbr64
  406ee4:	8b 07                	mov    (%rdi),%eax
  406ee6:	85 c0                	test   %eax,%eax
  406ee8:	78 06                	js     406ef0 <__unlock+0x10>
  406eea:	c3                   	ret
  406eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406ef0:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  406ef5:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  406ef9:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  406efe:	74 ea                	je     406eea <__unlock+0xa>
  406f00:	be 81 00 00 00       	mov    $0x81,%esi
  406f05:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f0a:	ba 01 00 00 00       	mov    $0x1,%edx
  406f0f:	0f 05                	syscall
  406f11:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406f15:	75 d3                	jne    406eea <__unlock+0xa>
  406f17:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f1c:	be 01 00 00 00       	mov    $0x1,%esi
  406f21:	0f 05                	syscall
  406f23:	c3                   	ret

Disassembly of section .fini:

0000000000406f24 <_fini>:
  406f24:	50                   	push   %rax
  406f25:	58                   	pop    %rax
  406f26:	c3                   	ret
