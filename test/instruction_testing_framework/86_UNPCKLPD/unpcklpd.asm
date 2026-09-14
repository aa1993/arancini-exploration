
test_unpcklpd_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 5c 18 00 00       	call   4028b0 <__funcs_on_exit>
  401054:	e8 67 18 00 00       	call   4028c0 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 40 5c 00 00       	call   406ca0 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 99 50 00 00       	call   406100 <_Exit>

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
  40108a:	49 c7 c0 84 6f 40 00 	mov    $0x406f84,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 53 23 40 00 	mov    $0x402353,%rdi
  4010a2:	e9 39 17 00 00       	jmp    4027e0 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 57 00 00 	lea    0x57fa(%rip),%rcx        # 407000 <_fini+0x7c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 a2 11 00 00       	call   4029d0 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 99 43 00 00       	call   405be0 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 44 10 00 00       	call   4028a0 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 57 00 00 	lea    0x5777(%rip),%rcx        # 407021 <_fini+0x9d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 06 11 00 00       	call   4029d0 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 fd 42 00 00       	call   405be0 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 a8 0f 00 00       	call   4028a0 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 55 00 00 	lea    0x55ce(%rip),%rsi        # 407030 <_fini+0xac>
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
  401a9f:	e8 2c 0f 00 00       	call   4029d0 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 1f 41 00 00       	call   405be0 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 ca 0d 00 00       	call   4028a0 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 54 00 00 	lea    0x54d7(%rip),%rsi        # 407078 <_fini+0xf4>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 0e 0e 00 00       	call   4029d0 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 01 40 00 00       	call   405be0 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 ac 0c 00 00       	call   4028a0 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 54 00 00 	lea    0x543b(%rip),%rsi        # 407099 <_fini+0x115>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 58 0d 00 00       	call   4029d0 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 4f 3f 00 00       	call   405be0 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 fa 0b 00 00       	call   4028a0 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 53 00 00 	lea    0x53b7(%rip),%rsi        # 4070aa <_fini+0x126>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 c9 0c 00 00       	call   4029d0 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 c0 3e 00 00       	call   405be0 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 6b 0b 00 00       	call   4028a0 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 51 00 00 	lea    0x5191(%rip),%rsi        # 407030 <_fini+0xac>
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
  401edc:	e8 ef 0a 00 00       	call   4029d0 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 e2 3c 00 00       	call   405be0 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 8d 09 00 00       	call   4028a0 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 50 00 00 	lea    0x509a(%rip),%rsi        # 407078 <_fini+0xf4>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 d1 09 00 00       	call   4029d0 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 c4 3b 00 00       	call   405be0 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 6f 08 00 00       	call   4028a0 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 50 00 00 	lea    0x501a(%rip),%rsi        # 4070b5 <_fini+0x131>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 1b 09 00 00       	call   4029d0 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 12 3b 00 00       	call   405be0 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 bd 07 00 00       	call   4028a0 <__stack_chk_fail>
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
  402129:	48 8d 35 96 4f 00 00 	lea    0x4f96(%rip),%rsi        # 4070c6 <_fini+0x142>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 8c 08 00 00       	call   4029d0 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 83 3a 00 00       	call   405be0 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 2e 07 00 00       	call   4028a0 <__stack_chk_fail>
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
  402202:	48 8d 35 cf 4e 00 00 	lea    0x4ecf(%rip),%rsi        # 4070d8 <_fini+0x154>
  402209:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402210:	41 50                	push   %r8
  402212:	57                   	push   %rdi
  402213:	4d 89 d0             	mov    %r10,%r8
  402216:	48 89 c7             	mov    %rax,%rdi
  402219:	b8 00 00 00 00       	mov    $0x0,%eax
  40221e:	e8 ad 07 00 00       	call   4029d0 <sprintf>
  402223:	48 83 c4 10          	add    $0x10,%rsp
          );
    strcpy(dest, res);
  402227:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40222e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402235:	48 89 d6             	mov    %rdx,%rsi
  402238:	48 89 c7             	mov    %rax,%rdi
  40223b:	e8 a0 39 00 00       	call   405be0 <strcpy>
}
  402240:	90                   	nop
  402241:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402245:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40224c:	00 00 
  40224e:	74 05                	je     402255 <flags_to_string+0xe1>
  402250:	e8 4b 06 00 00       	call   4028a0 <__stack_chk_fail>
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
  4022f3:	48 8d 35 15 4e 00 00 	lea    0x4e15(%rip),%rsi        # 40710f <_fini+0x18b>
  4022fa:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  402301:	41 52                	push   %r10
  402303:	41 51                	push   %r9
  402305:	41 50                	push   %r8
  402307:	57                   	push   %rdi
  402308:	41 89 d9             	mov    %ebx,%r9d
  40230b:	45 89 d8             	mov    %r11d,%r8d
  40230e:	48 89 c7             	mov    %rax,%rdi
  402311:	b8 00 00 00 00       	mov    $0x0,%eax
  402316:	e8 b5 06 00 00       	call   4029d0 <sprintf>
  40231b:	48 83 c4 20          	add    $0x20,%rsp
          src>>0 & 1
          );
    strcpy(dest, res);
  40231f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  402326:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  40232d:	48 89 d6             	mov    %rdx,%rsi
  402330:	48 89 c7             	mov    %rax,%rdi
  402333:	e8 a8 38 00 00       	call   405be0 <strcpy>
}
  402338:	90                   	nop
  402339:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40233d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402344:	00 00 
  402346:	74 05                	je     40234d <imm8_to_string+0xf6>
  402348:	e8 53 05 00 00       	call   4028a0 <__stack_chk_fail>
  40234d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402351:	c9                   	leave
  402352:	c3                   	ret

0000000000402353 <main>:
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"
int main() {
  402353:	f3 0f 1e fa          	endbr64
  402357:	55                   	push   %rbp
  402358:	48 89 e5             	mov    %rsp,%rbp
  40235b:	48 81 ec a0 04 00 00 	sub    $0x4a0,%rsp
  402362:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402369:	00 00 
  40236b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40236f:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402371:	48 b8 49 96 c0 d0 b9 	movabs $0xc63f6b9d0c09649,%rax
  402378:	f6 63 0c 
  40237b:	48 89 85 b0 fb ff ff 	mov    %rax,-0x450(%rbp)
  402382:	48 be ba 74 fa a8 dc 	movabs $0x67b61ddca8fa74ba,%rsi
  402389:	1d b6 67 
  40238c:	48 89 b5 b8 fb ff ff 	mov    %rsi,-0x448(%rbp)
    C_IN_TYPE in2[IN_LEN] = SRC2;
  402393:	48 b9 f8 3f 7f 1c 13 	movabs $0x9a91fd131c7f3ff8,%rcx
  40239a:	fd 91 9a 
  40239d:	48 89 8d c0 fb ff ff 	mov    %rcx,-0x440(%rbp)
  4023a4:	48 bf 6a c0 bf 95 02 	movabs $0x59474f0295bfc06a,%rdi
  4023ab:	4f 47 59 
  4023ae:	48 89 bd c8 fb ff ff 	mov    %rdi,-0x438(%rbp)
    C_OUT_TYPE con[OUT_LEN] = CON;
  4023b5:	48 89 85 d0 fb ff ff 	mov    %rax,-0x430(%rbp)
  4023bc:	48 89 8d d8 fb ff ff 	mov    %rcx,-0x428(%rbp)
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
  4023c3:	48 8d 95 b0 fb ff ff 	lea    -0x450(%rbp),%rdx
  4023ca:	48 8d 85 60 fb ff ff 	lea    -0x4a0(%rbp),%rax
  4023d1:	48 89 d6             	mov    %rdx,%rsi
  4023d4:	48 89 c7             	mov    %rax,%rdi
  4023d7:	e8 36 f2 ff ff       	call   401612 <insert_i64>
    SSE_TYPE v2;
    INSERT(&v2, in2);
  4023dc:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
  4023e3:	48 8d 85 70 fb ff ff 	lea    -0x490(%rbp),%rax
  4023ea:	48 89 d6             	mov    %rdx,%rsi
  4023ed:	48 89 c7             	mov    %rax,%rdi
  4023f0:	e8 1d f2 ff ff       	call   401612 <insert_i64>

    SSE_TYPE res = (__m128i)INTRINSIC_FUN((__m128d)v1,(__m128d) v2);
  4023f5:	66 0f 6f 85 70 fb ff 	movdqa -0x490(%rbp),%xmm0
  4023fc:	ff 
  4023fd:	66 0f 28 c8          	movapd %xmm0,%xmm1
  402401:	66 0f 6f 85 60 fb ff 	movdqa -0x4a0(%rbp),%xmm0
  402408:	ff 
  402409:	0f 29 85 90 fb ff ff 	movaps %xmm0,-0x470(%rbp)
  402410:	0f 29 8d a0 fb ff ff 	movaps %xmm1,-0x460(%rbp)
}

extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_unpcklpd ((__v2df)__A, (__v2df)__B);
  402417:	66 0f 28 85 90 fb ff 	movapd -0x470(%rbp),%xmm0
  40241e:	ff 
  40241f:	66 0f 16 85 a0 fb ff 	movhpd -0x460(%rbp),%xmm0
  402426:	ff 
  402427:	90                   	nop
  402428:	0f 29 85 80 fb ff ff 	movaps %xmm0,-0x480(%rbp)

    EXTRACT(out, res);
  40242f:	66 0f 6f 85 80 fb ff 	movdqa -0x480(%rbp),%xmm0
  402436:	ff 
  402437:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
  40243e:	48 89 c7             	mov    %rax,%rdi
  402441:	e8 03 f3 ff ff       	call   401749 <extract_i64>

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  402446:	48 8d 95 b0 fb ff ff 	lea    -0x450(%rbp),%rdx
  40244d:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  402454:	48 89 d6             	mov    %rdx,%rsi
  402457:	48 89 c7             	mov    %rax,%rdi
  40245a:	e8 49 f8 ff ff       	call   401ca8 <to_string_i64>
#ifdef SRC2
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  40245f:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
  402466:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  40246d:	48 89 d6             	mov    %rdx,%rsi
  402470:	48 89 c7             	mov    %rax,%rdi
  402473:	e8 30 f8 ff ff       	call   401ca8 <to_string_i64>
#endif
    char out_s[255];
    TO_STRING_OUT(out_s, out);
  402478:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
  40247f:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  402486:	48 89 d6             	mov    %rdx,%rsi
  402489:	48 89 c7             	mov    %rax,%rdi
  40248c:	e8 17 f8 ff ff       	call   401ca8 <to_string_i64>
    char con_s[255];
    TO_STRING_OUT(con_s, con);
  402491:	48 8d 95 d0 fb ff ff 	lea    -0x430(%rbp),%rdx
  402498:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40249f:	48 89 d6             	mov    %rdx,%rsi
  4024a2:	48 89 c7             	mov    %rax,%rdi
  4024a5:	e8 fe f7 ff ff       	call   401ca8 <to_string_i64>

#ifdef PRINT
#ifdef IMM8
    printf("%s\n "STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%s\n\ncon: %s\n",in1_s, in2_s, IMM8, out_s, con_s);
#elifdef SRC2
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\n\ncon: %s\n",in1_s, in2_s, out_s, con_s);
  4024aa:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  4024b1:	48 8d 8d f0 fd ff ff 	lea    -0x210(%rbp),%rcx
  4024b8:	48 8d 95 f0 fc ff ff 	lea    -0x310(%rbp),%rdx
  4024bf:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4024c6:	48 8d 3d 5b 4c 00 00 	lea    0x4c5b(%rip),%rdi        # 407128 <_fini+0x1a4>
  4024cd:	49 89 f0             	mov    %rsi,%r8
  4024d0:	48 89 c6             	mov    %rax,%rsi
  4024d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d8:	e8 23 04 00 00       	call   402900 <printf>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
  4024dd:	b8 00 00 00 00       	mov    $0x0,%eax
}
  4024e2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4024e6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4024ed:	00 00 
  4024ef:	74 05                	je     4024f6 <main+0x1a3>
  4024f1:	e8 aa 03 00 00       	call   4028a0 <__stack_chk_fail>
  4024f6:	c9                   	leave
  4024f7:	c3                   	ret
  4024f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4024ff:	00 

0000000000402500 <dummy>:
  402500:	f3 0f 1e fa          	endbr64
  402504:	c3                   	ret
  402505:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40250c:	00 00 00 
  40250f:	90                   	nop

0000000000402510 <dummy1>:
  402510:	f3 0f 1e fa          	endbr64
  402514:	c3                   	ret
  402515:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40251c:	00 00 00 
  40251f:	90                   	nop

0000000000402520 <__init_libc>:
  402520:	f3 0f 1e fa          	endbr64
  402524:	55                   	push   %rbp
  402525:	48 89 fa             	mov    %rdi,%rdx
  402528:	31 c0                	xor    %eax,%eax
  40252a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40252f:	48 89 e5             	mov    %rsp,%rbp
  402532:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402539:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402540:	f3 48 ab             	rep stos %rax,(%rdi)
  402543:	48 c7 c0 e8 a5 40 00 	mov    $0x40a5e8,%rax
  40254a:	48 89 10             	mov    %rdx,(%rax)
  40254d:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  402551:	0f 84 c9 01 00 00    	je     402720 <__init_libc+0x200>
  402557:	31 c0                	xor    %eax,%eax
  402559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402560:	48 89 c1             	mov    %rax,%rcx
  402563:	48 83 c0 01          	add    $0x1,%rax
  402567:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  40256c:	75 f2                	jne    402560 <__init_libc+0x40>
  40256e:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  402575:	00 
  402576:	48 01 d0             	add    %rdx,%rax
  402579:	48 89 05 e8 7b 00 00 	mov    %rax,0x7be8(%rip)        # 40a168 <__libc+0x8>
  402580:	48 8b 10             	mov    (%rax),%rdx
  402583:	48 83 c0 08          	add    $0x8,%rax
  402587:	48 85 d2             	test   %rdx,%rdx
  40258a:	0f 84 a0 01 00 00    	je     402730 <__init_libc+0x210>
  402590:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402595:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40259c:	00 00 00 00 
  4025a0:	48 83 fa 25          	cmp    $0x25,%rdx
  4025a4:	77 0b                	ja     4025b1 <__init_libc+0x91>
  4025a6:	48 8b 08             	mov    (%rax),%rcx
  4025a9:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  4025b0:	ff 
  4025b1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4025b5:	48 83 c0 10          	add    $0x10,%rax
  4025b9:	48 85 d2             	test   %rdx,%rdx
  4025bc:	75 e2                	jne    4025a0 <__init_libc+0x80>
  4025be:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  4025c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4025c9:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  4025d0:	48 89 0d 71 7b 00 00 	mov    %rcx,0x7b71(%rip)        # 40a148 <__hwcap>
  4025d7:	48 85 c0             	test   %rax,%rax
  4025da:	74 07                	je     4025e3 <__init_libc+0xc3>
  4025dc:	48 89 05 4d 7b 00 00 	mov    %rax,0x7b4d(%rip)        # 40a130 <__sysinfo>
  4025e3:	48 89 15 a6 7b 00 00 	mov    %rdx,0x7ba6(%rip)        # 40a190 <__libc+0x30>
  4025ea:	48 85 f6             	test   %rsi,%rsi
  4025ed:	0f 84 15 01 00 00    	je     402708 <__init_libc+0x1e8>
  4025f3:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  4025fa:	48 c7 c1 40 a1 40 00 	mov    $0x40a140,%rcx
  402601:	48 89 30             	mov    %rsi,(%rax)
  402604:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402608:	48 89 31             	mov    %rsi,(%rcx)
  40260b:	0f b6 16             	movzbl (%rsi),%edx
  40260e:	84 d2                	test   %dl,%dl
  402610:	74 21                	je     402633 <__init_libc+0x113>
  402612:	0f 1f 00             	nopl   (%rax)
  402615:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40261c:	00 00 00 00 
  402620:	80 fa 2f             	cmp    $0x2f,%dl
  402623:	75 03                	jne    402628 <__init_libc+0x108>
  402625:	48 89 01             	mov    %rax,(%rcx)
  402628:	0f b6 10             	movzbl (%rax),%edx
  40262b:	48 83 c0 01          	add    $0x1,%rax
  40262f:	84 d2                	test   %dl,%dl
  402631:	75 ed                	jne    402620 <__init_libc+0x100>
  402633:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40263a:	e8 11 38 00 00       	call   405e50 <__init_tls>
  40263f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  402643:	e8 e8 01 00 00       	call   402830 <__init_ssp>
  402648:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  40264f:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  402656:	0f 84 84 00 00 00    	je     4026e0 <__init_libc+0x1c0>
  40265c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402660:	b8 07 00 00 00       	mov    $0x7,%eax
  402665:	be 03 00 00 00       	mov    $0x3,%esi
  40266a:	31 d2                	xor    %edx,%edx
  40266c:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  402673:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  40267a:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  402681:	00 00 00 00 
  402685:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  40268c:	00 00 00 
  40268f:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  402696:	00 00 00 
  402699:	0f 05                	syscall
  40269b:	85 c0                	test   %eax,%eax
  40269d:	79 01                	jns    4026a0 <__init_libc+0x180>
  40269f:	f4                   	hlt
  4026a0:	48 89 fa             	mov    %rdi,%rdx
  4026a3:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  4026aa:	be 02 80 00 00       	mov    $0x8002,%esi
  4026af:	48 8d 3d a5 4a 00 00 	lea    0x4aa5(%rip),%rdi        # 40715b <_fini+0x1d7>
  4026b6:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  4026ba:	74 0d                	je     4026c9 <__init_libc+0x1a9>
  4026bc:	b8 02 00 00 00       	mov    $0x2,%eax
  4026c1:	0f 05                	syscall
  4026c3:	48 85 c0             	test   %rax,%rax
  4026c6:	79 01                	jns    4026c9 <__init_libc+0x1a9>
  4026c8:	f4                   	hlt
  4026c9:	48 83 c2 08          	add    $0x8,%rdx
  4026cd:	4c 39 c2             	cmp    %r8,%rdx
  4026d0:	75 e4                	jne    4026b6 <__init_libc+0x196>
  4026d2:	c6 05 89 7a 00 00 01 	movb   $0x1,0x7a89(%rip)        # 40a162 <__libc+0x2>
  4026d9:	c9                   	leave
  4026da:	c3                   	ret
  4026db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4026e0:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  4026e7:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  4026ee:	0f 85 68 ff ff ff    	jne    40265c <__init_libc+0x13c>
  4026f4:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4026f9:	0f 85 5d ff ff ff    	jne    40265c <__init_libc+0x13c>
  4026ff:	c9                   	leave
  402700:	c3                   	ret
  402701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402708:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40270c:	48 85 c0             	test   %rax,%rax
  40270f:	74 2f                	je     402740 <__init_libc+0x220>
  402711:	48 89 c6             	mov    %rax,%rsi
  402714:	e9 da fe ff ff       	jmp    4025f3 <__init_libc+0xd3>
  402719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402720:	b8 08 00 00 00       	mov    $0x8,%eax
  402725:	e9 4c fe ff ff       	jmp    402576 <__init_libc+0x56>
  40272a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402730:	48 c7 05 0d 7a 00 00 	movq   $0x0,0x7a0d(%rip)        # 40a148 <__hwcap>
  402737:	00 00 00 00 
  40273b:	e9 a3 fe ff ff       	jmp    4025e3 <__init_libc+0xc3>
  402740:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  402747:	48 8d 3d 4c 4a 00 00 	lea    0x4a4c(%rip),%rdi        # 40719a <_fini+0x216>
  40274e:	48 89 38             	mov    %rdi,(%rax)
  402751:	48 c7 c0 40 a1 40 00 	mov    $0x40a140,%rax
  402758:	48 89 38             	mov    %rdi,(%rax)
  40275b:	e9 d3 fe ff ff       	jmp    402633 <__init_libc+0x113>

0000000000402760 <__libc_start_init>:
  402760:	f3 0f 1e fa          	endbr64
  402764:	55                   	push   %rbp
  402765:	48 89 e5             	mov    %rsp,%rbp
  402768:	41 54                	push   %r12
  40276a:	53                   	push   %rbx
  40276b:	e8 90 e8 ff ff       	call   401000 <_init>
  402770:	48 c7 c3 c0 9f 40 00 	mov    $0x409fc0,%rbx
  402777:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  40277e:	4c 39 e3             	cmp    %r12,%rbx
  402781:	73 18                	jae    40279b <__libc_start_init+0x3b>
  402783:	66 90                	xchg   %ax,%ax
  402785:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40278c:	00 00 00 00 
  402790:	ff 13                	call   *(%rbx)
  402792:	48 83 c3 08          	add    $0x8,%rbx
  402796:	4c 39 e3             	cmp    %r12,%rbx
  402799:	72 f5                	jb     402790 <__libc_start_init+0x30>
  40279b:	5b                   	pop    %rbx
  40279c:	41 5c                	pop    %r12
  40279e:	5d                   	pop    %rbp
  40279f:	c3                   	ret

00000000004027a0 <libc_start_main_stage2>:
  4027a0:	f3 0f 1e fa          	endbr64
  4027a4:	55                   	push   %rbp
  4027a5:	48 63 c6             	movslq %esi,%rax
  4027a8:	48 89 e5             	mov    %rsp,%rbp
  4027ab:	41 56                	push   %r14
  4027ad:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  4027b2:	41 55                	push   %r13
  4027b4:	49 89 fd             	mov    %rdi,%r13
  4027b7:	41 54                	push   %r12
  4027b9:	49 89 d4             	mov    %rdx,%r12
  4027bc:	53                   	push   %rbx
  4027bd:	48 89 c3             	mov    %rax,%rbx
  4027c0:	e8 9b ff ff ff       	call   402760 <__libc_start_init>
  4027c5:	89 df                	mov    %ebx,%edi
  4027c7:	4c 89 f2             	mov    %r14,%rdx
  4027ca:	4c 89 e6             	mov    %r12,%rsi
  4027cd:	41 ff d5             	call   *%r13
  4027d0:	89 c7                	mov    %eax,%edi
  4027d2:	e8 69 e8 ff ff       	call   401040 <exit>
  4027d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4027de:	00 00 

00000000004027e0 <__libc_start_main>:
  4027e0:	f3 0f 1e fa          	endbr64
  4027e4:	55                   	push   %rbp
  4027e5:	48 63 c6             	movslq %esi,%rax
  4027e8:	48 89 e5             	mov    %rsp,%rbp
  4027eb:	41 54                	push   %r12
  4027ed:	49 89 fc             	mov    %rdi,%r12
  4027f0:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  4027f5:	53                   	push   %rbx
  4027f6:	48 89 c3             	mov    %rax,%rbx
  4027f9:	48 83 ec 10          	sub    $0x10,%rsp
  4027fd:	48 8b 32             	mov    (%rdx),%rsi
  402800:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402804:	e8 17 fd ff ff       	call   402520 <__init_libc>
  402809:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 4027a0 <libc_start_main_stage2>
  402810:	89 de                	mov    %ebx,%esi
  402812:	4c 89 e7             	mov    %r12,%rdi
  402815:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402819:	48 83 c4 10          	add    $0x10,%rsp
  40281d:	5b                   	pop    %rbx
  40281e:	41 5c                	pop    %r12
  402820:	5d                   	pop    %rbp
  402821:	ff e0                	jmp    *%rax
  402823:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40282a:	00 00 00 
  40282d:	0f 1f 00             	nopl   (%rax)

0000000000402830 <__init_ssp>:
  402830:	f3 0f 1e fa          	endbr64
  402834:	55                   	push   %rbp
  402835:	48 89 e5             	mov    %rsp,%rbp
  402838:	48 83 ec 10          	sub    $0x10,%rsp
  40283c:	48 85 ff             	test   %rdi,%rdi
  40283f:	74 3f                	je     402880 <__init_ssp+0x50>
  402841:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  402848:	48 89 fe             	mov    %rdi,%rsi
  40284b:	ba 08 00 00 00       	mov    $0x8,%edx
  402850:	48 89 cf             	mov    %rcx,%rdi
  402853:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  402857:	e8 d1 33 00 00       	call   405c2d <memcpy>
  40285c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402860:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  402864:	48 8b 11             	mov    (%rcx),%rdx
  402867:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40286e:	00 00 
  402870:	48 89 50 28          	mov    %rdx,0x28(%rax)
  402874:	c9                   	leave
  402875:	c3                   	ret
  402876:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40287d:	00 00 00 
  402880:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  402887:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  40288e:	48 89 01             	mov    %rax,(%rcx)
  402891:	eb cd                	jmp    402860 <__init_ssp+0x30>
  402893:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40289a:	00 00 00 
  40289d:	0f 1f 00             	nopl   (%rax)

00000000004028a0 <__stack_chk_fail>:
  4028a0:	f3 0f 1e fa          	endbr64
  4028a4:	f4                   	hlt
  4028a5:	c3                   	ret
  4028a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4028ad:	00 00 00 

00000000004028b0 <__funcs_on_exit>:
  4028b0:	f3 0f 1e fa          	endbr64
  4028b4:	c3                   	ret
  4028b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4028bc:	00 00 00 
  4028bf:	90                   	nop

00000000004028c0 <__libc_exit_fini>:
  4028c0:	f3 0f 1e fa          	endbr64
  4028c4:	55                   	push   %rbp
  4028c5:	48 89 e5             	mov    %rsp,%rbp
  4028c8:	41 54                	push   %r12
  4028ca:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  4028d1:	53                   	push   %rbx
  4028d2:	48 c7 c3 d0 9f 40 00 	mov    $0x409fd0,%rbx
  4028d9:	49 39 dc             	cmp    %rbx,%r12
  4028dc:	73 0f                	jae    4028ed <__libc_exit_fini+0x2d>
  4028de:	66 90                	xchg   %ax,%ax
  4028e0:	48 83 eb 08          	sub    $0x8,%rbx
  4028e4:	31 c0                	xor    %eax,%eax
  4028e6:	ff 13                	call   *(%rbx)
  4028e8:	49 39 dc             	cmp    %rbx,%r12
  4028eb:	72 f3                	jb     4028e0 <__libc_exit_fini+0x20>
  4028ed:	5b                   	pop    %rbx
  4028ee:	31 c0                	xor    %eax,%eax
  4028f0:	41 5c                	pop    %r12
  4028f2:	5d                   	pop    %rbp
  4028f3:	e9 8c 46 00 00       	jmp    406f84 <_fini>
  4028f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4028ff:	00 

0000000000402900 <printf>:
  402900:	f3 0f 1e fa          	endbr64
  402904:	55                   	push   %rbp
  402905:	48 89 e5             	mov    %rsp,%rbp
  402908:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40290f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402916:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40291d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402924:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40292b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402932:	84 c0                	test   %al,%al
  402934:	74 20                	je     402956 <printf+0x56>
  402936:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40293a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40293e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402942:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402946:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  40294a:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  40294e:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402952:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402956:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40295d:	00 00 
  40295f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402966:	31 c0                	xor    %eax,%eax
  402968:	48 8d 45 10          	lea    0x10(%rbp),%rax
  40296c:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402973:	48 89 fe             	mov    %rdi,%rsi
  402976:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40297d:	48 8d 3d 9c 76 00 00 	lea    0x769c(%rip),%rdi        # 40a020 <__stdout_FILE>
  402984:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  40298b:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  402992:	00 00 00 
  402995:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40299c:	00 00 00 
  40299f:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4029a6:	e8 e5 2f 00 00       	call   405990 <vfprintf>
  4029ab:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4029b2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029b9:	00 00 
  4029bb:	75 02                	jne    4029bf <printf+0xbf>
  4029bd:	c9                   	leave
  4029be:	c3                   	ret
  4029bf:	e8 dc fe ff ff       	call   4028a0 <__stack_chk_fail>
  4029c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029cb:	00 00 00 
  4029ce:	66 90                	xchg   %ax,%ax

00000000004029d0 <sprintf>:
  4029d0:	f3 0f 1e fa          	endbr64
  4029d4:	55                   	push   %rbp
  4029d5:	48 89 e5             	mov    %rsp,%rbp
  4029d8:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  4029df:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  4029e6:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  4029ed:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4029f4:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  4029fb:	84 c0                	test   %al,%al
  4029fd:	74 20                	je     402a1f <sprintf+0x4f>
  4029ff:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402a03:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402a07:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402a0b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402a0f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402a13:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402a17:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402a1b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402a1f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a26:	00 00 
  402a28:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402a2f:	31 c0                	xor    %eax,%eax
  402a31:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402a35:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402a3c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402a43:	00 00 00 
  402a46:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  402a4d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402a54:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  402a5b:	00 00 00 
  402a5e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402a65:	e8 56 31 00 00       	call   405bc0 <vsprintf>
  402a6a:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402a71:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a78:	00 00 
  402a7a:	75 02                	jne    402a7e <sprintf+0xae>
  402a7c:	c9                   	leave
  402a7d:	c3                   	ret
  402a7e:	e8 1d fe ff ff       	call   4028a0 <__stack_chk_fail>
  402a83:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402a8a:	00 00 00 
  402a8d:	0f 1f 00             	nopl   (%rax)

