
./test_pextrb_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 bc 15 00 00       	call   402610 <__funcs_on_exit>
  401054:	e8 c7 15 00 00       	call   402620 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 c0 59 00 00       	call   406a20 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 19 4e 00 00       	call   405e80 <_Exit>

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
  40108a:	49 c7 c0 04 6d 40 00 	mov    $0x406d04,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 99 14 00 00       	jmp    402540 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 57 00 00 	lea    0x57fa(%rip),%rcx        # 407000 <_fini+0x2fc>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 02 0f 00 00       	call   402730 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 19 41 00 00       	call   405960 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 a4 0d 00 00       	call   402600 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 57 00 00 	lea    0x5777(%rip),%rcx        # 407021 <_fini+0x31d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 66 0e 00 00       	call   402730 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 7d 40 00 00       	call   405960 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 08 0d 00 00       	call   402600 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 55 00 00 	lea    0x55ce(%rip),%rsi        # 407030 <_fini+0x32c>
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
  401a9f:	e8 8c 0c 00 00       	call   402730 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 9f 3e 00 00       	call   405960 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 2a 0b 00 00       	call   402600 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 54 00 00 	lea    0x54d7(%rip),%rsi        # 407078 <_fini+0x374>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 6e 0b 00 00       	call   402730 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 81 3d 00 00       	call   405960 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 0c 0a 00 00       	call   402600 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 54 00 00 	lea    0x543b(%rip),%rsi        # 407099 <_fini+0x395>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 b8 0a 00 00       	call   402730 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 cf 3c 00 00       	call   405960 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 5a 09 00 00       	call   402600 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 53 00 00 	lea    0x53b7(%rip),%rsi        # 4070aa <_fini+0x3a6>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 29 0a 00 00       	call   402730 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 40 3c 00 00       	call   405960 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 cb 08 00 00       	call   402600 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 51 00 00 	lea    0x5191(%rip),%rsi        # 407030 <_fini+0x32c>
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
  401edc:	e8 4f 08 00 00       	call   402730 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 62 3a 00 00       	call   405960 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 ed 06 00 00       	call   402600 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 50 00 00 	lea    0x509a(%rip),%rsi        # 407078 <_fini+0x374>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 31 07 00 00       	call   402730 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 44 39 00 00       	call   405960 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 cf 05 00 00       	call   402600 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 50 00 00 	lea    0x501a(%rip),%rsi        # 4070b5 <_fini+0x3b1>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 7b 06 00 00       	call   402730 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 92 38 00 00       	call   405960 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 1d 05 00 00       	call   402600 <__stack_chk_fail>
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
  402129:	48 8d 35 96 4f 00 00 	lea    0x4f96(%rip),%rsi        # 4070c6 <_fini+0x3c2>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 ec 05 00 00       	call   402730 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 03 38 00 00       	call   405960 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 8e 04 00 00       	call   402600 <__stack_chk_fail>
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
  40217c:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  402183:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40218a:	00 00 
  40218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402190:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402192:	48 b8 7f 86 6e df 43 	movabs $0x7f3fc943df6e867f,%rax
  402199:	c9 3f 7f 
  40219c:	48 ba ee 1d 09 26 2f 	movabs $0x8000242f26091dee,%rdx
  4021a3:	24 00 80 
  4021a6:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
  4021ad:	48 89 95 e8 fe ff ff 	mov    %rdx,-0x118(%rbp)
    C_OUT_TYPE con = CON;
  4021b4:	c6 85 ce fe ff ff 43 	movb   $0x43,-0x132(%rbp)
    C_OUT_TYPE out;

    SSE_TYPE v1;
    INSERT(&v1, in1);
  4021bb:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4021c2:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
  4021c9:	48 89 d6             	mov    %rdx,%rsi
  4021cc:	48 89 c7             	mov    %rax,%rdi
  4021cf:	e8 55 f0 ff ff       	call   401229 <insert_i8>

    out = INTRINSIC_FUN(v1, IMM8);
  4021d4:	66 0f 6f 85 d0 fe ff 	movdqa -0x130(%rbp),%xmm0
  4021db:	ff 
  4021dc:	66 0f 3a 14 c0 04    	pextrb $0x4,%xmm0,%eax
  4021e2:	88 85 cf fe ff ff    	mov    %al,-0x131(%rbp)

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  4021e8:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4021ef:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4021f6:	48 89 d6             	mov    %rdx,%rsi
  4021f9:	48 89 c7             	mov    %rax,%rdi
  4021fc:	e8 f9 f6 ff ff       	call   4018fa <to_string_i8>

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%d\n |\n\\/\n%d\n",in1_s, IMM8, out);
  402201:	0f be 95 cf fe ff ff 	movsbl -0x131(%rbp),%edx
  402208:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40220f:	48 8d 3d bb 4e 00 00 	lea    0x4ebb(%rip),%rdi        # 4070d1 <_fini+0x3cd>
  402216:	89 d1                	mov    %edx,%ecx
  402218:	ba 04 00 00 00       	mov    $0x4,%edx
  40221d:	48 89 c6             	mov    %rax,%rsi
  402220:	b8 00 00 00 00       	mov    $0x0,%eax
  402225:	e8 36 04 00 00       	call   402660 <printf>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
  40222a:	b8 00 00 00 00       	mov    $0x0,%eax
}
  40222f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402233:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40223a:	00 00 
  40223c:	74 05                	je     402243 <main+0xcf>
  40223e:	e8 bd 03 00 00       	call   402600 <__stack_chk_fail>
  402243:	c9                   	leave
  402244:	c3                   	ret
  402245:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40224c:	00 00 00 
  40224f:	90                   	nop

0000000000402250 <dummy>:
  402250:	f3 0f 1e fa          	endbr64
  402254:	c3                   	ret
  402255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40225c:	00 00 00 
  40225f:	90                   	nop

0000000000402260 <dummy1>:
  402260:	f3 0f 1e fa          	endbr64
  402264:	c3                   	ret
  402265:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40226c:	00 00 00 
  40226f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402276:	00 00 00 
  402279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402280 <__init_libc>:
  402280:	f3 0f 1e fa          	endbr64
  402284:	55                   	push   %rbp
  402285:	48 89 fa             	mov    %rdi,%rdx
  402288:	31 c0                	xor    %eax,%eax
  40228a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40228f:	48 89 e5             	mov    %rsp,%rbp
  402292:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402299:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4022a0:	f3 48 ab             	rep stos %rax,(%rdi)
  4022a3:	48 c7 c0 e8 a5 40 00 	mov    $0x40a5e8,%rax
  4022aa:	48 89 10             	mov    %rdx,(%rax)
  4022ad:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  4022b1:	0f 84 c9 01 00 00    	je     402480 <__init_libc+0x200>
  4022b7:	31 c0                	xor    %eax,%eax
  4022b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4022c0:	48 89 c1             	mov    %rax,%rcx
  4022c3:	48 83 c0 01          	add    $0x1,%rax
  4022c7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4022cc:	75 f2                	jne    4022c0 <__init_libc+0x40>
  4022ce:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4022d5:	00 
  4022d6:	48 01 d0             	add    %rdx,%rax
  4022d9:	48 89 05 88 7e 00 00 	mov    %rax,0x7e88(%rip)        # 40a168 <__libc+0x8>
  4022e0:	48 8b 10             	mov    (%rax),%rdx
  4022e3:	48 83 c0 08          	add    $0x8,%rax
  4022e7:	48 85 d2             	test   %rdx,%rdx
  4022ea:	0f 84 a0 01 00 00    	je     402490 <__init_libc+0x210>
  4022f0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4022fc:	00 00 00 00 
  402300:	48 83 fa 25          	cmp    $0x25,%rdx
  402304:	77 0b                	ja     402311 <__init_libc+0x91>
  402306:	48 8b 08             	mov    (%rax),%rcx
  402309:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  402310:	ff 
  402311:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402315:	48 83 c0 10          	add    $0x10,%rax
  402319:	48 85 d2             	test   %rdx,%rdx
  40231c:	75 e2                	jne    402300 <__init_libc+0x80>
  40231e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402325:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402329:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402330:	48 89 0d 11 7e 00 00 	mov    %rcx,0x7e11(%rip)        # 40a148 <__hwcap>
  402337:	48 85 c0             	test   %rax,%rax
  40233a:	74 07                	je     402343 <__init_libc+0xc3>
  40233c:	48 89 05 ed 7d 00 00 	mov    %rax,0x7ded(%rip)        # 40a130 <__sysinfo>
  402343:	48 89 15 46 7e 00 00 	mov    %rdx,0x7e46(%rip)        # 40a190 <__libc+0x30>
  40234a:	48 85 f6             	test   %rsi,%rsi
  40234d:	0f 84 15 01 00 00    	je     402468 <__init_libc+0x1e8>
  402353:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  40235a:	48 c7 c1 40 a1 40 00 	mov    $0x40a140,%rcx
  402361:	48 89 30             	mov    %rsi,(%rax)
  402364:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402368:	48 89 31             	mov    %rsi,(%rcx)
  40236b:	0f b6 16             	movzbl (%rsi),%edx
  40236e:	84 d2                	test   %dl,%dl
  402370:	74 21                	je     402393 <__init_libc+0x113>
  402372:	0f 1f 00             	nopl   (%rax)
  402375:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40237c:	00 00 00 00 
  402380:	80 fa 2f             	cmp    $0x2f,%dl
  402383:	75 03                	jne    402388 <__init_libc+0x108>
  402385:	48 89 01             	mov    %rax,(%rcx)
  402388:	0f b6 10             	movzbl (%rax),%edx
  40238b:	48 83 c0 01          	add    $0x1,%rax
  40238f:	84 d2                	test   %dl,%dl
  402391:	75 ed                	jne    402380 <__init_libc+0x100>
  402393:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40239a:	e8 31 38 00 00       	call   405bd0 <__init_tls>
  40239f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4023a3:	e8 e8 01 00 00       	call   402590 <__init_ssp>
  4023a8:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  4023af:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  4023b6:	0f 84 84 00 00 00    	je     402440 <__init_libc+0x1c0>
  4023bc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4023c0:	b8 07 00 00 00       	mov    $0x7,%eax
  4023c5:	be 03 00 00 00       	mov    $0x3,%esi
  4023ca:	31 d2                	xor    %edx,%edx
  4023cc:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4023d3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4023da:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4023e1:	00 00 00 00 
  4023e5:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  4023ec:	00 00 00 
  4023ef:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  4023f6:	00 00 00 
  4023f9:	0f 05                	syscall
  4023fb:	85 c0                	test   %eax,%eax
  4023fd:	79 01                	jns    402400 <__init_libc+0x180>
  4023ff:	f4                   	hlt
  402400:	48 89 fa             	mov    %rdi,%rdx
  402403:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  40240a:	be 02 80 00 00       	mov    $0x8002,%esi
  40240f:	48 8d 3d d3 4c 00 00 	lea    0x4cd3(%rip),%rdi        # 4070e9 <_fini+0x3e5>
  402416:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  40241a:	74 0d                	je     402429 <__init_libc+0x1a9>
  40241c:	b8 02 00 00 00       	mov    $0x2,%eax
  402421:	0f 05                	syscall
  402423:	48 85 c0             	test   %rax,%rax
  402426:	79 01                	jns    402429 <__init_libc+0x1a9>
  402428:	f4                   	hlt
  402429:	48 83 c2 08          	add    $0x8,%rdx
  40242d:	4c 39 c2             	cmp    %r8,%rdx
  402430:	75 e4                	jne    402416 <__init_libc+0x196>
  402432:	c6 05 29 7d 00 00 01 	movb   $0x1,0x7d29(%rip)        # 40a162 <__libc+0x2>
  402439:	c9                   	leave
  40243a:	c3                   	ret
  40243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402440:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402447:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40244e:	0f 85 68 ff ff ff    	jne    4023bc <__init_libc+0x13c>
  402454:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402459:	0f 85 5d ff ff ff    	jne    4023bc <__init_libc+0x13c>
  40245f:	c9                   	leave
  402460:	c3                   	ret
  402461:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402468:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40246c:	48 85 c0             	test   %rax,%rax
  40246f:	74 2f                	je     4024a0 <__init_libc+0x220>
  402471:	48 89 c6             	mov    %rax,%rsi
  402474:	e9 da fe ff ff       	jmp    402353 <__init_libc+0xd3>
  402479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402480:	b8 08 00 00 00       	mov    $0x8,%eax
  402485:	e9 4c fe ff ff       	jmp    4022d6 <__init_libc+0x56>
  40248a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402490:	48 c7 05 ad 7c 00 00 	movq   $0x0,0x7cad(%rip)        # 40a148 <__hwcap>
  402497:	00 00 00 00 
  40249b:	e9 a3 fe ff ff       	jmp    402343 <__init_libc+0xc3>
  4024a0:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  4024a7:	48 8d 3d 7a 4c 00 00 	lea    0x4c7a(%rip),%rdi        # 407128 <_fini+0x424>
  4024ae:	48 89 38             	mov    %rdi,(%rax)
  4024b1:	48 c7 c0 40 a1 40 00 	mov    $0x40a140,%rax
  4024b8:	48 89 38             	mov    %rdi,(%rax)
  4024bb:	e9 d3 fe ff ff       	jmp    402393 <__init_libc+0x113>

00000000004024c0 <__libc_start_init>:
  4024c0:	f3 0f 1e fa          	endbr64
  4024c4:	55                   	push   %rbp
  4024c5:	48 89 e5             	mov    %rsp,%rbp
  4024c8:	41 54                	push   %r12
  4024ca:	53                   	push   %rbx
  4024cb:	e8 30 eb ff ff       	call   401000 <_init>
  4024d0:	48 c7 c3 c0 9f 40 00 	mov    $0x409fc0,%rbx
  4024d7:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  4024de:	4c 39 e3             	cmp    %r12,%rbx
  4024e1:	73 18                	jae    4024fb <__libc_start_init+0x3b>
  4024e3:	66 90                	xchg   %ax,%ax
  4024e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4024ec:	00 00 00 00 
  4024f0:	ff 13                	call   *(%rbx)
  4024f2:	48 83 c3 08          	add    $0x8,%rbx
  4024f6:	4c 39 e3             	cmp    %r12,%rbx
  4024f9:	72 f5                	jb     4024f0 <__libc_start_init+0x30>
  4024fb:	5b                   	pop    %rbx
  4024fc:	41 5c                	pop    %r12
  4024fe:	5d                   	pop    %rbp
  4024ff:	c3                   	ret

0000000000402500 <libc_start_main_stage2>:
  402500:	f3 0f 1e fa          	endbr64
  402504:	55                   	push   %rbp
  402505:	48 63 c6             	movslq %esi,%rax
  402508:	48 89 e5             	mov    %rsp,%rbp
  40250b:	41 56                	push   %r14
  40250d:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  402512:	41 55                	push   %r13
  402514:	49 89 fd             	mov    %rdi,%r13
  402517:	41 54                	push   %r12
  402519:	49 89 d4             	mov    %rdx,%r12
  40251c:	53                   	push   %rbx
  40251d:	48 89 c3             	mov    %rax,%rbx
  402520:	e8 9b ff ff ff       	call   4024c0 <__libc_start_init>
  402525:	89 df                	mov    %ebx,%edi
  402527:	4c 89 f2             	mov    %r14,%rdx
  40252a:	4c 89 e6             	mov    %r12,%rsi
  40252d:	41 ff d5             	call   *%r13
  402530:	89 c7                	mov    %eax,%edi
  402532:	e8 09 eb ff ff       	call   401040 <exit>
  402537:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40253e:	00 00 

0000000000402540 <__libc_start_main>:
  402540:	f3 0f 1e fa          	endbr64
  402544:	55                   	push   %rbp
  402545:	48 63 c6             	movslq %esi,%rax
  402548:	48 89 e5             	mov    %rsp,%rbp
  40254b:	41 54                	push   %r12
  40254d:	49 89 fc             	mov    %rdi,%r12
  402550:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402555:	53                   	push   %rbx
  402556:	48 89 c3             	mov    %rax,%rbx
  402559:	48 83 ec 10          	sub    $0x10,%rsp
  40255d:	48 8b 32             	mov    (%rdx),%rsi
  402560:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402564:	e8 17 fd ff ff       	call   402280 <__init_libc>
  402569:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 402500 <libc_start_main_stage2>
  402570:	89 de                	mov    %ebx,%esi
  402572:	4c 89 e7             	mov    %r12,%rdi
  402575:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402579:	48 83 c4 10          	add    $0x10,%rsp
  40257d:	5b                   	pop    %rbx
  40257e:	41 5c                	pop    %r12
  402580:	5d                   	pop    %rbp
  402581:	ff e0                	jmp    *%rax
  402583:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40258a:	00 00 00 
  40258d:	0f 1f 00             	nopl   (%rax)

0000000000402590 <__init_ssp>:
  402590:	f3 0f 1e fa          	endbr64
  402594:	55                   	push   %rbp
  402595:	48 89 e5             	mov    %rsp,%rbp
  402598:	48 83 ec 10          	sub    $0x10,%rsp
  40259c:	48 85 ff             	test   %rdi,%rdi
  40259f:	74 3f                	je     4025e0 <__init_ssp+0x50>
  4025a1:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  4025a8:	48 89 fe             	mov    %rdi,%rsi
  4025ab:	ba 08 00 00 00       	mov    $0x8,%edx
  4025b0:	48 89 cf             	mov    %rcx,%rdi
  4025b3:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  4025b7:	e8 f1 33 00 00       	call   4059ad <memcpy>
  4025bc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4025c0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4025c4:	48 8b 11             	mov    (%rcx),%rdx
  4025c7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4025ce:	00 00 
  4025d0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4025d4:	c9                   	leave
  4025d5:	c3                   	ret
  4025d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025dd:	00 00 00 
  4025e0:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  4025e7:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  4025ee:	48 89 01             	mov    %rax,(%rcx)
  4025f1:	eb cd                	jmp    4025c0 <__init_ssp+0x30>
  4025f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4025fa:	00 00 00 
  4025fd:	0f 1f 00             	nopl   (%rax)

0000000000402600 <__stack_chk_fail>:
  402600:	f3 0f 1e fa          	endbr64
  402604:	f4                   	hlt
  402605:	c3                   	ret
  402606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40260d:	00 00 00 

0000000000402610 <__funcs_on_exit>:
  402610:	f3 0f 1e fa          	endbr64
  402614:	c3                   	ret
  402615:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40261c:	00 00 00 
  40261f:	90                   	nop

0000000000402620 <__libc_exit_fini>:
  402620:	f3 0f 1e fa          	endbr64
  402624:	55                   	push   %rbp
  402625:	48 89 e5             	mov    %rsp,%rbp
  402628:	41 54                	push   %r12
  40262a:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  402631:	53                   	push   %rbx
  402632:	48 c7 c3 d0 9f 40 00 	mov    $0x409fd0,%rbx
  402639:	49 39 dc             	cmp    %rbx,%r12
  40263c:	73 0f                	jae    40264d <__libc_exit_fini+0x2d>
  40263e:	66 90                	xchg   %ax,%ax
  402640:	48 83 eb 08          	sub    $0x8,%rbx
  402644:	31 c0                	xor    %eax,%eax
  402646:	ff 13                	call   *(%rbx)
  402648:	49 39 dc             	cmp    %rbx,%r12
  40264b:	72 f3                	jb     402640 <__libc_exit_fini+0x20>
  40264d:	5b                   	pop    %rbx
  40264e:	31 c0                	xor    %eax,%eax
  402650:	41 5c                	pop    %r12
  402652:	5d                   	pop    %rbp
  402653:	e9 ac 46 00 00       	jmp    406d04 <_fini>
  402658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40265f:	00 

0000000000402660 <printf>:
  402660:	f3 0f 1e fa          	endbr64
  402664:	55                   	push   %rbp
  402665:	48 89 e5             	mov    %rsp,%rbp
  402668:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40266f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402676:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40267d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402684:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40268b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402692:	84 c0                	test   %al,%al
  402694:	74 20                	je     4026b6 <printf+0x56>
  402696:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40269a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40269e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  4026a2:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  4026a6:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  4026aa:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  4026ae:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  4026b2:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  4026b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4026bd:	00 00 
  4026bf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4026c6:	31 c0                	xor    %eax,%eax
  4026c8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4026cc:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4026d3:	48 89 fe             	mov    %rdi,%rsi
  4026d6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4026dd:	48 8d 3d 3c 79 00 00 	lea    0x793c(%rip),%rdi        # 40a020 <__stdout_FILE>
  4026e4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4026eb:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  4026f2:	00 00 00 
  4026f5:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4026fc:	00 00 00 
  4026ff:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402706:	e8 05 30 00 00       	call   405710 <vfprintf>
  40270b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402712:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402719:	00 00 
  40271b:	75 02                	jne    40271f <printf+0xbf>
  40271d:	c9                   	leave
  40271e:	c3                   	ret
  40271f:	e8 dc fe ff ff       	call   402600 <__stack_chk_fail>
  402724:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40272b:	00 00 00 
  40272e:	66 90                	xchg   %ax,%ax

0000000000402730 <sprintf>:
  402730:	f3 0f 1e fa          	endbr64
  402734:	55                   	push   %rbp
  402735:	48 89 e5             	mov    %rsp,%rbp
  402738:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40273f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402746:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40274d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402754:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  40275b:	84 c0                	test   %al,%al
  40275d:	74 20                	je     40277f <sprintf+0x4f>
  40275f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402763:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402767:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  40276b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  40276f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402773:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402777:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  40277b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  40277f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402786:	00 00 
  402788:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40278f:	31 c0                	xor    %eax,%eax
  402791:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402795:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  40279c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  4027a3:	00 00 00 
  4027a6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4027ad:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4027b4:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4027bb:	00 00 00 
  4027be:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4027c5:	e8 76 31 00 00       	call   405940 <vsprintf>
  4027ca:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4027d1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4027d8:	00 00 
  4027da:	75 02                	jne    4027de <sprintf+0xae>
  4027dc:	c9                   	leave
  4027dd:	c3                   	ret
  4027de:	e8 1d fe ff ff       	call   402600 <__stack_chk_fail>
  4027e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4027ea:	00 00 00 
  4027ed:	0f 1f 00             	nopl   (%rax)

00000000004027f0 <pop_arg>:
  4027f0:	83 ee 09             	sub    $0x9,%esi
  4027f3:	83 fe 11             	cmp    $0x11,%esi
  4027f6:	77 50                	ja     402848 <pop_arg+0x58>
  4027f8:	48 8d 0d 2d 49 00 00 	lea    0x492d(%rip),%rcx        # 40712c <_fini+0x428>
  4027ff:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402803:	48 01 c8             	add    %rcx,%rax
  402806:	3e ff e0             	notrack jmp *%rax
  402809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402810:	8b 02                	mov    (%rdx),%eax
  402812:	83 f8 2f             	cmp    $0x2f,%eax
  402815:	77 39                	ja     402850 <pop_arg+0x60>
  402817:	89 c1                	mov    %eax,%ecx
  402819:	83 c0 08             	add    $0x8,%eax
  40281c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402820:	89 02                	mov    %eax,(%rdx)
  402822:	48 8b 01             	mov    (%rcx),%rax
  402825:	48 89 07             	mov    %rax,(%rdi)
  402828:	c3                   	ret
  402829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402830:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402834:	48 83 c0 0f          	add    $0xf,%rax
  402838:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40283c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402840:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402844:	db 28                	fldt   (%rax)
  402846:	db 3f                	fstpt  (%rdi)
  402848:	c3                   	ret
  402849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402850:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402854:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402858:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40285c:	48 8b 01             	mov    (%rcx),%rax
  40285f:	48 89 07             	mov    %rax,(%rdi)
  402862:	c3                   	ret
  402863:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402868:	8b 02                	mov    (%rdx),%eax
  40286a:	83 f8 2f             	cmp    $0x2f,%eax
  40286d:	0f 87 55 01 00 00    	ja     4029c8 <pop_arg+0x1d8>
  402873:	89 c1                	mov    %eax,%ecx
  402875:	83 c0 08             	add    $0x8,%eax
  402878:	48 03 4a 10          	add    0x10(%rdx),%rcx
  40287c:	89 02                	mov    %eax,(%rdx)
  40287e:	0f b7 01             	movzwl (%rcx),%eax
  402881:	48 89 07             	mov    %rax,(%rdi)
  402884:	c3                   	ret
  402885:	0f 1f 00             	nopl   (%rax)
  402888:	8b 42 04             	mov    0x4(%rdx),%eax
  40288b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402890:	0f 87 1a 01 00 00    	ja     4029b0 <pop_arg+0x1c0>
  402896:	89 c1                	mov    %eax,%ecx
  402898:	83 c0 10             	add    $0x10,%eax
  40289b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  40289f:	89 42 04             	mov    %eax,0x4(%rdx)
  4028a2:	dd 01                	fldl   (%rcx)
  4028a4:	db 3f                	fstpt  (%rdi)
  4028a6:	c3                   	ret
  4028a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028ae:	00 00 
  4028b0:	8b 02                	mov    (%rdx),%eax
  4028b2:	83 f8 2f             	cmp    $0x2f,%eax
  4028b5:	0f 87 dd 00 00 00    	ja     402998 <pop_arg+0x1a8>
  4028bb:	89 c1                	mov    %eax,%ecx
  4028bd:	83 c0 08             	add    $0x8,%eax
  4028c0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4028c4:	89 02                	mov    %eax,(%rdx)
  4028c6:	48 63 01             	movslq (%rcx),%rax
  4028c9:	48 89 07             	mov    %rax,(%rdi)
  4028cc:	c3                   	ret
  4028cd:	0f 1f 00             	nopl   (%rax)
  4028d0:	8b 02                	mov    (%rdx),%eax
  4028d2:	83 f8 2f             	cmp    $0x2f,%eax
  4028d5:	0f 87 a5 00 00 00    	ja     402980 <pop_arg+0x190>
  4028db:	89 c1                	mov    %eax,%ecx
  4028dd:	83 c0 08             	add    $0x8,%eax
  4028e0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4028e4:	89 02                	mov    %eax,(%rdx)
  4028e6:	8b 01                	mov    (%rcx),%eax
  4028e8:	48 89 07             	mov    %rax,(%rdi)
  4028eb:	c3                   	ret
  4028ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4028f0:	8b 02                	mov    (%rdx),%eax
  4028f2:	83 f8 2f             	cmp    $0x2f,%eax
  4028f5:	77 79                	ja     402970 <pop_arg+0x180>
  4028f7:	89 c1                	mov    %eax,%ecx
  4028f9:	83 c0 08             	add    $0x8,%eax
  4028fc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402900:	89 02                	mov    %eax,(%rdx)
  402902:	0f b6 01             	movzbl (%rcx),%eax
  402905:	48 89 07             	mov    %rax,(%rdi)
  402908:	c3                   	ret
  402909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402910:	8b 02                	mov    (%rdx),%eax
  402912:	83 f8 2f             	cmp    $0x2f,%eax
  402915:	77 49                	ja     402960 <pop_arg+0x170>
  402917:	89 c1                	mov    %eax,%ecx
  402919:	83 c0 08             	add    $0x8,%eax
  40291c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402920:	89 02                	mov    %eax,(%rdx)
  402922:	48 0f be 01          	movsbq (%rcx),%rax
  402926:	48 89 07             	mov    %rax,(%rdi)
  402929:	c3                   	ret
  40292a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402930:	8b 02                	mov    (%rdx),%eax
  402932:	83 f8 2f             	cmp    $0x2f,%eax
  402935:	77 19                	ja     402950 <pop_arg+0x160>
  402937:	89 c1                	mov    %eax,%ecx
  402939:	83 c0 08             	add    $0x8,%eax
  40293c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402940:	89 02                	mov    %eax,(%rdx)
  402942:	48 0f bf 01          	movswq (%rcx),%rax
  402946:	48 89 07             	mov    %rax,(%rdi)
  402949:	c3                   	ret
  40294a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402950:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402954:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402958:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40295c:	eb e4                	jmp    402942 <pop_arg+0x152>
  40295e:	66 90                	xchg   %ax,%ax
  402960:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402964:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402968:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40296c:	eb b4                	jmp    402922 <pop_arg+0x132>
  40296e:	66 90                	xchg   %ax,%ax
  402970:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402974:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402978:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40297c:	eb 84                	jmp    402902 <pop_arg+0x112>
  40297e:	66 90                	xchg   %ax,%ax
  402980:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402984:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402988:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40298c:	e9 55 ff ff ff       	jmp    4028e6 <pop_arg+0xf6>
  402991:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402998:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  40299c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  4029a0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4029a4:	e9 1d ff ff ff       	jmp    4028c6 <pop_arg+0xd6>
  4029a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029b0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4029b4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  4029b8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4029bc:	e9 e1 fe ff ff       	jmp    4028a2 <pop_arg+0xb2>
  4029c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029c8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4029cc:	48 8d 41 08          	lea    0x8(%rcx),%rax
  4029d0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4029d4:	e9 a5 fe ff ff       	jmp    40287e <pop_arg+0x8e>
  4029d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004029e0 <pad.part.0>:
  4029e0:	55                   	push   %rbp
  4029e1:	29 ca                	sub    %ecx,%edx
  4029e3:	40 0f be f6          	movsbl %sil,%esi
  4029e7:	48 89 e5             	mov    %rsp,%rbp
  4029ea:	41 56                	push   %r14
  4029ec:	41 55                	push   %r13
  4029ee:	41 54                	push   %r12
  4029f0:	4c 63 e2             	movslq %edx,%r12
  4029f3:	ba 00 01 00 00       	mov    $0x100,%edx
  4029f8:	53                   	push   %rbx
  4029f9:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402a00:	41 39 d4             	cmp    %edx,%r12d
  402a03:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402a0a:	00 00 
  402a0c:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402a10:	49 89 fd             	mov    %rdi,%r13
  402a13:	49 0f 4e d4          	cmovle %r12,%rdx
  402a17:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402a1e:	e8 bc 2f 00 00       	call   4059df <memset>
  402a23:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402a2a:	0f 8e 88 00 00 00    	jle    402ab8 <pad.part.0+0xd8>
  402a30:	41 8b 45 00          	mov    0x0(%r13),%eax
  402a34:	44 89 e3             	mov    %r12d,%ebx
  402a37:	eb 15                	jmp    402a4e <pad.part.0+0x6e>
  402a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a40:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402a46:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402a4c:	76 2a                	jbe    402a78 <pad.part.0+0x98>
  402a4e:	a8 20                	test   $0x20,%al
  402a50:	75 ee                	jne    402a40 <pad.part.0+0x60>
  402a52:	4c 89 ea             	mov    %r13,%rdx
  402a55:	be 00 01 00 00       	mov    $0x100,%esi
  402a5a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402a61:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402a67:	e8 34 38 00 00       	call   4062a0 <__fwritex>
  402a6c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402a70:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402a76:	77 d6                	ja     402a4e <pad.part.0+0x6e>
  402a78:	45 0f b6 e4          	movzbl %r12b,%r12d
  402a7c:	a8 20                	test   $0x20,%al
  402a7e:	74 20                	je     402aa0 <pad.part.0+0xc0>
  402a80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402a84:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402a8b:	00 00 
  402a8d:	75 2f                	jne    402abe <pad.part.0+0xde>
  402a8f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402a96:	5b                   	pop    %rbx
  402a97:	41 5c                	pop    %r12
  402a99:	41 5d                	pop    %r13
  402a9b:	41 5e                	pop    %r14
  402a9d:	5d                   	pop    %rbp
  402a9e:	c3                   	ret
  402a9f:	90                   	nop
  402aa0:	49 63 f4             	movslq %r12d,%rsi
  402aa3:	4c 89 ea             	mov    %r13,%rdx
  402aa6:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402aad:	e8 ee 37 00 00       	call   4062a0 <__fwritex>
  402ab2:	eb cc                	jmp    402a80 <pad.part.0+0xa0>
  402ab4:	0f 1f 40 00          	nopl   0x0(%rax)
  402ab8:	41 8b 45 00          	mov    0x0(%r13),%eax
  402abc:	eb be                	jmp    402a7c <pad.part.0+0x9c>
  402abe:	e8 3d fb ff ff       	call   402600 <__stack_chk_fail>
  402ac3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402aca:	00 00 00 
  402acd:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402ad4:	00 00 00 
  402ad7:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402ade:	00 00 00 
  402ae1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402ae8:	00 00 00 
  402aeb:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402af2:	00 00 00 
  402af5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402afc:	00 00 00 
  402aff:	90                   	nop

