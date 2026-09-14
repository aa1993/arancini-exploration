
test_cvtpd2pi_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 5c 19 00 00       	call   4029b0 <__funcs_on_exit>
  401054:	e8 67 19 00 00       	call   4029c0 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 40 5d 00 00       	call   406da0 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 99 51 00 00       	call   406200 <_Exit>

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
  40108a:	49 c7 c0 84 70 40 00 	mov    $0x407084,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 53 23 40 00 	mov    $0x402353,%rdi
  4010a2:	e9 39 18 00 00       	jmp    4028e0 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 67 00 00 	lea    0x67fa(%rip),%rcx        # 408000 <_fini+0xf7c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 a2 12 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 99 44 00 00       	call   405ce0 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 44 11 00 00       	call   4029a0 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 67 00 00 	lea    0x6777(%rip),%rcx        # 408021 <_fini+0xf9d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 06 12 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 fd 43 00 00       	call   405ce0 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 a8 10 00 00       	call   4029a0 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 65 00 00 	lea    0x65ce(%rip),%rsi        # 408030 <_fini+0xfac>
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
  401a9f:	e8 2c 10 00 00       	call   402ad0 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 1f 42 00 00       	call   405ce0 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 ca 0e 00 00       	call   4029a0 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 64 00 00 	lea    0x64d7(%rip),%rsi        # 408078 <_fini+0xff4>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 0e 0f 00 00       	call   402ad0 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 01 41 00 00       	call   405ce0 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 ac 0d 00 00       	call   4029a0 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 64 00 00 	lea    0x643b(%rip),%rsi        # 408099 <_fini+0x1015>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 58 0e 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 4f 40 00 00       	call   405ce0 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 fa 0c 00 00       	call   4029a0 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 63 00 00 	lea    0x63b7(%rip),%rsi        # 4080aa <_fini+0x1026>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 c9 0d 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 c0 3f 00 00       	call   405ce0 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 6b 0c 00 00       	call   4029a0 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 61 00 00 	lea    0x6191(%rip),%rsi        # 408030 <_fini+0xfac>
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
  401edc:	e8 ef 0b 00 00       	call   402ad0 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 e2 3d 00 00       	call   405ce0 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 8d 0a 00 00       	call   4029a0 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 60 00 00 	lea    0x609a(%rip),%rsi        # 408078 <_fini+0xff4>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 d1 0a 00 00       	call   402ad0 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 c4 3c 00 00       	call   405ce0 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 6f 09 00 00       	call   4029a0 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 60 00 00 	lea    0x601a(%rip),%rsi        # 4080b5 <_fini+0x1031>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 1b 0a 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 12 3c 00 00       	call   405ce0 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 bd 08 00 00       	call   4029a0 <__stack_chk_fail>
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
  402129:	48 8d 35 96 5f 00 00 	lea    0x5f96(%rip),%rsi        # 4080c6 <_fini+0x1042>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 8c 09 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 83 3b 00 00       	call   405ce0 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 2e 08 00 00       	call   4029a0 <__stack_chk_fail>
  402172:	c9                   	leave
  402173:	c3                   	ret