0000000000402a90 <pop_arg>:
  402a90:	83 ee 09             	sub    $0x9,%esi
  402a93:	83 fe 11             	cmp    $0x11,%esi
  402a96:	77 50                	ja     402ae8 <pop_arg+0x58>
  402a98:	48 8d 0d fd 46 00 00 	lea    0x46fd(%rip),%rcx        # 40719c <_fini+0x218>
  402a9f:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402aa3:	48 01 c8             	add    %rcx,%rax
  402aa6:	3e ff e0             	notrack jmp *%rax
  402aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ab0:	8b 02                	mov    (%rdx),%eax
  402ab2:	83 f8 2f             	cmp    $0x2f,%eax
  402ab5:	77 39                	ja     402af0 <pop_arg+0x60>
  402ab7:	89 c1                	mov    %eax,%ecx
  402ab9:	83 c0 08             	add    $0x8,%eax
  402abc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ac0:	89 02                	mov    %eax,(%rdx)
  402ac2:	48 8b 01             	mov    (%rcx),%rax
  402ac5:	48 89 07             	mov    %rax,(%rdi)
  402ac8:	c3                   	ret
  402ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ad0:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402ad4:	48 83 c0 0f          	add    $0xf,%rax
  402ad8:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402adc:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402ae0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402ae4:	db 28                	fldt   (%rax)
  402ae6:	db 3f                	fstpt  (%rdi)
  402ae8:	c3                   	ret
  402ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402af0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402af4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402af8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402afc:	48 8b 01             	mov    (%rcx),%rax
  402aff:	48 89 07             	mov    %rax,(%rdi)
  402b02:	c3                   	ret
  402b03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402b08:	8b 02                	mov    (%rdx),%eax
  402b0a:	83 f8 2f             	cmp    $0x2f,%eax
  402b0d:	0f 87 55 01 00 00    	ja     402c68 <pop_arg+0x1d8>
  402b13:	89 c1                	mov    %eax,%ecx
  402b15:	83 c0 08             	add    $0x8,%eax
  402b18:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b1c:	89 02                	mov    %eax,(%rdx)
  402b1e:	0f b7 01             	movzwl (%rcx),%eax
  402b21:	48 89 07             	mov    %rax,(%rdi)
  402b24:	c3                   	ret
  402b25:	0f 1f 00             	nopl   (%rax)
  402b28:	8b 42 04             	mov    0x4(%rdx),%eax
  402b2b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402b30:	0f 87 1a 01 00 00    	ja     402c50 <pop_arg+0x1c0>
  402b36:	89 c1                	mov    %eax,%ecx
  402b38:	83 c0 10             	add    $0x10,%eax
  402b3b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b3f:	89 42 04             	mov    %eax,0x4(%rdx)
  402b42:	dd 01                	fldl   (%rcx)
  402b44:	db 3f                	fstpt  (%rdi)
  402b46:	c3                   	ret
  402b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402b4e:	00 00 
  402b50:	8b 02                	mov    (%rdx),%eax
  402b52:	83 f8 2f             	cmp    $0x2f,%eax
  402b55:	0f 87 dd 00 00 00    	ja     402c38 <pop_arg+0x1a8>
  402b5b:	89 c1                	mov    %eax,%ecx
  402b5d:	83 c0 08             	add    $0x8,%eax
  402b60:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b64:	89 02                	mov    %eax,(%rdx)
  402b66:	48 63 01             	movslq (%rcx),%rax
  402b69:	48 89 07             	mov    %rax,(%rdi)
  402b6c:	c3                   	ret
  402b6d:	0f 1f 00             	nopl   (%rax)
  402b70:	8b 02                	mov    (%rdx),%eax
  402b72:	83 f8 2f             	cmp    $0x2f,%eax
  402b75:	0f 87 a5 00 00 00    	ja     402c20 <pop_arg+0x190>
  402b7b:	89 c1                	mov    %eax,%ecx
  402b7d:	83 c0 08             	add    $0x8,%eax
  402b80:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b84:	89 02                	mov    %eax,(%rdx)
  402b86:	8b 01                	mov    (%rcx),%eax
  402b88:	48 89 07             	mov    %rax,(%rdi)
  402b8b:	c3                   	ret
  402b8c:	0f 1f 40 00          	nopl   0x0(%rax)
  402b90:	8b 02                	mov    (%rdx),%eax
  402b92:	83 f8 2f             	cmp    $0x2f,%eax
  402b95:	77 79                	ja     402c10 <pop_arg+0x180>
  402b97:	89 c1                	mov    %eax,%ecx
  402b99:	83 c0 08             	add    $0x8,%eax
  402b9c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ba0:	89 02                	mov    %eax,(%rdx)
  402ba2:	0f b6 01             	movzbl (%rcx),%eax
  402ba5:	48 89 07             	mov    %rax,(%rdi)
  402ba8:	c3                   	ret
  402ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402bb0:	8b 02                	mov    (%rdx),%eax
  402bb2:	83 f8 2f             	cmp    $0x2f,%eax
  402bb5:	77 49                	ja     402c00 <pop_arg+0x170>
  402bb7:	89 c1                	mov    %eax,%ecx
  402bb9:	83 c0 08             	add    $0x8,%eax
  402bbc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402bc0:	89 02                	mov    %eax,(%rdx)
  402bc2:	48 0f be 01          	movsbq (%rcx),%rax
  402bc6:	48 89 07             	mov    %rax,(%rdi)
  402bc9:	c3                   	ret
  402bca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402bd0:	8b 02                	mov    (%rdx),%eax
  402bd2:	83 f8 2f             	cmp    $0x2f,%eax
  402bd5:	77 19                	ja     402bf0 <pop_arg+0x160>
  402bd7:	89 c1                	mov    %eax,%ecx
  402bd9:	83 c0 08             	add    $0x8,%eax
  402bdc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402be0:	89 02                	mov    %eax,(%rdx)
  402be2:	48 0f bf 01          	movswq (%rcx),%rax
  402be6:	48 89 07             	mov    %rax,(%rdi)
  402be9:	c3                   	ret
  402bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402bf0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bf4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402bf8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402bfc:	eb e4                	jmp    402be2 <pop_arg+0x152>
  402bfe:	66 90                	xchg   %ax,%ax
  402c00:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c04:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c08:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c0c:	eb b4                	jmp    402bc2 <pop_arg+0x132>
  402c0e:	66 90                	xchg   %ax,%ax
  402c10:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c14:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c18:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c1c:	eb 84                	jmp    402ba2 <pop_arg+0x112>
  402c1e:	66 90                	xchg   %ax,%ax
  402c20:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c24:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c28:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c2c:	e9 55 ff ff ff       	jmp    402b86 <pop_arg+0xf6>
  402c31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c38:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c3c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c40:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c44:	e9 1d ff ff ff       	jmp    402b66 <pop_arg+0xd6>
  402c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c5c:	e9 e1 fe ff ff       	jmp    402b42 <pop_arg+0xb2>
  402c61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c68:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c6c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c70:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c74:	e9 a5 fe ff ff       	jmp    402b1e <pop_arg+0x8e>
  402c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402c80 <pad.part.0>:
  402c80:	55                   	push   %rbp
  402c81:	29 ca                	sub    %ecx,%edx
  402c83:	40 0f be f6          	movsbl %sil,%esi
  402c87:	48 89 e5             	mov    %rsp,%rbp
  402c8a:	41 56                	push   %r14
  402c8c:	41 55                	push   %r13
  402c8e:	41 54                	push   %r12
  402c90:	4c 63 e2             	movslq %edx,%r12
  402c93:	ba 00 01 00 00       	mov    $0x100,%edx
  402c98:	53                   	push   %rbx
  402c99:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402ca0:	41 39 d4             	cmp    %edx,%r12d
  402ca3:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402caa:	00 00 
  402cac:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402cb0:	49 89 fd             	mov    %rdi,%r13
  402cb3:	49 0f 4e d4          	cmovle %r12,%rdx
  402cb7:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402cbe:	e8 9c 2f 00 00       	call   405c5f <memset>
  402cc3:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402cca:	0f 8e 88 00 00 00    	jle    402d58 <pad.part.0+0xd8>
  402cd0:	41 8b 45 00          	mov    0x0(%r13),%eax
  402cd4:	44 89 e3             	mov    %r12d,%ebx
  402cd7:	eb 15                	jmp    402cee <pad.part.0+0x6e>
  402cd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ce0:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402ce6:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402cec:	76 2a                	jbe    402d18 <pad.part.0+0x98>
  402cee:	a8 20                	test   $0x20,%al
  402cf0:	75 ee                	jne    402ce0 <pad.part.0+0x60>
  402cf2:	4c 89 ea             	mov    %r13,%rdx
  402cf5:	be 00 01 00 00       	mov    $0x100,%esi
  402cfa:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402d01:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402d07:	e8 14 38 00 00       	call   406520 <__fwritex>
  402d0c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d10:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402d16:	77 d6                	ja     402cee <pad.part.0+0x6e>
  402d18:	45 0f b6 e4          	movzbl %r12b,%r12d
  402d1c:	a8 20                	test   $0x20,%al
  402d1e:	74 20                	je     402d40 <pad.part.0+0xc0>
  402d20:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402d24:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402d2b:	00 00 
  402d2d:	75 2f                	jne    402d5e <pad.part.0+0xde>
  402d2f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402d36:	5b                   	pop    %rbx
  402d37:	41 5c                	pop    %r12
  402d39:	41 5d                	pop    %r13
  402d3b:	41 5e                	pop    %r14
  402d3d:	5d                   	pop    %rbp
  402d3e:	c3                   	ret
  402d3f:	90                   	nop
  402d40:	49 63 f4             	movslq %r12d,%rsi
  402d43:	4c 89 ea             	mov    %r13,%rdx
  402d46:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402d4d:	e8 ce 37 00 00       	call   406520 <__fwritex>
  402d52:	eb cc                	jmp    402d20 <pad.part.0+0xa0>
  402d54:	0f 1f 40 00          	nopl   0x0(%rax)
  402d58:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d5c:	eb be                	jmp    402d1c <pad.part.0+0x9c>
  402d5e:	e8 3d fb ff ff       	call   4028a0 <__stack_chk_fail>
  402d63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d6a:	00 00 00 
  402d6d:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d74:	00 00 00 
  402d77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402d7e:	00 00 