0000000000402b00 <fmt_fp>:
  402b00:	55                   	push   %rbp
  402b01:	48 89 e5             	mov    %rsp,%rbp
  402b04:	41 57                	push   %r15
  402b06:	41 56                	push   %r14
  402b08:	41 55                	push   %r13
  402b0a:	41 54                	push   %r12
  402b0c:	53                   	push   %rbx
  402b0d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402b14:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402b19:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402b20:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402b27:	41 89 d7             	mov    %edx,%r15d
  402b2a:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402b30:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402b36:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402b3d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b44:	00 00 
  402b46:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402b4a:	31 c0                	xor    %eax,%eax
  402b4c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402b53:	00 00 00 
  402b56:	ff 75 18             	push   0x18(%rbp)
  402b59:	ff 75 10             	push   0x10(%rbp)
  402b5c:	e8 ef 33 00 00       	call   405f50 <__signbitl>
  402b61:	41 5d                	pop    %r13
  402b63:	41 5e                	pop    %r14
  402b65:	85 c0                	test   %eax,%eax
  402b67:	0f 84 8b 00 00 00    	je     402bf8 <fmt_fp+0xf8>
  402b6d:	db 6d 10             	fldt   0x10(%rbp)
  402b70:	48 8d 05 7c 45 00 00 	lea    0x457c(%rip),%rax        # 4070f3 <_fini+0x3ef>
  402b77:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402b7e:	00 00 00 
  402b81:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402b88:	d9 e0                	fchs
  402b8a:	db 7d 10             	fstpt  0x10(%rbp)
  402b8d:	ff 75 18             	push   0x18(%rbp)
  402b90:	ff 75 10             	push   0x10(%rbp)
  402b93:	e8 48 33 00 00       	call   405ee0 <__fpclassifyl>
  402b98:	5b                   	pop    %rbx
  402b99:	41 5c                	pop    %r12
  402b9b:	83 f8 01             	cmp    $0x1,%eax
  402b9e:	0f 8e bc 04 00 00    	jle    403060 <fmt_fp+0x560>
  402ba4:	ff 75 18             	push   0x18(%rbp)
  402ba7:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402bae:	ff 75 10             	push   0x10(%rbp)
  402bb1:	e8 ba 33 00 00       	call   405f70 <frexpl>
  402bb6:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402bbd:	41 5a                	pop    %r10
  402bbf:	d8 c0                	fadd   %st(0),%st
  402bc1:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402bc8:	41 5b                	pop    %r11
  402bca:	41 83 ce 20          	or     $0x20,%r14d
  402bce:	d9 ee                	fldz
  402bd0:	d9 c9                	fxch   %st(1)
  402bd2:	db e9                	fucomi %st(1),%st
  402bd4:	dd d9                	fstp   %st(1)
  402bd6:	7a 58                	jp     402c30 <fmt_fp+0x130>
  402bd8:	75 56                	jne    402c30 <fmt_fp+0x130>
  402bda:	41 83 fe 61          	cmp    $0x61,%r14d
  402bde:	0f 84 37 06 00 00    	je     40321b <fmt_fp+0x71b>
  402be4:	45 85 ff             	test   %r15d,%r15d
  402be7:	0f 88 84 13 00 00    	js     403f71 <fmt_fp+0x1471>
  402bed:	40 0f 95 c6          	setne  %sil
  402bf1:	eb 65                	jmp    402c58 <fmt_fp+0x158>
  402bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402bf8:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402bfe:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402c04:	0f 84 2c 04 00 00    	je     403036 <fmt_fp+0x536>
  402c0a:	48 8d 05 e5 44 00 00 	lea    0x44e5(%rip),%rax        # 4070f6 <_fini+0x3f2>
  402c11:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402c18:	00 00 00 
  402c1b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402c22:	e9 66 ff ff ff       	jmp    402b8d <fmt_fp+0x8d>
  402c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402c2e:	00 00 
  402c30:	41 83 fe 61          	cmp    $0x61,%r14d
  402c34:	0f 84 d6 05 00 00    	je     403210 <fmt_fp+0x710>
  402c3a:	45 85 ff             	test   %r15d,%r15d
  402c3d:	0f 88 3e 13 00 00    	js     403f81 <fmt_fp+0x1481>
  402c43:	40 0f 95 c6          	setne  %sil
  402c47:	41 83 e9 1d          	sub    $0x1d,%r9d
  402c4b:	d8 0d 33 48 00 00    	fmuls  0x4833(%rip)        # 407484 <states+0x1e4>
  402c51:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402c58:	45 85 c9             	test   %r9d,%r9d
  402c5b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402c62:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402c69:	d9 05 19 48 00 00    	flds   0x4819(%rip)        # 407488 <states+0x1e8>
  402c6f:	d9 c9                	fxch   %st(1)
  402c71:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402c77:	48 0f 49 c2          	cmovns %rdx,%rax
  402c7b:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402c82:	48 89 c3             	mov    %rax,%rbx
  402c85:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402c8c:	80 cc 0c             	or     $0xc,%ah
  402c8f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402c96:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402c9d:	00 00 
  402c9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ca6:	00 00 00 00 
  402caa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402cb1:	00 00 00 00 
  402cb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402cbc:	00 00 00 00 
  402cc0:	d9 c0                	fld    %st(0)
  402cc2:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402cc8:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402cce:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402cd4:	48 83 c3 04          	add    $0x4,%rbx
  402cd8:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402cdf:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402ce2:	89 c0                	mov    %eax,%eax
  402ce4:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402ceb:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402cf1:	de e9                	fsubrp %st,%st(1)
  402cf3:	d8 c9                	fmul   %st(1),%st
  402cf5:	d9 ee                	fldz
  402cf7:	d9 c9                	fxch   %st(1)
  402cf9:	db e9                	fucomi %st(1),%st
  402cfb:	dd d9                	fstp   %st(1)
  402cfd:	7a c1                	jp     402cc0 <fmt_fp+0x1c0>
  402cff:	75 bf                	jne    402cc0 <fmt_fp+0x1c0>
  402d01:	dd d8                	fstp   %st(0)
  402d03:	dd d8                	fstp   %st(0)
  402d05:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402d0c:	45 85 c9             	test   %r9d,%r9d
  402d0f:	0f 8e b0 00 00 00    	jle    402dc5 <fmt_fp+0x2c5>
  402d15:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402d1c:	b8 44 00 
  402d1f:	90                   	nop
  402d20:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402d25:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402d29:	41 39 c9             	cmp    %ecx,%r9d
  402d2c:	41 0f 4e c9          	cmovle %r9d,%ecx
  402d30:	4d 39 e2             	cmp    %r12,%r10
  402d33:	72 4b                	jb     402d80 <fmt_fp+0x280>
  402d35:	31 c0                	xor    %eax,%eax
  402d37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402d3e:	00 00 
  402d40:	45 8b 02             	mov    (%r10),%r8d
  402d43:	49 83 ea 04          	sub    $0x4,%r10
  402d47:	49 d3 e0             	shl    %cl,%r8
  402d4a:	49 01 c0             	add    %rax,%r8
  402d4d:	4c 89 c2             	mov    %r8,%rdx
  402d50:	48 c1 ea 09          	shr    $0x9,%rdx
  402d54:	48 89 d0             	mov    %rdx,%rax
  402d57:	48 f7 e7             	mul    %rdi
  402d5a:	48 c1 ea 0b          	shr    $0xb,%rdx
  402d5e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402d65:	49 29 c0             	sub    %rax,%r8
  402d68:	89 d0                	mov    %edx,%eax
  402d6a:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402d6e:	4d 39 e2             	cmp    %r12,%r10
  402d71:	73 cd                	jae    402d40 <fmt_fp+0x240>
  402d73:	85 d2                	test   %edx,%edx
  402d75:	74 09                	je     402d80 <fmt_fp+0x280>
  402d77:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402d7c:	49 83 ec 04          	sub    $0x4,%r12
  402d80:	49 39 dc             	cmp    %rbx,%r12
  402d83:	72 24                	jb     402da9 <fmt_fp+0x2a9>
  402d85:	eb 2b                	jmp    402db2 <fmt_fp+0x2b2>
  402d87:	0f 1f 00             	nopl   (%rax)
  402d8a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d91:	00 00 00 00 
  402d95:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d9c:	00 00 00 00 
  402da0:	48 83 eb 04          	sub    $0x4,%rbx
  402da4:	49 39 dc             	cmp    %rbx,%r12
  402da7:	73 09                	jae    402db2 <fmt_fp+0x2b2>
  402da9:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  402dad:	45 85 c0             	test   %r8d,%r8d
  402db0:	74 ee                	je     402da0 <fmt_fp+0x2a0>
  402db2:	41 29 c9             	sub    %ecx,%r9d
  402db5:	45 85 c9             	test   %r9d,%r9d
  402db8:	0f 8f 62 ff ff ff    	jg     402d20 <fmt_fp+0x220>
  402dbe:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402dc5:	45 85 c9             	test   %r9d,%r9d
  402dc8:	0f 84 35 01 00 00    	je     402f03 <fmt_fp+0x403>
  402dce:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  402dd2:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  402dd9:	41 89 f0             	mov    %esi,%r8d
  402ddc:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  402de3:	48 c1 e8 21          	shr    $0x21,%rax
  402de7:	48 8d 78 01          	lea    0x1(%rax),%rdi
  402deb:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  402df2:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  402df9:	00 
  402dfa:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  402e01:	0f 1f 40 00          	nopl   0x0(%rax)
  402e05:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e0c:	00 00 00 00 
  402e10:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  402e14:	0f 8d d6 06 00 00    	jge    4034f0 <fmt_fp+0x9f0>
  402e1a:	41 83 c1 09          	add    $0x9,%r9d
  402e1e:	b9 09 00 00 00       	mov    $0x9,%ecx
  402e23:	49 39 dc             	cmp    %rbx,%r12
  402e26:	0f 83 d5 06 00 00    	jae    403501 <fmt_fp+0xa01>
  402e2c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  402e32:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  402e39:	4c 89 e6             	mov    %r12,%rsi
  402e3c:	31 d2                	xor    %edx,%edx
  402e3e:	41 d3 e2             	shl    %cl,%r10d
  402e41:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  402e47:	41 83 ea 01          	sub    $0x1,%r10d
  402e4b:	41 d3 ff             	sar    %cl,%r15d
  402e4e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e54:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e5b:	00 00 00 00 
  402e5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e66:	00 00 00 00 
  402e6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e71:	00 00 00 00 
  402e75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e7c:	00 00 00 00 
  402e80:	8b 06                	mov    (%rsi),%eax
  402e82:	48 83 c6 04          	add    $0x4,%rsi
  402e86:	41 89 c1             	mov    %eax,%r9d
  402e89:	44 21 d0             	and    %r10d,%eax
  402e8c:	41 0f af c7          	imul   %r15d,%eax
  402e90:	41 d3 e9             	shr    %cl,%r9d
  402e93:	41 01 d1             	add    %edx,%r9d
  402e96:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  402e9a:	89 c2                	mov    %eax,%edx
  402e9c:	48 39 de             	cmp    %rbx,%rsi
  402e9f:	72 df                	jb     402e80 <fmt_fp+0x380>
  402ea1:	41 8b 0c 24          	mov    (%r12),%ecx
  402ea5:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  402eaa:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  402eb1:	85 c9                	test   %ecx,%ecx
  402eb3:	49 0f 45 c4          	cmovne %r12,%rax
  402eb7:	85 d2                	test   %edx,%edx
  402eb9:	74 06                	je     402ec1 <fmt_fp+0x3c1>
  402ebb:	89 13                	mov    %edx,(%rbx)
  402ebd:	48 83 c3 04          	add    $0x4,%rbx
  402ec1:	49 89 c4             	mov    %rax,%r12
  402ec4:	41 83 fe 66          	cmp    $0x66,%r14d
  402ec8:	0f 84 52 06 00 00    	je     403520 <fmt_fp+0xa20>
  402ece:	48 89 da             	mov    %rbx,%rdx
  402ed1:	48 29 c2             	sub    %rax,%rdx
  402ed4:	4c 01 d8             	add    %r11,%rax
  402ed7:	48 c1 fa 02          	sar    $0x2,%rdx
  402edb:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  402ee2:	48 0f 4f d8          	cmovg  %rax,%rbx
  402ee6:	45 85 c9             	test   %r9d,%r9d
  402ee9:	0f 85 21 ff ff ff    	jne    402e10 <fmt_fp+0x310>
  402eef:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402ef6:	00 00 00 
  402ef9:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  402f00:	44 89 c6             	mov    %r8d,%esi
  402f03:	49 39 dc             	cmp    %rbx,%r12
  402f06:	0f 83 5d 0b 00 00    	jae    403a69 <fmt_fp+0xf69>
  402f0c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  402f13:	41 83 fe 66          	cmp    $0x66,%r14d
  402f17:	41 8b 14 24          	mov    (%r12),%edx
  402f1b:	0f 95 c1             	setne  %cl
  402f1e:	4c 29 e0             	sub    %r12,%rax
  402f21:	48 c1 f8 02          	sar    $0x2,%rax
  402f25:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  402f28:	b8 0a 00 00 00       	mov    $0xa,%eax
  402f2d:	83 fa 09             	cmp    $0x9,%edx
  402f30:	76 1a                	jbe    402f4c <fmt_fp+0x44c>
  402f32:	0f 1f 00             	nopl   (%rax)
  402f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f3c:	00 00 00 00 
  402f40:	8d 04 80             	lea    (%rax,%rax,4),%eax
  402f43:	83 c7 01             	add    $0x1,%edi
  402f46:	01 c0                	add    %eax,%eax
  402f48:	39 c2                	cmp    %eax,%edx
  402f4a:	73 f4                	jae    402f40 <fmt_fp+0x440>
  402f4c:	31 d2                	xor    %edx,%edx
  402f4e:	84 c9                	test   %cl,%cl
  402f50:	44 89 f8             	mov    %r15d,%eax
  402f53:	0f 45 d7             	cmovne %edi,%edx
  402f56:	29 d0                	sub    %edx,%eax
  402f58:	31 d2                	xor    %edx,%edx
  402f5a:	41 83 fe 67          	cmp    $0x67,%r14d
  402f5e:	0f 94 c2             	sete   %dl
  402f61:	21 f2                	and    %esi,%edx
  402f63:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  402f6a:	29 d0                	sub    %edx,%eax
  402f6c:	48 89 da             	mov    %rbx,%rdx
  402f6f:	48 29 f2             	sub    %rsi,%rdx
  402f72:	48 63 c8             	movslq %eax,%rcx
  402f75:	48 c1 fa 02          	sar    $0x2,%rdx
  402f79:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  402f7e:	48 39 d1             	cmp    %rdx,%rcx
  402f81:	0f 8d 0f 06 00 00    	jge    403596 <fmt_fp+0xa96>
  402f87:	05 00 40 02 00       	add    $0x24000,%eax
  402f8c:	48 63 d0             	movslq %eax,%rdx
  402f8f:	89 c1                	mov    %eax,%ecx
  402f91:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  402f98:	c1 f9 1f             	sar    $0x1f,%ecx
  402f9b:	48 c1 fa 21          	sar    $0x21,%rdx
  402f9f:	29 ca                	sub    %ecx,%edx
  402fa1:	48 63 ca             	movslq %edx,%rcx
  402fa4:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  402fab:	ff 
  402fac:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  402faf:	29 c8                	sub    %ecx,%eax
  402fb1:	89 c2                	mov    %eax,%edx
  402fb3:	8d 40 01             	lea    0x1(%rax),%eax
  402fb6:	83 fa 08             	cmp    $0x8,%edx
  402fb9:	0f 84 df 13 00 00    	je     40439e <fmt_fp+0x189e>
  402fbf:	b9 0a 00 00 00       	mov    $0xa,%ecx
  402fc4:	90                   	nop
  402fc5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fcc:	00 00 00 00 
  402fd0:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  402fd3:	83 c0 01             	add    $0x1,%eax
  402fd6:	01 c9                	add    %ecx,%ecx
  402fd8:	83 f8 09             	cmp    $0x9,%eax
  402fdb:	75 f3                	jne    402fd0 <fmt_fp+0x4d0>
  402fdd:	41 89 cb             	mov    %ecx,%r11d
  402fe0:	44 8b 16             	mov    (%rsi),%r10d
  402fe3:	31 d2                	xor    %edx,%edx
  402fe5:	44 89 d0             	mov    %r10d,%eax
  402fe8:	41 f7 f3             	div    %r11d
  402feb:	41 89 d1             	mov    %edx,%r9d
  402fee:	85 d2                	test   %edx,%edx
  402ff0:	0f 85 35 05 00 00    	jne    40352b <fmt_fp+0xa2b>
  402ff6:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  402ffa:	48 89 da             	mov    %rbx,%rdx
  402ffd:	4c 39 c3             	cmp    %r8,%rbx
  403000:	0f 84 89 05 00 00    	je     40358f <fmt_fp+0xa8f>
  403006:	a8 01                	test   $0x1,%al
  403008:	0f 85 36 10 00 00    	jne    404044 <fmt_fp+0x1544>
  40300e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403014:	75 0f                	jne    403025 <fmt_fp+0x525>
  403016:	49 39 f4             	cmp    %rsi,%r12
  403019:	73 0a                	jae    403025 <fmt_fp+0x525>
  40301b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40301f:	0f 85 1f 10 00 00    	jne    404044 <fmt_fp+0x1544>
  403025:	d9 05 49 44 00 00    	flds   0x4449(%rip)        # 407474 <states+0x1d4>
  40302b:	d9 05 47 44 00 00    	flds   0x4447(%rip)        # 407478 <states+0x1d8>
  403031:	e9 1d 05 00 00       	jmp    403553 <fmt_fp+0xa53>
  403036:	48 8d 1d b7 40 00 00 	lea    0x40b7(%rip),%rbx        # 4070f4 <_fini+0x3f0>
  40303d:	83 e7 01             	and    $0x1,%edi
  403040:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403044:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40304a:	48 0f 44 c3          	cmove  %rbx,%rax
  40304e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403055:	e9 33 fb ff ff       	jmp    402b8d <fmt_fp+0x8d>
  40305a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403060:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403067:	0f 84 94 00 00 00    	je     403101 <fmt_fp+0x601>
  40306d:	db 6d 10             	fldt   0x10(%rbp)
  403070:	4c 8d 25 93 40 00 00 	lea    0x4093(%rip),%r12        # 40710a <_fini+0x406>
  403077:	48 8d 05 94 40 00 00 	lea    0x4094(%rip),%rax        # 407112 <_fini+0x40e>
  40307e:	df e8                	fucomip %st(0),%st
  403080:	4c 0f 4b e0          	cmovnp %rax,%r12
  403084:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40308a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403090:	8d 58 03             	lea    0x3(%rax),%ebx
  403093:	39 d3                	cmp    %edx,%ebx
  403095:	41 0f 9d c5          	setge  %r13b
  403099:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  4030a0:	75 09                	jne    4030ab <fmt_fp+0x5ab>
  4030a2:	45 84 ed             	test   %r13b,%r13b
  4030a5:	0f 84 0a 01 00 00    	je     4031b5 <fmt_fp+0x6b5>
  4030ab:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4030b2:	f6 00 20             	testb  $0x20,(%rax)
  4030b5:	0f 84 1d 01 00 00    	je     4031d8 <fmt_fp+0x6d8>
  4030bb:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4030c1:	80 f4 20             	xor    $0x20,%ah
  4030c4:	a9 00 20 01 00       	test   $0x12000,%eax
  4030c9:	75 09                	jne    4030d4 <fmt_fp+0x5d4>
  4030cb:	45 84 ed             	test   %r13b,%r13b
  4030ce:	0f 84 c3 00 00 00    	je     403197 <fmt_fp+0x697>
  4030d4:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  4030da:	39 c3                	cmp    %eax,%ebx
  4030dc:	0f 4d c3             	cmovge %ebx,%eax
  4030df:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4030e3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4030ea:	00 00 
  4030ec:	0f 85 4d 13 00 00    	jne    40443f <fmt_fp+0x193f>
  4030f2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4030f6:	5b                   	pop    %rbx
  4030f7:	41 5c                	pop    %r12
  4030f9:	41 5d                	pop    %r13
  4030fb:	41 5e                	pop    %r14
  4030fd:	41 5f                	pop    %r15
  4030ff:	5d                   	pop    %rbp
  403100:	c3                   	ret
  403101:	db 6d 10             	fldt   0x10(%rbp)
  403104:	4c 8d 25 03 40 00 00 	lea    0x4003(%rip),%r12        # 40710e <_fini+0x40a>
  40310b:	48 8d 05 f4 3f 00 00 	lea    0x3ff4(%rip),%rax        # 407106 <_fini+0x402>
  403112:	df e8                	fucomip %st(0),%st
  403114:	4c 0f 4b e0          	cmovnp %rax,%r12
  403118:	e9 67 ff ff ff       	jmp    403084 <fmt_fp+0x584>
  40311d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403124:	f6 07 20             	testb  $0x20,(%rdi)
  403127:	0f 84 11 03 00 00    	je     40343e <fmt_fp+0x93e>
  40312d:	45 29 f7             	sub    %r14d,%r15d
  403130:	45 85 ff             	test   %r15d,%r15d
  403133:	7e 9f                	jle    4030d4 <fmt_fp+0x5d4>
  403135:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40313b:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403142:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403149:	31 c9                	xor    %ecx,%ecx
  40314b:	44 89 fa             	mov    %r15d,%edx
  40314e:	be 30 00 00 00       	mov    $0x30,%esi
  403153:	e8 88 f8 ff ff       	call   4029e0 <pad.part.0>
  403158:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40315f:	f6 00 20             	testb  $0x20,(%rax)
  403162:	75 12                	jne    403176 <fmt_fp+0x676>
  403164:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  40316b:	48 89 c2             	mov    %rax,%rdx
  40316e:	4c 89 e6             	mov    %r12,%rsi
  403171:	e8 2a 31 00 00       	call   4062a0 <__fwritex>
  403176:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  40317c:	80 f4 20             	xor    $0x20,%ah
  40317f:	a9 00 20 01 00       	test   $0x12000,%eax
  403184:	0f 85 4a ff ff ff    	jne    4030d4 <fmt_fp+0x5d4>
  40318a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403191:	0f 85 3d ff ff ff    	jne    4030d4 <fmt_fp+0x5d4>
  403197:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40319d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4031a4:	89 d9                	mov    %ebx,%ecx
  4031a6:	be 20 00 00 00       	mov    $0x20,%esi
  4031ab:	e8 30 f8 ff ff       	call   4029e0 <pad.part.0>
  4031b0:	e9 1f ff ff ff       	jmp    4030d4 <fmt_fp+0x5d4>
  4031b5:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4031bc:	89 d9                	mov    %ebx,%ecx
  4031be:	be 20 00 00 00       	mov    $0x20,%esi
  4031c3:	e8 18 f8 ff ff       	call   4029e0 <pad.part.0>
  4031c8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4031cf:	f6 00 20             	testb  $0x20,(%rax)
  4031d2:	0f 85 e3 fe ff ff    	jne    4030bb <fmt_fp+0x5bb>
  4031d8:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  4031df:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4031e6:	49 89 c6             	mov    %rax,%r14
  4031e9:	48 89 c2             	mov    %rax,%rdx
  4031ec:	e8 af 30 00 00       	call   4062a0 <__fwritex>
  4031f1:	41 f6 06 20          	testb  $0x20,(%r14)
  4031f5:	0f 85 c0 fe ff ff    	jne    4030bb <fmt_fp+0x5bb>
  4031fb:	4c 89 f2             	mov    %r14,%rdx
  4031fe:	be 03 00 00 00       	mov    $0x3,%esi
  403203:	4c 89 e7             	mov    %r12,%rdi
  403206:	e8 95 30 00 00       	call   4062a0 <__fwritex>
  40320b:	e9 ab fe ff ff       	jmp    4030bb <fmt_fp+0x5bb>
  403210:	41 83 e9 01          	sub    $0x1,%r9d
  403214:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40321b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403222:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403229:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  40322f:	48 8d 47 09          	lea    0x9(%rdi),%rax
  403233:	48 0f 44 c7          	cmove  %rdi,%rax
  403237:	83 c3 02             	add    $0x2,%ebx
  40323a:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403241:	41 83 ff 0e          	cmp    $0xe,%r15d
  403245:	0f 86 28 0c 00 00    	jbe    403e73 <fmt_fp+0x1373>
  40324b:	d9 05 2f 42 00 00    	flds   0x422f(%rip)        # 407480 <states+0x1e0>
  403251:	45 85 c9             	test   %r9d,%r9d
  403254:	0f 84 54 11 00 00    	je     4043ae <fmt_fp+0x18ae>
  40325a:	44 89 c9             	mov    %r9d,%ecx
  40325d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403261:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  403268:	cc cc cc 
  40326b:	f7 d9                	neg    %ecx
  40326d:	4d 89 e8             	mov    %r13,%r8
  403270:	41 0f 48 c9          	cmovs  %r9d,%ecx
  403274:	48 63 c9             	movslq %ecx,%rcx
  403277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40327e:	00 00 
  403280:	48 89 c8             	mov    %rcx,%rax
  403283:	4c 89 c7             	mov    %r8,%rdi
  403286:	49 83 e8 01          	sub    $0x1,%r8
  40328a:	48 f7 e6             	mul    %rsi
  40328d:	48 89 c8             	mov    %rcx,%rax
  403290:	48 c1 ea 03          	shr    $0x3,%rdx
  403294:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403298:	4d 01 d2             	add    %r10,%r10
  40329b:	4c 29 d0             	sub    %r10,%rax
  40329e:	83 c0 30             	add    $0x30,%eax
  4032a1:	48 83 f9 09          	cmp    $0x9,%rcx
  4032a5:	48 89 d1             	mov    %rdx,%rcx
  4032a8:	41 88 00             	mov    %al,(%r8)
  4032ab:	77 d3                	ja     403280 <fmt_fp+0x780>
  4032ad:	4d 39 e8             	cmp    %r13,%r8
  4032b0:	0f 84 9f 0d 00 00    	je     404055 <fmt_fp+0x1555>
  4032b6:	b8 2d 00 00 00       	mov    $0x2d,%eax
  4032bb:	45 85 c9             	test   %r9d,%r9d
  4032be:	78 05                	js     4032c5 <fmt_fp+0x7c5>
  4032c0:	b8 2b 00 00 00       	mov    $0x2b,%eax
  4032c5:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  4032cb:	41 88 40 ff          	mov    %al,-0x1(%r8)
  4032cf:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  4032d3:	d9 ee                	fldz
  4032d5:	d9 ca                	fxch   %st(2)
  4032d7:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  4032de:	45 85 ff             	test   %r15d,%r15d
  4032e1:	48 8d 0d 98 3f 00 00 	lea    0x3f98(%rip),%rcx        # 407280 <xdigits>
  4032e8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4032ee:	8d 46 0f             	lea    0xf(%rsi),%eax
  4032f1:	40 0f 9f c7          	setg   %dil
  4032f5:	83 e6 20             	and    $0x20,%esi
  4032f8:	41 88 40 fe          	mov    %al,-0x2(%r8)
  4032fc:	4c 89 e8             	mov    %r13,%rax
  4032ff:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403305:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40330c:	80 ce 0c             	or     $0xc,%dh
  40330f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403316:	eb 1b                	jmp    403333 <fmt_fp+0x833>
  403318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40331f:	00 
  403320:	4c 89 c0             	mov    %r8,%rax
  403323:	d9 c2                	fld    %st(2)
  403325:	d9 c9                	fxch   %st(1)
  403327:	db e9                	fucomi %st(1),%st
  403329:	dd d9                	fstp   %st(1)
  40332b:	7a 06                	jp     403333 <fmt_fp+0x833>
  40332d:	0f 84 dc 10 00 00    	je     40440f <fmt_fp+0x190f>
  403333:	d9 c0                	fld    %st(0)
  403335:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  40333b:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403341:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403347:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40334b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403351:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403358:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40335d:	de e9                	fsubrp %st,%st(1)
  40335f:	41 09 f3             	or     %esi,%r11d
  403362:	44 88 18             	mov    %r11b,(%rax)
  403365:	d8 c9                	fmul   %st(1),%st
  403367:	4c 39 e8             	cmp    %r13,%rax
  40336a:	75 b4                	jne    403320 <fmt_fp+0x820>
  40336c:	d9 c2                	fld    %st(2)
  40336e:	df e9                	fucomip %st(1),%st
  403370:	0f 9a c2             	setp   %dl
  403373:	41 0f 45 d1          	cmovne %r9d,%edx
  403377:	84 d2                	test   %dl,%dl
  403379:	0f 85 31 06 00 00    	jne    4039b0 <fmt_fp+0xeb0>
  40337f:	40 84 ff             	test   %dil,%dil
  403382:	0f 85 28 06 00 00    	jne    4039b0 <fmt_fp+0xeb0>
  403388:	dd d8                	fstp   %st(0)
  40338a:	dd d8                	fstp   %st(0)
  40338c:	dd d8                	fstp   %st(0)
  40338e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403395:	74 08                	je     40339f <fmt_fp+0x89f>
  403397:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40339b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40339f:	4d 89 ec             	mov    %r13,%r12
  4033a2:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  4033a7:	48 63 c3             	movslq %ebx,%rax
  4033aa:	49 63 cf             	movslq %r15d,%rcx
  4033ad:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  4033b4:	4c 29 e2             	sub    %r12,%rdx
  4033b7:	48 29 c2             	sub    %rax,%rdx
  4033ba:	48 39 d1             	cmp    %rdx,%rcx
  4033bd:	0f 8f 24 10 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  4033c3:	4d 29 e8             	sub    %r13,%r8
  4033c6:	45 85 ff             	test   %r15d,%r15d
  4033c9:	74 0d                	je     4033d8 <fmt_fp+0x8d8>
  4033cb:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  4033cf:	48 39 d1             	cmp    %rdx,%rcx
  4033d2:	0f 8d ac 0c 00 00    	jge    404084 <fmt_fp+0x1584>
  4033d8:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  4033dc:	45 89 f7             	mov    %r14d,%r15d
  4033df:	44 01 fb             	add    %r15d,%ebx
  4033e2:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4033e9:	20 01 
  4033eb:	0f 85 a0 0b 00 00    	jne    403f91 <fmt_fp+0x1491>
  4033f1:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4033f7:	39 d3                	cmp    %edx,%ebx
  4033f9:	0f 8d 1e fd ff ff    	jge    40311d <fmt_fp+0x61d>
  4033ff:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403406:	89 d9                	mov    %ebx,%ecx
  403408:	be 20 00 00 00       	mov    $0x20,%esi
  40340d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403414:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40341b:	e8 c0 f5 ff ff       	call   4029e0 <pad.part.0>
  403420:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403427:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  40342e:	f6 00 20             	testb  $0x20,(%rax)
  403431:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  403438:	0f 85 ef fc ff ff    	jne    40312d <fmt_fp+0x62d>
  40343e:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403445:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40344c:	48 89 c6             	mov    %rax,%rsi
  40344f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403456:	e8 45 2e 00 00       	call   4062a0 <__fwritex>
  40345b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403461:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403467:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  40346e:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403475:	35 00 00 01 00       	xor    $0x10000,%eax
  40347a:	a9 00 20 01 00       	test   $0x12000,%eax
  40347f:	75 37                	jne    4034b8 <fmt_fp+0x9b8>
  403481:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403488:	75 2e                	jne    4034b8 <fmt_fp+0x9b8>
  40348a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403490:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403497:	89 d9                	mov    %ebx,%ecx
  403499:	be 30 00 00 00       	mov    $0x30,%esi
  40349e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4034a5:	e8 36 f5 ff ff       	call   4029e0 <pad.part.0>
  4034aa:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  4034b1:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4034b8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4034bf:	f6 00 20             	testb  $0x20,(%rax)
  4034c2:	0f 85 05 0b 00 00    	jne    403fcd <fmt_fp+0x14cd>
  4034c8:	48 89 c2             	mov    %rax,%rdx
  4034cb:	4c 89 c6             	mov    %r8,%rsi
  4034ce:	4c 89 ef             	mov    %r13,%rdi
  4034d1:	45 29 f7             	sub    %r14d,%r15d
  4034d4:	e8 c7 2d 00 00       	call   4062a0 <__fwritex>
  4034d9:	45 85 ff             	test   %r15d,%r15d
  4034dc:	0f 8e 76 fc ff ff    	jle    403158 <fmt_fp+0x658>
  4034e2:	e9 5b fc ff ff       	jmp    403142 <fmt_fp+0x642>
  4034e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4034ee:	00 00 
  4034f0:	44 89 c9             	mov    %r9d,%ecx
  4034f3:	45 31 c9             	xor    %r9d,%r9d
  4034f6:	f7 d9                	neg    %ecx
  4034f8:	49 39 dc             	cmp    %rbx,%r12
  4034fb:	0f 82 2b f9 ff ff    	jb     402e2c <fmt_fp+0x32c>
  403501:	41 8b 34 24          	mov    (%r12),%esi
  403505:	85 f6                	test   %esi,%esi
  403507:	0f 84 66 05 00 00    	je     403a73 <fmt_fp+0xf73>
  40350d:	41 83 fe 66          	cmp    $0x66,%r14d
  403511:	0f 85 cf f9 ff ff    	jne    402ee6 <fmt_fp+0x3e6>
  403517:	4c 89 e0             	mov    %r12,%rax
  40351a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403520:	49 89 c4             	mov    %rax,%r12
  403523:	48 89 f8             	mov    %rdi,%rax
  403526:	e9 a3 f9 ff ff       	jmp    402ece <fmt_fp+0x3ce>
  40352b:	a8 01                	test   $0x1,%al
  40352d:	0f 84 2f 0b 00 00    	je     404062 <fmt_fp+0x1562>
  403533:	db 2d 67 3f 00 00    	fldt   0x3f67(%rip)        # 4074a0 <states+0x200>
  403539:	d1 f9                	sar    $1,%ecx
  40353b:	41 39 c9             	cmp    %ecx,%r9d
  40353e:	0f 82 06 0b 00 00    	jb     40404a <fmt_fp+0x154a>
  403544:	44 39 c9             	cmp    %r9d,%ecx
  403547:	0f 84 31 0e 00 00    	je     40437e <fmt_fp+0x187e>
  40354d:	d9 05 29 3f 00 00    	flds   0x3f29(%rip)        # 40747c <states+0x1dc>
  403553:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403559:	85 d2                	test   %edx,%edx
  40355b:	74 14                	je     403571 <fmt_fp+0xa71>
  40355d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403564:	80 38 2d             	cmpb   $0x2d,(%rax)
  403567:	75 08                	jne    403571 <fmt_fp+0xa71>
  403569:	d9 c9                	fxch   %st(1)
  40356b:	d9 e0                	fchs
  40356d:	d9 c9                	fxch   %st(1)
  40356f:	d9 e0                	fchs
  403571:	d8 c1                	fadd   %st(1),%st
  403573:	44 89 d0             	mov    %r10d,%eax
  403576:	44 29 c8             	sub    %r9d,%eax
  403579:	df e9                	fucomip %st(1),%st
  40357b:	dd d8                	fstp   %st(0)
  40357d:	0f 8a 4c 09 00 00    	jp     403ecf <fmt_fp+0x13cf>
  403583:	0f 85 46 09 00 00    	jne    403ecf <fmt_fp+0x13cf>
  403589:	89 06                	mov    %eax,(%rsi)
  40358b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40358f:	48 39 d3             	cmp    %rdx,%rbx
  403592:	48 0f 47 da          	cmova  %rdx,%rbx
  403596:	49 39 dc             	cmp    %rbx,%r12
  403599:	72 0e                	jb     4035a9 <fmt_fp+0xaa9>
  40359b:	eb 13                	jmp    4035b0 <fmt_fp+0xab0>
  40359d:	0f 1f 00             	nopl   (%rax)
  4035a0:	48 83 eb 04          	sub    $0x4,%rbx
  4035a4:	49 39 dc             	cmp    %rbx,%r12
  4035a7:	73 07                	jae    4035b0 <fmt_fp+0xab0>
  4035a9:	8b 43 fc             	mov    -0x4(%rbx),%eax
  4035ac:	85 c0                	test   %eax,%eax
  4035ae:	74 f0                	je     4035a0 <fmt_fp+0xaa0>
  4035b0:	41 83 fe 67          	cmp    $0x67,%r14d
  4035b4:	0f 84 25 05 00 00    	je     403adf <fmt_fp+0xfdf>
  4035ba:	45 85 ff             	test   %r15d,%r15d
  4035bd:	0f 85 ba 04 00 00    	jne    403a7d <fmt_fp+0xf7d>
  4035c3:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  4035ca:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  4035d0:	41 c1 e9 03          	shr    $0x3,%r9d
  4035d4:	41 83 e1 01          	and    $0x1,%r9d
  4035d8:	41 83 c1 01          	add    $0x1,%r9d
  4035dc:	45 29 ca             	sub    %r9d,%r10d
  4035df:	41 83 fe 66          	cmp    $0x66,%r14d
  4035e3:	0f 84 80 0b 00 00    	je     404169 <fmt_fp+0x1669>
  4035e9:	4d 63 d2             	movslq %r10d,%r10
  4035ec:	85 ff                	test   %edi,%edi
  4035ee:	0f 84 9e 0d 00 00    	je     404392 <fmt_fp+0x1892>
  4035f4:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  4035fb:	cc cc cc 
  4035fe:	89 fe                	mov    %edi,%esi
  403600:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403604:	f7 de                	neg    %esi
  403606:	4c 89 e9             	mov    %r13,%rcx
  403609:	0f 48 f7             	cmovs  %edi,%esi
  40360c:	48 63 f6             	movslq %esi,%rsi
  40360f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403614:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40361b:	00 00 00 00 
  40361f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403626:	00 00 00 00 
  40362a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403631:	00 00 00 00 
  403635:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40363c:	00 00 00 00 
  403640:	48 89 f0             	mov    %rsi,%rax
  403643:	48 83 e9 01          	sub    $0x1,%rcx
  403647:	49 f7 e0             	mul    %r8
  40364a:	48 89 f0             	mov    %rsi,%rax
  40364d:	48 c1 ea 03          	shr    $0x3,%rdx
  403651:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403655:	4d 01 db             	add    %r11,%r11
  403658:	4c 29 d8             	sub    %r11,%rax
  40365b:	83 c0 30             	add    $0x30,%eax
  40365e:	48 83 fe 09          	cmp    $0x9,%rsi
  403662:	48 89 d6             	mov    %rdx,%rsi
  403665:	88 01                	mov    %al,(%rcx)
  403667:	77 d7                	ja     403640 <fmt_fp+0xb40>
  403669:	4c 89 e8             	mov    %r13,%rax
  40366c:	48 29 c8             	sub    %rcx,%rax
  40366f:	48 83 f8 01          	cmp    $0x1,%rax
  403673:	7f 1e                	jg     403693 <fmt_fp+0xb93>
  403675:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40367c:	00 00 00 00 
  403680:	48 83 e9 01          	sub    $0x1,%rcx
  403684:	4c 89 e8             	mov    %r13,%rax
  403687:	c6 01 30             	movb   $0x30,(%rcx)
  40368a:	48 29 c8             	sub    %rcx,%rax
  40368d:	48 83 f8 01          	cmp    $0x1,%rax
  403691:	7e ed                	jle    403680 <fmt_fp+0xb80>
  403693:	c1 ff 1f             	sar    $0x1f,%edi
  403696:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40369a:	83 e7 02             	and    $0x2,%edi
  40369d:	49 29 c5             	sub    %rax,%r13
  4036a0:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  4036a7:	83 c7 2b             	add    $0x2b,%edi
  4036aa:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  4036ae:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  4036b5:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  4036b9:	4d 39 d5             	cmp    %r10,%r13
  4036bc:	0f 8f 25 0d 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  4036c2:	45 01 e9             	add    %r13d,%r9d
  4036c5:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4036ca:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  4036d0:	41 39 c1             	cmp    %eax,%r9d
  4036d3:	0f 8f 0e 0d 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  4036d9:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  4036df:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  4036e5:	44 01 c8             	add    %r9d,%eax
  4036e8:	39 f8                	cmp    %edi,%eax
  4036ea:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  4036f0:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  4036f7:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4036fe:	20 01 
  403700:	0f 85 3c 07 00 00    	jne    403e42 <fmt_fp+0x1342>
  403706:	39 f8                	cmp    %edi,%eax
  403708:	0f 8d c5 06 00 00    	jge    403dd3 <fmt_fp+0x12d3>
  40370e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403715:	89 fa                	mov    %edi,%edx
  403717:	89 c1                	mov    %eax,%ecx
  403719:	be 20 00 00 00       	mov    $0x20,%esi
  40371e:	4c 89 ef             	mov    %r13,%rdi
  403721:	e8 ba f2 ff ff       	call   4029e0 <pad.part.0>
  403726:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  40372b:	0f 84 b2 06 00 00    	je     403de3 <fmt_fp+0x12e3>
  403731:	41 83 fe 66          	cmp    $0x66,%r14d
  403735:	0f 84 75 04 00 00    	je     403bb0 <fmt_fp+0x10b0>
  40373b:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403740:	49 39 dc             	cmp    %rbx,%r12
  403743:	48 0f 43 d8          	cmovae %rax,%rbx
  403747:	45 85 ff             	test   %r15d,%r15d
  40374a:	0f 88 af 01 00 00    	js     4038ff <fmt_fp+0xdff>
  403750:	49 39 dc             	cmp    %rbx,%r12
  403753:	0f 83 a6 01 00 00    	jae    4038ff <fmt_fp+0xdff>
  403759:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40375e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403765:	4d 89 e6             	mov    %r12,%r14
  403768:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  40376c:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403773:	66 0f 6e c0          	movd   %eax,%xmm0
  403777:	49 89 dc             	mov    %rbx,%r12
  40377a:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403781:	cc cc cc 
  403784:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403788:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  40378d:	0f 1f 00             	nopl   (%rax)
  403790:	41 8b 0e             	mov    (%r14),%ecx
  403793:	4c 89 c7             	mov    %r8,%rdi
  403796:	48 85 c9             	test   %rcx,%rcx
  403799:	0f 84 e1 01 00 00    	je     403980 <fmt_fp+0xe80>
  40379f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037a6:	00 00 00 00 
  4037aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037b1:	00 00 00 00 
  4037b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037bc:	00 00 00 00 
  4037c0:	48 89 c8             	mov    %rcx,%rax
  4037c3:	48 83 ef 01          	sub    $0x1,%rdi
  4037c7:	49 f7 e5             	mul    %r13
  4037ca:	48 89 c8             	mov    %rcx,%rax
  4037cd:	48 c1 ea 03          	shr    $0x3,%rdx
  4037d1:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  4037d5:	48 01 f6             	add    %rsi,%rsi
  4037d8:	48 29 f0             	sub    %rsi,%rax
  4037db:	83 c0 30             	add    $0x30,%eax
  4037de:	48 83 f9 09          	cmp    $0x9,%rcx
  4037e2:	48 89 d1             	mov    %rdx,%rcx
  4037e5:	88 07                	mov    %al,(%rdi)
  4037e7:	77 d7                	ja     4037c0 <fmt_fp+0xcc0>
  4037e9:	4c 39 c7             	cmp    %r8,%rdi
  4037ec:	0f 84 8e 01 00 00    	je     403980 <fmt_fp+0xe80>
  4037f2:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  4037f9:	0f 84 96 01 00 00    	je     403995 <fmt_fp+0xe95>
  4037ff:	48 39 fb             	cmp    %rdi,%rbx
  403802:	0f 83 c9 02 00 00    	jae    403ad1 <fmt_fp+0xfd1>
  403808:	48 89 fe             	mov    %rdi,%rsi
  40380b:	48 89 f8             	mov    %rdi,%rax
  40380e:	48 29 de             	sub    %rbx,%rsi
  403811:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403815:	48 83 fa 0e          	cmp    $0xe,%rdx
  403819:	76 3d                	jbe    403858 <fmt_fp+0xd58>
  40381b:	48 89 f1             	mov    %rsi,%rcx
  40381e:	48 89 fa             	mov    %rdi,%rdx
  403821:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403825:	48 29 ca             	sub    %rcx,%rdx
  403828:	f6 c1 10             	test   $0x10,%cl
  40382b:	74 13                	je     403840 <fmt_fp+0xd40>
  40382d:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403831:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403835:	48 39 d0             	cmp    %rdx,%rax
  403838:	74 16                	je     403850 <fmt_fp+0xd50>
  40383a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403840:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403844:	48 83 e8 20          	sub    $0x20,%rax
  403848:	0f 11 00             	movups %xmm0,(%rax)
  40384b:	48 39 d0             	cmp    %rdx,%rax
  40384e:	75 f0                	jne    403840 <fmt_fp+0xd40>
  403850:	48 39 f1             	cmp    %rsi,%rcx
  403853:	74 3b                	je     403890 <fmt_fp+0xd90>
  403855:	48 29 cf             	sub    %rcx,%rdi
  403858:	48 89 d8             	mov    %rbx,%rax
  40385b:	48 f7 d0             	not    %rax
  40385e:	48 01 f8             	add    %rdi,%rax
  403861:	48 83 ef 01          	sub    $0x1,%rdi
  403865:	c6 07 30             	movb   $0x30,(%rdi)
  403868:	48 39 fb             	cmp    %rdi,%rbx
  40386b:	73 23                	jae    403890 <fmt_fp+0xd90>
  40386d:	a8 01                	test   $0x1,%al
  40386f:	74 0f                	je     403880 <fmt_fp+0xd80>
  403871:	48 83 ef 01          	sub    $0x1,%rdi
  403875:	c6 07 30             	movb   $0x30,(%rdi)
  403878:	48 39 fb             	cmp    %rdi,%rbx
  40387b:	73 13                	jae    403890 <fmt_fp+0xd90>
  40387d:	0f 1f 00             	nopl   (%rax)
  403880:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403884:	48 83 ef 02          	sub    $0x2,%rdi
  403888:	c6 07 30             	movb   $0x30,(%rdi)
  40388b:	48 39 fb             	cmp    %rdi,%rbx
  40388e:	72 f0                	jb     403880 <fmt_fp+0xd80>
  403890:	41 8b 02             	mov    (%r10),%eax
  403893:	49 89 d9             	mov    %rbx,%r9
  403896:	83 e0 20             	and    $0x20,%eax
  403899:	4c 89 c1             	mov    %r8,%rcx
  40389c:	4c 29 c9             	sub    %r9,%rcx
  40389f:	85 c0                	test   %eax,%eax
  4038a1:	75 47                	jne    4038ea <fmt_fp+0xdea>
  4038a3:	49 63 f7             	movslq %r15d,%rsi
  4038a6:	4c 89 d2             	mov    %r10,%rdx
  4038a9:	4c 89 cf             	mov    %r9,%rdi
  4038ac:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  4038b3:	48 39 ce             	cmp    %rcx,%rsi
  4038b6:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  4038bd:	48 0f 4f f1          	cmovg  %rcx,%rsi
  4038c1:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  4038c8:	e8 d3 29 00 00       	call   4062a0 <__fwritex>
  4038cd:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  4038d4:	66 0f 6f 05 d4 3b 00 	movdqa 0x3bd4(%rip),%xmm0        # 4074b0 <states+0x210>
  4038db:	00 
  4038dc:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  4038e3:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  4038ea:	49 83 c6 04          	add    $0x4,%r14
  4038ee:	41 29 cf             	sub    %ecx,%r15d
  4038f1:	4d 39 e6             	cmp    %r12,%r14
  4038f4:	73 09                	jae    4038ff <fmt_fp+0xdff>
  4038f6:	45 85 ff             	test   %r15d,%r15d
  4038f9:	0f 89 91 fe ff ff    	jns    403790 <fmt_fp+0xc90>
  4038ff:	41 8d 57 12          	lea    0x12(%r15),%edx
  403903:	83 fa 12             	cmp    $0x12,%edx
  403906:	7e 16                	jle    40391e <fmt_fp+0xe1e>
  403908:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40390f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403914:	be 30 00 00 00       	mov    $0x30,%esi
  403919:	e8 c2 f0 ff ff       	call   4029e0 <pad.part.0>
  40391e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403925:	f6 00 20             	testb  $0x20,(%rax)
  403928:	0f 84 86 05 00 00    	je     403eb4 <fmt_fp+0x13b4>
  40392e:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403934:	80 f4 20             	xor    $0x20,%ah
  403937:	a9 00 20 01 00       	test   $0x12000,%eax
  40393c:	75 26                	jne    403964 <fmt_fp+0xe64>
  40393e:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403945:	75 1d                	jne    403964 <fmt_fp+0xe64>
  403947:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  40394d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403953:	be 20 00 00 00       	mov    $0x20,%esi
  403958:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40395f:	e8 7c f0 ff ff       	call   4029e0 <pad.part.0>
  403964:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  40396a:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403970:	39 c7                	cmp    %eax,%edi
  403972:	0f 4d c7             	cmovge %edi,%eax
  403975:	e9 65 f7 ff ff       	jmp    4030df <fmt_fp+0x5df>
  40397a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403980:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403984:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403988:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  40398f:	0f 85 73 fe ff ff    	jne    403808 <fmt_fp+0xd08>
  403995:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403999:	41 f6 02 20          	testb  $0x20,(%r10)
  40399d:	74 1e                	je     4039bd <fmt_fp+0xebd>
  40399f:	4c 89 c1             	mov    %r8,%rcx
  4039a2:	4c 29 c9             	sub    %r9,%rcx
  4039a5:	e9 40 ff ff ff       	jmp    4038ea <fmt_fp+0xdea>
  4039aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4039b0:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  4039b4:	48 83 c0 02          	add    $0x2,%rax
  4039b8:	e9 66 f9 ff ff       	jmp    403323 <fmt_fp+0x823>
  4039bd:	4c 89 d2             	mov    %r10,%rdx
  4039c0:	be 01 00 00 00       	mov    $0x1,%esi
  4039c5:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  4039cc:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  4039d3:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  4039da:	e8 c1 28 00 00       	call   4062a0 <__fwritex>
  4039df:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  4039e6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  4039ec:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  4039f3:	66 0f 6f 05 b5 3a 00 	movdqa 0x3ab5(%rip),%xmm0        # 4074b0 <states+0x210>
  4039fa:	00 
  4039fb:	41 8b 02             	mov    (%r10),%eax
  4039fe:	83 e2 08             	and    $0x8,%edx
  403a01:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403a08:	83 e0 20             	and    $0x20,%eax
  403a0b:	44 09 fa             	or     %r15d,%edx
  403a0e:	0f 84 85 fe ff ff    	je     403899 <fmt_fp+0xd99>
  403a14:	85 c0                	test   %eax,%eax
  403a16:	75 87                	jne    40399f <fmt_fp+0xe9f>
  403a18:	4c 89 d2             	mov    %r10,%rdx
  403a1b:	be 01 00 00 00       	mov    $0x1,%esi
  403a20:	48 8d 3d ef 36 00 00 	lea    0x36ef(%rip),%rdi        # 407116 <_fini+0x412>
  403a27:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403a2e:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403a35:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403a3c:	e8 5f 28 00 00       	call   4062a0 <__fwritex>
  403a41:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403a48:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403a4f:	66 0f 6f 05 59 3a 00 	movdqa 0x3a59(%rip),%xmm0        # 4074b0 <states+0x210>
  403a56:	00 
  403a57:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403a5e:	41 8b 02             	mov    (%r10),%eax
  403a61:	83 e0 20             	and    $0x20,%eax
  403a64:	e9 30 fe ff ff       	jmp    403899 <fmt_fp+0xd99>
  403a69:	44 89 f8             	mov    %r15d,%eax
  403a6c:	31 ff                	xor    %edi,%edi
  403a6e:	e9 e5 f4 ff ff       	jmp    402f58 <fmt_fp+0x458>
  403a73:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403a78:	e9 44 f4 ff ff       	jmp    402ec1 <fmt_fp+0x3c1>
  403a7d:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403a84:	0f 8f 5d 09 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  403a8a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403a91:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403a95:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403a9b:	45 29 ca             	sub    %r9d,%r10d
  403a9e:	41 83 ce 20          	or     $0x20,%r14d
  403aa2:	41 83 fe 66          	cmp    $0x66,%r14d
  403aa6:	0f 85 3d fb ff ff    	jne    4035e9 <fmt_fp+0xae9>
  403aac:	44 39 d7             	cmp    %r10d,%edi
  403aaf:	0f 8f 32 09 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  403ab5:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403abb:	85 ff                	test   %edi,%edi
  403abd:	0f 8e 02 fc ff ff    	jle    4036c5 <fmt_fp+0xbc5>
  403ac3:	41 01 f9             	add    %edi,%r9d
  403ac6:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403acc:	e9 f4 fb ff ff       	jmp    4036c5 <fmt_fp+0xbc5>
  403ad1:	41 8b 02             	mov    (%r10),%eax
  403ad4:	49 89 f9             	mov    %rdi,%r9
  403ad7:	83 e0 20             	and    $0x20,%eax
  403ada:	e9 ba fd ff ff       	jmp    403899 <fmt_fp+0xd99>
  403adf:	45 85 ff             	test   %r15d,%r15d
  403ae2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403ae8:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403aec:	41 39 f9             	cmp    %edi,%r9d
  403aef:	0f 8e e9 04 00 00    	jle    403fde <fmt_fp+0x14de>
  403af5:	83 ff fc             	cmp    $0xfffffffc,%edi
  403af8:	0f 8c e0 04 00 00    	jl     403fde <fmt_fp+0x14de>
  403afe:	8d 47 01             	lea    0x1(%rdi),%eax
  403b01:	45 89 cf             	mov    %r9d,%r15d
  403b04:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403b0b:	41 29 c7             	sub    %eax,%r15d
  403b0e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403b15:	0f 85 9c 05 00 00    	jne    4040b7 <fmt_fp+0x15b7>
  403b1b:	be 09 00 00 00       	mov    $0x9,%esi
  403b20:	49 39 dc             	cmp    %rbx,%r12
  403b23:	73 1f                	jae    403b44 <fmt_fp+0x1044>
  403b25:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403b29:	45 85 c9             	test   %r9d,%r9d
  403b2c:	74 16                	je     403b44 <fmt_fp+0x1044>
  403b2e:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403b35:	d1 c8                	ror    $1,%eax
  403b37:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403b3c:	0f 86 e0 04 00 00    	jbe    404022 <fmt_fp+0x1522>
  403b42:	31 f6                	xor    %esi,%esi
  403b44:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403b4b:	41 83 ce 20          	or     $0x20,%r14d
  403b4f:	41 83 fe 66          	cmp    $0x66,%r14d
  403b53:	0f 85 ac 05 00 00    	jne    404105 <fmt_fp+0x1605>
  403b59:	48 89 d8             	mov    %rbx,%rax
  403b5c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403b63:	ba 00 00 00 00       	mov    $0x0,%edx
  403b68:	48 c1 f8 02          	sar    $0x2,%rax
  403b6c:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403b71:	48 29 f0             	sub    %rsi,%rax
  403b74:	48 0f 48 c2          	cmovs  %rdx,%rax
  403b78:	49 63 d7             	movslq %r15d,%rdx
  403b7b:	48 39 d0             	cmp    %rdx,%rax
  403b7e:	48 0f 4f c2          	cmovg  %rdx,%rax
  403b82:	48 85 c0             	test   %rax,%rax
  403b85:	0f 84 66 08 00 00    	je     4043f1 <fmt_fp+0x18f1>
  403b8b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403b91:	0f 8f 50 08 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  403b97:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403b9b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403ba1:	41 89 c7             	mov    %eax,%r15d
  403ba4:	45 29 ca             	sub    %r9d,%r10d
  403ba7:	e9 00 ff ff ff       	jmp    403aac <fmt_fp+0xfac>
  403bac:	0f 1f 40 00          	nopl   0x0(%rax)
  403bb0:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403bb7:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403bbe:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403bc3:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403bca:	cc cc cc 
  403bcd:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403bd4:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403bdb:	66 0f 6e c7          	movd   %edi,%xmm0
  403bdf:	4c 39 e0             	cmp    %r12,%rax
  403be2:	49 89 c6             	mov    %rax,%r14
  403be5:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403bea:	4c 0f 46 e0          	cmovbe %rax,%r12
  403bee:	4c 89 e3             	mov    %r12,%rbx
  403bf1:	0f 1f 40 00          	nopl   0x0(%rax)
  403bf5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403bfc:	00 00 00 00 
  403c00:	41 8b 0c 24          	mov    (%r12),%ecx
  403c04:	48 85 c9             	test   %rcx,%rcx
  403c07:	0f 84 43 02 00 00    	je     403e50 <fmt_fp+0x1350>
  403c0d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403c11:	48 89 f7             	mov    %rsi,%rdi
  403c14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403c1b:	00 00 00 00 
  403c1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403c26:	00 00 00 00 
  403c2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403c31:	00 00 00 00 
  403c35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403c3c:	00 00 00 00 
  403c40:	48 89 c8             	mov    %rcx,%rax
  403c43:	48 83 ef 01          	sub    $0x1,%rdi
  403c47:	49 f7 e5             	mul    %r13
  403c4a:	48 89 c8             	mov    %rcx,%rax
  403c4d:	48 c1 ea 03          	shr    $0x3,%rdx
  403c51:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403c55:	4d 01 c0             	add    %r8,%r8
  403c58:	4c 29 c0             	sub    %r8,%rax
  403c5b:	83 c0 30             	add    $0x30,%eax
  403c5e:	48 83 f9 09          	cmp    $0x9,%rcx
  403c62:	48 89 d1             	mov    %rdx,%rcx
  403c65:	88 07                	mov    %al,(%rdi)
  403c67:	77 d7                	ja     403c40 <fmt_fp+0x1140>
  403c69:	4c 39 e3             	cmp    %r12,%rbx
  403c6c:	0f 84 36 01 00 00    	je     403da8 <fmt_fp+0x12a8>
  403c72:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403c76:	48 39 fa             	cmp    %rdi,%rdx
  403c79:	0f 83 32 01 00 00    	jae    403db1 <fmt_fp+0x12b1>
  403c7f:	49 89 fa             	mov    %rdi,%r10
  403c82:	48 89 f8             	mov    %rdi,%rax
  403c85:	49 29 d2             	sub    %rdx,%r10
  403c88:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403c8c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403c90:	76 46                	jbe    403cd8 <fmt_fp+0x11d8>
  403c92:	4c 89 d6             	mov    %r10,%rsi
  403c95:	48 89 f9             	mov    %rdi,%rcx
  403c98:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403c9c:	48 29 f1             	sub    %rsi,%rcx
  403c9f:	40 f6 c6 10          	test   $0x10,%sil
  403ca3:	74 1b                	je     403cc0 <fmt_fp+0x11c0>
  403ca5:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403ca9:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403cad:	48 39 c8             	cmp    %rcx,%rax
  403cb0:	74 1e                	je     403cd0 <fmt_fp+0x11d0>
  403cb2:	0f 1f 00             	nopl   (%rax)
  403cb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cbc:	00 00 00 00 
  403cc0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403cc4:	48 83 e8 20          	sub    $0x20,%rax
  403cc8:	0f 11 00             	movups %xmm0,(%rax)
  403ccb:	48 39 c8             	cmp    %rcx,%rax
  403cce:	75 f0                	jne    403cc0 <fmt_fp+0x11c0>
  403cd0:	4c 39 d6             	cmp    %r10,%rsi
  403cd3:	74 3b                	je     403d10 <fmt_fp+0x1210>
  403cd5:	48 29 f7             	sub    %rsi,%rdi
  403cd8:	48 89 d0             	mov    %rdx,%rax
  403cdb:	48 f7 d0             	not    %rax
  403cde:	48 01 f8             	add    %rdi,%rax
  403ce1:	48 83 ef 01          	sub    $0x1,%rdi
  403ce5:	c6 07 30             	movb   $0x30,(%rdi)
  403ce8:	48 39 fa             	cmp    %rdi,%rdx
  403ceb:	73 23                	jae    403d10 <fmt_fp+0x1210>
  403ced:	a8 01                	test   $0x1,%al
  403cef:	74 0f                	je     403d00 <fmt_fp+0x1200>
  403cf1:	48 83 ef 01          	sub    $0x1,%rdi
  403cf5:	c6 07 30             	movb   $0x30,(%rdi)
  403cf8:	48 39 fa             	cmp    %rdi,%rdx
  403cfb:	73 13                	jae    403d10 <fmt_fp+0x1210>
  403cfd:	0f 1f 00             	nopl   (%rax)
  403d00:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403d04:	48 83 ef 02          	sub    $0x2,%rdi
  403d08:	c6 07 30             	movb   $0x30,(%rdi)
  403d0b:	48 39 fa             	cmp    %rdi,%rdx
  403d0e:	72 f0                	jb     403d00 <fmt_fp+0x1200>
  403d10:	be 09 00 00 00       	mov    $0x9,%esi
  403d15:	48 89 d7             	mov    %rdx,%rdi
  403d18:	41 f6 07 20          	testb  $0x20,(%r15)
  403d1c:	0f 84 9c 00 00 00    	je     403dbe <fmt_fp+0x12be>
  403d22:	49 83 c4 04          	add    $0x4,%r12
  403d26:	4d 39 e6             	cmp    %r12,%r14
  403d29:	0f 83 d1 fe ff ff    	jae    403c00 <fmt_fp+0x1100>
  403d2f:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403d36:	49 89 dc             	mov    %rbx,%r12
  403d39:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403d40:	45 85 ff             	test   %r15d,%r15d
  403d43:	0f 85 36 04 00 00    	jne    40417f <fmt_fp+0x167f>
  403d49:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403d50:	0f 84 d8 fb ff ff    	je     40392e <fmt_fp+0xe2e>
  403d56:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403d5d:	f6 02 20             	testb  $0x20,(%rdx)
  403d60:	0f 85 c8 fb ff ff    	jne    40392e <fmt_fp+0xe2e>
  403d66:	be 01 00 00 00       	mov    $0x1,%esi
  403d6b:	48 8d 3d a4 33 00 00 	lea    0x33a4(%rip),%rdi        # 407116 <_fini+0x412>
  403d72:	e8 29 25 00 00       	call   4062a0 <__fwritex>
  403d77:	41 83 c7 09          	add    $0x9,%r15d
  403d7b:	41 83 ff 09          	cmp    $0x9,%r15d
  403d7f:	0f 8e a9 fb ff ff    	jle    40392e <fmt_fp+0xe2e>
  403d85:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403d8c:	b9 09 00 00 00       	mov    $0x9,%ecx
  403d91:	44 89 fa             	mov    %r15d,%edx
  403d94:	be 30 00 00 00       	mov    $0x30,%esi
  403d99:	e8 42 ec ff ff       	call   4029e0 <pad.part.0>
  403d9e:	e9 8b fb ff ff       	jmp    40392e <fmt_fp+0xe2e>
  403da3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403da8:	48 39 f7             	cmp    %rsi,%rdi
  403dab:	0f 84 b0 00 00 00    	je     403e61 <fmt_fp+0x1361>
  403db1:	48 29 fe             	sub    %rdi,%rsi
  403db4:	41 f6 07 20          	testb  $0x20,(%r15)
  403db8:	0f 85 64 ff ff ff    	jne    403d22 <fmt_fp+0x1222>
  403dbe:	4c 89 fa             	mov    %r15,%rdx
  403dc1:	e8 da 24 00 00       	call   4062a0 <__fwritex>
  403dc6:	66 0f 6f 05 e2 36 00 	movdqa 0x36e2(%rip),%xmm0        # 4074b0 <states+0x210>
  403dcd:	00 
  403dce:	e9 4f ff ff ff       	jmp    403d22 <fmt_fp+0x1222>
  403dd3:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403dda:	f6 00 20             	testb  $0x20,(%rax)
  403ddd:	0f 85 4e f9 ff ff    	jne    403731 <fmt_fp+0xc31>
  403de3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  403dea:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403df1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403df8:	e8 a3 24 00 00       	call   4062a0 <__fwritex>
  403dfd:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403e03:	35 00 00 01 00       	xor    $0x10000,%eax
  403e08:	a9 00 20 01 00       	test   $0x12000,%eax
  403e0d:	0f 85 1e f9 ff ff    	jne    403731 <fmt_fp+0xc31>
  403e13:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403e1a:	0f 85 11 f9 ff ff    	jne    403731 <fmt_fp+0xc31>
  403e20:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403e26:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403e2c:	be 30 00 00 00       	mov    $0x30,%esi
  403e31:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403e38:	e8 a3 eb ff ff       	call   4029e0 <pad.part.0>
  403e3d:	e9 ef f8 ff ff       	jmp    403731 <fmt_fp+0xc31>
  403e42:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403e49:	f6 00 20             	testb  $0x20,(%rax)
  403e4c:	75 af                	jne    403dfd <fmt_fp+0x12fd>
  403e4e:	eb 93                	jmp    403de3 <fmt_fp+0x12e3>
  403e50:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  403e54:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403e58:	4c 39 e3             	cmp    %r12,%rbx
  403e5b:	0f 85 1e fe ff ff    	jne    403c7f <fmt_fp+0x117f>
  403e61:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403e65:	be 01 00 00 00       	mov    $0x1,%esi
  403e6a:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403e6e:	e9 a5 fe ff ff       	jmp    403d18 <fmt_fp+0x1218>
  403e73:	d9 05 f7 35 00 00    	flds   0x35f7(%rip)        # 407470 <states+0x1d0>
  403e79:	d9 05 01 36 00 00    	flds   0x3601(%rip)        # 407480 <states+0x1e0>
  403e7f:	b8 0e 00 00 00       	mov    $0xe,%eax
  403e84:	44 29 f8             	sub    %r15d,%eax
  403e87:	90                   	nop
  403e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403e8f:	00 
  403e90:	dc c9                	fmul   %st,%st(1)
  403e92:	83 e8 01             	sub    $0x1,%eax
  403e95:	73 f9                	jae    403e90 <fmt_fp+0x1390>
  403e97:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403e9e:	80 38 2d             	cmpb   $0x2d,(%rax)
  403ea1:	0f 84 c6 04 00 00    	je     40436d <fmt_fp+0x186d>
  403ea7:	d9 ca                	fxch   %st(2)
  403ea9:	d8 c1                	fadd   %st(1),%st
  403eab:	de e1                	fsubp  %st,%st(1)
  403ead:	d9 c9                	fxch   %st(1)
  403eaf:	e9 9d f3 ff ff       	jmp    403251 <fmt_fp+0x751>
  403eb4:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  403ebb:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  403ebf:	48 89 c2             	mov    %rax,%rdx
  403ec2:	48 29 fe             	sub    %rdi,%rsi
  403ec5:	e8 d6 23 00 00       	call   4062a0 <__fwritex>
  403eca:	e9 5f fa ff ff       	jmp    40392e <fmt_fp+0xe2e>
  403ecf:	44 01 d8             	add    %r11d,%eax
  403ed2:	89 06                	mov    %eax,(%rsi)
  403ed4:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  403ed9:	0f 86 3e 05 00 00    	jbe    40441d <fmt_fp+0x191d>
  403edf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ee6:	00 00 00 00 
  403eea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ef1:	00 00 00 00 
  403ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403efc:	00 00 00 00 
  403f00:	48 89 f2             	mov    %rsi,%rdx
  403f03:	48 83 ee 04          	sub    $0x4,%rsi
  403f07:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  403f0e:	4c 39 e6             	cmp    %r12,%rsi
  403f11:	73 0d                	jae    403f20 <fmt_fp+0x1420>
  403f13:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  403f1a:	00 00 
  403f1c:	49 83 ec 04          	sub    $0x4,%r12
  403f20:	8b 06                	mov    (%rsi),%eax
  403f22:	83 c0 01             	add    $0x1,%eax
  403f25:	89 06                	mov    %eax,(%rsi)
  403f27:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  403f2c:	77 d2                	ja     403f00 <fmt_fp+0x1400>
  403f2e:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403f35:	41 8b 0c 24          	mov    (%r12),%ecx
  403f39:	4c 29 e0             	sub    %r12,%rax
  403f3c:	48 c1 f8 02          	sar    $0x2,%rax
  403f40:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  403f43:	83 f9 09             	cmp    $0x9,%ecx
  403f46:	0f 86 43 f6 ff ff    	jbe    40358f <fmt_fp+0xa8f>
  403f4c:	b8 0a 00 00 00       	mov    $0xa,%eax
  403f51:	0f 1f 40 00          	nopl   0x0(%rax)
  403f55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f5c:	00 00 00 00 
  403f60:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403f63:	83 c7 01             	add    $0x1,%edi
  403f66:	01 c0                	add    %eax,%eax
  403f68:	39 c1                	cmp    %eax,%ecx
  403f6a:	73 f4                	jae    403f60 <fmt_fp+0x1460>
  403f6c:	e9 1e f6 ff ff       	jmp    40358f <fmt_fp+0xa8f>
  403f71:	be 01 00 00 00       	mov    $0x1,%esi
  403f76:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  403f7c:	e9 d7 ec ff ff       	jmp    402c58 <fmt_fp+0x158>
  403f81:	be 01 00 00 00       	mov    $0x1,%esi
  403f86:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  403f8c:	e9 b6 ec ff ff       	jmp    402c47 <fmt_fp+0x147>
  403f91:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403f98:	f6 07 20             	testb  $0x20,(%rdi)
  403f9b:	0f 84 9d f4 ff ff    	je     40343e <fmt_fp+0x93e>
  403fa1:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403fa7:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403fad:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403fb4:	35 00 00 01 00       	xor    $0x10000,%eax
  403fb9:	a9 00 20 01 00       	test   $0x12000,%eax
  403fbe:	75 0d                	jne    403fcd <fmt_fp+0x14cd>
  403fc0:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403fc7:	0f 84 bd f4 ff ff    	je     40348a <fmt_fp+0x98a>
  403fcd:	45 29 f7             	sub    %r14d,%r15d
  403fd0:	45 85 ff             	test   %r15d,%r15d
  403fd3:	0f 8e 9d f1 ff ff    	jle    403176 <fmt_fp+0x676>
  403fd9:	e9 64 f1 ff ff       	jmp    403142 <fmt_fp+0x642>
  403fde:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  403fe5:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  403fe9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403ff0:	0f 85 9c 00 00 00    	jne    404092 <fmt_fp+0x1592>
  403ff6:	49 39 dc             	cmp    %rbx,%r12
  403ff9:	0f 83 01 01 00 00    	jae    404100 <fmt_fp+0x1600>
  403fff:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404003:	45 85 c9             	test   %r9d,%r9d
  404006:	0f 84 f4 00 00 00    	je     404100 <fmt_fp+0x1600>
  40400c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404013:	31 f6                	xor    %esi,%esi
  404015:	d1 c8                	ror    $1,%eax
  404017:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40401c:	0f 87 e3 00 00 00    	ja     404105 <fmt_fp+0x1605>
  404022:	31 f6                	xor    %esi,%esi
  404024:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404029:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40402c:	44 89 c8             	mov    %r9d,%eax
  40402f:	31 d2                	xor    %edx,%edx
  404031:	83 c6 01             	add    $0x1,%esi
  404034:	01 c9                	add    %ecx,%ecx
  404036:	f7 f1                	div    %ecx
  404038:	85 d2                	test   %edx,%edx
  40403a:	74 ed                	je     404029 <fmt_fp+0x1529>
  40403c:	48 63 f6             	movslq %esi,%rsi
  40403f:	e9 00 fb ff ff       	jmp    403b44 <fmt_fp+0x1044>
  404044:	db 2d 56 34 00 00    	fldt   0x3456(%rip)        # 4074a0 <states+0x200>
  40404a:	d9 05 28 34 00 00    	flds   0x3428(%rip)        # 407478 <states+0x1d8>
  404050:	e9 fe f4 ff ff       	jmp    403553 <fmt_fp+0xa53>
  404055:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404059:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40405d:	e9 54 f2 ff ff       	jmp    4032b6 <fmt_fp+0x7b6>
  404062:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  404068:	75 0f                	jne    404079 <fmt_fp+0x1579>
  40406a:	49 39 f4             	cmp    %rsi,%r12
  40406d:	73 0a                	jae    404079 <fmt_fp+0x1579>
  40406f:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  404073:	0f 85 ba f4 ff ff    	jne    403533 <fmt_fp+0xa33>
  404079:	d9 05 f5 33 00 00    	flds   0x33f5(%rip)        # 407474 <states+0x1d4>
  40407f:	e9 b5 f4 ff ff       	jmp    403539 <fmt_fp+0xa39>
  404084:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404089:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40408d:	e9 4d f3 ff ff       	jmp    4033df <fmt_fp+0x8df>
  404092:	45 85 ff             	test   %r15d,%r15d
  404095:	0f 85 24 03 00 00    	jne    4043bf <fmt_fp+0x18bf>
  40409b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4040a2:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4040a8:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4040ae:	41 83 ce 20          	or     $0x20,%r14d
  4040b2:	e9 3d f5 ff ff       	jmp    4035f4 <fmt_fp+0xaf4>
  4040b7:	45 85 ff             	test   %r15d,%r15d
  4040ba:	0f 85 bd f9 ff ff    	jne    403a7d <fmt_fp+0xf7d>
  4040c0:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4040c7:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4040cd:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4040d3:	41 83 ce 20          	or     $0x20,%r14d
  4040d7:	41 83 fe 66          	cmp    $0x66,%r14d
  4040db:	0f 85 08 f5 ff ff    	jne    4035e9 <fmt_fp+0xae9>
  4040e1:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  4040e7:	0f 84 fa 02 00 00    	je     4043e7 <fmt_fp+0x18e7>
  4040ed:	85 ff                	test   %edi,%edi
  4040ef:	0f 85 ce f9 ff ff    	jne    403ac3 <fmt_fp+0xfc3>
  4040f5:	e9 df f5 ff ff       	jmp    4036d9 <fmt_fp+0xbd9>
  4040fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404100:	be 09 00 00 00       	mov    $0x9,%esi
  404105:	48 89 d8             	mov    %rbx,%rax
  404108:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40410f:	48 63 d7             	movslq %edi,%rdx
  404112:	48 c1 f8 02          	sar    $0x2,%rax
  404116:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40411b:	48 01 d0             	add    %rdx,%rax
  40411e:	ba 00 00 00 00       	mov    $0x0,%edx
  404123:	48 29 f0             	sub    %rsi,%rax
  404126:	48 0f 48 c2          	cmovs  %rdx,%rax
  40412a:	49 63 d7             	movslq %r15d,%rdx
  40412d:	48 39 d0             	cmp    %rdx,%rax
  404130:	48 0f 4f c2          	cmovg  %rdx,%rax
  404134:	41 89 c7             	mov    %eax,%r15d
  404137:	48 85 c0             	test   %rax,%rax
  40413a:	0f 85 3d f9 ff ff    	jne    403a7d <fmt_fp+0xf7d>
  404140:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404147:	41 83 ce 20          	or     $0x20,%r14d
  40414b:	41 83 fe 66          	cmp    $0x66,%r14d
  40414f:	0f 84 9c 02 00 00    	je     4043f1 <fmt_fp+0x18f1>
  404155:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40415b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404161:	45 31 ff             	xor    %r15d,%r15d
  404164:	e9 80 f4 ff ff       	jmp    4035e9 <fmt_fp+0xae9>
  404169:	44 39 d7             	cmp    %r10d,%edi
  40416c:	0f 8f 75 02 00 00    	jg     4043e7 <fmt_fp+0x18e7>
  404172:	85 ff                	test   %edi,%edi
  404174:	0f 8f 49 f9 ff ff    	jg     403ac3 <fmt_fp+0xfc3>
  40417a:	e9 5a f5 ff ff       	jmp    4036d9 <fmt_fp+0xbd9>
  40417f:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404186:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40418b:	48 89 f8             	mov    %rdi,%rax
  40418e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404192:	4c 29 e0             	sub    %r12,%rax
  404195:	48 39 d1             	cmp    %rdx,%rcx
  404198:	ba 00 00 00 00       	mov    $0x0,%edx
  40419d:	48 0f 42 c2          	cmovb  %rdx,%rax
  4041a1:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  4041a6:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4041ad:	f6 00 20             	testb  $0x20,(%rax)
  4041b0:	0f 84 70 02 00 00    	je     404426 <fmt_fp+0x1926>
  4041b6:	45 85 ff             	test   %r15d,%r15d
  4041b9:	0f 8e b8 fb ff ff    	jle    403d77 <fmt_fp+0x1277>
  4041bf:	49 39 de             	cmp    %rbx,%r14
  4041c2:	0f 83 af fb ff ff    	jae    403d77 <fmt_fp+0x1277>
  4041c8:	b8 30 30 30 30       	mov    $0x30303030,%eax
  4041cd:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4041d1:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  4041d5:	49 89 d9             	mov    %rbx,%r9
  4041d8:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  4041df:	66 0f 6e c0          	movd   %eax,%xmm0
  4041e3:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  4041ea:	cc cc cc 
  4041ed:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4041f2:	0f 1f 00             	nopl   (%rax)
  4041f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041fc:	00 00 00 00 
  404200:	41 8b 0e             	mov    (%r14),%ecx
  404203:	4c 89 c7             	mov    %r8,%rdi
  404206:	48 85 c9             	test   %rcx,%rcx
  404209:	74 67                	je     404272 <fmt_fp+0x1772>
  40420b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404212:	00 00 
  404214:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40421b:	00 00 00 00 
  40421f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404226:	00 00 00 00 
  40422a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404231:	00 00 00 00 
  404235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40423c:	00 00 00 00 
  404240:	48 89 c8             	mov    %rcx,%rax
  404243:	48 83 ef 01          	sub    $0x1,%rdi
  404247:	49 f7 e4             	mul    %r12
  40424a:	48 89 c8             	mov    %rcx,%rax
  40424d:	48 c1 ea 03          	shr    $0x3,%rdx
  404251:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404255:	48 01 f6             	add    %rsi,%rsi
  404258:	48 29 f0             	sub    %rsi,%rax
  40425b:	83 c0 30             	add    $0x30,%eax
  40425e:	48 83 f9 09          	cmp    $0x9,%rcx
  404262:	48 89 d1             	mov    %rdx,%rcx
  404265:	88 07                	mov    %al,(%rdi)
  404267:	77 d7                	ja     404240 <fmt_fp+0x1740>
  404269:	49 39 fd             	cmp    %rdi,%r13
  40426c:	0f 83 91 00 00 00    	jae    404303 <fmt_fp+0x1803>
  404272:	48 89 fe             	mov    %rdi,%rsi
  404275:	48 89 f8             	mov    %rdi,%rax
  404278:	4c 29 ee             	sub    %r13,%rsi
  40427b:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  40427f:	48 83 fa 0e          	cmp    $0xe,%rdx
  404283:	76 43                	jbe    4042c8 <fmt_fp+0x17c8>
  404285:	48 89 f1             	mov    %rsi,%rcx
  404288:	48 89 fa             	mov    %rdi,%rdx
  40428b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40428f:	48 29 ca             	sub    %rcx,%rdx
  404292:	f6 c1 10             	test   $0x10,%cl
  404295:	74 19                	je     4042b0 <fmt_fp+0x17b0>
  404297:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40429b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40429f:	48 39 d0             	cmp    %rdx,%rax
  4042a2:	74 1c                	je     4042c0 <fmt_fp+0x17c0>
  4042a4:	90                   	nop
  4042a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042ac:	00 00 00 00 
  4042b0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  4042b4:	48 83 e8 20          	sub    $0x20,%rax
  4042b8:	0f 11 00             	movups %xmm0,(%rax)
  4042bb:	48 39 d0             	cmp    %rdx,%rax
  4042be:	75 f0                	jne    4042b0 <fmt_fp+0x17b0>
  4042c0:	48 39 f1             	cmp    %rsi,%rcx
  4042c3:	74 3b                	je     404300 <fmt_fp+0x1800>
  4042c5:	48 29 cf             	sub    %rcx,%rdi
  4042c8:	4c 89 e8             	mov    %r13,%rax
  4042cb:	48 f7 d0             	not    %rax
  4042ce:	48 01 f8             	add    %rdi,%rax
  4042d1:	48 83 ef 01          	sub    $0x1,%rdi
  4042d5:	c6 07 30             	movb   $0x30,(%rdi)
  4042d8:	49 39 fd             	cmp    %rdi,%r13
  4042db:	73 23                	jae    404300 <fmt_fp+0x1800>
  4042dd:	a8 01                	test   $0x1,%al
  4042df:	74 0f                	je     4042f0 <fmt_fp+0x17f0>
  4042e1:	48 83 ef 01          	sub    $0x1,%rdi
  4042e5:	c6 07 30             	movb   $0x30,(%rdi)
  4042e8:	49 39 fd             	cmp    %rdi,%r13
  4042eb:	73 13                	jae    404300 <fmt_fp+0x1800>
  4042ed:	0f 1f 00             	nopl   (%rax)
  4042f0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  4042f4:	48 83 ef 02          	sub    $0x2,%rdi
  4042f8:	c6 07 30             	movb   $0x30,(%rdi)
  4042fb:	49 39 fd             	cmp    %rdi,%r13
  4042fe:	72 f0                	jb     4042f0 <fmt_fp+0x17f0>
  404300:	4c 89 ef             	mov    %r13,%rdi
  404303:	f6 03 20             	testb  $0x20,(%rbx)
  404306:	74 28                	je     404330 <fmt_fp+0x1830>
  404308:	49 83 c6 04          	add    $0x4,%r14
  40430c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404310:	4d 39 ce             	cmp    %r9,%r14
  404313:	0f 83 62 fa ff ff    	jae    403d7b <fmt_fp+0x127b>
  404319:	85 c0                	test   %eax,%eax
  40431b:	0f 8e 5a fa ff ff    	jle    403d7b <fmt_fp+0x127b>
  404321:	41 89 c7             	mov    %eax,%r15d
  404324:	e9 d7 fe ff ff       	jmp    404200 <fmt_fp+0x1700>
  404329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404330:	b8 09 00 00 00       	mov    $0x9,%eax
  404335:	48 89 da             	mov    %rbx,%rdx
  404338:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  40433f:	41 39 c7             	cmp    %eax,%r15d
  404342:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404349:	41 0f 4e c7          	cmovle %r15d,%eax
  40434d:	48 63 f0             	movslq %eax,%rsi
  404350:	e8 4b 1f 00 00       	call   4062a0 <__fwritex>
  404355:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40435c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404363:	66 0f 6f 05 45 31 00 	movdqa 0x3145(%rip),%xmm0        # 4074b0 <states+0x210>
  40436a:	00 
  40436b:	eb 9b                	jmp    404308 <fmt_fp+0x1808>
  40436d:	d9 ca                	fxch   %st(2)
  40436f:	d9 e0                	fchs
  404371:	d8 e1                	fsub   %st(1),%st
  404373:	de c1                	faddp  %st,%st(1)
  404375:	d9 e0                	fchs
  404377:	d9 c9                	fxch   %st(1)
  404379:	e9 d3 ee ff ff       	jmp    403251 <fmt_fp+0x751>
  40437e:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404382:	48 39 c3             	cmp    %rax,%rbx
  404385:	0f 85 c2 f1 ff ff    	jne    40354d <fmt_fp+0xa4d>
  40438b:	d9 e8                	fld1
  40438d:	e9 c1 f1 ff ff       	jmp    403553 <fmt_fp+0xa53>
  404392:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404396:	4c 89 e9             	mov    %r13,%rcx
  404399:	e9 e2 f2 ff ff       	jmp    403680 <fmt_fp+0xb80>
  40439e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  4043a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4043a9:	e9 32 ec ff ff       	jmp    402fe0 <fmt_fp+0x4e0>
  4043ae:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4043b2:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  4043b6:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4043ba:	e9 01 ef ff ff       	jmp    4032c0 <fmt_fp+0x7c0>
  4043bf:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  4043c6:	74 1f                	je     4043e7 <fmt_fp+0x18e7>
  4043c8:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4043cf:	41 83 c1 01          	add    $0x1,%r9d
  4043d3:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4043d8:	44 29 c8             	sub    %r9d,%eax
  4043db:	41 83 ce 20          	or     $0x20,%r14d
  4043df:	4c 63 d0             	movslq %eax,%r10
  4043e2:	e9 0d f2 ff ff       	jmp    4035f4 <fmt_fp+0xaf4>
  4043e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4043ec:	e9 ee ec ff ff       	jmp    4030df <fmt_fp+0x5df>
  4043f1:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  4043f7:	74 ee                	je     4043e7 <fmt_fp+0x18e7>
  4043f9:	45 31 ff             	xor    %r15d,%r15d
  4043fc:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404402:	85 ff                	test   %edi,%edi
  404404:	0f 8f b9 f6 ff ff    	jg     403ac3 <fmt_fp+0xfc3>
  40440a:	e9 ca f2 ff ff       	jmp    4036d9 <fmt_fp+0xbd9>
  40440f:	dd d8                	fstp   %st(0)
  404411:	dd d8                	fstp   %st(0)
  404413:	dd d8                	fstp   %st(0)
  404415:	49 89 c0             	mov    %rax,%r8
  404418:	e9 82 ef ff ff       	jmp    40339f <fmt_fp+0x89f>
  40441d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  404421:	e9 08 fb ff ff       	jmp    403f2e <fmt_fp+0x142e>
  404426:	48 89 c2             	mov    %rax,%rdx
  404429:	be 01 00 00 00       	mov    $0x1,%esi
  40442e:	48 8d 3d e1 2c 00 00 	lea    0x2ce1(%rip),%rdi        # 407116 <_fini+0x412>
  404435:	e8 66 1e 00 00       	call   4062a0 <__fwritex>
  40443a:	e9 77 fd ff ff       	jmp    4041b6 <fmt_fp+0x16b6>
  40443f:	e8 bc e1 ff ff       	call   402600 <__stack_chk_fail>
  404444:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40444b:	00 00 00 
  40444e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404455:	00 00 00 
  404458:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40445f:	00 00 00 
  404462:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404469:	00 00 00 
  40446c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404473:	00 00 00 
  404476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40447d:	00 00 00 

