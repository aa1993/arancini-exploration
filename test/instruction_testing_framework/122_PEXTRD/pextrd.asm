
test_pextrd_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 9c 17 00 00       	call   4027f0 <__funcs_on_exit>
  401054:	e8 a7 17 00 00       	call   402800 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 80 5b 00 00       	call   406be0 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 d9 4f 00 00       	call   406040 <_Exit>

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
  40108a:	49 c7 c0 c4 6e 40 00 	mov    $0x406ec4,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 53 23 40 00 	mov    $0x402353,%rdi
  4010a2:	e9 79 16 00 00       	jmp    402720 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 57 00 00 	lea    0x57fa(%rip),%rcx        # 407000 <_fini+0x13c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 e2 10 00 00       	call   402910 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 d9 42 00 00       	call   405b20 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 84 0f 00 00       	call   4027e0 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 57 00 00 	lea    0x5777(%rip),%rcx        # 407021 <_fini+0x15d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 46 10 00 00       	call   402910 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 3d 42 00 00       	call   405b20 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 e8 0e 00 00       	call   4027e0 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 55 00 00 	lea    0x55ce(%rip),%rsi        # 407030 <_fini+0x16c>
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
  401a9f:	e8 6c 0e 00 00       	call   402910 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 5f 40 00 00       	call   405b20 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 0a 0d 00 00       	call   4027e0 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 54 00 00 	lea    0x54d7(%rip),%rsi        # 407078 <_fini+0x1b4>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 4e 0d 00 00       	call   402910 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 41 3f 00 00       	call   405b20 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 ec 0b 00 00       	call   4027e0 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 54 00 00 	lea    0x543b(%rip),%rsi        # 407099 <_fini+0x1d5>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 98 0c 00 00       	call   402910 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 8f 3e 00 00       	call   405b20 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 3a 0b 00 00       	call   4027e0 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 53 00 00 	lea    0x53b7(%rip),%rsi        # 4070aa <_fini+0x1e6>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 09 0c 00 00       	call   402910 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 00 3e 00 00       	call   405b20 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 ab 0a 00 00       	call   4027e0 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 51 00 00 	lea    0x5191(%rip),%rsi        # 407030 <_fini+0x16c>
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
  401edc:	e8 2f 0a 00 00       	call   402910 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 22 3c 00 00       	call   405b20 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 cd 08 00 00       	call   4027e0 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 50 00 00 	lea    0x509a(%rip),%rsi        # 407078 <_fini+0x1b4>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 11 09 00 00       	call   402910 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 04 3b 00 00       	call   405b20 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 af 07 00 00       	call   4027e0 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 50 00 00 	lea    0x501a(%rip),%rsi        # 4070b5 <_fini+0x1f1>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 5b 08 00 00       	call   402910 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 52 3a 00 00       	call   405b20 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 fd 06 00 00       	call   4027e0 <__stack_chk_fail>
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
  402129:	48 8d 35 96 4f 00 00 	lea    0x4f96(%rip),%rsi        # 4070c6 <_fini+0x202>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 cc 07 00 00       	call   402910 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 c3 39 00 00       	call   405b20 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 6e 06 00 00       	call   4027e0 <__stack_chk_fail>
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
  402202:	48 8d 35 cf 4e 00 00 	lea    0x4ecf(%rip),%rsi        # 4070d8 <_fini+0x214>
  402209:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402210:	41 50                	push   %r8
  402212:	57                   	push   %rdi
  402213:	4d 89 d0             	mov    %r10,%r8
  402216:	48 89 c7             	mov    %rax,%rdi
  402219:	b8 00 00 00 00       	mov    $0x0,%eax
  40221e:	e8 ed 06 00 00       	call   402910 <sprintf>
  402223:	48 83 c4 10          	add    $0x10,%rsp
          );
    strcpy(dest, res);
  402227:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40222e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402235:	48 89 d6             	mov    %rdx,%rsi
  402238:	48 89 c7             	mov    %rax,%rdi
  40223b:	e8 e0 38 00 00       	call   405b20 <strcpy>
}
  402240:	90                   	nop
  402241:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402245:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40224c:	00 00 
  40224e:	74 05                	je     402255 <flags_to_string+0xe1>
  402250:	e8 8b 05 00 00       	call   4027e0 <__stack_chk_fail>
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
  4022f3:	48 8d 35 15 4e 00 00 	lea    0x4e15(%rip),%rsi        # 40710f <_fini+0x24b>
  4022fa:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  402301:	41 52                	push   %r10
  402303:	41 51                	push   %r9
  402305:	41 50                	push   %r8
  402307:	57                   	push   %rdi
  402308:	41 89 d9             	mov    %ebx,%r9d
  40230b:	45 89 d8             	mov    %r11d,%r8d
  40230e:	48 89 c7             	mov    %rax,%rdi
  402311:	b8 00 00 00 00       	mov    $0x0,%eax
  402316:	e8 f5 05 00 00       	call   402910 <sprintf>
  40231b:	48 83 c4 20          	add    $0x20,%rsp
          src>>0 & 1
          );
    strcpy(dest, res);
  40231f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  402326:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  40232d:	48 89 d6             	mov    %rdx,%rsi
  402330:	48 89 c7             	mov    %rax,%rdi
  402333:	e8 e8 37 00 00       	call   405b20 <strcpy>
}
  402338:	90                   	nop
  402339:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40233d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402344:	00 00 
  402346:	74 05                	je     40234d <imm8_to_string+0xf6>
  402348:	e8 93 04 00 00       	call   4027e0 <__stack_chk_fail>
  40234d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402351:	c9                   	leave
  402352:	c3                   	ret