0000000000402d80 <fmt_fp>:
  402d80:	55                   	push   %rbp
  402d81:	48 89 e5             	mov    %rsp,%rbp
  402d84:	41 57                	push   %r15
  402d86:	41 56                	push   %r14
  402d88:	41 55                	push   %r13
  402d8a:	41 54                	push   %r12
  402d8c:	53                   	push   %rbx
  402d8d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402d94:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402d99:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402da0:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402da7:	41 89 d7             	mov    %edx,%r15d
  402daa:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402db0:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402db6:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402dbd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402dc4:	00 00 
  402dc6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402dca:	31 c0                	xor    %eax,%eax
  402dcc:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402dd3:	00 00 00 
  402dd6:	ff 75 18             	push   0x18(%rbp)
  402dd9:	ff 75 10             	push   0x10(%rbp)
  402ddc:	e8 ef 33 00 00       	call   4061d0 <__signbitl>
  402de1:	41 5d                	pop    %r13
  402de3:	41 5e                	pop    %r14
  402de5:	85 c0                	test   %eax,%eax
  402de7:	0f 84 8b 00 00 00    	je     402e78 <fmt_fp+0xf8>
  402ded:	db 6d 10             	fldt   0x10(%rbp)
  402df0:	48 8d 05 6e 43 00 00 	lea    0x436e(%rip),%rax        # 407165 <_fini+0x1e1>
  402df7:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402dfe:	00 00 00 
  402e01:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402e08:	d9 e0                	fchs
  402e0a:	db 7d 10             	fstpt  0x10(%rbp)
  402e0d:	ff 75 18             	push   0x18(%rbp)
  402e10:	ff 75 10             	push   0x10(%rbp)
  402e13:	e8 48 33 00 00       	call   406160 <__fpclassifyl>
  402e18:	5b                   	pop    %rbx
  402e19:	41 5c                	pop    %r12
  402e1b:	83 f8 01             	cmp    $0x1,%eax
  402e1e:	0f 8e bc 04 00 00    	jle    4032e0 <fmt_fp+0x560>
  402e24:	ff 75 18             	push   0x18(%rbp)
  402e27:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402e2e:	ff 75 10             	push   0x10(%rbp)
  402e31:	e8 ba 33 00 00       	call   4061f0 <frexpl>
  402e36:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402e3d:	41 5a                	pop    %r10
  402e3f:	d8 c0                	fadd   %st(0),%st
  402e41:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402e48:	41 5b                	pop    %r11
  402e4a:	41 83 ce 20          	or     $0x20,%r14d
  402e4e:	d9 ee                	fldz
  402e50:	d9 c9                	fxch   %st(1)
  402e52:	db e9                	fucomi %st(1),%st
  402e54:	dd d9                	fstp   %st(1)
  402e56:	7a 58                	jp     402eb0 <fmt_fp+0x130>
  402e58:	75 56                	jne    402eb0 <fmt_fp+0x130>
  402e5a:	41 83 fe 61          	cmp    $0x61,%r14d
  402e5e:	0f 84 37 06 00 00    	je     40349b <fmt_fp+0x71b>
  402e64:	45 85 ff             	test   %r15d,%r15d
  402e67:	0f 88 84 13 00 00    	js     4041f1 <fmt_fp+0x1471>
  402e6d:	40 0f 95 c6          	setne  %sil
  402e71:	eb 65                	jmp    402ed8 <fmt_fp+0x158>
  402e73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402e78:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402e7e:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402e84:	0f 84 2c 04 00 00    	je     4032b6 <fmt_fp+0x536>
  402e8a:	48 8d 05 d7 42 00 00 	lea    0x42d7(%rip),%rax        # 407168 <_fini+0x1e4>
  402e91:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402e98:	00 00 00 
  402e9b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402ea2:	e9 66 ff ff ff       	jmp    402e0d <fmt_fp+0x8d>
  402ea7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402eae:	00 00 
  402eb0:	41 83 fe 61          	cmp    $0x61,%r14d
  402eb4:	0f 84 d6 05 00 00    	je     403490 <fmt_fp+0x710>
  402eba:	45 85 ff             	test   %r15d,%r15d
  402ebd:	0f 88 3e 13 00 00    	js     404201 <fmt_fp+0x1481>
  402ec3:	40 0f 95 c6          	setne  %sil
  402ec7:	41 83 e9 1d          	sub    $0x1d,%r9d
  402ecb:	d8 0d 13 46 00 00    	fmuls  0x4613(%rip)        # 4074e4 <states+0x1e4>
  402ed1:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402ed8:	45 85 c9             	test   %r9d,%r9d
  402edb:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402ee2:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402ee9:	d9 05 f9 45 00 00    	flds   0x45f9(%rip)        # 4074e8 <states+0x1e8>
  402eef:	d9 c9                	fxch   %st(1)
  402ef1:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402ef7:	48 0f 49 c2          	cmovns %rdx,%rax
  402efb:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402f02:	48 89 c3             	mov    %rax,%rbx
  402f05:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402f0c:	80 cc 0c             	or     $0xc,%ah
  402f0f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402f16:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402f1d:	00 00 
  402f1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f26:	00 00 00 00 
  402f2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f31:	00 00 00 00 
  402f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f3c:	00 00 00 00 
  402f40:	d9 c0                	fld    %st(0)
  402f42:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402f48:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402f4e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402f54:	48 83 c3 04          	add    $0x4,%rbx
  402f58:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402f5f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402f62:	89 c0                	mov    %eax,%eax
  402f64:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402f6b:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402f71:	de e9                	fsubrp %st,%st(1)
  402f73:	d8 c9                	fmul   %st(1),%st
  402f75:	d9 ee                	fldz
  402f77:	d9 c9                	fxch   %st(1)
  402f79:	db e9                	fucomi %st(1),%st
  402f7b:	dd d9                	fstp   %st(1)
  402f7d:	7a c1                	jp     402f40 <fmt_fp+0x1c0>
  402f7f:	75 bf                	jne    402f40 <fmt_fp+0x1c0>
  402f81:	dd d8                	fstp   %st(0)
  402f83:	dd d8                	fstp   %st(0)
  402f85:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402f8c:	45 85 c9             	test   %r9d,%r9d
  402f8f:	0f 8e b0 00 00 00    	jle    403045 <fmt_fp+0x2c5>
  402f95:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402f9c:	b8 44 00 
  402f9f:	90                   	nop
  402fa0:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402fa5:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402fa9:	41 39 c9             	cmp    %ecx,%r9d
  402fac:	41 0f 4e c9          	cmovle %r9d,%ecx
  402fb0:	4d 39 e2             	cmp    %r12,%r10
  402fb3:	72 4b                	jb     403000 <fmt_fp+0x280>
  402fb5:	31 c0                	xor    %eax,%eax
  402fb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402fbe:	00 00 
  402fc0:	45 8b 02             	mov    (%r10),%r8d
  402fc3:	49 83 ea 04          	sub    $0x4,%r10
  402fc7:	49 d3 e0             	shl    %cl,%r8
  402fca:	49 01 c0             	add    %rax,%r8
  402fcd:	4c 89 c2             	mov    %r8,%rdx
  402fd0:	48 c1 ea 09          	shr    $0x9,%rdx
  402fd4:	48 89 d0             	mov    %rdx,%rax
  402fd7:	48 f7 e7             	mul    %rdi
  402fda:	48 c1 ea 0b          	shr    $0xb,%rdx
  402fde:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402fe5:	49 29 c0             	sub    %rax,%r8
  402fe8:	89 d0                	mov    %edx,%eax
  402fea:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402fee:	4d 39 e2             	cmp    %r12,%r10
  402ff1:	73 cd                	jae    402fc0 <fmt_fp+0x240>
  402ff3:	85 d2                	test   %edx,%edx
  402ff5:	74 09                	je     403000 <fmt_fp+0x280>
  402ff7:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402ffc:	49 83 ec 04          	sub    $0x4,%r12
  403000:	49 39 dc             	cmp    %rbx,%r12
  403003:	72 24                	jb     403029 <fmt_fp+0x2a9>
  403005:	eb 2b                	jmp    403032 <fmt_fp+0x2b2>
  403007:	0f 1f 00             	nopl   (%rax)
  40300a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403011:	00 00 00 00 
  403015:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40301c:	00 00 00 00 
  403020:	48 83 eb 04          	sub    $0x4,%rbx
  403024:	49 39 dc             	cmp    %rbx,%r12
  403027:	73 09                	jae    403032 <fmt_fp+0x2b2>
  403029:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  40302d:	45 85 c0             	test   %r8d,%r8d
  403030:	74 ee                	je     403020 <fmt_fp+0x2a0>
  403032:	41 29 c9             	sub    %ecx,%r9d
  403035:	45 85 c9             	test   %r9d,%r9d
  403038:	0f 8f 62 ff ff ff    	jg     402fa0 <fmt_fp+0x220>
  40303e:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  403045:	45 85 c9             	test   %r9d,%r9d
  403048:	0f 84 35 01 00 00    	je     403183 <fmt_fp+0x403>
  40304e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  403052:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  403059:	41 89 f0             	mov    %esi,%r8d
  40305c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  403063:	48 c1 e8 21          	shr    $0x21,%rax
  403067:	48 8d 78 01          	lea    0x1(%rax),%rdi
  40306b:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  403072:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  403079:	00 
  40307a:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  403081:	0f 1f 40 00          	nopl   0x0(%rax)
  403085:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40308c:	00 00 00 00 
  403090:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  403094:	0f 8d d6 06 00 00    	jge    403770 <fmt_fp+0x9f0>
  40309a:	41 83 c1 09          	add    $0x9,%r9d
  40309e:	b9 09 00 00 00       	mov    $0x9,%ecx
  4030a3:	49 39 dc             	cmp    %rbx,%r12
  4030a6:	0f 83 d5 06 00 00    	jae    403781 <fmt_fp+0xa01>
  4030ac:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  4030b2:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  4030b9:	4c 89 e6             	mov    %r12,%rsi
  4030bc:	31 d2                	xor    %edx,%edx
  4030be:	41 d3 e2             	shl    %cl,%r10d
  4030c1:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  4030c7:	41 83 ea 01          	sub    $0x1,%r10d
  4030cb:	41 d3 ff             	sar    %cl,%r15d
  4030ce:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4030d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030db:	00 00 00 00 
  4030df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030e6:	00 00 00 00 
  4030ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030f1:	00 00 00 00 
  4030f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4030fc:	00 00 00 00 
  403100:	8b 06                	mov    (%rsi),%eax
  403102:	48 83 c6 04          	add    $0x4,%rsi
  403106:	41 89 c1             	mov    %eax,%r9d
  403109:	44 21 d0             	and    %r10d,%eax
  40310c:	41 0f af c7          	imul   %r15d,%eax
  403110:	41 d3 e9             	shr    %cl,%r9d
  403113:	41 01 d1             	add    %edx,%r9d
  403116:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  40311a:	89 c2                	mov    %eax,%edx
  40311c:	48 39 de             	cmp    %rbx,%rsi
  40311f:	72 df                	jb     403100 <fmt_fp+0x380>
  403121:	41 8b 0c 24          	mov    (%r12),%ecx
  403125:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  40312a:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  403131:	85 c9                	test   %ecx,%ecx
  403133:	49 0f 45 c4          	cmovne %r12,%rax
  403137:	85 d2                	test   %edx,%edx
  403139:	74 06                	je     403141 <fmt_fp+0x3c1>
  40313b:	89 13                	mov    %edx,(%rbx)
  40313d:	48 83 c3 04          	add    $0x4,%rbx
  403141:	49 89 c4             	mov    %rax,%r12
  403144:	41 83 fe 66          	cmp    $0x66,%r14d
  403148:	0f 84 52 06 00 00    	je     4037a0 <fmt_fp+0xa20>
  40314e:	48 89 da             	mov    %rbx,%rdx
  403151:	48 29 c2             	sub    %rax,%rdx
  403154:	4c 01 d8             	add    %r11,%rax
  403157:	48 c1 fa 02          	sar    $0x2,%rdx
  40315b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  403162:	48 0f 4f d8          	cmovg  %rax,%rbx
  403166:	45 85 c9             	test   %r9d,%r9d
  403169:	0f 85 21 ff ff ff    	jne    403090 <fmt_fp+0x310>
  40316f:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  403176:	00 00 00 
  403179:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  403180:	44 89 c6             	mov    %r8d,%esi
  403183:	49 39 dc             	cmp    %rbx,%r12
  403186:	0f 83 5d 0b 00 00    	jae    403ce9 <fmt_fp+0xf69>
  40318c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403193:	41 83 fe 66          	cmp    $0x66,%r14d
  403197:	41 8b 14 24          	mov    (%r12),%edx
  40319b:	0f 95 c1             	setne  %cl
  40319e:	4c 29 e0             	sub    %r12,%rax
  4031a1:	48 c1 f8 02          	sar    $0x2,%rax
  4031a5:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  4031a8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4031ad:	83 fa 09             	cmp    $0x9,%edx
  4031b0:	76 1a                	jbe    4031cc <fmt_fp+0x44c>
  4031b2:	0f 1f 00             	nopl   (%rax)
  4031b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031bc:	00 00 00 00 
  4031c0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4031c3:	83 c7 01             	add    $0x1,%edi
  4031c6:	01 c0                	add    %eax,%eax
  4031c8:	39 c2                	cmp    %eax,%edx
  4031ca:	73 f4                	jae    4031c0 <fmt_fp+0x440>
  4031cc:	31 d2                	xor    %edx,%edx
  4031ce:	84 c9                	test   %cl,%cl
  4031d0:	44 89 f8             	mov    %r15d,%eax
  4031d3:	0f 45 d7             	cmovne %edi,%edx
  4031d6:	29 d0                	sub    %edx,%eax
  4031d8:	31 d2                	xor    %edx,%edx
  4031da:	41 83 fe 67          	cmp    $0x67,%r14d
  4031de:	0f 94 c2             	sete   %dl
  4031e1:	21 f2                	and    %esi,%edx
  4031e3:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  4031ea:	29 d0                	sub    %edx,%eax
  4031ec:	48 89 da             	mov    %rbx,%rdx
  4031ef:	48 29 f2             	sub    %rsi,%rdx
  4031f2:	48 63 c8             	movslq %eax,%rcx
  4031f5:	48 c1 fa 02          	sar    $0x2,%rdx
  4031f9:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  4031fe:	48 39 d1             	cmp    %rdx,%rcx
  403201:	0f 8d 0f 06 00 00    	jge    403816 <fmt_fp+0xa96>
  403207:	05 00 40 02 00       	add    $0x24000,%eax
  40320c:	48 63 d0             	movslq %eax,%rdx
  40320f:	89 c1                	mov    %eax,%ecx
  403211:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403218:	c1 f9 1f             	sar    $0x1f,%ecx
  40321b:	48 c1 fa 21          	sar    $0x21,%rdx
  40321f:	29 ca                	sub    %ecx,%edx
  403221:	48 63 ca             	movslq %edx,%rcx
  403224:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  40322b:	ff 
  40322c:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  40322f:	29 c8                	sub    %ecx,%eax
  403231:	89 c2                	mov    %eax,%edx
  403233:	8d 40 01             	lea    0x1(%rax),%eax
  403236:	83 fa 08             	cmp    $0x8,%edx
  403239:	0f 84 df 13 00 00    	je     40461e <fmt_fp+0x189e>
  40323f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403244:	90                   	nop
  403245:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40324c:	00 00 00 00 
  403250:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403253:	83 c0 01             	add    $0x1,%eax
  403256:	01 c9                	add    %ecx,%ecx
  403258:	83 f8 09             	cmp    $0x9,%eax
  40325b:	75 f3                	jne    403250 <fmt_fp+0x4d0>
  40325d:	41 89 cb             	mov    %ecx,%r11d
  403260:	44 8b 16             	mov    (%rsi),%r10d
  403263:	31 d2                	xor    %edx,%edx
  403265:	44 89 d0             	mov    %r10d,%eax
  403268:	41 f7 f3             	div    %r11d
  40326b:	41 89 d1             	mov    %edx,%r9d
  40326e:	85 d2                	test   %edx,%edx
  403270:	0f 85 35 05 00 00    	jne    4037ab <fmt_fp+0xa2b>
  403276:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  40327a:	48 89 da             	mov    %rbx,%rdx
  40327d:	4c 39 c3             	cmp    %r8,%rbx
  403280:	0f 84 89 05 00 00    	je     40380f <fmt_fp+0xa8f>
  403286:	a8 01                	test   $0x1,%al
  403288:	0f 85 36 10 00 00    	jne    4042c4 <fmt_fp+0x1544>
  40328e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403294:	75 0f                	jne    4032a5 <fmt_fp+0x525>
  403296:	49 39 f4             	cmp    %rsi,%r12
  403299:	73 0a                	jae    4032a5 <fmt_fp+0x525>
  40329b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40329f:	0f 85 1f 10 00 00    	jne    4042c4 <fmt_fp+0x1544>
  4032a5:	d9 05 29 42 00 00    	flds   0x4229(%rip)        # 4074d4 <states+0x1d4>
  4032ab:	d9 05 27 42 00 00    	flds   0x4227(%rip)        # 4074d8 <states+0x1d8>
  4032b1:	e9 1d 05 00 00       	jmp    4037d3 <fmt_fp+0xa53>
  4032b6:	48 8d 1d a9 3e 00 00 	lea    0x3ea9(%rip),%rbx        # 407166 <_fini+0x1e2>
  4032bd:	83 e7 01             	and    $0x1,%edi
  4032c0:	48 8d 43 05          	lea    0x5(%rbx),%rax
  4032c4:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  4032ca:	48 0f 44 c3          	cmove  %rbx,%rax
  4032ce:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  4032d5:	e9 33 fb ff ff       	jmp    402e0d <fmt_fp+0x8d>
  4032da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4032e0:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4032e7:	0f 84 94 00 00 00    	je     403381 <fmt_fp+0x601>
  4032ed:	db 6d 10             	fldt   0x10(%rbp)
  4032f0:	4c 8d 25 85 3e 00 00 	lea    0x3e85(%rip),%r12        # 40717c <_fini+0x1f8>
  4032f7:	48 8d 05 86 3e 00 00 	lea    0x3e86(%rip),%rax        # 407184 <_fini+0x200>
  4032fe:	df e8                	fucomip %st(0),%st
  403300:	4c 0f 4b e0          	cmovnp %rax,%r12
  403304:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40330a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403310:	8d 58 03             	lea    0x3(%rax),%ebx
  403313:	39 d3                	cmp    %edx,%ebx
  403315:	41 0f 9d c5          	setge  %r13b
  403319:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  403320:	75 09                	jne    40332b <fmt_fp+0x5ab>
  403322:	45 84 ed             	test   %r13b,%r13b
  403325:	0f 84 0a 01 00 00    	je     403435 <fmt_fp+0x6b5>
  40332b:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403332:	f6 00 20             	testb  $0x20,(%rax)
  403335:	0f 84 1d 01 00 00    	je     403458 <fmt_fp+0x6d8>
  40333b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403341:	80 f4 20             	xor    $0x20,%ah
  403344:	a9 00 20 01 00       	test   $0x12000,%eax
  403349:	75 09                	jne    403354 <fmt_fp+0x5d4>
  40334b:	45 84 ed             	test   %r13b,%r13b
  40334e:	0f 84 c3 00 00 00    	je     403417 <fmt_fp+0x697>
  403354:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40335a:	39 c3                	cmp    %eax,%ebx
  40335c:	0f 4d c3             	cmovge %ebx,%eax
  40335f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  403363:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40336a:	00 00 
  40336c:	0f 85 4d 13 00 00    	jne    4046bf <fmt_fp+0x193f>
  403372:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  403376:	5b                   	pop    %rbx
  403377:	41 5c                	pop    %r12
  403379:	41 5d                	pop    %r13
  40337b:	41 5e                	pop    %r14
  40337d:	41 5f                	pop    %r15
  40337f:	5d                   	pop    %rbp
  403380:	c3                   	ret
  403381:	db 6d 10             	fldt   0x10(%rbp)
  403384:	4c 8d 25 f5 3d 00 00 	lea    0x3df5(%rip),%r12        # 407180 <_fini+0x1fc>
  40338b:	48 8d 05 e6 3d 00 00 	lea    0x3de6(%rip),%rax        # 407178 <_fini+0x1f4>
  403392:	df e8                	fucomip %st(0),%st
  403394:	4c 0f 4b e0          	cmovnp %rax,%r12
  403398:	e9 67 ff ff ff       	jmp    403304 <fmt_fp+0x584>
  40339d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033a4:	f6 07 20             	testb  $0x20,(%rdi)
  4033a7:	0f 84 11 03 00 00    	je     4036be <fmt_fp+0x93e>
  4033ad:	45 29 f7             	sub    %r14d,%r15d
  4033b0:	45 85 ff             	test   %r15d,%r15d
  4033b3:	7e 9f                	jle    403354 <fmt_fp+0x5d4>
  4033b5:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4033bb:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4033c2:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4033c9:	31 c9                	xor    %ecx,%ecx
  4033cb:	44 89 fa             	mov    %r15d,%edx
  4033ce:	be 30 00 00 00       	mov    $0x30,%esi
  4033d3:	e8 a8 f8 ff ff       	call   402c80 <pad.part.0>
  4033d8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4033df:	f6 00 20             	testb  $0x20,(%rax)
  4033e2:	75 12                	jne    4033f6 <fmt_fp+0x676>
  4033e4:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  4033eb:	48 89 c2             	mov    %rax,%rdx
  4033ee:	4c 89 e6             	mov    %r12,%rsi
  4033f1:	e8 2a 31 00 00       	call   406520 <__fwritex>
  4033f6:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4033fc:	80 f4 20             	xor    $0x20,%ah
  4033ff:	a9 00 20 01 00       	test   $0x12000,%eax
  403404:	0f 85 4a ff ff ff    	jne    403354 <fmt_fp+0x5d4>
  40340a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403411:	0f 85 3d ff ff ff    	jne    403354 <fmt_fp+0x5d4>
  403417:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40341d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403424:	89 d9                	mov    %ebx,%ecx
  403426:	be 20 00 00 00       	mov    $0x20,%esi
  40342b:	e8 50 f8 ff ff       	call   402c80 <pad.part.0>
  403430:	e9 1f ff ff ff       	jmp    403354 <fmt_fp+0x5d4>
  403435:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40343c:	89 d9                	mov    %ebx,%ecx
  40343e:	be 20 00 00 00       	mov    $0x20,%esi
  403443:	e8 38 f8 ff ff       	call   402c80 <pad.part.0>
  403448:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40344f:	f6 00 20             	testb  $0x20,(%rax)
  403452:	0f 85 e3 fe ff ff    	jne    40333b <fmt_fp+0x5bb>
  403458:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40345f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403466:	49 89 c6             	mov    %rax,%r14
  403469:	48 89 c2             	mov    %rax,%rdx
  40346c:	e8 af 30 00 00       	call   406520 <__fwritex>
  403471:	41 f6 06 20          	testb  $0x20,(%r14)
  403475:	0f 85 c0 fe ff ff    	jne    40333b <fmt_fp+0x5bb>
  40347b:	4c 89 f2             	mov    %r14,%rdx
  40347e:	be 03 00 00 00       	mov    $0x3,%esi
  403483:	4c 89 e7             	mov    %r12,%rdi
  403486:	e8 95 30 00 00       	call   406520 <__fwritex>
  40348b:	e9 ab fe ff ff       	jmp    40333b <fmt_fp+0x5bb>
  403490:	41 83 e9 01          	sub    $0x1,%r9d
  403494:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40349b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4034a2:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4034a9:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  4034af:	48 8d 47 09          	lea    0x9(%rdi),%rax
  4034b3:	48 0f 44 c7          	cmove  %rdi,%rax
  4034b7:	83 c3 02             	add    $0x2,%ebx
  4034ba:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  4034c1:	41 83 ff 0e          	cmp    $0xe,%r15d
  4034c5:	0f 86 28 0c 00 00    	jbe    4040f3 <fmt_fp+0x1373>
  4034cb:	d9 05 0f 40 00 00    	flds   0x400f(%rip)        # 4074e0 <states+0x1e0>
  4034d1:	45 85 c9             	test   %r9d,%r9d
  4034d4:	0f 84 54 11 00 00    	je     40462e <fmt_fp+0x18ae>
  4034da:	44 89 c9             	mov    %r9d,%ecx
  4034dd:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4034e1:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  4034e8:	cc cc cc 
  4034eb:	f7 d9                	neg    %ecx
  4034ed:	4d 89 e8             	mov    %r13,%r8
  4034f0:	41 0f 48 c9          	cmovs  %r9d,%ecx
  4034f4:	48 63 c9             	movslq %ecx,%rcx
  4034f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4034fe:	00 00 
  403500:	48 89 c8             	mov    %rcx,%rax
  403503:	4c 89 c7             	mov    %r8,%rdi
  403506:	49 83 e8 01          	sub    $0x1,%r8
  40350a:	48 f7 e6             	mul    %rsi
  40350d:	48 89 c8             	mov    %rcx,%rax
  403510:	48 c1 ea 03          	shr    $0x3,%rdx
  403514:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403518:	4d 01 d2             	add    %r10,%r10
  40351b:	4c 29 d0             	sub    %r10,%rax
  40351e:	83 c0 30             	add    $0x30,%eax
  403521:	48 83 f9 09          	cmp    $0x9,%rcx
  403525:	48 89 d1             	mov    %rdx,%rcx
  403528:	41 88 00             	mov    %al,(%r8)
  40352b:	77 d3                	ja     403500 <fmt_fp+0x780>
  40352d:	4d 39 e8             	cmp    %r13,%r8
  403530:	0f 84 9f 0d 00 00    	je     4042d5 <fmt_fp+0x1555>
  403536:	b8 2d 00 00 00       	mov    $0x2d,%eax
  40353b:	45 85 c9             	test   %r9d,%r9d
  40353e:	78 05                	js     403545 <fmt_fp+0x7c5>
  403540:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403545:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40354b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40354f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403553:	d9 ee                	fldz
  403555:	d9 ca                	fxch   %st(2)
  403557:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40355e:	45 85 ff             	test   %r15d,%r15d
  403561:	48 8d 0d 88 3d 00 00 	lea    0x3d88(%rip),%rcx        # 4072f0 <xdigits>
  403568:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  40356e:	8d 46 0f             	lea    0xf(%rsi),%eax
  403571:	40 0f 9f c7          	setg   %dil
  403575:	83 e6 20             	and    $0x20,%esi
  403578:	41 88 40 fe          	mov    %al,-0x2(%r8)
  40357c:	4c 89 e8             	mov    %r13,%rax
  40357f:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403585:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40358c:	80 ce 0c             	or     $0xc,%dh
  40358f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403596:	eb 1b                	jmp    4035b3 <fmt_fp+0x833>
  403598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40359f:	00 
  4035a0:	4c 89 c0             	mov    %r8,%rax
  4035a3:	d9 c2                	fld    %st(2)
  4035a5:	d9 c9                	fxch   %st(1)
  4035a7:	db e9                	fucomi %st(1),%st
  4035a9:	dd d9                	fstp   %st(1)
  4035ab:	7a 06                	jp     4035b3 <fmt_fp+0x833>
  4035ad:	0f 84 dc 10 00 00    	je     40468f <fmt_fp+0x190f>
  4035b3:	d9 c0                	fld    %st(0)
  4035b5:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  4035bb:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  4035c1:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  4035c7:	4c 8d 40 01          	lea    0x1(%rax),%r8
  4035cb:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  4035d1:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  4035d8:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  4035dd:	de e9                	fsubrp %st,%st(1)
  4035df:	41 09 f3             	or     %esi,%r11d
  4035e2:	44 88 18             	mov    %r11b,(%rax)
  4035e5:	d8 c9                	fmul   %st(1),%st
  4035e7:	4c 39 e8             	cmp    %r13,%rax
  4035ea:	75 b4                	jne    4035a0 <fmt_fp+0x820>
  4035ec:	d9 c2                	fld    %st(2)
  4035ee:	df e9                	fucomip %st(1),%st
  4035f0:	0f 9a c2             	setp   %dl
  4035f3:	41 0f 45 d1          	cmovne %r9d,%edx
  4035f7:	84 d2                	test   %dl,%dl
  4035f9:	0f 85 31 06 00 00    	jne    403c30 <fmt_fp+0xeb0>
  4035ff:	40 84 ff             	test   %dil,%dil
  403602:	0f 85 28 06 00 00    	jne    403c30 <fmt_fp+0xeb0>
  403608:	dd d8                	fstp   %st(0)
  40360a:	dd d8                	fstp   %st(0)
  40360c:	dd d8                	fstp   %st(0)
  40360e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403615:	74 08                	je     40361f <fmt_fp+0x89f>
  403617:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40361b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40361f:	4d 89 ec             	mov    %r13,%r12
  403622:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  403627:	48 63 c3             	movslq %ebx,%rax
  40362a:	49 63 cf             	movslq %r15d,%rcx
  40362d:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  403634:	4c 29 e2             	sub    %r12,%rdx
  403637:	48 29 c2             	sub    %rax,%rdx
  40363a:	48 39 d1             	cmp    %rdx,%rcx
  40363d:	0f 8f 24 10 00 00    	jg     404667 <fmt_fp+0x18e7>
  403643:	4d 29 e8             	sub    %r13,%r8
  403646:	45 85 ff             	test   %r15d,%r15d
  403649:	74 0d                	je     403658 <fmt_fp+0x8d8>
  40364b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40364f:	48 39 d1             	cmp    %rdx,%rcx
  403652:	0f 8d ac 0c 00 00    	jge    404304 <fmt_fp+0x1584>
  403658:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40365c:	45 89 f7             	mov    %r14d,%r15d
  40365f:	44 01 fb             	add    %r15d,%ebx
  403662:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  403669:	20 01 
  40366b:	0f 85 a0 0b 00 00    	jne    404211 <fmt_fp+0x1491>
  403671:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403677:	39 d3                	cmp    %edx,%ebx
  403679:	0f 8d 1e fd ff ff    	jge    40339d <fmt_fp+0x61d>
  40367f:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403686:	89 d9                	mov    %ebx,%ecx
  403688:	be 20 00 00 00       	mov    $0x20,%esi
  40368d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403694:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40369b:	e8 e0 f5 ff ff       	call   402c80 <pad.part.0>
  4036a0:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4036a7:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  4036ae:	f6 00 20             	testb  $0x20,(%rax)
  4036b1:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  4036b8:	0f 85 ef fc ff ff    	jne    4033ad <fmt_fp+0x62d>
  4036be:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  4036c5:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4036cc:	48 89 c6             	mov    %rax,%rsi
  4036cf:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4036d6:	e8 45 2e 00 00       	call   406520 <__fwritex>
  4036db:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4036e1:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4036e7:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4036ee:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4036f5:	35 00 00 01 00       	xor    $0x10000,%eax
  4036fa:	a9 00 20 01 00       	test   $0x12000,%eax
  4036ff:	75 37                	jne    403738 <fmt_fp+0x9b8>
  403701:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403708:	75 2e                	jne    403738 <fmt_fp+0x9b8>
  40370a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403710:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403717:	89 d9                	mov    %ebx,%ecx
  403719:	be 30 00 00 00       	mov    $0x30,%esi
  40371e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403725:	e8 56 f5 ff ff       	call   402c80 <pad.part.0>
  40372a:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  403731:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403738:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40373f:	f6 00 20             	testb  $0x20,(%rax)
  403742:	0f 85 05 0b 00 00    	jne    40424d <fmt_fp+0x14cd>
  403748:	48 89 c2             	mov    %rax,%rdx
  40374b:	4c 89 c6             	mov    %r8,%rsi
  40374e:	4c 89 ef             	mov    %r13,%rdi
  403751:	45 29 f7             	sub    %r14d,%r15d
  403754:	e8 c7 2d 00 00       	call   406520 <__fwritex>
  403759:	45 85 ff             	test   %r15d,%r15d
  40375c:	0f 8e 76 fc ff ff    	jle    4033d8 <fmt_fp+0x658>
  403762:	e9 5b fc ff ff       	jmp    4033c2 <fmt_fp+0x642>
  403767:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40376e:	00 00 
  403770:	44 89 c9             	mov    %r9d,%ecx
  403773:	45 31 c9             	xor    %r9d,%r9d
  403776:	f7 d9                	neg    %ecx
  403778:	49 39 dc             	cmp    %rbx,%r12
  40377b:	0f 82 2b f9 ff ff    	jb     4030ac <fmt_fp+0x32c>
  403781:	41 8b 34 24          	mov    (%r12),%esi
  403785:	85 f6                	test   %esi,%esi
  403787:	0f 84 66 05 00 00    	je     403cf3 <fmt_fp+0xf73>
  40378d:	41 83 fe 66          	cmp    $0x66,%r14d
  403791:	0f 85 cf f9 ff ff    	jne    403166 <fmt_fp+0x3e6>
  403797:	4c 89 e0             	mov    %r12,%rax
  40379a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4037a0:	49 89 c4             	mov    %rax,%r12
  4037a3:	48 89 f8             	mov    %rdi,%rax
  4037a6:	e9 a3 f9 ff ff       	jmp    40314e <fmt_fp+0x3ce>
  4037ab:	a8 01                	test   $0x1,%al
  4037ad:	0f 84 2f 0b 00 00    	je     4042e2 <fmt_fp+0x1562>
  4037b3:	db 2d 47 3d 00 00    	fldt   0x3d47(%rip)        # 407500 <states+0x200>
  4037b9:	d1 f9                	sar    $1,%ecx
  4037bb:	41 39 c9             	cmp    %ecx,%r9d
  4037be:	0f 82 06 0b 00 00    	jb     4042ca <fmt_fp+0x154a>
  4037c4:	44 39 c9             	cmp    %r9d,%ecx
  4037c7:	0f 84 31 0e 00 00    	je     4045fe <fmt_fp+0x187e>
  4037cd:	d9 05 09 3d 00 00    	flds   0x3d09(%rip)        # 4074dc <states+0x1dc>
  4037d3:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  4037d9:	85 d2                	test   %edx,%edx
  4037db:	74 14                	je     4037f1 <fmt_fp+0xa71>
  4037dd:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  4037e4:	80 38 2d             	cmpb   $0x2d,(%rax)
  4037e7:	75 08                	jne    4037f1 <fmt_fp+0xa71>
  4037e9:	d9 c9                	fxch   %st(1)
  4037eb:	d9 e0                	fchs
  4037ed:	d9 c9                	fxch   %st(1)
  4037ef:	d9 e0                	fchs
  4037f1:	d8 c1                	fadd   %st(1),%st
  4037f3:	44 89 d0             	mov    %r10d,%eax
  4037f6:	44 29 c8             	sub    %r9d,%eax
  4037f9:	df e9                	fucomip %st(1),%st
  4037fb:	dd d8                	fstp   %st(0)
  4037fd:	0f 8a 4c 09 00 00    	jp     40414f <fmt_fp+0x13cf>
  403803:	0f 85 46 09 00 00    	jne    40414f <fmt_fp+0x13cf>
  403809:	89 06                	mov    %eax,(%rsi)
  40380b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40380f:	48 39 d3             	cmp    %rdx,%rbx
  403812:	48 0f 47 da          	cmova  %rdx,%rbx
  403816:	49 39 dc             	cmp    %rbx,%r12
  403819:	72 0e                	jb     403829 <fmt_fp+0xaa9>
  40381b:	eb 13                	jmp    403830 <fmt_fp+0xab0>
  40381d:	0f 1f 00             	nopl   (%rax)
  403820:	48 83 eb 04          	sub    $0x4,%rbx
  403824:	49 39 dc             	cmp    %rbx,%r12
  403827:	73 07                	jae    403830 <fmt_fp+0xab0>
  403829:	8b 43 fc             	mov    -0x4(%rbx),%eax
  40382c:	85 c0                	test   %eax,%eax
  40382e:	74 f0                	je     403820 <fmt_fp+0xaa0>
  403830:	41 83 fe 67          	cmp    $0x67,%r14d
  403834:	0f 84 25 05 00 00    	je     403d5f <fmt_fp+0xfdf>
  40383a:	45 85 ff             	test   %r15d,%r15d
  40383d:	0f 85 ba 04 00 00    	jne    403cfd <fmt_fp+0xf7d>
  403843:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40384a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403850:	41 c1 e9 03          	shr    $0x3,%r9d
  403854:	41 83 e1 01          	and    $0x1,%r9d
  403858:	41 83 c1 01          	add    $0x1,%r9d
  40385c:	45 29 ca             	sub    %r9d,%r10d
  40385f:	41 83 fe 66          	cmp    $0x66,%r14d
  403863:	0f 84 80 0b 00 00    	je     4043e9 <fmt_fp+0x1669>
  403869:	4d 63 d2             	movslq %r10d,%r10
  40386c:	85 ff                	test   %edi,%edi
  40386e:	0f 84 9e 0d 00 00    	je     404612 <fmt_fp+0x1892>
  403874:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  40387b:	cc cc cc 
  40387e:	89 fe                	mov    %edi,%esi
  403880:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403884:	f7 de                	neg    %esi
  403886:	4c 89 e9             	mov    %r13,%rcx
  403889:	0f 48 f7             	cmovs  %edi,%esi
  40388c:	48 63 f6             	movslq %esi,%rsi
  40388f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403894:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40389b:	00 00 00 00 
  40389f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038a6:	00 00 00 00 
  4038aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038b1:	00 00 00 00 
  4038b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038bc:	00 00 00 00 
  4038c0:	48 89 f0             	mov    %rsi,%rax
  4038c3:	48 83 e9 01          	sub    $0x1,%rcx
  4038c7:	49 f7 e0             	mul    %r8
  4038ca:	48 89 f0             	mov    %rsi,%rax
  4038cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4038d1:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  4038d5:	4d 01 db             	add    %r11,%r11
  4038d8:	4c 29 d8             	sub    %r11,%rax
  4038db:	83 c0 30             	add    $0x30,%eax
  4038de:	48 83 fe 09          	cmp    $0x9,%rsi
  4038e2:	48 89 d6             	mov    %rdx,%rsi
  4038e5:	88 01                	mov    %al,(%rcx)
  4038e7:	77 d7                	ja     4038c0 <fmt_fp+0xb40>
  4038e9:	4c 89 e8             	mov    %r13,%rax
  4038ec:	48 29 c8             	sub    %rcx,%rax
  4038ef:	48 83 f8 01          	cmp    $0x1,%rax
  4038f3:	7f 1e                	jg     403913 <fmt_fp+0xb93>
  4038f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4038fc:	00 00 00 00 
  403900:	48 83 e9 01          	sub    $0x1,%rcx
  403904:	4c 89 e8             	mov    %r13,%rax
  403907:	c6 01 30             	movb   $0x30,(%rcx)
  40390a:	48 29 c8             	sub    %rcx,%rax
  40390d:	48 83 f8 01          	cmp    $0x1,%rax
  403911:	7e ed                	jle    403900 <fmt_fp+0xb80>
  403913:	c1 ff 1f             	sar    $0x1f,%edi
  403916:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40391a:	83 e7 02             	and    $0x2,%edi
  40391d:	49 29 c5             	sub    %rax,%r13
  403920:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  403927:	83 c7 2b             	add    $0x2b,%edi
  40392a:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  40392e:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  403935:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  403939:	4d 39 d5             	cmp    %r10,%r13
  40393c:	0f 8f 25 0d 00 00    	jg     404667 <fmt_fp+0x18e7>
  403942:	45 01 e9             	add    %r13d,%r9d
  403945:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  40394a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403950:	41 39 c1             	cmp    %eax,%r9d
  403953:	0f 8f 0e 0d 00 00    	jg     404667 <fmt_fp+0x18e7>
  403959:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40395f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  403965:	44 01 c8             	add    %r9d,%eax
  403968:	39 f8                	cmp    %edi,%eax
  40396a:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  403970:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  403977:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  40397e:	20 01 
  403980:	0f 85 3c 07 00 00    	jne    4040c2 <fmt_fp+0x1342>
  403986:	39 f8                	cmp    %edi,%eax
  403988:	0f 8d c5 06 00 00    	jge    404053 <fmt_fp+0x12d3>
  40398e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403995:	89 fa                	mov    %edi,%edx
  403997:	89 c1                	mov    %eax,%ecx
  403999:	be 20 00 00 00       	mov    $0x20,%esi
  40399e:	4c 89 ef             	mov    %r13,%rdi
  4039a1:	e8 da f2 ff ff       	call   402c80 <pad.part.0>
  4039a6:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4039ab:	0f 84 b2 06 00 00    	je     404063 <fmt_fp+0x12e3>
  4039b1:	41 83 fe 66          	cmp    $0x66,%r14d
  4039b5:	0f 84 75 04 00 00    	je     403e30 <fmt_fp+0x10b0>
  4039bb:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  4039c0:	49 39 dc             	cmp    %rbx,%r12
  4039c3:	48 0f 43 d8          	cmovae %rax,%rbx
  4039c7:	45 85 ff             	test   %r15d,%r15d
  4039ca:	0f 88 af 01 00 00    	js     403b7f <fmt_fp+0xdff>
  4039d0:	49 39 dc             	cmp    %rbx,%r12
  4039d3:	0f 83 a6 01 00 00    	jae    403b7f <fmt_fp+0xdff>
  4039d9:	b8 30 30 30 30       	mov    $0x30303030,%eax
  4039de:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  4039e5:	4d 89 e6             	mov    %r12,%r14
  4039e8:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  4039ec:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  4039f3:	66 0f 6e c0          	movd   %eax,%xmm0
  4039f7:	49 89 dc             	mov    %rbx,%r12
  4039fa:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403a01:	cc cc cc 
  403a04:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403a08:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403a0d:	0f 1f 00             	nopl   (%rax)
  403a10:	41 8b 0e             	mov    (%r14),%ecx
  403a13:	4c 89 c7             	mov    %r8,%rdi
  403a16:	48 85 c9             	test   %rcx,%rcx
  403a19:	0f 84 e1 01 00 00    	je     403c00 <fmt_fp+0xe80>
  403a1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a26:	00 00 00 00 
  403a2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a31:	00 00 00 00 
  403a35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403a3c:	00 00 00 00 
  403a40:	48 89 c8             	mov    %rcx,%rax
  403a43:	48 83 ef 01          	sub    $0x1,%rdi
  403a47:	49 f7 e5             	mul    %r13
  403a4a:	48 89 c8             	mov    %rcx,%rax
  403a4d:	48 c1 ea 03          	shr    $0x3,%rdx
  403a51:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403a55:	48 01 f6             	add    %rsi,%rsi
  403a58:	48 29 f0             	sub    %rsi,%rax
  403a5b:	83 c0 30             	add    $0x30,%eax
  403a5e:	48 83 f9 09          	cmp    $0x9,%rcx
  403a62:	48 89 d1             	mov    %rdx,%rcx
  403a65:	88 07                	mov    %al,(%rdi)
  403a67:	77 d7                	ja     403a40 <fmt_fp+0xcc0>
  403a69:	4c 39 c7             	cmp    %r8,%rdi
  403a6c:	0f 84 8e 01 00 00    	je     403c00 <fmt_fp+0xe80>
  403a72:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403a79:	0f 84 96 01 00 00    	je     403c15 <fmt_fp+0xe95>
  403a7f:	48 39 fb             	cmp    %rdi,%rbx
  403a82:	0f 83 c9 02 00 00    	jae    403d51 <fmt_fp+0xfd1>
  403a88:	48 89 fe             	mov    %rdi,%rsi
  403a8b:	48 89 f8             	mov    %rdi,%rax
  403a8e:	48 29 de             	sub    %rbx,%rsi
  403a91:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403a95:	48 83 fa 0e          	cmp    $0xe,%rdx
  403a99:	76 3d                	jbe    403ad8 <fmt_fp+0xd58>
  403a9b:	48 89 f1             	mov    %rsi,%rcx
  403a9e:	48 89 fa             	mov    %rdi,%rdx
  403aa1:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403aa5:	48 29 ca             	sub    %rcx,%rdx
  403aa8:	f6 c1 10             	test   $0x10,%cl
  403aab:	74 13                	je     403ac0 <fmt_fp+0xd40>
  403aad:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403ab1:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403ab5:	48 39 d0             	cmp    %rdx,%rax
  403ab8:	74 16                	je     403ad0 <fmt_fp+0xd50>
  403aba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403ac0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403ac4:	48 83 e8 20          	sub    $0x20,%rax
  403ac8:	0f 11 00             	movups %xmm0,(%rax)
  403acb:	48 39 d0             	cmp    %rdx,%rax
  403ace:	75 f0                	jne    403ac0 <fmt_fp+0xd40>
  403ad0:	48 39 f1             	cmp    %rsi,%rcx
  403ad3:	74 3b                	je     403b10 <fmt_fp+0xd90>
  403ad5:	48 29 cf             	sub    %rcx,%rdi
  403ad8:	48 89 d8             	mov    %rbx,%rax
  403adb:	48 f7 d0             	not    %rax
  403ade:	48 01 f8             	add    %rdi,%rax
  403ae1:	48 83 ef 01          	sub    $0x1,%rdi
  403ae5:	c6 07 30             	movb   $0x30,(%rdi)
  403ae8:	48 39 fb             	cmp    %rdi,%rbx
  403aeb:	73 23                	jae    403b10 <fmt_fp+0xd90>
  403aed:	a8 01                	test   $0x1,%al
  403aef:	74 0f                	je     403b00 <fmt_fp+0xd80>
  403af1:	48 83 ef 01          	sub    $0x1,%rdi
  403af5:	c6 07 30             	movb   $0x30,(%rdi)
  403af8:	48 39 fb             	cmp    %rdi,%rbx
  403afb:	73 13                	jae    403b10 <fmt_fp+0xd90>
  403afd:	0f 1f 00             	nopl   (%rax)
  403b00:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403b04:	48 83 ef 02          	sub    $0x2,%rdi
  403b08:	c6 07 30             	movb   $0x30,(%rdi)
  403b0b:	48 39 fb             	cmp    %rdi,%rbx
  403b0e:	72 f0                	jb     403b00 <fmt_fp+0xd80>
  403b10:	41 8b 02             	mov    (%r10),%eax
  403b13:	49 89 d9             	mov    %rbx,%r9
  403b16:	83 e0 20             	and    $0x20,%eax
  403b19:	4c 89 c1             	mov    %r8,%rcx
  403b1c:	4c 29 c9             	sub    %r9,%rcx
  403b1f:	85 c0                	test   %eax,%eax
  403b21:	75 47                	jne    403b6a <fmt_fp+0xdea>
  403b23:	49 63 f7             	movslq %r15d,%rsi
  403b26:	4c 89 d2             	mov    %r10,%rdx
  403b29:	4c 89 cf             	mov    %r9,%rdi
  403b2c:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403b33:	48 39 ce             	cmp    %rcx,%rsi
  403b36:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403b3d:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403b41:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403b48:	e8 d3 29 00 00       	call   406520 <__fwritex>
  403b4d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403b54:	66 0f 6f 05 b4 39 00 	movdqa 0x39b4(%rip),%xmm0        # 407510 <states+0x210>
  403b5b:	00 
  403b5c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403b63:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403b6a:	49 83 c6 04          	add    $0x4,%r14
  403b6e:	41 29 cf             	sub    %ecx,%r15d
  403b71:	4d 39 e6             	cmp    %r12,%r14
  403b74:	73 09                	jae    403b7f <fmt_fp+0xdff>
  403b76:	45 85 ff             	test   %r15d,%r15d
  403b79:	0f 89 91 fe ff ff    	jns    403a10 <fmt_fp+0xc90>
  403b7f:	41 8d 57 12          	lea    0x12(%r15),%edx
  403b83:	83 fa 12             	cmp    $0x12,%edx
  403b86:	7e 16                	jle    403b9e <fmt_fp+0xe1e>
  403b88:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403b8f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403b94:	be 30 00 00 00       	mov    $0x30,%esi
  403b99:	e8 e2 f0 ff ff       	call   402c80 <pad.part.0>
  403b9e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403ba5:	f6 00 20             	testb  $0x20,(%rax)
  403ba8:	0f 84 86 05 00 00    	je     404134 <fmt_fp+0x13b4>
  403bae:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403bb4:	80 f4 20             	xor    $0x20,%ah
  403bb7:	a9 00 20 01 00       	test   $0x12000,%eax
  403bbc:	75 26                	jne    403be4 <fmt_fp+0xe64>
  403bbe:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403bc5:	75 1d                	jne    403be4 <fmt_fp+0xe64>
  403bc7:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403bcd:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403bd3:	be 20 00 00 00       	mov    $0x20,%esi
  403bd8:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403bdf:	e8 9c f0 ff ff       	call   402c80 <pad.part.0>
  403be4:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403bea:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403bf0:	39 c7                	cmp    %eax,%edi
  403bf2:	0f 4d c7             	cmovge %edi,%eax
  403bf5:	e9 65 f7 ff ff       	jmp    40335f <fmt_fp+0x5df>
  403bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403c00:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403c04:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403c08:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403c0f:	0f 85 73 fe ff ff    	jne    403a88 <fmt_fp+0xd08>
  403c15:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403c19:	41 f6 02 20          	testb  $0x20,(%r10)
  403c1d:	74 1e                	je     403c3d <fmt_fp+0xebd>
  403c1f:	4c 89 c1             	mov    %r8,%rcx
  403c22:	4c 29 c9             	sub    %r9,%rcx
  403c25:	e9 40 ff ff ff       	jmp    403b6a <fmt_fp+0xdea>
  403c2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403c30:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403c34:	48 83 c0 02          	add    $0x2,%rax
  403c38:	e9 66 f9 ff ff       	jmp    4035a3 <fmt_fp+0x823>
  403c3d:	4c 89 d2             	mov    %r10,%rdx
  403c40:	be 01 00 00 00       	mov    $0x1,%esi
  403c45:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403c4c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403c53:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403c5a:	e8 c1 28 00 00       	call   406520 <__fwritex>
  403c5f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c66:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403c6c:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403c73:	66 0f 6f 05 95 38 00 	movdqa 0x3895(%rip),%xmm0        # 407510 <states+0x210>
  403c7a:	00 
  403c7b:	41 8b 02             	mov    (%r10),%eax
  403c7e:	83 e2 08             	and    $0x8,%edx
  403c81:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c88:	83 e0 20             	and    $0x20,%eax
  403c8b:	44 09 fa             	or     %r15d,%edx
  403c8e:	0f 84 85 fe ff ff    	je     403b19 <fmt_fp+0xd99>
  403c94:	85 c0                	test   %eax,%eax
  403c96:	75 87                	jne    403c1f <fmt_fp+0xe9f>
  403c98:	4c 89 d2             	mov    %r10,%rdx
  403c9b:	be 01 00 00 00       	mov    $0x1,%esi
  403ca0:	48 8d 3d e1 34 00 00 	lea    0x34e1(%rip),%rdi        # 407188 <_fini+0x204>
  403ca7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403cae:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403cb5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403cbc:	e8 5f 28 00 00       	call   406520 <__fwritex>
  403cc1:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403cc8:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403ccf:	66 0f 6f 05 39 38 00 	movdqa 0x3839(%rip),%xmm0        # 407510 <states+0x210>
  403cd6:	00 
  403cd7:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403cde:	41 8b 02             	mov    (%r10),%eax
  403ce1:	83 e0 20             	and    $0x20,%eax
  403ce4:	e9 30 fe ff ff       	jmp    403b19 <fmt_fp+0xd99>
  403ce9:	44 89 f8             	mov    %r15d,%eax
  403cec:	31 ff                	xor    %edi,%edi
  403cee:	e9 e5 f4 ff ff       	jmp    4031d8 <fmt_fp+0x458>
  403cf3:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403cf8:	e9 44 f4 ff ff       	jmp    403141 <fmt_fp+0x3c1>
  403cfd:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403d04:	0f 8f 5d 09 00 00    	jg     404667 <fmt_fp+0x18e7>
  403d0a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403d11:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403d15:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403d1b:	45 29 ca             	sub    %r9d,%r10d
  403d1e:	41 83 ce 20          	or     $0x20,%r14d
  403d22:	41 83 fe 66          	cmp    $0x66,%r14d
  403d26:	0f 85 3d fb ff ff    	jne    403869 <fmt_fp+0xae9>
  403d2c:	44 39 d7             	cmp    %r10d,%edi
  403d2f:	0f 8f 32 09 00 00    	jg     404667 <fmt_fp+0x18e7>
  403d35:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403d3b:	85 ff                	test   %edi,%edi
  403d3d:	0f 8e 02 fc ff ff    	jle    403945 <fmt_fp+0xbc5>
  403d43:	41 01 f9             	add    %edi,%r9d
  403d46:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403d4c:	e9 f4 fb ff ff       	jmp    403945 <fmt_fp+0xbc5>
  403d51:	41 8b 02             	mov    (%r10),%eax
  403d54:	49 89 f9             	mov    %rdi,%r9
  403d57:	83 e0 20             	and    $0x20,%eax
  403d5a:	e9 ba fd ff ff       	jmp    403b19 <fmt_fp+0xd99>
  403d5f:	45 85 ff             	test   %r15d,%r15d
  403d62:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403d68:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403d6c:	41 39 f9             	cmp    %edi,%r9d
  403d6f:	0f 8e e9 04 00 00    	jle    40425e <fmt_fp+0x14de>
  403d75:	83 ff fc             	cmp    $0xfffffffc,%edi
  403d78:	0f 8c e0 04 00 00    	jl     40425e <fmt_fp+0x14de>
  403d7e:	8d 47 01             	lea    0x1(%rdi),%eax
  403d81:	45 89 cf             	mov    %r9d,%r15d
  403d84:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403d8b:	41 29 c7             	sub    %eax,%r15d
  403d8e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403d95:	0f 85 9c 05 00 00    	jne    404337 <fmt_fp+0x15b7>
  403d9b:	be 09 00 00 00       	mov    $0x9,%esi
  403da0:	49 39 dc             	cmp    %rbx,%r12
  403da3:	73 1f                	jae    403dc4 <fmt_fp+0x1044>
  403da5:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403da9:	45 85 c9             	test   %r9d,%r9d
  403dac:	74 16                	je     403dc4 <fmt_fp+0x1044>
  403dae:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403db5:	d1 c8                	ror    $1,%eax
  403db7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403dbc:	0f 86 e0 04 00 00    	jbe    4042a2 <fmt_fp+0x1522>
  403dc2:	31 f6                	xor    %esi,%esi
  403dc4:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403dcb:	41 83 ce 20          	or     $0x20,%r14d
  403dcf:	41 83 fe 66          	cmp    $0x66,%r14d
  403dd3:	0f 85 ac 05 00 00    	jne    404385 <fmt_fp+0x1605>
  403dd9:	48 89 d8             	mov    %rbx,%rax
  403ddc:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403de3:	ba 00 00 00 00       	mov    $0x0,%edx
  403de8:	48 c1 f8 02          	sar    $0x2,%rax
  403dec:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403df1:	48 29 f0             	sub    %rsi,%rax
  403df4:	48 0f 48 c2          	cmovs  %rdx,%rax
  403df8:	49 63 d7             	movslq %r15d,%rdx
  403dfb:	48 39 d0             	cmp    %rdx,%rax
  403dfe:	48 0f 4f c2          	cmovg  %rdx,%rax
  403e02:	48 85 c0             	test   %rax,%rax
  403e05:	0f 84 66 08 00 00    	je     404671 <fmt_fp+0x18f1>
  403e0b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403e11:	0f 8f 50 08 00 00    	jg     404667 <fmt_fp+0x18e7>
  403e17:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403e1b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403e21:	41 89 c7             	mov    %eax,%r15d
  403e24:	45 29 ca             	sub    %r9d,%r10d
  403e27:	e9 00 ff ff ff       	jmp    403d2c <fmt_fp+0xfac>
  403e2c:	0f 1f 40 00          	nopl   0x0(%rax)
  403e30:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403e37:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403e3e:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403e43:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403e4a:	cc cc cc 
  403e4d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403e54:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403e5b:	66 0f 6e c7          	movd   %edi,%xmm0
  403e5f:	4c 39 e0             	cmp    %r12,%rax
  403e62:	49 89 c6             	mov    %rax,%r14
  403e65:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403e6a:	4c 0f 46 e0          	cmovbe %rax,%r12
  403e6e:	4c 89 e3             	mov    %r12,%rbx
  403e71:	0f 1f 40 00          	nopl   0x0(%rax)
  403e75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e7c:	00 00 00 00 
  403e80:	41 8b 0c 24          	mov    (%r12),%ecx
  403e84:	48 85 c9             	test   %rcx,%rcx
  403e87:	0f 84 43 02 00 00    	je     4040d0 <fmt_fp+0x1350>
  403e8d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403e91:	48 89 f7             	mov    %rsi,%rdi
  403e94:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403e9b:	00 00 00 00 
  403e9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ea6:	00 00 00 00 
  403eaa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403eb1:	00 00 00 00 
  403eb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ebc:	00 00 00 00 
  403ec0:	48 89 c8             	mov    %rcx,%rax
  403ec3:	48 83 ef 01          	sub    $0x1,%rdi
  403ec7:	49 f7 e5             	mul    %r13
  403eca:	48 89 c8             	mov    %rcx,%rax
  403ecd:	48 c1 ea 03          	shr    $0x3,%rdx
  403ed1:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403ed5:	4d 01 c0             	add    %r8,%r8
  403ed8:	4c 29 c0             	sub    %r8,%rax
  403edb:	83 c0 30             	add    $0x30,%eax
  403ede:	48 83 f9 09          	cmp    $0x9,%rcx
  403ee2:	48 89 d1             	mov    %rdx,%rcx
  403ee5:	88 07                	mov    %al,(%rdi)
  403ee7:	77 d7                	ja     403ec0 <fmt_fp+0x1140>
  403ee9:	4c 39 e3             	cmp    %r12,%rbx
  403eec:	0f 84 36 01 00 00    	je     404028 <fmt_fp+0x12a8>
  403ef2:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403ef6:	48 39 fa             	cmp    %rdi,%rdx
  403ef9:	0f 83 32 01 00 00    	jae    404031 <fmt_fp+0x12b1>
  403eff:	49 89 fa             	mov    %rdi,%r10
  403f02:	48 89 f8             	mov    %rdi,%rax
  403f05:	49 29 d2             	sub    %rdx,%r10
  403f08:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403f0c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403f10:	76 46                	jbe    403f58 <fmt_fp+0x11d8>
  403f12:	4c 89 d6             	mov    %r10,%rsi
  403f15:	48 89 f9             	mov    %rdi,%rcx
  403f18:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403f1c:	48 29 f1             	sub    %rsi,%rcx
  403f1f:	40 f6 c6 10          	test   $0x10,%sil
  403f23:	74 1b                	je     403f40 <fmt_fp+0x11c0>
  403f25:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403f29:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403f2d:	48 39 c8             	cmp    %rcx,%rax
  403f30:	74 1e                	je     403f50 <fmt_fp+0x11d0>
  403f32:	0f 1f 00             	nopl   (%rax)
  403f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f3c:	00 00 00 00 
  403f40:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403f44:	48 83 e8 20          	sub    $0x20,%rax
  403f48:	0f 11 00             	movups %xmm0,(%rax)
  403f4b:	48 39 c8             	cmp    %rcx,%rax
  403f4e:	75 f0                	jne    403f40 <fmt_fp+0x11c0>
  403f50:	4c 39 d6             	cmp    %r10,%rsi
  403f53:	74 3b                	je     403f90 <fmt_fp+0x1210>
  403f55:	48 29 f7             	sub    %rsi,%rdi
  403f58:	48 89 d0             	mov    %rdx,%rax
  403f5b:	48 f7 d0             	not    %rax
  403f5e:	48 01 f8             	add    %rdi,%rax
  403f61:	48 83 ef 01          	sub    $0x1,%rdi
  403f65:	c6 07 30             	movb   $0x30,(%rdi)
  403f68:	48 39 fa             	cmp    %rdi,%rdx
  403f6b:	73 23                	jae    403f90 <fmt_fp+0x1210>
  403f6d:	a8 01                	test   $0x1,%al
  403f6f:	74 0f                	je     403f80 <fmt_fp+0x1200>
  403f71:	48 83 ef 01          	sub    $0x1,%rdi
  403f75:	c6 07 30             	movb   $0x30,(%rdi)
  403f78:	48 39 fa             	cmp    %rdi,%rdx
  403f7b:	73 13                	jae    403f90 <fmt_fp+0x1210>
  403f7d:	0f 1f 00             	nopl   (%rax)
  403f80:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403f84:	48 83 ef 02          	sub    $0x2,%rdi
  403f88:	c6 07 30             	movb   $0x30,(%rdi)
  403f8b:	48 39 fa             	cmp    %rdi,%rdx
  403f8e:	72 f0                	jb     403f80 <fmt_fp+0x1200>
  403f90:	be 09 00 00 00       	mov    $0x9,%esi
  403f95:	48 89 d7             	mov    %rdx,%rdi
  403f98:	41 f6 07 20          	testb  $0x20,(%r15)
  403f9c:	0f 84 9c 00 00 00    	je     40403e <fmt_fp+0x12be>
  403fa2:	49 83 c4 04          	add    $0x4,%r12
  403fa6:	4d 39 e6             	cmp    %r12,%r14
  403fa9:	0f 83 d1 fe ff ff    	jae    403e80 <fmt_fp+0x1100>
  403faf:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403fb6:	49 89 dc             	mov    %rbx,%r12
  403fb9:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403fc0:	45 85 ff             	test   %r15d,%r15d
  403fc3:	0f 85 36 04 00 00    	jne    4043ff <fmt_fp+0x167f>
  403fc9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403fd0:	0f 84 d8 fb ff ff    	je     403bae <fmt_fp+0xe2e>
  403fd6:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403fdd:	f6 02 20             	testb  $0x20,(%rdx)
  403fe0:	0f 85 c8 fb ff ff    	jne    403bae <fmt_fp+0xe2e>
  403fe6:	be 01 00 00 00       	mov    $0x1,%esi
  403feb:	48 8d 3d 96 31 00 00 	lea    0x3196(%rip),%rdi        # 407188 <_fini+0x204>
  403ff2:	e8 29 25 00 00       	call   406520 <__fwritex>
  403ff7:	41 83 c7 09          	add    $0x9,%r15d
  403ffb:	41 83 ff 09          	cmp    $0x9,%r15d
  403fff:	0f 8e a9 fb ff ff    	jle    403bae <fmt_fp+0xe2e>
  404005:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40400c:	b9 09 00 00 00       	mov    $0x9,%ecx
  404011:	44 89 fa             	mov    %r15d,%edx
  404014:	be 30 00 00 00       	mov    $0x30,%esi
  404019:	e8 62 ec ff ff       	call   402c80 <pad.part.0>
  40401e:	e9 8b fb ff ff       	jmp    403bae <fmt_fp+0xe2e>
  404023:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404028:	48 39 f7             	cmp    %rsi,%rdi
  40402b:	0f 84 b0 00 00 00    	je     4040e1 <fmt_fp+0x1361>
  404031:	48 29 fe             	sub    %rdi,%rsi
  404034:	41 f6 07 20          	testb  $0x20,(%r15)
  404038:	0f 85 64 ff ff ff    	jne    403fa2 <fmt_fp+0x1222>
  40403e:	4c 89 fa             	mov    %r15,%rdx
  404041:	e8 da 24 00 00       	call   406520 <__fwritex>
  404046:	66 0f 6f 05 c2 34 00 	movdqa 0x34c2(%rip),%xmm0        # 407510 <states+0x210>
  40404d:	00 
  40404e:	e9 4f ff ff ff       	jmp    403fa2 <fmt_fp+0x1222>
  404053:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40405a:	f6 00 20             	testb  $0x20,(%rax)
  40405d:	0f 85 4e f9 ff ff    	jne    4039b1 <fmt_fp+0xc31>
  404063:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40406a:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  404071:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  404078:	e8 a3 24 00 00       	call   406520 <__fwritex>
  40407d:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404083:	35 00 00 01 00       	xor    $0x10000,%eax
  404088:	a9 00 20 01 00       	test   $0x12000,%eax
  40408d:	0f 85 1e f9 ff ff    	jne    4039b1 <fmt_fp+0xc31>
  404093:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  40409a:	0f 85 11 f9 ff ff    	jne    4039b1 <fmt_fp+0xc31>
  4040a0:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  4040a6:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4040ac:	be 30 00 00 00       	mov    $0x30,%esi
  4040b1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4040b8:	e8 c3 eb ff ff       	call   402c80 <pad.part.0>
  4040bd:	e9 ef f8 ff ff       	jmp    4039b1 <fmt_fp+0xc31>
  4040c2:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4040c9:	f6 00 20             	testb  $0x20,(%rax)
  4040cc:	75 af                	jne    40407d <fmt_fp+0x12fd>
  4040ce:	eb 93                	jmp    404063 <fmt_fp+0x12e3>
  4040d0:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  4040d4:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4040d8:	4c 39 e3             	cmp    %r12,%rbx
  4040db:	0f 85 1e fe ff ff    	jne    403eff <fmt_fp+0x117f>
  4040e1:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  4040e5:	be 01 00 00 00       	mov    $0x1,%esi
  4040ea:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  4040ee:	e9 a5 fe ff ff       	jmp    403f98 <fmt_fp+0x1218>
  4040f3:	d9 05 d7 33 00 00    	flds   0x33d7(%rip)        # 4074d0 <states+0x1d0>
  4040f9:	d9 05 e1 33 00 00    	flds   0x33e1(%rip)        # 4074e0 <states+0x1e0>
  4040ff:	b8 0e 00 00 00       	mov    $0xe,%eax
  404104:	44 29 f8             	sub    %r15d,%eax
  404107:	90                   	nop
  404108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40410f:	00 
  404110:	dc c9                	fmul   %st,%st(1)
  404112:	83 e8 01             	sub    $0x1,%eax
  404115:	73 f9                	jae    404110 <fmt_fp+0x1390>
  404117:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  40411e:	80 38 2d             	cmpb   $0x2d,(%rax)
  404121:	0f 84 c6 04 00 00    	je     4045ed <fmt_fp+0x186d>
  404127:	d9 ca                	fxch   %st(2)
  404129:	d8 c1                	fadd   %st(1),%st
  40412b:	de e1                	fsubp  %st,%st(1)
  40412d:	d9 c9                	fxch   %st(1)
  40412f:	e9 9d f3 ff ff       	jmp    4034d1 <fmt_fp+0x751>
  404134:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  40413b:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  40413f:	48 89 c2             	mov    %rax,%rdx
  404142:	48 29 fe             	sub    %rdi,%rsi
  404145:	e8 d6 23 00 00       	call   406520 <__fwritex>
  40414a:	e9 5f fa ff ff       	jmp    403bae <fmt_fp+0xe2e>
  40414f:	44 01 d8             	add    %r11d,%eax
  404152:	89 06                	mov    %eax,(%rsi)
  404154:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  404159:	0f 86 3e 05 00 00    	jbe    40469d <fmt_fp+0x191d>
  40415f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404166:	00 00 00 00 
  40416a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404171:	00 00 00 00 
  404175:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40417c:	00 00 00 00 
  404180:	48 89 f2             	mov    %rsi,%rdx
  404183:	48 83 ee 04          	sub    $0x4,%rsi
  404187:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  40418e:	4c 39 e6             	cmp    %r12,%rsi
  404191:	73 0d                	jae    4041a0 <fmt_fp+0x1420>
  404193:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  40419a:	00 00 
  40419c:	49 83 ec 04          	sub    $0x4,%r12
  4041a0:	8b 06                	mov    (%rsi),%eax
  4041a2:	83 c0 01             	add    $0x1,%eax
  4041a5:	89 06                	mov    %eax,(%rsi)
  4041a7:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  4041ac:	77 d2                	ja     404180 <fmt_fp+0x1400>
  4041ae:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  4041b5:	41 8b 0c 24          	mov    (%r12),%ecx
  4041b9:	4c 29 e0             	sub    %r12,%rax
  4041bc:	48 c1 f8 02          	sar    $0x2,%rax
  4041c0:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  4041c3:	83 f9 09             	cmp    $0x9,%ecx
  4041c6:	0f 86 43 f6 ff ff    	jbe    40380f <fmt_fp+0xa8f>
  4041cc:	b8 0a 00 00 00       	mov    $0xa,%eax
  4041d1:	0f 1f 40 00          	nopl   0x0(%rax)
  4041d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041dc:	00 00 00 00 
  4041e0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4041e3:	83 c7 01             	add    $0x1,%edi
  4041e6:	01 c0                	add    %eax,%eax
  4041e8:	39 c1                	cmp    %eax,%ecx
  4041ea:	73 f4                	jae    4041e0 <fmt_fp+0x1460>
  4041ec:	e9 1e f6 ff ff       	jmp    40380f <fmt_fp+0xa8f>
  4041f1:	be 01 00 00 00       	mov    $0x1,%esi
  4041f6:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  4041fc:	e9 d7 ec ff ff       	jmp    402ed8 <fmt_fp+0x158>
  404201:	be 01 00 00 00       	mov    $0x1,%esi
  404206:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40420c:	e9 b6 ec ff ff       	jmp    402ec7 <fmt_fp+0x147>
  404211:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404218:	f6 07 20             	testb  $0x20,(%rdi)
  40421b:	0f 84 9d f4 ff ff    	je     4036be <fmt_fp+0x93e>
  404221:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404227:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40422d:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  404234:	35 00 00 01 00       	xor    $0x10000,%eax
  404239:	a9 00 20 01 00       	test   $0x12000,%eax
  40423e:	75 0d                	jne    40424d <fmt_fp+0x14cd>
  404240:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404247:	0f 84 bd f4 ff ff    	je     40370a <fmt_fp+0x98a>
  40424d:	45 29 f7             	sub    %r14d,%r15d
  404250:	45 85 ff             	test   %r15d,%r15d
  404253:	0f 8e 9d f1 ff ff    	jle    4033f6 <fmt_fp+0x676>
  404259:	e9 64 f1 ff ff       	jmp    4033c2 <fmt_fp+0x642>
  40425e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  404265:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  404269:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  404270:	0f 85 9c 00 00 00    	jne    404312 <fmt_fp+0x1592>
  404276:	49 39 dc             	cmp    %rbx,%r12
  404279:	0f 83 01 01 00 00    	jae    404380 <fmt_fp+0x1600>
  40427f:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404283:	45 85 c9             	test   %r9d,%r9d
  404286:	0f 84 f4 00 00 00    	je     404380 <fmt_fp+0x1600>
  40428c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404293:	31 f6                	xor    %esi,%esi
  404295:	d1 c8                	ror    $1,%eax
  404297:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40429c:	0f 87 e3 00 00 00    	ja     404385 <fmt_fp+0x1605>
  4042a2:	31 f6                	xor    %esi,%esi
  4042a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4042a9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4042ac:	44 89 c8             	mov    %r9d,%eax
  4042af:	31 d2                	xor    %edx,%edx
  4042b1:	83 c6 01             	add    $0x1,%esi
  4042b4:	01 c9                	add    %ecx,%ecx
  4042b6:	f7 f1                	div    %ecx
  4042b8:	85 d2                	test   %edx,%edx
  4042ba:	74 ed                	je     4042a9 <fmt_fp+0x1529>
  4042bc:	48 63 f6             	movslq %esi,%rsi
  4042bf:	e9 00 fb ff ff       	jmp    403dc4 <fmt_fp+0x1044>
  4042c4:	db 2d 36 32 00 00    	fldt   0x3236(%rip)        # 407500 <states+0x200>
  4042ca:	d9 05 08 32 00 00    	flds   0x3208(%rip)        # 4074d8 <states+0x1d8>
  4042d0:	e9 fe f4 ff ff       	jmp    4037d3 <fmt_fp+0xa53>
  4042d5:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4042d9:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  4042dd:	e9 54 f2 ff ff       	jmp    403536 <fmt_fp+0x7b6>
  4042e2:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4042e8:	75 0f                	jne    4042f9 <fmt_fp+0x1579>
  4042ea:	49 39 f4             	cmp    %rsi,%r12
  4042ed:	73 0a                	jae    4042f9 <fmt_fp+0x1579>
  4042ef:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4042f3:	0f 85 ba f4 ff ff    	jne    4037b3 <fmt_fp+0xa33>
  4042f9:	d9 05 d5 31 00 00    	flds   0x31d5(%rip)        # 4074d4 <states+0x1d4>
  4042ff:	e9 b5 f4 ff ff       	jmp    4037b9 <fmt_fp+0xa39>
  404304:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404309:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40430d:	e9 4d f3 ff ff       	jmp    40365f <fmt_fp+0x8df>
  404312:	45 85 ff             	test   %r15d,%r15d
  404315:	0f 85 24 03 00 00    	jne    40463f <fmt_fp+0x18bf>
  40431b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404322:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  404328:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  40432e:	41 83 ce 20          	or     $0x20,%r14d
  404332:	e9 3d f5 ff ff       	jmp    403874 <fmt_fp+0xaf4>
  404337:	45 85 ff             	test   %r15d,%r15d
  40433a:	0f 85 bd f9 ff ff    	jne    403cfd <fmt_fp+0xf7d>
  404340:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404347:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40434d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404353:	41 83 ce 20          	or     $0x20,%r14d
  404357:	41 83 fe 66          	cmp    $0x66,%r14d
  40435b:	0f 85 08 f5 ff ff    	jne    403869 <fmt_fp+0xae9>
  404361:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  404367:	0f 84 fa 02 00 00    	je     404667 <fmt_fp+0x18e7>
  40436d:	85 ff                	test   %edi,%edi
  40436f:	0f 85 ce f9 ff ff    	jne    403d43 <fmt_fp+0xfc3>
  404375:	e9 df f5 ff ff       	jmp    403959 <fmt_fp+0xbd9>
  40437a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404380:	be 09 00 00 00       	mov    $0x9,%esi
  404385:	48 89 d8             	mov    %rbx,%rax
  404388:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40438f:	48 63 d7             	movslq %edi,%rdx
  404392:	48 c1 f8 02          	sar    $0x2,%rax
  404396:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40439b:	48 01 d0             	add    %rdx,%rax
  40439e:	ba 00 00 00 00       	mov    $0x0,%edx
  4043a3:	48 29 f0             	sub    %rsi,%rax
  4043a6:	48 0f 48 c2          	cmovs  %rdx,%rax
  4043aa:	49 63 d7             	movslq %r15d,%rdx
  4043ad:	48 39 d0             	cmp    %rdx,%rax
  4043b0:	48 0f 4f c2          	cmovg  %rdx,%rax
  4043b4:	41 89 c7             	mov    %eax,%r15d
  4043b7:	48 85 c0             	test   %rax,%rax
  4043ba:	0f 85 3d f9 ff ff    	jne    403cfd <fmt_fp+0xf7d>
  4043c0:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4043c7:	41 83 ce 20          	or     $0x20,%r14d
  4043cb:	41 83 fe 66          	cmp    $0x66,%r14d
  4043cf:	0f 84 9c 02 00 00    	je     404671 <fmt_fp+0x18f1>
  4043d5:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  4043db:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4043e1:	45 31 ff             	xor    %r15d,%r15d
  4043e4:	e9 80 f4 ff ff       	jmp    403869 <fmt_fp+0xae9>
  4043e9:	44 39 d7             	cmp    %r10d,%edi
  4043ec:	0f 8f 75 02 00 00    	jg     404667 <fmt_fp+0x18e7>
  4043f2:	85 ff                	test   %edi,%edi
  4043f4:	0f 8f 49 f9 ff ff    	jg     403d43 <fmt_fp+0xfc3>
  4043fa:	e9 5a f5 ff ff       	jmp    403959 <fmt_fp+0xbd9>
  4043ff:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404406:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40440b:	48 89 f8             	mov    %rdi,%rax
  40440e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404412:	4c 29 e0             	sub    %r12,%rax
  404415:	48 39 d1             	cmp    %rdx,%rcx
  404418:	ba 00 00 00 00       	mov    $0x0,%edx
  40441d:	48 0f 42 c2          	cmovb  %rdx,%rax
  404421:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  404426:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40442d:	f6 00 20             	testb  $0x20,(%rax)
  404430:	0f 84 70 02 00 00    	je     4046a6 <fmt_fp+0x1926>
  404436:	45 85 ff             	test   %r15d,%r15d
  404439:	0f 8e b8 fb ff ff    	jle    403ff7 <fmt_fp+0x1277>
  40443f:	49 39 de             	cmp    %rbx,%r14
  404442:	0f 83 af fb ff ff    	jae    403ff7 <fmt_fp+0x1277>
  404448:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40444d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404451:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404455:	49 89 d9             	mov    %rbx,%r9
  404458:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40445f:	66 0f 6e c0          	movd   %eax,%xmm0
  404463:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  40446a:	cc cc cc 
  40446d:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  404472:	0f 1f 00             	nopl   (%rax)
  404475:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40447c:	00 00 00 00 
  404480:	41 8b 0e             	mov    (%r14),%ecx
  404483:	4c 89 c7             	mov    %r8,%rdi
  404486:	48 85 c9             	test   %rcx,%rcx
  404489:	74 67                	je     4044f2 <fmt_fp+0x1772>
  40448b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404492:	00 00 
  404494:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40449b:	00 00 00 00 
  40449f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044a6:	00 00 00 00 
  4044aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044b1:	00 00 00 00 
  4044b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044bc:	00 00 00 00 
  4044c0:	48 89 c8             	mov    %rcx,%rax
  4044c3:	48 83 ef 01          	sub    $0x1,%rdi
  4044c7:	49 f7 e4             	mul    %r12
  4044ca:	48 89 c8             	mov    %rcx,%rax
  4044cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4044d1:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  4044d5:	48 01 f6             	add    %rsi,%rsi
  4044d8:	48 29 f0             	sub    %rsi,%rax
  4044db:	83 c0 30             	add    $0x30,%eax
  4044de:	48 83 f9 09          	cmp    $0x9,%rcx
  4044e2:	48 89 d1             	mov    %rdx,%rcx
  4044e5:	88 07                	mov    %al,(%rdi)
  4044e7:	77 d7                	ja     4044c0 <fmt_fp+0x1740>
  4044e9:	49 39 fd             	cmp    %rdi,%r13
  4044ec:	0f 83 91 00 00 00    	jae    404583 <fmt_fp+0x1803>
  4044f2:	48 89 fe             	mov    %rdi,%rsi
  4044f5:	48 89 f8             	mov    %rdi,%rax
  4044f8:	4c 29 ee             	sub    %r13,%rsi
  4044fb:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  4044ff:	48 83 fa 0e          	cmp    $0xe,%rdx
  404503:	76 43                	jbe    404548 <fmt_fp+0x17c8>
  404505:	48 89 f1             	mov    %rsi,%rcx
  404508:	48 89 fa             	mov    %rdi,%rdx
  40450b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40450f:	48 29 ca             	sub    %rcx,%rdx
  404512:	f6 c1 10             	test   $0x10,%cl
  404515:	74 19                	je     404530 <fmt_fp+0x17b0>
  404517:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40451b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40451f:	48 39 d0             	cmp    %rdx,%rax
  404522:	74 1c                	je     404540 <fmt_fp+0x17c0>
  404524:	90                   	nop
  404525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40452c:	00 00 00 00 
  404530:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404534:	48 83 e8 20          	sub    $0x20,%rax
  404538:	0f 11 00             	movups %xmm0,(%rax)
  40453b:	48 39 d0             	cmp    %rdx,%rax
  40453e:	75 f0                	jne    404530 <fmt_fp+0x17b0>
  404540:	48 39 f1             	cmp    %rsi,%rcx
  404543:	74 3b                	je     404580 <fmt_fp+0x1800>
  404545:	48 29 cf             	sub    %rcx,%rdi
  404548:	4c 89 e8             	mov    %r13,%rax
  40454b:	48 f7 d0             	not    %rax
  40454e:	48 01 f8             	add    %rdi,%rax
  404551:	48 83 ef 01          	sub    $0x1,%rdi
  404555:	c6 07 30             	movb   $0x30,(%rdi)
  404558:	49 39 fd             	cmp    %rdi,%r13
  40455b:	73 23                	jae    404580 <fmt_fp+0x1800>
  40455d:	a8 01                	test   $0x1,%al
  40455f:	74 0f                	je     404570 <fmt_fp+0x17f0>
  404561:	48 83 ef 01          	sub    $0x1,%rdi
  404565:	c6 07 30             	movb   $0x30,(%rdi)
  404568:	49 39 fd             	cmp    %rdi,%r13
  40456b:	73 13                	jae    404580 <fmt_fp+0x1800>
  40456d:	0f 1f 00             	nopl   (%rax)
  404570:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  404574:	48 83 ef 02          	sub    $0x2,%rdi
  404578:	c6 07 30             	movb   $0x30,(%rdi)
  40457b:	49 39 fd             	cmp    %rdi,%r13
  40457e:	72 f0                	jb     404570 <fmt_fp+0x17f0>
  404580:	4c 89 ef             	mov    %r13,%rdi
  404583:	f6 03 20             	testb  $0x20,(%rbx)
  404586:	74 28                	je     4045b0 <fmt_fp+0x1830>
  404588:	49 83 c6 04          	add    $0x4,%r14
  40458c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404590:	4d 39 ce             	cmp    %r9,%r14
  404593:	0f 83 62 fa ff ff    	jae    403ffb <fmt_fp+0x127b>
  404599:	85 c0                	test   %eax,%eax
  40459b:	0f 8e 5a fa ff ff    	jle    403ffb <fmt_fp+0x127b>
  4045a1:	41 89 c7             	mov    %eax,%r15d
  4045a4:	e9 d7 fe ff ff       	jmp    404480 <fmt_fp+0x1700>
  4045a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4045b0:	b8 09 00 00 00       	mov    $0x9,%eax
  4045b5:	48 89 da             	mov    %rbx,%rdx
  4045b8:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  4045bf:	41 39 c7             	cmp    %eax,%r15d
  4045c2:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  4045c9:	41 0f 4e c7          	cmovle %r15d,%eax
  4045cd:	48 63 f0             	movslq %eax,%rsi
  4045d0:	e8 4b 1f 00 00       	call   406520 <__fwritex>
  4045d5:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  4045dc:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  4045e3:	66 0f 6f 05 25 2f 00 	movdqa 0x2f25(%rip),%xmm0        # 407510 <states+0x210>
  4045ea:	00 
  4045eb:	eb 9b                	jmp    404588 <fmt_fp+0x1808>
  4045ed:	d9 ca                	fxch   %st(2)
  4045ef:	d9 e0                	fchs
  4045f1:	d8 e1                	fsub   %st(1),%st
  4045f3:	de c1                	faddp  %st,%st(1)
  4045f5:	d9 e0                	fchs
  4045f7:	d9 c9                	fxch   %st(1)
  4045f9:	e9 d3 ee ff ff       	jmp    4034d1 <fmt_fp+0x751>
  4045fe:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404602:	48 39 c3             	cmp    %rax,%rbx
  404605:	0f 85 c2 f1 ff ff    	jne    4037cd <fmt_fp+0xa4d>
  40460b:	d9 e8                	fld1
  40460d:	e9 c1 f1 ff ff       	jmp    4037d3 <fmt_fp+0xa53>
  404612:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404616:	4c 89 e9             	mov    %r13,%rcx
  404619:	e9 e2 f2 ff ff       	jmp    403900 <fmt_fp+0xb80>
  40461e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  404624:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404629:	e9 32 ec ff ff       	jmp    403260 <fmt_fp+0x4e0>
  40462e:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404632:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  404636:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  40463a:	e9 01 ef ff ff       	jmp    403540 <fmt_fp+0x7c0>
  40463f:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404646:	74 1f                	je     404667 <fmt_fp+0x18e7>
  404648:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40464f:	41 83 c1 01          	add    $0x1,%r9d
  404653:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404658:	44 29 c8             	sub    %r9d,%eax
  40465b:	41 83 ce 20          	or     $0x20,%r14d
  40465f:	4c 63 d0             	movslq %eax,%r10
  404662:	e9 0d f2 ff ff       	jmp    403874 <fmt_fp+0xaf4>
  404667:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40466c:	e9 ee ec ff ff       	jmp    40335f <fmt_fp+0x5df>
  404671:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  404677:	74 ee                	je     404667 <fmt_fp+0x18e7>
  404679:	45 31 ff             	xor    %r15d,%r15d
  40467c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404682:	85 ff                	test   %edi,%edi
  404684:	0f 8f b9 f6 ff ff    	jg     403d43 <fmt_fp+0xfc3>
  40468a:	e9 ca f2 ff ff       	jmp    403959 <fmt_fp+0xbd9>
  40468f:	dd d8                	fstp   %st(0)
  404691:	dd d8                	fstp   %st(0)
  404693:	dd d8                	fstp   %st(0)
  404695:	49 89 c0             	mov    %rax,%r8
  404698:	e9 82 ef ff ff       	jmp    40361f <fmt_fp+0x89f>
  40469d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4046a1:	e9 08 fb ff ff       	jmp    4041ae <fmt_fp+0x142e>
  4046a6:	48 89 c2             	mov    %rax,%rdx
  4046a9:	be 01 00 00 00       	mov    $0x1,%esi
  4046ae:	48 8d 3d d3 2a 00 00 	lea    0x2ad3(%rip),%rdi        # 407188 <_fini+0x204>
  4046b5:	e8 66 1e 00 00       	call   406520 <__fwritex>
  4046ba:	e9 77 fd ff ff       	jmp    404436 <fmt_fp+0x16b6>
  4046bf:	e8 dc e1 ff ff       	call   4028a0 <__stack_chk_fail>
  4046c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046cb:	00 00 00 
  4046ce:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046d5:	00 00 00 
  4046d8:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046df:	00 00 00 
  4046e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046e9:	00 00 00 
  4046ec:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046f3:	00 00 00 
  4046f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4046fd:	00 00 00 