0000000000404480 <printf_core>:
  404480:	55                   	push   %rbp
  404481:	48 89 e5             	mov    %rsp,%rbp
  404484:	41 57                	push   %r15
  404486:	4c 8d 3d 13 2e 00 00 	lea    0x2e13(%rip),%r15        # 4072a0 <states>
  40448d:	41 56                	push   %r14
  40448f:	49 89 f6             	mov    %rsi,%r14
  404492:	41 55                	push   %r13
  404494:	45 31 ed             	xor    %r13d,%r13d
  404497:	41 54                	push   %r12
  404499:	53                   	push   %rbx
  40449a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  4044a1:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  4044a5:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  4044ac:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  4044b3:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  4044ba:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  4044c1:	00 00 
  4044c3:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  4044c7:	45 31 c0             	xor    %r8d,%r8d
  4044ca:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  4044d1:	00 00 00 
  4044d4:	41 0f b6 06          	movzbl (%r14),%eax
  4044d8:	45 01 c5             	add    %r8d,%r13d
  4044db:	84 c0                	test   %al,%al
  4044dd:	0f 84 ad 06 00 00    	je     404b90 <printf_core+0x710>
  4044e3:	4d 89 f2             	mov    %r14,%r10
  4044e6:	eb 25                	jmp    40450d <printf_core+0x8d>
  4044e8:	66 90                	xchg   %ax,%ax
  4044ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044f1:	00 00 00 00 
  4044f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044fc:	00 00 00 00 
  404500:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404505:	49 83 c2 01          	add    $0x1,%r10
  404509:	84 c0                	test   %al,%al
  40450b:	74 73                	je     404580 <printf_core+0x100>
  40450d:	3c 25                	cmp    $0x25,%al
  40450f:	75 ef                	jne    404500 <printf_core+0x80>
  404511:	4c 89 d3             	mov    %r10,%rbx
  404514:	eb 17                	jmp    40452d <printf_core+0xad>
  404516:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40451d:	00 00 00 
  404520:	48 83 c3 02          	add    $0x2,%rbx
  404524:	49 83 c2 01          	add    $0x1,%r10
  404528:	80 3b 25             	cmpb   $0x25,(%rbx)
  40452b:	75 06                	jne    404533 <printf_core+0xb3>
  40452d:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  404531:	74 ed                	je     404520 <printf_core+0xa0>
  404533:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  404539:	4d 29 f2             	sub    %r14,%r10
  40453c:	45 29 eb             	sub    %r13d,%r11d
  40453f:	49 63 c3             	movslq %r11d,%rax
  404542:	49 39 c2             	cmp    %rax,%r10
  404545:	0f 8f 15 03 00 00    	jg     404860 <printf_core+0x3e0>
  40454b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40454f:	45 89 d0             	mov    %r10d,%r8d
  404552:	48 85 c0             	test   %rax,%rax
  404555:	74 09                	je     404560 <printf_core+0xe0>
  404557:	f6 00 20             	testb  $0x20,(%rax)
  40455a:	0f 84 10 03 00 00    	je     404870 <printf_core+0x3f0>
  404560:	45 85 d2             	test   %r10d,%r10d
  404563:	74 2b                	je     404590 <printf_core+0x110>
  404565:	45 39 c3             	cmp    %r8d,%r11d
  404568:	0f 8c f2 02 00 00    	jl     404860 <printf_core+0x3e0>
  40456e:	49 89 de             	mov    %rbx,%r14
  404571:	e9 5e ff ff ff       	jmp    4044d4 <printf_core+0x54>
  404576:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40457d:	00 00 00 
  404580:	3c 25                	cmp    $0x25,%al
  404582:	74 8d                	je     404511 <printf_core+0x91>
  404584:	4c 89 d3             	mov    %r10,%rbx
  404587:	eb aa                	jmp    404533 <printf_core+0xb3>
  404589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404590:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404594:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404597:	89 c8                	mov    %ecx,%eax
  404599:	83 ff 09             	cmp    $0x9,%edi
  40459c:	77 1a                	ja     4045b8 <printf_core+0x138>
  40459e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  4045a2:	0f 84 e5 03 00 00    	je     40498d <printf_core+0x50d>
  4045a8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4045ac:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4045b1:	eb 1a                	jmp    4045cd <printf_core+0x14d>
  4045b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4045b8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4045bc:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4045c1:	83 e9 20             	sub    $0x20,%ecx
  4045c4:	83 f9 1f             	cmp    $0x1f,%ecx
  4045c7:	0f 87 b5 05 00 00    	ja     404b82 <printf_core+0x702>
  4045cd:	45 31 e4             	xor    %r12d,%r12d
  4045d0:	be 89 28 01 00       	mov    $0x12889,%esi
  4045d5:	eb 48                	jmp    40461f <printf_core+0x19f>
  4045d7:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4045de:	00 
  4045df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045e6:	00 00 00 00 
  4045ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045f1:	00 00 00 00 
  4045f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045fc:	00 00 00 00 
  404600:	b8 01 00 00 00       	mov    $0x1,%eax
  404605:	48 83 c2 01          	add    $0x1,%rdx
  404609:	d3 e0                	shl    %cl,%eax
  40460b:	0f be 0a             	movsbl (%rdx),%ecx
  40460e:	41 09 c4             	or     %eax,%r12d
  404611:	89 c8                	mov    %ecx,%eax
  404613:	83 e9 20             	sub    $0x20,%ecx
  404616:	83 f9 1f             	cmp    $0x1f,%ecx
  404619:	0f 87 49 01 00 00    	ja     404768 <printf_core+0x2e8>
  40461f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  404622:	0f a3 ce             	bt     %ecx,%esi
  404625:	72 d9                	jb     404600 <printf_core+0x180>
  404627:	3c 2a                	cmp    $0x2a,%al
  404629:	0f 85 39 01 00 00    	jne    404768 <printf_core+0x2e8>
  40462f:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  404634:	48 89 c8             	mov    %rcx,%rax
  404637:	83 e9 30             	sub    $0x30,%ecx
  40463a:	83 f9 09             	cmp    $0x9,%ecx
  40463d:	0f 86 0d 03 00 00    	jbe    404950 <printf_core+0x4d0>
  404643:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404649:	85 c9                	test   %ecx,%ecx
  40464b:	0f 85 dc 00 00 00    	jne    40472d <printf_core+0x2ad>
  404651:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404655:	45 89 d1             	mov    %r10d,%r9d
  404658:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40465d:	0f 84 58 01 00 00    	je     4047bb <printf_core+0x33b>
  404663:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  40466a:	8b 06                	mov    (%rsi),%eax
  40466c:	83 f8 2f             	cmp    $0x2f,%eax
  40466f:	0f 87 4a 03 00 00    	ja     4049bf <printf_core+0x53f>
  404675:	89 c2                	mov    %eax,%edx
  404677:	83 c0 08             	add    $0x8,%eax
  40467a:	48 03 56 10          	add    0x10(%rsi),%rdx
  40467e:	89 06                	mov    %eax,(%rsi)
  404680:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404687:	00 00 00 
  40468a:	44 8b 0a             	mov    (%rdx),%r9d
  40468d:	44 89 e2             	mov    %r12d,%edx
  404690:	0f b6 03             	movzbl (%rbx),%eax
  404693:	80 ce 20             	or     $0x20,%dh
  404696:	45 85 c9             	test   %r9d,%r9d
  404699:	44 0f 48 e2          	cmovs  %edx,%r12d
  40469d:	44 89 ca             	mov    %r9d,%edx
  4046a0:	f7 da                	neg    %edx
  4046a2:	45 85 c9             	test   %r9d,%r9d
  4046a5:	44 0f 48 ca          	cmovs  %edx,%r9d
  4046a9:	3c 2e                	cmp    $0x2e,%al
  4046ab:	0f 84 12 01 00 00    	je     4047c3 <printf_core+0x343>
  4046b1:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  4046b8:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4046bf:	31 c0                	xor    %eax,%eax
  4046c1:	eb 5f                	jmp    404722 <printf_core+0x2a2>
  4046c3:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4046c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046d0:	00 00 00 00 
  4046d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046db:	00 00 00 00 
  4046df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046e6:	00 00 00 00 
  4046ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046f1:	00 00 00 00 
  4046f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046fc:	00 00 00 00 
  404700:	89 c1                	mov    %eax,%ecx
  404702:	48 63 d2             	movslq %edx,%rdx
  404705:	48 83 c3 01          	add    $0x1,%rbx
  404709:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  40470d:	4c 01 fe             	add    %r15,%rsi
  404710:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404714:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404717:	83 fa 07             	cmp    $0x7,%edx
  40471a:	0f 87 90 01 00 00    	ja     4048b0 <printf_core+0x430>
  404720:	89 f0                	mov    %esi,%eax
  404722:	0f be 13             	movsbl (%rbx),%edx
  404725:	83 ea 41             	sub    $0x41,%edx
  404728:	83 fa 39             	cmp    $0x39,%edx
  40472b:	76 d3                	jbe    404700 <printf_core+0x280>
  40472d:	e8 de 16 00 00       	call   405e10 <__errno_location>
  404732:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  404738:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  40473e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404742:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404749:	00 00 
  40474b:	0f 85 a2 0f 00 00    	jne    4056f3 <printf_core+0x1273>
  404751:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404755:	44 89 d8             	mov    %r11d,%eax
  404758:	5b                   	pop    %rbx
  404759:	41 5c                	pop    %r12
  40475b:	41 5d                	pop    %r13
  40475d:	41 5e                	pop    %r14
  40475f:	41 5f                	pop    %r15
  404761:	5d                   	pop    %rbp
  404762:	c3                   	ret
  404763:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404768:	0f be 0a             	movsbl (%rdx),%ecx
  40476b:	45 89 d1             	mov    %r10d,%r9d
  40476e:	48 89 d3             	mov    %rdx,%rbx
  404771:	89 c8                	mov    %ecx,%eax
  404773:	83 e9 30             	sub    $0x30,%ecx
  404776:	83 f9 09             	cmp    $0x9,%ecx
  404779:	77 40                	ja     4047bb <printf_core+0x33b>
  40477b:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404782:	0f 8f c8 00 00 00    	jg     404850 <printf_core+0x3d0>
  404788:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  40478c:	83 e8 30             	sub    $0x30,%eax
  40478f:	0f be c0             	movsbl %al,%eax
  404792:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404798:	39 f0                	cmp    %esi,%eax
  40479a:	0f 8f b0 00 00 00    	jg     404850 <printf_core+0x3d0>
  4047a0:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  4047a4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  4047a8:	29 c8                	sub    %ecx,%eax
  4047aa:	41 89 c1             	mov    %eax,%r9d
  4047ad:	89 d0                	mov    %edx,%eax
  4047af:	83 ea 30             	sub    $0x30,%edx
  4047b2:	83 fa 09             	cmp    $0x9,%edx
  4047b5:	0f 86 3d 0f 00 00    	jbe    4056f8 <printf_core+0x1278>
  4047bb:	3c 2e                	cmp    $0x2e,%al
  4047bd:	0f 85 ee fe ff ff    	jne    4046b1 <printf_core+0x231>
  4047c3:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4047c7:	3c 2a                	cmp    $0x2a,%al
  4047c9:	0f 85 11 02 00 00    	jne    4049e0 <printf_core+0x560>
  4047cf:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  4047d3:	89 c2                	mov    %eax,%edx
  4047d5:	83 e8 30             	sub    $0x30,%eax
  4047d8:	83 f8 09             	cmp    $0x9,%eax
  4047db:	77 0a                	ja     4047e7 <printf_core+0x367>
  4047dd:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  4047e1:	0f 84 4f 03 00 00    	je     404b36 <printf_core+0x6b6>
  4047e7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  4047ed:	85 c0                	test   %eax,%eax
  4047ef:	0f 85 38 ff ff ff    	jne    40472d <printf_core+0x2ad>
  4047f5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4047fa:	0f 84 6f 03 00 00    	je     404b6f <printf_core+0x6ef>
  404800:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404807:	8b 06                	mov    (%rsi),%eax
  404809:	83 f8 2f             	cmp    $0x2f,%eax
  40480c:	0f 87 60 02 00 00    	ja     404a72 <printf_core+0x5f2>
  404812:	89 c2                	mov    %eax,%edx
  404814:	83 c0 08             	add    $0x8,%eax
  404817:	48 03 56 10          	add    0x10(%rsi),%rdx
  40481b:	89 06                	mov    %eax,(%rsi)
  40481d:	8b 02                	mov    (%rdx),%eax
  40481f:	89 45 80             	mov    %eax,-0x80(%rbp)
  404822:	f7 d0                	not    %eax
  404824:	c1 e8 1f             	shr    $0x1f,%eax
  404827:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40482d:	48 83 c3 02          	add    $0x2,%rbx
  404831:	e9 89 fe ff ff       	jmp    4046bf <printf_core+0x23f>
  404836:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40483d:	00 00 00 
  404840:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404844:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404848:	83 e8 30             	sub    $0x30,%eax
  40484b:	83 f8 09             	cmp    $0x9,%eax
  40484e:	77 10                	ja     404860 <printf_core+0x3e0>
  404850:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404854:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404858:	83 ea 30             	sub    $0x30,%edx
  40485b:	83 fa 09             	cmp    $0x9,%edx
  40485e:	76 e0                	jbe    404840 <printf_core+0x3c0>
  404860:	e8 ab 15 00 00       	call   405e10 <__errno_location>
  404865:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  40486b:	e9 c8 fe ff ff       	jmp    404738 <printf_core+0x2b8>
  404870:	49 63 f2             	movslq %r10d,%rsi
  404873:	48 89 c2             	mov    %rax,%rdx
  404876:	4c 89 f7             	mov    %r14,%rdi
  404879:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404880:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404887:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40488b:	e8 10 1a 00 00       	call   4062a0 <__fwritex>
  404890:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404897:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40489e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4048a2:	e9 b9 fc ff ff       	jmp    404560 <printf_core+0xe0>
  4048a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4048ae:	00 00 
  4048b0:	85 f6                	test   %esi,%esi
  4048b2:	0f 84 75 fe ff ff    	je     40472d <printf_core+0x2ad>
  4048b8:	83 fe 1b             	cmp    $0x1b,%esi
  4048bb:	0f 84 e5 00 00 00    	je     4049a6 <printf_core+0x526>
  4048c1:	83 ff ff             	cmp    $0xffffffff,%edi
  4048c4:	0f 84 01 02 00 00    	je     404acb <printf_core+0x64b>
  4048ca:	48 63 ff             	movslq %edi,%rdi
  4048cd:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4048d2:	0f 84 b2 01 00 00    	je     404a8a <printf_core+0x60a>
  4048d8:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  4048df:	48 c1 e7 04          	shl    $0x4,%rdi
  4048e3:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  4048e8:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  4048ec:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4048f0:	f6 07 20             	testb  $0x20,(%rdi)
  4048f3:	0f 85 3f fe ff ff    	jne    404738 <printf_core+0x2b8>
  4048f9:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  4048fd:	89 d6                	mov    %edx,%esi
  4048ff:	85 c0                	test   %eax,%eax
  404901:	74 13                	je     404916 <printf_core+0x496>
  404903:	89 d7                	mov    %edx,%edi
  404905:	83 e6 df             	and    $0xffffffdf,%esi
  404908:	83 e7 0f             	and    $0xf,%edi
  40490b:	40 0f be f6          	movsbl %sil,%esi
  40490f:	40 80 ff 03          	cmp    $0x3,%dil
  404913:	0f 44 d6             	cmove  %esi,%edx
  404916:	44 89 e6             	mov    %r12d,%esi
  404919:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  40491f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404926:	44 0f 45 e6          	cmovne %esi,%r12d
  40492a:	8d 72 bf             	lea    -0x41(%rdx),%esi
  40492d:	83 fe 37             	cmp    $0x37,%esi
  404930:	0f 87 c2 02 00 00    	ja     404bf8 <printf_core+0x778>
  404936:	48 8d 3d 37 28 00 00 	lea    0x2837(%rip),%rdi        # 407174 <_fini+0x470>
  40493d:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404941:	48 01 fe             	add    %rdi,%rsi
  404944:	3e ff e6             	notrack jmp *%rsi
  404947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40494e:	00 00 
  404950:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404954:	0f 84 ab 01 00 00    	je     404b05 <printf_core+0x685>
  40495a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404960:	85 f6                	test   %esi,%esi
  404962:	0f 85 c5 fd ff ff    	jne    40472d <printf_core+0x2ad>
  404968:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  40496c:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404971:	0f 85 ec fc ff ff    	jne    404663 <printf_core+0x1e3>
  404977:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  40497e:	45 89 d1             	mov    %r10d,%r9d
  404981:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404988:	e9 32 fd ff ff       	jmp    4046bf <printf_core+0x23f>
  40498d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404991:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404995:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40499c:	00 00 00 
  40499f:	89 c8                	mov    %ecx,%eax
  4049a1:	e9 1b fc ff ff       	jmp    4045c1 <printf_core+0x141>
  4049a6:	83 ff ff             	cmp    $0xffffffff,%edi
  4049a9:	0f 85 7e fd ff ff    	jne    40472d <printf_core+0x2ad>
  4049af:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4049b4:	0f 85 32 ff ff ff    	jne    4048ec <printf_core+0x46c>
  4049ba:	e9 af fb ff ff       	jmp    40456e <printf_core+0xee>
  4049bf:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4049c6:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  4049ca:	48 8d 42 08          	lea    0x8(%rdx),%rax
  4049ce:	48 89 46 08          	mov    %rax,0x8(%rsi)
  4049d2:	e9 a9 fc ff ff       	jmp    404680 <printf_core+0x200>
  4049d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4049de:	00 00 
  4049e0:	0f be d0             	movsbl %al,%edx
  4049e3:	48 83 c3 01          	add    $0x1,%rbx
  4049e7:	83 ea 30             	sub    $0x30,%edx
  4049ea:	83 fa 09             	cmp    $0x9,%edx
  4049ed:	0f 87 93 0b 00 00    	ja     405586 <printf_core+0x1106>
  4049f3:	44 89 d2             	mov    %r10d,%edx
  4049f6:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  4049fc:	0f 8f fe 0c 00 00    	jg     405700 <printf_core+0x1280>
  404a02:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404a05:	83 e8 30             	sub    $0x30,%eax
  404a08:	0f be c0             	movsbl %al,%eax
  404a0b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404a11:	39 c2                	cmp    %eax,%edx
  404a13:	0f 8d 87 00 00 00    	jge    404aa0 <printf_core+0x620>
  404a19:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404a1d:	83 e8 30             	sub    $0x30,%eax
  404a20:	83 f8 09             	cmp    $0x9,%eax
  404a23:	0f 87 8b 0a 00 00    	ja     4054b4 <printf_core+0x1034>
  404a29:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404a2d:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404a31:	83 ea 30             	sub    $0x30,%edx
  404a34:	83 fa 09             	cmp    $0x9,%edx
  404a37:	77 20                	ja     404a59 <printf_core+0x5d9>
  404a39:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404a3d:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404a41:	83 ea 30             	sub    $0x30,%edx
  404a44:	83 fa 09             	cmp    $0x9,%edx
  404a47:	77 13                	ja     404a5c <printf_core+0x5dc>
  404a49:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404a4d:	48 83 c0 02          	add    $0x2,%rax
  404a51:	83 ea 30             	sub    $0x30,%edx
  404a54:	83 fa 09             	cmp    $0x9,%edx
  404a57:	76 e0                	jbe    404a39 <printf_core+0x5b9>
  404a59:	48 89 c3             	mov    %rax,%rbx
  404a5c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404a63:	00 00 00 
  404a66:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404a6d:	e9 4d fc ff ff       	jmp    4046bf <printf_core+0x23f>
  404a72:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404a79:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404a7d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404a81:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404a85:	e9 93 fd ff ff       	jmp    40481d <printf_core+0x39d>
  404a8a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404a91:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404a94:	e9 d5 fa ff ff       	jmp    40456e <printf_core+0xee>
  404a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404aa0:	48 83 c3 01          	add    $0x1,%rbx
  404aa4:	29 c8                	sub    %ecx,%eax
  404aa6:	0f be 0b             	movsbl (%rbx),%ecx
  404aa9:	89 c2                	mov    %eax,%edx
  404aab:	89 c8                	mov    %ecx,%eax
  404aad:	83 e9 30             	sub    $0x30,%ecx
  404ab0:	83 f9 09             	cmp    $0x9,%ecx
  404ab3:	0f 86 3d ff ff ff    	jbe    4049f6 <printf_core+0x576>
  404ab9:	89 55 80             	mov    %edx,-0x80(%rbp)
  404abc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404ac3:	00 00 00 
  404ac6:	e9 f4 fb ff ff       	jmp    4046bf <printf_core+0x23f>
  404acb:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404ad0:	0f 84 15 0c 00 00    	je     4056eb <printf_core+0x126b>
  404ad6:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404add:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404ae1:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404ae7:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404aee:	e8 fd dc ff ff       	call   4027f0 <pop_arg>
  404af3:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404af9:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404b00:	e9 e7 fd ff ff       	jmp    4048ec <printf_core+0x46c>
  404b05:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404b09:	48 83 e8 30          	sub    $0x30,%rax
  404b0d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b12:	0f 84 b6 09 00 00    	je     4054ce <printf_core+0x104e>
  404b18:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404b1f:	48 c1 e0 04          	shl    $0x4,%rax
  404b23:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404b2a:	00 00 00 
  404b2d:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404b31:	e9 57 fb ff ff       	jmp    40468d <printf_core+0x20d>
  404b36:	48 0f be c2          	movsbq %dl,%rax
  404b3a:	48 83 e8 30          	sub    $0x30,%rax
  404b3e:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b43:	0f 84 a9 09 00 00    	je     4054f2 <printf_core+0x1072>
  404b49:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404b50:	48 c1 e0 04          	shl    $0x4,%rax
  404b54:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404b58:	89 45 80             	mov    %eax,-0x80(%rbp)
  404b5b:	f7 d0                	not    %eax
  404b5d:	c1 e8 1f             	shr    $0x1f,%eax
  404b60:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404b66:	48 83 c3 04          	add    $0x4,%rbx
  404b6a:	e9 50 fb ff ff       	jmp    4046bf <printf_core+0x23f>
  404b6f:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404b73:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404b7a:	00 00 00 
  404b7d:	e9 ab fc ff ff       	jmp    40482d <printf_core+0x3ad>
  404b82:	48 89 d3             	mov    %rdx,%rbx
  404b85:	45 89 d1             	mov    %r10d,%r9d
  404b88:	45 31 e4             	xor    %r12d,%r12d
  404b8b:	e9 2b fc ff ff       	jmp    4047bb <printf_core+0x33b>
  404b90:	45 89 eb             	mov    %r13d,%r11d
  404b93:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b98:	0f 85 a0 fb ff ff    	jne    40473e <printf_core+0x2be>
  404b9e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404ba5:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404bab:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404bb1:	48 83 c7 10          	add    $0x10,%rdi
  404bb5:	85 c9                	test   %ecx,%ecx
  404bb7:	0f 84 2e 0b 00 00    	je     4056eb <printf_core+0x126b>
  404bbd:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404bc4:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404bcb:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404bcf:	85 f6                	test   %esi,%esi
  404bd1:	0f 84 90 0a 00 00    	je     405667 <printf_core+0x11e7>
  404bd7:	e8 14 dc ff ff       	call   4027f0 <pop_arg>
  404bdc:	49 83 c0 01          	add    $0x1,%r8
  404be0:	48 83 c7 10          	add    $0x10,%rdi
  404be4:	49 83 f8 0a          	cmp    $0xa,%r8
  404be8:	75 e1                	jne    404bcb <printf_core+0x74b>
  404bea:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404bf0:	e9 49 fb ff ff       	jmp    40473e <printf_core+0x2be>
  404bf5:	0f 1f 00             	nopl   (%rax)
  404bf8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404bfc:	4c 29 f0             	sub    %r14,%rax
  404bff:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404c06:	48 89 c7             	mov    %rax,%rdi
  404c09:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404c0d:	48 39 c7             	cmp    %rax,%rdi
  404c10:	0f 8e da 07 00 00    	jle    4053f0 <printf_core+0xf70>
  404c16:	48 89 f8             	mov    %rdi,%rax
  404c19:	48 8d 3d f8 24 00 00 	lea    0x24f8(%rip),%rdi        # 407118 <_fini+0x414>
  404c20:	89 45 80             	mov    %eax,-0x80(%rbp)
  404c23:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404c2a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404c30:	44 89 d0             	mov    %r10d,%eax
  404c33:	66 90                	xchg   %ax,%ax
  404c35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404c3c:	00 00 00 00 
  404c40:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404c46:	41 39 c9             	cmp    %ecx,%r9d
  404c49:	41 89 c8             	mov    %ecx,%r8d
  404c4c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404c50:	45 39 c3             	cmp    %r8d,%r11d
  404c53:	0f 8c 07 fc ff ff    	jl     404860 <printf_core+0x3e0>
  404c59:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404c60:	0f 85 e2 06 00 00    	jne    405348 <printf_core+0xec8>
  404c66:	41 39 c9             	cmp    %ecx,%r9d
  404c69:	0f 8e 40 07 00 00    	jle    4053af <printf_core+0xf2f>
  404c6f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404c73:	44 89 c2             	mov    %r8d,%edx
  404c76:	be 20 00 00 00       	mov    $0x20,%esi
  404c7b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404c81:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404c88:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404c8f:	e8 4c dd ff ff       	call   4029e0 <pad.part.0>
  404c94:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404c98:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404c9f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404ca6:	f6 00 20             	testb  $0x20,(%rax)
  404ca9:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404caf:	0f 84 07 07 00 00    	je     4053bc <printf_core+0xf3c>
  404cb5:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404cbc:	89 c1                	mov    %eax,%ecx
  404cbe:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404cc1:	0f 8d a7 f8 ff ff    	jge    40456e <printf_core+0xee>
  404cc7:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404cce:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404cd5:	8b 55 80             	mov    -0x80(%rbp),%edx
  404cd8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404cdc:	be 30 00 00 00       	mov    $0x30,%esi
  404ce1:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404ce8:	e8 f3 dc ff ff       	call   4029e0 <pad.part.0>
  404ced:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404cf4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404cf8:	f6 00 20             	testb  $0x20,(%rax)
  404cfb:	75 1b                	jne    404d18 <printf_core+0x898>
  404cfd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404d01:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404d08:	4c 89 f7             	mov    %r14,%rdi
  404d0b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404d0f:	e8 8c 15 00 00       	call   4062a0 <__fwritex>
  404d14:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404d18:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404d1f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404d26:	0f 85 42 f8 ff ff    	jne    40456e <printf_core+0xee>
  404d2c:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404d33:	0f 85 35 f8 ff ff    	jne    40456e <printf_core+0xee>
  404d39:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404d3d:	44 89 c2             	mov    %r8d,%edx
  404d40:	be 20 00 00 00       	mov    $0x20,%esi
  404d45:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404d49:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404d4f:	e8 8c dc ff ff       	call   4029e0 <pad.part.0>
  404d54:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404d58:	e9 11 f8 ff ff       	jmp    40456e <printf_core+0xee>
  404d5d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404d61:	45 85 c0             	test   %r8d,%r8d
  404d64:	79 0d                	jns    404d73 <printf_core+0x8f3>
  404d66:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404d6d:	0f 85 ed fa ff ff    	jne    404860 <printf_core+0x3e0>
  404d73:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404d7a:	41 89 d0             	mov    %edx,%r8d
  404d7d:	44 89 ce             	mov    %r9d,%esi
  404d80:	44 89 e1             	mov    %r12d,%ecx
  404d83:	ff 75 98             	push   -0x68(%rbp)
  404d86:	ff 75 90             	push   -0x70(%rbp)
  404d89:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404d8d:	8b 55 80             	mov    -0x80(%rbp),%edx
  404d90:	e8 6b dd ff ff       	call   402b00 <fmt_fp>
  404d95:	5e                   	pop    %rsi
  404d96:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404d9d:	83 f8 ff             	cmp    $0xffffffff,%eax
  404da0:	41 89 c0             	mov    %eax,%r8d
  404da3:	5f                   	pop    %rdi
  404da4:	0f 85 bb f7 ff ff    	jne    404565 <printf_core+0xe5>
  404daa:	e9 b1 fa ff ff       	jmp    404860 <printf_core+0x3e0>
  404daf:	90                   	nop
  404db0:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  404db4:	48 85 f6             	test   %rsi,%rsi
  404db7:	0f 88 4f 08 00 00    	js     40560c <printf_core+0x118c>
  404dbd:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  404dc4:	0f 85 61 08 00 00    	jne    40562b <printf_core+0x11ab>
  404dca:	41 f6 c4 01          	test   $0x1,%r12b
  404dce:	0f 85 7b 08 00 00    	jne    40564f <printf_core+0x11cf>
  404dd4:	48 8d 3d 3d 23 00 00 	lea    0x233d(%rip),%rdi        # 407118 <_fini+0x414>
  404ddb:	44 89 d0             	mov    %r10d,%eax
  404dde:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404de5:	48 85 f6             	test   %rsi,%rsi
  404de8:	0f 84 55 08 00 00    	je     405643 <printf_core+0x11c3>
  404dee:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  404df5:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404df9:	89 c7                	mov    %eax,%edi
  404dfb:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  404e02:	cc cc cc 
  404e05:	4d 89 c6             	mov    %r8,%r14
  404e08:	90                   	nop
  404e09:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e10:	00 00 00 00 
  404e14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e1b:	00 00 00 00 
  404e1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e26:	00 00 00 00 
  404e2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e31:	00 00 00 00 
  404e35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404e3c:	00 00 00 00 
  404e40:	48 89 f0             	mov    %rsi,%rax
  404e43:	49 83 ee 01          	sub    $0x1,%r14
  404e47:	48 f7 e1             	mul    %rcx
  404e4a:	48 89 f0             	mov    %rsi,%rax
  404e4d:	48 c1 ea 03          	shr    $0x3,%rdx
  404e51:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  404e55:	4d 01 d2             	add    %r10,%r10
  404e58:	4c 29 d0             	sub    %r10,%rax
  404e5b:	83 c0 30             	add    $0x30,%eax
  404e5e:	48 83 fe 09          	cmp    $0x9,%rsi
  404e62:	48 89 d6             	mov    %rdx,%rsi
  404e65:	41 88 06             	mov    %al,(%r14)
  404e68:	77 d6                	ja     404e40 <printf_core+0x9c0>
  404e6a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  404e71:	89 f8                	mov    %edi,%eax
  404e73:	8b 7d 80             	mov    -0x80(%rbp),%edi
  404e76:	85 ff                	test   %edi,%edi
  404e78:	79 0d                	jns    404e87 <printf_core+0xa07>
  404e7a:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404e81:	0f 85 d9 f9 ff ff    	jne    404860 <printf_core+0x3e0>
  404e87:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404e8d:	44 89 e2             	mov    %r12d,%edx
  404e90:	8b 75 80             	mov    -0x80(%rbp),%esi
  404e93:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  404e99:	85 c9                	test   %ecx,%ecx
  404e9b:	44 0f 45 e2          	cmovne %edx,%r12d
  404e9f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  404ea4:	0f 94 c2             	sete   %dl
  404ea7:	85 f6                	test   %esi,%esi
  404ea9:	75 08                	jne    404eb3 <printf_core+0xa33>
  404eab:	84 d2                	test   %dl,%dl
  404ead:	0f 85 e4 05 00 00    	jne    405497 <printf_core+0x1017>
  404eb3:	4c 89 c7             	mov    %r8,%rdi
  404eb6:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  404eba:	0f b6 d2             	movzbl %dl,%edx
  404ebd:	4c 29 f7             	sub    %r14,%rdi
  404ec0:	48 01 fa             	add    %rdi,%rdx
  404ec3:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  404eca:	48 39 ca             	cmp    %rcx,%rdx
  404ecd:	48 0f 4c d1          	cmovl  %rcx,%rdx
  404ed1:	48 63 ca             	movslq %edx,%rcx
  404ed4:	48 39 cf             	cmp    %rcx,%rdi
  404ed7:	0f 4e fa             	cmovle %edx,%edi
  404eda:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  404edf:	29 c2                	sub    %eax,%edx
  404ee1:	89 7d 80             	mov    %edi,-0x80(%rbp)
  404ee4:	39 fa                	cmp    %edi,%edx
  404ee6:	0f 8c 74 f9 ff ff    	jl     404860 <printf_core+0x3e0>
  404eec:	8b 7d 80             	mov    -0x80(%rbp),%edi
  404eef:	01 c7                	add    %eax,%edi
  404ef1:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  404ef7:	e9 44 fd ff ff       	jmp    404c40 <printf_core+0x7c0>
  404efc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  404f00:	48 85 c0             	test   %rax,%rax
  404f03:	0f 84 9a 02 00 00    	je     4051a3 <printf_core+0xd23>
  404f09:	44 89 e7             	mov    %r12d,%edi
  404f0c:	83 e7 08             	and    $0x8,%edi
  404f0f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  404f15:	89 d7                	mov    %edx,%edi
  404f17:	83 e7 20             	and    $0x20,%edi
  404f1a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  404f20:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404f24:	48 8d 35 55 23 00 00 	lea    0x2355(%rip),%rsi        # 407280 <xdigits>
  404f2b:	4d 89 c6             	mov    %r8,%r14
  404f2e:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404f3c:	00 00 00 00 
  404f40:	48 89 c1             	mov    %rax,%rcx
  404f43:	49 83 ee 01          	sub    $0x1,%r14
  404f47:	83 e1 0f             	and    $0xf,%ecx
  404f4a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  404f4e:	09 fa                	or     %edi,%edx
  404f50:	48 c1 e8 04          	shr    $0x4,%rax
  404f54:	41 88 16             	mov    %dl,(%r14)
  404f57:	75 e7                	jne    404f40 <printf_core+0xac0>
  404f59:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404f5f:	85 c0                	test   %eax,%eax
  404f61:	0f 85 f9 05 00 00    	jne    405560 <printf_core+0x10e0>
  404f67:	48 8d 3d aa 21 00 00 	lea    0x21aa(%rip),%rdi        # 407118 <_fini+0x414>
  404f6e:	44 89 d0             	mov    %r10d,%eax
  404f71:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404f78:	e9 f6 fe ff ff       	jmp    404e73 <printf_core+0x9f3>
  404f7d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  404f81:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  404f85:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  404f8c:	48 85 d2             	test   %rdx,%rdx
  404f8f:	0f 84 06 07 00 00    	je     40569b <printf_core+0x121b>
  404f95:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  404f9c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  404fa0:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  404fa7:	31 db                	xor    %ebx,%ebx
  404fa9:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  404fb0:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  404fb4:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  404fbb:	49 89 ce             	mov    %rcx,%r14
  404fbe:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  404fc2:	49 89 d5             	mov    %rdx,%r13
  404fc5:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  404fcc:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  404fd3:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  404fda:	eb 34                	jmp    405010 <printf_core+0xb90>
  404fdc:	0f 1f 40 00          	nopl   0x0(%rax)
  404fe0:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  404fe7:	e8 24 10 00 00       	call   406010 <wctomb>
  404fec:	85 c0                	test   %eax,%eax
  404fee:	0f 88 44 f7 ff ff    	js     404738 <printf_core+0x2b8>
  404ff4:	4c 89 ea             	mov    %r13,%rdx
  404ff7:	48 98                	cltq
  404ff9:	48 29 da             	sub    %rbx,%rdx
  404ffc:	48 39 c2             	cmp    %rax,%rdx
  404fff:	72 16                	jb     405017 <printf_core+0xb97>
  405001:	48 01 c3             	add    %rax,%rbx
  405004:	4d 63 ec             	movslq %r12d,%r13
  405007:	49 83 c6 04          	add    $0x4,%r14
  40500b:	4c 39 eb             	cmp    %r13,%rbx
  40500e:	73 07                	jae    405017 <printf_core+0xb97>
  405010:	41 8b 36             	mov    (%r14),%esi
  405013:	85 f6                	test   %esi,%esi
  405015:	75 c9                	jne    404fe0 <printf_core+0xb60>
  405017:	49 89 de             	mov    %rbx,%r14
  40501a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405021:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  405028:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  40502f:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  405036:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  40503d:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405041:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405048:	0f 87 12 f8 ff ff    	ja     404860 <printf_core+0x3e0>
  40504e:	45 39 f1             	cmp    %r14d,%r9d
  405051:	44 89 f0             	mov    %r14d,%eax
  405054:	0f 9e c2             	setle  %dl
  405057:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40505e:	0f 95 c1             	setne  %cl
  405061:	08 d1                	or     %dl,%cl
  405063:	0f 84 5c 05 00 00    	je     4055c5 <printf_core+0x1145>
  405069:	4d 85 f6             	test   %r14,%r14
  40506c:	0f 84 96 06 00 00    	je     405708 <printf_core+0x1288>
  405072:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  405076:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  40507d:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405084:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40508b:	45 31 e4             	xor    %r12d,%r12d
  40508e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405095:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405099:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40509d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4050a4:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  4050ab:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  4050b1:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  4050b7:	eb 10                	jmp    4050c9 <printf_core+0xc49>
  4050b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4050c0:	4d 39 f4             	cmp    %r14,%r12
  4050c3:	0f 83 46 03 00 00    	jae    40540f <printf_core+0xf8f>
  4050c9:	8b 33                	mov    (%rbx),%esi
  4050cb:	85 f6                	test   %esi,%esi
  4050cd:	0f 84 3c 03 00 00    	je     40540f <printf_core+0xf8f>
  4050d3:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4050d7:	e8 34 0f 00 00       	call   406010 <wctomb>
  4050dc:	48 63 f0             	movslq %eax,%rsi
  4050df:	49 01 f4             	add    %rsi,%r12
  4050e2:	4d 39 e6             	cmp    %r12,%r14
  4050e5:	0f 82 24 03 00 00    	jb     40540f <printf_core+0xf8f>
  4050eb:	48 83 c3 04          	add    $0x4,%rbx
  4050ef:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4050f4:	75 ca                	jne    4050c0 <printf_core+0xc40>
  4050f6:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4050fa:	4c 89 ea             	mov    %r13,%rdx
  4050fd:	e8 9e 11 00 00       	call   4062a0 <__fwritex>
  405102:	eb bc                	jmp    4050c0 <printf_core+0xc40>
  405104:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405108:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40510c:	4d 89 c6             	mov    %r8,%r14
  40510f:	48 85 c0             	test   %rax,%rax
  405112:	74 21                	je     405135 <printf_core+0xcb5>
  405114:	90                   	nop
  405115:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40511c:	00 00 00 00 
  405120:	89 c2                	mov    %eax,%edx
  405122:	49 83 ee 01          	sub    $0x1,%r14
  405126:	83 e2 07             	and    $0x7,%edx
  405129:	83 c2 30             	add    $0x30,%edx
  40512c:	48 c1 e8 03          	shr    $0x3,%rax
  405130:	41 88 16             	mov    %dl,(%r14)
  405133:	75 eb                	jne    405120 <printf_core+0xca0>
  405135:	41 f6 c4 08          	test   $0x8,%r12b
  405139:	0f 84 28 fe ff ff    	je     404f67 <printf_core+0xae7>
  40513f:	4c 89 c0             	mov    %r8,%rax
  405142:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405146:	4c 29 f0             	sub    %r14,%rax
  405149:	48 39 d0             	cmp    %rdx,%rax
  40514c:	0f 8c 15 fe ff ff    	jl     404f67 <printf_core+0xae7>
  405152:	83 c0 01             	add    $0x1,%eax
  405155:	48 8d 3d bc 1f 00 00 	lea    0x1fbc(%rip),%rdi        # 407118 <_fini+0x414>
  40515c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40515f:	44 89 d0             	mov    %r10d,%eax
  405162:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405169:	e9 05 fd ff ff       	jmp    404e73 <printf_core+0x9f3>
  40516e:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405171:	b8 10 00 00 00       	mov    $0x10,%eax
  405176:	ba 78 00 00 00       	mov    $0x78,%edx
  40517b:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405182:	00 00 00 
  405185:	39 c7                	cmp    %eax,%edi
  405187:	0f 43 c7             	cmovae %edi,%eax
  40518a:	41 83 cc 08          	or     $0x8,%r12d
  40518e:	bf 20 00 00 00       	mov    $0x20,%edi
  405193:	89 45 80             	mov    %eax,-0x80(%rbp)
  405196:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40519a:	48 85 c0             	test   %rax,%rax
  40519d:	0f 85 77 fd ff ff    	jne    404f1a <printf_core+0xa9a>
  4051a3:	48 8d 3d 6e 1f 00 00 	lea    0x1f6e(%rip),%rdi        # 407118 <_fini+0x414>
  4051aa:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4051ae:	44 89 d0             	mov    %r10d,%eax
  4051b1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4051b8:	4d 89 c6             	mov    %r8,%r14
  4051bb:	e9 b3 fc ff ff       	jmp    404e73 <printf_core+0x9f3>
  4051c0:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  4051c4:	48 8d 05 57 1f 00 00 	lea    0x1f57(%rip),%rax        # 407122 <_fini+0x41e>
  4051cb:	4d 85 f6             	test   %r14,%r14
  4051ce:	4c 0f 44 f0          	cmove  %rax,%r14
  4051d2:	8b 45 80             	mov    -0x80(%rbp),%eax
  4051d5:	85 c0                	test   %eax,%eax
  4051d7:	0f 88 36 03 00 00    	js     405513 <printf_core+0x1093>
  4051dd:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  4051e1:	4c 89 f7             	mov    %r14,%rdi
  4051e4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4051eb:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4051f2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4051f9:	e8 82 07 00 00       	call   405980 <strnlen>
  4051fe:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405205:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40520c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405213:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405217:	4c 29 f2             	sub    %r14,%rdx
  40521a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40521d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405224:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  40522b:	48 89 d7             	mov    %rdx,%rdi
  40522e:	48 63 d0             	movslq %eax,%rdx
  405231:	48 39 d7             	cmp    %rdx,%rdi
  405234:	0f 8e b9 01 00 00    	jle    4053f3 <printf_core+0xf73>
  40523a:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405241:	e9 d3 f9 ff ff       	jmp    404c19 <printf_core+0x799>
  405246:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40524a:	48 85 f6             	test   %rsi,%rsi
  40524d:	0f 85 46 03 00 00    	jne    405599 <printf_core+0x1119>
  405253:	48 8d 3d be 1e 00 00 	lea    0x1ebe(%rip),%rdi        # 407118 <_fini+0x414>
  40525a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40525e:	44 89 d0             	mov    %r10d,%eax
  405261:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405268:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40526f:	00 00 00 
  405272:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  405276:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40527d:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405284:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40528b:	01 00 00 00 
  40528f:	e9 ac f9 ff ff       	jmp    404c40 <printf_core+0x7c0>
  405294:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40529b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4052a2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4052a9:	e8 62 0b 00 00       	call   405e10 <__errno_location>
  4052ae:	8b 38                	mov    (%rax),%edi
  4052b0:	e8 ab 0b 00 00       	call   405e60 <strerror>
  4052b5:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4052bc:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4052c3:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  4052ca:	49 89 c6             	mov    %rax,%r14
  4052cd:	e9 00 ff ff ff       	jmp    4051d2 <printf_core+0xd52>
  4052d2:	83 f8 07             	cmp    $0x7,%eax
  4052d5:	0f 87 93 f2 ff ff    	ja     40456e <printf_core+0xee>
  4052db:	48 8d 15 72 1f 00 00 	lea    0x1f72(%rip),%rdx        # 407254 <_fini+0x550>
  4052e2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4052e6:	48 01 d0             	add    %rdx,%rax
  4052e9:	3e ff e0             	notrack jmp *%rax
  4052ec:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4052f0:	49 63 c5             	movslq %r13d,%rax
  4052f3:	48 89 02             	mov    %rax,(%rdx)
  4052f6:	e9 73 f2 ff ff       	jmp    40456e <printf_core+0xee>
  4052fb:	48 8d 3d 16 1e 00 00 	lea    0x1e16(%rip),%rdi        # 407118 <_fini+0x414>
  405302:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405306:	44 89 d0             	mov    %r10d,%eax
  405309:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405310:	e9 d0 fa ff ff       	jmp    404de5 <printf_core+0x965>
  405315:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405319:	e9 35 ff ff ff       	jmp    405253 <printf_core+0xdd3>
  40531e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405322:	44 89 28             	mov    %r13d,(%rax)
  405325:	e9 44 f2 ff ff       	jmp    40456e <printf_core+0xee>
  40532a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40532e:	66 44 89 28          	mov    %r13w,(%rax)
  405332:	e9 37 f2 ff ff       	jmp    40456e <printf_core+0xee>
  405337:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40533b:	44 88 28             	mov    %r13b,(%rax)
  40533e:	e9 2b f2 ff ff       	jmp    40456e <printf_core+0xee>
  405343:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405348:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40534c:	f6 07 20             	testb  $0x20,(%rdi)
  40534f:	74 6b                	je     4053bc <printf_core+0xf3c>
  405351:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405357:	44 89 e0             	mov    %r12d,%eax
  40535a:	41 39 c9             	cmp    %ecx,%r9d
  40535d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405364:	35 00 00 01 00       	xor    $0x10000,%eax
  405369:	a9 00 20 01 00       	test   $0x12000,%eax
  40536e:	75 28                	jne    405398 <printf_core+0xf18>
  405370:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405377:	75 1f                	jne    405398 <printf_core+0xf18>
  405379:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40537d:	44 89 c2             	mov    %r8d,%edx
  405380:	be 30 00 00 00       	mov    $0x30,%esi
  405385:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40538c:	e8 4f d6 ff ff       	call   4029e0 <pad.part.0>
  405391:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405398:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40539f:	89 c1                	mov    %eax,%ecx
  4053a1:	3b 45 80             	cmp    -0x80(%rbp),%eax
  4053a4:	0f 8d 4a f9 ff ff    	jge    404cf4 <printf_core+0x874>
  4053aa:	e9 26 f9 ff ff       	jmp    404cd5 <printf_core+0x855>
  4053af:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4053b3:	f6 07 20             	testb  $0x20,(%rdi)
  4053b6:	0f 85 f9 f8 ff ff    	jne    404cb5 <printf_core+0x835>
  4053bc:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  4053c0:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  4053c7:	48 63 f0             	movslq %eax,%rsi
  4053ca:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  4053d1:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  4053d8:	e8 c3 0e 00 00       	call   4062a0 <__fwritex>
  4053dd:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4053e4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4053eb:	e9 61 ff ff ff       	jmp    405351 <printf_core+0xed1>
  4053f0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4053f3:	48 8d 3d 1e 1d 00 00 	lea    0x1d1e(%rip),%rdi        # 407118 <_fini+0x414>
  4053fa:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405400:	44 89 d0             	mov    %r10d,%eax
  405403:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40540a:	e9 31 f8 ff ff       	jmp    404c40 <printf_core+0x7c0>
  40540f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405416:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40541d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  405424:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  40542b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  405431:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  405438:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  40543f:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405446:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40544d:	75 39                	jne    405488 <printf_core+0x1008>
  40544f:	84 d2                	test   %dl,%dl
  405451:	75 35                	jne    405488 <printf_core+0x1008>
  405453:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405457:	89 c1                	mov    %eax,%ecx
  405459:	44 89 ca             	mov    %r9d,%edx
  40545c:	be 20 00 00 00       	mov    $0x20,%esi
  405461:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405468:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40546e:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405472:	e8 69 d5 ff ff       	call   4029e0 <pad.part.0>
  405477:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40547e:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405484:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405488:	41 39 c1             	cmp    %eax,%r9d
  40548b:	41 0f 4d c1          	cmovge %r9d,%eax
  40548f:	41 89 c0             	mov    %eax,%r8d
  405492:	e9 ce f0 ff ff       	jmp    404565 <printf_core+0xe5>
  405497:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40549d:	4d 89 c6             	mov    %r8,%r14
  4054a0:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4054a4:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  4054ab:	00 00 00 00 
  4054af:	e9 8c f7 ff ff       	jmp    404c40 <printf_core+0x7c0>
  4054b4:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4054bb:	00 00 00 
  4054be:	48 83 c3 01          	add    $0x1,%rbx
  4054c2:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4054c9:	e9 f1 f1 ff ff       	jmp    4046bf <printf_core+0x23f>
  4054ce:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4054d5:	45 89 d1             	mov    %r10d,%r9d
  4054d8:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  4054df:	00 00 00 
  4054e2:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4054e9:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  4054ed:	e9 c9 f2 ff ff       	jmp    4047bb <printf_core+0x33b>
  4054f2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4054f9:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4054fd:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405504:	00 00 00 
  405507:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40550e:	e9 53 f6 ff ff       	jmp    404b66 <printf_core+0x6e6>
  405513:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405518:	4c 89 f7             	mov    %r14,%rdi
  40551b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40551f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  405526:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  40552d:	e8 4e 04 00 00       	call   405980 <strnlen>
  405532:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  405536:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40553d:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405541:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405548:	80 3a 00             	cmpb   $0x0,(%rdx)
  40554b:	0f 84 c6 fc ff ff    	je     405217 <printf_core+0xd97>
  405551:	e9 0a f3 ff ff       	jmp    404860 <printf_core+0x3e0>
  405556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40555d:	00 00 00 
  405560:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  405566:	48 8d 15 ab 1b 00 00 	lea    0x1bab(%rip),%rdx        # 407118 <_fini+0x414>
  40556d:	c1 f8 04             	sar    $0x4,%eax
  405570:	48 98                	cltq
  405572:	48 01 d0             	add    %rdx,%rax
  405575:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40557c:	b8 02 00 00 00       	mov    $0x2,%eax
  405581:	e9 ed f8 ff ff       	jmp    404e73 <printf_core+0x9f3>
  405586:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40558a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405591:	00 00 00 
  405594:	e9 26 f1 ff ff       	jmp    4046bf <printf_core+0x23f>
  405599:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40559d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  4055a0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4055a7:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  4055ae:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4055b2:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4055b9:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4055c0:	e9 d0 f9 ff ff       	jmp    404f95 <printf_core+0xb15>
  4055c5:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4055c9:	44 89 ca             	mov    %r9d,%edx
  4055cc:	44 89 f1             	mov    %r14d,%ecx
  4055cf:	be 20 00 00 00       	mov    $0x20,%esi
  4055d4:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  4055db:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4055df:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  4055e6:	e8 f5 d3 ff ff       	call   4029e0 <pad.part.0>
  4055eb:	4d 85 f6             	test   %r14,%r14
  4055ee:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4055f2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4055f8:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  4055ff:	0f 84 83 fe ff ff    	je     405488 <printf_core+0x1008>
  405605:	31 d2                	xor    %edx,%edx
  405607:	e9 66 fa ff ff       	jmp    405072 <printf_core+0xbf2>
  40560c:	48 f7 de             	neg    %rsi
  40560f:	48 8d 3d 02 1b 00 00 	lea    0x1b02(%rip),%rdi        # 407118 <_fini+0x414>
  405616:	b8 01 00 00 00       	mov    $0x1,%eax
  40561b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40561f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405626:	e9 c3 f7 ff ff       	jmp    404dee <printf_core+0x96e>
  40562b:	48 8d 3d e7 1a 00 00 	lea    0x1ae7(%rip),%rdi        # 407119 <_fini+0x415>
  405632:	b8 01 00 00 00       	mov    $0x1,%eax
  405637:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40563e:	e9 a2 f7 ff ff       	jmp    404de5 <printf_core+0x965>
  405643:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405647:	4d 89 c6             	mov    %r8,%r14
  40564a:	e9 24 f8 ff ff       	jmp    404e73 <printf_core+0x9f3>
  40564f:	48 8d 3d c4 1a 00 00 	lea    0x1ac4(%rip),%rdi        # 40711a <_fini+0x416>
  405656:	b8 01 00 00 00       	mov    $0x1,%eax
  40565b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405662:	e9 7e f7 ff ff       	jmp    404de5 <printf_core+0x965>
  405667:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40566e:	eb 1e                	jmp    40568e <printf_core+0x120e>
  405670:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405675:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40567c:	00 00 00 00 
  405680:	49 83 c0 01          	add    $0x1,%r8
  405684:	49 83 f8 0a          	cmp    $0xa,%r8
  405688:	0f 84 5c f5 ff ff    	je     404bea <printf_core+0x76a>
  40568e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405692:	85 d2                	test   %edx,%edx
  405694:	74 ea                	je     405680 <printf_core+0x1200>
  405696:	e9 92 f0 ff ff       	jmp    40472d <printf_core+0x2ad>
  40569b:	45 85 c9             	test   %r9d,%r9d
  40569e:	0f 94 c0             	sete   %al
  4056a1:	89 c2                	mov    %eax,%edx
  4056a3:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4056aa:	75 5c                	jne    405708 <printf_core+0x1288>
  4056ac:	84 c0                	test   %al,%al
  4056ae:	75 58                	jne    405708 <printf_core+0x1288>
  4056b0:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4056b4:	44 89 ca             	mov    %r9d,%edx
  4056b7:	31 c9                	xor    %ecx,%ecx
  4056b9:	be 20 00 00 00       	mov    $0x20,%esi
  4056be:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4056c5:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4056c9:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4056d0:	e8 0b d3 ff ff       	call   4029e0 <pad.part.0>
  4056d5:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4056db:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4056df:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4056e6:	e9 9d fd ff ff       	jmp    405488 <printf_core+0x1008>
  4056eb:	45 31 db             	xor    %r11d,%r11d
  4056ee:	e9 4b f0 ff ff       	jmp    40473e <printf_core+0x2be>
  4056f3:	e8 08 cf ff ff       	call   402600 <__stack_chk_fail>
  4056f8:	48 89 da             	mov    %rbx,%rdx
  4056fb:	e9 7b f0 ff ff       	jmp    40477b <printf_core+0x2fb>
  405700:	48 89 d8             	mov    %rbx,%rax
  405703:	e9 31 f3 ff ff       	jmp    404a39 <printf_core+0x5b9>
  405708:	44 89 d0             	mov    %r10d,%eax
  40570b:	e9 2f fd ff ff       	jmp    40543f <printf_core+0xfbf>