0000000000402174 <flags_to_string>:
void flags_to_string(char* dest,  long src){
  402174:	f3 0f 1e fa          	endbr64
  402178:	55                   	push   %rbp
  402179:	48 89 e5             	mov    %rsp,%rbp
  40217c:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  402183:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  40218a:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  402191:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402198:	00 00 
  40219a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40219e:	31 c0                	xor    %eax,%eax
          src>>0 & 1,
          src>>2 & 1,
          src>>6 & 1,
          src>>7 & 1,
          src>>10 & 1,
          src>>11 & 1
  4021a0:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4021a7:	48 c1 f8 0b          	sar    $0xb,%rax
    sprintf(res, "{CF: %ld, PF: %ld, ZF: %ld, SF: %ld, DF: %ld, OF: %ld}",
  4021ab:	83 e0 01             	and    $0x1,%eax
  4021ae:	49 89 c0             	mov    %rax,%r8
          src>>10 & 1,
  4021b1:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4021b8:	48 c1 f8 0a          	sar    $0xa,%rax
    sprintf(res, "{CF: %ld, PF: %ld, ZF: %ld, SF: %ld, DF: %ld, OF: %ld}",
  4021bc:	83 e0 01             	and    $0x1,%eax
  4021bf:	48 89 c7             	mov    %rax,%rdi
          src>>7 & 1,
  4021c2:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4021c9:	48 c1 f8 07          	sar    $0x7,%rax
    sprintf(res, "{CF: %ld, PF: %ld, ZF: %ld, SF: %ld, DF: %ld, OF: %ld}",
  4021cd:	83 e0 01             	and    $0x1,%eax
  4021d0:	49 89 c1             	mov    %rax,%r9
          src>>6 & 1,
  4021d3:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4021da:	48 c1 f8 06          	sar    $0x6,%rax
    sprintf(res, "{CF: %ld, PF: %ld, ZF: %ld, SF: %ld, DF: %ld, OF: %ld}",
  4021de:	83 e0 01             	and    $0x1,%eax
  4021e1:	49 89 c2             	mov    %rax,%r10
          src>>2 & 1,
  4021e4:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4021eb:	48 c1 f8 02          	sar    $0x2,%rax
    sprintf(res, "{CF: %ld, PF: %ld, ZF: %ld, SF: %ld, DF: %ld, OF: %ld}",
  4021ef:	83 e0 01             	and    $0x1,%eax
  4021f2:	48 89 c1             	mov    %rax,%rcx
  4021f5:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  4021fc:	83 e0 01             	and    $0x1,%eax
  4021ff:	48 89 c2             	mov    %rax,%rdx
  402202:	48 8d 35 cf 5e 00 00 	lea    0x5ecf(%rip),%rsi        # 4080d8 <_fini+0x1054>
  402209:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402210:	41 50                	push   %r8
  402212:	57                   	push   %rdi
  402213:	4d 89 d0             	mov    %r10,%r8
  402216:	48 89 c7             	mov    %rax,%rdi
  402219:	b8 00 00 00 00       	mov    $0x0,%eax
  40221e:	e8 ad 08 00 00       	call   402ad0 <sprintf>
  402223:	48 83 c4 10          	add    $0x10,%rsp
          );
    strcpy(dest, res);
  402227:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40222e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402235:	48 89 d6             	mov    %rdx,%rsi
  402238:	48 89 c7             	mov    %rax,%rdi
  40223b:	e8 a0 3a 00 00       	call   405ce0 <strcpy>
}
  402240:	90                   	nop
  402241:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402245:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40224c:	00 00 
  40224e:	74 05                	je     402255 <flags_to_string+0xe1>
  402250:	e8 4b 07 00 00       	call   4029a0 <__stack_chk_fail>
  402255:	c9                   	leave
  402256:	c3                   	ret

0000000000402257 <imm8_to_string>:
void imm8_to_string(char* dest,  int src){
  402257:	f3 0f 1e fa          	endbr64
  40225b:	55                   	push   %rbp
  40225c:	48 89 e5             	mov    %rsp,%rbp
  40225f:	53                   	push   %rbx
  402260:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
  402267:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
  40226e:	89 b5 d4 fe ff ff    	mov    %esi,-0x12c(%rbp)
  402274:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40227b:	00 00 
  40227d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402281:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  402283:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  402289:	83 e0 01             	and    $0x1,%eax
  40228c:	41 89 c2             	mov    %eax,%r10d
          src>>6 & 1,
          src>>5 & 1,
          src>>4 & 1,
          src>>3 & 1,
          src>>2 & 1,
          src>>1 & 1,
  40228f:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  402295:	d1 f8                	sar    $1,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  402297:	83 e0 01             	and    $0x1,%eax
  40229a:	41 89 c1             	mov    %eax,%r9d
          src>>2 & 1,
  40229d:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  4022a3:	c1 f8 02             	sar    $0x2,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  4022a6:	83 e0 01             	and    $0x1,%eax
  4022a9:	41 89 c0             	mov    %eax,%r8d
          src>>3 & 1,
  4022ac:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  4022b2:	c1 f8 03             	sar    $0x3,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  4022b5:	83 e0 01             	and    $0x1,%eax
  4022b8:	89 c7                	mov    %eax,%edi
          src>>4 & 1,
  4022ba:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  4022c0:	c1 f8 04             	sar    $0x4,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  4022c3:	83 e0 01             	and    $0x1,%eax
  4022c6:	89 c3                	mov    %eax,%ebx
          src>>5 & 1,
  4022c8:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  4022ce:	c1 f8 05             	sar    $0x5,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  4022d1:	83 e0 01             	and    $0x1,%eax
  4022d4:	41 89 c3             	mov    %eax,%r11d
          src>>6 & 1,
  4022d7:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  4022dd:	c1 f8 06             	sar    $0x6,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  4022e0:	83 e0 01             	and    $0x1,%eax
  4022e3:	89 c1                	mov    %eax,%ecx
          src>>7 & 1,
  4022e5:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
  4022eb:	c1 f8 07             	sar    $0x7,%eax
    sprintf(res, "0x%d%d%d%d%d%d%d%d",
  4022ee:	83 e0 01             	and    $0x1,%eax
  4022f1:	89 c2                	mov    %eax,%edx
  4022f3:	48 8d 35 15 5e 00 00 	lea    0x5e15(%rip),%rsi        # 40810f <_fini+0x108b>
  4022fa:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  402301:	41 52                	push   %r10
  402303:	41 51                	push   %r9
  402305:	41 50                	push   %r8
  402307:	57                   	push   %rdi
  402308:	41 89 d9             	mov    %ebx,%r9d
  40230b:	45 89 d8             	mov    %r11d,%r8d
  40230e:	48 89 c7             	mov    %rax,%rdi
  402311:	b8 00 00 00 00       	mov    $0x0,%eax
  402316:	e8 b5 07 00 00       	call   402ad0 <sprintf>
  40231b:	48 83 c4 20          	add    $0x20,%rsp
          src>>0 & 1
          );
    strcpy(dest, res);
  40231f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  402326:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  40232d:	48 89 d6             	mov    %rdx,%rsi
  402330:	48 89 c7             	mov    %rax,%rdi
  402333:	e8 a8 39 00 00       	call   405ce0 <strcpy>
}
  402338:	90                   	nop
  402339:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40233d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402344:	00 00 
  402346:	74 05                	je     40234d <imm8_to_string+0xf6>
  402348:	e8 53 06 00 00       	call   4029a0 <__stack_chk_fail>
  40234d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402351:	c9                   	leave
  402352:	c3                   	ret

0000000000402353 <main>:

void m64_insert_i32( __m64i32* dest, int input[]);
void m64_extract_i32( int dest[], __m64i32 input);
void m64_to_string_i32(char* dest,  int src[]);

int main() {
  402353:	f3 0f 1e fa          	endbr64
  402357:	55                   	push   %rbp
  402358:	48 89 e5             	mov    %rsp,%rbp
  40235b:	48 81 ec 60 05 00 00 	sub    $0x560,%rsp
  402362:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402369:	00 00 
  40236b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40236f:	31 c0                	xor    %eax,%eax
    C_OUT_TYPE in1[OUT_LEN] = SRC1;
  402371:	c7 85 c8 fa ff ff 37 	movl   $0x37,-0x538(%rbp)
  402378:	00 00 00 
  40237b:	c7 85 cc fa ff ff 2b 	movl   $0x2b,-0x534(%rbp)
  402382:	00 00 00 
    C_IN_TYPE in2[IN_LEN] = SRC2;
  402385:	f2 0f 10 05 e3 5d 00 	movsd  0x5de3(%rip),%xmm0        # 408170 <_fini+0x10ec>
  40238c:	00 
  40238d:	f2 0f 11 85 e0 fa ff 	movsd  %xmm0,-0x520(%rbp)
  402394:	ff 
  402395:	f2 0f 10 05 db 5d 00 	movsd  0x5ddb(%rip),%xmm0        # 408178 <_fini+0x10f4>
  40239c:	00 
  40239d:	f2 0f 11 85 e8 fa ff 	movsd  %xmm0,-0x518(%rbp)
  4023a4:	ff 
    C_OUT_TYPE con[OUT_LEN] = CON;
  4023a5:	c7 85 d0 fa ff ff 41 	movl   $0x41,-0x530(%rbp)
  4023ac:	00 00 00 
  4023af:	c7 85 d4 fa ff ff 4a 	movl   $0x4a,-0x52c(%rbp)
  4023b6:	00 00 00 
    long flags;

    //SSE_TYPE v1;
    //INSERT(&v1, in1);
    __m64i32 v1;
    m64_insert_i32( &v1, in1);
  4023b9:	48 8d 95 c8 fa ff ff 	lea    -0x538(%rbp),%rdx
  4023c0:	48 8d 85 c0 fa ff ff 	lea    -0x540(%rbp),%rax
  4023c7:	48 89 d6             	mov    %rdx,%rsi
  4023ca:	48 89 c7             	mov    %rax,%rdi
  4023cd:	e8 2e 01 00 00       	call   402500 <m64_insert_i32>
    __m64 v3;
    SSE_TYPE v2;
    INSERT(&v2, in2);
  4023d2:	48 8d 95 e0 fa ff ff 	lea    -0x520(%rbp),%rdx
  4023d9:	48 8d 85 b0 fa ff ff 	lea    -0x550(%rbp),%rax
  4023e0:	48 89 d6             	mov    %rdx,%rsi
  4023e3:	48 89 c7             	mov    %rax,%rdi
  4023e6:	e8 f8 ed ff ff       	call   4011e3 <insert_f64>

    asm volatile (
  4023eb:	66 0f 28 85 b0 fa ff 	movapd -0x550(%rbp),%xmm0
  4023f2:	ff 
       STR(INST_NAME)" %[v2], %[v1]\n\t"
       "pushfq\n\t"
       "popq %[flags]"
        : [v1] "+y"(v1.mm),[flags] "=r" (flags)         // output
  4023f3:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
    asm volatile (
  4023fa:	48 0f 6e c0          	movq   %rax,%mm0
  4023fe:	66 0f 2d c0          	cvtpd2pi %xmm0,%mm0
  402402:	9c                   	pushf
  402403:	58                   	pop    %rax
  402404:	0f 7f 85 c0 fa ff ff 	movq   %mm0,-0x540(%rbp)
  40240b:	48 89 85 a8 fa ff ff 	mov    %rax,-0x558(%rbp)
        : [v2] "x"(v2)      // input
    );

    m64_extract_i32(out, v1);
  402412:	48 8b 95 c0 fa ff ff 	mov    -0x540(%rbp),%rdx
  402419:	48 8d 85 d8 fa ff ff 	lea    -0x528(%rbp),%rax
  402420:	48 89 d6             	mov    %rdx,%rsi
  402423:	48 89 c7             	mov    %rax,%rdi
  402426:	e8 02 01 00 00       	call   40252d <m64_extract_i32>

    char in1_s[255];
    m64_to_string_i32(in1_s, in1);
  40242b:	48 8d 95 c8 fa ff ff 	lea    -0x538(%rbp),%rdx
  402432:	48 8d 85 f0 fa ff ff 	lea    -0x510(%rbp),%rax
  402439:	48 89 d6             	mov    %rdx,%rsi
  40243c:	48 89 c7             	mov    %rax,%rdi
  40243f:	e8 12 01 00 00       	call   402556 <m64_to_string_i32>
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  402444:	48 8d 95 e0 fa ff ff 	lea    -0x520(%rbp),%rdx
  40244b:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  402452:	48 89 d6             	mov    %rdx,%rsi
  402455:	48 89 c7             	mov    %rax,%rdi
  402458:	e8 01 f4 ff ff       	call   40185e <to_string_f64>
    char out_s[255];
    m64_to_string_i32(out_s, out);
  40245d:	48 8d 95 d8 fa ff ff 	lea    -0x528(%rbp),%rdx
  402464:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  40246b:	48 89 d6             	mov    %rdx,%rsi
  40246e:	48 89 c7             	mov    %rax,%rdi
  402471:	e8 e0 00 00 00       	call   402556 <m64_to_string_i32>
    char con_s[255];
    m64_to_string_i32(con_s, con);
  402476:	48 8d 95 d0 fa ff ff 	lea    -0x530(%rbp),%rdx
  40247d:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  402484:	48 89 d6             	mov    %rdx,%rsi
  402487:	48 89 c7             	mov    %rax,%rdi
  40248a:	e8 c7 00 00 00       	call   402556 <m64_to_string_i32>
    char flags_s[255];
    flags_to_string(flags_s, flags);
  40248f:	48 8b 95 a8 fa ff ff 	mov    -0x558(%rbp),%rdx
  402496:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40249d:	48 89 d6             	mov    %rdx,%rsi
  4024a0:	48 89 c7             	mov    %rax,%rdi
  4024a3:	e8 cc fc ff ff       	call   402174 <flags_to_string>

#ifdef PRINT
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
  4024a8:	4c 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%r8
  4024af:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
  4024b6:	48 8d 8d f0 fc ff ff 	lea    -0x310(%rbp),%rcx
  4024bd:	48 8d 95 f0 fb ff ff 	lea    -0x410(%rbp),%rdx
  4024c4:	48 8d 85 f0 fa ff ff 	lea    -0x510(%rbp),%rax
  4024cb:	48 8d 3d 56 5c 00 00 	lea    0x5c56(%rip),%rdi        # 408128 <_fini+0x10a4>
  4024d2:	4d 89 c1             	mov    %r8,%r9
  4024d5:	49 89 f0             	mov    %rsi,%r8
  4024d8:	48 89 c6             	mov    %rax,%rsi
  4024db:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e0:	e8 1b 05 00 00       	call   402a00 <printf>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
  4024e5:	b8 00 00 00 00       	mov    $0x0,%eax
}
  4024ea:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4024ee:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4024f5:	00 00 
  4024f7:	74 05                	je     4024fe <main+0x1ab>
  4024f9:	e8 a2 04 00 00       	call   4029a0 <__stack_chk_fail>
  4024fe:	c9                   	leave
  4024ff:	c3                   	ret

0000000000402500 <m64_insert_i32>:

void m64_insert_i32( __m64i32* dest, int input[]){
  402500:	f3 0f 1e fa          	endbr64
  402504:	55                   	push   %rbp
  402505:	48 89 e5             	mov    %rsp,%rbp
  402508:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40250c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    (*dest).i32[0] = input[0];
  402510:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402514:	8b 10                	mov    (%rax),%edx
  402516:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40251a:	89 10                	mov    %edx,(%rax)
    (*dest).i32[1] = input[1];
  40251c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402520:	8b 50 04             	mov    0x4(%rax),%edx
  402523:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402527:	89 50 04             	mov    %edx,0x4(%rax)
}
  40252a:	90                   	nop
  40252b:	5d                   	pop    %rbp
  40252c:	c3                   	ret

000000000040252d <m64_extract_i32>:
void m64_extract_i32( int dest[], __m64i32 input){
  40252d:	f3 0f 1e fa          	endbr64
  402531:	55                   	push   %rbp
  402532:	48 89 e5             	mov    %rsp,%rbp
  402535:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402539:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    dest[0] = input.i32[0];
  40253d:	8b 55 f0             	mov    -0x10(%rbp),%edx
  402540:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402544:	89 10                	mov    %edx,(%rax)
    dest[1] = input.i32[1];
  402546:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40254a:	48 8d 50 04          	lea    0x4(%rax),%rdx
  40254e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  402551:	89 02                	mov    %eax,(%rdx)
}
  402553:	90                   	nop
  402554:	5d                   	pop    %rbp
  402555:	c3                   	ret

0000000000402556 <m64_to_string_i32>:
void m64_to_string_i32(char* dest,  int src[]){
  402556:	f3 0f 1e fa          	endbr64
  40255a:	55                   	push   %rbp
  40255b:	48 89 e5             	mov    %rsp,%rbp
  40255e:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  402565:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  40256c:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  402573:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40257a:	00 00 
  40257c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402580:	31 c0                	xor    %eax,%eax
    char res[255];
    sprintf(res, "(%d, %d)",
          src[0], src[1]);
  402582:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402589:	48 83 c0 04          	add    $0x4,%rax
    sprintf(res, "(%d, %d)",
  40258d:	8b 08                	mov    (%rax),%ecx
  40258f:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  402596:	8b 10                	mov    (%rax),%edx
  402598:	48 8d 35 c5 5b 00 00 	lea    0x5bc5(%rip),%rsi        # 408164 <_fini+0x10e0>
  40259f:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4025a6:	48 89 c7             	mov    %rax,%rdi
  4025a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ae:	e8 1d 05 00 00       	call   402ad0 <sprintf>
    strcpy(dest, res);
  4025b3:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4025ba:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4025c1:	48 89 d6             	mov    %rdx,%rsi
  4025c4:	48 89 c7             	mov    %rax,%rdi
  4025c7:	e8 14 37 00 00       	call   405ce0 <strcpy>
}
  4025cc:	90                   	nop
  4025cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025d1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4025d8:	00 00 
  4025da:	74 05                	je     4025e1 <m64_to_string_i32+0x8b>
  4025dc:	e8 bf 03 00 00       	call   4029a0 <__stack_chk_fail>
  4025e1:	c9                   	leave
  4025e2:	c3                   	ret
  4025e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025ea:	00 00 00 
  4025ed:	0f 1f 00             	nopl   (%rax)

00000000004025f0 <dummy>:
  4025f0:	f3 0f 1e fa          	endbr64
  4025f4:	c3                   	ret
  4025f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025fc:	00 00 00 
  4025ff:	90                   	nop

0000000000402600 <dummy1>:
  402600:	f3 0f 1e fa          	endbr64
  402604:	c3                   	ret
  402605:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40260c:	00 00 00 
  40260f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402616:	00 00 00 
  402619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402620 <__init_libc>:
  402620:	f3 0f 1e fa          	endbr64
  402624:	55                   	push   %rbp
  402625:	48 89 fa             	mov    %rdi,%rdx
  402628:	31 c0                	xor    %eax,%eax
  40262a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40262f:	48 89 e5             	mov    %rsp,%rbp
  402632:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402639:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402640:	f3 48 ab             	rep stos %rax,(%rdi)
  402643:	48 c7 c0 e8 b5 40 00 	mov    $0x40b5e8,%rax
  40264a:	48 89 10             	mov    %rdx,(%rax)
  40264d:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  402651:	0f 84 c9 01 00 00    	je     402820 <__init_libc+0x200>
  402657:	31 c0                	xor    %eax,%eax
  402659:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402660:	48 89 c1             	mov    %rax,%rcx
  402663:	48 83 c0 01          	add    $0x1,%rax
  402667:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  40266c:	75 f2                	jne    402660 <__init_libc+0x40>
  40266e:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  402675:	00 
  402676:	48 01 d0             	add    %rdx,%rax
  402679:	48 89 05 e8 8a 00 00 	mov    %rax,0x8ae8(%rip)        # 40b168 <__libc+0x8>
  402680:	48 8b 10             	mov    (%rax),%rdx
  402683:	48 83 c0 08          	add    $0x8,%rax
  402687:	48 85 d2             	test   %rdx,%rdx
  40268a:	0f 84 a0 01 00 00    	je     402830 <__init_libc+0x210>
  402690:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402695:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40269c:	00 00 00 00 
  4026a0:	48 83 fa 25          	cmp    $0x25,%rdx
  4026a4:	77 0b                	ja     4026b1 <__init_libc+0x91>
  4026a6:	48 8b 08             	mov    (%rax),%rcx
  4026a9:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  4026b0:	ff 
  4026b1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4026b5:	48 83 c0 10          	add    $0x10,%rax
  4026b9:	48 85 d2             	test   %rdx,%rdx
  4026bc:	75 e2                	jne    4026a0 <__init_libc+0x80>
  4026be:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  4026c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4026c9:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  4026d0:	48 89 0d 71 8a 00 00 	mov    %rcx,0x8a71(%rip)        # 40b148 <__hwcap>
  4026d7:	48 85 c0             	test   %rax,%rax
  4026da:	74 07                	je     4026e3 <__init_libc+0xc3>
  4026dc:	48 89 05 4d 8a 00 00 	mov    %rax,0x8a4d(%rip)        # 40b130 <__sysinfo>
  4026e3:	48 89 15 a6 8a 00 00 	mov    %rdx,0x8aa6(%rip)        # 40b190 <__libc+0x30>
  4026ea:	48 85 f6             	test   %rsi,%rsi
  4026ed:	0f 84 15 01 00 00    	je     402808 <__init_libc+0x1e8>
  4026f3:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  4026fa:	48 c7 c1 40 b1 40 00 	mov    $0x40b140,%rcx
  402701:	48 89 30             	mov    %rsi,(%rax)
  402704:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402708:	48 89 31             	mov    %rsi,(%rcx)
  40270b:	0f b6 16             	movzbl (%rsi),%edx
  40270e:	84 d2                	test   %dl,%dl
  402710:	74 21                	je     402733 <__init_libc+0x113>
  402712:	0f 1f 00             	nopl   (%rax)
  402715:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40271c:	00 00 00 00 
  402720:	80 fa 2f             	cmp    $0x2f,%dl
  402723:	75 03                	jne    402728 <__init_libc+0x108>
  402725:	48 89 01             	mov    %rax,(%rcx)
  402728:	0f b6 10             	movzbl (%rax),%edx
  40272b:	48 83 c0 01          	add    $0x1,%rax
  40272f:	84 d2                	test   %dl,%dl
  402731:	75 ed                	jne    402720 <__init_libc+0x100>
  402733:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40273a:	e8 11 38 00 00       	call   405f50 <__init_tls>
  40273f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  402743:	e8 e8 01 00 00       	call   402930 <__init_ssp>
  402748:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  40274f:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  402756:	0f 84 84 00 00 00    	je     4027e0 <__init_libc+0x1c0>
  40275c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402760:	b8 07 00 00 00       	mov    $0x7,%eax
  402765:	be 03 00 00 00       	mov    $0x3,%esi
  40276a:	31 d2                	xor    %edx,%edx
  40276c:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  402773:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  40277a:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  402781:	00 00 00 00 
  402785:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  40278c:	00 00 00 
  40278f:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  402796:	00 00 00 
  402799:	0f 05                	syscall
  40279b:	85 c0                	test   %eax,%eax
  40279d:	79 01                	jns    4027a0 <__init_libc+0x180>
  40279f:	f4                   	hlt
  4027a0:	48 89 fa             	mov    %rdi,%rdx
  4027a3:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  4027aa:	be 02 80 00 00       	mov    $0x8002,%esi
  4027af:	48 8d 3d ca 59 00 00 	lea    0x59ca(%rip),%rdi        # 408180 <_fini+0x10fc>
  4027b6:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  4027ba:	74 0d                	je     4027c9 <__init_libc+0x1a9>
  4027bc:	b8 02 00 00 00       	mov    $0x2,%eax
  4027c1:	0f 05                	syscall
  4027c3:	48 85 c0             	test   %rax,%rax
  4027c6:	79 01                	jns    4027c9 <__init_libc+0x1a9>
  4027c8:	f4                   	hlt
  4027c9:	48 83 c2 08          	add    $0x8,%rdx
  4027cd:	4c 39 c2             	cmp    %r8,%rdx
  4027d0:	75 e4                	jne    4027b6 <__init_libc+0x196>
  4027d2:	c6 05 89 89 00 00 01 	movb   $0x1,0x8989(%rip)        # 40b162 <__libc+0x2>
  4027d9:	c9                   	leave
  4027da:	c3                   	ret
  4027db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4027e0:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  4027e7:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  4027ee:	0f 85 68 ff ff ff    	jne    40275c <__init_libc+0x13c>
  4027f4:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4027f9:	0f 85 5d ff ff ff    	jne    40275c <__init_libc+0x13c>
  4027ff:	c9                   	leave
  402800:	c3                   	ret
  402801:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402808:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40280c:	48 85 c0             	test   %rax,%rax
  40280f:	74 2f                	je     402840 <__init_libc+0x220>
  402811:	48 89 c6             	mov    %rax,%rsi
  402814:	e9 da fe ff ff       	jmp    4026f3 <__init_libc+0xd3>
  402819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402820:	b8 08 00 00 00       	mov    $0x8,%eax
  402825:	e9 4c fe ff ff       	jmp    402676 <__init_libc+0x56>
  40282a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402830:	48 c7 05 0d 89 00 00 	movq   $0x0,0x890d(%rip)        # 40b148 <__hwcap>
  402837:	00 00 00 00 
  40283b:	e9 a3 fe ff ff       	jmp    4026e3 <__init_libc+0xc3>
  402840:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  402847:	48 8d 3d 71 59 00 00 	lea    0x5971(%rip),%rdi        # 4081bf <_fini+0x113b>
  40284e:	48 89 38             	mov    %rdi,(%rax)
  402851:	48 c7 c0 40 b1 40 00 	mov    $0x40b140,%rax
  402858:	48 89 38             	mov    %rdi,(%rax)
  40285b:	e9 d3 fe ff ff       	jmp    402733 <__init_libc+0x113>

0000000000402860 <__libc_start_init>:
  402860:	f3 0f 1e fa          	endbr64
  402864:	55                   	push   %rbp
  402865:	48 89 e5             	mov    %rsp,%rbp
  402868:	41 54                	push   %r12
  40286a:	53                   	push   %rbx
  40286b:	e8 90 e7 ff ff       	call   401000 <_init>
  402870:	48 c7 c3 c0 af 40 00 	mov    $0x40afc0,%rbx
  402877:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  40287e:	4c 39 e3             	cmp    %r12,%rbx
  402881:	73 18                	jae    40289b <__libc_start_init+0x3b>
  402883:	66 90                	xchg   %ax,%ax
  402885:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40288c:	00 00 00 00 
  402890:	ff 13                	call   *(%rbx)
  402892:	48 83 c3 08          	add    $0x8,%rbx
  402896:	4c 39 e3             	cmp    %r12,%rbx
  402899:	72 f5                	jb     402890 <__libc_start_init+0x30>
  40289b:	5b                   	pop    %rbx
  40289c:	41 5c                	pop    %r12
  40289e:	5d                   	pop    %rbp
  40289f:	c3                   	ret

00000000004028a0 <libc_start_main_stage2>:
  4028a0:	f3 0f 1e fa          	endbr64
  4028a4:	55                   	push   %rbp
  4028a5:	48 63 c6             	movslq %esi,%rax
  4028a8:	48 89 e5             	mov    %rsp,%rbp
  4028ab:	41 56                	push   %r14
  4028ad:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  4028b2:	41 55                	push   %r13
  4028b4:	49 89 fd             	mov    %rdi,%r13
  4028b7:	41 54                	push   %r12
  4028b9:	49 89 d4             	mov    %rdx,%r12
  4028bc:	53                   	push   %rbx
  4028bd:	48 89 c3             	mov    %rax,%rbx
  4028c0:	e8 9b ff ff ff       	call   402860 <__libc_start_init>
  4028c5:	89 df                	mov    %ebx,%edi
  4028c7:	4c 89 f2             	mov    %r14,%rdx
  4028ca:	4c 89 e6             	mov    %r12,%rsi
  4028cd:	41 ff d5             	call   *%r13
  4028d0:	89 c7                	mov    %eax,%edi
  4028d2:	e8 69 e7 ff ff       	call   401040 <exit>
  4028d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028de:	00 00 

00000000004028e0 <__libc_start_main>:
  4028e0:	f3 0f 1e fa          	endbr64
  4028e4:	55                   	push   %rbp
  4028e5:	48 63 c6             	movslq %esi,%rax
  4028e8:	48 89 e5             	mov    %rsp,%rbp
  4028eb:	41 54                	push   %r12
  4028ed:	49 89 fc             	mov    %rdi,%r12
  4028f0:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  4028f5:	53                   	push   %rbx
  4028f6:	48 89 c3             	mov    %rax,%rbx
  4028f9:	48 83 ec 10          	sub    $0x10,%rsp
  4028fd:	48 8b 32             	mov    (%rdx),%rsi
  402900:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402904:	e8 17 fd ff ff       	call   402620 <__init_libc>
  402909:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 4028a0 <libc_start_main_stage2>
  402910:	89 de                	mov    %ebx,%esi
  402912:	4c 89 e7             	mov    %r12,%rdi
  402915:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402919:	48 83 c4 10          	add    $0x10,%rsp
  40291d:	5b                   	pop    %rbx
  40291e:	41 5c                	pop    %r12
  402920:	5d                   	pop    %rbp
  402921:	ff e0                	jmp    *%rax
  402923:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40292a:	00 00 00 
  40292d:	0f 1f 00             	nopl   (%rax)

0000000000402930 <__init_ssp>:
  402930:	f3 0f 1e fa          	endbr64
  402934:	55                   	push   %rbp
  402935:	48 89 e5             	mov    %rsp,%rbp
  402938:	48 83 ec 10          	sub    $0x10,%rsp
  40293c:	48 85 ff             	test   %rdi,%rdi
  40293f:	74 3f                	je     402980 <__init_ssp+0x50>
  402941:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  402948:	48 89 fe             	mov    %rdi,%rsi
  40294b:	ba 08 00 00 00       	mov    $0x8,%edx
  402950:	48 89 cf             	mov    %rcx,%rdi
  402953:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  402957:	e8 d1 33 00 00       	call   405d2d <memcpy>
  40295c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402960:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  402964:	48 8b 11             	mov    (%rcx),%rdx
  402967:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40296e:	00 00 
  402970:	48 89 50 28          	mov    %rdx,0x28(%rax)
  402974:	c9                   	leave
  402975:	c3                   	ret
  402976:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40297d:	00 00 00 
  402980:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  402987:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  40298e:	48 89 01             	mov    %rax,(%rcx)
  402991:	eb cd                	jmp    402960 <__init_ssp+0x30>
  402993:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40299a:	00 00 00 
  40299d:	0f 1f 00             	nopl   (%rax)

00000000004029a0 <__stack_chk_fail>:
  4029a0:	f3 0f 1e fa          	endbr64
  4029a4:	f4                   	hlt
  4029a5:	c3                   	ret
  4029a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029ad:	00 00 00 

00000000004029b0 <__funcs_on_exit>:
  4029b0:	f3 0f 1e fa          	endbr64
  4029b4:	c3                   	ret
  4029b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029bc:	00 00 00 
  4029bf:	90                   	nop

00000000004029c0 <__libc_exit_fini>:
  4029c0:	f3 0f 1e fa          	endbr64
  4029c4:	55                   	push   %rbp
  4029c5:	48 89 e5             	mov    %rsp,%rbp
  4029c8:	41 54                	push   %r12
  4029ca:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  4029d1:	53                   	push   %rbx
  4029d2:	48 c7 c3 d0 af 40 00 	mov    $0x40afd0,%rbx
  4029d9:	49 39 dc             	cmp    %rbx,%r12
  4029dc:	73 0f                	jae    4029ed <__libc_exit_fini+0x2d>
  4029de:	66 90                	xchg   %ax,%ax
  4029e0:	48 83 eb 08          	sub    $0x8,%rbx
  4029e4:	31 c0                	xor    %eax,%eax
  4029e6:	ff 13                	call   *(%rbx)
  4029e8:	49 39 dc             	cmp    %rbx,%r12
  4029eb:	72 f3                	jb     4029e0 <__libc_exit_fini+0x20>
  4029ed:	5b                   	pop    %rbx
  4029ee:	31 c0                	xor    %eax,%eax
  4029f0:	41 5c                	pop    %r12
  4029f2:	5d                   	pop    %rbp
  4029f3:	e9 8c 46 00 00       	jmp    407084 <_fini>
  4029f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4029ff:	00 

0000000000402a00 <printf>:
  402a00:	f3 0f 1e fa          	endbr64
  402a04:	55                   	push   %rbp
  402a05:	48 89 e5             	mov    %rsp,%rbp
  402a08:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402a0f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402a16:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402a1d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402a24:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402a2b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402a32:	84 c0                	test   %al,%al
  402a34:	74 20                	je     402a56 <printf+0x56>
  402a36:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402a3a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402a3e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402a42:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402a46:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402a4a:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402a4e:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402a52:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402a56:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a5d:	00 00 
  402a5f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402a66:	31 c0                	xor    %eax,%eax
  402a68:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402a6c:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402a73:	48 89 fe             	mov    %rdi,%rsi
  402a76:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  402a7d:	48 8d 3d 9c 85 00 00 	lea    0x859c(%rip),%rdi        # 40b020 <__stdout_FILE>
  402a84:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402a8b:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  402a92:	00 00 00 
  402a95:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  402a9c:	00 00 00 
  402a9f:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402aa6:	e8 e5 2f 00 00       	call   405a90 <vfprintf>
  402aab:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402ab2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402ab9:	00 00 
  402abb:	75 02                	jne    402abf <printf+0xbf>
  402abd:	c9                   	leave
  402abe:	c3                   	ret
  402abf:	e8 dc fe ff ff       	call   4029a0 <__stack_chk_fail>
  402ac4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402acb:	00 00 00 
  402ace:	66 90                	xchg   %ax,%ax

0000000000402ad0 <sprintf>:
  402ad0:	f3 0f 1e fa          	endbr64
  402ad4:	55                   	push   %rbp
  402ad5:	48 89 e5             	mov    %rsp,%rbp
  402ad8:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402adf:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402ae6:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402aed:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402af4:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402afb:	84 c0                	test   %al,%al
  402afd:	74 20                	je     402b1f <sprintf+0x4f>
  402aff:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402b03:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402b07:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402b0b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402b0f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402b13:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402b17:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402b1b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402b1f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b26:	00 00 
  402b28:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402b2f:	31 c0                	xor    %eax,%eax
  402b31:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402b35:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402b3c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402b43:	00 00 00 
  402b46:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  402b4d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402b54:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  402b5b:	00 00 00 
  402b5e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402b65:	e8 56 31 00 00       	call   405cc0 <vsprintf>
  402b6a:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402b71:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402b78:	00 00 
  402b7a:	75 02                	jne    402b7e <sprintf+0xae>
  402b7c:	c9                   	leave
  402b7d:	c3                   	ret
  402b7e:	e8 1d fe ff ff       	call   4029a0 <__stack_chk_fail>
  402b83:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402b8a:	00 00 00 
  402b8d:	0f 1f 00             	nopl   (%rax)

0000000000402b90 <pop_arg>:
  402b90:	83 ee 09             	sub    $0x9,%esi
  402b93:	83 fe 11             	cmp    $0x11,%esi
  402b96:	77 50                	ja     402be8 <pop_arg+0x58>
  402b98:	48 8d 0d 21 56 00 00 	lea    0x5621(%rip),%rcx        # 4081c0 <_fini+0x113c>
  402b9f:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402ba3:	48 01 c8             	add    %rcx,%rax
  402ba6:	3e ff e0             	notrack jmp *%rax
  402ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bb0:	8b 02                	mov    (%rdx),%eax
  402bb2:	83 f8 2f             	cmp    $0x2f,%eax
  402bb5:	77 39                	ja     402bf0 <pop_arg+0x60>
  402bb7:	89 c1                	mov    %eax,%ecx
  402bb9:	83 c0 08             	add    $0x8,%eax
  402bbc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402bc0:	89 02                	mov    %eax,(%rdx)
  402bc2:	48 8b 01             	mov    (%rcx),%rax
  402bc5:	48 89 07             	mov    %rax,(%rdi)
  402bc8:	c3                   	ret
  402bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bd0:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402bd4:	48 83 c0 0f          	add    $0xf,%rax
  402bd8:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402bdc:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402be0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402be4:	db 28                	fldt   (%rax)
  402be6:	db 3f                	fstpt  (%rdi)
  402be8:	c3                   	ret
  402be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bf0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bf4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402bf8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bfc:	48 8b 01             	mov    (%rcx),%rax
  402bff:	48 89 07             	mov    %rax,(%rdi)
  402c02:	c3                   	ret
  402c03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402c08:	8b 02                	mov    (%rdx),%eax
  402c0a:	83 f8 2f             	cmp    $0x2f,%eax
  402c0d:	0f 87 55 01 00 00    	ja     402d68 <pop_arg+0x1d8>
  402c13:	89 c1                	mov    %eax,%ecx
  402c15:	83 c0 08             	add    $0x8,%eax
  402c18:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c1c:	89 02                	mov    %eax,(%rdx)
  402c1e:	0f b7 01             	movzwl (%rcx),%eax
  402c21:	48 89 07             	mov    %rax,(%rdi)
  402c24:	c3                   	ret
  402c25:	0f 1f 00             	nopl   (%rax)
  402c28:	8b 42 04             	mov    0x4(%rdx),%eax
  402c2b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402c30:	0f 87 1a 01 00 00    	ja     402d50 <pop_arg+0x1c0>
  402c36:	89 c1                	mov    %eax,%ecx
  402c38:	83 c0 10             	add    $0x10,%eax
  402c3b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c3f:	89 42 04             	mov    %eax,0x4(%rdx)
  402c42:	dd 01                	fldl   (%rcx)
  402c44:	db 3f                	fstpt  (%rdi)
  402c46:	c3                   	ret
  402c47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402c4e:	00 00 
  402c50:	8b 02                	mov    (%rdx),%eax
  402c52:	83 f8 2f             	cmp    $0x2f,%eax
  402c55:	0f 87 dd 00 00 00    	ja     402d38 <pop_arg+0x1a8>
  402c5b:	89 c1                	mov    %eax,%ecx
  402c5d:	83 c0 08             	add    $0x8,%eax
  402c60:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c64:	89 02                	mov    %eax,(%rdx)
  402c66:	48 63 01             	movslq (%rcx),%rax
  402c69:	48 89 07             	mov    %rax,(%rdi)
  402c6c:	c3                   	ret
  402c6d:	0f 1f 00             	nopl   (%rax)
  402c70:	8b 02                	mov    (%rdx),%eax
  402c72:	83 f8 2f             	cmp    $0x2f,%eax
  402c75:	0f 87 a5 00 00 00    	ja     402d20 <pop_arg+0x190>
  402c7b:	89 c1                	mov    %eax,%ecx
  402c7d:	83 c0 08             	add    $0x8,%eax
  402c80:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c84:	89 02                	mov    %eax,(%rdx)
  402c86:	8b 01                	mov    (%rcx),%eax
  402c88:	48 89 07             	mov    %rax,(%rdi)
  402c8b:	c3                   	ret
  402c8c:	0f 1f 40 00          	nopl   0x0(%rax)
  402c90:	8b 02                	mov    (%rdx),%eax
  402c92:	83 f8 2f             	cmp    $0x2f,%eax
  402c95:	77 79                	ja     402d10 <pop_arg+0x180>
  402c97:	89 c1                	mov    %eax,%ecx
  402c99:	83 c0 08             	add    $0x8,%eax
  402c9c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ca0:	89 02                	mov    %eax,(%rdx)
  402ca2:	0f b6 01             	movzbl (%rcx),%eax
  402ca5:	48 89 07             	mov    %rax,(%rdi)
  402ca8:	c3                   	ret
  402ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402cb0:	8b 02                	mov    (%rdx),%eax
  402cb2:	83 f8 2f             	cmp    $0x2f,%eax
  402cb5:	77 49                	ja     402d00 <pop_arg+0x170>
  402cb7:	89 c1                	mov    %eax,%ecx
  402cb9:	83 c0 08             	add    $0x8,%eax
  402cbc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402cc0:	89 02                	mov    %eax,(%rdx)
  402cc2:	48 0f be 01          	movsbq (%rcx),%rax
  402cc6:	48 89 07             	mov    %rax,(%rdi)
  402cc9:	c3                   	ret
  402cca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402cd0:	8b 02                	mov    (%rdx),%eax
  402cd2:	83 f8 2f             	cmp    $0x2f,%eax
  402cd5:	77 19                	ja     402cf0 <pop_arg+0x160>
  402cd7:	89 c1                	mov    %eax,%ecx
  402cd9:	83 c0 08             	add    $0x8,%eax
  402cdc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ce0:	89 02                	mov    %eax,(%rdx)
  402ce2:	48 0f bf 01          	movswq (%rcx),%rax
  402ce6:	48 89 07             	mov    %rax,(%rdi)
  402ce9:	c3                   	ret
  402cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402cf0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402cf4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402cf8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402cfc:	eb e4                	jmp    402ce2 <pop_arg+0x152>
  402cfe:	66 90                	xchg   %ax,%ax
  402d00:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d04:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402d08:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402d0c:	eb b4                	jmp    402cc2 <pop_arg+0x132>
  402d0e:	66 90                	xchg   %ax,%ax
  402d10:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d14:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402d18:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402d1c:	eb 84                	jmp    402ca2 <pop_arg+0x112>
  402d1e:	66 90                	xchg   %ax,%ax
  402d20:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d24:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402d28:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402d2c:	e9 55 ff ff ff       	jmp    402c86 <pop_arg+0xf6>
  402d31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d38:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d3c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402d40:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402d44:	e9 1d ff ff ff       	jmp    402c66 <pop_arg+0xd6>
  402d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402d58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402d5c:	e9 e1 fe ff ff       	jmp    402c42 <pop_arg+0xb2>
  402d61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d68:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d6c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402d70:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402d74:	e9 a5 fe ff ff       	jmp    402c1e <pop_arg+0x8e>
  402d79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402d80 <pad.part.0>:
  402d80:	55                   	push   %rbp
  402d81:	29 ca                	sub    %ecx,%edx
  402d83:	40 0f be f6          	movsbl %sil,%esi
  402d87:	48 89 e5             	mov    %rsp,%rbp
  402d8a:	41 56                	push   %r14
  402d8c:	41 55                	push   %r13
  402d8e:	41 54                	push   %r12
  402d90:	4c 63 e2             	movslq %edx,%r12
  402d93:	ba 00 01 00 00       	mov    $0x100,%edx
  402d98:	53                   	push   %rbx
  402d99:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402da0:	41 39 d4             	cmp    %edx,%r12d
  402da3:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402daa:	00 00 
  402dac:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402db0:	49 89 fd             	mov    %rdi,%r13
  402db3:	49 0f 4e d4          	cmovle %r12,%rdx
  402db7:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402dbe:	e8 9c 2f 00 00       	call   405d5f <memset>
  402dc3:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402dca:	0f 8e 88 00 00 00    	jle    402e58 <pad.part.0+0xd8>
  402dd0:	41 8b 45 00          	mov    0x0(%r13),%eax
  402dd4:	44 89 e3             	mov    %r12d,%ebx
  402dd7:	eb 15                	jmp    402dee <pad.part.0+0x6e>
  402dd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402de0:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402de6:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402dec:	76 2a                	jbe    402e18 <pad.part.0+0x98>
  402dee:	a8 20                	test   $0x20,%al
  402df0:	75 ee                	jne    402de0 <pad.part.0+0x60>
  402df2:	4c 89 ea             	mov    %r13,%rdx
  402df5:	be 00 01 00 00       	mov    $0x100,%esi
  402dfa:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402e01:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402e07:	e8 14 38 00 00       	call   406620 <__fwritex>
  402e0c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402e10:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402e16:	77 d6                	ja     402dee <pad.part.0+0x6e>
  402e18:	45 0f b6 e4          	movzbl %r12b,%r12d
  402e1c:	a8 20                	test   $0x20,%al
  402e1e:	74 20                	je     402e40 <pad.part.0+0xc0>
  402e20:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402e24:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402e2b:	00 00 
  402e2d:	75 2f                	jne    402e5e <pad.part.0+0xde>
  402e2f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402e36:	5b                   	pop    %rbx
  402e37:	41 5c                	pop    %r12
  402e39:	41 5d                	pop    %r13
  402e3b:	41 5e                	pop    %r14
  402e3d:	5d                   	pop    %rbp
  402e3e:	c3                   	ret
  402e3f:	90                   	nop
  402e40:	49 63 f4             	movslq %r12d,%rsi
  402e43:	4c 89 ea             	mov    %r13,%rdx
  402e46:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402e4d:	e8 ce 37 00 00       	call   406620 <__fwritex>
  402e52:	eb cc                	jmp    402e20 <pad.part.0+0xa0>
  402e54:	0f 1f 40 00          	nopl   0x0(%rax)
  402e58:	41 8b 45 00          	mov    0x0(%r13),%eax
  402e5c:	eb be                	jmp    402e1c <pad.part.0+0x9c>
  402e5e:	e8 3d fb ff ff       	call   4029a0 <__stack_chk_fail>
  402e63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402e6a:	00 00 00 
  402e6d:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402e74:	00 00 00 
  402e77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e7e:	00 00 

0000000000402e80 <fmt_fp>:
  402e80:	55                   	push   %rbp
  402e81:	48 89 e5             	mov    %rsp,%rbp
  402e84:	41 57                	push   %r15
  402e86:	41 56                	push   %r14
  402e88:	41 55                	push   %r13
  402e8a:	41 54                	push   %r12
  402e8c:	53                   	push   %rbx
  402e8d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402e94:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402e99:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402ea0:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402ea7:	41 89 d7             	mov    %edx,%r15d
  402eaa:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402eb0:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402eb6:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402ebd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ec4:	00 00 
  402ec6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402eca:	31 c0                	xor    %eax,%eax
  402ecc:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402ed3:	00 00 00 
  402ed6:	ff 75 18             	push   0x18(%rbp)
  402ed9:	ff 75 10             	push   0x10(%rbp)
  402edc:	e8 ef 33 00 00       	call   4062d0 <__signbitl>
  402ee1:	41 5d                	pop    %r13
  402ee3:	41 5e                	pop    %r14
  402ee5:	85 c0                	test   %eax,%eax
  402ee7:	0f 84 8b 00 00 00    	je     402f78 <fmt_fp+0xf8>
  402eed:	db 6d 10             	fldt   0x10(%rbp)
  402ef0:	48 8d 05 93 52 00 00 	lea    0x5293(%rip),%rax        # 40818a <_fini+0x1106>
  402ef7:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402efe:	00 00 00 
  402f01:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402f08:	d9 e0                	fchs
  402f0a:	db 7d 10             	fstpt  0x10(%rbp)
  402f0d:	ff 75 18             	push   0x18(%rbp)
  402f10:	ff 75 10             	push   0x10(%rbp)
  402f13:	e8 48 33 00 00       	call   406260 <__fpclassifyl>
  402f18:	5b                   	pop    %rbx
  402f19:	41 5c                	pop    %r12
  402f1b:	83 f8 01             	cmp    $0x1,%eax
  402f1e:	0f 8e bc 04 00 00    	jle    4033e0 <fmt_fp+0x560>
  402f24:	ff 75 18             	push   0x18(%rbp)
  402f27:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402f2e:	ff 75 10             	push   0x10(%rbp)
  402f31:	e8 ba 33 00 00       	call   4062f0 <frexpl>
  402f36:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402f3d:	41 5a                	pop    %r10
  402f3f:	d8 c0                	fadd   %st(0),%st
  402f41:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402f48:	41 5b                	pop    %r11
  402f4a:	41 83 ce 20          	or     $0x20,%r14d
  402f4e:	d9 ee                	fldz
  402f50:	d9 c9                	fxch   %st(1)
  402f52:	db e9                	fucomi %st(1),%st
  402f54:	dd d9                	fstp   %st(1)
  402f56:	7a 58                	jp     402fb0 <fmt_fp+0x130>
  402f58:	75 56                	jne    402fb0 <fmt_fp+0x130>
  402f5a:	41 83 fe 61          	cmp    $0x61,%r14d
  402f5e:	0f 84 37 06 00 00    	je     40359b <fmt_fp+0x71b>
  402f64:	45 85 ff             	test   %r15d,%r15d
  402f67:	0f 88 84 13 00 00    	js     4042f1 <fmt_fp+0x1471>
  402f6d:	40 0f 95 c6          	setne  %sil
  402f71:	eb 65                	jmp    402fd8 <fmt_fp+0x158>
  402f73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402f78:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402f7e:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402f84:	0f 84 2c 04 00 00    	je     4033b6 <fmt_fp+0x536>
  402f8a:	48 8d 05 fc 51 00 00 	lea    0x51fc(%rip),%rax        # 40818d <_fini+0x1109>
  402f91:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402f98:	00 00 00 
  402f9b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402fa2:	e9 66 ff ff ff       	jmp    402f0d <fmt_fp+0x8d>
  402fa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402fae:	00 00 
  402fb0:	41 83 fe 61          	cmp    $0x61,%r14d
  402fb4:	0f 84 d6 05 00 00    	je     403590 <fmt_fp+0x710>
  402fba:	45 85 ff             	test   %r15d,%r15d
  402fbd:	0f 88 3e 13 00 00    	js     404301 <fmt_fp+0x1481>
  402fc3:	40 0f 95 c6          	setne  %sil
  402fc7:	41 83 e9 1d          	sub    $0x1d,%r9d
  402fcb:	d8 0d 33 55 00 00    	fmuls  0x5533(%rip)        # 408504 <states+0x1e4>
  402fd1:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402fd8:	45 85 c9             	test   %r9d,%r9d
  402fdb:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402fe2:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402fe9:	d9 05 19 55 00 00    	flds   0x5519(%rip)        # 408508 <states+0x1e8>
  402fef:	d9 c9                	fxch   %st(1)
  402ff1:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402ff7:	48 0f 49 c2          	cmovns %rdx,%rax
  402ffb:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  403002:	48 89 c3             	mov    %rax,%rbx
  403005:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  40300c:	80 cc 0c             	or     $0xc,%ah
  40300f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  403016:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40301d:	00 00 
  40301f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403026:	00 00 00 00 
  40302a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403031:	00 00 00 00 
  403035:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40303c:	00 00 00 00 
  403040:	d9 c0                	fld    %st(0)
  403042:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  403048:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  40304e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403054:	48 83 c3 04          	add    $0x4,%rbx
  403058:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  40305f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  403062:	89 c0                	mov    %eax,%eax
  403064:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  40306b:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  403071:	de e9                	fsubrp %st,%st(1)
  403073:	d8 c9                	fmul   %st(1),%st
  403075:	d9 ee                	fldz
  403077:	d9 c9                	fxch   %st(1)
  403079:	db e9                	fucomi %st(1),%st
  40307b:	dd d9                	fstp   %st(1)
  40307d:	7a c1                	jp     403040 <fmt_fp+0x1c0>
  40307f:	75 bf                	jne    403040 <fmt_fp+0x1c0>
  403081:	dd d8                	fstp   %st(0)
  403083:	dd d8                	fstp   %st(0)
  403085:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  40308c:	45 85 c9             	test   %r9d,%r9d
  40308f:	0f 8e b0 00 00 00    	jle    403145 <fmt_fp+0x2c5>
  403095:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  40309c:	b8 44 00 
  40309f:	90                   	nop
  4030a0:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  4030a5:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  4030a9:	41 39 c9             	cmp    %ecx,%r9d
  4030ac:	41 0f 4e c9          	cmovle %r9d,%ecx
  4030b0:	4d 39 e2             	cmp    %r12,%r10
  4030b3:	72 4b                	jb     403100 <fmt_fp+0x280>
  4030b5:	31 c0                	xor    %eax,%eax
  4030b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4030be:	00 00 
  4030c0:	45 8b 02             	mov    (%r10),%r8d
  4030c3:	49 83 ea 04          	sub    $0x4,%r10
  4030c7:	49 d3 e0             	shl    %cl,%r8
  4030ca:	49 01 c0             	add    %rax,%r8
  4030cd:	4c 89 c2             	mov    %r8,%rdx
  4030d0:	48 c1 ea 09          	shr    $0x9,%rdx
  4030d4:	48 89 d0             	mov    %rdx,%rax
  4030d7:	48 f7 e7             	mul    %rdi
  4030da:	48 c1 ea 0b          	shr    $0xb,%rdx
  4030de:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  4030e5:	49 29 c0             	sub    %rax,%r8
  4030e8:	89 d0                	mov    %edx,%eax
  4030ea:	45 89 42 04          	mov    %r8d,0x4(%r10)
  4030ee:	4d 39 e2             	cmp    %r12,%r10
  4030f1:	73 cd                	jae    4030c0 <fmt_fp+0x240>
  4030f3:	85 d2                	test   %edx,%edx
  4030f5:	74 09                	je     403100 <fmt_fp+0x280>
  4030f7:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  4030fc:	49 83 ec 04          	sub    $0x4,%r12
  403100:	49 39 dc             	cmp    %rbx,%r12
  403103:	72 24                	jb     403129 <fmt_fp+0x2a9>
  403105:	eb 2b                	jmp    403132 <fmt_fp+0x2b2>
  403107:	0f 1f 00             	nopl   (%rax)
  40310a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403111:	00 00 00 00 
  403115:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40311c:	00 00 00 00 
  403120:	48 83 eb 04          	sub    $0x4,%rbx
  403124:	49 39 dc             	cmp    %rbx,%r12
  403127:	73 09                	jae    403132 <fmt_fp+0x2b2>
  403129:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  40312d:	45 85 c0             	test   %r8d,%r8d
  403130:	74 ee                	je     403120 <fmt_fp+0x2a0>
  403132:	41 29 c9             	sub    %ecx,%r9d
  403135:	45 85 c9             	test   %r9d,%r9d
  403138:	0f 8f 62 ff ff ff    	jg     4030a0 <fmt_fp+0x220>
  40313e:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  403145:	45 85 c9             	test   %r9d,%r9d
  403148:	0f 84 35 01 00 00    	je     403283 <fmt_fp+0x403>
  40314e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  403152:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  403159:	41 89 f0             	mov    %esi,%r8d
  40315c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  403163:	48 c1 e8 21          	shr    $0x21,%rax
  403167:	48 8d 78 01          	lea    0x1(%rax),%rdi
  40316b:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  403172:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  403179:	00 
  40317a:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  403181:	0f 1f 40 00          	nopl   0x0(%rax)
  403185:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40318c:	00 00 00 00 
  403190:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  403194:	0f 8d d6 06 00 00    	jge    403870 <fmt_fp+0x9f0>
  40319a:	41 83 c1 09          	add    $0x9,%r9d
  40319e:	b9 09 00 00 00       	mov    $0x9,%ecx
  4031a3:	49 39 dc             	cmp    %rbx,%r12
  4031a6:	0f 83 d5 06 00 00    	jae    403881 <fmt_fp+0xa01>
  4031ac:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  4031b2:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  4031b9:	4c 89 e6             	mov    %r12,%rsi
  4031bc:	31 d2                	xor    %edx,%edx
  4031be:	41 d3 e2             	shl    %cl,%r10d
  4031c1:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  4031c7:	41 83 ea 01          	sub    $0x1,%r10d
  4031cb:	41 d3 ff             	sar    %cl,%r15d
  4031ce:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4031d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031db:	00 00 00 00 
  4031df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031e6:	00 00 00 00 
  4031ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031f1:	00 00 00 00 
  4031f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031fc:	00 00 00 00 
  403200:	8b 06                	mov    (%rsi),%eax
  403202:	48 83 c6 04          	add    $0x4,%rsi
  403206:	41 89 c1             	mov    %eax,%r9d
  403209:	44 21 d0             	and    %r10d,%eax
  40320c:	41 0f af c7          	imul   %r15d,%eax
  403210:	41 d3 e9             	shr    %cl,%r9d
  403213:	41 01 d1             	add    %edx,%r9d
  403216:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  40321a:	89 c2                	mov    %eax,%edx
  40321c:	48 39 de             	cmp    %rbx,%rsi
  40321f:	72 df                	jb     403200 <fmt_fp+0x380>
  403221:	41 8b 0c 24          	mov    (%r12),%ecx
  403225:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  40322a:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  403231:	85 c9                	test   %ecx,%ecx
  403233:	49 0f 45 c4          	cmovne %r12,%rax
  403237:	85 d2                	test   %edx,%edx
  403239:	74 06                	je     403241 <fmt_fp+0x3c1>
  40323b:	89 13                	mov    %edx,(%rbx)
  40323d:	48 83 c3 04          	add    $0x4,%rbx
  403241:	49 89 c4             	mov    %rax,%r12
  403244:	41 83 fe 66          	cmp    $0x66,%r14d
  403248:	0f 84 52 06 00 00    	je     4038a0 <fmt_fp+0xa20>
  40324e:	48 89 da             	mov    %rbx,%rdx
  403251:	48 29 c2             	sub    %rax,%rdx
  403254:	4c 01 d8             	add    %r11,%rax
  403257:	48 c1 fa 02          	sar    $0x2,%rdx
  40325b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  403262:	48 0f 4f d8          	cmovg  %rax,%rbx
  403266:	45 85 c9             	test   %r9d,%r9d
  403269:	0f 85 21 ff ff ff    	jne    403190 <fmt_fp+0x310>
  40326f:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  403276:	00 00 00 
  403279:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  403280:	44 89 c6             	mov    %r8d,%esi
  403283:	49 39 dc             	cmp    %rbx,%r12
  403286:	0f 83 5d 0b 00 00    	jae    403de9 <fmt_fp+0xf69>
  40328c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403293:	41 83 fe 66          	cmp    $0x66,%r14d
  403297:	41 8b 14 24          	mov    (%r12),%edx
  40329b:	0f 95 c1             	setne  %cl
  40329e:	4c 29 e0             	sub    %r12,%rax
  4032a1:	48 c1 f8 02          	sar    $0x2,%rax
  4032a5:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  4032a8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4032ad:	83 fa 09             	cmp    $0x9,%edx
  4032b0:	76 1a                	jbe    4032cc <fmt_fp+0x44c>
  4032b2:	0f 1f 00             	nopl   (%rax)
  4032b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4032bc:	00 00 00 00 
  4032c0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4032c3:	83 c7 01             	add    $0x1,%edi
  4032c6:	01 c0                	add    %eax,%eax
  4032c8:	39 c2                	cmp    %eax,%edx
  4032ca:	73 f4                	jae    4032c0 <fmt_fp+0x440>
  4032cc:	31 d2                	xor    %edx,%edx
  4032ce:	84 c9                	test   %cl,%cl
  4032d0:	44 89 f8             	mov    %r15d,%eax
  4032d3:	0f 45 d7             	cmovne %edi,%edx
  4032d6:	29 d0                	sub    %edx,%eax
  4032d8:	31 d2                	xor    %edx,%edx
  4032da:	41 83 fe 67          	cmp    $0x67,%r14d
  4032de:	0f 94 c2             	sete   %dl
  4032e1:	21 f2                	and    %esi,%edx
  4032e3:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  4032ea:	29 d0                	sub    %edx,%eax
  4032ec:	48 89 da             	mov    %rbx,%rdx
  4032ef:	48 29 f2             	sub    %rsi,%rdx
  4032f2:	48 63 c8             	movslq %eax,%rcx
  4032f5:	48 c1 fa 02          	sar    $0x2,%rdx
  4032f9:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  4032fe:	48 39 d1             	cmp    %rdx,%rcx
  403301:	0f 8d 0f 06 00 00    	jge    403916 <fmt_fp+0xa96>
  403307:	05 00 40 02 00       	add    $0x24000,%eax
  40330c:	48 63 d0             	movslq %eax,%rdx
  40330f:	89 c1                	mov    %eax,%ecx
  403311:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403318:	c1 f9 1f             	sar    $0x1f,%ecx
  40331b:	48 c1 fa 21          	sar    $0x21,%rdx
  40331f:	29 ca                	sub    %ecx,%edx
  403321:	48 63 ca             	movslq %edx,%rcx
  403324:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  40332b:	ff 
  40332c:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  40332f:	29 c8                	sub    %ecx,%eax
  403331:	89 c2                	mov    %eax,%edx
  403333:	8d 40 01             	lea    0x1(%rax),%eax
  403336:	83 fa 08             	cmp    $0x8,%edx
  403339:	0f 84 df 13 00 00    	je     40471e <fmt_fp+0x189e>
  40333f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403344:	90                   	nop
  403345:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40334c:	00 00 00 00 
  403350:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403353:	83 c0 01             	add    $0x1,%eax
  403356:	01 c9                	add    %ecx,%ecx
  403358:	83 f8 09             	cmp    $0x9,%eax
  40335b:	75 f3                	jne    403350 <fmt_fp+0x4d0>
  40335d:	41 89 cb             	mov    %ecx,%r11d
  403360:	44 8b 16             	mov    (%rsi),%r10d
  403363:	31 d2                	xor    %edx,%edx
  403365:	44 89 d0             	mov    %r10d,%eax
  403368:	41 f7 f3             	div    %r11d
  40336b:	41 89 d1             	mov    %edx,%r9d
  40336e:	85 d2                	test   %edx,%edx
  403370:	0f 85 35 05 00 00    	jne    4038ab <fmt_fp+0xa2b>
  403376:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  40337a:	48 89 da             	mov    %rbx,%rdx
  40337d:	4c 39 c3             	cmp    %r8,%rbx
  403380:	0f 84 89 05 00 00    	je     40390f <fmt_fp+0xa8f>
  403386:	a8 01                	test   $0x1,%al
  403388:	0f 85 36 10 00 00    	jne    4043c4 <fmt_fp+0x1544>
  40338e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403394:	75 0f                	jne    4033a5 <fmt_fp+0x525>
  403396:	49 39 f4             	cmp    %rsi,%r12
  403399:	73 0a                	jae    4033a5 <fmt_fp+0x525>
  40339b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40339f:	0f 85 1f 10 00 00    	jne    4043c4 <fmt_fp+0x1544>
  4033a5:	d9 05 49 51 00 00    	flds   0x5149(%rip)        # 4084f4 <states+0x1d4>
  4033ab:	d9 05 47 51 00 00    	flds   0x5147(%rip)        # 4084f8 <states+0x1d8>
  4033b1:	e9 1d 05 00 00       	jmp    4038d3 <fmt_fp+0xa53>
  4033b6:	48 8d 1d ce 4d 00 00 	lea    0x4dce(%rip),%rbx        # 40818b <_fini+0x1107>
  4033bd:	83 e7 01             	and    $0x1,%edi
  4033c0:	48 8d 43 05          	lea    0x5(%rbx),%rax
  4033c4:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  4033ca:	48 0f 44 c3          	cmove  %rbx,%rax
  4033ce:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  4033d5:	e9 33 fb ff ff       	jmp    402f0d <fmt_fp+0x8d>
  4033da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4033e0:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4033e7:	0f 84 94 00 00 00    	je     403481 <fmt_fp+0x601>
  4033ed:	db 6d 10             	fldt   0x10(%rbp)
  4033f0:	4c 8d 25 aa 4d 00 00 	lea    0x4daa(%rip),%r12        # 4081a1 <_fini+0x111d>
  4033f7:	48 8d 05 ab 4d 00 00 	lea    0x4dab(%rip),%rax        # 4081a9 <_fini+0x1125>
  4033fe:	df e8                	fucomip %st(0),%st
  403400:	4c 0f 4b e0          	cmovnp %rax,%r12
  403404:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40340a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403410:	8d 58 03             	lea    0x3(%rax),%ebx
  403413:	39 d3                	cmp    %edx,%ebx
  403415:	41 0f 9d c5          	setge  %r13b
  403419:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  403420:	75 09                	jne    40342b <fmt_fp+0x5ab>
  403422:	45 84 ed             	test   %r13b,%r13b
  403425:	0f 84 0a 01 00 00    	je     403535 <fmt_fp+0x6b5>
  40342b:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403432:	f6 00 20             	testb  $0x20,(%rax)
  403435:	0f 84 1d 01 00 00    	je     403558 <fmt_fp+0x6d8>
  40343b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403441:	80 f4 20             	xor    $0x20,%ah
  403444:	a9 00 20 01 00       	test   $0x12000,%eax
  403449:	75 09                	jne    403454 <fmt_fp+0x5d4>
  40344b:	45 84 ed             	test   %r13b,%r13b
  40344e:	0f 84 c3 00 00 00    	je     403517 <fmt_fp+0x697>
  403454:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40345a:	39 c3                	cmp    %eax,%ebx
  40345c:	0f 4d c3             	cmovge %ebx,%eax
  40345f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  403463:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40346a:	00 00 
  40346c:	0f 85 4d 13 00 00    	jne    4047bf <fmt_fp+0x193f>
  403472:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  403476:	5b                   	pop    %rbx
  403477:	41 5c                	pop    %r12
  403479:	41 5d                	pop    %r13
  40347b:	41 5e                	pop    %r14
  40347d:	41 5f                	pop    %r15
  40347f:	5d                   	pop    %rbp
  403480:	c3                   	ret
  403481:	db 6d 10             	fldt   0x10(%rbp)
  403484:	4c 8d 25 1a 4d 00 00 	lea    0x4d1a(%rip),%r12        # 4081a5 <_fini+0x1121>
  40348b:	48 8d 05 0b 4d 00 00 	lea    0x4d0b(%rip),%rax        # 40819d <_fini+0x1119>
  403492:	df e8                	fucomip %st(0),%st
  403494:	4c 0f 4b e0          	cmovnp %rax,%r12
  403498:	e9 67 ff ff ff       	jmp    403404 <fmt_fp+0x584>
  40349d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4034a4:	f6 07 20             	testb  $0x20,(%rdi)
  4034a7:	0f 84 11 03 00 00    	je     4037be <fmt_fp+0x93e>
  4034ad:	45 29 f7             	sub    %r14d,%r15d
  4034b0:	45 85 ff             	test   %r15d,%r15d
  4034b3:	7e 9f                	jle    403454 <fmt_fp+0x5d4>
  4034b5:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4034bb:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4034c2:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4034c9:	31 c9                	xor    %ecx,%ecx
  4034cb:	44 89 fa             	mov    %r15d,%edx
  4034ce:	be 30 00 00 00       	mov    $0x30,%esi
  4034d3:	e8 a8 f8 ff ff       	call   402d80 <pad.part.0>
  4034d8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4034df:	f6 00 20             	testb  $0x20,(%rax)
  4034e2:	75 12                	jne    4034f6 <fmt_fp+0x676>
  4034e4:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  4034eb:	48 89 c2             	mov    %rax,%rdx
  4034ee:	4c 89 e6             	mov    %r12,%rsi
  4034f1:	e8 2a 31 00 00       	call   406620 <__fwritex>
  4034f6:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4034fc:	80 f4 20             	xor    $0x20,%ah
  4034ff:	a9 00 20 01 00       	test   $0x12000,%eax
  403504:	0f 85 4a ff ff ff    	jne    403454 <fmt_fp+0x5d4>
  40350a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403511:	0f 85 3d ff ff ff    	jne    403454 <fmt_fp+0x5d4>
  403517:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40351d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403524:	89 d9                	mov    %ebx,%ecx
  403526:	be 20 00 00 00       	mov    $0x20,%esi
  40352b:	e8 50 f8 ff ff       	call   402d80 <pad.part.0>
  403530:	e9 1f ff ff ff       	jmp    403454 <fmt_fp+0x5d4>
  403535:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40353c:	89 d9                	mov    %ebx,%ecx
  40353e:	be 20 00 00 00       	mov    $0x20,%esi
  403543:	e8 38 f8 ff ff       	call   402d80 <pad.part.0>
  403548:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40354f:	f6 00 20             	testb  $0x20,(%rax)
  403552:	0f 85 e3 fe ff ff    	jne    40343b <fmt_fp+0x5bb>
  403558:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40355f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403566:	49 89 c6             	mov    %rax,%r14
  403569:	48 89 c2             	mov    %rax,%rdx
  40356c:	e8 af 30 00 00       	call   406620 <__fwritex>
  403571:	41 f6 06 20          	testb  $0x20,(%r14)
  403575:	0f 85 c0 fe ff ff    	jne    40343b <fmt_fp+0x5bb>
  40357b:	4c 89 f2             	mov    %r14,%rdx
  40357e:	be 03 00 00 00       	mov    $0x3,%esi
  403583:	4c 89 e7             	mov    %r12,%rdi
  403586:	e8 95 30 00 00       	call   406620 <__fwritex>
  40358b:	e9 ab fe ff ff       	jmp    40343b <fmt_fp+0x5bb>
  403590:	41 83 e9 01          	sub    $0x1,%r9d
  403594:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40359b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4035a2:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4035a9:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  4035af:	48 8d 47 09          	lea    0x9(%rdi),%rax
  4035b3:	48 0f 44 c7          	cmove  %rdi,%rax
  4035b7:	83 c3 02             	add    $0x2,%ebx
  4035ba:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  4035c1:	41 83 ff 0e          	cmp    $0xe,%r15d
  4035c5:	0f 86 28 0c 00 00    	jbe    4041f3 <fmt_fp+0x1373>
  4035cb:	d9 05 2f 4f 00 00    	flds   0x4f2f(%rip)        # 408500 <states+0x1e0>
  4035d1:	45 85 c9             	test   %r9d,%r9d
  4035d4:	0f 84 54 11 00 00    	je     40472e <fmt_fp+0x18ae>
  4035da:	44 89 c9             	mov    %r9d,%ecx
  4035dd:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4035e1:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  4035e8:	cc cc cc 
  4035eb:	f7 d9                	neg    %ecx
  4035ed:	4d 89 e8             	mov    %r13,%r8
  4035f0:	41 0f 48 c9          	cmovs  %r9d,%ecx
  4035f4:	48 63 c9             	movslq %ecx,%rcx
  4035f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4035fe:	00 00 
  403600:	48 89 c8             	mov    %rcx,%rax
  403603:	4c 89 c7             	mov    %r8,%rdi
  403606:	49 83 e8 01          	sub    $0x1,%r8
  40360a:	48 f7 e6             	mul    %rsi
  40360d:	48 89 c8             	mov    %rcx,%rax
  403610:	48 c1 ea 03          	shr    $0x3,%rdx
  403614:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403618:	4d 01 d2             	add    %r10,%r10
  40361b:	4c 29 d0             	sub    %r10,%rax
  40361e:	83 c0 30             	add    $0x30,%eax
  403621:	48 83 f9 09          	cmp    $0x9,%rcx
  403625:	48 89 d1             	mov    %rdx,%rcx
  403628:	41 88 00             	mov    %al,(%r8)
  40362b:	77 d3                	ja     403600 <fmt_fp+0x780>
  40362d:	4d 39 e8             	cmp    %r13,%r8
  403630:	0f 84 9f 0d 00 00    	je     4043d5 <fmt_fp+0x1555>
  403636:	b8 2d 00 00 00       	mov    $0x2d,%eax
  40363b:	45 85 c9             	test   %r9d,%r9d
  40363e:	78 05                	js     403645 <fmt_fp+0x7c5>
  403640:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403645:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40364b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40364f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403653:	d9 ee                	fldz
  403655:	d9 ca                	fxch   %st(2)
  403657:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40365e:	45 85 ff             	test   %r15d,%r15d
  403661:	48 8d 0d a8 4c 00 00 	lea    0x4ca8(%rip),%rcx        # 408310 <xdigits>
  403668:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  40366e:	8d 46 0f             	lea    0xf(%rsi),%eax
  403671:	40 0f 9f c7          	setg   %dil
  403675:	83 e6 20             	and    $0x20,%esi
  403678:	41 88 40 fe          	mov    %al,-0x2(%r8)
  40367c:	4c 89 e8             	mov    %r13,%rax
  40367f:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403685:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40368c:	80 ce 0c             	or     $0xc,%dh
  40368f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403696:	eb 1b                	jmp    4036b3 <fmt_fp+0x833>
  403698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40369f:	00 
  4036a0:	4c 89 c0             	mov    %r8,%rax
  4036a3:	d9 c2                	fld    %st(2)
  4036a5:	d9 c9                	fxch   %st(1)
  4036a7:	db e9                	fucomi %st(1),%st
  4036a9:	dd d9                	fstp   %st(1)
  4036ab:	7a 06                	jp     4036b3 <fmt_fp+0x833>
  4036ad:	0f 84 dc 10 00 00    	je     40478f <fmt_fp+0x190f>
  4036b3:	d9 c0                	fld    %st(0)
  4036b5:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  4036bb:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  4036c1:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  4036c7:	4c 8d 40 01          	lea    0x1(%rax),%r8
  4036cb:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  4036d1:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  4036d8:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  4036dd:	de e9                	fsubrp %st,%st(1)
  4036df:	41 09 f3             	or     %esi,%r11d
  4036e2:	44 88 18             	mov    %r11b,(%rax)
  4036e5:	d8 c9                	fmul   %st(1),%st
  4036e7:	4c 39 e8             	cmp    %r13,%rax
  4036ea:	75 b4                	jne    4036a0 <fmt_fp+0x820>
  4036ec:	d9 c2                	fld    %st(2)
  4036ee:	df e9                	fucomip %st(1),%st
  4036f0:	0f 9a c2             	setp   %dl
  4036f3:	41 0f 45 d1          	cmovne %r9d,%edx
  4036f7:	84 d2                	test   %dl,%dl
  4036f9:	0f 85 31 06 00 00    	jne    403d30 <fmt_fp+0xeb0>
  4036ff:	40 84 ff             	test   %dil,%dil
  403702:	0f 85 28 06 00 00    	jne    403d30 <fmt_fp+0xeb0>
  403708:	dd d8                	fstp   %st(0)
  40370a:	dd d8                	fstp   %st(0)
  40370c:	dd d8                	fstp   %st(0)
  40370e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403715:	74 08                	je     40371f <fmt_fp+0x89f>
  403717:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40371b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40371f:	4d 89 ec             	mov    %r13,%r12
  403722:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  403727:	48 63 c3             	movslq %ebx,%rax
  40372a:	49 63 cf             	movslq %r15d,%rcx
  40372d:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  403734:	4c 29 e2             	sub    %r12,%rdx
  403737:	48 29 c2             	sub    %rax,%rdx
  40373a:	48 39 d1             	cmp    %rdx,%rcx
  40373d:	0f 8f 24 10 00 00    	jg     404767 <fmt_fp+0x18e7>
  403743:	4d 29 e8             	sub    %r13,%r8
  403746:	45 85 ff             	test   %r15d,%r15d
  403749:	74 0d                	je     403758 <fmt_fp+0x8d8>
  40374b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40374f:	48 39 d1             	cmp    %rdx,%rcx
  403752:	0f 8d ac 0c 00 00    	jge    404404 <fmt_fp+0x1584>
  403758:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40375c:	45 89 f7             	mov    %r14d,%r15d
  40375f:	44 01 fb             	add    %r15d,%ebx
  403762:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  403769:	20 01 
  40376b:	0f 85 a0 0b 00 00    	jne    404311 <fmt_fp+0x1491>
  403771:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403777:	39 d3                	cmp    %edx,%ebx
  403779:	0f 8d 1e fd ff ff    	jge    40349d <fmt_fp+0x61d>
  40377f:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403786:	89 d9                	mov    %ebx,%ecx
  403788:	be 20 00 00 00       	mov    $0x20,%esi
  40378d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403794:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40379b:	e8 e0 f5 ff ff       	call   402d80 <pad.part.0>
  4037a0:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4037a7:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  4037ae:	f6 00 20             	testb  $0x20,(%rax)
  4037b1:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  4037b8:	0f 85 ef fc ff ff    	jne    4034ad <fmt_fp+0x62d>
  4037be:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  4037c5:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4037cc:	48 89 c6             	mov    %rax,%rsi
  4037cf:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4037d6:	e8 45 2e 00 00       	call   406620 <__fwritex>
  4037db:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4037e1:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4037e7:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4037ee:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4037f5:	35 00 00 01 00       	xor    $0x10000,%eax
  4037fa:	a9 00 20 01 00       	test   $0x12000,%eax
  4037ff:	75 37                	jne    403838 <fmt_fp+0x9b8>
  403801:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403808:	75 2e                	jne    403838 <fmt_fp+0x9b8>
  40380a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403810:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403817:	89 d9                	mov    %ebx,%ecx
  403819:	be 30 00 00 00       	mov    $0x30,%esi
  40381e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403825:	e8 56 f5 ff ff       	call   402d80 <pad.part.0>
  40382a:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  403831:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403838:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40383f:	f6 00 20             	testb  $0x20,(%rax)
  403842:	0f 85 05 0b 00 00    	jne    40434d <fmt_fp+0x14cd>
  403848:	48 89 c2             	mov    %rax,%rdx
  40384b:	4c 89 c6             	mov    %r8,%rsi
  40384e:	4c 89 ef             	mov    %r13,%rdi
  403851:	45 29 f7             	sub    %r14d,%r15d
  403854:	e8 c7 2d 00 00       	call   406620 <__fwritex>
  403859:	45 85 ff             	test   %r15d,%r15d
  40385c:	0f 8e 76 fc ff ff    	jle    4034d8 <fmt_fp+0x658>
  403862:	e9 5b fc ff ff       	jmp    4034c2 <fmt_fp+0x642>
  403867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40386e:	00 00 
  403870:	44 89 c9             	mov    %r9d,%ecx
  403873:	45 31 c9             	xor    %r9d,%r9d
  403876:	f7 d9                	neg    %ecx
  403878:	49 39 dc             	cmp    %rbx,%r12
  40387b:	0f 82 2b f9 ff ff    	jb     4031ac <fmt_fp+0x32c>
  403881:	41 8b 34 24          	mov    (%r12),%esi
  403885:	85 f6                	test   %esi,%esi
  403887:	0f 84 66 05 00 00    	je     403df3 <fmt_fp+0xf73>
  40388d:	41 83 fe 66          	cmp    $0x66,%r14d
  403891:	0f 85 cf f9 ff ff    	jne    403266 <fmt_fp+0x3e6>
  403897:	4c 89 e0             	mov    %r12,%rax
  40389a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4038a0:	49 89 c4             	mov    %rax,%r12
  4038a3:	48 89 f8             	mov    %rdi,%rax
  4038a6:	e9 a3 f9 ff ff       	jmp    40324e <fmt_fp+0x3ce>
  4038ab:	a8 01                	test   $0x1,%al
  4038ad:	0f 84 2f 0b 00 00    	je     4043e2 <fmt_fp+0x1562>
  4038b3:	db 2d 67 4c 00 00    	fldt   0x4c67(%rip)        # 408520 <states+0x200>
  4038b9:	d1 f9                	sar    $1,%ecx
  4038bb:	41 39 c9             	cmp    %ecx,%r9d
  4038be:	0f 82 06 0b 00 00    	jb     4043ca <fmt_fp+0x154a>
  4038c4:	44 39 c9             	cmp    %r9d,%ecx
  4038c7:	0f 84 31 0e 00 00    	je     4046fe <fmt_fp+0x187e>
  4038cd:	d9 05 29 4c 00 00    	flds   0x4c29(%rip)        # 4084fc <states+0x1dc>
  4038d3:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  4038d9:	85 d2                	test   %edx,%edx
  4038db:	74 14                	je     4038f1 <fmt_fp+0xa71>
  4038dd:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  4038e4:	80 38 2d             	cmpb   $0x2d,(%rax)
  4038e7:	75 08                	jne    4038f1 <fmt_fp+0xa71>
  4038e9:	d9 c9                	fxch   %st(1)
  4038eb:	d9 e0                	fchs
  4038ed:	d9 c9                	fxch   %st(1)
  4038ef:	d9 e0                	fchs
  4038f1:	d8 c1                	fadd   %st(1),%st
  4038f3:	44 89 d0             	mov    %r10d,%eax
  4038f6:	44 29 c8             	sub    %r9d,%eax
  4038f9:	df e9                	fucomip %st(1),%st
  4038fb:	dd d8                	fstp   %st(0)
  4038fd:	0f 8a 4c 09 00 00    	jp     40424f <fmt_fp+0x13cf>
  403903:	0f 85 46 09 00 00    	jne    40424f <fmt_fp+0x13cf>
  403909:	89 06                	mov    %eax,(%rsi)
  40390b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40390f:	48 39 d3             	cmp    %rdx,%rbx
  403912:	48 0f 47 da          	cmova  %rdx,%rbx
  403916:	49 39 dc             	cmp    %rbx,%r12
  403919:	72 0e                	jb     403929 <fmt_fp+0xaa9>
  40391b:	eb 13                	jmp    403930 <fmt_fp+0xab0>
  40391d:	0f 1f 00             	nopl   (%rax)
  403920:	48 83 eb 04          	sub    $0x4,%rbx
  403924:	49 39 dc             	cmp    %rbx,%r12
  403927:	73 07                	jae    403930 <fmt_fp+0xab0>
  403929:	8b 43 fc             	mov    -0x4(%rbx),%eax
  40392c:	85 c0                	test   %eax,%eax
  40392e:	74 f0                	je     403920 <fmt_fp+0xaa0>
  403930:	41 83 fe 67          	cmp    $0x67,%r14d
  403934:	0f 84 25 05 00 00    	je     403e5f <fmt_fp+0xfdf>
  40393a:	45 85 ff             	test   %r15d,%r15d
  40393d:	0f 85 ba 04 00 00    	jne    403dfd <fmt_fp+0xf7d>
  403943:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40394a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403950:	41 c1 e9 03          	shr    $0x3,%r9d
  403954:	41 83 e1 01          	and    $0x1,%r9d
  403958:	41 83 c1 01          	add    $0x1,%r9d
  40395c:	45 29 ca             	sub    %r9d,%r10d
  40395f:	41 83 fe 66          	cmp    $0x66,%r14d
  403963:	0f 84 80 0b 00 00    	je     4044e9 <fmt_fp+0x1669>
  403969:	4d 63 d2             	movslq %r10d,%r10
  40396c:	85 ff                	test   %edi,%edi
  40396e:	0f 84 9e 0d 00 00    	je     404712 <fmt_fp+0x1892>
  403974:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  40397b:	cc cc cc 
  40397e:	89 fe                	mov    %edi,%esi
  403980:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403984:	f7 de                	neg    %esi
  403986:	4c 89 e9             	mov    %r13,%rcx
  403989:	0f 48 f7             	cmovs  %edi,%esi
  40398c:	48 63 f6             	movslq %esi,%rsi
  40398f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403994:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40399b:	00 00 00 00 
  40399f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039a6:	00 00 00 00 
  4039aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039b1:	00 00 00 00 
  4039b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039bc:	00 00 00 00 
  4039c0:	48 89 f0             	mov    %rsi,%rax
  4039c3:	48 83 e9 01          	sub    $0x1,%rcx
  4039c7:	49 f7 e0             	mul    %r8
  4039ca:	48 89 f0             	mov    %rsi,%rax
  4039cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4039d1:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  4039d5:	4d 01 db             	add    %r11,%r11
  4039d8:	4c 29 d8             	sub    %r11,%rax
  4039db:	83 c0 30             	add    $0x30,%eax
  4039de:	48 83 fe 09          	cmp    $0x9,%rsi
  4039e2:	48 89 d6             	mov    %rdx,%rsi
  4039e5:	88 01                	mov    %al,(%rcx)
  4039e7:	77 d7                	ja     4039c0 <fmt_fp+0xb40>
  4039e9:	4c 89 e8             	mov    %r13,%rax
  4039ec:	48 29 c8             	sub    %rcx,%rax
  4039ef:	48 83 f8 01          	cmp    $0x1,%rax
  4039f3:	7f 1e                	jg     403a13 <fmt_fp+0xb93>
  4039f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4039fc:	00 00 00 00 
  403a00:	48 83 e9 01          	sub    $0x1,%rcx
  403a04:	4c 89 e8             	mov    %r13,%rax
  403a07:	c6 01 30             	movb   $0x30,(%rcx)
  403a0a:	48 29 c8             	sub    %rcx,%rax
  403a0d:	48 83 f8 01          	cmp    $0x1,%rax
  403a11:	7e ed                	jle    403a00 <fmt_fp+0xb80>
  403a13:	c1 ff 1f             	sar    $0x1f,%edi
  403a16:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  403a1a:	83 e7 02             	and    $0x2,%edi
  403a1d:	49 29 c5             	sub    %rax,%r13
  403a20:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  403a27:	83 c7 2b             	add    $0x2b,%edi
  403a2a:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  403a2e:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  403a35:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  403a39:	4d 39 d5             	cmp    %r10,%r13
  403a3c:	0f 8f 25 0d 00 00    	jg     404767 <fmt_fp+0x18e7>
  403a42:	45 01 e9             	add    %r13d,%r9d
  403a45:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  403a4a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403a50:	41 39 c1             	cmp    %eax,%r9d
  403a53:	0f 8f 0e 0d 00 00    	jg     404767 <fmt_fp+0x18e7>
  403a59:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  403a5f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  403a65:	44 01 c8             	add    %r9d,%eax
  403a68:	39 f8                	cmp    %edi,%eax
  403a6a:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  403a70:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  403a77:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  403a7e:	20 01 
  403a80:	0f 85 3c 07 00 00    	jne    4041c2 <fmt_fp+0x1342>
  403a86:	39 f8                	cmp    %edi,%eax
  403a88:	0f 8d c5 06 00 00    	jge    404153 <fmt_fp+0x12d3>
  403a8e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403a95:	89 fa                	mov    %edi,%edx
  403a97:	89 c1                	mov    %eax,%ecx
  403a99:	be 20 00 00 00       	mov    $0x20,%esi
  403a9e:	4c 89 ef             	mov    %r13,%rdi
  403aa1:	e8 da f2 ff ff       	call   402d80 <pad.part.0>
  403aa6:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  403aab:	0f 84 b2 06 00 00    	je     404163 <fmt_fp+0x12e3>
  403ab1:	41 83 fe 66          	cmp    $0x66,%r14d
  403ab5:	0f 84 75 04 00 00    	je     403f30 <fmt_fp+0x10b0>
  403abb:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403ac0:	49 39 dc             	cmp    %rbx,%r12
  403ac3:	48 0f 43 d8          	cmovae %rax,%rbx
  403ac7:	45 85 ff             	test   %r15d,%r15d
  403aca:	0f 88 af 01 00 00    	js     403c7f <fmt_fp+0xdff>
  403ad0:	49 39 dc             	cmp    %rbx,%r12
  403ad3:	0f 83 a6 01 00 00    	jae    403c7f <fmt_fp+0xdff>
  403ad9:	b8 30 30 30 30       	mov    $0x30303030,%eax
  403ade:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403ae5:	4d 89 e6             	mov    %r12,%r14
  403ae8:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  403aec:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403af3:	66 0f 6e c0          	movd   %eax,%xmm0
  403af7:	49 89 dc             	mov    %rbx,%r12
  403afa:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403b01:	cc cc cc 
  403b04:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403b08:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403b0d:	0f 1f 00             	nopl   (%rax)
  403b10:	41 8b 0e             	mov    (%r14),%ecx
  403b13:	4c 89 c7             	mov    %r8,%rdi
  403b16:	48 85 c9             	test   %rcx,%rcx
  403b19:	0f 84 e1 01 00 00    	je     403d00 <fmt_fp+0xe80>
  403b1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403b26:	00 00 00 00 
  403b2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403b31:	00 00 00 00 
  403b35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403b3c:	00 00 00 00 
  403b40:	48 89 c8             	mov    %rcx,%rax
  403b43:	48 83 ef 01          	sub    $0x1,%rdi
  403b47:	49 f7 e5             	mul    %r13
  403b4a:	48 89 c8             	mov    %rcx,%rax
  403b4d:	48 c1 ea 03          	shr    $0x3,%rdx
  403b51:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403b55:	48 01 f6             	add    %rsi,%rsi
  403b58:	48 29 f0             	sub    %rsi,%rax
  403b5b:	83 c0 30             	add    $0x30,%eax
  403b5e:	48 83 f9 09          	cmp    $0x9,%rcx
  403b62:	48 89 d1             	mov    %rdx,%rcx
  403b65:	88 07                	mov    %al,(%rdi)
  403b67:	77 d7                	ja     403b40 <fmt_fp+0xcc0>
  403b69:	4c 39 c7             	cmp    %r8,%rdi
  403b6c:	0f 84 8e 01 00 00    	je     403d00 <fmt_fp+0xe80>
  403b72:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403b79:	0f 84 96 01 00 00    	je     403d15 <fmt_fp+0xe95>
  403b7f:	48 39 fb             	cmp    %rdi,%rbx
  403b82:	0f 83 c9 02 00 00    	jae    403e51 <fmt_fp+0xfd1>
  403b88:	48 89 fe             	mov    %rdi,%rsi
  403b8b:	48 89 f8             	mov    %rdi,%rax
  403b8e:	48 29 de             	sub    %rbx,%rsi
  403b91:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403b95:	48 83 fa 0e          	cmp    $0xe,%rdx
  403b99:	76 3d                	jbe    403bd8 <fmt_fp+0xd58>
  403b9b:	48 89 f1             	mov    %rsi,%rcx
  403b9e:	48 89 fa             	mov    %rdi,%rdx
  403ba1:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403ba5:	48 29 ca             	sub    %rcx,%rdx
  403ba8:	f6 c1 10             	test   $0x10,%cl
  403bab:	74 13                	je     403bc0 <fmt_fp+0xd40>
  403bad:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403bb1:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403bb5:	48 39 d0             	cmp    %rdx,%rax
  403bb8:	74 16                	je     403bd0 <fmt_fp+0xd50>
  403bba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403bc0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403bc4:	48 83 e8 20          	sub    $0x20,%rax
  403bc8:	0f 11 00             	movups %xmm0,(%rax)
  403bcb:	48 39 d0             	cmp    %rdx,%rax
  403bce:	75 f0                	jne    403bc0 <fmt_fp+0xd40>
  403bd0:	48 39 f1             	cmp    %rsi,%rcx
  403bd3:	74 3b                	je     403c10 <fmt_fp+0xd90>
  403bd5:	48 29 cf             	sub    %rcx,%rdi
  403bd8:	48 89 d8             	mov    %rbx,%rax
  403bdb:	48 f7 d0             	not    %rax
  403bde:	48 01 f8             	add    %rdi,%rax
  403be1:	48 83 ef 01          	sub    $0x1,%rdi
  403be5:	c6 07 30             	movb   $0x30,(%rdi)
  403be8:	48 39 fb             	cmp    %rdi,%rbx
  403beb:	73 23                	jae    403c10 <fmt_fp+0xd90>
  403bed:	a8 01                	test   $0x1,%al
  403bef:	74 0f                	je     403c00 <fmt_fp+0xd80>
  403bf1:	48 83 ef 01          	sub    $0x1,%rdi
  403bf5:	c6 07 30             	movb   $0x30,(%rdi)
  403bf8:	48 39 fb             	cmp    %rdi,%rbx
  403bfb:	73 13                	jae    403c10 <fmt_fp+0xd90>
  403bfd:	0f 1f 00             	nopl   (%rax)
  403c00:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403c04:	48 83 ef 02          	sub    $0x2,%rdi
  403c08:	c6 07 30             	movb   $0x30,(%rdi)
  403c0b:	48 39 fb             	cmp    %rdi,%rbx
  403c0e:	72 f0                	jb     403c00 <fmt_fp+0xd80>
  403c10:	41 8b 02             	mov    (%r10),%eax
  403c13:	49 89 d9             	mov    %rbx,%r9
  403c16:	83 e0 20             	and    $0x20,%eax
  403c19:	4c 89 c1             	mov    %r8,%rcx
  403c1c:	4c 29 c9             	sub    %r9,%rcx
  403c1f:	85 c0                	test   %eax,%eax
  403c21:	75 47                	jne    403c6a <fmt_fp+0xdea>
  403c23:	49 63 f7             	movslq %r15d,%rsi
  403c26:	4c 89 d2             	mov    %r10,%rdx
  403c29:	4c 89 cf             	mov    %r9,%rdi
  403c2c:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403c33:	48 39 ce             	cmp    %rcx,%rsi
  403c36:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403c3d:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403c41:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403c48:	e8 d3 29 00 00       	call   406620 <__fwritex>
  403c4d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c54:	66 0f 6f 05 d4 48 00 	movdqa 0x48d4(%rip),%xmm0        # 408530 <states+0x210>
  403c5b:	00 
  403c5c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403c63:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c6a:	49 83 c6 04          	add    $0x4,%r14
  403c6e:	41 29 cf             	sub    %ecx,%r15d
  403c71:	4d 39 e6             	cmp    %r12,%r14
  403c74:	73 09                	jae    403c7f <fmt_fp+0xdff>
  403c76:	45 85 ff             	test   %r15d,%r15d
  403c79:	0f 89 91 fe ff ff    	jns    403b10 <fmt_fp+0xc90>
  403c7f:	41 8d 57 12          	lea    0x12(%r15),%edx
  403c83:	83 fa 12             	cmp    $0x12,%edx
  403c86:	7e 16                	jle    403c9e <fmt_fp+0xe1e>
  403c88:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403c8f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403c94:	be 30 00 00 00       	mov    $0x30,%esi
  403c99:	e8 e2 f0 ff ff       	call   402d80 <pad.part.0>
  403c9e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403ca5:	f6 00 20             	testb  $0x20,(%rax)
  403ca8:	0f 84 86 05 00 00    	je     404234 <fmt_fp+0x13b4>
  403cae:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403cb4:	80 f4 20             	xor    $0x20,%ah
  403cb7:	a9 00 20 01 00       	test   $0x12000,%eax
  403cbc:	75 26                	jne    403ce4 <fmt_fp+0xe64>
  403cbe:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403cc5:	75 1d                	jne    403ce4 <fmt_fp+0xe64>
  403cc7:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403ccd:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403cd3:	be 20 00 00 00       	mov    $0x20,%esi
  403cd8:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403cdf:	e8 9c f0 ff ff       	call   402d80 <pad.part.0>
  403ce4:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403cea:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403cf0:	39 c7                	cmp    %eax,%edi
  403cf2:	0f 4d c7             	cmovge %edi,%eax
  403cf5:	e9 65 f7 ff ff       	jmp    40345f <fmt_fp+0x5df>
  403cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403d00:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403d04:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403d08:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403d0f:	0f 85 73 fe ff ff    	jne    403b88 <fmt_fp+0xd08>
  403d15:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403d19:	41 f6 02 20          	testb  $0x20,(%r10)
  403d1d:	74 1e                	je     403d3d <fmt_fp+0xebd>
  403d1f:	4c 89 c1             	mov    %r8,%rcx
  403d22:	4c 29 c9             	sub    %r9,%rcx
  403d25:	e9 40 ff ff ff       	jmp    403c6a <fmt_fp+0xdea>
  403d2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403d30:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403d34:	48 83 c0 02          	add    $0x2,%rax
  403d38:	e9 66 f9 ff ff       	jmp    4036a3 <fmt_fp+0x823>
  403d3d:	4c 89 d2             	mov    %r10,%rdx
  403d40:	be 01 00 00 00       	mov    $0x1,%esi
  403d45:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403d4c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403d53:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403d5a:	e8 c1 28 00 00       	call   406620 <__fwritex>
  403d5f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403d66:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403d6c:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403d73:	66 0f 6f 05 b5 47 00 	movdqa 0x47b5(%rip),%xmm0        # 408530 <states+0x210>
  403d7a:	00 
  403d7b:	41 8b 02             	mov    (%r10),%eax
  403d7e:	83 e2 08             	and    $0x8,%edx
  403d81:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403d88:	83 e0 20             	and    $0x20,%eax
  403d8b:	44 09 fa             	or     %r15d,%edx
  403d8e:	0f 84 85 fe ff ff    	je     403c19 <fmt_fp+0xd99>
  403d94:	85 c0                	test   %eax,%eax
  403d96:	75 87                	jne    403d1f <fmt_fp+0xe9f>
  403d98:	4c 89 d2             	mov    %r10,%rdx
  403d9b:	be 01 00 00 00       	mov    $0x1,%esi
  403da0:	48 8d 3d 06 44 00 00 	lea    0x4406(%rip),%rdi        # 4081ad <_fini+0x1129>
  403da7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403dae:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403db5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403dbc:	e8 5f 28 00 00       	call   406620 <__fwritex>
  403dc1:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403dc8:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403dcf:	66 0f 6f 05 59 47 00 	movdqa 0x4759(%rip),%xmm0        # 408530 <states+0x210>
  403dd6:	00 
  403dd7:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403dde:	41 8b 02             	mov    (%r10),%eax
  403de1:	83 e0 20             	and    $0x20,%eax
  403de4:	e9 30 fe ff ff       	jmp    403c19 <fmt_fp+0xd99>
  403de9:	44 89 f8             	mov    %r15d,%eax
  403dec:	31 ff                	xor    %edi,%edi
  403dee:	e9 e5 f4 ff ff       	jmp    4032d8 <fmt_fp+0x458>
  403df3:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403df8:	e9 44 f4 ff ff       	jmp    403241 <fmt_fp+0x3c1>
  403dfd:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403e04:	0f 8f 5d 09 00 00    	jg     404767 <fmt_fp+0x18e7>
  403e0a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403e11:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403e15:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403e1b:	45 29 ca             	sub    %r9d,%r10d
  403e1e:	41 83 ce 20          	or     $0x20,%r14d
  403e22:	41 83 fe 66          	cmp    $0x66,%r14d
  403e26:	0f 85 3d fb ff ff    	jne    403969 <fmt_fp+0xae9>
  403e2c:	44 39 d7             	cmp    %r10d,%edi
  403e2f:	0f 8f 32 09 00 00    	jg     404767 <fmt_fp+0x18e7>
  403e35:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403e3b:	85 ff                	test   %edi,%edi
  403e3d:	0f 8e 02 fc ff ff    	jle    403a45 <fmt_fp+0xbc5>
  403e43:	41 01 f9             	add    %edi,%r9d
  403e46:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403e4c:	e9 f4 fb ff ff       	jmp    403a45 <fmt_fp+0xbc5>
  403e51:	41 8b 02             	mov    (%r10),%eax
  403e54:	49 89 f9             	mov    %rdi,%r9
  403e57:	83 e0 20             	and    $0x20,%eax
  403e5a:	e9 ba fd ff ff       	jmp    403c19 <fmt_fp+0xd99>
  403e5f:	45 85 ff             	test   %r15d,%r15d
  403e62:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403e68:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403e6c:	41 39 f9             	cmp    %edi,%r9d
  403e6f:	0f 8e e9 04 00 00    	jle    40435e <fmt_fp+0x14de>
  403e75:	83 ff fc             	cmp    $0xfffffffc,%edi
  403e78:	0f 8c e0 04 00 00    	jl     40435e <fmt_fp+0x14de>
  403e7e:	8d 47 01             	lea    0x1(%rdi),%eax
  403e81:	45 89 cf             	mov    %r9d,%r15d
  403e84:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403e8b:	41 29 c7             	sub    %eax,%r15d
  403e8e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403e95:	0f 85 9c 05 00 00    	jne    404437 <fmt_fp+0x15b7>
  403e9b:	be 09 00 00 00       	mov    $0x9,%esi
  403ea0:	49 39 dc             	cmp    %rbx,%r12
  403ea3:	73 1f                	jae    403ec4 <fmt_fp+0x1044>
  403ea5:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403ea9:	45 85 c9             	test   %r9d,%r9d
  403eac:	74 16                	je     403ec4 <fmt_fp+0x1044>
  403eae:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403eb5:	d1 c8                	ror    $1,%eax
  403eb7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403ebc:	0f 86 e0 04 00 00    	jbe    4043a2 <fmt_fp+0x1522>
  403ec2:	31 f6                	xor    %esi,%esi
  403ec4:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403ecb:	41 83 ce 20          	or     $0x20,%r14d
  403ecf:	41 83 fe 66          	cmp    $0x66,%r14d
  403ed3:	0f 85 ac 05 00 00    	jne    404485 <fmt_fp+0x1605>
  403ed9:	48 89 d8             	mov    %rbx,%rax
  403edc:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403ee3:	ba 00 00 00 00       	mov    $0x0,%edx
  403ee8:	48 c1 f8 02          	sar    $0x2,%rax
  403eec:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403ef1:	48 29 f0             	sub    %rsi,%rax
  403ef4:	48 0f 48 c2          	cmovs  %rdx,%rax
  403ef8:	49 63 d7             	movslq %r15d,%rdx
  403efb:	48 39 d0             	cmp    %rdx,%rax
  403efe:	48 0f 4f c2          	cmovg  %rdx,%rax
  403f02:	48 85 c0             	test   %rax,%rax
  403f05:	0f 84 66 08 00 00    	je     404771 <fmt_fp+0x18f1>
  403f0b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403f11:	0f 8f 50 08 00 00    	jg     404767 <fmt_fp+0x18e7>
  403f17:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403f1b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403f21:	41 89 c7             	mov    %eax,%r15d
  403f24:	45 29 ca             	sub    %r9d,%r10d
  403f27:	e9 00 ff ff ff       	jmp    403e2c <fmt_fp+0xfac>
  403f2c:	0f 1f 40 00          	nopl   0x0(%rax)
  403f30:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403f37:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403f3e:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403f43:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403f4a:	cc cc cc 
  403f4d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403f54:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403f5b:	66 0f 6e c7          	movd   %edi,%xmm0
  403f5f:	4c 39 e0             	cmp    %r12,%rax
  403f62:	49 89 c6             	mov    %rax,%r14
  403f65:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403f6a:	4c 0f 46 e0          	cmovbe %rax,%r12
  403f6e:	4c 89 e3             	mov    %r12,%rbx
  403f71:	0f 1f 40 00          	nopl   0x0(%rax)
  403f75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f7c:	00 00 00 00 
  403f80:	41 8b 0c 24          	mov    (%r12),%ecx
  403f84:	48 85 c9             	test   %rcx,%rcx
  403f87:	0f 84 43 02 00 00    	je     4041d0 <fmt_fp+0x1350>
  403f8d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403f91:	48 89 f7             	mov    %rsi,%rdi
  403f94:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f9b:	00 00 00 00 
  403f9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fa6:	00 00 00 00 
  403faa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fb1:	00 00 00 00 
  403fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fbc:	00 00 00 00 
  403fc0:	48 89 c8             	mov    %rcx,%rax
  403fc3:	48 83 ef 01          	sub    $0x1,%rdi
  403fc7:	49 f7 e5             	mul    %r13
  403fca:	48 89 c8             	mov    %rcx,%rax
  403fcd:	48 c1 ea 03          	shr    $0x3,%rdx
  403fd1:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403fd5:	4d 01 c0             	add    %r8,%r8
  403fd8:	4c 29 c0             	sub    %r8,%rax
  403fdb:	83 c0 30             	add    $0x30,%eax
  403fde:	48 83 f9 09          	cmp    $0x9,%rcx
  403fe2:	48 89 d1             	mov    %rdx,%rcx
  403fe5:	88 07                	mov    %al,(%rdi)
  403fe7:	77 d7                	ja     403fc0 <fmt_fp+0x1140>
  403fe9:	4c 39 e3             	cmp    %r12,%rbx
  403fec:	0f 84 36 01 00 00    	je     404128 <fmt_fp+0x12a8>
  403ff2:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403ff6:	48 39 fa             	cmp    %rdi,%rdx
  403ff9:	0f 83 32 01 00 00    	jae    404131 <fmt_fp+0x12b1>
  403fff:	49 89 fa             	mov    %rdi,%r10
  404002:	48 89 f8             	mov    %rdi,%rax
  404005:	49 29 d2             	sub    %rdx,%r10
  404008:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  40400c:	48 83 f9 0e          	cmp    $0xe,%rcx
  404010:	76 46                	jbe    404058 <fmt_fp+0x11d8>
  404012:	4c 89 d6             	mov    %r10,%rsi
  404015:	48 89 f9             	mov    %rdi,%rcx
  404018:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  40401c:	48 29 f1             	sub    %rsi,%rcx
  40401f:	40 f6 c6 10          	test   $0x10,%sil
  404023:	74 1b                	je     404040 <fmt_fp+0x11c0>
  404025:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  404029:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40402d:	48 39 c8             	cmp    %rcx,%rax
  404030:	74 1e                	je     404050 <fmt_fp+0x11d0>
  404032:	0f 1f 00             	nopl   (%rax)
  404035:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40403c:	00 00 00 00 
  404040:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404044:	48 83 e8 20          	sub    $0x20,%rax
  404048:	0f 11 00             	movups %xmm0,(%rax)
  40404b:	48 39 c8             	cmp    %rcx,%rax
  40404e:	75 f0                	jne    404040 <fmt_fp+0x11c0>
  404050:	4c 39 d6             	cmp    %r10,%rsi
  404053:	74 3b                	je     404090 <fmt_fp+0x1210>
  404055:	48 29 f7             	sub    %rsi,%rdi
  404058:	48 89 d0             	mov    %rdx,%rax
  40405b:	48 f7 d0             	not    %rax
  40405e:	48 01 f8             	add    %rdi,%rax
  404061:	48 83 ef 01          	sub    $0x1,%rdi
  404065:	c6 07 30             	movb   $0x30,(%rdi)
  404068:	48 39 fa             	cmp    %rdi,%rdx
  40406b:	73 23                	jae    404090 <fmt_fp+0x1210>
  40406d:	a8 01                	test   $0x1,%al
  40406f:	74 0f                	je     404080 <fmt_fp+0x1200>
  404071:	48 83 ef 01          	sub    $0x1,%rdi
  404075:	c6 07 30             	movb   $0x30,(%rdi)
  404078:	48 39 fa             	cmp    %rdi,%rdx
  40407b:	73 13                	jae    404090 <fmt_fp+0x1210>
  40407d:	0f 1f 00             	nopl   (%rax)
  404080:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  404084:	48 83 ef 02          	sub    $0x2,%rdi
  404088:	c6 07 30             	movb   $0x30,(%rdi)
  40408b:	48 39 fa             	cmp    %rdi,%rdx
  40408e:	72 f0                	jb     404080 <fmt_fp+0x1200>
  404090:	be 09 00 00 00       	mov    $0x9,%esi
  404095:	48 89 d7             	mov    %rdx,%rdi
  404098:	41 f6 07 20          	testb  $0x20,(%r15)
  40409c:	0f 84 9c 00 00 00    	je     40413e <fmt_fp+0x12be>
  4040a2:	49 83 c4 04          	add    $0x4,%r12
  4040a6:	4d 39 e6             	cmp    %r12,%r14
  4040a9:	0f 83 d1 fe ff ff    	jae    403f80 <fmt_fp+0x1100>
  4040af:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  4040b6:	49 89 dc             	mov    %rbx,%r12
  4040b9:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  4040c0:	45 85 ff             	test   %r15d,%r15d
  4040c3:	0f 85 36 04 00 00    	jne    4044ff <fmt_fp+0x167f>
  4040c9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4040d0:	0f 84 d8 fb ff ff    	je     403cae <fmt_fp+0xe2e>
  4040d6:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  4040dd:	f6 02 20             	testb  $0x20,(%rdx)
  4040e0:	0f 85 c8 fb ff ff    	jne    403cae <fmt_fp+0xe2e>
  4040e6:	be 01 00 00 00       	mov    $0x1,%esi
  4040eb:	48 8d 3d bb 40 00 00 	lea    0x40bb(%rip),%rdi        # 4081ad <_fini+0x1129>
  4040f2:	e8 29 25 00 00       	call   406620 <__fwritex>
  4040f7:	41 83 c7 09          	add    $0x9,%r15d
  4040fb:	41 83 ff 09          	cmp    $0x9,%r15d
  4040ff:	0f 8e a9 fb ff ff    	jle    403cae <fmt_fp+0xe2e>
  404105:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40410c:	b9 09 00 00 00       	mov    $0x9,%ecx
  404111:	44 89 fa             	mov    %r15d,%edx
  404114:	be 30 00 00 00       	mov    $0x30,%esi
  404119:	e8 62 ec ff ff       	call   402d80 <pad.part.0>
  40411e:	e9 8b fb ff ff       	jmp    403cae <fmt_fp+0xe2e>
  404123:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404128:	48 39 f7             	cmp    %rsi,%rdi
  40412b:	0f 84 b0 00 00 00    	je     4041e1 <fmt_fp+0x1361>
  404131:	48 29 fe             	sub    %rdi,%rsi
  404134:	41 f6 07 20          	testb  $0x20,(%r15)
  404138:	0f 85 64 ff ff ff    	jne    4040a2 <fmt_fp+0x1222>
  40413e:	4c 89 fa             	mov    %r15,%rdx
  404141:	e8 da 24 00 00       	call   406620 <__fwritex>
  404146:	66 0f 6f 05 e2 43 00 	movdqa 0x43e2(%rip),%xmm0        # 408530 <states+0x210>
  40414d:	00 
  40414e:	e9 4f ff ff ff       	jmp    4040a2 <fmt_fp+0x1222>
  404153:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40415a:	f6 00 20             	testb  $0x20,(%rax)
  40415d:	0f 85 4e f9 ff ff    	jne    403ab1 <fmt_fp+0xc31>
  404163:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40416a:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  404171:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  404178:	e8 a3 24 00 00       	call   406620 <__fwritex>
  40417d:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404183:	35 00 00 01 00       	xor    $0x10000,%eax
  404188:	a9 00 20 01 00       	test   $0x12000,%eax
  40418d:	0f 85 1e f9 ff ff    	jne    403ab1 <fmt_fp+0xc31>
  404193:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  40419a:	0f 85 11 f9 ff ff    	jne    403ab1 <fmt_fp+0xc31>
  4041a0:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  4041a6:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4041ac:	be 30 00 00 00       	mov    $0x30,%esi
  4041b1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4041b8:	e8 c3 eb ff ff       	call   402d80 <pad.part.0>
  4041bd:	e9 ef f8 ff ff       	jmp    403ab1 <fmt_fp+0xc31>
  4041c2:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4041c9:	f6 00 20             	testb  $0x20,(%rax)
  4041cc:	75 af                	jne    40417d <fmt_fp+0x12fd>
  4041ce:	eb 93                	jmp    404163 <fmt_fp+0x12e3>
  4041d0:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  4041d4:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4041d8:	4c 39 e3             	cmp    %r12,%rbx
  4041db:	0f 85 1e fe ff ff    	jne    403fff <fmt_fp+0x117f>
  4041e1:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  4041e5:	be 01 00 00 00       	mov    $0x1,%esi
  4041ea:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  4041ee:	e9 a5 fe ff ff       	jmp    404098 <fmt_fp+0x1218>
  4041f3:	d9 05 f7 42 00 00    	flds   0x42f7(%rip)        # 4084f0 <states+0x1d0>
  4041f9:	d9 05 01 43 00 00    	flds   0x4301(%rip)        # 408500 <states+0x1e0>
  4041ff:	b8 0e 00 00 00       	mov    $0xe,%eax
  404204:	44 29 f8             	sub    %r15d,%eax
  404207:	90                   	nop
  404208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40420f:	00 
  404210:	dc c9                	fmul   %st,%st(1)
  404212:	83 e8 01             	sub    $0x1,%eax
  404215:	73 f9                	jae    404210 <fmt_fp+0x1390>
  404217:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  40421e:	80 38 2d             	cmpb   $0x2d,(%rax)
  404221:	0f 84 c6 04 00 00    	je     4046ed <fmt_fp+0x186d>
  404227:	d9 ca                	fxch   %st(2)
  404229:	d8 c1                	fadd   %st(1),%st
  40422b:	de e1                	fsubp  %st,%st(1)
  40422d:	d9 c9                	fxch   %st(1)
  40422f:	e9 9d f3 ff ff       	jmp    4035d1 <fmt_fp+0x751>
  404234:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  40423b:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  40423f:	48 89 c2             	mov    %rax,%rdx
  404242:	48 29 fe             	sub    %rdi,%rsi
  404245:	e8 d6 23 00 00       	call   406620 <__fwritex>
  40424a:	e9 5f fa ff ff       	jmp    403cae <fmt_fp+0xe2e>
  40424f:	44 01 d8             	add    %r11d,%eax
  404252:	89 06                	mov    %eax,(%rsi)
  404254:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  404259:	0f 86 3e 05 00 00    	jbe    40479d <fmt_fp+0x191d>
  40425f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404266:	00 00 00 00 
  40426a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404271:	00 00 00 00 
  404275:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40427c:	00 00 00 00 
  404280:	48 89 f2             	mov    %rsi,%rdx
  404283:	48 83 ee 04          	sub    $0x4,%rsi
  404287:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  40428e:	4c 39 e6             	cmp    %r12,%rsi
  404291:	73 0d                	jae    4042a0 <fmt_fp+0x1420>
  404293:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  40429a:	00 00 
  40429c:	49 83 ec 04          	sub    $0x4,%r12
  4042a0:	8b 06                	mov    (%rsi),%eax
  4042a2:	83 c0 01             	add    $0x1,%eax
  4042a5:	89 06                	mov    %eax,(%rsi)
  4042a7:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  4042ac:	77 d2                	ja     404280 <fmt_fp+0x1400>
  4042ae:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  4042b5:	41 8b 0c 24          	mov    (%r12),%ecx
  4042b9:	4c 29 e0             	sub    %r12,%rax
  4042bc:	48 c1 f8 02          	sar    $0x2,%rax
  4042c0:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  4042c3:	83 f9 09             	cmp    $0x9,%ecx
  4042c6:	0f 86 43 f6 ff ff    	jbe    40390f <fmt_fp+0xa8f>
  4042cc:	b8 0a 00 00 00       	mov    $0xa,%eax
  4042d1:	0f 1f 40 00          	nopl   0x0(%rax)
  4042d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042dc:	00 00 00 00 
  4042e0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4042e3:	83 c7 01             	add    $0x1,%edi
  4042e6:	01 c0                	add    %eax,%eax
  4042e8:	39 c1                	cmp    %eax,%ecx
  4042ea:	73 f4                	jae    4042e0 <fmt_fp+0x1460>
  4042ec:	e9 1e f6 ff ff       	jmp    40390f <fmt_fp+0xa8f>
  4042f1:	be 01 00 00 00       	mov    $0x1,%esi
  4042f6:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  4042fc:	e9 d7 ec ff ff       	jmp    402fd8 <fmt_fp+0x158>
  404301:	be 01 00 00 00       	mov    $0x1,%esi
  404306:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40430c:	e9 b6 ec ff ff       	jmp    402fc7 <fmt_fp+0x147>
  404311:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404318:	f6 07 20             	testb  $0x20,(%rdi)
  40431b:	0f 84 9d f4 ff ff    	je     4037be <fmt_fp+0x93e>
  404321:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404327:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40432d:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  404334:	35 00 00 01 00       	xor    $0x10000,%eax
  404339:	a9 00 20 01 00       	test   $0x12000,%eax
  40433e:	75 0d                	jne    40434d <fmt_fp+0x14cd>
  404340:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404347:	0f 84 bd f4 ff ff    	je     40380a <fmt_fp+0x98a>
  40434d:	45 29 f7             	sub    %r14d,%r15d
  404350:	45 85 ff             	test   %r15d,%r15d
  404353:	0f 8e 9d f1 ff ff    	jle    4034f6 <fmt_fp+0x676>
  404359:	e9 64 f1 ff ff       	jmp    4034c2 <fmt_fp+0x642>
  40435e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  404365:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  404369:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  404370:	0f 85 9c 00 00 00    	jne    404412 <fmt_fp+0x1592>
  404376:	49 39 dc             	cmp    %rbx,%r12
  404379:	0f 83 01 01 00 00    	jae    404480 <fmt_fp+0x1600>
  40437f:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404383:	45 85 c9             	test   %r9d,%r9d
  404386:	0f 84 f4 00 00 00    	je     404480 <fmt_fp+0x1600>
  40438c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404393:	31 f6                	xor    %esi,%esi
  404395:	d1 c8                	ror    $1,%eax
  404397:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40439c:	0f 87 e3 00 00 00    	ja     404485 <fmt_fp+0x1605>
  4043a2:	31 f6                	xor    %esi,%esi
  4043a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4043a9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4043ac:	44 89 c8             	mov    %r9d,%eax
  4043af:	31 d2                	xor    %edx,%edx
  4043b1:	83 c6 01             	add    $0x1,%esi
  4043b4:	01 c9                	add    %ecx,%ecx
  4043b6:	f7 f1                	div    %ecx
  4043b8:	85 d2                	test   %edx,%edx
  4043ba:	74 ed                	je     4043a9 <fmt_fp+0x1529>
  4043bc:	48 63 f6             	movslq %esi,%rsi
  4043bf:	e9 00 fb ff ff       	jmp    403ec4 <fmt_fp+0x1044>
  4043c4:	db 2d 56 41 00 00    	fldt   0x4156(%rip)        # 408520 <states+0x200>
  4043ca:	d9 05 28 41 00 00    	flds   0x4128(%rip)        # 4084f8 <states+0x1d8>
  4043d0:	e9 fe f4 ff ff       	jmp    4038d3 <fmt_fp+0xa53>
  4043d5:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4043d9:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  4043dd:	e9 54 f2 ff ff       	jmp    403636 <fmt_fp+0x7b6>
  4043e2:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4043e8:	75 0f                	jne    4043f9 <fmt_fp+0x1579>
  4043ea:	49 39 f4             	cmp    %rsi,%r12
  4043ed:	73 0a                	jae    4043f9 <fmt_fp+0x1579>
  4043ef:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4043f3:	0f 85 ba f4 ff ff    	jne    4038b3 <fmt_fp+0xa33>
  4043f9:	d9 05 f5 40 00 00    	flds   0x40f5(%rip)        # 4084f4 <states+0x1d4>
  4043ff:	e9 b5 f4 ff ff       	jmp    4038b9 <fmt_fp+0xa39>
  404404:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404409:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40440d:	e9 4d f3 ff ff       	jmp    40375f <fmt_fp+0x8df>
  404412:	45 85 ff             	test   %r15d,%r15d
  404415:	0f 85 24 03 00 00    	jne    40473f <fmt_fp+0x18bf>
  40441b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404422:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  404428:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  40442e:	41 83 ce 20          	or     $0x20,%r14d
  404432:	e9 3d f5 ff ff       	jmp    403974 <fmt_fp+0xaf4>
  404437:	45 85 ff             	test   %r15d,%r15d
  40443a:	0f 85 bd f9 ff ff    	jne    403dfd <fmt_fp+0xf7d>
  404440:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404447:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40444d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404453:	41 83 ce 20          	or     $0x20,%r14d
  404457:	41 83 fe 66          	cmp    $0x66,%r14d
  40445b:	0f 85 08 f5 ff ff    	jne    403969 <fmt_fp+0xae9>
  404461:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  404467:	0f 84 fa 02 00 00    	je     404767 <fmt_fp+0x18e7>
  40446d:	85 ff                	test   %edi,%edi
  40446f:	0f 85 ce f9 ff ff    	jne    403e43 <fmt_fp+0xfc3>
  404475:	e9 df f5 ff ff       	jmp    403a59 <fmt_fp+0xbd9>
  40447a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404480:	be 09 00 00 00       	mov    $0x9,%esi
  404485:	48 89 d8             	mov    %rbx,%rax
  404488:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40448f:	48 63 d7             	movslq %edi,%rdx
  404492:	48 c1 f8 02          	sar    $0x2,%rax
  404496:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40449b:	48 01 d0             	add    %rdx,%rax
  40449e:	ba 00 00 00 00       	mov    $0x0,%edx
  4044a3:	48 29 f0             	sub    %rsi,%rax
  4044a6:	48 0f 48 c2          	cmovs  %rdx,%rax
  4044aa:	49 63 d7             	movslq %r15d,%rdx
  4044ad:	48 39 d0             	cmp    %rdx,%rax
  4044b0:	48 0f 4f c2          	cmovg  %rdx,%rax
  4044b4:	41 89 c7             	mov    %eax,%r15d
  4044b7:	48 85 c0             	test   %rax,%rax
  4044ba:	0f 85 3d f9 ff ff    	jne    403dfd <fmt_fp+0xf7d>
  4044c0:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4044c7:	41 83 ce 20          	or     $0x20,%r14d
  4044cb:	41 83 fe 66          	cmp    $0x66,%r14d
  4044cf:	0f 84 9c 02 00 00    	je     404771 <fmt_fp+0x18f1>
  4044d5:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  4044db:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4044e1:	45 31 ff             	xor    %r15d,%r15d
  4044e4:	e9 80 f4 ff ff       	jmp    403969 <fmt_fp+0xae9>
  4044e9:	44 39 d7             	cmp    %r10d,%edi
  4044ec:	0f 8f 75 02 00 00    	jg     404767 <fmt_fp+0x18e7>
  4044f2:	85 ff                	test   %edi,%edi
  4044f4:	0f 8f 49 f9 ff ff    	jg     403e43 <fmt_fp+0xfc3>
  4044fa:	e9 5a f5 ff ff       	jmp    403a59 <fmt_fp+0xbd9>
  4044ff:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404506:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40450b:	48 89 f8             	mov    %rdi,%rax
  40450e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404512:	4c 29 e0             	sub    %r12,%rax
  404515:	48 39 d1             	cmp    %rdx,%rcx
  404518:	ba 00 00 00 00       	mov    $0x0,%edx
  40451d:	48 0f 42 c2          	cmovb  %rdx,%rax
  404521:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  404526:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40452d:	f6 00 20             	testb  $0x20,(%rax)
  404530:	0f 84 70 02 00 00    	je     4047a6 <fmt_fp+0x1926>
  404536:	45 85 ff             	test   %r15d,%r15d
  404539:	0f 8e b8 fb ff ff    	jle    4040f7 <fmt_fp+0x1277>
  40453f:	49 39 de             	cmp    %rbx,%r14
  404542:	0f 83 af fb ff ff    	jae    4040f7 <fmt_fp+0x1277>
  404548:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40454d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404551:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404555:	49 89 d9             	mov    %rbx,%r9
  404558:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40455f:	66 0f 6e c0          	movd   %eax,%xmm0
  404563:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  40456a:	cc cc cc 
  40456d:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  404572:	0f 1f 00             	nopl   (%rax)
  404575:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40457c:	00 00 00 00 
  404580:	41 8b 0e             	mov    (%r14),%ecx
  404583:	4c 89 c7             	mov    %r8,%rdi
  404586:	48 85 c9             	test   %rcx,%rcx
  404589:	74 67                	je     4045f2 <fmt_fp+0x1772>
  40458b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404592:	00 00 
  404594:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40459b:	00 00 00 00 
  40459f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045a6:	00 00 00 00 
  4045aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045b1:	00 00 00 00 
  4045b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045bc:	00 00 00 00 
  4045c0:	48 89 c8             	mov    %rcx,%rax
  4045c3:	48 83 ef 01          	sub    $0x1,%rdi
  4045c7:	49 f7 e4             	mul    %r12
  4045ca:	48 89 c8             	mov    %rcx,%rax
  4045cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4045d1:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  4045d5:	48 01 f6             	add    %rsi,%rsi
  4045d8:	48 29 f0             	sub    %rsi,%rax
  4045db:	83 c0 30             	add    $0x30,%eax
  4045de:	48 83 f9 09          	cmp    $0x9,%rcx
  4045e2:	48 89 d1             	mov    %rdx,%rcx
  4045e5:	88 07                	mov    %al,(%rdi)
  4045e7:	77 d7                	ja     4045c0 <fmt_fp+0x1740>
  4045e9:	49 39 fd             	cmp    %rdi,%r13
  4045ec:	0f 83 91 00 00 00    	jae    404683 <fmt_fp+0x1803>
  4045f2:	48 89 fe             	mov    %rdi,%rsi
  4045f5:	48 89 f8             	mov    %rdi,%rax
  4045f8:	4c 29 ee             	sub    %r13,%rsi
  4045fb:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  4045ff:	48 83 fa 0e          	cmp    $0xe,%rdx
  404603:	76 43                	jbe    404648 <fmt_fp+0x17c8>
  404605:	48 89 f1             	mov    %rsi,%rcx
  404608:	48 89 fa             	mov    %rdi,%rdx
  40460b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40460f:	48 29 ca             	sub    %rcx,%rdx
  404612:	f6 c1 10             	test   $0x10,%cl
  404615:	74 19                	je     404630 <fmt_fp+0x17b0>
  404617:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40461b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40461f:	48 39 d0             	cmp    %rdx,%rax
  404622:	74 1c                	je     404640 <fmt_fp+0x17c0>
  404624:	90                   	nop
  404625:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40462c:	00 00 00 00 
  404630:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404634:	48 83 e8 20          	sub    $0x20,%rax
  404638:	0f 11 00             	movups %xmm0,(%rax)
  40463b:	48 39 d0             	cmp    %rdx,%rax
  40463e:	75 f0                	jne    404630 <fmt_fp+0x17b0>
  404640:	48 39 f1             	cmp    %rsi,%rcx
  404643:	74 3b                	je     404680 <fmt_fp+0x1800>
  404645:	48 29 cf             	sub    %rcx,%rdi
  404648:	4c 89 e8             	mov    %r13,%rax
  40464b:	48 f7 d0             	not    %rax
  40464e:	48 01 f8             	add    %rdi,%rax
  404651:	48 83 ef 01          	sub    $0x1,%rdi
  404655:	c6 07 30             	movb   $0x30,(%rdi)
  404658:	49 39 fd             	cmp    %rdi,%r13
  40465b:	73 23                	jae    404680 <fmt_fp+0x1800>
  40465d:	a8 01                	test   $0x1,%al
  40465f:	74 0f                	je     404670 <fmt_fp+0x17f0>
  404661:	48 83 ef 01          	sub    $0x1,%rdi
  404665:	c6 07 30             	movb   $0x30,(%rdi)
  404668:	49 39 fd             	cmp    %rdi,%r13
  40466b:	73 13                	jae    404680 <fmt_fp+0x1800>
  40466d:	0f 1f 00             	nopl   (%rax)
  404670:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  404674:	48 83 ef 02          	sub    $0x2,%rdi
  404678:	c6 07 30             	movb   $0x30,(%rdi)
  40467b:	49 39 fd             	cmp    %rdi,%r13
  40467e:	72 f0                	jb     404670 <fmt_fp+0x17f0>
  404680:	4c 89 ef             	mov    %r13,%rdi
  404683:	f6 03 20             	testb  $0x20,(%rbx)
  404686:	74 28                	je     4046b0 <fmt_fp+0x1830>
  404688:	49 83 c6 04          	add    $0x4,%r14
  40468c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404690:	4d 39 ce             	cmp    %r9,%r14
  404693:	0f 83 62 fa ff ff    	jae    4040fb <fmt_fp+0x127b>
  404699:	85 c0                	test   %eax,%eax
  40469b:	0f 8e 5a fa ff ff    	jle    4040fb <fmt_fp+0x127b>
  4046a1:	41 89 c7             	mov    %eax,%r15d
  4046a4:	e9 d7 fe ff ff       	jmp    404580 <fmt_fp+0x1700>
  4046a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4046b0:	b8 09 00 00 00       	mov    $0x9,%eax
  4046b5:	48 89 da             	mov    %rbx,%rdx
  4046b8:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  4046bf:	41 39 c7             	cmp    %eax,%r15d
  4046c2:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  4046c9:	41 0f 4e c7          	cmovle %r15d,%eax
  4046cd:	48 63 f0             	movslq %eax,%rsi
  4046d0:	e8 4b 1f 00 00       	call   406620 <__fwritex>
  4046d5:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  4046dc:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  4046e3:	66 0f 6f 05 45 3e 00 	movdqa 0x3e45(%rip),%xmm0        # 408530 <states+0x210>
  4046ea:	00 
  4046eb:	eb 9b                	jmp    404688 <fmt_fp+0x1808>
  4046ed:	d9 ca                	fxch   %st(2)
  4046ef:	d9 e0                	fchs
  4046f1:	d8 e1                	fsub   %st(1),%st
  4046f3:	de c1                	faddp  %st,%st(1)
  4046f5:	d9 e0                	fchs
  4046f7:	d9 c9                	fxch   %st(1)
  4046f9:	e9 d3 ee ff ff       	jmp    4035d1 <fmt_fp+0x751>
  4046fe:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404702:	48 39 c3             	cmp    %rax,%rbx
  404705:	0f 85 c2 f1 ff ff    	jne    4038cd <fmt_fp+0xa4d>
  40470b:	d9 e8                	fld1
  40470d:	e9 c1 f1 ff ff       	jmp    4038d3 <fmt_fp+0xa53>
  404712:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404716:	4c 89 e9             	mov    %r13,%rcx
  404719:	e9 e2 f2 ff ff       	jmp    403a00 <fmt_fp+0xb80>
  40471e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  404724:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404729:	e9 32 ec ff ff       	jmp    403360 <fmt_fp+0x4e0>
  40472e:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404732:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  404736:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  40473a:	e9 01 ef ff ff       	jmp    403640 <fmt_fp+0x7c0>
  40473f:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404746:	74 1f                	je     404767 <fmt_fp+0x18e7>
  404748:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40474f:	41 83 c1 01          	add    $0x1,%r9d
  404753:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404758:	44 29 c8             	sub    %r9d,%eax
  40475b:	41 83 ce 20          	or     $0x20,%r14d
  40475f:	4c 63 d0             	movslq %eax,%r10
  404762:	e9 0d f2 ff ff       	jmp    403974 <fmt_fp+0xaf4>
  404767:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40476c:	e9 ee ec ff ff       	jmp    40345f <fmt_fp+0x5df>
  404771:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  404777:	74 ee                	je     404767 <fmt_fp+0x18e7>
  404779:	45 31 ff             	xor    %r15d,%r15d
  40477c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404782:	85 ff                	test   %edi,%edi
  404784:	0f 8f b9 f6 ff ff    	jg     403e43 <fmt_fp+0xfc3>
  40478a:	e9 ca f2 ff ff       	jmp    403a59 <fmt_fp+0xbd9>
  40478f:	dd d8                	fstp   %st(0)
  404791:	dd d8                	fstp   %st(0)
  404793:	dd d8                	fstp   %st(0)
  404795:	49 89 c0             	mov    %rax,%r8
  404798:	e9 82 ef ff ff       	jmp    40371f <fmt_fp+0x89f>
  40479d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4047a1:	e9 08 fb ff ff       	jmp    4042ae <fmt_fp+0x142e>
  4047a6:	48 89 c2             	mov    %rax,%rdx
  4047a9:	be 01 00 00 00       	mov    $0x1,%esi
  4047ae:	48 8d 3d f8 39 00 00 	lea    0x39f8(%rip),%rdi        # 4081ad <_fini+0x1129>
  4047b5:	e8 66 1e 00 00       	call   406620 <__fwritex>
  4047ba:	e9 77 fd ff ff       	jmp    404536 <fmt_fp+0x16b6>
  4047bf:	e8 dc e1 ff ff       	call   4029a0 <__stack_chk_fail>
  4047c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047cb:	00 00 00 
  4047ce:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047d5:	00 00 00 
  4047d8:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047df:	00 00 00 
  4047e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047e9:	00 00 00 
  4047ec:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047f3:	00 00 00 
  4047f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047fd:	00 00 00 

0000000000404800 <printf_core>:
  404800:	55                   	push   %rbp
  404801:	48 89 e5             	mov    %rsp,%rbp
  404804:	41 57                	push   %r15
  404806:	4c 8d 3d 13 3b 00 00 	lea    0x3b13(%rip),%r15        # 408320 <states>
  40480d:	41 56                	push   %r14
  40480f:	49 89 f6             	mov    %rsi,%r14
  404812:	41 55                	push   %r13
  404814:	45 31 ed             	xor    %r13d,%r13d
  404817:	41 54                	push   %r12
  404819:	53                   	push   %rbx
  40481a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  404821:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  404825:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  40482c:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  404833:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  40483a:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404841:	00 00 
  404843:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404847:	45 31 c0             	xor    %r8d,%r8d
  40484a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404851:	00 00 00 
  404854:	41 0f b6 06          	movzbl (%r14),%eax
  404858:	45 01 c5             	add    %r8d,%r13d
  40485b:	84 c0                	test   %al,%al
  40485d:	0f 84 ad 06 00 00    	je     404f10 <printf_core+0x710>
  404863:	4d 89 f2             	mov    %r14,%r10
  404866:	eb 25                	jmp    40488d <printf_core+0x8d>
  404868:	66 90                	xchg   %ax,%ax
  40486a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404871:	00 00 00 00 
  404875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40487c:	00 00 00 00 
  404880:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404885:	49 83 c2 01          	add    $0x1,%r10
  404889:	84 c0                	test   %al,%al
  40488b:	74 73                	je     404900 <printf_core+0x100>
  40488d:	3c 25                	cmp    $0x25,%al
  40488f:	75 ef                	jne    404880 <printf_core+0x80>
  404891:	4c 89 d3             	mov    %r10,%rbx
  404894:	eb 17                	jmp    4048ad <printf_core+0xad>
  404896:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40489d:	00 00 00 
  4048a0:	48 83 c3 02          	add    $0x2,%rbx
  4048a4:	49 83 c2 01          	add    $0x1,%r10
  4048a8:	80 3b 25             	cmpb   $0x25,(%rbx)
  4048ab:	75 06                	jne    4048b3 <printf_core+0xb3>
  4048ad:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  4048b1:	74 ed                	je     4048a0 <printf_core+0xa0>
  4048b3:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  4048b9:	4d 29 f2             	sub    %r14,%r10
  4048bc:	45 29 eb             	sub    %r13d,%r11d
  4048bf:	49 63 c3             	movslq %r11d,%rax
  4048c2:	49 39 c2             	cmp    %rax,%r10
  4048c5:	0f 8f 15 03 00 00    	jg     404be0 <printf_core+0x3e0>
  4048cb:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4048cf:	45 89 d0             	mov    %r10d,%r8d
  4048d2:	48 85 c0             	test   %rax,%rax
  4048d5:	74 09                	je     4048e0 <printf_core+0xe0>
  4048d7:	f6 00 20             	testb  $0x20,(%rax)
  4048da:	0f 84 10 03 00 00    	je     404bf0 <printf_core+0x3f0>
  4048e0:	45 85 d2             	test   %r10d,%r10d
  4048e3:	74 2b                	je     404910 <printf_core+0x110>
  4048e5:	45 39 c3             	cmp    %r8d,%r11d
  4048e8:	0f 8c f2 02 00 00    	jl     404be0 <printf_core+0x3e0>
  4048ee:	49 89 de             	mov    %rbx,%r14
  4048f1:	e9 5e ff ff ff       	jmp    404854 <printf_core+0x54>
  4048f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4048fd:	00 00 00 
  404900:	3c 25                	cmp    $0x25,%al
  404902:	74 8d                	je     404891 <printf_core+0x91>
  404904:	4c 89 d3             	mov    %r10,%rbx
  404907:	eb aa                	jmp    4048b3 <printf_core+0xb3>
  404909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404910:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404914:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404917:	89 c8                	mov    %ecx,%eax
  404919:	83 ff 09             	cmp    $0x9,%edi
  40491c:	77 1a                	ja     404938 <printf_core+0x138>
  40491e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  404922:	0f 84 e5 03 00 00    	je     404d0d <printf_core+0x50d>
  404928:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40492c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404931:	eb 1a                	jmp    40494d <printf_core+0x14d>
  404933:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404938:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40493c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404941:	83 e9 20             	sub    $0x20,%ecx
  404944:	83 f9 1f             	cmp    $0x1f,%ecx
  404947:	0f 87 b5 05 00 00    	ja     404f02 <printf_core+0x702>
  40494d:	45 31 e4             	xor    %r12d,%r12d
  404950:	be 89 28 01 00       	mov    $0x12889,%esi
  404955:	eb 48                	jmp    40499f <printf_core+0x19f>
  404957:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40495e:	00 
  40495f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404966:	00 00 00 00 
  40496a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404971:	00 00 00 00 
  404975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40497c:	00 00 00 00 
  404980:	b8 01 00 00 00       	mov    $0x1,%eax
  404985:	48 83 c2 01          	add    $0x1,%rdx
  404989:	d3 e0                	shl    %cl,%eax
  40498b:	0f be 0a             	movsbl (%rdx),%ecx
  40498e:	41 09 c4             	or     %eax,%r12d
  404991:	89 c8                	mov    %ecx,%eax
  404993:	83 e9 20             	sub    $0x20,%ecx
  404996:	83 f9 1f             	cmp    $0x1f,%ecx
  404999:	0f 87 49 01 00 00    	ja     404ae8 <printf_core+0x2e8>
  40499f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  4049a2:	0f a3 ce             	bt     %ecx,%esi
  4049a5:	72 d9                	jb     404980 <printf_core+0x180>
  4049a7:	3c 2a                	cmp    $0x2a,%al
  4049a9:	0f 85 39 01 00 00    	jne    404ae8 <printf_core+0x2e8>
  4049af:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  4049b4:	48 89 c8             	mov    %rcx,%rax
  4049b7:	83 e9 30             	sub    $0x30,%ecx
  4049ba:	83 f9 09             	cmp    $0x9,%ecx
  4049bd:	0f 86 0d 03 00 00    	jbe    404cd0 <printf_core+0x4d0>
  4049c3:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  4049c9:	85 c9                	test   %ecx,%ecx
  4049cb:	0f 85 dc 00 00 00    	jne    404aad <printf_core+0x2ad>
  4049d1:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4049d5:	45 89 d1             	mov    %r10d,%r9d
  4049d8:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4049dd:	0f 84 58 01 00 00    	je     404b3b <printf_core+0x33b>
  4049e3:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4049ea:	8b 06                	mov    (%rsi),%eax
  4049ec:	83 f8 2f             	cmp    $0x2f,%eax
  4049ef:	0f 87 4a 03 00 00    	ja     404d3f <printf_core+0x53f>
  4049f5:	89 c2                	mov    %eax,%edx
  4049f7:	83 c0 08             	add    $0x8,%eax
  4049fa:	48 03 56 10          	add    0x10(%rsi),%rdx
  4049fe:	89 06                	mov    %eax,(%rsi)
  404a00:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404a07:	00 00 00 
  404a0a:	44 8b 0a             	mov    (%rdx),%r9d
  404a0d:	44 89 e2             	mov    %r12d,%edx
  404a10:	0f b6 03             	movzbl (%rbx),%eax
  404a13:	80 ce 20             	or     $0x20,%dh
  404a16:	45 85 c9             	test   %r9d,%r9d
  404a19:	44 0f 48 e2          	cmovs  %edx,%r12d
  404a1d:	44 89 ca             	mov    %r9d,%edx
  404a20:	f7 da                	neg    %edx
  404a22:	45 85 c9             	test   %r9d,%r9d
  404a25:	44 0f 48 ca          	cmovs  %edx,%r9d
  404a29:	3c 2e                	cmp    $0x2e,%al
  404a2b:	0f 84 12 01 00 00    	je     404b43 <printf_core+0x343>
  404a31:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404a38:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404a3f:	31 c0                	xor    %eax,%eax
  404a41:	eb 5f                	jmp    404aa2 <printf_core+0x2a2>
  404a43:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404a49:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404a50:	00 00 00 00 
  404a54:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404a5b:	00 00 00 00 
  404a5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404a66:	00 00 00 00 
  404a6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404a71:	00 00 00 00 
  404a75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404a7c:	00 00 00 00 
  404a80:	89 c1                	mov    %eax,%ecx
  404a82:	48 63 d2             	movslq %edx,%rdx
  404a85:	48 83 c3 01          	add    $0x1,%rbx
  404a89:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  404a8d:	4c 01 fe             	add    %r15,%rsi
  404a90:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404a94:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404a97:	83 fa 07             	cmp    $0x7,%edx
  404a9a:	0f 87 90 01 00 00    	ja     404c30 <printf_core+0x430>
  404aa0:	89 f0                	mov    %esi,%eax
  404aa2:	0f be 13             	movsbl (%rbx),%edx
  404aa5:	83 ea 41             	sub    $0x41,%edx
  404aa8:	83 fa 39             	cmp    $0x39,%edx
  404aab:	76 d3                	jbe    404a80 <printf_core+0x280>
  404aad:	e8 de 16 00 00       	call   406190 <__errno_location>
  404ab2:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  404ab8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  404abe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404ac2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404ac9:	00 00 
  404acb:	0f 85 a2 0f 00 00    	jne    405a73 <printf_core+0x1273>
  404ad1:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404ad5:	44 89 d8             	mov    %r11d,%eax
  404ad8:	5b                   	pop    %rbx
  404ad9:	41 5c                	pop    %r12
  404adb:	41 5d                	pop    %r13
  404add:	41 5e                	pop    %r14
  404adf:	41 5f                	pop    %r15
  404ae1:	5d                   	pop    %rbp
  404ae2:	c3                   	ret
  404ae3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404ae8:	0f be 0a             	movsbl (%rdx),%ecx
  404aeb:	45 89 d1             	mov    %r10d,%r9d
  404aee:	48 89 d3             	mov    %rdx,%rbx
  404af1:	89 c8                	mov    %ecx,%eax
  404af3:	83 e9 30             	sub    $0x30,%ecx
  404af6:	83 f9 09             	cmp    $0x9,%ecx
  404af9:	77 40                	ja     404b3b <printf_core+0x33b>
  404afb:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404b02:	0f 8f c8 00 00 00    	jg     404bd0 <printf_core+0x3d0>
  404b08:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  404b0c:	83 e8 30             	sub    $0x30,%eax
  404b0f:	0f be c0             	movsbl %al,%eax
  404b12:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404b18:	39 f0                	cmp    %esi,%eax
  404b1a:	0f 8f b0 00 00 00    	jg     404bd0 <printf_core+0x3d0>
  404b20:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404b24:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404b28:	29 c8                	sub    %ecx,%eax
  404b2a:	41 89 c1             	mov    %eax,%r9d
  404b2d:	89 d0                	mov    %edx,%eax
  404b2f:	83 ea 30             	sub    $0x30,%edx
  404b32:	83 fa 09             	cmp    $0x9,%edx
  404b35:	0f 86 3d 0f 00 00    	jbe    405a78 <printf_core+0x1278>
  404b3b:	3c 2e                	cmp    $0x2e,%al
  404b3d:	0f 85 ee fe ff ff    	jne    404a31 <printf_core+0x231>
  404b43:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404b47:	3c 2a                	cmp    $0x2a,%al
  404b49:	0f 85 11 02 00 00    	jne    404d60 <printf_core+0x560>
  404b4f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404b53:	89 c2                	mov    %eax,%edx
  404b55:	83 e8 30             	sub    $0x30,%eax
  404b58:	83 f8 09             	cmp    $0x9,%eax
  404b5b:	77 0a                	ja     404b67 <printf_core+0x367>
  404b5d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  404b61:	0f 84 4f 03 00 00    	je     404eb6 <printf_core+0x6b6>
  404b67:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  404b6d:	85 c0                	test   %eax,%eax
  404b6f:	0f 85 38 ff ff ff    	jne    404aad <printf_core+0x2ad>
  404b75:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b7a:	0f 84 6f 03 00 00    	je     404eef <printf_core+0x6ef>
  404b80:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404b87:	8b 06                	mov    (%rsi),%eax
  404b89:	83 f8 2f             	cmp    $0x2f,%eax
  404b8c:	0f 87 60 02 00 00    	ja     404df2 <printf_core+0x5f2>
  404b92:	89 c2                	mov    %eax,%edx
  404b94:	83 c0 08             	add    $0x8,%eax
  404b97:	48 03 56 10          	add    0x10(%rsi),%rdx
  404b9b:	89 06                	mov    %eax,(%rsi)
  404b9d:	8b 02                	mov    (%rdx),%eax
  404b9f:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ba2:	f7 d0                	not    %eax
  404ba4:	c1 e8 1f             	shr    $0x1f,%eax
  404ba7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404bad:	48 83 c3 02          	add    $0x2,%rbx
  404bb1:	e9 89 fe ff ff       	jmp    404a3f <printf_core+0x23f>
  404bb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404bbd:	00 00 00 
  404bc0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404bc4:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404bc8:	83 e8 30             	sub    $0x30,%eax
  404bcb:	83 f8 09             	cmp    $0x9,%eax
  404bce:	77 10                	ja     404be0 <printf_core+0x3e0>
  404bd0:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404bd4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404bd8:	83 ea 30             	sub    $0x30,%edx
  404bdb:	83 fa 09             	cmp    $0x9,%edx
  404bde:	76 e0                	jbe    404bc0 <printf_core+0x3c0>
  404be0:	e8 ab 15 00 00       	call   406190 <__errno_location>
  404be5:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404beb:	e9 c8 fe ff ff       	jmp    404ab8 <printf_core+0x2b8>
  404bf0:	49 63 f2             	movslq %r10d,%rsi
  404bf3:	48 89 c2             	mov    %rax,%rdx
  404bf6:	4c 89 f7             	mov    %r14,%rdi
  404bf9:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404c00:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404c07:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404c0b:	e8 10 1a 00 00       	call   406620 <__fwritex>
  404c10:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404c17:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404c1e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404c22:	e9 b9 fc ff ff       	jmp    4048e0 <printf_core+0xe0>
  404c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404c2e:	00 00 
  404c30:	85 f6                	test   %esi,%esi
  404c32:	0f 84 75 fe ff ff    	je     404aad <printf_core+0x2ad>
  404c38:	83 fe 1b             	cmp    $0x1b,%esi
  404c3b:	0f 84 e5 00 00 00    	je     404d26 <printf_core+0x526>
  404c41:	83 ff ff             	cmp    $0xffffffff,%edi
  404c44:	0f 84 01 02 00 00    	je     404e4b <printf_core+0x64b>
  404c4a:	48 63 ff             	movslq %edi,%rdi
  404c4d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c52:	0f 84 b2 01 00 00    	je     404e0a <printf_core+0x60a>
  404c58:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404c5f:	48 c1 e7 04          	shl    $0x4,%rdi
  404c63:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404c68:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404c6c:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404c70:	f6 07 20             	testb  $0x20,(%rdi)
  404c73:	0f 85 3f fe ff ff    	jne    404ab8 <printf_core+0x2b8>
  404c79:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404c7d:	89 d6                	mov    %edx,%esi
  404c7f:	85 c0                	test   %eax,%eax
  404c81:	74 13                	je     404c96 <printf_core+0x496>
  404c83:	89 d7                	mov    %edx,%edi
  404c85:	83 e6 df             	and    $0xffffffdf,%esi
  404c88:	83 e7 0f             	and    $0xf,%edi
  404c8b:	40 0f be f6          	movsbl %sil,%esi
  404c8f:	40 80 ff 03          	cmp    $0x3,%dil
  404c93:	0f 44 d6             	cmove  %esi,%edx
  404c96:	44 89 e6             	mov    %r12d,%esi
  404c99:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404c9f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404ca6:	44 0f 45 e6          	cmovne %esi,%r12d
  404caa:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404cad:	83 fe 37             	cmp    $0x37,%esi
  404cb0:	0f 87 c2 02 00 00    	ja     404f78 <printf_core+0x778>
  404cb6:	48 8d 3d 4b 35 00 00 	lea    0x354b(%rip),%rdi        # 408208 <_fini+0x1184>
  404cbd:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404cc1:	48 01 fe             	add    %rdi,%rsi
  404cc4:	3e ff e6             	notrack jmp *%rsi
  404cc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404cce:	00 00 
  404cd0:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404cd4:	0f 84 ab 01 00 00    	je     404e85 <printf_core+0x685>
  404cda:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404ce0:	85 f6                	test   %esi,%esi
  404ce2:	0f 85 c5 fd ff ff    	jne    404aad <printf_core+0x2ad>
  404ce8:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404cec:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404cf1:	0f 85 ec fc ff ff    	jne    4049e3 <printf_core+0x1e3>
  404cf7:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404cfe:	45 89 d1             	mov    %r10d,%r9d
  404d01:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404d08:	e9 32 fd ff ff       	jmp    404a3f <printf_core+0x23f>
  404d0d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404d11:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404d15:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404d1c:	00 00 00 
  404d1f:	89 c8                	mov    %ecx,%eax
  404d21:	e9 1b fc ff ff       	jmp    404941 <printf_core+0x141>
  404d26:	83 ff ff             	cmp    $0xffffffff,%edi
  404d29:	0f 85 7e fd ff ff    	jne    404aad <printf_core+0x2ad>
  404d2f:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d34:	0f 85 32 ff ff ff    	jne    404c6c <printf_core+0x46c>
  404d3a:	e9 af fb ff ff       	jmp    4048ee <printf_core+0xee>
  404d3f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404d46:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404d4a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404d4e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404d52:	e9 a9 fc ff ff       	jmp    404a00 <printf_core+0x200>
  404d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404d5e:	00 00 
  404d60:	0f be d0             	movsbl %al,%edx
  404d63:	48 83 c3 01          	add    $0x1,%rbx
  404d67:	83 ea 30             	sub    $0x30,%edx
  404d6a:	83 fa 09             	cmp    $0x9,%edx
  404d6d:	0f 87 93 0b 00 00    	ja     405906 <printf_core+0x1106>
  404d73:	44 89 d2             	mov    %r10d,%edx
  404d76:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404d7c:	0f 8f fe 0c 00 00    	jg     405a80 <printf_core+0x1280>
  404d82:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404d85:	83 e8 30             	sub    $0x30,%eax
  404d88:	0f be c0             	movsbl %al,%eax
  404d8b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404d91:	39 c2                	cmp    %eax,%edx
  404d93:	0f 8d 87 00 00 00    	jge    404e20 <printf_core+0x620>
  404d99:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404d9d:	83 e8 30             	sub    $0x30,%eax
  404da0:	83 f8 09             	cmp    $0x9,%eax
  404da3:	0f 87 8b 0a 00 00    	ja     405834 <printf_core+0x1034>
  404da9:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404dad:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404db1:	83 ea 30             	sub    $0x30,%edx
  404db4:	83 fa 09             	cmp    $0x9,%edx
  404db7:	77 20                	ja     404dd9 <printf_core+0x5d9>
  404db9:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404dbd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404dc1:	83 ea 30             	sub    $0x30,%edx
  404dc4:	83 fa 09             	cmp    $0x9,%edx
  404dc7:	77 13                	ja     404ddc <printf_core+0x5dc>
  404dc9:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404dcd:	48 83 c0 02          	add    $0x2,%rax
  404dd1:	83 ea 30             	sub    $0x30,%edx
  404dd4:	83 fa 09             	cmp    $0x9,%edx
  404dd7:	76 e0                	jbe    404db9 <printf_core+0x5b9>
  404dd9:	48 89 c3             	mov    %rax,%rbx
  404ddc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404de3:	00 00 00 
  404de6:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404ded:	e9 4d fc ff ff       	jmp    404a3f <printf_core+0x23f>
  404df2:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404df9:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404dfd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404e01:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404e05:	e9 93 fd ff ff       	jmp    404b9d <printf_core+0x39d>
  404e0a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404e11:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404e14:	e9 d5 fa ff ff       	jmp    4048ee <printf_core+0xee>
  404e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404e20:	48 83 c3 01          	add    $0x1,%rbx
  404e24:	29 c8                	sub    %ecx,%eax
  404e26:	0f be 0b             	movsbl (%rbx),%ecx
  404e29:	89 c2                	mov    %eax,%edx
  404e2b:	89 c8                	mov    %ecx,%eax
  404e2d:	83 e9 30             	sub    $0x30,%ecx
  404e30:	83 f9 09             	cmp    $0x9,%ecx
  404e33:	0f 86 3d ff ff ff    	jbe    404d76 <printf_core+0x576>
  404e39:	89 55 80             	mov    %edx,-0x80(%rbp)
  404e3c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404e43:	00 00 00 
  404e46:	e9 f4 fb ff ff       	jmp    404a3f <printf_core+0x23f>
  404e4b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e50:	0f 84 15 0c 00 00    	je     405a6b <printf_core+0x126b>
  404e56:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404e5d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404e61:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404e67:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404e6e:	e8 1d dd ff ff       	call   402b90 <pop_arg>
  404e73:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404e79:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404e80:	e9 e7 fd ff ff       	jmp    404c6c <printf_core+0x46c>
  404e85:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404e89:	48 83 e8 30          	sub    $0x30,%rax
  404e8d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e92:	0f 84 b6 09 00 00    	je     40584e <printf_core+0x104e>
  404e98:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404e9f:	48 c1 e0 04          	shl    $0x4,%rax
  404ea3:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404eaa:	00 00 00 
  404ead:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404eb1:	e9 57 fb ff ff       	jmp    404a0d <printf_core+0x20d>
  404eb6:	48 0f be c2          	movsbq %dl,%rax
  404eba:	48 83 e8 30          	sub    $0x30,%rax
  404ebe:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404ec3:	0f 84 a9 09 00 00    	je     405872 <printf_core+0x1072>
  404ec9:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404ed0:	48 c1 e0 04          	shl    $0x4,%rax
  404ed4:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404ed8:	89 45 80             	mov    %eax,-0x80(%rbp)
  404edb:	f7 d0                	not    %eax
  404edd:	c1 e8 1f             	shr    $0x1f,%eax
  404ee0:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404ee6:	48 83 c3 04          	add    $0x4,%rbx
  404eea:	e9 50 fb ff ff       	jmp    404a3f <printf_core+0x23f>
  404eef:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404ef3:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404efa:	00 00 00 
  404efd:	e9 ab fc ff ff       	jmp    404bad <printf_core+0x3ad>
  404f02:	48 89 d3             	mov    %rdx,%rbx
  404f05:	45 89 d1             	mov    %r10d,%r9d
  404f08:	45 31 e4             	xor    %r12d,%r12d
  404f0b:	e9 2b fc ff ff       	jmp    404b3b <printf_core+0x33b>
  404f10:	45 89 eb             	mov    %r13d,%r11d
  404f13:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404f18:	0f 85 a0 fb ff ff    	jne    404abe <printf_core+0x2be>
  404f1e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404f25:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404f2b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404f31:	48 83 c7 10          	add    $0x10,%rdi
  404f35:	85 c9                	test   %ecx,%ecx
  404f37:	0f 84 2e 0b 00 00    	je     405a6b <printf_core+0x126b>
  404f3d:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404f44:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404f4b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404f4f:	85 f6                	test   %esi,%esi
  404f51:	0f 84 90 0a 00 00    	je     4059e7 <printf_core+0x11e7>
  404f57:	e8 34 dc ff ff       	call   402b90 <pop_arg>
  404f5c:	49 83 c0 01          	add    $0x1,%r8
  404f60:	48 83 c7 10          	add    $0x10,%rdi
  404f64:	49 83 f8 0a          	cmp    $0xa,%r8
  404f68:	75 e1                	jne    404f4b <printf_core+0x74b>
  404f6a:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404f70:	e9 49 fb ff ff       	jmp    404abe <printf_core+0x2be>
  404f75:	0f 1f 00             	nopl   (%rax)
  404f78:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404f7c:	4c 29 f0             	sub    %r14,%rax
  404f7f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404f86:	48 89 c7             	mov    %rax,%rdi
  404f89:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404f8d:	48 39 c7             	cmp    %rax,%rdi
  404f90:	0f 8e da 07 00 00    	jle    405770 <printf_core+0xf70>
  404f96:	48 89 f8             	mov    %rdi,%rax
  404f99:	48 8d 3d 0f 32 00 00 	lea    0x320f(%rip),%rdi        # 4081af <_fini+0x112b>
  404fa0:	89 45 80             	mov    %eax,-0x80(%rbp)
  404fa3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404faa:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404fb0:	44 89 d0             	mov    %r10d,%eax
  404fb3:	66 90                	xchg   %ax,%ax
  404fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404fbc:	00 00 00 00 
  404fc0:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404fc6:	41 39 c9             	cmp    %ecx,%r9d
  404fc9:	41 89 c8             	mov    %ecx,%r8d
  404fcc:	45 0f 4d c1          	cmovge %r9d,%r8d
  404fd0:	45 39 c3             	cmp    %r8d,%r11d
  404fd3:	0f 8c 07 fc ff ff    	jl     404be0 <printf_core+0x3e0>
  404fd9:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404fe0:	0f 85 e2 06 00 00    	jne    4056c8 <printf_core+0xec8>
  404fe6:	41 39 c9             	cmp    %ecx,%r9d
  404fe9:	0f 8e 40 07 00 00    	jle    40572f <printf_core+0xf2f>
  404fef:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404ff3:	44 89 c2             	mov    %r8d,%edx
  404ff6:	be 20 00 00 00       	mov    $0x20,%esi
  404ffb:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405001:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  405008:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40500f:	e8 6c dd ff ff       	call   402d80 <pad.part.0>
  405014:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  405018:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  40501f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  405026:	f6 00 20             	testb  $0x20,(%rax)
  405029:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  40502f:	0f 84 07 07 00 00    	je     40573c <printf_core+0xf3c>
  405035:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40503c:	89 c1                	mov    %eax,%ecx
  40503e:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405041:	0f 8d a7 f8 ff ff    	jge    4048ee <printf_core+0xee>
  405047:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  40504e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405055:	8b 55 80             	mov    -0x80(%rbp),%edx
  405058:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40505c:	be 30 00 00 00       	mov    $0x30,%esi
  405061:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  405068:	e8 13 dd ff ff       	call   402d80 <pad.part.0>
  40506d:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405074:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  405078:	f6 00 20             	testb  $0x20,(%rax)
  40507b:	75 1b                	jne    405098 <printf_core+0x898>
  40507d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405081:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  405088:	4c 89 f7             	mov    %r14,%rdi
  40508b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  40508f:	e8 8c 15 00 00       	call   406620 <__fwritex>
  405094:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  405098:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  40509f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  4050a6:	0f 85 42 f8 ff ff    	jne    4048ee <printf_core+0xee>
  4050ac:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  4050b3:	0f 85 35 f8 ff ff    	jne    4048ee <printf_core+0xee>
  4050b9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4050bd:	44 89 c2             	mov    %r8d,%edx
  4050c0:	be 20 00 00 00       	mov    $0x20,%esi
  4050c5:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  4050c9:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  4050cf:	e8 ac dc ff ff       	call   402d80 <pad.part.0>
  4050d4:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  4050d8:	e9 11 f8 ff ff       	jmp    4048ee <printf_core+0xee>
  4050dd:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  4050e1:	45 85 c0             	test   %r8d,%r8d
  4050e4:	79 0d                	jns    4050f3 <printf_core+0x8f3>
  4050e6:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  4050ed:	0f 85 ed fa ff ff    	jne    404be0 <printf_core+0x3e0>
  4050f3:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4050fa:	41 89 d0             	mov    %edx,%r8d
  4050fd:	44 89 ce             	mov    %r9d,%esi
  405100:	44 89 e1             	mov    %r12d,%ecx
  405103:	ff 75 98             	push   -0x68(%rbp)
  405106:	ff 75 90             	push   -0x70(%rbp)
  405109:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40510d:	8b 55 80             	mov    -0x80(%rbp),%edx
  405110:	e8 6b dd ff ff       	call   402e80 <fmt_fp>
  405115:	5e                   	pop    %rsi
  405116:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40511d:	83 f8 ff             	cmp    $0xffffffff,%eax
  405120:	41 89 c0             	mov    %eax,%r8d
  405123:	5f                   	pop    %rdi
  405124:	0f 85 bb f7 ff ff    	jne    4048e5 <printf_core+0xe5>
  40512a:	e9 b1 fa ff ff       	jmp    404be0 <printf_core+0x3e0>
  40512f:	90                   	nop
  405130:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405134:	48 85 f6             	test   %rsi,%rsi
  405137:	0f 88 4f 08 00 00    	js     40598c <printf_core+0x118c>
  40513d:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  405144:	0f 85 61 08 00 00    	jne    4059ab <printf_core+0x11ab>
  40514a:	41 f6 c4 01          	test   $0x1,%r12b
  40514e:	0f 85 7b 08 00 00    	jne    4059cf <printf_core+0x11cf>
  405154:	48 8d 3d 54 30 00 00 	lea    0x3054(%rip),%rdi        # 4081af <_fini+0x112b>
  40515b:	44 89 d0             	mov    %r10d,%eax
  40515e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405165:	48 85 f6             	test   %rsi,%rsi
  405168:	0f 84 55 08 00 00    	je     4059c3 <printf_core+0x11c3>
  40516e:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  405175:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405179:	89 c7                	mov    %eax,%edi
  40517b:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  405182:	cc cc cc 
  405185:	4d 89 c6             	mov    %r8,%r14
  405188:	90                   	nop
  405189:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405190:	00 00 00 00 
  405194:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40519b:	00 00 00 00 
  40519f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4051a6:	00 00 00 00 
  4051aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4051b1:	00 00 00 00 
  4051b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4051bc:	00 00 00 00 
  4051c0:	48 89 f0             	mov    %rsi,%rax
  4051c3:	49 83 ee 01          	sub    $0x1,%r14
  4051c7:	48 f7 e1             	mul    %rcx
  4051ca:	48 89 f0             	mov    %rsi,%rax
  4051cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4051d1:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  4051d5:	4d 01 d2             	add    %r10,%r10
  4051d8:	4c 29 d0             	sub    %r10,%rax
  4051db:	83 c0 30             	add    $0x30,%eax
  4051de:	48 83 fe 09          	cmp    $0x9,%rsi
  4051e2:	48 89 d6             	mov    %rdx,%rsi
  4051e5:	41 88 06             	mov    %al,(%r14)
  4051e8:	77 d6                	ja     4051c0 <printf_core+0x9c0>
  4051ea:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4051f1:	89 f8                	mov    %edi,%eax
  4051f3:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4051f6:	85 ff                	test   %edi,%edi
  4051f8:	79 0d                	jns    405207 <printf_core+0xa07>
  4051fa:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  405201:	0f 85 d9 f9 ff ff    	jne    404be0 <printf_core+0x3e0>
  405207:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40520d:	44 89 e2             	mov    %r12d,%edx
  405210:	8b 75 80             	mov    -0x80(%rbp),%esi
  405213:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  405219:	85 c9                	test   %ecx,%ecx
  40521b:	44 0f 45 e2          	cmovne %edx,%r12d
  40521f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  405224:	0f 94 c2             	sete   %dl
  405227:	85 f6                	test   %esi,%esi
  405229:	75 08                	jne    405233 <printf_core+0xa33>
  40522b:	84 d2                	test   %dl,%dl
  40522d:	0f 85 e4 05 00 00    	jne    405817 <printf_core+0x1017>
  405233:	4c 89 c7             	mov    %r8,%rdi
  405236:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  40523a:	0f b6 d2             	movzbl %dl,%edx
  40523d:	4c 29 f7             	sub    %r14,%rdi
  405240:	48 01 fa             	add    %rdi,%rdx
  405243:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  40524a:	48 39 ca             	cmp    %rcx,%rdx
  40524d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  405251:	48 63 ca             	movslq %edx,%rcx
  405254:	48 39 cf             	cmp    %rcx,%rdi
  405257:	0f 4e fa             	cmovle %edx,%edi
  40525a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  40525f:	29 c2                	sub    %eax,%edx
  405261:	89 7d 80             	mov    %edi,-0x80(%rbp)
  405264:	39 fa                	cmp    %edi,%edx
  405266:	0f 8c 74 f9 ff ff    	jl     404be0 <printf_core+0x3e0>
  40526c:	8b 7d 80             	mov    -0x80(%rbp),%edi
  40526f:	01 c7                	add    %eax,%edi
  405271:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  405277:	e9 44 fd ff ff       	jmp    404fc0 <printf_core+0x7c0>
  40527c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405280:	48 85 c0             	test   %rax,%rax
  405283:	0f 84 9a 02 00 00    	je     405523 <printf_core+0xd23>
  405289:	44 89 e7             	mov    %r12d,%edi
  40528c:	83 e7 08             	and    $0x8,%edi
  40528f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  405295:	89 d7                	mov    %edx,%edi
  405297:	83 e7 20             	and    $0x20,%edi
  40529a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  4052a0:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4052a4:	48 8d 35 65 30 00 00 	lea    0x3065(%rip),%rsi        # 408310 <xdigits>
  4052ab:	4d 89 c6             	mov    %r8,%r14
  4052ae:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4052b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4052bc:	00 00 00 00 
  4052c0:	48 89 c1             	mov    %rax,%rcx
  4052c3:	49 83 ee 01          	sub    $0x1,%r14
  4052c7:	83 e1 0f             	and    $0xf,%ecx
  4052ca:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  4052ce:	09 fa                	or     %edi,%edx
  4052d0:	48 c1 e8 04          	shr    $0x4,%rax
  4052d4:	41 88 16             	mov    %dl,(%r14)
  4052d7:	75 e7                	jne    4052c0 <printf_core+0xac0>
  4052d9:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  4052df:	85 c0                	test   %eax,%eax
  4052e1:	0f 85 f9 05 00 00    	jne    4058e0 <printf_core+0x10e0>
  4052e7:	48 8d 3d c1 2e 00 00 	lea    0x2ec1(%rip),%rdi        # 4081af <_fini+0x112b>
  4052ee:	44 89 d0             	mov    %r10d,%eax
  4052f1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4052f8:	e9 f6 fe ff ff       	jmp    4051f3 <printf_core+0x9f3>
  4052fd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405301:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405305:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40530c:	48 85 d2             	test   %rdx,%rdx
  40530f:	0f 84 06 07 00 00    	je     405a1b <printf_core+0x121b>
  405315:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40531c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  405320:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  405327:	31 db                	xor    %ebx,%ebx
  405329:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  405330:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  405334:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40533b:	49 89 ce             	mov    %rcx,%r14
  40533e:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405342:	49 89 d5             	mov    %rdx,%r13
  405345:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40534c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405353:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40535a:	eb 34                	jmp    405390 <printf_core+0xb90>
  40535c:	0f 1f 40 00          	nopl   0x0(%rax)
  405360:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  405367:	e8 24 10 00 00       	call   406390 <wctomb>
  40536c:	85 c0                	test   %eax,%eax
  40536e:	0f 88 44 f7 ff ff    	js     404ab8 <printf_core+0x2b8>
  405374:	4c 89 ea             	mov    %r13,%rdx
  405377:	48 98                	cltq
  405379:	48 29 da             	sub    %rbx,%rdx
  40537c:	48 39 c2             	cmp    %rax,%rdx
  40537f:	72 16                	jb     405397 <printf_core+0xb97>
  405381:	48 01 c3             	add    %rax,%rbx
  405384:	4d 63 ec             	movslq %r12d,%r13
  405387:	49 83 c6 04          	add    $0x4,%r14
  40538b:	4c 39 eb             	cmp    %r13,%rbx
  40538e:	73 07                	jae    405397 <printf_core+0xb97>
  405390:	41 8b 36             	mov    (%r14),%esi
  405393:	85 f6                	test   %esi,%esi
  405395:	75 c9                	jne    405360 <printf_core+0xb60>
  405397:	49 89 de             	mov    %rbx,%r14
  40539a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4053a1:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  4053a8:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  4053af:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  4053b6:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  4053bd:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  4053c1:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  4053c8:	0f 87 12 f8 ff ff    	ja     404be0 <printf_core+0x3e0>
  4053ce:	45 39 f1             	cmp    %r14d,%r9d
  4053d1:	44 89 f0             	mov    %r14d,%eax
  4053d4:	0f 9e c2             	setle  %dl
  4053d7:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4053de:	0f 95 c1             	setne  %cl
  4053e1:	08 d1                	or     %dl,%cl
  4053e3:	0f 84 5c 05 00 00    	je     405945 <printf_core+0x1145>
  4053e9:	4d 85 f6             	test   %r14,%r14
  4053ec:	0f 84 96 06 00 00    	je     405a88 <printf_core+0x1288>
  4053f2:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  4053f6:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  4053fd:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405404:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40540b:	45 31 e4             	xor    %r12d,%r12d
  40540e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405415:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405419:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40541d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  405424:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  40542b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405431:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  405437:	eb 10                	jmp    405449 <printf_core+0xc49>
  405439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405440:	4d 39 f4             	cmp    %r14,%r12
  405443:	0f 83 46 03 00 00    	jae    40578f <printf_core+0xf8f>
  405449:	8b 33                	mov    (%rbx),%esi
  40544b:	85 f6                	test   %esi,%esi
  40544d:	0f 84 3c 03 00 00    	je     40578f <printf_core+0xf8f>
  405453:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405457:	e8 34 0f 00 00       	call   406390 <wctomb>
  40545c:	48 63 f0             	movslq %eax,%rsi
  40545f:	49 01 f4             	add    %rsi,%r12
  405462:	4d 39 e6             	cmp    %r12,%r14
  405465:	0f 82 24 03 00 00    	jb     40578f <printf_core+0xf8f>
  40546b:	48 83 c3 04          	add    $0x4,%rbx
  40546f:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  405474:	75 ca                	jne    405440 <printf_core+0xc40>
  405476:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  40547a:	4c 89 ea             	mov    %r13,%rdx
  40547d:	e8 9e 11 00 00       	call   406620 <__fwritex>
  405482:	eb bc                	jmp    405440 <printf_core+0xc40>
  405484:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405488:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40548c:	4d 89 c6             	mov    %r8,%r14
  40548f:	48 85 c0             	test   %rax,%rax
  405492:	74 21                	je     4054b5 <printf_core+0xcb5>
  405494:	90                   	nop
  405495:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40549c:	00 00 00 00 
  4054a0:	89 c2                	mov    %eax,%edx
  4054a2:	49 83 ee 01          	sub    $0x1,%r14
  4054a6:	83 e2 07             	and    $0x7,%edx
  4054a9:	83 c2 30             	add    $0x30,%edx
  4054ac:	48 c1 e8 03          	shr    $0x3,%rax
  4054b0:	41 88 16             	mov    %dl,(%r14)
  4054b3:	75 eb                	jne    4054a0 <printf_core+0xca0>
  4054b5:	41 f6 c4 08          	test   $0x8,%r12b
  4054b9:	0f 84 28 fe ff ff    	je     4052e7 <printf_core+0xae7>
  4054bf:	4c 89 c0             	mov    %r8,%rax
  4054c2:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  4054c6:	4c 29 f0             	sub    %r14,%rax
  4054c9:	48 39 d0             	cmp    %rdx,%rax
  4054cc:	0f 8c 15 fe ff ff    	jl     4052e7 <printf_core+0xae7>
  4054d2:	83 c0 01             	add    $0x1,%eax
  4054d5:	48 8d 3d d3 2c 00 00 	lea    0x2cd3(%rip),%rdi        # 4081af <_fini+0x112b>
  4054dc:	89 45 80             	mov    %eax,-0x80(%rbp)
  4054df:	44 89 d0             	mov    %r10d,%eax
  4054e2:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4054e9:	e9 05 fd ff ff       	jmp    4051f3 <printf_core+0x9f3>
  4054ee:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4054f1:	b8 10 00 00 00       	mov    $0x10,%eax
  4054f6:	ba 78 00 00 00       	mov    $0x78,%edx
  4054fb:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405502:	00 00 00 
  405505:	39 c7                	cmp    %eax,%edi
  405507:	0f 43 c7             	cmovae %edi,%eax
  40550a:	41 83 cc 08          	or     $0x8,%r12d
  40550e:	bf 20 00 00 00       	mov    $0x20,%edi
  405513:	89 45 80             	mov    %eax,-0x80(%rbp)
  405516:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40551a:	48 85 c0             	test   %rax,%rax
  40551d:	0f 85 77 fd ff ff    	jne    40529a <printf_core+0xa9a>
  405523:	48 8d 3d 85 2c 00 00 	lea    0x2c85(%rip),%rdi        # 4081af <_fini+0x112b>
  40552a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40552e:	44 89 d0             	mov    %r10d,%eax
  405531:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405538:	4d 89 c6             	mov    %r8,%r14
  40553b:	e9 b3 fc ff ff       	jmp    4051f3 <printf_core+0x9f3>
  405540:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405544:	48 8d 05 6e 2c 00 00 	lea    0x2c6e(%rip),%rax        # 4081b9 <_fini+0x1135>
  40554b:	4d 85 f6             	test   %r14,%r14
  40554e:	4c 0f 44 f0          	cmove  %rax,%r14
  405552:	8b 45 80             	mov    -0x80(%rbp),%eax
  405555:	85 c0                	test   %eax,%eax
  405557:	0f 88 36 03 00 00    	js     405893 <printf_core+0x1093>
  40555d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  405561:	4c 89 f7             	mov    %r14,%rdi
  405564:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40556b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405572:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405579:	e8 82 07 00 00       	call   405d00 <strnlen>
  40557e:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405585:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40558c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405593:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405597:	4c 29 f2             	sub    %r14,%rdx
  40559a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40559d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4055a4:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  4055ab:	48 89 d7             	mov    %rdx,%rdi
  4055ae:	48 63 d0             	movslq %eax,%rdx
  4055b1:	48 39 d7             	cmp    %rdx,%rdi
  4055b4:	0f 8e b9 01 00 00    	jle    405773 <printf_core+0xf73>
  4055ba:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4055c1:	e9 d3 f9 ff ff       	jmp    404f99 <printf_core+0x799>
  4055c6:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4055ca:	48 85 f6             	test   %rsi,%rsi
  4055cd:	0f 85 46 03 00 00    	jne    405919 <printf_core+0x1119>
  4055d3:	48 8d 3d d5 2b 00 00 	lea    0x2bd5(%rip),%rdi        # 4081af <_fini+0x112b>
  4055da:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  4055de:	44 89 d0             	mov    %r10d,%eax
  4055e1:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4055e8:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4055ef:	00 00 00 
  4055f2:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  4055f6:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4055fd:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405604:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40560b:	01 00 00 00 
  40560f:	e9 ac f9 ff ff       	jmp    404fc0 <printf_core+0x7c0>
  405614:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40561b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405622:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405629:	e8 62 0b 00 00       	call   406190 <__errno_location>
  40562e:	8b 38                	mov    (%rax),%edi
  405630:	e8 ab 0b 00 00       	call   4061e0 <strerror>
  405635:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  40563c:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405643:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40564a:	49 89 c6             	mov    %rax,%r14
  40564d:	e9 00 ff ff ff       	jmp    405552 <printf_core+0xd52>
  405652:	83 f8 07             	cmp    $0x7,%eax
  405655:	0f 87 93 f2 ff ff    	ja     4048ee <printf_core+0xee>
  40565b:	48 8d 15 86 2c 00 00 	lea    0x2c86(%rip),%rdx        # 4082e8 <_fini+0x1264>
  405662:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  405666:	48 01 d0             	add    %rdx,%rax
  405669:	3e ff e0             	notrack jmp *%rax
  40566c:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  405670:	49 63 c5             	movslq %r13d,%rax
  405673:	48 89 02             	mov    %rax,(%rdx)
  405676:	e9 73 f2 ff ff       	jmp    4048ee <printf_core+0xee>
  40567b:	48 8d 3d 2d 2b 00 00 	lea    0x2b2d(%rip),%rdi        # 4081af <_fini+0x112b>
  405682:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405686:	44 89 d0             	mov    %r10d,%eax
  405689:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405690:	e9 d0 fa ff ff       	jmp    405165 <printf_core+0x965>
  405695:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405699:	e9 35 ff ff ff       	jmp    4055d3 <printf_core+0xdd3>
  40569e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4056a2:	44 89 28             	mov    %r13d,(%rax)
  4056a5:	e9 44 f2 ff ff       	jmp    4048ee <printf_core+0xee>
  4056aa:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4056ae:	66 44 89 28          	mov    %r13w,(%rax)
  4056b2:	e9 37 f2 ff ff       	jmp    4048ee <printf_core+0xee>
  4056b7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4056bb:	44 88 28             	mov    %r13b,(%rax)
  4056be:	e9 2b f2 ff ff       	jmp    4048ee <printf_core+0xee>
  4056c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4056c8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4056cc:	f6 07 20             	testb  $0x20,(%rdi)
  4056cf:	74 6b                	je     40573c <printf_core+0xf3c>
  4056d1:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  4056d7:	44 89 e0             	mov    %r12d,%eax
  4056da:	41 39 c9             	cmp    %ecx,%r9d
  4056dd:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  4056e4:	35 00 00 01 00       	xor    $0x10000,%eax
  4056e9:	a9 00 20 01 00       	test   $0x12000,%eax
  4056ee:	75 28                	jne    405718 <printf_core+0xf18>
  4056f0:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  4056f7:	75 1f                	jne    405718 <printf_core+0xf18>
  4056f9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4056fd:	44 89 c2             	mov    %r8d,%edx
  405700:	be 30 00 00 00       	mov    $0x30,%esi
  405705:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40570c:	e8 6f d6 ff ff       	call   402d80 <pad.part.0>
  405711:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405718:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40571f:	89 c1                	mov    %eax,%ecx
  405721:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405724:	0f 8d 4a f9 ff ff    	jge    405074 <printf_core+0x874>
  40572a:	e9 26 f9 ff ff       	jmp    405055 <printf_core+0x855>
  40572f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405733:	f6 07 20             	testb  $0x20,(%rdi)
  405736:	0f 85 f9 f8 ff ff    	jne    405035 <printf_core+0x835>
  40573c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405740:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405747:	48 63 f0             	movslq %eax,%rsi
  40574a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405751:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405758:	e8 c3 0e 00 00       	call   406620 <__fwritex>
  40575d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  405764:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  40576b:	e9 61 ff ff ff       	jmp    4056d1 <printf_core+0xed1>
  405770:	8b 45 80             	mov    -0x80(%rbp),%eax
  405773:	48 8d 3d 35 2a 00 00 	lea    0x2a35(%rip),%rdi        # 4081af <_fini+0x112b>
  40577a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405780:	44 89 d0             	mov    %r10d,%eax
  405783:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40578a:	e9 31 f8 ff ff       	jmp    404fc0 <printf_core+0x7c0>
  40578f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405796:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40579d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  4057a4:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  4057ab:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  4057b1:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  4057b8:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  4057bf:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  4057c6:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  4057cd:	75 39                	jne    405808 <printf_core+0x1008>
  4057cf:	84 d2                	test   %dl,%dl
  4057d1:	75 35                	jne    405808 <printf_core+0x1008>
  4057d3:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4057d7:	89 c1                	mov    %eax,%ecx
  4057d9:	44 89 ca             	mov    %r9d,%edx
  4057dc:	be 20 00 00 00       	mov    $0x20,%esi
  4057e1:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4057e8:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4057ee:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4057f2:	e8 89 d5 ff ff       	call   402d80 <pad.part.0>
  4057f7:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4057fe:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405804:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405808:	41 39 c1             	cmp    %eax,%r9d
  40580b:	41 0f 4d c1          	cmovge %r9d,%eax
  40580f:	41 89 c0             	mov    %eax,%r8d
  405812:	e9 ce f0 ff ff       	jmp    4048e5 <printf_core+0xe5>
  405817:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40581d:	4d 89 c6             	mov    %r8,%r14
  405820:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  405824:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  40582b:	00 00 00 00 
  40582f:	e9 8c f7 ff ff       	jmp    404fc0 <printf_core+0x7c0>
  405834:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40583b:	00 00 00 
  40583e:	48 83 c3 01          	add    $0x1,%rbx
  405842:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405849:	e9 f1 f1 ff ff       	jmp    404a3f <printf_core+0x23f>
  40584e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405855:	45 89 d1             	mov    %r10d,%r9d
  405858:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40585f:	00 00 00 
  405862:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  405869:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  40586d:	e9 c9 f2 ff ff       	jmp    404b3b <printf_core+0x33b>
  405872:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405879:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40587d:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405884:	00 00 00 
  405887:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40588e:	e9 53 f6 ff ff       	jmp    404ee6 <printf_core+0x6e6>
  405893:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405898:	4c 89 f7             	mov    %r14,%rdi
  40589b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40589f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  4058a6:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4058ad:	e8 4e 04 00 00       	call   405d00 <strnlen>
  4058b2:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4058b6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4058bd:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  4058c1:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  4058c8:	80 3a 00             	cmpb   $0x0,(%rdx)
  4058cb:	0f 84 c6 fc ff ff    	je     405597 <printf_core+0xd97>
  4058d1:	e9 0a f3 ff ff       	jmp    404be0 <printf_core+0x3e0>
  4058d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4058dd:	00 00 00 
  4058e0:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  4058e6:	48 8d 15 c2 28 00 00 	lea    0x28c2(%rip),%rdx        # 4081af <_fini+0x112b>
  4058ed:	c1 f8 04             	sar    $0x4,%eax
  4058f0:	48 98                	cltq
  4058f2:	48 01 d0             	add    %rdx,%rax
  4058f5:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4058fc:	b8 02 00 00 00       	mov    $0x2,%eax
  405901:	e9 ed f8 ff ff       	jmp    4051f3 <printf_core+0x9f3>
  405906:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40590a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405911:	00 00 00 
  405914:	e9 26 f1 ff ff       	jmp    404a3f <printf_core+0x23f>
  405919:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40591d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  405920:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  405927:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  40592e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  405932:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  405939:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405940:	e9 d0 f9 ff ff       	jmp    405315 <printf_core+0xb15>
  405945:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405949:	44 89 ca             	mov    %r9d,%edx
  40594c:	44 89 f1             	mov    %r14d,%ecx
  40594f:	be 20 00 00 00       	mov    $0x20,%esi
  405954:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40595b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40595f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  405966:	e8 15 d4 ff ff       	call   402d80 <pad.part.0>
  40596b:	4d 85 f6             	test   %r14,%r14
  40596e:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405972:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405978:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  40597f:	0f 84 83 fe ff ff    	je     405808 <printf_core+0x1008>
  405985:	31 d2                	xor    %edx,%edx
  405987:	e9 66 fa ff ff       	jmp    4053f2 <printf_core+0xbf2>
  40598c:	48 f7 de             	neg    %rsi
  40598f:	48 8d 3d 19 28 00 00 	lea    0x2819(%rip),%rdi        # 4081af <_fini+0x112b>
  405996:	b8 01 00 00 00       	mov    $0x1,%eax
  40599b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40599f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4059a6:	e9 c3 f7 ff ff       	jmp    40516e <printf_core+0x96e>
  4059ab:	48 8d 3d fe 27 00 00 	lea    0x27fe(%rip),%rdi        # 4081b0 <_fini+0x112c>
  4059b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4059b7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4059be:	e9 a2 f7 ff ff       	jmp    405165 <printf_core+0x965>
  4059c3:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4059c7:	4d 89 c6             	mov    %r8,%r14
  4059ca:	e9 24 f8 ff ff       	jmp    4051f3 <printf_core+0x9f3>
  4059cf:	48 8d 3d db 27 00 00 	lea    0x27db(%rip),%rdi        # 4081b1 <_fini+0x112d>
  4059d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4059db:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4059e2:	e9 7e f7 ff ff       	jmp    405165 <printf_core+0x965>
  4059e7:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  4059ee:	eb 1e                	jmp    405a0e <printf_core+0x120e>
  4059f0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4059f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4059fc:	00 00 00 00 
  405a00:	49 83 c0 01          	add    $0x1,%r8
  405a04:	49 83 f8 0a          	cmp    $0xa,%r8
  405a08:	0f 84 5c f5 ff ff    	je     404f6a <printf_core+0x76a>
  405a0e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405a12:	85 d2                	test   %edx,%edx
  405a14:	74 ea                	je     405a00 <printf_core+0x1200>
  405a16:	e9 92 f0 ff ff       	jmp    404aad <printf_core+0x2ad>
  405a1b:	45 85 c9             	test   %r9d,%r9d
  405a1e:	0f 94 c0             	sete   %al
  405a21:	89 c2                	mov    %eax,%edx
  405a23:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  405a2a:	75 5c                	jne    405a88 <printf_core+0x1288>
  405a2c:	84 c0                	test   %al,%al
  405a2e:	75 58                	jne    405a88 <printf_core+0x1288>
  405a30:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405a34:	44 89 ca             	mov    %r9d,%edx
  405a37:	31 c9                	xor    %ecx,%ecx
  405a39:	be 20 00 00 00       	mov    $0x20,%esi
  405a3e:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405a45:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405a49:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405a50:	e8 2b d3 ff ff       	call   402d80 <pad.part.0>
  405a55:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405a5b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405a5f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405a66:	e9 9d fd ff ff       	jmp    405808 <printf_core+0x1008>
  405a6b:	45 31 db             	xor    %r11d,%r11d
  405a6e:	e9 4b f0 ff ff       	jmp    404abe <printf_core+0x2be>
  405a73:	e8 28 cf ff ff       	call   4029a0 <__stack_chk_fail>
  405a78:	48 89 da             	mov    %rbx,%rdx
  405a7b:	e9 7b f0 ff ff       	jmp    404afb <printf_core+0x2fb>
  405a80:	48 89 d8             	mov    %rbx,%rax
  405a83:	e9 31 f3 ff ff       	jmp    404db9 <printf_core+0x5b9>
  405a88:	44 89 d0             	mov    %r10d,%eax
  405a8b:	e9 2f fd ff ff       	jmp    4057bf <printf_core+0xfbf>

0000000000405a90 <vfprintf>:
  405a90:	f3 0f 1e fa          	endbr64
  405a94:	55                   	push   %rbp
  405a95:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405a99:	48 89 e5             	mov    %rsp,%rbp
  405a9c:	41 57                	push   %r15
  405a9e:	41 56                	push   %r14
  405aa0:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  405aa7:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405aae:	41 55                	push   %r13
  405ab0:	4c 89 f1             	mov    %r14,%rcx
  405ab3:	49 89 fd             	mov    %rdi,%r13
  405ab6:	31 ff                	xor    %edi,%edi
  405ab8:	41 54                	push   %r12
  405aba:	53                   	push   %rbx
  405abb:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405ac2:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405ac9:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405ad0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405ad7:	00 00 
  405ad9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  405add:	31 c0                	xor    %eax,%eax
  405adf:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405ae6:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  405aed:	00 00 00 00 
  405af1:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405af8:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  405aff:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405b03:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  405b0a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  405b0e:	48 89 da             	mov    %rbx,%rdx
  405b11:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405b18:	e8 e3 ec ff ff       	call   404800 <printf_core>
  405b1d:	85 c0                	test   %eax,%eax
  405b1f:	0f 88 68 01 00 00    	js     405c8d <vfprintf+0x1fd>
  405b25:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  405b2c:	31 db                	xor    %ebx,%ebx
  405b2e:	85 c0                	test   %eax,%eax
  405b30:	78 0a                	js     405b3c <vfprintf+0xac>
  405b32:	4c 89 ef             	mov    %r13,%rdi
  405b35:	e8 86 08 00 00       	call   4063c0 <__lockfile>
  405b3a:	89 c3                	mov    %eax,%ebx
  405b3c:	41 8b 45 00          	mov    0x0(%r13),%eax
  405b40:	89 c1                	mov    %eax,%ecx
  405b42:	83 e0 df             	and    $0xffffffdf,%eax
  405b45:	83 e1 20             	and    $0x20,%ecx
  405b48:	41 89 45 00          	mov    %eax,0x0(%r13)
  405b4c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405b52:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405b57:	74 77                	je     405bd0 <vfprintf+0x140>
  405b59:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  405b5e:	0f 84 39 01 00 00    	je     405c9d <vfprintf+0x20d>
  405b64:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405b6b:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405b72:	4c 89 f1             	mov    %r14,%rcx
  405b75:	4c 89 ef             	mov    %r13,%rdi
  405b78:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405b7f:	e8 7c ec ff ff       	call   404800 <printf_core>
  405b84:	41 89 c4             	mov    %eax,%r12d
  405b87:	41 8b 45 00          	mov    0x0(%r13),%eax
  405b8b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405b90:	a8 20                	test   $0x20,%al
  405b92:	44 0f 45 e2          	cmovne %edx,%r12d
  405b96:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  405b9c:	41 89 45 00          	mov    %eax,0x0(%r13)
  405ba0:	85 db                	test   %ebx,%ebx
  405ba2:	0f 85 d8 00 00 00    	jne    405c80 <vfprintf+0x1f0>
  405ba8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405bac:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405bb3:	00 00 
  405bb5:	0f 85 dd 00 00 00    	jne    405c98 <vfprintf+0x208>
  405bbb:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405bc2:	44 89 e0             	mov    %r12d,%eax
  405bc5:	5b                   	pop    %rbx
  405bc6:	41 5c                	pop    %r12
  405bc8:	41 5d                	pop    %r13
  405bca:	41 5e                	pop    %r14
  405bcc:	41 5f                	pop    %r15
  405bce:	5d                   	pop    %rbp
  405bcf:	c3                   	ret
  405bd0:	49 8b 45 58          	mov    0x58(%r13),%rax
  405bd4:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405bdb:	00 
  405bdc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405be0:	4c 89 ef             	mov    %r13,%rdi
  405be3:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405bea:	00 
  405beb:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405bf1:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405bf8:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405bff:	49 89 45 58          	mov    %rax,0x58(%r13)
  405c03:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405c08:	e8 a3 09 00 00       	call   4065b0 <__towrite>
  405c0d:	85 c0                	test   %eax,%eax
  405c0f:	75 23                	jne    405c34 <vfprintf+0x1a4>
  405c11:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405c18:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405c1f:	4c 89 f1             	mov    %r14,%rcx
  405c22:	4c 89 ef             	mov    %r13,%rdi
  405c25:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405c2c:	e8 cf eb ff ff       	call   404800 <printf_core>
  405c31:	41 89 c4             	mov    %eax,%r12d
  405c34:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405c3b:	4d 85 f6             	test   %r14,%r14
  405c3e:	0f 84 43 ff ff ff    	je     405b87 <vfprintf+0xf7>
  405c44:	31 d2                	xor    %edx,%edx
  405c46:	31 f6                	xor    %esi,%esi
  405c48:	4c 89 ef             	mov    %r13,%rdi
  405c4b:	41 ff 55 48          	call   *0x48(%r13)
  405c4f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405c54:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405c58:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405c5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405c61:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405c68:	00 
  405c69:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405c70:	00 
  405c71:	44 0f 44 e0          	cmove  %eax,%r12d
  405c75:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405c7a:	e9 08 ff ff ff       	jmp    405b87 <vfprintf+0xf7>
  405c7f:	90                   	nop
  405c80:	4c 89 ef             	mov    %r13,%rdi
  405c83:	e8 f8 07 00 00       	call   406480 <__unlockfile>
  405c88:	e9 1b ff ff ff       	jmp    405ba8 <vfprintf+0x118>
  405c8d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405c93:	e9 10 ff ff ff       	jmp    405ba8 <vfprintf+0x118>
  405c98:	e8 03 cd ff ff       	call   4029a0 <__stack_chk_fail>
  405c9d:	4c 89 ef             	mov    %r13,%rdi
  405ca0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405ca6:	e8 05 09 00 00       	call   4065b0 <__towrite>
  405cab:	85 c0                	test   %eax,%eax
  405cad:	0f 85 d4 fe ff ff    	jne    405b87 <vfprintf+0xf7>
  405cb3:	e9 ac fe ff ff       	jmp    405b64 <vfprintf+0xd4>
  405cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405cbf:	00 

0000000000405cc0 <vsprintf>:
  405cc0:	f3 0f 1e fa          	endbr64
  405cc4:	48 89 d1             	mov    %rdx,%rcx
  405cc7:	48 89 f2             	mov    %rsi,%rdx
  405cca:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405ccf:	e9 bc 0b 00 00       	jmp    406890 <vsnprintf>
  405cd4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405cdb:	00 00 00 
  405cde:	66 90                	xchg   %ax,%ax

0000000000405ce0 <strcpy>:
  405ce0:	f3 0f 1e fa          	endbr64
  405ce4:	55                   	push   %rbp
  405ce5:	48 89 e5             	mov    %rsp,%rbp
  405ce8:	53                   	push   %rbx
  405ce9:	48 89 fb             	mov    %rdi,%rbx
  405cec:	48 83 ec 08          	sub    $0x8,%rsp
  405cf0:	e8 8b 0d 00 00       	call   406a80 <__stpcpy>
  405cf5:	48 89 d8             	mov    %rbx,%rax
  405cf8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405cfc:	c9                   	leave
  405cfd:	c3                   	ret
  405cfe:	66 90                	xchg   %ax,%ax

0000000000405d00 <strnlen>:
  405d00:	f3 0f 1e fa          	endbr64
  405d04:	55                   	push   %rbp
  405d05:	48 89 f2             	mov    %rsi,%rdx
  405d08:	48 89 e5             	mov    %rsp,%rbp
  405d0b:	41 54                	push   %r12
  405d0d:	49 89 fc             	mov    %rdi,%r12
  405d10:	53                   	push   %rbx
  405d11:	48 89 f3             	mov    %rsi,%rbx
  405d14:	31 f6                	xor    %esi,%esi
  405d16:	e8 25 0c 00 00       	call   406940 <memchr>
  405d1b:	48 89 c2             	mov    %rax,%rdx
  405d1e:	4c 29 e0             	sub    %r12,%rax
  405d21:	48 85 d2             	test   %rdx,%rdx
  405d24:	48 0f 44 c3          	cmove  %rbx,%rax
  405d28:	5b                   	pop    %rbx
  405d29:	41 5c                	pop    %r12
  405d2b:	5d                   	pop    %rbp
  405d2c:	c3                   	ret

0000000000405d2d <memcpy>:
  405d2d:	48 89 f8             	mov    %rdi,%rax
  405d30:	48 83 fa 08          	cmp    $0x8,%rdx
  405d34:	72 14                	jb     405d4a <memcpy+0x1d>
  405d36:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405d3c:	74 0c                	je     405d4a <memcpy+0x1d>
  405d3e:	a4                   	movsb  (%rsi),(%rdi)
  405d3f:	48 ff ca             	dec    %rdx
  405d42:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405d48:	75 f4                	jne    405d3e <memcpy+0x11>
  405d4a:	48 89 d1             	mov    %rdx,%rcx
  405d4d:	48 c1 e9 03          	shr    $0x3,%rcx
  405d51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405d54:	83 e2 07             	and    $0x7,%edx
  405d57:	74 05                	je     405d5e <memcpy+0x31>
  405d59:	a4                   	movsb  (%rsi),(%rdi)
  405d5a:	ff ca                	dec    %edx
  405d5c:	75 fb                	jne    405d59 <memcpy+0x2c>
  405d5e:	c3                   	ret

0000000000405d5f <memset>:
  405d5f:	48 0f b6 c6          	movzbq %sil,%rax
  405d63:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405d6a:	01 01 01 
  405d6d:	49 0f af c0          	imul   %r8,%rax
  405d71:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405d75:	77 78                	ja     405def <memset+0x90>
  405d77:	85 d2                	test   %edx,%edx
  405d79:	74 70                	je     405deb <memset+0x8c>
  405d7b:	40 88 37             	mov    %sil,(%rdi)
  405d7e:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405d83:	83 fa 02             	cmp    $0x2,%edx
  405d86:	76 63                	jbe    405deb <memset+0x8c>
  405d88:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405d8c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405d91:	83 fa 06             	cmp    $0x6,%edx
  405d94:	76 55                	jbe    405deb <memset+0x8c>
  405d96:	89 47 03             	mov    %eax,0x3(%rdi)
  405d99:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405d9d:	83 fa 0e             	cmp    $0xe,%edx
  405da0:	76 49                	jbe    405deb <memset+0x8c>
  405da2:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405da6:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405dab:	83 fa 1e             	cmp    $0x1e,%edx
  405dae:	76 3b                	jbe    405deb <memset+0x8c>
  405db0:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405db4:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405db8:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405dbd:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405dc2:	83 fa 3e             	cmp    $0x3e,%edx
  405dc5:	76 24                	jbe    405deb <memset+0x8c>
  405dc7:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405dcb:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405dcf:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405dd3:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405dd7:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405ddc:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405de1:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405de6:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405deb:	48 89 f8             	mov    %rdi,%rax
  405dee:	c3                   	ret
  405def:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405df5:	49 89 f8             	mov    %rdi,%r8
  405df8:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405dfd:	48 89 d1             	mov    %rdx,%rcx
  405e00:	75 0b                	jne    405e0d <memset+0xae>
  405e02:	48 c1 e9 03          	shr    $0x3,%rcx
  405e06:	f3 48 ab             	rep stos %rax,(%rdi)
  405e09:	4c 89 c0             	mov    %r8,%rax
  405e0c:	c3                   	ret
  405e0d:	31 d2                	xor    %edx,%edx
  405e0f:	29 fa                	sub    %edi,%edx
  405e11:	83 e2 0f             	and    $0xf,%edx
  405e14:	48 89 07             	mov    %rax,(%rdi)
  405e17:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405e1b:	48 29 d1             	sub    %rdx,%rcx
  405e1e:	48 01 d7             	add    %rdx,%rdi
  405e21:	eb df                	jmp    405e02 <memset+0xa3>
  405e23:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e2a:	00 00 00 
  405e2d:	0f 1f 00             	nopl   (%rax)

0000000000405e30 <__init_tp>:
  405e30:	f3 0f 1e fa          	endbr64
  405e34:	55                   	push   %rbp
  405e35:	48 89 e5             	mov    %rsp,%rbp
  405e38:	53                   	push   %rbx
  405e39:	48 89 fb             	mov    %rdi,%rbx
  405e3c:	48 83 ec 08          	sub    $0x8,%rsp
  405e40:	48 89 3f             	mov    %rdi,(%rdi)
  405e43:	e8 21 0d 00 00       	call   406b69 <__set_thread_area>
  405e48:	85 c0                	test   %eax,%eax
  405e4a:	78 65                	js     405eb1 <__init_tp+0x81>
  405e4c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405e51:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405e55:	74 51                	je     405ea8 <__init_tp+0x78>
  405e57:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405e5e:	b8 da 00 00 00       	mov    $0xda,%eax
  405e63:	48 8d 3d 26 59 00 00 	lea    0x5926(%rip),%rdi        # 40b790 <__thread_list_lock>
  405e6a:	0f 05                	syscall
  405e6c:	89 43 30             	mov    %eax,0x30(%rbx)
  405e6f:	48 8d 05 22 53 00 00 	lea    0x5322(%rip),%rax        # 40b198 <__libc+0x38>
  405e76:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405e7d:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405e84:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405e8b:	48 8b 05 9e 52 00 00 	mov    0x529e(%rip),%rax        # 40b130 <__sysinfo>
  405e92:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405e96:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405e9a:	31 c0                	xor    %eax,%eax
  405e9c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405ea0:	c9                   	leave
  405ea1:	c3                   	ret
  405ea2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ea8:	c6 05 b1 52 00 00 01 	movb   $0x1,0x52b1(%rip)        # 40b160 <__libc>
  405eaf:	eb a6                	jmp    405e57 <__init_tp+0x27>
  405eb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405eb6:	eb e4                	jmp    405e9c <__init_tp+0x6c>
  405eb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405ebf:	00 

0000000000405ec0 <__copy_tls>:
  405ec0:	f3 0f 1e fa          	endbr64
  405ec4:	55                   	push   %rbp
  405ec5:	48 8b 05 ac 52 00 00 	mov    0x52ac(%rip),%rax        # 40b178 <__libc+0x18>
  405ecc:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405ed3:	ff 
  405ed4:	48 89 e5             	mov    %rsp,%rbp
  405ed7:	41 56                	push   %r14
  405ed9:	49 89 fe             	mov    %rdi,%r14
  405edc:	41 55                	push   %r13
  405ede:	4c 8b 2d 9b 52 00 00 	mov    0x529b(%rip),%r13        # 40b180 <__libc+0x20>
  405ee5:	41 54                	push   %r12
  405ee7:	53                   	push   %rbx
  405ee8:	48 8b 1d 81 52 00 00 	mov    0x5281(%rip),%rbx        # 40b170 <__libc+0x10>
  405eef:	49 f7 dd             	neg    %r13
  405ef2:	49 21 c5             	and    %rax,%r13
  405ef5:	48 85 db             	test   %rbx,%rbx
  405ef8:	74 32                	je     405f2c <__copy_tls+0x6c>
  405efa:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405efe:	66 90                	xchg   %ax,%ax
  405f00:	4c 89 e8             	mov    %r13,%rax
  405f03:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405f07:	4c 89 ef             	mov    %r13,%rdi
  405f0a:	49 83 c4 08          	add    $0x8,%r12
  405f0e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405f13:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405f17:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405f1b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405f1f:	e8 09 fe ff ff       	call   405d2d <memcpy>
  405f24:	48 8b 1b             	mov    (%rbx),%rbx
  405f27:	48 85 db             	test   %rbx,%rbx
  405f2a:	75 d4                	jne    405f00 <__copy_tls+0x40>
  405f2c:	48 8b 05 55 52 00 00 	mov    0x5255(%rip),%rax        # 40b188 <__libc+0x28>
  405f33:	49 89 06             	mov    %rax,(%r14)
  405f36:	4c 89 e8             	mov    %r13,%rax
  405f39:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405f3d:	5b                   	pop    %rbx
  405f3e:	41 5c                	pop    %r12
  405f40:	41 5d                	pop    %r13
  405f42:	41 5e                	pop    %r14
  405f44:	5d                   	pop    %rbp
  405f45:	c3                   	ret
  405f46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405f4d:	00 00 00 

0000000000405f50 <__init_tls>:
  405f50:	f3 0f 1e fa          	endbr64
  405f54:	55                   	push   %rbp
  405f55:	48 89 e5             	mov    %rsp,%rbp
  405f58:	53                   	push   %rbx
  405f59:	48 83 ec 08          	sub    $0x8,%rsp
  405f5d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405f61:	48 85 c9             	test   %rcx,%rcx
  405f64:	0f 84 fe 01 00 00    	je     406168 <__init_tls+0x218>
  405f6a:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405f6e:	31 f6                	xor    %esi,%esi
  405f70:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405f74:	45 31 c0             	xor    %r8d,%r8d
  405f77:	4c 89 d0             	mov    %r10,%rax
  405f7a:	eb 29                	jmp    405fa5 <__init_tls+0x55>
  405f7c:	0f 1f 40 00          	nopl   0x0(%rax)
  405f80:	83 fa 02             	cmp    $0x2,%edx
  405f83:	0f 85 77 01 00 00    	jne    406100 <__init_tls+0x1b0>
  405f89:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405f90:	48 85 d2             	test   %rdx,%rdx
  405f93:	74 07                	je     405f9c <__init_tls+0x4c>
  405f95:	48 89 d6             	mov    %rdx,%rsi
  405f98:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405f9c:	48 01 f8             	add    %rdi,%rax
  405f9f:	48 83 e9 01          	sub    $0x1,%rcx
  405fa3:	74 17                	je     405fbc <__init_tls+0x6c>
  405fa5:	8b 10                	mov    (%rax),%edx
  405fa7:	83 fa 06             	cmp    $0x6,%edx
  405faa:	75 d4                	jne    405f80 <__init_tls+0x30>
  405fac:	4c 89 d6             	mov    %r10,%rsi
  405faf:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405fb3:	48 01 f8             	add    %rdi,%rax
  405fb6:	48 83 e9 01          	sub    $0x1,%rcx
  405fba:	75 e9                	jne    405fa5 <__init_tls+0x55>
  405fbc:	4d 85 c0             	test   %r8,%r8
  405fbf:	0f 84 a3 01 00 00    	je     406168 <__init_tls+0x218>
  405fc5:	49 8b 40 20          	mov    0x20(%r8),%rax
  405fc9:	49 03 70 10          	add    0x10(%r8),%rsi
  405fcd:	48 8d 1d 2c 56 00 00 	lea    0x562c(%rip),%rbx        # 40b600 <main_tls>
  405fd4:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405fd8:	48 89 35 29 56 00 00 	mov    %rsi,0x5629(%rip)        # 40b608 <main_tls+0x8>
  405fdf:	48 89 05 2a 56 00 00 	mov    %rax,0x562a(%rip)        # 40b610 <main_tls+0x10>
  405fe6:	49 8b 40 30          	mov    0x30(%r8),%rax
  405fea:	48 c7 05 93 51 00 00 	movq   $0x1,0x5193(%rip)        # 40b188 <__libc+0x28>
  405ff1:	01 00 00 00 
  405ff5:	48 89 05 24 56 00 00 	mov    %rax,0x5624(%rip)        # 40b620 <main_tls+0x20>
  405ffc:	48 89 1d 6d 51 00 00 	mov    %rbx,0x516d(%rip)        # 40b170 <__libc+0x10>
  406003:	48 01 d6             	add    %rdx,%rsi
  406006:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  40600a:	48 f7 de             	neg    %rsi
  40600d:	48 21 ce             	and    %rcx,%rsi
  406010:	48 01 d6             	add    %rdx,%rsi
  406013:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  40601a:	48 89 35 f7 55 00 00 	mov    %rsi,0x55f7(%rip)        # 40b618 <main_tls+0x18>
  406021:	48 89 35 00 56 00 00 	mov    %rsi,0x5600(%rip)        # 40b628 <main_tls+0x28>
  406028:	48 83 f8 07          	cmp    $0x7,%rax
  40602c:	77 15                	ja     406043 <__init_tls+0xf3>
  40602e:	48 c7 05 e7 55 00 00 	movq   $0x8,0x55e7(%rip)        # 40b620 <main_tls+0x20>
  406035:	08 00 00 00 
  406039:	ba e7 00 00 00       	mov    $0xe7,%edx
  40603e:	b8 08 00 00 00       	mov    $0x8,%eax
  406043:	48 01 d6             	add    %rdx,%rsi
  406046:	48 89 05 33 51 00 00 	mov    %rax,0x5133(%rip)        # 40b180 <__libc+0x20>
  40604d:	48 8d 3d ec 55 00 00 	lea    0x55ec(%rip),%rdi        # 40b640 <builtin_tls>
  406054:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  406058:	48 89 35 19 51 00 00 	mov    %rsi,0x5119(%rip)        # 40b178 <__libc+0x18>
  40605f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  406066:	76 21                	jbe    406089 <__init_tls+0x139>
  406068:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  40606e:	45 31 c9             	xor    %r9d,%r9d
  406071:	b8 09 00 00 00       	mov    $0x9,%eax
  406076:	31 ff                	xor    %edi,%edi
  406078:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  40607f:	ba 03 00 00 00       	mov    $0x3,%edx
  406084:	0f 05                	syscall
  406086:	48 89 c7             	mov    %rax,%rdi
  406089:	e8 32 fe ff ff       	call   405ec0 <__copy_tls>
  40608e:	48 89 00             	mov    %rax,(%rax)
  406091:	48 89 c7             	mov    %rax,%rdi
  406094:	48 89 c3             	mov    %rax,%rbx
  406097:	e8 cd 0a 00 00       	call   406b69 <__set_thread_area>
  40609c:	85 c0                	test   %eax,%eax
  40609e:	0f 88 b8 00 00 00    	js     40615c <__init_tls+0x20c>
  4060a4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  4060a9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  4060ad:	0f 84 9d 00 00 00    	je     406150 <__init_tls+0x200>
  4060b3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  4060ba:	b8 da 00 00 00       	mov    $0xda,%eax
  4060bf:	48 8d 3d ca 56 00 00 	lea    0x56ca(%rip),%rdi        # 40b790 <__thread_list_lock>
  4060c6:	0f 05                	syscall
  4060c8:	89 43 30             	mov    %eax,0x30(%rbx)
  4060cb:	48 8d 05 c6 50 00 00 	lea    0x50c6(%rip),%rax        # 40b198 <__libc+0x38>
  4060d2:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  4060d9:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  4060e0:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  4060e7:	48 8b 05 42 50 00 00 	mov    0x5042(%rip),%rax        # 40b130 <__sysinfo>
  4060ee:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  4060f2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4060f6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4060fa:	c9                   	leave
  4060fb:	c3                   	ret
  4060fc:	0f 1f 40 00          	nopl   0x0(%rax)
  406100:	83 fa 07             	cmp    $0x7,%edx
  406103:	75 0b                	jne    406110 <__init_tls+0x1c0>
  406105:	49 89 c0             	mov    %rax,%r8
  406108:	e9 8f fe ff ff       	jmp    405f9c <__init_tls+0x4c>
  40610d:	0f 1f 00             	nopl   (%rax)
  406110:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  406116:	0f 85 80 fe ff ff    	jne    405f9c <__init_tls+0x4c>
  40611c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  406120:	44 8b 0d e5 4f 00 00 	mov    0x4fe5(%rip),%r9d        # 40b10c <__default_stacksize>
  406127:	49 39 d1             	cmp    %rdx,%r9
  40612a:	0f 83 6c fe ff ff    	jae    405f9c <__init_tls+0x4c>
  406130:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  406136:	4c 39 ca             	cmp    %r9,%rdx
  406139:	49 0f 47 d1          	cmova  %r9,%rdx
  40613d:	89 15 c9 4f 00 00    	mov    %edx,0x4fc9(%rip)        # 40b10c <__default_stacksize>
  406143:	e9 54 fe ff ff       	jmp    405f9c <__init_tls+0x4c>
  406148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40614f:	00 
  406150:	c6 05 09 50 00 00 01 	movb   $0x1,0x5009(%rip)        # 40b160 <__libc>
  406157:	e9 57 ff ff ff       	jmp    4060b3 <__init_tls+0x163>
  40615c:	f4                   	hlt
  40615d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406161:	c9                   	leave
  406162:	c3                   	ret
  406163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406168:	48 8b 15 a9 54 00 00 	mov    0x54a9(%rip),%rdx        # 40b618 <main_tls+0x18>
  40616f:	48 8b 35 92 54 00 00 	mov    0x5492(%rip),%rsi        # 40b608 <main_tls+0x8>
  406176:	48 8b 05 a3 54 00 00 	mov    0x54a3(%rip),%rax        # 40b620 <main_tls+0x20>
  40617d:	e9 81 fe ff ff       	jmp    406003 <__init_tls+0xb3>
  406182:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406189:	00 00 00 
  40618c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406190 <__errno_location>:
  406190:	f3 0f 1e fa          	endbr64
  406194:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40619b:	00 00 
  40619d:	48 83 c0 34          	add    $0x34,%rax
  4061a1:	c3                   	ret
  4061a2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061a9:	00 00 00 
  4061ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004061b0 <__strerror_l>:
  4061b0:	f3 0f 1e fa          	endbr64
  4061b4:	48 8d 05 a5 24 00 00 	lea    0x24a5(%rip),%rax        # 408660 <errmsgstr>
  4061bb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  4061c1:	77 11                	ja     4061d4 <__strerror_l+0x24>
  4061c3:	48 63 ff             	movslq %edi,%rdi
  4061c6:	48 8d 15 73 23 00 00 	lea    0x2373(%rip),%rdx        # 408540 <errmsgidx>
  4061cd:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  4061d1:	48 01 d0             	add    %rdx,%rax
  4061d4:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  4061d8:	48 89 c7             	mov    %rax,%rdi
  4061db:	e9 50 00 00 00       	jmp    406230 <__lctrans>

00000000004061e0 <strerror>:
  4061e0:	f3 0f 1e fa          	endbr64
  4061e4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4061eb:	00 00 
  4061ed:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  4061f4:	e9 b7 ff ff ff       	jmp    4061b0 <__strerror_l>
  4061f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406200 <_Exit>:
  406200:	f3 0f 1e fa          	endbr64
  406204:	48 63 ff             	movslq %edi,%rdi
  406207:	b8 e7 00 00 00       	mov    $0xe7,%eax
  40620c:	0f 05                	syscall
  40620e:	66 90                	xchg   %ax,%ax
  406210:	b8 3c 00 00 00       	mov    $0x3c,%eax
  406215:	0f 05                	syscall
  406217:	eb f7                	jmp    406210 <_Exit+0x10>
  406219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406220 <__lctrans_impl>:
  406220:	f3 0f 1e fa          	endbr64
  406224:	48 89 f8             	mov    %rdi,%rax
  406227:	c3                   	ret
  406228:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40622f:	00 

0000000000406230 <__lctrans>:
  406230:	f3 0f 1e fa          	endbr64
  406234:	e9 e7 ff ff ff       	jmp    406220 <__lctrans_impl>
  406239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406240 <__lctrans_cur>:
  406240:	f3 0f 1e fa          	endbr64
  406244:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40624b:	00 00 
  40624d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  406254:	48 8b 70 28          	mov    0x28(%rax),%rsi
  406258:	e9 c3 ff ff ff       	jmp    406220 <__lctrans_impl>
  40625d:	0f 1f 00             	nopl   (%rax)

0000000000406260 <__fpclassifyl>:
  406260:	f3 0f 1e fa          	endbr64
  406264:	55                   	push   %rbp
  406265:	48 89 e5             	mov    %rsp,%rbp
  406268:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  40626c:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406270:	48 89 ca             	mov    %rcx,%rdx
  406273:	89 c6                	mov    %eax,%esi
  406275:	25 ff 7f 00 00       	and    $0x7fff,%eax
  40627a:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40627e:	66 81 e6 ff 7f       	and    $0x7fff,%si
  406283:	09 d0                	or     %edx,%eax
  406285:	74 31                	je     4062b8 <__fpclassifyl+0x58>
  406287:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  40628e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  406293:	74 0b                	je     4062a0 <__fpclassifyl+0x40>
  406295:	5d                   	pop    %rbp
  406296:	c3                   	ret
  406297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40629e:	00 00 
  4062a0:	31 c0                	xor    %eax,%eax
  4062a2:	48 85 d2             	test   %rdx,%rdx
  4062a5:	74 ee                	je     406295 <__fpclassifyl+0x35>
  4062a7:	31 c0                	xor    %eax,%eax
  4062a9:	48 01 c9             	add    %rcx,%rcx
  4062ac:	5d                   	pop    %rbp
  4062ad:	0f 94 c0             	sete   %al
  4062b0:	c3                   	ret
  4062b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4062b8:	48 83 f9 01          	cmp    $0x1,%rcx
  4062bc:	b8 02 00 00 00       	mov    $0x2,%eax
  4062c1:	5d                   	pop    %rbp
  4062c2:	83 d8 ff             	sbb    $0xffffffff,%eax
  4062c5:	c3                   	ret
  4062c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062cd:	00 00 00 

00000000004062d0 <__signbitl>:
  4062d0:	f3 0f 1e fa          	endbr64
  4062d4:	55                   	push   %rbp
  4062d5:	48 89 e5             	mov    %rsp,%rbp
  4062d8:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  4062dc:	5d                   	pop    %rbp
  4062dd:	66 c1 e8 0f          	shr    $0xf,%ax
  4062e1:	0f b7 c0             	movzwl %ax,%eax
  4062e4:	c3                   	ret
  4062e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062ec:	00 00 00 
  4062ef:	90                   	nop

00000000004062f0 <frexpl>:
  4062f0:	f3 0f 1e fa          	endbr64
  4062f4:	55                   	push   %rbp
  4062f5:	48 89 e5             	mov    %rsp,%rbp
  4062f8:	48 83 ec 20          	sub    $0x20,%rsp
  4062fc:	db 6d 10             	fldt   0x10(%rbp)
  4062ff:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406303:	89 c2                	mov    %eax,%edx
  406305:	d9 c0                	fld    %st(0)
  406307:	db 7d f0             	fstpt  -0x10(%rbp)
  40630a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40630f:	74 2f                	je     406340 <frexpl+0x50>
  406311:	dd d8                	fstp   %st(0)
  406313:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406318:	74 38                	je     406352 <frexpl+0x62>
  40631a:	0f b7 d2             	movzwl %dx,%edx
  40631d:	66 25 00 80          	and    $0x8000,%ax
  406321:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  406327:	66 0d fe 3f          	or     $0x3ffe,%ax
  40632b:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40632f:	db 6d f0             	fldt   -0x10(%rbp)
  406332:	89 17                	mov    %edx,(%rdi)
  406334:	c9                   	leave
  406335:	c3                   	ret
  406336:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40633d:	00 00 00 
  406340:	d9 ee                	fldz
  406342:	d9 c9                	fxch   %st(1)
  406344:	df e9                	fucomip %st(1),%st
  406346:	dd d8                	fstp   %st(0)
  406348:	7a 16                	jp     406360 <frexpl+0x70>
  40634a:	75 14                	jne    406360 <frexpl+0x70>
  40634c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406352:	db 6d 10             	fldt   0x10(%rbp)
  406355:	c9                   	leave
  406356:	c3                   	ret
  406357:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40635e:	00 00 
  406360:	db 6d 10             	fldt   0x10(%rbp)
  406363:	d8 0d a3 21 00 00    	fmuls  0x21a3(%rip)        # 40850c <states+0x1ec>
  406369:	48 83 ec 10          	sub    $0x10,%rsp
  40636d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406371:	db 3c 24             	fstpt  (%rsp)
  406374:	e8 77 ff ff ff       	call   4062f0 <frexpl>
  406379:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40637d:	83 2f 78             	subl   $0x78,(%rdi)
  406380:	58                   	pop    %rax
  406381:	5a                   	pop    %rdx
  406382:	c9                   	leave
  406383:	c3                   	ret
  406384:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40638b:	00 00 00 
  40638e:	66 90                	xchg   %ax,%ax

0000000000406390 <wctomb>:
  406390:	f3 0f 1e fa          	endbr64
  406394:	48 85 ff             	test   %rdi,%rdi
  406397:	74 17                	je     4063b0 <wctomb+0x20>
  406399:	55                   	push   %rbp
  40639a:	31 d2                	xor    %edx,%edx
  40639c:	48 89 e5             	mov    %rsp,%rbp
  40639f:	e8 3c 08 00 00       	call   406be0 <wcrtomb>
  4063a4:	5d                   	pop    %rbp
  4063a5:	c3                   	ret
  4063a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4063ad:	00 00 00 
  4063b0:	31 c0                	xor    %eax,%eax
  4063b2:	c3                   	ret
  4063b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4063ba:	00 00 00 
  4063bd:	0f 1f 00             	nopl   (%rax)

00000000004063c0 <__lockfile>:
  4063c0:	f3 0f 1e fa          	endbr64
  4063c4:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  4063ca:	48 89 fa             	mov    %rdi,%rdx
  4063cd:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  4063d4:	00 00 
  4063d6:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  4063da:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  4063df:	31 c9                	xor    %ecx,%ecx
  4063e1:	44 39 c0             	cmp    %r8d,%eax
  4063e4:	74 3f                	je     406425 <__lockfile+0x65>
  4063e6:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4063ed:	89 c8                	mov    %ecx,%eax
  4063ef:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  4063f6:	00 00 
  4063f8:	85 c0                	test   %eax,%eax
  4063fa:	74 24                	je     406420 <__lockfile+0x60>
  4063fc:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406403:	89 c8                	mov    %ecx,%eax
  406405:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40640c:	00 00 
  40640e:	89 c1                	mov    %eax,%ecx
  406410:	85 c0                	test   %eax,%eax
  406412:	75 33                	jne    406447 <__lockfile+0x87>
  406414:	90                   	nop
  406415:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40641c:	00 00 00 00 
  406420:	b9 01 00 00 00       	mov    $0x1,%ecx
  406425:	89 c8                	mov    %ecx,%eax
  406427:	c3                   	ret
  406428:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40642f:	00 
  406430:	89 c8                	mov    %ecx,%eax
  406432:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406436:	39 c8                	cmp    %ecx,%eax
  406438:	74 1d                	je     406457 <__lockfile+0x97>
  40643a:	31 c0                	xor    %eax,%eax
  40643c:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406441:	89 c1                	mov    %eax,%ecx
  406443:	85 c0                	test   %eax,%eax
  406445:	74 d9                	je     406420 <__lockfile+0x60>
  406447:	89 ca                	mov    %ecx,%edx
  406449:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40644f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406455:	74 d9                	je     406430 <__lockfile+0x70>
  406457:	48 63 d2             	movslq %edx,%rdx
  40645a:	45 31 d2             	xor    %r10d,%r10d
  40645d:	b8 ca 00 00 00       	mov    $0xca,%eax
  406462:	be 80 00 00 00       	mov    $0x80,%esi
  406467:	0f 05                	syscall
  406469:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  40646d:	75 cb                	jne    40643a <__lockfile+0x7a>
  40646f:	45 31 d2             	xor    %r10d,%r10d
  406472:	31 f6                	xor    %esi,%esi
  406474:	b8 ca 00 00 00       	mov    $0xca,%eax
  406479:	0f 05                	syscall
  40647b:	eb bd                	jmp    40643a <__lockfile+0x7a>
  40647d:	0f 1f 00             	nopl   (%rax)

0000000000406480 <__unlockfile>:
  406480:	f3 0f 1e fa          	endbr64
  406484:	48 89 fa             	mov    %rdi,%rdx
  406487:	31 c0                	xor    %eax,%eax
  406489:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406490:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406496:	a9 00 00 00 40       	test   $0x40000000,%eax
  40649b:	74 17                	je     4064b4 <__unlockfile+0x34>
  40649d:	be 81 00 00 00       	mov    $0x81,%esi
  4064a2:	b8 ca 00 00 00       	mov    $0xca,%eax
  4064a7:	ba 01 00 00 00       	mov    $0x1,%edx
  4064ac:	0f 05                	syscall
  4064ae:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4064b2:	74 04                	je     4064b8 <__unlockfile+0x38>
  4064b4:	c3                   	ret
  4064b5:	0f 1f 00             	nopl   (%rax)
  4064b8:	b8 ca 00 00 00       	mov    $0xca,%eax
  4064bd:	be 01 00 00 00       	mov    $0x1,%esi
  4064c2:	0f 05                	syscall
  4064c4:	c3                   	ret
  4064c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4064cc:	00 00 00 
  4064cf:	90                   	nop

00000000004064d0 <__aio_close>:
  4064d0:	f3 0f 1e fa          	endbr64
  4064d4:	89 f8                	mov    %edi,%eax
  4064d6:	c3                   	ret
  4064d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4064de:	00 00 

00000000004064e0 <__stdio_close>:
  4064e0:	f3 0f 1e fa          	endbr64
  4064e4:	55                   	push   %rbp
  4064e5:	8b 7f 78             	mov    0x78(%rdi),%edi
  4064e8:	48 89 e5             	mov    %rsp,%rbp
  4064eb:	e8 e0 ff ff ff       	call   4064d0 <__aio_close>
  4064f0:	48 63 f8             	movslq %eax,%rdi
  4064f3:	b8 03 00 00 00       	mov    $0x3,%eax
  4064f8:	0f 05                	syscall
  4064fa:	48 89 c7             	mov    %rax,%rdi
  4064fd:	e8 9e 06 00 00       	call   406ba0 <__syscall_ret>
  406502:	5d                   	pop    %rbp
  406503:	c3                   	ret
  406504:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40650b:	00 00 00 
  40650e:	66 90                	xchg   %ax,%ax

0000000000406510 <__stdio_seek>:
  406510:	f3 0f 1e fa          	endbr64
  406514:	8b 7f 78             	mov    0x78(%rdi),%edi
  406517:	e9 64 06 00 00       	jmp    406b80 <__lseek>
  40651c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406520 <__stdout_write>:
  406520:	f3 0f 1e fa          	endbr64
  406524:	55                   	push   %rbp
  406525:	48 8d 05 d4 08 00 00 	lea    0x8d4(%rip),%rax        # 406e00 <__stdio_write>
  40652c:	49 89 f8             	mov    %rdi,%r8
  40652f:	49 89 f1             	mov    %rsi,%r9
  406532:	48 89 e5             	mov    %rsp,%rbp
  406535:	48 83 ec 10          	sub    $0x10,%rsp
  406539:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406540:	00 00 
  406542:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406546:	49 89 d2             	mov    %rdx,%r10
  406549:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40654d:	f6 07 40             	testb  $0x40,(%rdi)
  406550:	75 19                	jne    40656b <__stdout_write+0x4b>
  406552:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406556:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40655a:	b8 10 00 00 00       	mov    $0x10,%eax
  40655f:	be 13 54 00 00       	mov    $0x5413,%esi
  406564:	0f 05                	syscall
  406566:	48 85 c0             	test   %rax,%rax
  406569:	75 25                	jne    406590 <__stdout_write+0x70>
  40656b:	4c 89 d2             	mov    %r10,%rdx
  40656e:	4c 89 ce             	mov    %r9,%rsi
  406571:	4c 89 c7             	mov    %r8,%rdi
  406574:	e8 87 08 00 00       	call   406e00 <__stdio_write>
  406579:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40657d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406584:	00 00 
  406586:	75 15                	jne    40659d <__stdout_write+0x7d>
  406588:	c9                   	leave
  406589:	c3                   	ret
  40658a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406590:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406597:	ff ff ff ff 
  40659b:	eb ce                	jmp    40656b <__stdout_write+0x4b>
  40659d:	e8 fe c3 ff ff       	call   4029a0 <__stack_chk_fail>
  4065a2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4065a9:	00 00 00 
  4065ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004065b0 <__towrite>:
  4065b0:	f3 0f 1e fa          	endbr64
  4065b4:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  4065ba:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4065bd:	09 d0                	or     %edx,%eax
  4065bf:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  4065c5:	8b 07                	mov    (%rdi),%eax
  4065c7:	a8 08                	test   $0x8,%al
  4065c9:	75 35                	jne    406600 <__towrite+0x50>
  4065cb:	48 8b 47 58          	mov    0x58(%rdi),%rax
  4065cf:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  4065d3:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4065d7:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  4065db:	48 01 c1             	add    %rax,%rcx
  4065de:	66 48 0f 6e c8       	movq   %rax,%xmm1
  4065e3:	48 89 47 38          	mov    %rax,0x38(%rdi)
  4065e7:	31 c0                	xor    %eax,%eax
  4065e9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  4065ee:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  4065f2:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  4065f6:	c3                   	ret
  4065f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4065fe:	00 00 
  406600:	83 c8 20             	or     $0x20,%eax
  406603:	89 07                	mov    %eax,(%rdi)
  406605:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40660a:	c3                   	ret
  40660b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406610 <__towrite_needs_stdio_exit>:
  406610:	f3 0f 1e fa          	endbr64
  406614:	e9 87 07 00 00       	jmp    406da0 <__stdio_exit>
  406619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406620 <__fwritex>:
  406620:	f3 0f 1e fa          	endbr64
  406624:	55                   	push   %rbp
  406625:	48 89 f9             	mov    %rdi,%rcx
  406628:	48 89 e5             	mov    %rsp,%rbp
  40662b:	41 54                	push   %r12
  40662d:	49 89 f4             	mov    %rsi,%r12
  406630:	53                   	push   %rbx
  406631:	48 89 d3             	mov    %rdx,%rbx
  406634:	48 83 ec 10          	sub    $0x10,%rsp
  406638:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40663c:	48 85 c0             	test   %rax,%rax
  40663f:	0f 84 ab 00 00 00    	je     4066f0 <__fwritex+0xd0>
  406645:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406649:	48 29 f8             	sub    %rdi,%rax
  40664c:	4c 39 e0             	cmp    %r12,%rax
  40664f:	72 57                	jb     4066a8 <__fwritex+0x88>
  406651:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406657:	4c 89 e2             	mov    %r12,%rdx
  40665a:	85 c0                	test   %eax,%eax
  40665c:	79 3d                	jns    40669b <__fwritex+0x7b>
  40665e:	4d 89 e0             	mov    %r12,%r8
  406661:	4c 89 c2             	mov    %r8,%rdx
  406664:	48 89 ce             	mov    %rcx,%rsi
  406667:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  40666b:	e8 bd f6 ff ff       	call   405d2d <memcpy>
  406670:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  406674:	4c 01 43 28          	add    %r8,0x28(%rbx)
  406678:	4c 89 e0             	mov    %r12,%rax
  40667b:	48 83 c4 10          	add    $0x10,%rsp
  40667f:	5b                   	pop    %rbx
  406680:	41 5c                	pop    %r12
  406682:	5d                   	pop    %rbp
  406683:	c3                   	ret
  406684:	90                   	nop
  406685:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40668c:	00 00 00 00 
  406690:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406695:	74 29                	je     4066c0 <__fwritex+0xa0>
  406697:	48 83 ea 01          	sub    $0x1,%rdx
  40669b:	48 85 d2             	test   %rdx,%rdx
  40669e:	75 f0                	jne    406690 <__fwritex+0x70>
  4066a0:	eb bc                	jmp    40665e <__fwritex+0x3e>
  4066a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4066a8:	48 8b 43 48          	mov    0x48(%rbx),%rax
  4066ac:	48 83 c4 10          	add    $0x10,%rsp
  4066b0:	4c 89 e2             	mov    %r12,%rdx
  4066b3:	48 89 df             	mov    %rbx,%rdi
  4066b6:	48 89 ce             	mov    %rcx,%rsi
  4066b9:	5b                   	pop    %rbx
  4066ba:	41 5c                	pop    %r12
  4066bc:	5d                   	pop    %rbp
  4066bd:	ff e0                	jmp    *%rax
  4066bf:	90                   	nop
  4066c0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4066c4:	48 89 ce             	mov    %rcx,%rsi
  4066c7:	48 89 df             	mov    %rbx,%rdi
  4066ca:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4066ce:	ff 53 48             	call   *0x48(%rbx)
  4066d1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4066d5:	48 39 d0             	cmp    %rdx,%rax
  4066d8:	72 a1                	jb     40667b <__fwritex+0x5b>
  4066da:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4066de:	4d 89 e0             	mov    %r12,%r8
  4066e1:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4066e5:	49 29 d0             	sub    %rdx,%r8
  4066e8:	48 01 d1             	add    %rdx,%rcx
  4066eb:	e9 71 ff ff ff       	jmp    406661 <__fwritex+0x41>
  4066f0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4066f4:	48 89 d7             	mov    %rdx,%rdi
  4066f7:	e8 b4 fe ff ff       	call   4065b0 <__towrite>
  4066fc:	85 c0                	test   %eax,%eax
  4066fe:	75 10                	jne    406710 <__fwritex+0xf0>
  406700:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406704:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406708:	e9 38 ff ff ff       	jmp    406645 <__fwritex+0x25>
  40670d:	0f 1f 00             	nopl   (%rax)
  406710:	31 c0                	xor    %eax,%eax
  406712:	e9 64 ff ff ff       	jmp    40667b <__fwritex+0x5b>
  406717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40671e:	00 00 

0000000000406720 <fwrite>:
  406720:	f3 0f 1e fa          	endbr64
  406724:	55                   	push   %rbp
  406725:	31 c0                	xor    %eax,%eax
  406727:	48 89 e5             	mov    %rsp,%rbp
  40672a:	41 57                	push   %r15
  40672c:	41 56                	push   %r14
  40672e:	49 89 f6             	mov    %rsi,%r14
  406731:	41 55                	push   %r13
  406733:	4c 0f af f2          	imul   %rdx,%r14
  406737:	41 54                	push   %r12
  406739:	49 89 cc             	mov    %rcx,%r12
  40673c:	53                   	push   %rbx
  40673d:	48 89 f3             	mov    %rsi,%rbx
  406740:	48 83 ec 18          	sub    $0x18,%rsp
  406744:	48 85 f6             	test   %rsi,%rsi
  406747:	48 0f 45 c2          	cmovne %rdx,%rax
  40674b:	49 89 c5             	mov    %rax,%r13
  40674e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406754:	85 c0                	test   %eax,%eax
  406756:	79 30                	jns    406788 <fwrite+0x68>
  406758:	48 89 ca             	mov    %rcx,%rdx
  40675b:	4c 89 f6             	mov    %r14,%rsi
  40675e:	e8 bd fe ff ff       	call   406620 <__fwritex>
  406763:	49 39 c6             	cmp    %rax,%r14
  406766:	74 08                	je     406770 <fwrite+0x50>
  406768:	31 d2                	xor    %edx,%edx
  40676a:	48 f7 f3             	div    %rbx
  40676d:	49 89 c5             	mov    %rax,%r13
  406770:	48 83 c4 18          	add    $0x18,%rsp
  406774:	4c 89 e8             	mov    %r13,%rax
  406777:	5b                   	pop    %rbx
  406778:	41 5c                	pop    %r12
  40677a:	41 5d                	pop    %r13
  40677c:	41 5e                	pop    %r14
  40677e:	41 5f                	pop    %r15
  406780:	5d                   	pop    %rbp
  406781:	c3                   	ret
  406782:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406788:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  40678c:	48 89 cf             	mov    %rcx,%rdi
  40678f:	e8 2c fc ff ff       	call   4063c0 <__lockfile>
  406794:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406798:	4c 89 e2             	mov    %r12,%rdx
  40679b:	4c 89 f6             	mov    %r14,%rsi
  40679e:	41 89 c7             	mov    %eax,%r15d
  4067a1:	e8 7a fe ff ff       	call   406620 <__fwritex>
  4067a6:	45 85 ff             	test   %r15d,%r15d
  4067a9:	74 b8                	je     406763 <fwrite+0x43>
  4067ab:	4c 89 e7             	mov    %r12,%rdi
  4067ae:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4067b2:	e8 c9 fc ff ff       	call   406480 <__unlockfile>
  4067b7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4067bb:	eb a6                	jmp    406763 <fwrite+0x43>
  4067bd:	0f 1f 00             	nopl   (%rax)

00000000004067c0 <sn_write>:
  4067c0:	f3 0f 1e fa          	endbr64
  4067c4:	55                   	push   %rbp
  4067c5:	48 89 f1             	mov    %rsi,%rcx
  4067c8:	48 89 e5             	mov    %rsp,%rbp
  4067cb:	41 55                	push   %r13
  4067cd:	49 89 d5             	mov    %rdx,%r13
  4067d0:	41 54                	push   %r12
  4067d2:	53                   	push   %rbx
  4067d3:	48 89 fb             	mov    %rdi,%rbx
  4067d6:	48 83 ec 18          	sub    $0x18,%rsp
  4067da:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  4067e1:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  4067e5:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  4067e9:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4067ee:	49 8b 3c 24          	mov    (%r12),%rdi
  4067f2:	48 29 f2             	sub    %rsi,%rdx
  4067f5:	48 39 c2             	cmp    %rax,%rdx
  4067f8:	48 0f 47 d0          	cmova  %rax,%rdx
  4067fc:	48 85 d2             	test   %rdx,%rdx
  4067ff:	75 2f                	jne    406830 <sn_write+0x70>
  406801:	49 39 c5             	cmp    %rax,%r13
  406804:	49 0f 46 c5          	cmovbe %r13,%rax
  406808:	48 89 c2             	mov    %rax,%rdx
  40680b:	48 85 c0             	test   %rax,%rax
  40680e:	75 5c                	jne    40686c <sn_write+0xac>
  406810:	c6 07 00             	movb   $0x0,(%rdi)
  406813:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406817:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40681b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40681f:	48 83 c4 18          	add    $0x18,%rsp
  406823:	4c 89 e8             	mov    %r13,%rax
  406826:	5b                   	pop    %rbx
  406827:	41 5c                	pop    %r12
  406829:	41 5d                	pop    %r13
  40682b:	5d                   	pop    %rbp
  40682c:	c3                   	ret
  40682d:	0f 1f 00             	nopl   (%rax)
  406830:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406834:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406838:	e8 f0 f4 ff ff       	call   405d2d <memcpy>
  40683d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406841:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406846:	49 8b 3c 24          	mov    (%r12),%rdi
  40684a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40684e:	48 29 d0             	sub    %rdx,%rax
  406851:	48 01 d7             	add    %rdx,%rdi
  406854:	49 39 c5             	cmp    %rax,%r13
  406857:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40685c:	49 0f 46 c5          	cmovbe %r13,%rax
  406860:	49 89 3c 24          	mov    %rdi,(%r12)
  406864:	48 89 c2             	mov    %rax,%rdx
  406867:	48 85 c0             	test   %rax,%rax
  40686a:	74 a4                	je     406810 <sn_write+0x50>
  40686c:	48 89 ce             	mov    %rcx,%rsi
  40686f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  406873:	e8 b5 f4 ff ff       	call   405d2d <memcpy>
  406878:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40687c:	49 8b 3c 24          	mov    (%r12),%rdi
  406880:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  406885:	48 01 d7             	add    %rdx,%rdi
  406888:	49 89 3c 24          	mov    %rdi,(%r12)
  40688c:	eb 82                	jmp    406810 <sn_write+0x50>
  40688e:	66 90                	xchg   %ax,%ax

0000000000406890 <vsnprintf>:
  406890:	f3 0f 1e fa          	endbr64
  406894:	55                   	push   %rbp
  406895:	49 89 c9             	mov    %rcx,%r9
  406898:	49 89 d0             	mov    %rdx,%r8
  40689b:	48 89 e5             	mov    %rsp,%rbp
  40689e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  4068a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4068ac:	00 00 
  4068ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4068b2:	31 c0                	xor    %eax,%eax
  4068b4:	48 85 f6             	test   %rsi,%rsi
  4068b7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4068bb:	0f 95 c1             	setne  %cl
  4068be:	48 0f 45 d7          	cmovne %rdi,%rdx
  4068c2:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4068c9:	0f b6 c9             	movzbl %cl,%ecx
  4068cc:	48 29 ce             	sub    %rcx,%rsi
  4068cf:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  4068d4:	c6 02 00             	movb   $0x0,(%rdx)
  4068d7:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  4068de:	4c 89 ca             	mov    %r9,%rdx
  4068e1:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  4068e8:	4c 89 c6             	mov    %r8,%rsi
  4068eb:	f3 48 ab             	rep stos %rax,(%rdi)
  4068ee:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 4067c0 <sn_write>
  4068f5:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4068fc:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406903:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406907:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40690e:	48 8b 05 cb 24 00 00 	mov    0x24cb(%rip),%rax        # 408de0 <errmsgstr+0x780>
  406915:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406919:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406920:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406924:	e8 67 f1 ff ff       	call   405a90 <vfprintf>
  406929:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40692d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406934:	00 00 
  406936:	75 02                	jne    40693a <vsnprintf+0xaa>
  406938:	c9                   	leave
  406939:	c3                   	ret
  40693a:	e8 61 c0 ff ff       	call   4029a0 <__stack_chk_fail>
  40693f:	90                   	nop

0000000000406940 <memchr>:
  406940:	f3 0f 1e fa          	endbr64
  406944:	48 89 d0             	mov    %rdx,%rax
  406947:	40 0f b6 ce          	movzbl %sil,%ecx
  40694b:	40 f6 c7 07          	test   $0x7,%dil
  40694f:	75 1c                	jne    40696d <memchr+0x2d>
  406951:	eb 2d                	jmp    406980 <memchr+0x40>
  406953:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406958:	0f b6 17             	movzbl (%rdi),%edx
  40695b:	39 ca                	cmp    %ecx,%edx
  40695d:	74 28                	je     406987 <memchr+0x47>
  40695f:	48 83 c7 01          	add    $0x1,%rdi
  406963:	48 83 e8 01          	sub    $0x1,%rax
  406967:	40 f6 c7 07          	test   $0x7,%dil
  40696b:	74 13                	je     406980 <memchr+0x40>
  40696d:	48 85 c0             	test   %rax,%rax
  406970:	75 e6                	jne    406958 <memchr+0x18>
  406972:	31 d2                	xor    %edx,%edx
  406974:	48 89 d0             	mov    %rdx,%rax
  406977:	c3                   	ret
  406978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40697f:	00 
  406980:	31 d2                	xor    %edx,%edx
  406982:	48 85 c0             	test   %rax,%rax
  406985:	74 ed                	je     406974 <memchr+0x34>
  406987:	0f b6 17             	movzbl (%rdi),%edx
  40698a:	39 ca                	cmp    %ecx,%edx
  40698c:	0f 84 ce 00 00 00    	je     406a60 <memchr+0x120>
  406992:	48 83 f8 07          	cmp    $0x7,%rax
  406996:	0f 86 c4 00 00 00    	jbe    406a60 <memchr+0x120>
  40699c:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4069a3:	01 01 01 
  4069a6:	4c 63 c1             	movslq %ecx,%r8
  4069a9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4069b0:	fe fe fe 
  4069b3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4069ba:	80 80 80 
  4069bd:	4c 0f af c2          	imul   %rdx,%r8
  4069c1:	48 89 fa             	mov    %rdi,%rdx
  4069c4:	eb 48                	jmp    406a0e <memchr+0xce>
  4069c6:	0f 1f 00             	nopl   (%rax)
  4069c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069d0:	00 00 00 00 
  4069d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069db:	00 00 00 00 
  4069df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069e6:	00 00 00 00 
  4069ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069f1:	00 00 00 00 
  4069f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069fc:	00 00 00 00 
  406a00:	48 83 e8 08          	sub    $0x8,%rax
  406a04:	48 83 c2 08          	add    $0x8,%rdx
  406a08:	48 83 f8 07          	cmp    $0x7,%rax
  406a0c:	76 5a                	jbe    406a68 <memchr+0x128>
  406a0e:	48 8b 32             	mov    (%rdx),%rsi
  406a11:	4c 31 c6             	xor    %r8,%rsi
  406a14:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406a18:	48 f7 d6             	not    %rsi
  406a1b:	48 21 fe             	and    %rdi,%rsi
  406a1e:	4c 85 ce             	test   %r9,%rsi
  406a21:	74 dd                	je     406a00 <memchr+0xc0>
  406a23:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a31:	00 00 00 00 
  406a35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a3c:	00 00 00 00 
  406a40:	0f b6 32             	movzbl (%rdx),%esi
  406a43:	39 ce                	cmp    %ecx,%esi
  406a45:	0f 84 29 ff ff ff    	je     406974 <memchr+0x34>
  406a4b:	48 83 c2 01          	add    $0x1,%rdx
  406a4f:	48 83 e8 01          	sub    $0x1,%rax
  406a53:	75 eb                	jne    406a40 <memchr+0x100>
  406a55:	e9 18 ff ff ff       	jmp    406972 <memchr+0x32>
  406a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a60:	48 89 fa             	mov    %rdi,%rdx
  406a63:	eb db                	jmp    406a40 <memchr+0x100>
  406a65:	0f 1f 00             	nopl   (%rax)
  406a68:	48 85 c0             	test   %rax,%rax
  406a6b:	75 d3                	jne    406a40 <memchr+0x100>
  406a6d:	e9 00 ff ff ff       	jmp    406972 <memchr+0x32>
  406a72:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406a79:	00 00 00 
  406a7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406a80 <__stpcpy>:
  406a80:	f3 0f 1e fa          	endbr64
  406a84:	48 89 f9             	mov    %rdi,%rcx
  406a87:	48 89 f8             	mov    %rdi,%rax
  406a8a:	48 89 f2             	mov    %rsi,%rdx
  406a8d:	48 31 f1             	xor    %rsi,%rcx
  406a90:	83 e1 07             	and    $0x7,%ecx
  406a93:	74 5c                	je     406af1 <__stpcpy+0x71>
  406a95:	0f b6 0a             	movzbl (%rdx),%ecx
  406a98:	88 08                	mov    %cl,(%rax)
  406a9a:	84 c9                	test   %cl,%cl
  406a9c:	0f 84 c6 00 00 00    	je     406b68 <__stpcpy+0xe8>
  406aa2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406aa9:	00 
  406aaa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406ab1:	00 00 00 00 
  406ab5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406abc:	00 00 00 00 
  406ac0:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406ac4:	48 83 c2 01          	add    $0x1,%rdx
  406ac8:	48 83 c0 01          	add    $0x1,%rax
  406acc:	88 08                	mov    %cl,(%rax)
  406ace:	84 c9                	test   %cl,%cl
  406ad0:	75 ee                	jne    406ac0 <__stpcpy+0x40>
  406ad2:	c3                   	ret
  406ad3:	66 90                	xchg   %ax,%ax
  406ad5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406adc:	00 00 00 00 
  406ae0:	0f b6 0a             	movzbl (%rdx),%ecx
  406ae3:	88 08                	mov    %cl,(%rax)
  406ae5:	84 c9                	test   %cl,%cl
  406ae7:	74 e9                	je     406ad2 <__stpcpy+0x52>
  406ae9:	48 83 c2 01          	add    $0x1,%rdx
  406aed:	48 83 c0 01          	add    $0x1,%rax
  406af1:	f6 c2 07             	test   $0x7,%dl
  406af4:	75 ea                	jne    406ae0 <__stpcpy+0x60>
  406af6:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  406afd:	fe fe fe 
  406b00:	48 8b 0a             	mov    (%rdx),%rcx
  406b03:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  406b0a:	80 80 80 
  406b0d:	48 89 cf             	mov    %rcx,%rdi
  406b10:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406b14:	48 f7 d7             	not    %rdi
  406b17:	48 21 fe             	and    %rdi,%rsi
  406b1a:	4c 85 ce             	test   %r9,%rsi
  406b1d:	0f 85 72 ff ff ff    	jne    406a95 <__stpcpy+0x15>
  406b23:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b31:	00 00 00 00 
  406b35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b3c:	00 00 00 00 
  406b40:	48 83 c2 08          	add    $0x8,%rdx
  406b44:	48 89 08             	mov    %rcx,(%rax)
  406b47:	48 83 c0 08          	add    $0x8,%rax
  406b4b:	48 8b 0a             	mov    (%rdx),%rcx
  406b4e:	48 89 cf             	mov    %rcx,%rdi
  406b51:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406b55:	48 f7 d7             	not    %rdi
  406b58:	48 21 fe             	and    %rdi,%rsi
  406b5b:	4c 85 ce             	test   %r9,%rsi
  406b5e:	74 e0                	je     406b40 <__stpcpy+0xc0>
  406b60:	e9 30 ff ff ff       	jmp    406a95 <__stpcpy+0x15>
  406b65:	0f 1f 00             	nopl   (%rax)
  406b68:	c3                   	ret

0000000000406b69 <__set_thread_area>:
  406b69:	48 89 fe             	mov    %rdi,%rsi
  406b6c:	bf 02 10 00 00       	mov    $0x1002,%edi
  406b71:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406b76:	0f 05                	syscall
  406b78:	c3                   	ret
  406b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406b80 <__lseek>:
  406b80:	f3 0f 1e fa          	endbr64
  406b84:	48 63 ff             	movslq %edi,%rdi
  406b87:	48 63 d2             	movslq %edx,%rdx
  406b8a:	b8 08 00 00 00       	mov    $0x8,%eax
  406b8f:	0f 05                	syscall
  406b91:	48 89 c7             	mov    %rax,%rdi
  406b94:	e9 07 00 00 00       	jmp    406ba0 <__syscall_ret>
  406b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406ba0 <__syscall_ret>:
  406ba0:	f3 0f 1e fa          	endbr64
  406ba4:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406bab:	77 0b                	ja     406bb8 <__syscall_ret+0x18>
  406bad:	48 89 f8             	mov    %rdi,%rax
  406bb0:	c3                   	ret
  406bb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406bb8:	55                   	push   %rbp
  406bb9:	48 89 e5             	mov    %rsp,%rbp
  406bbc:	53                   	push   %rbx
  406bbd:	48 89 fb             	mov    %rdi,%rbx
  406bc0:	48 83 ec 08          	sub    $0x8,%rsp
  406bc4:	e8 c7 f5 ff ff       	call   406190 <__errno_location>
  406bc9:	89 df                	mov    %ebx,%edi
  406bcb:	f7 df                	neg    %edi
  406bcd:	89 38                	mov    %edi,(%rax)
  406bcf:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406bd6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406bda:	c9                   	leave
  406bdb:	c3                   	ret
  406bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406be0 <wcrtomb>:
  406be0:	f3 0f 1e fa          	endbr64
  406be4:	48 85 ff             	test   %rdi,%rdi
  406be7:	0f 84 d6 00 00 00    	je     406cc3 <wcrtomb+0xe3>
  406bed:	83 fe 7f             	cmp    $0x7f,%esi
  406bf0:	0f 86 ca 00 00 00    	jbe    406cc0 <wcrtomb+0xe0>
  406bf6:	55                   	push   %rbp
  406bf7:	89 f0                	mov    %esi,%eax
  406bf9:	48 89 f9             	mov    %rdi,%rcx
  406bfc:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406c03:	00 00 
  406c05:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406c0c:	48 89 e5             	mov    %rsp,%rbp
  406c0f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406c13:	74 53                	je     406c68 <wcrtomb+0x88>
  406c15:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406c1b:	0f 86 af 00 00 00    	jbe    406cd0 <wcrtomb+0xf0>
  406c21:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406c27:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406c2d:	0f 86 bd 00 00 00    	jbe    406cf0 <wcrtomb+0x110>
  406c33:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406c39:	0f 86 b1 00 00 00    	jbe    406cf0 <wcrtomb+0x110>
  406c3f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406c45:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406c4b:	76 33                	jbe    406c80 <wcrtomb+0xa0>
  406c4d:	e8 3e f5 ff ff       	call   406190 <__errno_location>
  406c52:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406c58:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406c5f:	5d                   	pop    %rbp
  406c60:	c3                   	ret
  406c61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c68:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406c6d:	83 f8 7f             	cmp    $0x7f,%eax
  406c70:	77 db                	ja     406c4d <wcrtomb+0x6d>
  406c72:	40 88 37             	mov    %sil,(%rdi)
  406c75:	b8 01 00 00 00       	mov    $0x1,%eax
  406c7a:	5d                   	pop    %rbp
  406c7b:	c3                   	ret
  406c7c:	0f 1f 40 00          	nopl   0x0(%rax)
  406c80:	89 c7                	mov    %eax,%edi
  406c82:	83 e0 3f             	and    $0x3f,%eax
  406c85:	89 f2                	mov    %esi,%edx
  406c87:	c1 fe 0c             	sar    $0xc,%esi
  406c8a:	c1 ff 06             	sar    $0x6,%edi
  406c8d:	c1 e0 08             	shl    $0x8,%eax
  406c90:	83 e6 3f             	and    $0x3f,%esi
  406c93:	83 e7 3f             	and    $0x3f,%edi
  406c96:	c1 fa 12             	sar    $0x12,%edx
  406c99:	09 f8                	or     %edi,%eax
  406c9b:	0f b6 d2             	movzbl %dl,%edx
  406c9e:	c1 e0 08             	shl    $0x8,%eax
  406ca1:	09 f0                	or     %esi,%eax
  406ca3:	8b 35 67 18 00 00    	mov    0x1867(%rip),%esi        # 408510 <states+0x1f0>
  406ca9:	c1 e0 08             	shl    $0x8,%eax
  406cac:	09 d0                	or     %edx,%eax
  406cae:	09 f0                	or     %esi,%eax
  406cb0:	89 01                	mov    %eax,(%rcx)
  406cb2:	b8 04 00 00 00       	mov    $0x4,%eax
  406cb7:	5d                   	pop    %rbp
  406cb8:	c3                   	ret
  406cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406cc0:	40 88 37             	mov    %sil,(%rdi)
  406cc3:	b8 01 00 00 00       	mov    $0x1,%eax
  406cc8:	c3                   	ret
  406cc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406cd0:	89 f2                	mov    %esi,%edx
  406cd2:	83 e0 3f             	and    $0x3f,%eax
  406cd5:	c1 fa 06             	sar    $0x6,%edx
  406cd8:	83 c8 80             	or     $0xffffff80,%eax
  406cdb:	83 ca c0             	or     $0xffffffc0,%edx
  406cde:	88 47 01             	mov    %al,0x1(%rdi)
  406ce1:	b8 02 00 00 00       	mov    $0x2,%eax
  406ce6:	88 17                	mov    %dl,(%rdi)
  406ce8:	5d                   	pop    %rbp
  406ce9:	c3                   	ret
  406cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406cf0:	89 c2                	mov    %eax,%edx
  406cf2:	c1 fa 0c             	sar    $0xc,%edx
  406cf5:	83 ca e0             	or     $0xffffffe0,%edx
  406cf8:	88 11                	mov    %dl,(%rcx)
  406cfa:	89 c2                	mov    %eax,%edx
  406cfc:	83 e0 3f             	and    $0x3f,%eax
  406cff:	c1 fa 06             	sar    $0x6,%edx
  406d02:	83 c8 80             	or     $0xffffff80,%eax
  406d05:	83 e2 3f             	and    $0x3f,%edx
  406d08:	88 41 02             	mov    %al,0x2(%rcx)
  406d0b:	b8 03 00 00 00       	mov    $0x3,%eax
  406d10:	83 ca 80             	or     $0xffffff80,%edx
  406d13:	88 51 01             	mov    %dl,0x1(%rcx)
  406d16:	5d                   	pop    %rbp
  406d17:	c3                   	ret
  406d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406d1f:	00 

0000000000406d20 <close_file>:
  406d20:	48 85 ff             	test   %rdi,%rdi
  406d23:	74 6b                	je     406d90 <close_file+0x70>
  406d25:	55                   	push   %rbp
  406d26:	48 89 e5             	mov    %rsp,%rbp
  406d29:	53                   	push   %rbx
  406d2a:	48 89 fb             	mov    %rdi,%rbx
  406d2d:	48 83 ec 08          	sub    $0x8,%rsp
  406d31:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406d37:	85 c0                	test   %eax,%eax
  406d39:	79 3d                	jns    406d78 <close_file+0x58>
  406d3b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406d3f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406d43:	74 0a                	je     406d4f <close_file+0x2f>
  406d45:	31 d2                	xor    %edx,%edx
  406d47:	31 f6                	xor    %esi,%esi
  406d49:	48 89 df             	mov    %rbx,%rdi
  406d4c:	ff 53 48             	call   *0x48(%rbx)
  406d4f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406d53:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406d57:	48 39 c6             	cmp    %rax,%rsi
  406d5a:	74 24                	je     406d80 <close_file+0x60>
  406d5c:	48 29 c6             	sub    %rax,%rsi
  406d5f:	48 89 df             	mov    %rbx,%rdi
  406d62:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406d66:	ba 01 00 00 00       	mov    $0x1,%edx
  406d6b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d6f:	c9                   	leave
  406d70:	ff e0                	jmp    *%rax
  406d72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d78:	e8 43 f6 ff ff       	call   4063c0 <__lockfile>
  406d7d:	eb bc                	jmp    406d3b <close_file+0x1b>
  406d7f:	90                   	nop
  406d80:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d84:	c9                   	leave
  406d85:	c3                   	ret
  406d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d8d:	00 00 00 
  406d90:	c3                   	ret
  406d91:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d98:	00 00 00 
  406d9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406da0 <__stdio_exit>:
  406da0:	f3 0f 1e fa          	endbr64
  406da4:	55                   	push   %rbp
  406da5:	48 89 e5             	mov    %rsp,%rbp
  406da8:	53                   	push   %rbx
  406da9:	48 83 ec 08          	sub    $0x8,%rsp
  406dad:	e8 7e 01 00 00       	call   406f30 <__ofl_lock>
  406db2:	48 8b 18             	mov    (%rax),%rbx
  406db5:	48 85 db             	test   %rbx,%rbx
  406db8:	74 17                	je     406dd1 <__stdio_exit+0x31>
  406dba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406dc0:	48 89 df             	mov    %rbx,%rdi
  406dc3:	e8 58 ff ff ff       	call   406d20 <close_file>
  406dc8:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406dcc:	48 85 db             	test   %rbx,%rbx
  406dcf:	75 ef                	jne    406dc0 <__stdio_exit+0x20>
  406dd1:	48 8b 3d c0 49 00 00 	mov    0x49c0(%rip),%rdi        # 40b798 <__stderr_used>
  406dd8:	e8 43 ff ff ff       	call   406d20 <close_file>
  406ddd:	48 8b 3d 24 42 00 00 	mov    0x4224(%rip),%rdi        # 40b008 <__stdout_used>
  406de4:	e8 37 ff ff ff       	call   406d20 <close_file>
  406de9:	48 8b 3d a8 49 00 00 	mov    0x49a8(%rip),%rdi        # 40b798 <__stderr_used>
  406df0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406df4:	c9                   	leave
  406df5:	e9 26 ff ff ff       	jmp    406d20 <close_file>
  406dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406e00 <__stdio_write>:
  406e00:	f3 0f 1e fa          	endbr64
  406e04:	55                   	push   %rbp
  406e05:	48 89 e5             	mov    %rsp,%rbp
  406e08:	41 57                	push   %r15
  406e0a:	41 56                	push   %r14
  406e0c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406e10:	41 55                	push   %r13
  406e12:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406e18:	41 54                	push   %r12
  406e1a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406e20:	53                   	push   %rbx
  406e21:	48 89 fb             	mov    %rdi,%rbx
  406e24:	48 83 ec 48          	sub    $0x48,%rsp
  406e28:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406e2c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406e30:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406e37:	00 00 
  406e39:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406e3d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406e41:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406e45:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406e49:	49 29 c0             	sub    %rax,%r8
  406e4c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406e50:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406e54:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406e58:	eb 37                	jmp    406e91 <__stdio_write+0x91>
  406e5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e60:	48 85 c0             	test   %rax,%rax
  406e63:	0f 88 8f 00 00 00    	js     406ef8 <__stdio_write+0xf8>
  406e69:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406e6d:	49 29 c6             	sub    %rax,%r14
  406e70:	48 39 c2             	cmp    %rax,%rdx
  406e73:	73 12                	jae    406e87 <__stdio_write+0x87>
  406e75:	41 83 ed 01          	sub    $0x1,%r13d
  406e79:	48 29 d0             	sub    %rdx,%rax
  406e7c:	49 83 c7 10          	add    $0x10,%r15
  406e80:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406e84:	4d 63 e5             	movslq %r13d,%r12
  406e87:	48 29 c2             	sub    %rax,%rdx
  406e8a:	49 01 07             	add    %rax,(%r15)
  406e8d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406e91:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406e95:	b8 14 00 00 00       	mov    $0x14,%eax
  406e9a:	4c 89 fe             	mov    %r15,%rsi
  406e9d:	4c 89 e2             	mov    %r12,%rdx
  406ea0:	0f 05                	syscall
  406ea2:	48 89 c7             	mov    %rax,%rdi
  406ea5:	e8 f6 fc ff ff       	call   406ba0 <__syscall_ret>
  406eaa:	49 39 c6             	cmp    %rax,%r14
  406ead:	75 b1                	jne    406e60 <__stdio_write+0x60>
  406eaf:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406eb3:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406eb7:	48 01 c1             	add    %rax,%rcx
  406eba:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406ebf:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406ec3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406ec7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406ecc:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406ed0:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406ed4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406ed8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406edf:	00 00 
  406ee1:	75 3a                	jne    406f1d <__stdio_write+0x11d>
  406ee3:	48 83 c4 48          	add    $0x48,%rsp
  406ee7:	5b                   	pop    %rbx
  406ee8:	41 5c                	pop    %r12
  406eea:	41 5d                	pop    %r13
  406eec:	41 5e                	pop    %r14
  406eee:	41 5f                	pop    %r15
  406ef0:	5d                   	pop    %rbp
  406ef1:	c3                   	ret
  406ef2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ef8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406efc:	83 0b 20             	orl    $0x20,(%rbx)
  406eff:	31 c0                	xor    %eax,%eax
  406f01:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406f08:	00 
  406f09:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406f0d:	41 83 fd 02          	cmp    $0x2,%r13d
  406f11:	74 c1                	je     406ed4 <__stdio_write+0xd4>
  406f13:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406f17:	49 2b 47 08          	sub    0x8(%r15),%rax
  406f1b:	eb b7                	jmp    406ed4 <__stdio_write+0xd4>
  406f1d:	e8 7e ba ff ff       	call   4029a0 <__stack_chk_fail>
  406f22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406f29:	00 00 00 
  406f2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406f30 <__ofl_lock>:
  406f30:	f3 0f 1e fa          	endbr64
  406f34:	55                   	push   %rbp
  406f35:	48 8d 3d 64 48 00 00 	lea    0x4864(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f3c:	48 89 e5             	mov    %rsp,%rbp
  406f3f:	e8 1c 00 00 00       	call   406f60 <__lock>
  406f44:	48 8d 05 5d 48 00 00 	lea    0x485d(%rip),%rax        # 40b7a8 <ofl_head>
  406f4b:	5d                   	pop    %rbp
  406f4c:	c3                   	ret
  406f4d:	0f 1f 00             	nopl   (%rax)

0000000000406f50 <__ofl_unlock>:
  406f50:	f3 0f 1e fa          	endbr64
  406f54:	48 8d 3d 45 48 00 00 	lea    0x4845(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f5b:	e9 e0 00 00 00       	jmp    407040 <__unlock>

0000000000406f60 <__lock>:
  406f60:	f3 0f 1e fa          	endbr64
  406f64:	0f be 0d f8 41 00 00 	movsbl 0x41f8(%rip),%ecx        # 40b163 <__libc+0x3>
  406f6b:	85 c9                	test   %ecx,%ecx
  406f6d:	74 51                	je     406fc0 <__lock+0x60>
  406f6f:	31 c0                	xor    %eax,%eax
  406f71:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406f76:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406f7a:	89 c2                	mov    %eax,%edx
  406f7c:	85 c9                	test   %ecx,%ecx
  406f7e:	78 48                	js     406fc8 <__lock+0x68>
  406f80:	85 c0                	test   %eax,%eax
  406f82:	74 3c                	je     406fc0 <__lock+0x60>
  406f84:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406f8a:	eb 1e                	jmp    406faa <__lock+0x4a>
  406f8c:	0f 1f 40 00          	nopl   0x0(%rax)
  406f90:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406f96:	89 d1                	mov    %edx,%ecx
  406f98:	89 c8                	mov    %ecx,%eax
  406f9a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406f9e:	89 c2                	mov    %eax,%edx
  406fa0:	39 c1                	cmp    %eax,%ecx
  406fa2:	74 1c                	je     406fc0 <__lock+0x60>
  406fa4:	41 83 e8 01          	sub    $0x1,%r8d
  406fa8:	74 2e                	je     406fd8 <__lock+0x78>
  406faa:	85 d2                	test   %edx,%edx
  406fac:	79 e2                	jns    406f90 <__lock+0x30>
  406fae:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406fb4:	89 d6                	mov    %edx,%esi
  406fb6:	eb e0                	jmp    406f98 <__lock+0x38>
  406fb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406fbf:	00 
  406fc0:	c3                   	ret
  406fc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406fc8:	c6 05 94 41 00 00 00 	movb   $0x0,0x4194(%rip)        # 40b163 <__libc+0x3>
  406fcf:	85 c0                	test   %eax,%eax
  406fd1:	75 b1                	jne    406f84 <__lock+0x24>
  406fd3:	c3                   	ret
  406fd4:	0f 1f 40 00          	nopl   0x0(%rax)
  406fd8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406fde:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406fe3:	41 83 c0 01          	add    $0x1,%r8d
  406fe7:	eb 1c                	jmp    407005 <__lock+0xa5>
  406fe9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ff0:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406ff7:	89 d0                	mov    %edx,%eax
  406ff9:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406ffe:	41 89 c0             	mov    %eax,%r8d
  407001:	39 c2                	cmp    %eax,%edx
  407003:	74 bb                	je     406fc0 <__lock+0x60>
  407005:	44 89 c2             	mov    %r8d,%edx
  407008:	45 85 c0             	test   %r8d,%r8d
  40700b:	79 e3                	jns    406ff0 <__lock+0x90>
  40700d:	49 63 d0             	movslq %r8d,%rdx
  407010:	45 31 d2             	xor    %r10d,%r10d
  407013:	b8 ca 00 00 00       	mov    $0xca,%eax
  407018:	be 80 00 00 00       	mov    $0x80,%esi
  40701d:	0f 05                	syscall
  40701f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407023:	75 09                	jne    40702e <__lock+0xce>
  407025:	31 f6                	xor    %esi,%esi
  407027:	b8 ca 00 00 00       	mov    $0xca,%eax
  40702c:	0f 05                	syscall
  40702e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  407035:	eb b9                	jmp    406ff0 <__lock+0x90>
  407037:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40703e:	00 00 

0000000000407040 <__unlock>:
  407040:	f3 0f 1e fa          	endbr64
  407044:	8b 07                	mov    (%rdi),%eax
  407046:	85 c0                	test   %eax,%eax
  407048:	78 06                	js     407050 <__unlock+0x10>
  40704a:	c3                   	ret
  40704b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407050:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  407055:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  407059:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  40705e:	74 ea                	je     40704a <__unlock+0xa>
  407060:	be 81 00 00 00       	mov    $0x81,%esi
  407065:	b8 ca 00 00 00       	mov    $0xca,%eax
  40706a:	ba 01 00 00 00       	mov    $0x1,%edx
  40706f:	0f 05                	syscall
  407071:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407075:	75 d3                	jne    40704a <__unlock+0xa>
  407077:	b8 ca 00 00 00       	mov    $0xca,%eax
  40707c:	be 01 00 00 00       	mov    $0x1,%esi
  407081:	0f 05                	syscall
  407083:	c3                   	ret

Disassembly of section .fini:

0000000000407084 <_fini>:
  407084:	50                   	push   %rax
  407085:	58                   	pop    %rax
  407086:	c3                   	ret