0000000000404700 <printf_core>:
  404700:	55                   	push   %rbp
  404701:	48 89 e5             	mov    %rsp,%rbp
  404704:	41 57                	push   %r15
  404706:	4c 8d 3d f3 2b 00 00 	lea    0x2bf3(%rip),%r15        # 407300 <states>
  40470d:	41 56                	push   %r14
  40470f:	49 89 f6             	mov    %rsi,%r14
  404712:	41 55                	push   %r13
  404714:	45 31 ed             	xor    %r13d,%r13d
  404717:	41 54                	push   %r12
  404719:	53                   	push   %rbx
  40471a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  404721:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  404725:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  40472c:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  404733:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  40473a:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404741:	00 00 
  404743:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404747:	45 31 c0             	xor    %r8d,%r8d
  40474a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404751:	00 00 00 
  404754:	41 0f b6 06          	movzbl (%r14),%eax
  404758:	45 01 c5             	add    %r8d,%r13d
  40475b:	84 c0                	test   %al,%al
  40475d:	0f 84 ad 06 00 00    	je     404e10 <printf_core+0x710>
  404763:	4d 89 f2             	mov    %r14,%r10
  404766:	eb 25                	jmp    40478d <printf_core+0x8d>
  404768:	66 90                	xchg   %ax,%ax
  40476a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404771:	00 00 00 00 
  404775:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40477c:	00 00 00 00 
  404780:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404785:	49 83 c2 01          	add    $0x1,%r10
  404789:	84 c0                	test   %al,%al
  40478b:	74 73                	je     404800 <printf_core+0x100>
  40478d:	3c 25                	cmp    $0x25,%al
  40478f:	75 ef                	jne    404780 <printf_core+0x80>
  404791:	4c 89 d3             	mov    %r10,%rbx
  404794:	eb 17                	jmp    4047ad <printf_core+0xad>
  404796:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40479d:	00 00 00 
  4047a0:	48 83 c3 02          	add    $0x2,%rbx
  4047a4:	49 83 c2 01          	add    $0x1,%r10
  4047a8:	80 3b 25             	cmpb   $0x25,(%rbx)
  4047ab:	75 06                	jne    4047b3 <printf_core+0xb3>
  4047ad:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  4047b1:	74 ed                	je     4047a0 <printf_core+0xa0>
  4047b3:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  4047b9:	4d 29 f2             	sub    %r14,%r10
  4047bc:	45 29 eb             	sub    %r13d,%r11d
  4047bf:	49 63 c3             	movslq %r11d,%rax
  4047c2:	49 39 c2             	cmp    %rax,%r10
  4047c5:	0f 8f 15 03 00 00    	jg     404ae0 <printf_core+0x3e0>
  4047cb:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4047cf:	45 89 d0             	mov    %r10d,%r8d
  4047d2:	48 85 c0             	test   %rax,%rax
  4047d5:	74 09                	je     4047e0 <printf_core+0xe0>
  4047d7:	f6 00 20             	testb  $0x20,(%rax)
  4047da:	0f 84 10 03 00 00    	je     404af0 <printf_core+0x3f0>
  4047e0:	45 85 d2             	test   %r10d,%r10d
  4047e3:	74 2b                	je     404810 <printf_core+0x110>
  4047e5:	45 39 c3             	cmp    %r8d,%r11d
  4047e8:	0f 8c f2 02 00 00    	jl     404ae0 <printf_core+0x3e0>
  4047ee:	49 89 de             	mov    %rbx,%r14
  4047f1:	e9 5e ff ff ff       	jmp    404754 <printf_core+0x54>
  4047f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4047fd:	00 00 00 
  404800:	3c 25                	cmp    $0x25,%al
  404802:	74 8d                	je     404791 <printf_core+0x91>
  404804:	4c 89 d3             	mov    %r10,%rbx
  404807:	eb aa                	jmp    4047b3 <printf_core+0xb3>
  404809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404810:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404814:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404817:	89 c8                	mov    %ecx,%eax
  404819:	83 ff 09             	cmp    $0x9,%edi
  40481c:	77 1a                	ja     404838 <printf_core+0x138>
  40481e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  404822:	0f 84 e5 03 00 00    	je     404c0d <printf_core+0x50d>
  404828:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40482c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404831:	eb 1a                	jmp    40484d <printf_core+0x14d>
  404833:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404838:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40483c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404841:	83 e9 20             	sub    $0x20,%ecx
  404844:	83 f9 1f             	cmp    $0x1f,%ecx
  404847:	0f 87 b5 05 00 00    	ja     404e02 <printf_core+0x702>
  40484d:	45 31 e4             	xor    %r12d,%r12d
  404850:	be 89 28 01 00       	mov    $0x12889,%esi
  404855:	eb 48                	jmp    40489f <printf_core+0x19f>
  404857:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40485e:	00 
  40485f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404866:	00 00 00 00 
  40486a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404871:	00 00 00 00 
  404875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40487c:	00 00 00 00 
  404880:	b8 01 00 00 00       	mov    $0x1,%eax
  404885:	48 83 c2 01          	add    $0x1,%rdx
  404889:	d3 e0                	shl    %cl,%eax
  40488b:	0f be 0a             	movsbl (%rdx),%ecx
  40488e:	41 09 c4             	or     %eax,%r12d
  404891:	89 c8                	mov    %ecx,%eax
  404893:	83 e9 20             	sub    $0x20,%ecx
  404896:	83 f9 1f             	cmp    $0x1f,%ecx
  404899:	0f 87 49 01 00 00    	ja     4049e8 <printf_core+0x2e8>
  40489f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  4048a2:	0f a3 ce             	bt     %ecx,%esi
  4048a5:	72 d9                	jb     404880 <printf_core+0x180>
  4048a7:	3c 2a                	cmp    $0x2a,%al
  4048a9:	0f 85 39 01 00 00    	jne    4049e8 <printf_core+0x2e8>
  4048af:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  4048b4:	48 89 c8             	mov    %rcx,%rax
  4048b7:	83 e9 30             	sub    $0x30,%ecx
  4048ba:	83 f9 09             	cmp    $0x9,%ecx
  4048bd:	0f 86 0d 03 00 00    	jbe    404bd0 <printf_core+0x4d0>
  4048c3:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  4048c9:	85 c9                	test   %ecx,%ecx
  4048cb:	0f 85 dc 00 00 00    	jne    4049ad <printf_core+0x2ad>
  4048d1:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4048d5:	45 89 d1             	mov    %r10d,%r9d
  4048d8:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4048dd:	0f 84 58 01 00 00    	je     404a3b <printf_core+0x33b>
  4048e3:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4048ea:	8b 06                	mov    (%rsi),%eax
  4048ec:	83 f8 2f             	cmp    $0x2f,%eax
  4048ef:	0f 87 4a 03 00 00    	ja     404c3f <printf_core+0x53f>
  4048f5:	89 c2                	mov    %eax,%edx
  4048f7:	83 c0 08             	add    $0x8,%eax
  4048fa:	48 03 56 10          	add    0x10(%rsi),%rdx
  4048fe:	89 06                	mov    %eax,(%rsi)
  404900:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404907:	00 00 00 
  40490a:	44 8b 0a             	mov    (%rdx),%r9d
  40490d:	44 89 e2             	mov    %r12d,%edx
  404910:	0f b6 03             	movzbl (%rbx),%eax
  404913:	80 ce 20             	or     $0x20,%dh
  404916:	45 85 c9             	test   %r9d,%r9d
  404919:	44 0f 48 e2          	cmovs  %edx,%r12d
  40491d:	44 89 ca             	mov    %r9d,%edx
  404920:	f7 da                	neg    %edx
  404922:	45 85 c9             	test   %r9d,%r9d
  404925:	44 0f 48 ca          	cmovs  %edx,%r9d
  404929:	3c 2e                	cmp    $0x2e,%al
  40492b:	0f 84 12 01 00 00    	je     404a43 <printf_core+0x343>
  404931:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404938:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  40493f:	31 c0                	xor    %eax,%eax
  404941:	eb 5f                	jmp    4049a2 <printf_core+0x2a2>
  404943:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404949:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404950:	00 00 00 00 
  404954:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40495b:	00 00 00 00 
  40495f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404966:	00 00 00 00 
  40496a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404971:	00 00 00 00 
  404975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40497c:	00 00 00 00 
  404980:	89 c1                	mov    %eax,%ecx
  404982:	48 63 d2             	movslq %edx,%rdx
  404985:	48 83 c3 01          	add    $0x1,%rbx
  404989:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  40498d:	4c 01 fe             	add    %r15,%rsi
  404990:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404994:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404997:	83 fa 07             	cmp    $0x7,%edx
  40499a:	0f 87 90 01 00 00    	ja     404b30 <printf_core+0x430>
  4049a0:	89 f0                	mov    %esi,%eax
  4049a2:	0f be 13             	movsbl (%rbx),%edx
  4049a5:	83 ea 41             	sub    $0x41,%edx
  4049a8:	83 fa 39             	cmp    $0x39,%edx
  4049ab:	76 d3                	jbe    404980 <printf_core+0x280>
  4049ad:	e8 de 16 00 00       	call   406090 <__errno_location>
  4049b2:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  4049b8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  4049be:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4049c2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4049c9:	00 00 
  4049cb:	0f 85 a2 0f 00 00    	jne    405973 <printf_core+0x1273>
  4049d1:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4049d5:	44 89 d8             	mov    %r11d,%eax
  4049d8:	5b                   	pop    %rbx
  4049d9:	41 5c                	pop    %r12
  4049db:	41 5d                	pop    %r13
  4049dd:	41 5e                	pop    %r14
  4049df:	41 5f                	pop    %r15
  4049e1:	5d                   	pop    %rbp
  4049e2:	c3                   	ret
  4049e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4049e8:	0f be 0a             	movsbl (%rdx),%ecx
  4049eb:	45 89 d1             	mov    %r10d,%r9d
  4049ee:	48 89 d3             	mov    %rdx,%rbx
  4049f1:	89 c8                	mov    %ecx,%eax
  4049f3:	83 e9 30             	sub    $0x30,%ecx
  4049f6:	83 f9 09             	cmp    $0x9,%ecx
  4049f9:	77 40                	ja     404a3b <printf_core+0x33b>
  4049fb:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404a02:	0f 8f c8 00 00 00    	jg     404ad0 <printf_core+0x3d0>
  404a08:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  404a0c:	83 e8 30             	sub    $0x30,%eax
  404a0f:	0f be c0             	movsbl %al,%eax
  404a12:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404a18:	39 f0                	cmp    %esi,%eax
  404a1a:	0f 8f b0 00 00 00    	jg     404ad0 <printf_core+0x3d0>
  404a20:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404a24:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404a28:	29 c8                	sub    %ecx,%eax
  404a2a:	41 89 c1             	mov    %eax,%r9d
  404a2d:	89 d0                	mov    %edx,%eax
  404a2f:	83 ea 30             	sub    $0x30,%edx
  404a32:	83 fa 09             	cmp    $0x9,%edx
  404a35:	0f 86 3d 0f 00 00    	jbe    405978 <printf_core+0x1278>
  404a3b:	3c 2e                	cmp    $0x2e,%al
  404a3d:	0f 85 ee fe ff ff    	jne    404931 <printf_core+0x231>
  404a43:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404a47:	3c 2a                	cmp    $0x2a,%al
  404a49:	0f 85 11 02 00 00    	jne    404c60 <printf_core+0x560>
  404a4f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404a53:	89 c2                	mov    %eax,%edx
  404a55:	83 e8 30             	sub    $0x30,%eax
  404a58:	83 f8 09             	cmp    $0x9,%eax
  404a5b:	77 0a                	ja     404a67 <printf_core+0x367>
  404a5d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  404a61:	0f 84 4f 03 00 00    	je     404db6 <printf_core+0x6b6>
  404a67:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  404a6d:	85 c0                	test   %eax,%eax
  404a6f:	0f 85 38 ff ff ff    	jne    4049ad <printf_core+0x2ad>
  404a75:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404a7a:	0f 84 6f 03 00 00    	je     404def <printf_core+0x6ef>
  404a80:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404a87:	8b 06                	mov    (%rsi),%eax
  404a89:	83 f8 2f             	cmp    $0x2f,%eax
  404a8c:	0f 87 60 02 00 00    	ja     404cf2 <printf_core+0x5f2>
  404a92:	89 c2                	mov    %eax,%edx
  404a94:	83 c0 08             	add    $0x8,%eax
  404a97:	48 03 56 10          	add    0x10(%rsi),%rdx
  404a9b:	89 06                	mov    %eax,(%rsi)
  404a9d:	8b 02                	mov    (%rdx),%eax
  404a9f:	89 45 80             	mov    %eax,-0x80(%rbp)
  404aa2:	f7 d0                	not    %eax
  404aa4:	c1 e8 1f             	shr    $0x1f,%eax
  404aa7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404aad:	48 83 c3 02          	add    $0x2,%rbx
  404ab1:	e9 89 fe ff ff       	jmp    40493f <printf_core+0x23f>
  404ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404abd:	00 00 00 
  404ac0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404ac4:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404ac8:	83 e8 30             	sub    $0x30,%eax
  404acb:	83 f8 09             	cmp    $0x9,%eax
  404ace:	77 10                	ja     404ae0 <printf_core+0x3e0>
  404ad0:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404ad4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404ad8:	83 ea 30             	sub    $0x30,%edx
  404adb:	83 fa 09             	cmp    $0x9,%edx
  404ade:	76 e0                	jbe    404ac0 <printf_core+0x3c0>
  404ae0:	e8 ab 15 00 00       	call   406090 <__errno_location>
  404ae5:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404aeb:	e9 c8 fe ff ff       	jmp    4049b8 <printf_core+0x2b8>
  404af0:	49 63 f2             	movslq %r10d,%rsi
  404af3:	48 89 c2             	mov    %rax,%rdx
  404af6:	4c 89 f7             	mov    %r14,%rdi
  404af9:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404b00:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404b07:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404b0b:	e8 10 1a 00 00       	call   406520 <__fwritex>
  404b10:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404b17:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404b1e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404b22:	e9 b9 fc ff ff       	jmp    4047e0 <printf_core+0xe0>
  404b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404b2e:	00 00 
  404b30:	85 f6                	test   %esi,%esi
  404b32:	0f 84 75 fe ff ff    	je     4049ad <printf_core+0x2ad>
  404b38:	83 fe 1b             	cmp    $0x1b,%esi
  404b3b:	0f 84 e5 00 00 00    	je     404c26 <printf_core+0x526>
  404b41:	83 ff ff             	cmp    $0xffffffff,%edi
  404b44:	0f 84 01 02 00 00    	je     404d4b <printf_core+0x64b>
  404b4a:	48 63 ff             	movslq %edi,%rdi
  404b4d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b52:	0f 84 b2 01 00 00    	je     404d0a <printf_core+0x60a>
  404b58:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404b5f:	48 c1 e7 04          	shl    $0x4,%rdi
  404b63:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404b68:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404b6c:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404b70:	f6 07 20             	testb  $0x20,(%rdi)
  404b73:	0f 85 3f fe ff ff    	jne    4049b8 <printf_core+0x2b8>
  404b79:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404b7d:	89 d6                	mov    %edx,%esi
  404b7f:	85 c0                	test   %eax,%eax
  404b81:	74 13                	je     404b96 <printf_core+0x496>
  404b83:	89 d7                	mov    %edx,%edi
  404b85:	83 e6 df             	and    $0xffffffdf,%esi
  404b88:	83 e7 0f             	and    $0xf,%edi
  404b8b:	40 0f be f6          	movsbl %sil,%esi
  404b8f:	40 80 ff 03          	cmp    $0x3,%dil
  404b93:	0f 44 d6             	cmove  %esi,%edx
  404b96:	44 89 e6             	mov    %r12d,%esi
  404b99:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404b9f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404ba6:	44 0f 45 e6          	cmovne %esi,%r12d
  404baa:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404bad:	83 fe 37             	cmp    $0x37,%esi
  404bb0:	0f 87 c2 02 00 00    	ja     404e78 <printf_core+0x778>
  404bb6:	48 8d 3d 27 26 00 00 	lea    0x2627(%rip),%rdi        # 4071e4 <_fini+0x260>
  404bbd:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404bc1:	48 01 fe             	add    %rdi,%rsi
  404bc4:	3e ff e6             	notrack jmp *%rsi
  404bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404bce:	00 00 
  404bd0:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404bd4:	0f 84 ab 01 00 00    	je     404d85 <printf_core+0x685>
  404bda:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404be0:	85 f6                	test   %esi,%esi
  404be2:	0f 85 c5 fd ff ff    	jne    4049ad <printf_core+0x2ad>
  404be8:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404bec:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bf1:	0f 85 ec fc ff ff    	jne    4048e3 <printf_core+0x1e3>
  404bf7:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404bfe:	45 89 d1             	mov    %r10d,%r9d
  404c01:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404c08:	e9 32 fd ff ff       	jmp    40493f <printf_core+0x23f>
  404c0d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404c11:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404c15:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404c1c:	00 00 00 
  404c1f:	89 c8                	mov    %ecx,%eax
  404c21:	e9 1b fc ff ff       	jmp    404841 <printf_core+0x141>
  404c26:	83 ff ff             	cmp    $0xffffffff,%edi
  404c29:	0f 85 7e fd ff ff    	jne    4049ad <printf_core+0x2ad>
  404c2f:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c34:	0f 85 32 ff ff ff    	jne    404b6c <printf_core+0x46c>
  404c3a:	e9 af fb ff ff       	jmp    4047ee <printf_core+0xee>
  404c3f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404c46:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404c4a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404c4e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404c52:	e9 a9 fc ff ff       	jmp    404900 <printf_core+0x200>
  404c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404c5e:	00 00 
  404c60:	0f be d0             	movsbl %al,%edx
  404c63:	48 83 c3 01          	add    $0x1,%rbx
  404c67:	83 ea 30             	sub    $0x30,%edx
  404c6a:	83 fa 09             	cmp    $0x9,%edx
  404c6d:	0f 87 93 0b 00 00    	ja     405806 <printf_core+0x1106>
  404c73:	44 89 d2             	mov    %r10d,%edx
  404c76:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404c7c:	0f 8f fe 0c 00 00    	jg     405980 <printf_core+0x1280>
  404c82:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404c85:	83 e8 30             	sub    $0x30,%eax
  404c88:	0f be c0             	movsbl %al,%eax
  404c8b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404c91:	39 c2                	cmp    %eax,%edx
  404c93:	0f 8d 87 00 00 00    	jge    404d20 <printf_core+0x620>
  404c99:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404c9d:	83 e8 30             	sub    $0x30,%eax
  404ca0:	83 f8 09             	cmp    $0x9,%eax
  404ca3:	0f 87 8b 0a 00 00    	ja     405734 <printf_core+0x1034>
  404ca9:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404cad:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404cb1:	83 ea 30             	sub    $0x30,%edx
  404cb4:	83 fa 09             	cmp    $0x9,%edx
  404cb7:	77 20                	ja     404cd9 <printf_core+0x5d9>
  404cb9:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404cbd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404cc1:	83 ea 30             	sub    $0x30,%edx
  404cc4:	83 fa 09             	cmp    $0x9,%edx
  404cc7:	77 13                	ja     404cdc <printf_core+0x5dc>
  404cc9:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404ccd:	48 83 c0 02          	add    $0x2,%rax
  404cd1:	83 ea 30             	sub    $0x30,%edx
  404cd4:	83 fa 09             	cmp    $0x9,%edx
  404cd7:	76 e0                	jbe    404cb9 <printf_core+0x5b9>
  404cd9:	48 89 c3             	mov    %rax,%rbx
  404cdc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404ce3:	00 00 00 
  404ce6:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404ced:	e9 4d fc ff ff       	jmp    40493f <printf_core+0x23f>
  404cf2:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404cf9:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404cfd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404d01:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404d05:	e9 93 fd ff ff       	jmp    404a9d <printf_core+0x39d>
  404d0a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404d11:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404d14:	e9 d5 fa ff ff       	jmp    4047ee <printf_core+0xee>
  404d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404d20:	48 83 c3 01          	add    $0x1,%rbx
  404d24:	29 c8                	sub    %ecx,%eax
  404d26:	0f be 0b             	movsbl (%rbx),%ecx
  404d29:	89 c2                	mov    %eax,%edx
  404d2b:	89 c8                	mov    %ecx,%eax
  404d2d:	83 e9 30             	sub    $0x30,%ecx
  404d30:	83 f9 09             	cmp    $0x9,%ecx
  404d33:	0f 86 3d ff ff ff    	jbe    404c76 <printf_core+0x576>
  404d39:	89 55 80             	mov    %edx,-0x80(%rbp)
  404d3c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d43:	00 00 00 
  404d46:	e9 f4 fb ff ff       	jmp    40493f <printf_core+0x23f>
  404d4b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d50:	0f 84 15 0c 00 00    	je     40596b <printf_core+0x126b>
  404d56:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404d5d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404d61:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404d67:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404d6e:	e8 1d dd ff ff       	call   402a90 <pop_arg>
  404d73:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404d79:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404d80:	e9 e7 fd ff ff       	jmp    404b6c <printf_core+0x46c>
  404d85:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404d89:	48 83 e8 30          	sub    $0x30,%rax
  404d8d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404d92:	0f 84 b6 09 00 00    	je     40574e <printf_core+0x104e>
  404d98:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404d9f:	48 c1 e0 04          	shl    $0x4,%rax
  404da3:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404daa:	00 00 00 
  404dad:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404db1:	e9 57 fb ff ff       	jmp    40490d <printf_core+0x20d>
  404db6:	48 0f be c2          	movsbq %dl,%rax
  404dba:	48 83 e8 30          	sub    $0x30,%rax
  404dbe:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404dc3:	0f 84 a9 09 00 00    	je     405772 <printf_core+0x1072>
  404dc9:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404dd0:	48 c1 e0 04          	shl    $0x4,%rax
  404dd4:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404dd8:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ddb:	f7 d0                	not    %eax
  404ddd:	c1 e8 1f             	shr    $0x1f,%eax
  404de0:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404de6:	48 83 c3 04          	add    $0x4,%rbx
  404dea:	e9 50 fb ff ff       	jmp    40493f <printf_core+0x23f>
  404def:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404df3:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404dfa:	00 00 00 
  404dfd:	e9 ab fc ff ff       	jmp    404aad <printf_core+0x3ad>
  404e02:	48 89 d3             	mov    %rdx,%rbx
  404e05:	45 89 d1             	mov    %r10d,%r9d
  404e08:	45 31 e4             	xor    %r12d,%r12d
  404e0b:	e9 2b fc ff ff       	jmp    404a3b <printf_core+0x33b>
  404e10:	45 89 eb             	mov    %r13d,%r11d
  404e13:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e18:	0f 85 a0 fb ff ff    	jne    4049be <printf_core+0x2be>
  404e1e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404e25:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404e2b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404e31:	48 83 c7 10          	add    $0x10,%rdi
  404e35:	85 c9                	test   %ecx,%ecx
  404e37:	0f 84 2e 0b 00 00    	je     40596b <printf_core+0x126b>
  404e3d:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404e44:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404e4b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404e4f:	85 f6                	test   %esi,%esi
  404e51:	0f 84 90 0a 00 00    	je     4058e7 <printf_core+0x11e7>
  404e57:	e8 34 dc ff ff       	call   402a90 <pop_arg>
  404e5c:	49 83 c0 01          	add    $0x1,%r8
  404e60:	48 83 c7 10          	add    $0x10,%rdi
  404e64:	49 83 f8 0a          	cmp    $0xa,%r8
  404e68:	75 e1                	jne    404e4b <printf_core+0x74b>
  404e6a:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404e70:	e9 49 fb ff ff       	jmp    4049be <printf_core+0x2be>
  404e75:	0f 1f 00             	nopl   (%rax)
  404e78:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404e7c:	4c 29 f0             	sub    %r14,%rax
  404e7f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404e86:	48 89 c7             	mov    %rax,%rdi
  404e89:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404e8d:	48 39 c7             	cmp    %rax,%rdi
  404e90:	0f 8e da 07 00 00    	jle    405670 <printf_core+0xf70>
  404e96:	48 89 f8             	mov    %rdi,%rax
  404e99:	48 8d 3d ea 22 00 00 	lea    0x22ea(%rip),%rdi        # 40718a <_fini+0x206>
  404ea0:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ea3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404eaa:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404eb0:	44 89 d0             	mov    %r10d,%eax
  404eb3:	66 90                	xchg   %ax,%ax
  404eb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ebc:	00 00 00 00 
  404ec0:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404ec6:	41 39 c9             	cmp    %ecx,%r9d
  404ec9:	41 89 c8             	mov    %ecx,%r8d
  404ecc:	45 0f 4d c1          	cmovge %r9d,%r8d
  404ed0:	45 39 c3             	cmp    %r8d,%r11d
  404ed3:	0f 8c 07 fc ff ff    	jl     404ae0 <printf_core+0x3e0>
  404ed9:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404ee0:	0f 85 e2 06 00 00    	jne    4055c8 <printf_core+0xec8>
  404ee6:	41 39 c9             	cmp    %ecx,%r9d
  404ee9:	0f 8e 40 07 00 00    	jle    40562f <printf_core+0xf2f>
  404eef:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404ef3:	44 89 c2             	mov    %r8d,%edx
  404ef6:	be 20 00 00 00       	mov    $0x20,%esi
  404efb:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404f01:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404f08:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404f0f:	e8 6c dd ff ff       	call   402c80 <pad.part.0>
  404f14:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404f18:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404f1f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404f26:	f6 00 20             	testb  $0x20,(%rax)
  404f29:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404f2f:	0f 84 07 07 00 00    	je     40563c <printf_core+0xf3c>
  404f35:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404f3c:	89 c1                	mov    %eax,%ecx
  404f3e:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404f41:	0f 8d a7 f8 ff ff    	jge    4047ee <printf_core+0xee>
  404f47:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404f4e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404f55:	8b 55 80             	mov    -0x80(%rbp),%edx
  404f58:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f5c:	be 30 00 00 00       	mov    $0x30,%esi
  404f61:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404f68:	e8 13 dd ff ff       	call   402c80 <pad.part.0>
  404f6d:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404f74:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404f78:	f6 00 20             	testb  $0x20,(%rax)
  404f7b:	75 1b                	jne    404f98 <printf_core+0x898>
  404f7d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404f81:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404f88:	4c 89 f7             	mov    %r14,%rdi
  404f8b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404f8f:	e8 8c 15 00 00       	call   406520 <__fwritex>
  404f94:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404f98:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404f9f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404fa6:	0f 85 42 f8 ff ff    	jne    4047ee <printf_core+0xee>
  404fac:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404fb3:	0f 85 35 f8 ff ff    	jne    4047ee <printf_core+0xee>
  404fb9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404fbd:	44 89 c2             	mov    %r8d,%edx
  404fc0:	be 20 00 00 00       	mov    $0x20,%esi
  404fc5:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404fc9:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404fcf:	e8 ac dc ff ff       	call   402c80 <pad.part.0>
  404fd4:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404fd8:	e9 11 f8 ff ff       	jmp    4047ee <printf_core+0xee>
  404fdd:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404fe1:	45 85 c0             	test   %r8d,%r8d
  404fe4:	79 0d                	jns    404ff3 <printf_core+0x8f3>
  404fe6:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404fed:	0f 85 ed fa ff ff    	jne    404ae0 <printf_core+0x3e0>
  404ff3:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404ffa:	41 89 d0             	mov    %edx,%r8d
  404ffd:	44 89 ce             	mov    %r9d,%esi
  405000:	44 89 e1             	mov    %r12d,%ecx
  405003:	ff 75 98             	push   -0x68(%rbp)
  405006:	ff 75 90             	push   -0x70(%rbp)
  405009:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40500d:	8b 55 80             	mov    -0x80(%rbp),%edx
  405010:	e8 6b dd ff ff       	call   402d80 <fmt_fp>
  405015:	5e                   	pop    %rsi
  405016:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40501d:	83 f8 ff             	cmp    $0xffffffff,%eax
  405020:	41 89 c0             	mov    %eax,%r8d
  405023:	5f                   	pop    %rdi
  405024:	0f 85 bb f7 ff ff    	jne    4047e5 <printf_core+0xe5>
  40502a:	e9 b1 fa ff ff       	jmp    404ae0 <printf_core+0x3e0>
  40502f:	90                   	nop
  405030:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405034:	48 85 f6             	test   %rsi,%rsi
  405037:	0f 88 4f 08 00 00    	js     40588c <printf_core+0x118c>
  40503d:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  405044:	0f 85 61 08 00 00    	jne    4058ab <printf_core+0x11ab>
  40504a:	41 f6 c4 01          	test   $0x1,%r12b
  40504e:	0f 85 7b 08 00 00    	jne    4058cf <printf_core+0x11cf>
  405054:	48 8d 3d 2f 21 00 00 	lea    0x212f(%rip),%rdi        # 40718a <_fini+0x206>
  40505b:	44 89 d0             	mov    %r10d,%eax
  40505e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405065:	48 85 f6             	test   %rsi,%rsi
  405068:	0f 84 55 08 00 00    	je     4058c3 <printf_core+0x11c3>
  40506e:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  405075:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405079:	89 c7                	mov    %eax,%edi
  40507b:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  405082:	cc cc cc 
  405085:	4d 89 c6             	mov    %r8,%r14
  405088:	90                   	nop
  405089:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405090:	00 00 00 00 
  405094:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40509b:	00 00 00 00 
  40509f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050a6:	00 00 00 00 
  4050aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050b1:	00 00 00 00 
  4050b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4050bc:	00 00 00 00 
  4050c0:	48 89 f0             	mov    %rsi,%rax
  4050c3:	49 83 ee 01          	sub    $0x1,%r14
  4050c7:	48 f7 e1             	mul    %rcx
  4050ca:	48 89 f0             	mov    %rsi,%rax
  4050cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4050d1:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  4050d5:	4d 01 d2             	add    %r10,%r10
  4050d8:	4c 29 d0             	sub    %r10,%rax
  4050db:	83 c0 30             	add    $0x30,%eax
  4050de:	48 83 fe 09          	cmp    $0x9,%rsi
  4050e2:	48 89 d6             	mov    %rdx,%rsi
  4050e5:	41 88 06             	mov    %al,(%r14)
  4050e8:	77 d6                	ja     4050c0 <printf_core+0x9c0>
  4050ea:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4050f1:	89 f8                	mov    %edi,%eax
  4050f3:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4050f6:	85 ff                	test   %edi,%edi
  4050f8:	79 0d                	jns    405107 <printf_core+0xa07>
  4050fa:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  405101:	0f 85 d9 f9 ff ff    	jne    404ae0 <printf_core+0x3e0>
  405107:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40510d:	44 89 e2             	mov    %r12d,%edx
  405110:	8b 75 80             	mov    -0x80(%rbp),%esi
  405113:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  405119:	85 c9                	test   %ecx,%ecx
  40511b:	44 0f 45 e2          	cmovne %edx,%r12d
  40511f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  405124:	0f 94 c2             	sete   %dl
  405127:	85 f6                	test   %esi,%esi
  405129:	75 08                	jne    405133 <printf_core+0xa33>
  40512b:	84 d2                	test   %dl,%dl
  40512d:	0f 85 e4 05 00 00    	jne    405717 <printf_core+0x1017>
  405133:	4c 89 c7             	mov    %r8,%rdi
  405136:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  40513a:	0f b6 d2             	movzbl %dl,%edx
  40513d:	4c 29 f7             	sub    %r14,%rdi
  405140:	48 01 fa             	add    %rdi,%rdx
  405143:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  40514a:	48 39 ca             	cmp    %rcx,%rdx
  40514d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  405151:	48 63 ca             	movslq %edx,%rcx
  405154:	48 39 cf             	cmp    %rcx,%rdi
  405157:	0f 4e fa             	cmovle %edx,%edi
  40515a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  40515f:	29 c2                	sub    %eax,%edx
  405161:	89 7d 80             	mov    %edi,-0x80(%rbp)
  405164:	39 fa                	cmp    %edi,%edx
  405166:	0f 8c 74 f9 ff ff    	jl     404ae0 <printf_core+0x3e0>
  40516c:	8b 7d 80             	mov    -0x80(%rbp),%edi
  40516f:	01 c7                	add    %eax,%edi
  405171:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  405177:	e9 44 fd ff ff       	jmp    404ec0 <printf_core+0x7c0>
  40517c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405180:	48 85 c0             	test   %rax,%rax
  405183:	0f 84 9a 02 00 00    	je     405423 <printf_core+0xd23>
  405189:	44 89 e7             	mov    %r12d,%edi
  40518c:	83 e7 08             	and    $0x8,%edi
  40518f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  405195:	89 d7                	mov    %edx,%edi
  405197:	83 e7 20             	and    $0x20,%edi
  40519a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  4051a0:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4051a4:	48 8d 35 45 21 00 00 	lea    0x2145(%rip),%rsi        # 4072f0 <xdigits>
  4051ab:	4d 89 c6             	mov    %r8,%r14
  4051ae:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4051b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4051bc:	00 00 00 00 
  4051c0:	48 89 c1             	mov    %rax,%rcx
  4051c3:	49 83 ee 01          	sub    $0x1,%r14
  4051c7:	83 e1 0f             	and    $0xf,%ecx
  4051ca:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  4051ce:	09 fa                	or     %edi,%edx
  4051d0:	48 c1 e8 04          	shr    $0x4,%rax
  4051d4:	41 88 16             	mov    %dl,(%r14)
  4051d7:	75 e7                	jne    4051c0 <printf_core+0xac0>
  4051d9:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  4051df:	85 c0                	test   %eax,%eax
  4051e1:	0f 85 f9 05 00 00    	jne    4057e0 <printf_core+0x10e0>
  4051e7:	48 8d 3d 9c 1f 00 00 	lea    0x1f9c(%rip),%rdi        # 40718a <_fini+0x206>
  4051ee:	44 89 d0             	mov    %r10d,%eax
  4051f1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4051f8:	e9 f6 fe ff ff       	jmp    4050f3 <printf_core+0x9f3>
  4051fd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405201:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405205:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40520c:	48 85 d2             	test   %rdx,%rdx
  40520f:	0f 84 06 07 00 00    	je     40591b <printf_core+0x121b>
  405215:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40521c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  405220:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  405227:	31 db                	xor    %ebx,%ebx
  405229:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  405230:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  405234:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40523b:	49 89 ce             	mov    %rcx,%r14
  40523e:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405242:	49 89 d5             	mov    %rdx,%r13
  405245:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40524c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405253:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40525a:	eb 34                	jmp    405290 <printf_core+0xb90>
  40525c:	0f 1f 40 00          	nopl   0x0(%rax)
  405260:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  405267:	e8 24 10 00 00       	call   406290 <wctomb>
  40526c:	85 c0                	test   %eax,%eax
  40526e:	0f 88 44 f7 ff ff    	js     4049b8 <printf_core+0x2b8>
  405274:	4c 89 ea             	mov    %r13,%rdx
  405277:	48 98                	cltq
  405279:	48 29 da             	sub    %rbx,%rdx
  40527c:	48 39 c2             	cmp    %rax,%rdx
  40527f:	72 16                	jb     405297 <printf_core+0xb97>
  405281:	48 01 c3             	add    %rax,%rbx
  405284:	4d 63 ec             	movslq %r12d,%r13
  405287:	49 83 c6 04          	add    $0x4,%r14
  40528b:	4c 39 eb             	cmp    %r13,%rbx
  40528e:	73 07                	jae    405297 <printf_core+0xb97>
  405290:	41 8b 36             	mov    (%r14),%esi
  405293:	85 f6                	test   %esi,%esi
  405295:	75 c9                	jne    405260 <printf_core+0xb60>
  405297:	49 89 de             	mov    %rbx,%r14
  40529a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4052a1:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  4052a8:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  4052af:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  4052b6:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  4052bd:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  4052c1:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  4052c8:	0f 87 12 f8 ff ff    	ja     404ae0 <printf_core+0x3e0>
  4052ce:	45 39 f1             	cmp    %r14d,%r9d
  4052d1:	44 89 f0             	mov    %r14d,%eax
  4052d4:	0f 9e c2             	setle  %dl
  4052d7:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4052de:	0f 95 c1             	setne  %cl
  4052e1:	08 d1                	or     %dl,%cl
  4052e3:	0f 84 5c 05 00 00    	je     405845 <printf_core+0x1145>
  4052e9:	4d 85 f6             	test   %r14,%r14
  4052ec:	0f 84 96 06 00 00    	je     405988 <printf_core+0x1288>
  4052f2:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  4052f6:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  4052fd:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405304:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40530b:	45 31 e4             	xor    %r12d,%r12d
  40530e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405315:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405319:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40531d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  405324:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  40532b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405331:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  405337:	eb 10                	jmp    405349 <printf_core+0xc49>
  405339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405340:	4d 39 f4             	cmp    %r14,%r12
  405343:	0f 83 46 03 00 00    	jae    40568f <printf_core+0xf8f>
  405349:	8b 33                	mov    (%rbx),%esi
  40534b:	85 f6                	test   %esi,%esi
  40534d:	0f 84 3c 03 00 00    	je     40568f <printf_core+0xf8f>
  405353:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405357:	e8 34 0f 00 00       	call   406290 <wctomb>
  40535c:	48 63 f0             	movslq %eax,%rsi
  40535f:	49 01 f4             	add    %rsi,%r12
  405362:	4d 39 e6             	cmp    %r12,%r14
  405365:	0f 82 24 03 00 00    	jb     40568f <printf_core+0xf8f>
  40536b:	48 83 c3 04          	add    $0x4,%rbx
  40536f:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  405374:	75 ca                	jne    405340 <printf_core+0xc40>
  405376:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  40537a:	4c 89 ea             	mov    %r13,%rdx
  40537d:	e8 9e 11 00 00       	call   406520 <__fwritex>
  405382:	eb bc                	jmp    405340 <printf_core+0xc40>
  405384:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405388:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40538c:	4d 89 c6             	mov    %r8,%r14
  40538f:	48 85 c0             	test   %rax,%rax
  405392:	74 21                	je     4053b5 <printf_core+0xcb5>
  405394:	90                   	nop
  405395:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40539c:	00 00 00 00 
  4053a0:	89 c2                	mov    %eax,%edx
  4053a2:	49 83 ee 01          	sub    $0x1,%r14
  4053a6:	83 e2 07             	and    $0x7,%edx
  4053a9:	83 c2 30             	add    $0x30,%edx
  4053ac:	48 c1 e8 03          	shr    $0x3,%rax
  4053b0:	41 88 16             	mov    %dl,(%r14)
  4053b3:	75 eb                	jne    4053a0 <printf_core+0xca0>
  4053b5:	41 f6 c4 08          	test   $0x8,%r12b
  4053b9:	0f 84 28 fe ff ff    	je     4051e7 <printf_core+0xae7>
  4053bf:	4c 89 c0             	mov    %r8,%rax
  4053c2:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  4053c6:	4c 29 f0             	sub    %r14,%rax
  4053c9:	48 39 d0             	cmp    %rdx,%rax
  4053cc:	0f 8c 15 fe ff ff    	jl     4051e7 <printf_core+0xae7>
  4053d2:	83 c0 01             	add    $0x1,%eax
  4053d5:	48 8d 3d ae 1d 00 00 	lea    0x1dae(%rip),%rdi        # 40718a <_fini+0x206>
  4053dc:	89 45 80             	mov    %eax,-0x80(%rbp)
  4053df:	44 89 d0             	mov    %r10d,%eax
  4053e2:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4053e9:	e9 05 fd ff ff       	jmp    4050f3 <printf_core+0x9f3>
  4053ee:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4053f1:	b8 10 00 00 00       	mov    $0x10,%eax
  4053f6:	ba 78 00 00 00       	mov    $0x78,%edx
  4053fb:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405402:	00 00 00 
  405405:	39 c7                	cmp    %eax,%edi
  405407:	0f 43 c7             	cmovae %edi,%eax
  40540a:	41 83 cc 08          	or     $0x8,%r12d
  40540e:	bf 20 00 00 00       	mov    $0x20,%edi
  405413:	89 45 80             	mov    %eax,-0x80(%rbp)
  405416:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40541a:	48 85 c0             	test   %rax,%rax
  40541d:	0f 85 77 fd ff ff    	jne    40519a <printf_core+0xa9a>
  405423:	48 8d 3d 60 1d 00 00 	lea    0x1d60(%rip),%rdi        # 40718a <_fini+0x206>
  40542a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40542e:	44 89 d0             	mov    %r10d,%eax
  405431:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405438:	4d 89 c6             	mov    %r8,%r14
  40543b:	e9 b3 fc ff ff       	jmp    4050f3 <printf_core+0x9f3>
  405440:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405444:	48 8d 05 49 1d 00 00 	lea    0x1d49(%rip),%rax        # 407194 <_fini+0x210>
  40544b:	4d 85 f6             	test   %r14,%r14
  40544e:	4c 0f 44 f0          	cmove  %rax,%r14
  405452:	8b 45 80             	mov    -0x80(%rbp),%eax
  405455:	85 c0                	test   %eax,%eax
  405457:	0f 88 36 03 00 00    	js     405793 <printf_core+0x1093>
  40545d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  405461:	4c 89 f7             	mov    %r14,%rdi
  405464:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40546b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405472:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405479:	e8 82 07 00 00       	call   405c00 <strnlen>
  40547e:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405485:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40548c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405493:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405497:	4c 29 f2             	sub    %r14,%rdx
  40549a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40549d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4054a4:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  4054ab:	48 89 d7             	mov    %rdx,%rdi
  4054ae:	48 63 d0             	movslq %eax,%rdx
  4054b1:	48 39 d7             	cmp    %rdx,%rdi
  4054b4:	0f 8e b9 01 00 00    	jle    405673 <printf_core+0xf73>
  4054ba:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4054c1:	e9 d3 f9 ff ff       	jmp    404e99 <printf_core+0x799>
  4054c6:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4054ca:	48 85 f6             	test   %rsi,%rsi
  4054cd:	0f 85 46 03 00 00    	jne    405819 <printf_core+0x1119>
  4054d3:	48 8d 3d b0 1c 00 00 	lea    0x1cb0(%rip),%rdi        # 40718a <_fini+0x206>
  4054da:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  4054de:	44 89 d0             	mov    %r10d,%eax
  4054e1:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4054e8:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4054ef:	00 00 00 
  4054f2:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  4054f6:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4054fd:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405504:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40550b:	01 00 00 00 
  40550f:	e9 ac f9 ff ff       	jmp    404ec0 <printf_core+0x7c0>
  405514:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40551b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405522:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405529:	e8 62 0b 00 00       	call   406090 <__errno_location>
  40552e:	8b 38                	mov    (%rax),%edi
  405530:	e8 ab 0b 00 00       	call   4060e0 <strerror>
  405535:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  40553c:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405543:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40554a:	49 89 c6             	mov    %rax,%r14
  40554d:	e9 00 ff ff ff       	jmp    405452 <printf_core+0xd52>
  405552:	83 f8 07             	cmp    $0x7,%eax
  405555:	0f 87 93 f2 ff ff    	ja     4047ee <printf_core+0xee>
  40555b:	48 8d 15 62 1d 00 00 	lea    0x1d62(%rip),%rdx        # 4072c4 <_fini+0x340>
  405562:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  405566:	48 01 d0             	add    %rdx,%rax
  405569:	3e ff e0             	notrack jmp *%rax
  40556c:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  405570:	49 63 c5             	movslq %r13d,%rax
  405573:	48 89 02             	mov    %rax,(%rdx)
  405576:	e9 73 f2 ff ff       	jmp    4047ee <printf_core+0xee>
  40557b:	48 8d 3d 08 1c 00 00 	lea    0x1c08(%rip),%rdi        # 40718a <_fini+0x206>
  405582:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405586:	44 89 d0             	mov    %r10d,%eax
  405589:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405590:	e9 d0 fa ff ff       	jmp    405065 <printf_core+0x965>
  405595:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405599:	e9 35 ff ff ff       	jmp    4054d3 <printf_core+0xdd3>
  40559e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4055a2:	44 89 28             	mov    %r13d,(%rax)
  4055a5:	e9 44 f2 ff ff       	jmp    4047ee <printf_core+0xee>
  4055aa:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4055ae:	66 44 89 28          	mov    %r13w,(%rax)
  4055b2:	e9 37 f2 ff ff       	jmp    4047ee <printf_core+0xee>
  4055b7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4055bb:	44 88 28             	mov    %r13b,(%rax)
  4055be:	e9 2b f2 ff ff       	jmp    4047ee <printf_core+0xee>
  4055c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4055c8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4055cc:	f6 07 20             	testb  $0x20,(%rdi)
  4055cf:	74 6b                	je     40563c <printf_core+0xf3c>
  4055d1:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  4055d7:	44 89 e0             	mov    %r12d,%eax
  4055da:	41 39 c9             	cmp    %ecx,%r9d
  4055dd:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  4055e4:	35 00 00 01 00       	xor    $0x10000,%eax
  4055e9:	a9 00 20 01 00       	test   $0x12000,%eax
  4055ee:	75 28                	jne    405618 <printf_core+0xf18>
  4055f0:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  4055f7:	75 1f                	jne    405618 <printf_core+0xf18>
  4055f9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4055fd:	44 89 c2             	mov    %r8d,%edx
  405600:	be 30 00 00 00       	mov    $0x30,%esi
  405605:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40560c:	e8 6f d6 ff ff       	call   402c80 <pad.part.0>
  405611:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405618:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40561f:	89 c1                	mov    %eax,%ecx
  405621:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405624:	0f 8d 4a f9 ff ff    	jge    404f74 <printf_core+0x874>
  40562a:	e9 26 f9 ff ff       	jmp    404f55 <printf_core+0x855>
  40562f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405633:	f6 07 20             	testb  $0x20,(%rdi)
  405636:	0f 85 f9 f8 ff ff    	jne    404f35 <printf_core+0x835>
  40563c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405640:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405647:	48 63 f0             	movslq %eax,%rsi
  40564a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405651:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405658:	e8 c3 0e 00 00       	call   406520 <__fwritex>
  40565d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  405664:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  40566b:	e9 61 ff ff ff       	jmp    4055d1 <printf_core+0xed1>
  405670:	8b 45 80             	mov    -0x80(%rbp),%eax
  405673:	48 8d 3d 10 1b 00 00 	lea    0x1b10(%rip),%rdi        # 40718a <_fini+0x206>
  40567a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405680:	44 89 d0             	mov    %r10d,%eax
  405683:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40568a:	e9 31 f8 ff ff       	jmp    404ec0 <printf_core+0x7c0>
  40568f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405696:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40569d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  4056a4:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  4056ab:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  4056b1:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  4056b8:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  4056bf:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  4056c6:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  4056cd:	75 39                	jne    405708 <printf_core+0x1008>
  4056cf:	84 d2                	test   %dl,%dl
  4056d1:	75 35                	jne    405708 <printf_core+0x1008>
  4056d3:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4056d7:	89 c1                	mov    %eax,%ecx
  4056d9:	44 89 ca             	mov    %r9d,%edx
  4056dc:	be 20 00 00 00       	mov    $0x20,%esi
  4056e1:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4056e8:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4056ee:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4056f2:	e8 89 d5 ff ff       	call   402c80 <pad.part.0>
  4056f7:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4056fe:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405704:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405708:	41 39 c1             	cmp    %eax,%r9d
  40570b:	41 0f 4d c1          	cmovge %r9d,%eax
  40570f:	41 89 c0             	mov    %eax,%r8d
  405712:	e9 ce f0 ff ff       	jmp    4047e5 <printf_core+0xe5>
  405717:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40571d:	4d 89 c6             	mov    %r8,%r14
  405720:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  405724:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  40572b:	00 00 00 00 
  40572f:	e9 8c f7 ff ff       	jmp    404ec0 <printf_core+0x7c0>
  405734:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40573b:	00 00 00 
  40573e:	48 83 c3 01          	add    $0x1,%rbx
  405742:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405749:	e9 f1 f1 ff ff       	jmp    40493f <printf_core+0x23f>
  40574e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405755:	45 89 d1             	mov    %r10d,%r9d
  405758:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40575f:	00 00 00 
  405762:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  405769:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  40576d:	e9 c9 f2 ff ff       	jmp    404a3b <printf_core+0x33b>
  405772:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405779:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40577d:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405784:	00 00 00 
  405787:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40578e:	e9 53 f6 ff ff       	jmp    404de6 <printf_core+0x6e6>
  405793:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405798:	4c 89 f7             	mov    %r14,%rdi
  40579b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40579f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  4057a6:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4057ad:	e8 4e 04 00 00       	call   405c00 <strnlen>
  4057b2:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4057b6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4057bd:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  4057c1:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  4057c8:	80 3a 00             	cmpb   $0x0,(%rdx)
  4057cb:	0f 84 c6 fc ff ff    	je     405497 <printf_core+0xd97>
  4057d1:	e9 0a f3 ff ff       	jmp    404ae0 <printf_core+0x3e0>
  4057d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4057dd:	00 00 00 
  4057e0:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  4057e6:	48 8d 15 9d 19 00 00 	lea    0x199d(%rip),%rdx        # 40718a <_fini+0x206>
  4057ed:	c1 f8 04             	sar    $0x4,%eax
  4057f0:	48 98                	cltq
  4057f2:	48 01 d0             	add    %rdx,%rax
  4057f5:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4057fc:	b8 02 00 00 00       	mov    $0x2,%eax
  405801:	e9 ed f8 ff ff       	jmp    4050f3 <printf_core+0x9f3>
  405806:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40580a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405811:	00 00 00 
  405814:	e9 26 f1 ff ff       	jmp    40493f <printf_core+0x23f>
  405819:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40581d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  405820:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  405827:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  40582e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  405832:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  405839:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405840:	e9 d0 f9 ff ff       	jmp    405215 <printf_core+0xb15>
  405845:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405849:	44 89 ca             	mov    %r9d,%edx
  40584c:	44 89 f1             	mov    %r14d,%ecx
  40584f:	be 20 00 00 00       	mov    $0x20,%esi
  405854:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40585b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40585f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  405866:	e8 15 d4 ff ff       	call   402c80 <pad.part.0>
  40586b:	4d 85 f6             	test   %r14,%r14
  40586e:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405872:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405878:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  40587f:	0f 84 83 fe ff ff    	je     405708 <printf_core+0x1008>
  405885:	31 d2                	xor    %edx,%edx
  405887:	e9 66 fa ff ff       	jmp    4052f2 <printf_core+0xbf2>
  40588c:	48 f7 de             	neg    %rsi
  40588f:	48 8d 3d f4 18 00 00 	lea    0x18f4(%rip),%rdi        # 40718a <_fini+0x206>
  405896:	b8 01 00 00 00       	mov    $0x1,%eax
  40589b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40589f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4058a6:	e9 c3 f7 ff ff       	jmp    40506e <printf_core+0x96e>
  4058ab:	48 8d 3d d9 18 00 00 	lea    0x18d9(%rip),%rdi        # 40718b <_fini+0x207>
  4058b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4058b7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4058be:	e9 a2 f7 ff ff       	jmp    405065 <printf_core+0x965>
  4058c3:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4058c7:	4d 89 c6             	mov    %r8,%r14
  4058ca:	e9 24 f8 ff ff       	jmp    4050f3 <printf_core+0x9f3>
  4058cf:	48 8d 3d b6 18 00 00 	lea    0x18b6(%rip),%rdi        # 40718c <_fini+0x208>
  4058d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4058db:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4058e2:	e9 7e f7 ff ff       	jmp    405065 <printf_core+0x965>
  4058e7:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  4058ee:	eb 1e                	jmp    40590e <printf_core+0x120e>
  4058f0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4058f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4058fc:	00 00 00 00 
  405900:	49 83 c0 01          	add    $0x1,%r8
  405904:	49 83 f8 0a          	cmp    $0xa,%r8
  405908:	0f 84 5c f5 ff ff    	je     404e6a <printf_core+0x76a>
  40590e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405912:	85 d2                	test   %edx,%edx
  405914:	74 ea                	je     405900 <printf_core+0x1200>
  405916:	e9 92 f0 ff ff       	jmp    4049ad <printf_core+0x2ad>
  40591b:	45 85 c9             	test   %r9d,%r9d
  40591e:	0f 94 c0             	sete   %al
  405921:	89 c2                	mov    %eax,%edx
  405923:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40592a:	75 5c                	jne    405988 <printf_core+0x1288>
  40592c:	84 c0                	test   %al,%al
  40592e:	75 58                	jne    405988 <printf_core+0x1288>
  405930:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405934:	44 89 ca             	mov    %r9d,%edx
  405937:	31 c9                	xor    %ecx,%ecx
  405939:	be 20 00 00 00       	mov    $0x20,%esi
  40593e:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405945:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405949:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405950:	e8 2b d3 ff ff       	call   402c80 <pad.part.0>
  405955:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40595b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  40595f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405966:	e9 9d fd ff ff       	jmp    405708 <printf_core+0x1008>
  40596b:	45 31 db             	xor    %r11d,%r11d
  40596e:	e9 4b f0 ff ff       	jmp    4049be <printf_core+0x2be>
  405973:	e8 28 cf ff ff       	call   4028a0 <__stack_chk_fail>
  405978:	48 89 da             	mov    %rbx,%rdx
  40597b:	e9 7b f0 ff ff       	jmp    4049fb <printf_core+0x2fb>
  405980:	48 89 d8             	mov    %rbx,%rax
  405983:	e9 31 f3 ff ff       	jmp    404cb9 <printf_core+0x5b9>
  405988:	44 89 d0             	mov    %r10d,%eax
  40598b:	e9 2f fd ff ff       	jmp    4056bf <printf_core+0xfbf>