0000000000405710 <vfprintf>:
  405710:	f3 0f 1e fa          	endbr64
  405714:	55                   	push   %rbp
  405715:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405719:	48 89 e5             	mov    %rsp,%rbp
  40571c:	41 57                	push   %r15
  40571e:	41 56                	push   %r14
  405720:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  405727:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  40572e:	41 55                	push   %r13
  405730:	4c 89 f1             	mov    %r14,%rcx
  405733:	49 89 fd             	mov    %rdi,%r13
  405736:	31 ff                	xor    %edi,%edi
  405738:	41 54                	push   %r12
  40573a:	53                   	push   %rbx
  40573b:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405742:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405749:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405750:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405757:	00 00 
  405759:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40575d:	31 c0                	xor    %eax,%eax
  40575f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405766:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  40576d:	00 00 00 00 
  405771:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405778:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  40577f:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405783:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  40578a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  40578e:	48 89 da             	mov    %rbx,%rdx
  405791:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405798:	e8 e3 ec ff ff       	call   404480 <printf_core>
  40579d:	85 c0                	test   %eax,%eax
  40579f:	0f 88 68 01 00 00    	js     40590d <vfprintf+0x1fd>
  4057a5:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  4057ac:	31 db                	xor    %ebx,%ebx
  4057ae:	85 c0                	test   %eax,%eax
  4057b0:	78 0a                	js     4057bc <vfprintf+0xac>
  4057b2:	4c 89 ef             	mov    %r13,%rdi
  4057b5:	e8 86 08 00 00       	call   406040 <__lockfile>
  4057ba:	89 c3                	mov    %eax,%ebx
  4057bc:	41 8b 45 00          	mov    0x0(%r13),%eax
  4057c0:	89 c1                	mov    %eax,%ecx
  4057c2:	83 e0 df             	and    $0xffffffdf,%eax
  4057c5:	83 e1 20             	and    $0x20,%ecx
  4057c8:	41 89 45 00          	mov    %eax,0x0(%r13)
  4057cc:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  4057d2:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  4057d7:	74 77                	je     405850 <vfprintf+0x140>
  4057d9:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  4057de:	0f 84 39 01 00 00    	je     40591d <vfprintf+0x20d>
  4057e4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  4057eb:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  4057f2:	4c 89 f1             	mov    %r14,%rcx
  4057f5:	4c 89 ef             	mov    %r13,%rdi
  4057f8:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4057ff:	e8 7c ec ff ff       	call   404480 <printf_core>
  405804:	41 89 c4             	mov    %eax,%r12d
  405807:	41 8b 45 00          	mov    0x0(%r13),%eax
  40580b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405810:	a8 20                	test   $0x20,%al
  405812:	44 0f 45 e2          	cmovne %edx,%r12d
  405816:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  40581c:	41 89 45 00          	mov    %eax,0x0(%r13)
  405820:	85 db                	test   %ebx,%ebx
  405822:	0f 85 d8 00 00 00    	jne    405900 <vfprintf+0x1f0>
  405828:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40582c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405833:	00 00 
  405835:	0f 85 dd 00 00 00    	jne    405918 <vfprintf+0x208>
  40583b:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405842:	44 89 e0             	mov    %r12d,%eax
  405845:	5b                   	pop    %rbx
  405846:	41 5c                	pop    %r12
  405848:	41 5d                	pop    %r13
  40584a:	41 5e                	pop    %r14
  40584c:	41 5f                	pop    %r15
  40584e:	5d                   	pop    %rbp
  40584f:	c3                   	ret
  405850:	49 8b 45 58          	mov    0x58(%r13),%rax
  405854:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  40585b:	00 
  40585c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405860:	4c 89 ef             	mov    %r13,%rdi
  405863:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  40586a:	00 
  40586b:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405871:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405878:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  40587f:	49 89 45 58          	mov    %rax,0x58(%r13)
  405883:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405888:	e8 a3 09 00 00       	call   406230 <__towrite>
  40588d:	85 c0                	test   %eax,%eax
  40588f:	75 23                	jne    4058b4 <vfprintf+0x1a4>
  405891:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405898:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  40589f:	4c 89 f1             	mov    %r14,%rcx
  4058a2:	4c 89 ef             	mov    %r13,%rdi
  4058a5:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4058ac:	e8 cf eb ff ff       	call   404480 <printf_core>
  4058b1:	41 89 c4             	mov    %eax,%r12d
  4058b4:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  4058bb:	4d 85 f6             	test   %r14,%r14
  4058be:	0f 84 43 ff ff ff    	je     405807 <vfprintf+0xf7>
  4058c4:	31 d2                	xor    %edx,%edx
  4058c6:	31 f6                	xor    %esi,%esi
  4058c8:	4c 89 ef             	mov    %r13,%rdi
  4058cb:	41 ff 55 48          	call   *0x48(%r13)
  4058cf:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  4058d4:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4058d8:	4d 89 75 58          	mov    %r14,0x58(%r13)
  4058dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4058e1:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  4058e8:	00 
  4058e9:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  4058f0:	00 
  4058f1:	44 0f 44 e0          	cmove  %eax,%r12d
  4058f5:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  4058fa:	e9 08 ff ff ff       	jmp    405807 <vfprintf+0xf7>
  4058ff:	90                   	nop
  405900:	4c 89 ef             	mov    %r13,%rdi
  405903:	e8 f8 07 00 00       	call   406100 <__unlockfile>
  405908:	e9 1b ff ff ff       	jmp    405828 <vfprintf+0x118>
  40590d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405913:	e9 10 ff ff ff       	jmp    405828 <vfprintf+0x118>
  405918:	e8 e3 cc ff ff       	call   402600 <__stack_chk_fail>
  40591d:	4c 89 ef             	mov    %r13,%rdi
  405920:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405926:	e8 05 09 00 00       	call   406230 <__towrite>
  40592b:	85 c0                	test   %eax,%eax
  40592d:	0f 85 d4 fe ff ff    	jne    405807 <vfprintf+0xf7>
  405933:	e9 ac fe ff ff       	jmp    4057e4 <vfprintf+0xd4>
  405938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40593f:	00 