0000000000402353 <main>:
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"
int main() {
  402353:	f3 0f 1e fa          	endbr64
  402357:	55                   	push   %rbp
  402358:	48 89 e5             	mov    %rsp,%rbp
  40235b:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  402362:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402369:	00 00 
  40236b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40236f:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402371:	c7 85 e0 fe ff ff df 	movl   $0x197f10df,-0x120(%rbp)
  402378:	10 7f 19 
  40237b:	c7 85 e4 fe ff ff 98 	movl   $0x35d64898,-0x11c(%rbp)
  402382:	48 d6 35 
  402385:	c7 85 e8 fe ff ff b9 	movl   $0x8a2ca0b9,-0x118(%rbp)
  40238c:	a0 2c 8a 
  40238f:	c7 85 ec fe ff ff 84 	movl   $0xf7194d84,-0x114(%rbp)
  402396:	4d 19 f7 
    C_OUT_TYPE con = CON;
  402399:	c7 85 c8 fe ff ff b9 	movl   $0x8a2ca0b9,-0x138(%rbp)
  4023a0:	a0 2c 8a 
    C_OUT_TYPE out;

    SSE_TYPE v1;
    INSERT(&v1, in1);
  4023a3:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4023aa:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
  4023b1:	48 89 d6             	mov    %rdx,%rsi
  4023b4:	48 89 c7             	mov    %rax,%rdi
  4023b7:	e8 e8 f1 ff ff       	call   4015a4 <insert_i32>

    out = INTRINSIC_FUN(v1, IMM8);
  4023bc:	66 0f 6f 85 d0 fe ff 	movdqa -0x130(%rbp),%xmm0
  4023c3:	ff 
  4023c4:	66 0f 3a 16 c0 02    	pextrd $0x2,%xmm0,%eax
  4023ca:	89 85 cc fe ff ff    	mov    %eax,-0x134(%rbp)

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  4023d0:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4023d7:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4023de:	48 89 d6             	mov    %rdx,%rsi
  4023e1:	48 89 c7             	mov    %rax,%rdi
  4023e4:	e8 11 f8 ff ff       	call   401bfa <to_string_i32>

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%d\n |\n\\/\n%d\n",in1_s, IMM8, out);
  4023e9:	8b 95 cc fe ff ff    	mov    -0x134(%rbp),%edx
  4023ef:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4023f6:	48 8d 3d 25 4d 00 00 	lea    0x4d25(%rip),%rdi        # 407122 <_fini+0x25e>
  4023fd:	89 d1                	mov    %edx,%ecx
  4023ff:	ba 02 00 00 00       	mov    $0x2,%edx
  402404:	48 89 c6             	mov    %rax,%rsi
  402407:	b8 00 00 00 00       	mov    $0x0,%eax
  40240c:	e8 2f 04 00 00       	call   402840 <printf>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
  402411:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402416:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40241a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402421:	00 00 
  402423:	74 05                	je     40242a <main+0xd7>
  402425:	e8 b6 03 00 00       	call   4027e0 <__stack_chk_fail>
  40242a:	c9                   	leave
  40242b:	c3                   	ret
  40242c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402430 <dummy>:
  402430:	f3 0f 1e fa          	endbr64
  402434:	c3                   	ret
  402435:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40243c:	00 00 00 
  40243f:	90                   	nop

0000000000402440 <dummy1>:
  402440:	f3 0f 1e fa          	endbr64
  402444:	c3                   	ret
  402445:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40244c:	00 00 00 
  40244f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402456:	00 00 00 
  402459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402460 <__init_libc>:
  402460:	f3 0f 1e fa          	endbr64
  402464:	55                   	push   %rbp
  402465:	48 89 fa             	mov    %rdi,%rdx
  402468:	31 c0                	xor    %eax,%eax
  40246a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40246f:	48 89 e5             	mov    %rsp,%rbp
  402472:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402479:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402480:	f3 48 ab             	rep stos %rax,(%rdi)
  402483:	48 c7 c0 e8 a5 40 00 	mov    $0x40a5e8,%rax
  40248a:	48 89 10             	mov    %rdx,(%rax)
  40248d:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  402491:	0f 84 c9 01 00 00    	je     402660 <__init_libc+0x200>
  402497:	31 c0                	xor    %eax,%eax
  402499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024a0:	48 89 c1             	mov    %rax,%rcx
  4024a3:	48 83 c0 01          	add    $0x1,%rax
  4024a7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4024ac:	75 f2                	jne    4024a0 <__init_libc+0x40>
  4024ae:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4024b5:	00 
  4024b6:	48 01 d0             	add    %rdx,%rax
  4024b9:	48 89 05 a8 7c 00 00 	mov    %rax,0x7ca8(%rip)        # 40a168 <__libc+0x8>
  4024c0:	48 8b 10             	mov    (%rax),%rdx
  4024c3:	48 83 c0 08          	add    $0x8,%rax
  4024c7:	48 85 d2             	test   %rdx,%rdx
  4024ca:	0f 84 a0 01 00 00    	je     402670 <__init_libc+0x210>
  4024d0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4024dc:	00 00 00 00 
  4024e0:	48 83 fa 25          	cmp    $0x25,%rdx
  4024e4:	77 0b                	ja     4024f1 <__init_libc+0x91>
  4024e6:	48 8b 08             	mov    (%rax),%rcx
  4024e9:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  4024f0:	ff 
  4024f1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4024f5:	48 83 c0 10          	add    $0x10,%rax
  4024f9:	48 85 d2             	test   %rdx,%rdx
  4024fc:	75 e2                	jne    4024e0 <__init_libc+0x80>
  4024fe:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402505:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402509:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402510:	48 89 0d 31 7c 00 00 	mov    %rcx,0x7c31(%rip)        # 40a148 <__hwcap>
  402517:	48 85 c0             	test   %rax,%rax
  40251a:	74 07                	je     402523 <__init_libc+0xc3>
  40251c:	48 89 05 0d 7c 00 00 	mov    %rax,0x7c0d(%rip)        # 40a130 <__sysinfo>
  402523:	48 89 15 66 7c 00 00 	mov    %rdx,0x7c66(%rip)        # 40a190 <__libc+0x30>
  40252a:	48 85 f6             	test   %rsi,%rsi
  40252d:	0f 84 15 01 00 00    	je     402648 <__init_libc+0x1e8>
  402533:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  40253a:	48 c7 c1 40 a1 40 00 	mov    $0x40a140,%rcx
  402541:	48 89 30             	mov    %rsi,(%rax)
  402544:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402548:	48 89 31             	mov    %rsi,(%rcx)
  40254b:	0f b6 16             	movzbl (%rsi),%edx
  40254e:	84 d2                	test   %dl,%dl
  402550:	74 21                	je     402573 <__init_libc+0x113>
  402552:	0f 1f 00             	nopl   (%rax)
  402555:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40255c:	00 00 00 00 
  402560:	80 fa 2f             	cmp    $0x2f,%dl
  402563:	75 03                	jne    402568 <__init_libc+0x108>
  402565:	48 89 01             	mov    %rax,(%rcx)
  402568:	0f b6 10             	movzbl (%rax),%edx
  40256b:	48 83 c0 01          	add    $0x1,%rax
  40256f:	84 d2                	test   %dl,%dl
  402571:	75 ed                	jne    402560 <__init_libc+0x100>
  402573:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40257a:	e8 11 38 00 00       	call   405d90 <__init_tls>
  40257f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  402583:	e8 e8 01 00 00       	call   402770 <__init_ssp>
  402588:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  40258f:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  402596:	0f 84 84 00 00 00    	je     402620 <__init_libc+0x1c0>
  40259c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4025a0:	b8 07 00 00 00       	mov    $0x7,%eax
  4025a5:	be 03 00 00 00       	mov    $0x3,%esi
  4025aa:	31 d2                	xor    %edx,%edx
  4025ac:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4025b3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4025ba:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4025c1:	00 00 00 00 
  4025c5:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  4025cc:	00 00 00 
  4025cf:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  4025d6:	00 00 00 
  4025d9:	0f 05                	syscall
  4025db:	85 c0                	test   %eax,%eax
  4025dd:	79 01                	jns    4025e0 <__init_libc+0x180>
  4025df:	f4                   	hlt
  4025e0:	48 89 fa             	mov    %rdi,%rdx
  4025e3:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  4025ea:	be 02 80 00 00       	mov    $0x8002,%esi
  4025ef:	48 8d 3d 44 4b 00 00 	lea    0x4b44(%rip),%rdi        # 40713a <_fini+0x276>
  4025f6:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  4025fa:	74 0d                	je     402609 <__init_libc+0x1a9>
  4025fc:	b8 02 00 00 00       	mov    $0x2,%eax
  402601:	0f 05                	syscall
  402603:	48 85 c0             	test   %rax,%rax
  402606:	79 01                	jns    402609 <__init_libc+0x1a9>
  402608:	f4                   	hlt
  402609:	48 83 c2 08          	add    $0x8,%rdx
  40260d:	4c 39 c2             	cmp    %r8,%rdx
  402610:	75 e4                	jne    4025f6 <__init_libc+0x196>
  402612:	c6 05 49 7b 00 00 01 	movb   $0x1,0x7b49(%rip)        # 40a162 <__libc+0x2>
  402619:	c9                   	leave
  40261a:	c3                   	ret
  40261b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402620:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402627:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40262e:	0f 85 68 ff ff ff    	jne    40259c <__init_libc+0x13c>
  402634:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402639:	0f 85 5d ff ff ff    	jne    40259c <__init_libc+0x13c>
  40263f:	c9                   	leave
  402640:	c3                   	ret
  402641:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402648:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40264c:	48 85 c0             	test   %rax,%rax
  40264f:	74 2f                	je     402680 <__init_libc+0x220>
  402651:	48 89 c6             	mov    %rax,%rsi
  402654:	e9 da fe ff ff       	jmp    402533 <__init_libc+0xd3>
  402659:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402660:	b8 08 00 00 00       	mov    $0x8,%eax
  402665:	e9 4c fe ff ff       	jmp    4024b6 <__init_libc+0x56>
  40266a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402670:	48 c7 05 cd 7a 00 00 	movq   $0x0,0x7acd(%rip)        # 40a148 <__hwcap>
  402677:	00 00 00 00 
  40267b:	e9 a3 fe ff ff       	jmp    402523 <__init_libc+0xc3>
  402680:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  402687:	48 8d 3d eb 4a 00 00 	lea    0x4aeb(%rip),%rdi        # 407179 <_fini+0x2b5>
  40268e:	48 89 38             	mov    %rdi,(%rax)
  402691:	48 c7 c0 40 a1 40 00 	mov    $0x40a140,%rax
  402698:	48 89 38             	mov    %rdi,(%rax)
  40269b:	e9 d3 fe ff ff       	jmp    402573 <__init_libc+0x113>

00000000004026a0 <__libc_start_init>:
  4026a0:	f3 0f 1e fa          	endbr64
  4026a4:	55                   	push   %rbp
  4026a5:	48 89 e5             	mov    %rsp,%rbp
  4026a8:	41 54                	push   %r12
  4026aa:	53                   	push   %rbx
  4026ab:	e8 50 e9 ff ff       	call   401000 <_init>
  4026b0:	48 c7 c3 c0 9f 40 00 	mov    $0x409fc0,%rbx
  4026b7:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  4026be:	4c 39 e3             	cmp    %r12,%rbx
  4026c1:	73 18                	jae    4026db <__libc_start_init+0x3b>
  4026c3:	66 90                	xchg   %ax,%ax
  4026c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4026cc:	00 00 00 00 
  4026d0:	ff 13                	call   *(%rbx)
  4026d2:	48 83 c3 08          	add    $0x8,%rbx
  4026d6:	4c 39 e3             	cmp    %r12,%rbx
  4026d9:	72 f5                	jb     4026d0 <__libc_start_init+0x30>
  4026db:	5b                   	pop    %rbx
  4026dc:	41 5c                	pop    %r12
  4026de:	5d                   	pop    %rbp
  4026df:	c3                   	ret

00000000004026e0 <libc_start_main_stage2>:
  4026e0:	f3 0f 1e fa          	endbr64
  4026e4:	55                   	push   %rbp
  4026e5:	48 63 c6             	movslq %esi,%rax
  4026e8:	48 89 e5             	mov    %rsp,%rbp
  4026eb:	41 56                	push   %r14
  4026ed:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  4026f2:	41 55                	push   %r13
  4026f4:	49 89 fd             	mov    %rdi,%r13
  4026f7:	41 54                	push   %r12
  4026f9:	49 89 d4             	mov    %rdx,%r12
  4026fc:	53                   	push   %rbx
  4026fd:	48 89 c3             	mov    %rax,%rbx
  402700:	e8 9b ff ff ff       	call   4026a0 <__libc_start_init>
  402705:	89 df                	mov    %ebx,%edi
  402707:	4c 89 f2             	mov    %r14,%rdx
  40270a:	4c 89 e6             	mov    %r12,%rsi
  40270d:	41 ff d5             	call   *%r13
  402710:	89 c7                	mov    %eax,%edi
  402712:	e8 29 e9 ff ff       	call   401040 <exit>
  402717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40271e:	00 00 

0000000000402720 <__libc_start_main>:
  402720:	f3 0f 1e fa          	endbr64
  402724:	55                   	push   %rbp
  402725:	48 63 c6             	movslq %esi,%rax
  402728:	48 89 e5             	mov    %rsp,%rbp
  40272b:	41 54                	push   %r12
  40272d:	49 89 fc             	mov    %rdi,%r12
  402730:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402735:	53                   	push   %rbx
  402736:	48 89 c3             	mov    %rax,%rbx
  402739:	48 83 ec 10          	sub    $0x10,%rsp
  40273d:	48 8b 32             	mov    (%rdx),%rsi
  402740:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402744:	e8 17 fd ff ff       	call   402460 <__init_libc>
  402749:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 4026e0 <libc_start_main_stage2>
  402750:	89 de                	mov    %ebx,%esi
  402752:	4c 89 e7             	mov    %r12,%rdi
  402755:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402759:	48 83 c4 10          	add    $0x10,%rsp
  40275d:	5b                   	pop    %rbx
  40275e:	41 5c                	pop    %r12
  402760:	5d                   	pop    %rbp
  402761:	ff e0                	jmp    *%rax
  402763:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40276a:	00 00 00 
  40276d:	0f 1f 00             	nopl   (%rax)

0000000000402770 <__init_ssp>:
  402770:	f3 0f 1e fa          	endbr64
  402774:	55                   	push   %rbp
  402775:	48 89 e5             	mov    %rsp,%rbp
  402778:	48 83 ec 10          	sub    $0x10,%rsp
  40277c:	48 85 ff             	test   %rdi,%rdi
  40277f:	74 3f                	je     4027c0 <__init_ssp+0x50>
  402781:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  402788:	48 89 fe             	mov    %rdi,%rsi
  40278b:	ba 08 00 00 00       	mov    $0x8,%edx
  402790:	48 89 cf             	mov    %rcx,%rdi
  402793:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  402797:	e8 d1 33 00 00       	call   405b6d <memcpy>
  40279c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4027a0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4027a4:	48 8b 11             	mov    (%rcx),%rdx
  4027a7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4027ae:	00 00 
  4027b0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4027b4:	c9                   	leave
  4027b5:	c3                   	ret
  4027b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027bd:	00 00 00 
  4027c0:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  4027c7:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  4027ce:	48 89 01             	mov    %rax,(%rcx)
  4027d1:	eb cd                	jmp    4027a0 <__init_ssp+0x30>
  4027d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027da:	00 00 00 
  4027dd:	0f 1f 00             	nopl   (%rax)

00000000004027e0 <__stack_chk_fail>:
  4027e0:	f3 0f 1e fa          	endbr64
  4027e4:	f4                   	hlt
  4027e5:	c3                   	ret
  4027e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027ed:	00 00 00 

00000000004027f0 <__funcs_on_exit>:
  4027f0:	f3 0f 1e fa          	endbr64
  4027f4:	c3                   	ret
  4027f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027fc:	00 00 00 
  4027ff:	90                   	nop

0000000000402800 <__libc_exit_fini>:
  402800:	f3 0f 1e fa          	endbr64
  402804:	55                   	push   %rbp
  402805:	48 89 e5             	mov    %rsp,%rbp
  402808:	41 54                	push   %r12
  40280a:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  402811:	53                   	push   %rbx
  402812:	48 c7 c3 d0 9f 40 00 	mov    $0x409fd0,%rbx
  402819:	49 39 dc             	cmp    %rbx,%r12
  40281c:	73 0f                	jae    40282d <__libc_exit_fini+0x2d>
  40281e:	66 90                	xchg   %ax,%ax
  402820:	48 83 eb 08          	sub    $0x8,%rbx
  402824:	31 c0                	xor    %eax,%eax
  402826:	ff 13                	call   *(%rbx)
  402828:	49 39 dc             	cmp    %rbx,%r12
  40282b:	72 f3                	jb     402820 <__libc_exit_fini+0x20>
  40282d:	5b                   	pop    %rbx
  40282e:	31 c0                	xor    %eax,%eax
  402830:	41 5c                	pop    %r12
  402832:	5d                   	pop    %rbp
  402833:	e9 8c 46 00 00       	jmp    406ec4 <_fini>
  402838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40283f:	00 

0000000000402840 <printf>:
  402840:	f3 0f 1e fa          	endbr64
  402844:	55                   	push   %rbp
  402845:	48 89 e5             	mov    %rsp,%rbp
  402848:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40284f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402856:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40285d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402864:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40286b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402872:	84 c0                	test   %al,%al
  402874:	74 20                	je     402896 <printf+0x56>
  402876:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40287a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40287e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402882:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402886:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  40288a:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  40288e:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402892:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402896:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40289d:	00 00 
  40289f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4028a6:	31 c0                	xor    %eax,%eax
  4028a8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4028ac:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4028b3:	48 89 fe             	mov    %rdi,%rsi
  4028b6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4028bd:	48 8d 3d 5c 77 00 00 	lea    0x775c(%rip),%rdi        # 40a020 <__stdout_FILE>
  4028c4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4028cb:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  4028d2:	00 00 00 
  4028d5:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4028dc:	00 00 00 
  4028df:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4028e6:	e8 e5 2f 00 00       	call   4058d0 <vfprintf>
  4028eb:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4028f2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4028f9:	00 00 
  4028fb:	75 02                	jne    4028ff <printf+0xbf>
  4028fd:	c9                   	leave
  4028fe:	c3                   	ret
  4028ff:	e8 dc fe ff ff       	call   4027e0 <__stack_chk_fail>
  402904:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40290b:	00 00 00 
  40290e:	66 90                	xchg   %ax,%ax

0000000000402910 <sprintf>:
  402910:	f3 0f 1e fa          	endbr64
  402914:	55                   	push   %rbp
  402915:	48 89 e5             	mov    %rsp,%rbp
  402918:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40291f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402926:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40292d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402934:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  40293b:	84 c0                	test   %al,%al
  40293d:	74 20                	je     40295f <sprintf+0x4f>
  40293f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402943:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402947:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  40294b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  40294f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402953:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402957:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  40295b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  40295f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402966:	00 00 
  402968:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40296f:	31 c0                	xor    %eax,%eax
  402971:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402975:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  40297c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402983:	00 00 00 
  402986:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40298d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402994:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40299b:	00 00 00 
  40299e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4029a5:	e8 56 31 00 00       	call   405b00 <vsprintf>
  4029aa:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4029b1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029b8:	00 00 
  4029ba:	75 02                	jne    4029be <sprintf+0xae>
  4029bc:	c9                   	leave
  4029bd:	c3                   	ret
  4029be:	e8 1d fe ff ff       	call   4027e0 <__stack_chk_fail>
  4029c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029ca:	00 00 00 
  4029cd:	0f 1f 00             	nopl   (%rax)

00000000004029d0 <pop_arg>:
  4029d0:	83 ee 09             	sub    $0x9,%esi
  4029d3:	83 fe 11             	cmp    $0x11,%esi
  4029d6:	77 50                	ja     402a28 <pop_arg+0x58>
  4029d8:	48 8d 0d 9d 47 00 00 	lea    0x479d(%rip),%rcx        # 40717c <_fini+0x2b8>
  4029df:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  4029e3:	48 01 c8             	add    %rcx,%rax
  4029e6:	3e ff e0             	notrack jmp *%rax
  4029e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029f0:	8b 02                	mov    (%rdx),%eax
  4029f2:	83 f8 2f             	cmp    $0x2f,%eax
  4029f5:	77 39                	ja     402a30 <pop_arg+0x60>
  4029f7:	89 c1                	mov    %eax,%ecx
  4029f9:	83 c0 08             	add    $0x8,%eax
  4029fc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a00:	89 02                	mov    %eax,(%rdx)
  402a02:	48 8b 01             	mov    (%rcx),%rax
  402a05:	48 89 07             	mov    %rax,(%rdi)
  402a08:	c3                   	ret
  402a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a10:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402a14:	48 83 c0 0f          	add    $0xf,%rax
  402a18:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402a1c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402a20:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402a24:	db 28                	fldt   (%rax)
  402a26:	db 3f                	fstpt  (%rdi)
  402a28:	c3                   	ret
  402a29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a30:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a34:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a38:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a3c:	48 8b 01             	mov    (%rcx),%rax
  402a3f:	48 89 07             	mov    %rax,(%rdi)
  402a42:	c3                   	ret
  402a43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a48:	8b 02                	mov    (%rdx),%eax
  402a4a:	83 f8 2f             	cmp    $0x2f,%eax
  402a4d:	0f 87 55 01 00 00    	ja     402ba8 <pop_arg+0x1d8>
  402a53:	89 c1                	mov    %eax,%ecx
  402a55:	83 c0 08             	add    $0x8,%eax
  402a58:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a5c:	89 02                	mov    %eax,(%rdx)
  402a5e:	0f b7 01             	movzwl (%rcx),%eax
  402a61:	48 89 07             	mov    %rax,(%rdi)
  402a64:	c3                   	ret
  402a65:	0f 1f 00             	nopl   (%rax)
  402a68:	8b 42 04             	mov    0x4(%rdx),%eax
  402a6b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402a70:	0f 87 1a 01 00 00    	ja     402b90 <pop_arg+0x1c0>
  402a76:	89 c1                	mov    %eax,%ecx
  402a78:	83 c0 10             	add    $0x10,%eax
  402a7b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a7f:	89 42 04             	mov    %eax,0x4(%rdx)
  402a82:	dd 01                	fldl   (%rcx)
  402a84:	db 3f                	fstpt  (%rdi)
  402a86:	c3                   	ret
  402a87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402a8e:	00 00 
  402a90:	8b 02                	mov    (%rdx),%eax
  402a92:	83 f8 2f             	cmp    $0x2f,%eax
  402a95:	0f 87 dd 00 00 00    	ja     402b78 <pop_arg+0x1a8>
  402a9b:	89 c1                	mov    %eax,%ecx
  402a9d:	83 c0 08             	add    $0x8,%eax
  402aa0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402aa4:	89 02                	mov    %eax,(%rdx)
  402aa6:	48 63 01             	movslq (%rcx),%rax
  402aa9:	48 89 07             	mov    %rax,(%rdi)
  402aac:	c3                   	ret
  402aad:	0f 1f 00             	nopl   (%rax)
  402ab0:	8b 02                	mov    (%rdx),%eax
  402ab2:	83 f8 2f             	cmp    $0x2f,%eax
  402ab5:	0f 87 a5 00 00 00    	ja     402b60 <pop_arg+0x190>
  402abb:	89 c1                	mov    %eax,%ecx
  402abd:	83 c0 08             	add    $0x8,%eax
  402ac0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ac4:	89 02                	mov    %eax,(%rdx)
  402ac6:	8b 01                	mov    (%rcx),%eax
  402ac8:	48 89 07             	mov    %rax,(%rdi)
  402acb:	c3                   	ret
  402acc:	0f 1f 40 00          	nopl   0x0(%rax)
  402ad0:	8b 02                	mov    (%rdx),%eax
  402ad2:	83 f8 2f             	cmp    $0x2f,%eax
  402ad5:	77 79                	ja     402b50 <pop_arg+0x180>
  402ad7:	89 c1                	mov    %eax,%ecx
  402ad9:	83 c0 08             	add    $0x8,%eax
  402adc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ae0:	89 02                	mov    %eax,(%rdx)
  402ae2:	0f b6 01             	movzbl (%rcx),%eax
  402ae5:	48 89 07             	mov    %rax,(%rdi)
  402ae8:	c3                   	ret
  402ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402af0:	8b 02                	mov    (%rdx),%eax
  402af2:	83 f8 2f             	cmp    $0x2f,%eax
  402af5:	77 49                	ja     402b40 <pop_arg+0x170>
  402af7:	89 c1                	mov    %eax,%ecx
  402af9:	83 c0 08             	add    $0x8,%eax
  402afc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b00:	89 02                	mov    %eax,(%rdx)
  402b02:	48 0f be 01          	movsbq (%rcx),%rax
  402b06:	48 89 07             	mov    %rax,(%rdi)
  402b09:	c3                   	ret
  402b0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b10:	8b 02                	mov    (%rdx),%eax
  402b12:	83 f8 2f             	cmp    $0x2f,%eax
  402b15:	77 19                	ja     402b30 <pop_arg+0x160>
  402b17:	89 c1                	mov    %eax,%ecx
  402b19:	83 c0 08             	add    $0x8,%eax
  402b1c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b20:	89 02                	mov    %eax,(%rdx)
  402b22:	48 0f bf 01          	movswq (%rcx),%rax
  402b26:	48 89 07             	mov    %rax,(%rdi)
  402b29:	c3                   	ret
  402b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b30:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b34:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b38:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b3c:	eb e4                	jmp    402b22 <pop_arg+0x152>
  402b3e:	66 90                	xchg   %ax,%ax
  402b40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b4c:	eb b4                	jmp    402b02 <pop_arg+0x132>
  402b4e:	66 90                	xchg   %ax,%ax
  402b50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b5c:	eb 84                	jmp    402ae2 <pop_arg+0x112>
  402b5e:	66 90                	xchg   %ax,%ax
  402b60:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b64:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b68:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b6c:	e9 55 ff ff ff       	jmp    402ac6 <pop_arg+0xf6>
  402b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b78:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b7c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b80:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b84:	e9 1d ff ff ff       	jmp    402aa6 <pop_arg+0xd6>
  402b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b90:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b94:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b98:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b9c:	e9 e1 fe ff ff       	jmp    402a82 <pop_arg+0xb2>
  402ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ba8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bac:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402bb0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bb4:	e9 a5 fe ff ff       	jmp    402a5e <pop_arg+0x8e>
  402bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402bc0 <pad.part.0>:
  402bc0:	55                   	push   %rbp
  402bc1:	29 ca                	sub    %ecx,%edx
  402bc3:	40 0f be f6          	movsbl %sil,%esi
  402bc7:	48 89 e5             	mov    %rsp,%rbp
  402bca:	41 56                	push   %r14
  402bcc:	41 55                	push   %r13
  402bce:	41 54                	push   %r12
  402bd0:	4c 63 e2             	movslq %edx,%r12
  402bd3:	ba 00 01 00 00       	mov    $0x100,%edx
  402bd8:	53                   	push   %rbx
  402bd9:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402be0:	41 39 d4             	cmp    %edx,%r12d
  402be3:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402bea:	00 00 
  402bec:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402bf0:	49 89 fd             	mov    %rdi,%r13
  402bf3:	49 0f 4e d4          	cmovle %r12,%rdx
  402bf7:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402bfe:	e8 9c 2f 00 00       	call   405b9f <memset>
  402c03:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402c0a:	0f 8e 88 00 00 00    	jle    402c98 <pad.part.0+0xd8>
  402c10:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c14:	44 89 e3             	mov    %r12d,%ebx
  402c17:	eb 15                	jmp    402c2e <pad.part.0+0x6e>
  402c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c20:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402c26:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402c2c:	76 2a                	jbe    402c58 <pad.part.0+0x98>
  402c2e:	a8 20                	test   $0x20,%al
  402c30:	75 ee                	jne    402c20 <pad.part.0+0x60>
  402c32:	4c 89 ea             	mov    %r13,%rdx
  402c35:	be 00 01 00 00       	mov    $0x100,%esi
  402c3a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402c41:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402c47:	e8 14 38 00 00       	call   406460 <__fwritex>
  402c4c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c50:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402c56:	77 d6                	ja     402c2e <pad.part.0+0x6e>
  402c58:	45 0f b6 e4          	movzbl %r12b,%r12d
  402c5c:	a8 20                	test   $0x20,%al
  402c5e:	74 20                	je     402c80 <pad.part.0+0xc0>
  402c60:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402c64:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402c6b:	00 00 
  402c6d:	75 2f                	jne    402c9e <pad.part.0+0xde>
  402c6f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402c76:	5b                   	pop    %rbx
  402c77:	41 5c                	pop    %r12
  402c79:	41 5d                	pop    %r13
  402c7b:	41 5e                	pop    %r14
  402c7d:	5d                   	pop    %rbp
  402c7e:	c3                   	ret
  402c7f:	90                   	nop
  402c80:	49 63 f4             	movslq %r12d,%rsi
  402c83:	4c 89 ea             	mov    %r13,%rdx
  402c86:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402c8d:	e8 ce 37 00 00       	call   406460 <__fwritex>
  402c92:	eb cc                	jmp    402c60 <pad.part.0+0xa0>
  402c94:	0f 1f 40 00          	nopl   0x0(%rax)
  402c98:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c9c:	eb be                	jmp    402c5c <pad.part.0+0x9c>
  402c9e:	e8 3d fb ff ff       	call   4027e0 <__stack_chk_fail>
  402ca3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402caa:	00 00 00 
  402cad:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402cb4:	00 00 00 
  402cb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402cbe:	00 00 

0000000000402cc0 <fmt_fp>:
  402cc0:	55                   	push   %rbp
  402cc1:	48 89 e5             	mov    %rsp,%rbp
  402cc4:	41 57                	push   %r15
  402cc6:	41 56                	push   %r14
  402cc8:	41 55                	push   %r13
  402cca:	41 54                	push   %r12
  402ccc:	53                   	push   %rbx
  402ccd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402cd4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402cd9:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402ce0:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402ce7:	41 89 d7             	mov    %edx,%r15d
  402cea:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402cf0:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402cf6:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402cfd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d04:	00 00 
  402d06:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402d0a:	31 c0                	xor    %eax,%eax
  402d0c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402d13:	00 00 00 
  402d16:	ff 75 18             	push   0x18(%rbp)
  402d19:	ff 75 10             	push   0x10(%rbp)
  402d1c:	e8 ef 33 00 00       	call   406110 <__signbitl>
  402d21:	41 5d                	pop    %r13
  402d23:	41 5e                	pop    %r14
  402d25:	85 c0                	test   %eax,%eax
  402d27:	0f 84 8b 00 00 00    	je     402db8 <fmt_fp+0xf8>
  402d2d:	db 6d 10             	fldt   0x10(%rbp)
  402d30:	48 8d 05 0d 44 00 00 	lea    0x440d(%rip),%rax        # 407144 <_fini+0x280>
  402d37:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402d3e:	00 00 00 
  402d41:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402d48:	d9 e0                	fchs
  402d4a:	db 7d 10             	fstpt  0x10(%rbp)
  402d4d:	ff 75 18             	push   0x18(%rbp)
  402d50:	ff 75 10             	push   0x10(%rbp)
  402d53:	e8 48 33 00 00       	call   4060a0 <__fpclassifyl>
  402d58:	5b                   	pop    %rbx
  402d59:	41 5c                	pop    %r12
  402d5b:	83 f8 01             	cmp    $0x1,%eax
  402d5e:	0f 8e bc 04 00 00    	jle    403220 <fmt_fp+0x560>
  402d64:	ff 75 18             	push   0x18(%rbp)
  402d67:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402d6e:	ff 75 10             	push   0x10(%rbp)
  402d71:	e8 ba 33 00 00       	call   406130 <frexpl>
  402d76:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402d7d:	41 5a                	pop    %r10
  402d7f:	d8 c0                	fadd   %st(0),%st
  402d81:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402d88:	41 5b                	pop    %r11
  402d8a:	41 83 ce 20          	or     $0x20,%r14d
  402d8e:	d9 ee                	fldz
  402d90:	d9 c9                	fxch   %st(1)
  402d92:	db e9                	fucomi %st(1),%st
  402d94:	dd d9                	fstp   %st(1)
  402d96:	7a 58                	jp     402df0 <fmt_fp+0x130>
  402d98:	75 56                	jne    402df0 <fmt_fp+0x130>
  402d9a:	41 83 fe 61          	cmp    $0x61,%r14d
  402d9e:	0f 84 37 06 00 00    	je     4033db <fmt_fp+0x71b>
  402da4:	45 85 ff             	test   %r15d,%r15d
  402da7:	0f 88 84 13 00 00    	js     404131 <fmt_fp+0x1471>
  402dad:	40 0f 95 c6          	setne  %sil
  402db1:	eb 65                	jmp    402e18 <fmt_fp+0x158>
  402db3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402db8:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402dbe:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402dc4:	0f 84 2c 04 00 00    	je     4031f6 <fmt_fp+0x536>
  402dca:	48 8d 05 76 43 00 00 	lea    0x4376(%rip),%rax        # 407147 <_fini+0x283>
  402dd1:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402dd8:	00 00 00 
  402ddb:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402de2:	e9 66 ff ff ff       	jmp    402d4d <fmt_fp+0x8d>
  402de7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402dee:	00 00 
  402df0:	41 83 fe 61          	cmp    $0x61,%r14d
  402df4:	0f 84 d6 05 00 00    	je     4033d0 <fmt_fp+0x710>
  402dfa:	45 85 ff             	test   %r15d,%r15d
  402dfd:	0f 88 3e 13 00 00    	js     404141 <fmt_fp+0x1481>
  402e03:	40 0f 95 c6          	setne  %sil
  402e07:	41 83 e9 1d          	sub    $0x1d,%r9d
  402e0b:	d8 0d b3 46 00 00    	fmuls  0x46b3(%rip)        # 4074c4 <states+0x1e4>
  402e11:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402e18:	45 85 c9             	test   %r9d,%r9d
  402e1b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402e22:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402e29:	d9 05 99 46 00 00    	flds   0x4699(%rip)        # 4074c8 <states+0x1e8>
  402e2f:	d9 c9                	fxch   %st(1)
  402e31:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402e37:	48 0f 49 c2          	cmovns %rdx,%rax
  402e3b:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402e42:	48 89 c3             	mov    %rax,%rbx
  402e45:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402e4c:	80 cc 0c             	or     $0xc,%ah
  402e4f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402e56:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e5d:	00 00 
  402e5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e66:	00 00 00 00 
  402e6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e71:	00 00 00 00 
  402e75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e7c:	00 00 00 00 
  402e80:	d9 c0                	fld    %st(0)
  402e82:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402e88:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402e8e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402e94:	48 83 c3 04          	add    $0x4,%rbx
  402e98:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402e9f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402ea2:	89 c0                	mov    %eax,%eax
  402ea4:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402eab:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402eb1:	de e9                	fsubrp %st,%st(1)
  402eb3:	d8 c9                	fmul   %st(1),%st
  402eb5:	d9 ee                	fldz
  402eb7:	d9 c9                	fxch   %st(1)
  402eb9:	db e9                	fucomi %st(1),%st
  402ebb:	dd d9                	fstp   %st(1)
  402ebd:	7a c1                	jp     402e80 <fmt_fp+0x1c0>
  402ebf:	75 bf                	jne    402e80 <fmt_fp+0x1c0>
  402ec1:	dd d8                	fstp   %st(0)
  402ec3:	dd d8                	fstp   %st(0)
  402ec5:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402ecc:	45 85 c9             	test   %r9d,%r9d
  402ecf:	0f 8e b0 00 00 00    	jle    402f85 <fmt_fp+0x2c5>
  402ed5:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402edc:	b8 44 00 
  402edf:	90                   	nop
  402ee0:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402ee5:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402ee9:	41 39 c9             	cmp    %ecx,%r9d
  402eec:	41 0f 4e c9          	cmovle %r9d,%ecx
  402ef0:	4d 39 e2             	cmp    %r12,%r10
  402ef3:	72 4b                	jb     402f40 <fmt_fp+0x280>
  402ef5:	31 c0                	xor    %eax,%eax
  402ef7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402efe:	00 00 
  402f00:	45 8b 02             	mov    (%r10),%r8d
  402f03:	49 83 ea 04          	sub    $0x4,%r10
  402f07:	49 d3 e0             	shl    %cl,%r8
  402f0a:	49 01 c0             	add    %rax,%r8
  402f0d:	4c 89 c2             	mov    %r8,%rdx
  402f10:	48 c1 ea 09          	shr    $0x9,%rdx
  402f14:	48 89 d0             	mov    %rdx,%rax
  402f17:	48 f7 e7             	mul    %rdi
  402f1a:	48 c1 ea 0b          	shr    $0xb,%rdx
  402f1e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402f25:	49 29 c0             	sub    %rax,%r8
  402f28:	89 d0                	mov    %edx,%eax
  402f2a:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402f2e:	4d 39 e2             	cmp    %r12,%r10
  402f31:	73 cd                	jae    402f00 <fmt_fp+0x240>
  402f33:	85 d2                	test   %edx,%edx
  402f35:	74 09                	je     402f40 <fmt_fp+0x280>
  402f37:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402f3c:	49 83 ec 04          	sub    $0x4,%r12
  402f40:	49 39 dc             	cmp    %rbx,%r12
  402f43:	72 24                	jb     402f69 <fmt_fp+0x2a9>
  402f45:	eb 2b                	jmp    402f72 <fmt_fp+0x2b2>
  402f47:	0f 1f 00             	nopl   (%rax)
  402f4a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f51:	00 00 00 00 
  402f55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f5c:	00 00 00 00 
  402f60:	48 83 eb 04          	sub    $0x4,%rbx
  402f64:	49 39 dc             	cmp    %rbx,%r12
  402f67:	73 09                	jae    402f72 <fmt_fp+0x2b2>
  402f69:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  402f6d:	45 85 c0             	test   %r8d,%r8d
  402f70:	74 ee                	je     402f60 <fmt_fp+0x2a0>
  402f72:	41 29 c9             	sub    %ecx,%r9d
  402f75:	45 85 c9             	test   %r9d,%r9d
  402f78:	0f 8f 62 ff ff ff    	jg     402ee0 <fmt_fp+0x220>
  402f7e:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402f85:	45 85 c9             	test   %r9d,%r9d
  402f88:	0f 84 35 01 00 00    	je     4030c3 <fmt_fp+0x403>
  402f8e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  402f92:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  402f99:	41 89 f0             	mov    %esi,%r8d
  402f9c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  402fa3:	48 c1 e8 21          	shr    $0x21,%rax
  402fa7:	48 8d 78 01          	lea    0x1(%rax),%rdi
  402fab:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  402fb2:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  402fb9:	00 
  402fba:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  402fc1:	0f 1f 40 00          	nopl   0x0(%rax)
  402fc5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fcc:	00 00 00 00 
  402fd0:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  402fd4:	0f 8d d6 06 00 00    	jge    4036b0 <fmt_fp+0x9f0>
  402fda:	41 83 c1 09          	add    $0x9,%r9d
  402fde:	b9 09 00 00 00       	mov    $0x9,%ecx
  402fe3:	49 39 dc             	cmp    %rbx,%r12
  402fe6:	0f 83 d5 06 00 00    	jae    4036c1 <fmt_fp+0xa01>
  402fec:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  402ff2:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  402ff9:	4c 89 e6             	mov    %r12,%rsi
  402ffc:	31 d2                	xor    %edx,%edx
  402ffe:	41 d3 e2             	shl    %cl,%r10d
  403001:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  403007:	41 83 ea 01          	sub    $0x1,%r10d
  40300b:	41 d3 ff             	sar    %cl,%r15d
  40300e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403014:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40301b:	00 00 00 00 
  40301f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403026:	00 00 00 00 
  40302a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403031:	00 00 00 00 
  403035:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40303c:	00 00 00 00 
  403040:	8b 06                	mov    (%rsi),%eax
  403042:	48 83 c6 04          	add    $0x4,%rsi
  403046:	41 89 c1             	mov    %eax,%r9d
  403049:	44 21 d0             	and    %r10d,%eax
  40304c:	41 0f af c7          	imul   %r15d,%eax
  403050:	41 d3 e9             	shr    %cl,%r9d
  403053:	41 01 d1             	add    %edx,%r9d
  403056:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  40305a:	89 c2                	mov    %eax,%edx
  40305c:	48 39 de             	cmp    %rbx,%rsi
  40305f:	72 df                	jb     403040 <fmt_fp+0x380>
  403061:	41 8b 0c 24          	mov    (%r12),%ecx
  403065:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  40306a:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  403071:	85 c9                	test   %ecx,%ecx
  403073:	49 0f 45 c4          	cmovne %r12,%rax
  403077:	85 d2                	test   %edx,%edx
  403079:	74 06                	je     403081 <fmt_fp+0x3c1>
  40307b:	89 13                	mov    %edx,(%rbx)
  40307d:	48 83 c3 04          	add    $0x4,%rbx
  403081:	49 89 c4             	mov    %rax,%r12
  403084:	41 83 fe 66          	cmp    $0x66,%r14d
  403088:	0f 84 52 06 00 00    	je     4036e0 <fmt_fp+0xa20>
  40308e:	48 89 da             	mov    %rbx,%rdx
  403091:	48 29 c2             	sub    %rax,%rdx
  403094:	4c 01 d8             	add    %r11,%rax
  403097:	48 c1 fa 02          	sar    $0x2,%rdx
  40309b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  4030a2:	48 0f 4f d8          	cmovg  %rax,%rbx
  4030a6:	45 85 c9             	test   %r9d,%r9d
  4030a9:	0f 85 21 ff ff ff    	jne    402fd0 <fmt_fp+0x310>
  4030af:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  4030b6:	00 00 00 
  4030b9:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  4030c0:	44 89 c6             	mov    %r8d,%esi
  4030c3:	49 39 dc             	cmp    %rbx,%r12
  4030c6:	0f 83 5d 0b 00 00    	jae    403c29 <fmt_fp+0xf69>
  4030cc:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  4030d3:	41 83 fe 66          	cmp    $0x66,%r14d
  4030d7:	41 8b 14 24          	mov    (%r12),%edx
  4030db:	0f 95 c1             	setne  %cl
  4030de:	4c 29 e0             	sub    %r12,%rax
  4030e1:	48 c1 f8 02          	sar    $0x2,%rax
  4030e5:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  4030e8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4030ed:	83 fa 09             	cmp    $0x9,%edx
  4030f0:	76 1a                	jbe    40310c <fmt_fp+0x44c>
  4030f2:	0f 1f 00             	nopl   (%rax)
  4030f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030fc:	00 00 00 00 
  403100:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403103:	83 c7 01             	add    $0x1,%edi
  403106:	01 c0                	add    %eax,%eax
  403108:	39 c2                	cmp    %eax,%edx
  40310a:	73 f4                	jae    403100 <fmt_fp+0x440>
  40310c:	31 d2                	xor    %edx,%edx
  40310e:	84 c9                	test   %cl,%cl
  403110:	44 89 f8             	mov    %r15d,%eax
  403113:	0f 45 d7             	cmovne %edi,%edx
  403116:	29 d0                	sub    %edx,%eax
  403118:	31 d2                	xor    %edx,%edx
  40311a:	41 83 fe 67          	cmp    $0x67,%r14d
  40311e:	0f 94 c2             	sete   %dl
  403121:	21 f2                	and    %esi,%edx
  403123:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  40312a:	29 d0                	sub    %edx,%eax
  40312c:	48 89 da             	mov    %rbx,%rdx
  40312f:	48 29 f2             	sub    %rsi,%rdx
  403132:	48 63 c8             	movslq %eax,%rcx
  403135:	48 c1 fa 02          	sar    $0x2,%rdx
  403139:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  40313e:	48 39 d1             	cmp    %rdx,%rcx
  403141:	0f 8d 0f 06 00 00    	jge    403756 <fmt_fp+0xa96>
  403147:	05 00 40 02 00       	add    $0x24000,%eax
  40314c:	48 63 d0             	movslq %eax,%rdx
  40314f:	89 c1                	mov    %eax,%ecx
  403151:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403158:	c1 f9 1f             	sar    $0x1f,%ecx
  40315b:	48 c1 fa 21          	sar    $0x21,%rdx
  40315f:	29 ca                	sub    %ecx,%edx
  403161:	48 63 ca             	movslq %edx,%rcx
  403164:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  40316b:	ff 
  40316c:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  40316f:	29 c8                	sub    %ecx,%eax
  403171:	89 c2                	mov    %eax,%edx
  403173:	8d 40 01             	lea    0x1(%rax),%eax
  403176:	83 fa 08             	cmp    $0x8,%edx
  403179:	0f 84 df 13 00 00    	je     40455e <fmt_fp+0x189e>
  40317f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403184:	90                   	nop
  403185:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40318c:	00 00 00 00 
  403190:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403193:	83 c0 01             	add    $0x1,%eax
  403196:	01 c9                	add    %ecx,%ecx
  403198:	83 f8 09             	cmp    $0x9,%eax
  40319b:	75 f3                	jne    403190 <fmt_fp+0x4d0>
  40319d:	41 89 cb             	mov    %ecx,%r11d
  4031a0:	44 8b 16             	mov    (%rsi),%r10d
  4031a3:	31 d2                	xor    %edx,%edx
  4031a5:	44 89 d0             	mov    %r10d,%eax
  4031a8:	41 f7 f3             	div    %r11d
  4031ab:	41 89 d1             	mov    %edx,%r9d
  4031ae:	85 d2                	test   %edx,%edx
  4031b0:	0f 85 35 05 00 00    	jne    4036eb <fmt_fp+0xa2b>
  4031b6:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  4031ba:	48 89 da             	mov    %rbx,%rdx
  4031bd:	4c 39 c3             	cmp    %r8,%rbx
  4031c0:	0f 84 89 05 00 00    	je     40374f <fmt_fp+0xa8f>
  4031c6:	a8 01                	test   $0x1,%al
  4031c8:	0f 85 36 10 00 00    	jne    404204 <fmt_fp+0x1544>
  4031ce:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4031d4:	75 0f                	jne    4031e5 <fmt_fp+0x525>
  4031d6:	49 39 f4             	cmp    %rsi,%r12
  4031d9:	73 0a                	jae    4031e5 <fmt_fp+0x525>
  4031db:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4031df:	0f 85 1f 10 00 00    	jne    404204 <fmt_fp+0x1544>
  4031e5:	d9 05 c9 42 00 00    	flds   0x42c9(%rip)        # 4074b4 <states+0x1d4>
  4031eb:	d9 05 c7 42 00 00    	flds   0x42c7(%rip)        # 4074b8 <states+0x1d8>
  4031f1:	e9 1d 05 00 00       	jmp    403713 <fmt_fp+0xa53>
  4031f6:	48 8d 1d 48 3f 00 00 	lea    0x3f48(%rip),%rbx        # 407145 <_fini+0x281>
  4031fd:	83 e7 01             	and    $0x1,%edi
  403200:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403204:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40320a:	48 0f 44 c3          	cmove  %rbx,%rax
  40320e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403215:	e9 33 fb ff ff       	jmp    402d4d <fmt_fp+0x8d>
  40321a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403220:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403227:	0f 84 94 00 00 00    	je     4032c1 <fmt_fp+0x601>
  40322d:	db 6d 10             	fldt   0x10(%rbp)
  403230:	4c 8d 25 24 3f 00 00 	lea    0x3f24(%rip),%r12        # 40715b <_fini+0x297>
  403237:	48 8d 05 25 3f 00 00 	lea    0x3f25(%rip),%rax        # 407163 <_fini+0x29f>
  40323e:	df e8                	fucomip %st(0),%st
  403240:	4c 0f 4b e0          	cmovnp %rax,%r12
  403244:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40324a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403250:	8d 58 03             	lea    0x3(%rax),%ebx
  403253:	39 d3                	cmp    %edx,%ebx
  403255:	41 0f 9d c5          	setge  %r13b
  403259:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  403260:	75 09                	jne    40326b <fmt_fp+0x5ab>
  403262:	45 84 ed             	test   %r13b,%r13b
  403265:	0f 84 0a 01 00 00    	je     403375 <fmt_fp+0x6b5>
  40326b:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403272:	f6 00 20             	testb  $0x20,(%rax)
  403275:	0f 84 1d 01 00 00    	je     403398 <fmt_fp+0x6d8>
  40327b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403281:	80 f4 20             	xor    $0x20,%ah
  403284:	a9 00 20 01 00       	test   $0x12000,%eax
  403289:	75 09                	jne    403294 <fmt_fp+0x5d4>
  40328b:	45 84 ed             	test   %r13b,%r13b
  40328e:	0f 84 c3 00 00 00    	je     403357 <fmt_fp+0x697>
  403294:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40329a:	39 c3                	cmp    %eax,%ebx
  40329c:	0f 4d c3             	cmovge %ebx,%eax
  40329f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4032a3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4032aa:	00 00 
  4032ac:	0f 85 4d 13 00 00    	jne    4045ff <fmt_fp+0x193f>
  4032b2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4032b6:	5b                   	pop    %rbx
  4032b7:	41 5c                	pop    %r12
  4032b9:	41 5d                	pop    %r13
  4032bb:	41 5e                	pop    %r14
  4032bd:	41 5f                	pop    %r15
  4032bf:	5d                   	pop    %rbp
  4032c0:	c3                   	ret
  4032c1:	db 6d 10             	fldt   0x10(%rbp)
  4032c4:	4c 8d 25 94 3e 00 00 	lea    0x3e94(%rip),%r12        # 40715f <_fini+0x29b>
  4032cb:	48 8d 05 85 3e 00 00 	lea    0x3e85(%rip),%rax        # 407157 <_fini+0x293>
  4032d2:	df e8                	fucomip %st(0),%st
  4032d4:	4c 0f 4b e0          	cmovnp %rax,%r12
  4032d8:	e9 67 ff ff ff       	jmp    403244 <fmt_fp+0x584>
  4032dd:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4032e4:	f6 07 20             	testb  $0x20,(%rdi)
  4032e7:	0f 84 11 03 00 00    	je     4035fe <fmt_fp+0x93e>
  4032ed:	45 29 f7             	sub    %r14d,%r15d
  4032f0:	45 85 ff             	test   %r15d,%r15d
  4032f3:	7e 9f                	jle    403294 <fmt_fp+0x5d4>
  4032f5:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4032fb:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403302:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403309:	31 c9                	xor    %ecx,%ecx
  40330b:	44 89 fa             	mov    %r15d,%edx
  40330e:	be 30 00 00 00       	mov    $0x30,%esi
  403313:	e8 a8 f8 ff ff       	call   402bc0 <pad.part.0>
  403318:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40331f:	f6 00 20             	testb  $0x20,(%rax)
  403322:	75 12                	jne    403336 <fmt_fp+0x676>
  403324:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  40332b:	48 89 c2             	mov    %rax,%rdx
  40332e:	4c 89 e6             	mov    %r12,%rsi
  403331:	e8 2a 31 00 00       	call   406460 <__fwritex>
  403336:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  40333c:	80 f4 20             	xor    $0x20,%ah
  40333f:	a9 00 20 01 00       	test   $0x12000,%eax
  403344:	0f 85 4a ff ff ff    	jne    403294 <fmt_fp+0x5d4>
  40334a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403351:	0f 85 3d ff ff ff    	jne    403294 <fmt_fp+0x5d4>
  403357:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40335d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403364:	89 d9                	mov    %ebx,%ecx
  403366:	be 20 00 00 00       	mov    $0x20,%esi
  40336b:	e8 50 f8 ff ff       	call   402bc0 <pad.part.0>
  403370:	e9 1f ff ff ff       	jmp    403294 <fmt_fp+0x5d4>
  403375:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40337c:	89 d9                	mov    %ebx,%ecx
  40337e:	be 20 00 00 00       	mov    $0x20,%esi
  403383:	e8 38 f8 ff ff       	call   402bc0 <pad.part.0>
  403388:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40338f:	f6 00 20             	testb  $0x20,(%rax)
  403392:	0f 85 e3 fe ff ff    	jne    40327b <fmt_fp+0x5bb>
  403398:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40339f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4033a6:	49 89 c6             	mov    %rax,%r14
  4033a9:	48 89 c2             	mov    %rax,%rdx
  4033ac:	e8 af 30 00 00       	call   406460 <__fwritex>
  4033b1:	41 f6 06 20          	testb  $0x20,(%r14)
  4033b5:	0f 85 c0 fe ff ff    	jne    40327b <fmt_fp+0x5bb>
  4033bb:	4c 89 f2             	mov    %r14,%rdx
  4033be:	be 03 00 00 00       	mov    $0x3,%esi
  4033c3:	4c 89 e7             	mov    %r12,%rdi
  4033c6:	e8 95 30 00 00       	call   406460 <__fwritex>
  4033cb:	e9 ab fe ff ff       	jmp    40327b <fmt_fp+0x5bb>
  4033d0:	41 83 e9 01          	sub    $0x1,%r9d
  4033d4:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  4033db:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4033e2:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4033e9:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  4033ef:	48 8d 47 09          	lea    0x9(%rdi),%rax
  4033f3:	48 0f 44 c7          	cmove  %rdi,%rax
  4033f7:	83 c3 02             	add    $0x2,%ebx
  4033fa:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403401:	41 83 ff 0e          	cmp    $0xe,%r15d
  403405:	0f 86 28 0c 00 00    	jbe    404033 <fmt_fp+0x1373>
  40340b:	d9 05 af 40 00 00    	flds   0x40af(%rip)        # 4074c0 <states+0x1e0>
  403411:	45 85 c9             	test   %r9d,%r9d
  403414:	0f 84 54 11 00 00    	je     40456e <fmt_fp+0x18ae>
  40341a:	44 89 c9             	mov    %r9d,%ecx
  40341d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403421:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  403428:	cc cc cc 
  40342b:	f7 d9                	neg    %ecx
  40342d:	4d 89 e8             	mov    %r13,%r8
  403430:	41 0f 48 c9          	cmovs  %r9d,%ecx
  403434:	48 63 c9             	movslq %ecx,%rcx
  403437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40343e:	00 00 
  403440:	48 89 c8             	mov    %rcx,%rax
  403443:	4c 89 c7             	mov    %r8,%rdi
  403446:	49 83 e8 01          	sub    $0x1,%r8
  40344a:	48 f7 e6             	mul    %rsi
  40344d:	48 89 c8             	mov    %rcx,%rax
  403450:	48 c1 ea 03          	shr    $0x3,%rdx
  403454:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403458:	4d 01 d2             	add    %r10,%r10
  40345b:	4c 29 d0             	sub    %r10,%rax
  40345e:	83 c0 30             	add    $0x30,%eax
  403461:	48 83 f9 09          	cmp    $0x9,%rcx
  403465:	48 89 d1             	mov    %rdx,%rcx
  403468:	41 88 00             	mov    %al,(%r8)
  40346b:	77 d3                	ja     403440 <fmt_fp+0x780>
  40346d:	4d 39 e8             	cmp    %r13,%r8
  403470:	0f 84 9f 0d 00 00    	je     404215 <fmt_fp+0x1555>
  403476:	b8 2d 00 00 00       	mov    $0x2d,%eax
  40347b:	45 85 c9             	test   %r9d,%r9d
  40347e:	78 05                	js     403485 <fmt_fp+0x7c5>
  403480:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403485:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40348b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40348f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403493:	d9 ee                	fldz
  403495:	d9 ca                	fxch   %st(2)
  403497:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40349e:	45 85 ff             	test   %r15d,%r15d
  4034a1:	48 8d 0d 28 3e 00 00 	lea    0x3e28(%rip),%rcx        # 4072d0 <xdigits>
  4034a8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4034ae:	8d 46 0f             	lea    0xf(%rsi),%eax
  4034b1:	40 0f 9f c7          	setg   %dil
  4034b5:	83 e6 20             	and    $0x20,%esi
  4034b8:	41 88 40 fe          	mov    %al,-0x2(%r8)
  4034bc:	4c 89 e8             	mov    %r13,%rax
  4034bf:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  4034c5:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  4034cc:	80 ce 0c             	or     $0xc,%dh
  4034cf:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  4034d6:	eb 1b                	jmp    4034f3 <fmt_fp+0x833>
  4034d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4034df:	00 
  4034e0:	4c 89 c0             	mov    %r8,%rax
  4034e3:	d9 c2                	fld    %st(2)
  4034e5:	d9 c9                	fxch   %st(1)
  4034e7:	db e9                	fucomi %st(1),%st
  4034e9:	dd d9                	fstp   %st(1)
  4034eb:	7a 06                	jp     4034f3 <fmt_fp+0x833>
  4034ed:	0f 84 dc 10 00 00    	je     4045cf <fmt_fp+0x190f>
  4034f3:	d9 c0                	fld    %st(0)
  4034f5:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  4034fb:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403501:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403507:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40350b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403511:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403518:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40351d:	de e9                	fsubrp %st,%st(1)
  40351f:	41 09 f3             	or     %esi,%r11d
  403522:	44 88 18             	mov    %r11b,(%rax)
  403525:	d8 c9                	fmul   %st(1),%st
  403527:	4c 39 e8             	cmp    %r13,%rax
  40352a:	75 b4                	jne    4034e0 <fmt_fp+0x820>
  40352c:	d9 c2                	fld    %st(2)
  40352e:	df e9                	fucomip %st(1),%st
  403530:	0f 9a c2             	setp   %dl
  403533:	41 0f 45 d1          	cmovne %r9d,%edx
  403537:	84 d2                	test   %dl,%dl
  403539:	0f 85 31 06 00 00    	jne    403b70 <fmt_fp+0xeb0>
  40353f:	40 84 ff             	test   %dil,%dil
  403542:	0f 85 28 06 00 00    	jne    403b70 <fmt_fp+0xeb0>
  403548:	dd d8                	fstp   %st(0)
  40354a:	dd d8                	fstp   %st(0)
  40354c:	dd d8                	fstp   %st(0)
  40354e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403555:	74 08                	je     40355f <fmt_fp+0x89f>
  403557:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40355b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40355f:	4d 89 ec             	mov    %r13,%r12
  403562:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  403567:	48 63 c3             	movslq %ebx,%rax
  40356a:	49 63 cf             	movslq %r15d,%rcx
  40356d:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  403574:	4c 29 e2             	sub    %r12,%rdx
  403577:	48 29 c2             	sub    %rax,%rdx
  40357a:	48 39 d1             	cmp    %rdx,%rcx
  40357d:	0f 8f 24 10 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  403583:	4d 29 e8             	sub    %r13,%r8
  403586:	45 85 ff             	test   %r15d,%r15d
  403589:	74 0d                	je     403598 <fmt_fp+0x8d8>
  40358b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40358f:	48 39 d1             	cmp    %rdx,%rcx
  403592:	0f 8d ac 0c 00 00    	jge    404244 <fmt_fp+0x1584>
  403598:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40359c:	45 89 f7             	mov    %r14d,%r15d
  40359f:	44 01 fb             	add    %r15d,%ebx
  4035a2:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4035a9:	20 01 
  4035ab:	0f 85 a0 0b 00 00    	jne    404151 <fmt_fp+0x1491>
  4035b1:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4035b7:	39 d3                	cmp    %edx,%ebx
  4035b9:	0f 8d 1e fd ff ff    	jge    4032dd <fmt_fp+0x61d>
  4035bf:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4035c6:	89 d9                	mov    %ebx,%ecx
  4035c8:	be 20 00 00 00       	mov    $0x20,%esi
  4035cd:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  4035d4:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  4035db:	e8 e0 f5 ff ff       	call   402bc0 <pad.part.0>
  4035e0:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4035e7:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  4035ee:	f6 00 20             	testb  $0x20,(%rax)
  4035f1:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  4035f8:	0f 85 ef fc ff ff    	jne    4032ed <fmt_fp+0x62d>
  4035fe:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403605:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40360c:	48 89 c6             	mov    %rax,%rsi
  40360f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403616:	e8 45 2e 00 00       	call   406460 <__fwritex>
  40361b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403621:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403627:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  40362e:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403635:	35 00 00 01 00       	xor    $0x10000,%eax
  40363a:	a9 00 20 01 00       	test   $0x12000,%eax
  40363f:	75 37                	jne    403678 <fmt_fp+0x9b8>
  403641:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403648:	75 2e                	jne    403678 <fmt_fp+0x9b8>
  40364a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403650:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403657:	89 d9                	mov    %ebx,%ecx
  403659:	be 30 00 00 00       	mov    $0x30,%esi
  40365e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403665:	e8 56 f5 ff ff       	call   402bc0 <pad.part.0>
  40366a:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  403671:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403678:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40367f:	f6 00 20             	testb  $0x20,(%rax)
  403682:	0f 85 05 0b 00 00    	jne    40418d <fmt_fp+0x14cd>
  403688:	48 89 c2             	mov    %rax,%rdx
  40368b:	4c 89 c6             	mov    %r8,%rsi
  40368e:	4c 89 ef             	mov    %r13,%rdi
  403691:	45 29 f7             	sub    %r14d,%r15d
  403694:	e8 c7 2d 00 00       	call   406460 <__fwritex>
  403699:	45 85 ff             	test   %r15d,%r15d
  40369c:	0f 8e 76 fc ff ff    	jle    403318 <fmt_fp+0x658>
  4036a2:	e9 5b fc ff ff       	jmp    403302 <fmt_fp+0x642>
  4036a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4036ae:	00 00 
  4036b0:	44 89 c9             	mov    %r9d,%ecx
  4036b3:	45 31 c9             	xor    %r9d,%r9d
  4036b6:	f7 d9                	neg    %ecx
  4036b8:	49 39 dc             	cmp    %rbx,%r12
  4036bb:	0f 82 2b f9 ff ff    	jb     402fec <fmt_fp+0x32c>
  4036c1:	41 8b 34 24          	mov    (%r12),%esi
  4036c5:	85 f6                	test   %esi,%esi
  4036c7:	0f 84 66 05 00 00    	je     403c33 <fmt_fp+0xf73>
  4036cd:	41 83 fe 66          	cmp    $0x66,%r14d
  4036d1:	0f 85 cf f9 ff ff    	jne    4030a6 <fmt_fp+0x3e6>
  4036d7:	4c 89 e0             	mov    %r12,%rax
  4036da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4036e0:	49 89 c4             	mov    %rax,%r12
  4036e3:	48 89 f8             	mov    %rdi,%rax
  4036e6:	e9 a3 f9 ff ff       	jmp    40308e <fmt_fp+0x3ce>
  4036eb:	a8 01                	test   $0x1,%al
  4036ed:	0f 84 2f 0b 00 00    	je     404222 <fmt_fp+0x1562>
  4036f3:	db 2d e7 3d 00 00    	fldt   0x3de7(%rip)        # 4074e0 <states+0x200>
  4036f9:	d1 f9                	sar    $1,%ecx
  4036fb:	41 39 c9             	cmp    %ecx,%r9d
  4036fe:	0f 82 06 0b 00 00    	jb     40420a <fmt_fp+0x154a>
  403704:	44 39 c9             	cmp    %r9d,%ecx
  403707:	0f 84 31 0e 00 00    	je     40453e <fmt_fp+0x187e>
  40370d:	d9 05 a9 3d 00 00    	flds   0x3da9(%rip)        # 4074bc <states+0x1dc>
  403713:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403719:	85 d2                	test   %edx,%edx
  40371b:	74 14                	je     403731 <fmt_fp+0xa71>
  40371d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403724:	80 38 2d             	cmpb   $0x2d,(%rax)
  403727:	75 08                	jne    403731 <fmt_fp+0xa71>
  403729:	d9 c9                	fxch   %st(1)
  40372b:	d9 e0                	fchs
  40372d:	d9 c9                	fxch   %st(1)
  40372f:	d9 e0                	fchs
  403731:	d8 c1                	fadd   %st(1),%st
  403733:	44 89 d0             	mov    %r10d,%eax
  403736:	44 29 c8             	sub    %r9d,%eax
  403739:	df e9                	fucomip %st(1),%st
  40373b:	dd d8                	fstp   %st(0)
  40373d:	0f 8a 4c 09 00 00    	jp     40408f <fmt_fp+0x13cf>
  403743:	0f 85 46 09 00 00    	jne    40408f <fmt_fp+0x13cf>
  403749:	89 06                	mov    %eax,(%rsi)
  40374b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40374f:	48 39 d3             	cmp    %rdx,%rbx
  403752:	48 0f 47 da          	cmova  %rdx,%rbx
  403756:	49 39 dc             	cmp    %rbx,%r12
  403759:	72 0e                	jb     403769 <fmt_fp+0xaa9>
  40375b:	eb 13                	jmp    403770 <fmt_fp+0xab0>
  40375d:	0f 1f 00             	nopl   (%rax)
  403760:	48 83 eb 04          	sub    $0x4,%rbx
  403764:	49 39 dc             	cmp    %rbx,%r12
  403767:	73 07                	jae    403770 <fmt_fp+0xab0>
  403769:	8b 43 fc             	mov    -0x4(%rbx),%eax
  40376c:	85 c0                	test   %eax,%eax
  40376e:	74 f0                	je     403760 <fmt_fp+0xaa0>
  403770:	41 83 fe 67          	cmp    $0x67,%r14d
  403774:	0f 84 25 05 00 00    	je     403c9f <fmt_fp+0xfdf>
  40377a:	45 85 ff             	test   %r15d,%r15d
  40377d:	0f 85 ba 04 00 00    	jne    403c3d <fmt_fp+0xf7d>
  403783:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40378a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403790:	41 c1 e9 03          	shr    $0x3,%r9d
  403794:	41 83 e1 01          	and    $0x1,%r9d
  403798:	41 83 c1 01          	add    $0x1,%r9d
  40379c:	45 29 ca             	sub    %r9d,%r10d
  40379f:	41 83 fe 66          	cmp    $0x66,%r14d
  4037a3:	0f 84 80 0b 00 00    	je     404329 <fmt_fp+0x1669>
  4037a9:	4d 63 d2             	movslq %r10d,%r10
  4037ac:	85 ff                	test   %edi,%edi
  4037ae:	0f 84 9e 0d 00 00    	je     404552 <fmt_fp+0x1892>
  4037b4:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  4037bb:	cc cc cc 
  4037be:	89 fe                	mov    %edi,%esi
  4037c0:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4037c4:	f7 de                	neg    %esi
  4037c6:	4c 89 e9             	mov    %r13,%rcx
  4037c9:	0f 48 f7             	cmovs  %edi,%esi
  4037cc:	48 63 f6             	movslq %esi,%rsi
  4037cf:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4037d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037db:	00 00 00 00 
  4037df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037e6:	00 00 00 00 
  4037ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037f1:	00 00 00 00 
  4037f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037fc:	00 00 00 00 
  403800:	48 89 f0             	mov    %rsi,%rax
  403803:	48 83 e9 01          	sub    $0x1,%rcx
  403807:	49 f7 e0             	mul    %r8
  40380a:	48 89 f0             	mov    %rsi,%rax
  40380d:	48 c1 ea 03          	shr    $0x3,%rdx
  403811:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403815:	4d 01 db             	add    %r11,%r11
  403818:	4c 29 d8             	sub    %r11,%rax
  40381b:	83 c0 30             	add    $0x30,%eax
  40381e:	48 83 fe 09          	cmp    $0x9,%rsi
  403822:	48 89 d6             	mov    %rdx,%rsi
  403825:	88 01                	mov    %al,(%rcx)
  403827:	77 d7                	ja     403800 <fmt_fp+0xb40>
  403829:	4c 89 e8             	mov    %r13,%rax
  40382c:	48 29 c8             	sub    %rcx,%rax
  40382f:	48 83 f8 01          	cmp    $0x1,%rax
  403833:	7f 1e                	jg     403853 <fmt_fp+0xb93>
  403835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40383c:	00 00 00 00 
  403840:	48 83 e9 01          	sub    $0x1,%rcx
  403844:	4c 89 e8             	mov    %r13,%rax
  403847:	c6 01 30             	movb   $0x30,(%rcx)
  40384a:	48 29 c8             	sub    %rcx,%rax
  40384d:	48 83 f8 01          	cmp    $0x1,%rax
  403851:	7e ed                	jle    403840 <fmt_fp+0xb80>
  403853:	c1 ff 1f             	sar    $0x1f,%edi
  403856:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40385a:	83 e7 02             	and    $0x2,%edi
  40385d:	49 29 c5             	sub    %rax,%r13
  403860:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  403867:	83 c7 2b             	add    $0x2b,%edi
  40386a:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  40386e:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  403875:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  403879:	4d 39 d5             	cmp    %r10,%r13
  40387c:	0f 8f 25 0d 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  403882:	45 01 e9             	add    %r13d,%r9d
  403885:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  40388a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403890:	41 39 c1             	cmp    %eax,%r9d
  403893:	0f 8f 0e 0d 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  403899:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40389f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  4038a5:	44 01 c8             	add    %r9d,%eax
  4038a8:	39 f8                	cmp    %edi,%eax
  4038aa:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  4038b0:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  4038b7:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4038be:	20 01 
  4038c0:	0f 85 3c 07 00 00    	jne    404002 <fmt_fp+0x1342>
  4038c6:	39 f8                	cmp    %edi,%eax
  4038c8:	0f 8d c5 06 00 00    	jge    403f93 <fmt_fp+0x12d3>
  4038ce:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  4038d5:	89 fa                	mov    %edi,%edx
  4038d7:	89 c1                	mov    %eax,%ecx
  4038d9:	be 20 00 00 00       	mov    $0x20,%esi
  4038de:	4c 89 ef             	mov    %r13,%rdi
  4038e1:	e8 da f2 ff ff       	call   402bc0 <pad.part.0>
  4038e6:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4038eb:	0f 84 b2 06 00 00    	je     403fa3 <fmt_fp+0x12e3>
  4038f1:	41 83 fe 66          	cmp    $0x66,%r14d
  4038f5:	0f 84 75 04 00 00    	je     403d70 <fmt_fp+0x10b0>
  4038fb:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403900:	49 39 dc             	cmp    %rbx,%r12
  403903:	48 0f 43 d8          	cmovae %rax,%rbx
  403907:	45 85 ff             	test   %r15d,%r15d
  40390a:	0f 88 af 01 00 00    	js     403abf <fmt_fp+0xdff>
  403910:	49 39 dc             	cmp    %rbx,%r12
  403913:	0f 83 a6 01 00 00    	jae    403abf <fmt_fp+0xdff>
  403919:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40391e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403925:	4d 89 e6             	mov    %r12,%r14
  403928:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  40392c:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403933:	66 0f 6e c0          	movd   %eax,%xmm0
  403937:	49 89 dc             	mov    %rbx,%r12
  40393a:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403941:	cc cc cc 
  403944:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403948:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  40394d:	0f 1f 00             	nopl   (%rax)
  403950:	41 8b 0e             	mov    (%r14),%ecx
  403953:	4c 89 c7             	mov    %r8,%rdi
  403956:	48 85 c9             	test   %rcx,%rcx
  403959:	0f 84 e1 01 00 00    	je     403b40 <fmt_fp+0xe80>
  40395f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403966:	00 00 00 00 
  40396a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403971:	00 00 00 00 
  403975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40397c:	00 00 00 00 
  403980:	48 89 c8             	mov    %rcx,%rax
  403983:	48 83 ef 01          	sub    $0x1,%rdi
  403987:	49 f7 e5             	mul    %r13
  40398a:	48 89 c8             	mov    %rcx,%rax
  40398d:	48 c1 ea 03          	shr    $0x3,%rdx
  403991:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403995:	48 01 f6             	add    %rsi,%rsi
  403998:	48 29 f0             	sub    %rsi,%rax
  40399b:	83 c0 30             	add    $0x30,%eax
  40399e:	48 83 f9 09          	cmp    $0x9,%rcx
  4039a2:	48 89 d1             	mov    %rdx,%rcx
  4039a5:	88 07                	mov    %al,(%rdi)
  4039a7:	77 d7                	ja     403980 <fmt_fp+0xcc0>
  4039a9:	4c 39 c7             	cmp    %r8,%rdi
  4039ac:	0f 84 8e 01 00 00    	je     403b40 <fmt_fp+0xe80>
  4039b2:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  4039b9:	0f 84 96 01 00 00    	je     403b55 <fmt_fp+0xe95>
  4039bf:	48 39 fb             	cmp    %rdi,%rbx
  4039c2:	0f 83 c9 02 00 00    	jae    403c91 <fmt_fp+0xfd1>
  4039c8:	48 89 fe             	mov    %rdi,%rsi
  4039cb:	48 89 f8             	mov    %rdi,%rax
  4039ce:	48 29 de             	sub    %rbx,%rsi
  4039d1:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  4039d5:	48 83 fa 0e          	cmp    $0xe,%rdx
  4039d9:	76 3d                	jbe    403a18 <fmt_fp+0xd58>
  4039db:	48 89 f1             	mov    %rsi,%rcx
  4039de:	48 89 fa             	mov    %rdi,%rdx
  4039e1:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4039e5:	48 29 ca             	sub    %rcx,%rdx
  4039e8:	f6 c1 10             	test   $0x10,%cl
  4039eb:	74 13                	je     403a00 <fmt_fp+0xd40>
  4039ed:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  4039f1:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  4039f5:	48 39 d0             	cmp    %rdx,%rax
  4039f8:	74 16                	je     403a10 <fmt_fp+0xd50>
  4039fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a00:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403a04:	48 83 e8 20          	sub    $0x20,%rax
  403a08:	0f 11 00             	movups %xmm0,(%rax)
  403a0b:	48 39 d0             	cmp    %rdx,%rax
  403a0e:	75 f0                	jne    403a00 <fmt_fp+0xd40>
  403a10:	48 39 f1             	cmp    %rsi,%rcx
  403a13:	74 3b                	je     403a50 <fmt_fp+0xd90>
  403a15:	48 29 cf             	sub    %rcx,%rdi
  403a18:	48 89 d8             	mov    %rbx,%rax
  403a1b:	48 f7 d0             	not    %rax
  403a1e:	48 01 f8             	add    %rdi,%rax
  403a21:	48 83 ef 01          	sub    $0x1,%rdi
  403a25:	c6 07 30             	movb   $0x30,(%rdi)
  403a28:	48 39 fb             	cmp    %rdi,%rbx
  403a2b:	73 23                	jae    403a50 <fmt_fp+0xd90>
  403a2d:	a8 01                	test   $0x1,%al
  403a2f:	74 0f                	je     403a40 <fmt_fp+0xd80>
  403a31:	48 83 ef 01          	sub    $0x1,%rdi
  403a35:	c6 07 30             	movb   $0x30,(%rdi)
  403a38:	48 39 fb             	cmp    %rdi,%rbx
  403a3b:	73 13                	jae    403a50 <fmt_fp+0xd90>
  403a3d:	0f 1f 00             	nopl   (%rax)
  403a40:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403a44:	48 83 ef 02          	sub    $0x2,%rdi
  403a48:	c6 07 30             	movb   $0x30,(%rdi)
  403a4b:	48 39 fb             	cmp    %rdi,%rbx
  403a4e:	72 f0                	jb     403a40 <fmt_fp+0xd80>
  403a50:	41 8b 02             	mov    (%r10),%eax
  403a53:	49 89 d9             	mov    %rbx,%r9
  403a56:	83 e0 20             	and    $0x20,%eax
  403a59:	4c 89 c1             	mov    %r8,%rcx
  403a5c:	4c 29 c9             	sub    %r9,%rcx
  403a5f:	85 c0                	test   %eax,%eax
  403a61:	75 47                	jne    403aaa <fmt_fp+0xdea>
  403a63:	49 63 f7             	movslq %r15d,%rsi
  403a66:	4c 89 d2             	mov    %r10,%rdx
  403a69:	4c 89 cf             	mov    %r9,%rdi
  403a6c:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403a73:	48 39 ce             	cmp    %rcx,%rsi
  403a76:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403a7d:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403a81:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403a88:	e8 d3 29 00 00       	call   406460 <__fwritex>
  403a8d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403a94:	66 0f 6f 05 54 3a 00 	movdqa 0x3a54(%rip),%xmm0        # 4074f0 <states+0x210>
  403a9b:	00 
  403a9c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403aa3:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403aaa:	49 83 c6 04          	add    $0x4,%r14
  403aae:	41 29 cf             	sub    %ecx,%r15d
  403ab1:	4d 39 e6             	cmp    %r12,%r14
  403ab4:	73 09                	jae    403abf <fmt_fp+0xdff>
  403ab6:	45 85 ff             	test   %r15d,%r15d
  403ab9:	0f 89 91 fe ff ff    	jns    403950 <fmt_fp+0xc90>
  403abf:	41 8d 57 12          	lea    0x12(%r15),%edx
  403ac3:	83 fa 12             	cmp    $0x12,%edx
  403ac6:	7e 16                	jle    403ade <fmt_fp+0xe1e>
  403ac8:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403acf:	b9 12 00 00 00       	mov    $0x12,%ecx
  403ad4:	be 30 00 00 00       	mov    $0x30,%esi
  403ad9:	e8 e2 f0 ff ff       	call   402bc0 <pad.part.0>
  403ade:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403ae5:	f6 00 20             	testb  $0x20,(%rax)
  403ae8:	0f 84 86 05 00 00    	je     404074 <fmt_fp+0x13b4>
  403aee:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403af4:	80 f4 20             	xor    $0x20,%ah
  403af7:	a9 00 20 01 00       	test   $0x12000,%eax
  403afc:	75 26                	jne    403b24 <fmt_fp+0xe64>
  403afe:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403b05:	75 1d                	jne    403b24 <fmt_fp+0xe64>
  403b07:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403b0d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403b13:	be 20 00 00 00       	mov    $0x20,%esi
  403b18:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403b1f:	e8 9c f0 ff ff       	call   402bc0 <pad.part.0>
  403b24:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403b2a:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403b30:	39 c7                	cmp    %eax,%edi
  403b32:	0f 4d c7             	cmovge %edi,%eax
  403b35:	e9 65 f7 ff ff       	jmp    40329f <fmt_fp+0x5df>
  403b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403b40:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403b44:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403b48:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403b4f:	0f 85 73 fe ff ff    	jne    4039c8 <fmt_fp+0xd08>
  403b55:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403b59:	41 f6 02 20          	testb  $0x20,(%r10)
  403b5d:	74 1e                	je     403b7d <fmt_fp+0xebd>
  403b5f:	4c 89 c1             	mov    %r8,%rcx
  403b62:	4c 29 c9             	sub    %r9,%rcx
  403b65:	e9 40 ff ff ff       	jmp    403aaa <fmt_fp+0xdea>
  403b6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403b70:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403b74:	48 83 c0 02          	add    $0x2,%rax
  403b78:	e9 66 f9 ff ff       	jmp    4034e3 <fmt_fp+0x823>
  403b7d:	4c 89 d2             	mov    %r10,%rdx
  403b80:	be 01 00 00 00       	mov    $0x1,%esi
  403b85:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403b8c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403b93:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403b9a:	e8 c1 28 00 00       	call   406460 <__fwritex>
  403b9f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403ba6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403bac:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403bb3:	66 0f 6f 05 35 39 00 	movdqa 0x3935(%rip),%xmm0        # 4074f0 <states+0x210>
  403bba:	00 
  403bbb:	41 8b 02             	mov    (%r10),%eax
  403bbe:	83 e2 08             	and    $0x8,%edx
  403bc1:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403bc8:	83 e0 20             	and    $0x20,%eax
  403bcb:	44 09 fa             	or     %r15d,%edx
  403bce:	0f 84 85 fe ff ff    	je     403a59 <fmt_fp+0xd99>
  403bd4:	85 c0                	test   %eax,%eax
  403bd6:	75 87                	jne    403b5f <fmt_fp+0xe9f>
  403bd8:	4c 89 d2             	mov    %r10,%rdx
  403bdb:	be 01 00 00 00       	mov    $0x1,%esi
  403be0:	48 8d 3d 80 35 00 00 	lea    0x3580(%rip),%rdi        # 407167 <_fini+0x2a3>
  403be7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403bee:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403bf5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403bfc:	e8 5f 28 00 00       	call   406460 <__fwritex>
  403c01:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c08:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c0f:	66 0f 6f 05 d9 38 00 	movdqa 0x38d9(%rip),%xmm0        # 4074f0 <states+0x210>
  403c16:	00 
  403c17:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403c1e:	41 8b 02             	mov    (%r10),%eax
  403c21:	83 e0 20             	and    $0x20,%eax
  403c24:	e9 30 fe ff ff       	jmp    403a59 <fmt_fp+0xd99>
  403c29:	44 89 f8             	mov    %r15d,%eax
  403c2c:	31 ff                	xor    %edi,%edi
  403c2e:	e9 e5 f4 ff ff       	jmp    403118 <fmt_fp+0x458>
  403c33:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403c38:	e9 44 f4 ff ff       	jmp    403081 <fmt_fp+0x3c1>
  403c3d:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403c44:	0f 8f 5d 09 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  403c4a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403c51:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403c55:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403c5b:	45 29 ca             	sub    %r9d,%r10d
  403c5e:	41 83 ce 20          	or     $0x20,%r14d
  403c62:	41 83 fe 66          	cmp    $0x66,%r14d
  403c66:	0f 85 3d fb ff ff    	jne    4037a9 <fmt_fp+0xae9>
  403c6c:	44 39 d7             	cmp    %r10d,%edi
  403c6f:	0f 8f 32 09 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  403c75:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403c7b:	85 ff                	test   %edi,%edi
  403c7d:	0f 8e 02 fc ff ff    	jle    403885 <fmt_fp+0xbc5>
  403c83:	41 01 f9             	add    %edi,%r9d
  403c86:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403c8c:	e9 f4 fb ff ff       	jmp    403885 <fmt_fp+0xbc5>
  403c91:	41 8b 02             	mov    (%r10),%eax
  403c94:	49 89 f9             	mov    %rdi,%r9
  403c97:	83 e0 20             	and    $0x20,%eax
  403c9a:	e9 ba fd ff ff       	jmp    403a59 <fmt_fp+0xd99>
  403c9f:	45 85 ff             	test   %r15d,%r15d
  403ca2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403ca8:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403cac:	41 39 f9             	cmp    %edi,%r9d
  403caf:	0f 8e e9 04 00 00    	jle    40419e <fmt_fp+0x14de>
  403cb5:	83 ff fc             	cmp    $0xfffffffc,%edi
  403cb8:	0f 8c e0 04 00 00    	jl     40419e <fmt_fp+0x14de>
  403cbe:	8d 47 01             	lea    0x1(%rdi),%eax
  403cc1:	45 89 cf             	mov    %r9d,%r15d
  403cc4:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403ccb:	41 29 c7             	sub    %eax,%r15d
  403cce:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403cd5:	0f 85 9c 05 00 00    	jne    404277 <fmt_fp+0x15b7>
  403cdb:	be 09 00 00 00       	mov    $0x9,%esi
  403ce0:	49 39 dc             	cmp    %rbx,%r12
  403ce3:	73 1f                	jae    403d04 <fmt_fp+0x1044>
  403ce5:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403ce9:	45 85 c9             	test   %r9d,%r9d
  403cec:	74 16                	je     403d04 <fmt_fp+0x1044>
  403cee:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403cf5:	d1 c8                	ror    $1,%eax
  403cf7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403cfc:	0f 86 e0 04 00 00    	jbe    4041e2 <fmt_fp+0x1522>
  403d02:	31 f6                	xor    %esi,%esi
  403d04:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403d0b:	41 83 ce 20          	or     $0x20,%r14d
  403d0f:	41 83 fe 66          	cmp    $0x66,%r14d
  403d13:	0f 85 ac 05 00 00    	jne    4042c5 <fmt_fp+0x1605>
  403d19:	48 89 d8             	mov    %rbx,%rax
  403d1c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403d23:	ba 00 00 00 00       	mov    $0x0,%edx
  403d28:	48 c1 f8 02          	sar    $0x2,%rax
  403d2c:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403d31:	48 29 f0             	sub    %rsi,%rax
  403d34:	48 0f 48 c2          	cmovs  %rdx,%rax
  403d38:	49 63 d7             	movslq %r15d,%rdx
  403d3b:	48 39 d0             	cmp    %rdx,%rax
  403d3e:	48 0f 4f c2          	cmovg  %rdx,%rax
  403d42:	48 85 c0             	test   %rax,%rax
  403d45:	0f 84 66 08 00 00    	je     4045b1 <fmt_fp+0x18f1>
  403d4b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403d51:	0f 8f 50 08 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  403d57:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403d5b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403d61:	41 89 c7             	mov    %eax,%r15d
  403d64:	45 29 ca             	sub    %r9d,%r10d
  403d67:	e9 00 ff ff ff       	jmp    403c6c <fmt_fp+0xfac>
  403d6c:	0f 1f 40 00          	nopl   0x0(%rax)
  403d70:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403d77:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403d7e:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403d83:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403d8a:	cc cc cc 
  403d8d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403d94:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403d9b:	66 0f 6e c7          	movd   %edi,%xmm0
  403d9f:	4c 39 e0             	cmp    %r12,%rax
  403da2:	49 89 c6             	mov    %rax,%r14
  403da5:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403daa:	4c 0f 46 e0          	cmovbe %rax,%r12
  403dae:	4c 89 e3             	mov    %r12,%rbx
  403db1:	0f 1f 40 00          	nopl   0x0(%rax)
  403db5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403dbc:	00 00 00 00 
  403dc0:	41 8b 0c 24          	mov    (%r12),%ecx
  403dc4:	48 85 c9             	test   %rcx,%rcx
  403dc7:	0f 84 43 02 00 00    	je     404010 <fmt_fp+0x1350>
  403dcd:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403dd1:	48 89 f7             	mov    %rsi,%rdi
  403dd4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ddb:	00 00 00 00 
  403ddf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403de6:	00 00 00 00 
  403dea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403df1:	00 00 00 00 
  403df5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403dfc:	00 00 00 00 
  403e00:	48 89 c8             	mov    %rcx,%rax
  403e03:	48 83 ef 01          	sub    $0x1,%rdi
  403e07:	49 f7 e5             	mul    %r13
  403e0a:	48 89 c8             	mov    %rcx,%rax
  403e0d:	48 c1 ea 03          	shr    $0x3,%rdx
  403e11:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403e15:	4d 01 c0             	add    %r8,%r8
  403e18:	4c 29 c0             	sub    %r8,%rax
  403e1b:	83 c0 30             	add    $0x30,%eax
  403e1e:	48 83 f9 09          	cmp    $0x9,%rcx
  403e22:	48 89 d1             	mov    %rdx,%rcx
  403e25:	88 07                	mov    %al,(%rdi)
  403e27:	77 d7                	ja     403e00 <fmt_fp+0x1140>
  403e29:	4c 39 e3             	cmp    %r12,%rbx
  403e2c:	0f 84 36 01 00 00    	je     403f68 <fmt_fp+0x12a8>
  403e32:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403e36:	48 39 fa             	cmp    %rdi,%rdx
  403e39:	0f 83 32 01 00 00    	jae    403f71 <fmt_fp+0x12b1>
  403e3f:	49 89 fa             	mov    %rdi,%r10
  403e42:	48 89 f8             	mov    %rdi,%rax
  403e45:	49 29 d2             	sub    %rdx,%r10
  403e48:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403e4c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403e50:	76 46                	jbe    403e98 <fmt_fp+0x11d8>
  403e52:	4c 89 d6             	mov    %r10,%rsi
  403e55:	48 89 f9             	mov    %rdi,%rcx
  403e58:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403e5c:	48 29 f1             	sub    %rsi,%rcx
  403e5f:	40 f6 c6 10          	test   $0x10,%sil
  403e63:	74 1b                	je     403e80 <fmt_fp+0x11c0>
  403e65:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403e69:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403e6d:	48 39 c8             	cmp    %rcx,%rax
  403e70:	74 1e                	je     403e90 <fmt_fp+0x11d0>
  403e72:	0f 1f 00             	nopl   (%rax)
  403e75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e7c:	00 00 00 00 
  403e80:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403e84:	48 83 e8 20          	sub    $0x20,%rax
  403e88:	0f 11 00             	movups %xmm0,(%rax)
  403e8b:	48 39 c8             	cmp    %rcx,%rax
  403e8e:	75 f0                	jne    403e80 <fmt_fp+0x11c0>
  403e90:	4c 39 d6             	cmp    %r10,%rsi
  403e93:	74 3b                	je     403ed0 <fmt_fp+0x1210>
  403e95:	48 29 f7             	sub    %rsi,%rdi
  403e98:	48 89 d0             	mov    %rdx,%rax
  403e9b:	48 f7 d0             	not    %rax
  403e9e:	48 01 f8             	add    %rdi,%rax
  403ea1:	48 83 ef 01          	sub    $0x1,%rdi
  403ea5:	c6 07 30             	movb   $0x30,(%rdi)
  403ea8:	48 39 fa             	cmp    %rdi,%rdx
  403eab:	73 23                	jae    403ed0 <fmt_fp+0x1210>
  403ead:	a8 01                	test   $0x1,%al
  403eaf:	74 0f                	je     403ec0 <fmt_fp+0x1200>
  403eb1:	48 83 ef 01          	sub    $0x1,%rdi
  403eb5:	c6 07 30             	movb   $0x30,(%rdi)
  403eb8:	48 39 fa             	cmp    %rdi,%rdx
  403ebb:	73 13                	jae    403ed0 <fmt_fp+0x1210>
  403ebd:	0f 1f 00             	nopl   (%rax)
  403ec0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403ec4:	48 83 ef 02          	sub    $0x2,%rdi
  403ec8:	c6 07 30             	movb   $0x30,(%rdi)
  403ecb:	48 39 fa             	cmp    %rdi,%rdx
  403ece:	72 f0                	jb     403ec0 <fmt_fp+0x1200>
  403ed0:	be 09 00 00 00       	mov    $0x9,%esi
  403ed5:	48 89 d7             	mov    %rdx,%rdi
  403ed8:	41 f6 07 20          	testb  $0x20,(%r15)
  403edc:	0f 84 9c 00 00 00    	je     403f7e <fmt_fp+0x12be>
  403ee2:	49 83 c4 04          	add    $0x4,%r12
  403ee6:	4d 39 e6             	cmp    %r12,%r14
  403ee9:	0f 83 d1 fe ff ff    	jae    403dc0 <fmt_fp+0x1100>
  403eef:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403ef6:	49 89 dc             	mov    %rbx,%r12
  403ef9:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403f00:	45 85 ff             	test   %r15d,%r15d
  403f03:	0f 85 36 04 00 00    	jne    40433f <fmt_fp+0x167f>
  403f09:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403f10:	0f 84 d8 fb ff ff    	je     403aee <fmt_fp+0xe2e>
  403f16:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403f1d:	f6 02 20             	testb  $0x20,(%rdx)
  403f20:	0f 85 c8 fb ff ff    	jne    403aee <fmt_fp+0xe2e>
  403f26:	be 01 00 00 00       	mov    $0x1,%esi
  403f2b:	48 8d 3d 35 32 00 00 	lea    0x3235(%rip),%rdi        # 407167 <_fini+0x2a3>
  403f32:	e8 29 25 00 00       	call   406460 <__fwritex>
  403f37:	41 83 c7 09          	add    $0x9,%r15d
  403f3b:	41 83 ff 09          	cmp    $0x9,%r15d
  403f3f:	0f 8e a9 fb ff ff    	jle    403aee <fmt_fp+0xe2e>
  403f45:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403f4c:	b9 09 00 00 00       	mov    $0x9,%ecx
  403f51:	44 89 fa             	mov    %r15d,%edx
  403f54:	be 30 00 00 00       	mov    $0x30,%esi
  403f59:	e8 62 ec ff ff       	call   402bc0 <pad.part.0>
  403f5e:	e9 8b fb ff ff       	jmp    403aee <fmt_fp+0xe2e>
  403f63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403f68:	48 39 f7             	cmp    %rsi,%rdi
  403f6b:	0f 84 b0 00 00 00    	je     404021 <fmt_fp+0x1361>
  403f71:	48 29 fe             	sub    %rdi,%rsi
  403f74:	41 f6 07 20          	testb  $0x20,(%r15)
  403f78:	0f 85 64 ff ff ff    	jne    403ee2 <fmt_fp+0x1222>
  403f7e:	4c 89 fa             	mov    %r15,%rdx
  403f81:	e8 da 24 00 00       	call   406460 <__fwritex>
  403f86:	66 0f 6f 05 62 35 00 	movdqa 0x3562(%rip),%xmm0        # 4074f0 <states+0x210>
  403f8d:	00 
  403f8e:	e9 4f ff ff ff       	jmp    403ee2 <fmt_fp+0x1222>
  403f93:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403f9a:	f6 00 20             	testb  $0x20,(%rax)
  403f9d:	0f 85 4e f9 ff ff    	jne    4038f1 <fmt_fp+0xc31>
  403fa3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  403faa:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403fb1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403fb8:	e8 a3 24 00 00       	call   406460 <__fwritex>
  403fbd:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403fc3:	35 00 00 01 00       	xor    $0x10000,%eax
  403fc8:	a9 00 20 01 00       	test   $0x12000,%eax
  403fcd:	0f 85 1e f9 ff ff    	jne    4038f1 <fmt_fp+0xc31>
  403fd3:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403fda:	0f 85 11 f9 ff ff    	jne    4038f1 <fmt_fp+0xc31>
  403fe0:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403fe6:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403fec:	be 30 00 00 00       	mov    $0x30,%esi
  403ff1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403ff8:	e8 c3 eb ff ff       	call   402bc0 <pad.part.0>
  403ffd:	e9 ef f8 ff ff       	jmp    4038f1 <fmt_fp+0xc31>
  404002:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  404009:	f6 00 20             	testb  $0x20,(%rax)
  40400c:	75 af                	jne    403fbd <fmt_fp+0x12fd>
  40400e:	eb 93                	jmp    403fa3 <fmt_fp+0x12e3>
  404010:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  404014:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  404018:	4c 39 e3             	cmp    %r12,%rbx
  40401b:	0f 85 1e fe ff ff    	jne    403e3f <fmt_fp+0x117f>
  404021:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  404025:	be 01 00 00 00       	mov    $0x1,%esi
  40402a:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  40402e:	e9 a5 fe ff ff       	jmp    403ed8 <fmt_fp+0x1218>
  404033:	d9 05 77 34 00 00    	flds   0x3477(%rip)        # 4074b0 <states+0x1d0>
  404039:	d9 05 81 34 00 00    	flds   0x3481(%rip)        # 4074c0 <states+0x1e0>
  40403f:	b8 0e 00 00 00       	mov    $0xe,%eax
  404044:	44 29 f8             	sub    %r15d,%eax
  404047:	90                   	nop
  404048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40404f:	00 
  404050:	dc c9                	fmul   %st,%st(1)
  404052:	83 e8 01             	sub    $0x1,%eax
  404055:	73 f9                	jae    404050 <fmt_fp+0x1390>
  404057:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  40405e:	80 38 2d             	cmpb   $0x2d,(%rax)
  404061:	0f 84 c6 04 00 00    	je     40452d <fmt_fp+0x186d>
  404067:	d9 ca                	fxch   %st(2)
  404069:	d8 c1                	fadd   %st(1),%st
  40406b:	de e1                	fsubp  %st,%st(1)
  40406d:	d9 c9                	fxch   %st(1)
  40406f:	e9 9d f3 ff ff       	jmp    403411 <fmt_fp+0x751>
  404074:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  40407b:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  40407f:	48 89 c2             	mov    %rax,%rdx
  404082:	48 29 fe             	sub    %rdi,%rsi
  404085:	e8 d6 23 00 00       	call   406460 <__fwritex>
  40408a:	e9 5f fa ff ff       	jmp    403aee <fmt_fp+0xe2e>
  40408f:	44 01 d8             	add    %r11d,%eax
  404092:	89 06                	mov    %eax,(%rsi)
  404094:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  404099:	0f 86 3e 05 00 00    	jbe    4045dd <fmt_fp+0x191d>
  40409f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4040a6:	00 00 00 00 
  4040aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4040b1:	00 00 00 00 
  4040b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4040bc:	00 00 00 00 
  4040c0:	48 89 f2             	mov    %rsi,%rdx
  4040c3:	48 83 ee 04          	sub    $0x4,%rsi
  4040c7:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  4040ce:	4c 39 e6             	cmp    %r12,%rsi
  4040d1:	73 0d                	jae    4040e0 <fmt_fp+0x1420>
  4040d3:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  4040da:	00 00 
  4040dc:	49 83 ec 04          	sub    $0x4,%r12
  4040e0:	8b 06                	mov    (%rsi),%eax
  4040e2:	83 c0 01             	add    $0x1,%eax
  4040e5:	89 06                	mov    %eax,(%rsi)
  4040e7:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  4040ec:	77 d2                	ja     4040c0 <fmt_fp+0x1400>
  4040ee:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  4040f5:	41 8b 0c 24          	mov    (%r12),%ecx
  4040f9:	4c 29 e0             	sub    %r12,%rax
  4040fc:	48 c1 f8 02          	sar    $0x2,%rax
  404100:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  404103:	83 f9 09             	cmp    $0x9,%ecx
  404106:	0f 86 43 f6 ff ff    	jbe    40374f <fmt_fp+0xa8f>
  40410c:	b8 0a 00 00 00       	mov    $0xa,%eax
  404111:	0f 1f 40 00          	nopl   0x0(%rax)
  404115:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40411c:	00 00 00 00 
  404120:	8d 04 80             	lea    (%rax,%rax,4),%eax
  404123:	83 c7 01             	add    $0x1,%edi
  404126:	01 c0                	add    %eax,%eax
  404128:	39 c1                	cmp    %eax,%ecx
  40412a:	73 f4                	jae    404120 <fmt_fp+0x1460>
  40412c:	e9 1e f6 ff ff       	jmp    40374f <fmt_fp+0xa8f>
  404131:	be 01 00 00 00       	mov    $0x1,%esi
  404136:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40413c:	e9 d7 ec ff ff       	jmp    402e18 <fmt_fp+0x158>
  404141:	be 01 00 00 00       	mov    $0x1,%esi
  404146:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40414c:	e9 b6 ec ff ff       	jmp    402e07 <fmt_fp+0x147>
  404151:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404158:	f6 07 20             	testb  $0x20,(%rdi)
  40415b:	0f 84 9d f4 ff ff    	je     4035fe <fmt_fp+0x93e>
  404161:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404167:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40416d:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  404174:	35 00 00 01 00       	xor    $0x10000,%eax
  404179:	a9 00 20 01 00       	test   $0x12000,%eax
  40417e:	75 0d                	jne    40418d <fmt_fp+0x14cd>
  404180:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404187:	0f 84 bd f4 ff ff    	je     40364a <fmt_fp+0x98a>
  40418d:	45 29 f7             	sub    %r14d,%r15d
  404190:	45 85 ff             	test   %r15d,%r15d
  404193:	0f 8e 9d f1 ff ff    	jle    403336 <fmt_fp+0x676>
  404199:	e9 64 f1 ff ff       	jmp    403302 <fmt_fp+0x642>
  40419e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  4041a5:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  4041a9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4041b0:	0f 85 9c 00 00 00    	jne    404252 <fmt_fp+0x1592>
  4041b6:	49 39 dc             	cmp    %rbx,%r12
  4041b9:	0f 83 01 01 00 00    	jae    4042c0 <fmt_fp+0x1600>
  4041bf:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  4041c3:	45 85 c9             	test   %r9d,%r9d
  4041c6:	0f 84 f4 00 00 00    	je     4042c0 <fmt_fp+0x1600>
  4041cc:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  4041d3:	31 f6                	xor    %esi,%esi
  4041d5:	d1 c8                	ror    $1,%eax
  4041d7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  4041dc:	0f 87 e3 00 00 00    	ja     4042c5 <fmt_fp+0x1605>
  4041e2:	31 f6                	xor    %esi,%esi
  4041e4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4041e9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4041ec:	44 89 c8             	mov    %r9d,%eax
  4041ef:	31 d2                	xor    %edx,%edx
  4041f1:	83 c6 01             	add    $0x1,%esi
  4041f4:	01 c9                	add    %ecx,%ecx
  4041f6:	f7 f1                	div    %ecx
  4041f8:	85 d2                	test   %edx,%edx
  4041fa:	74 ed                	je     4041e9 <fmt_fp+0x1529>
  4041fc:	48 63 f6             	movslq %esi,%rsi
  4041ff:	e9 00 fb ff ff       	jmp    403d04 <fmt_fp+0x1044>
  404204:	db 2d d6 32 00 00    	fldt   0x32d6(%rip)        # 4074e0 <states+0x200>
  40420a:	d9 05 a8 32 00 00    	flds   0x32a8(%rip)        # 4074b8 <states+0x1d8>
  404210:	e9 fe f4 ff ff       	jmp    403713 <fmt_fp+0xa53>
  404215:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404219:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40421d:	e9 54 f2 ff ff       	jmp    403476 <fmt_fp+0x7b6>
  404222:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  404228:	75 0f                	jne    404239 <fmt_fp+0x1579>
  40422a:	49 39 f4             	cmp    %rsi,%r12
  40422d:	73 0a                	jae    404239 <fmt_fp+0x1579>
  40422f:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  404233:	0f 85 ba f4 ff ff    	jne    4036f3 <fmt_fp+0xa33>
  404239:	d9 05 75 32 00 00    	flds   0x3275(%rip)        # 4074b4 <states+0x1d4>
  40423f:	e9 b5 f4 ff ff       	jmp    4036f9 <fmt_fp+0xa39>
  404244:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404249:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40424d:	e9 4d f3 ff ff       	jmp    40359f <fmt_fp+0x8df>
  404252:	45 85 ff             	test   %r15d,%r15d
  404255:	0f 85 24 03 00 00    	jne    40457f <fmt_fp+0x18bf>
  40425b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404262:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  404268:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  40426e:	41 83 ce 20          	or     $0x20,%r14d
  404272:	e9 3d f5 ff ff       	jmp    4037b4 <fmt_fp+0xaf4>
  404277:	45 85 ff             	test   %r15d,%r15d
  40427a:	0f 85 bd f9 ff ff    	jne    403c3d <fmt_fp+0xf7d>
  404280:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404287:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40428d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404293:	41 83 ce 20          	or     $0x20,%r14d
  404297:	41 83 fe 66          	cmp    $0x66,%r14d
  40429b:	0f 85 08 f5 ff ff    	jne    4037a9 <fmt_fp+0xae9>
  4042a1:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  4042a7:	0f 84 fa 02 00 00    	je     4045a7 <fmt_fp+0x18e7>
  4042ad:	85 ff                	test   %edi,%edi
  4042af:	0f 85 ce f9 ff ff    	jne    403c83 <fmt_fp+0xfc3>
  4042b5:	e9 df f5 ff ff       	jmp    403899 <fmt_fp+0xbd9>
  4042ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4042c0:	be 09 00 00 00       	mov    $0x9,%esi
  4042c5:	48 89 d8             	mov    %rbx,%rax
  4042c8:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  4042cf:	48 63 d7             	movslq %edi,%rdx
  4042d2:	48 c1 f8 02          	sar    $0x2,%rax
  4042d6:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  4042db:	48 01 d0             	add    %rdx,%rax
  4042de:	ba 00 00 00 00       	mov    $0x0,%edx
  4042e3:	48 29 f0             	sub    %rsi,%rax
  4042e6:	48 0f 48 c2          	cmovs  %rdx,%rax
  4042ea:	49 63 d7             	movslq %r15d,%rdx
  4042ed:	48 39 d0             	cmp    %rdx,%rax
  4042f0:	48 0f 4f c2          	cmovg  %rdx,%rax
  4042f4:	41 89 c7             	mov    %eax,%r15d
  4042f7:	48 85 c0             	test   %rax,%rax
  4042fa:	0f 85 3d f9 ff ff    	jne    403c3d <fmt_fp+0xf7d>
  404300:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404307:	41 83 ce 20          	or     $0x20,%r14d
  40430b:	41 83 fe 66          	cmp    $0x66,%r14d
  40430f:	0f 84 9c 02 00 00    	je     4045b1 <fmt_fp+0x18f1>
  404315:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40431b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404321:	45 31 ff             	xor    %r15d,%r15d
  404324:	e9 80 f4 ff ff       	jmp    4037a9 <fmt_fp+0xae9>
  404329:	44 39 d7             	cmp    %r10d,%edi
  40432c:	0f 8f 75 02 00 00    	jg     4045a7 <fmt_fp+0x18e7>
  404332:	85 ff                	test   %edi,%edi
  404334:	0f 8f 49 f9 ff ff    	jg     403c83 <fmt_fp+0xfc3>
  40433a:	e9 5a f5 ff ff       	jmp    403899 <fmt_fp+0xbd9>
  40433f:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404346:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40434b:	48 89 f8             	mov    %rdi,%rax
  40434e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404352:	4c 29 e0             	sub    %r12,%rax
  404355:	48 39 d1             	cmp    %rdx,%rcx
  404358:	ba 00 00 00 00       	mov    $0x0,%edx
  40435d:	48 0f 42 c2          	cmovb  %rdx,%rax
  404361:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  404366:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40436d:	f6 00 20             	testb  $0x20,(%rax)
  404370:	0f 84 70 02 00 00    	je     4045e6 <fmt_fp+0x1926>
  404376:	45 85 ff             	test   %r15d,%r15d
  404379:	0f 8e b8 fb ff ff    	jle    403f37 <fmt_fp+0x1277>
  40437f:	49 39 de             	cmp    %rbx,%r14
  404382:	0f 83 af fb ff ff    	jae    403f37 <fmt_fp+0x1277>
  404388:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40438d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404391:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404395:	49 89 d9             	mov    %rbx,%r9
  404398:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40439f:	66 0f 6e c0          	movd   %eax,%xmm0
  4043a3:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  4043aa:	cc cc cc 
  4043ad:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4043b2:	0f 1f 00             	nopl   (%rax)
  4043b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4043bc:	00 00 00 00 
  4043c0:	41 8b 0e             	mov    (%r14),%ecx
  4043c3:	4c 89 c7             	mov    %r8,%rdi
  4043c6:	48 85 c9             	test   %rcx,%rcx
  4043c9:	74 67                	je     404432 <fmt_fp+0x1772>
  4043cb:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4043d2:	00 00 
  4043d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4043db:	00 00 00 00 
  4043df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4043e6:	00 00 00 00 
  4043ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4043f1:	00 00 00 00 
  4043f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4043fc:	00 00 00 00 
  404400:	48 89 c8             	mov    %rcx,%rax
  404403:	48 83 ef 01          	sub    $0x1,%rdi
  404407:	49 f7 e4             	mul    %r12
  40440a:	48 89 c8             	mov    %rcx,%rax
  40440d:	48 c1 ea 03          	shr    $0x3,%rdx
  404411:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404415:	48 01 f6             	add    %rsi,%rsi
  404418:	48 29 f0             	sub    %rsi,%rax
  40441b:	83 c0 30             	add    $0x30,%eax
  40441e:	48 83 f9 09          	cmp    $0x9,%rcx
  404422:	48 89 d1             	mov    %rdx,%rcx
  404425:	88 07                	mov    %al,(%rdi)
  404427:	77 d7                	ja     404400 <fmt_fp+0x1740>
  404429:	49 39 fd             	cmp    %rdi,%r13
  40442c:	0f 83 91 00 00 00    	jae    4044c3 <fmt_fp+0x1803>
  404432:	48 89 fe             	mov    %rdi,%rsi
  404435:	48 89 f8             	mov    %rdi,%rax
  404438:	4c 29 ee             	sub    %r13,%rsi
  40443b:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  40443f:	48 83 fa 0e          	cmp    $0xe,%rdx
  404443:	76 43                	jbe    404488 <fmt_fp+0x17c8>
  404445:	48 89 f1             	mov    %rsi,%rcx
  404448:	48 89 fa             	mov    %rdi,%rdx
  40444b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40444f:	48 29 ca             	sub    %rcx,%rdx
  404452:	f6 c1 10             	test   $0x10,%cl
  404455:	74 19                	je     404470 <fmt_fp+0x17b0>
  404457:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40445b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40445f:	48 39 d0             	cmp    %rdx,%rax
  404462:	74 1c                	je     404480 <fmt_fp+0x17c0>
  404464:	90                   	nop
  404465:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40446c:	00 00 00 00 
  404470:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404474:	48 83 e8 20          	sub    $0x20,%rax
  404478:	0f 11 00             	movups %xmm0,(%rax)
  40447b:	48 39 d0             	cmp    %rdx,%rax
  40447e:	75 f0                	jne    404470 <fmt_fp+0x17b0>
  404480:	48 39 f1             	cmp    %rsi,%rcx
  404483:	74 3b                	je     4044c0 <fmt_fp+0x1800>
  404485:	48 29 cf             	sub    %rcx,%rdi
  404488:	4c 89 e8             	mov    %r13,%rax
  40448b:	48 f7 d0             	not    %rax
  40448e:	48 01 f8             	add    %rdi,%rax
  404491:	48 83 ef 01          	sub    $0x1,%rdi
  404495:	c6 07 30             	movb   $0x30,(%rdi)
  404498:	49 39 fd             	cmp    %rdi,%r13
  40449b:	73 23                	jae    4044c0 <fmt_fp+0x1800>
  40449d:	a8 01                	test   $0x1,%al
  40449f:	74 0f                	je     4044b0 <fmt_fp+0x17f0>
  4044a1:	48 83 ef 01          	sub    $0x1,%rdi
  4044a5:	c6 07 30             	movb   $0x30,(%rdi)
  4044a8:	49 39 fd             	cmp    %rdi,%r13
  4044ab:	73 13                	jae    4044c0 <fmt_fp+0x1800>
  4044ad:	0f 1f 00             	nopl   (%rax)
  4044b0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  4044b4:	48 83 ef 02          	sub    $0x2,%rdi
  4044b8:	c6 07 30             	movb   $0x30,(%rdi)
  4044bb:	49 39 fd             	cmp    %rdi,%r13
  4044be:	72 f0                	jb     4044b0 <fmt_fp+0x17f0>
  4044c0:	4c 89 ef             	mov    %r13,%rdi
  4044c3:	f6 03 20             	testb  $0x20,(%rbx)
  4044c6:	74 28                	je     4044f0 <fmt_fp+0x1830>
  4044c8:	49 83 c6 04          	add    $0x4,%r14
  4044cc:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  4044d0:	4d 39 ce             	cmp    %r9,%r14
  4044d3:	0f 83 62 fa ff ff    	jae    403f3b <fmt_fp+0x127b>
  4044d9:	85 c0                	test   %eax,%eax
  4044db:	0f 8e 5a fa ff ff    	jle    403f3b <fmt_fp+0x127b>
  4044e1:	41 89 c7             	mov    %eax,%r15d
  4044e4:	e9 d7 fe ff ff       	jmp    4043c0 <fmt_fp+0x1700>
  4044e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4044f0:	b8 09 00 00 00       	mov    $0x9,%eax
  4044f5:	48 89 da             	mov    %rbx,%rdx
  4044f8:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  4044ff:	41 39 c7             	cmp    %eax,%r15d
  404502:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404509:	41 0f 4e c7          	cmovle %r15d,%eax
  40450d:	48 63 f0             	movslq %eax,%rsi
  404510:	e8 4b 1f 00 00       	call   406460 <__fwritex>
  404515:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40451c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404523:	66 0f 6f 05 c5 2f 00 	movdqa 0x2fc5(%rip),%xmm0        # 4074f0 <states+0x210>
  40452a:	00 
  40452b:	eb 9b                	jmp    4044c8 <fmt_fp+0x1808>
  40452d:	d9 ca                	fxch   %st(2)
  40452f:	d9 e0                	fchs
  404531:	d8 e1                	fsub   %st(1),%st
  404533:	de c1                	faddp  %st,%st(1)
  404535:	d9 e0                	fchs
  404537:	d9 c9                	fxch   %st(1)
  404539:	e9 d3 ee ff ff       	jmp    403411 <fmt_fp+0x751>
  40453e:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404542:	48 39 c3             	cmp    %rax,%rbx
  404545:	0f 85 c2 f1 ff ff    	jne    40370d <fmt_fp+0xa4d>
  40454b:	d9 e8                	fld1
  40454d:	e9 c1 f1 ff ff       	jmp    403713 <fmt_fp+0xa53>
  404552:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404556:	4c 89 e9             	mov    %r13,%rcx
  404559:	e9 e2 f2 ff ff       	jmp    403840 <fmt_fp+0xb80>
  40455e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  404564:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404569:	e9 32 ec ff ff       	jmp    4031a0 <fmt_fp+0x4e0>
  40456e:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404572:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  404576:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  40457a:	e9 01 ef ff ff       	jmp    403480 <fmt_fp+0x7c0>
  40457f:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404586:	74 1f                	je     4045a7 <fmt_fp+0x18e7>
  404588:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40458f:	41 83 c1 01          	add    $0x1,%r9d
  404593:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404598:	44 29 c8             	sub    %r9d,%eax
  40459b:	41 83 ce 20          	or     $0x20,%r14d
  40459f:	4c 63 d0             	movslq %eax,%r10
  4045a2:	e9 0d f2 ff ff       	jmp    4037b4 <fmt_fp+0xaf4>
  4045a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4045ac:	e9 ee ec ff ff       	jmp    40329f <fmt_fp+0x5df>
  4045b1:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  4045b7:	74 ee                	je     4045a7 <fmt_fp+0x18e7>
  4045b9:	45 31 ff             	xor    %r15d,%r15d
  4045bc:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4045c2:	85 ff                	test   %edi,%edi
  4045c4:	0f 8f b9 f6 ff ff    	jg     403c83 <fmt_fp+0xfc3>
  4045ca:	e9 ca f2 ff ff       	jmp    403899 <fmt_fp+0xbd9>
  4045cf:	dd d8                	fstp   %st(0)
  4045d1:	dd d8                	fstp   %st(0)
  4045d3:	dd d8                	fstp   %st(0)
  4045d5:	49 89 c0             	mov    %rax,%r8
  4045d8:	e9 82 ef ff ff       	jmp    40355f <fmt_fp+0x89f>
  4045dd:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4045e1:	e9 08 fb ff ff       	jmp    4040ee <fmt_fp+0x142e>
  4045e6:	48 89 c2             	mov    %rax,%rdx
  4045e9:	be 01 00 00 00       	mov    $0x1,%esi
  4045ee:	48 8d 3d 72 2b 00 00 	lea    0x2b72(%rip),%rdi        # 407167 <_fini+0x2a3>
  4045f5:	e8 66 1e 00 00       	call   406460 <__fwritex>
  4045fa:	e9 77 fd ff ff       	jmp    404376 <fmt_fp+0x16b6>
  4045ff:	e8 dc e1 ff ff       	call   4027e0 <__stack_chk_fail>
  404604:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40460b:	00 00 00 
  40460e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404615:	00 00 00 
  404618:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40461f:	00 00 00 
  404622:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404629:	00 00 00 
  40462c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404633:	00 00 00 
  404636:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40463d:	00 00 00 

0000000000404640 <printf_core>:
  404640:	55                   	push   %rbp
  404641:	48 89 e5             	mov    %rsp,%rbp
  404644:	41 57                	push   %r15
  404646:	4c 8d 3d 93 2c 00 00 	lea    0x2c93(%rip),%r15        # 4072e0 <states>
  40464d:	41 56                	push   %r14
  40464f:	49 89 f6             	mov    %rsi,%r14
  404652:	41 55                	push   %r13
  404654:	45 31 ed             	xor    %r13d,%r13d
  404657:	41 54                	push   %r12
  404659:	53                   	push   %rbx
  40465a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  404661:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  404665:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  40466c:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  404673:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  40467a:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404681:	00 00 
  404683:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404687:	45 31 c0             	xor    %r8d,%r8d
  40468a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404691:	00 00 00 
  404694:	41 0f b6 06          	movzbl (%r14),%eax
  404698:	45 01 c5             	add    %r8d,%r13d
  40469b:	84 c0                	test   %al,%al
  40469d:	0f 84 ad 06 00 00    	je     404d50 <printf_core+0x710>
  4046a3:	4d 89 f2             	mov    %r14,%r10
  4046a6:	eb 25                	jmp    4046cd <printf_core+0x8d>
  4046a8:	66 90                	xchg   %ax,%ax
  4046aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046b1:	00 00 00 00 
  4046b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046bc:	00 00 00 00 
  4046c0:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  4046c5:	49 83 c2 01          	add    $0x1,%r10
  4046c9:	84 c0                	test   %al,%al
  4046cb:	74 73                	je     404740 <printf_core+0x100>
  4046cd:	3c 25                	cmp    $0x25,%al
  4046cf:	75 ef                	jne    4046c0 <printf_core+0x80>
  4046d1:	4c 89 d3             	mov    %r10,%rbx
  4046d4:	eb 17                	jmp    4046ed <printf_core+0xad>
  4046d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046dd:	00 00 00 
  4046e0:	48 83 c3 02          	add    $0x2,%rbx
  4046e4:	49 83 c2 01          	add    $0x1,%r10
  4046e8:	80 3b 25             	cmpb   $0x25,(%rbx)
  4046eb:	75 06                	jne    4046f3 <printf_core+0xb3>
  4046ed:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  4046f1:	74 ed                	je     4046e0 <printf_core+0xa0>
  4046f3:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  4046f9:	4d 29 f2             	sub    %r14,%r10
  4046fc:	45 29 eb             	sub    %r13d,%r11d
  4046ff:	49 63 c3             	movslq %r11d,%rax
  404702:	49 39 c2             	cmp    %rax,%r10
  404705:	0f 8f 15 03 00 00    	jg     404a20 <printf_core+0x3e0>
  40470b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40470f:	45 89 d0             	mov    %r10d,%r8d
  404712:	48 85 c0             	test   %rax,%rax
  404715:	74 09                	je     404720 <printf_core+0xe0>
  404717:	f6 00 20             	testb  $0x20,(%rax)
  40471a:	0f 84 10 03 00 00    	je     404a30 <printf_core+0x3f0>
  404720:	45 85 d2             	test   %r10d,%r10d
  404723:	74 2b                	je     404750 <printf_core+0x110>
  404725:	45 39 c3             	cmp    %r8d,%r11d
  404728:	0f 8c f2 02 00 00    	jl     404a20 <printf_core+0x3e0>
  40472e:	49 89 de             	mov    %rbx,%r14
  404731:	e9 5e ff ff ff       	jmp    404694 <printf_core+0x54>
  404736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40473d:	00 00 00 
  404740:	3c 25                	cmp    $0x25,%al
  404742:	74 8d                	je     4046d1 <printf_core+0x91>
  404744:	4c 89 d3             	mov    %r10,%rbx
  404747:	eb aa                	jmp    4046f3 <printf_core+0xb3>
  404749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404750:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404754:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404757:	89 c8                	mov    %ecx,%eax
  404759:	83 ff 09             	cmp    $0x9,%edi
  40475c:	77 1a                	ja     404778 <printf_core+0x138>
  40475e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  404762:	0f 84 e5 03 00 00    	je     404b4d <printf_core+0x50d>
  404768:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40476c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404771:	eb 1a                	jmp    40478d <printf_core+0x14d>
  404773:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404778:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40477c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404781:	83 e9 20             	sub    $0x20,%ecx
  404784:	83 f9 1f             	cmp    $0x1f,%ecx
  404787:	0f 87 b5 05 00 00    	ja     404d42 <printf_core+0x702>
  40478d:	45 31 e4             	xor    %r12d,%r12d
  404790:	be 89 28 01 00       	mov    $0x12889,%esi
  404795:	eb 48                	jmp    4047df <printf_core+0x19f>
  404797:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40479e:	00 
  40479f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047a6:	00 00 00 00 
  4047aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047b1:	00 00 00 00 
  4047b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047bc:	00 00 00 00 
  4047c0:	b8 01 00 00 00       	mov    $0x1,%eax
  4047c5:	48 83 c2 01          	add    $0x1,%rdx
  4047c9:	d3 e0                	shl    %cl,%eax
  4047cb:	0f be 0a             	movsbl (%rdx),%ecx
  4047ce:	41 09 c4             	or     %eax,%r12d
  4047d1:	89 c8                	mov    %ecx,%eax
  4047d3:	83 e9 20             	sub    $0x20,%ecx
  4047d6:	83 f9 1f             	cmp    $0x1f,%ecx
  4047d9:	0f 87 49 01 00 00    	ja     404928 <printf_core+0x2e8>
  4047df:	8d 48 e0             	lea    -0x20(%rax),%ecx
  4047e2:	0f a3 ce             	bt     %ecx,%esi
  4047e5:	72 d9                	jb     4047c0 <printf_core+0x180>
  4047e7:	3c 2a                	cmp    $0x2a,%al
  4047e9:	0f 85 39 01 00 00    	jne    404928 <printf_core+0x2e8>
  4047ef:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  4047f4:	48 89 c8             	mov    %rcx,%rax
  4047f7:	83 e9 30             	sub    $0x30,%ecx
  4047fa:	83 f9 09             	cmp    $0x9,%ecx
  4047fd:	0f 86 0d 03 00 00    	jbe    404b10 <printf_core+0x4d0>
  404803:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404809:	85 c9                	test   %ecx,%ecx
  40480b:	0f 85 dc 00 00 00    	jne    4048ed <printf_core+0x2ad>
  404811:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404815:	45 89 d1             	mov    %r10d,%r9d
  404818:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40481d:	0f 84 58 01 00 00    	je     40497b <printf_core+0x33b>
  404823:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  40482a:	8b 06                	mov    (%rsi),%eax
  40482c:	83 f8 2f             	cmp    $0x2f,%eax
  40482f:	0f 87 4a 03 00 00    	ja     404b7f <printf_core+0x53f>
  404835:	89 c2                	mov    %eax,%edx
  404837:	83 c0 08             	add    $0x8,%eax
  40483a:	48 03 56 10          	add    0x10(%rsi),%rdx
  40483e:	89 06                	mov    %eax,(%rsi)
  404840:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404847:	00 00 00 
  40484a:	44 8b 0a             	mov    (%rdx),%r9d
  40484d:	44 89 e2             	mov    %r12d,%edx
  404850:	0f b6 03             	movzbl (%rbx),%eax
  404853:	80 ce 20             	or     $0x20,%dh
  404856:	45 85 c9             	test   %r9d,%r9d
  404859:	44 0f 48 e2          	cmovs  %edx,%r12d
  40485d:	44 89 ca             	mov    %r9d,%edx
  404860:	f7 da                	neg    %edx
  404862:	45 85 c9             	test   %r9d,%r9d
  404865:	44 0f 48 ca          	cmovs  %edx,%r9d
  404869:	3c 2e                	cmp    $0x2e,%al
  40486b:	0f 84 12 01 00 00    	je     404983 <printf_core+0x343>
  404871:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404878:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  40487f:	31 c0                	xor    %eax,%eax
  404881:	eb 5f                	jmp    4048e2 <printf_core+0x2a2>
  404883:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404889:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404890:	00 00 00 00 
  404894:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40489b:	00 00 00 00 
  40489f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048a6:	00 00 00 00 
  4048aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048b1:	00 00 00 00 
  4048b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048bc:	00 00 00 00 
  4048c0:	89 c1                	mov    %eax,%ecx
  4048c2:	48 63 d2             	movslq %edx,%rdx
  4048c5:	48 83 c3 01          	add    $0x1,%rbx
  4048c9:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  4048cd:	4c 01 fe             	add    %r15,%rsi
  4048d0:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  4048d4:	8d 56 ff             	lea    -0x1(%rsi),%edx
  4048d7:	83 fa 07             	cmp    $0x7,%edx
  4048da:	0f 87 90 01 00 00    	ja     404a70 <printf_core+0x430>
  4048e0:	89 f0                	mov    %esi,%eax
  4048e2:	0f be 13             	movsbl (%rbx),%edx
  4048e5:	83 ea 41             	sub    $0x41,%edx
  4048e8:	83 fa 39             	cmp    $0x39,%edx
  4048eb:	76 d3                	jbe    4048c0 <printf_core+0x280>
  4048ed:	e8 de 16 00 00       	call   405fd0 <__errno_location>
  4048f2:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  4048f8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  4048fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404902:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404909:	00 00 
  40490b:	0f 85 a2 0f 00 00    	jne    4058b3 <printf_core+0x1273>
  404911:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404915:	44 89 d8             	mov    %r11d,%eax
  404918:	5b                   	pop    %rbx
  404919:	41 5c                	pop    %r12
  40491b:	41 5d                	pop    %r13
  40491d:	41 5e                	pop    %r14
  40491f:	41 5f                	pop    %r15
  404921:	5d                   	pop    %rbp
  404922:	c3                   	ret
  404923:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404928:	0f be 0a             	movsbl (%rdx),%ecx
  40492b:	45 89 d1             	mov    %r10d,%r9d
  40492e:	48 89 d3             	mov    %rdx,%rbx
  404931:	89 c8                	mov    %ecx,%eax
  404933:	83 e9 30             	sub    $0x30,%ecx
  404936:	83 f9 09             	cmp    $0x9,%ecx
  404939:	77 40                	ja     40497b <printf_core+0x33b>
  40493b:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404942:	0f 8f c8 00 00 00    	jg     404a10 <printf_core+0x3d0>
  404948:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  40494c:	83 e8 30             	sub    $0x30,%eax
  40494f:	0f be c0             	movsbl %al,%eax
  404952:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404958:	39 f0                	cmp    %esi,%eax
  40495a:	0f 8f b0 00 00 00    	jg     404a10 <printf_core+0x3d0>
  404960:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404964:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404968:	29 c8                	sub    %ecx,%eax
  40496a:	41 89 c1             	mov    %eax,%r9d
  40496d:	89 d0                	mov    %edx,%eax
  40496f:	83 ea 30             	sub    $0x30,%edx
  404972:	83 fa 09             	cmp    $0x9,%edx
  404975:	0f 86 3d 0f 00 00    	jbe    4058b8 <printf_core+0x1278>
  40497b:	3c 2e                	cmp    $0x2e,%al
  40497d:	0f 85 ee fe ff ff    	jne    404871 <printf_core+0x231>
  404983:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404987:	3c 2a                	cmp    $0x2a,%al
  404989:	0f 85 11 02 00 00    	jne    404ba0 <printf_core+0x560>
  40498f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404993:	89 c2                	mov    %eax,%edx
  404995:	83 e8 30             	sub    $0x30,%eax
  404998:	83 f8 09             	cmp    $0x9,%eax
  40499b:	77 0a                	ja     4049a7 <printf_core+0x367>
  40499d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  4049a1:	0f 84 4f 03 00 00    	je     404cf6 <printf_core+0x6b6>
  4049a7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  4049ad:	85 c0                	test   %eax,%eax
  4049af:	0f 85 38 ff ff ff    	jne    4048ed <printf_core+0x2ad>
  4049b5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4049ba:	0f 84 6f 03 00 00    	je     404d2f <printf_core+0x6ef>
  4049c0:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4049c7:	8b 06                	mov    (%rsi),%eax
  4049c9:	83 f8 2f             	cmp    $0x2f,%eax
  4049cc:	0f 87 60 02 00 00    	ja     404c32 <printf_core+0x5f2>
  4049d2:	89 c2                	mov    %eax,%edx
  4049d4:	83 c0 08             	add    $0x8,%eax
  4049d7:	48 03 56 10          	add    0x10(%rsi),%rdx
  4049db:	89 06                	mov    %eax,(%rsi)
  4049dd:	8b 02                	mov    (%rdx),%eax
  4049df:	89 45 80             	mov    %eax,-0x80(%rbp)
  4049e2:	f7 d0                	not    %eax
  4049e4:	c1 e8 1f             	shr    $0x1f,%eax
  4049e7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4049ed:	48 83 c3 02          	add    $0x2,%rbx
  4049f1:	e9 89 fe ff ff       	jmp    40487f <printf_core+0x23f>
  4049f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4049fd:	00 00 00 
  404a00:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404a04:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404a08:	83 e8 30             	sub    $0x30,%eax
  404a0b:	83 f8 09             	cmp    $0x9,%eax
  404a0e:	77 10                	ja     404a20 <printf_core+0x3e0>
  404a10:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404a14:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404a18:	83 ea 30             	sub    $0x30,%edx
  404a1b:	83 fa 09             	cmp    $0x9,%edx
  404a1e:	76 e0                	jbe    404a00 <printf_core+0x3c0>
  404a20:	e8 ab 15 00 00       	call   405fd0 <__errno_location>
  404a25:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404a2b:	e9 c8 fe ff ff       	jmp    4048f8 <printf_core+0x2b8>
  404a30:	49 63 f2             	movslq %r10d,%rsi
  404a33:	48 89 c2             	mov    %rax,%rdx
  404a36:	4c 89 f7             	mov    %r14,%rdi
  404a39:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404a40:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404a47:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404a4b:	e8 10 1a 00 00       	call   406460 <__fwritex>
  404a50:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404a57:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404a5e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404a62:	e9 b9 fc ff ff       	jmp    404720 <printf_core+0xe0>
  404a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404a6e:	00 00 
  404a70:	85 f6                	test   %esi,%esi
  404a72:	0f 84 75 fe ff ff    	je     4048ed <printf_core+0x2ad>
  404a78:	83 fe 1b             	cmp    $0x1b,%esi
  404a7b:	0f 84 e5 00 00 00    	je     404b66 <printf_core+0x526>
  404a81:	83 ff ff             	cmp    $0xffffffff,%edi
  404a84:	0f 84 01 02 00 00    	je     404c8b <printf_core+0x64b>
  404a8a:	48 63 ff             	movslq %edi,%rdi
  404a8d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404a92:	0f 84 b2 01 00 00    	je     404c4a <printf_core+0x60a>
  404a98:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404a9f:	48 c1 e7 04          	shl    $0x4,%rdi
  404aa3:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404aa8:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404aac:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404ab0:	f6 07 20             	testb  $0x20,(%rdi)
  404ab3:	0f 85 3f fe ff ff    	jne    4048f8 <printf_core+0x2b8>
  404ab9:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404abd:	89 d6                	mov    %edx,%esi
  404abf:	85 c0                	test   %eax,%eax
  404ac1:	74 13                	je     404ad6 <printf_core+0x496>
  404ac3:	89 d7                	mov    %edx,%edi
  404ac5:	83 e6 df             	and    $0xffffffdf,%esi
  404ac8:	83 e7 0f             	and    $0xf,%edi
  404acb:	40 0f be f6          	movsbl %sil,%esi
  404acf:	40 80 ff 03          	cmp    $0x3,%dil
  404ad3:	0f 44 d6             	cmove  %esi,%edx
  404ad6:	44 89 e6             	mov    %r12d,%esi
  404ad9:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404adf:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404ae6:	44 0f 45 e6          	cmovne %esi,%r12d
  404aea:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404aed:	83 fe 37             	cmp    $0x37,%esi
  404af0:	0f 87 c2 02 00 00    	ja     404db8 <printf_core+0x778>
  404af6:	48 8d 3d c7 26 00 00 	lea    0x26c7(%rip),%rdi        # 4071c4 <_fini+0x300>
  404afd:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404b01:	48 01 fe             	add    %rdi,%rsi
  404b04:	3e ff e6             	notrack jmp *%rsi
  404b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404b0e:	00 00 
  404b10:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404b14:	0f 84 ab 01 00 00    	je     404cc5 <printf_core+0x685>
  404b1a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404b20:	85 f6                	test   %esi,%esi
  404b22:	0f 85 c5 fd ff ff    	jne    4048ed <printf_core+0x2ad>
  404b28:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404b2c:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b31:	0f 85 ec fc ff ff    	jne    404823 <printf_core+0x1e3>
  404b37:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404b3e:	45 89 d1             	mov    %r10d,%r9d
  404b41:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404b48:	e9 32 fd ff ff       	jmp    40487f <printf_core+0x23f>
  404b4d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404b51:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404b55:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404b5c:	00 00 00 
  404b5f:	89 c8                	mov    %ecx,%eax
  404b61:	e9 1b fc ff ff       	jmp    404781 <printf_core+0x141>
  404b66:	83 ff ff             	cmp    $0xffffffff,%edi
  404b69:	0f 85 7e fd ff ff    	jne    4048ed <printf_core+0x2ad>
  404b6f:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b74:	0f 85 32 ff ff ff    	jne    404aac <printf_core+0x46c>
  404b7a:	e9 af fb ff ff       	jmp    40472e <printf_core+0xee>
  404b7f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404b86:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404b8a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404b8e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404b92:	e9 a9 fc ff ff       	jmp    404840 <printf_core+0x200>
  404b97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404b9e:	00 00 
  404ba0:	0f be d0             	movsbl %al,%edx
  404ba3:	48 83 c3 01          	add    $0x1,%rbx
  404ba7:	83 ea 30             	sub    $0x30,%edx
  404baa:	83 fa 09             	cmp    $0x9,%edx
  404bad:	0f 87 93 0b 00 00    	ja     405746 <printf_core+0x1106>
  404bb3:	44 89 d2             	mov    %r10d,%edx
  404bb6:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404bbc:	0f 8f fe 0c 00 00    	jg     4058c0 <printf_core+0x1280>
  404bc2:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404bc5:	83 e8 30             	sub    $0x30,%eax
  404bc8:	0f be c0             	movsbl %al,%eax
  404bcb:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404bd1:	39 c2                	cmp    %eax,%edx
  404bd3:	0f 8d 87 00 00 00    	jge    404c60 <printf_core+0x620>
  404bd9:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404bdd:	83 e8 30             	sub    $0x30,%eax
  404be0:	83 f8 09             	cmp    $0x9,%eax
  404be3:	0f 87 8b 0a 00 00    	ja     405674 <printf_core+0x1034>
  404be9:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404bed:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404bf1:	83 ea 30             	sub    $0x30,%edx
  404bf4:	83 fa 09             	cmp    $0x9,%edx
  404bf7:	77 20                	ja     404c19 <printf_core+0x5d9>
  404bf9:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404bfd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404c01:	83 ea 30             	sub    $0x30,%edx
  404c04:	83 fa 09             	cmp    $0x9,%edx
  404c07:	77 13                	ja     404c1c <printf_core+0x5dc>
  404c09:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404c0d:	48 83 c0 02          	add    $0x2,%rax
  404c11:	83 ea 30             	sub    $0x30,%edx
  404c14:	83 fa 09             	cmp    $0x9,%edx
  404c17:	76 e0                	jbe    404bf9 <printf_core+0x5b9>
  404c19:	48 89 c3             	mov    %rax,%rbx
  404c1c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404c23:	00 00 00 
  404c26:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404c2d:	e9 4d fc ff ff       	jmp    40487f <printf_core+0x23f>
  404c32:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404c39:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404c3d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404c41:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404c45:	e9 93 fd ff ff       	jmp    4049dd <printf_core+0x39d>
  404c4a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404c51:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404c54:	e9 d5 fa ff ff       	jmp    40472e <printf_core+0xee>
  404c59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404c60:	48 83 c3 01          	add    $0x1,%rbx
  404c64:	29 c8                	sub    %ecx,%eax
  404c66:	0f be 0b             	movsbl (%rbx),%ecx
  404c69:	89 c2                	mov    %eax,%edx
  404c6b:	89 c8                	mov    %ecx,%eax
  404c6d:	83 e9 30             	sub    $0x30,%ecx
  404c70:	83 f9 09             	cmp    $0x9,%ecx
  404c73:	0f 86 3d ff ff ff    	jbe    404bb6 <printf_core+0x576>
  404c79:	89 55 80             	mov    %edx,-0x80(%rbp)
  404c7c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404c83:	00 00 00 
  404c86:	e9 f4 fb ff ff       	jmp    40487f <printf_core+0x23f>
  404c8b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c90:	0f 84 15 0c 00 00    	je     4058ab <printf_core+0x126b>
  404c96:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404c9d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404ca1:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404ca7:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404cae:	e8 1d dd ff ff       	call   4029d0 <pop_arg>
  404cb3:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404cb9:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404cc0:	e9 e7 fd ff ff       	jmp    404aac <printf_core+0x46c>
  404cc5:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404cc9:	48 83 e8 30          	sub    $0x30,%rax
  404ccd:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404cd2:	0f 84 b6 09 00 00    	je     40568e <printf_core+0x104e>
  404cd8:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404cdf:	48 c1 e0 04          	shl    $0x4,%rax
  404ce3:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404cea:	00 00 00 
  404ced:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404cf1:	e9 57 fb ff ff       	jmp    40484d <printf_core+0x20d>
  404cf6:	48 0f be c2          	movsbq %dl,%rax
  404cfa:	48 83 e8 30          	sub    $0x30,%rax
  404cfe:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d03:	0f 84 a9 09 00 00    	je     4056b2 <printf_core+0x1072>
  404d09:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404d10:	48 c1 e0 04          	shl    $0x4,%rax
  404d14:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404d18:	89 45 80             	mov    %eax,-0x80(%rbp)
  404d1b:	f7 d0                	not    %eax
  404d1d:	c1 e8 1f             	shr    $0x1f,%eax
  404d20:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404d26:	48 83 c3 04          	add    $0x4,%rbx
  404d2a:	e9 50 fb ff ff       	jmp    40487f <printf_core+0x23f>
  404d2f:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404d33:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d3a:	00 00 00 
  404d3d:	e9 ab fc ff ff       	jmp    4049ed <printf_core+0x3ad>
  404d42:	48 89 d3             	mov    %rdx,%rbx
  404d45:	45 89 d1             	mov    %r10d,%r9d
  404d48:	45 31 e4             	xor    %r12d,%r12d
  404d4b:	e9 2b fc ff ff       	jmp    40497b <printf_core+0x33b>
  404d50:	45 89 eb             	mov    %r13d,%r11d
  404d53:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d58:	0f 85 a0 fb ff ff    	jne    4048fe <printf_core+0x2be>
  404d5e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404d65:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404d6b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404d71:	48 83 c7 10          	add    $0x10,%rdi
  404d75:	85 c9                	test   %ecx,%ecx
  404d77:	0f 84 2e 0b 00 00    	je     4058ab <printf_core+0x126b>
  404d7d:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404d84:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404d8b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404d8f:	85 f6                	test   %esi,%esi
  404d91:	0f 84 90 0a 00 00    	je     405827 <printf_core+0x11e7>
  404d97:	e8 34 dc ff ff       	call   4029d0 <pop_arg>
  404d9c:	49 83 c0 01          	add    $0x1,%r8
  404da0:	48 83 c7 10          	add    $0x10,%rdi
  404da4:	49 83 f8 0a          	cmp    $0xa,%r8
  404da8:	75 e1                	jne    404d8b <printf_core+0x74b>
  404daa:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404db0:	e9 49 fb ff ff       	jmp    4048fe <printf_core+0x2be>
  404db5:	0f 1f 00             	nopl   (%rax)
  404db8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404dbc:	4c 29 f0             	sub    %r14,%rax
  404dbf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404dc6:	48 89 c7             	mov    %rax,%rdi
  404dc9:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404dcd:	48 39 c7             	cmp    %rax,%rdi
  404dd0:	0f 8e da 07 00 00    	jle    4055b0 <printf_core+0xf70>
  404dd6:	48 89 f8             	mov    %rdi,%rax
  404dd9:	48 8d 3d 89 23 00 00 	lea    0x2389(%rip),%rdi        # 407169 <_fini+0x2a5>
  404de0:	89 45 80             	mov    %eax,-0x80(%rbp)
  404de3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404dea:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404df0:	44 89 d0             	mov    %r10d,%eax
  404df3:	66 90                	xchg   %ax,%ax
  404df5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404dfc:	00 00 00 00 
  404e00:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404e06:	41 39 c9             	cmp    %ecx,%r9d
  404e09:	41 89 c8             	mov    %ecx,%r8d
  404e0c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404e10:	45 39 c3             	cmp    %r8d,%r11d
  404e13:	0f 8c 07 fc ff ff    	jl     404a20 <printf_core+0x3e0>
  404e19:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404e20:	0f 85 e2 06 00 00    	jne    405508 <printf_core+0xec8>
  404e26:	41 39 c9             	cmp    %ecx,%r9d
  404e29:	0f 8e 40 07 00 00    	jle    40556f <printf_core+0xf2f>
  404e2f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404e33:	44 89 c2             	mov    %r8d,%edx
  404e36:	be 20 00 00 00       	mov    $0x20,%esi
  404e3b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404e41:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404e48:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404e4f:	e8 6c dd ff ff       	call   402bc0 <pad.part.0>
  404e54:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404e58:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404e5f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404e66:	f6 00 20             	testb  $0x20,(%rax)
  404e69:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404e6f:	0f 84 07 07 00 00    	je     40557c <printf_core+0xf3c>
  404e75:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404e7c:	89 c1                	mov    %eax,%ecx
  404e7e:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404e81:	0f 8d a7 f8 ff ff    	jge    40472e <printf_core+0xee>
  404e87:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404e8e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404e95:	8b 55 80             	mov    -0x80(%rbp),%edx
  404e98:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404e9c:	be 30 00 00 00       	mov    $0x30,%esi
  404ea1:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404ea8:	e8 13 dd ff ff       	call   402bc0 <pad.part.0>
  404ead:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404eb4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404eb8:	f6 00 20             	testb  $0x20,(%rax)
  404ebb:	75 1b                	jne    404ed8 <printf_core+0x898>
  404ebd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404ec1:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404ec8:	4c 89 f7             	mov    %r14,%rdi
  404ecb:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404ecf:	e8 8c 15 00 00       	call   406460 <__fwritex>
  404ed4:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404ed8:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404edf:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404ee6:	0f 85 42 f8 ff ff    	jne    40472e <printf_core+0xee>
  404eec:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404ef3:	0f 85 35 f8 ff ff    	jne    40472e <printf_core+0xee>
  404ef9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404efd:	44 89 c2             	mov    %r8d,%edx
  404f00:	be 20 00 00 00       	mov    $0x20,%esi
  404f05:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404f09:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f0f:	e8 ac dc ff ff       	call   402bc0 <pad.part.0>
  404f14:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f18:	e9 11 f8 ff ff       	jmp    40472e <printf_core+0xee>
  404f1d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f21:	45 85 c0             	test   %r8d,%r8d
  404f24:	79 0d                	jns    404f33 <printf_core+0x8f3>
  404f26:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404f2d:	0f 85 ed fa ff ff    	jne    404a20 <printf_core+0x3e0>
  404f33:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404f3a:	41 89 d0             	mov    %edx,%r8d
  404f3d:	44 89 ce             	mov    %r9d,%esi
  404f40:	44 89 e1             	mov    %r12d,%ecx
  404f43:	ff 75 98             	push   -0x68(%rbp)
  404f46:	ff 75 90             	push   -0x70(%rbp)
  404f49:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f4d:	8b 55 80             	mov    -0x80(%rbp),%edx
  404f50:	e8 6b dd ff ff       	call   402cc0 <fmt_fp>
  404f55:	5e                   	pop    %rsi
  404f56:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404f5d:	83 f8 ff             	cmp    $0xffffffff,%eax
  404f60:	41 89 c0             	mov    %eax,%r8d
  404f63:	5f                   	pop    %rdi
  404f64:	0f 85 bb f7 ff ff    	jne    404725 <printf_core+0xe5>
  404f6a:	e9 b1 fa ff ff       	jmp    404a20 <printf_core+0x3e0>
  404f6f:	90                   	nop
  404f70:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  404f74:	48 85 f6             	test   %rsi,%rsi
  404f77:	0f 88 4f 08 00 00    	js     4057cc <printf_core+0x118c>
  404f7d:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  404f84:	0f 85 61 08 00 00    	jne    4057eb <printf_core+0x11ab>
  404f8a:	41 f6 c4 01          	test   $0x1,%r12b
  404f8e:	0f 85 7b 08 00 00    	jne    40580f <printf_core+0x11cf>
  404f94:	48 8d 3d ce 21 00 00 	lea    0x21ce(%rip),%rdi        # 407169 <_fini+0x2a5>
  404f9b:	44 89 d0             	mov    %r10d,%eax
  404f9e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404fa5:	48 85 f6             	test   %rsi,%rsi
  404fa8:	0f 84 55 08 00 00    	je     405803 <printf_core+0x11c3>
  404fae:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  404fb5:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404fb9:	89 c7                	mov    %eax,%edi
  404fbb:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  404fc2:	cc cc cc 
  404fc5:	4d 89 c6             	mov    %r8,%r14
  404fc8:	90                   	nop
  404fc9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404fd0:	00 00 00 00 
  404fd4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404fdb:	00 00 00 00 
  404fdf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404fe6:	00 00 00 00 
  404fea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ff1:	00 00 00 00 
  404ff5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ffc:	00 00 00 00 
  405000:	48 89 f0             	mov    %rsi,%rax
  405003:	49 83 ee 01          	sub    $0x1,%r14
  405007:	48 f7 e1             	mul    %rcx
  40500a:	48 89 f0             	mov    %rsi,%rax
  40500d:	48 c1 ea 03          	shr    $0x3,%rdx
  405011:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  405015:	4d 01 d2             	add    %r10,%r10
  405018:	4c 29 d0             	sub    %r10,%rax
  40501b:	83 c0 30             	add    $0x30,%eax
  40501e:	48 83 fe 09          	cmp    $0x9,%rsi
  405022:	48 89 d6             	mov    %rdx,%rsi
  405025:	41 88 06             	mov    %al,(%r14)
  405028:	77 d6                	ja     405000 <printf_core+0x9c0>
  40502a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405031:	89 f8                	mov    %edi,%eax
  405033:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405036:	85 ff                	test   %edi,%edi
  405038:	79 0d                	jns    405047 <printf_core+0xa07>
  40503a:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  405041:	0f 85 d9 f9 ff ff    	jne    404a20 <printf_core+0x3e0>
  405047:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40504d:	44 89 e2             	mov    %r12d,%edx
  405050:	8b 75 80             	mov    -0x80(%rbp),%esi
  405053:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  405059:	85 c9                	test   %ecx,%ecx
  40505b:	44 0f 45 e2          	cmovne %edx,%r12d
  40505f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  405064:	0f 94 c2             	sete   %dl
  405067:	85 f6                	test   %esi,%esi
  405069:	75 08                	jne    405073 <printf_core+0xa33>
  40506b:	84 d2                	test   %dl,%dl
  40506d:	0f 85 e4 05 00 00    	jne    405657 <printf_core+0x1017>
  405073:	4c 89 c7             	mov    %r8,%rdi
  405076:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  40507a:	0f b6 d2             	movzbl %dl,%edx
  40507d:	4c 29 f7             	sub    %r14,%rdi
  405080:	48 01 fa             	add    %rdi,%rdx
  405083:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  40508a:	48 39 ca             	cmp    %rcx,%rdx
  40508d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  405091:	48 63 ca             	movslq %edx,%rcx
  405094:	48 39 cf             	cmp    %rcx,%rdi
  405097:	0f 4e fa             	cmovle %edx,%edi
  40509a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  40509f:	29 c2                	sub    %eax,%edx
  4050a1:	89 7d 80             	mov    %edi,-0x80(%rbp)
  4050a4:	39 fa                	cmp    %edi,%edx
  4050a6:	0f 8c 74 f9 ff ff    	jl     404a20 <printf_core+0x3e0>
  4050ac:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4050af:	01 c7                	add    %eax,%edi
  4050b1:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  4050b7:	e9 44 fd ff ff       	jmp    404e00 <printf_core+0x7c0>
  4050bc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4050c0:	48 85 c0             	test   %rax,%rax
  4050c3:	0f 84 9a 02 00 00    	je     405363 <printf_core+0xd23>
  4050c9:	44 89 e7             	mov    %r12d,%edi
  4050cc:	83 e7 08             	and    $0x8,%edi
  4050cf:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  4050d5:	89 d7                	mov    %edx,%edi
  4050d7:	83 e7 20             	and    $0x20,%edi
  4050da:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  4050e0:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4050e4:	48 8d 35 e5 21 00 00 	lea    0x21e5(%rip),%rsi        # 4072d0 <xdigits>
  4050eb:	4d 89 c6             	mov    %r8,%r14
  4050ee:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4050f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050fc:	00 00 00 00 
  405100:	48 89 c1             	mov    %rax,%rcx
  405103:	49 83 ee 01          	sub    $0x1,%r14
  405107:	83 e1 0f             	and    $0xf,%ecx
  40510a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  40510e:	09 fa                	or     %edi,%edx
  405110:	48 c1 e8 04          	shr    $0x4,%rax
  405114:	41 88 16             	mov    %dl,(%r14)
  405117:	75 e7                	jne    405100 <printf_core+0xac0>
  405119:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40511f:	85 c0                	test   %eax,%eax
  405121:	0f 85 f9 05 00 00    	jne    405720 <printf_core+0x10e0>
  405127:	48 8d 3d 3b 20 00 00 	lea    0x203b(%rip),%rdi        # 407169 <_fini+0x2a5>
  40512e:	44 89 d0             	mov    %r10d,%eax
  405131:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405138:	e9 f6 fe ff ff       	jmp    405033 <printf_core+0x9f3>
  40513d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405141:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405145:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40514c:	48 85 d2             	test   %rdx,%rdx
  40514f:	0f 84 06 07 00 00    	je     40585b <printf_core+0x121b>
  405155:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40515c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  405160:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  405167:	31 db                	xor    %ebx,%ebx
  405169:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  405170:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  405174:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40517b:	49 89 ce             	mov    %rcx,%r14
  40517e:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405182:	49 89 d5             	mov    %rdx,%r13
  405185:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40518c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405193:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40519a:	eb 34                	jmp    4051d0 <printf_core+0xb90>
  40519c:	0f 1f 40 00          	nopl   0x0(%rax)
  4051a0:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  4051a7:	e8 24 10 00 00       	call   4061d0 <wctomb>
  4051ac:	85 c0                	test   %eax,%eax
  4051ae:	0f 88 44 f7 ff ff    	js     4048f8 <printf_core+0x2b8>
  4051b4:	4c 89 ea             	mov    %r13,%rdx
  4051b7:	48 98                	cltq
  4051b9:	48 29 da             	sub    %rbx,%rdx
  4051bc:	48 39 c2             	cmp    %rax,%rdx
  4051bf:	72 16                	jb     4051d7 <printf_core+0xb97>
  4051c1:	48 01 c3             	add    %rax,%rbx
  4051c4:	4d 63 ec             	movslq %r12d,%r13
  4051c7:	49 83 c6 04          	add    $0x4,%r14
  4051cb:	4c 39 eb             	cmp    %r13,%rbx
  4051ce:	73 07                	jae    4051d7 <printf_core+0xb97>
  4051d0:	41 8b 36             	mov    (%r14),%esi
  4051d3:	85 f6                	test   %esi,%esi
  4051d5:	75 c9                	jne    4051a0 <printf_core+0xb60>
  4051d7:	49 89 de             	mov    %rbx,%r14
  4051da:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4051e1:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  4051e8:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  4051ef:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  4051f6:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  4051fd:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405201:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405208:	0f 87 12 f8 ff ff    	ja     404a20 <printf_core+0x3e0>
  40520e:	45 39 f1             	cmp    %r14d,%r9d
  405211:	44 89 f0             	mov    %r14d,%eax
  405214:	0f 9e c2             	setle  %dl
  405217:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40521e:	0f 95 c1             	setne  %cl
  405221:	08 d1                	or     %dl,%cl
  405223:	0f 84 5c 05 00 00    	je     405785 <printf_core+0x1145>
  405229:	4d 85 f6             	test   %r14,%r14
  40522c:	0f 84 96 06 00 00    	je     4058c8 <printf_core+0x1288>
  405232:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  405236:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  40523d:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405244:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40524b:	45 31 e4             	xor    %r12d,%r12d
  40524e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405255:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405259:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40525d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  405264:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  40526b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405271:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  405277:	eb 10                	jmp    405289 <printf_core+0xc49>
  405279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405280:	4d 39 f4             	cmp    %r14,%r12
  405283:	0f 83 46 03 00 00    	jae    4055cf <printf_core+0xf8f>
  405289:	8b 33                	mov    (%rbx),%esi
  40528b:	85 f6                	test   %esi,%esi
  40528d:	0f 84 3c 03 00 00    	je     4055cf <printf_core+0xf8f>
  405293:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405297:	e8 34 0f 00 00       	call   4061d0 <wctomb>
  40529c:	48 63 f0             	movslq %eax,%rsi
  40529f:	49 01 f4             	add    %rsi,%r12
  4052a2:	4d 39 e6             	cmp    %r12,%r14
  4052a5:	0f 82 24 03 00 00    	jb     4055cf <printf_core+0xf8f>
  4052ab:	48 83 c3 04          	add    $0x4,%rbx
  4052af:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4052b4:	75 ca                	jne    405280 <printf_core+0xc40>
  4052b6:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4052ba:	4c 89 ea             	mov    %r13,%rdx
  4052bd:	e8 9e 11 00 00       	call   406460 <__fwritex>
  4052c2:	eb bc                	jmp    405280 <printf_core+0xc40>
  4052c4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4052c8:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4052cc:	4d 89 c6             	mov    %r8,%r14
  4052cf:	48 85 c0             	test   %rax,%rax
  4052d2:	74 21                	je     4052f5 <printf_core+0xcb5>
  4052d4:	90                   	nop
  4052d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4052dc:	00 00 00 00 
  4052e0:	89 c2                	mov    %eax,%edx
  4052e2:	49 83 ee 01          	sub    $0x1,%r14
  4052e6:	83 e2 07             	and    $0x7,%edx
  4052e9:	83 c2 30             	add    $0x30,%edx
  4052ec:	48 c1 e8 03          	shr    $0x3,%rax
  4052f0:	41 88 16             	mov    %dl,(%r14)
  4052f3:	75 eb                	jne    4052e0 <printf_core+0xca0>
  4052f5:	41 f6 c4 08          	test   $0x8,%r12b
  4052f9:	0f 84 28 fe ff ff    	je     405127 <printf_core+0xae7>
  4052ff:	4c 89 c0             	mov    %r8,%rax
  405302:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405306:	4c 29 f0             	sub    %r14,%rax
  405309:	48 39 d0             	cmp    %rdx,%rax
  40530c:	0f 8c 15 fe ff ff    	jl     405127 <printf_core+0xae7>
  405312:	83 c0 01             	add    $0x1,%eax
  405315:	48 8d 3d 4d 1e 00 00 	lea    0x1e4d(%rip),%rdi        # 407169 <_fini+0x2a5>
  40531c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40531f:	44 89 d0             	mov    %r10d,%eax
  405322:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405329:	e9 05 fd ff ff       	jmp    405033 <printf_core+0x9f3>
  40532e:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405331:	b8 10 00 00 00       	mov    $0x10,%eax
  405336:	ba 78 00 00 00       	mov    $0x78,%edx
  40533b:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405342:	00 00 00 
  405345:	39 c7                	cmp    %eax,%edi
  405347:	0f 43 c7             	cmovae %edi,%eax
  40534a:	41 83 cc 08          	or     $0x8,%r12d
  40534e:	bf 20 00 00 00       	mov    $0x20,%edi
  405353:	89 45 80             	mov    %eax,-0x80(%rbp)
  405356:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40535a:	48 85 c0             	test   %rax,%rax
  40535d:	0f 85 77 fd ff ff    	jne    4050da <printf_core+0xa9a>
  405363:	48 8d 3d ff 1d 00 00 	lea    0x1dff(%rip),%rdi        # 407169 <_fini+0x2a5>
  40536a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40536e:	44 89 d0             	mov    %r10d,%eax
  405371:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405378:	4d 89 c6             	mov    %r8,%r14
  40537b:	e9 b3 fc ff ff       	jmp    405033 <printf_core+0x9f3>
  405380:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405384:	48 8d 05 e8 1d 00 00 	lea    0x1de8(%rip),%rax        # 407173 <_fini+0x2af>
  40538b:	4d 85 f6             	test   %r14,%r14
  40538e:	4c 0f 44 f0          	cmove  %rax,%r14
  405392:	8b 45 80             	mov    -0x80(%rbp),%eax
  405395:	85 c0                	test   %eax,%eax
  405397:	0f 88 36 03 00 00    	js     4056d3 <printf_core+0x1093>
  40539d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  4053a1:	4c 89 f7             	mov    %r14,%rdi
  4053a4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4053ab:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4053b2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4053b9:	e8 82 07 00 00       	call   405b40 <strnlen>
  4053be:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  4053c5:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4053cc:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4053d3:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  4053d7:	4c 29 f2             	sub    %r14,%rdx
  4053da:	89 45 80             	mov    %eax,-0x80(%rbp)
  4053dd:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4053e4:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  4053eb:	48 89 d7             	mov    %rdx,%rdi
  4053ee:	48 63 d0             	movslq %eax,%rdx
  4053f1:	48 39 d7             	cmp    %rdx,%rdi
  4053f4:	0f 8e b9 01 00 00    	jle    4055b3 <printf_core+0xf73>
  4053fa:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405401:	e9 d3 f9 ff ff       	jmp    404dd9 <printf_core+0x799>
  405406:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40540a:	48 85 f6             	test   %rsi,%rsi
  40540d:	0f 85 46 03 00 00    	jne    405759 <printf_core+0x1119>
  405413:	48 8d 3d 4f 1d 00 00 	lea    0x1d4f(%rip),%rdi        # 407169 <_fini+0x2a5>
  40541a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40541e:	44 89 d0             	mov    %r10d,%eax
  405421:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405428:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40542f:	00 00 00 
  405432:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  405436:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40543d:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405444:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40544b:	01 00 00 00 
  40544f:	e9 ac f9 ff ff       	jmp    404e00 <printf_core+0x7c0>
  405454:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40545b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405462:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405469:	e8 62 0b 00 00       	call   405fd0 <__errno_location>
  40546e:	8b 38                	mov    (%rax),%edi
  405470:	e8 ab 0b 00 00       	call   406020 <strerror>
  405475:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  40547c:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405483:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40548a:	49 89 c6             	mov    %rax,%r14
  40548d:	e9 00 ff ff ff       	jmp    405392 <printf_core+0xd52>
  405492:	83 f8 07             	cmp    $0x7,%eax
  405495:	0f 87 93 f2 ff ff    	ja     40472e <printf_core+0xee>
  40549b:	48 8d 15 02 1e 00 00 	lea    0x1e02(%rip),%rdx        # 4072a4 <_fini+0x3e0>
  4054a2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4054a6:	48 01 d0             	add    %rdx,%rax
  4054a9:	3e ff e0             	notrack jmp *%rax
  4054ac:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4054b0:	49 63 c5             	movslq %r13d,%rax
  4054b3:	48 89 02             	mov    %rax,(%rdx)
  4054b6:	e9 73 f2 ff ff       	jmp    40472e <printf_core+0xee>
  4054bb:	48 8d 3d a7 1c 00 00 	lea    0x1ca7(%rip),%rdi        # 407169 <_fini+0x2a5>
  4054c2:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4054c6:	44 89 d0             	mov    %r10d,%eax
  4054c9:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4054d0:	e9 d0 fa ff ff       	jmp    404fa5 <printf_core+0x965>
  4054d5:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4054d9:	e9 35 ff ff ff       	jmp    405413 <printf_core+0xdd3>
  4054de:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4054e2:	44 89 28             	mov    %r13d,(%rax)
  4054e5:	e9 44 f2 ff ff       	jmp    40472e <printf_core+0xee>
  4054ea:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4054ee:	66 44 89 28          	mov    %r13w,(%rax)
  4054f2:	e9 37 f2 ff ff       	jmp    40472e <printf_core+0xee>
  4054f7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4054fb:	44 88 28             	mov    %r13b,(%rax)
  4054fe:	e9 2b f2 ff ff       	jmp    40472e <printf_core+0xee>
  405503:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405508:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40550c:	f6 07 20             	testb  $0x20,(%rdi)
  40550f:	74 6b                	je     40557c <printf_core+0xf3c>
  405511:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405517:	44 89 e0             	mov    %r12d,%eax
  40551a:	41 39 c9             	cmp    %ecx,%r9d
  40551d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405524:	35 00 00 01 00       	xor    $0x10000,%eax
  405529:	a9 00 20 01 00       	test   $0x12000,%eax
  40552e:	75 28                	jne    405558 <printf_core+0xf18>
  405530:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405537:	75 1f                	jne    405558 <printf_core+0xf18>
  405539:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40553d:	44 89 c2             	mov    %r8d,%edx
  405540:	be 30 00 00 00       	mov    $0x30,%esi
  405545:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40554c:	e8 6f d6 ff ff       	call   402bc0 <pad.part.0>
  405551:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405558:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40555f:	89 c1                	mov    %eax,%ecx
  405561:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405564:	0f 8d 4a f9 ff ff    	jge    404eb4 <printf_core+0x874>
  40556a:	e9 26 f9 ff ff       	jmp    404e95 <printf_core+0x855>
  40556f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405573:	f6 07 20             	testb  $0x20,(%rdi)
  405576:	0f 85 f9 f8 ff ff    	jne    404e75 <printf_core+0x835>
  40557c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405580:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405587:	48 63 f0             	movslq %eax,%rsi
  40558a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405591:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405598:	e8 c3 0e 00 00       	call   406460 <__fwritex>
  40559d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4055a4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4055ab:	e9 61 ff ff ff       	jmp    405511 <printf_core+0xed1>
  4055b0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4055b3:	48 8d 3d af 1b 00 00 	lea    0x1baf(%rip),%rdi        # 407169 <_fini+0x2a5>
  4055ba:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4055c0:	44 89 d0             	mov    %r10d,%eax
  4055c3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4055ca:	e9 31 f8 ff ff       	jmp    404e00 <printf_core+0x7c0>
  4055cf:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4055d6:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  4055dd:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  4055e4:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  4055eb:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  4055f1:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  4055f8:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  4055ff:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405606:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40560d:	75 39                	jne    405648 <printf_core+0x1008>
  40560f:	84 d2                	test   %dl,%dl
  405611:	75 35                	jne    405648 <printf_core+0x1008>
  405613:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405617:	89 c1                	mov    %eax,%ecx
  405619:	44 89 ca             	mov    %r9d,%edx
  40561c:	be 20 00 00 00       	mov    $0x20,%esi
  405621:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405628:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40562e:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405632:	e8 89 d5 ff ff       	call   402bc0 <pad.part.0>
  405637:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40563e:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405644:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405648:	41 39 c1             	cmp    %eax,%r9d
  40564b:	41 0f 4d c1          	cmovge %r9d,%eax
  40564f:	41 89 c0             	mov    %eax,%r8d
  405652:	e9 ce f0 ff ff       	jmp    404725 <printf_core+0xe5>
  405657:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40565d:	4d 89 c6             	mov    %r8,%r14
  405660:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  405664:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  40566b:	00 00 00 00 
  40566f:	e9 8c f7 ff ff       	jmp    404e00 <printf_core+0x7c0>
  405674:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40567b:	00 00 00 
  40567e:	48 83 c3 01          	add    $0x1,%rbx
  405682:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405689:	e9 f1 f1 ff ff       	jmp    40487f <printf_core+0x23f>
  40568e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405695:	45 89 d1             	mov    %r10d,%r9d
  405698:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40569f:	00 00 00 
  4056a2:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4056a9:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  4056ad:	e9 c9 f2 ff ff       	jmp    40497b <printf_core+0x33b>
  4056b2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4056b9:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4056bd:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4056c4:	00 00 00 
  4056c7:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4056ce:	e9 53 f6 ff ff       	jmp    404d26 <printf_core+0x6e6>
  4056d3:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  4056d8:	4c 89 f7             	mov    %r14,%rdi
  4056db:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  4056df:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  4056e6:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4056ed:	e8 4e 04 00 00       	call   405b40 <strnlen>
  4056f2:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4056f6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4056fd:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405701:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405708:	80 3a 00             	cmpb   $0x0,(%rdx)
  40570b:	0f 84 c6 fc ff ff    	je     4053d7 <printf_core+0xd97>
  405711:	e9 0a f3 ff ff       	jmp    404a20 <printf_core+0x3e0>
  405716:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40571d:	00 00 00 
  405720:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  405726:	48 8d 15 3c 1a 00 00 	lea    0x1a3c(%rip),%rdx        # 407169 <_fini+0x2a5>
  40572d:	c1 f8 04             	sar    $0x4,%eax
  405730:	48 98                	cltq
  405732:	48 01 d0             	add    %rdx,%rax
  405735:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40573c:	b8 02 00 00 00       	mov    $0x2,%eax
  405741:	e9 ed f8 ff ff       	jmp    405033 <printf_core+0x9f3>
  405746:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40574a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405751:	00 00 00 
  405754:	e9 26 f1 ff ff       	jmp    40487f <printf_core+0x23f>
  405759:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40575d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  405760:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  405767:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  40576e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  405772:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  405779:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405780:	e9 d0 f9 ff ff       	jmp    405155 <printf_core+0xb15>
  405785:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405789:	44 89 ca             	mov    %r9d,%edx
  40578c:	44 89 f1             	mov    %r14d,%ecx
  40578f:	be 20 00 00 00       	mov    $0x20,%esi
  405794:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40579b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40579f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  4057a6:	e8 15 d4 ff ff       	call   402bc0 <pad.part.0>
  4057ab:	4d 85 f6             	test   %r14,%r14
  4057ae:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4057b2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4057b8:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  4057bf:	0f 84 83 fe ff ff    	je     405648 <printf_core+0x1008>
  4057c5:	31 d2                	xor    %edx,%edx
  4057c7:	e9 66 fa ff ff       	jmp    405232 <printf_core+0xbf2>
  4057cc:	48 f7 de             	neg    %rsi
  4057cf:	48 8d 3d 93 19 00 00 	lea    0x1993(%rip),%rdi        # 407169 <_fini+0x2a5>
  4057d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4057db:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  4057df:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4057e6:	e9 c3 f7 ff ff       	jmp    404fae <printf_core+0x96e>
  4057eb:	48 8d 3d 78 19 00 00 	lea    0x1978(%rip),%rdi        # 40716a <_fini+0x2a6>
  4057f2:	b8 01 00 00 00       	mov    $0x1,%eax
  4057f7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4057fe:	e9 a2 f7 ff ff       	jmp    404fa5 <printf_core+0x965>
  405803:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405807:	4d 89 c6             	mov    %r8,%r14
  40580a:	e9 24 f8 ff ff       	jmp    405033 <printf_core+0x9f3>
  40580f:	48 8d 3d 55 19 00 00 	lea    0x1955(%rip),%rdi        # 40716b <_fini+0x2a7>
  405816:	b8 01 00 00 00       	mov    $0x1,%eax
  40581b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405822:	e9 7e f7 ff ff       	jmp    404fa5 <printf_core+0x965>
  405827:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40582e:	eb 1e                	jmp    40584e <printf_core+0x120e>
  405830:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40583c:	00 00 00 00 
  405840:	49 83 c0 01          	add    $0x1,%r8
  405844:	49 83 f8 0a          	cmp    $0xa,%r8
  405848:	0f 84 5c f5 ff ff    	je     404daa <printf_core+0x76a>
  40584e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405852:	85 d2                	test   %edx,%edx
  405854:	74 ea                	je     405840 <printf_core+0x1200>
  405856:	e9 92 f0 ff ff       	jmp    4048ed <printf_core+0x2ad>
  40585b:	45 85 c9             	test   %r9d,%r9d
  40585e:	0f 94 c0             	sete   %al
  405861:	89 c2                	mov    %eax,%edx
  405863:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40586a:	75 5c                	jne    4058c8 <printf_core+0x1288>
  40586c:	84 c0                	test   %al,%al
  40586e:	75 58                	jne    4058c8 <printf_core+0x1288>
  405870:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405874:	44 89 ca             	mov    %r9d,%edx
  405877:	31 c9                	xor    %ecx,%ecx
  405879:	be 20 00 00 00       	mov    $0x20,%esi
  40587e:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405885:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405889:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405890:	e8 2b d3 ff ff       	call   402bc0 <pad.part.0>
  405895:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40589b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  40589f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4058a6:	e9 9d fd ff ff       	jmp    405648 <printf_core+0x1008>
  4058ab:	45 31 db             	xor    %r11d,%r11d
  4058ae:	e9 4b f0 ff ff       	jmp    4048fe <printf_core+0x2be>
  4058b3:	e8 28 cf ff ff       	call   4027e0 <__stack_chk_fail>
  4058b8:	48 89 da             	mov    %rbx,%rdx
  4058bb:	e9 7b f0 ff ff       	jmp    40493b <printf_core+0x2fb>
  4058c0:	48 89 d8             	mov    %rbx,%rax
  4058c3:	e9 31 f3 ff ff       	jmp    404bf9 <printf_core+0x5b9>
  4058c8:	44 89 d0             	mov    %r10d,%eax
  4058cb:	e9 2f fd ff ff       	jmp    4055ff <printf_core+0xfbf>

00000000004058d0 <vfprintf>:
  4058d0:	f3 0f 1e fa          	endbr64
  4058d4:	55                   	push   %rbp
  4058d5:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4058d9:	48 89 e5             	mov    %rsp,%rbp
  4058dc:	41 57                	push   %r15
  4058de:	41 56                	push   %r14
  4058e0:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  4058e7:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4058ee:	41 55                	push   %r13
  4058f0:	4c 89 f1             	mov    %r14,%rcx
  4058f3:	49 89 fd             	mov    %rdi,%r13
  4058f6:	31 ff                	xor    %edi,%edi
  4058f8:	41 54                	push   %r12
  4058fa:	53                   	push   %rbx
  4058fb:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405902:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405909:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405910:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405917:	00 00 
  405919:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40591d:	31 c0                	xor    %eax,%eax
  40591f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405926:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  40592d:	00 00 00 00 
  405931:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405938:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  40593f:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405943:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  40594a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  40594e:	48 89 da             	mov    %rbx,%rdx
  405951:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405958:	e8 e3 ec ff ff       	call   404640 <printf_core>
  40595d:	85 c0                	test   %eax,%eax
  40595f:	0f 88 68 01 00 00    	js     405acd <vfprintf+0x1fd>
  405965:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  40596c:	31 db                	xor    %ebx,%ebx
  40596e:	85 c0                	test   %eax,%eax
  405970:	78 0a                	js     40597c <vfprintf+0xac>
  405972:	4c 89 ef             	mov    %r13,%rdi
  405975:	e8 86 08 00 00       	call   406200 <__lockfile>
  40597a:	89 c3                	mov    %eax,%ebx
  40597c:	41 8b 45 00          	mov    0x0(%r13),%eax
  405980:	89 c1                	mov    %eax,%ecx
  405982:	83 e0 df             	and    $0xffffffdf,%eax
  405985:	83 e1 20             	and    $0x20,%ecx
  405988:	41 89 45 00          	mov    %eax,0x0(%r13)
  40598c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405992:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405997:	74 77                	je     405a10 <vfprintf+0x140>
  405999:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  40599e:	0f 84 39 01 00 00    	je     405add <vfprintf+0x20d>
  4059a4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  4059ab:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  4059b2:	4c 89 f1             	mov    %r14,%rcx
  4059b5:	4c 89 ef             	mov    %r13,%rdi
  4059b8:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4059bf:	e8 7c ec ff ff       	call   404640 <printf_core>
  4059c4:	41 89 c4             	mov    %eax,%r12d
  4059c7:	41 8b 45 00          	mov    0x0(%r13),%eax
  4059cb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4059d0:	a8 20                	test   $0x20,%al
  4059d2:	44 0f 45 e2          	cmovne %edx,%r12d
  4059d6:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  4059dc:	41 89 45 00          	mov    %eax,0x0(%r13)
  4059e0:	85 db                	test   %ebx,%ebx
  4059e2:	0f 85 d8 00 00 00    	jne    405ac0 <vfprintf+0x1f0>
  4059e8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4059ec:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4059f3:	00 00 
  4059f5:	0f 85 dd 00 00 00    	jne    405ad8 <vfprintf+0x208>
  4059fb:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405a02:	44 89 e0             	mov    %r12d,%eax
  405a05:	5b                   	pop    %rbx
  405a06:	41 5c                	pop    %r12
  405a08:	41 5d                	pop    %r13
  405a0a:	41 5e                	pop    %r14
  405a0c:	41 5f                	pop    %r15
  405a0e:	5d                   	pop    %rbp
  405a0f:	c3                   	ret
  405a10:	49 8b 45 58          	mov    0x58(%r13),%rax
  405a14:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405a1b:	00 
  405a1c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405a20:	4c 89 ef             	mov    %r13,%rdi
  405a23:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405a2a:	00 
  405a2b:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405a31:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405a38:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405a3f:	49 89 45 58          	mov    %rax,0x58(%r13)
  405a43:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405a48:	e8 a3 09 00 00       	call   4063f0 <__towrite>
  405a4d:	85 c0                	test   %eax,%eax
  405a4f:	75 23                	jne    405a74 <vfprintf+0x1a4>
  405a51:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405a58:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405a5f:	4c 89 f1             	mov    %r14,%rcx
  405a62:	4c 89 ef             	mov    %r13,%rdi
  405a65:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405a6c:	e8 cf eb ff ff       	call   404640 <printf_core>
  405a71:	41 89 c4             	mov    %eax,%r12d
  405a74:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405a7b:	4d 85 f6             	test   %r14,%r14
  405a7e:	0f 84 43 ff ff ff    	je     4059c7 <vfprintf+0xf7>
  405a84:	31 d2                	xor    %edx,%edx
  405a86:	31 f6                	xor    %esi,%esi
  405a88:	4c 89 ef             	mov    %r13,%rdi
  405a8b:	41 ff 55 48          	call   *0x48(%r13)
  405a8f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405a94:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405a98:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405a9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405aa1:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405aa8:	00 
  405aa9:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405ab0:	00 
  405ab1:	44 0f 44 e0          	cmove  %eax,%r12d
  405ab5:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405aba:	e9 08 ff ff ff       	jmp    4059c7 <vfprintf+0xf7>
  405abf:	90                   	nop
  405ac0:	4c 89 ef             	mov    %r13,%rdi
  405ac3:	e8 f8 07 00 00       	call   4062c0 <__unlockfile>
  405ac8:	e9 1b ff ff ff       	jmp    4059e8 <vfprintf+0x118>
  405acd:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405ad3:	e9 10 ff ff ff       	jmp    4059e8 <vfprintf+0x118>
  405ad8:	e8 03 cd ff ff       	call   4027e0 <__stack_chk_fail>
  405add:	4c 89 ef             	mov    %r13,%rdi
  405ae0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405ae6:	e8 05 09 00 00       	call   4063f0 <__towrite>
  405aeb:	85 c0                	test   %eax,%eax
  405aed:	0f 85 d4 fe ff ff    	jne    4059c7 <vfprintf+0xf7>
  405af3:	e9 ac fe ff ff       	jmp    4059a4 <vfprintf+0xd4>
  405af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405aff:	00 

0000000000405b00 <vsprintf>:
  405b00:	f3 0f 1e fa          	endbr64
  405b04:	48 89 d1             	mov    %rdx,%rcx
  405b07:	48 89 f2             	mov    %rsi,%rdx
  405b0a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405b0f:	e9 bc 0b 00 00       	jmp    4066d0 <vsnprintf>
  405b14:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405b1b:	00 00 00 
  405b1e:	66 90                	xchg   %ax,%ax

0000000000405b20 <strcpy>:
  405b20:	f3 0f 1e fa          	endbr64
  405b24:	55                   	push   %rbp
  405b25:	48 89 e5             	mov    %rsp,%rbp
  405b28:	53                   	push   %rbx
  405b29:	48 89 fb             	mov    %rdi,%rbx
  405b2c:	48 83 ec 08          	sub    $0x8,%rsp
  405b30:	e8 8b 0d 00 00       	call   4068c0 <__stpcpy>
  405b35:	48 89 d8             	mov    %rbx,%rax
  405b38:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405b3c:	c9                   	leave
  405b3d:	c3                   	ret
  405b3e:	66 90                	xchg   %ax,%ax

0000000000405b40 <strnlen>:
  405b40:	f3 0f 1e fa          	endbr64
  405b44:	55                   	push   %rbp
  405b45:	48 89 f2             	mov    %rsi,%rdx
  405b48:	48 89 e5             	mov    %rsp,%rbp
  405b4b:	41 54                	push   %r12
  405b4d:	49 89 fc             	mov    %rdi,%r12
  405b50:	53                   	push   %rbx
  405b51:	48 89 f3             	mov    %rsi,%rbx
  405b54:	31 f6                	xor    %esi,%esi
  405b56:	e8 25 0c 00 00       	call   406780 <memchr>
  405b5b:	48 89 c2             	mov    %rax,%rdx
  405b5e:	4c 29 e0             	sub    %r12,%rax
  405b61:	48 85 d2             	test   %rdx,%rdx
  405b64:	48 0f 44 c3          	cmove  %rbx,%rax
  405b68:	5b                   	pop    %rbx
  405b69:	41 5c                	pop    %r12
  405b6b:	5d                   	pop    %rbp
  405b6c:	c3                   	ret

0000000000405b6d <memcpy>:
  405b6d:	48 89 f8             	mov    %rdi,%rax
  405b70:	48 83 fa 08          	cmp    $0x8,%rdx
  405b74:	72 14                	jb     405b8a <memcpy+0x1d>
  405b76:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405b7c:	74 0c                	je     405b8a <memcpy+0x1d>
  405b7e:	a4                   	movsb  (%rsi),(%rdi)
  405b7f:	48 ff ca             	dec    %rdx
  405b82:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405b88:	75 f4                	jne    405b7e <memcpy+0x11>
  405b8a:	48 89 d1             	mov    %rdx,%rcx
  405b8d:	48 c1 e9 03          	shr    $0x3,%rcx
  405b91:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405b94:	83 e2 07             	and    $0x7,%edx
  405b97:	74 05                	je     405b9e <memcpy+0x31>
  405b99:	a4                   	movsb  (%rsi),(%rdi)
  405b9a:	ff ca                	dec    %edx
  405b9c:	75 fb                	jne    405b99 <memcpy+0x2c>
  405b9e:	c3                   	ret

0000000000405b9f <memset>:
  405b9f:	48 0f b6 c6          	movzbq %sil,%rax
  405ba3:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405baa:	01 01 01 
  405bad:	49 0f af c0          	imul   %r8,%rax
  405bb1:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405bb5:	77 78                	ja     405c2f <memset+0x90>
  405bb7:	85 d2                	test   %edx,%edx
  405bb9:	74 70                	je     405c2b <memset+0x8c>
  405bbb:	40 88 37             	mov    %sil,(%rdi)
  405bbe:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405bc3:	83 fa 02             	cmp    $0x2,%edx
  405bc6:	76 63                	jbe    405c2b <memset+0x8c>
  405bc8:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405bcc:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405bd1:	83 fa 06             	cmp    $0x6,%edx
  405bd4:	76 55                	jbe    405c2b <memset+0x8c>
  405bd6:	89 47 03             	mov    %eax,0x3(%rdi)
  405bd9:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405bdd:	83 fa 0e             	cmp    $0xe,%edx
  405be0:	76 49                	jbe    405c2b <memset+0x8c>
  405be2:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405be6:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405beb:	83 fa 1e             	cmp    $0x1e,%edx
  405bee:	76 3b                	jbe    405c2b <memset+0x8c>
  405bf0:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405bf4:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405bf8:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405bfd:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405c02:	83 fa 3e             	cmp    $0x3e,%edx
  405c05:	76 24                	jbe    405c2b <memset+0x8c>
  405c07:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405c0b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405c0f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405c13:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405c17:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405c1c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405c21:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405c26:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405c2b:	48 89 f8             	mov    %rdi,%rax
  405c2e:	c3                   	ret
  405c2f:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405c35:	49 89 f8             	mov    %rdi,%r8
  405c38:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405c3d:	48 89 d1             	mov    %rdx,%rcx
  405c40:	75 0b                	jne    405c4d <memset+0xae>
  405c42:	48 c1 e9 03          	shr    $0x3,%rcx
  405c46:	f3 48 ab             	rep stos %rax,(%rdi)
  405c49:	4c 89 c0             	mov    %r8,%rax
  405c4c:	c3                   	ret
  405c4d:	31 d2                	xor    %edx,%edx
  405c4f:	29 fa                	sub    %edi,%edx
  405c51:	83 e2 0f             	and    $0xf,%edx
  405c54:	48 89 07             	mov    %rax,(%rdi)
  405c57:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405c5b:	48 29 d1             	sub    %rdx,%rcx
  405c5e:	48 01 d7             	add    %rdx,%rdi
  405c61:	eb df                	jmp    405c42 <memset+0xa3>
  405c63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405c6a:	00 00 00 
  405c6d:	0f 1f 00             	nopl   (%rax)

0000000000405c70 <__init_tp>:
  405c70:	f3 0f 1e fa          	endbr64
  405c74:	55                   	push   %rbp
  405c75:	48 89 e5             	mov    %rsp,%rbp
  405c78:	53                   	push   %rbx
  405c79:	48 89 fb             	mov    %rdi,%rbx
  405c7c:	48 83 ec 08          	sub    $0x8,%rsp
  405c80:	48 89 3f             	mov    %rdi,(%rdi)
  405c83:	e8 21 0d 00 00       	call   4069a9 <__set_thread_area>
  405c88:	85 c0                	test   %eax,%eax
  405c8a:	78 65                	js     405cf1 <__init_tp+0x81>
  405c8c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405c91:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405c95:	74 51                	je     405ce8 <__init_tp+0x78>
  405c97:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405c9e:	b8 da 00 00 00       	mov    $0xda,%eax
  405ca3:	48 8d 3d e6 4a 00 00 	lea    0x4ae6(%rip),%rdi        # 40a790 <__thread_list_lock>
  405caa:	0f 05                	syscall
  405cac:	89 43 30             	mov    %eax,0x30(%rbx)
  405caf:	48 8d 05 e2 44 00 00 	lea    0x44e2(%rip),%rax        # 40a198 <__libc+0x38>
  405cb6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405cbd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405cc4:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405ccb:	48 8b 05 5e 44 00 00 	mov    0x445e(%rip),%rax        # 40a130 <__sysinfo>
  405cd2:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405cd6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405cda:	31 c0                	xor    %eax,%eax
  405cdc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405ce0:	c9                   	leave
  405ce1:	c3                   	ret
  405ce2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ce8:	c6 05 71 44 00 00 01 	movb   $0x1,0x4471(%rip)        # 40a160 <__libc>
  405cef:	eb a6                	jmp    405c97 <__init_tp+0x27>
  405cf1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405cf6:	eb e4                	jmp    405cdc <__init_tp+0x6c>
  405cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405cff:	00 

0000000000405d00 <__copy_tls>:
  405d00:	f3 0f 1e fa          	endbr64
  405d04:	55                   	push   %rbp
  405d05:	48 8b 05 6c 44 00 00 	mov    0x446c(%rip),%rax        # 40a178 <__libc+0x18>
  405d0c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405d13:	ff 
  405d14:	48 89 e5             	mov    %rsp,%rbp
  405d17:	41 56                	push   %r14
  405d19:	49 89 fe             	mov    %rdi,%r14
  405d1c:	41 55                	push   %r13
  405d1e:	4c 8b 2d 5b 44 00 00 	mov    0x445b(%rip),%r13        # 40a180 <__libc+0x20>
  405d25:	41 54                	push   %r12
  405d27:	53                   	push   %rbx
  405d28:	48 8b 1d 41 44 00 00 	mov    0x4441(%rip),%rbx        # 40a170 <__libc+0x10>
  405d2f:	49 f7 dd             	neg    %r13
  405d32:	49 21 c5             	and    %rax,%r13
  405d35:	48 85 db             	test   %rbx,%rbx
  405d38:	74 32                	je     405d6c <__copy_tls+0x6c>
  405d3a:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405d3e:	66 90                	xchg   %ax,%ax
  405d40:	4c 89 e8             	mov    %r13,%rax
  405d43:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405d47:	4c 89 ef             	mov    %r13,%rdi
  405d4a:	49 83 c4 08          	add    $0x8,%r12
  405d4e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405d53:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405d57:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405d5b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405d5f:	e8 09 fe ff ff       	call   405b6d <memcpy>
  405d64:	48 8b 1b             	mov    (%rbx),%rbx
  405d67:	48 85 db             	test   %rbx,%rbx
  405d6a:	75 d4                	jne    405d40 <__copy_tls+0x40>
  405d6c:	48 8b 05 15 44 00 00 	mov    0x4415(%rip),%rax        # 40a188 <__libc+0x28>
  405d73:	49 89 06             	mov    %rax,(%r14)
  405d76:	4c 89 e8             	mov    %r13,%rax
  405d79:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405d7d:	5b                   	pop    %rbx
  405d7e:	41 5c                	pop    %r12
  405d80:	41 5d                	pop    %r13
  405d82:	41 5e                	pop    %r14
  405d84:	5d                   	pop    %rbp
  405d85:	c3                   	ret
  405d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405d8d:	00 00 00 

0000000000405d90 <__init_tls>:
  405d90:	f3 0f 1e fa          	endbr64
  405d94:	55                   	push   %rbp
  405d95:	48 89 e5             	mov    %rsp,%rbp
  405d98:	53                   	push   %rbx
  405d99:	48 83 ec 08          	sub    $0x8,%rsp
  405d9d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405da1:	48 85 c9             	test   %rcx,%rcx
  405da4:	0f 84 fe 01 00 00    	je     405fa8 <__init_tls+0x218>
  405daa:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405dae:	31 f6                	xor    %esi,%esi
  405db0:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405db4:	45 31 c0             	xor    %r8d,%r8d
  405db7:	4c 89 d0             	mov    %r10,%rax
  405dba:	eb 29                	jmp    405de5 <__init_tls+0x55>
  405dbc:	0f 1f 40 00          	nopl   0x0(%rax)
  405dc0:	83 fa 02             	cmp    $0x2,%edx
  405dc3:	0f 85 77 01 00 00    	jne    405f40 <__init_tls+0x1b0>
  405dc9:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405dd0:	48 85 d2             	test   %rdx,%rdx
  405dd3:	74 07                	je     405ddc <__init_tls+0x4c>
  405dd5:	48 89 d6             	mov    %rdx,%rsi
  405dd8:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405ddc:	48 01 f8             	add    %rdi,%rax
  405ddf:	48 83 e9 01          	sub    $0x1,%rcx
  405de3:	74 17                	je     405dfc <__init_tls+0x6c>
  405de5:	8b 10                	mov    (%rax),%edx
  405de7:	83 fa 06             	cmp    $0x6,%edx
  405dea:	75 d4                	jne    405dc0 <__init_tls+0x30>
  405dec:	4c 89 d6             	mov    %r10,%rsi
  405def:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405df3:	48 01 f8             	add    %rdi,%rax
  405df6:	48 83 e9 01          	sub    $0x1,%rcx
  405dfa:	75 e9                	jne    405de5 <__init_tls+0x55>
  405dfc:	4d 85 c0             	test   %r8,%r8
  405dff:	0f 84 a3 01 00 00    	je     405fa8 <__init_tls+0x218>
  405e05:	49 8b 40 20          	mov    0x20(%r8),%rax
  405e09:	49 03 70 10          	add    0x10(%r8),%rsi
  405e0d:	48 8d 1d ec 47 00 00 	lea    0x47ec(%rip),%rbx        # 40a600 <main_tls>
  405e14:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405e18:	48 89 35 e9 47 00 00 	mov    %rsi,0x47e9(%rip)        # 40a608 <main_tls+0x8>
  405e1f:	48 89 05 ea 47 00 00 	mov    %rax,0x47ea(%rip)        # 40a610 <main_tls+0x10>
  405e26:	49 8b 40 30          	mov    0x30(%r8),%rax
  405e2a:	48 c7 05 53 43 00 00 	movq   $0x1,0x4353(%rip)        # 40a188 <__libc+0x28>
  405e31:	01 00 00 00 
  405e35:	48 89 05 e4 47 00 00 	mov    %rax,0x47e4(%rip)        # 40a620 <main_tls+0x20>
  405e3c:	48 89 1d 2d 43 00 00 	mov    %rbx,0x432d(%rip)        # 40a170 <__libc+0x10>
  405e43:	48 01 d6             	add    %rdx,%rsi
  405e46:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405e4a:	48 f7 de             	neg    %rsi
  405e4d:	48 21 ce             	and    %rcx,%rsi
  405e50:	48 01 d6             	add    %rdx,%rsi
  405e53:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405e5a:	48 89 35 b7 47 00 00 	mov    %rsi,0x47b7(%rip)        # 40a618 <main_tls+0x18>
  405e61:	48 89 35 c0 47 00 00 	mov    %rsi,0x47c0(%rip)        # 40a628 <main_tls+0x28>
  405e68:	48 83 f8 07          	cmp    $0x7,%rax
  405e6c:	77 15                	ja     405e83 <__init_tls+0xf3>
  405e6e:	48 c7 05 a7 47 00 00 	movq   $0x8,0x47a7(%rip)        # 40a620 <main_tls+0x20>
  405e75:	08 00 00 00 
  405e79:	ba e7 00 00 00       	mov    $0xe7,%edx
  405e7e:	b8 08 00 00 00       	mov    $0x8,%eax
  405e83:	48 01 d6             	add    %rdx,%rsi
  405e86:	48 89 05 f3 42 00 00 	mov    %rax,0x42f3(%rip)        # 40a180 <__libc+0x20>
  405e8d:	48 8d 3d ac 47 00 00 	lea    0x47ac(%rip),%rdi        # 40a640 <builtin_tls>
  405e94:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405e98:	48 89 35 d9 42 00 00 	mov    %rsi,0x42d9(%rip)        # 40a178 <__libc+0x18>
  405e9f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405ea6:	76 21                	jbe    405ec9 <__init_tls+0x139>
  405ea8:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405eae:	45 31 c9             	xor    %r9d,%r9d
  405eb1:	b8 09 00 00 00       	mov    $0x9,%eax
  405eb6:	31 ff                	xor    %edi,%edi
  405eb8:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405ebf:	ba 03 00 00 00       	mov    $0x3,%edx
  405ec4:	0f 05                	syscall
  405ec6:	48 89 c7             	mov    %rax,%rdi
  405ec9:	e8 32 fe ff ff       	call   405d00 <__copy_tls>
  405ece:	48 89 00             	mov    %rax,(%rax)
  405ed1:	48 89 c7             	mov    %rax,%rdi
  405ed4:	48 89 c3             	mov    %rax,%rbx
  405ed7:	e8 cd 0a 00 00       	call   4069a9 <__set_thread_area>
  405edc:	85 c0                	test   %eax,%eax
  405ede:	0f 88 b8 00 00 00    	js     405f9c <__init_tls+0x20c>
  405ee4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405ee9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405eed:	0f 84 9d 00 00 00    	je     405f90 <__init_tls+0x200>
  405ef3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405efa:	b8 da 00 00 00       	mov    $0xda,%eax
  405eff:	48 8d 3d 8a 48 00 00 	lea    0x488a(%rip),%rdi        # 40a790 <__thread_list_lock>
  405f06:	0f 05                	syscall
  405f08:	89 43 30             	mov    %eax,0x30(%rbx)
  405f0b:	48 8d 05 86 42 00 00 	lea    0x4286(%rip),%rax        # 40a198 <__libc+0x38>
  405f12:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405f19:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405f20:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405f27:	48 8b 05 02 42 00 00 	mov    0x4202(%rip),%rax        # 40a130 <__sysinfo>
  405f2e:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405f32:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405f36:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405f3a:	c9                   	leave
  405f3b:	c3                   	ret
  405f3c:	0f 1f 40 00          	nopl   0x0(%rax)
  405f40:	83 fa 07             	cmp    $0x7,%edx
  405f43:	75 0b                	jne    405f50 <__init_tls+0x1c0>
  405f45:	49 89 c0             	mov    %rax,%r8
  405f48:	e9 8f fe ff ff       	jmp    405ddc <__init_tls+0x4c>
  405f4d:	0f 1f 00             	nopl   (%rax)
  405f50:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  405f56:	0f 85 80 fe ff ff    	jne    405ddc <__init_tls+0x4c>
  405f5c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  405f60:	44 8b 0d a5 41 00 00 	mov    0x41a5(%rip),%r9d        # 40a10c <__default_stacksize>
  405f67:	49 39 d1             	cmp    %rdx,%r9
  405f6a:	0f 83 6c fe ff ff    	jae    405ddc <__init_tls+0x4c>
  405f70:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405f76:	4c 39 ca             	cmp    %r9,%rdx
  405f79:	49 0f 47 d1          	cmova  %r9,%rdx
  405f7d:	89 15 89 41 00 00    	mov    %edx,0x4189(%rip)        # 40a10c <__default_stacksize>
  405f83:	e9 54 fe ff ff       	jmp    405ddc <__init_tls+0x4c>
  405f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405f8f:	00 
  405f90:	c6 05 c9 41 00 00 01 	movb   $0x1,0x41c9(%rip)        # 40a160 <__libc>
  405f97:	e9 57 ff ff ff       	jmp    405ef3 <__init_tls+0x163>
  405f9c:	f4                   	hlt
  405f9d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405fa1:	c9                   	leave
  405fa2:	c3                   	ret
  405fa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405fa8:	48 8b 15 69 46 00 00 	mov    0x4669(%rip),%rdx        # 40a618 <main_tls+0x18>
  405faf:	48 8b 35 52 46 00 00 	mov    0x4652(%rip),%rsi        # 40a608 <main_tls+0x8>
  405fb6:	48 8b 05 63 46 00 00 	mov    0x4663(%rip),%rax        # 40a620 <main_tls+0x20>
  405fbd:	e9 81 fe ff ff       	jmp    405e43 <__init_tls+0xb3>
  405fc2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405fc9:	00 00 00 
  405fcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405fd0 <__errno_location>:
  405fd0:	f3 0f 1e fa          	endbr64
  405fd4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405fdb:	00 00 
  405fdd:	48 83 c0 34          	add    $0x34,%rax
  405fe1:	c3                   	ret
  405fe2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405fe9:	00 00 00 
  405fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405ff0 <__strerror_l>:
  405ff0:	f3 0f 1e fa          	endbr64
  405ff4:	48 8d 05 25 16 00 00 	lea    0x1625(%rip),%rax        # 407620 <errmsgstr>
  405ffb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  406001:	77 11                	ja     406014 <__strerror_l+0x24>
  406003:	48 63 ff             	movslq %edi,%rdi
  406006:	48 8d 15 f3 14 00 00 	lea    0x14f3(%rip),%rdx        # 407500 <errmsgidx>
  40600d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  406011:	48 01 d0             	add    %rdx,%rax
  406014:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  406018:	48 89 c7             	mov    %rax,%rdi
  40601b:	e9 50 00 00 00       	jmp    406070 <__lctrans>

0000000000406020 <strerror>:
  406020:	f3 0f 1e fa          	endbr64
  406024:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40602b:	00 00 
  40602d:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  406034:	e9 b7 ff ff ff       	jmp    405ff0 <__strerror_l>
  406039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406040 <_Exit>:
  406040:	f3 0f 1e fa          	endbr64
  406044:	48 63 ff             	movslq %edi,%rdi
  406047:	b8 e7 00 00 00       	mov    $0xe7,%eax
  40604c:	0f 05                	syscall
  40604e:	66 90                	xchg   %ax,%ax
  406050:	b8 3c 00 00 00       	mov    $0x3c,%eax
  406055:	0f 05                	syscall
  406057:	eb f7                	jmp    406050 <_Exit+0x10>
  406059:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406060 <__lctrans_impl>:
  406060:	f3 0f 1e fa          	endbr64
  406064:	48 89 f8             	mov    %rdi,%rax
  406067:	c3                   	ret
  406068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40606f:	00 

0000000000406070 <__lctrans>:
  406070:	f3 0f 1e fa          	endbr64
  406074:	e9 e7 ff ff ff       	jmp    406060 <__lctrans_impl>
  406079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406080 <__lctrans_cur>:
  406080:	f3 0f 1e fa          	endbr64
  406084:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40608b:	00 00 
  40608d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  406094:	48 8b 70 28          	mov    0x28(%rax),%rsi
  406098:	e9 c3 ff ff ff       	jmp    406060 <__lctrans_impl>
  40609d:	0f 1f 00             	nopl   (%rax)

00000000004060a0 <__fpclassifyl>:
  4060a0:	f3 0f 1e fa          	endbr64
  4060a4:	55                   	push   %rbp
  4060a5:	48 89 e5             	mov    %rsp,%rbp
  4060a8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4060ac:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4060b0:	48 89 ca             	mov    %rcx,%rdx
  4060b3:	89 c6                	mov    %eax,%esi
  4060b5:	25 ff 7f 00 00       	and    $0x7fff,%eax
  4060ba:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4060be:	66 81 e6 ff 7f       	and    $0x7fff,%si
  4060c3:	09 d0                	or     %edx,%eax
  4060c5:	74 31                	je     4060f8 <__fpclassifyl+0x58>
  4060c7:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  4060ce:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  4060d3:	74 0b                	je     4060e0 <__fpclassifyl+0x40>
  4060d5:	5d                   	pop    %rbp
  4060d6:	c3                   	ret
  4060d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4060de:	00 00 
  4060e0:	31 c0                	xor    %eax,%eax
  4060e2:	48 85 d2             	test   %rdx,%rdx
  4060e5:	74 ee                	je     4060d5 <__fpclassifyl+0x35>
  4060e7:	31 c0                	xor    %eax,%eax
  4060e9:	48 01 c9             	add    %rcx,%rcx
  4060ec:	5d                   	pop    %rbp
  4060ed:	0f 94 c0             	sete   %al
  4060f0:	c3                   	ret
  4060f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4060f8:	48 83 f9 01          	cmp    $0x1,%rcx
  4060fc:	b8 02 00 00 00       	mov    $0x2,%eax
  406101:	5d                   	pop    %rbp
  406102:	83 d8 ff             	sbb    $0xffffffff,%eax
  406105:	c3                   	ret
  406106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40610d:	00 00 00 

0000000000406110 <__signbitl>:
  406110:	f3 0f 1e fa          	endbr64
  406114:	55                   	push   %rbp
  406115:	48 89 e5             	mov    %rsp,%rbp
  406118:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  40611c:	5d                   	pop    %rbp
  40611d:	66 c1 e8 0f          	shr    $0xf,%ax
  406121:	0f b7 c0             	movzwl %ax,%eax
  406124:	c3                   	ret
  406125:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40612c:	00 00 00 
  40612f:	90                   	nop

0000000000406130 <frexpl>:
  406130:	f3 0f 1e fa          	endbr64
  406134:	55                   	push   %rbp
  406135:	48 89 e5             	mov    %rsp,%rbp
  406138:	48 83 ec 20          	sub    $0x20,%rsp
  40613c:	db 6d 10             	fldt   0x10(%rbp)
  40613f:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406143:	89 c2                	mov    %eax,%edx
  406145:	d9 c0                	fld    %st(0)
  406147:	db 7d f0             	fstpt  -0x10(%rbp)
  40614a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40614f:	74 2f                	je     406180 <frexpl+0x50>
  406151:	dd d8                	fstp   %st(0)
  406153:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406158:	74 38                	je     406192 <frexpl+0x62>
  40615a:	0f b7 d2             	movzwl %dx,%edx
  40615d:	66 25 00 80          	and    $0x8000,%ax
  406161:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  406167:	66 0d fe 3f          	or     $0x3ffe,%ax
  40616b:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40616f:	db 6d f0             	fldt   -0x10(%rbp)
  406172:	89 17                	mov    %edx,(%rdi)
  406174:	c9                   	leave
  406175:	c3                   	ret
  406176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40617d:	00 00 00 
  406180:	d9 ee                	fldz
  406182:	d9 c9                	fxch   %st(1)
  406184:	df e9                	fucomip %st(1),%st
  406186:	dd d8                	fstp   %st(0)
  406188:	7a 16                	jp     4061a0 <frexpl+0x70>
  40618a:	75 14                	jne    4061a0 <frexpl+0x70>
  40618c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406192:	db 6d 10             	fldt   0x10(%rbp)
  406195:	c9                   	leave
  406196:	c3                   	ret
  406197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40619e:	00 00 
  4061a0:	db 6d 10             	fldt   0x10(%rbp)
  4061a3:	d8 0d 23 13 00 00    	fmuls  0x1323(%rip)        # 4074cc <states+0x1ec>
  4061a9:	48 83 ec 10          	sub    $0x10,%rsp
  4061ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4061b1:	db 3c 24             	fstpt  (%rsp)
  4061b4:	e8 77 ff ff ff       	call   406130 <frexpl>
  4061b9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4061bd:	83 2f 78             	subl   $0x78,(%rdi)
  4061c0:	58                   	pop    %rax
  4061c1:	5a                   	pop    %rdx
  4061c2:	c9                   	leave
  4061c3:	c3                   	ret
  4061c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061cb:	00 00 00 
  4061ce:	66 90                	xchg   %ax,%ax

00000000004061d0 <wctomb>:
  4061d0:	f3 0f 1e fa          	endbr64
  4061d4:	48 85 ff             	test   %rdi,%rdi
  4061d7:	74 17                	je     4061f0 <wctomb+0x20>
  4061d9:	55                   	push   %rbp
  4061da:	31 d2                	xor    %edx,%edx
  4061dc:	48 89 e5             	mov    %rsp,%rbp
  4061df:	e8 3c 08 00 00       	call   406a20 <wcrtomb>
  4061e4:	5d                   	pop    %rbp
  4061e5:	c3                   	ret
  4061e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061ed:	00 00 00 
  4061f0:	31 c0                	xor    %eax,%eax
  4061f2:	c3                   	ret
  4061f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061fa:	00 00 00 
  4061fd:	0f 1f 00             	nopl   (%rax)

0000000000406200 <__lockfile>:
  406200:	f3 0f 1e fa          	endbr64
  406204:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40620a:	48 89 fa             	mov    %rdi,%rdx
  40620d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406214:	00 00 
  406216:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40621a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40621f:	31 c9                	xor    %ecx,%ecx
  406221:	44 39 c0             	cmp    %r8d,%eax
  406224:	74 3f                	je     406265 <__lockfile+0x65>
  406226:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  40622d:	89 c8                	mov    %ecx,%eax
  40622f:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  406236:	00 00 
  406238:	85 c0                	test   %eax,%eax
  40623a:	74 24                	je     406260 <__lockfile+0x60>
  40623c:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406243:	89 c8                	mov    %ecx,%eax
  406245:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40624c:	00 00 
  40624e:	89 c1                	mov    %eax,%ecx
  406250:	85 c0                	test   %eax,%eax
  406252:	75 33                	jne    406287 <__lockfile+0x87>
  406254:	90                   	nop
  406255:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40625c:	00 00 00 00 
  406260:	b9 01 00 00 00       	mov    $0x1,%ecx
  406265:	89 c8                	mov    %ecx,%eax
  406267:	c3                   	ret
  406268:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40626f:	00 
  406270:	89 c8                	mov    %ecx,%eax
  406272:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406276:	39 c8                	cmp    %ecx,%eax
  406278:	74 1d                	je     406297 <__lockfile+0x97>
  40627a:	31 c0                	xor    %eax,%eax
  40627c:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406281:	89 c1                	mov    %eax,%ecx
  406283:	85 c0                	test   %eax,%eax
  406285:	74 d9                	je     406260 <__lockfile+0x60>
  406287:	89 ca                	mov    %ecx,%edx
  406289:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40628f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406295:	74 d9                	je     406270 <__lockfile+0x70>
  406297:	48 63 d2             	movslq %edx,%rdx
  40629a:	45 31 d2             	xor    %r10d,%r10d
  40629d:	b8 ca 00 00 00       	mov    $0xca,%eax
  4062a2:	be 80 00 00 00       	mov    $0x80,%esi
  4062a7:	0f 05                	syscall
  4062a9:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4062ad:	75 cb                	jne    40627a <__lockfile+0x7a>
  4062af:	45 31 d2             	xor    %r10d,%r10d
  4062b2:	31 f6                	xor    %esi,%esi
  4062b4:	b8 ca 00 00 00       	mov    $0xca,%eax
  4062b9:	0f 05                	syscall
  4062bb:	eb bd                	jmp    40627a <__lockfile+0x7a>
  4062bd:	0f 1f 00             	nopl   (%rax)

00000000004062c0 <__unlockfile>:
  4062c0:	f3 0f 1e fa          	endbr64
  4062c4:	48 89 fa             	mov    %rdi,%rdx
  4062c7:	31 c0                	xor    %eax,%eax
  4062c9:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4062d0:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  4062d6:	a9 00 00 00 40       	test   $0x40000000,%eax
  4062db:	74 17                	je     4062f4 <__unlockfile+0x34>
  4062dd:	be 81 00 00 00       	mov    $0x81,%esi
  4062e2:	b8 ca 00 00 00       	mov    $0xca,%eax
  4062e7:	ba 01 00 00 00       	mov    $0x1,%edx
  4062ec:	0f 05                	syscall
  4062ee:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4062f2:	74 04                	je     4062f8 <__unlockfile+0x38>
  4062f4:	c3                   	ret
  4062f5:	0f 1f 00             	nopl   (%rax)
  4062f8:	b8 ca 00 00 00       	mov    $0xca,%eax
  4062fd:	be 01 00 00 00       	mov    $0x1,%esi
  406302:	0f 05                	syscall
  406304:	c3                   	ret
  406305:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40630c:	00 00 00 
  40630f:	90                   	nop

0000000000406310 <__aio_close>:
  406310:	f3 0f 1e fa          	endbr64
  406314:	89 f8                	mov    %edi,%eax
  406316:	c3                   	ret
  406317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40631e:	00 00 

0000000000406320 <__stdio_close>:
  406320:	f3 0f 1e fa          	endbr64
  406324:	55                   	push   %rbp
  406325:	8b 7f 78             	mov    0x78(%rdi),%edi
  406328:	48 89 e5             	mov    %rsp,%rbp
  40632b:	e8 e0 ff ff ff       	call   406310 <__aio_close>
  406330:	48 63 f8             	movslq %eax,%rdi
  406333:	b8 03 00 00 00       	mov    $0x3,%eax
  406338:	0f 05                	syscall
  40633a:	48 89 c7             	mov    %rax,%rdi
  40633d:	e8 9e 06 00 00       	call   4069e0 <__syscall_ret>
  406342:	5d                   	pop    %rbp
  406343:	c3                   	ret
  406344:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40634b:	00 00 00 
  40634e:	66 90                	xchg   %ax,%ax

0000000000406350 <__stdio_seek>:
  406350:	f3 0f 1e fa          	endbr64
  406354:	8b 7f 78             	mov    0x78(%rdi),%edi
  406357:	e9 64 06 00 00       	jmp    4069c0 <__lseek>
  40635c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406360 <__stdout_write>:
  406360:	f3 0f 1e fa          	endbr64
  406364:	55                   	push   %rbp
  406365:	48 8d 05 d4 08 00 00 	lea    0x8d4(%rip),%rax        # 406c40 <__stdio_write>
  40636c:	49 89 f8             	mov    %rdi,%r8
  40636f:	49 89 f1             	mov    %rsi,%r9
  406372:	48 89 e5             	mov    %rsp,%rbp
  406375:	48 83 ec 10          	sub    $0x10,%rsp
  406379:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406380:	00 00 
  406382:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406386:	49 89 d2             	mov    %rdx,%r10
  406389:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40638d:	f6 07 40             	testb  $0x40,(%rdi)
  406390:	75 19                	jne    4063ab <__stdout_write+0x4b>
  406392:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406396:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40639a:	b8 10 00 00 00       	mov    $0x10,%eax
  40639f:	be 13 54 00 00       	mov    $0x5413,%esi
  4063a4:	0f 05                	syscall
  4063a6:	48 85 c0             	test   %rax,%rax
  4063a9:	75 25                	jne    4063d0 <__stdout_write+0x70>
  4063ab:	4c 89 d2             	mov    %r10,%rdx
  4063ae:	4c 89 ce             	mov    %r9,%rsi
  4063b1:	4c 89 c7             	mov    %r8,%rdi
  4063b4:	e8 87 08 00 00       	call   406c40 <__stdio_write>
  4063b9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4063bd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4063c4:	00 00 
  4063c6:	75 15                	jne    4063dd <__stdout_write+0x7d>
  4063c8:	c9                   	leave
  4063c9:	c3                   	ret
  4063ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4063d0:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  4063d7:	ff ff ff ff 
  4063db:	eb ce                	jmp    4063ab <__stdout_write+0x4b>
  4063dd:	e8 fe c3 ff ff       	call   4027e0 <__stack_chk_fail>
  4063e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4063e9:	00 00 00 
  4063ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004063f0 <__towrite>:
  4063f0:	f3 0f 1e fa          	endbr64
  4063f4:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  4063fa:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4063fd:	09 d0                	or     %edx,%eax
  4063ff:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  406405:	8b 07                	mov    (%rdi),%eax
  406407:	a8 08                	test   $0x8,%al
  406409:	75 35                	jne    406440 <__towrite+0x50>
  40640b:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40640f:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  406413:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406417:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  40641b:	48 01 c1             	add    %rax,%rcx
  40641e:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406423:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406427:	31 c0                	xor    %eax,%eax
  406429:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40642e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406432:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406436:	c3                   	ret
  406437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40643e:	00 00 
  406440:	83 c8 20             	or     $0x20,%eax
  406443:	89 07                	mov    %eax,(%rdi)
  406445:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40644a:	c3                   	ret
  40644b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406450 <__towrite_needs_stdio_exit>:
  406450:	f3 0f 1e fa          	endbr64
  406454:	e9 87 07 00 00       	jmp    406be0 <__stdio_exit>
  406459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406460 <__fwritex>:
  406460:	f3 0f 1e fa          	endbr64
  406464:	55                   	push   %rbp
  406465:	48 89 f9             	mov    %rdi,%rcx
  406468:	48 89 e5             	mov    %rsp,%rbp
  40646b:	41 54                	push   %r12
  40646d:	49 89 f4             	mov    %rsi,%r12
  406470:	53                   	push   %rbx
  406471:	48 89 d3             	mov    %rdx,%rbx
  406474:	48 83 ec 10          	sub    $0x10,%rsp
  406478:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40647c:	48 85 c0             	test   %rax,%rax
  40647f:	0f 84 ab 00 00 00    	je     406530 <__fwritex+0xd0>
  406485:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406489:	48 29 f8             	sub    %rdi,%rax
  40648c:	4c 39 e0             	cmp    %r12,%rax
  40648f:	72 57                	jb     4064e8 <__fwritex+0x88>
  406491:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406497:	4c 89 e2             	mov    %r12,%rdx
  40649a:	85 c0                	test   %eax,%eax
  40649c:	79 3d                	jns    4064db <__fwritex+0x7b>
  40649e:	4d 89 e0             	mov    %r12,%r8
  4064a1:	4c 89 c2             	mov    %r8,%rdx
  4064a4:	48 89 ce             	mov    %rcx,%rsi
  4064a7:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  4064ab:	e8 bd f6 ff ff       	call   405b6d <memcpy>
  4064b0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4064b4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4064b8:	4c 89 e0             	mov    %r12,%rax
  4064bb:	48 83 c4 10          	add    $0x10,%rsp
  4064bf:	5b                   	pop    %rbx
  4064c0:	41 5c                	pop    %r12
  4064c2:	5d                   	pop    %rbp
  4064c3:	c3                   	ret
  4064c4:	90                   	nop
  4064c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4064cc:	00 00 00 00 
  4064d0:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  4064d5:	74 29                	je     406500 <__fwritex+0xa0>
  4064d7:	48 83 ea 01          	sub    $0x1,%rdx
  4064db:	48 85 d2             	test   %rdx,%rdx
  4064de:	75 f0                	jne    4064d0 <__fwritex+0x70>
  4064e0:	eb bc                	jmp    40649e <__fwritex+0x3e>
  4064e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064e8:	48 8b 43 48          	mov    0x48(%rbx),%rax
  4064ec:	48 83 c4 10          	add    $0x10,%rsp
  4064f0:	4c 89 e2             	mov    %r12,%rdx
  4064f3:	48 89 df             	mov    %rbx,%rdi
  4064f6:	48 89 ce             	mov    %rcx,%rsi
  4064f9:	5b                   	pop    %rbx
  4064fa:	41 5c                	pop    %r12
  4064fc:	5d                   	pop    %rbp
  4064fd:	ff e0                	jmp    *%rax
  4064ff:	90                   	nop
  406500:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  406504:	48 89 ce             	mov    %rcx,%rsi
  406507:	48 89 df             	mov    %rbx,%rdi
  40650a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40650e:	ff 53 48             	call   *0x48(%rbx)
  406511:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406515:	48 39 d0             	cmp    %rdx,%rax
  406518:	72 a1                	jb     4064bb <__fwritex+0x5b>
  40651a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40651e:	4d 89 e0             	mov    %r12,%r8
  406521:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406525:	49 29 d0             	sub    %rdx,%r8
  406528:	48 01 d1             	add    %rdx,%rcx
  40652b:	e9 71 ff ff ff       	jmp    4064a1 <__fwritex+0x41>
  406530:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406534:	48 89 d7             	mov    %rdx,%rdi
  406537:	e8 b4 fe ff ff       	call   4063f0 <__towrite>
  40653c:	85 c0                	test   %eax,%eax
  40653e:	75 10                	jne    406550 <__fwritex+0xf0>
  406540:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406544:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406548:	e9 38 ff ff ff       	jmp    406485 <__fwritex+0x25>
  40654d:	0f 1f 00             	nopl   (%rax)
  406550:	31 c0                	xor    %eax,%eax
  406552:	e9 64 ff ff ff       	jmp    4064bb <__fwritex+0x5b>
  406557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40655e:	00 00 

0000000000406560 <fwrite>:
  406560:	f3 0f 1e fa          	endbr64
  406564:	55                   	push   %rbp
  406565:	31 c0                	xor    %eax,%eax
  406567:	48 89 e5             	mov    %rsp,%rbp
  40656a:	41 57                	push   %r15
  40656c:	41 56                	push   %r14
  40656e:	49 89 f6             	mov    %rsi,%r14
  406571:	41 55                	push   %r13
  406573:	4c 0f af f2          	imul   %rdx,%r14
  406577:	41 54                	push   %r12
  406579:	49 89 cc             	mov    %rcx,%r12
  40657c:	53                   	push   %rbx
  40657d:	48 89 f3             	mov    %rsi,%rbx
  406580:	48 83 ec 18          	sub    $0x18,%rsp
  406584:	48 85 f6             	test   %rsi,%rsi
  406587:	48 0f 45 c2          	cmovne %rdx,%rax
  40658b:	49 89 c5             	mov    %rax,%r13
  40658e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406594:	85 c0                	test   %eax,%eax
  406596:	79 30                	jns    4065c8 <fwrite+0x68>
  406598:	48 89 ca             	mov    %rcx,%rdx
  40659b:	4c 89 f6             	mov    %r14,%rsi
  40659e:	e8 bd fe ff ff       	call   406460 <__fwritex>
  4065a3:	49 39 c6             	cmp    %rax,%r14
  4065a6:	74 08                	je     4065b0 <fwrite+0x50>
  4065a8:	31 d2                	xor    %edx,%edx
  4065aa:	48 f7 f3             	div    %rbx
  4065ad:	49 89 c5             	mov    %rax,%r13
  4065b0:	48 83 c4 18          	add    $0x18,%rsp
  4065b4:	4c 89 e8             	mov    %r13,%rax
  4065b7:	5b                   	pop    %rbx
  4065b8:	41 5c                	pop    %r12
  4065ba:	41 5d                	pop    %r13
  4065bc:	41 5e                	pop    %r14
  4065be:	41 5f                	pop    %r15
  4065c0:	5d                   	pop    %rbp
  4065c1:	c3                   	ret
  4065c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4065c8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4065cc:	48 89 cf             	mov    %rcx,%rdi
  4065cf:	e8 2c fc ff ff       	call   406200 <__lockfile>
  4065d4:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  4065d8:	4c 89 e2             	mov    %r12,%rdx
  4065db:	4c 89 f6             	mov    %r14,%rsi
  4065de:	41 89 c7             	mov    %eax,%r15d
  4065e1:	e8 7a fe ff ff       	call   406460 <__fwritex>
  4065e6:	45 85 ff             	test   %r15d,%r15d
  4065e9:	74 b8                	je     4065a3 <fwrite+0x43>
  4065eb:	4c 89 e7             	mov    %r12,%rdi
  4065ee:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4065f2:	e8 c9 fc ff ff       	call   4062c0 <__unlockfile>
  4065f7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4065fb:	eb a6                	jmp    4065a3 <fwrite+0x43>
  4065fd:	0f 1f 00             	nopl   (%rax)

0000000000406600 <sn_write>:
  406600:	f3 0f 1e fa          	endbr64
  406604:	55                   	push   %rbp
  406605:	48 89 f1             	mov    %rsi,%rcx
  406608:	48 89 e5             	mov    %rsp,%rbp
  40660b:	41 55                	push   %r13
  40660d:	49 89 d5             	mov    %rdx,%r13
  406610:	41 54                	push   %r12
  406612:	53                   	push   %rbx
  406613:	48 89 fb             	mov    %rdi,%rbx
  406616:	48 83 ec 18          	sub    $0x18,%rsp
  40661a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406621:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406625:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406629:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40662e:	49 8b 3c 24          	mov    (%r12),%rdi
  406632:	48 29 f2             	sub    %rsi,%rdx
  406635:	48 39 c2             	cmp    %rax,%rdx
  406638:	48 0f 47 d0          	cmova  %rax,%rdx
  40663c:	48 85 d2             	test   %rdx,%rdx
  40663f:	75 2f                	jne    406670 <sn_write+0x70>
  406641:	49 39 c5             	cmp    %rax,%r13
  406644:	49 0f 46 c5          	cmovbe %r13,%rax
  406648:	48 89 c2             	mov    %rax,%rdx
  40664b:	48 85 c0             	test   %rax,%rax
  40664e:	75 5c                	jne    4066ac <sn_write+0xac>
  406650:	c6 07 00             	movb   $0x0,(%rdi)
  406653:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406657:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40665b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40665f:	48 83 c4 18          	add    $0x18,%rsp
  406663:	4c 89 e8             	mov    %r13,%rax
  406666:	5b                   	pop    %rbx
  406667:	41 5c                	pop    %r12
  406669:	41 5d                	pop    %r13
  40666b:	5d                   	pop    %rbp
  40666c:	c3                   	ret
  40666d:	0f 1f 00             	nopl   (%rax)
  406670:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406674:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406678:	e8 f0 f4 ff ff       	call   405b6d <memcpy>
  40667d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406681:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406686:	49 8b 3c 24          	mov    (%r12),%rdi
  40668a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40668e:	48 29 d0             	sub    %rdx,%rax
  406691:	48 01 d7             	add    %rdx,%rdi
  406694:	49 39 c5             	cmp    %rax,%r13
  406697:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40669c:	49 0f 46 c5          	cmovbe %r13,%rax
  4066a0:	49 89 3c 24          	mov    %rdi,(%r12)
  4066a4:	48 89 c2             	mov    %rax,%rdx
  4066a7:	48 85 c0             	test   %rax,%rax
  4066aa:	74 a4                	je     406650 <sn_write+0x50>
  4066ac:	48 89 ce             	mov    %rcx,%rsi
  4066af:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4066b3:	e8 b5 f4 ff ff       	call   405b6d <memcpy>
  4066b8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4066bc:	49 8b 3c 24          	mov    (%r12),%rdi
  4066c0:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  4066c5:	48 01 d7             	add    %rdx,%rdi
  4066c8:	49 89 3c 24          	mov    %rdi,(%r12)
  4066cc:	eb 82                	jmp    406650 <sn_write+0x50>
  4066ce:	66 90                	xchg   %ax,%ax

00000000004066d0 <vsnprintf>:
  4066d0:	f3 0f 1e fa          	endbr64
  4066d4:	55                   	push   %rbp
  4066d5:	49 89 c9             	mov    %rcx,%r9
  4066d8:	49 89 d0             	mov    %rdx,%r8
  4066db:	48 89 e5             	mov    %rsp,%rbp
  4066de:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  4066e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4066ec:	00 00 
  4066ee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4066f2:	31 c0                	xor    %eax,%eax
  4066f4:	48 85 f6             	test   %rsi,%rsi
  4066f7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4066fb:	0f 95 c1             	setne  %cl
  4066fe:	48 0f 45 d7          	cmovne %rdi,%rdx
  406702:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  406709:	0f b6 c9             	movzbl %cl,%ecx
  40670c:	48 29 ce             	sub    %rcx,%rsi
  40670f:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406714:	c6 02 00             	movb   $0x0,(%rdx)
  406717:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40671e:	4c 89 ca             	mov    %r9,%rdx
  406721:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406728:	4c 89 c6             	mov    %r8,%rsi
  40672b:	f3 48 ab             	rep stos %rax,(%rdi)
  40672e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 406600 <sn_write>
  406735:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40673c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406743:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406747:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40674e:	48 8b 05 4b 16 00 00 	mov    0x164b(%rip),%rax        # 407da0 <errmsgstr+0x780>
  406755:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406759:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406760:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406764:	e8 67 f1 ff ff       	call   4058d0 <vfprintf>
  406769:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40676d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406774:	00 00 
  406776:	75 02                	jne    40677a <vsnprintf+0xaa>
  406778:	c9                   	leave
  406779:	c3                   	ret
  40677a:	e8 61 c0 ff ff       	call   4027e0 <__stack_chk_fail>
  40677f:	90                   	nop

0000000000406780 <memchr>:
  406780:	f3 0f 1e fa          	endbr64
  406784:	48 89 d0             	mov    %rdx,%rax
  406787:	40 0f b6 ce          	movzbl %sil,%ecx
  40678b:	40 f6 c7 07          	test   $0x7,%dil
  40678f:	75 1c                	jne    4067ad <memchr+0x2d>
  406791:	eb 2d                	jmp    4067c0 <memchr+0x40>
  406793:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406798:	0f b6 17             	movzbl (%rdi),%edx
  40679b:	39 ca                	cmp    %ecx,%edx
  40679d:	74 28                	je     4067c7 <memchr+0x47>
  40679f:	48 83 c7 01          	add    $0x1,%rdi
  4067a3:	48 83 e8 01          	sub    $0x1,%rax
  4067a7:	40 f6 c7 07          	test   $0x7,%dil
  4067ab:	74 13                	je     4067c0 <memchr+0x40>
  4067ad:	48 85 c0             	test   %rax,%rax
  4067b0:	75 e6                	jne    406798 <memchr+0x18>
  4067b2:	31 d2                	xor    %edx,%edx
  4067b4:	48 89 d0             	mov    %rdx,%rax
  4067b7:	c3                   	ret
  4067b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4067bf:	00 
  4067c0:	31 d2                	xor    %edx,%edx
  4067c2:	48 85 c0             	test   %rax,%rax
  4067c5:	74 ed                	je     4067b4 <memchr+0x34>
  4067c7:	0f b6 17             	movzbl (%rdi),%edx
  4067ca:	39 ca                	cmp    %ecx,%edx
  4067cc:	0f 84 ce 00 00 00    	je     4068a0 <memchr+0x120>
  4067d2:	48 83 f8 07          	cmp    $0x7,%rax
  4067d6:	0f 86 c4 00 00 00    	jbe    4068a0 <memchr+0x120>
  4067dc:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4067e3:	01 01 01 
  4067e6:	4c 63 c1             	movslq %ecx,%r8
  4067e9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4067f0:	fe fe fe 
  4067f3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4067fa:	80 80 80 
  4067fd:	4c 0f af c2          	imul   %rdx,%r8
  406801:	48 89 fa             	mov    %rdi,%rdx
  406804:	eb 48                	jmp    40684e <memchr+0xce>
  406806:	0f 1f 00             	nopl   (%rax)
  406809:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406810:	00 00 00 00 
  406814:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40681b:	00 00 00 00 
  40681f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406826:	00 00 00 00 
  40682a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406831:	00 00 00 00 
  406835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40683c:	00 00 00 00 
  406840:	48 83 e8 08          	sub    $0x8,%rax
  406844:	48 83 c2 08          	add    $0x8,%rdx
  406848:	48 83 f8 07          	cmp    $0x7,%rax
  40684c:	76 5a                	jbe    4068a8 <memchr+0x128>
  40684e:	48 8b 32             	mov    (%rdx),%rsi
  406851:	4c 31 c6             	xor    %r8,%rsi
  406854:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406858:	48 f7 d6             	not    %rsi
  40685b:	48 21 fe             	and    %rdi,%rsi
  40685e:	4c 85 ce             	test   %r9,%rsi
  406861:	74 dd                	je     406840 <memchr+0xc0>
  406863:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40686a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406871:	00 00 00 00 
  406875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40687c:	00 00 00 00 
  406880:	0f b6 32             	movzbl (%rdx),%esi
  406883:	39 ce                	cmp    %ecx,%esi
  406885:	0f 84 29 ff ff ff    	je     4067b4 <memchr+0x34>
  40688b:	48 83 c2 01          	add    $0x1,%rdx
  40688f:	48 83 e8 01          	sub    $0x1,%rax
  406893:	75 eb                	jne    406880 <memchr+0x100>
  406895:	e9 18 ff ff ff       	jmp    4067b2 <memchr+0x32>
  40689a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4068a0:	48 89 fa             	mov    %rdi,%rdx
  4068a3:	eb db                	jmp    406880 <memchr+0x100>
  4068a5:	0f 1f 00             	nopl   (%rax)
  4068a8:	48 85 c0             	test   %rax,%rax
  4068ab:	75 d3                	jne    406880 <memchr+0x100>
  4068ad:	e9 00 ff ff ff       	jmp    4067b2 <memchr+0x32>
  4068b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4068b9:	00 00 00 
  4068bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004068c0 <__stpcpy>:
  4068c0:	f3 0f 1e fa          	endbr64
  4068c4:	48 89 f9             	mov    %rdi,%rcx
  4068c7:	48 89 f8             	mov    %rdi,%rax
  4068ca:	48 89 f2             	mov    %rsi,%rdx
  4068cd:	48 31 f1             	xor    %rsi,%rcx
  4068d0:	83 e1 07             	and    $0x7,%ecx
  4068d3:	74 5c                	je     406931 <__stpcpy+0x71>
  4068d5:	0f b6 0a             	movzbl (%rdx),%ecx
  4068d8:	88 08                	mov    %cl,(%rax)
  4068da:	84 c9                	test   %cl,%cl
  4068dc:	0f 84 c6 00 00 00    	je     4069a8 <__stpcpy+0xe8>
  4068e2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4068e9:	00 
  4068ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068f1:	00 00 00 00 
  4068f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068fc:	00 00 00 00 
  406900:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406904:	48 83 c2 01          	add    $0x1,%rdx
  406908:	48 83 c0 01          	add    $0x1,%rax
  40690c:	88 08                	mov    %cl,(%rax)
  40690e:	84 c9                	test   %cl,%cl
  406910:	75 ee                	jne    406900 <__stpcpy+0x40>
  406912:	c3                   	ret
  406913:	66 90                	xchg   %ax,%ax
  406915:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40691c:	00 00 00 00 
  406920:	0f b6 0a             	movzbl (%rdx),%ecx
  406923:	88 08                	mov    %cl,(%rax)
  406925:	84 c9                	test   %cl,%cl
  406927:	74 e9                	je     406912 <__stpcpy+0x52>
  406929:	48 83 c2 01          	add    $0x1,%rdx
  40692d:	48 83 c0 01          	add    $0x1,%rax
  406931:	f6 c2 07             	test   $0x7,%dl
  406934:	75 ea                	jne    406920 <__stpcpy+0x60>
  406936:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  40693d:	fe fe fe 
  406940:	48 8b 0a             	mov    (%rdx),%rcx
  406943:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40694a:	80 80 80 
  40694d:	48 89 cf             	mov    %rcx,%rdi
  406950:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406954:	48 f7 d7             	not    %rdi
  406957:	48 21 fe             	and    %rdi,%rsi
  40695a:	4c 85 ce             	test   %r9,%rsi
  40695d:	0f 85 72 ff ff ff    	jne    4068d5 <__stpcpy+0x15>
  406963:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40696a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406971:	00 00 00 00 
  406975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40697c:	00 00 00 00 
  406980:	48 83 c2 08          	add    $0x8,%rdx
  406984:	48 89 08             	mov    %rcx,(%rax)
  406987:	48 83 c0 08          	add    $0x8,%rax
  40698b:	48 8b 0a             	mov    (%rdx),%rcx
  40698e:	48 89 cf             	mov    %rcx,%rdi
  406991:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406995:	48 f7 d7             	not    %rdi
  406998:	48 21 fe             	and    %rdi,%rsi
  40699b:	4c 85 ce             	test   %r9,%rsi
  40699e:	74 e0                	je     406980 <__stpcpy+0xc0>
  4069a0:	e9 30 ff ff ff       	jmp    4068d5 <__stpcpy+0x15>
  4069a5:	0f 1f 00             	nopl   (%rax)
  4069a8:	c3                   	ret

00000000004069a9 <__set_thread_area>:
  4069a9:	48 89 fe             	mov    %rdi,%rsi
  4069ac:	bf 02 10 00 00       	mov    $0x1002,%edi
  4069b1:	b8 9e 00 00 00       	mov    $0x9e,%eax
  4069b6:	0f 05                	syscall
  4069b8:	c3                   	ret
  4069b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004069c0 <__lseek>:
  4069c0:	f3 0f 1e fa          	endbr64
  4069c4:	48 63 ff             	movslq %edi,%rdi
  4069c7:	48 63 d2             	movslq %edx,%rdx
  4069ca:	b8 08 00 00 00       	mov    $0x8,%eax
  4069cf:	0f 05                	syscall
  4069d1:	48 89 c7             	mov    %rax,%rdi
  4069d4:	e9 07 00 00 00       	jmp    4069e0 <__syscall_ret>
  4069d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004069e0 <__syscall_ret>:
  4069e0:	f3 0f 1e fa          	endbr64
  4069e4:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  4069eb:	77 0b                	ja     4069f8 <__syscall_ret+0x18>
  4069ed:	48 89 f8             	mov    %rdi,%rax
  4069f0:	c3                   	ret
  4069f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4069f8:	55                   	push   %rbp
  4069f9:	48 89 e5             	mov    %rsp,%rbp
  4069fc:	53                   	push   %rbx
  4069fd:	48 89 fb             	mov    %rdi,%rbx
  406a00:	48 83 ec 08          	sub    $0x8,%rsp
  406a04:	e8 c7 f5 ff ff       	call   405fd0 <__errno_location>
  406a09:	89 df                	mov    %ebx,%edi
  406a0b:	f7 df                	neg    %edi
  406a0d:	89 38                	mov    %edi,(%rax)
  406a0f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406a16:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406a1a:	c9                   	leave
  406a1b:	c3                   	ret
  406a1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406a20 <wcrtomb>:
  406a20:	f3 0f 1e fa          	endbr64
  406a24:	48 85 ff             	test   %rdi,%rdi
  406a27:	0f 84 d6 00 00 00    	je     406b03 <wcrtomb+0xe3>
  406a2d:	83 fe 7f             	cmp    $0x7f,%esi
  406a30:	0f 86 ca 00 00 00    	jbe    406b00 <wcrtomb+0xe0>
  406a36:	55                   	push   %rbp
  406a37:	89 f0                	mov    %esi,%eax
  406a39:	48 89 f9             	mov    %rdi,%rcx
  406a3c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406a43:	00 00 
  406a45:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406a4c:	48 89 e5             	mov    %rsp,%rbp
  406a4f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406a53:	74 53                	je     406aa8 <wcrtomb+0x88>
  406a55:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406a5b:	0f 86 af 00 00 00    	jbe    406b10 <wcrtomb+0xf0>
  406a61:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406a67:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406a6d:	0f 86 bd 00 00 00    	jbe    406b30 <wcrtomb+0x110>
  406a73:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406a79:	0f 86 b1 00 00 00    	jbe    406b30 <wcrtomb+0x110>
  406a7f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406a85:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406a8b:	76 33                	jbe    406ac0 <wcrtomb+0xa0>
  406a8d:	e8 3e f5 ff ff       	call   405fd0 <__errno_location>
  406a92:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406a98:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406a9f:	5d                   	pop    %rbp
  406aa0:	c3                   	ret
  406aa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406aa8:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406aad:	83 f8 7f             	cmp    $0x7f,%eax
  406ab0:	77 db                	ja     406a8d <wcrtomb+0x6d>
  406ab2:	40 88 37             	mov    %sil,(%rdi)
  406ab5:	b8 01 00 00 00       	mov    $0x1,%eax
  406aba:	5d                   	pop    %rbp
  406abb:	c3                   	ret
  406abc:	0f 1f 40 00          	nopl   0x0(%rax)
  406ac0:	89 c7                	mov    %eax,%edi
  406ac2:	83 e0 3f             	and    $0x3f,%eax
  406ac5:	89 f2                	mov    %esi,%edx
  406ac7:	c1 fe 0c             	sar    $0xc,%esi
  406aca:	c1 ff 06             	sar    $0x6,%edi
  406acd:	c1 e0 08             	shl    $0x8,%eax
  406ad0:	83 e6 3f             	and    $0x3f,%esi
  406ad3:	83 e7 3f             	and    $0x3f,%edi
  406ad6:	c1 fa 12             	sar    $0x12,%edx
  406ad9:	09 f8                	or     %edi,%eax
  406adb:	0f b6 d2             	movzbl %dl,%edx
  406ade:	c1 e0 08             	shl    $0x8,%eax
  406ae1:	09 f0                	or     %esi,%eax
  406ae3:	8b 35 e7 09 00 00    	mov    0x9e7(%rip),%esi        # 4074d0 <states+0x1f0>
  406ae9:	c1 e0 08             	shl    $0x8,%eax
  406aec:	09 d0                	or     %edx,%eax
  406aee:	09 f0                	or     %esi,%eax
  406af0:	89 01                	mov    %eax,(%rcx)
  406af2:	b8 04 00 00 00       	mov    $0x4,%eax
  406af7:	5d                   	pop    %rbp
  406af8:	c3                   	ret
  406af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b00:	40 88 37             	mov    %sil,(%rdi)
  406b03:	b8 01 00 00 00       	mov    $0x1,%eax
  406b08:	c3                   	ret
  406b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b10:	89 f2                	mov    %esi,%edx
  406b12:	83 e0 3f             	and    $0x3f,%eax
  406b15:	c1 fa 06             	sar    $0x6,%edx
  406b18:	83 c8 80             	or     $0xffffff80,%eax
  406b1b:	83 ca c0             	or     $0xffffffc0,%edx
  406b1e:	88 47 01             	mov    %al,0x1(%rdi)
  406b21:	b8 02 00 00 00       	mov    $0x2,%eax
  406b26:	88 17                	mov    %dl,(%rdi)
  406b28:	5d                   	pop    %rbp
  406b29:	c3                   	ret
  406b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406b30:	89 c2                	mov    %eax,%edx
  406b32:	c1 fa 0c             	sar    $0xc,%edx
  406b35:	83 ca e0             	or     $0xffffffe0,%edx
  406b38:	88 11                	mov    %dl,(%rcx)
  406b3a:	89 c2                	mov    %eax,%edx
  406b3c:	83 e0 3f             	and    $0x3f,%eax
  406b3f:	c1 fa 06             	sar    $0x6,%edx
  406b42:	83 c8 80             	or     $0xffffff80,%eax
  406b45:	83 e2 3f             	and    $0x3f,%edx
  406b48:	88 41 02             	mov    %al,0x2(%rcx)
  406b4b:	b8 03 00 00 00       	mov    $0x3,%eax
  406b50:	83 ca 80             	or     $0xffffff80,%edx
  406b53:	88 51 01             	mov    %dl,0x1(%rcx)
  406b56:	5d                   	pop    %rbp
  406b57:	c3                   	ret
  406b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406b5f:	00 

0000000000406b60 <close_file>:
  406b60:	48 85 ff             	test   %rdi,%rdi
  406b63:	74 6b                	je     406bd0 <close_file+0x70>
  406b65:	55                   	push   %rbp
  406b66:	48 89 e5             	mov    %rsp,%rbp
  406b69:	53                   	push   %rbx
  406b6a:	48 89 fb             	mov    %rdi,%rbx
  406b6d:	48 83 ec 08          	sub    $0x8,%rsp
  406b71:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406b77:	85 c0                	test   %eax,%eax
  406b79:	79 3d                	jns    406bb8 <close_file+0x58>
  406b7b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406b7f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406b83:	74 0a                	je     406b8f <close_file+0x2f>
  406b85:	31 d2                	xor    %edx,%edx
  406b87:	31 f6                	xor    %esi,%esi
  406b89:	48 89 df             	mov    %rbx,%rdi
  406b8c:	ff 53 48             	call   *0x48(%rbx)
  406b8f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406b93:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406b97:	48 39 c6             	cmp    %rax,%rsi
  406b9a:	74 24                	je     406bc0 <close_file+0x60>
  406b9c:	48 29 c6             	sub    %rax,%rsi
  406b9f:	48 89 df             	mov    %rbx,%rdi
  406ba2:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406ba6:	ba 01 00 00 00       	mov    $0x1,%edx
  406bab:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406baf:	c9                   	leave
  406bb0:	ff e0                	jmp    *%rax
  406bb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406bb8:	e8 43 f6 ff ff       	call   406200 <__lockfile>
  406bbd:	eb bc                	jmp    406b7b <close_file+0x1b>
  406bbf:	90                   	nop
  406bc0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406bc4:	c9                   	leave
  406bc5:	c3                   	ret
  406bc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406bcd:	00 00 00 
  406bd0:	c3                   	ret
  406bd1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406bd8:	00 00 00 
  406bdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406be0 <__stdio_exit>:
  406be0:	f3 0f 1e fa          	endbr64
  406be4:	55                   	push   %rbp
  406be5:	48 89 e5             	mov    %rsp,%rbp
  406be8:	53                   	push   %rbx
  406be9:	48 83 ec 08          	sub    $0x8,%rsp
  406bed:	e8 7e 01 00 00       	call   406d70 <__ofl_lock>
  406bf2:	48 8b 18             	mov    (%rax),%rbx
  406bf5:	48 85 db             	test   %rbx,%rbx
  406bf8:	74 17                	je     406c11 <__stdio_exit+0x31>
  406bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c00:	48 89 df             	mov    %rbx,%rdi
  406c03:	e8 58 ff ff ff       	call   406b60 <close_file>
  406c08:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406c0c:	48 85 db             	test   %rbx,%rbx
  406c0f:	75 ef                	jne    406c00 <__stdio_exit+0x20>
  406c11:	48 8b 3d 80 3b 00 00 	mov    0x3b80(%rip),%rdi        # 40a798 <__stderr_used>
  406c18:	e8 43 ff ff ff       	call   406b60 <close_file>
  406c1d:	48 8b 3d e4 33 00 00 	mov    0x33e4(%rip),%rdi        # 40a008 <__stdout_used>
  406c24:	e8 37 ff ff ff       	call   406b60 <close_file>
  406c29:	48 8b 3d 68 3b 00 00 	mov    0x3b68(%rip),%rdi        # 40a798 <__stderr_used>
  406c30:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c34:	c9                   	leave
  406c35:	e9 26 ff ff ff       	jmp    406b60 <close_file>
  406c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406c40 <__stdio_write>:
  406c40:	f3 0f 1e fa          	endbr64
  406c44:	55                   	push   %rbp
  406c45:	48 89 e5             	mov    %rsp,%rbp
  406c48:	41 57                	push   %r15
  406c4a:	41 56                	push   %r14
  406c4c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406c50:	41 55                	push   %r13
  406c52:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406c58:	41 54                	push   %r12
  406c5a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406c60:	53                   	push   %rbx
  406c61:	48 89 fb             	mov    %rdi,%rbx
  406c64:	48 83 ec 48          	sub    $0x48,%rsp
  406c68:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406c6c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406c70:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406c77:	00 00 
  406c79:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406c7d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406c81:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406c85:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406c89:	49 29 c0             	sub    %rax,%r8
  406c8c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406c90:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406c94:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406c98:	eb 37                	jmp    406cd1 <__stdio_write+0x91>
  406c9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ca0:	48 85 c0             	test   %rax,%rax
  406ca3:	0f 88 8f 00 00 00    	js     406d38 <__stdio_write+0xf8>
  406ca9:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406cad:	49 29 c6             	sub    %rax,%r14
  406cb0:	48 39 c2             	cmp    %rax,%rdx
  406cb3:	73 12                	jae    406cc7 <__stdio_write+0x87>
  406cb5:	41 83 ed 01          	sub    $0x1,%r13d
  406cb9:	48 29 d0             	sub    %rdx,%rax
  406cbc:	49 83 c7 10          	add    $0x10,%r15
  406cc0:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406cc4:	4d 63 e5             	movslq %r13d,%r12
  406cc7:	48 29 c2             	sub    %rax,%rdx
  406cca:	49 01 07             	add    %rax,(%r15)
  406ccd:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406cd1:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406cd5:	b8 14 00 00 00       	mov    $0x14,%eax
  406cda:	4c 89 fe             	mov    %r15,%rsi
  406cdd:	4c 89 e2             	mov    %r12,%rdx
  406ce0:	0f 05                	syscall
  406ce2:	48 89 c7             	mov    %rax,%rdi
  406ce5:	e8 f6 fc ff ff       	call   4069e0 <__syscall_ret>
  406cea:	49 39 c6             	cmp    %rax,%r14
  406ced:	75 b1                	jne    406ca0 <__stdio_write+0x60>
  406cef:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406cf3:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406cf7:	48 01 c1             	add    %rax,%rcx
  406cfa:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406cff:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406d03:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406d07:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406d0c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406d10:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406d14:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406d18:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406d1f:	00 00 
  406d21:	75 3a                	jne    406d5d <__stdio_write+0x11d>
  406d23:	48 83 c4 48          	add    $0x48,%rsp
  406d27:	5b                   	pop    %rbx
  406d28:	41 5c                	pop    %r12
  406d2a:	41 5d                	pop    %r13
  406d2c:	41 5e                	pop    %r14
  406d2e:	41 5f                	pop    %r15
  406d30:	5d                   	pop    %rbp
  406d31:	c3                   	ret
  406d32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d38:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406d3c:	83 0b 20             	orl    $0x20,(%rbx)
  406d3f:	31 c0                	xor    %eax,%eax
  406d41:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406d48:	00 
  406d49:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406d4d:	41 83 fd 02          	cmp    $0x2,%r13d
  406d51:	74 c1                	je     406d14 <__stdio_write+0xd4>
  406d53:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406d57:	49 2b 47 08          	sub    0x8(%r15),%rax
  406d5b:	eb b7                	jmp    406d14 <__stdio_write+0xd4>
  406d5d:	e8 7e ba ff ff       	call   4027e0 <__stack_chk_fail>
  406d62:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d69:	00 00 00 
  406d6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406d70 <__ofl_lock>:
  406d70:	f3 0f 1e fa          	endbr64
  406d74:	55                   	push   %rbp
  406d75:	48 8d 3d 24 3a 00 00 	lea    0x3a24(%rip),%rdi        # 40a7a0 <ofl_lock>
  406d7c:	48 89 e5             	mov    %rsp,%rbp
  406d7f:	e8 1c 00 00 00       	call   406da0 <__lock>
  406d84:	48 8d 05 1d 3a 00 00 	lea    0x3a1d(%rip),%rax        # 40a7a8 <ofl_head>
  406d8b:	5d                   	pop    %rbp
  406d8c:	c3                   	ret
  406d8d:	0f 1f 00             	nopl   (%rax)

0000000000406d90 <__ofl_unlock>:
  406d90:	f3 0f 1e fa          	endbr64
  406d94:	48 8d 3d 05 3a 00 00 	lea    0x3a05(%rip),%rdi        # 40a7a0 <ofl_lock>
  406d9b:	e9 e0 00 00 00       	jmp    406e80 <__unlock>

0000000000406da0 <__lock>:
  406da0:	f3 0f 1e fa          	endbr64
  406da4:	0f be 0d b8 33 00 00 	movsbl 0x33b8(%rip),%ecx        # 40a163 <__libc+0x3>
  406dab:	85 c9                	test   %ecx,%ecx
  406dad:	74 51                	je     406e00 <__lock+0x60>
  406daf:	31 c0                	xor    %eax,%eax
  406db1:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406db6:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406dba:	89 c2                	mov    %eax,%edx
  406dbc:	85 c9                	test   %ecx,%ecx
  406dbe:	78 48                	js     406e08 <__lock+0x68>
  406dc0:	85 c0                	test   %eax,%eax
  406dc2:	74 3c                	je     406e00 <__lock+0x60>
  406dc4:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406dca:	eb 1e                	jmp    406dea <__lock+0x4a>
  406dcc:	0f 1f 40 00          	nopl   0x0(%rax)
  406dd0:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406dd6:	89 d1                	mov    %edx,%ecx
  406dd8:	89 c8                	mov    %ecx,%eax
  406dda:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406dde:	89 c2                	mov    %eax,%edx
  406de0:	39 c1                	cmp    %eax,%ecx
  406de2:	74 1c                	je     406e00 <__lock+0x60>
  406de4:	41 83 e8 01          	sub    $0x1,%r8d
  406de8:	74 2e                	je     406e18 <__lock+0x78>
  406dea:	85 d2                	test   %edx,%edx
  406dec:	79 e2                	jns    406dd0 <__lock+0x30>
  406dee:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406df4:	89 d6                	mov    %edx,%esi
  406df6:	eb e0                	jmp    406dd8 <__lock+0x38>
  406df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406dff:	00 
  406e00:	c3                   	ret
  406e01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406e08:	c6 05 54 33 00 00 00 	movb   $0x0,0x3354(%rip)        # 40a163 <__libc+0x3>
  406e0f:	85 c0                	test   %eax,%eax
  406e11:	75 b1                	jne    406dc4 <__lock+0x24>
  406e13:	c3                   	ret
  406e14:	0f 1f 40 00          	nopl   0x0(%rax)
  406e18:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406e1e:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406e23:	41 83 c0 01          	add    $0x1,%r8d
  406e27:	eb 1c                	jmp    406e45 <__lock+0xa5>
  406e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406e30:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406e37:	89 d0                	mov    %edx,%eax
  406e39:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406e3e:	41 89 c0             	mov    %eax,%r8d
  406e41:	39 c2                	cmp    %eax,%edx
  406e43:	74 bb                	je     406e00 <__lock+0x60>
  406e45:	44 89 c2             	mov    %r8d,%edx
  406e48:	45 85 c0             	test   %r8d,%r8d
  406e4b:	79 e3                	jns    406e30 <__lock+0x90>
  406e4d:	49 63 d0             	movslq %r8d,%rdx
  406e50:	45 31 d2             	xor    %r10d,%r10d
  406e53:	b8 ca 00 00 00       	mov    $0xca,%eax
  406e58:	be 80 00 00 00       	mov    $0x80,%esi
  406e5d:	0f 05                	syscall
  406e5f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406e63:	75 09                	jne    406e6e <__lock+0xce>
  406e65:	31 f6                	xor    %esi,%esi
  406e67:	b8 ca 00 00 00       	mov    $0xca,%eax
  406e6c:	0f 05                	syscall
  406e6e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  406e75:	eb b9                	jmp    406e30 <__lock+0x90>
  406e77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406e7e:	00 00 

0000000000406e80 <__unlock>:
  406e80:	f3 0f 1e fa          	endbr64
  406e84:	8b 07                	mov    (%rdi),%eax
  406e86:	85 c0                	test   %eax,%eax
  406e88:	78 06                	js     406e90 <__unlock+0x10>
  406e8a:	c3                   	ret
  406e8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406e90:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  406e95:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  406e99:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  406e9e:	74 ea                	je     406e8a <__unlock+0xa>
  406ea0:	be 81 00 00 00       	mov    $0x81,%esi
  406ea5:	b8 ca 00 00 00       	mov    $0xca,%eax
  406eaa:	ba 01 00 00 00       	mov    $0x1,%edx
  406eaf:	0f 05                	syscall
  406eb1:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406eb5:	75 d3                	jne    406e8a <__unlock+0xa>
  406eb7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406ebc:	be 01 00 00 00       	mov    $0x1,%esi
  406ec1:	0f 05                	syscall
  406ec3:	c3                   	ret

Disassembly of section .fini:

0000000000406ec4 <_fini>:
  406ec4:	50                   	push   %rax
  406ec5:	58                   	pop    %rax
  406ec6:	c3                   	ret