0000000000405990 <vfprintf>:
  405990:	f3 0f 1e fa          	endbr64
  405994:	55                   	push   %rbp
  405995:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405999:	48 89 e5             	mov    %rsp,%rbp
  40599c:	41 57                	push   %r15
  40599e:	41 56                	push   %r14
  4059a0:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  4059a7:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4059ae:	41 55                	push   %r13
  4059b0:	4c 89 f1             	mov    %r14,%rcx
  4059b3:	49 89 fd             	mov    %rdi,%r13
  4059b6:	31 ff                	xor    %edi,%edi
  4059b8:	41 54                	push   %r12
  4059ba:	53                   	push   %rbx
  4059bb:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  4059c2:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  4059c9:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  4059d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4059d7:	00 00 
  4059d9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4059dd:	31 c0                	xor    %eax,%eax
  4059df:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  4059e6:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4059ed:	00 00 00 00 
  4059f1:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  4059f8:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4059ff:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405a03:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  405a0a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  405a0e:	48 89 da             	mov    %rbx,%rdx
  405a11:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405a18:	e8 e3 ec ff ff       	call   404700 <printf_core>
  405a1d:	85 c0                	test   %eax,%eax
  405a1f:	0f 88 68 01 00 00    	js     405b8d <vfprintf+0x1fd>
  405a25:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  405a2c:	31 db                	xor    %ebx,%ebx
  405a2e:	85 c0                	test   %eax,%eax
  405a30:	78 0a                	js     405a3c <vfprintf+0xac>
  405a32:	4c 89 ef             	mov    %r13,%rdi
  405a35:	e8 86 08 00 00       	call   4062c0 <__lockfile>
  405a3a:	89 c3                	mov    %eax,%ebx
  405a3c:	41 8b 45 00          	mov    0x0(%r13),%eax
  405a40:	89 c1                	mov    %eax,%ecx
  405a42:	83 e0 df             	and    $0xffffffdf,%eax
  405a45:	83 e1 20             	and    $0x20,%ecx
  405a48:	41 89 45 00          	mov    %eax,0x0(%r13)
  405a4c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405a52:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405a57:	74 77                	je     405ad0 <vfprintf+0x140>
  405a59:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  405a5e:	0f 84 39 01 00 00    	je     405b9d <vfprintf+0x20d>
  405a64:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405a6b:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405a72:	4c 89 f1             	mov    %r14,%rcx
  405a75:	4c 89 ef             	mov    %r13,%rdi
  405a78:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405a7f:	e8 7c ec ff ff       	call   404700 <printf_core>
  405a84:	41 89 c4             	mov    %eax,%r12d
  405a87:	41 8b 45 00          	mov    0x0(%r13),%eax
  405a8b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405a90:	a8 20                	test   $0x20,%al
  405a92:	44 0f 45 e2          	cmovne %edx,%r12d
  405a96:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  405a9c:	41 89 45 00          	mov    %eax,0x0(%r13)
  405aa0:	85 db                	test   %ebx,%ebx
  405aa2:	0f 85 d8 00 00 00    	jne    405b80 <vfprintf+0x1f0>
  405aa8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405aac:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405ab3:	00 00 
  405ab5:	0f 85 dd 00 00 00    	jne    405b98 <vfprintf+0x208>
  405abb:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405ac2:	44 89 e0             	mov    %r12d,%eax
  405ac5:	5b                   	pop    %rbx
  405ac6:	41 5c                	pop    %r12
  405ac8:	41 5d                	pop    %r13
  405aca:	41 5e                	pop    %r14
  405acc:	41 5f                	pop    %r15
  405ace:	5d                   	pop    %rbp
  405acf:	c3                   	ret
  405ad0:	49 8b 45 58          	mov    0x58(%r13),%rax
  405ad4:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405adb:	00 
  405adc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405ae0:	4c 89 ef             	mov    %r13,%rdi
  405ae3:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405aea:	00 
  405aeb:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405af1:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405af8:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405aff:	49 89 45 58          	mov    %rax,0x58(%r13)
  405b03:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405b08:	e8 a3 09 00 00       	call   4064b0 <__towrite>
  405b0d:	85 c0                	test   %eax,%eax
  405b0f:	75 23                	jne    405b34 <vfprintf+0x1a4>
  405b11:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405b18:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405b1f:	4c 89 f1             	mov    %r14,%rcx
  405b22:	4c 89 ef             	mov    %r13,%rdi
  405b25:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405b2c:	e8 cf eb ff ff       	call   404700 <printf_core>
  405b31:	41 89 c4             	mov    %eax,%r12d
  405b34:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405b3b:	4d 85 f6             	test   %r14,%r14
  405b3e:	0f 84 43 ff ff ff    	je     405a87 <vfprintf+0xf7>
  405b44:	31 d2                	xor    %edx,%edx
  405b46:	31 f6                	xor    %esi,%esi
  405b48:	4c 89 ef             	mov    %r13,%rdi
  405b4b:	41 ff 55 48          	call   *0x48(%r13)
  405b4f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405b54:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405b58:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405b5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405b61:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405b68:	00 
  405b69:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405b70:	00 
  405b71:	44 0f 44 e0          	cmove  %eax,%r12d
  405b75:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405b7a:	e9 08 ff ff ff       	jmp    405a87 <vfprintf+0xf7>
  405b7f:	90                   	nop
  405b80:	4c 89 ef             	mov    %r13,%rdi
  405b83:	e8 f8 07 00 00       	call   406380 <__unlockfile>
  405b88:	e9 1b ff ff ff       	jmp    405aa8 <vfprintf+0x118>
  405b8d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b93:	e9 10 ff ff ff       	jmp    405aa8 <vfprintf+0x118>
  405b98:	e8 03 cd ff ff       	call   4028a0 <__stack_chk_fail>
  405b9d:	4c 89 ef             	mov    %r13,%rdi
  405ba0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405ba6:	e8 05 09 00 00       	call   4064b0 <__towrite>
  405bab:	85 c0                	test   %eax,%eax
  405bad:	0f 85 d4 fe ff ff    	jne    405a87 <vfprintf+0xf7>
  405bb3:	e9 ac fe ff ff       	jmp    405a64 <vfprintf+0xd4>
  405bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405bbf:	00 