0000000000405940 <vsprintf>:
  405940:	f3 0f 1e fa          	endbr64
  405944:	48 89 d1             	mov    %rdx,%rcx
  405947:	48 89 f2             	mov    %rsi,%rdx
  40594a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  40594f:	e9 bc 0b 00 00       	jmp    406510 <vsnprintf>
  405954:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40595b:	00 00 00 
  40595e:	66 90                	xchg   %ax,%ax

0000000000405960 <strcpy>:
  405960:	f3 0f 1e fa          	endbr64
  405964:	55                   	push   %rbp
  405965:	48 89 e5             	mov    %rsp,%rbp
  405968:	53                   	push   %rbx
  405969:	48 89 fb             	mov    %rdi,%rbx
  40596c:	48 83 ec 08          	sub    $0x8,%rsp
  405970:	e8 8b 0d 00 00       	call   406700 <__stpcpy>
  405975:	48 89 d8             	mov    %rbx,%rax
  405978:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40597c:	c9                   	leave
  40597d:	c3                   	ret
  40597e:	66 90                	xchg   %ax,%ax

0000000000405980 <strnlen>:
  405980:	f3 0f 1e fa          	endbr64
  405984:	55                   	push   %rbp
  405985:	48 89 f2             	mov    %rsi,%rdx
  405988:	48 89 e5             	mov    %rsp,%rbp
  40598b:	41 54                	push   %r12
  40598d:	49 89 fc             	mov    %rdi,%r12
  405990:	53                   	push   %rbx
  405991:	48 89 f3             	mov    %rsi,%rbx
  405994:	31 f6                	xor    %esi,%esi
  405996:	e8 25 0c 00 00       	call   4065c0 <memchr>
  40599b:	48 89 c2             	mov    %rax,%rdx
  40599e:	4c 29 e0             	sub    %r12,%rax
  4059a1:	48 85 d2             	test   %rdx,%rdx
  4059a4:	48 0f 44 c3          	cmove  %rbx,%rax
  4059a8:	5b                   	pop    %rbx
  4059a9:	41 5c                	pop    %r12
  4059ab:	5d                   	pop    %rbp
  4059ac:	c3                   	ret

