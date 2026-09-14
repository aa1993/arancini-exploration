
test_blendvps_assert_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 bc 17 00 00       	call   402810 <__funcs_on_exit>
  401054:	e8 c7 17 00 00       	call   402820 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 20 5e 00 00       	call   406e80 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 d9 50 00 00       	call   406140 <_Exit>

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
  40108a:	49 c7 c0 64 71 40 00 	mov    $0x407164,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 99 16 00 00       	jmp    402740 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 67 00 00 	lea    0x67fa(%rip),%rcx        # 408000 <_fini+0xe9c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 d2 11 00 00       	call   402a00 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 d9 43 00 00       	call   405c20 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 a4 0f 00 00       	call   402800 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 67 00 00 	lea    0x6777(%rip),%rcx        # 408021 <_fini+0xebd>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 36 11 00 00       	call   402a00 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 3d 43 00 00       	call   405c20 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 08 0f 00 00       	call   402800 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 65 00 00 	lea    0x65ce(%rip),%rsi        # 408030 <_fini+0xecc>
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
  401a9f:	e8 5c 0f 00 00       	call   402a00 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 5f 41 00 00       	call   405c20 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 2a 0d 00 00       	call   402800 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 64 00 00 	lea    0x64d7(%rip),%rsi        # 408078 <_fini+0xf14>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 3e 0e 00 00       	call   402a00 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 41 40 00 00       	call   405c20 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 0c 0c 00 00       	call   402800 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 64 00 00 	lea    0x643b(%rip),%rsi        # 408099 <_fini+0xf35>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 88 0d 00 00       	call   402a00 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 8f 3f 00 00       	call   405c20 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 5a 0b 00 00       	call   402800 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 63 00 00 	lea    0x63b7(%rip),%rsi        # 4080aa <_fini+0xf46>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 f9 0c 00 00       	call   402a00 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 00 3f 00 00       	call   405c20 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 cb 0a 00 00       	call   402800 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 61 00 00 	lea    0x6191(%rip),%rsi        # 408030 <_fini+0xecc>
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
  401edc:	e8 1f 0b 00 00       	call   402a00 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 22 3d 00 00       	call   405c20 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 ed 08 00 00       	call   402800 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 60 00 00 	lea    0x609a(%rip),%rsi        # 408078 <_fini+0xf14>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 01 0a 00 00       	call   402a00 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 04 3c 00 00       	call   405c20 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 cf 07 00 00       	call   402800 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 60 00 00 	lea    0x601a(%rip),%rsi        # 4080b5 <_fini+0xf51>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 4b 09 00 00       	call   402a00 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 52 3b 00 00       	call   405c20 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 1d 07 00 00       	call   402800 <__stack_chk_fail>
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
  402129:	48 8d 35 96 5f 00 00 	lea    0x5f96(%rip),%rsi        # 4080c6 <_fini+0xf62>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 bc 08 00 00       	call   402a00 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 c3 3a 00 00       	call   405c20 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 8e 06 00 00       	call   402800 <__stack_chk_fail>
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
  40217c:	48 81 ec e0 04 00 00 	sub    $0x4e0,%rsp
  402183:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40218a:	00 00 
  40218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402190:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402192:	f3 0f 10 05 a2 5f 00 	movss  0x5fa2(%rip),%xmm0        # 40813c <_fini+0xfd8>
  402199:	00 
  40219a:	f3 0f 11 85 a0 fb ff 	movss  %xmm0,-0x460(%rbp)
  4021a1:	ff 
  4021a2:	f3 0f 10 05 96 5f 00 	movss  0x5f96(%rip),%xmm0        # 408140 <_fini+0xfdc>
  4021a9:	00 
  4021aa:	f3 0f 11 85 a4 fb ff 	movss  %xmm0,-0x45c(%rbp)
  4021b1:	ff 
  4021b2:	f3 0f 10 05 8a 5f 00 	movss  0x5f8a(%rip),%xmm0        # 408144 <_fini+0xfe0>
  4021b9:	00 
  4021ba:	f3 0f 11 85 a8 fb ff 	movss  %xmm0,-0x458(%rbp)
  4021c1:	ff 
  4021c2:	f3 0f 10 05 7e 5f 00 	movss  0x5f7e(%rip),%xmm0        # 408148 <_fini+0xfe4>
  4021c9:	00 
  4021ca:	f3 0f 11 85 ac fb ff 	movss  %xmm0,-0x454(%rbp)
  4021d1:	ff 
    C_IN_TYPE in2[IN_LEN] = SRC2;
  4021d2:	f3 0f 10 05 72 5f 00 	movss  0x5f72(%rip),%xmm0        # 40814c <_fini+0xfe8>
  4021d9:	00 
  4021da:	f3 0f 11 85 b0 fb ff 	movss  %xmm0,-0x450(%rbp)
  4021e1:	ff 
  4021e2:	f3 0f 10 05 66 5f 00 	movss  0x5f66(%rip),%xmm0        # 408150 <_fini+0xfec>
  4021e9:	00 
  4021ea:	f3 0f 11 85 b4 fb ff 	movss  %xmm0,-0x44c(%rbp)
  4021f1:	ff 
  4021f2:	f3 0f 10 05 5a 5f 00 	movss  0x5f5a(%rip),%xmm0        # 408154 <_fini+0xff0>
  4021f9:	00 
  4021fa:	f3 0f 11 85 b8 fb ff 	movss  %xmm0,-0x448(%rbp)
  402201:	ff 
  402202:	f3 0f 10 05 4e 5f 00 	movss  0x5f4e(%rip),%xmm0        # 408158 <_fini+0xff4>
  402209:	00 
  40220a:	f3 0f 11 85 bc fb ff 	movss  %xmm0,-0x444(%rbp)
  402211:	ff 
    C_IN_TYPE in3[IN_LEN] = SRC3;
  402212:	f3 0f 10 05 42 5f 00 	movss  0x5f42(%rip),%xmm0        # 40815c <_fini+0xff8>
  402219:	00 
  40221a:	f3 0f 11 85 c0 fb ff 	movss  %xmm0,-0x440(%rbp)
  402221:	ff 
  402222:	f3 0f 10 05 36 5f 00 	movss  0x5f36(%rip),%xmm0        # 408160 <_fini+0xffc>
  402229:	00 
  40222a:	f3 0f 11 85 c4 fb ff 	movss  %xmm0,-0x43c(%rbp)
  402231:	ff 
  402232:	f3 0f 10 05 22 5f 00 	movss  0x5f22(%rip),%xmm0        # 40815c <_fini+0xff8>
  402239:	00 
  40223a:	f3 0f 11 85 c8 fb ff 	movss  %xmm0,-0x438(%rbp)
  402241:	ff 
  402242:	f3 0f 10 05 12 5f 00 	movss  0x5f12(%rip),%xmm0        # 40815c <_fini+0xff8>
  402249:	00 
  40224a:	f3 0f 11 85 cc fb ff 	movss  %xmm0,-0x434(%rbp)
  402251:	ff 
    C_OUT_TYPE con[OUT_LEN] = CON;
  402252:	f3 0f 10 05 f2 5e 00 	movss  0x5ef2(%rip),%xmm0        # 40814c <_fini+0xfe8>
  402259:	00 
  40225a:	f3 0f 11 85 d0 fb ff 	movss  %xmm0,-0x430(%rbp)
  402261:	ff 
  402262:	f3 0f 10 05 d6 5e 00 	movss  0x5ed6(%rip),%xmm0        # 408140 <_fini+0xfdc>
  402269:	00 
  40226a:	f3 0f 11 85 d4 fb ff 	movss  %xmm0,-0x42c(%rbp)
  402271:	ff 
  402272:	f3 0f 10 05 da 5e 00 	movss  0x5eda(%rip),%xmm0        # 408154 <_fini+0xff0>
  402279:	00 
  40227a:	f3 0f 11 85 d8 fb ff 	movss  %xmm0,-0x428(%rbp)
  402281:	ff 
  402282:	f3 0f 10 05 ce 5e 00 	movss  0x5ece(%rip),%xmm0        # 408158 <_fini+0xff4>
  402289:	00 
  40228a:	f3 0f 11 85 dc fb ff 	movss  %xmm0,-0x424(%rbp)
  402291:	ff 
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
  402292:	48 8d 95 a0 fb ff ff 	lea    -0x460(%rbp),%rdx
  402299:	48 8d 85 30 fb ff ff 	lea    -0x4d0(%rbp),%rax
  4022a0:	48 89 d6             	mov    %rdx,%rsi
  4022a3:	48 89 c7             	mov    %rax,%rdi
  4022a6:	e8 be ee ff ff       	call   401169 <insert_f32>
    SSE_TYPE v2;
    INSERT(&v2, in2);
  4022ab:	48 8d 95 b0 fb ff ff 	lea    -0x450(%rbp),%rdx
  4022b2:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
  4022b9:	48 89 d6             	mov    %rdx,%rsi
  4022bc:	48 89 c7             	mov    %rax,%rdi
  4022bf:	e8 a5 ee ff ff       	call   401169 <insert_f32>
    SSE_TYPE v3;
    INSERT(&v3, in3);
  4022c4:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
  4022cb:	48 8d 85 50 fb ff ff 	lea    -0x4b0(%rbp),%rax
  4022d2:	48 89 d6             	mov    %rdx,%rsi
  4022d5:	48 89 c7             	mov    %rax,%rdi
  4022d8:	e8 8c ee ff ff       	call   401169 <insert_f32>

    SSE_TYPE res = INTRINSIC_FUN(v1, v2, v3);
  4022dd:	0f 28 85 50 fb ff ff 	movaps -0x4b0(%rbp),%xmm0
  4022e4:	0f 28 8d 40 fb ff ff 	movaps -0x4c0(%rbp),%xmm1
  4022eb:	0f 28 95 30 fb ff ff 	movaps -0x4d0(%rbp),%xmm2
  4022f2:	0f 29 95 70 fb ff ff 	movaps %xmm2,-0x490(%rbp)
  4022f9:	0f 29 8d 80 fb ff ff 	movaps %xmm1,-0x480(%rbp)
  402300:	0f 29 85 90 fb ff ff 	movaps %xmm0,-0x470(%rbp)
  402307:	66 0f 6f 8d 90 fb ff 	movdqa -0x470(%rbp),%xmm1
  40230e:	ff 
  40230f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402313:	66 0f 66 c1          	pcmpgtd %xmm1,%xmm0
#endif

extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_blendv_ps (__m128 __X, __m128 __Y, __m128 __M)
{
  return (__m128) __builtin_ia32_blendvps ((__v4sf)__X,
  402317:	0f 28 8d 70 fb ff ff 	movaps -0x490(%rbp),%xmm1
  40231e:	66 0f 38 14 8d 80 fb 	blendvps %xmm0,-0x480(%rbp),%xmm1
  402325:	ff ff 
  402327:	0f 28 c1             	movaps %xmm1,%xmm0
  40232a:	90                   	nop
  40232b:	0f 29 85 60 fb ff ff 	movaps %xmm0,-0x4a0(%rbp)

    EXTRACT(out, res);
  402332:	0f 28 85 60 fb ff ff 	movaps -0x4a0(%rbp),%xmm0
  402339:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
  402340:	48 89 c7             	mov    %rax,%rdi
  402343:	e8 0e f3 ff ff       	call   401656 <extract_f32>

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  402348:	48 8d 95 a0 fb ff ff 	lea    -0x460(%rbp),%rdx
  40234f:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  402356:	48 89 d6             	mov    %rdx,%rsi
  402359:	48 89 c7             	mov    %rax,%rdi
  40235c:	e8 19 f4 ff ff       	call   40177a <to_string_f32>
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  402361:	48 8d 95 b0 fb ff ff 	lea    -0x450(%rbp),%rdx
  402368:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  40236f:	48 89 d6             	mov    %rdx,%rsi
  402372:	48 89 c7             	mov    %rax,%rdi
  402375:	e8 00 f4 ff ff       	call   40177a <to_string_f32>
    char in3_s[255];
    TO_STRING_IN(in3_s, in3);
  40237a:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
  402381:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  402388:	48 89 d6             	mov    %rdx,%rsi
  40238b:	48 89 c7             	mov    %rax,%rdi
  40238e:	e8 e7 f3 ff ff       	call   40177a <to_string_f32>
    char out_s[255];
    TO_STRING_OUT(out_s, out);
  402393:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
  40239a:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4023a1:	48 89 d6             	mov    %rdx,%rsi
  4023a4:	48 89 c7             	mov    %rax,%rdi
  4023a7:	e8 ce f3 ff ff       	call   40177a <to_string_f32>

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n%s\n |\n\\/\n%s\n",in1_s, in2_s, in3_s, out_s);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
  4023ac:	c7 85 2c fb ff ff 00 	movl   $0x0,-0x4d4(%rbp)
  4023b3:	00 00 00 
  4023b6:	eb 5c                	jmp    402414 <main+0x2a0>
        if(out[i] != con[i]){
  4023b8:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  4023be:	48 98                	cltq
  4023c0:	f3 0f 10 84 85 e0 fb 	movss  -0x420(%rbp,%rax,4),%xmm0
  4023c7:	ff ff 
  4023c9:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  4023cf:	48 98                	cltq
  4023d1:	f3 0f 10 8c 85 d0 fb 	movss  -0x430(%rbp,%rax,4),%xmm1
  4023d8:	ff ff 
  4023da:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4023dd:	7a 05                	jp     4023e4 <main+0x270>
  4023df:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4023e2:	74 29                	je     40240d <main+0x299>
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d] != con[%d]\33[0m\n", i, i);
  4023e4:	8b 95 2c fb ff ff    	mov    -0x4d4(%rbp),%edx
  4023ea:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  4023f0:	48 8d 0d e1 5c 00 00 	lea    0x5ce1(%rip),%rcx        # 4080d8 <_fini+0xf74>
  4023f7:	89 c6                	mov    %eax,%esi
  4023f9:	48 89 cf             	mov    %rcx,%rdi
  4023fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402401:	e8 5a 04 00 00       	call   402860 <printf>
            return 1;
  402406:	b8 01 00 00 00       	mov    $0x1,%eax
  40240b:	eb 24                	jmp    402431 <main+0x2bd>
    for( int i = 0; i<OUT_LEN;i++){
  40240d:	83 85 2c fb ff ff 01 	addl   $0x1,-0x4d4(%rbp)
  402414:	83 bd 2c fb ff ff 03 	cmpl   $0x3,-0x4d4(%rbp)
  40241b:	7e 9b                	jle    4023b8 <main+0x244>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
  40241d:	48 8d 05 ec 5c 00 00 	lea    0x5cec(%rip),%rax        # 408110 <_fini+0xfac>
  402424:	48 89 c7             	mov    %rax,%rdi
  402427:	e8 04 05 00 00       	call   402930 <puts>
#endif

    return 0;
  40242c:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402431:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402435:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40243c:	00 00 
  40243e:	74 05                	je     402445 <main+0x2d1>
  402440:	e8 bb 03 00 00       	call   402800 <__stack_chk_fail>
  402445:	c9                   	leave
  402446:	c3                   	ret
  402447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40244e:	00 00 

0000000000402450 <dummy>:
  402450:	f3 0f 1e fa          	endbr64
  402454:	c3                   	ret
  402455:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40245c:	00 00 00 
  40245f:	90                   	nop

0000000000402460 <dummy1>:
  402460:	f3 0f 1e fa          	endbr64
  402464:	c3                   	ret
  402465:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40246c:	00 00 00 
  40246f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402476:	00 00 00 
  402479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402480 <__init_libc>:
  402480:	f3 0f 1e fa          	endbr64
  402484:	55                   	push   %rbp
  402485:	48 89 fa             	mov    %rdi,%rdx
  402488:	31 c0                	xor    %eax,%eax
  40248a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40248f:	48 89 e5             	mov    %rsp,%rbp
  402492:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402499:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4024a0:	f3 48 ab             	rep stos %rax,(%rdi)
  4024a3:	48 c7 c0 e8 b5 40 00 	mov    $0x40b5e8,%rax
  4024aa:	48 89 10             	mov    %rdx,(%rax)
  4024ad:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  4024b1:	0f 84 c9 01 00 00    	je     402680 <__init_libc+0x200>
  4024b7:	31 c0                	xor    %eax,%eax
  4024b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024c0:	48 89 c1             	mov    %rax,%rcx
  4024c3:	48 83 c0 01          	add    $0x1,%rax
  4024c7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4024cc:	75 f2                	jne    4024c0 <__init_libc+0x40>
  4024ce:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4024d5:	00 
  4024d6:	48 01 d0             	add    %rdx,%rax
  4024d9:	48 89 05 88 8c 00 00 	mov    %rax,0x8c88(%rip)        # 40b168 <__libc+0x8>
  4024e0:	48 8b 10             	mov    (%rax),%rdx
  4024e3:	48 83 c0 08          	add    $0x8,%rax
  4024e7:	48 85 d2             	test   %rdx,%rdx
  4024ea:	0f 84 a0 01 00 00    	je     402690 <__init_libc+0x210>
  4024f0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4024fc:	00 00 00 00 
  402500:	48 83 fa 25          	cmp    $0x25,%rdx
  402504:	77 0b                	ja     402511 <__init_libc+0x91>
  402506:	48 8b 08             	mov    (%rax),%rcx
  402509:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  402510:	ff 
  402511:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402515:	48 83 c0 10          	add    $0x10,%rax
  402519:	48 85 d2             	test   %rdx,%rdx
  40251c:	75 e2                	jne    402500 <__init_libc+0x80>
  40251e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402525:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402529:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402530:	48 89 0d 11 8c 00 00 	mov    %rcx,0x8c11(%rip)        # 40b148 <__hwcap>
  402537:	48 85 c0             	test   %rax,%rax
  40253a:	74 07                	je     402543 <__init_libc+0xc3>
  40253c:	48 89 05 ed 8b 00 00 	mov    %rax,0x8bed(%rip)        # 40b130 <__sysinfo>
  402543:	48 89 15 46 8c 00 00 	mov    %rdx,0x8c46(%rip)        # 40b190 <__libc+0x30>
  40254a:	48 85 f6             	test   %rsi,%rsi
  40254d:	0f 84 15 01 00 00    	je     402668 <__init_libc+0x1e8>
  402553:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  40255a:	48 c7 c1 40 b1 40 00 	mov    $0x40b140,%rcx
  402561:	48 89 30             	mov    %rsi,(%rax)
  402564:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402568:	48 89 31             	mov    %rsi,(%rcx)
  40256b:	0f b6 16             	movzbl (%rsi),%edx
  40256e:	84 d2                	test   %dl,%dl
  402570:	74 21                	je     402593 <__init_libc+0x113>
  402572:	0f 1f 00             	nopl   (%rax)
  402575:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40257c:	00 00 00 00 
  402580:	80 fa 2f             	cmp    $0x2f,%dl
  402583:	75 03                	jne    402588 <__init_libc+0x108>
  402585:	48 89 01             	mov    %rax,(%rcx)
  402588:	0f b6 10             	movzbl (%rax),%edx
  40258b:	48 83 c0 01          	add    $0x1,%rax
  40258f:	84 d2                	test   %dl,%dl
  402591:	75 ed                	jne    402580 <__init_libc+0x100>
  402593:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40259a:	e8 f1 38 00 00       	call   405e90 <__init_tls>
  40259f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4025a3:	e8 e8 01 00 00       	call   402790 <__init_ssp>
  4025a8:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  4025af:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  4025b6:	0f 84 84 00 00 00    	je     402640 <__init_libc+0x1c0>
  4025bc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4025c0:	b8 07 00 00 00       	mov    $0x7,%eax
  4025c5:	be 03 00 00 00       	mov    $0x3,%esi
  4025ca:	31 d2                	xor    %edx,%edx
  4025cc:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4025d3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4025da:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4025e1:	00 00 00 00 
  4025e5:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  4025ec:	00 00 00 
  4025ef:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  4025f6:	00 00 00 
  4025f9:	0f 05                	syscall
  4025fb:	85 c0                	test   %eax,%eax
  4025fd:	79 01                	jns    402600 <__init_libc+0x180>
  4025ff:	f4                   	hlt
  402600:	48 89 fa             	mov    %rdi,%rdx
  402603:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  40260a:	be 02 80 00 00       	mov    $0x8002,%esi
  40260f:	48 8d 3d 4e 5b 00 00 	lea    0x5b4e(%rip),%rdi        # 408164 <_fini+0x1000>
  402616:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  40261a:	74 0d                	je     402629 <__init_libc+0x1a9>
  40261c:	b8 02 00 00 00       	mov    $0x2,%eax
  402621:	0f 05                	syscall
  402623:	48 85 c0             	test   %rax,%rax
  402626:	79 01                	jns    402629 <__init_libc+0x1a9>
  402628:	f4                   	hlt
  402629:	48 83 c2 08          	add    $0x8,%rdx
  40262d:	4c 39 c2             	cmp    %r8,%rdx
  402630:	75 e4                	jne    402616 <__init_libc+0x196>
  402632:	c6 05 29 8b 00 00 01 	movb   $0x1,0x8b29(%rip)        # 40b162 <__libc+0x2>
  402639:	c9                   	leave
  40263a:	c3                   	ret
  40263b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402640:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402647:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40264e:	0f 85 68 ff ff ff    	jne    4025bc <__init_libc+0x13c>
  402654:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402659:	0f 85 5d ff ff ff    	jne    4025bc <__init_libc+0x13c>
  40265f:	c9                   	leave
  402660:	c3                   	ret
  402661:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402668:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40266c:	48 85 c0             	test   %rax,%rax
  40266f:	74 2f                	je     4026a0 <__init_libc+0x220>
  402671:	48 89 c6             	mov    %rax,%rsi
  402674:	e9 da fe ff ff       	jmp    402553 <__init_libc+0xd3>
  402679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402680:	b8 08 00 00 00       	mov    $0x8,%eax
  402685:	e9 4c fe ff ff       	jmp    4024d6 <__init_libc+0x56>
  40268a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402690:	48 c7 05 ad 8a 00 00 	movq   $0x0,0x8aad(%rip)        # 40b148 <__hwcap>
  402697:	00 00 00 00 
  40269b:	e9 a3 fe ff ff       	jmp    402543 <__init_libc+0xc3>
  4026a0:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  4026a7:	48 8d 3d f5 5a 00 00 	lea    0x5af5(%rip),%rdi        # 4081a3 <_fini+0x103f>
  4026ae:	48 89 38             	mov    %rdi,(%rax)
  4026b1:	48 c7 c0 40 b1 40 00 	mov    $0x40b140,%rax
  4026b8:	48 89 38             	mov    %rdi,(%rax)
  4026bb:	e9 d3 fe ff ff       	jmp    402593 <__init_libc+0x113>

00000000004026c0 <__libc_start_init>:
  4026c0:	f3 0f 1e fa          	endbr64
  4026c4:	55                   	push   %rbp
  4026c5:	48 89 e5             	mov    %rsp,%rbp
  4026c8:	41 54                	push   %r12
  4026ca:	53                   	push   %rbx
  4026cb:	e8 30 e9 ff ff       	call   401000 <_init>
  4026d0:	48 c7 c3 c0 af 40 00 	mov    $0x40afc0,%rbx
  4026d7:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  4026de:	4c 39 e3             	cmp    %r12,%rbx
  4026e1:	73 18                	jae    4026fb <__libc_start_init+0x3b>
  4026e3:	66 90                	xchg   %ax,%ax
  4026e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4026ec:	00 00 00 00 
  4026f0:	ff 13                	call   *(%rbx)
  4026f2:	48 83 c3 08          	add    $0x8,%rbx
  4026f6:	4c 39 e3             	cmp    %r12,%rbx
  4026f9:	72 f5                	jb     4026f0 <__libc_start_init+0x30>
  4026fb:	5b                   	pop    %rbx
  4026fc:	41 5c                	pop    %r12
  4026fe:	5d                   	pop    %rbp
  4026ff:	c3                   	ret

0000000000402700 <libc_start_main_stage2>:
  402700:	f3 0f 1e fa          	endbr64
  402704:	55                   	push   %rbp
  402705:	48 63 c6             	movslq %esi,%rax
  402708:	48 89 e5             	mov    %rsp,%rbp
  40270b:	41 56                	push   %r14
  40270d:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  402712:	41 55                	push   %r13
  402714:	49 89 fd             	mov    %rdi,%r13
  402717:	41 54                	push   %r12
  402719:	49 89 d4             	mov    %rdx,%r12
  40271c:	53                   	push   %rbx
  40271d:	48 89 c3             	mov    %rax,%rbx
  402720:	e8 9b ff ff ff       	call   4026c0 <__libc_start_init>
  402725:	89 df                	mov    %ebx,%edi
  402727:	4c 89 f2             	mov    %r14,%rdx
  40272a:	4c 89 e6             	mov    %r12,%rsi
  40272d:	41 ff d5             	call   *%r13
  402730:	89 c7                	mov    %eax,%edi
  402732:	e8 09 e9 ff ff       	call   401040 <exit>
  402737:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40273e:	00 00 

0000000000402740 <__libc_start_main>:
  402740:	f3 0f 1e fa          	endbr64
  402744:	55                   	push   %rbp
  402745:	48 63 c6             	movslq %esi,%rax
  402748:	48 89 e5             	mov    %rsp,%rbp
  40274b:	41 54                	push   %r12
  40274d:	49 89 fc             	mov    %rdi,%r12
  402750:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402755:	53                   	push   %rbx
  402756:	48 89 c3             	mov    %rax,%rbx
  402759:	48 83 ec 10          	sub    $0x10,%rsp
  40275d:	48 8b 32             	mov    (%rdx),%rsi
  402760:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402764:	e8 17 fd ff ff       	call   402480 <__init_libc>
  402769:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 402700 <libc_start_main_stage2>
  402770:	89 de                	mov    %ebx,%esi
  402772:	4c 89 e7             	mov    %r12,%rdi
  402775:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402779:	48 83 c4 10          	add    $0x10,%rsp
  40277d:	5b                   	pop    %rbx
  40277e:	41 5c                	pop    %r12
  402780:	5d                   	pop    %rbp
  402781:	ff e0                	jmp    *%rax
  402783:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40278a:	00 00 00 
  40278d:	0f 1f 00             	nopl   (%rax)

0000000000402790 <__init_ssp>:
  402790:	f3 0f 1e fa          	endbr64
  402794:	55                   	push   %rbp
  402795:	48 89 e5             	mov    %rsp,%rbp
  402798:	48 83 ec 10          	sub    $0x10,%rsp
  40279c:	48 85 ff             	test   %rdi,%rdi
  40279f:	74 3f                	je     4027e0 <__init_ssp+0x50>
  4027a1:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  4027a8:	48 89 fe             	mov    %rdi,%rsi
  4027ab:	ba 08 00 00 00       	mov    $0x8,%edx
  4027b0:	48 89 cf             	mov    %rcx,%rdi
  4027b3:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  4027b7:	e8 b1 34 00 00       	call   405c6d <memcpy>
  4027bc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4027c0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4027c4:	48 8b 11             	mov    (%rcx),%rdx
  4027c7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4027ce:	00 00 
  4027d0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4027d4:	c9                   	leave
  4027d5:	c3                   	ret
  4027d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027dd:	00 00 00 
  4027e0:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  4027e7:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  4027ee:	48 89 01             	mov    %rax,(%rcx)
  4027f1:	eb cd                	jmp    4027c0 <__init_ssp+0x30>
  4027f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027fa:	00 00 00 
  4027fd:	0f 1f 00             	nopl   (%rax)

0000000000402800 <__stack_chk_fail>:
  402800:	f3 0f 1e fa          	endbr64
  402804:	f4                   	hlt
  402805:	c3                   	ret
  402806:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40280d:	00 00 00 

0000000000402810 <__funcs_on_exit>:
  402810:	f3 0f 1e fa          	endbr64
  402814:	c3                   	ret
  402815:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40281c:	00 00 00 
  40281f:	90                   	nop

0000000000402820 <__libc_exit_fini>:
  402820:	f3 0f 1e fa          	endbr64
  402824:	55                   	push   %rbp
  402825:	48 89 e5             	mov    %rsp,%rbp
  402828:	41 54                	push   %r12
  40282a:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  402831:	53                   	push   %rbx
  402832:	48 c7 c3 d0 af 40 00 	mov    $0x40afd0,%rbx
  402839:	49 39 dc             	cmp    %rbx,%r12
  40283c:	73 0f                	jae    40284d <__libc_exit_fini+0x2d>
  40283e:	66 90                	xchg   %ax,%ax
  402840:	48 83 eb 08          	sub    $0x8,%rbx
  402844:	31 c0                	xor    %eax,%eax
  402846:	ff 13                	call   *(%rbx)
  402848:	49 39 dc             	cmp    %rbx,%r12
  40284b:	72 f3                	jb     402840 <__libc_exit_fini+0x20>
  40284d:	5b                   	pop    %rbx
  40284e:	31 c0                	xor    %eax,%eax
  402850:	41 5c                	pop    %r12
  402852:	5d                   	pop    %rbp
  402853:	e9 0c 49 00 00       	jmp    407164 <_fini>
  402858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40285f:	00 

0000000000402860 <printf>:
  402860:	f3 0f 1e fa          	endbr64
  402864:	55                   	push   %rbp
  402865:	48 89 e5             	mov    %rsp,%rbp
  402868:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40286f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402876:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40287d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402884:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40288b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402892:	84 c0                	test   %al,%al
  402894:	74 20                	je     4028b6 <printf+0x56>
  402896:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40289a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40289e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  4028a2:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  4028a6:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  4028aa:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  4028ae:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  4028b2:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  4028b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4028bd:	00 00 
  4028bf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4028c6:	31 c0                	xor    %eax,%eax
  4028c8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4028cc:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4028d3:	48 89 fe             	mov    %rdi,%rsi
  4028d6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4028dd:	48 8d 3d 3c 87 00 00 	lea    0x873c(%rip),%rdi        # 40b020 <__stdout_FILE>
  4028e4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4028eb:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  4028f2:	00 00 00 
  4028f5:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4028fc:	00 00 00 
  4028ff:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402906:	e8 c5 30 00 00       	call   4059d0 <vfprintf>
  40290b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402912:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402919:	00 00 
  40291b:	75 02                	jne    40291f <printf+0xbf>
  40291d:	c9                   	leave
  40291e:	c3                   	ret
  40291f:	e8 dc fe ff ff       	call   402800 <__stack_chk_fail>
  402924:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40292b:	00 00 00 
  40292e:	66 90                	xchg   %ax,%ax

0000000000402930 <puts>:
  402930:	f3 0f 1e fa          	endbr64
  402934:	55                   	push   %rbp
  402935:	48 89 e5             	mov    %rsp,%rbp
  402938:	53                   	push   %rbx
  402939:	48 83 ec 18          	sub    $0x18,%rsp
  40293d:	8b 05 69 87 00 00    	mov    0x8769(%rip),%eax        # 40b0ac <__stdout_FILE+0x8c>
  402943:	85 c0                	test   %eax,%eax
  402945:	79 61                	jns    4029a8 <puts+0x78>
  402947:	48 8d 35 d2 86 00 00 	lea    0x86d2(%rip),%rsi        # 40b020 <__stdout_FILE>
  40294e:	e8 ad 3c 00 00       	call   406600 <fputs>
  402953:	85 c0                	test   %eax,%eax
  402955:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40295a:	78 41                	js     40299d <puts+0x6d>
  40295c:	31 db                	xor    %ebx,%ebx
  40295e:	83 3d 4b 87 00 00 0a 	cmpl   $0xa,0x874b(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  402965:	74 79                	je     4029e0 <puts+0xb0>
  402967:	48 8b 05 da 86 00 00 	mov    0x86da(%rip),%rax        # 40b048 <__stdout_FILE+0x28>
  40296e:	48 3b 05 cb 86 00 00 	cmp    0x86cb(%rip),%rax        # 40b040 <__stdout_FILE+0x20>
  402975:	74 69                	je     4029e0 <puts+0xb0>
  402977:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40297b:	48 89 15 c6 86 00 00 	mov    %rdx,0x86c6(%rip)        # 40b048 <__stdout_FILE+0x28>
  402982:	c6 00 0a             	movb   $0xa,(%rax)
  402985:	31 c0                	xor    %eax,%eax
  402987:	85 db                	test   %ebx,%ebx
  402989:	74 12                	je     40299d <puts+0x6d>
  40298b:	48 8d 3d 8e 86 00 00 	lea    0x868e(%rip),%rdi        # 40b020 <__stdout_FILE>
  402992:	89 45 e8             	mov    %eax,-0x18(%rbp)
  402995:	e8 26 3a 00 00       	call   4063c0 <__unlockfile>
  40299a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40299d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4029a1:	c9                   	leave
  4029a2:	c3                   	ret
  4029a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4029a8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4029ac:	48 8d 3d 6d 86 00 00 	lea    0x866d(%rip),%rdi        # 40b020 <__stdout_FILE>
  4029b3:	e8 48 39 00 00       	call   406300 <__lockfile>
  4029b8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4029bc:	48 8d 35 5d 86 00 00 	lea    0x865d(%rip),%rsi        # 40b020 <__stdout_FILE>
  4029c3:	89 c3                	mov    %eax,%ebx
  4029c5:	e8 36 3c 00 00       	call   406600 <fputs>
  4029ca:	85 c0                	test   %eax,%eax
  4029cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029d1:	78 b4                	js     402987 <puts+0x57>
  4029d3:	83 3d d6 86 00 00 0a 	cmpl   $0xa,0x86d6(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  4029da:	75 8b                	jne    402967 <puts+0x37>
  4029dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4029e0:	be 0a 00 00 00       	mov    $0xa,%esi
  4029e5:	48 8d 3d 34 86 00 00 	lea    0x8634(%rip),%rdi        # 40b020 <__stdout_FILE>
  4029ec:	e8 1f 3a 00 00       	call   406410 <__overflow>
  4029f1:	c1 f8 1f             	sar    $0x1f,%eax
  4029f4:	eb 91                	jmp    402987 <puts+0x57>
  4029f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029fd:	00 00 00 

0000000000402a00 <sprintf>:
  402a00:	f3 0f 1e fa          	endbr64
  402a04:	55                   	push   %rbp
  402a05:	48 89 e5             	mov    %rsp,%rbp
  402a08:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402a0f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402a16:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402a1d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402a24:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402a2b:	84 c0                	test   %al,%al
  402a2d:	74 20                	je     402a4f <sprintf+0x4f>
  402a2f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402a33:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402a37:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402a3b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402a3f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402a43:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402a47:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402a4b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402a4f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a56:	00 00 
  402a58:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402a5f:	31 c0                	xor    %eax,%eax
  402a61:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402a65:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402a6c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402a73:	00 00 00 
  402a76:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  402a7d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402a84:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  402a8b:	00 00 00 
  402a8e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402a95:	e8 66 31 00 00       	call   405c00 <vsprintf>
  402a9a:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402aa1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402aa8:	00 00 
  402aaa:	75 02                	jne    402aae <sprintf+0xae>
  402aac:	c9                   	leave
  402aad:	c3                   	ret
  402aae:	e8 4d fd ff ff       	call   402800 <__stack_chk_fail>
  402ab3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402aba:	00 00 00 
  402abd:	0f 1f 00             	nopl   (%rax)

0000000000402ac0 <pop_arg>:
  402ac0:	83 ee 09             	sub    $0x9,%esi
  402ac3:	83 fe 11             	cmp    $0x11,%esi
  402ac6:	77 50                	ja     402b18 <pop_arg+0x58>
  402ac8:	48 8d 0d d5 56 00 00 	lea    0x56d5(%rip),%rcx        # 4081a4 <_fini+0x1040>
  402acf:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402ad3:	48 01 c8             	add    %rcx,%rax
  402ad6:	3e ff e0             	notrack jmp *%rax
  402ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ae0:	8b 02                	mov    (%rdx),%eax
  402ae2:	83 f8 2f             	cmp    $0x2f,%eax
  402ae5:	77 39                	ja     402b20 <pop_arg+0x60>
  402ae7:	89 c1                	mov    %eax,%ecx
  402ae9:	83 c0 08             	add    $0x8,%eax
  402aec:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402af0:	89 02                	mov    %eax,(%rdx)
  402af2:	48 8b 01             	mov    (%rcx),%rax
  402af5:	48 89 07             	mov    %rax,(%rdi)
  402af8:	c3                   	ret
  402af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b00:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402b04:	48 83 c0 0f          	add    $0xf,%rax
  402b08:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402b0c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402b10:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402b14:	db 28                	fldt   (%rax)
  402b16:	db 3f                	fstpt  (%rdi)
  402b18:	c3                   	ret
  402b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b20:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b24:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b28:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b2c:	48 8b 01             	mov    (%rcx),%rax
  402b2f:	48 89 07             	mov    %rax,(%rdi)
  402b32:	c3                   	ret
  402b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402b38:	8b 02                	mov    (%rdx),%eax
  402b3a:	83 f8 2f             	cmp    $0x2f,%eax
  402b3d:	0f 87 55 01 00 00    	ja     402c98 <pop_arg+0x1d8>
  402b43:	89 c1                	mov    %eax,%ecx
  402b45:	83 c0 08             	add    $0x8,%eax
  402b48:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b4c:	89 02                	mov    %eax,(%rdx)
  402b4e:	0f b7 01             	movzwl (%rcx),%eax
  402b51:	48 89 07             	mov    %rax,(%rdi)
  402b54:	c3                   	ret
  402b55:	0f 1f 00             	nopl   (%rax)
  402b58:	8b 42 04             	mov    0x4(%rdx),%eax
  402b5b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402b60:	0f 87 1a 01 00 00    	ja     402c80 <pop_arg+0x1c0>
  402b66:	89 c1                	mov    %eax,%ecx
  402b68:	83 c0 10             	add    $0x10,%eax
  402b6b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b6f:	89 42 04             	mov    %eax,0x4(%rdx)
  402b72:	dd 01                	fldl   (%rcx)
  402b74:	db 3f                	fstpt  (%rdi)
  402b76:	c3                   	ret
  402b77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402b7e:	00 00 
  402b80:	8b 02                	mov    (%rdx),%eax
  402b82:	83 f8 2f             	cmp    $0x2f,%eax
  402b85:	0f 87 dd 00 00 00    	ja     402c68 <pop_arg+0x1a8>
  402b8b:	89 c1                	mov    %eax,%ecx
  402b8d:	83 c0 08             	add    $0x8,%eax
  402b90:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b94:	89 02                	mov    %eax,(%rdx)
  402b96:	48 63 01             	movslq (%rcx),%rax
  402b99:	48 89 07             	mov    %rax,(%rdi)
  402b9c:	c3                   	ret
  402b9d:	0f 1f 00             	nopl   (%rax)
  402ba0:	8b 02                	mov    (%rdx),%eax
  402ba2:	83 f8 2f             	cmp    $0x2f,%eax
  402ba5:	0f 87 a5 00 00 00    	ja     402c50 <pop_arg+0x190>
  402bab:	89 c1                	mov    %eax,%ecx
  402bad:	83 c0 08             	add    $0x8,%eax
  402bb0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402bb4:	89 02                	mov    %eax,(%rdx)
  402bb6:	8b 01                	mov    (%rcx),%eax
  402bb8:	48 89 07             	mov    %rax,(%rdi)
  402bbb:	c3                   	ret
  402bbc:	0f 1f 40 00          	nopl   0x0(%rax)
  402bc0:	8b 02                	mov    (%rdx),%eax
  402bc2:	83 f8 2f             	cmp    $0x2f,%eax
  402bc5:	77 79                	ja     402c40 <pop_arg+0x180>
  402bc7:	89 c1                	mov    %eax,%ecx
  402bc9:	83 c0 08             	add    $0x8,%eax
  402bcc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402bd0:	89 02                	mov    %eax,(%rdx)
  402bd2:	0f b6 01             	movzbl (%rcx),%eax
  402bd5:	48 89 07             	mov    %rax,(%rdi)
  402bd8:	c3                   	ret
  402bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402be0:	8b 02                	mov    (%rdx),%eax
  402be2:	83 f8 2f             	cmp    $0x2f,%eax
  402be5:	77 49                	ja     402c30 <pop_arg+0x170>
  402be7:	89 c1                	mov    %eax,%ecx
  402be9:	83 c0 08             	add    $0x8,%eax
  402bec:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402bf0:	89 02                	mov    %eax,(%rdx)
  402bf2:	48 0f be 01          	movsbq (%rcx),%rax
  402bf6:	48 89 07             	mov    %rax,(%rdi)
  402bf9:	c3                   	ret
  402bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402c00:	8b 02                	mov    (%rdx),%eax
  402c02:	83 f8 2f             	cmp    $0x2f,%eax
  402c05:	77 19                	ja     402c20 <pop_arg+0x160>
  402c07:	89 c1                	mov    %eax,%ecx
  402c09:	83 c0 08             	add    $0x8,%eax
  402c0c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c10:	89 02                	mov    %eax,(%rdx)
  402c12:	48 0f bf 01          	movswq (%rcx),%rax
  402c16:	48 89 07             	mov    %rax,(%rdi)
  402c19:	c3                   	ret
  402c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402c20:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c24:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c28:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c2c:	eb e4                	jmp    402c12 <pop_arg+0x152>
  402c2e:	66 90                	xchg   %ax,%ax
  402c30:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c34:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c38:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c3c:	eb b4                	jmp    402bf2 <pop_arg+0x132>
  402c3e:	66 90                	xchg   %ax,%ax
  402c40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c4c:	eb 84                	jmp    402bd2 <pop_arg+0x112>
  402c4e:	66 90                	xchg   %ax,%ax
  402c50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c5c:	e9 55 ff ff ff       	jmp    402bb6 <pop_arg+0xf6>
  402c61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c68:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c6c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c70:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c74:	e9 1d ff ff ff       	jmp    402b96 <pop_arg+0xd6>
  402c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c80:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c84:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c88:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c8c:	e9 e1 fe ff ff       	jmp    402b72 <pop_arg+0xb2>
  402c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c98:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c9c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402ca0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402ca4:	e9 a5 fe ff ff       	jmp    402b4e <pop_arg+0x8e>
  402ca9:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cb0:	00 00 00 
  402cb3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cba:	00 00 00 
  402cbd:	0f 1f 00             	nopl   (%rax)

0000000000402cc0 <pad.part.0>:
  402cc0:	55                   	push   %rbp
  402cc1:	29 ca                	sub    %ecx,%edx
  402cc3:	40 0f be f6          	movsbl %sil,%esi
  402cc7:	48 89 e5             	mov    %rsp,%rbp
  402cca:	41 56                	push   %r14
  402ccc:	41 55                	push   %r13
  402cce:	41 54                	push   %r12
  402cd0:	4c 63 e2             	movslq %edx,%r12
  402cd3:	ba 00 01 00 00       	mov    $0x100,%edx
  402cd8:	53                   	push   %rbx
  402cd9:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402ce0:	41 39 d4             	cmp    %edx,%r12d
  402ce3:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402cea:	00 00 
  402cec:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402cf0:	49 89 fd             	mov    %rdi,%r13
  402cf3:	49 0f 4e d4          	cmovle %r12,%rdx
  402cf7:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402cfe:	e8 9c 2f 00 00       	call   405c9f <memset>
  402d03:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402d0a:	0f 8e 88 00 00 00    	jle    402d98 <pad.part.0+0xd8>
  402d10:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d14:	44 89 e3             	mov    %r12d,%ebx
  402d17:	eb 15                	jmp    402d2e <pad.part.0+0x6e>
  402d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d20:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402d26:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402d2c:	76 2a                	jbe    402d58 <pad.part.0+0x98>
  402d2e:	a8 20                	test   $0x20,%al
  402d30:	75 ee                	jne    402d20 <pad.part.0+0x60>
  402d32:	4c 89 ea             	mov    %r13,%rdx
  402d35:	be 00 01 00 00       	mov    $0x100,%esi
  402d3a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402d41:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402d47:	e8 04 39 00 00       	call   406650 <__fwritex>
  402d4c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d50:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402d56:	77 d6                	ja     402d2e <pad.part.0+0x6e>
  402d58:	45 0f b6 e4          	movzbl %r12b,%r12d
  402d5c:	a8 20                	test   $0x20,%al
  402d5e:	74 20                	je     402d80 <pad.part.0+0xc0>
  402d60:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402d64:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402d6b:	00 00 
  402d6d:	75 2f                	jne    402d9e <pad.part.0+0xde>
  402d6f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402d76:	5b                   	pop    %rbx
  402d77:	41 5c                	pop    %r12
  402d79:	41 5d                	pop    %r13
  402d7b:	41 5e                	pop    %r14
  402d7d:	5d                   	pop    %rbp
  402d7e:	c3                   	ret
  402d7f:	90                   	nop
  402d80:	49 63 f4             	movslq %r12d,%rsi
  402d83:	4c 89 ea             	mov    %r13,%rdx
  402d86:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402d8d:	e8 be 38 00 00       	call   406650 <__fwritex>
  402d92:	eb cc                	jmp    402d60 <pad.part.0+0xa0>
  402d94:	0f 1f 40 00          	nopl   0x0(%rax)
  402d98:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d9c:	eb be                	jmp    402d5c <pad.part.0+0x9c>
  402d9e:	e8 5d fa ff ff       	call   402800 <__stack_chk_fail>
  402da3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402daa:	00 00 00 
  402dad:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402db4:	00 00 00 
  402db7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402dbe:	00 00 

0000000000402dc0 <fmt_fp>:
  402dc0:	55                   	push   %rbp
  402dc1:	48 89 e5             	mov    %rsp,%rbp
  402dc4:	41 57                	push   %r15
  402dc6:	41 56                	push   %r14
  402dc8:	41 55                	push   %r13
  402dca:	41 54                	push   %r12
  402dcc:	53                   	push   %rbx
  402dcd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402dd4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402dd9:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402de0:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402de7:	41 89 d7             	mov    %edx,%r15d
  402dea:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402df0:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402df6:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402dfd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e04:	00 00 
  402e06:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402e0a:	31 c0                	xor    %eax,%eax
  402e0c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402e13:	00 00 00 
  402e16:	ff 75 18             	push   0x18(%rbp)
  402e19:	ff 75 10             	push   0x10(%rbp)
  402e1c:	e8 ef 33 00 00       	call   406210 <__signbitl>
  402e21:	41 5d                	pop    %r13
  402e23:	41 5e                	pop    %r14
  402e25:	85 c0                	test   %eax,%eax
  402e27:	0f 84 8b 00 00 00    	je     402eb8 <fmt_fp+0xf8>
  402e2d:	db 6d 10             	fldt   0x10(%rbp)
  402e30:	48 8d 05 37 53 00 00 	lea    0x5337(%rip),%rax        # 40816e <_fini+0x100a>
  402e37:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402e3e:	00 00 00 
  402e41:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402e48:	d9 e0                	fchs
  402e4a:	db 7d 10             	fstpt  0x10(%rbp)
  402e4d:	ff 75 18             	push   0x18(%rbp)
  402e50:	ff 75 10             	push   0x10(%rbp)
  402e53:	e8 48 33 00 00       	call   4061a0 <__fpclassifyl>
  402e58:	5b                   	pop    %rbx
  402e59:	41 5c                	pop    %r12
  402e5b:	83 f8 01             	cmp    $0x1,%eax
  402e5e:	0f 8e bc 04 00 00    	jle    403320 <fmt_fp+0x560>
  402e64:	ff 75 18             	push   0x18(%rbp)
  402e67:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402e6e:	ff 75 10             	push   0x10(%rbp)
  402e71:	e8 ba 33 00 00       	call   406230 <frexpl>
  402e76:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402e7d:	41 5a                	pop    %r10
  402e7f:	d8 c0                	fadd   %st(0),%st
  402e81:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402e88:	41 5b                	pop    %r11
  402e8a:	41 83 ce 20          	or     $0x20,%r14d
  402e8e:	d9 ee                	fldz
  402e90:	d9 c9                	fxch   %st(1)
  402e92:	db e9                	fucomi %st(1),%st
  402e94:	dd d9                	fstp   %st(1)
  402e96:	7a 58                	jp     402ef0 <fmt_fp+0x130>
  402e98:	75 56                	jne    402ef0 <fmt_fp+0x130>
  402e9a:	41 83 fe 61          	cmp    $0x61,%r14d
  402e9e:	0f 84 37 06 00 00    	je     4034db <fmt_fp+0x71b>
  402ea4:	45 85 ff             	test   %r15d,%r15d
  402ea7:	0f 88 84 13 00 00    	js     404231 <fmt_fp+0x1471>
  402ead:	40 0f 95 c6          	setne  %sil
  402eb1:	eb 65                	jmp    402f18 <fmt_fp+0x158>
  402eb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402eb8:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402ebe:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402ec4:	0f 84 2c 04 00 00    	je     4032f6 <fmt_fp+0x536>
  402eca:	48 8d 05 a0 52 00 00 	lea    0x52a0(%rip),%rax        # 408171 <_fini+0x100d>
  402ed1:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402ed8:	00 00 00 
  402edb:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402ee2:	e9 66 ff ff ff       	jmp    402e4d <fmt_fp+0x8d>
  402ee7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402eee:	00 00 
  402ef0:	41 83 fe 61          	cmp    $0x61,%r14d
  402ef4:	0f 84 d6 05 00 00    	je     4034d0 <fmt_fp+0x710>
  402efa:	45 85 ff             	test   %r15d,%r15d
  402efd:	0f 88 3e 13 00 00    	js     404241 <fmt_fp+0x1481>
  402f03:	40 0f 95 c6          	setne  %sil
  402f07:	41 83 e9 1d          	sub    $0x1d,%r9d
  402f0b:	d8 0d d3 55 00 00    	fmuls  0x55d3(%rip)        # 4084e4 <states+0x1e4>
  402f11:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402f18:	45 85 c9             	test   %r9d,%r9d
  402f1b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402f22:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402f29:	d9 05 b9 55 00 00    	flds   0x55b9(%rip)        # 4084e8 <states+0x1e8>
  402f2f:	d9 c9                	fxch   %st(1)
  402f31:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402f37:	48 0f 49 c2          	cmovns %rdx,%rax
  402f3b:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402f42:	48 89 c3             	mov    %rax,%rbx
  402f45:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402f4c:	80 cc 0c             	or     $0xc,%ah
  402f4f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402f56:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402f5d:	00 00 
  402f5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f66:	00 00 00 00 
  402f6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f71:	00 00 00 00 
  402f75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f7c:	00 00 00 00 
  402f80:	d9 c0                	fld    %st(0)
  402f82:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402f88:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402f8e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402f94:	48 83 c3 04          	add    $0x4,%rbx
  402f98:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402f9f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402fa2:	89 c0                	mov    %eax,%eax
  402fa4:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402fab:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402fb1:	de e9                	fsubrp %st,%st(1)
  402fb3:	d8 c9                	fmul   %st(1),%st
  402fb5:	d9 ee                	fldz
  402fb7:	d9 c9                	fxch   %st(1)
  402fb9:	db e9                	fucomi %st(1),%st
  402fbb:	dd d9                	fstp   %st(1)
  402fbd:	7a c1                	jp     402f80 <fmt_fp+0x1c0>
  402fbf:	75 bf                	jne    402f80 <fmt_fp+0x1c0>
  402fc1:	dd d8                	fstp   %st(0)
  402fc3:	dd d8                	fstp   %st(0)
  402fc5:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402fcc:	45 85 c9             	test   %r9d,%r9d
  402fcf:	0f 8e b0 00 00 00    	jle    403085 <fmt_fp+0x2c5>
  402fd5:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402fdc:	b8 44 00 
  402fdf:	90                   	nop
  402fe0:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402fe5:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402fe9:	41 39 c9             	cmp    %ecx,%r9d
  402fec:	41 0f 4e c9          	cmovle %r9d,%ecx
  402ff0:	4d 39 e2             	cmp    %r12,%r10
  402ff3:	72 4b                	jb     403040 <fmt_fp+0x280>
  402ff5:	31 c0                	xor    %eax,%eax
  402ff7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402ffe:	00 00 
  403000:	45 8b 02             	mov    (%r10),%r8d
  403003:	49 83 ea 04          	sub    $0x4,%r10
  403007:	49 d3 e0             	shl    %cl,%r8
  40300a:	49 01 c0             	add    %rax,%r8
  40300d:	4c 89 c2             	mov    %r8,%rdx
  403010:	48 c1 ea 09          	shr    $0x9,%rdx
  403014:	48 89 d0             	mov    %rdx,%rax
  403017:	48 f7 e7             	mul    %rdi
  40301a:	48 c1 ea 0b          	shr    $0xb,%rdx
  40301e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  403025:	49 29 c0             	sub    %rax,%r8
  403028:	89 d0                	mov    %edx,%eax
  40302a:	45 89 42 04          	mov    %r8d,0x4(%r10)
  40302e:	4d 39 e2             	cmp    %r12,%r10
  403031:	73 cd                	jae    403000 <fmt_fp+0x240>
  403033:	85 d2                	test   %edx,%edx
  403035:	74 09                	je     403040 <fmt_fp+0x280>
  403037:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  40303c:	49 83 ec 04          	sub    $0x4,%r12
  403040:	49 39 dc             	cmp    %rbx,%r12
  403043:	72 24                	jb     403069 <fmt_fp+0x2a9>
  403045:	eb 2b                	jmp    403072 <fmt_fp+0x2b2>
  403047:	0f 1f 00             	nopl   (%rax)
  40304a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403051:	00 00 00 00 
  403055:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40305c:	00 00 00 00 
  403060:	48 83 eb 04          	sub    $0x4,%rbx
  403064:	49 39 dc             	cmp    %rbx,%r12
  403067:	73 09                	jae    403072 <fmt_fp+0x2b2>
  403069:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  40306d:	45 85 c0             	test   %r8d,%r8d
  403070:	74 ee                	je     403060 <fmt_fp+0x2a0>
  403072:	41 29 c9             	sub    %ecx,%r9d
  403075:	45 85 c9             	test   %r9d,%r9d
  403078:	0f 8f 62 ff ff ff    	jg     402fe0 <fmt_fp+0x220>
  40307e:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  403085:	45 85 c9             	test   %r9d,%r9d
  403088:	0f 84 35 01 00 00    	je     4031c3 <fmt_fp+0x403>
  40308e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  403092:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  403099:	41 89 f0             	mov    %esi,%r8d
  40309c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  4030a3:	48 c1 e8 21          	shr    $0x21,%rax
  4030a7:	48 8d 78 01          	lea    0x1(%rax),%rdi
  4030ab:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  4030b2:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  4030b9:	00 
  4030ba:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  4030c1:	0f 1f 40 00          	nopl   0x0(%rax)
  4030c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030cc:	00 00 00 00 
  4030d0:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  4030d4:	0f 8d d6 06 00 00    	jge    4037b0 <fmt_fp+0x9f0>
  4030da:	41 83 c1 09          	add    $0x9,%r9d
  4030de:	b9 09 00 00 00       	mov    $0x9,%ecx
  4030e3:	49 39 dc             	cmp    %rbx,%r12
  4030e6:	0f 83 d5 06 00 00    	jae    4037c1 <fmt_fp+0xa01>
  4030ec:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  4030f2:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  4030f9:	4c 89 e6             	mov    %r12,%rsi
  4030fc:	31 d2                	xor    %edx,%edx
  4030fe:	41 d3 e2             	shl    %cl,%r10d
  403101:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  403107:	41 83 ea 01          	sub    $0x1,%r10d
  40310b:	41 d3 ff             	sar    %cl,%r15d
  40310e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403114:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40311b:	00 00 00 00 
  40311f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403126:	00 00 00 00 
  40312a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403131:	00 00 00 00 
  403135:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40313c:	00 00 00 00 
  403140:	8b 06                	mov    (%rsi),%eax
  403142:	48 83 c6 04          	add    $0x4,%rsi
  403146:	41 89 c1             	mov    %eax,%r9d
  403149:	44 21 d0             	and    %r10d,%eax
  40314c:	41 0f af c7          	imul   %r15d,%eax
  403150:	41 d3 e9             	shr    %cl,%r9d
  403153:	41 01 d1             	add    %edx,%r9d
  403156:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  40315a:	89 c2                	mov    %eax,%edx
  40315c:	48 39 de             	cmp    %rbx,%rsi
  40315f:	72 df                	jb     403140 <fmt_fp+0x380>
  403161:	41 8b 0c 24          	mov    (%r12),%ecx
  403165:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  40316a:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  403171:	85 c9                	test   %ecx,%ecx
  403173:	49 0f 45 c4          	cmovne %r12,%rax
  403177:	85 d2                	test   %edx,%edx
  403179:	74 06                	je     403181 <fmt_fp+0x3c1>
  40317b:	89 13                	mov    %edx,(%rbx)
  40317d:	48 83 c3 04          	add    $0x4,%rbx
  403181:	49 89 c4             	mov    %rax,%r12
  403184:	41 83 fe 66          	cmp    $0x66,%r14d
  403188:	0f 84 52 06 00 00    	je     4037e0 <fmt_fp+0xa20>
  40318e:	48 89 da             	mov    %rbx,%rdx
  403191:	48 29 c2             	sub    %rax,%rdx
  403194:	4c 01 d8             	add    %r11,%rax
  403197:	48 c1 fa 02          	sar    $0x2,%rdx
  40319b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  4031a2:	48 0f 4f d8          	cmovg  %rax,%rbx
  4031a6:	45 85 c9             	test   %r9d,%r9d
  4031a9:	0f 85 21 ff ff ff    	jne    4030d0 <fmt_fp+0x310>
  4031af:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  4031b6:	00 00 00 
  4031b9:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  4031c0:	44 89 c6             	mov    %r8d,%esi
  4031c3:	49 39 dc             	cmp    %rbx,%r12
  4031c6:	0f 83 5d 0b 00 00    	jae    403d29 <fmt_fp+0xf69>
  4031cc:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  4031d3:	41 83 fe 66          	cmp    $0x66,%r14d
  4031d7:	41 8b 14 24          	mov    (%r12),%edx
  4031db:	0f 95 c1             	setne  %cl
  4031de:	4c 29 e0             	sub    %r12,%rax
  4031e1:	48 c1 f8 02          	sar    $0x2,%rax
  4031e5:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  4031e8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4031ed:	83 fa 09             	cmp    $0x9,%edx
  4031f0:	76 1a                	jbe    40320c <fmt_fp+0x44c>
  4031f2:	0f 1f 00             	nopl   (%rax)
  4031f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031fc:	00 00 00 00 
  403200:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403203:	83 c7 01             	add    $0x1,%edi
  403206:	01 c0                	add    %eax,%eax
  403208:	39 c2                	cmp    %eax,%edx
  40320a:	73 f4                	jae    403200 <fmt_fp+0x440>
  40320c:	31 d2                	xor    %edx,%edx
  40320e:	84 c9                	test   %cl,%cl
  403210:	44 89 f8             	mov    %r15d,%eax
  403213:	0f 45 d7             	cmovne %edi,%edx
  403216:	29 d0                	sub    %edx,%eax
  403218:	31 d2                	xor    %edx,%edx
  40321a:	41 83 fe 67          	cmp    $0x67,%r14d
  40321e:	0f 94 c2             	sete   %dl
  403221:	21 f2                	and    %esi,%edx
  403223:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  40322a:	29 d0                	sub    %edx,%eax
  40322c:	48 89 da             	mov    %rbx,%rdx
  40322f:	48 29 f2             	sub    %rsi,%rdx
  403232:	48 63 c8             	movslq %eax,%rcx
  403235:	48 c1 fa 02          	sar    $0x2,%rdx
  403239:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  40323e:	48 39 d1             	cmp    %rdx,%rcx
  403241:	0f 8d 0f 06 00 00    	jge    403856 <fmt_fp+0xa96>
  403247:	05 00 40 02 00       	add    $0x24000,%eax
  40324c:	48 63 d0             	movslq %eax,%rdx
  40324f:	89 c1                	mov    %eax,%ecx
  403251:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403258:	c1 f9 1f             	sar    $0x1f,%ecx
  40325b:	48 c1 fa 21          	sar    $0x21,%rdx
  40325f:	29 ca                	sub    %ecx,%edx
  403261:	48 63 ca             	movslq %edx,%rcx
  403264:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  40326b:	ff 
  40326c:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  40326f:	29 c8                	sub    %ecx,%eax
  403271:	89 c2                	mov    %eax,%edx
  403273:	8d 40 01             	lea    0x1(%rax),%eax
  403276:	83 fa 08             	cmp    $0x8,%edx
  403279:	0f 84 df 13 00 00    	je     40465e <fmt_fp+0x189e>
  40327f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403284:	90                   	nop
  403285:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40328c:	00 00 00 00 
  403290:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403293:	83 c0 01             	add    $0x1,%eax
  403296:	01 c9                	add    %ecx,%ecx
  403298:	83 f8 09             	cmp    $0x9,%eax
  40329b:	75 f3                	jne    403290 <fmt_fp+0x4d0>
  40329d:	41 89 cb             	mov    %ecx,%r11d
  4032a0:	44 8b 16             	mov    (%rsi),%r10d
  4032a3:	31 d2                	xor    %edx,%edx
  4032a5:	44 89 d0             	mov    %r10d,%eax
  4032a8:	41 f7 f3             	div    %r11d
  4032ab:	41 89 d1             	mov    %edx,%r9d
  4032ae:	85 d2                	test   %edx,%edx
  4032b0:	0f 85 35 05 00 00    	jne    4037eb <fmt_fp+0xa2b>
  4032b6:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  4032ba:	48 89 da             	mov    %rbx,%rdx
  4032bd:	4c 39 c3             	cmp    %r8,%rbx
  4032c0:	0f 84 89 05 00 00    	je     40384f <fmt_fp+0xa8f>
  4032c6:	a8 01                	test   $0x1,%al
  4032c8:	0f 85 36 10 00 00    	jne    404304 <fmt_fp+0x1544>
  4032ce:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4032d4:	75 0f                	jne    4032e5 <fmt_fp+0x525>
  4032d6:	49 39 f4             	cmp    %rsi,%r12
  4032d9:	73 0a                	jae    4032e5 <fmt_fp+0x525>
  4032db:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4032df:	0f 85 1f 10 00 00    	jne    404304 <fmt_fp+0x1544>
  4032e5:	d9 05 e9 51 00 00    	flds   0x51e9(%rip)        # 4084d4 <states+0x1d4>
  4032eb:	d9 05 e7 51 00 00    	flds   0x51e7(%rip)        # 4084d8 <states+0x1d8>
  4032f1:	e9 1d 05 00 00       	jmp    403813 <fmt_fp+0xa53>
  4032f6:	48 8d 1d 72 4e 00 00 	lea    0x4e72(%rip),%rbx        # 40816f <_fini+0x100b>
  4032fd:	83 e7 01             	and    $0x1,%edi
  403300:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403304:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40330a:	48 0f 44 c3          	cmove  %rbx,%rax
  40330e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403315:	e9 33 fb ff ff       	jmp    402e4d <fmt_fp+0x8d>
  40331a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403320:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403327:	0f 84 94 00 00 00    	je     4033c1 <fmt_fp+0x601>
  40332d:	db 6d 10             	fldt   0x10(%rbp)
  403330:	4c 8d 25 4e 4e 00 00 	lea    0x4e4e(%rip),%r12        # 408185 <_fini+0x1021>
  403337:	48 8d 05 4f 4e 00 00 	lea    0x4e4f(%rip),%rax        # 40818d <_fini+0x1029>
  40333e:	df e8                	fucomip %st(0),%st
  403340:	4c 0f 4b e0          	cmovnp %rax,%r12
  403344:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40334a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403350:	8d 58 03             	lea    0x3(%rax),%ebx
  403353:	39 d3                	cmp    %edx,%ebx
  403355:	41 0f 9d c5          	setge  %r13b
  403359:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  403360:	75 09                	jne    40336b <fmt_fp+0x5ab>
  403362:	45 84 ed             	test   %r13b,%r13b
  403365:	0f 84 0a 01 00 00    	je     403475 <fmt_fp+0x6b5>
  40336b:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403372:	f6 00 20             	testb  $0x20,(%rax)
  403375:	0f 84 1d 01 00 00    	je     403498 <fmt_fp+0x6d8>
  40337b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403381:	80 f4 20             	xor    $0x20,%ah
  403384:	a9 00 20 01 00       	test   $0x12000,%eax
  403389:	75 09                	jne    403394 <fmt_fp+0x5d4>
  40338b:	45 84 ed             	test   %r13b,%r13b
  40338e:	0f 84 c3 00 00 00    	je     403457 <fmt_fp+0x697>
  403394:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40339a:	39 c3                	cmp    %eax,%ebx
  40339c:	0f 4d c3             	cmovge %ebx,%eax
  40339f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4033a3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4033aa:	00 00 
  4033ac:	0f 85 4d 13 00 00    	jne    4046ff <fmt_fp+0x193f>
  4033b2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4033b6:	5b                   	pop    %rbx
  4033b7:	41 5c                	pop    %r12
  4033b9:	41 5d                	pop    %r13
  4033bb:	41 5e                	pop    %r14
  4033bd:	41 5f                	pop    %r15
  4033bf:	5d                   	pop    %rbp
  4033c0:	c3                   	ret
  4033c1:	db 6d 10             	fldt   0x10(%rbp)
  4033c4:	4c 8d 25 be 4d 00 00 	lea    0x4dbe(%rip),%r12        # 408189 <_fini+0x1025>
  4033cb:	48 8d 05 af 4d 00 00 	lea    0x4daf(%rip),%rax        # 408181 <_fini+0x101d>
  4033d2:	df e8                	fucomip %st(0),%st
  4033d4:	4c 0f 4b e0          	cmovnp %rax,%r12
  4033d8:	e9 67 ff ff ff       	jmp    403344 <fmt_fp+0x584>
  4033dd:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033e4:	f6 07 20             	testb  $0x20,(%rdi)
  4033e7:	0f 84 11 03 00 00    	je     4036fe <fmt_fp+0x93e>
  4033ed:	45 29 f7             	sub    %r14d,%r15d
  4033f0:	45 85 ff             	test   %r15d,%r15d
  4033f3:	7e 9f                	jle    403394 <fmt_fp+0x5d4>
  4033f5:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4033fb:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403402:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403409:	31 c9                	xor    %ecx,%ecx
  40340b:	44 89 fa             	mov    %r15d,%edx
  40340e:	be 30 00 00 00       	mov    $0x30,%esi
  403413:	e8 a8 f8 ff ff       	call   402cc0 <pad.part.0>
  403418:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40341f:	f6 00 20             	testb  $0x20,(%rax)
  403422:	75 12                	jne    403436 <fmt_fp+0x676>
  403424:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  40342b:	48 89 c2             	mov    %rax,%rdx
  40342e:	4c 89 e6             	mov    %r12,%rsi
  403431:	e8 1a 32 00 00       	call   406650 <__fwritex>
  403436:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  40343c:	80 f4 20             	xor    $0x20,%ah
  40343f:	a9 00 20 01 00       	test   $0x12000,%eax
  403444:	0f 85 4a ff ff ff    	jne    403394 <fmt_fp+0x5d4>
  40344a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403451:	0f 85 3d ff ff ff    	jne    403394 <fmt_fp+0x5d4>
  403457:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40345d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403464:	89 d9                	mov    %ebx,%ecx
  403466:	be 20 00 00 00       	mov    $0x20,%esi
  40346b:	e8 50 f8 ff ff       	call   402cc0 <pad.part.0>
  403470:	e9 1f ff ff ff       	jmp    403394 <fmt_fp+0x5d4>
  403475:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40347c:	89 d9                	mov    %ebx,%ecx
  40347e:	be 20 00 00 00       	mov    $0x20,%esi
  403483:	e8 38 f8 ff ff       	call   402cc0 <pad.part.0>
  403488:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40348f:	f6 00 20             	testb  $0x20,(%rax)
  403492:	0f 85 e3 fe ff ff    	jne    40337b <fmt_fp+0x5bb>
  403498:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40349f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4034a6:	49 89 c6             	mov    %rax,%r14
  4034a9:	48 89 c2             	mov    %rax,%rdx
  4034ac:	e8 9f 31 00 00       	call   406650 <__fwritex>
  4034b1:	41 f6 06 20          	testb  $0x20,(%r14)
  4034b5:	0f 85 c0 fe ff ff    	jne    40337b <fmt_fp+0x5bb>
  4034bb:	4c 89 f2             	mov    %r14,%rdx
  4034be:	be 03 00 00 00       	mov    $0x3,%esi
  4034c3:	4c 89 e7             	mov    %r12,%rdi
  4034c6:	e8 85 31 00 00       	call   406650 <__fwritex>
  4034cb:	e9 ab fe ff ff       	jmp    40337b <fmt_fp+0x5bb>
  4034d0:	41 83 e9 01          	sub    $0x1,%r9d
  4034d4:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  4034db:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4034e2:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4034e9:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  4034ef:	48 8d 47 09          	lea    0x9(%rdi),%rax
  4034f3:	48 0f 44 c7          	cmove  %rdi,%rax
  4034f7:	83 c3 02             	add    $0x2,%ebx
  4034fa:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403501:	41 83 ff 0e          	cmp    $0xe,%r15d
  403505:	0f 86 28 0c 00 00    	jbe    404133 <fmt_fp+0x1373>
  40350b:	d9 05 cf 4f 00 00    	flds   0x4fcf(%rip)        # 4084e0 <states+0x1e0>
  403511:	45 85 c9             	test   %r9d,%r9d
  403514:	0f 84 54 11 00 00    	je     40466e <fmt_fp+0x18ae>
  40351a:	44 89 c9             	mov    %r9d,%ecx
  40351d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403521:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  403528:	cc cc cc 
  40352b:	f7 d9                	neg    %ecx
  40352d:	4d 89 e8             	mov    %r13,%r8
  403530:	41 0f 48 c9          	cmovs  %r9d,%ecx
  403534:	48 63 c9             	movslq %ecx,%rcx
  403537:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40353e:	00 00 
  403540:	48 89 c8             	mov    %rcx,%rax
  403543:	4c 89 c7             	mov    %r8,%rdi
  403546:	49 83 e8 01          	sub    $0x1,%r8
  40354a:	48 f7 e6             	mul    %rsi
  40354d:	48 89 c8             	mov    %rcx,%rax
  403550:	48 c1 ea 03          	shr    $0x3,%rdx
  403554:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403558:	4d 01 d2             	add    %r10,%r10
  40355b:	4c 29 d0             	sub    %r10,%rax
  40355e:	83 c0 30             	add    $0x30,%eax
  403561:	48 83 f9 09          	cmp    $0x9,%rcx
  403565:	48 89 d1             	mov    %rdx,%rcx
  403568:	41 88 00             	mov    %al,(%r8)
  40356b:	77 d3                	ja     403540 <fmt_fp+0x780>
  40356d:	4d 39 e8             	cmp    %r13,%r8
  403570:	0f 84 9f 0d 00 00    	je     404315 <fmt_fp+0x1555>
  403576:	b8 2d 00 00 00       	mov    $0x2d,%eax
  40357b:	45 85 c9             	test   %r9d,%r9d
  40357e:	78 05                	js     403585 <fmt_fp+0x7c5>
  403580:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403585:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40358b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40358f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403593:	d9 ee                	fldz
  403595:	d9 ca                	fxch   %st(2)
  403597:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40359e:	45 85 ff             	test   %r15d,%r15d
  4035a1:	48 8d 0d 48 4d 00 00 	lea    0x4d48(%rip),%rcx        # 4082f0 <xdigits>
  4035a8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4035ae:	8d 46 0f             	lea    0xf(%rsi),%eax
  4035b1:	40 0f 9f c7          	setg   %dil
  4035b5:	83 e6 20             	and    $0x20,%esi
  4035b8:	41 88 40 fe          	mov    %al,-0x2(%r8)
  4035bc:	4c 89 e8             	mov    %r13,%rax
  4035bf:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  4035c5:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  4035cc:	80 ce 0c             	or     $0xc,%dh
  4035cf:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  4035d6:	eb 1b                	jmp    4035f3 <fmt_fp+0x833>
  4035d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4035df:	00 
  4035e0:	4c 89 c0             	mov    %r8,%rax
  4035e3:	d9 c2                	fld    %st(2)
  4035e5:	d9 c9                	fxch   %st(1)
  4035e7:	db e9                	fucomi %st(1),%st
  4035e9:	dd d9                	fstp   %st(1)
  4035eb:	7a 06                	jp     4035f3 <fmt_fp+0x833>
  4035ed:	0f 84 dc 10 00 00    	je     4046cf <fmt_fp+0x190f>
  4035f3:	d9 c0                	fld    %st(0)
  4035f5:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  4035fb:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403601:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403607:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40360b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403611:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403618:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40361d:	de e9                	fsubrp %st,%st(1)
  40361f:	41 09 f3             	or     %esi,%r11d
  403622:	44 88 18             	mov    %r11b,(%rax)
  403625:	d8 c9                	fmul   %st(1),%st
  403627:	4c 39 e8             	cmp    %r13,%rax
  40362a:	75 b4                	jne    4035e0 <fmt_fp+0x820>
  40362c:	d9 c2                	fld    %st(2)
  40362e:	df e9                	fucomip %st(1),%st
  403630:	0f 9a c2             	setp   %dl
  403633:	41 0f 45 d1          	cmovne %r9d,%edx
  403637:	84 d2                	test   %dl,%dl
  403639:	0f 85 31 06 00 00    	jne    403c70 <fmt_fp+0xeb0>
  40363f:	40 84 ff             	test   %dil,%dil
  403642:	0f 85 28 06 00 00    	jne    403c70 <fmt_fp+0xeb0>
  403648:	dd d8                	fstp   %st(0)
  40364a:	dd d8                	fstp   %st(0)
  40364c:	dd d8                	fstp   %st(0)
  40364e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403655:	74 08                	je     40365f <fmt_fp+0x89f>
  403657:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40365b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40365f:	4d 89 ec             	mov    %r13,%r12
  403662:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  403667:	48 63 c3             	movslq %ebx,%rax
  40366a:	49 63 cf             	movslq %r15d,%rcx
  40366d:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  403674:	4c 29 e2             	sub    %r12,%rdx
  403677:	48 29 c2             	sub    %rax,%rdx
  40367a:	48 39 d1             	cmp    %rdx,%rcx
  40367d:	0f 8f 24 10 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  403683:	4d 29 e8             	sub    %r13,%r8
  403686:	45 85 ff             	test   %r15d,%r15d
  403689:	74 0d                	je     403698 <fmt_fp+0x8d8>
  40368b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40368f:	48 39 d1             	cmp    %rdx,%rcx
  403692:	0f 8d ac 0c 00 00    	jge    404344 <fmt_fp+0x1584>
  403698:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40369c:	45 89 f7             	mov    %r14d,%r15d
  40369f:	44 01 fb             	add    %r15d,%ebx
  4036a2:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4036a9:	20 01 
  4036ab:	0f 85 a0 0b 00 00    	jne    404251 <fmt_fp+0x1491>
  4036b1:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4036b7:	39 d3                	cmp    %edx,%ebx
  4036b9:	0f 8d 1e fd ff ff    	jge    4033dd <fmt_fp+0x61d>
  4036bf:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4036c6:	89 d9                	mov    %ebx,%ecx
  4036c8:	be 20 00 00 00       	mov    $0x20,%esi
  4036cd:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  4036d4:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  4036db:	e8 e0 f5 ff ff       	call   402cc0 <pad.part.0>
  4036e0:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4036e7:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  4036ee:	f6 00 20             	testb  $0x20,(%rax)
  4036f1:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  4036f8:	0f 85 ef fc ff ff    	jne    4033ed <fmt_fp+0x62d>
  4036fe:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403705:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40370c:	48 89 c6             	mov    %rax,%rsi
  40370f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403716:	e8 35 2f 00 00       	call   406650 <__fwritex>
  40371b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403721:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403727:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  40372e:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403735:	35 00 00 01 00       	xor    $0x10000,%eax
  40373a:	a9 00 20 01 00       	test   $0x12000,%eax
  40373f:	75 37                	jne    403778 <fmt_fp+0x9b8>
  403741:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403748:	75 2e                	jne    403778 <fmt_fp+0x9b8>
  40374a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403750:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403757:	89 d9                	mov    %ebx,%ecx
  403759:	be 30 00 00 00       	mov    $0x30,%esi
  40375e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403765:	e8 56 f5 ff ff       	call   402cc0 <pad.part.0>
  40376a:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  403771:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403778:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40377f:	f6 00 20             	testb  $0x20,(%rax)
  403782:	0f 85 05 0b 00 00    	jne    40428d <fmt_fp+0x14cd>
  403788:	48 89 c2             	mov    %rax,%rdx
  40378b:	4c 89 c6             	mov    %r8,%rsi
  40378e:	4c 89 ef             	mov    %r13,%rdi
  403791:	45 29 f7             	sub    %r14d,%r15d
  403794:	e8 b7 2e 00 00       	call   406650 <__fwritex>
  403799:	45 85 ff             	test   %r15d,%r15d
  40379c:	0f 8e 76 fc ff ff    	jle    403418 <fmt_fp+0x658>
  4037a2:	e9 5b fc ff ff       	jmp    403402 <fmt_fp+0x642>
  4037a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4037ae:	00 00 
  4037b0:	44 89 c9             	mov    %r9d,%ecx
  4037b3:	45 31 c9             	xor    %r9d,%r9d
  4037b6:	f7 d9                	neg    %ecx
  4037b8:	49 39 dc             	cmp    %rbx,%r12
  4037bb:	0f 82 2b f9 ff ff    	jb     4030ec <fmt_fp+0x32c>
  4037c1:	41 8b 34 24          	mov    (%r12),%esi
  4037c5:	85 f6                	test   %esi,%esi
  4037c7:	0f 84 66 05 00 00    	je     403d33 <fmt_fp+0xf73>
  4037cd:	41 83 fe 66          	cmp    $0x66,%r14d
  4037d1:	0f 85 cf f9 ff ff    	jne    4031a6 <fmt_fp+0x3e6>
  4037d7:	4c 89 e0             	mov    %r12,%rax
  4037da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4037e0:	49 89 c4             	mov    %rax,%r12
  4037e3:	48 89 f8             	mov    %rdi,%rax
  4037e6:	e9 a3 f9 ff ff       	jmp    40318e <fmt_fp+0x3ce>
  4037eb:	a8 01                	test   $0x1,%al
  4037ed:	0f 84 2f 0b 00 00    	je     404322 <fmt_fp+0x1562>
  4037f3:	db 2d 07 4d 00 00    	fldt   0x4d07(%rip)        # 408500 <states+0x200>
  4037f9:	d1 f9                	sar    $1,%ecx
  4037fb:	41 39 c9             	cmp    %ecx,%r9d
  4037fe:	0f 82 06 0b 00 00    	jb     40430a <fmt_fp+0x154a>
  403804:	44 39 c9             	cmp    %r9d,%ecx
  403807:	0f 84 31 0e 00 00    	je     40463e <fmt_fp+0x187e>
  40380d:	d9 05 c9 4c 00 00    	flds   0x4cc9(%rip)        # 4084dc <states+0x1dc>
  403813:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403819:	85 d2                	test   %edx,%edx
  40381b:	74 14                	je     403831 <fmt_fp+0xa71>
  40381d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403824:	80 38 2d             	cmpb   $0x2d,(%rax)
  403827:	75 08                	jne    403831 <fmt_fp+0xa71>
  403829:	d9 c9                	fxch   %st(1)
  40382b:	d9 e0                	fchs
  40382d:	d9 c9                	fxch   %st(1)
  40382f:	d9 e0                	fchs
  403831:	d8 c1                	fadd   %st(1),%st
  403833:	44 89 d0             	mov    %r10d,%eax
  403836:	44 29 c8             	sub    %r9d,%eax
  403839:	df e9                	fucomip %st(1),%st
  40383b:	dd d8                	fstp   %st(0)
  40383d:	0f 8a 4c 09 00 00    	jp     40418f <fmt_fp+0x13cf>
  403843:	0f 85 46 09 00 00    	jne    40418f <fmt_fp+0x13cf>
  403849:	89 06                	mov    %eax,(%rsi)
  40384b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40384f:	48 39 d3             	cmp    %rdx,%rbx
  403852:	48 0f 47 da          	cmova  %rdx,%rbx
  403856:	49 39 dc             	cmp    %rbx,%r12
  403859:	72 0e                	jb     403869 <fmt_fp+0xaa9>
  40385b:	eb 13                	jmp    403870 <fmt_fp+0xab0>
  40385d:	0f 1f 00             	nopl   (%rax)
  403860:	48 83 eb 04          	sub    $0x4,%rbx
  403864:	49 39 dc             	cmp    %rbx,%r12
  403867:	73 07                	jae    403870 <fmt_fp+0xab0>
  403869:	8b 43 fc             	mov    -0x4(%rbx),%eax
  40386c:	85 c0                	test   %eax,%eax
  40386e:	74 f0                	je     403860 <fmt_fp+0xaa0>
  403870:	41 83 fe 67          	cmp    $0x67,%r14d
  403874:	0f 84 25 05 00 00    	je     403d9f <fmt_fp+0xfdf>
  40387a:	45 85 ff             	test   %r15d,%r15d
  40387d:	0f 85 ba 04 00 00    	jne    403d3d <fmt_fp+0xf7d>
  403883:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40388a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403890:	41 c1 e9 03          	shr    $0x3,%r9d
  403894:	41 83 e1 01          	and    $0x1,%r9d
  403898:	41 83 c1 01          	add    $0x1,%r9d
  40389c:	45 29 ca             	sub    %r9d,%r10d
  40389f:	41 83 fe 66          	cmp    $0x66,%r14d
  4038a3:	0f 84 80 0b 00 00    	je     404429 <fmt_fp+0x1669>
  4038a9:	4d 63 d2             	movslq %r10d,%r10
  4038ac:	85 ff                	test   %edi,%edi
  4038ae:	0f 84 9e 0d 00 00    	je     404652 <fmt_fp+0x1892>
  4038b4:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  4038bb:	cc cc cc 
  4038be:	89 fe                	mov    %edi,%esi
  4038c0:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4038c4:	f7 de                	neg    %esi
  4038c6:	4c 89 e9             	mov    %r13,%rcx
  4038c9:	0f 48 f7             	cmovs  %edi,%esi
  4038cc:	48 63 f6             	movslq %esi,%rsi
  4038cf:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4038d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038db:	00 00 00 00 
  4038df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038e6:	00 00 00 00 
  4038ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038f1:	00 00 00 00 
  4038f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038fc:	00 00 00 00 
  403900:	48 89 f0             	mov    %rsi,%rax
  403903:	48 83 e9 01          	sub    $0x1,%rcx
  403907:	49 f7 e0             	mul    %r8
  40390a:	48 89 f0             	mov    %rsi,%rax
  40390d:	48 c1 ea 03          	shr    $0x3,%rdx
  403911:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403915:	4d 01 db             	add    %r11,%r11
  403918:	4c 29 d8             	sub    %r11,%rax
  40391b:	83 c0 30             	add    $0x30,%eax
  40391e:	48 83 fe 09          	cmp    $0x9,%rsi
  403922:	48 89 d6             	mov    %rdx,%rsi
  403925:	88 01                	mov    %al,(%rcx)
  403927:	77 d7                	ja     403900 <fmt_fp+0xb40>
  403929:	4c 89 e8             	mov    %r13,%rax
  40392c:	48 29 c8             	sub    %rcx,%rax
  40392f:	48 83 f8 01          	cmp    $0x1,%rax
  403933:	7f 1e                	jg     403953 <fmt_fp+0xb93>
  403935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40393c:	00 00 00 00 
  403940:	48 83 e9 01          	sub    $0x1,%rcx
  403944:	4c 89 e8             	mov    %r13,%rax
  403947:	c6 01 30             	movb   $0x30,(%rcx)
  40394a:	48 29 c8             	sub    %rcx,%rax
  40394d:	48 83 f8 01          	cmp    $0x1,%rax
  403951:	7e ed                	jle    403940 <fmt_fp+0xb80>
  403953:	c1 ff 1f             	sar    $0x1f,%edi
  403956:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40395a:	83 e7 02             	and    $0x2,%edi
  40395d:	49 29 c5             	sub    %rax,%r13
  403960:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  403967:	83 c7 2b             	add    $0x2b,%edi
  40396a:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  40396e:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  403975:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  403979:	4d 39 d5             	cmp    %r10,%r13
  40397c:	0f 8f 25 0d 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  403982:	45 01 e9             	add    %r13d,%r9d
  403985:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  40398a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403990:	41 39 c1             	cmp    %eax,%r9d
  403993:	0f 8f 0e 0d 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  403999:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40399f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  4039a5:	44 01 c8             	add    %r9d,%eax
  4039a8:	39 f8                	cmp    %edi,%eax
  4039aa:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  4039b0:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  4039b7:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4039be:	20 01 
  4039c0:	0f 85 3c 07 00 00    	jne    404102 <fmt_fp+0x1342>
  4039c6:	39 f8                	cmp    %edi,%eax
  4039c8:	0f 8d c5 06 00 00    	jge    404093 <fmt_fp+0x12d3>
  4039ce:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  4039d5:	89 fa                	mov    %edi,%edx
  4039d7:	89 c1                	mov    %eax,%ecx
  4039d9:	be 20 00 00 00       	mov    $0x20,%esi
  4039de:	4c 89 ef             	mov    %r13,%rdi
  4039e1:	e8 da f2 ff ff       	call   402cc0 <pad.part.0>
  4039e6:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4039eb:	0f 84 b2 06 00 00    	je     4040a3 <fmt_fp+0x12e3>
  4039f1:	41 83 fe 66          	cmp    $0x66,%r14d
  4039f5:	0f 84 75 04 00 00    	je     403e70 <fmt_fp+0x10b0>
  4039fb:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403a00:	49 39 dc             	cmp    %rbx,%r12
  403a03:	48 0f 43 d8          	cmovae %rax,%rbx
  403a07:	45 85 ff             	test   %r15d,%r15d
  403a0a:	0f 88 af 01 00 00    	js     403bbf <fmt_fp+0xdff>
  403a10:	49 39 dc             	cmp    %rbx,%r12
  403a13:	0f 83 a6 01 00 00    	jae    403bbf <fmt_fp+0xdff>
  403a19:	b8 30 30 30 30       	mov    $0x30303030,%eax
  403a1e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403a25:	4d 89 e6             	mov    %r12,%r14
  403a28:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  403a2c:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403a33:	66 0f 6e c0          	movd   %eax,%xmm0
  403a37:	49 89 dc             	mov    %rbx,%r12
  403a3a:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403a41:	cc cc cc 
  403a44:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403a48:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403a4d:	0f 1f 00             	nopl   (%rax)
  403a50:	41 8b 0e             	mov    (%r14),%ecx
  403a53:	4c 89 c7             	mov    %r8,%rdi
  403a56:	48 85 c9             	test   %rcx,%rcx
  403a59:	0f 84 e1 01 00 00    	je     403c40 <fmt_fp+0xe80>
  403a5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a66:	00 00 00 00 
  403a6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a71:	00 00 00 00 
  403a75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a7c:	00 00 00 00 
  403a80:	48 89 c8             	mov    %rcx,%rax
  403a83:	48 83 ef 01          	sub    $0x1,%rdi
  403a87:	49 f7 e5             	mul    %r13
  403a8a:	48 89 c8             	mov    %rcx,%rax
  403a8d:	48 c1 ea 03          	shr    $0x3,%rdx
  403a91:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403a95:	48 01 f6             	add    %rsi,%rsi
  403a98:	48 29 f0             	sub    %rsi,%rax
  403a9b:	83 c0 30             	add    $0x30,%eax
  403a9e:	48 83 f9 09          	cmp    $0x9,%rcx
  403aa2:	48 89 d1             	mov    %rdx,%rcx
  403aa5:	88 07                	mov    %al,(%rdi)
  403aa7:	77 d7                	ja     403a80 <fmt_fp+0xcc0>
  403aa9:	4c 39 c7             	cmp    %r8,%rdi
  403aac:	0f 84 8e 01 00 00    	je     403c40 <fmt_fp+0xe80>
  403ab2:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403ab9:	0f 84 96 01 00 00    	je     403c55 <fmt_fp+0xe95>
  403abf:	48 39 fb             	cmp    %rdi,%rbx
  403ac2:	0f 83 c9 02 00 00    	jae    403d91 <fmt_fp+0xfd1>
  403ac8:	48 89 fe             	mov    %rdi,%rsi
  403acb:	48 89 f8             	mov    %rdi,%rax
  403ace:	48 29 de             	sub    %rbx,%rsi
  403ad1:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403ad5:	48 83 fa 0e          	cmp    $0xe,%rdx
  403ad9:	76 3d                	jbe    403b18 <fmt_fp+0xd58>
  403adb:	48 89 f1             	mov    %rsi,%rcx
  403ade:	48 89 fa             	mov    %rdi,%rdx
  403ae1:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403ae5:	48 29 ca             	sub    %rcx,%rdx
  403ae8:	f6 c1 10             	test   $0x10,%cl
  403aeb:	74 13                	je     403b00 <fmt_fp+0xd40>
  403aed:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403af1:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403af5:	48 39 d0             	cmp    %rdx,%rax
  403af8:	74 16                	je     403b10 <fmt_fp+0xd50>
  403afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403b00:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403b04:	48 83 e8 20          	sub    $0x20,%rax
  403b08:	0f 11 00             	movups %xmm0,(%rax)
  403b0b:	48 39 d0             	cmp    %rdx,%rax
  403b0e:	75 f0                	jne    403b00 <fmt_fp+0xd40>
  403b10:	48 39 f1             	cmp    %rsi,%rcx
  403b13:	74 3b                	je     403b50 <fmt_fp+0xd90>
  403b15:	48 29 cf             	sub    %rcx,%rdi
  403b18:	48 89 d8             	mov    %rbx,%rax
  403b1b:	48 f7 d0             	not    %rax
  403b1e:	48 01 f8             	add    %rdi,%rax
  403b21:	48 83 ef 01          	sub    $0x1,%rdi
  403b25:	c6 07 30             	movb   $0x30,(%rdi)
  403b28:	48 39 fb             	cmp    %rdi,%rbx
  403b2b:	73 23                	jae    403b50 <fmt_fp+0xd90>
  403b2d:	a8 01                	test   $0x1,%al
  403b2f:	74 0f                	je     403b40 <fmt_fp+0xd80>
  403b31:	48 83 ef 01          	sub    $0x1,%rdi
  403b35:	c6 07 30             	movb   $0x30,(%rdi)
  403b38:	48 39 fb             	cmp    %rdi,%rbx
  403b3b:	73 13                	jae    403b50 <fmt_fp+0xd90>
  403b3d:	0f 1f 00             	nopl   (%rax)
  403b40:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403b44:	48 83 ef 02          	sub    $0x2,%rdi
  403b48:	c6 07 30             	movb   $0x30,(%rdi)
  403b4b:	48 39 fb             	cmp    %rdi,%rbx
  403b4e:	72 f0                	jb     403b40 <fmt_fp+0xd80>
  403b50:	41 8b 02             	mov    (%r10),%eax
  403b53:	49 89 d9             	mov    %rbx,%r9
  403b56:	83 e0 20             	and    $0x20,%eax
  403b59:	4c 89 c1             	mov    %r8,%rcx
  403b5c:	4c 29 c9             	sub    %r9,%rcx
  403b5f:	85 c0                	test   %eax,%eax
  403b61:	75 47                	jne    403baa <fmt_fp+0xdea>
  403b63:	49 63 f7             	movslq %r15d,%rsi
  403b66:	4c 89 d2             	mov    %r10,%rdx
  403b69:	4c 89 cf             	mov    %r9,%rdi
  403b6c:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403b73:	48 39 ce             	cmp    %rcx,%rsi
  403b76:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403b7d:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403b81:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403b88:	e8 c3 2a 00 00       	call   406650 <__fwritex>
  403b8d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403b94:	66 0f 6f 05 74 49 00 	movdqa 0x4974(%rip),%xmm0        # 408510 <states+0x210>
  403b9b:	00 
  403b9c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403ba3:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403baa:	49 83 c6 04          	add    $0x4,%r14
  403bae:	41 29 cf             	sub    %ecx,%r15d
  403bb1:	4d 39 e6             	cmp    %r12,%r14
  403bb4:	73 09                	jae    403bbf <fmt_fp+0xdff>
  403bb6:	45 85 ff             	test   %r15d,%r15d
  403bb9:	0f 89 91 fe ff ff    	jns    403a50 <fmt_fp+0xc90>
  403bbf:	41 8d 57 12          	lea    0x12(%r15),%edx
  403bc3:	83 fa 12             	cmp    $0x12,%edx
  403bc6:	7e 16                	jle    403bde <fmt_fp+0xe1e>
  403bc8:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403bcf:	b9 12 00 00 00       	mov    $0x12,%ecx
  403bd4:	be 30 00 00 00       	mov    $0x30,%esi
  403bd9:	e8 e2 f0 ff ff       	call   402cc0 <pad.part.0>
  403bde:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403be5:	f6 00 20             	testb  $0x20,(%rax)
  403be8:	0f 84 86 05 00 00    	je     404174 <fmt_fp+0x13b4>
  403bee:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403bf4:	80 f4 20             	xor    $0x20,%ah
  403bf7:	a9 00 20 01 00       	test   $0x12000,%eax
  403bfc:	75 26                	jne    403c24 <fmt_fp+0xe64>
  403bfe:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403c05:	75 1d                	jne    403c24 <fmt_fp+0xe64>
  403c07:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403c0d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403c13:	be 20 00 00 00       	mov    $0x20,%esi
  403c18:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403c1f:	e8 9c f0 ff ff       	call   402cc0 <pad.part.0>
  403c24:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403c2a:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403c30:	39 c7                	cmp    %eax,%edi
  403c32:	0f 4d c7             	cmovge %edi,%eax
  403c35:	e9 65 f7 ff ff       	jmp    40339f <fmt_fp+0x5df>
  403c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403c40:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403c44:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403c48:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403c4f:	0f 85 73 fe ff ff    	jne    403ac8 <fmt_fp+0xd08>
  403c55:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403c59:	41 f6 02 20          	testb  $0x20,(%r10)
  403c5d:	74 1e                	je     403c7d <fmt_fp+0xebd>
  403c5f:	4c 89 c1             	mov    %r8,%rcx
  403c62:	4c 29 c9             	sub    %r9,%rcx
  403c65:	e9 40 ff ff ff       	jmp    403baa <fmt_fp+0xdea>
  403c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403c70:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403c74:	48 83 c0 02          	add    $0x2,%rax
  403c78:	e9 66 f9 ff ff       	jmp    4035e3 <fmt_fp+0x823>
  403c7d:	4c 89 d2             	mov    %r10,%rdx
  403c80:	be 01 00 00 00       	mov    $0x1,%esi
  403c85:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403c8c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403c93:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403c9a:	e8 b1 29 00 00       	call   406650 <__fwritex>
  403c9f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403ca6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403cac:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403cb3:	66 0f 6f 05 55 48 00 	movdqa 0x4855(%rip),%xmm0        # 408510 <states+0x210>
  403cba:	00 
  403cbb:	41 8b 02             	mov    (%r10),%eax
  403cbe:	83 e2 08             	and    $0x8,%edx
  403cc1:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403cc8:	83 e0 20             	and    $0x20,%eax
  403ccb:	44 09 fa             	or     %r15d,%edx
  403cce:	0f 84 85 fe ff ff    	je     403b59 <fmt_fp+0xd99>
  403cd4:	85 c0                	test   %eax,%eax
  403cd6:	75 87                	jne    403c5f <fmt_fp+0xe9f>
  403cd8:	4c 89 d2             	mov    %r10,%rdx
  403cdb:	be 01 00 00 00       	mov    $0x1,%esi
  403ce0:	48 8d 3d aa 44 00 00 	lea    0x44aa(%rip),%rdi        # 408191 <_fini+0x102d>
  403ce7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403cee:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403cf5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403cfc:	e8 4f 29 00 00       	call   406650 <__fwritex>
  403d01:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403d08:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403d0f:	66 0f 6f 05 f9 47 00 	movdqa 0x47f9(%rip),%xmm0        # 408510 <states+0x210>
  403d16:	00 
  403d17:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403d1e:	41 8b 02             	mov    (%r10),%eax
  403d21:	83 e0 20             	and    $0x20,%eax
  403d24:	e9 30 fe ff ff       	jmp    403b59 <fmt_fp+0xd99>
  403d29:	44 89 f8             	mov    %r15d,%eax
  403d2c:	31 ff                	xor    %edi,%edi
  403d2e:	e9 e5 f4 ff ff       	jmp    403218 <fmt_fp+0x458>
  403d33:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403d38:	e9 44 f4 ff ff       	jmp    403181 <fmt_fp+0x3c1>
  403d3d:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403d44:	0f 8f 5d 09 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  403d4a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403d51:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403d55:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403d5b:	45 29 ca             	sub    %r9d,%r10d
  403d5e:	41 83 ce 20          	or     $0x20,%r14d
  403d62:	41 83 fe 66          	cmp    $0x66,%r14d
  403d66:	0f 85 3d fb ff ff    	jne    4038a9 <fmt_fp+0xae9>
  403d6c:	44 39 d7             	cmp    %r10d,%edi
  403d6f:	0f 8f 32 09 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  403d75:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403d7b:	85 ff                	test   %edi,%edi
  403d7d:	0f 8e 02 fc ff ff    	jle    403985 <fmt_fp+0xbc5>
  403d83:	41 01 f9             	add    %edi,%r9d
  403d86:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403d8c:	e9 f4 fb ff ff       	jmp    403985 <fmt_fp+0xbc5>
  403d91:	41 8b 02             	mov    (%r10),%eax
  403d94:	49 89 f9             	mov    %rdi,%r9
  403d97:	83 e0 20             	and    $0x20,%eax
  403d9a:	e9 ba fd ff ff       	jmp    403b59 <fmt_fp+0xd99>
  403d9f:	45 85 ff             	test   %r15d,%r15d
  403da2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403da8:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403dac:	41 39 f9             	cmp    %edi,%r9d
  403daf:	0f 8e e9 04 00 00    	jle    40429e <fmt_fp+0x14de>
  403db5:	83 ff fc             	cmp    $0xfffffffc,%edi
  403db8:	0f 8c e0 04 00 00    	jl     40429e <fmt_fp+0x14de>
  403dbe:	8d 47 01             	lea    0x1(%rdi),%eax
  403dc1:	45 89 cf             	mov    %r9d,%r15d
  403dc4:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403dcb:	41 29 c7             	sub    %eax,%r15d
  403dce:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403dd5:	0f 85 9c 05 00 00    	jne    404377 <fmt_fp+0x15b7>
  403ddb:	be 09 00 00 00       	mov    $0x9,%esi
  403de0:	49 39 dc             	cmp    %rbx,%r12
  403de3:	73 1f                	jae    403e04 <fmt_fp+0x1044>
  403de5:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403de9:	45 85 c9             	test   %r9d,%r9d
  403dec:	74 16                	je     403e04 <fmt_fp+0x1044>
  403dee:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403df5:	d1 c8                	ror    $1,%eax
  403df7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403dfc:	0f 86 e0 04 00 00    	jbe    4042e2 <fmt_fp+0x1522>
  403e02:	31 f6                	xor    %esi,%esi
  403e04:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403e0b:	41 83 ce 20          	or     $0x20,%r14d
  403e0f:	41 83 fe 66          	cmp    $0x66,%r14d
  403e13:	0f 85 ac 05 00 00    	jne    4043c5 <fmt_fp+0x1605>
  403e19:	48 89 d8             	mov    %rbx,%rax
  403e1c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403e23:	ba 00 00 00 00       	mov    $0x0,%edx
  403e28:	48 c1 f8 02          	sar    $0x2,%rax
  403e2c:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403e31:	48 29 f0             	sub    %rsi,%rax
  403e34:	48 0f 48 c2          	cmovs  %rdx,%rax
  403e38:	49 63 d7             	movslq %r15d,%rdx
  403e3b:	48 39 d0             	cmp    %rdx,%rax
  403e3e:	48 0f 4f c2          	cmovg  %rdx,%rax
  403e42:	48 85 c0             	test   %rax,%rax
  403e45:	0f 84 66 08 00 00    	je     4046b1 <fmt_fp+0x18f1>
  403e4b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403e51:	0f 8f 50 08 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  403e57:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403e5b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403e61:	41 89 c7             	mov    %eax,%r15d
  403e64:	45 29 ca             	sub    %r9d,%r10d
  403e67:	e9 00 ff ff ff       	jmp    403d6c <fmt_fp+0xfac>
  403e6c:	0f 1f 40 00          	nopl   0x0(%rax)
  403e70:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403e77:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403e7e:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403e83:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403e8a:	cc cc cc 
  403e8d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403e94:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403e9b:	66 0f 6e c7          	movd   %edi,%xmm0
  403e9f:	4c 39 e0             	cmp    %r12,%rax
  403ea2:	49 89 c6             	mov    %rax,%r14
  403ea5:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403eaa:	4c 0f 46 e0          	cmovbe %rax,%r12
  403eae:	4c 89 e3             	mov    %r12,%rbx
  403eb1:	0f 1f 40 00          	nopl   0x0(%rax)
  403eb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ebc:	00 00 00 00 
  403ec0:	41 8b 0c 24          	mov    (%r12),%ecx
  403ec4:	48 85 c9             	test   %rcx,%rcx
  403ec7:	0f 84 43 02 00 00    	je     404110 <fmt_fp+0x1350>
  403ecd:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403ed1:	48 89 f7             	mov    %rsi,%rdi
  403ed4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403edb:	00 00 00 00 
  403edf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ee6:	00 00 00 00 
  403eea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ef1:	00 00 00 00 
  403ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403efc:	00 00 00 00 
  403f00:	48 89 c8             	mov    %rcx,%rax
  403f03:	48 83 ef 01          	sub    $0x1,%rdi
  403f07:	49 f7 e5             	mul    %r13
  403f0a:	48 89 c8             	mov    %rcx,%rax
  403f0d:	48 c1 ea 03          	shr    $0x3,%rdx
  403f11:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403f15:	4d 01 c0             	add    %r8,%r8
  403f18:	4c 29 c0             	sub    %r8,%rax
  403f1b:	83 c0 30             	add    $0x30,%eax
  403f1e:	48 83 f9 09          	cmp    $0x9,%rcx
  403f22:	48 89 d1             	mov    %rdx,%rcx
  403f25:	88 07                	mov    %al,(%rdi)
  403f27:	77 d7                	ja     403f00 <fmt_fp+0x1140>
  403f29:	4c 39 e3             	cmp    %r12,%rbx
  403f2c:	0f 84 36 01 00 00    	je     404068 <fmt_fp+0x12a8>
  403f32:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403f36:	48 39 fa             	cmp    %rdi,%rdx
  403f39:	0f 83 32 01 00 00    	jae    404071 <fmt_fp+0x12b1>
  403f3f:	49 89 fa             	mov    %rdi,%r10
  403f42:	48 89 f8             	mov    %rdi,%rax
  403f45:	49 29 d2             	sub    %rdx,%r10
  403f48:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403f4c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403f50:	76 46                	jbe    403f98 <fmt_fp+0x11d8>
  403f52:	4c 89 d6             	mov    %r10,%rsi
  403f55:	48 89 f9             	mov    %rdi,%rcx
  403f58:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403f5c:	48 29 f1             	sub    %rsi,%rcx
  403f5f:	40 f6 c6 10          	test   $0x10,%sil
  403f63:	74 1b                	je     403f80 <fmt_fp+0x11c0>
  403f65:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403f69:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403f6d:	48 39 c8             	cmp    %rcx,%rax
  403f70:	74 1e                	je     403f90 <fmt_fp+0x11d0>
  403f72:	0f 1f 00             	nopl   (%rax)
  403f75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f7c:	00 00 00 00 
  403f80:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403f84:	48 83 e8 20          	sub    $0x20,%rax
  403f88:	0f 11 00             	movups %xmm0,(%rax)
  403f8b:	48 39 c8             	cmp    %rcx,%rax
  403f8e:	75 f0                	jne    403f80 <fmt_fp+0x11c0>
  403f90:	4c 39 d6             	cmp    %r10,%rsi
  403f93:	74 3b                	je     403fd0 <fmt_fp+0x1210>
  403f95:	48 29 f7             	sub    %rsi,%rdi
  403f98:	48 89 d0             	mov    %rdx,%rax
  403f9b:	48 f7 d0             	not    %rax
  403f9e:	48 01 f8             	add    %rdi,%rax
  403fa1:	48 83 ef 01          	sub    $0x1,%rdi
  403fa5:	c6 07 30             	movb   $0x30,(%rdi)
  403fa8:	48 39 fa             	cmp    %rdi,%rdx
  403fab:	73 23                	jae    403fd0 <fmt_fp+0x1210>
  403fad:	a8 01                	test   $0x1,%al
  403faf:	74 0f                	je     403fc0 <fmt_fp+0x1200>
  403fb1:	48 83 ef 01          	sub    $0x1,%rdi
  403fb5:	c6 07 30             	movb   $0x30,(%rdi)
  403fb8:	48 39 fa             	cmp    %rdi,%rdx
  403fbb:	73 13                	jae    403fd0 <fmt_fp+0x1210>
  403fbd:	0f 1f 00             	nopl   (%rax)
  403fc0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403fc4:	48 83 ef 02          	sub    $0x2,%rdi
  403fc8:	c6 07 30             	movb   $0x30,(%rdi)
  403fcb:	48 39 fa             	cmp    %rdi,%rdx
  403fce:	72 f0                	jb     403fc0 <fmt_fp+0x1200>
  403fd0:	be 09 00 00 00       	mov    $0x9,%esi
  403fd5:	48 89 d7             	mov    %rdx,%rdi
  403fd8:	41 f6 07 20          	testb  $0x20,(%r15)
  403fdc:	0f 84 9c 00 00 00    	je     40407e <fmt_fp+0x12be>
  403fe2:	49 83 c4 04          	add    $0x4,%r12
  403fe6:	4d 39 e6             	cmp    %r12,%r14
  403fe9:	0f 83 d1 fe ff ff    	jae    403ec0 <fmt_fp+0x1100>
  403fef:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403ff6:	49 89 dc             	mov    %rbx,%r12
  403ff9:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  404000:	45 85 ff             	test   %r15d,%r15d
  404003:	0f 85 36 04 00 00    	jne    40443f <fmt_fp+0x167f>
  404009:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  404010:	0f 84 d8 fb ff ff    	je     403bee <fmt_fp+0xe2e>
  404016:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  40401d:	f6 02 20             	testb  $0x20,(%rdx)
  404020:	0f 85 c8 fb ff ff    	jne    403bee <fmt_fp+0xe2e>
  404026:	be 01 00 00 00       	mov    $0x1,%esi
  40402b:	48 8d 3d 5f 41 00 00 	lea    0x415f(%rip),%rdi        # 408191 <_fini+0x102d>
  404032:	e8 19 26 00 00       	call   406650 <__fwritex>
  404037:	41 83 c7 09          	add    $0x9,%r15d
  40403b:	41 83 ff 09          	cmp    $0x9,%r15d
  40403f:	0f 8e a9 fb ff ff    	jle    403bee <fmt_fp+0xe2e>
  404045:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40404c:	b9 09 00 00 00       	mov    $0x9,%ecx
  404051:	44 89 fa             	mov    %r15d,%edx
  404054:	be 30 00 00 00       	mov    $0x30,%esi
  404059:	e8 62 ec ff ff       	call   402cc0 <pad.part.0>
  40405e:	e9 8b fb ff ff       	jmp    403bee <fmt_fp+0xe2e>
  404063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404068:	48 39 f7             	cmp    %rsi,%rdi
  40406b:	0f 84 b0 00 00 00    	je     404121 <fmt_fp+0x1361>
  404071:	48 29 fe             	sub    %rdi,%rsi
  404074:	41 f6 07 20          	testb  $0x20,(%r15)
  404078:	0f 85 64 ff ff ff    	jne    403fe2 <fmt_fp+0x1222>
  40407e:	4c 89 fa             	mov    %r15,%rdx
  404081:	e8 ca 25 00 00       	call   406650 <__fwritex>
  404086:	66 0f 6f 05 82 44 00 	movdqa 0x4482(%rip),%xmm0        # 408510 <states+0x210>
  40408d:	00 
  40408e:	e9 4f ff ff ff       	jmp    403fe2 <fmt_fp+0x1222>
  404093:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40409a:	f6 00 20             	testb  $0x20,(%rax)
  40409d:	0f 85 4e f9 ff ff    	jne    4039f1 <fmt_fp+0xc31>
  4040a3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  4040aa:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  4040b1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4040b8:	e8 93 25 00 00       	call   406650 <__fwritex>
  4040bd:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4040c3:	35 00 00 01 00       	xor    $0x10000,%eax
  4040c8:	a9 00 20 01 00       	test   $0x12000,%eax
  4040cd:	0f 85 1e f9 ff ff    	jne    4039f1 <fmt_fp+0xc31>
  4040d3:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  4040da:	0f 85 11 f9 ff ff    	jne    4039f1 <fmt_fp+0xc31>
  4040e0:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  4040e6:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4040ec:	be 30 00 00 00       	mov    $0x30,%esi
  4040f1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4040f8:	e8 c3 eb ff ff       	call   402cc0 <pad.part.0>
  4040fd:	e9 ef f8 ff ff       	jmp    4039f1 <fmt_fp+0xc31>
  404102:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  404109:	f6 00 20             	testb  $0x20,(%rax)
  40410c:	75 af                	jne    4040bd <fmt_fp+0x12fd>
  40410e:	eb 93                	jmp    4040a3 <fmt_fp+0x12e3>
  404110:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  404114:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  404118:	4c 39 e3             	cmp    %r12,%rbx
  40411b:	0f 85 1e fe ff ff    	jne    403f3f <fmt_fp+0x117f>
  404121:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  404125:	be 01 00 00 00       	mov    $0x1,%esi
  40412a:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  40412e:	e9 a5 fe ff ff       	jmp    403fd8 <fmt_fp+0x1218>
  404133:	d9 05 97 43 00 00    	flds   0x4397(%rip)        # 4084d0 <states+0x1d0>
  404139:	d9 05 a1 43 00 00    	flds   0x43a1(%rip)        # 4084e0 <states+0x1e0>
  40413f:	b8 0e 00 00 00       	mov    $0xe,%eax
  404144:	44 29 f8             	sub    %r15d,%eax
  404147:	90                   	nop
  404148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40414f:	00 
  404150:	dc c9                	fmul   %st,%st(1)
  404152:	83 e8 01             	sub    $0x1,%eax
  404155:	73 f9                	jae    404150 <fmt_fp+0x1390>
  404157:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  40415e:	80 38 2d             	cmpb   $0x2d,(%rax)
  404161:	0f 84 c6 04 00 00    	je     40462d <fmt_fp+0x186d>
  404167:	d9 ca                	fxch   %st(2)
  404169:	d8 c1                	fadd   %st(1),%st
  40416b:	de e1                	fsubp  %st,%st(1)
  40416d:	d9 c9                	fxch   %st(1)
  40416f:	e9 9d f3 ff ff       	jmp    403511 <fmt_fp+0x751>
  404174:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  40417b:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  40417f:	48 89 c2             	mov    %rax,%rdx
  404182:	48 29 fe             	sub    %rdi,%rsi
  404185:	e8 c6 24 00 00       	call   406650 <__fwritex>
  40418a:	e9 5f fa ff ff       	jmp    403bee <fmt_fp+0xe2e>
  40418f:	44 01 d8             	add    %r11d,%eax
  404192:	89 06                	mov    %eax,(%rsi)
  404194:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  404199:	0f 86 3e 05 00 00    	jbe    4046dd <fmt_fp+0x191d>
  40419f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041a6:	00 00 00 00 
  4041aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041b1:	00 00 00 00 
  4041b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041bc:	00 00 00 00 
  4041c0:	48 89 f2             	mov    %rsi,%rdx
  4041c3:	48 83 ee 04          	sub    $0x4,%rsi
  4041c7:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  4041ce:	4c 39 e6             	cmp    %r12,%rsi
  4041d1:	73 0d                	jae    4041e0 <fmt_fp+0x1420>
  4041d3:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  4041da:	00 00 
  4041dc:	49 83 ec 04          	sub    $0x4,%r12
  4041e0:	8b 06                	mov    (%rsi),%eax
  4041e2:	83 c0 01             	add    $0x1,%eax
  4041e5:	89 06                	mov    %eax,(%rsi)
  4041e7:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  4041ec:	77 d2                	ja     4041c0 <fmt_fp+0x1400>
  4041ee:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  4041f5:	41 8b 0c 24          	mov    (%r12),%ecx
  4041f9:	4c 29 e0             	sub    %r12,%rax
  4041fc:	48 c1 f8 02          	sar    $0x2,%rax
  404200:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  404203:	83 f9 09             	cmp    $0x9,%ecx
  404206:	0f 86 43 f6 ff ff    	jbe    40384f <fmt_fp+0xa8f>
  40420c:	b8 0a 00 00 00       	mov    $0xa,%eax
  404211:	0f 1f 40 00          	nopl   0x0(%rax)
  404215:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40421c:	00 00 00 00 
  404220:	8d 04 80             	lea    (%rax,%rax,4),%eax
  404223:	83 c7 01             	add    $0x1,%edi
  404226:	01 c0                	add    %eax,%eax
  404228:	39 c1                	cmp    %eax,%ecx
  40422a:	73 f4                	jae    404220 <fmt_fp+0x1460>
  40422c:	e9 1e f6 ff ff       	jmp    40384f <fmt_fp+0xa8f>
  404231:	be 01 00 00 00       	mov    $0x1,%esi
  404236:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40423c:	e9 d7 ec ff ff       	jmp    402f18 <fmt_fp+0x158>
  404241:	be 01 00 00 00       	mov    $0x1,%esi
  404246:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40424c:	e9 b6 ec ff ff       	jmp    402f07 <fmt_fp+0x147>
  404251:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404258:	f6 07 20             	testb  $0x20,(%rdi)
  40425b:	0f 84 9d f4 ff ff    	je     4036fe <fmt_fp+0x93e>
  404261:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404267:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40426d:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  404274:	35 00 00 01 00       	xor    $0x10000,%eax
  404279:	a9 00 20 01 00       	test   $0x12000,%eax
  40427e:	75 0d                	jne    40428d <fmt_fp+0x14cd>
  404280:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404287:	0f 84 bd f4 ff ff    	je     40374a <fmt_fp+0x98a>
  40428d:	45 29 f7             	sub    %r14d,%r15d
  404290:	45 85 ff             	test   %r15d,%r15d
  404293:	0f 8e 9d f1 ff ff    	jle    403436 <fmt_fp+0x676>
  404299:	e9 64 f1 ff ff       	jmp    403402 <fmt_fp+0x642>
  40429e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  4042a5:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  4042a9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4042b0:	0f 85 9c 00 00 00    	jne    404352 <fmt_fp+0x1592>
  4042b6:	49 39 dc             	cmp    %rbx,%r12
  4042b9:	0f 83 01 01 00 00    	jae    4043c0 <fmt_fp+0x1600>
  4042bf:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  4042c3:	45 85 c9             	test   %r9d,%r9d
  4042c6:	0f 84 f4 00 00 00    	je     4043c0 <fmt_fp+0x1600>
  4042cc:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  4042d3:	31 f6                	xor    %esi,%esi
  4042d5:	d1 c8                	ror    $1,%eax
  4042d7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  4042dc:	0f 87 e3 00 00 00    	ja     4043c5 <fmt_fp+0x1605>
  4042e2:	31 f6                	xor    %esi,%esi
  4042e4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4042e9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4042ec:	44 89 c8             	mov    %r9d,%eax
  4042ef:	31 d2                	xor    %edx,%edx
  4042f1:	83 c6 01             	add    $0x1,%esi
  4042f4:	01 c9                	add    %ecx,%ecx
  4042f6:	f7 f1                	div    %ecx
  4042f8:	85 d2                	test   %edx,%edx
  4042fa:	74 ed                	je     4042e9 <fmt_fp+0x1529>
  4042fc:	48 63 f6             	movslq %esi,%rsi
  4042ff:	e9 00 fb ff ff       	jmp    403e04 <fmt_fp+0x1044>
  404304:	db 2d f6 41 00 00    	fldt   0x41f6(%rip)        # 408500 <states+0x200>
  40430a:	d9 05 c8 41 00 00    	flds   0x41c8(%rip)        # 4084d8 <states+0x1d8>
  404310:	e9 fe f4 ff ff       	jmp    403813 <fmt_fp+0xa53>
  404315:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404319:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40431d:	e9 54 f2 ff ff       	jmp    403576 <fmt_fp+0x7b6>
  404322:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  404328:	75 0f                	jne    404339 <fmt_fp+0x1579>
  40432a:	49 39 f4             	cmp    %rsi,%r12
  40432d:	73 0a                	jae    404339 <fmt_fp+0x1579>
  40432f:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  404333:	0f 85 ba f4 ff ff    	jne    4037f3 <fmt_fp+0xa33>
  404339:	d9 05 95 41 00 00    	flds   0x4195(%rip)        # 4084d4 <states+0x1d4>
  40433f:	e9 b5 f4 ff ff       	jmp    4037f9 <fmt_fp+0xa39>
  404344:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404349:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40434d:	e9 4d f3 ff ff       	jmp    40369f <fmt_fp+0x8df>
  404352:	45 85 ff             	test   %r15d,%r15d
  404355:	0f 85 24 03 00 00    	jne    40467f <fmt_fp+0x18bf>
  40435b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404362:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  404368:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  40436e:	41 83 ce 20          	or     $0x20,%r14d
  404372:	e9 3d f5 ff ff       	jmp    4038b4 <fmt_fp+0xaf4>
  404377:	45 85 ff             	test   %r15d,%r15d
  40437a:	0f 85 bd f9 ff ff    	jne    403d3d <fmt_fp+0xf7d>
  404380:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404387:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40438d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404393:	41 83 ce 20          	or     $0x20,%r14d
  404397:	41 83 fe 66          	cmp    $0x66,%r14d
  40439b:	0f 85 08 f5 ff ff    	jne    4038a9 <fmt_fp+0xae9>
  4043a1:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  4043a7:	0f 84 fa 02 00 00    	je     4046a7 <fmt_fp+0x18e7>
  4043ad:	85 ff                	test   %edi,%edi
  4043af:	0f 85 ce f9 ff ff    	jne    403d83 <fmt_fp+0xfc3>
  4043b5:	e9 df f5 ff ff       	jmp    403999 <fmt_fp+0xbd9>
  4043ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4043c0:	be 09 00 00 00       	mov    $0x9,%esi
  4043c5:	48 89 d8             	mov    %rbx,%rax
  4043c8:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  4043cf:	48 63 d7             	movslq %edi,%rdx
  4043d2:	48 c1 f8 02          	sar    $0x2,%rax
  4043d6:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  4043db:	48 01 d0             	add    %rdx,%rax
  4043de:	ba 00 00 00 00       	mov    $0x0,%edx
  4043e3:	48 29 f0             	sub    %rsi,%rax
  4043e6:	48 0f 48 c2          	cmovs  %rdx,%rax
  4043ea:	49 63 d7             	movslq %r15d,%rdx
  4043ed:	48 39 d0             	cmp    %rdx,%rax
  4043f0:	48 0f 4f c2          	cmovg  %rdx,%rax
  4043f4:	41 89 c7             	mov    %eax,%r15d
  4043f7:	48 85 c0             	test   %rax,%rax
  4043fa:	0f 85 3d f9 ff ff    	jne    403d3d <fmt_fp+0xf7d>
  404400:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404407:	41 83 ce 20          	or     $0x20,%r14d
  40440b:	41 83 fe 66          	cmp    $0x66,%r14d
  40440f:	0f 84 9c 02 00 00    	je     4046b1 <fmt_fp+0x18f1>
  404415:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40441b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404421:	45 31 ff             	xor    %r15d,%r15d
  404424:	e9 80 f4 ff ff       	jmp    4038a9 <fmt_fp+0xae9>
  404429:	44 39 d7             	cmp    %r10d,%edi
  40442c:	0f 8f 75 02 00 00    	jg     4046a7 <fmt_fp+0x18e7>
  404432:	85 ff                	test   %edi,%edi
  404434:	0f 8f 49 f9 ff ff    	jg     403d83 <fmt_fp+0xfc3>
  40443a:	e9 5a f5 ff ff       	jmp    403999 <fmt_fp+0xbd9>
  40443f:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404446:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40444b:	48 89 f8             	mov    %rdi,%rax
  40444e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404452:	4c 29 e0             	sub    %r12,%rax
  404455:	48 39 d1             	cmp    %rdx,%rcx
  404458:	ba 00 00 00 00       	mov    $0x0,%edx
  40445d:	48 0f 42 c2          	cmovb  %rdx,%rax
  404461:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  404466:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40446d:	f6 00 20             	testb  $0x20,(%rax)
  404470:	0f 84 70 02 00 00    	je     4046e6 <fmt_fp+0x1926>
  404476:	45 85 ff             	test   %r15d,%r15d
  404479:	0f 8e b8 fb ff ff    	jle    404037 <fmt_fp+0x1277>
  40447f:	49 39 de             	cmp    %rbx,%r14
  404482:	0f 83 af fb ff ff    	jae    404037 <fmt_fp+0x1277>
  404488:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40448d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404491:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404495:	49 89 d9             	mov    %rbx,%r9
  404498:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40449f:	66 0f 6e c0          	movd   %eax,%xmm0
  4044a3:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  4044aa:	cc cc cc 
  4044ad:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4044b2:	0f 1f 00             	nopl   (%rax)
  4044b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044bc:	00 00 00 00 
  4044c0:	41 8b 0e             	mov    (%r14),%ecx
  4044c3:	4c 89 c7             	mov    %r8,%rdi
  4044c6:	48 85 c9             	test   %rcx,%rcx
  4044c9:	74 67                	je     404532 <fmt_fp+0x1772>
  4044cb:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4044d2:	00 00 
  4044d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044db:	00 00 00 00 
  4044df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044e6:	00 00 00 00 
  4044ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044f1:	00 00 00 00 
  4044f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044fc:	00 00 00 00 
  404500:	48 89 c8             	mov    %rcx,%rax
  404503:	48 83 ef 01          	sub    $0x1,%rdi
  404507:	49 f7 e4             	mul    %r12
  40450a:	48 89 c8             	mov    %rcx,%rax
  40450d:	48 c1 ea 03          	shr    $0x3,%rdx
  404511:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404515:	48 01 f6             	add    %rsi,%rsi
  404518:	48 29 f0             	sub    %rsi,%rax
  40451b:	83 c0 30             	add    $0x30,%eax
  40451e:	48 83 f9 09          	cmp    $0x9,%rcx
  404522:	48 89 d1             	mov    %rdx,%rcx
  404525:	88 07                	mov    %al,(%rdi)
  404527:	77 d7                	ja     404500 <fmt_fp+0x1740>
  404529:	49 39 fd             	cmp    %rdi,%r13
  40452c:	0f 83 91 00 00 00    	jae    4045c3 <fmt_fp+0x1803>
  404532:	48 89 fe             	mov    %rdi,%rsi
  404535:	48 89 f8             	mov    %rdi,%rax
  404538:	4c 29 ee             	sub    %r13,%rsi
  40453b:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  40453f:	48 83 fa 0e          	cmp    $0xe,%rdx
  404543:	76 43                	jbe    404588 <fmt_fp+0x17c8>
  404545:	48 89 f1             	mov    %rsi,%rcx
  404548:	48 89 fa             	mov    %rdi,%rdx
  40454b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40454f:	48 29 ca             	sub    %rcx,%rdx
  404552:	f6 c1 10             	test   $0x10,%cl
  404555:	74 19                	je     404570 <fmt_fp+0x17b0>
  404557:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40455b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40455f:	48 39 d0             	cmp    %rdx,%rax
  404562:	74 1c                	je     404580 <fmt_fp+0x17c0>
  404564:	90                   	nop
  404565:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40456c:	00 00 00 00 
  404570:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404574:	48 83 e8 20          	sub    $0x20,%rax
  404578:	0f 11 00             	movups %xmm0,(%rax)
  40457b:	48 39 d0             	cmp    %rdx,%rax
  40457e:	75 f0                	jne    404570 <fmt_fp+0x17b0>
  404580:	48 39 f1             	cmp    %rsi,%rcx
  404583:	74 3b                	je     4045c0 <fmt_fp+0x1800>
  404585:	48 29 cf             	sub    %rcx,%rdi
  404588:	4c 89 e8             	mov    %r13,%rax
  40458b:	48 f7 d0             	not    %rax
  40458e:	48 01 f8             	add    %rdi,%rax
  404591:	48 83 ef 01          	sub    $0x1,%rdi
  404595:	c6 07 30             	movb   $0x30,(%rdi)
  404598:	49 39 fd             	cmp    %rdi,%r13
  40459b:	73 23                	jae    4045c0 <fmt_fp+0x1800>
  40459d:	a8 01                	test   $0x1,%al
  40459f:	74 0f                	je     4045b0 <fmt_fp+0x17f0>
  4045a1:	48 83 ef 01          	sub    $0x1,%rdi
  4045a5:	c6 07 30             	movb   $0x30,(%rdi)
  4045a8:	49 39 fd             	cmp    %rdi,%r13
  4045ab:	73 13                	jae    4045c0 <fmt_fp+0x1800>
  4045ad:	0f 1f 00             	nopl   (%rax)
  4045b0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  4045b4:	48 83 ef 02          	sub    $0x2,%rdi
  4045b8:	c6 07 30             	movb   $0x30,(%rdi)
  4045bb:	49 39 fd             	cmp    %rdi,%r13
  4045be:	72 f0                	jb     4045b0 <fmt_fp+0x17f0>
  4045c0:	4c 89 ef             	mov    %r13,%rdi
  4045c3:	f6 03 20             	testb  $0x20,(%rbx)
  4045c6:	74 28                	je     4045f0 <fmt_fp+0x1830>
  4045c8:	49 83 c6 04          	add    $0x4,%r14
  4045cc:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  4045d0:	4d 39 ce             	cmp    %r9,%r14
  4045d3:	0f 83 62 fa ff ff    	jae    40403b <fmt_fp+0x127b>
  4045d9:	85 c0                	test   %eax,%eax
  4045db:	0f 8e 5a fa ff ff    	jle    40403b <fmt_fp+0x127b>
  4045e1:	41 89 c7             	mov    %eax,%r15d
  4045e4:	e9 d7 fe ff ff       	jmp    4044c0 <fmt_fp+0x1700>
  4045e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4045f0:	b8 09 00 00 00       	mov    $0x9,%eax
  4045f5:	48 89 da             	mov    %rbx,%rdx
  4045f8:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  4045ff:	41 39 c7             	cmp    %eax,%r15d
  404602:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404609:	41 0f 4e c7          	cmovle %r15d,%eax
  40460d:	48 63 f0             	movslq %eax,%rsi
  404610:	e8 3b 20 00 00       	call   406650 <__fwritex>
  404615:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40461c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404623:	66 0f 6f 05 e5 3e 00 	movdqa 0x3ee5(%rip),%xmm0        # 408510 <states+0x210>
  40462a:	00 
  40462b:	eb 9b                	jmp    4045c8 <fmt_fp+0x1808>
  40462d:	d9 ca                	fxch   %st(2)
  40462f:	d9 e0                	fchs
  404631:	d8 e1                	fsub   %st(1),%st
  404633:	de c1                	faddp  %st,%st(1)
  404635:	d9 e0                	fchs
  404637:	d9 c9                	fxch   %st(1)
  404639:	e9 d3 ee ff ff       	jmp    403511 <fmt_fp+0x751>
  40463e:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404642:	48 39 c3             	cmp    %rax,%rbx
  404645:	0f 85 c2 f1 ff ff    	jne    40380d <fmt_fp+0xa4d>
  40464b:	d9 e8                	fld1
  40464d:	e9 c1 f1 ff ff       	jmp    403813 <fmt_fp+0xa53>
  404652:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404656:	4c 89 e9             	mov    %r13,%rcx
  404659:	e9 e2 f2 ff ff       	jmp    403940 <fmt_fp+0xb80>
  40465e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  404664:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404669:	e9 32 ec ff ff       	jmp    4032a0 <fmt_fp+0x4e0>
  40466e:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404672:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  404676:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  40467a:	e9 01 ef ff ff       	jmp    403580 <fmt_fp+0x7c0>
  40467f:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404686:	74 1f                	je     4046a7 <fmt_fp+0x18e7>
  404688:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40468f:	41 83 c1 01          	add    $0x1,%r9d
  404693:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404698:	44 29 c8             	sub    %r9d,%eax
  40469b:	41 83 ce 20          	or     $0x20,%r14d
  40469f:	4c 63 d0             	movslq %eax,%r10
  4046a2:	e9 0d f2 ff ff       	jmp    4038b4 <fmt_fp+0xaf4>
  4046a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4046ac:	e9 ee ec ff ff       	jmp    40339f <fmt_fp+0x5df>
  4046b1:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  4046b7:	74 ee                	je     4046a7 <fmt_fp+0x18e7>
  4046b9:	45 31 ff             	xor    %r15d,%r15d
  4046bc:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4046c2:	85 ff                	test   %edi,%edi
  4046c4:	0f 8f b9 f6 ff ff    	jg     403d83 <fmt_fp+0xfc3>
  4046ca:	e9 ca f2 ff ff       	jmp    403999 <fmt_fp+0xbd9>
  4046cf:	dd d8                	fstp   %st(0)
  4046d1:	dd d8                	fstp   %st(0)
  4046d3:	dd d8                	fstp   %st(0)
  4046d5:	49 89 c0             	mov    %rax,%r8
  4046d8:	e9 82 ef ff ff       	jmp    40365f <fmt_fp+0x89f>
  4046dd:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4046e1:	e9 08 fb ff ff       	jmp    4041ee <fmt_fp+0x142e>
  4046e6:	48 89 c2             	mov    %rax,%rdx
  4046e9:	be 01 00 00 00       	mov    $0x1,%esi
  4046ee:	48 8d 3d 9c 3a 00 00 	lea    0x3a9c(%rip),%rdi        # 408191 <_fini+0x102d>
  4046f5:	e8 56 1f 00 00       	call   406650 <__fwritex>
  4046fa:	e9 77 fd ff ff       	jmp    404476 <fmt_fp+0x16b6>
  4046ff:	e8 fc e0 ff ff       	call   402800 <__stack_chk_fail>
  404704:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40470b:	00 00 00 
  40470e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404715:	00 00 00 
  404718:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40471f:	00 00 00 
  404722:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404729:	00 00 00 
  40472c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404733:	00 00 00 
  404736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40473d:	00 00 00 

0000000000404740 <printf_core>:
  404740:	55                   	push   %rbp
  404741:	48 89 e5             	mov    %rsp,%rbp
  404744:	41 57                	push   %r15
  404746:	4c 8d 3d b3 3b 00 00 	lea    0x3bb3(%rip),%r15        # 408300 <states>
  40474d:	41 56                	push   %r14
  40474f:	49 89 f6             	mov    %rsi,%r14
  404752:	41 55                	push   %r13
  404754:	45 31 ed             	xor    %r13d,%r13d
  404757:	41 54                	push   %r12
  404759:	53                   	push   %rbx
  40475a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  404761:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  404765:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  40476c:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  404773:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  40477a:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404781:	00 00 
  404783:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404787:	45 31 c0             	xor    %r8d,%r8d
  40478a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404791:	00 00 00 
  404794:	41 0f b6 06          	movzbl (%r14),%eax
  404798:	45 01 c5             	add    %r8d,%r13d
  40479b:	84 c0                	test   %al,%al
  40479d:	0f 84 ad 06 00 00    	je     404e50 <printf_core+0x710>
  4047a3:	4d 89 f2             	mov    %r14,%r10
  4047a6:	eb 25                	jmp    4047cd <printf_core+0x8d>
  4047a8:	66 90                	xchg   %ax,%ax
  4047aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047b1:	00 00 00 00 
  4047b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047bc:	00 00 00 00 
  4047c0:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  4047c5:	49 83 c2 01          	add    $0x1,%r10
  4047c9:	84 c0                	test   %al,%al
  4047cb:	74 73                	je     404840 <printf_core+0x100>
  4047cd:	3c 25                	cmp    $0x25,%al
  4047cf:	75 ef                	jne    4047c0 <printf_core+0x80>
  4047d1:	4c 89 d3             	mov    %r10,%rbx
  4047d4:	eb 17                	jmp    4047ed <printf_core+0xad>
  4047d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047dd:	00 00 00 
  4047e0:	48 83 c3 02          	add    $0x2,%rbx
  4047e4:	49 83 c2 01          	add    $0x1,%r10
  4047e8:	80 3b 25             	cmpb   $0x25,(%rbx)
  4047eb:	75 06                	jne    4047f3 <printf_core+0xb3>
  4047ed:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  4047f1:	74 ed                	je     4047e0 <printf_core+0xa0>
  4047f3:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  4047f9:	4d 29 f2             	sub    %r14,%r10
  4047fc:	45 29 eb             	sub    %r13d,%r11d
  4047ff:	49 63 c3             	movslq %r11d,%rax
  404802:	49 39 c2             	cmp    %rax,%r10
  404805:	0f 8f 15 03 00 00    	jg     404b20 <printf_core+0x3e0>
  40480b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40480f:	45 89 d0             	mov    %r10d,%r8d
  404812:	48 85 c0             	test   %rax,%rax
  404815:	74 09                	je     404820 <printf_core+0xe0>
  404817:	f6 00 20             	testb  $0x20,(%rax)
  40481a:	0f 84 10 03 00 00    	je     404b30 <printf_core+0x3f0>
  404820:	45 85 d2             	test   %r10d,%r10d
  404823:	74 2b                	je     404850 <printf_core+0x110>
  404825:	45 39 c3             	cmp    %r8d,%r11d
  404828:	0f 8c f2 02 00 00    	jl     404b20 <printf_core+0x3e0>
  40482e:	49 89 de             	mov    %rbx,%r14
  404831:	e9 5e ff ff ff       	jmp    404794 <printf_core+0x54>
  404836:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40483d:	00 00 00 
  404840:	3c 25                	cmp    $0x25,%al
  404842:	74 8d                	je     4047d1 <printf_core+0x91>
  404844:	4c 89 d3             	mov    %r10,%rbx
  404847:	eb aa                	jmp    4047f3 <printf_core+0xb3>
  404849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404850:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404854:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404857:	89 c8                	mov    %ecx,%eax
  404859:	83 ff 09             	cmp    $0x9,%edi
  40485c:	77 1a                	ja     404878 <printf_core+0x138>
  40485e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  404862:	0f 84 e5 03 00 00    	je     404c4d <printf_core+0x50d>
  404868:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40486c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404871:	eb 1a                	jmp    40488d <printf_core+0x14d>
  404873:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404878:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40487c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404881:	83 e9 20             	sub    $0x20,%ecx
  404884:	83 f9 1f             	cmp    $0x1f,%ecx
  404887:	0f 87 b5 05 00 00    	ja     404e42 <printf_core+0x702>
  40488d:	45 31 e4             	xor    %r12d,%r12d
  404890:	be 89 28 01 00       	mov    $0x12889,%esi
  404895:	eb 48                	jmp    4048df <printf_core+0x19f>
  404897:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40489e:	00 
  40489f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048a6:	00 00 00 00 
  4048aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048b1:	00 00 00 00 
  4048b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048bc:	00 00 00 00 
  4048c0:	b8 01 00 00 00       	mov    $0x1,%eax
  4048c5:	48 83 c2 01          	add    $0x1,%rdx
  4048c9:	d3 e0                	shl    %cl,%eax
  4048cb:	0f be 0a             	movsbl (%rdx),%ecx
  4048ce:	41 09 c4             	or     %eax,%r12d
  4048d1:	89 c8                	mov    %ecx,%eax
  4048d3:	83 e9 20             	sub    $0x20,%ecx
  4048d6:	83 f9 1f             	cmp    $0x1f,%ecx
  4048d9:	0f 87 49 01 00 00    	ja     404a28 <printf_core+0x2e8>
  4048df:	8d 48 e0             	lea    -0x20(%rax),%ecx
  4048e2:	0f a3 ce             	bt     %ecx,%esi
  4048e5:	72 d9                	jb     4048c0 <printf_core+0x180>
  4048e7:	3c 2a                	cmp    $0x2a,%al
  4048e9:	0f 85 39 01 00 00    	jne    404a28 <printf_core+0x2e8>
  4048ef:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  4048f4:	48 89 c8             	mov    %rcx,%rax
  4048f7:	83 e9 30             	sub    $0x30,%ecx
  4048fa:	83 f9 09             	cmp    $0x9,%ecx
  4048fd:	0f 86 0d 03 00 00    	jbe    404c10 <printf_core+0x4d0>
  404903:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404909:	85 c9                	test   %ecx,%ecx
  40490b:	0f 85 dc 00 00 00    	jne    4049ed <printf_core+0x2ad>
  404911:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404915:	45 89 d1             	mov    %r10d,%r9d
  404918:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40491d:	0f 84 58 01 00 00    	je     404a7b <printf_core+0x33b>
  404923:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  40492a:	8b 06                	mov    (%rsi),%eax
  40492c:	83 f8 2f             	cmp    $0x2f,%eax
  40492f:	0f 87 4a 03 00 00    	ja     404c7f <printf_core+0x53f>
  404935:	89 c2                	mov    %eax,%edx
  404937:	83 c0 08             	add    $0x8,%eax
  40493a:	48 03 56 10          	add    0x10(%rsi),%rdx
  40493e:	89 06                	mov    %eax,(%rsi)
  404940:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404947:	00 00 00 
  40494a:	44 8b 0a             	mov    (%rdx),%r9d
  40494d:	44 89 e2             	mov    %r12d,%edx
  404950:	0f b6 03             	movzbl (%rbx),%eax
  404953:	80 ce 20             	or     $0x20,%dh
  404956:	45 85 c9             	test   %r9d,%r9d
  404959:	44 0f 48 e2          	cmovs  %edx,%r12d
  40495d:	44 89 ca             	mov    %r9d,%edx
  404960:	f7 da                	neg    %edx
  404962:	45 85 c9             	test   %r9d,%r9d
  404965:	44 0f 48 ca          	cmovs  %edx,%r9d
  404969:	3c 2e                	cmp    $0x2e,%al
  40496b:	0f 84 12 01 00 00    	je     404a83 <printf_core+0x343>
  404971:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404978:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  40497f:	31 c0                	xor    %eax,%eax
  404981:	eb 5f                	jmp    4049e2 <printf_core+0x2a2>
  404983:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404989:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404990:	00 00 00 00 
  404994:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40499b:	00 00 00 00 
  40499f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049a6:	00 00 00 00 
  4049aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049b1:	00 00 00 00 
  4049b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049bc:	00 00 00 00 
  4049c0:	89 c1                	mov    %eax,%ecx
  4049c2:	48 63 d2             	movslq %edx,%rdx
  4049c5:	48 83 c3 01          	add    $0x1,%rbx
  4049c9:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  4049cd:	4c 01 fe             	add    %r15,%rsi
  4049d0:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  4049d4:	8d 56 ff             	lea    -0x1(%rsi),%edx
  4049d7:	83 fa 07             	cmp    $0x7,%edx
  4049da:	0f 87 90 01 00 00    	ja     404b70 <printf_core+0x430>
  4049e0:	89 f0                	mov    %esi,%eax
  4049e2:	0f be 13             	movsbl (%rbx),%edx
  4049e5:	83 ea 41             	sub    $0x41,%edx
  4049e8:	83 fa 39             	cmp    $0x39,%edx
  4049eb:	76 d3                	jbe    4049c0 <printf_core+0x280>
  4049ed:	e8 de 16 00 00       	call   4060d0 <__errno_location>
  4049f2:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  4049f8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  4049fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404a02:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404a09:	00 00 
  404a0b:	0f 85 a2 0f 00 00    	jne    4059b3 <printf_core+0x1273>
  404a11:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404a15:	44 89 d8             	mov    %r11d,%eax
  404a18:	5b                   	pop    %rbx
  404a19:	41 5c                	pop    %r12
  404a1b:	41 5d                	pop    %r13
  404a1d:	41 5e                	pop    %r14
  404a1f:	41 5f                	pop    %r15
  404a21:	5d                   	pop    %rbp
  404a22:	c3                   	ret
  404a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404a28:	0f be 0a             	movsbl (%rdx),%ecx
  404a2b:	45 89 d1             	mov    %r10d,%r9d
  404a2e:	48 89 d3             	mov    %rdx,%rbx
  404a31:	89 c8                	mov    %ecx,%eax
  404a33:	83 e9 30             	sub    $0x30,%ecx
  404a36:	83 f9 09             	cmp    $0x9,%ecx
  404a39:	77 40                	ja     404a7b <printf_core+0x33b>
  404a3b:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404a42:	0f 8f c8 00 00 00    	jg     404b10 <printf_core+0x3d0>
  404a48:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  404a4c:	83 e8 30             	sub    $0x30,%eax
  404a4f:	0f be c0             	movsbl %al,%eax
  404a52:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404a58:	39 f0                	cmp    %esi,%eax
  404a5a:	0f 8f b0 00 00 00    	jg     404b10 <printf_core+0x3d0>
  404a60:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404a64:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404a68:	29 c8                	sub    %ecx,%eax
  404a6a:	41 89 c1             	mov    %eax,%r9d
  404a6d:	89 d0                	mov    %edx,%eax
  404a6f:	83 ea 30             	sub    $0x30,%edx
  404a72:	83 fa 09             	cmp    $0x9,%edx
  404a75:	0f 86 3d 0f 00 00    	jbe    4059b8 <printf_core+0x1278>
  404a7b:	3c 2e                	cmp    $0x2e,%al
  404a7d:	0f 85 ee fe ff ff    	jne    404971 <printf_core+0x231>
  404a83:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404a87:	3c 2a                	cmp    $0x2a,%al
  404a89:	0f 85 11 02 00 00    	jne    404ca0 <printf_core+0x560>
  404a8f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404a93:	89 c2                	mov    %eax,%edx
  404a95:	83 e8 30             	sub    $0x30,%eax
  404a98:	83 f8 09             	cmp    $0x9,%eax
  404a9b:	77 0a                	ja     404aa7 <printf_core+0x367>
  404a9d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  404aa1:	0f 84 4f 03 00 00    	je     404df6 <printf_core+0x6b6>
  404aa7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  404aad:	85 c0                	test   %eax,%eax
  404aaf:	0f 85 38 ff ff ff    	jne    4049ed <printf_core+0x2ad>
  404ab5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404aba:	0f 84 6f 03 00 00    	je     404e2f <printf_core+0x6ef>
  404ac0:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404ac7:	8b 06                	mov    (%rsi),%eax
  404ac9:	83 f8 2f             	cmp    $0x2f,%eax
  404acc:	0f 87 60 02 00 00    	ja     404d32 <printf_core+0x5f2>
  404ad2:	89 c2                	mov    %eax,%edx
  404ad4:	83 c0 08             	add    $0x8,%eax
  404ad7:	48 03 56 10          	add    0x10(%rsi),%rdx
  404adb:	89 06                	mov    %eax,(%rsi)
  404add:	8b 02                	mov    (%rdx),%eax
  404adf:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ae2:	f7 d0                	not    %eax
  404ae4:	c1 e8 1f             	shr    $0x1f,%eax
  404ae7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404aed:	48 83 c3 02          	add    $0x2,%rbx
  404af1:	e9 89 fe ff ff       	jmp    40497f <printf_core+0x23f>
  404af6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404afd:	00 00 00 
  404b00:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404b04:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404b08:	83 e8 30             	sub    $0x30,%eax
  404b0b:	83 f8 09             	cmp    $0x9,%eax
  404b0e:	77 10                	ja     404b20 <printf_core+0x3e0>
  404b10:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404b14:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404b18:	83 ea 30             	sub    $0x30,%edx
  404b1b:	83 fa 09             	cmp    $0x9,%edx
  404b1e:	76 e0                	jbe    404b00 <printf_core+0x3c0>
  404b20:	e8 ab 15 00 00       	call   4060d0 <__errno_location>
  404b25:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404b2b:	e9 c8 fe ff ff       	jmp    4049f8 <printf_core+0x2b8>
  404b30:	49 63 f2             	movslq %r10d,%rsi
  404b33:	48 89 c2             	mov    %rax,%rdx
  404b36:	4c 89 f7             	mov    %r14,%rdi
  404b39:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404b40:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404b47:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404b4b:	e8 00 1b 00 00       	call   406650 <__fwritex>
  404b50:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404b57:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404b5e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404b62:	e9 b9 fc ff ff       	jmp    404820 <printf_core+0xe0>
  404b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404b6e:	00 00 
  404b70:	85 f6                	test   %esi,%esi
  404b72:	0f 84 75 fe ff ff    	je     4049ed <printf_core+0x2ad>
  404b78:	83 fe 1b             	cmp    $0x1b,%esi
  404b7b:	0f 84 e5 00 00 00    	je     404c66 <printf_core+0x526>
  404b81:	83 ff ff             	cmp    $0xffffffff,%edi
  404b84:	0f 84 01 02 00 00    	je     404d8b <printf_core+0x64b>
  404b8a:	48 63 ff             	movslq %edi,%rdi
  404b8d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b92:	0f 84 b2 01 00 00    	je     404d4a <printf_core+0x60a>
  404b98:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404b9f:	48 c1 e7 04          	shl    $0x4,%rdi
  404ba3:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404ba8:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404bac:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404bb0:	f6 07 20             	testb  $0x20,(%rdi)
  404bb3:	0f 85 3f fe ff ff    	jne    4049f8 <printf_core+0x2b8>
  404bb9:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404bbd:	89 d6                	mov    %edx,%esi
  404bbf:	85 c0                	test   %eax,%eax
  404bc1:	74 13                	je     404bd6 <printf_core+0x496>
  404bc3:	89 d7                	mov    %edx,%edi
  404bc5:	83 e6 df             	and    $0xffffffdf,%esi
  404bc8:	83 e7 0f             	and    $0xf,%edi
  404bcb:	40 0f be f6          	movsbl %sil,%esi
  404bcf:	40 80 ff 03          	cmp    $0x3,%dil
  404bd3:	0f 44 d6             	cmove  %esi,%edx
  404bd6:	44 89 e6             	mov    %r12d,%esi
  404bd9:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404bdf:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404be6:	44 0f 45 e6          	cmovne %esi,%r12d
  404bea:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404bed:	83 fe 37             	cmp    $0x37,%esi
  404bf0:	0f 87 c2 02 00 00    	ja     404eb8 <printf_core+0x778>
  404bf6:	48 8d 3d ef 35 00 00 	lea    0x35ef(%rip),%rdi        # 4081ec <_fini+0x1088>
  404bfd:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404c01:	48 01 fe             	add    %rdi,%rsi
  404c04:	3e ff e6             	notrack jmp *%rsi
  404c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404c0e:	00 00 
  404c10:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404c14:	0f 84 ab 01 00 00    	je     404dc5 <printf_core+0x685>
  404c1a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404c20:	85 f6                	test   %esi,%esi
  404c22:	0f 85 c5 fd ff ff    	jne    4049ed <printf_core+0x2ad>
  404c28:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404c2c:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c31:	0f 85 ec fc ff ff    	jne    404923 <printf_core+0x1e3>
  404c37:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404c3e:	45 89 d1             	mov    %r10d,%r9d
  404c41:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404c48:	e9 32 fd ff ff       	jmp    40497f <printf_core+0x23f>
  404c4d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404c51:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404c55:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404c5c:	00 00 00 
  404c5f:	89 c8                	mov    %ecx,%eax
  404c61:	e9 1b fc ff ff       	jmp    404881 <printf_core+0x141>
  404c66:	83 ff ff             	cmp    $0xffffffff,%edi
  404c69:	0f 85 7e fd ff ff    	jne    4049ed <printf_core+0x2ad>
  404c6f:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c74:	0f 85 32 ff ff ff    	jne    404bac <printf_core+0x46c>
  404c7a:	e9 af fb ff ff       	jmp    40482e <printf_core+0xee>
  404c7f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404c86:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404c8a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404c8e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404c92:	e9 a9 fc ff ff       	jmp    404940 <printf_core+0x200>
  404c97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404c9e:	00 00 
  404ca0:	0f be d0             	movsbl %al,%edx
  404ca3:	48 83 c3 01          	add    $0x1,%rbx
  404ca7:	83 ea 30             	sub    $0x30,%edx
  404caa:	83 fa 09             	cmp    $0x9,%edx
  404cad:	0f 87 93 0b 00 00    	ja     405846 <printf_core+0x1106>
  404cb3:	44 89 d2             	mov    %r10d,%edx
  404cb6:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404cbc:	0f 8f fe 0c 00 00    	jg     4059c0 <printf_core+0x1280>
  404cc2:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404cc5:	83 e8 30             	sub    $0x30,%eax
  404cc8:	0f be c0             	movsbl %al,%eax
  404ccb:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404cd1:	39 c2                	cmp    %eax,%edx
  404cd3:	0f 8d 87 00 00 00    	jge    404d60 <printf_core+0x620>
  404cd9:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404cdd:	83 e8 30             	sub    $0x30,%eax
  404ce0:	83 f8 09             	cmp    $0x9,%eax
  404ce3:	0f 87 8b 0a 00 00    	ja     405774 <printf_core+0x1034>
  404ce9:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404ced:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404cf1:	83 ea 30             	sub    $0x30,%edx
  404cf4:	83 fa 09             	cmp    $0x9,%edx
  404cf7:	77 20                	ja     404d19 <printf_core+0x5d9>
  404cf9:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404cfd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404d01:	83 ea 30             	sub    $0x30,%edx
  404d04:	83 fa 09             	cmp    $0x9,%edx
  404d07:	77 13                	ja     404d1c <printf_core+0x5dc>
  404d09:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404d0d:	48 83 c0 02          	add    $0x2,%rax
  404d11:	83 ea 30             	sub    $0x30,%edx
  404d14:	83 fa 09             	cmp    $0x9,%edx
  404d17:	76 e0                	jbe    404cf9 <printf_core+0x5b9>
  404d19:	48 89 c3             	mov    %rax,%rbx
  404d1c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d23:	00 00 00 
  404d26:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404d2d:	e9 4d fc ff ff       	jmp    40497f <printf_core+0x23f>
  404d32:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404d39:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404d3d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404d41:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404d45:	e9 93 fd ff ff       	jmp    404add <printf_core+0x39d>
  404d4a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404d51:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404d54:	e9 d5 fa ff ff       	jmp    40482e <printf_core+0xee>
  404d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404d60:	48 83 c3 01          	add    $0x1,%rbx
  404d64:	29 c8                	sub    %ecx,%eax
  404d66:	0f be 0b             	movsbl (%rbx),%ecx
  404d69:	89 c2                	mov    %eax,%edx
  404d6b:	89 c8                	mov    %ecx,%eax
  404d6d:	83 e9 30             	sub    $0x30,%ecx
  404d70:	83 f9 09             	cmp    $0x9,%ecx
  404d73:	0f 86 3d ff ff ff    	jbe    404cb6 <printf_core+0x576>
  404d79:	89 55 80             	mov    %edx,-0x80(%rbp)
  404d7c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d83:	00 00 00 
  404d86:	e9 f4 fb ff ff       	jmp    40497f <printf_core+0x23f>
  404d8b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d90:	0f 84 15 0c 00 00    	je     4059ab <printf_core+0x126b>
  404d96:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404d9d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404da1:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404da7:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404dae:	e8 0d dd ff ff       	call   402ac0 <pop_arg>
  404db3:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404db9:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404dc0:	e9 e7 fd ff ff       	jmp    404bac <printf_core+0x46c>
  404dc5:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404dc9:	48 83 e8 30          	sub    $0x30,%rax
  404dcd:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404dd2:	0f 84 b6 09 00 00    	je     40578e <printf_core+0x104e>
  404dd8:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404ddf:	48 c1 e0 04          	shl    $0x4,%rax
  404de3:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404dea:	00 00 00 
  404ded:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404df1:	e9 57 fb ff ff       	jmp    40494d <printf_core+0x20d>
  404df6:	48 0f be c2          	movsbq %dl,%rax
  404dfa:	48 83 e8 30          	sub    $0x30,%rax
  404dfe:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e03:	0f 84 a9 09 00 00    	je     4057b2 <printf_core+0x1072>
  404e09:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404e10:	48 c1 e0 04          	shl    $0x4,%rax
  404e14:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404e18:	89 45 80             	mov    %eax,-0x80(%rbp)
  404e1b:	f7 d0                	not    %eax
  404e1d:	c1 e8 1f             	shr    $0x1f,%eax
  404e20:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404e26:	48 83 c3 04          	add    $0x4,%rbx
  404e2a:	e9 50 fb ff ff       	jmp    40497f <printf_core+0x23f>
  404e2f:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404e33:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404e3a:	00 00 00 
  404e3d:	e9 ab fc ff ff       	jmp    404aed <printf_core+0x3ad>
  404e42:	48 89 d3             	mov    %rdx,%rbx
  404e45:	45 89 d1             	mov    %r10d,%r9d
  404e48:	45 31 e4             	xor    %r12d,%r12d
  404e4b:	e9 2b fc ff ff       	jmp    404a7b <printf_core+0x33b>
  404e50:	45 89 eb             	mov    %r13d,%r11d
  404e53:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e58:	0f 85 a0 fb ff ff    	jne    4049fe <printf_core+0x2be>
  404e5e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404e65:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404e6b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404e71:	48 83 c7 10          	add    $0x10,%rdi
  404e75:	85 c9                	test   %ecx,%ecx
  404e77:	0f 84 2e 0b 00 00    	je     4059ab <printf_core+0x126b>
  404e7d:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404e84:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404e8b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404e8f:	85 f6                	test   %esi,%esi
  404e91:	0f 84 90 0a 00 00    	je     405927 <printf_core+0x11e7>
  404e97:	e8 24 dc ff ff       	call   402ac0 <pop_arg>
  404e9c:	49 83 c0 01          	add    $0x1,%r8
  404ea0:	48 83 c7 10          	add    $0x10,%rdi
  404ea4:	49 83 f8 0a          	cmp    $0xa,%r8
  404ea8:	75 e1                	jne    404e8b <printf_core+0x74b>
  404eaa:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404eb0:	e9 49 fb ff ff       	jmp    4049fe <printf_core+0x2be>
  404eb5:	0f 1f 00             	nopl   (%rax)
  404eb8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404ebc:	4c 29 f0             	sub    %r14,%rax
  404ebf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404ec6:	48 89 c7             	mov    %rax,%rdi
  404ec9:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404ecd:	48 39 c7             	cmp    %rax,%rdi
  404ed0:	0f 8e da 07 00 00    	jle    4056b0 <printf_core+0xf70>
  404ed6:	48 89 f8             	mov    %rdi,%rax
  404ed9:	48 8d 3d b3 32 00 00 	lea    0x32b3(%rip),%rdi        # 408193 <_fini+0x102f>
  404ee0:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ee3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404eea:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404ef0:	44 89 d0             	mov    %r10d,%eax
  404ef3:	66 90                	xchg   %ax,%ax
  404ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404efc:	00 00 00 00 
  404f00:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f06:	41 39 c9             	cmp    %ecx,%r9d
  404f09:	41 89 c8             	mov    %ecx,%r8d
  404f0c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404f10:	45 39 c3             	cmp    %r8d,%r11d
  404f13:	0f 8c 07 fc ff ff    	jl     404b20 <printf_core+0x3e0>
  404f19:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404f20:	0f 85 e2 06 00 00    	jne    405608 <printf_core+0xec8>
  404f26:	41 39 c9             	cmp    %ecx,%r9d
  404f29:	0f 8e 40 07 00 00    	jle    40566f <printf_core+0xf2f>
  404f2f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f33:	44 89 c2             	mov    %r8d,%edx
  404f36:	be 20 00 00 00       	mov    $0x20,%esi
  404f3b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404f41:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404f48:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404f4f:	e8 6c dd ff ff       	call   402cc0 <pad.part.0>
  404f54:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404f58:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404f5f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404f66:	f6 00 20             	testb  $0x20,(%rax)
  404f69:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404f6f:	0f 84 07 07 00 00    	je     40567c <printf_core+0xf3c>
  404f75:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404f7c:	89 c1                	mov    %eax,%ecx
  404f7e:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404f81:	0f 8d a7 f8 ff ff    	jge    40482e <printf_core+0xee>
  404f87:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404f8e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404f95:	8b 55 80             	mov    -0x80(%rbp),%edx
  404f98:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f9c:	be 30 00 00 00       	mov    $0x30,%esi
  404fa1:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404fa8:	e8 13 dd ff ff       	call   402cc0 <pad.part.0>
  404fad:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404fb4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404fb8:	f6 00 20             	testb  $0x20,(%rax)
  404fbb:	75 1b                	jne    404fd8 <printf_core+0x898>
  404fbd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404fc1:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404fc8:	4c 89 f7             	mov    %r14,%rdi
  404fcb:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404fcf:	e8 7c 16 00 00       	call   406650 <__fwritex>
  404fd4:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404fd8:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404fdf:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404fe6:	0f 85 42 f8 ff ff    	jne    40482e <printf_core+0xee>
  404fec:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404ff3:	0f 85 35 f8 ff ff    	jne    40482e <printf_core+0xee>
  404ff9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404ffd:	44 89 c2             	mov    %r8d,%edx
  405000:	be 20 00 00 00       	mov    $0x20,%esi
  405005:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  405009:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40500f:	e8 ac dc ff ff       	call   402cc0 <pad.part.0>
  405014:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  405018:	e9 11 f8 ff ff       	jmp    40482e <printf_core+0xee>
  40501d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  405021:	45 85 c0             	test   %r8d,%r8d
  405024:	79 0d                	jns    405033 <printf_core+0x8f3>
  405026:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  40502d:	0f 85 ed fa ff ff    	jne    404b20 <printf_core+0x3e0>
  405033:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  40503a:	41 89 d0             	mov    %edx,%r8d
  40503d:	44 89 ce             	mov    %r9d,%esi
  405040:	44 89 e1             	mov    %r12d,%ecx
  405043:	ff 75 98             	push   -0x68(%rbp)
  405046:	ff 75 90             	push   -0x70(%rbp)
  405049:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40504d:	8b 55 80             	mov    -0x80(%rbp),%edx
  405050:	e8 6b dd ff ff       	call   402dc0 <fmt_fp>
  405055:	5e                   	pop    %rsi
  405056:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40505d:	83 f8 ff             	cmp    $0xffffffff,%eax
  405060:	41 89 c0             	mov    %eax,%r8d
  405063:	5f                   	pop    %rdi
  405064:	0f 85 bb f7 ff ff    	jne    404825 <printf_core+0xe5>
  40506a:	e9 b1 fa ff ff       	jmp    404b20 <printf_core+0x3e0>
  40506f:	90                   	nop
  405070:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405074:	48 85 f6             	test   %rsi,%rsi
  405077:	0f 88 4f 08 00 00    	js     4058cc <printf_core+0x118c>
  40507d:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  405084:	0f 85 61 08 00 00    	jne    4058eb <printf_core+0x11ab>
  40508a:	41 f6 c4 01          	test   $0x1,%r12b
  40508e:	0f 85 7b 08 00 00    	jne    40590f <printf_core+0x11cf>
  405094:	48 8d 3d f8 30 00 00 	lea    0x30f8(%rip),%rdi        # 408193 <_fini+0x102f>
  40509b:	44 89 d0             	mov    %r10d,%eax
  40509e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4050a5:	48 85 f6             	test   %rsi,%rsi
  4050a8:	0f 84 55 08 00 00    	je     405903 <printf_core+0x11c3>
  4050ae:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  4050b5:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4050b9:	89 c7                	mov    %eax,%edi
  4050bb:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  4050c2:	cc cc cc 
  4050c5:	4d 89 c6             	mov    %r8,%r14
  4050c8:	90                   	nop
  4050c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050d0:	00 00 00 00 
  4050d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050db:	00 00 00 00 
  4050df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050e6:	00 00 00 00 
  4050ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050f1:	00 00 00 00 
  4050f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050fc:	00 00 00 00 
  405100:	48 89 f0             	mov    %rsi,%rax
  405103:	49 83 ee 01          	sub    $0x1,%r14
  405107:	48 f7 e1             	mul    %rcx
  40510a:	48 89 f0             	mov    %rsi,%rax
  40510d:	48 c1 ea 03          	shr    $0x3,%rdx
  405111:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  405115:	4d 01 d2             	add    %r10,%r10
  405118:	4c 29 d0             	sub    %r10,%rax
  40511b:	83 c0 30             	add    $0x30,%eax
  40511e:	48 83 fe 09          	cmp    $0x9,%rsi
  405122:	48 89 d6             	mov    %rdx,%rsi
  405125:	41 88 06             	mov    %al,(%r14)
  405128:	77 d6                	ja     405100 <printf_core+0x9c0>
  40512a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405131:	89 f8                	mov    %edi,%eax
  405133:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405136:	85 ff                	test   %edi,%edi
  405138:	79 0d                	jns    405147 <printf_core+0xa07>
  40513a:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  405141:	0f 85 d9 f9 ff ff    	jne    404b20 <printf_core+0x3e0>
  405147:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40514d:	44 89 e2             	mov    %r12d,%edx
  405150:	8b 75 80             	mov    -0x80(%rbp),%esi
  405153:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  405159:	85 c9                	test   %ecx,%ecx
  40515b:	44 0f 45 e2          	cmovne %edx,%r12d
  40515f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  405164:	0f 94 c2             	sete   %dl
  405167:	85 f6                	test   %esi,%esi
  405169:	75 08                	jne    405173 <printf_core+0xa33>
  40516b:	84 d2                	test   %dl,%dl
  40516d:	0f 85 e4 05 00 00    	jne    405757 <printf_core+0x1017>
  405173:	4c 89 c7             	mov    %r8,%rdi
  405176:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  40517a:	0f b6 d2             	movzbl %dl,%edx
  40517d:	4c 29 f7             	sub    %r14,%rdi
  405180:	48 01 fa             	add    %rdi,%rdx
  405183:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  40518a:	48 39 ca             	cmp    %rcx,%rdx
  40518d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  405191:	48 63 ca             	movslq %edx,%rcx
  405194:	48 39 cf             	cmp    %rcx,%rdi
  405197:	0f 4e fa             	cmovle %edx,%edi
  40519a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  40519f:	29 c2                	sub    %eax,%edx
  4051a1:	89 7d 80             	mov    %edi,-0x80(%rbp)
  4051a4:	39 fa                	cmp    %edi,%edx
  4051a6:	0f 8c 74 f9 ff ff    	jl     404b20 <printf_core+0x3e0>
  4051ac:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4051af:	01 c7                	add    %eax,%edi
  4051b1:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  4051b7:	e9 44 fd ff ff       	jmp    404f00 <printf_core+0x7c0>
  4051bc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4051c0:	48 85 c0             	test   %rax,%rax
  4051c3:	0f 84 9a 02 00 00    	je     405463 <printf_core+0xd23>
  4051c9:	44 89 e7             	mov    %r12d,%edi
  4051cc:	83 e7 08             	and    $0x8,%edi
  4051cf:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  4051d5:	89 d7                	mov    %edx,%edi
  4051d7:	83 e7 20             	and    $0x20,%edi
  4051da:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  4051e0:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4051e4:	48 8d 35 05 31 00 00 	lea    0x3105(%rip),%rsi        # 4082f0 <xdigits>
  4051eb:	4d 89 c6             	mov    %r8,%r14
  4051ee:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4051f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4051fc:	00 00 00 00 
  405200:	48 89 c1             	mov    %rax,%rcx
  405203:	49 83 ee 01          	sub    $0x1,%r14
  405207:	83 e1 0f             	and    $0xf,%ecx
  40520a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  40520e:	09 fa                	or     %edi,%edx
  405210:	48 c1 e8 04          	shr    $0x4,%rax
  405214:	41 88 16             	mov    %dl,(%r14)
  405217:	75 e7                	jne    405200 <printf_core+0xac0>
  405219:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40521f:	85 c0                	test   %eax,%eax
  405221:	0f 85 f9 05 00 00    	jne    405820 <printf_core+0x10e0>
  405227:	48 8d 3d 65 2f 00 00 	lea    0x2f65(%rip),%rdi        # 408193 <_fini+0x102f>
  40522e:	44 89 d0             	mov    %r10d,%eax
  405231:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405238:	e9 f6 fe ff ff       	jmp    405133 <printf_core+0x9f3>
  40523d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405241:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405245:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40524c:	48 85 d2             	test   %rdx,%rdx
  40524f:	0f 84 06 07 00 00    	je     40595b <printf_core+0x121b>
  405255:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40525c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  405260:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  405267:	31 db                	xor    %ebx,%ebx
  405269:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  405270:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  405274:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40527b:	49 89 ce             	mov    %rcx,%r14
  40527e:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405282:	49 89 d5             	mov    %rdx,%r13
  405285:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40528c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405293:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40529a:	eb 34                	jmp    4052d0 <printf_core+0xb90>
  40529c:	0f 1f 40 00          	nopl   0x0(%rax)
  4052a0:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  4052a7:	e8 24 10 00 00       	call   4062d0 <wctomb>
  4052ac:	85 c0                	test   %eax,%eax
  4052ae:	0f 88 44 f7 ff ff    	js     4049f8 <printf_core+0x2b8>
  4052b4:	4c 89 ea             	mov    %r13,%rdx
  4052b7:	48 98                	cltq
  4052b9:	48 29 da             	sub    %rbx,%rdx
  4052bc:	48 39 c2             	cmp    %rax,%rdx
  4052bf:	72 16                	jb     4052d7 <printf_core+0xb97>
  4052c1:	48 01 c3             	add    %rax,%rbx
  4052c4:	4d 63 ec             	movslq %r12d,%r13
  4052c7:	49 83 c6 04          	add    $0x4,%r14
  4052cb:	4c 39 eb             	cmp    %r13,%rbx
  4052ce:	73 07                	jae    4052d7 <printf_core+0xb97>
  4052d0:	41 8b 36             	mov    (%r14),%esi
  4052d3:	85 f6                	test   %esi,%esi
  4052d5:	75 c9                	jne    4052a0 <printf_core+0xb60>
  4052d7:	49 89 de             	mov    %rbx,%r14
  4052da:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4052e1:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  4052e8:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  4052ef:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  4052f6:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  4052fd:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405301:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405308:	0f 87 12 f8 ff ff    	ja     404b20 <printf_core+0x3e0>
  40530e:	45 39 f1             	cmp    %r14d,%r9d
  405311:	44 89 f0             	mov    %r14d,%eax
  405314:	0f 9e c2             	setle  %dl
  405317:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40531e:	0f 95 c1             	setne  %cl
  405321:	08 d1                	or     %dl,%cl
  405323:	0f 84 5c 05 00 00    	je     405885 <printf_core+0x1145>
  405329:	4d 85 f6             	test   %r14,%r14
  40532c:	0f 84 96 06 00 00    	je     4059c8 <printf_core+0x1288>
  405332:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  405336:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  40533d:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405344:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40534b:	45 31 e4             	xor    %r12d,%r12d
  40534e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405355:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405359:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40535d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  405364:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  40536b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405371:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  405377:	eb 10                	jmp    405389 <printf_core+0xc49>
  405379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405380:	4d 39 f4             	cmp    %r14,%r12
  405383:	0f 83 46 03 00 00    	jae    4056cf <printf_core+0xf8f>
  405389:	8b 33                	mov    (%rbx),%esi
  40538b:	85 f6                	test   %esi,%esi
  40538d:	0f 84 3c 03 00 00    	je     4056cf <printf_core+0xf8f>
  405393:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405397:	e8 34 0f 00 00       	call   4062d0 <wctomb>
  40539c:	48 63 f0             	movslq %eax,%rsi
  40539f:	49 01 f4             	add    %rsi,%r12
  4053a2:	4d 39 e6             	cmp    %r12,%r14
  4053a5:	0f 82 24 03 00 00    	jb     4056cf <printf_core+0xf8f>
  4053ab:	48 83 c3 04          	add    $0x4,%rbx
  4053af:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4053b4:	75 ca                	jne    405380 <printf_core+0xc40>
  4053b6:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4053ba:	4c 89 ea             	mov    %r13,%rdx
  4053bd:	e8 8e 12 00 00       	call   406650 <__fwritex>
  4053c2:	eb bc                	jmp    405380 <printf_core+0xc40>
  4053c4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053c8:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4053cc:	4d 89 c6             	mov    %r8,%r14
  4053cf:	48 85 c0             	test   %rax,%rax
  4053d2:	74 21                	je     4053f5 <printf_core+0xcb5>
  4053d4:	90                   	nop
  4053d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4053dc:	00 00 00 00 
  4053e0:	89 c2                	mov    %eax,%edx
  4053e2:	49 83 ee 01          	sub    $0x1,%r14
  4053e6:	83 e2 07             	and    $0x7,%edx
  4053e9:	83 c2 30             	add    $0x30,%edx
  4053ec:	48 c1 e8 03          	shr    $0x3,%rax
  4053f0:	41 88 16             	mov    %dl,(%r14)
  4053f3:	75 eb                	jne    4053e0 <printf_core+0xca0>
  4053f5:	41 f6 c4 08          	test   $0x8,%r12b
  4053f9:	0f 84 28 fe ff ff    	je     405227 <printf_core+0xae7>
  4053ff:	4c 89 c0             	mov    %r8,%rax
  405402:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405406:	4c 29 f0             	sub    %r14,%rax
  405409:	48 39 d0             	cmp    %rdx,%rax
  40540c:	0f 8c 15 fe ff ff    	jl     405227 <printf_core+0xae7>
  405412:	83 c0 01             	add    $0x1,%eax
  405415:	48 8d 3d 77 2d 00 00 	lea    0x2d77(%rip),%rdi        # 408193 <_fini+0x102f>
  40541c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40541f:	44 89 d0             	mov    %r10d,%eax
  405422:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405429:	e9 05 fd ff ff       	jmp    405133 <printf_core+0x9f3>
  40542e:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405431:	b8 10 00 00 00       	mov    $0x10,%eax
  405436:	ba 78 00 00 00       	mov    $0x78,%edx
  40543b:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405442:	00 00 00 
  405445:	39 c7                	cmp    %eax,%edi
  405447:	0f 43 c7             	cmovae %edi,%eax
  40544a:	41 83 cc 08          	or     $0x8,%r12d
  40544e:	bf 20 00 00 00       	mov    $0x20,%edi
  405453:	89 45 80             	mov    %eax,-0x80(%rbp)
  405456:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40545a:	48 85 c0             	test   %rax,%rax
  40545d:	0f 85 77 fd ff ff    	jne    4051da <printf_core+0xa9a>
  405463:	48 8d 3d 29 2d 00 00 	lea    0x2d29(%rip),%rdi        # 408193 <_fini+0x102f>
  40546a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40546e:	44 89 d0             	mov    %r10d,%eax
  405471:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405478:	4d 89 c6             	mov    %r8,%r14
  40547b:	e9 b3 fc ff ff       	jmp    405133 <printf_core+0x9f3>
  405480:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405484:	48 8d 05 12 2d 00 00 	lea    0x2d12(%rip),%rax        # 40819d <_fini+0x1039>
  40548b:	4d 85 f6             	test   %r14,%r14
  40548e:	4c 0f 44 f0          	cmove  %rax,%r14
  405492:	8b 45 80             	mov    -0x80(%rbp),%eax
  405495:	85 c0                	test   %eax,%eax
  405497:	0f 88 36 03 00 00    	js     4057d3 <printf_core+0x1093>
  40549d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  4054a1:	4c 89 f7             	mov    %r14,%rdi
  4054a4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4054ab:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4054b2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4054b9:	e8 82 07 00 00       	call   405c40 <strnlen>
  4054be:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  4054c5:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4054cc:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4054d3:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  4054d7:	4c 29 f2             	sub    %r14,%rdx
  4054da:	89 45 80             	mov    %eax,-0x80(%rbp)
  4054dd:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4054e4:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  4054eb:	48 89 d7             	mov    %rdx,%rdi
  4054ee:	48 63 d0             	movslq %eax,%rdx
  4054f1:	48 39 d7             	cmp    %rdx,%rdi
  4054f4:	0f 8e b9 01 00 00    	jle    4056b3 <printf_core+0xf73>
  4054fa:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405501:	e9 d3 f9 ff ff       	jmp    404ed9 <printf_core+0x799>
  405506:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40550a:	48 85 f6             	test   %rsi,%rsi
  40550d:	0f 85 46 03 00 00    	jne    405859 <printf_core+0x1119>
  405513:	48 8d 3d 79 2c 00 00 	lea    0x2c79(%rip),%rdi        # 408193 <_fini+0x102f>
  40551a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40551e:	44 89 d0             	mov    %r10d,%eax
  405521:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405528:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40552f:	00 00 00 
  405532:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  405536:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40553d:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405544:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40554b:	01 00 00 00 
  40554f:	e9 ac f9 ff ff       	jmp    404f00 <printf_core+0x7c0>
  405554:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40555b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405562:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405569:	e8 62 0b 00 00       	call   4060d0 <__errno_location>
  40556e:	8b 38                	mov    (%rax),%edi
  405570:	e8 ab 0b 00 00       	call   406120 <strerror>
  405575:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  40557c:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405583:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40558a:	49 89 c6             	mov    %rax,%r14
  40558d:	e9 00 ff ff ff       	jmp    405492 <printf_core+0xd52>
  405592:	83 f8 07             	cmp    $0x7,%eax
  405595:	0f 87 93 f2 ff ff    	ja     40482e <printf_core+0xee>
  40559b:	48 8d 15 2a 2d 00 00 	lea    0x2d2a(%rip),%rdx        # 4082cc <_fini+0x1168>
  4055a2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4055a6:	48 01 d0             	add    %rdx,%rax
  4055a9:	3e ff e0             	notrack jmp *%rax
  4055ac:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4055b0:	49 63 c5             	movslq %r13d,%rax
  4055b3:	48 89 02             	mov    %rax,(%rdx)
  4055b6:	e9 73 f2 ff ff       	jmp    40482e <printf_core+0xee>
  4055bb:	48 8d 3d d1 2b 00 00 	lea    0x2bd1(%rip),%rdi        # 408193 <_fini+0x102f>
  4055c2:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4055c6:	44 89 d0             	mov    %r10d,%eax
  4055c9:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4055d0:	e9 d0 fa ff ff       	jmp    4050a5 <printf_core+0x965>
  4055d5:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4055d9:	e9 35 ff ff ff       	jmp    405513 <printf_core+0xdd3>
  4055de:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4055e2:	44 89 28             	mov    %r13d,(%rax)
  4055e5:	e9 44 f2 ff ff       	jmp    40482e <printf_core+0xee>
  4055ea:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4055ee:	66 44 89 28          	mov    %r13w,(%rax)
  4055f2:	e9 37 f2 ff ff       	jmp    40482e <printf_core+0xee>
  4055f7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4055fb:	44 88 28             	mov    %r13b,(%rax)
  4055fe:	e9 2b f2 ff ff       	jmp    40482e <printf_core+0xee>
  405603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405608:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40560c:	f6 07 20             	testb  $0x20,(%rdi)
  40560f:	74 6b                	je     40567c <printf_core+0xf3c>
  405611:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405617:	44 89 e0             	mov    %r12d,%eax
  40561a:	41 39 c9             	cmp    %ecx,%r9d
  40561d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405624:	35 00 00 01 00       	xor    $0x10000,%eax
  405629:	a9 00 20 01 00       	test   $0x12000,%eax
  40562e:	75 28                	jne    405658 <printf_core+0xf18>
  405630:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405637:	75 1f                	jne    405658 <printf_core+0xf18>
  405639:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40563d:	44 89 c2             	mov    %r8d,%edx
  405640:	be 30 00 00 00       	mov    $0x30,%esi
  405645:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40564c:	e8 6f d6 ff ff       	call   402cc0 <pad.part.0>
  405651:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405658:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40565f:	89 c1                	mov    %eax,%ecx
  405661:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405664:	0f 8d 4a f9 ff ff    	jge    404fb4 <printf_core+0x874>
  40566a:	e9 26 f9 ff ff       	jmp    404f95 <printf_core+0x855>
  40566f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405673:	f6 07 20             	testb  $0x20,(%rdi)
  405676:	0f 85 f9 f8 ff ff    	jne    404f75 <printf_core+0x835>
  40567c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405680:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405687:	48 63 f0             	movslq %eax,%rsi
  40568a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405691:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405698:	e8 b3 0f 00 00       	call   406650 <__fwritex>
  40569d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4056a4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4056ab:	e9 61 ff ff ff       	jmp    405611 <printf_core+0xed1>
  4056b0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4056b3:	48 8d 3d d9 2a 00 00 	lea    0x2ad9(%rip),%rdi        # 408193 <_fini+0x102f>
  4056ba:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4056c0:	44 89 d0             	mov    %r10d,%eax
  4056c3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4056ca:	e9 31 f8 ff ff       	jmp    404f00 <printf_core+0x7c0>
  4056cf:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4056d6:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  4056dd:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  4056e4:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  4056eb:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  4056f1:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  4056f8:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  4056ff:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405706:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40570d:	75 39                	jne    405748 <printf_core+0x1008>
  40570f:	84 d2                	test   %dl,%dl
  405711:	75 35                	jne    405748 <printf_core+0x1008>
  405713:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405717:	89 c1                	mov    %eax,%ecx
  405719:	44 89 ca             	mov    %r9d,%edx
  40571c:	be 20 00 00 00       	mov    $0x20,%esi
  405721:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405728:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40572e:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405732:	e8 89 d5 ff ff       	call   402cc0 <pad.part.0>
  405737:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40573e:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405744:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405748:	41 39 c1             	cmp    %eax,%r9d
  40574b:	41 0f 4d c1          	cmovge %r9d,%eax
  40574f:	41 89 c0             	mov    %eax,%r8d
  405752:	e9 ce f0 ff ff       	jmp    404825 <printf_core+0xe5>
  405757:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40575d:	4d 89 c6             	mov    %r8,%r14
  405760:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  405764:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  40576b:	00 00 00 00 
  40576f:	e9 8c f7 ff ff       	jmp    404f00 <printf_core+0x7c0>
  405774:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40577b:	00 00 00 
  40577e:	48 83 c3 01          	add    $0x1,%rbx
  405782:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405789:	e9 f1 f1 ff ff       	jmp    40497f <printf_core+0x23f>
  40578e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405795:	45 89 d1             	mov    %r10d,%r9d
  405798:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40579f:	00 00 00 
  4057a2:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4057a9:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  4057ad:	e9 c9 f2 ff ff       	jmp    404a7b <printf_core+0x33b>
  4057b2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4057b9:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4057bd:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4057c4:	00 00 00 
  4057c7:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4057ce:	e9 53 f6 ff ff       	jmp    404e26 <printf_core+0x6e6>
  4057d3:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  4057d8:	4c 89 f7             	mov    %r14,%rdi
  4057db:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  4057df:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  4057e6:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4057ed:	e8 4e 04 00 00       	call   405c40 <strnlen>
  4057f2:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4057f6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4057fd:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405801:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405808:	80 3a 00             	cmpb   $0x0,(%rdx)
  40580b:	0f 84 c6 fc ff ff    	je     4054d7 <printf_core+0xd97>
  405811:	e9 0a f3 ff ff       	jmp    404b20 <printf_core+0x3e0>
  405816:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40581d:	00 00 00 
  405820:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  405826:	48 8d 15 66 29 00 00 	lea    0x2966(%rip),%rdx        # 408193 <_fini+0x102f>
  40582d:	c1 f8 04             	sar    $0x4,%eax
  405830:	48 98                	cltq
  405832:	48 01 d0             	add    %rdx,%rax
  405835:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40583c:	b8 02 00 00 00       	mov    $0x2,%eax
  405841:	e9 ed f8 ff ff       	jmp    405133 <printf_core+0x9f3>
  405846:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40584a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405851:	00 00 00 
  405854:	e9 26 f1 ff ff       	jmp    40497f <printf_core+0x23f>
  405859:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40585d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  405860:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  405867:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  40586e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  405872:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  405879:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405880:	e9 d0 f9 ff ff       	jmp    405255 <printf_core+0xb15>
  405885:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405889:	44 89 ca             	mov    %r9d,%edx
  40588c:	44 89 f1             	mov    %r14d,%ecx
  40588f:	be 20 00 00 00       	mov    $0x20,%esi
  405894:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40589b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40589f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  4058a6:	e8 15 d4 ff ff       	call   402cc0 <pad.part.0>
  4058ab:	4d 85 f6             	test   %r14,%r14
  4058ae:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4058b2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4058b8:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  4058bf:	0f 84 83 fe ff ff    	je     405748 <printf_core+0x1008>
  4058c5:	31 d2                	xor    %edx,%edx
  4058c7:	e9 66 fa ff ff       	jmp    405332 <printf_core+0xbf2>
  4058cc:	48 f7 de             	neg    %rsi
  4058cf:	48 8d 3d bd 28 00 00 	lea    0x28bd(%rip),%rdi        # 408193 <_fini+0x102f>
  4058d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4058db:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  4058df:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4058e6:	e9 c3 f7 ff ff       	jmp    4050ae <printf_core+0x96e>
  4058eb:	48 8d 3d a2 28 00 00 	lea    0x28a2(%rip),%rdi        # 408194 <_fini+0x1030>
  4058f2:	b8 01 00 00 00       	mov    $0x1,%eax
  4058f7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4058fe:	e9 a2 f7 ff ff       	jmp    4050a5 <printf_core+0x965>
  405903:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405907:	4d 89 c6             	mov    %r8,%r14
  40590a:	e9 24 f8 ff ff       	jmp    405133 <printf_core+0x9f3>
  40590f:	48 8d 3d 7f 28 00 00 	lea    0x287f(%rip),%rdi        # 408195 <_fini+0x1031>
  405916:	b8 01 00 00 00       	mov    $0x1,%eax
  40591b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405922:	e9 7e f7 ff ff       	jmp    4050a5 <printf_core+0x965>
  405927:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40592e:	eb 1e                	jmp    40594e <printf_core+0x120e>
  405930:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40593c:	00 00 00 00 
  405940:	49 83 c0 01          	add    $0x1,%r8
  405944:	49 83 f8 0a          	cmp    $0xa,%r8
  405948:	0f 84 5c f5 ff ff    	je     404eaa <printf_core+0x76a>
  40594e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405952:	85 d2                	test   %edx,%edx
  405954:	74 ea                	je     405940 <printf_core+0x1200>
  405956:	e9 92 f0 ff ff       	jmp    4049ed <printf_core+0x2ad>
  40595b:	45 85 c9             	test   %r9d,%r9d
  40595e:	0f 94 c0             	sete   %al
  405961:	89 c2                	mov    %eax,%edx
  405963:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40596a:	75 5c                	jne    4059c8 <printf_core+0x1288>
  40596c:	84 c0                	test   %al,%al
  40596e:	75 58                	jne    4059c8 <printf_core+0x1288>
  405970:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405974:	44 89 ca             	mov    %r9d,%edx
  405977:	31 c9                	xor    %ecx,%ecx
  405979:	be 20 00 00 00       	mov    $0x20,%esi
  40597e:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405985:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405989:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405990:	e8 2b d3 ff ff       	call   402cc0 <pad.part.0>
  405995:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40599b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  40599f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4059a6:	e9 9d fd ff ff       	jmp    405748 <printf_core+0x1008>
  4059ab:	45 31 db             	xor    %r11d,%r11d
  4059ae:	e9 4b f0 ff ff       	jmp    4049fe <printf_core+0x2be>
  4059b3:	e8 48 ce ff ff       	call   402800 <__stack_chk_fail>
  4059b8:	48 89 da             	mov    %rbx,%rdx
  4059bb:	e9 7b f0 ff ff       	jmp    404a3b <printf_core+0x2fb>
  4059c0:	48 89 d8             	mov    %rbx,%rax
  4059c3:	e9 31 f3 ff ff       	jmp    404cf9 <printf_core+0x5b9>
  4059c8:	44 89 d0             	mov    %r10d,%eax
  4059cb:	e9 2f fd ff ff       	jmp    4056ff <printf_core+0xfbf>

00000000004059d0 <vfprintf>:
  4059d0:	f3 0f 1e fa          	endbr64
  4059d4:	55                   	push   %rbp
  4059d5:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4059d9:	48 89 e5             	mov    %rsp,%rbp
  4059dc:	41 57                	push   %r15
  4059de:	41 56                	push   %r14
  4059e0:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  4059e7:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4059ee:	41 55                	push   %r13
  4059f0:	4c 89 f1             	mov    %r14,%rcx
  4059f3:	49 89 fd             	mov    %rdi,%r13
  4059f6:	31 ff                	xor    %edi,%edi
  4059f8:	41 54                	push   %r12
  4059fa:	53                   	push   %rbx
  4059fb:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405a02:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405a09:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405a10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405a17:	00 00 
  405a19:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  405a1d:	31 c0                	xor    %eax,%eax
  405a1f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405a26:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  405a2d:	00 00 00 00 
  405a31:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405a38:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  405a3f:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405a43:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  405a4a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  405a4e:	48 89 da             	mov    %rbx,%rdx
  405a51:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405a58:	e8 e3 ec ff ff       	call   404740 <printf_core>
  405a5d:	85 c0                	test   %eax,%eax
  405a5f:	0f 88 68 01 00 00    	js     405bcd <vfprintf+0x1fd>
  405a65:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  405a6c:	31 db                	xor    %ebx,%ebx
  405a6e:	85 c0                	test   %eax,%eax
  405a70:	78 0a                	js     405a7c <vfprintf+0xac>
  405a72:	4c 89 ef             	mov    %r13,%rdi
  405a75:	e8 86 08 00 00       	call   406300 <__lockfile>
  405a7a:	89 c3                	mov    %eax,%ebx
  405a7c:	41 8b 45 00          	mov    0x0(%r13),%eax
  405a80:	89 c1                	mov    %eax,%ecx
  405a82:	83 e0 df             	and    $0xffffffdf,%eax
  405a85:	83 e1 20             	and    $0x20,%ecx
  405a88:	41 89 45 00          	mov    %eax,0x0(%r13)
  405a8c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405a92:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405a97:	74 77                	je     405b10 <vfprintf+0x140>
  405a99:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  405a9e:	0f 84 39 01 00 00    	je     405bdd <vfprintf+0x20d>
  405aa4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405aab:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405ab2:	4c 89 f1             	mov    %r14,%rcx
  405ab5:	4c 89 ef             	mov    %r13,%rdi
  405ab8:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405abf:	e8 7c ec ff ff       	call   404740 <printf_core>
  405ac4:	41 89 c4             	mov    %eax,%r12d
  405ac7:	41 8b 45 00          	mov    0x0(%r13),%eax
  405acb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405ad0:	a8 20                	test   $0x20,%al
  405ad2:	44 0f 45 e2          	cmovne %edx,%r12d
  405ad6:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  405adc:	41 89 45 00          	mov    %eax,0x0(%r13)
  405ae0:	85 db                	test   %ebx,%ebx
  405ae2:	0f 85 d8 00 00 00    	jne    405bc0 <vfprintf+0x1f0>
  405ae8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405aec:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405af3:	00 00 
  405af5:	0f 85 dd 00 00 00    	jne    405bd8 <vfprintf+0x208>
  405afb:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405b02:	44 89 e0             	mov    %r12d,%eax
  405b05:	5b                   	pop    %rbx
  405b06:	41 5c                	pop    %r12
  405b08:	41 5d                	pop    %r13
  405b0a:	41 5e                	pop    %r14
  405b0c:	41 5f                	pop    %r15
  405b0e:	5d                   	pop    %rbp
  405b0f:	c3                   	ret
  405b10:	49 8b 45 58          	mov    0x58(%r13),%rax
  405b14:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405b1b:	00 
  405b1c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405b20:	4c 89 ef             	mov    %r13,%rdi
  405b23:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405b2a:	00 
  405b2b:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b31:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405b38:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405b3f:	49 89 45 58          	mov    %rax,0x58(%r13)
  405b43:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405b48:	e8 43 0a 00 00       	call   406590 <__towrite>
  405b4d:	85 c0                	test   %eax,%eax
  405b4f:	75 23                	jne    405b74 <vfprintf+0x1a4>
  405b51:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405b58:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405b5f:	4c 89 f1             	mov    %r14,%rcx
  405b62:	4c 89 ef             	mov    %r13,%rdi
  405b65:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405b6c:	e8 cf eb ff ff       	call   404740 <printf_core>
  405b71:	41 89 c4             	mov    %eax,%r12d
  405b74:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405b7b:	4d 85 f6             	test   %r14,%r14
  405b7e:	0f 84 43 ff ff ff    	je     405ac7 <vfprintf+0xf7>
  405b84:	31 d2                	xor    %edx,%edx
  405b86:	31 f6                	xor    %esi,%esi
  405b88:	4c 89 ef             	mov    %r13,%rdi
  405b8b:	41 ff 55 48          	call   *0x48(%r13)
  405b8f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405b94:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405b98:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405b9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405ba1:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405ba8:	00 
  405ba9:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405bb0:	00 
  405bb1:	44 0f 44 e0          	cmove  %eax,%r12d
  405bb5:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405bba:	e9 08 ff ff ff       	jmp    405ac7 <vfprintf+0xf7>
  405bbf:	90                   	nop
  405bc0:	4c 89 ef             	mov    %r13,%rdi
  405bc3:	e8 f8 07 00 00       	call   4063c0 <__unlockfile>
  405bc8:	e9 1b ff ff ff       	jmp    405ae8 <vfprintf+0x118>
  405bcd:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405bd3:	e9 10 ff ff ff       	jmp    405ae8 <vfprintf+0x118>
  405bd8:	e8 23 cc ff ff       	call   402800 <__stack_chk_fail>
  405bdd:	4c 89 ef             	mov    %r13,%rdi
  405be0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405be6:	e8 a5 09 00 00       	call   406590 <__towrite>
  405beb:	85 c0                	test   %eax,%eax
  405bed:	0f 85 d4 fe ff ff    	jne    405ac7 <vfprintf+0xf7>
  405bf3:	e9 ac fe ff ff       	jmp    405aa4 <vfprintf+0xd4>
  405bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405bff:	00 

0000000000405c00 <vsprintf>:
  405c00:	f3 0f 1e fa          	endbr64
  405c04:	48 89 d1             	mov    %rdx,%rcx
  405c07:	48 89 f2             	mov    %rsi,%rdx
  405c0a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405c0f:	e9 ac 0c 00 00       	jmp    4068c0 <vsnprintf>
  405c14:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405c1b:	00 00 00 
  405c1e:	66 90                	xchg   %ax,%ax

0000000000405c20 <strcpy>:
  405c20:	f3 0f 1e fa          	endbr64
  405c24:	55                   	push   %rbp
  405c25:	48 89 e5             	mov    %rsp,%rbp
  405c28:	53                   	push   %rbx
  405c29:	48 89 fb             	mov    %rdi,%rbx
  405c2c:	48 83 ec 08          	sub    $0x8,%rsp
  405c30:	e8 8b 0e 00 00       	call   406ac0 <__stpcpy>
  405c35:	48 89 d8             	mov    %rbx,%rax
  405c38:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405c3c:	c9                   	leave
  405c3d:	c3                   	ret
  405c3e:	66 90                	xchg   %ax,%ax

0000000000405c40 <strnlen>:
  405c40:	f3 0f 1e fa          	endbr64
  405c44:	55                   	push   %rbp
  405c45:	48 89 f2             	mov    %rsi,%rdx
  405c48:	48 89 e5             	mov    %rsp,%rbp
  405c4b:	41 54                	push   %r12
  405c4d:	49 89 fc             	mov    %rdi,%r12
  405c50:	53                   	push   %rbx
  405c51:	48 89 f3             	mov    %rsi,%rbx
  405c54:	31 f6                	xor    %esi,%esi
  405c56:	e8 25 0d 00 00       	call   406980 <memchr>
  405c5b:	48 89 c2             	mov    %rax,%rdx
  405c5e:	4c 29 e0             	sub    %r12,%rax
  405c61:	48 85 d2             	test   %rdx,%rdx
  405c64:	48 0f 44 c3          	cmove  %rbx,%rax
  405c68:	5b                   	pop    %rbx
  405c69:	41 5c                	pop    %r12
  405c6b:	5d                   	pop    %rbp
  405c6c:	c3                   	ret

0000000000405c6d <memcpy>:
  405c6d:	48 89 f8             	mov    %rdi,%rax
  405c70:	48 83 fa 08          	cmp    $0x8,%rdx
  405c74:	72 14                	jb     405c8a <memcpy+0x1d>
  405c76:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405c7c:	74 0c                	je     405c8a <memcpy+0x1d>
  405c7e:	a4                   	movsb  (%rsi),(%rdi)
  405c7f:	48 ff ca             	dec    %rdx
  405c82:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405c88:	75 f4                	jne    405c7e <memcpy+0x11>
  405c8a:	48 89 d1             	mov    %rdx,%rcx
  405c8d:	48 c1 e9 03          	shr    $0x3,%rcx
  405c91:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405c94:	83 e2 07             	and    $0x7,%edx
  405c97:	74 05                	je     405c9e <memcpy+0x31>
  405c99:	a4                   	movsb  (%rsi),(%rdi)
  405c9a:	ff ca                	dec    %edx
  405c9c:	75 fb                	jne    405c99 <memcpy+0x2c>
  405c9e:	c3                   	ret

0000000000405c9f <memset>:
  405c9f:	48 0f b6 c6          	movzbq %sil,%rax
  405ca3:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405caa:	01 01 01 
  405cad:	49 0f af c0          	imul   %r8,%rax
  405cb1:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405cb5:	77 78                	ja     405d2f <memset+0x90>
  405cb7:	85 d2                	test   %edx,%edx
  405cb9:	74 70                	je     405d2b <memset+0x8c>
  405cbb:	40 88 37             	mov    %sil,(%rdi)
  405cbe:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405cc3:	83 fa 02             	cmp    $0x2,%edx
  405cc6:	76 63                	jbe    405d2b <memset+0x8c>
  405cc8:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405ccc:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405cd1:	83 fa 06             	cmp    $0x6,%edx
  405cd4:	76 55                	jbe    405d2b <memset+0x8c>
  405cd6:	89 47 03             	mov    %eax,0x3(%rdi)
  405cd9:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405cdd:	83 fa 0e             	cmp    $0xe,%edx
  405ce0:	76 49                	jbe    405d2b <memset+0x8c>
  405ce2:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405ce6:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405ceb:	83 fa 1e             	cmp    $0x1e,%edx
  405cee:	76 3b                	jbe    405d2b <memset+0x8c>
  405cf0:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405cf4:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405cf8:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405cfd:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405d02:	83 fa 3e             	cmp    $0x3e,%edx
  405d05:	76 24                	jbe    405d2b <memset+0x8c>
  405d07:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405d0b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405d0f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405d13:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405d17:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405d1c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405d21:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405d26:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405d2b:	48 89 f8             	mov    %rdi,%rax
  405d2e:	c3                   	ret
  405d2f:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405d35:	49 89 f8             	mov    %rdi,%r8
  405d38:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405d3d:	48 89 d1             	mov    %rdx,%rcx
  405d40:	75 0b                	jne    405d4d <memset+0xae>
  405d42:	48 c1 e9 03          	shr    $0x3,%rcx
  405d46:	f3 48 ab             	rep stos %rax,(%rdi)
  405d49:	4c 89 c0             	mov    %r8,%rax
  405d4c:	c3                   	ret
  405d4d:	31 d2                	xor    %edx,%edx
  405d4f:	29 fa                	sub    %edi,%edx
  405d51:	83 e2 0f             	and    $0xf,%edx
  405d54:	48 89 07             	mov    %rax,(%rdi)
  405d57:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405d5b:	48 29 d1             	sub    %rdx,%rcx
  405d5e:	48 01 d7             	add    %rdx,%rdi
  405d61:	eb df                	jmp    405d42 <memset+0xa3>
  405d63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405d6a:	00 00 00 
  405d6d:	0f 1f 00             	nopl   (%rax)

0000000000405d70 <__init_tp>:
  405d70:	f3 0f 1e fa          	endbr64
  405d74:	55                   	push   %rbp
  405d75:	48 89 e5             	mov    %rsp,%rbp
  405d78:	53                   	push   %rbx
  405d79:	48 89 fb             	mov    %rdi,%rbx
  405d7c:	48 83 ec 08          	sub    $0x8,%rsp
  405d80:	48 89 3f             	mov    %rdi,(%rdi)
  405d83:	e8 c5 0e 00 00       	call   406c4d <__set_thread_area>
  405d88:	85 c0                	test   %eax,%eax
  405d8a:	78 65                	js     405df1 <__init_tp+0x81>
  405d8c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405d91:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405d95:	74 51                	je     405de8 <__init_tp+0x78>
  405d97:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405d9e:	b8 da 00 00 00       	mov    $0xda,%eax
  405da3:	48 8d 3d e6 59 00 00 	lea    0x59e6(%rip),%rdi        # 40b790 <__thread_list_lock>
  405daa:	0f 05                	syscall
  405dac:	89 43 30             	mov    %eax,0x30(%rbx)
  405daf:	48 8d 05 e2 53 00 00 	lea    0x53e2(%rip),%rax        # 40b198 <__libc+0x38>
  405db6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405dbd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405dc4:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405dcb:	48 8b 05 5e 53 00 00 	mov    0x535e(%rip),%rax        # 40b130 <__sysinfo>
  405dd2:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405dd6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405dda:	31 c0                	xor    %eax,%eax
  405ddc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405de0:	c9                   	leave
  405de1:	c3                   	ret
  405de2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405de8:	c6 05 71 53 00 00 01 	movb   $0x1,0x5371(%rip)        # 40b160 <__libc>
  405def:	eb a6                	jmp    405d97 <__init_tp+0x27>
  405df1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405df6:	eb e4                	jmp    405ddc <__init_tp+0x6c>
  405df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405dff:	00 

0000000000405e00 <__copy_tls>:
  405e00:	f3 0f 1e fa          	endbr64
  405e04:	55                   	push   %rbp
  405e05:	48 8b 05 6c 53 00 00 	mov    0x536c(%rip),%rax        # 40b178 <__libc+0x18>
  405e0c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405e13:	ff 
  405e14:	48 89 e5             	mov    %rsp,%rbp
  405e17:	41 56                	push   %r14
  405e19:	49 89 fe             	mov    %rdi,%r14
  405e1c:	41 55                	push   %r13
  405e1e:	4c 8b 2d 5b 53 00 00 	mov    0x535b(%rip),%r13        # 40b180 <__libc+0x20>
  405e25:	41 54                	push   %r12
  405e27:	53                   	push   %rbx
  405e28:	48 8b 1d 41 53 00 00 	mov    0x5341(%rip),%rbx        # 40b170 <__libc+0x10>
  405e2f:	49 f7 dd             	neg    %r13
  405e32:	49 21 c5             	and    %rax,%r13
  405e35:	48 85 db             	test   %rbx,%rbx
  405e38:	74 32                	je     405e6c <__copy_tls+0x6c>
  405e3a:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405e3e:	66 90                	xchg   %ax,%ax
  405e40:	4c 89 e8             	mov    %r13,%rax
  405e43:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405e47:	4c 89 ef             	mov    %r13,%rdi
  405e4a:	49 83 c4 08          	add    $0x8,%r12
  405e4e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405e53:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405e57:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405e5b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405e5f:	e8 09 fe ff ff       	call   405c6d <memcpy>
  405e64:	48 8b 1b             	mov    (%rbx),%rbx
  405e67:	48 85 db             	test   %rbx,%rbx
  405e6a:	75 d4                	jne    405e40 <__copy_tls+0x40>
  405e6c:	48 8b 05 15 53 00 00 	mov    0x5315(%rip),%rax        # 40b188 <__libc+0x28>
  405e73:	49 89 06             	mov    %rax,(%r14)
  405e76:	4c 89 e8             	mov    %r13,%rax
  405e79:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405e7d:	5b                   	pop    %rbx
  405e7e:	41 5c                	pop    %r12
  405e80:	41 5d                	pop    %r13
  405e82:	41 5e                	pop    %r14
  405e84:	5d                   	pop    %rbp
  405e85:	c3                   	ret
  405e86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e8d:	00 00 00 

0000000000405e90 <__init_tls>:
  405e90:	f3 0f 1e fa          	endbr64
  405e94:	55                   	push   %rbp
  405e95:	48 89 e5             	mov    %rsp,%rbp
  405e98:	53                   	push   %rbx
  405e99:	48 83 ec 08          	sub    $0x8,%rsp
  405e9d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405ea1:	48 85 c9             	test   %rcx,%rcx
  405ea4:	0f 84 fe 01 00 00    	je     4060a8 <__init_tls+0x218>
  405eaa:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405eae:	31 f6                	xor    %esi,%esi
  405eb0:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405eb4:	45 31 c0             	xor    %r8d,%r8d
  405eb7:	4c 89 d0             	mov    %r10,%rax
  405eba:	eb 29                	jmp    405ee5 <__init_tls+0x55>
  405ebc:	0f 1f 40 00          	nopl   0x0(%rax)
  405ec0:	83 fa 02             	cmp    $0x2,%edx
  405ec3:	0f 85 77 01 00 00    	jne    406040 <__init_tls+0x1b0>
  405ec9:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405ed0:	48 85 d2             	test   %rdx,%rdx
  405ed3:	74 07                	je     405edc <__init_tls+0x4c>
  405ed5:	48 89 d6             	mov    %rdx,%rsi
  405ed8:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405edc:	48 01 f8             	add    %rdi,%rax
  405edf:	48 83 e9 01          	sub    $0x1,%rcx
  405ee3:	74 17                	je     405efc <__init_tls+0x6c>
  405ee5:	8b 10                	mov    (%rax),%edx
  405ee7:	83 fa 06             	cmp    $0x6,%edx
  405eea:	75 d4                	jne    405ec0 <__init_tls+0x30>
  405eec:	4c 89 d6             	mov    %r10,%rsi
  405eef:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405ef3:	48 01 f8             	add    %rdi,%rax
  405ef6:	48 83 e9 01          	sub    $0x1,%rcx
  405efa:	75 e9                	jne    405ee5 <__init_tls+0x55>
  405efc:	4d 85 c0             	test   %r8,%r8
  405eff:	0f 84 a3 01 00 00    	je     4060a8 <__init_tls+0x218>
  405f05:	49 8b 40 20          	mov    0x20(%r8),%rax
  405f09:	49 03 70 10          	add    0x10(%r8),%rsi
  405f0d:	48 8d 1d ec 56 00 00 	lea    0x56ec(%rip),%rbx        # 40b600 <main_tls>
  405f14:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405f18:	48 89 35 e9 56 00 00 	mov    %rsi,0x56e9(%rip)        # 40b608 <main_tls+0x8>
  405f1f:	48 89 05 ea 56 00 00 	mov    %rax,0x56ea(%rip)        # 40b610 <main_tls+0x10>
  405f26:	49 8b 40 30          	mov    0x30(%r8),%rax
  405f2a:	48 c7 05 53 52 00 00 	movq   $0x1,0x5253(%rip)        # 40b188 <__libc+0x28>
  405f31:	01 00 00 00 
  405f35:	48 89 05 e4 56 00 00 	mov    %rax,0x56e4(%rip)        # 40b620 <main_tls+0x20>
  405f3c:	48 89 1d 2d 52 00 00 	mov    %rbx,0x522d(%rip)        # 40b170 <__libc+0x10>
  405f43:	48 01 d6             	add    %rdx,%rsi
  405f46:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405f4a:	48 f7 de             	neg    %rsi
  405f4d:	48 21 ce             	and    %rcx,%rsi
  405f50:	48 01 d6             	add    %rdx,%rsi
  405f53:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405f5a:	48 89 35 b7 56 00 00 	mov    %rsi,0x56b7(%rip)        # 40b618 <main_tls+0x18>
  405f61:	48 89 35 c0 56 00 00 	mov    %rsi,0x56c0(%rip)        # 40b628 <main_tls+0x28>
  405f68:	48 83 f8 07          	cmp    $0x7,%rax
  405f6c:	77 15                	ja     405f83 <__init_tls+0xf3>
  405f6e:	48 c7 05 a7 56 00 00 	movq   $0x8,0x56a7(%rip)        # 40b620 <main_tls+0x20>
  405f75:	08 00 00 00 
  405f79:	ba e7 00 00 00       	mov    $0xe7,%edx
  405f7e:	b8 08 00 00 00       	mov    $0x8,%eax
  405f83:	48 01 d6             	add    %rdx,%rsi
  405f86:	48 89 05 f3 51 00 00 	mov    %rax,0x51f3(%rip)        # 40b180 <__libc+0x20>
  405f8d:	48 8d 3d ac 56 00 00 	lea    0x56ac(%rip),%rdi        # 40b640 <builtin_tls>
  405f94:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405f98:	48 89 35 d9 51 00 00 	mov    %rsi,0x51d9(%rip)        # 40b178 <__libc+0x18>
  405f9f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405fa6:	76 21                	jbe    405fc9 <__init_tls+0x139>
  405fa8:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405fae:	45 31 c9             	xor    %r9d,%r9d
  405fb1:	b8 09 00 00 00       	mov    $0x9,%eax
  405fb6:	31 ff                	xor    %edi,%edi
  405fb8:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405fbf:	ba 03 00 00 00       	mov    $0x3,%edx
  405fc4:	0f 05                	syscall
  405fc6:	48 89 c7             	mov    %rax,%rdi
  405fc9:	e8 32 fe ff ff       	call   405e00 <__copy_tls>
  405fce:	48 89 00             	mov    %rax,(%rax)
  405fd1:	48 89 c7             	mov    %rax,%rdi
  405fd4:	48 89 c3             	mov    %rax,%rbx
  405fd7:	e8 71 0c 00 00       	call   406c4d <__set_thread_area>
  405fdc:	85 c0                	test   %eax,%eax
  405fde:	0f 88 b8 00 00 00    	js     40609c <__init_tls+0x20c>
  405fe4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405fe9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405fed:	0f 84 9d 00 00 00    	je     406090 <__init_tls+0x200>
  405ff3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405ffa:	b8 da 00 00 00       	mov    $0xda,%eax
  405fff:	48 8d 3d 8a 57 00 00 	lea    0x578a(%rip),%rdi        # 40b790 <__thread_list_lock>
  406006:	0f 05                	syscall
  406008:	89 43 30             	mov    %eax,0x30(%rbx)
  40600b:	48 8d 05 86 51 00 00 	lea    0x5186(%rip),%rax        # 40b198 <__libc+0x38>
  406012:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  406019:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  406020:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  406027:	48 8b 05 02 51 00 00 	mov    0x5102(%rip),%rax        # 40b130 <__sysinfo>
  40602e:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  406032:	48 89 43 20          	mov    %rax,0x20(%rbx)
  406036:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40603a:	c9                   	leave
  40603b:	c3                   	ret
  40603c:	0f 1f 40 00          	nopl   0x0(%rax)
  406040:	83 fa 07             	cmp    $0x7,%edx
  406043:	75 0b                	jne    406050 <__init_tls+0x1c0>
  406045:	49 89 c0             	mov    %rax,%r8
  406048:	e9 8f fe ff ff       	jmp    405edc <__init_tls+0x4c>
  40604d:	0f 1f 00             	nopl   (%rax)
  406050:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  406056:	0f 85 80 fe ff ff    	jne    405edc <__init_tls+0x4c>
  40605c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  406060:	44 8b 0d a5 50 00 00 	mov    0x50a5(%rip),%r9d        # 40b10c <__default_stacksize>
  406067:	49 39 d1             	cmp    %rdx,%r9
  40606a:	0f 83 6c fe ff ff    	jae    405edc <__init_tls+0x4c>
  406070:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  406076:	4c 39 ca             	cmp    %r9,%rdx
  406079:	49 0f 47 d1          	cmova  %r9,%rdx
  40607d:	89 15 89 50 00 00    	mov    %edx,0x5089(%rip)        # 40b10c <__default_stacksize>
  406083:	e9 54 fe ff ff       	jmp    405edc <__init_tls+0x4c>
  406088:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40608f:	00 
  406090:	c6 05 c9 50 00 00 01 	movb   $0x1,0x50c9(%rip)        # 40b160 <__libc>
  406097:	e9 57 ff ff ff       	jmp    405ff3 <__init_tls+0x163>
  40609c:	f4                   	hlt
  40609d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4060a1:	c9                   	leave
  4060a2:	c3                   	ret
  4060a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4060a8:	48 8b 15 69 55 00 00 	mov    0x5569(%rip),%rdx        # 40b618 <main_tls+0x18>
  4060af:	48 8b 35 52 55 00 00 	mov    0x5552(%rip),%rsi        # 40b608 <main_tls+0x8>
  4060b6:	48 8b 05 63 55 00 00 	mov    0x5563(%rip),%rax        # 40b620 <main_tls+0x20>
  4060bd:	e9 81 fe ff ff       	jmp    405f43 <__init_tls+0xb3>
  4060c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060c9:	00 00 00 
  4060cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004060d0 <__errno_location>:
  4060d0:	f3 0f 1e fa          	endbr64
  4060d4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4060db:	00 00 
  4060dd:	48 83 c0 34          	add    $0x34,%rax
  4060e1:	c3                   	ret
  4060e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060e9:	00 00 00 
  4060ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004060f0 <__strerror_l>:
  4060f0:	f3 0f 1e fa          	endbr64
  4060f4:	48 8d 05 45 25 00 00 	lea    0x2545(%rip),%rax        # 408640 <errmsgstr>
  4060fb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  406101:	77 11                	ja     406114 <__strerror_l+0x24>
  406103:	48 63 ff             	movslq %edi,%rdi
  406106:	48 8d 15 13 24 00 00 	lea    0x2413(%rip),%rdx        # 408520 <errmsgidx>
  40610d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  406111:	48 01 d0             	add    %rdx,%rax
  406114:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  406118:	48 89 c7             	mov    %rax,%rdi
  40611b:	e9 50 00 00 00       	jmp    406170 <__lctrans>

0000000000406120 <strerror>:
  406120:	f3 0f 1e fa          	endbr64
  406124:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40612b:	00 00 
  40612d:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  406134:	e9 b7 ff ff ff       	jmp    4060f0 <__strerror_l>
  406139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406140 <_Exit>:
  406140:	f3 0f 1e fa          	endbr64
  406144:	48 63 ff             	movslq %edi,%rdi
  406147:	b8 e7 00 00 00       	mov    $0xe7,%eax
  40614c:	0f 05                	syscall
  40614e:	66 90                	xchg   %ax,%ax
  406150:	b8 3c 00 00 00       	mov    $0x3c,%eax
  406155:	0f 05                	syscall
  406157:	eb f7                	jmp    406150 <_Exit+0x10>
  406159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406160 <__lctrans_impl>:
  406160:	f3 0f 1e fa          	endbr64
  406164:	48 89 f8             	mov    %rdi,%rax
  406167:	c3                   	ret
  406168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40616f:	00 

0000000000406170 <__lctrans>:
  406170:	f3 0f 1e fa          	endbr64
  406174:	e9 e7 ff ff ff       	jmp    406160 <__lctrans_impl>
  406179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406180 <__lctrans_cur>:
  406180:	f3 0f 1e fa          	endbr64
  406184:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40618b:	00 00 
  40618d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  406194:	48 8b 70 28          	mov    0x28(%rax),%rsi
  406198:	e9 c3 ff ff ff       	jmp    406160 <__lctrans_impl>
  40619d:	0f 1f 00             	nopl   (%rax)

00000000004061a0 <__fpclassifyl>:
  4061a0:	f3 0f 1e fa          	endbr64
  4061a4:	55                   	push   %rbp
  4061a5:	48 89 e5             	mov    %rsp,%rbp
  4061a8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4061ac:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4061b0:	48 89 ca             	mov    %rcx,%rdx
  4061b3:	89 c6                	mov    %eax,%esi
  4061b5:	25 ff 7f 00 00       	and    $0x7fff,%eax
  4061ba:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4061be:	66 81 e6 ff 7f       	and    $0x7fff,%si
  4061c3:	09 d0                	or     %edx,%eax
  4061c5:	74 31                	je     4061f8 <__fpclassifyl+0x58>
  4061c7:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  4061ce:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  4061d3:	74 0b                	je     4061e0 <__fpclassifyl+0x40>
  4061d5:	5d                   	pop    %rbp
  4061d6:	c3                   	ret
  4061d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4061de:	00 00 
  4061e0:	31 c0                	xor    %eax,%eax
  4061e2:	48 85 d2             	test   %rdx,%rdx
  4061e5:	74 ee                	je     4061d5 <__fpclassifyl+0x35>
  4061e7:	31 c0                	xor    %eax,%eax
  4061e9:	48 01 c9             	add    %rcx,%rcx
  4061ec:	5d                   	pop    %rbp
  4061ed:	0f 94 c0             	sete   %al
  4061f0:	c3                   	ret
  4061f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4061f8:	48 83 f9 01          	cmp    $0x1,%rcx
  4061fc:	b8 02 00 00 00       	mov    $0x2,%eax
  406201:	5d                   	pop    %rbp
  406202:	83 d8 ff             	sbb    $0xffffffff,%eax
  406205:	c3                   	ret
  406206:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40620d:	00 00 00 

0000000000406210 <__signbitl>:
  406210:	f3 0f 1e fa          	endbr64
  406214:	55                   	push   %rbp
  406215:	48 89 e5             	mov    %rsp,%rbp
  406218:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  40621c:	5d                   	pop    %rbp
  40621d:	66 c1 e8 0f          	shr    $0xf,%ax
  406221:	0f b7 c0             	movzwl %ax,%eax
  406224:	c3                   	ret
  406225:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40622c:	00 00 00 
  40622f:	90                   	nop

0000000000406230 <frexpl>:
  406230:	f3 0f 1e fa          	endbr64
  406234:	55                   	push   %rbp
  406235:	48 89 e5             	mov    %rsp,%rbp
  406238:	48 83 ec 20          	sub    $0x20,%rsp
  40623c:	db 6d 10             	fldt   0x10(%rbp)
  40623f:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406243:	89 c2                	mov    %eax,%edx
  406245:	d9 c0                	fld    %st(0)
  406247:	db 7d f0             	fstpt  -0x10(%rbp)
  40624a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40624f:	74 2f                	je     406280 <frexpl+0x50>
  406251:	dd d8                	fstp   %st(0)
  406253:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406258:	74 38                	je     406292 <frexpl+0x62>
  40625a:	0f b7 d2             	movzwl %dx,%edx
  40625d:	66 25 00 80          	and    $0x8000,%ax
  406261:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  406267:	66 0d fe 3f          	or     $0x3ffe,%ax
  40626b:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40626f:	db 6d f0             	fldt   -0x10(%rbp)
  406272:	89 17                	mov    %edx,(%rdi)
  406274:	c9                   	leave
  406275:	c3                   	ret
  406276:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40627d:	00 00 00 
  406280:	d9 ee                	fldz
  406282:	d9 c9                	fxch   %st(1)
  406284:	df e9                	fucomip %st(1),%st
  406286:	dd d8                	fstp   %st(0)
  406288:	7a 16                	jp     4062a0 <frexpl+0x70>
  40628a:	75 14                	jne    4062a0 <frexpl+0x70>
  40628c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406292:	db 6d 10             	fldt   0x10(%rbp)
  406295:	c9                   	leave
  406296:	c3                   	ret
  406297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40629e:	00 00 
  4062a0:	db 6d 10             	fldt   0x10(%rbp)
  4062a3:	d8 0d 43 22 00 00    	fmuls  0x2243(%rip)        # 4084ec <states+0x1ec>
  4062a9:	48 83 ec 10          	sub    $0x10,%rsp
  4062ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4062b1:	db 3c 24             	fstpt  (%rsp)
  4062b4:	e8 77 ff ff ff       	call   406230 <frexpl>
  4062b9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4062bd:	83 2f 78             	subl   $0x78,(%rdi)
  4062c0:	58                   	pop    %rax
  4062c1:	5a                   	pop    %rdx
  4062c2:	c9                   	leave
  4062c3:	c3                   	ret
  4062c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062cb:	00 00 00 
  4062ce:	66 90                	xchg   %ax,%ax

00000000004062d0 <wctomb>:
  4062d0:	f3 0f 1e fa          	endbr64
  4062d4:	48 85 ff             	test   %rdi,%rdi
  4062d7:	74 17                	je     4062f0 <wctomb+0x20>
  4062d9:	55                   	push   %rbp
  4062da:	31 d2                	xor    %edx,%edx
  4062dc:	48 89 e5             	mov    %rsp,%rbp
  4062df:	e8 dc 09 00 00       	call   406cc0 <wcrtomb>
  4062e4:	5d                   	pop    %rbp
  4062e5:	c3                   	ret
  4062e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062ed:	00 00 00 
  4062f0:	31 c0                	xor    %eax,%eax
  4062f2:	c3                   	ret
  4062f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062fa:	00 00 00 
  4062fd:	0f 1f 00             	nopl   (%rax)

0000000000406300 <__lockfile>:
  406300:	f3 0f 1e fa          	endbr64
  406304:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40630a:	48 89 fa             	mov    %rdi,%rdx
  40630d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406314:	00 00 
  406316:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40631a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40631f:	31 c9                	xor    %ecx,%ecx
  406321:	44 39 c0             	cmp    %r8d,%eax
  406324:	74 3f                	je     406365 <__lockfile+0x65>
  406326:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  40632d:	89 c8                	mov    %ecx,%eax
  40632f:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  406336:	00 00 
  406338:	85 c0                	test   %eax,%eax
  40633a:	74 24                	je     406360 <__lockfile+0x60>
  40633c:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406343:	89 c8                	mov    %ecx,%eax
  406345:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40634c:	00 00 
  40634e:	89 c1                	mov    %eax,%ecx
  406350:	85 c0                	test   %eax,%eax
  406352:	75 33                	jne    406387 <__lockfile+0x87>
  406354:	90                   	nop
  406355:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40635c:	00 00 00 00 
  406360:	b9 01 00 00 00       	mov    $0x1,%ecx
  406365:	89 c8                	mov    %ecx,%eax
  406367:	c3                   	ret
  406368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40636f:	00 
  406370:	89 c8                	mov    %ecx,%eax
  406372:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406376:	39 c8                	cmp    %ecx,%eax
  406378:	74 1d                	je     406397 <__lockfile+0x97>
  40637a:	31 c0                	xor    %eax,%eax
  40637c:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406381:	89 c1                	mov    %eax,%ecx
  406383:	85 c0                	test   %eax,%eax
  406385:	74 d9                	je     406360 <__lockfile+0x60>
  406387:	89 ca                	mov    %ecx,%edx
  406389:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40638f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406395:	74 d9                	je     406370 <__lockfile+0x70>
  406397:	48 63 d2             	movslq %edx,%rdx
  40639a:	45 31 d2             	xor    %r10d,%r10d
  40639d:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063a2:	be 80 00 00 00       	mov    $0x80,%esi
  4063a7:	0f 05                	syscall
  4063a9:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4063ad:	75 cb                	jne    40637a <__lockfile+0x7a>
  4063af:	45 31 d2             	xor    %r10d,%r10d
  4063b2:	31 f6                	xor    %esi,%esi
  4063b4:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063b9:	0f 05                	syscall
  4063bb:	eb bd                	jmp    40637a <__lockfile+0x7a>
  4063bd:	0f 1f 00             	nopl   (%rax)

00000000004063c0 <__unlockfile>:
  4063c0:	f3 0f 1e fa          	endbr64
  4063c4:	48 89 fa             	mov    %rdi,%rdx
  4063c7:	31 c0                	xor    %eax,%eax
  4063c9:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4063d0:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  4063d6:	a9 00 00 00 40       	test   $0x40000000,%eax
  4063db:	74 17                	je     4063f4 <__unlockfile+0x34>
  4063dd:	be 81 00 00 00       	mov    $0x81,%esi
  4063e2:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063e7:	ba 01 00 00 00       	mov    $0x1,%edx
  4063ec:	0f 05                	syscall
  4063ee:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4063f2:	74 04                	je     4063f8 <__unlockfile+0x38>
  4063f4:	c3                   	ret
  4063f5:	0f 1f 00             	nopl   (%rax)
  4063f8:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063fd:	be 01 00 00 00       	mov    $0x1,%esi
  406402:	0f 05                	syscall
  406404:	c3                   	ret
  406405:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40640c:	00 00 00 
  40640f:	90                   	nop

0000000000406410 <__overflow>:
  406410:	f3 0f 1e fa          	endbr64
  406414:	55                   	push   %rbp
  406415:	48 89 e5             	mov    %rsp,%rbp
  406418:	48 83 ec 20          	sub    $0x20,%rsp
  40641c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406423:	00 00 
  406425:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406429:	31 c0                	xor    %eax,%eax
  40642b:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40642f:	40 88 75 f7          	mov    %sil,-0x9(%rbp)
  406433:	48 85 c0             	test   %rax,%rax
  406436:	74 50                	je     406488 <__overflow+0x78>
  406438:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  40643c:	48 39 c2             	cmp    %rax,%rdx
  40643f:	74 0c                	je     40644d <__overflow+0x3d>
  406441:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406445:	3b 87 90 00 00 00    	cmp    0x90(%rdi),%eax
  40644b:	75 2b                	jne    406478 <__overflow+0x68>
  40644d:	48 8d 75 f7          	lea    -0x9(%rbp),%rsi
  406451:	ba 01 00 00 00       	mov    $0x1,%edx
  406456:	ff 57 48             	call   *0x48(%rdi)
  406459:	48 83 f8 01          	cmp    $0x1,%rax
  40645d:	75 41                	jne    4064a0 <__overflow+0x90>
  40645f:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406463:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  406467:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40646e:	00 00 
  406470:	75 35                	jne    4064a7 <__overflow+0x97>
  406472:	c9                   	leave
  406473:	c3                   	ret
  406474:	0f 1f 40 00          	nopl   0x0(%rax)
  406478:	48 8d 72 01          	lea    0x1(%rdx),%rsi
  40647c:	48 89 77 28          	mov    %rsi,0x28(%rdi)
  406480:	88 02                	mov    %al,(%rdx)
  406482:	eb df                	jmp    406463 <__overflow+0x53>
  406484:	0f 1f 40 00          	nopl   0x0(%rax)
  406488:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40648c:	e8 ff 00 00 00       	call   406590 <__towrite>
  406491:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  406495:	85 c0                	test   %eax,%eax
  406497:	75 07                	jne    4064a0 <__overflow+0x90>
  406499:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40649d:	eb 99                	jmp    406438 <__overflow+0x28>
  40649f:	90                   	nop
  4064a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4064a5:	eb bc                	jmp    406463 <__overflow+0x53>
  4064a7:	e8 54 c3 ff ff       	call   402800 <__stack_chk_fail>
  4064ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004064b0 <__aio_close>:
  4064b0:	f3 0f 1e fa          	endbr64
  4064b4:	89 f8                	mov    %edi,%eax
  4064b6:	c3                   	ret
  4064b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4064be:	00 00 

00000000004064c0 <__stdio_close>:
  4064c0:	f3 0f 1e fa          	endbr64
  4064c4:	55                   	push   %rbp
  4064c5:	8b 7f 78             	mov    0x78(%rdi),%edi
  4064c8:	48 89 e5             	mov    %rsp,%rbp
  4064cb:	e8 e0 ff ff ff       	call   4064b0 <__aio_close>
  4064d0:	48 63 f8             	movslq %eax,%rdi
  4064d3:	b8 03 00 00 00       	mov    $0x3,%eax
  4064d8:	0f 05                	syscall
  4064da:	48 89 c7             	mov    %rax,%rdi
  4064dd:	e8 9e 07 00 00       	call   406c80 <__syscall_ret>
  4064e2:	5d                   	pop    %rbp
  4064e3:	c3                   	ret
  4064e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4064eb:	00 00 00 
  4064ee:	66 90                	xchg   %ax,%ax

00000000004064f0 <__stdio_seek>:
  4064f0:	f3 0f 1e fa          	endbr64
  4064f4:	8b 7f 78             	mov    0x78(%rdi),%edi
  4064f7:	e9 64 07 00 00       	jmp    406c60 <__lseek>
  4064fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406500 <__stdout_write>:
  406500:	f3 0f 1e fa          	endbr64
  406504:	55                   	push   %rbp
  406505:	48 8d 05 d4 09 00 00 	lea    0x9d4(%rip),%rax        # 406ee0 <__stdio_write>
  40650c:	49 89 f8             	mov    %rdi,%r8
  40650f:	49 89 f1             	mov    %rsi,%r9
  406512:	48 89 e5             	mov    %rsp,%rbp
  406515:	48 83 ec 10          	sub    $0x10,%rsp
  406519:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406520:	00 00 
  406522:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406526:	49 89 d2             	mov    %rdx,%r10
  406529:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40652d:	f6 07 40             	testb  $0x40,(%rdi)
  406530:	75 19                	jne    40654b <__stdout_write+0x4b>
  406532:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406536:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40653a:	b8 10 00 00 00       	mov    $0x10,%eax
  40653f:	be 13 54 00 00       	mov    $0x5413,%esi
  406544:	0f 05                	syscall
  406546:	48 85 c0             	test   %rax,%rax
  406549:	75 25                	jne    406570 <__stdout_write+0x70>
  40654b:	4c 89 d2             	mov    %r10,%rdx
  40654e:	4c 89 ce             	mov    %r9,%rsi
  406551:	4c 89 c7             	mov    %r8,%rdi
  406554:	e8 87 09 00 00       	call   406ee0 <__stdio_write>
  406559:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40655d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406564:	00 00 
  406566:	75 15                	jne    40657d <__stdout_write+0x7d>
  406568:	c9                   	leave
  406569:	c3                   	ret
  40656a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406570:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406577:	ff ff ff ff 
  40657b:	eb ce                	jmp    40654b <__stdout_write+0x4b>
  40657d:	e8 7e c2 ff ff       	call   402800 <__stack_chk_fail>
  406582:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406589:	00 00 00 
  40658c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406590 <__towrite>:
  406590:	f3 0f 1e fa          	endbr64
  406594:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  40659a:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40659d:	09 d0                	or     %edx,%eax
  40659f:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  4065a5:	8b 07                	mov    (%rdi),%eax
  4065a7:	a8 08                	test   $0x8,%al
  4065a9:	75 35                	jne    4065e0 <__towrite+0x50>
  4065ab:	48 8b 47 58          	mov    0x58(%rdi),%rax
  4065af:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  4065b3:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4065b7:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  4065bb:	48 01 c1             	add    %rax,%rcx
  4065be:	66 48 0f 6e c8       	movq   %rax,%xmm1
  4065c3:	48 89 47 38          	mov    %rax,0x38(%rdi)
  4065c7:	31 c0                	xor    %eax,%eax
  4065c9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  4065ce:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  4065d2:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  4065d6:	c3                   	ret
  4065d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4065de:	00 00 
  4065e0:	83 c8 20             	or     $0x20,%eax
  4065e3:	89 07                	mov    %eax,(%rdi)
  4065e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4065ea:	c3                   	ret
  4065eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004065f0 <__towrite_needs_stdio_exit>:
  4065f0:	f3 0f 1e fa          	endbr64
  4065f4:	e9 87 08 00 00       	jmp    406e80 <__stdio_exit>
  4065f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406600 <fputs>:
  406600:	f3 0f 1e fa          	endbr64
  406604:	55                   	push   %rbp
  406605:	48 89 e5             	mov    %rsp,%rbp
  406608:	41 54                	push   %r12
  40660a:	49 89 f4             	mov    %rsi,%r12
  40660d:	53                   	push   %rbx
  40660e:	48 83 ec 10          	sub    $0x10,%rsp
  406612:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406616:	e8 a5 05 00 00       	call   406bc0 <strlen>
  40661b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40661f:	4c 89 e1             	mov    %r12,%rcx
  406622:	be 01 00 00 00       	mov    $0x1,%esi
  406627:	48 89 c2             	mov    %rax,%rdx
  40662a:	48 89 c3             	mov    %rax,%rbx
  40662d:	e8 1e 01 00 00       	call   406750 <fwrite>
  406632:	48 39 d8             	cmp    %rbx,%rax
  406635:	0f 95 c0             	setne  %al
  406638:	48 83 c4 10          	add    $0x10,%rsp
  40663c:	0f b6 c0             	movzbl %al,%eax
  40663f:	5b                   	pop    %rbx
  406640:	41 5c                	pop    %r12
  406642:	f7 d8                	neg    %eax
  406644:	5d                   	pop    %rbp
  406645:	c3                   	ret
  406646:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40664d:	00 00 00 

0000000000406650 <__fwritex>:
  406650:	f3 0f 1e fa          	endbr64
  406654:	55                   	push   %rbp
  406655:	48 89 f9             	mov    %rdi,%rcx
  406658:	48 89 e5             	mov    %rsp,%rbp
  40665b:	41 54                	push   %r12
  40665d:	49 89 f4             	mov    %rsi,%r12
  406660:	53                   	push   %rbx
  406661:	48 89 d3             	mov    %rdx,%rbx
  406664:	48 83 ec 10          	sub    $0x10,%rsp
  406668:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40666c:	48 85 c0             	test   %rax,%rax
  40666f:	0f 84 ab 00 00 00    	je     406720 <__fwritex+0xd0>
  406675:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406679:	48 29 f8             	sub    %rdi,%rax
  40667c:	4c 39 e0             	cmp    %r12,%rax
  40667f:	72 57                	jb     4066d8 <__fwritex+0x88>
  406681:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406687:	4c 89 e2             	mov    %r12,%rdx
  40668a:	85 c0                	test   %eax,%eax
  40668c:	79 3d                	jns    4066cb <__fwritex+0x7b>
  40668e:	4d 89 e0             	mov    %r12,%r8
  406691:	4c 89 c2             	mov    %r8,%rdx
  406694:	48 89 ce             	mov    %rcx,%rsi
  406697:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  40669b:	e8 cd f5 ff ff       	call   405c6d <memcpy>
  4066a0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4066a4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4066a8:	4c 89 e0             	mov    %r12,%rax
  4066ab:	48 83 c4 10          	add    $0x10,%rsp
  4066af:	5b                   	pop    %rbx
  4066b0:	41 5c                	pop    %r12
  4066b2:	5d                   	pop    %rbp
  4066b3:	c3                   	ret
  4066b4:	90                   	nop
  4066b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4066bc:	00 00 00 00 
  4066c0:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  4066c5:	74 29                	je     4066f0 <__fwritex+0xa0>
  4066c7:	48 83 ea 01          	sub    $0x1,%rdx
  4066cb:	48 85 d2             	test   %rdx,%rdx
  4066ce:	75 f0                	jne    4066c0 <__fwritex+0x70>
  4066d0:	eb bc                	jmp    40668e <__fwritex+0x3e>
  4066d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4066d8:	48 8b 43 48          	mov    0x48(%rbx),%rax
  4066dc:	48 83 c4 10          	add    $0x10,%rsp
  4066e0:	4c 89 e2             	mov    %r12,%rdx
  4066e3:	48 89 df             	mov    %rbx,%rdi
  4066e6:	48 89 ce             	mov    %rcx,%rsi
  4066e9:	5b                   	pop    %rbx
  4066ea:	41 5c                	pop    %r12
  4066ec:	5d                   	pop    %rbp
  4066ed:	ff e0                	jmp    *%rax
  4066ef:	90                   	nop
  4066f0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4066f4:	48 89 ce             	mov    %rcx,%rsi
  4066f7:	48 89 df             	mov    %rbx,%rdi
  4066fa:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4066fe:	ff 53 48             	call   *0x48(%rbx)
  406701:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406705:	48 39 d0             	cmp    %rdx,%rax
  406708:	72 a1                	jb     4066ab <__fwritex+0x5b>
  40670a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40670e:	4d 89 e0             	mov    %r12,%r8
  406711:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406715:	49 29 d0             	sub    %rdx,%r8
  406718:	48 01 d1             	add    %rdx,%rcx
  40671b:	e9 71 ff ff ff       	jmp    406691 <__fwritex+0x41>
  406720:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406724:	48 89 d7             	mov    %rdx,%rdi
  406727:	e8 64 fe ff ff       	call   406590 <__towrite>
  40672c:	85 c0                	test   %eax,%eax
  40672e:	75 10                	jne    406740 <__fwritex+0xf0>
  406730:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406734:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406738:	e9 38 ff ff ff       	jmp    406675 <__fwritex+0x25>
  40673d:	0f 1f 00             	nopl   (%rax)
  406740:	31 c0                	xor    %eax,%eax
  406742:	e9 64 ff ff ff       	jmp    4066ab <__fwritex+0x5b>
  406747:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40674e:	00 00 

0000000000406750 <fwrite>:
  406750:	f3 0f 1e fa          	endbr64
  406754:	55                   	push   %rbp
  406755:	31 c0                	xor    %eax,%eax
  406757:	48 89 e5             	mov    %rsp,%rbp
  40675a:	41 57                	push   %r15
  40675c:	41 56                	push   %r14
  40675e:	49 89 f6             	mov    %rsi,%r14
  406761:	41 55                	push   %r13
  406763:	4c 0f af f2          	imul   %rdx,%r14
  406767:	41 54                	push   %r12
  406769:	49 89 cc             	mov    %rcx,%r12
  40676c:	53                   	push   %rbx
  40676d:	48 89 f3             	mov    %rsi,%rbx
  406770:	48 83 ec 18          	sub    $0x18,%rsp
  406774:	48 85 f6             	test   %rsi,%rsi
  406777:	48 0f 45 c2          	cmovne %rdx,%rax
  40677b:	49 89 c5             	mov    %rax,%r13
  40677e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406784:	85 c0                	test   %eax,%eax
  406786:	79 30                	jns    4067b8 <fwrite+0x68>
  406788:	48 89 ca             	mov    %rcx,%rdx
  40678b:	4c 89 f6             	mov    %r14,%rsi
  40678e:	e8 bd fe ff ff       	call   406650 <__fwritex>
  406793:	49 39 c6             	cmp    %rax,%r14
  406796:	74 08                	je     4067a0 <fwrite+0x50>
  406798:	31 d2                	xor    %edx,%edx
  40679a:	48 f7 f3             	div    %rbx
  40679d:	49 89 c5             	mov    %rax,%r13
  4067a0:	48 83 c4 18          	add    $0x18,%rsp
  4067a4:	4c 89 e8             	mov    %r13,%rax
  4067a7:	5b                   	pop    %rbx
  4067a8:	41 5c                	pop    %r12
  4067aa:	41 5d                	pop    %r13
  4067ac:	41 5e                	pop    %r14
  4067ae:	41 5f                	pop    %r15
  4067b0:	5d                   	pop    %rbp
  4067b1:	c3                   	ret
  4067b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4067b8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4067bc:	48 89 cf             	mov    %rcx,%rdi
  4067bf:	e8 3c fb ff ff       	call   406300 <__lockfile>
  4067c4:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  4067c8:	4c 89 e2             	mov    %r12,%rdx
  4067cb:	4c 89 f6             	mov    %r14,%rsi
  4067ce:	41 89 c7             	mov    %eax,%r15d
  4067d1:	e8 7a fe ff ff       	call   406650 <__fwritex>
  4067d6:	45 85 ff             	test   %r15d,%r15d
  4067d9:	74 b8                	je     406793 <fwrite+0x43>
  4067db:	4c 89 e7             	mov    %r12,%rdi
  4067de:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4067e2:	e8 d9 fb ff ff       	call   4063c0 <__unlockfile>
  4067e7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4067eb:	eb a6                	jmp    406793 <fwrite+0x43>
  4067ed:	0f 1f 00             	nopl   (%rax)

00000000004067f0 <sn_write>:
  4067f0:	f3 0f 1e fa          	endbr64
  4067f4:	55                   	push   %rbp
  4067f5:	48 89 f1             	mov    %rsi,%rcx
  4067f8:	48 89 e5             	mov    %rsp,%rbp
  4067fb:	41 55                	push   %r13
  4067fd:	49 89 d5             	mov    %rdx,%r13
  406800:	41 54                	push   %r12
  406802:	53                   	push   %rbx
  406803:	48 89 fb             	mov    %rdi,%rbx
  406806:	48 83 ec 18          	sub    $0x18,%rsp
  40680a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406811:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406815:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406819:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40681e:	49 8b 3c 24          	mov    (%r12),%rdi
  406822:	48 29 f2             	sub    %rsi,%rdx
  406825:	48 39 c2             	cmp    %rax,%rdx
  406828:	48 0f 47 d0          	cmova  %rax,%rdx
  40682c:	48 85 d2             	test   %rdx,%rdx
  40682f:	75 2f                	jne    406860 <sn_write+0x70>
  406831:	49 39 c5             	cmp    %rax,%r13
  406834:	49 0f 46 c5          	cmovbe %r13,%rax
  406838:	48 89 c2             	mov    %rax,%rdx
  40683b:	48 85 c0             	test   %rax,%rax
  40683e:	75 5c                	jne    40689c <sn_write+0xac>
  406840:	c6 07 00             	movb   $0x0,(%rdi)
  406843:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406847:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40684b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40684f:	48 83 c4 18          	add    $0x18,%rsp
  406853:	4c 89 e8             	mov    %r13,%rax
  406856:	5b                   	pop    %rbx
  406857:	41 5c                	pop    %r12
  406859:	41 5d                	pop    %r13
  40685b:	5d                   	pop    %rbp
  40685c:	c3                   	ret
  40685d:	0f 1f 00             	nopl   (%rax)
  406860:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406864:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406868:	e8 00 f4 ff ff       	call   405c6d <memcpy>
  40686d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406871:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406876:	49 8b 3c 24          	mov    (%r12),%rdi
  40687a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40687e:	48 29 d0             	sub    %rdx,%rax
  406881:	48 01 d7             	add    %rdx,%rdi
  406884:	49 39 c5             	cmp    %rax,%r13
  406887:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40688c:	49 0f 46 c5          	cmovbe %r13,%rax
  406890:	49 89 3c 24          	mov    %rdi,(%r12)
  406894:	48 89 c2             	mov    %rax,%rdx
  406897:	48 85 c0             	test   %rax,%rax
  40689a:	74 a4                	je     406840 <sn_write+0x50>
  40689c:	48 89 ce             	mov    %rcx,%rsi
  40689f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4068a3:	e8 c5 f3 ff ff       	call   405c6d <memcpy>
  4068a8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4068ac:	49 8b 3c 24          	mov    (%r12),%rdi
  4068b0:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  4068b5:	48 01 d7             	add    %rdx,%rdi
  4068b8:	49 89 3c 24          	mov    %rdi,(%r12)
  4068bc:	eb 82                	jmp    406840 <sn_write+0x50>
  4068be:	66 90                	xchg   %ax,%ax

00000000004068c0 <vsnprintf>:
  4068c0:	f3 0f 1e fa          	endbr64
  4068c4:	55                   	push   %rbp
  4068c5:	49 89 c9             	mov    %rcx,%r9
  4068c8:	49 89 d0             	mov    %rdx,%r8
  4068cb:	48 89 e5             	mov    %rsp,%rbp
  4068ce:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  4068d5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4068dc:	00 00 
  4068de:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4068e2:	31 c0                	xor    %eax,%eax
  4068e4:	48 85 f6             	test   %rsi,%rsi
  4068e7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4068eb:	0f 95 c1             	setne  %cl
  4068ee:	48 0f 45 d7          	cmovne %rdi,%rdx
  4068f2:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4068f9:	0f b6 c9             	movzbl %cl,%ecx
  4068fc:	48 29 ce             	sub    %rcx,%rsi
  4068ff:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406904:	c6 02 00             	movb   $0x0,(%rdx)
  406907:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40690e:	4c 89 ca             	mov    %r9,%rdx
  406911:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406918:	4c 89 c6             	mov    %r8,%rsi
  40691b:	f3 48 ab             	rep stos %rax,(%rdi)
  40691e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 4067f0 <sn_write>
  406925:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40692c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406933:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406937:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40693e:	48 8b 05 7b 24 00 00 	mov    0x247b(%rip),%rax        # 408dc0 <errmsgstr+0x780>
  406945:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406949:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406950:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406954:	e8 77 f0 ff ff       	call   4059d0 <vfprintf>
  406959:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40695d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406964:	00 00 
  406966:	75 02                	jne    40696a <vsnprintf+0xaa>
  406968:	c9                   	leave
  406969:	c3                   	ret
  40696a:	e8 91 be ff ff       	call   402800 <__stack_chk_fail>
  40696f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406976:	00 00 00 
  406979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406980 <memchr>:
  406980:	f3 0f 1e fa          	endbr64
  406984:	48 89 d0             	mov    %rdx,%rax
  406987:	40 0f b6 ce          	movzbl %sil,%ecx
  40698b:	40 f6 c7 07          	test   $0x7,%dil
  40698f:	75 1c                	jne    4069ad <memchr+0x2d>
  406991:	eb 2d                	jmp    4069c0 <memchr+0x40>
  406993:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406998:	0f b6 17             	movzbl (%rdi),%edx
  40699b:	39 ca                	cmp    %ecx,%edx
  40699d:	74 28                	je     4069c7 <memchr+0x47>
  40699f:	48 83 c7 01          	add    $0x1,%rdi
  4069a3:	48 83 e8 01          	sub    $0x1,%rax
  4069a7:	40 f6 c7 07          	test   $0x7,%dil
  4069ab:	74 13                	je     4069c0 <memchr+0x40>
  4069ad:	48 85 c0             	test   %rax,%rax
  4069b0:	75 e6                	jne    406998 <memchr+0x18>
  4069b2:	31 d2                	xor    %edx,%edx
  4069b4:	48 89 d0             	mov    %rdx,%rax
  4069b7:	c3                   	ret
  4069b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4069bf:	00 
  4069c0:	31 d2                	xor    %edx,%edx
  4069c2:	48 85 c0             	test   %rax,%rax
  4069c5:	74 ed                	je     4069b4 <memchr+0x34>
  4069c7:	0f b6 17             	movzbl (%rdi),%edx
  4069ca:	39 ca                	cmp    %ecx,%edx
  4069cc:	0f 84 ce 00 00 00    	je     406aa0 <memchr+0x120>
  4069d2:	48 83 f8 07          	cmp    $0x7,%rax
  4069d6:	0f 86 c4 00 00 00    	jbe    406aa0 <memchr+0x120>
  4069dc:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4069e3:	01 01 01 
  4069e6:	4c 63 c1             	movslq %ecx,%r8
  4069e9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4069f0:	fe fe fe 
  4069f3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4069fa:	80 80 80 
  4069fd:	4c 0f af c2          	imul   %rdx,%r8
  406a01:	48 89 fa             	mov    %rdi,%rdx
  406a04:	eb 48                	jmp    406a4e <memchr+0xce>
  406a06:	0f 1f 00             	nopl   (%rax)
  406a09:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a10:	00 00 00 00 
  406a14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a1b:	00 00 00 00 
  406a1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a26:	00 00 00 00 
  406a2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a31:	00 00 00 00 
  406a35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a3c:	00 00 00 00 
  406a40:	48 83 e8 08          	sub    $0x8,%rax
  406a44:	48 83 c2 08          	add    $0x8,%rdx
  406a48:	48 83 f8 07          	cmp    $0x7,%rax
  406a4c:	76 5a                	jbe    406aa8 <memchr+0x128>
  406a4e:	48 8b 32             	mov    (%rdx),%rsi
  406a51:	4c 31 c6             	xor    %r8,%rsi
  406a54:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406a58:	48 f7 d6             	not    %rsi
  406a5b:	48 21 fe             	and    %rdi,%rsi
  406a5e:	4c 85 ce             	test   %r9,%rsi
  406a61:	74 dd                	je     406a40 <memchr+0xc0>
  406a63:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a71:	00 00 00 00 
  406a75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a7c:	00 00 00 00 
  406a80:	0f b6 32             	movzbl (%rdx),%esi
  406a83:	39 ce                	cmp    %ecx,%esi
  406a85:	0f 84 29 ff ff ff    	je     4069b4 <memchr+0x34>
  406a8b:	48 83 c2 01          	add    $0x1,%rdx
  406a8f:	48 83 e8 01          	sub    $0x1,%rax
  406a93:	75 eb                	jne    406a80 <memchr+0x100>
  406a95:	e9 18 ff ff ff       	jmp    4069b2 <memchr+0x32>
  406a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406aa0:	48 89 fa             	mov    %rdi,%rdx
  406aa3:	eb db                	jmp    406a80 <memchr+0x100>
  406aa5:	0f 1f 00             	nopl   (%rax)
  406aa8:	48 85 c0             	test   %rax,%rax
  406aab:	75 d3                	jne    406a80 <memchr+0x100>
  406aad:	e9 00 ff ff ff       	jmp    4069b2 <memchr+0x32>
  406ab2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406ab9:	00 00 00 
  406abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406ac0 <__stpcpy>:
  406ac0:	f3 0f 1e fa          	endbr64
  406ac4:	48 89 f9             	mov    %rdi,%rcx
  406ac7:	48 89 f8             	mov    %rdi,%rax
  406aca:	48 89 f2             	mov    %rsi,%rdx
  406acd:	48 31 f1             	xor    %rsi,%rcx
  406ad0:	83 e1 07             	and    $0x7,%ecx
  406ad3:	74 5c                	je     406b31 <__stpcpy+0x71>
  406ad5:	0f b6 0a             	movzbl (%rdx),%ecx
  406ad8:	88 08                	mov    %cl,(%rax)
  406ada:	84 c9                	test   %cl,%cl
  406adc:	0f 84 c6 00 00 00    	je     406ba8 <__stpcpy+0xe8>
  406ae2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406ae9:	00 
  406aea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406af1:	00 00 00 00 
  406af5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406afc:	00 00 00 00 
  406b00:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406b04:	48 83 c2 01          	add    $0x1,%rdx
  406b08:	48 83 c0 01          	add    $0x1,%rax
  406b0c:	88 08                	mov    %cl,(%rax)
  406b0e:	84 c9                	test   %cl,%cl
  406b10:	75 ee                	jne    406b00 <__stpcpy+0x40>
  406b12:	c3                   	ret
  406b13:	66 90                	xchg   %ax,%ax
  406b15:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b1c:	00 00 00 00 
  406b20:	0f b6 0a             	movzbl (%rdx),%ecx
  406b23:	88 08                	mov    %cl,(%rax)
  406b25:	84 c9                	test   %cl,%cl
  406b27:	74 e9                	je     406b12 <__stpcpy+0x52>
  406b29:	48 83 c2 01          	add    $0x1,%rdx
  406b2d:	48 83 c0 01          	add    $0x1,%rax
  406b31:	f6 c2 07             	test   $0x7,%dl
  406b34:	75 ea                	jne    406b20 <__stpcpy+0x60>
  406b36:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  406b3d:	fe fe fe 
  406b40:	48 8b 0a             	mov    (%rdx),%rcx
  406b43:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  406b4a:	80 80 80 
  406b4d:	48 89 cf             	mov    %rcx,%rdi
  406b50:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406b54:	48 f7 d7             	not    %rdi
  406b57:	48 21 fe             	and    %rdi,%rsi
  406b5a:	4c 85 ce             	test   %r9,%rsi
  406b5d:	0f 85 72 ff ff ff    	jne    406ad5 <__stpcpy+0x15>
  406b63:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b71:	00 00 00 00 
  406b75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406b7c:	00 00 00 00 
  406b80:	48 83 c2 08          	add    $0x8,%rdx
  406b84:	48 89 08             	mov    %rcx,(%rax)
  406b87:	48 83 c0 08          	add    $0x8,%rax
  406b8b:	48 8b 0a             	mov    (%rdx),%rcx
  406b8e:	48 89 cf             	mov    %rcx,%rdi
  406b91:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406b95:	48 f7 d7             	not    %rdi
  406b98:	48 21 fe             	and    %rdi,%rsi
  406b9b:	4c 85 ce             	test   %r9,%rsi
  406b9e:	74 e0                	je     406b80 <__stpcpy+0xc0>
  406ba0:	e9 30 ff ff ff       	jmp    406ad5 <__stpcpy+0x15>
  406ba5:	0f 1f 00             	nopl   (%rax)
  406ba8:	c3                   	ret
  406ba9:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406bb0:	00 00 00 
  406bb3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406bba:	00 00 00 
  406bbd:	0f 1f 00             	nopl   (%rax)

0000000000406bc0 <strlen>:
  406bc0:	f3 0f 1e fa          	endbr64
  406bc4:	49 89 f8             	mov    %rdi,%r8
  406bc7:	48 89 f8             	mov    %rdi,%rax
  406bca:	40 f6 c7 07          	test   $0x7,%dil
  406bce:	75 18                	jne    406be8 <strlen+0x28>
  406bd0:	eb 26                	jmp    406bf8 <strlen+0x38>
  406bd2:	0f 1f 00             	nopl   (%rax)
  406bd5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406bdc:	00 00 00 00 
  406be0:	48 83 c0 01          	add    $0x1,%rax
  406be4:	a8 07                	test   $0x7,%al
  406be6:	74 10                	je     406bf8 <strlen+0x38>
  406be8:	80 38 00             	cmpb   $0x0,(%rax)
  406beb:	75 f3                	jne    406be0 <strlen+0x20>
  406bed:	4c 29 c0             	sub    %r8,%rax
  406bf0:	c3                   	ret
  406bf1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406bf8:	48 bf ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rdi
  406bff:	fe fe fe 
  406c02:	48 8b 10             	mov    (%rax),%rdx
  406c05:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  406c0c:	80 80 80 
  406c0f:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406c13:	48 f7 d2             	not    %rdx
  406c16:	48 21 ca             	and    %rcx,%rdx
  406c19:	48 85 f2             	test   %rsi,%rdx
  406c1c:	75 26                	jne    406c44 <strlen+0x84>
  406c1e:	66 90                	xchg   %ax,%ax
  406c20:	48 8b 50 08          	mov    0x8(%rax),%rdx
  406c24:	48 83 c0 08          	add    $0x8,%rax
  406c28:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406c2c:	48 f7 d2             	not    %rdx
  406c2f:	48 21 ca             	and    %rcx,%rdx
  406c32:	48 85 f2             	test   %rsi,%rdx
  406c35:	74 e9                	je     406c20 <strlen+0x60>
  406c37:	eb 0b                	jmp    406c44 <strlen+0x84>
  406c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c40:	48 83 c0 01          	add    $0x1,%rax
  406c44:	80 38 00             	cmpb   $0x0,(%rax)
  406c47:	75 f7                	jne    406c40 <strlen+0x80>
  406c49:	4c 29 c0             	sub    %r8,%rax
  406c4c:	c3                   	ret

0000000000406c4d <__set_thread_area>:
  406c4d:	48 89 fe             	mov    %rdi,%rsi
  406c50:	bf 02 10 00 00       	mov    $0x1002,%edi
  406c55:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406c5a:	0f 05                	syscall
  406c5c:	c3                   	ret
  406c5d:	0f 1f 00             	nopl   (%rax)

0000000000406c60 <__lseek>:
  406c60:	f3 0f 1e fa          	endbr64
  406c64:	48 63 ff             	movslq %edi,%rdi
  406c67:	48 63 d2             	movslq %edx,%rdx
  406c6a:	b8 08 00 00 00       	mov    $0x8,%eax
  406c6f:	0f 05                	syscall
  406c71:	48 89 c7             	mov    %rax,%rdi
  406c74:	e9 07 00 00 00       	jmp    406c80 <__syscall_ret>
  406c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406c80 <__syscall_ret>:
  406c80:	f3 0f 1e fa          	endbr64
  406c84:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406c8b:	77 0b                	ja     406c98 <__syscall_ret+0x18>
  406c8d:	48 89 f8             	mov    %rdi,%rax
  406c90:	c3                   	ret
  406c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c98:	55                   	push   %rbp
  406c99:	48 89 e5             	mov    %rsp,%rbp
  406c9c:	53                   	push   %rbx
  406c9d:	48 89 fb             	mov    %rdi,%rbx
  406ca0:	48 83 ec 08          	sub    $0x8,%rsp
  406ca4:	e8 27 f4 ff ff       	call   4060d0 <__errno_location>
  406ca9:	89 df                	mov    %ebx,%edi
  406cab:	f7 df                	neg    %edi
  406cad:	89 38                	mov    %edi,(%rax)
  406caf:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406cb6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406cba:	c9                   	leave
  406cbb:	c3                   	ret
  406cbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406cc0 <wcrtomb>:
  406cc0:	f3 0f 1e fa          	endbr64
  406cc4:	48 85 ff             	test   %rdi,%rdi
  406cc7:	0f 84 d6 00 00 00    	je     406da3 <wcrtomb+0xe3>
  406ccd:	83 fe 7f             	cmp    $0x7f,%esi
  406cd0:	0f 86 ca 00 00 00    	jbe    406da0 <wcrtomb+0xe0>
  406cd6:	55                   	push   %rbp
  406cd7:	89 f0                	mov    %esi,%eax
  406cd9:	48 89 f9             	mov    %rdi,%rcx
  406cdc:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406ce3:	00 00 
  406ce5:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406cec:	48 89 e5             	mov    %rsp,%rbp
  406cef:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406cf3:	74 53                	je     406d48 <wcrtomb+0x88>
  406cf5:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406cfb:	0f 86 af 00 00 00    	jbe    406db0 <wcrtomb+0xf0>
  406d01:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406d07:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406d0d:	0f 86 bd 00 00 00    	jbe    406dd0 <wcrtomb+0x110>
  406d13:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406d19:	0f 86 b1 00 00 00    	jbe    406dd0 <wcrtomb+0x110>
  406d1f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406d25:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406d2b:	76 33                	jbe    406d60 <wcrtomb+0xa0>
  406d2d:	e8 9e f3 ff ff       	call   4060d0 <__errno_location>
  406d32:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406d38:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406d3f:	5d                   	pop    %rbp
  406d40:	c3                   	ret
  406d41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406d48:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406d4d:	83 f8 7f             	cmp    $0x7f,%eax
  406d50:	77 db                	ja     406d2d <wcrtomb+0x6d>
  406d52:	40 88 37             	mov    %sil,(%rdi)
  406d55:	b8 01 00 00 00       	mov    $0x1,%eax
  406d5a:	5d                   	pop    %rbp
  406d5b:	c3                   	ret
  406d5c:	0f 1f 40 00          	nopl   0x0(%rax)
  406d60:	89 c7                	mov    %eax,%edi
  406d62:	83 e0 3f             	and    $0x3f,%eax
  406d65:	89 f2                	mov    %esi,%edx
  406d67:	c1 fe 0c             	sar    $0xc,%esi
  406d6a:	c1 ff 06             	sar    $0x6,%edi
  406d6d:	c1 e0 08             	shl    $0x8,%eax
  406d70:	83 e6 3f             	and    $0x3f,%esi
  406d73:	83 e7 3f             	and    $0x3f,%edi
  406d76:	c1 fa 12             	sar    $0x12,%edx
  406d79:	09 f8                	or     %edi,%eax
  406d7b:	0f b6 d2             	movzbl %dl,%edx
  406d7e:	c1 e0 08             	shl    $0x8,%eax
  406d81:	09 f0                	or     %esi,%eax
  406d83:	8b 35 67 17 00 00    	mov    0x1767(%rip),%esi        # 4084f0 <states+0x1f0>
  406d89:	c1 e0 08             	shl    $0x8,%eax
  406d8c:	09 d0                	or     %edx,%eax
  406d8e:	09 f0                	or     %esi,%eax
  406d90:	89 01                	mov    %eax,(%rcx)
  406d92:	b8 04 00 00 00       	mov    $0x4,%eax
  406d97:	5d                   	pop    %rbp
  406d98:	c3                   	ret
  406d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406da0:	40 88 37             	mov    %sil,(%rdi)
  406da3:	b8 01 00 00 00       	mov    $0x1,%eax
  406da8:	c3                   	ret
  406da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406db0:	89 f2                	mov    %esi,%edx
  406db2:	83 e0 3f             	and    $0x3f,%eax
  406db5:	c1 fa 06             	sar    $0x6,%edx
  406db8:	83 c8 80             	or     $0xffffff80,%eax
  406dbb:	83 ca c0             	or     $0xffffffc0,%edx
  406dbe:	88 47 01             	mov    %al,0x1(%rdi)
  406dc1:	b8 02 00 00 00       	mov    $0x2,%eax
  406dc6:	88 17                	mov    %dl,(%rdi)
  406dc8:	5d                   	pop    %rbp
  406dc9:	c3                   	ret
  406dca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406dd0:	89 c2                	mov    %eax,%edx
  406dd2:	c1 fa 0c             	sar    $0xc,%edx
  406dd5:	83 ca e0             	or     $0xffffffe0,%edx
  406dd8:	88 11                	mov    %dl,(%rcx)
  406dda:	89 c2                	mov    %eax,%edx
  406ddc:	83 e0 3f             	and    $0x3f,%eax
  406ddf:	c1 fa 06             	sar    $0x6,%edx
  406de2:	83 c8 80             	or     $0xffffff80,%eax
  406de5:	83 e2 3f             	and    $0x3f,%edx
  406de8:	88 41 02             	mov    %al,0x2(%rcx)
  406deb:	b8 03 00 00 00       	mov    $0x3,%eax
  406df0:	83 ca 80             	or     $0xffffff80,%edx
  406df3:	88 51 01             	mov    %dl,0x1(%rcx)
  406df6:	5d                   	pop    %rbp
  406df7:	c3                   	ret
  406df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406dff:	00 

0000000000406e00 <close_file>:
  406e00:	48 85 ff             	test   %rdi,%rdi
  406e03:	74 6b                	je     406e70 <close_file+0x70>
  406e05:	55                   	push   %rbp
  406e06:	48 89 e5             	mov    %rsp,%rbp
  406e09:	53                   	push   %rbx
  406e0a:	48 89 fb             	mov    %rdi,%rbx
  406e0d:	48 83 ec 08          	sub    $0x8,%rsp
  406e11:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406e17:	85 c0                	test   %eax,%eax
  406e19:	79 3d                	jns    406e58 <close_file+0x58>
  406e1b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406e1f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406e23:	74 0a                	je     406e2f <close_file+0x2f>
  406e25:	31 d2                	xor    %edx,%edx
  406e27:	31 f6                	xor    %esi,%esi
  406e29:	48 89 df             	mov    %rbx,%rdi
  406e2c:	ff 53 48             	call   *0x48(%rbx)
  406e2f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406e33:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406e37:	48 39 c6             	cmp    %rax,%rsi
  406e3a:	74 24                	je     406e60 <close_file+0x60>
  406e3c:	48 29 c6             	sub    %rax,%rsi
  406e3f:	48 89 df             	mov    %rbx,%rdi
  406e42:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406e46:	ba 01 00 00 00       	mov    $0x1,%edx
  406e4b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406e4f:	c9                   	leave
  406e50:	ff e0                	jmp    *%rax
  406e52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e58:	e8 a3 f4 ff ff       	call   406300 <__lockfile>
  406e5d:	eb bc                	jmp    406e1b <close_file+0x1b>
  406e5f:	90                   	nop
  406e60:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406e64:	c9                   	leave
  406e65:	c3                   	ret
  406e66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406e6d:	00 00 00 
  406e70:	c3                   	ret
  406e71:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406e78:	00 00 00 
  406e7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406e80 <__stdio_exit>:
  406e80:	f3 0f 1e fa          	endbr64
  406e84:	55                   	push   %rbp
  406e85:	48 89 e5             	mov    %rsp,%rbp
  406e88:	53                   	push   %rbx
  406e89:	48 83 ec 08          	sub    $0x8,%rsp
  406e8d:	e8 7e 01 00 00       	call   407010 <__ofl_lock>
  406e92:	48 8b 18             	mov    (%rax),%rbx
  406e95:	48 85 db             	test   %rbx,%rbx
  406e98:	74 17                	je     406eb1 <__stdio_exit+0x31>
  406e9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ea0:	48 89 df             	mov    %rbx,%rdi
  406ea3:	e8 58 ff ff ff       	call   406e00 <close_file>
  406ea8:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406eac:	48 85 db             	test   %rbx,%rbx
  406eaf:	75 ef                	jne    406ea0 <__stdio_exit+0x20>
  406eb1:	48 8b 3d e0 48 00 00 	mov    0x48e0(%rip),%rdi        # 40b798 <__stderr_used>
  406eb8:	e8 43 ff ff ff       	call   406e00 <close_file>
  406ebd:	48 8b 3d 44 41 00 00 	mov    0x4144(%rip),%rdi        # 40b008 <__stdout_used>
  406ec4:	e8 37 ff ff ff       	call   406e00 <close_file>
  406ec9:	48 8b 3d c8 48 00 00 	mov    0x48c8(%rip),%rdi        # 40b798 <__stderr_used>
  406ed0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406ed4:	c9                   	leave
  406ed5:	e9 26 ff ff ff       	jmp    406e00 <close_file>
  406eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406ee0 <__stdio_write>:
  406ee0:	f3 0f 1e fa          	endbr64
  406ee4:	55                   	push   %rbp
  406ee5:	48 89 e5             	mov    %rsp,%rbp
  406ee8:	41 57                	push   %r15
  406eea:	41 56                	push   %r14
  406eec:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406ef0:	41 55                	push   %r13
  406ef2:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406ef8:	41 54                	push   %r12
  406efa:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406f00:	53                   	push   %rbx
  406f01:	48 89 fb             	mov    %rdi,%rbx
  406f04:	48 83 ec 48          	sub    $0x48,%rsp
  406f08:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406f0c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406f10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406f17:	00 00 
  406f19:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406f1d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406f21:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406f25:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406f29:	49 29 c0             	sub    %rax,%r8
  406f2c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406f30:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406f34:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406f38:	eb 37                	jmp    406f71 <__stdio_write+0x91>
  406f3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406f40:	48 85 c0             	test   %rax,%rax
  406f43:	0f 88 8f 00 00 00    	js     406fd8 <__stdio_write+0xf8>
  406f49:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406f4d:	49 29 c6             	sub    %rax,%r14
  406f50:	48 39 c2             	cmp    %rax,%rdx
  406f53:	73 12                	jae    406f67 <__stdio_write+0x87>
  406f55:	41 83 ed 01          	sub    $0x1,%r13d
  406f59:	48 29 d0             	sub    %rdx,%rax
  406f5c:	49 83 c7 10          	add    $0x10,%r15
  406f60:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406f64:	4d 63 e5             	movslq %r13d,%r12
  406f67:	48 29 c2             	sub    %rax,%rdx
  406f6a:	49 01 07             	add    %rax,(%r15)
  406f6d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406f71:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406f75:	b8 14 00 00 00       	mov    $0x14,%eax
  406f7a:	4c 89 fe             	mov    %r15,%rsi
  406f7d:	4c 89 e2             	mov    %r12,%rdx
  406f80:	0f 05                	syscall
  406f82:	48 89 c7             	mov    %rax,%rdi
  406f85:	e8 f6 fc ff ff       	call   406c80 <__syscall_ret>
  406f8a:	49 39 c6             	cmp    %rax,%r14
  406f8d:	75 b1                	jne    406f40 <__stdio_write+0x60>
  406f8f:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406f93:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406f97:	48 01 c1             	add    %rax,%rcx
  406f9a:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406f9f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406fa3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406fa7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406fac:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406fb0:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406fb4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406fb8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406fbf:	00 00 
  406fc1:	75 3a                	jne    406ffd <__stdio_write+0x11d>
  406fc3:	48 83 c4 48          	add    $0x48,%rsp
  406fc7:	5b                   	pop    %rbx
  406fc8:	41 5c                	pop    %r12
  406fca:	41 5d                	pop    %r13
  406fcc:	41 5e                	pop    %r14
  406fce:	41 5f                	pop    %r15
  406fd0:	5d                   	pop    %rbp
  406fd1:	c3                   	ret
  406fd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406fd8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406fdc:	83 0b 20             	orl    $0x20,(%rbx)
  406fdf:	31 c0                	xor    %eax,%eax
  406fe1:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406fe8:	00 
  406fe9:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406fed:	41 83 fd 02          	cmp    $0x2,%r13d
  406ff1:	74 c1                	je     406fb4 <__stdio_write+0xd4>
  406ff3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406ff7:	49 2b 47 08          	sub    0x8(%r15),%rax
  406ffb:	eb b7                	jmp    406fb4 <__stdio_write+0xd4>
  406ffd:	e8 fe b7 ff ff       	call   402800 <__stack_chk_fail>
  407002:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  407009:	00 00 00 
  40700c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407010 <__ofl_lock>:
  407010:	f3 0f 1e fa          	endbr64
  407014:	55                   	push   %rbp
  407015:	48 8d 3d 84 47 00 00 	lea    0x4784(%rip),%rdi        # 40b7a0 <ofl_lock>
  40701c:	48 89 e5             	mov    %rsp,%rbp
  40701f:	e8 1c 00 00 00       	call   407040 <__lock>
  407024:	48 8d 05 7d 47 00 00 	lea    0x477d(%rip),%rax        # 40b7a8 <ofl_head>
  40702b:	5d                   	pop    %rbp
  40702c:	c3                   	ret
  40702d:	0f 1f 00             	nopl   (%rax)

0000000000407030 <__ofl_unlock>:
  407030:	f3 0f 1e fa          	endbr64
  407034:	48 8d 3d 65 47 00 00 	lea    0x4765(%rip),%rdi        # 40b7a0 <ofl_lock>
  40703b:	e9 e0 00 00 00       	jmp    407120 <__unlock>

0000000000407040 <__lock>:
  407040:	f3 0f 1e fa          	endbr64
  407044:	0f be 0d 18 41 00 00 	movsbl 0x4118(%rip),%ecx        # 40b163 <__libc+0x3>
  40704b:	85 c9                	test   %ecx,%ecx
  40704d:	74 51                	je     4070a0 <__lock+0x60>
  40704f:	31 c0                	xor    %eax,%eax
  407051:	ba 01 00 00 80       	mov    $0x80000001,%edx
  407056:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  40705a:	89 c2                	mov    %eax,%edx
  40705c:	85 c9                	test   %ecx,%ecx
  40705e:	78 48                	js     4070a8 <__lock+0x68>
  407060:	85 c0                	test   %eax,%eax
  407062:	74 3c                	je     4070a0 <__lock+0x60>
  407064:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  40706a:	eb 1e                	jmp    40708a <__lock+0x4a>
  40706c:	0f 1f 40 00          	nopl   0x0(%rax)
  407070:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  407076:	89 d1                	mov    %edx,%ecx
  407078:	89 c8                	mov    %ecx,%eax
  40707a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  40707e:	89 c2                	mov    %eax,%edx
  407080:	39 c1                	cmp    %eax,%ecx
  407082:	74 1c                	je     4070a0 <__lock+0x60>
  407084:	41 83 e8 01          	sub    $0x1,%r8d
  407088:	74 2e                	je     4070b8 <__lock+0x78>
  40708a:	85 d2                	test   %edx,%edx
  40708c:	79 e2                	jns    407070 <__lock+0x30>
  40708e:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  407094:	89 d6                	mov    %edx,%esi
  407096:	eb e0                	jmp    407078 <__lock+0x38>
  407098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40709f:	00 
  4070a0:	c3                   	ret
  4070a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4070a8:	c6 05 b4 40 00 00 00 	movb   $0x0,0x40b4(%rip)        # 40b163 <__libc+0x3>
  4070af:	85 c0                	test   %eax,%eax
  4070b1:	75 b1                	jne    407064 <__lock+0x24>
  4070b3:	c3                   	ret
  4070b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4070b8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4070be:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  4070c3:	41 83 c0 01          	add    $0x1,%r8d
  4070c7:	eb 1c                	jmp    4070e5 <__lock+0xa5>
  4070c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4070d0:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  4070d7:	89 d0                	mov    %edx,%eax
  4070d9:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  4070de:	41 89 c0             	mov    %eax,%r8d
  4070e1:	39 c2                	cmp    %eax,%edx
  4070e3:	74 bb                	je     4070a0 <__lock+0x60>
  4070e5:	44 89 c2             	mov    %r8d,%edx
  4070e8:	45 85 c0             	test   %r8d,%r8d
  4070eb:	79 e3                	jns    4070d0 <__lock+0x90>
  4070ed:	49 63 d0             	movslq %r8d,%rdx
  4070f0:	45 31 d2             	xor    %r10d,%r10d
  4070f3:	b8 ca 00 00 00       	mov    $0xca,%eax
  4070f8:	be 80 00 00 00       	mov    $0x80,%esi
  4070fd:	0f 05                	syscall
  4070ff:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407103:	75 09                	jne    40710e <__lock+0xce>
  407105:	31 f6                	xor    %esi,%esi
  407107:	b8 ca 00 00 00       	mov    $0xca,%eax
  40710c:	0f 05                	syscall
  40710e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  407115:	eb b9                	jmp    4070d0 <__lock+0x90>
  407117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40711e:	00 00 

0000000000407120 <__unlock>:
  407120:	f3 0f 1e fa          	endbr64
  407124:	8b 07                	mov    (%rdi),%eax
  407126:	85 c0                	test   %eax,%eax
  407128:	78 06                	js     407130 <__unlock+0x10>
  40712a:	c3                   	ret
  40712b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407130:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  407135:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  407139:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  40713e:	74 ea                	je     40712a <__unlock+0xa>
  407140:	be 81 00 00 00       	mov    $0x81,%esi
  407145:	b8 ca 00 00 00       	mov    $0xca,%eax
  40714a:	ba 01 00 00 00       	mov    $0x1,%edx
  40714f:	0f 05                	syscall
  407151:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407155:	75 d3                	jne    40712a <__unlock+0xa>
  407157:	b8 ca 00 00 00       	mov    $0xca,%eax
  40715c:	be 01 00 00 00       	mov    $0x1,%esi
  407161:	0f 05                	syscall
  407163:	c3                   	ret

Disassembly of section .fini:

0000000000407164 <_fini>:
  407164:	50                   	push   %rax
  407165:	58                   	pop    %rax
  407166:	c3                   	ret