0000000000405bc0 <vsprintf>:
  405bc0:	f3 0f 1e fa          	endbr64
  405bc4:	48 89 d1             	mov    %rdx,%rcx
  405bc7:	48 89 f2             	mov    %rsi,%rdx
  405bca:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405bcf:	e9 bc 0b 00 00       	jmp    406790 <vsnprintf>
  405bd4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405bdb:	00 00 00 
  405bde:	66 90                	xchg   %ax,%ax

0000000000405be0 <strcpy>:
  405be0:	f3 0f 1e fa          	endbr64
  405be4:	55                   	push   %rbp
  405be5:	48 89 e5             	mov    %rsp,%rbp
  405be8:	53                   	push   %rbx
  405be9:	48 89 fb             	mov    %rdi,%rbx
  405bec:	48 83 ec 08          	sub    $0x8,%rsp
  405bf0:	e8 8b 0d 00 00       	call   406980 <__stpcpy>
  405bf5:	48 89 d8             	mov    %rbx,%rax
  405bf8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405bfc:	c9                   	leave
  405bfd:	c3                   	ret
  405bfe:	66 90                	xchg   %ax,%ax

0000000000405c00 <strnlen>:
  405c00:	f3 0f 1e fa          	endbr64
  405c04:	55                   	push   %rbp
  405c05:	48 89 f2             	mov    %rsi,%rdx
  405c08:	48 89 e5             	mov    %rsp,%rbp
  405c0b:	41 54                	push   %r12
  405c0d:	49 89 fc             	mov    %rdi,%r12
  405c10:	53                   	push   %rbx
  405c11:	48 89 f3             	mov    %rsi,%rbx
  405c14:	31 f6                	xor    %esi,%esi
  405c16:	e8 25 0c 00 00       	call   406840 <memchr>
  405c1b:	48 89 c2             	mov    %rax,%rdx
  405c1e:	4c 29 e0             	sub    %r12,%rax
  405c21:	48 85 d2             	test   %rdx,%rdx
  405c24:	48 0f 44 c3          	cmove  %rbx,%rax
  405c28:	5b                   	pop    %rbx
  405c29:	41 5c                	pop    %r12
  405c2b:	5d                   	pop    %rbp
  405c2c:	c3                   	ret

0000000000405c2d <memcpy>:
  405c2d:	48 89 f8             	mov    %rdi,%rax
  405c30:	48 83 fa 08          	cmp    $0x8,%rdx
  405c34:	72 14                	jb     405c4a <memcpy+0x1d>
  405c36:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405c3c:	74 0c                	je     405c4a <memcpy+0x1d>
  405c3e:	a4                   	movsb  (%rsi),(%rdi)
  405c3f:	48 ff ca             	dec    %rdx
  405c42:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405c48:	75 f4                	jne    405c3e <memcpy+0x11>
  405c4a:	48 89 d1             	mov    %rdx,%rcx
  405c4d:	48 c1 e9 03          	shr    $0x3,%rcx
  405c51:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405c54:	83 e2 07             	and    $0x7,%edx
  405c57:	74 05                	je     405c5e <memcpy+0x31>
  405c59:	a4                   	movsb  (%rsi),(%rdi)
  405c5a:	ff ca                	dec    %edx
  405c5c:	75 fb                	jne    405c59 <memcpy+0x2c>
  405c5e:	c3                   	ret

0000000000405c5f <memset>:
  405c5f:	48 0f b6 c6          	movzbq %sil,%rax
  405c63:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405c6a:	01 01 01 
  405c6d:	49 0f af c0          	imul   %r8,%rax
  405c71:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405c75:	77 78                	ja     405cef <memset+0x90>
  405c77:	85 d2                	test   %edx,%edx
  405c79:	74 70                	je     405ceb <memset+0x8c>
  405c7b:	40 88 37             	mov    %sil,(%rdi)
  405c7e:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405c83:	83 fa 02             	cmp    $0x2,%edx
  405c86:	76 63                	jbe    405ceb <memset+0x8c>
  405c88:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405c8c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405c91:	83 fa 06             	cmp    $0x6,%edx
  405c94:	76 55                	jbe    405ceb <memset+0x8c>
  405c96:	89 47 03             	mov    %eax,0x3(%rdi)
  405c99:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405c9d:	83 fa 0e             	cmp    $0xe,%edx
  405ca0:	76 49                	jbe    405ceb <memset+0x8c>
  405ca2:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405ca6:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405cab:	83 fa 1e             	cmp    $0x1e,%edx
  405cae:	76 3b                	jbe    405ceb <memset+0x8c>
  405cb0:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405cb4:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405cb8:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405cbd:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405cc2:	83 fa 3e             	cmp    $0x3e,%edx
  405cc5:	76 24                	jbe    405ceb <memset+0x8c>
  405cc7:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405ccb:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405ccf:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405cd3:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405cd7:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405cdc:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405ce1:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405ce6:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405ceb:	48 89 f8             	mov    %rdi,%rax
  405cee:	c3                   	ret
  405cef:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405cf5:	49 89 f8             	mov    %rdi,%r8
  405cf8:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405cfd:	48 89 d1             	mov    %rdx,%rcx
  405d00:	75 0b                	jne    405d0d <memset+0xae>
  405d02:	48 c1 e9 03          	shr    $0x3,%rcx
  405d06:	f3 48 ab             	rep stos %rax,(%rdi)
  405d09:	4c 89 c0             	mov    %r8,%rax
  405d0c:	c3                   	ret
  405d0d:	31 d2                	xor    %edx,%edx
  405d0f:	29 fa                	sub    %edi,%edx
  405d11:	83 e2 0f             	and    $0xf,%edx
  405d14:	48 89 07             	mov    %rax,(%rdi)
  405d17:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405d1b:	48 29 d1             	sub    %rdx,%rcx
  405d1e:	48 01 d7             	add    %rdx,%rdi
  405d21:	eb df                	jmp    405d02 <memset+0xa3>
  405d23:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405d2a:	00 00 00 
  405d2d:	0f 1f 00             	nopl   (%rax)

0000000000405d30 <__init_tp>:
  405d30:	f3 0f 1e fa          	endbr64
  405d34:	55                   	push   %rbp
  405d35:	48 89 e5             	mov    %rsp,%rbp
  405d38:	53                   	push   %rbx
  405d39:	48 89 fb             	mov    %rdi,%rbx
  405d3c:	48 83 ec 08          	sub    $0x8,%rsp
  405d40:	48 89 3f             	mov    %rdi,(%rdi)
  405d43:	e8 21 0d 00 00       	call   406a69 <__set_thread_area>
  405d48:	85 c0                	test   %eax,%eax
  405d4a:	78 65                	js     405db1 <__init_tp+0x81>
  405d4c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405d51:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405d55:	74 51                	je     405da8 <__init_tp+0x78>
  405d57:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405d5e:	b8 da 00 00 00       	mov    $0xda,%eax
  405d63:	48 8d 3d 26 4a 00 00 	lea    0x4a26(%rip),%rdi        # 40a790 <__thread_list_lock>
  405d6a:	0f 05                	syscall
  405d6c:	89 43 30             	mov    %eax,0x30(%rbx)
  405d6f:	48 8d 05 22 44 00 00 	lea    0x4422(%rip),%rax        # 40a198 <__libc+0x38>
  405d76:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405d7d:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405d84:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405d8b:	48 8b 05 9e 43 00 00 	mov    0x439e(%rip),%rax        # 40a130 <__sysinfo>
  405d92:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405d96:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405d9a:	31 c0                	xor    %eax,%eax
  405d9c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405da0:	c9                   	leave
  405da1:	c3                   	ret
  405da2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405da8:	c6 05 b1 43 00 00 01 	movb   $0x1,0x43b1(%rip)        # 40a160 <__libc>
  405daf:	eb a6                	jmp    405d57 <__init_tp+0x27>
  405db1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405db6:	eb e4                	jmp    405d9c <__init_tp+0x6c>
  405db8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405dbf:	00 

0000000000405dc0 <__copy_tls>:
  405dc0:	f3 0f 1e fa          	endbr64
  405dc4:	55                   	push   %rbp
  405dc5:	48 8b 05 ac 43 00 00 	mov    0x43ac(%rip),%rax        # 40a178 <__libc+0x18>
  405dcc:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405dd3:	ff 
  405dd4:	48 89 e5             	mov    %rsp,%rbp
  405dd7:	41 56                	push   %r14
  405dd9:	49 89 fe             	mov    %rdi,%r14
  405ddc:	41 55                	push   %r13
  405dde:	4c 8b 2d 9b 43 00 00 	mov    0x439b(%rip),%r13        # 40a180 <__libc+0x20>
  405de5:	41 54                	push   %r12
  405de7:	53                   	push   %rbx
  405de8:	48 8b 1d 81 43 00 00 	mov    0x4381(%rip),%rbx        # 40a170 <__libc+0x10>
  405def:	49 f7 dd             	neg    %r13
  405df2:	49 21 c5             	and    %rax,%r13
  405df5:	48 85 db             	test   %rbx,%rbx
  405df8:	74 32                	je     405e2c <__copy_tls+0x6c>
  405dfa:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405dfe:	66 90                	xchg   %ax,%ax
  405e00:	4c 89 e8             	mov    %r13,%rax
  405e03:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405e07:	4c 89 ef             	mov    %r13,%rdi
  405e0a:	49 83 c4 08          	add    $0x8,%r12
  405e0e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405e13:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405e17:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405e1b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405e1f:	e8 09 fe ff ff       	call   405c2d <memcpy>
  405e24:	48 8b 1b             	mov    (%rbx),%rbx
  405e27:	48 85 db             	test   %rbx,%rbx
  405e2a:	75 d4                	jne    405e00 <__copy_tls+0x40>
  405e2c:	48 8b 05 55 43 00 00 	mov    0x4355(%rip),%rax        # 40a188 <__libc+0x28>
  405e33:	49 89 06             	mov    %rax,(%r14)
  405e36:	4c 89 e8             	mov    %r13,%rax
  405e39:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405e3d:	5b                   	pop    %rbx
  405e3e:	41 5c                	pop    %r12
  405e40:	41 5d                	pop    %r13
  405e42:	41 5e                	pop    %r14
  405e44:	5d                   	pop    %rbp
  405e45:	c3                   	ret
  405e46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e4d:	00 00 00 