00000000004059ad <memcpy>:
  4059ad:	48 89 f8             	mov    %rdi,%rax
  4059b0:	48 83 fa 08          	cmp    $0x8,%rdx
  4059b4:	72 14                	jb     4059ca <memcpy+0x1d>
  4059b6:	f7 c7 07 00 00 00    	test   $0x7,%edi
  4059bc:	74 0c                	je     4059ca <memcpy+0x1d>
  4059be:	a4                   	movsb  (%rsi),(%rdi)
  4059bf:	48 ff ca             	dec    %rdx
  4059c2:	f7 c7 07 00 00 00    	test   $0x7,%edi
  4059c8:	75 f4                	jne    4059be <memcpy+0x11>
  4059ca:	48 89 d1             	mov    %rdx,%rcx
  4059cd:	48 c1 e9 03          	shr    $0x3,%rcx
  4059d1:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  4059d4:	83 e2 07             	and    $0x7,%edx
  4059d7:	74 05                	je     4059de <memcpy+0x31>
  4059d9:	a4                   	movsb  (%rsi),(%rdi)
  4059da:	ff ca                	dec    %edx
  4059dc:	75 fb                	jne    4059d9 <memcpy+0x2c>
  4059de:	c3                   	ret

00000000004059df <memset>:
  4059df:	48 0f b6 c6          	movzbq %sil,%rax
  4059e3:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  4059ea:	01 01 01 
  4059ed:	49 0f af c0          	imul   %r8,%rax
  4059f1:	48 83 fa 7e          	cmp    $0x7e,%rdx
  4059f5:	77 78                	ja     405a6f <memset+0x90>
  4059f7:	85 d2                	test   %edx,%edx
  4059f9:	74 70                	je     405a6b <memset+0x8c>
  4059fb:	40 88 37             	mov    %sil,(%rdi)
  4059fe:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405a03:	83 fa 02             	cmp    $0x2,%edx
  405a06:	76 63                	jbe    405a6b <memset+0x8c>
  405a08:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405a0c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405a11:	83 fa 06             	cmp    $0x6,%edx
  405a14:	76 55                	jbe    405a6b <memset+0x8c>
  405a16:	89 47 03             	mov    %eax,0x3(%rdi)
  405a19:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405a1d:	83 fa 0e             	cmp    $0xe,%edx
  405a20:	76 49                	jbe    405a6b <memset+0x8c>
  405a22:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405a26:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405a2b:	83 fa 1e             	cmp    $0x1e,%edx
  405a2e:	76 3b                	jbe    405a6b <memset+0x8c>
  405a30:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405a34:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405a38:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405a3d:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405a42:	83 fa 3e             	cmp    $0x3e,%edx
  405a45:	76 24                	jbe    405a6b <memset+0x8c>
  405a47:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405a4b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405a4f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405a53:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405a57:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405a5c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405a61:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405a66:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405a6b:	48 89 f8             	mov    %rdi,%rax
  405a6e:	c3                   	ret
  405a6f:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405a75:	49 89 f8             	mov    %rdi,%r8
  405a78:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405a7d:	48 89 d1             	mov    %rdx,%rcx
  405a80:	75 0b                	jne    405a8d <memset+0xae>
  405a82:	48 c1 e9 03          	shr    $0x3,%rcx
  405a86:	f3 48 ab             	rep stos %rax,(%rdi)
  405a89:	4c 89 c0             	mov    %r8,%rax
  405a8c:	c3                   	ret
  405a8d:	31 d2                	xor    %edx,%edx
  405a8f:	29 fa                	sub    %edi,%edx
  405a91:	83 e2 0f             	and    $0xf,%edx
  405a94:	48 89 07             	mov    %rax,(%rdi)
  405a97:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405a9b:	48 29 d1             	sub    %rdx,%rcx
  405a9e:	48 01 d7             	add    %rdx,%rdi
  405aa1:	eb df                	jmp    405a82 <memset+0xa3>
  405aa3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405aaa:	00 00 00 
  405aad:	0f 1f 00             	nopl   (%rax)

0000000000405ab0 <__init_tp>:
  405ab0:	f3 0f 1e fa          	endbr64
  405ab4:	55                   	push   %rbp
  405ab5:	48 89 e5             	mov    %rsp,%rbp
  405ab8:	53                   	push   %rbx
  405ab9:	48 89 fb             	mov    %rdi,%rbx
  405abc:	48 83 ec 08          	sub    $0x8,%rsp
  405ac0:	48 89 3f             	mov    %rdi,(%rdi)
  405ac3:	e8 21 0d 00 00       	call   4067e9 <__set_thread_area>
  405ac8:	85 c0                	test   %eax,%eax
  405aca:	78 65                	js     405b31 <__init_tp+0x81>
  405acc:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405ad1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405ad5:	74 51                	je     405b28 <__init_tp+0x78>
  405ad7:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405ade:	b8 da 00 00 00       	mov    $0xda,%eax
  405ae3:	48 8d 3d a6 4c 00 00 	lea    0x4ca6(%rip),%rdi        # 40a790 <__thread_list_lock>
  405aea:	0f 05                	syscall
  405aec:	89 43 30             	mov    %eax,0x30(%rbx)
  405aef:	48 8d 05 a2 46 00 00 	lea    0x46a2(%rip),%rax        # 40a198 <__libc+0x38>
  405af6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405afd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405b04:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405b0b:	48 8b 05 1e 46 00 00 	mov    0x461e(%rip),%rax        # 40a130 <__sysinfo>
  405b12:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405b16:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405b1a:	31 c0                	xor    %eax,%eax
  405b1c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405b20:	c9                   	leave
  405b21:	c3                   	ret
  405b22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405b28:	c6 05 31 46 00 00 01 	movb   $0x1,0x4631(%rip)        # 40a160 <__libc>
  405b2f:	eb a6                	jmp    405ad7 <__init_tp+0x27>
  405b31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405b36:	eb e4                	jmp    405b1c <__init_tp+0x6c>
  405b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405b3f:	00 

0000000000405b40 <__copy_tls>:
  405b40:	f3 0f 1e fa          	endbr64
  405b44:	55                   	push   %rbp
  405b45:	48 8b 05 2c 46 00 00 	mov    0x462c(%rip),%rax        # 40a178 <__libc+0x18>
  405b4c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405b53:	ff 
  405b54:	48 89 e5             	mov    %rsp,%rbp
  405b57:	41 56                	push   %r14
  405b59:	49 89 fe             	mov    %rdi,%r14
  405b5c:	41 55                	push   %r13
  405b5e:	4c 8b 2d 1b 46 00 00 	mov    0x461b(%rip),%r13        # 40a180 <__libc+0x20>
  405b65:	41 54                	push   %r12
  405b67:	53                   	push   %rbx
  405b68:	48 8b 1d 01 46 00 00 	mov    0x4601(%rip),%rbx        # 40a170 <__libc+0x10>
  405b6f:	49 f7 dd             	neg    %r13
  405b72:	49 21 c5             	and    %rax,%r13
  405b75:	48 85 db             	test   %rbx,%rbx
  405b78:	74 32                	je     405bac <__copy_tls+0x6c>
  405b7a:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405b7e:	66 90                	xchg   %ax,%ax
  405b80:	4c 89 e8             	mov    %r13,%rax
  405b83:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405b87:	4c 89 ef             	mov    %r13,%rdi
  405b8a:	49 83 c4 08          	add    $0x8,%r12
  405b8e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405b93:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405b97:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405b9b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405b9f:	e8 09 fe ff ff       	call   4059ad <memcpy>
  405ba4:	48 8b 1b             	mov    (%rbx),%rbx
  405ba7:	48 85 db             	test   %rbx,%rbx
  405baa:	75 d4                	jne    405b80 <__copy_tls+0x40>
  405bac:	48 8b 05 d5 45 00 00 	mov    0x45d5(%rip),%rax        # 40a188 <__libc+0x28>
  405bb3:	49 89 06             	mov    %rax,(%r14)
  405bb6:	4c 89 e8             	mov    %r13,%rax
  405bb9:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405bbd:	5b                   	pop    %rbx
  405bbe:	41 5c                	pop    %r12
  405bc0:	41 5d                	pop    %r13
  405bc2:	41 5e                	pop    %r14
  405bc4:	5d                   	pop    %rbp
  405bc5:	c3                   	ret
  405bc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405bcd:	00 00 00 