0000000000405e50 <__init_tls>:
  405e50:	f3 0f 1e fa          	endbr64
  405e54:	55                   	push   %rbp
  405e55:	48 89 e5             	mov    %rsp,%rbp
  405e58:	53                   	push   %rbx
  405e59:	48 83 ec 08          	sub    $0x8,%rsp
  405e5d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405e61:	48 85 c9             	test   %rcx,%rcx
  405e64:	0f 84 fe 01 00 00    	je     406068 <__init_tls+0x218>
  405e6a:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405e6e:	31 f6                	xor    %esi,%esi
  405e70:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405e74:	45 31 c0             	xor    %r8d,%r8d
  405e77:	4c 89 d0             	mov    %r10,%rax
  405e7a:	eb 29                	jmp    405ea5 <__init_tls+0x55>
  405e7c:	0f 1f 40 00          	nopl   0x0(%rax)
  405e80:	83 fa 02             	cmp    $0x2,%edx
  405e83:	0f 85 77 01 00 00    	jne    406000 <__init_tls+0x1b0>
  405e89:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405e90:	48 85 d2             	test   %rdx,%rdx
  405e93:	74 07                	je     405e9c <__init_tls+0x4c>
  405e95:	48 89 d6             	mov    %rdx,%rsi
  405e98:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405e9c:	48 01 f8             	add    %rdi,%rax
  405e9f:	48 83 e9 01          	sub    $0x1,%rcx
  405ea3:	74 17                	je     405ebc <__init_tls+0x6c>
  405ea5:	8b 10                	mov    (%rax),%edx
  405ea7:	83 fa 06             	cmp    $0x6,%edx
  405eaa:	75 d4                	jne    405e80 <__init_tls+0x30>
  405eac:	4c 89 d6             	mov    %r10,%rsi
  405eaf:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405eb3:	48 01 f8             	add    %rdi,%rax
  405eb6:	48 83 e9 01          	sub    $0x1,%rcx
  405eba:	75 e9                	jne    405ea5 <__init_tls+0x55>
  405ebc:	4d 85 c0             	test   %r8,%r8
  405ebf:	0f 84 a3 01 00 00    	je     406068 <__init_tls+0x218>
  405ec5:	49 8b 40 20          	mov    0x20(%r8),%rax
  405ec9:	49 03 70 10          	add    0x10(%r8),%rsi
  405ecd:	48 8d 1d 2c 47 00 00 	lea    0x472c(%rip),%rbx        # 40a600 <main_tls>
  405ed4:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405ed8:	48 89 35 29 47 00 00 	mov    %rsi,0x4729(%rip)        # 40a608 <main_tls+0x8>
  405edf:	48 89 05 2a 47 00 00 	mov    %rax,0x472a(%rip)        # 40a610 <main_tls+0x10>
  405ee6:	49 8b 40 30          	mov    0x30(%r8),%rax
  405eea:	48 c7 05 93 42 00 00 	movq   $0x1,0x4293(%rip)        # 40a188 <__libc+0x28>
  405ef1:	01 00 00 00 
  405ef5:	48 89 05 24 47 00 00 	mov    %rax,0x4724(%rip)        # 40a620 <main_tls+0x20>
  405efc:	48 89 1d 6d 42 00 00 	mov    %rbx,0x426d(%rip)        # 40a170 <__libc+0x10>
  405f03:	48 01 d6             	add    %rdx,%rsi
  405f06:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405f0a:	48 f7 de             	neg    %rsi
  405f0d:	48 21 ce             	and    %rcx,%rsi
  405f10:	48 01 d6             	add    %rdx,%rsi
  405f13:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405f1a:	48 89 35 f7 46 00 00 	mov    %rsi,0x46f7(%rip)        # 40a618 <main_tls+0x18>
  405f21:	48 89 35 00 47 00 00 	mov    %rsi,0x4700(%rip)        # 40a628 <main_tls+0x28>
  405f28:	48 83 f8 07          	cmp    $0x7,%rax
  405f2c:	77 15                	ja     405f43 <__init_tls+0xf3>
  405f2e:	48 c7 05 e7 46 00 00 	movq   $0x8,0x46e7(%rip)        # 40a620 <main_tls+0x20>
  405f35:	08 00 00 00 
  405f39:	ba e7 00 00 00       	mov    $0xe7,%edx
  405f3e:	b8 08 00 00 00       	mov    $0x8,%eax
  405f43:	48 01 d6             	add    %rdx,%rsi
  405f46:	48 89 05 33 42 00 00 	mov    %rax,0x4233(%rip)        # 40a180 <__libc+0x20>
  405f4d:	48 8d 3d ec 46 00 00 	lea    0x46ec(%rip),%rdi        # 40a640 <builtin_tls>
  405f54:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405f58:	48 89 35 19 42 00 00 	mov    %rsi,0x4219(%rip)        # 40a178 <__libc+0x18>
  405f5f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405f66:	76 21                	jbe    405f89 <__init_tls+0x139>
  405f68:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405f6e:	45 31 c9             	xor    %r9d,%r9d
  405f71:	b8 09 00 00 00       	mov    $0x9,%eax
  405f76:	31 ff                	xor    %edi,%edi
  405f78:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405f7f:	ba 03 00 00 00       	mov    $0x3,%edx
  405f84:	0f 05                	syscall
  405f86:	48 89 c7             	mov    %rax,%rdi
  405f89:	e8 32 fe ff ff       	call   405dc0 <__copy_tls>
  405f8e:	48 89 00             	mov    %rax,(%rax)
  405f91:	48 89 c7             	mov    %rax,%rdi
  405f94:	48 89 c3             	mov    %rax,%rbx
  405f97:	e8 cd 0a 00 00       	call   406a69 <__set_thread_area>
  405f9c:	85 c0                	test   %eax,%eax
  405f9e:	0f 88 b8 00 00 00    	js     40605c <__init_tls+0x20c>
  405fa4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405fa9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405fad:	0f 84 9d 00 00 00    	je     406050 <__init_tls+0x200>
  405fb3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405fba:	b8 da 00 00 00       	mov    $0xda,%eax
  405fbf:	48 8d 3d ca 47 00 00 	lea    0x47ca(%rip),%rdi        # 40a790 <__thread_list_lock>
  405fc6:	0f 05                	syscall
  405fc8:	89 43 30             	mov    %eax,0x30(%rbx)
  405fcb:	48 8d 05 c6 41 00 00 	lea    0x41c6(%rip),%rax        # 40a198 <__libc+0x38>
  405fd2:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405fd9:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405fe0:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405fe7:	48 8b 05 42 41 00 00 	mov    0x4142(%rip),%rax        # 40a130 <__sysinfo>
  405fee:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405ff2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405ff6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405ffa:	c9                   	leave
  405ffb:	c3                   	ret
  405ffc:	0f 1f 40 00          	nopl   0x0(%rax)
  406000:	83 fa 07             	cmp    $0x7,%edx
  406003:	75 0b                	jne    406010 <__init_tls+0x1c0>
  406005:	49 89 c0             	mov    %rax,%r8
  406008:	e9 8f fe ff ff       	jmp    405e9c <__init_tls+0x4c>
  40600d:	0f 1f 00             	nopl   (%rax)
  406010:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  406016:	0f 85 80 fe ff ff    	jne    405e9c <__init_tls+0x4c>
  40601c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  406020:	44 8b 0d e5 40 00 00 	mov    0x40e5(%rip),%r9d        # 40a10c <__default_stacksize>
  406027:	49 39 d1             	cmp    %rdx,%r9
  40602a:	0f 83 6c fe ff ff    	jae    405e9c <__init_tls+0x4c>
  406030:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  406036:	4c 39 ca             	cmp    %r9,%rdx
  406039:	49 0f 47 d1          	cmova  %r9,%rdx
  40603d:	89 15 c9 40 00 00    	mov    %edx,0x40c9(%rip)        # 40a10c <__default_stacksize>
  406043:	e9 54 fe ff ff       	jmp    405e9c <__init_tls+0x4c>
  406048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40604f:	00 
  406050:	c6 05 09 41 00 00 01 	movb   $0x1,0x4109(%rip)        # 40a160 <__libc>
  406057:	e9 57 ff ff ff       	jmp    405fb3 <__init_tls+0x163>
  40605c:	f4                   	hlt
  40605d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406061:	c9                   	leave
  406062:	c3                   	ret
  406063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406068:	48 8b 15 a9 45 00 00 	mov    0x45a9(%rip),%rdx        # 40a618 <main_tls+0x18>
  40606f:	48 8b 35 92 45 00 00 	mov    0x4592(%rip),%rsi        # 40a608 <main_tls+0x8>
  406076:	48 8b 05 a3 45 00 00 	mov    0x45a3(%rip),%rax        # 40a620 <main_tls+0x20>
  40607d:	e9 81 fe ff ff       	jmp    405f03 <__init_tls+0xb3>
  406082:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406089:	00 00 00 
  40608c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406090 <__errno_location>:
  406090:	f3 0f 1e fa          	endbr64
  406094:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40609b:	00 00 
  40609d:	48 83 c0 34          	add    $0x34,%rax
  4060a1:	c3                   	ret
  4060a2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060a9:	00 00 00 
  4060ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004060b0 <__strerror_l>:
  4060b0:	f3 0f 1e fa          	endbr64
  4060b4:	48 8d 05 85 15 00 00 	lea    0x1585(%rip),%rax        # 407640 <errmsgstr>
  4060bb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  4060c1:	77 11                	ja     4060d4 <__strerror_l+0x24>
  4060c3:	48 63 ff             	movslq %edi,%rdi
  4060c6:	48 8d 15 53 14 00 00 	lea    0x1453(%rip),%rdx        # 407520 <errmsgidx>
  4060cd:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  4060d1:	48 01 d0             	add    %rdx,%rax
  4060d4:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  4060d8:	48 89 c7             	mov    %rax,%rdi
  4060db:	e9 50 00 00 00       	jmp    406130 <__lctrans>

00000000004060e0 <strerror>:
  4060e0:	f3 0f 1e fa          	endbr64
  4060e4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4060eb:	00 00 
  4060ed:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  4060f4:	e9 b7 ff ff ff       	jmp    4060b0 <__strerror_l>
  4060f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406100 <_Exit>:
  406100:	f3 0f 1e fa          	endbr64
  406104:	48 63 ff             	movslq %edi,%rdi
  406107:	b8 e7 00 00 00       	mov    $0xe7,%eax
  40610c:	0f 05                	syscall
  40610e:	66 90                	xchg   %ax,%ax
  406110:	b8 3c 00 00 00       	mov    $0x3c,%eax
  406115:	0f 05                	syscall
  406117:	eb f7                	jmp    406110 <_Exit+0x10>
  406119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406120 <__lctrans_impl>:
  406120:	f3 0f 1e fa          	endbr64
  406124:	48 89 f8             	mov    %rdi,%rax
  406127:	c3                   	ret
  406128:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40612f:	00 

0000000000406130 <__lctrans>:
  406130:	f3 0f 1e fa          	endbr64
  406134:	e9 e7 ff ff ff       	jmp    406120 <__lctrans_impl>
  406139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406140 <__lctrans_cur>:
  406140:	f3 0f 1e fa          	endbr64
  406144:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40614b:	00 00 
  40614d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  406154:	48 8b 70 28          	mov    0x28(%rax),%rsi
  406158:	e9 c3 ff ff ff       	jmp    406120 <__lctrans_impl>
  40615d:	0f 1f 00             	nopl   (%rax)

0000000000406160 <__fpclassifyl>:
  406160:	f3 0f 1e fa          	endbr64
  406164:	55                   	push   %rbp
  406165:	48 89 e5             	mov    %rsp,%rbp
  406168:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  40616c:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406170:	48 89 ca             	mov    %rcx,%rdx
  406173:	89 c6                	mov    %eax,%esi
  406175:	25 ff 7f 00 00       	and    $0x7fff,%eax
  40617a:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40617e:	66 81 e6 ff 7f       	and    $0x7fff,%si
  406183:	09 d0                	or     %edx,%eax
  406185:	74 31                	je     4061b8 <__fpclassifyl+0x58>
  406187:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  40618e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  406193:	74 0b                	je     4061a0 <__fpclassifyl+0x40>
  406195:	5d                   	pop    %rbp
  406196:	c3                   	ret
  406197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40619e:	00 00 
  4061a0:	31 c0                	xor    %eax,%eax
  4061a2:	48 85 d2             	test   %rdx,%rdx
  4061a5:	74 ee                	je     406195 <__fpclassifyl+0x35>
  4061a7:	31 c0                	xor    %eax,%eax
  4061a9:	48 01 c9             	add    %rcx,%rcx
  4061ac:	5d                   	pop    %rbp
  4061ad:	0f 94 c0             	sete   %al
  4061b0:	c3                   	ret
  4061b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4061b8:	48 83 f9 01          	cmp    $0x1,%rcx
  4061bc:	b8 02 00 00 00       	mov    $0x2,%eax
  4061c1:	5d                   	pop    %rbp
  4061c2:	83 d8 ff             	sbb    $0xffffffff,%eax
  4061c5:	c3                   	ret
  4061c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061cd:	00 00 00 

00000000004061d0 <__signbitl>:
  4061d0:	f3 0f 1e fa          	endbr64
  4061d4:	55                   	push   %rbp
  4061d5:	48 89 e5             	mov    %rsp,%rbp
  4061d8:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  4061dc:	5d                   	pop    %rbp
  4061dd:	66 c1 e8 0f          	shr    $0xf,%ax
  4061e1:	0f b7 c0             	movzwl %ax,%eax
  4061e4:	c3                   	ret
  4061e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4061ec:	00 00 00 
  4061ef:	90                   	nop

00000000004061f0 <frexpl>:
  4061f0:	f3 0f 1e fa          	endbr64
  4061f4:	55                   	push   %rbp
  4061f5:	48 89 e5             	mov    %rsp,%rbp
  4061f8:	48 83 ec 20          	sub    $0x20,%rsp
  4061fc:	db 6d 10             	fldt   0x10(%rbp)
  4061ff:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406203:	89 c2                	mov    %eax,%edx
  406205:	d9 c0                	fld    %st(0)
  406207:	db 7d f0             	fstpt  -0x10(%rbp)
  40620a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40620f:	74 2f                	je     406240 <frexpl+0x50>
  406211:	dd d8                	fstp   %st(0)
  406213:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406218:	74 38                	je     406252 <frexpl+0x62>
  40621a:	0f b7 d2             	movzwl %dx,%edx
  40621d:	66 25 00 80          	and    $0x8000,%ax
  406221:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  406227:	66 0d fe 3f          	or     $0x3ffe,%ax
  40622b:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40622f:	db 6d f0             	fldt   -0x10(%rbp)
  406232:	89 17                	mov    %edx,(%rdi)
  406234:	c9                   	leave
  406235:	c3                   	ret
  406236:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40623d:	00 00 00 
  406240:	d9 ee                	fldz
  406242:	d9 c9                	fxch   %st(1)
  406244:	df e9                	fucomip %st(1),%st
  406246:	dd d8                	fstp   %st(0)
  406248:	7a 16                	jp     406260 <frexpl+0x70>
  40624a:	75 14                	jne    406260 <frexpl+0x70>
  40624c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406252:	db 6d 10             	fldt   0x10(%rbp)
  406255:	c9                   	leave
  406256:	c3                   	ret
  406257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40625e:	00 00 
  406260:	db 6d 10             	fldt   0x10(%rbp)
  406263:	d8 0d 83 12 00 00    	fmuls  0x1283(%rip)        # 4074ec <states+0x1ec>
  406269:	48 83 ec 10          	sub    $0x10,%rsp
  40626d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406271:	db 3c 24             	fstpt  (%rsp)
  406274:	e8 77 ff ff ff       	call   4061f0 <frexpl>
  406279:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40627d:	83 2f 78             	subl   $0x78,(%rdi)
  406280:	58                   	pop    %rax
  406281:	5a                   	pop    %rdx
  406282:	c9                   	leave
  406283:	c3                   	ret
  406284:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40628b:	00 00 00 
  40628e:	66 90                	xchg   %ax,%ax

0000000000406290 <wctomb>:
  406290:	f3 0f 1e fa          	endbr64
  406294:	48 85 ff             	test   %rdi,%rdi
  406297:	74 17                	je     4062b0 <wctomb+0x20>
  406299:	55                   	push   %rbp
  40629a:	31 d2                	xor    %edx,%edx
  40629c:	48 89 e5             	mov    %rsp,%rbp
  40629f:	e8 3c 08 00 00       	call   406ae0 <wcrtomb>
  4062a4:	5d                   	pop    %rbp
  4062a5:	c3                   	ret
  4062a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062ad:	00 00 00 
  4062b0:	31 c0                	xor    %eax,%eax
  4062b2:	c3                   	ret
  4062b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062ba:	00 00 00 
  4062bd:	0f 1f 00             	nopl   (%rax)

00000000004062c0 <__lockfile>:
  4062c0:	f3 0f 1e fa          	endbr64
  4062c4:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  4062ca:	48 89 fa             	mov    %rdi,%rdx
  4062cd:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  4062d4:	00 00 
  4062d6:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  4062da:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  4062df:	31 c9                	xor    %ecx,%ecx
  4062e1:	44 39 c0             	cmp    %r8d,%eax
  4062e4:	74 3f                	je     406325 <__lockfile+0x65>
  4062e6:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4062ed:	89 c8                	mov    %ecx,%eax
  4062ef:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  4062f6:	00 00 
  4062f8:	85 c0                	test   %eax,%eax
  4062fa:	74 24                	je     406320 <__lockfile+0x60>
  4062fc:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406303:	89 c8                	mov    %ecx,%eax
  406305:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40630c:	00 00 
  40630e:	89 c1                	mov    %eax,%ecx
  406310:	85 c0                	test   %eax,%eax
  406312:	75 33                	jne    406347 <__lockfile+0x87>
  406314:	90                   	nop
  406315:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40631c:	00 00 00 00 
  406320:	b9 01 00 00 00       	mov    $0x1,%ecx
  406325:	89 c8                	mov    %ecx,%eax
  406327:	c3                   	ret
  406328:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40632f:	00 
  406330:	89 c8                	mov    %ecx,%eax
  406332:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406336:	39 c8                	cmp    %ecx,%eax
  406338:	74 1d                	je     406357 <__lockfile+0x97>
  40633a:	31 c0                	xor    %eax,%eax
  40633c:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406341:	89 c1                	mov    %eax,%ecx
  406343:	85 c0                	test   %eax,%eax
  406345:	74 d9                	je     406320 <__lockfile+0x60>
  406347:	89 ca                	mov    %ecx,%edx
  406349:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40634f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406355:	74 d9                	je     406330 <__lockfile+0x70>
  406357:	48 63 d2             	movslq %edx,%rdx
  40635a:	45 31 d2             	xor    %r10d,%r10d
  40635d:	b8 ca 00 00 00       	mov    $0xca,%eax
  406362:	be 80 00 00 00       	mov    $0x80,%esi
  406367:	0f 05                	syscall
  406369:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  40636d:	75 cb                	jne    40633a <__lockfile+0x7a>
  40636f:	45 31 d2             	xor    %r10d,%r10d
  406372:	31 f6                	xor    %esi,%esi
  406374:	b8 ca 00 00 00       	mov    $0xca,%eax
  406379:	0f 05                	syscall
  40637b:	eb bd                	jmp    40633a <__lockfile+0x7a>
  40637d:	0f 1f 00             	nopl   (%rax)

0000000000406380 <__unlockfile>:
  406380:	f3 0f 1e fa          	endbr64
  406384:	48 89 fa             	mov    %rdi,%rdx
  406387:	31 c0                	xor    %eax,%eax
  406389:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406390:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406396:	a9 00 00 00 40       	test   $0x40000000,%eax
  40639b:	74 17                	je     4063b4 <__unlockfile+0x34>
  40639d:	be 81 00 00 00       	mov    $0x81,%esi
  4063a2:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063a7:	ba 01 00 00 00       	mov    $0x1,%edx
  4063ac:	0f 05                	syscall
  4063ae:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4063b2:	74 04                	je     4063b8 <__unlockfile+0x38>
  4063b4:	c3                   	ret
  4063b5:	0f 1f 00             	nopl   (%rax)
  4063b8:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063bd:	be 01 00 00 00       	mov    $0x1,%esi
  4063c2:	0f 05                	syscall
  4063c4:	c3                   	ret
  4063c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4063cc:	00 00 00 
  4063cf:	90                   	nop

00000000004063d0 <__aio_close>:
  4063d0:	f3 0f 1e fa          	endbr64
  4063d4:	89 f8                	mov    %edi,%eax
  4063d6:	c3                   	ret
  4063d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4063de:	00 00 

00000000004063e0 <__stdio_close>:
  4063e0:	f3 0f 1e fa          	endbr64
  4063e4:	55                   	push   %rbp
  4063e5:	8b 7f 78             	mov    0x78(%rdi),%edi
  4063e8:	48 89 e5             	mov    %rsp,%rbp
  4063eb:	e8 e0 ff ff ff       	call   4063d0 <__aio_close>
  4063f0:	48 63 f8             	movslq %eax,%rdi
  4063f3:	b8 03 00 00 00       	mov    $0x3,%eax
  4063f8:	0f 05                	syscall
  4063fa:	48 89 c7             	mov    %rax,%rdi
  4063fd:	e8 9e 06 00 00       	call   406aa0 <__syscall_ret>
  406402:	5d                   	pop    %rbp
  406403:	c3                   	ret
  406404:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40640b:	00 00 00 
  40640e:	66 90                	xchg   %ax,%ax

0000000000406410 <__stdio_seek>:
  406410:	f3 0f 1e fa          	endbr64
  406414:	8b 7f 78             	mov    0x78(%rdi),%edi
  406417:	e9 64 06 00 00       	jmp    406a80 <__lseek>
  40641c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406420 <__stdout_write>:
  406420:	f3 0f 1e fa          	endbr64
  406424:	55                   	push   %rbp
  406425:	48 8d 05 d4 08 00 00 	lea    0x8d4(%rip),%rax        # 406d00 <__stdio_write>
  40642c:	49 89 f8             	mov    %rdi,%r8
  40642f:	49 89 f1             	mov    %rsi,%r9
  406432:	48 89 e5             	mov    %rsp,%rbp
  406435:	48 83 ec 10          	sub    $0x10,%rsp
  406439:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406440:	00 00 
  406442:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406446:	49 89 d2             	mov    %rdx,%r10
  406449:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40644d:	f6 07 40             	testb  $0x40,(%rdi)
  406450:	75 19                	jne    40646b <__stdout_write+0x4b>
  406452:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406456:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40645a:	b8 10 00 00 00       	mov    $0x10,%eax
  40645f:	be 13 54 00 00       	mov    $0x5413,%esi
  406464:	0f 05                	syscall
  406466:	48 85 c0             	test   %rax,%rax
  406469:	75 25                	jne    406490 <__stdout_write+0x70>
  40646b:	4c 89 d2             	mov    %r10,%rdx
  40646e:	4c 89 ce             	mov    %r9,%rsi
  406471:	4c 89 c7             	mov    %r8,%rdi
  406474:	e8 87 08 00 00       	call   406d00 <__stdio_write>
  406479:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40647d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406484:	00 00 
  406486:	75 15                	jne    40649d <__stdout_write+0x7d>
  406488:	c9                   	leave
  406489:	c3                   	ret
  40648a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406490:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406497:	ff ff ff ff 
  40649b:	eb ce                	jmp    40646b <__stdout_write+0x4b>
  40649d:	e8 fe c3 ff ff       	call   4028a0 <__stack_chk_fail>
  4064a2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4064a9:	00 00 00 
  4064ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004064b0 <__towrite>:
  4064b0:	f3 0f 1e fa          	endbr64
  4064b4:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  4064ba:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4064bd:	09 d0                	or     %edx,%eax
  4064bf:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  4064c5:	8b 07                	mov    (%rdi),%eax
  4064c7:	a8 08                	test   $0x8,%al
  4064c9:	75 35                	jne    406500 <__towrite+0x50>
  4064cb:	48 8b 47 58          	mov    0x58(%rdi),%rax
  4064cf:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  4064d3:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4064d7:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  4064db:	48 01 c1             	add    %rax,%rcx
  4064de:	66 48 0f 6e c8       	movq   %rax,%xmm1
  4064e3:	48 89 47 38          	mov    %rax,0x38(%rdi)
  4064e7:	31 c0                	xor    %eax,%eax
  4064e9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  4064ee:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  4064f2:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  4064f6:	c3                   	ret
  4064f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4064fe:	00 00 
  406500:	83 c8 20             	or     $0x20,%eax
  406503:	89 07                	mov    %eax,(%rdi)
  406505:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40650a:	c3                   	ret
  40650b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406510 <__towrite_needs_stdio_exit>:
  406510:	f3 0f 1e fa          	endbr64
  406514:	e9 87 07 00 00       	jmp    406ca0 <__stdio_exit>
  406519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406520 <__fwritex>:
  406520:	f3 0f 1e fa          	endbr64
  406524:	55                   	push   %rbp
  406525:	48 89 f9             	mov    %rdi,%rcx
  406528:	48 89 e5             	mov    %rsp,%rbp
  40652b:	41 54                	push   %r12
  40652d:	49 89 f4             	mov    %rsi,%r12
  406530:	53                   	push   %rbx
  406531:	48 89 d3             	mov    %rdx,%rbx
  406534:	48 83 ec 10          	sub    $0x10,%rsp
  406538:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40653c:	48 85 c0             	test   %rax,%rax
  40653f:	0f 84 ab 00 00 00    	je     4065f0 <__fwritex+0xd0>
  406545:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406549:	48 29 f8             	sub    %rdi,%rax
  40654c:	4c 39 e0             	cmp    %r12,%rax
  40654f:	72 57                	jb     4065a8 <__fwritex+0x88>
  406551:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406557:	4c 89 e2             	mov    %r12,%rdx
  40655a:	85 c0                	test   %eax,%eax
  40655c:	79 3d                	jns    40659b <__fwritex+0x7b>
  40655e:	4d 89 e0             	mov    %r12,%r8
  406561:	4c 89 c2             	mov    %r8,%rdx
  406564:	48 89 ce             	mov    %rcx,%rsi
  406567:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  40656b:	e8 bd f6 ff ff       	call   405c2d <memcpy>
  406570:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  406574:	4c 01 43 28          	add    %r8,0x28(%rbx)
  406578:	4c 89 e0             	mov    %r12,%rax
  40657b:	48 83 c4 10          	add    $0x10,%rsp
  40657f:	5b                   	pop    %rbx
  406580:	41 5c                	pop    %r12
  406582:	5d                   	pop    %rbp
  406583:	c3                   	ret
  406584:	90                   	nop
  406585:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40658c:	00 00 00 00 
  406590:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406595:	74 29                	je     4065c0 <__fwritex+0xa0>
  406597:	48 83 ea 01          	sub    $0x1,%rdx
  40659b:	48 85 d2             	test   %rdx,%rdx
  40659e:	75 f0                	jne    406590 <__fwritex+0x70>
  4065a0:	eb bc                	jmp    40655e <__fwritex+0x3e>
  4065a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4065a8:	48 8b 43 48          	mov    0x48(%rbx),%rax
  4065ac:	48 83 c4 10          	add    $0x10,%rsp
  4065b0:	4c 89 e2             	mov    %r12,%rdx
  4065b3:	48 89 df             	mov    %rbx,%rdi
  4065b6:	48 89 ce             	mov    %rcx,%rsi
  4065b9:	5b                   	pop    %rbx
  4065ba:	41 5c                	pop    %r12
  4065bc:	5d                   	pop    %rbp
  4065bd:	ff e0                	jmp    *%rax
  4065bf:	90                   	nop
  4065c0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4065c4:	48 89 ce             	mov    %rcx,%rsi
  4065c7:	48 89 df             	mov    %rbx,%rdi
  4065ca:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4065ce:	ff 53 48             	call   *0x48(%rbx)
  4065d1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4065d5:	48 39 d0             	cmp    %rdx,%rax
  4065d8:	72 a1                	jb     40657b <__fwritex+0x5b>
  4065da:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4065de:	4d 89 e0             	mov    %r12,%r8
  4065e1:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4065e5:	49 29 d0             	sub    %rdx,%r8
  4065e8:	48 01 d1             	add    %rdx,%rcx
  4065eb:	e9 71 ff ff ff       	jmp    406561 <__fwritex+0x41>
  4065f0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4065f4:	48 89 d7             	mov    %rdx,%rdi
  4065f7:	e8 b4 fe ff ff       	call   4064b0 <__towrite>
  4065fc:	85 c0                	test   %eax,%eax
  4065fe:	75 10                	jne    406610 <__fwritex+0xf0>
  406600:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406604:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406608:	e9 38 ff ff ff       	jmp    406545 <__fwritex+0x25>
  40660d:	0f 1f 00             	nopl   (%rax)
  406610:	31 c0                	xor    %eax,%eax
  406612:	e9 64 ff ff ff       	jmp    40657b <__fwritex+0x5b>
  406617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40661e:	00 00 

0000000000406620 <fwrite>:
  406620:	f3 0f 1e fa          	endbr64
  406624:	55                   	push   %rbp
  406625:	31 c0                	xor    %eax,%eax
  406627:	48 89 e5             	mov    %rsp,%rbp
  40662a:	41 57                	push   %r15
  40662c:	41 56                	push   %r14
  40662e:	49 89 f6             	mov    %rsi,%r14
  406631:	41 55                	push   %r13
  406633:	4c 0f af f2          	imul   %rdx,%r14
  406637:	41 54                	push   %r12
  406639:	49 89 cc             	mov    %rcx,%r12
  40663c:	53                   	push   %rbx
  40663d:	48 89 f3             	mov    %rsi,%rbx
  406640:	48 83 ec 18          	sub    $0x18,%rsp
  406644:	48 85 f6             	test   %rsi,%rsi
  406647:	48 0f 45 c2          	cmovne %rdx,%rax
  40664b:	49 89 c5             	mov    %rax,%r13
  40664e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406654:	85 c0                	test   %eax,%eax
  406656:	79 30                	jns    406688 <fwrite+0x68>
  406658:	48 89 ca             	mov    %rcx,%rdx
  40665b:	4c 89 f6             	mov    %r14,%rsi
  40665e:	e8 bd fe ff ff       	call   406520 <__fwritex>
  406663:	49 39 c6             	cmp    %rax,%r14
  406666:	74 08                	je     406670 <fwrite+0x50>
  406668:	31 d2                	xor    %edx,%edx
  40666a:	48 f7 f3             	div    %rbx
  40666d:	49 89 c5             	mov    %rax,%r13
  406670:	48 83 c4 18          	add    $0x18,%rsp
  406674:	4c 89 e8             	mov    %r13,%rax
  406677:	5b                   	pop    %rbx
  406678:	41 5c                	pop    %r12
  40667a:	41 5d                	pop    %r13
  40667c:	41 5e                	pop    %r14
  40667e:	41 5f                	pop    %r15
  406680:	5d                   	pop    %rbp
  406681:	c3                   	ret
  406682:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406688:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  40668c:	48 89 cf             	mov    %rcx,%rdi
  40668f:	e8 2c fc ff ff       	call   4062c0 <__lockfile>
  406694:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406698:	4c 89 e2             	mov    %r12,%rdx
  40669b:	4c 89 f6             	mov    %r14,%rsi
  40669e:	41 89 c7             	mov    %eax,%r15d
  4066a1:	e8 7a fe ff ff       	call   406520 <__fwritex>
  4066a6:	45 85 ff             	test   %r15d,%r15d
  4066a9:	74 b8                	je     406663 <fwrite+0x43>
  4066ab:	4c 89 e7             	mov    %r12,%rdi
  4066ae:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4066b2:	e8 c9 fc ff ff       	call   406380 <__unlockfile>
  4066b7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4066bb:	eb a6                	jmp    406663 <fwrite+0x43>
  4066bd:	0f 1f 00             	nopl   (%rax)