0000000000405bd0 <__init_tls>:
  405bd0:	f3 0f 1e fa          	endbr64
  405bd4:	55                   	push   %rbp
  405bd5:	48 89 e5             	mov    %rsp,%rbp
  405bd8:	53                   	push   %rbx
  405bd9:	48 83 ec 08          	sub    $0x8,%rsp
  405bdd:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405be1:	48 85 c9             	test   %rcx,%rcx
  405be4:	0f 84 fe 01 00 00    	je     405de8 <__init_tls+0x218>
  405bea:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405bee:	31 f6                	xor    %esi,%esi
  405bf0:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405bf4:	45 31 c0             	xor    %r8d,%r8d
  405bf7:	4c 89 d0             	mov    %r10,%rax
  405bfa:	eb 29                	jmp    405c25 <__init_tls+0x55>
  405bfc:	0f 1f 40 00          	nopl   0x0(%rax)
  405c00:	83 fa 02             	cmp    $0x2,%edx
  405c03:	0f 85 77 01 00 00    	jne    405d80 <__init_tls+0x1b0>
  405c09:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405c10:	48 85 d2             	test   %rdx,%rdx
  405c13:	74 07                	je     405c1c <__init_tls+0x4c>
  405c15:	48 89 d6             	mov    %rdx,%rsi
  405c18:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405c1c:	48 01 f8             	add    %rdi,%rax
  405c1f:	48 83 e9 01          	sub    $0x1,%rcx
  405c23:	74 17                	je     405c3c <__init_tls+0x6c>
  405c25:	8b 10                	mov    (%rax),%edx
  405c27:	83 fa 06             	cmp    $0x6,%edx
  405c2a:	75 d4                	jne    405c00 <__init_tls+0x30>
  405c2c:	4c 89 d6             	mov    %r10,%rsi
  405c2f:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405c33:	48 01 f8             	add    %rdi,%rax
  405c36:	48 83 e9 01          	sub    $0x1,%rcx
  405c3a:	75 e9                	jne    405c25 <__init_tls+0x55>
  405c3c:	4d 85 c0             	test   %r8,%r8
  405c3f:	0f 84 a3 01 00 00    	je     405de8 <__init_tls+0x218>
  405c45:	49 8b 40 20          	mov    0x20(%r8),%rax
  405c49:	49 03 70 10          	add    0x10(%r8),%rsi
  405c4d:	48 8d 1d ac 49 00 00 	lea    0x49ac(%rip),%rbx        # 40a600 <main_tls>
  405c54:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405c58:	48 89 35 a9 49 00 00 	mov    %rsi,0x49a9(%rip)        # 40a608 <main_tls+0x8>
  405c5f:	48 89 05 aa 49 00 00 	mov    %rax,0x49aa(%rip)        # 40a610 <main_tls+0x10>
  405c66:	49 8b 40 30          	mov    0x30(%r8),%rax
  405c6a:	48 c7 05 13 45 00 00 	movq   $0x1,0x4513(%rip)        # 40a188 <__libc+0x28>
  405c71:	01 00 00 00 
  405c75:	48 89 05 a4 49 00 00 	mov    %rax,0x49a4(%rip)        # 40a620 <main_tls+0x20>
  405c7c:	48 89 1d ed 44 00 00 	mov    %rbx,0x44ed(%rip)        # 40a170 <__libc+0x10>
  405c83:	48 01 d6             	add    %rdx,%rsi
  405c86:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405c8a:	48 f7 de             	neg    %rsi
  405c8d:	48 21 ce             	and    %rcx,%rsi
  405c90:	48 01 d6             	add    %rdx,%rsi
  405c93:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405c9a:	48 89 35 77 49 00 00 	mov    %rsi,0x4977(%rip)        # 40a618 <main_tls+0x18>
  405ca1:	48 89 35 80 49 00 00 	mov    %rsi,0x4980(%rip)        # 40a628 <main_tls+0x28>
  405ca8:	48 83 f8 07          	cmp    $0x7,%rax
  405cac:	77 15                	ja     405cc3 <__init_tls+0xf3>
  405cae:	48 c7 05 67 49 00 00 	movq   $0x8,0x4967(%rip)        # 40a620 <main_tls+0x20>
  405cb5:	08 00 00 00 
  405cb9:	ba e7 00 00 00       	mov    $0xe7,%edx
  405cbe:	b8 08 00 00 00       	mov    $0x8,%eax
  405cc3:	48 01 d6             	add    %rdx,%rsi
  405cc6:	48 89 05 b3 44 00 00 	mov    %rax,0x44b3(%rip)        # 40a180 <__libc+0x20>
  405ccd:	48 8d 3d 6c 49 00 00 	lea    0x496c(%rip),%rdi        # 40a640 <builtin_tls>
  405cd4:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405cd8:	48 89 35 99 44 00 00 	mov    %rsi,0x4499(%rip)        # 40a178 <__libc+0x18>
  405cdf:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405ce6:	76 21                	jbe    405d09 <__init_tls+0x139>
  405ce8:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405cee:	45 31 c9             	xor    %r9d,%r9d
  405cf1:	b8 09 00 00 00       	mov    $0x9,%eax
  405cf6:	31 ff                	xor    %edi,%edi
  405cf8:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405cff:	ba 03 00 00 00       	mov    $0x3,%edx
  405d04:	0f 05                	syscall
  405d06:	48 89 c7             	mov    %rax,%rdi
  405d09:	e8 32 fe ff ff       	call   405b40 <__copy_tls>
  405d0e:	48 89 00             	mov    %rax,(%rax)
  405d11:	48 89 c7             	mov    %rax,%rdi
  405d14:	48 89 c3             	mov    %rax,%rbx
  405d17:	e8 cd 0a 00 00       	call   4067e9 <__set_thread_area>
  405d1c:	85 c0                	test   %eax,%eax
  405d1e:	0f 88 b8 00 00 00    	js     405ddc <__init_tls+0x20c>
  405d24:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405d29:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405d2d:	0f 84 9d 00 00 00    	je     405dd0 <__init_tls+0x200>
  405d33:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405d3a:	b8 da 00 00 00       	mov    $0xda,%eax
  405d3f:	48 8d 3d 4a 4a 00 00 	lea    0x4a4a(%rip),%rdi        # 40a790 <__thread_list_lock>
  405d46:	0f 05                	syscall
  405d48:	89 43 30             	mov    %eax,0x30(%rbx)
  405d4b:	48 8d 05 46 44 00 00 	lea    0x4446(%rip),%rax        # 40a198 <__libc+0x38>
  405d52:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405d59:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405d60:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405d67:	48 8b 05 c2 43 00 00 	mov    0x43c2(%rip),%rax        # 40a130 <__sysinfo>
  405d6e:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405d72:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405d76:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405d7a:	c9                   	leave
  405d7b:	c3                   	ret
  405d7c:	0f 1f 40 00          	nopl   0x0(%rax)
  405d80:	83 fa 07             	cmp    $0x7,%edx
  405d83:	75 0b                	jne    405d90 <__init_tls+0x1c0>
  405d85:	49 89 c0             	mov    %rax,%r8
  405d88:	e9 8f fe ff ff       	jmp    405c1c <__init_tls+0x4c>
  405d8d:	0f 1f 00             	nopl   (%rax)
  405d90:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  405d96:	0f 85 80 fe ff ff    	jne    405c1c <__init_tls+0x4c>
  405d9c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  405da0:	44 8b 0d 65 43 00 00 	mov    0x4365(%rip),%r9d        # 40a10c <__default_stacksize>
  405da7:	49 39 d1             	cmp    %rdx,%r9
  405daa:	0f 83 6c fe ff ff    	jae    405c1c <__init_tls+0x4c>
  405db0:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405db6:	4c 39 ca             	cmp    %r9,%rdx
  405db9:	49 0f 47 d1          	cmova  %r9,%rdx
  405dbd:	89 15 49 43 00 00    	mov    %edx,0x4349(%rip)        # 40a10c <__default_stacksize>
  405dc3:	e9 54 fe ff ff       	jmp    405c1c <__init_tls+0x4c>
  405dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405dcf:	00 
  405dd0:	c6 05 89 43 00 00 01 	movb   $0x1,0x4389(%rip)        # 40a160 <__libc>
  405dd7:	e9 57 ff ff ff       	jmp    405d33 <__init_tls+0x163>
  405ddc:	f4                   	hlt
  405ddd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405de1:	c9                   	leave
  405de2:	c3                   	ret
  405de3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405de8:	48 8b 15 29 48 00 00 	mov    0x4829(%rip),%rdx        # 40a618 <main_tls+0x18>
  405def:	48 8b 35 12 48 00 00 	mov    0x4812(%rip),%rsi        # 40a608 <main_tls+0x8>
  405df6:	48 8b 05 23 48 00 00 	mov    0x4823(%rip),%rax        # 40a620 <main_tls+0x20>
  405dfd:	e9 81 fe ff ff       	jmp    405c83 <__init_tls+0xb3>
  405e02:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e09:	00 00 00 
  405e0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405e10 <__errno_location>:
  405e10:	f3 0f 1e fa          	endbr64
  405e14:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405e1b:	00 00 
  405e1d:	48 83 c0 34          	add    $0x34,%rax
  405e21:	c3                   	ret
  405e22:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405e29:	00 00 00 
  405e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405e30 <__strerror_l>:
  405e30:	f3 0f 1e fa          	endbr64
  405e34:	48 8d 05 a5 17 00 00 	lea    0x17a5(%rip),%rax        # 4075e0 <errmsgstr>
  405e3b:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  405e41:	77 11                	ja     405e54 <__strerror_l+0x24>
  405e43:	48 63 ff             	movslq %edi,%rdi
  405e46:	48 8d 15 73 16 00 00 	lea    0x1673(%rip),%rdx        # 4074c0 <errmsgidx>
  405e4d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  405e51:	48 01 d0             	add    %rdx,%rax
  405e54:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  405e58:	48 89 c7             	mov    %rax,%rdi
  405e5b:	e9 50 00 00 00       	jmp    405eb0 <__lctrans>

0000000000405e60 <strerror>:
  405e60:	f3 0f 1e fa          	endbr64
  405e64:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405e6b:	00 00 
  405e6d:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  405e74:	e9 b7 ff ff ff       	jmp    405e30 <__strerror_l>
  405e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405e80 <_Exit>:
  405e80:	f3 0f 1e fa          	endbr64
  405e84:	48 63 ff             	movslq %edi,%rdi
  405e87:	b8 e7 00 00 00       	mov    $0xe7,%eax
  405e8c:	0f 05                	syscall
  405e8e:	66 90                	xchg   %ax,%ax
  405e90:	b8 3c 00 00 00       	mov    $0x3c,%eax
  405e95:	0f 05                	syscall
  405e97:	eb f7                	jmp    405e90 <_Exit+0x10>
  405e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405ea0 <__lctrans_impl>:
  405ea0:	f3 0f 1e fa          	endbr64
  405ea4:	48 89 f8             	mov    %rdi,%rax
  405ea7:	c3                   	ret
  405ea8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405eaf:	00 

0000000000405eb0 <__lctrans>:
  405eb0:	f3 0f 1e fa          	endbr64
  405eb4:	e9 e7 ff ff ff       	jmp    405ea0 <__lctrans_impl>
  405eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405ec0 <__lctrans_cur>:
  405ec0:	f3 0f 1e fa          	endbr64
  405ec4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405ecb:	00 00 
  405ecd:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  405ed4:	48 8b 70 28          	mov    0x28(%rax),%rsi
  405ed8:	e9 c3 ff ff ff       	jmp    405ea0 <__lctrans_impl>
  405edd:	0f 1f 00             	nopl   (%rax)

0000000000405ee0 <__fpclassifyl>:
  405ee0:	f3 0f 1e fa          	endbr64
  405ee4:	55                   	push   %rbp
  405ee5:	48 89 e5             	mov    %rsp,%rbp
  405ee8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  405eec:	48 8b 45 18          	mov    0x18(%rbp),%rax
  405ef0:	48 89 ca             	mov    %rcx,%rdx
  405ef3:	89 c6                	mov    %eax,%esi
  405ef5:	25 ff 7f 00 00       	and    $0x7fff,%eax
  405efa:	48 c1 ea 3f          	shr    $0x3f,%rdx
  405efe:	66 81 e6 ff 7f       	and    $0x7fff,%si
  405f03:	09 d0                	or     %edx,%eax
  405f05:	74 31                	je     405f38 <__fpclassifyl+0x58>
  405f07:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  405f0e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  405f13:	74 0b                	je     405f20 <__fpclassifyl+0x40>
  405f15:	5d                   	pop    %rbp
  405f16:	c3                   	ret
  405f17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405f1e:	00 00 
  405f20:	31 c0                	xor    %eax,%eax
  405f22:	48 85 d2             	test   %rdx,%rdx
  405f25:	74 ee                	je     405f15 <__fpclassifyl+0x35>
  405f27:	31 c0                	xor    %eax,%eax
  405f29:	48 01 c9             	add    %rcx,%rcx
  405f2c:	5d                   	pop    %rbp
  405f2d:	0f 94 c0             	sete   %al
  405f30:	c3                   	ret
  405f31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405f38:	48 83 f9 01          	cmp    $0x1,%rcx
  405f3c:	b8 02 00 00 00       	mov    $0x2,%eax
  405f41:	5d                   	pop    %rbp
  405f42:	83 d8 ff             	sbb    $0xffffffff,%eax
  405f45:	c3                   	ret
  405f46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405f4d:	00 00 00 

0000000000405f50 <__signbitl>:
  405f50:	f3 0f 1e fa          	endbr64
  405f54:	55                   	push   %rbp
  405f55:	48 89 e5             	mov    %rsp,%rbp
  405f58:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  405f5c:	5d                   	pop    %rbp
  405f5d:	66 c1 e8 0f          	shr    $0xf,%ax
  405f61:	0f b7 c0             	movzwl %ax,%eax
  405f64:	c3                   	ret
  405f65:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405f6c:	00 00 00 
  405f6f:	90                   	nop

0000000000405f70 <frexpl>:
  405f70:	f3 0f 1e fa          	endbr64
  405f74:	55                   	push   %rbp
  405f75:	48 89 e5             	mov    %rsp,%rbp
  405f78:	48 83 ec 20          	sub    $0x20,%rsp
  405f7c:	db 6d 10             	fldt   0x10(%rbp)
  405f7f:	48 8b 45 18          	mov    0x18(%rbp),%rax
  405f83:	89 c2                	mov    %eax,%edx
  405f85:	d9 c0                	fld    %st(0)
  405f87:	db 7d f0             	fstpt  -0x10(%rbp)
  405f8a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  405f8f:	74 2f                	je     405fc0 <frexpl+0x50>
  405f91:	dd d8                	fstp   %st(0)
  405f93:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  405f98:	74 38                	je     405fd2 <frexpl+0x62>
  405f9a:	0f b7 d2             	movzwl %dx,%edx
  405f9d:	66 25 00 80          	and    $0x8000,%ax
  405fa1:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  405fa7:	66 0d fe 3f          	or     $0x3ffe,%ax
  405fab:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  405faf:	db 6d f0             	fldt   -0x10(%rbp)
  405fb2:	89 17                	mov    %edx,(%rdi)
  405fb4:	c9                   	leave
  405fb5:	c3                   	ret
  405fb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405fbd:	00 00 00 
  405fc0:	d9 ee                	fldz
  405fc2:	d9 c9                	fxch   %st(1)
  405fc4:	df e9                	fucomip %st(1),%st
  405fc6:	dd d8                	fstp   %st(0)
  405fc8:	7a 16                	jp     405fe0 <frexpl+0x70>
  405fca:	75 14                	jne    405fe0 <frexpl+0x70>
  405fcc:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  405fd2:	db 6d 10             	fldt   0x10(%rbp)
  405fd5:	c9                   	leave
  405fd6:	c3                   	ret
  405fd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405fde:	00 00 
  405fe0:	db 6d 10             	fldt   0x10(%rbp)
  405fe3:	d8 0d a3 14 00 00    	fmuls  0x14a3(%rip)        # 40748c <states+0x1ec>
  405fe9:	48 83 ec 10          	sub    $0x10,%rsp
  405fed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  405ff1:	db 3c 24             	fstpt  (%rsp)
  405ff4:	e8 77 ff ff ff       	call   405f70 <frexpl>
  405ff9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  405ffd:	83 2f 78             	subl   $0x78,(%rdi)
  406000:	58                   	pop    %rax
  406001:	5a                   	pop    %rdx
  406002:	c9                   	leave
  406003:	c3                   	ret
  406004:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40600b:	00 00 00 
  40600e:	66 90                	xchg   %ax,%ax

0000000000406010 <wctomb>:
  406010:	f3 0f 1e fa          	endbr64
  406014:	48 85 ff             	test   %rdi,%rdi
  406017:	74 17                	je     406030 <wctomb+0x20>
  406019:	55                   	push   %rbp
  40601a:	31 d2                	xor    %edx,%edx
  40601c:	48 89 e5             	mov    %rsp,%rbp
  40601f:	e8 3c 08 00 00       	call   406860 <wcrtomb>
  406024:	5d                   	pop    %rbp
  406025:	c3                   	ret
  406026:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40602d:	00 00 00 
  406030:	31 c0                	xor    %eax,%eax
  406032:	c3                   	ret
  406033:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40603a:	00 00 00 
  40603d:	0f 1f 00             	nopl   (%rax)

0000000000406040 <__lockfile>:
  406040:	f3 0f 1e fa          	endbr64
  406044:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40604a:	48 89 fa             	mov    %rdi,%rdx
  40604d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406054:	00 00 
  406056:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40605a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40605f:	31 c9                	xor    %ecx,%ecx
  406061:	44 39 c0             	cmp    %r8d,%eax
  406064:	74 3f                	je     4060a5 <__lockfile+0x65>
  406066:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  40606d:	89 c8                	mov    %ecx,%eax
  40606f:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  406076:	00 00 
  406078:	85 c0                	test   %eax,%eax
  40607a:	74 24                	je     4060a0 <__lockfile+0x60>
  40607c:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406083:	89 c8                	mov    %ecx,%eax
  406085:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40608c:	00 00 
  40608e:	89 c1                	mov    %eax,%ecx
  406090:	85 c0                	test   %eax,%eax
  406092:	75 33                	jne    4060c7 <__lockfile+0x87>
  406094:	90                   	nop
  406095:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40609c:	00 00 00 00 
  4060a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4060a5:	89 c8                	mov    %ecx,%eax
  4060a7:	c3                   	ret
  4060a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4060af:	00 
  4060b0:	89 c8                	mov    %ecx,%eax
  4060b2:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  4060b6:	39 c8                	cmp    %ecx,%eax
  4060b8:	74 1d                	je     4060d7 <__lockfile+0x97>
  4060ba:	31 c0                	xor    %eax,%eax
  4060bc:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  4060c1:	89 c1                	mov    %eax,%ecx
  4060c3:	85 c0                	test   %eax,%eax
  4060c5:	74 d9                	je     4060a0 <__lockfile+0x60>
  4060c7:	89 ca                	mov    %ecx,%edx
  4060c9:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  4060cf:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  4060d5:	74 d9                	je     4060b0 <__lockfile+0x70>
  4060d7:	48 63 d2             	movslq %edx,%rdx
  4060da:	45 31 d2             	xor    %r10d,%r10d
  4060dd:	b8 ca 00 00 00       	mov    $0xca,%eax
  4060e2:	be 80 00 00 00       	mov    $0x80,%esi
  4060e7:	0f 05                	syscall
  4060e9:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4060ed:	75 cb                	jne    4060ba <__lockfile+0x7a>
  4060ef:	45 31 d2             	xor    %r10d,%r10d
  4060f2:	31 f6                	xor    %esi,%esi
  4060f4:	b8 ca 00 00 00       	mov    $0xca,%eax
  4060f9:	0f 05                	syscall
  4060fb:	eb bd                	jmp    4060ba <__lockfile+0x7a>
  4060fd:	0f 1f 00             	nopl   (%rax)

0000000000406100 <__unlockfile>:
  406100:	f3 0f 1e fa          	endbr64
  406104:	48 89 fa             	mov    %rdi,%rdx
  406107:	31 c0                	xor    %eax,%eax
  406109:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406110:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406116:	a9 00 00 00 40       	test   $0x40000000,%eax
  40611b:	74 17                	je     406134 <__unlockfile+0x34>
  40611d:	be 81 00 00 00       	mov    $0x81,%esi
  406122:	b8 ca 00 00 00       	mov    $0xca,%eax
  406127:	ba 01 00 00 00       	mov    $0x1,%edx
  40612c:	0f 05                	syscall
  40612e:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406132:	74 04                	je     406138 <__unlockfile+0x38>
  406134:	c3                   	ret
  406135:	0f 1f 00             	nopl   (%rax)
  406138:	b8 ca 00 00 00       	mov    $0xca,%eax
  40613d:	be 01 00 00 00       	mov    $0x1,%esi
  406142:	0f 05                	syscall
  406144:	c3                   	ret
  406145:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40614c:	00 00 00 
  40614f:	90                   	nop

0000000000406150 <__aio_close>:
  406150:	f3 0f 1e fa          	endbr64
  406154:	89 f8                	mov    %edi,%eax
  406156:	c3                   	ret
  406157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40615e:	00 00 

0000000000406160 <__stdio_close>:
  406160:	f3 0f 1e fa          	endbr64
  406164:	55                   	push   %rbp
  406165:	8b 7f 78             	mov    0x78(%rdi),%edi
  406168:	48 89 e5             	mov    %rsp,%rbp
  40616b:	e8 e0 ff ff ff       	call   406150 <__aio_close>
  406170:	48 63 f8             	movslq %eax,%rdi
  406173:	b8 03 00 00 00       	mov    $0x3,%eax
  406178:	0f 05                	syscall
  40617a:	48 89 c7             	mov    %rax,%rdi
  40617d:	e8 9e 06 00 00       	call   406820 <__syscall_ret>
  406182:	5d                   	pop    %rbp
  406183:	c3                   	ret
  406184:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40618b:	00 00 00 
  40618e:	66 90                	xchg   %ax,%ax

0000000000406190 <__stdio_seek>:
  406190:	f3 0f 1e fa          	endbr64
  406194:	8b 7f 78             	mov    0x78(%rdi),%edi
  406197:	e9 64 06 00 00       	jmp    406800 <__lseek>
  40619c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004061a0 <__stdout_write>:
  4061a0:	f3 0f 1e fa          	endbr64
  4061a4:	55                   	push   %rbp
  4061a5:	48 8d 05 d4 08 00 00 	lea    0x8d4(%rip),%rax        # 406a80 <__stdio_write>
  4061ac:	49 89 f8             	mov    %rdi,%r8
  4061af:	49 89 f1             	mov    %rsi,%r9
  4061b2:	48 89 e5             	mov    %rsp,%rbp
  4061b5:	48 83 ec 10          	sub    $0x10,%rsp
  4061b9:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  4061c0:	00 00 
  4061c2:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  4061c6:	49 89 d2             	mov    %rdx,%r10
  4061c9:	48 89 47 48          	mov    %rax,0x48(%rdi)
  4061cd:	f6 07 40             	testb  $0x40,(%rdi)
  4061d0:	75 19                	jne    4061eb <__stdout_write+0x4b>
  4061d2:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  4061d6:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4061da:	b8 10 00 00 00       	mov    $0x10,%eax
  4061df:	be 13 54 00 00       	mov    $0x5413,%esi
  4061e4:	0f 05                	syscall
  4061e6:	48 85 c0             	test   %rax,%rax
  4061e9:	75 25                	jne    406210 <__stdout_write+0x70>
  4061eb:	4c 89 d2             	mov    %r10,%rdx
  4061ee:	4c 89 ce             	mov    %r9,%rsi
  4061f1:	4c 89 c7             	mov    %r8,%rdi
  4061f4:	e8 87 08 00 00       	call   406a80 <__stdio_write>
  4061f9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4061fd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406204:	00 00 
  406206:	75 15                	jne    40621d <__stdout_write+0x7d>
  406208:	c9                   	leave
  406209:	c3                   	ret
  40620a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406210:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406217:	ff ff ff ff 
  40621b:	eb ce                	jmp    4061eb <__stdout_write+0x4b>
  40621d:	e8 de c3 ff ff       	call   402600 <__stack_chk_fail>
  406222:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406229:	00 00 00 
  40622c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406230 <__towrite>:
  406230:	f3 0f 1e fa          	endbr64
  406234:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  40623a:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40623d:	09 d0                	or     %edx,%eax
  40623f:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  406245:	8b 07                	mov    (%rdi),%eax
  406247:	a8 08                	test   $0x8,%al
  406249:	75 35                	jne    406280 <__towrite+0x50>
  40624b:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40624f:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  406253:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406257:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  40625b:	48 01 c1             	add    %rax,%rcx
  40625e:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406263:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406267:	31 c0                	xor    %eax,%eax
  406269:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40626e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406272:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406276:	c3                   	ret
  406277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40627e:	00 00 
  406280:	83 c8 20             	or     $0x20,%eax
  406283:	89 07                	mov    %eax,(%rdi)
  406285:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40628a:	c3                   	ret
  40628b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406290 <__towrite_needs_stdio_exit>:
  406290:	f3 0f 1e fa          	endbr64
  406294:	e9 87 07 00 00       	jmp    406a20 <__stdio_exit>
  406299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004062a0 <__fwritex>:
  4062a0:	f3 0f 1e fa          	endbr64
  4062a4:	55                   	push   %rbp
  4062a5:	48 89 f9             	mov    %rdi,%rcx
  4062a8:	48 89 e5             	mov    %rsp,%rbp
  4062ab:	41 54                	push   %r12
  4062ad:	49 89 f4             	mov    %rsi,%r12
  4062b0:	53                   	push   %rbx
  4062b1:	48 89 d3             	mov    %rdx,%rbx
  4062b4:	48 83 ec 10          	sub    $0x10,%rsp
  4062b8:	48 8b 42 20          	mov    0x20(%rdx),%rax
  4062bc:	48 85 c0             	test   %rax,%rax
  4062bf:	0f 84 ab 00 00 00    	je     406370 <__fwritex+0xd0>
  4062c5:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4062c9:	48 29 f8             	sub    %rdi,%rax
  4062cc:	4c 39 e0             	cmp    %r12,%rax
  4062cf:	72 57                	jb     406328 <__fwritex+0x88>
  4062d1:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  4062d7:	4c 89 e2             	mov    %r12,%rdx
  4062da:	85 c0                	test   %eax,%eax
  4062dc:	79 3d                	jns    40631b <__fwritex+0x7b>
  4062de:	4d 89 e0             	mov    %r12,%r8
  4062e1:	4c 89 c2             	mov    %r8,%rdx
  4062e4:	48 89 ce             	mov    %rcx,%rsi
  4062e7:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  4062eb:	e8 bd f6 ff ff       	call   4059ad <memcpy>
  4062f0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4062f4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4062f8:	4c 89 e0             	mov    %r12,%rax
  4062fb:	48 83 c4 10          	add    $0x10,%rsp
  4062ff:	5b                   	pop    %rbx
  406300:	41 5c                	pop    %r12
  406302:	5d                   	pop    %rbp
  406303:	c3                   	ret
  406304:	90                   	nop
  406305:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40630c:	00 00 00 00 
  406310:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406315:	74 29                	je     406340 <__fwritex+0xa0>
  406317:	48 83 ea 01          	sub    $0x1,%rdx
  40631b:	48 85 d2             	test   %rdx,%rdx
  40631e:	75 f0                	jne    406310 <__fwritex+0x70>
  406320:	eb bc                	jmp    4062de <__fwritex+0x3e>
  406322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406328:	48 8b 43 48          	mov    0x48(%rbx),%rax
  40632c:	48 83 c4 10          	add    $0x10,%rsp
  406330:	4c 89 e2             	mov    %r12,%rdx
  406333:	48 89 df             	mov    %rbx,%rdi
  406336:	48 89 ce             	mov    %rcx,%rsi
  406339:	5b                   	pop    %rbx
  40633a:	41 5c                	pop    %r12
  40633c:	5d                   	pop    %rbp
  40633d:	ff e0                	jmp    *%rax
  40633f:	90                   	nop
  406340:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  406344:	48 89 ce             	mov    %rcx,%rsi
  406347:	48 89 df             	mov    %rbx,%rdi
  40634a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40634e:	ff 53 48             	call   *0x48(%rbx)
  406351:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406355:	48 39 d0             	cmp    %rdx,%rax
  406358:	72 a1                	jb     4062fb <__fwritex+0x5b>
  40635a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40635e:	4d 89 e0             	mov    %r12,%r8
  406361:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406365:	49 29 d0             	sub    %rdx,%r8
  406368:	48 01 d1             	add    %rdx,%rcx
  40636b:	e9 71 ff ff ff       	jmp    4062e1 <__fwritex+0x41>
  406370:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406374:	48 89 d7             	mov    %rdx,%rdi
  406377:	e8 b4 fe ff ff       	call   406230 <__towrite>
  40637c:	85 c0                	test   %eax,%eax
  40637e:	75 10                	jne    406390 <__fwritex+0xf0>
  406380:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406384:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406388:	e9 38 ff ff ff       	jmp    4062c5 <__fwritex+0x25>
  40638d:	0f 1f 00             	nopl   (%rax)
  406390:	31 c0                	xor    %eax,%eax
  406392:	e9 64 ff ff ff       	jmp    4062fb <__fwritex+0x5b>
  406397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40639e:	00 00 

00000000004063a0 <fwrite>:
  4063a0:	f3 0f 1e fa          	endbr64
  4063a4:	55                   	push   %rbp
  4063a5:	31 c0                	xor    %eax,%eax
  4063a7:	48 89 e5             	mov    %rsp,%rbp
  4063aa:	41 57                	push   %r15
  4063ac:	41 56                	push   %r14
  4063ae:	49 89 f6             	mov    %rsi,%r14
  4063b1:	41 55                	push   %r13
  4063b3:	4c 0f af f2          	imul   %rdx,%r14
  4063b7:	41 54                	push   %r12
  4063b9:	49 89 cc             	mov    %rcx,%r12
  4063bc:	53                   	push   %rbx
  4063bd:	48 89 f3             	mov    %rsi,%rbx
  4063c0:	48 83 ec 18          	sub    $0x18,%rsp
  4063c4:	48 85 f6             	test   %rsi,%rsi
  4063c7:	48 0f 45 c2          	cmovne %rdx,%rax
  4063cb:	49 89 c5             	mov    %rax,%r13
  4063ce:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  4063d4:	85 c0                	test   %eax,%eax
  4063d6:	79 30                	jns    406408 <fwrite+0x68>
  4063d8:	48 89 ca             	mov    %rcx,%rdx
  4063db:	4c 89 f6             	mov    %r14,%rsi
  4063de:	e8 bd fe ff ff       	call   4062a0 <__fwritex>
  4063e3:	49 39 c6             	cmp    %rax,%r14
  4063e6:	74 08                	je     4063f0 <fwrite+0x50>
  4063e8:	31 d2                	xor    %edx,%edx
  4063ea:	48 f7 f3             	div    %rbx
  4063ed:	49 89 c5             	mov    %rax,%r13
  4063f0:	48 83 c4 18          	add    $0x18,%rsp
  4063f4:	4c 89 e8             	mov    %r13,%rax
  4063f7:	5b                   	pop    %rbx
  4063f8:	41 5c                	pop    %r12
  4063fa:	41 5d                	pop    %r13
  4063fc:	41 5e                	pop    %r14
  4063fe:	41 5f                	pop    %r15
  406400:	5d                   	pop    %rbp
  406401:	c3                   	ret
  406402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406408:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  40640c:	48 89 cf             	mov    %rcx,%rdi
  40640f:	e8 2c fc ff ff       	call   406040 <__lockfile>
  406414:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406418:	4c 89 e2             	mov    %r12,%rdx
  40641b:	4c 89 f6             	mov    %r14,%rsi
  40641e:	41 89 c7             	mov    %eax,%r15d
  406421:	e8 7a fe ff ff       	call   4062a0 <__fwritex>
  406426:	45 85 ff             	test   %r15d,%r15d
  406429:	74 b8                	je     4063e3 <fwrite+0x43>
  40642b:	4c 89 e7             	mov    %r12,%rdi
  40642e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406432:	e8 c9 fc ff ff       	call   406100 <__unlockfile>
  406437:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40643b:	eb a6                	jmp    4063e3 <fwrite+0x43>
  40643d:	0f 1f 00             	nopl   (%rax)