00000000004066c0 <sn_write>:
  4066c0:	f3 0f 1e fa          	endbr64
  4066c4:	55                   	push   %rbp
  4066c5:	48 89 f1             	mov    %rsi,%rcx
  4066c8:	48 89 e5             	mov    %rsp,%rbp
  4066cb:	41 55                	push   %r13
  4066cd:	49 89 d5             	mov    %rdx,%r13
  4066d0:	41 54                	push   %r12
  4066d2:	53                   	push   %rbx
  4066d3:	48 89 fb             	mov    %rdi,%rbx
  4066d6:	48 83 ec 18          	sub    $0x18,%rsp
  4066da:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  4066e1:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  4066e5:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  4066e9:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4066ee:	49 8b 3c 24          	mov    (%r12),%rdi
  4066f2:	48 29 f2             	sub    %rsi,%rdx
  4066f5:	48 39 c2             	cmp    %rax,%rdx
  4066f8:	48 0f 47 d0          	cmova  %rax,%rdx
  4066fc:	48 85 d2             	test   %rdx,%rdx
  4066ff:	75 2f                	jne    406730 <sn_write+0x70>
  406701:	49 39 c5             	cmp    %rax,%r13
  406704:	49 0f 46 c5          	cmovbe %r13,%rax
  406708:	48 89 c2             	mov    %rax,%rdx
  40670b:	48 85 c0             	test   %rax,%rax
  40670e:	75 5c                	jne    40676c <sn_write+0xac>
  406710:	c6 07 00             	movb   $0x0,(%rdi)
  406713:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406717:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40671b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40671f:	48 83 c4 18          	add    $0x18,%rsp
  406723:	4c 89 e8             	mov    %r13,%rax
  406726:	5b                   	pop    %rbx
  406727:	41 5c                	pop    %r12
  406729:	41 5d                	pop    %r13
  40672b:	5d                   	pop    %rbp
  40672c:	c3                   	ret
  40672d:	0f 1f 00             	nopl   (%rax)
  406730:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406734:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406738:	e8 f0 f4 ff ff       	call   405c2d <memcpy>
  40673d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406741:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406746:	49 8b 3c 24          	mov    (%r12),%rdi
  40674a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40674e:	48 29 d0             	sub    %rdx,%rax
  406751:	48 01 d7             	add    %rdx,%rdi
  406754:	49 39 c5             	cmp    %rax,%r13
  406757:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40675c:	49 0f 46 c5          	cmovbe %r13,%rax
  406760:	49 89 3c 24          	mov    %rdi,(%r12)
  406764:	48 89 c2             	mov    %rax,%rdx
  406767:	48 85 c0             	test   %rax,%rax
  40676a:	74 a4                	je     406710 <sn_write+0x50>
  40676c:	48 89 ce             	mov    %rcx,%rsi
  40676f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  406773:	e8 b5 f4 ff ff       	call   405c2d <memcpy>
  406778:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40677c:	49 8b 3c 24          	mov    (%r12),%rdi
  406780:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  406785:	48 01 d7             	add    %rdx,%rdi
  406788:	49 89 3c 24          	mov    %rdi,(%r12)
  40678c:	eb 82                	jmp    406710 <sn_write+0x50>
  40678e:	66 90                	xchg   %ax,%ax

0000000000406790 <vsnprintf>:
  406790:	f3 0f 1e fa          	endbr64
  406794:	55                   	push   %rbp
  406795:	49 89 c9             	mov    %rcx,%r9
  406798:	49 89 d0             	mov    %rdx,%r8
  40679b:	48 89 e5             	mov    %rsp,%rbp
  40679e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  4067a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4067ac:	00 00 
  4067ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4067b2:	31 c0                	xor    %eax,%eax
  4067b4:	48 85 f6             	test   %rsi,%rsi
  4067b7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4067bb:	0f 95 c1             	setne  %cl
  4067be:	48 0f 45 d7          	cmovne %rdi,%rdx
  4067c2:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4067c9:	0f b6 c9             	movzbl %cl,%ecx
  4067cc:	48 29 ce             	sub    %rcx,%rsi
  4067cf:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  4067d4:	c6 02 00             	movb   $0x0,(%rdx)
  4067d7:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  4067de:	4c 89 ca             	mov    %r9,%rdx
  4067e1:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  4067e8:	4c 89 c6             	mov    %r8,%rsi
  4067eb:	f3 48 ab             	rep stos %rax,(%rdi)
  4067ee:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 4066c0 <sn_write>
  4067f5:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4067fc:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406803:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406807:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40680e:	48 8b 05 ab 15 00 00 	mov    0x15ab(%rip),%rax        # 407dc0 <errmsgstr+0x780>
  406815:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406819:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406820:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406824:	e8 67 f1 ff ff       	call   405990 <vfprintf>
  406829:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40682d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406834:	00 00 
  406836:	75 02                	jne    40683a <vsnprintf+0xaa>
  406838:	c9                   	leave
  406839:	c3                   	ret
  40683a:	e8 61 c0 ff ff       	call   4028a0 <__stack_chk_fail>
  40683f:	90                   	nop

0000000000406840 <memchr>:
  406840:	f3 0f 1e fa          	endbr64
  406844:	48 89 d0             	mov    %rdx,%rax
  406847:	40 0f b6 ce          	movzbl %sil,%ecx
  40684b:	40 f6 c7 07          	test   $0x7,%dil
  40684f:	75 1c                	jne    40686d <memchr+0x2d>
  406851:	eb 2d                	jmp    406880 <memchr+0x40>
  406853:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406858:	0f b6 17             	movzbl (%rdi),%edx
  40685b:	39 ca                	cmp    %ecx,%edx
  40685d:	74 28                	je     406887 <memchr+0x47>
  40685f:	48 83 c7 01          	add    $0x1,%rdi
  406863:	48 83 e8 01          	sub    $0x1,%rax
  406867:	40 f6 c7 07          	test   $0x7,%dil
  40686b:	74 13                	je     406880 <memchr+0x40>
  40686d:	48 85 c0             	test   %rax,%rax
  406870:	75 e6                	jne    406858 <memchr+0x18>
  406872:	31 d2                	xor    %edx,%edx
  406874:	48 89 d0             	mov    %rdx,%rax
  406877:	c3                   	ret
  406878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40687f:	00 
  406880:	31 d2                	xor    %edx,%edx
  406882:	48 85 c0             	test   %rax,%rax
  406885:	74 ed                	je     406874 <memchr+0x34>
  406887:	0f b6 17             	movzbl (%rdi),%edx
  40688a:	39 ca                	cmp    %ecx,%edx
  40688c:	0f 84 ce 00 00 00    	je     406960 <memchr+0x120>
  406892:	48 83 f8 07          	cmp    $0x7,%rax
  406896:	0f 86 c4 00 00 00    	jbe    406960 <memchr+0x120>
  40689c:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4068a3:	01 01 01 
  4068a6:	4c 63 c1             	movslq %ecx,%r8
  4068a9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4068b0:	fe fe fe 
  4068b3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4068ba:	80 80 80 
  4068bd:	4c 0f af c2          	imul   %rdx,%r8
  4068c1:	48 89 fa             	mov    %rdi,%rdx
  4068c4:	eb 48                	jmp    40690e <memchr+0xce>
  4068c6:	0f 1f 00             	nopl   (%rax)
  4068c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068d0:	00 00 00 00 
  4068d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068db:	00 00 00 00 
  4068df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068e6:	00 00 00 00 
  4068ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068f1:	00 00 00 00 
  4068f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4068fc:	00 00 00 00 
  406900:	48 83 e8 08          	sub    $0x8,%rax
  406904:	48 83 c2 08          	add    $0x8,%rdx
  406908:	48 83 f8 07          	cmp    $0x7,%rax
  40690c:	76 5a                	jbe    406968 <memchr+0x128>
  40690e:	48 8b 32             	mov    (%rdx),%rsi
  406911:	4c 31 c6             	xor    %r8,%rsi
  406914:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406918:	48 f7 d6             	not    %rsi
  40691b:	48 21 fe             	and    %rdi,%rsi
  40691e:	4c 85 ce             	test   %r9,%rsi
  406921:	74 dd                	je     406900 <memchr+0xc0>
  406923:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40692a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406931:	00 00 00 00 
  406935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40693c:	00 00 00 00 
  406940:	0f b6 32             	movzbl (%rdx),%esi
  406943:	39 ce                	cmp    %ecx,%esi
  406945:	0f 84 29 ff ff ff    	je     406874 <memchr+0x34>
  40694b:	48 83 c2 01          	add    $0x1,%rdx
  40694f:	48 83 e8 01          	sub    $0x1,%rax
  406953:	75 eb                	jne    406940 <memchr+0x100>
  406955:	e9 18 ff ff ff       	jmp    406872 <memchr+0x32>
  40695a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406960:	48 89 fa             	mov    %rdi,%rdx
  406963:	eb db                	jmp    406940 <memchr+0x100>
  406965:	0f 1f 00             	nopl   (%rax)
  406968:	48 85 c0             	test   %rax,%rax
  40696b:	75 d3                	jne    406940 <memchr+0x100>
  40696d:	e9 00 ff ff ff       	jmp    406872 <memchr+0x32>
  406972:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406979:	00 00 00 
  40697c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406980 <__stpcpy>:
  406980:	f3 0f 1e fa          	endbr64
  406984:	48 89 f9             	mov    %rdi,%rcx
  406987:	48 89 f8             	mov    %rdi,%rax
  40698a:	48 89 f2             	mov    %rsi,%rdx
  40698d:	48 31 f1             	xor    %rsi,%rcx
  406990:	83 e1 07             	and    $0x7,%ecx
  406993:	74 5c                	je     4069f1 <__stpcpy+0x71>
  406995:	0f b6 0a             	movzbl (%rdx),%ecx
  406998:	88 08                	mov    %cl,(%rax)
  40699a:	84 c9                	test   %cl,%cl
  40699c:	0f 84 c6 00 00 00    	je     406a68 <__stpcpy+0xe8>
  4069a2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4069a9:	00 
  4069aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069b1:	00 00 00 00 
  4069b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069bc:	00 00 00 00 
  4069c0:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  4069c4:	48 83 c2 01          	add    $0x1,%rdx
  4069c8:	48 83 c0 01          	add    $0x1,%rax
  4069cc:	88 08                	mov    %cl,(%rax)
  4069ce:	84 c9                	test   %cl,%cl
  4069d0:	75 ee                	jne    4069c0 <__stpcpy+0x40>
  4069d2:	c3                   	ret
  4069d3:	66 90                	xchg   %ax,%ax
  4069d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069dc:	00 00 00 00 
  4069e0:	0f b6 0a             	movzbl (%rdx),%ecx
  4069e3:	88 08                	mov    %cl,(%rax)
  4069e5:	84 c9                	test   %cl,%cl
  4069e7:	74 e9                	je     4069d2 <__stpcpy+0x52>
  4069e9:	48 83 c2 01          	add    $0x1,%rdx
  4069ed:	48 83 c0 01          	add    $0x1,%rax
  4069f1:	f6 c2 07             	test   $0x7,%dl
  4069f4:	75 ea                	jne    4069e0 <__stpcpy+0x60>
  4069f6:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  4069fd:	fe fe fe 
  406a00:	48 8b 0a             	mov    (%rdx),%rcx
  406a03:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  406a0a:	80 80 80 
  406a0d:	48 89 cf             	mov    %rcx,%rdi
  406a10:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406a14:	48 f7 d7             	not    %rdi
  406a17:	48 21 fe             	and    %rdi,%rsi
  406a1a:	4c 85 ce             	test   %r9,%rsi
  406a1d:	0f 85 72 ff ff ff    	jne    406995 <__stpcpy+0x15>
  406a23:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a31:	00 00 00 00 
  406a35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a3c:	00 00 00 00 
  406a40:	48 83 c2 08          	add    $0x8,%rdx
  406a44:	48 89 08             	mov    %rcx,(%rax)
  406a47:	48 83 c0 08          	add    $0x8,%rax
  406a4b:	48 8b 0a             	mov    (%rdx),%rcx
  406a4e:	48 89 cf             	mov    %rcx,%rdi
  406a51:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406a55:	48 f7 d7             	not    %rdi
  406a58:	48 21 fe             	and    %rdi,%rsi
  406a5b:	4c 85 ce             	test   %r9,%rsi
  406a5e:	74 e0                	je     406a40 <__stpcpy+0xc0>
  406a60:	e9 30 ff ff ff       	jmp    406995 <__stpcpy+0x15>
  406a65:	0f 1f 00             	nopl   (%rax)
  406a68:	c3                   	ret

0000000000406a69 <__set_thread_area>:
  406a69:	48 89 fe             	mov    %rdi,%rsi
  406a6c:	bf 02 10 00 00       	mov    $0x1002,%edi
  406a71:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406a76:	0f 05                	syscall
  406a78:	c3                   	ret
  406a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406a80 <__lseek>:
  406a80:	f3 0f 1e fa          	endbr64
  406a84:	48 63 ff             	movslq %edi,%rdi
  406a87:	48 63 d2             	movslq %edx,%rdx
  406a8a:	b8 08 00 00 00       	mov    $0x8,%eax
  406a8f:	0f 05                	syscall
  406a91:	48 89 c7             	mov    %rax,%rdi
  406a94:	e9 07 00 00 00       	jmp    406aa0 <__syscall_ret>
  406a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406aa0 <__syscall_ret>:
  406aa0:	f3 0f 1e fa          	endbr64
  406aa4:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406aab:	77 0b                	ja     406ab8 <__syscall_ret+0x18>
  406aad:	48 89 f8             	mov    %rdi,%rax
  406ab0:	c3                   	ret
  406ab1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ab8:	55                   	push   %rbp
  406ab9:	48 89 e5             	mov    %rsp,%rbp
  406abc:	53                   	push   %rbx
  406abd:	48 89 fb             	mov    %rdi,%rbx
  406ac0:	48 83 ec 08          	sub    $0x8,%rsp
  406ac4:	e8 c7 f5 ff ff       	call   406090 <__errno_location>
  406ac9:	89 df                	mov    %ebx,%edi
  406acb:	f7 df                	neg    %edi
  406acd:	89 38                	mov    %edi,(%rax)
  406acf:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406ad6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406ada:	c9                   	leave
  406adb:	c3                   	ret
  406adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406ae0 <wcrtomb>:
  406ae0:	f3 0f 1e fa          	endbr64
  406ae4:	48 85 ff             	test   %rdi,%rdi
  406ae7:	0f 84 d6 00 00 00    	je     406bc3 <wcrtomb+0xe3>
  406aed:	83 fe 7f             	cmp    $0x7f,%esi
  406af0:	0f 86 ca 00 00 00    	jbe    406bc0 <wcrtomb+0xe0>
  406af6:	55                   	push   %rbp
  406af7:	89 f0                	mov    %esi,%eax
  406af9:	48 89 f9             	mov    %rdi,%rcx
  406afc:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406b03:	00 00 
  406b05:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406b0c:	48 89 e5             	mov    %rsp,%rbp
  406b0f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406b13:	74 53                	je     406b68 <wcrtomb+0x88>
  406b15:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406b1b:	0f 86 af 00 00 00    	jbe    406bd0 <wcrtomb+0xf0>
  406b21:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406b27:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406b2d:	0f 86 bd 00 00 00    	jbe    406bf0 <wcrtomb+0x110>
  406b33:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406b39:	0f 86 b1 00 00 00    	jbe    406bf0 <wcrtomb+0x110>
  406b3f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406b45:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406b4b:	76 33                	jbe    406b80 <wcrtomb+0xa0>
  406b4d:	e8 3e f5 ff ff       	call   406090 <__errno_location>
  406b52:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406b58:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406b5f:	5d                   	pop    %rbp
  406b60:	c3                   	ret
  406b61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b68:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406b6d:	83 f8 7f             	cmp    $0x7f,%eax
  406b70:	77 db                	ja     406b4d <wcrtomb+0x6d>
  406b72:	40 88 37             	mov    %sil,(%rdi)
  406b75:	b8 01 00 00 00       	mov    $0x1,%eax
  406b7a:	5d                   	pop    %rbp
  406b7b:	c3                   	ret
  406b7c:	0f 1f 40 00          	nopl   0x0(%rax)
  406b80:	89 c7                	mov    %eax,%edi
  406b82:	83 e0 3f             	and    $0x3f,%eax
  406b85:	89 f2                	mov    %esi,%edx
  406b87:	c1 fe 0c             	sar    $0xc,%esi
  406b8a:	c1 ff 06             	sar    $0x6,%edi
  406b8d:	c1 e0 08             	shl    $0x8,%eax
  406b90:	83 e6 3f             	and    $0x3f,%esi
  406b93:	83 e7 3f             	and    $0x3f,%edi
  406b96:	c1 fa 12             	sar    $0x12,%edx
  406b99:	09 f8                	or     %edi,%eax
  406b9b:	0f b6 d2             	movzbl %dl,%edx
  406b9e:	c1 e0 08             	shl    $0x8,%eax
  406ba1:	09 f0                	or     %esi,%eax
  406ba3:	8b 35 47 09 00 00    	mov    0x947(%rip),%esi        # 4074f0 <states+0x1f0>
  406ba9:	c1 e0 08             	shl    $0x8,%eax
  406bac:	09 d0                	or     %edx,%eax
  406bae:	09 f0                	or     %esi,%eax
  406bb0:	89 01                	mov    %eax,(%rcx)
  406bb2:	b8 04 00 00 00       	mov    $0x4,%eax
  406bb7:	5d                   	pop    %rbp
  406bb8:	c3                   	ret
  406bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406bc0:	40 88 37             	mov    %sil,(%rdi)
  406bc3:	b8 01 00 00 00       	mov    $0x1,%eax
  406bc8:	c3                   	ret
  406bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406bd0:	89 f2                	mov    %esi,%edx
  406bd2:	83 e0 3f             	and    $0x3f,%eax
  406bd5:	c1 fa 06             	sar    $0x6,%edx
  406bd8:	83 c8 80             	or     $0xffffff80,%eax
  406bdb:	83 ca c0             	or     $0xffffffc0,%edx
  406bde:	88 47 01             	mov    %al,0x1(%rdi)
  406be1:	b8 02 00 00 00       	mov    $0x2,%eax
  406be6:	88 17                	mov    %dl,(%rdi)
  406be8:	5d                   	pop    %rbp
  406be9:	c3                   	ret
  406bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406bf0:	89 c2                	mov    %eax,%edx
  406bf2:	c1 fa 0c             	sar    $0xc,%edx
  406bf5:	83 ca e0             	or     $0xffffffe0,%edx
  406bf8:	88 11                	mov    %dl,(%rcx)
  406bfa:	89 c2                	mov    %eax,%edx
  406bfc:	83 e0 3f             	and    $0x3f,%eax
  406bff:	c1 fa 06             	sar    $0x6,%edx
  406c02:	83 c8 80             	or     $0xffffff80,%eax
  406c05:	83 e2 3f             	and    $0x3f,%edx
  406c08:	88 41 02             	mov    %al,0x2(%rcx)
  406c0b:	b8 03 00 00 00       	mov    $0x3,%eax
  406c10:	83 ca 80             	or     $0xffffff80,%edx
  406c13:	88 51 01             	mov    %dl,0x1(%rcx)
  406c16:	5d                   	pop    %rbp
  406c17:	c3                   	ret
  406c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406c1f:	00 

0000000000406c20 <close_file>:
  406c20:	48 85 ff             	test   %rdi,%rdi
  406c23:	74 6b                	je     406c90 <close_file+0x70>
  406c25:	55                   	push   %rbp
  406c26:	48 89 e5             	mov    %rsp,%rbp
  406c29:	53                   	push   %rbx
  406c2a:	48 89 fb             	mov    %rdi,%rbx
  406c2d:	48 83 ec 08          	sub    $0x8,%rsp
  406c31:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406c37:	85 c0                	test   %eax,%eax
  406c39:	79 3d                	jns    406c78 <close_file+0x58>
  406c3b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406c3f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406c43:	74 0a                	je     406c4f <close_file+0x2f>
  406c45:	31 d2                	xor    %edx,%edx
  406c47:	31 f6                	xor    %esi,%esi
  406c49:	48 89 df             	mov    %rbx,%rdi
  406c4c:	ff 53 48             	call   *0x48(%rbx)
  406c4f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406c53:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406c57:	48 39 c6             	cmp    %rax,%rsi
  406c5a:	74 24                	je     406c80 <close_file+0x60>
  406c5c:	48 29 c6             	sub    %rax,%rsi
  406c5f:	48 89 df             	mov    %rbx,%rdi
  406c62:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406c66:	ba 01 00 00 00       	mov    $0x1,%edx
  406c6b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c6f:	c9                   	leave
  406c70:	ff e0                	jmp    *%rax
  406c72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c78:	e8 43 f6 ff ff       	call   4062c0 <__lockfile>
  406c7d:	eb bc                	jmp    406c3b <close_file+0x1b>
  406c7f:	90                   	nop
  406c80:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406c84:	c9                   	leave
  406c85:	c3                   	ret
  406c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406c8d:	00 00 00 
  406c90:	c3                   	ret
  406c91:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406c98:	00 00 00 
  406c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406ca0 <__stdio_exit>:
  406ca0:	f3 0f 1e fa          	endbr64
  406ca4:	55                   	push   %rbp
  406ca5:	48 89 e5             	mov    %rsp,%rbp
  406ca8:	53                   	push   %rbx
  406ca9:	48 83 ec 08          	sub    $0x8,%rsp
  406cad:	e8 7e 01 00 00       	call   406e30 <__ofl_lock>
  406cb2:	48 8b 18             	mov    (%rax),%rbx
  406cb5:	48 85 db             	test   %rbx,%rbx
  406cb8:	74 17                	je     406cd1 <__stdio_exit+0x31>
  406cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406cc0:	48 89 df             	mov    %rbx,%rdi
  406cc3:	e8 58 ff ff ff       	call   406c20 <close_file>
  406cc8:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406ccc:	48 85 db             	test   %rbx,%rbx
  406ccf:	75 ef                	jne    406cc0 <__stdio_exit+0x20>
  406cd1:	48 8b 3d c0 3a 00 00 	mov    0x3ac0(%rip),%rdi        # 40a798 <__stderr_used>
  406cd8:	e8 43 ff ff ff       	call   406c20 <close_file>
  406cdd:	48 8b 3d 24 33 00 00 	mov    0x3324(%rip),%rdi        # 40a008 <__stdout_used>
  406ce4:	e8 37 ff ff ff       	call   406c20 <close_file>
  406ce9:	48 8b 3d a8 3a 00 00 	mov    0x3aa8(%rip),%rdi        # 40a798 <__stderr_used>
  406cf0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406cf4:	c9                   	leave
  406cf5:	e9 26 ff ff ff       	jmp    406c20 <close_file>
  406cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406d00 <__stdio_write>:
  406d00:	f3 0f 1e fa          	endbr64
  406d04:	55                   	push   %rbp
  406d05:	48 89 e5             	mov    %rsp,%rbp
  406d08:	41 57                	push   %r15
  406d0a:	41 56                	push   %r14
  406d0c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406d10:	41 55                	push   %r13
  406d12:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406d18:	41 54                	push   %r12
  406d1a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406d20:	53                   	push   %rbx
  406d21:	48 89 fb             	mov    %rdi,%rbx
  406d24:	48 83 ec 48          	sub    $0x48,%rsp
  406d28:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406d2c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406d30:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406d37:	00 00 
  406d39:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406d3d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406d41:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406d45:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406d49:	49 29 c0             	sub    %rax,%r8
  406d4c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406d50:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406d54:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406d58:	eb 37                	jmp    406d91 <__stdio_write+0x91>
  406d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d60:	48 85 c0             	test   %rax,%rax
  406d63:	0f 88 8f 00 00 00    	js     406df8 <__stdio_write+0xf8>
  406d69:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406d6d:	49 29 c6             	sub    %rax,%r14
  406d70:	48 39 c2             	cmp    %rax,%rdx
  406d73:	73 12                	jae    406d87 <__stdio_write+0x87>
  406d75:	41 83 ed 01          	sub    $0x1,%r13d
  406d79:	48 29 d0             	sub    %rdx,%rax
  406d7c:	49 83 c7 10          	add    $0x10,%r15
  406d80:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406d84:	4d 63 e5             	movslq %r13d,%r12
  406d87:	48 29 c2             	sub    %rax,%rdx
  406d8a:	49 01 07             	add    %rax,(%r15)
  406d8d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406d91:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406d95:	b8 14 00 00 00       	mov    $0x14,%eax
  406d9a:	4c 89 fe             	mov    %r15,%rsi
  406d9d:	4c 89 e2             	mov    %r12,%rdx
  406da0:	0f 05                	syscall
  406da2:	48 89 c7             	mov    %rax,%rdi
  406da5:	e8 f6 fc ff ff       	call   406aa0 <__syscall_ret>
  406daa:	49 39 c6             	cmp    %rax,%r14
  406dad:	75 b1                	jne    406d60 <__stdio_write+0x60>
  406daf:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406db3:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406db7:	48 01 c1             	add    %rax,%rcx
  406dba:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406dbf:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406dc3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406dc7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406dcc:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406dd0:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406dd4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406dd8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406ddf:	00 00 
  406de1:	75 3a                	jne    406e1d <__stdio_write+0x11d>
  406de3:	48 83 c4 48          	add    $0x48,%rsp
  406de7:	5b                   	pop    %rbx
  406de8:	41 5c                	pop    %r12
  406dea:	41 5d                	pop    %r13
  406dec:	41 5e                	pop    %r14
  406dee:	41 5f                	pop    %r15
  406df0:	5d                   	pop    %rbp
  406df1:	c3                   	ret
  406df2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406df8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406dfc:	83 0b 20             	orl    $0x20,(%rbx)
  406dff:	31 c0                	xor    %eax,%eax
  406e01:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406e08:	00 
  406e09:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406e0d:	41 83 fd 02          	cmp    $0x2,%r13d
  406e11:	74 c1                	je     406dd4 <__stdio_write+0xd4>
  406e13:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406e17:	49 2b 47 08          	sub    0x8(%r15),%rax
  406e1b:	eb b7                	jmp    406dd4 <__stdio_write+0xd4>
  406e1d:	e8 7e ba ff ff       	call   4028a0 <__stack_chk_fail>
  406e22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406e29:	00 00 00 
  406e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406e30 <__ofl_lock>:
  406e30:	f3 0f 1e fa          	endbr64
  406e34:	55                   	push   %rbp
  406e35:	48 8d 3d 64 39 00 00 	lea    0x3964(%rip),%rdi        # 40a7a0 <ofl_lock>
  406e3c:	48 89 e5             	mov    %rsp,%rbp
  406e3f:	e8 1c 00 00 00       	call   406e60 <__lock>
  406e44:	48 8d 05 5d 39 00 00 	lea    0x395d(%rip),%rax        # 40a7a8 <ofl_head>
  406e4b:	5d                   	pop    %rbp
  406e4c:	c3                   	ret
  406e4d:	0f 1f 00             	nopl   (%rax)

0000000000406e50 <__ofl_unlock>:
  406e50:	f3 0f 1e fa          	endbr64
  406e54:	48 8d 3d 45 39 00 00 	lea    0x3945(%rip),%rdi        # 40a7a0 <ofl_lock>
  406e5b:	e9 e0 00 00 00       	jmp    406f40 <__unlock>

0000000000406e60 <__lock>:
  406e60:	f3 0f 1e fa          	endbr64
  406e64:	0f be 0d f8 32 00 00 	movsbl 0x32f8(%rip),%ecx        # 40a163 <__libc+0x3>
  406e6b:	85 c9                	test   %ecx,%ecx
  406e6d:	74 51                	je     406ec0 <__lock+0x60>
  406e6f:	31 c0                	xor    %eax,%eax
  406e71:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406e76:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406e7a:	89 c2                	mov    %eax,%edx
  406e7c:	85 c9                	test   %ecx,%ecx
  406e7e:	78 48                	js     406ec8 <__lock+0x68>
  406e80:	85 c0                	test   %eax,%eax
  406e82:	74 3c                	je     406ec0 <__lock+0x60>
  406e84:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406e8a:	eb 1e                	jmp    406eaa <__lock+0x4a>
  406e8c:	0f 1f 40 00          	nopl   0x0(%rax)
  406e90:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406e96:	89 d1                	mov    %edx,%ecx
  406e98:	89 c8                	mov    %ecx,%eax
  406e9a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406e9e:	89 c2                	mov    %eax,%edx
  406ea0:	39 c1                	cmp    %eax,%ecx
  406ea2:	74 1c                	je     406ec0 <__lock+0x60>
  406ea4:	41 83 e8 01          	sub    $0x1,%r8d
  406ea8:	74 2e                	je     406ed8 <__lock+0x78>
  406eaa:	85 d2                	test   %edx,%edx
  406eac:	79 e2                	jns    406e90 <__lock+0x30>
  406eae:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406eb4:	89 d6                	mov    %edx,%esi
  406eb6:	eb e0                	jmp    406e98 <__lock+0x38>
  406eb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406ebf:	00 
  406ec0:	c3                   	ret
  406ec1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ec8:	c6 05 94 32 00 00 00 	movb   $0x0,0x3294(%rip)        # 40a163 <__libc+0x3>
  406ecf:	85 c0                	test   %eax,%eax
  406ed1:	75 b1                	jne    406e84 <__lock+0x24>
  406ed3:	c3                   	ret
  406ed4:	0f 1f 40 00          	nopl   0x0(%rax)
  406ed8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406ede:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406ee3:	41 83 c0 01          	add    $0x1,%r8d
  406ee7:	eb 1c                	jmp    406f05 <__lock+0xa5>
  406ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ef0:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406ef7:	89 d0                	mov    %edx,%eax
  406ef9:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406efe:	41 89 c0             	mov    %eax,%r8d
  406f01:	39 c2                	cmp    %eax,%edx
  406f03:	74 bb                	je     406ec0 <__lock+0x60>
  406f05:	44 89 c2             	mov    %r8d,%edx
  406f08:	45 85 c0             	test   %r8d,%r8d
  406f0b:	79 e3                	jns    406ef0 <__lock+0x90>
  406f0d:	49 63 d0             	movslq %r8d,%rdx
  406f10:	45 31 d2             	xor    %r10d,%r10d
  406f13:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f18:	be 80 00 00 00       	mov    $0x80,%esi
  406f1d:	0f 05                	syscall
  406f1f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406f23:	75 09                	jne    406f2e <__lock+0xce>
  406f25:	31 f6                	xor    %esi,%esi
  406f27:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f2c:	0f 05                	syscall
  406f2e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  406f35:	eb b9                	jmp    406ef0 <__lock+0x90>
  406f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406f3e:	00 00 

0000000000406f40 <__unlock>:
  406f40:	f3 0f 1e fa          	endbr64
  406f44:	8b 07                	mov    (%rdi),%eax
  406f46:	85 c0                	test   %eax,%eax
  406f48:	78 06                	js     406f50 <__unlock+0x10>
  406f4a:	c3                   	ret
  406f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406f50:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  406f55:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  406f59:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  406f5e:	74 ea                	je     406f4a <__unlock+0xa>
  406f60:	be 81 00 00 00       	mov    $0x81,%esi
  406f65:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f6a:	ba 01 00 00 00       	mov    $0x1,%edx
  406f6f:	0f 05                	syscall
  406f71:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406f75:	75 d3                	jne    406f4a <__unlock+0xa>
  406f77:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f7c:	be 01 00 00 00       	mov    $0x1,%esi
  406f81:	0f 05                	syscall
  406f83:	c3                   	ret

Disassembly of section .fini:

0000000000406f84 <_fini>:
  406f84:	50                   	push   %rax
  406f85:	58                   	pop    %rax
  406f86:	c3                   	ret