0000000000406440 <sn_write>:
  406440:	f3 0f 1e fa          	endbr64
  406444:	55                   	push   %rbp
  406445:	48 89 f1             	mov    %rsi,%rcx
  406448:	48 89 e5             	mov    %rsp,%rbp
  40644b:	41 55                	push   %r13
  40644d:	49 89 d5             	mov    %rdx,%r13
  406450:	41 54                	push   %r12
  406452:	53                   	push   %rbx
  406453:	48 89 fb             	mov    %rdi,%rbx
  406456:	48 83 ec 18          	sub    $0x18,%rsp
  40645a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406461:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406465:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406469:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40646e:	49 8b 3c 24          	mov    (%r12),%rdi
  406472:	48 29 f2             	sub    %rsi,%rdx
  406475:	48 39 c2             	cmp    %rax,%rdx
  406478:	48 0f 47 d0          	cmova  %rax,%rdx
  40647c:	48 85 d2             	test   %rdx,%rdx
  40647f:	75 2f                	jne    4064b0 <sn_write+0x70>
  406481:	49 39 c5             	cmp    %rax,%r13
  406484:	49 0f 46 c5          	cmovbe %r13,%rax
  406488:	48 89 c2             	mov    %rax,%rdx
  40648b:	48 85 c0             	test   %rax,%rax
  40648e:	75 5c                	jne    4064ec <sn_write+0xac>
  406490:	c6 07 00             	movb   $0x0,(%rdi)
  406493:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406497:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40649b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40649f:	48 83 c4 18          	add    $0x18,%rsp
  4064a3:	4c 89 e8             	mov    %r13,%rax
  4064a6:	5b                   	pop    %rbx
  4064a7:	41 5c                	pop    %r12
  4064a9:	41 5d                	pop    %r13
  4064ab:	5d                   	pop    %rbp
  4064ac:	c3                   	ret
  4064ad:	0f 1f 00             	nopl   (%rax)
  4064b0:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4064b4:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4064b8:	e8 f0 f4 ff ff       	call   4059ad <memcpy>
  4064bd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4064c1:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4064c6:	49 8b 3c 24          	mov    (%r12),%rdi
  4064ca:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4064ce:	48 29 d0             	sub    %rdx,%rax
  4064d1:	48 01 d7             	add    %rdx,%rdi
  4064d4:	49 39 c5             	cmp    %rax,%r13
  4064d7:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4064dc:	49 0f 46 c5          	cmovbe %r13,%rax
  4064e0:	49 89 3c 24          	mov    %rdi,(%r12)
  4064e4:	48 89 c2             	mov    %rax,%rdx
  4064e7:	48 85 c0             	test   %rax,%rax
  4064ea:	74 a4                	je     406490 <sn_write+0x50>
  4064ec:	48 89 ce             	mov    %rcx,%rsi
  4064ef:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4064f3:	e8 b5 f4 ff ff       	call   4059ad <memcpy>
  4064f8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4064fc:	49 8b 3c 24          	mov    (%r12),%rdi
  406500:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  406505:	48 01 d7             	add    %rdx,%rdi
  406508:	49 89 3c 24          	mov    %rdi,(%r12)
  40650c:	eb 82                	jmp    406490 <sn_write+0x50>
  40650e:	66 90                	xchg   %ax,%ax

0000000000406510 <vsnprintf>:
  406510:	f3 0f 1e fa          	endbr64
  406514:	55                   	push   %rbp
  406515:	49 89 c9             	mov    %rcx,%r9
  406518:	49 89 d0             	mov    %rdx,%r8
  40651b:	48 89 e5             	mov    %rsp,%rbp
  40651e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  406525:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40652c:	00 00 
  40652e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406532:	31 c0                	xor    %eax,%eax
  406534:	48 85 f6             	test   %rsi,%rsi
  406537:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  40653b:	0f 95 c1             	setne  %cl
  40653e:	48 0f 45 d7          	cmovne %rdi,%rdx
  406542:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  406549:	0f b6 c9             	movzbl %cl,%ecx
  40654c:	48 29 ce             	sub    %rcx,%rsi
  40654f:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406554:	c6 02 00             	movb   $0x0,(%rdx)
  406557:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40655e:	4c 89 ca             	mov    %r9,%rdx
  406561:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406568:	4c 89 c6             	mov    %r8,%rsi
  40656b:	f3 48 ab             	rep stos %rax,(%rdi)
  40656e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 406440 <sn_write>
  406575:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40657c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406583:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406587:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40658e:	48 8b 05 cb 17 00 00 	mov    0x17cb(%rip),%rax        # 407d60 <errmsgstr+0x780>
  406595:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406599:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4065a0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  4065a4:	e8 67 f1 ff ff       	call   405710 <vfprintf>
  4065a9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4065ad:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4065b4:	00 00 
  4065b6:	75 02                	jne    4065ba <vsnprintf+0xaa>
  4065b8:	c9                   	leave
  4065b9:	c3                   	ret
  4065ba:	e8 41 c0 ff ff       	call   402600 <__stack_chk_fail>
  4065bf:	90                   	nop

00000000004065c0 <memchr>:
  4065c0:	f3 0f 1e fa          	endbr64
  4065c4:	48 89 d0             	mov    %rdx,%rax
  4065c7:	40 0f b6 ce          	movzbl %sil,%ecx
  4065cb:	40 f6 c7 07          	test   $0x7,%dil
  4065cf:	75 1c                	jne    4065ed <memchr+0x2d>
  4065d1:	eb 2d                	jmp    406600 <memchr+0x40>
  4065d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4065d8:	0f b6 17             	movzbl (%rdi),%edx
  4065db:	39 ca                	cmp    %ecx,%edx
  4065dd:	74 28                	je     406607 <memchr+0x47>
  4065df:	48 83 c7 01          	add    $0x1,%rdi
  4065e3:	48 83 e8 01          	sub    $0x1,%rax
  4065e7:	40 f6 c7 07          	test   $0x7,%dil
  4065eb:	74 13                	je     406600 <memchr+0x40>
  4065ed:	48 85 c0             	test   %rax,%rax
  4065f0:	75 e6                	jne    4065d8 <memchr+0x18>
  4065f2:	31 d2                	xor    %edx,%edx
  4065f4:	48 89 d0             	mov    %rdx,%rax
  4065f7:	c3                   	ret
  4065f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4065ff:	00 
  406600:	31 d2                	xor    %edx,%edx
  406602:	48 85 c0             	test   %rax,%rax
  406605:	74 ed                	je     4065f4 <memchr+0x34>
  406607:	0f b6 17             	movzbl (%rdi),%edx
  40660a:	39 ca                	cmp    %ecx,%edx
  40660c:	0f 84 ce 00 00 00    	je     4066e0 <memchr+0x120>
  406612:	48 83 f8 07          	cmp    $0x7,%rax
  406616:	0f 86 c4 00 00 00    	jbe    4066e0 <memchr+0x120>
  40661c:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  406623:	01 01 01 
  406626:	4c 63 c1             	movslq %ecx,%r8
  406629:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  406630:	fe fe fe 
  406633:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40663a:	80 80 80 
  40663d:	4c 0f af c2          	imul   %rdx,%r8
  406641:	48 89 fa             	mov    %rdi,%rdx
  406644:	eb 48                	jmp    40668e <memchr+0xce>
  406646:	0f 1f 00             	nopl   (%rax)
  406649:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406650:	00 00 00 00 
  406654:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40665b:	00 00 00 00 
  40665f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406666:	00 00 00 00 
  40666a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406671:	00 00 00 00 
  406675:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40667c:	00 00 00 00 
  406680:	48 83 e8 08          	sub    $0x8,%rax
  406684:	48 83 c2 08          	add    $0x8,%rdx
  406688:	48 83 f8 07          	cmp    $0x7,%rax
  40668c:	76 5a                	jbe    4066e8 <memchr+0x128>
  40668e:	48 8b 32             	mov    (%rdx),%rsi
  406691:	4c 31 c6             	xor    %r8,%rsi
  406694:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406698:	48 f7 d6             	not    %rsi
  40669b:	48 21 fe             	and    %rdi,%rsi
  40669e:	4c 85 ce             	test   %r9,%rsi
  4066a1:	74 dd                	je     406680 <memchr+0xc0>
  4066a3:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4066aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4066b1:	00 00 00 00 
  4066b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4066bc:	00 00 00 00 
  4066c0:	0f b6 32             	movzbl (%rdx),%esi
  4066c3:	39 ce                	cmp    %ecx,%esi
  4066c5:	0f 84 29 ff ff ff    	je     4065f4 <memchr+0x34>
  4066cb:	48 83 c2 01          	add    $0x1,%rdx
  4066cf:	48 83 e8 01          	sub    $0x1,%rax
  4066d3:	75 eb                	jne    4066c0 <memchr+0x100>
  4066d5:	e9 18 ff ff ff       	jmp    4065f2 <memchr+0x32>
  4066da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4066e0:	48 89 fa             	mov    %rdi,%rdx
  4066e3:	eb db                	jmp    4066c0 <memchr+0x100>
  4066e5:	0f 1f 00             	nopl   (%rax)
  4066e8:	48 85 c0             	test   %rax,%rax
  4066eb:	75 d3                	jne    4066c0 <memchr+0x100>
  4066ed:	e9 00 ff ff ff       	jmp    4065f2 <memchr+0x32>
  4066f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4066f9:	00 00 00 
  4066fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406700 <__stpcpy>:
  406700:	f3 0f 1e fa          	endbr64
  406704:	48 89 f9             	mov    %rdi,%rcx
  406707:	48 89 f8             	mov    %rdi,%rax
  40670a:	48 89 f2             	mov    %rsi,%rdx
  40670d:	48 31 f1             	xor    %rsi,%rcx
  406710:	83 e1 07             	and    $0x7,%ecx
  406713:	74 5c                	je     406771 <__stpcpy+0x71>
  406715:	0f b6 0a             	movzbl (%rdx),%ecx
  406718:	88 08                	mov    %cl,(%rax)
  40671a:	84 c9                	test   %cl,%cl
  40671c:	0f 84 c6 00 00 00    	je     4067e8 <__stpcpy+0xe8>
  406722:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406729:	00 
  40672a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406731:	00 00 00 00 
  406735:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40673c:	00 00 00 00 
  406740:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406744:	48 83 c2 01          	add    $0x1,%rdx
  406748:	48 83 c0 01          	add    $0x1,%rax
  40674c:	88 08                	mov    %cl,(%rax)
  40674e:	84 c9                	test   %cl,%cl
  406750:	75 ee                	jne    406740 <__stpcpy+0x40>
  406752:	c3                   	ret
  406753:	66 90                	xchg   %ax,%ax
  406755:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40675c:	00 00 00 00 
  406760:	0f b6 0a             	movzbl (%rdx),%ecx
  406763:	88 08                	mov    %cl,(%rax)
  406765:	84 c9                	test   %cl,%cl
  406767:	74 e9                	je     406752 <__stpcpy+0x52>
  406769:	48 83 c2 01          	add    $0x1,%rdx
  40676d:	48 83 c0 01          	add    $0x1,%rax
  406771:	f6 c2 07             	test   $0x7,%dl
  406774:	75 ea                	jne    406760 <__stpcpy+0x60>
  406776:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  40677d:	fe fe fe 
  406780:	48 8b 0a             	mov    (%rdx),%rcx
  406783:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40678a:	80 80 80 
  40678d:	48 89 cf             	mov    %rcx,%rdi
  406790:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406794:	48 f7 d7             	not    %rdi
  406797:	48 21 fe             	and    %rdi,%rsi
  40679a:	4c 85 ce             	test   %r9,%rsi
  40679d:	0f 85 72 ff ff ff    	jne    406715 <__stpcpy+0x15>
  4067a3:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4067aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067b1:	00 00 00 00 
  4067b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067bc:	00 00 00 00 
  4067c0:	48 83 c2 08          	add    $0x8,%rdx
  4067c4:	48 89 08             	mov    %rcx,(%rax)
  4067c7:	48 83 c0 08          	add    $0x8,%rax
  4067cb:	48 8b 0a             	mov    (%rdx),%rcx
  4067ce:	48 89 cf             	mov    %rcx,%rdi
  4067d1:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  4067d5:	48 f7 d7             	not    %rdi
  4067d8:	48 21 fe             	and    %rdi,%rsi
  4067db:	4c 85 ce             	test   %r9,%rsi
  4067de:	74 e0                	je     4067c0 <__stpcpy+0xc0>
  4067e0:	e9 30 ff ff ff       	jmp    406715 <__stpcpy+0x15>
  4067e5:	0f 1f 00             	nopl   (%rax)
  4067e8:	c3                   	ret

00000000004067e9 <__set_thread_area>:
  4067e9:	48 89 fe             	mov    %rdi,%rsi
  4067ec:	bf 02 10 00 00       	mov    $0x1002,%edi
  4067f1:	b8 9e 00 00 00       	mov    $0x9e,%eax
  4067f6:	0f 05                	syscall
  4067f8:	c3                   	ret
  4067f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406800 <__lseek>:
  406800:	f3 0f 1e fa          	endbr64
  406804:	48 63 ff             	movslq %edi,%rdi
  406807:	48 63 d2             	movslq %edx,%rdx
  40680a:	b8 08 00 00 00       	mov    $0x8,%eax
  40680f:	0f 05                	syscall
  406811:	48 89 c7             	mov    %rax,%rdi
  406814:	e9 07 00 00 00       	jmp    406820 <__syscall_ret>
  406819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406820 <__syscall_ret>:
  406820:	f3 0f 1e fa          	endbr64
  406824:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  40682b:	77 0b                	ja     406838 <__syscall_ret+0x18>
  40682d:	48 89 f8             	mov    %rdi,%rax
  406830:	c3                   	ret
  406831:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406838:	55                   	push   %rbp
  406839:	48 89 e5             	mov    %rsp,%rbp
  40683c:	53                   	push   %rbx
  40683d:	48 89 fb             	mov    %rdi,%rbx
  406840:	48 83 ec 08          	sub    $0x8,%rsp
  406844:	e8 c7 f5 ff ff       	call   405e10 <__errno_location>
  406849:	89 df                	mov    %ebx,%edi
  40684b:	f7 df                	neg    %edi
  40684d:	89 38                	mov    %edi,(%rax)
  40684f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406856:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40685a:	c9                   	leave
  40685b:	c3                   	ret
  40685c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406860 <wcrtomb>:
  406860:	f3 0f 1e fa          	endbr64
  406864:	48 85 ff             	test   %rdi,%rdi
  406867:	0f 84 d6 00 00 00    	je     406943 <wcrtomb+0xe3>
  40686d:	83 fe 7f             	cmp    $0x7f,%esi
  406870:	0f 86 ca 00 00 00    	jbe    406940 <wcrtomb+0xe0>
  406876:	55                   	push   %rbp
  406877:	89 f0                	mov    %esi,%eax
  406879:	48 89 f9             	mov    %rdi,%rcx
  40687c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406883:	00 00 
  406885:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  40688c:	48 89 e5             	mov    %rsp,%rbp
  40688f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406893:	74 53                	je     4068e8 <wcrtomb+0x88>
  406895:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  40689b:	0f 86 af 00 00 00    	jbe    406950 <wcrtomb+0xf0>
  4068a1:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  4068a7:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  4068ad:	0f 86 bd 00 00 00    	jbe    406970 <wcrtomb+0x110>
  4068b3:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  4068b9:	0f 86 b1 00 00 00    	jbe    406970 <wcrtomb+0x110>
  4068bf:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  4068c5:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  4068cb:	76 33                	jbe    406900 <wcrtomb+0xa0>
  4068cd:	e8 3e f5 ff ff       	call   405e10 <__errno_location>
  4068d2:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  4068d8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4068df:	5d                   	pop    %rbp
  4068e0:	c3                   	ret
  4068e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4068e8:	2d 80 df 00 00       	sub    $0xdf80,%eax
  4068ed:	83 f8 7f             	cmp    $0x7f,%eax
  4068f0:	77 db                	ja     4068cd <wcrtomb+0x6d>
  4068f2:	40 88 37             	mov    %sil,(%rdi)
  4068f5:	b8 01 00 00 00       	mov    $0x1,%eax
  4068fa:	5d                   	pop    %rbp
  4068fb:	c3                   	ret
  4068fc:	0f 1f 40 00          	nopl   0x0(%rax)
  406900:	89 c7                	mov    %eax,%edi
  406902:	83 e0 3f             	and    $0x3f,%eax
  406905:	89 f2                	mov    %esi,%edx
  406907:	c1 fe 0c             	sar    $0xc,%esi
  40690a:	c1 ff 06             	sar    $0x6,%edi
  40690d:	c1 e0 08             	shl    $0x8,%eax
  406910:	83 e6 3f             	and    $0x3f,%esi
  406913:	83 e7 3f             	and    $0x3f,%edi
  406916:	c1 fa 12             	sar    $0x12,%edx
  406919:	09 f8                	or     %edi,%eax
  40691b:	0f b6 d2             	movzbl %dl,%edx
  40691e:	c1 e0 08             	shl    $0x8,%eax
  406921:	09 f0                	or     %esi,%eax
  406923:	8b 35 67 0b 00 00    	mov    0xb67(%rip),%esi        # 407490 <states+0x1f0>
  406929:	c1 e0 08             	shl    $0x8,%eax
  40692c:	09 d0                	or     %edx,%eax
  40692e:	09 f0                	or     %esi,%eax
  406930:	89 01                	mov    %eax,(%rcx)
  406932:	b8 04 00 00 00       	mov    $0x4,%eax
  406937:	5d                   	pop    %rbp
  406938:	c3                   	ret
  406939:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406940:	40 88 37             	mov    %sil,(%rdi)
  406943:	b8 01 00 00 00       	mov    $0x1,%eax
  406948:	c3                   	ret
  406949:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406950:	89 f2                	mov    %esi,%edx
  406952:	83 e0 3f             	and    $0x3f,%eax
  406955:	c1 fa 06             	sar    $0x6,%edx
  406958:	83 c8 80             	or     $0xffffff80,%eax
  40695b:	83 ca c0             	or     $0xffffffc0,%edx
  40695e:	88 47 01             	mov    %al,0x1(%rdi)
  406961:	b8 02 00 00 00       	mov    $0x2,%eax
  406966:	88 17                	mov    %dl,(%rdi)
  406968:	5d                   	pop    %rbp
  406969:	c3                   	ret
  40696a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406970:	89 c2                	mov    %eax,%edx
  406972:	c1 fa 0c             	sar    $0xc,%edx
  406975:	83 ca e0             	or     $0xffffffe0,%edx
  406978:	88 11                	mov    %dl,(%rcx)
  40697a:	89 c2                	mov    %eax,%edx
  40697c:	83 e0 3f             	and    $0x3f,%eax
  40697f:	c1 fa 06             	sar    $0x6,%edx
  406982:	83 c8 80             	or     $0xffffff80,%eax
  406985:	83 e2 3f             	and    $0x3f,%edx
  406988:	88 41 02             	mov    %al,0x2(%rcx)
  40698b:	b8 03 00 00 00       	mov    $0x3,%eax
  406990:	83 ca 80             	or     $0xffffff80,%edx
  406993:	88 51 01             	mov    %dl,0x1(%rcx)
  406996:	5d                   	pop    %rbp
  406997:	c3                   	ret
  406998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40699f:	00 

00000000004069a0 <close_file>:
  4069a0:	48 85 ff             	test   %rdi,%rdi
  4069a3:	74 6b                	je     406a10 <close_file+0x70>
  4069a5:	55                   	push   %rbp
  4069a6:	48 89 e5             	mov    %rsp,%rbp
  4069a9:	53                   	push   %rbx
  4069aa:	48 89 fb             	mov    %rdi,%rbx
  4069ad:	48 83 ec 08          	sub    $0x8,%rsp
  4069b1:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  4069b7:	85 c0                	test   %eax,%eax
  4069b9:	79 3d                	jns    4069f8 <close_file+0x58>
  4069bb:	48 8b 43 38          	mov    0x38(%rbx),%rax
  4069bf:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  4069c3:	74 0a                	je     4069cf <close_file+0x2f>
  4069c5:	31 d2                	xor    %edx,%edx
  4069c7:	31 f6                	xor    %esi,%esi
  4069c9:	48 89 df             	mov    %rbx,%rdi
  4069cc:	ff 53 48             	call   *0x48(%rbx)
  4069cf:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4069d3:	48 8b 43 10          	mov    0x10(%rbx),%rax
  4069d7:	48 39 c6             	cmp    %rax,%rsi
  4069da:	74 24                	je     406a00 <close_file+0x60>
  4069dc:	48 29 c6             	sub    %rax,%rsi
  4069df:	48 89 df             	mov    %rbx,%rdi
  4069e2:	48 8b 43 50          	mov    0x50(%rbx),%rax
  4069e6:	ba 01 00 00 00       	mov    $0x1,%edx
  4069eb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4069ef:	c9                   	leave
  4069f0:	ff e0                	jmp    *%rax
  4069f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4069f8:	e8 43 f6 ff ff       	call   406040 <__lockfile>
  4069fd:	eb bc                	jmp    4069bb <close_file+0x1b>
  4069ff:	90                   	nop
  406a00:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406a04:	c9                   	leave
  406a05:	c3                   	ret
  406a06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406a0d:	00 00 00 
  406a10:	c3                   	ret
  406a11:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406a18:	00 00 00 
  406a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406a20 <__stdio_exit>:
  406a20:	f3 0f 1e fa          	endbr64
  406a24:	55                   	push   %rbp
  406a25:	48 89 e5             	mov    %rsp,%rbp
  406a28:	53                   	push   %rbx
  406a29:	48 83 ec 08          	sub    $0x8,%rsp
  406a2d:	e8 7e 01 00 00       	call   406bb0 <__ofl_lock>
  406a32:	48 8b 18             	mov    (%rax),%rbx
  406a35:	48 85 db             	test   %rbx,%rbx
  406a38:	74 17                	je     406a51 <__stdio_exit+0x31>
  406a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a40:	48 89 df             	mov    %rbx,%rdi
  406a43:	e8 58 ff ff ff       	call   4069a0 <close_file>
  406a48:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406a4c:	48 85 db             	test   %rbx,%rbx
  406a4f:	75 ef                	jne    406a40 <__stdio_exit+0x20>
  406a51:	48 8b 3d 40 3d 00 00 	mov    0x3d40(%rip),%rdi        # 40a798 <__stderr_used>
  406a58:	e8 43 ff ff ff       	call   4069a0 <close_file>
  406a5d:	48 8b 3d a4 35 00 00 	mov    0x35a4(%rip),%rdi        # 40a008 <__stdout_used>
  406a64:	e8 37 ff ff ff       	call   4069a0 <close_file>
  406a69:	48 8b 3d 28 3d 00 00 	mov    0x3d28(%rip),%rdi        # 40a798 <__stderr_used>
  406a70:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406a74:	c9                   	leave
  406a75:	e9 26 ff ff ff       	jmp    4069a0 <close_file>
  406a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406a80 <__stdio_write>:
  406a80:	f3 0f 1e fa          	endbr64
  406a84:	55                   	push   %rbp
  406a85:	48 89 e5             	mov    %rsp,%rbp
  406a88:	41 57                	push   %r15
  406a8a:	41 56                	push   %r14
  406a8c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406a90:	41 55                	push   %r13
  406a92:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406a98:	41 54                	push   %r12
  406a9a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406aa0:	53                   	push   %rbx
  406aa1:	48 89 fb             	mov    %rdi,%rbx
  406aa4:	48 83 ec 48          	sub    $0x48,%rsp
  406aa8:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406aac:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406ab0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406ab7:	00 00 
  406ab9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406abd:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406ac1:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406ac5:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406ac9:	49 29 c0             	sub    %rax,%r8
  406acc:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406ad0:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406ad4:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406ad8:	eb 37                	jmp    406b11 <__stdio_write+0x91>
  406ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ae0:	48 85 c0             	test   %rax,%rax
  406ae3:	0f 88 8f 00 00 00    	js     406b78 <__stdio_write+0xf8>
  406ae9:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406aed:	49 29 c6             	sub    %rax,%r14
  406af0:	48 39 c2             	cmp    %rax,%rdx
  406af3:	73 12                	jae    406b07 <__stdio_write+0x87>
  406af5:	41 83 ed 01          	sub    $0x1,%r13d
  406af9:	48 29 d0             	sub    %rdx,%rax
  406afc:	49 83 c7 10          	add    $0x10,%r15
  406b00:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406b04:	4d 63 e5             	movslq %r13d,%r12
  406b07:	48 29 c2             	sub    %rax,%rdx
  406b0a:	49 01 07             	add    %rax,(%r15)
  406b0d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406b11:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406b15:	b8 14 00 00 00       	mov    $0x14,%eax
  406b1a:	4c 89 fe             	mov    %r15,%rsi
  406b1d:	4c 89 e2             	mov    %r12,%rdx
  406b20:	0f 05                	syscall
  406b22:	48 89 c7             	mov    %rax,%rdi
  406b25:	e8 f6 fc ff ff       	call   406820 <__syscall_ret>
  406b2a:	49 39 c6             	cmp    %rax,%r14
  406b2d:	75 b1                	jne    406ae0 <__stdio_write+0x60>
  406b2f:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406b33:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406b37:	48 01 c1             	add    %rax,%rcx
  406b3a:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406b3f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406b43:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406b47:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406b4c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406b50:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406b54:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406b58:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406b5f:	00 00 
  406b61:	75 3a                	jne    406b9d <__stdio_write+0x11d>
  406b63:	48 83 c4 48          	add    $0x48,%rsp
  406b67:	5b                   	pop    %rbx
  406b68:	41 5c                	pop    %r12
  406b6a:	41 5d                	pop    %r13
  406b6c:	41 5e                	pop    %r14
  406b6e:	41 5f                	pop    %r15
  406b70:	5d                   	pop    %rbp
  406b71:	c3                   	ret
  406b72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406b78:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406b7c:	83 0b 20             	orl    $0x20,(%rbx)
  406b7f:	31 c0                	xor    %eax,%eax
  406b81:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406b88:	00 
  406b89:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406b8d:	41 83 fd 02          	cmp    $0x2,%r13d
  406b91:	74 c1                	je     406b54 <__stdio_write+0xd4>
  406b93:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406b97:	49 2b 47 08          	sub    0x8(%r15),%rax
  406b9b:	eb b7                	jmp    406b54 <__stdio_write+0xd4>
  406b9d:	e8 5e ba ff ff       	call   402600 <__stack_chk_fail>
  406ba2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406ba9:	00 00 00 
  406bac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406bb0 <__ofl_lock>:
  406bb0:	f3 0f 1e fa          	endbr64
  406bb4:	55                   	push   %rbp
  406bb5:	48 8d 3d e4 3b 00 00 	lea    0x3be4(%rip),%rdi        # 40a7a0 <ofl_lock>
  406bbc:	48 89 e5             	mov    %rsp,%rbp
  406bbf:	e8 1c 00 00 00       	call   406be0 <__lock>
  406bc4:	48 8d 05 dd 3b 00 00 	lea    0x3bdd(%rip),%rax        # 40a7a8 <ofl_head>
  406bcb:	5d                   	pop    %rbp
  406bcc:	c3                   	ret
  406bcd:	0f 1f 00             	nopl   (%rax)

0000000000406bd0 <__ofl_unlock>:
  406bd0:	f3 0f 1e fa          	endbr64
  406bd4:	48 8d 3d c5 3b 00 00 	lea    0x3bc5(%rip),%rdi        # 40a7a0 <ofl_lock>
  406bdb:	e9 e0 00 00 00       	jmp    406cc0 <__unlock>

0000000000406be0 <__lock>:
  406be0:	f3 0f 1e fa          	endbr64
  406be4:	0f be 0d 78 35 00 00 	movsbl 0x3578(%rip),%ecx        # 40a163 <__libc+0x3>
  406beb:	85 c9                	test   %ecx,%ecx
  406bed:	74 51                	je     406c40 <__lock+0x60>
  406bef:	31 c0                	xor    %eax,%eax
  406bf1:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406bf6:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406bfa:	89 c2                	mov    %eax,%edx
  406bfc:	85 c9                	test   %ecx,%ecx
  406bfe:	78 48                	js     406c48 <__lock+0x68>
  406c00:	85 c0                	test   %eax,%eax
  406c02:	74 3c                	je     406c40 <__lock+0x60>
  406c04:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406c0a:	eb 1e                	jmp    406c2a <__lock+0x4a>
  406c0c:	0f 1f 40 00          	nopl   0x0(%rax)
  406c10:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406c16:	89 d1                	mov    %edx,%ecx
  406c18:	89 c8                	mov    %ecx,%eax
  406c1a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406c1e:	89 c2                	mov    %eax,%edx
  406c20:	39 c1                	cmp    %eax,%ecx
  406c22:	74 1c                	je     406c40 <__lock+0x60>
  406c24:	41 83 e8 01          	sub    $0x1,%r8d
  406c28:	74 2e                	je     406c58 <__lock+0x78>
  406c2a:	85 d2                	test   %edx,%edx
  406c2c:	79 e2                	jns    406c10 <__lock+0x30>
  406c2e:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406c34:	89 d6                	mov    %edx,%esi
  406c36:	eb e0                	jmp    406c18 <__lock+0x38>
  406c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406c3f:	00 
  406c40:	c3                   	ret
  406c41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c48:	c6 05 14 35 00 00 00 	movb   $0x0,0x3514(%rip)        # 40a163 <__libc+0x3>
  406c4f:	85 c0                	test   %eax,%eax
  406c51:	75 b1                	jne    406c04 <__lock+0x24>
  406c53:	c3                   	ret
  406c54:	0f 1f 40 00          	nopl   0x0(%rax)
  406c58:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406c5e:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406c63:	41 83 c0 01          	add    $0x1,%r8d
  406c67:	eb 1c                	jmp    406c85 <__lock+0xa5>
  406c69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c70:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406c77:	89 d0                	mov    %edx,%eax
  406c79:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406c7e:	41 89 c0             	mov    %eax,%r8d
  406c81:	39 c2                	cmp    %eax,%edx
  406c83:	74 bb                	je     406c40 <__lock+0x60>
  406c85:	44 89 c2             	mov    %r8d,%edx
  406c88:	45 85 c0             	test   %r8d,%r8d
  406c8b:	79 e3                	jns    406c70 <__lock+0x90>
  406c8d:	49 63 d0             	movslq %r8d,%rdx
  406c90:	45 31 d2             	xor    %r10d,%r10d
  406c93:	b8 ca 00 00 00       	mov    $0xca,%eax
  406c98:	be 80 00 00 00       	mov    $0x80,%esi
  406c9d:	0f 05                	syscall
  406c9f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406ca3:	75 09                	jne    406cae <__lock+0xce>
  406ca5:	31 f6                	xor    %esi,%esi
  406ca7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406cac:	0f 05                	syscall
  406cae:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  406cb5:	eb b9                	jmp    406c70 <__lock+0x90>
  406cb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406cbe:	00 00 

0000000000406cc0 <__unlock>:
  406cc0:	f3 0f 1e fa          	endbr64
  406cc4:	8b 07                	mov    (%rdi),%eax
  406cc6:	85 c0                	test   %eax,%eax
  406cc8:	78 06                	js     406cd0 <__unlock+0x10>
  406cca:	c3                   	ret
  406ccb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406cd0:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  406cd5:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  406cd9:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  406cde:	74 ea                	je     406cca <__unlock+0xa>
  406ce0:	be 81 00 00 00       	mov    $0x81,%esi
  406ce5:	b8 ca 00 00 00       	mov    $0xca,%eax
  406cea:	ba 01 00 00 00       	mov    $0x1,%edx
  406cef:	0f 05                	syscall
  406cf1:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406cf5:	75 d3                	jne    406cca <__unlock+0xa>
  406cf7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406cfc:	be 01 00 00 00       	mov    $0x1,%esi
  406d01:	0f 05                	syscall
  406d03:	c3                   	ret

Disassembly of section .fini:

0000000000406d04 <_fini>:
  406d04:	50                   	push   %rax
  406d05:	58                   	pop    %rax
  406d06:	c3                   	ret
