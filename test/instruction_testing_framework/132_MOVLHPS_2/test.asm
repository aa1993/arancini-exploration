
./test_movlhps_static_musl_2:     Dateiformat elf64-x86-64


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
  40104f:	e8 9c 16 00 00       	call   4026f0 <__funcs_on_exit>
  401054:	e8 a7 16 00 00       	call   402700 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 80 5a 00 00       	call   406ae0 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 d9 4e 00 00       	call   405f40 <_Exit>

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
  40108a:	49 c7 c0 c4 6d 40 00 	mov    $0x406dc4,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 79 15 00 00       	jmp    402620 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 57 00 00 	lea    0x57fa(%rip),%rcx        # 407000 <_fini+0x23c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 e2 0f 00 00       	call   402810 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 d9 41 00 00       	call   405a20 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 84 0e 00 00       	call   4026e0 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 57 00 00 	lea    0x5777(%rip),%rcx        # 407021 <_fini+0x25d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 46 0f 00 00       	call   402810 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 3d 41 00 00       	call   405a20 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 e8 0d 00 00       	call   4026e0 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 55 00 00 	lea    0x55ce(%rip),%rsi        # 407030 <_fini+0x26c>
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
  401a9f:	e8 6c 0d 00 00       	call   402810 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 5f 3f 00 00       	call   405a20 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 0a 0c 00 00       	call   4026e0 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 54 00 00 	lea    0x54d7(%rip),%rsi        # 407078 <_fini+0x2b4>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 4e 0c 00 00       	call   402810 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 41 3e 00 00       	call   405a20 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 ec 0a 00 00       	call   4026e0 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 54 00 00 	lea    0x543b(%rip),%rsi        # 407099 <_fini+0x2d5>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 98 0b 00 00       	call   402810 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 8f 3d 00 00       	call   405a20 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 3a 0a 00 00       	call   4026e0 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 53 00 00 	lea    0x53b7(%rip),%rsi        # 4070aa <_fini+0x2e6>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 09 0b 00 00       	call   402810 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 00 3d 00 00       	call   405a20 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 ab 09 00 00       	call   4026e0 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 51 00 00 	lea    0x5191(%rip),%rsi        # 407030 <_fini+0x26c>
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
  401edc:	e8 2f 09 00 00       	call   402810 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 22 3b 00 00       	call   405a20 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 cd 07 00 00       	call   4026e0 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 50 00 00 	lea    0x509a(%rip),%rsi        # 407078 <_fini+0x2b4>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 11 08 00 00       	call   402810 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 04 3a 00 00       	call   405a20 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 af 06 00 00       	call   4026e0 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 50 00 00 	lea    0x501a(%rip),%rsi        # 4070b5 <_fini+0x2f1>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 5b 07 00 00       	call   402810 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 52 39 00 00       	call   405a20 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 fd 05 00 00       	call   4026e0 <__stack_chk_fail>
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
  402129:	48 8d 35 96 4f 00 00 	lea    0x4f96(%rip),%rsi        # 4070c6 <_fini+0x302>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 cc 06 00 00       	call   402810 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 c3 38 00 00       	call   405a20 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 6e 05 00 00       	call   4026e0 <__stack_chk_fail>
  402172:	c9                   	leave
  402173:	c3                   	ret

0000000000402174 <main>:
#include <stdalign.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service.h"
int main() {
  402174:	f3 0f 1e fa          	endbr64
  402178:	55                   	push   %rbp
  402179:	48 89 e5             	mov    %rsp,%rbp
  40217c:	48 81 ec a0 04 00 00 	sub    $0x4a0,%rsp
  402183:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40218a:	00 00 
  40218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402190:	31 c0                	xor    %eax,%eax
    alignas(SSE_TYPE) C_IN_TYPE in1[IN_LEN] = SRC1;
  402192:	c7 85 b0 fb ff ff df 	movl   $0x197f10df,-0x450(%rbp)
  402199:	10 7f 19 
  40219c:	c7 85 b4 fb ff ff 98 	movl   $0x35d64898,-0x44c(%rbp)
  4021a3:	48 d6 35 
  4021a6:	c7 85 b8 fb ff ff b9 	movl   $0x8a2ca0b9,-0x448(%rbp)
  4021ad:	a0 2c 8a 
  4021b0:	c7 85 bc fb ff ff 84 	movl   $0xf7194d84,-0x444(%rbp)
  4021b7:	4d 19 f7 
    alignas(SSE_TYPE) C_IN_TYPE in2[IN_LEN] = SRC2;
  4021ba:	c7 85 c0 fb ff ff 91 	movl   $0x3e84b591,-0x440(%rbp)
  4021c1:	b5 84 3e 
  4021c4:	c7 85 c4 fb ff ff 36 	movl   $0xa860b236,-0x43c(%rbp)
  4021cb:	b2 60 a8 
  4021ce:	c7 85 c8 fb ff ff 34 	movl   $0xc286c534,-0x438(%rbp)
  4021d5:	c5 86 c2 
  4021d8:	c7 85 cc fb ff ff 24 	movl   $0x630d6b24,-0x434(%rbp)
  4021df:	6b 0d 63 
    alignas(SSE_TYPE) C_OUT_TYPE con[OUT_LEN] = CON;
  4021e2:	c7 85 d0 fb ff ff df 	movl   $0x197f10df,-0x430(%rbp)
  4021e9:	10 7f 19 
  4021ec:	c7 85 d4 fb ff ff 98 	movl   $0x35d64898,-0x42c(%rbp)
  4021f3:	48 d6 35 
  4021f6:	c7 85 d8 fb ff ff 91 	movl   $0x3e84b591,-0x428(%rbp)
  4021fd:	b5 84 3e 
  402200:	c7 85 dc fb ff ff 36 	movl   $0xa860b236,-0x424(%rbp)
  402207:	b2 60 a8 
    alignas(SSE_TYPE) C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
  40220a:	48 8d 95 b0 fb ff ff 	lea    -0x450(%rbp),%rdx
  402211:	48 8d 85 60 fb ff ff 	lea    -0x4a0(%rbp),%rax
  402218:	48 89 d6             	mov    %rdx,%rsi
  40221b:	48 89 c7             	mov    %rax,%rdi
  40221e:	e8 81 f3 ff ff       	call   4015a4 <insert_i32>
    SSE_TYPE v2;
    INSERT(&v2, in2);
  402223:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
  40222a:	48 8d 85 70 fb ff ff 	lea    -0x490(%rbp),%rax
  402231:	48 89 d6             	mov    %rdx,%rsi
  402234:	48 89 c7             	mov    %rax,%rdi
  402237:	e8 68 f3 ff ff       	call   4015a4 <insert_i32>

    SSE_TYPE res = (SSE_TYPE)INTRINSIC_FUN((SSE_TYPE_IN)v1,(SSE_TYPE_IN) v2);
  40223c:	66 0f 6f 85 70 fb ff 	movdqa -0x490(%rbp),%xmm0
  402243:	ff 
  402244:	0f 28 c8             	movaps %xmm0,%xmm1
  402247:	66 0f 6f 85 60 fb ff 	movdqa -0x4a0(%rbp),%xmm0
  40224e:	ff 
  40224f:	0f 29 85 90 fb ff ff 	movaps %xmm0,-0x470(%rbp)
  402256:	0f 29 8d a0 fb ff ff 	movaps %xmm1,-0x460(%rbp)
  return (__m128) __builtin_ia32_movlhps ((__v4sf)__A, (__v4sf)__B);
  40225d:	0f 28 85 90 fb ff ff 	movaps -0x470(%rbp),%xmm0
  402264:	0f 16 85 a0 fb ff ff 	movhps -0x460(%rbp),%xmm0
  40226b:	90                   	nop
  40226c:	0f 29 85 80 fb ff ff 	movaps %xmm0,-0x480(%rbp)

    EXTRACT(out, res);
  402273:	66 0f 6f 85 80 fb ff 	movdqa -0x480(%rbp),%xmm0
  40227a:	ff 
  40227b:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
  402282:	48 89 c7             	mov    %rax,%rdi
  402285:	e8 8e f4 ff ff       	call   401718 <extract_i32>

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  40228a:	48 8d 95 b0 fb ff ff 	lea    -0x450(%rbp),%rdx
  402291:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  402298:	48 89 d6             	mov    %rdx,%rsi
  40229b:	48 89 c7             	mov    %rax,%rdi
  40229e:	e8 57 f9 ff ff       	call   401bfa <to_string_i32>
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  4022a3:	48 8d 95 c0 fb ff ff 	lea    -0x440(%rbp),%rdx
  4022aa:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  4022b1:	48 89 d6             	mov    %rdx,%rsi
  4022b4:	48 89 c7             	mov    %rax,%rdi
  4022b7:	e8 3e f9 ff ff       	call   401bfa <to_string_i32>
    char out_s[255];
    TO_STRING_OUT(out_s, out);
  4022bc:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
  4022c3:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  4022ca:	48 89 d6             	mov    %rdx,%rsi
  4022cd:	48 89 c7             	mov    %rax,%rdi
  4022d0:	e8 25 f9 ff ff       	call   401bfa <to_string_i32>
    char con_s[255];
    TO_STRING_OUT(con_s, con);
  4022d5:	48 8d 95 d0 fb ff ff 	lea    -0x430(%rbp),%rdx
  4022dc:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4022e3:	48 89 d6             	mov    %rdx,%rsi
  4022e6:	48 89 c7             	mov    %rax,%rdi
  4022e9:	e8 0c f9 ff ff       	call   401bfa <to_string_i32>

#ifdef PRINT
#ifdef IMM8
    printf("%s\n "STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%s\n",in1_s, in2_s, IMM8, out_s);
#elifdef SRC2
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\n\ncon: %s\n",in1_s, in2_s, out_s, con_s);
  4022ee:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
  4022f5:	48 8d 8d f0 fd ff ff 	lea    -0x210(%rbp),%rcx
  4022fc:	48 8d 95 f0 fc ff ff 	lea    -0x310(%rbp),%rdx
  402303:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  40230a:	48 8d 3d c7 4d 00 00 	lea    0x4dc7(%rip),%rdi        # 4070d8 <_fini+0x314>
  402311:	49 89 f0             	mov    %rsi,%r8
  402314:	48 89 c6             	mov    %rax,%rsi
  402317:	b8 00 00 00 00       	mov    $0x0,%eax
  40231c:	e8 1f 04 00 00       	call   402740 <printf>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
  402321:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402326:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40232a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402331:	00 00 
  402333:	74 05                	je     40233a <main+0x1c6>
  402335:	e8 a6 03 00 00       	call   4026e0 <__stack_chk_fail>
  40233a:	c9                   	leave
  40233b:	c3                   	ret
  40233c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402340 <dummy>:
  402340:	f3 0f 1e fa          	endbr64
  402344:	c3                   	ret
  402345:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40234c:	00 00 00 
  40234f:	90                   	nop

0000000000402350 <dummy1>:
  402350:	f3 0f 1e fa          	endbr64
  402354:	c3                   	ret
  402355:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40235c:	00 00 00 
  40235f:	90                   	nop

0000000000402360 <__init_libc>:
  402360:	f3 0f 1e fa          	endbr64
  402364:	55                   	push   %rbp
  402365:	48 89 fa             	mov    %rdi,%rdx
  402368:	31 c0                	xor    %eax,%eax
  40236a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40236f:	48 89 e5             	mov    %rsp,%rbp
  402372:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402379:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402380:	f3 48 ab             	rep stos %rax,(%rdi)
  402383:	48 c7 c0 e8 a5 40 00 	mov    $0x40a5e8,%rax
  40238a:	48 89 10             	mov    %rdx,(%rax)
  40238d:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  402391:	0f 84 c9 01 00 00    	je     402560 <__init_libc+0x200>
  402397:	31 c0                	xor    %eax,%eax
  402399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023a0:	48 89 c1             	mov    %rax,%rcx
  4023a3:	48 83 c0 01          	add    $0x1,%rax
  4023a7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4023ac:	75 f2                	jne    4023a0 <__init_libc+0x40>
  4023ae:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4023b5:	00 
  4023b6:	48 01 d0             	add    %rdx,%rax
  4023b9:	48 89 05 a8 7d 00 00 	mov    %rax,0x7da8(%rip)        # 40a168 <__libc+0x8>
  4023c0:	48 8b 10             	mov    (%rax),%rdx
  4023c3:	48 83 c0 08          	add    $0x8,%rax
  4023c7:	48 85 d2             	test   %rdx,%rdx
  4023ca:	0f 84 a0 01 00 00    	je     402570 <__init_libc+0x210>
  4023d0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4023d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4023dc:	00 00 00 00 
  4023e0:	48 83 fa 25          	cmp    $0x25,%rdx
  4023e4:	77 0b                	ja     4023f1 <__init_libc+0x91>
  4023e6:	48 8b 08             	mov    (%rax),%rcx
  4023e9:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  4023f0:	ff 
  4023f1:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4023f5:	48 83 c0 10          	add    $0x10,%rax
  4023f9:	48 85 d2             	test   %rdx,%rdx
  4023fc:	75 e2                	jne    4023e0 <__init_libc+0x80>
  4023fe:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402405:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402409:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402410:	48 89 0d 31 7d 00 00 	mov    %rcx,0x7d31(%rip)        # 40a148 <__hwcap>
  402417:	48 85 c0             	test   %rax,%rax
  40241a:	74 07                	je     402423 <__init_libc+0xc3>
  40241c:	48 89 05 0d 7d 00 00 	mov    %rax,0x7d0d(%rip)        # 40a130 <__sysinfo>
  402423:	48 89 15 66 7d 00 00 	mov    %rdx,0x7d66(%rip)        # 40a190 <__libc+0x30>
  40242a:	48 85 f6             	test   %rsi,%rsi
  40242d:	0f 84 15 01 00 00    	je     402548 <__init_libc+0x1e8>
  402433:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  40243a:	48 c7 c1 40 a1 40 00 	mov    $0x40a140,%rcx
  402441:	48 89 30             	mov    %rsi,(%rax)
  402444:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402448:	48 89 31             	mov    %rsi,(%rcx)
  40244b:	0f b6 16             	movzbl (%rsi),%edx
  40244e:	84 d2                	test   %dl,%dl
  402450:	74 21                	je     402473 <__init_libc+0x113>
  402452:	0f 1f 00             	nopl   (%rax)
  402455:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40245c:	00 00 00 00 
  402460:	80 fa 2f             	cmp    $0x2f,%dl
  402463:	75 03                	jne    402468 <__init_libc+0x108>
  402465:	48 89 01             	mov    %rax,(%rcx)
  402468:	0f b6 10             	movzbl (%rax),%edx
  40246b:	48 83 c0 01          	add    $0x1,%rax
  40246f:	84 d2                	test   %dl,%dl
  402471:	75 ed                	jne    402460 <__init_libc+0x100>
  402473:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40247a:	e8 11 38 00 00       	call   405c90 <__init_tls>
  40247f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  402483:	e8 e8 01 00 00       	call   402670 <__init_ssp>
  402488:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  40248f:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  402496:	0f 84 84 00 00 00    	je     402520 <__init_libc+0x1c0>
  40249c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4024a0:	b8 07 00 00 00       	mov    $0x7,%eax
  4024a5:	be 03 00 00 00       	mov    $0x3,%esi
  4024aa:	31 d2                	xor    %edx,%edx
  4024ac:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4024b3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4024ba:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4024c1:	00 00 00 00 
  4024c5:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  4024cc:	00 00 00 
  4024cf:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  4024d6:	00 00 00 
  4024d9:	0f 05                	syscall
  4024db:	85 c0                	test   %eax,%eax
  4024dd:	79 01                	jns    4024e0 <__init_libc+0x180>
  4024df:	f4                   	hlt
  4024e0:	48 89 fa             	mov    %rdi,%rdx
  4024e3:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  4024ea:	be 02 80 00 00       	mov    $0x8002,%esi
  4024ef:	48 8d 3d 14 4c 00 00 	lea    0x4c14(%rip),%rdi        # 40710a <_fini+0x346>
  4024f6:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  4024fa:	74 0d                	je     402509 <__init_libc+0x1a9>
  4024fc:	b8 02 00 00 00       	mov    $0x2,%eax
  402501:	0f 05                	syscall
  402503:	48 85 c0             	test   %rax,%rax
  402506:	79 01                	jns    402509 <__init_libc+0x1a9>
  402508:	f4                   	hlt
  402509:	48 83 c2 08          	add    $0x8,%rdx
  40250d:	4c 39 c2             	cmp    %r8,%rdx
  402510:	75 e4                	jne    4024f6 <__init_libc+0x196>
  402512:	c6 05 49 7c 00 00 01 	movb   $0x1,0x7c49(%rip)        # 40a162 <__libc+0x2>
  402519:	c9                   	leave
  40251a:	c3                   	ret
  40251b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402520:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402527:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40252e:	0f 85 68 ff ff ff    	jne    40249c <__init_libc+0x13c>
  402534:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402539:	0f 85 5d ff ff ff    	jne    40249c <__init_libc+0x13c>
  40253f:	c9                   	leave
  402540:	c3                   	ret
  402541:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402548:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40254c:	48 85 c0             	test   %rax,%rax
  40254f:	74 2f                	je     402580 <__init_libc+0x220>
  402551:	48 89 c6             	mov    %rax,%rsi
  402554:	e9 da fe ff ff       	jmp    402433 <__init_libc+0xd3>
  402559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402560:	b8 08 00 00 00       	mov    $0x8,%eax
  402565:	e9 4c fe ff ff       	jmp    4023b6 <__init_libc+0x56>
  40256a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402570:	48 c7 05 cd 7b 00 00 	movq   $0x0,0x7bcd(%rip)        # 40a148 <__hwcap>
  402577:	00 00 00 00 
  40257b:	e9 a3 fe ff ff       	jmp    402423 <__init_libc+0xc3>
  402580:	48 c7 c0 38 a1 40 00 	mov    $0x40a138,%rax
  402587:	48 8d 3d bb 4b 00 00 	lea    0x4bbb(%rip),%rdi        # 407149 <_fini+0x385>
  40258e:	48 89 38             	mov    %rdi,(%rax)
  402591:	48 c7 c0 40 a1 40 00 	mov    $0x40a140,%rax
  402598:	48 89 38             	mov    %rdi,(%rax)
  40259b:	e9 d3 fe ff ff       	jmp    402473 <__init_libc+0x113>

00000000004025a0 <__libc_start_init>:
  4025a0:	f3 0f 1e fa          	endbr64
  4025a4:	55                   	push   %rbp
  4025a5:	48 89 e5             	mov    %rsp,%rbp
  4025a8:	41 54                	push   %r12
  4025aa:	53                   	push   %rbx
  4025ab:	e8 50 ea ff ff       	call   401000 <_init>
  4025b0:	48 c7 c3 c0 9f 40 00 	mov    $0x409fc0,%rbx
  4025b7:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  4025be:	4c 39 e3             	cmp    %r12,%rbx
  4025c1:	73 18                	jae    4025db <__libc_start_init+0x3b>
  4025c3:	66 90                	xchg   %ax,%ax
  4025c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4025cc:	00 00 00 00 
  4025d0:	ff 13                	call   *(%rbx)
  4025d2:	48 83 c3 08          	add    $0x8,%rbx
  4025d6:	4c 39 e3             	cmp    %r12,%rbx
  4025d9:	72 f5                	jb     4025d0 <__libc_start_init+0x30>
  4025db:	5b                   	pop    %rbx
  4025dc:	41 5c                	pop    %r12
  4025de:	5d                   	pop    %rbp
  4025df:	c3                   	ret

00000000004025e0 <libc_start_main_stage2>:
  4025e0:	f3 0f 1e fa          	endbr64
  4025e4:	55                   	push   %rbp
  4025e5:	48 63 c6             	movslq %esi,%rax
  4025e8:	48 89 e5             	mov    %rsp,%rbp
  4025eb:	41 56                	push   %r14
  4025ed:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  4025f2:	41 55                	push   %r13
  4025f4:	49 89 fd             	mov    %rdi,%r13
  4025f7:	41 54                	push   %r12
  4025f9:	49 89 d4             	mov    %rdx,%r12
  4025fc:	53                   	push   %rbx
  4025fd:	48 89 c3             	mov    %rax,%rbx
  402600:	e8 9b ff ff ff       	call   4025a0 <__libc_start_init>
  402605:	89 df                	mov    %ebx,%edi
  402607:	4c 89 f2             	mov    %r14,%rdx
  40260a:	4c 89 e6             	mov    %r12,%rsi
  40260d:	41 ff d5             	call   *%r13
  402610:	89 c7                	mov    %eax,%edi
  402612:	e8 29 ea ff ff       	call   401040 <exit>
  402617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40261e:	00 00 

0000000000402620 <__libc_start_main>:
  402620:	f3 0f 1e fa          	endbr64
  402624:	55                   	push   %rbp
  402625:	48 63 c6             	movslq %esi,%rax
  402628:	48 89 e5             	mov    %rsp,%rbp
  40262b:	41 54                	push   %r12
  40262d:	49 89 fc             	mov    %rdi,%r12
  402630:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402635:	53                   	push   %rbx
  402636:	48 89 c3             	mov    %rax,%rbx
  402639:	48 83 ec 10          	sub    $0x10,%rsp
  40263d:	48 8b 32             	mov    (%rdx),%rsi
  402640:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402644:	e8 17 fd ff ff       	call   402360 <__init_libc>
  402649:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 4025e0 <libc_start_main_stage2>
  402650:	89 de                	mov    %ebx,%esi
  402652:	4c 89 e7             	mov    %r12,%rdi
  402655:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402659:	48 83 c4 10          	add    $0x10,%rsp
  40265d:	5b                   	pop    %rbx
  40265e:	41 5c                	pop    %r12
  402660:	5d                   	pop    %rbp
  402661:	ff e0                	jmp    *%rax
  402663:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40266a:	00 00 00 
  40266d:	0f 1f 00             	nopl   (%rax)

0000000000402670 <__init_ssp>:
  402670:	f3 0f 1e fa          	endbr64
  402674:	55                   	push   %rbp
  402675:	48 89 e5             	mov    %rsp,%rbp
  402678:	48 83 ec 10          	sub    $0x10,%rsp
  40267c:	48 85 ff             	test   %rdi,%rdi
  40267f:	74 3f                	je     4026c0 <__init_ssp+0x50>
  402681:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  402688:	48 89 fe             	mov    %rdi,%rsi
  40268b:	ba 08 00 00 00       	mov    $0x8,%edx
  402690:	48 89 cf             	mov    %rcx,%rdi
  402693:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  402697:	e8 d1 33 00 00       	call   405a6d <memcpy>
  40269c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4026a0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4026a4:	48 8b 11             	mov    (%rcx),%rdx
  4026a7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4026ae:	00 00 
  4026b0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4026b4:	c9                   	leave
  4026b5:	c3                   	ret
  4026b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026bd:	00 00 00 
  4026c0:	48 c7 c1 28 a1 40 00 	mov    $0x40a128,%rcx
  4026c7:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  4026ce:	48 89 01             	mov    %rax,(%rcx)
  4026d1:	eb cd                	jmp    4026a0 <__init_ssp+0x30>
  4026d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026da:	00 00 00 
  4026dd:	0f 1f 00             	nopl   (%rax)

00000000004026e0 <__stack_chk_fail>:
  4026e0:	f3 0f 1e fa          	endbr64
  4026e4:	f4                   	hlt
  4026e5:	c3                   	ret
  4026e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026ed:	00 00 00 

00000000004026f0 <__funcs_on_exit>:
  4026f0:	f3 0f 1e fa          	endbr64
  4026f4:	c3                   	ret
  4026f5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026fc:	00 00 00 
  4026ff:	90                   	nop

0000000000402700 <__libc_exit_fini>:
  402700:	f3 0f 1e fa          	endbr64
  402704:	55                   	push   %rbp
  402705:	48 89 e5             	mov    %rsp,%rbp
  402708:	41 54                	push   %r12
  40270a:	49 c7 c4 c8 9f 40 00 	mov    $0x409fc8,%r12
  402711:	53                   	push   %rbx
  402712:	48 c7 c3 d0 9f 40 00 	mov    $0x409fd0,%rbx
  402719:	49 39 dc             	cmp    %rbx,%r12
  40271c:	73 0f                	jae    40272d <__libc_exit_fini+0x2d>
  40271e:	66 90                	xchg   %ax,%ax
  402720:	48 83 eb 08          	sub    $0x8,%rbx
  402724:	31 c0                	xor    %eax,%eax
  402726:	ff 13                	call   *(%rbx)
  402728:	49 39 dc             	cmp    %rbx,%r12
  40272b:	72 f3                	jb     402720 <__libc_exit_fini+0x20>
  40272d:	5b                   	pop    %rbx
  40272e:	31 c0                	xor    %eax,%eax
  402730:	41 5c                	pop    %r12
  402732:	5d                   	pop    %rbp
  402733:	e9 8c 46 00 00       	jmp    406dc4 <_fini>
  402738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40273f:	00 

0000000000402740 <printf>:
  402740:	f3 0f 1e fa          	endbr64
  402744:	55                   	push   %rbp
  402745:	48 89 e5             	mov    %rsp,%rbp
  402748:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40274f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402756:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40275d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402764:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40276b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402772:	84 c0                	test   %al,%al
  402774:	74 20                	je     402796 <printf+0x56>
  402776:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40277a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40277e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402782:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402786:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  40278a:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  40278e:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402792:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402796:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40279d:	00 00 
  40279f:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4027a6:	31 c0                	xor    %eax,%eax
  4027a8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4027ac:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4027b3:	48 89 fe             	mov    %rdi,%rsi
  4027b6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4027bd:	48 8d 3d 5c 78 00 00 	lea    0x785c(%rip),%rdi        # 40a020 <__stdout_FILE>
  4027c4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4027cb:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  4027d2:	00 00 00 
  4027d5:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4027dc:	00 00 00 
  4027df:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4027e6:	e8 e5 2f 00 00       	call   4057d0 <vfprintf>
  4027eb:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4027f2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4027f9:	00 00 
  4027fb:	75 02                	jne    4027ff <printf+0xbf>
  4027fd:	c9                   	leave
  4027fe:	c3                   	ret
  4027ff:	e8 dc fe ff ff       	call   4026e0 <__stack_chk_fail>
  402804:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40280b:	00 00 00 
  40280e:	66 90                	xchg   %ax,%ax

0000000000402810 <sprintf>:
  402810:	f3 0f 1e fa          	endbr64
  402814:	55                   	push   %rbp
  402815:	48 89 e5             	mov    %rsp,%rbp
  402818:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40281f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402826:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40282d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402834:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  40283b:	84 c0                	test   %al,%al
  40283d:	74 20                	je     40285f <sprintf+0x4f>
  40283f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402843:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402847:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  40284b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  40284f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402853:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402857:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  40285b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  40285f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402866:	00 00 
  402868:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40286f:	31 c0                	xor    %eax,%eax
  402871:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402875:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  40287c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402883:	00 00 00 
  402886:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40288d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402894:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40289b:	00 00 00 
  40289e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  4028a5:	e8 56 31 00 00       	call   405a00 <vsprintf>
  4028aa:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4028b1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4028b8:	00 00 
  4028ba:	75 02                	jne    4028be <sprintf+0xae>
  4028bc:	c9                   	leave
  4028bd:	c3                   	ret
  4028be:	e8 1d fe ff ff       	call   4026e0 <__stack_chk_fail>
  4028c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4028ca:	00 00 00 
  4028cd:	0f 1f 00             	nopl   (%rax)

00000000004028d0 <pop_arg>:
  4028d0:	83 ee 09             	sub    $0x9,%esi
  4028d3:	83 fe 11             	cmp    $0x11,%esi
  4028d6:	77 50                	ja     402928 <pop_arg+0x58>
  4028d8:	48 8d 0d 6d 48 00 00 	lea    0x486d(%rip),%rcx        # 40714c <_fini+0x388>
  4028df:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  4028e3:	48 01 c8             	add    %rcx,%rax
  4028e6:	3e ff e0             	notrack jmp *%rax
  4028e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4028f0:	8b 02                	mov    (%rdx),%eax
  4028f2:	83 f8 2f             	cmp    $0x2f,%eax
  4028f5:	77 39                	ja     402930 <pop_arg+0x60>
  4028f7:	89 c1                	mov    %eax,%ecx
  4028f9:	83 c0 08             	add    $0x8,%eax
  4028fc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402900:	89 02                	mov    %eax,(%rdx)
  402902:	48 8b 01             	mov    (%rcx),%rax
  402905:	48 89 07             	mov    %rax,(%rdi)
  402908:	c3                   	ret
  402909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402910:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402914:	48 83 c0 0f          	add    $0xf,%rax
  402918:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40291c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402920:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402924:	db 28                	fldt   (%rax)
  402926:	db 3f                	fstpt  (%rdi)
  402928:	c3                   	ret
  402929:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402930:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402934:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402938:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40293c:	48 8b 01             	mov    (%rcx),%rax
  40293f:	48 89 07             	mov    %rax,(%rdi)
  402942:	c3                   	ret
  402943:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402948:	8b 02                	mov    (%rdx),%eax
  40294a:	83 f8 2f             	cmp    $0x2f,%eax
  40294d:	0f 87 55 01 00 00    	ja     402aa8 <pop_arg+0x1d8>
  402953:	89 c1                	mov    %eax,%ecx
  402955:	83 c0 08             	add    $0x8,%eax
  402958:	48 03 4a 10          	add    0x10(%rdx),%rcx
  40295c:	89 02                	mov    %eax,(%rdx)
  40295e:	0f b7 01             	movzwl (%rcx),%eax
  402961:	48 89 07             	mov    %rax,(%rdi)
  402964:	c3                   	ret
  402965:	0f 1f 00             	nopl   (%rax)
  402968:	8b 42 04             	mov    0x4(%rdx),%eax
  40296b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402970:	0f 87 1a 01 00 00    	ja     402a90 <pop_arg+0x1c0>
  402976:	89 c1                	mov    %eax,%ecx
  402978:	83 c0 10             	add    $0x10,%eax
  40297b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  40297f:	89 42 04             	mov    %eax,0x4(%rdx)
  402982:	dd 01                	fldl   (%rcx)
  402984:	db 3f                	fstpt  (%rdi)
  402986:	c3                   	ret
  402987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40298e:	00 00 
  402990:	8b 02                	mov    (%rdx),%eax
  402992:	83 f8 2f             	cmp    $0x2f,%eax
  402995:	0f 87 dd 00 00 00    	ja     402a78 <pop_arg+0x1a8>
  40299b:	89 c1                	mov    %eax,%ecx
  40299d:	83 c0 08             	add    $0x8,%eax
  4029a0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4029a4:	89 02                	mov    %eax,(%rdx)
  4029a6:	48 63 01             	movslq (%rcx),%rax
  4029a9:	48 89 07             	mov    %rax,(%rdi)
  4029ac:	c3                   	ret
  4029ad:	0f 1f 00             	nopl   (%rax)
  4029b0:	8b 02                	mov    (%rdx),%eax
  4029b2:	83 f8 2f             	cmp    $0x2f,%eax
  4029b5:	0f 87 a5 00 00 00    	ja     402a60 <pop_arg+0x190>
  4029bb:	89 c1                	mov    %eax,%ecx
  4029bd:	83 c0 08             	add    $0x8,%eax
  4029c0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4029c4:	89 02                	mov    %eax,(%rdx)
  4029c6:	8b 01                	mov    (%rcx),%eax
  4029c8:	48 89 07             	mov    %rax,(%rdi)
  4029cb:	c3                   	ret
  4029cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4029d0:	8b 02                	mov    (%rdx),%eax
  4029d2:	83 f8 2f             	cmp    $0x2f,%eax
  4029d5:	77 79                	ja     402a50 <pop_arg+0x180>
  4029d7:	89 c1                	mov    %eax,%ecx
  4029d9:	83 c0 08             	add    $0x8,%eax
  4029dc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4029e0:	89 02                	mov    %eax,(%rdx)
  4029e2:	0f b6 01             	movzbl (%rcx),%eax
  4029e5:	48 89 07             	mov    %rax,(%rdi)
  4029e8:	c3                   	ret
  4029e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029f0:	8b 02                	mov    (%rdx),%eax
  4029f2:	83 f8 2f             	cmp    $0x2f,%eax
  4029f5:	77 49                	ja     402a40 <pop_arg+0x170>
  4029f7:	89 c1                	mov    %eax,%ecx
  4029f9:	83 c0 08             	add    $0x8,%eax
  4029fc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a00:	89 02                	mov    %eax,(%rdx)
  402a02:	48 0f be 01          	movsbq (%rcx),%rax
  402a06:	48 89 07             	mov    %rax,(%rdi)
  402a09:	c3                   	ret
  402a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402a10:	8b 02                	mov    (%rdx),%eax
  402a12:	83 f8 2f             	cmp    $0x2f,%eax
  402a15:	77 19                	ja     402a30 <pop_arg+0x160>
  402a17:	89 c1                	mov    %eax,%ecx
  402a19:	83 c0 08             	add    $0x8,%eax
  402a1c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a20:	89 02                	mov    %eax,(%rdx)
  402a22:	48 0f bf 01          	movswq (%rcx),%rax
  402a26:	48 89 07             	mov    %rax,(%rdi)
  402a29:	c3                   	ret
  402a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402a30:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a34:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a38:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a3c:	eb e4                	jmp    402a22 <pop_arg+0x152>
  402a3e:	66 90                	xchg   %ax,%ax
  402a40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a4c:	eb b4                	jmp    402a02 <pop_arg+0x132>
  402a4e:	66 90                	xchg   %ax,%ax
  402a50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a5c:	eb 84                	jmp    4029e2 <pop_arg+0x112>
  402a5e:	66 90                	xchg   %ax,%ax
  402a60:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a64:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a68:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a6c:	e9 55 ff ff ff       	jmp    4029c6 <pop_arg+0xf6>
  402a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a78:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a7c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a80:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a84:	e9 1d ff ff ff       	jmp    4029a6 <pop_arg+0xd6>
  402a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a90:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a94:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a98:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a9c:	e9 e1 fe ff ff       	jmp    402982 <pop_arg+0xb2>
  402aa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402aa8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402aac:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402ab0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402ab4:	e9 a5 fe ff ff       	jmp    40295e <pop_arg+0x8e>
  402ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402ac0 <pad.part.0>:
  402ac0:	55                   	push   %rbp
  402ac1:	29 ca                	sub    %ecx,%edx
  402ac3:	40 0f be f6          	movsbl %sil,%esi
  402ac7:	48 89 e5             	mov    %rsp,%rbp
  402aca:	41 56                	push   %r14
  402acc:	41 55                	push   %r13
  402ace:	41 54                	push   %r12
  402ad0:	4c 63 e2             	movslq %edx,%r12
  402ad3:	ba 00 01 00 00       	mov    $0x100,%edx
  402ad8:	53                   	push   %rbx
  402ad9:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402ae0:	41 39 d4             	cmp    %edx,%r12d
  402ae3:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402aea:	00 00 
  402aec:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402af0:	49 89 fd             	mov    %rdi,%r13
  402af3:	49 0f 4e d4          	cmovle %r12,%rdx
  402af7:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402afe:	e8 9c 2f 00 00       	call   405a9f <memset>
  402b03:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402b0a:	0f 8e 88 00 00 00    	jle    402b98 <pad.part.0+0xd8>
  402b10:	41 8b 45 00          	mov    0x0(%r13),%eax
  402b14:	44 89 e3             	mov    %r12d,%ebx
  402b17:	eb 15                	jmp    402b2e <pad.part.0+0x6e>
  402b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b20:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402b26:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402b2c:	76 2a                	jbe    402b58 <pad.part.0+0x98>
  402b2e:	a8 20                	test   $0x20,%al
  402b30:	75 ee                	jne    402b20 <pad.part.0+0x60>
  402b32:	4c 89 ea             	mov    %r13,%rdx
  402b35:	be 00 01 00 00       	mov    $0x100,%esi
  402b3a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402b41:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402b47:	e8 14 38 00 00       	call   406360 <__fwritex>
  402b4c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402b50:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402b56:	77 d6                	ja     402b2e <pad.part.0+0x6e>
  402b58:	45 0f b6 e4          	movzbl %r12b,%r12d
  402b5c:	a8 20                	test   $0x20,%al
  402b5e:	74 20                	je     402b80 <pad.part.0+0xc0>
  402b60:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402b64:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402b6b:	00 00 
  402b6d:	75 2f                	jne    402b9e <pad.part.0+0xde>
  402b6f:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402b76:	5b                   	pop    %rbx
  402b77:	41 5c                	pop    %r12
  402b79:	41 5d                	pop    %r13
  402b7b:	41 5e                	pop    %r14
  402b7d:	5d                   	pop    %rbp
  402b7e:	c3                   	ret
  402b7f:	90                   	nop
  402b80:	49 63 f4             	movslq %r12d,%rsi
  402b83:	4c 89 ea             	mov    %r13,%rdx
  402b86:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402b8d:	e8 ce 37 00 00       	call   406360 <__fwritex>
  402b92:	eb cc                	jmp    402b60 <pad.part.0+0xa0>
  402b94:	0f 1f 40 00          	nopl   0x0(%rax)
  402b98:	41 8b 45 00          	mov    0x0(%r13),%eax
  402b9c:	eb be                	jmp    402b5c <pad.part.0+0x9c>
  402b9e:	e8 3d fb ff ff       	call   4026e0 <__stack_chk_fail>
  402ba3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402baa:	00 00 00 
  402bad:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402bb4:	00 00 00 
  402bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402bbe:	00 00 

0000000000402bc0 <fmt_fp>:
  402bc0:	55                   	push   %rbp
  402bc1:	48 89 e5             	mov    %rsp,%rbp
  402bc4:	41 57                	push   %r15
  402bc6:	41 56                	push   %r14
  402bc8:	41 55                	push   %r13
  402bca:	41 54                	push   %r12
  402bcc:	53                   	push   %rbx
  402bcd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bd4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bd9:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402be0:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402be7:	41 89 d7             	mov    %edx,%r15d
  402bea:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402bf0:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402bf6:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402bfd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c04:	00 00 
  402c06:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402c0a:	31 c0                	xor    %eax,%eax
  402c0c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402c13:	00 00 00 
  402c16:	ff 75 18             	push   0x18(%rbp)
  402c19:	ff 75 10             	push   0x10(%rbp)
  402c1c:	e8 ef 33 00 00       	call   406010 <__signbitl>
  402c21:	41 5d                	pop    %r13
  402c23:	41 5e                	pop    %r14
  402c25:	85 c0                	test   %eax,%eax
  402c27:	0f 84 8b 00 00 00    	je     402cb8 <fmt_fp+0xf8>
  402c2d:	db 6d 10             	fldt   0x10(%rbp)
  402c30:	48 8d 05 dd 44 00 00 	lea    0x44dd(%rip),%rax        # 407114 <_fini+0x350>
  402c37:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402c3e:	00 00 00 
  402c41:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402c48:	d9 e0                	fchs
  402c4a:	db 7d 10             	fstpt  0x10(%rbp)
  402c4d:	ff 75 18             	push   0x18(%rbp)
  402c50:	ff 75 10             	push   0x10(%rbp)
  402c53:	e8 48 33 00 00       	call   405fa0 <__fpclassifyl>
  402c58:	5b                   	pop    %rbx
  402c59:	41 5c                	pop    %r12
  402c5b:	83 f8 01             	cmp    $0x1,%eax
  402c5e:	0f 8e bc 04 00 00    	jle    403120 <fmt_fp+0x560>
  402c64:	ff 75 18             	push   0x18(%rbp)
  402c67:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402c6e:	ff 75 10             	push   0x10(%rbp)
  402c71:	e8 ba 33 00 00       	call   406030 <frexpl>
  402c76:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402c7d:	41 5a                	pop    %r10
  402c7f:	d8 c0                	fadd   %st(0),%st
  402c81:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402c88:	41 5b                	pop    %r11
  402c8a:	41 83 ce 20          	or     $0x20,%r14d
  402c8e:	d9 ee                	fldz
  402c90:	d9 c9                	fxch   %st(1)
  402c92:	db e9                	fucomi %st(1),%st
  402c94:	dd d9                	fstp   %st(1)
  402c96:	7a 58                	jp     402cf0 <fmt_fp+0x130>
  402c98:	75 56                	jne    402cf0 <fmt_fp+0x130>
  402c9a:	41 83 fe 61          	cmp    $0x61,%r14d
  402c9e:	0f 84 37 06 00 00    	je     4032db <fmt_fp+0x71b>
  402ca4:	45 85 ff             	test   %r15d,%r15d
  402ca7:	0f 88 84 13 00 00    	js     404031 <fmt_fp+0x1471>
  402cad:	40 0f 95 c6          	setne  %sil
  402cb1:	eb 65                	jmp    402d18 <fmt_fp+0x158>
  402cb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402cb8:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402cbe:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402cc4:	0f 84 2c 04 00 00    	je     4030f6 <fmt_fp+0x536>
  402cca:	48 8d 05 46 44 00 00 	lea    0x4446(%rip),%rax        # 407117 <_fini+0x353>
  402cd1:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402cd8:	00 00 00 
  402cdb:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402ce2:	e9 66 ff ff ff       	jmp    402c4d <fmt_fp+0x8d>
  402ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402cee:	00 00 
  402cf0:	41 83 fe 61          	cmp    $0x61,%r14d
  402cf4:	0f 84 d6 05 00 00    	je     4032d0 <fmt_fp+0x710>
  402cfa:	45 85 ff             	test   %r15d,%r15d
  402cfd:	0f 88 3e 13 00 00    	js     404041 <fmt_fp+0x1481>
  402d03:	40 0f 95 c6          	setne  %sil
  402d07:	41 83 e9 1d          	sub    $0x1d,%r9d
  402d0b:	d8 0d 93 47 00 00    	fmuls  0x4793(%rip)        # 4074a4 <states+0x1e4>
  402d11:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402d18:	45 85 c9             	test   %r9d,%r9d
  402d1b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402d22:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402d29:	d9 05 79 47 00 00    	flds   0x4779(%rip)        # 4074a8 <states+0x1e8>
  402d2f:	d9 c9                	fxch   %st(1)
  402d31:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402d37:	48 0f 49 c2          	cmovns %rdx,%rax
  402d3b:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402d42:	48 89 c3             	mov    %rax,%rbx
  402d45:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402d4c:	80 cc 0c             	or     $0xc,%ah
  402d4f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402d56:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402d5d:	00 00 
  402d5f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d66:	00 00 00 00 
  402d6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d71:	00 00 00 00 
  402d75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402d7c:	00 00 00 00 
  402d80:	d9 c0                	fld    %st(0)
  402d82:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402d88:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402d8e:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402d94:	48 83 c3 04          	add    $0x4,%rbx
  402d98:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402d9f:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402da2:	89 c0                	mov    %eax,%eax
  402da4:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402dab:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402db1:	de e9                	fsubrp %st,%st(1)
  402db3:	d8 c9                	fmul   %st(1),%st
  402db5:	d9 ee                	fldz
  402db7:	d9 c9                	fxch   %st(1)
  402db9:	db e9                	fucomi %st(1),%st
  402dbb:	dd d9                	fstp   %st(1)
  402dbd:	7a c1                	jp     402d80 <fmt_fp+0x1c0>
  402dbf:	75 bf                	jne    402d80 <fmt_fp+0x1c0>
  402dc1:	dd d8                	fstp   %st(0)
  402dc3:	dd d8                	fstp   %st(0)
  402dc5:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  402dcc:	45 85 c9             	test   %r9d,%r9d
  402dcf:	0f 8e b0 00 00 00    	jle    402e85 <fmt_fp+0x2c5>
  402dd5:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  402ddc:	b8 44 00 
  402ddf:	90                   	nop
  402de0:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  402de5:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  402de9:	41 39 c9             	cmp    %ecx,%r9d
  402dec:	41 0f 4e c9          	cmovle %r9d,%ecx
  402df0:	4d 39 e2             	cmp    %r12,%r10
  402df3:	72 4b                	jb     402e40 <fmt_fp+0x280>
  402df5:	31 c0                	xor    %eax,%eax
  402df7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402dfe:	00 00 
  402e00:	45 8b 02             	mov    (%r10),%r8d
  402e03:	49 83 ea 04          	sub    $0x4,%r10
  402e07:	49 d3 e0             	shl    %cl,%r8
  402e0a:	49 01 c0             	add    %rax,%r8
  402e0d:	4c 89 c2             	mov    %r8,%rdx
  402e10:	48 c1 ea 09          	shr    $0x9,%rdx
  402e14:	48 89 d0             	mov    %rdx,%rax
  402e17:	48 f7 e7             	mul    %rdi
  402e1a:	48 c1 ea 0b          	shr    $0xb,%rdx
  402e1e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  402e25:	49 29 c0             	sub    %rax,%r8
  402e28:	89 d0                	mov    %edx,%eax
  402e2a:	45 89 42 04          	mov    %r8d,0x4(%r10)
  402e2e:	4d 39 e2             	cmp    %r12,%r10
  402e31:	73 cd                	jae    402e00 <fmt_fp+0x240>
  402e33:	85 d2                	test   %edx,%edx
  402e35:	74 09                	je     402e40 <fmt_fp+0x280>
  402e37:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  402e3c:	49 83 ec 04          	sub    $0x4,%r12
  402e40:	49 39 dc             	cmp    %rbx,%r12
  402e43:	72 24                	jb     402e69 <fmt_fp+0x2a9>
  402e45:	eb 2b                	jmp    402e72 <fmt_fp+0x2b2>
  402e47:	0f 1f 00             	nopl   (%rax)
  402e4a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e51:	00 00 00 00 
  402e55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402e5c:	00 00 00 00 
  402e60:	48 83 eb 04          	sub    $0x4,%rbx
  402e64:	49 39 dc             	cmp    %rbx,%r12
  402e67:	73 09                	jae    402e72 <fmt_fp+0x2b2>
  402e69:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  402e6d:	45 85 c0             	test   %r8d,%r8d
  402e70:	74 ee                	je     402e60 <fmt_fp+0x2a0>
  402e72:	41 29 c9             	sub    %ecx,%r9d
  402e75:	45 85 c9             	test   %r9d,%r9d
  402e78:	0f 8f 62 ff ff ff    	jg     402de0 <fmt_fp+0x220>
  402e7e:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402e85:	45 85 c9             	test   %r9d,%r9d
  402e88:	0f 84 35 01 00 00    	je     402fc3 <fmt_fp+0x403>
  402e8e:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  402e92:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  402e99:	41 89 f0             	mov    %esi,%r8d
  402e9c:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  402ea3:	48 c1 e8 21          	shr    $0x21,%rax
  402ea7:	48 8d 78 01          	lea    0x1(%rax),%rdi
  402eab:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  402eb2:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  402eb9:	00 
  402eba:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  402ec1:	0f 1f 40 00          	nopl   0x0(%rax)
  402ec5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ecc:	00 00 00 00 
  402ed0:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  402ed4:	0f 8d d6 06 00 00    	jge    4035b0 <fmt_fp+0x9f0>
  402eda:	41 83 c1 09          	add    $0x9,%r9d
  402ede:	b9 09 00 00 00       	mov    $0x9,%ecx
  402ee3:	49 39 dc             	cmp    %rbx,%r12
  402ee6:	0f 83 d5 06 00 00    	jae    4035c1 <fmt_fp+0xa01>
  402eec:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  402ef2:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  402ef9:	4c 89 e6             	mov    %r12,%rsi
  402efc:	31 d2                	xor    %edx,%edx
  402efe:	41 d3 e2             	shl    %cl,%r10d
  402f01:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  402f07:	41 83 ea 01          	sub    $0x1,%r10d
  402f0b:	41 d3 ff             	sar    %cl,%r15d
  402f0e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402f14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f1b:	00 00 00 00 
  402f1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f26:	00 00 00 00 
  402f2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f31:	00 00 00 00 
  402f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402f3c:	00 00 00 00 
  402f40:	8b 06                	mov    (%rsi),%eax
  402f42:	48 83 c6 04          	add    $0x4,%rsi
  402f46:	41 89 c1             	mov    %eax,%r9d
  402f49:	44 21 d0             	and    %r10d,%eax
  402f4c:	41 0f af c7          	imul   %r15d,%eax
  402f50:	41 d3 e9             	shr    %cl,%r9d
  402f53:	41 01 d1             	add    %edx,%r9d
  402f56:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  402f5a:	89 c2                	mov    %eax,%edx
  402f5c:	48 39 de             	cmp    %rbx,%rsi
  402f5f:	72 df                	jb     402f40 <fmt_fp+0x380>
  402f61:	41 8b 0c 24          	mov    (%r12),%ecx
  402f65:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  402f6a:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  402f71:	85 c9                	test   %ecx,%ecx
  402f73:	49 0f 45 c4          	cmovne %r12,%rax
  402f77:	85 d2                	test   %edx,%edx
  402f79:	74 06                	je     402f81 <fmt_fp+0x3c1>
  402f7b:	89 13                	mov    %edx,(%rbx)
  402f7d:	48 83 c3 04          	add    $0x4,%rbx
  402f81:	49 89 c4             	mov    %rax,%r12
  402f84:	41 83 fe 66          	cmp    $0x66,%r14d
  402f88:	0f 84 52 06 00 00    	je     4035e0 <fmt_fp+0xa20>
  402f8e:	48 89 da             	mov    %rbx,%rdx
  402f91:	48 29 c2             	sub    %rax,%rdx
  402f94:	4c 01 d8             	add    %r11,%rax
  402f97:	48 c1 fa 02          	sar    $0x2,%rdx
  402f9b:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  402fa2:	48 0f 4f d8          	cmovg  %rax,%rbx
  402fa6:	45 85 c9             	test   %r9d,%r9d
  402fa9:	0f 85 21 ff ff ff    	jne    402ed0 <fmt_fp+0x310>
  402faf:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402fb6:	00 00 00 
  402fb9:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  402fc0:	44 89 c6             	mov    %r8d,%esi
  402fc3:	49 39 dc             	cmp    %rbx,%r12
  402fc6:	0f 83 5d 0b 00 00    	jae    403b29 <fmt_fp+0xf69>
  402fcc:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  402fd3:	41 83 fe 66          	cmp    $0x66,%r14d
  402fd7:	41 8b 14 24          	mov    (%r12),%edx
  402fdb:	0f 95 c1             	setne  %cl
  402fde:	4c 29 e0             	sub    %r12,%rax
  402fe1:	48 c1 f8 02          	sar    $0x2,%rax
  402fe5:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  402fe8:	b8 0a 00 00 00       	mov    $0xa,%eax
  402fed:	83 fa 09             	cmp    $0x9,%edx
  402ff0:	76 1a                	jbe    40300c <fmt_fp+0x44c>
  402ff2:	0f 1f 00             	nopl   (%rax)
  402ff5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402ffc:	00 00 00 00 
  403000:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403003:	83 c7 01             	add    $0x1,%edi
  403006:	01 c0                	add    %eax,%eax
  403008:	39 c2                	cmp    %eax,%edx
  40300a:	73 f4                	jae    403000 <fmt_fp+0x440>
  40300c:	31 d2                	xor    %edx,%edx
  40300e:	84 c9                	test   %cl,%cl
  403010:	44 89 f8             	mov    %r15d,%eax
  403013:	0f 45 d7             	cmovne %edi,%edx
  403016:	29 d0                	sub    %edx,%eax
  403018:	31 d2                	xor    %edx,%edx
  40301a:	41 83 fe 67          	cmp    $0x67,%r14d
  40301e:	0f 94 c2             	sete   %dl
  403021:	21 f2                	and    %esi,%edx
  403023:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  40302a:	29 d0                	sub    %edx,%eax
  40302c:	48 89 da             	mov    %rbx,%rdx
  40302f:	48 29 f2             	sub    %rsi,%rdx
  403032:	48 63 c8             	movslq %eax,%rcx
  403035:	48 c1 fa 02          	sar    $0x2,%rdx
  403039:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  40303e:	48 39 d1             	cmp    %rdx,%rcx
  403041:	0f 8d 0f 06 00 00    	jge    403656 <fmt_fp+0xa96>
  403047:	05 00 40 02 00       	add    $0x24000,%eax
  40304c:	48 63 d0             	movslq %eax,%rdx
  40304f:	89 c1                	mov    %eax,%ecx
  403051:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403058:	c1 f9 1f             	sar    $0x1f,%ecx
  40305b:	48 c1 fa 21          	sar    $0x21,%rdx
  40305f:	29 ca                	sub    %ecx,%edx
  403061:	48 63 ca             	movslq %edx,%rcx
  403064:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  40306b:	ff 
  40306c:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  40306f:	29 c8                	sub    %ecx,%eax
  403071:	89 c2                	mov    %eax,%edx
  403073:	8d 40 01             	lea    0x1(%rax),%eax
  403076:	83 fa 08             	cmp    $0x8,%edx
  403079:	0f 84 df 13 00 00    	je     40445e <fmt_fp+0x189e>
  40307f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  403084:	90                   	nop
  403085:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40308c:	00 00 00 00 
  403090:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  403093:	83 c0 01             	add    $0x1,%eax
  403096:	01 c9                	add    %ecx,%ecx
  403098:	83 f8 09             	cmp    $0x9,%eax
  40309b:	75 f3                	jne    403090 <fmt_fp+0x4d0>
  40309d:	41 89 cb             	mov    %ecx,%r11d
  4030a0:	44 8b 16             	mov    (%rsi),%r10d
  4030a3:	31 d2                	xor    %edx,%edx
  4030a5:	44 89 d0             	mov    %r10d,%eax
  4030a8:	41 f7 f3             	div    %r11d
  4030ab:	41 89 d1             	mov    %edx,%r9d
  4030ae:	85 d2                	test   %edx,%edx
  4030b0:	0f 85 35 05 00 00    	jne    4035eb <fmt_fp+0xa2b>
  4030b6:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  4030ba:	48 89 da             	mov    %rbx,%rdx
  4030bd:	4c 39 c3             	cmp    %r8,%rbx
  4030c0:	0f 84 89 05 00 00    	je     40364f <fmt_fp+0xa8f>
  4030c6:	a8 01                	test   $0x1,%al
  4030c8:	0f 85 36 10 00 00    	jne    404104 <fmt_fp+0x1544>
  4030ce:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  4030d4:	75 0f                	jne    4030e5 <fmt_fp+0x525>
  4030d6:	49 39 f4             	cmp    %rsi,%r12
  4030d9:	73 0a                	jae    4030e5 <fmt_fp+0x525>
  4030db:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  4030df:	0f 85 1f 10 00 00    	jne    404104 <fmt_fp+0x1544>
  4030e5:	d9 05 a9 43 00 00    	flds   0x43a9(%rip)        # 407494 <states+0x1d4>
  4030eb:	d9 05 a7 43 00 00    	flds   0x43a7(%rip)        # 407498 <states+0x1d8>
  4030f1:	e9 1d 05 00 00       	jmp    403613 <fmt_fp+0xa53>
  4030f6:	48 8d 1d 18 40 00 00 	lea    0x4018(%rip),%rbx        # 407115 <_fini+0x351>
  4030fd:	83 e7 01             	and    $0x1,%edi
  403100:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403104:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40310a:	48 0f 44 c3          	cmove  %rbx,%rax
  40310e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403115:	e9 33 fb ff ff       	jmp    402c4d <fmt_fp+0x8d>
  40311a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403120:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403127:	0f 84 94 00 00 00    	je     4031c1 <fmt_fp+0x601>
  40312d:	db 6d 10             	fldt   0x10(%rbp)
  403130:	4c 8d 25 f4 3f 00 00 	lea    0x3ff4(%rip),%r12        # 40712b <_fini+0x367>
  403137:	48 8d 05 f5 3f 00 00 	lea    0x3ff5(%rip),%rax        # 407133 <_fini+0x36f>
  40313e:	df e8                	fucomip %st(0),%st
  403140:	4c 0f 4b e0          	cmovnp %rax,%r12
  403144:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40314a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403150:	8d 58 03             	lea    0x3(%rax),%ebx
  403153:	39 d3                	cmp    %edx,%ebx
  403155:	41 0f 9d c5          	setge  %r13b
  403159:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  403160:	75 09                	jne    40316b <fmt_fp+0x5ab>
  403162:	45 84 ed             	test   %r13b,%r13b
  403165:	0f 84 0a 01 00 00    	je     403275 <fmt_fp+0x6b5>
  40316b:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403172:	f6 00 20             	testb  $0x20,(%rax)
  403175:	0f 84 1d 01 00 00    	je     403298 <fmt_fp+0x6d8>
  40317b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403181:	80 f4 20             	xor    $0x20,%ah
  403184:	a9 00 20 01 00       	test   $0x12000,%eax
  403189:	75 09                	jne    403194 <fmt_fp+0x5d4>
  40318b:	45 84 ed             	test   %r13b,%r13b
  40318e:	0f 84 c3 00 00 00    	je     403257 <fmt_fp+0x697>
  403194:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  40319a:	39 c3                	cmp    %eax,%ebx
  40319c:	0f 4d c3             	cmovge %ebx,%eax
  40319f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4031a3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4031aa:	00 00 
  4031ac:	0f 85 4d 13 00 00    	jne    4044ff <fmt_fp+0x193f>
  4031b2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4031b6:	5b                   	pop    %rbx
  4031b7:	41 5c                	pop    %r12
  4031b9:	41 5d                	pop    %r13
  4031bb:	41 5e                	pop    %r14
  4031bd:	41 5f                	pop    %r15
  4031bf:	5d                   	pop    %rbp
  4031c0:	c3                   	ret
  4031c1:	db 6d 10             	fldt   0x10(%rbp)
  4031c4:	4c 8d 25 64 3f 00 00 	lea    0x3f64(%rip),%r12        # 40712f <_fini+0x36b>
  4031cb:	48 8d 05 55 3f 00 00 	lea    0x3f55(%rip),%rax        # 407127 <_fini+0x363>
  4031d2:	df e8                	fucomip %st(0),%st
  4031d4:	4c 0f 4b e0          	cmovnp %rax,%r12
  4031d8:	e9 67 ff ff ff       	jmp    403144 <fmt_fp+0x584>
  4031dd:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4031e4:	f6 07 20             	testb  $0x20,(%rdi)
  4031e7:	0f 84 11 03 00 00    	je     4034fe <fmt_fp+0x93e>
  4031ed:	45 29 f7             	sub    %r14d,%r15d
  4031f0:	45 85 ff             	test   %r15d,%r15d
  4031f3:	7e 9f                	jle    403194 <fmt_fp+0x5d4>
  4031f5:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4031fb:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403202:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403209:	31 c9                	xor    %ecx,%ecx
  40320b:	44 89 fa             	mov    %r15d,%edx
  40320e:	be 30 00 00 00       	mov    $0x30,%esi
  403213:	e8 a8 f8 ff ff       	call   402ac0 <pad.part.0>
  403218:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40321f:	f6 00 20             	testb  $0x20,(%rax)
  403222:	75 12                	jne    403236 <fmt_fp+0x676>
  403224:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  40322b:	48 89 c2             	mov    %rax,%rdx
  40322e:	4c 89 e6             	mov    %r12,%rsi
  403231:	e8 2a 31 00 00       	call   406360 <__fwritex>
  403236:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  40323c:	80 f4 20             	xor    $0x20,%ah
  40323f:	a9 00 20 01 00       	test   $0x12000,%eax
  403244:	0f 85 4a ff ff ff    	jne    403194 <fmt_fp+0x5d4>
  40324a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403251:	0f 85 3d ff ff ff    	jne    403194 <fmt_fp+0x5d4>
  403257:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40325d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403264:	89 d9                	mov    %ebx,%ecx
  403266:	be 20 00 00 00       	mov    $0x20,%esi
  40326b:	e8 50 f8 ff ff       	call   402ac0 <pad.part.0>
  403270:	e9 1f ff ff ff       	jmp    403194 <fmt_fp+0x5d4>
  403275:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40327c:	89 d9                	mov    %ebx,%ecx
  40327e:	be 20 00 00 00       	mov    $0x20,%esi
  403283:	e8 38 f8 ff ff       	call   402ac0 <pad.part.0>
  403288:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40328f:	f6 00 20             	testb  $0x20,(%rax)
  403292:	0f 85 e3 fe ff ff    	jne    40317b <fmt_fp+0x5bb>
  403298:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  40329f:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4032a6:	49 89 c6             	mov    %rax,%r14
  4032a9:	48 89 c2             	mov    %rax,%rdx
  4032ac:	e8 af 30 00 00       	call   406360 <__fwritex>
  4032b1:	41 f6 06 20          	testb  $0x20,(%r14)
  4032b5:	0f 85 c0 fe ff ff    	jne    40317b <fmt_fp+0x5bb>
  4032bb:	4c 89 f2             	mov    %r14,%rdx
  4032be:	be 03 00 00 00       	mov    $0x3,%esi
  4032c3:	4c 89 e7             	mov    %r12,%rdi
  4032c6:	e8 95 30 00 00       	call   406360 <__fwritex>
  4032cb:	e9 ab fe ff ff       	jmp    40317b <fmt_fp+0x5bb>
  4032d0:	41 83 e9 01          	sub    $0x1,%r9d
  4032d4:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  4032db:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4032e2:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  4032e9:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  4032ef:	48 8d 47 09          	lea    0x9(%rdi),%rax
  4032f3:	48 0f 44 c7          	cmove  %rdi,%rax
  4032f7:	83 c3 02             	add    $0x2,%ebx
  4032fa:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403301:	41 83 ff 0e          	cmp    $0xe,%r15d
  403305:	0f 86 28 0c 00 00    	jbe    403f33 <fmt_fp+0x1373>
  40330b:	d9 05 8f 41 00 00    	flds   0x418f(%rip)        # 4074a0 <states+0x1e0>
  403311:	45 85 c9             	test   %r9d,%r9d
  403314:	0f 84 54 11 00 00    	je     40446e <fmt_fp+0x18ae>
  40331a:	44 89 c9             	mov    %r9d,%ecx
  40331d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403321:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  403328:	cc cc cc 
  40332b:	f7 d9                	neg    %ecx
  40332d:	4d 89 e8             	mov    %r13,%r8
  403330:	41 0f 48 c9          	cmovs  %r9d,%ecx
  403334:	48 63 c9             	movslq %ecx,%rcx
  403337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40333e:	00 00 
  403340:	48 89 c8             	mov    %rcx,%rax
  403343:	4c 89 c7             	mov    %r8,%rdi
  403346:	49 83 e8 01          	sub    $0x1,%r8
  40334a:	48 f7 e6             	mul    %rsi
  40334d:	48 89 c8             	mov    %rcx,%rax
  403350:	48 c1 ea 03          	shr    $0x3,%rdx
  403354:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403358:	4d 01 d2             	add    %r10,%r10
  40335b:	4c 29 d0             	sub    %r10,%rax
  40335e:	83 c0 30             	add    $0x30,%eax
  403361:	48 83 f9 09          	cmp    $0x9,%rcx
  403365:	48 89 d1             	mov    %rdx,%rcx
  403368:	41 88 00             	mov    %al,(%r8)
  40336b:	77 d3                	ja     403340 <fmt_fp+0x780>
  40336d:	4d 39 e8             	cmp    %r13,%r8
  403370:	0f 84 9f 0d 00 00    	je     404115 <fmt_fp+0x1555>
  403376:	b8 2d 00 00 00       	mov    $0x2d,%eax
  40337b:	45 85 c9             	test   %r9d,%r9d
  40337e:	78 05                	js     403385 <fmt_fp+0x7c5>
  403380:	b8 2b 00 00 00       	mov    $0x2b,%eax
  403385:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  40338b:	41 88 40 ff          	mov    %al,-0x1(%r8)
  40338f:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  403393:	d9 ee                	fldz
  403395:	d9 ca                	fxch   %st(2)
  403397:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  40339e:	45 85 ff             	test   %r15d,%r15d
  4033a1:	48 8d 0d f8 3e 00 00 	lea    0x3ef8(%rip),%rcx        # 4072a0 <xdigits>
  4033a8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4033ae:	8d 46 0f             	lea    0xf(%rsi),%eax
  4033b1:	40 0f 9f c7          	setg   %dil
  4033b5:	83 e6 20             	and    $0x20,%esi
  4033b8:	41 88 40 fe          	mov    %al,-0x2(%r8)
  4033bc:	4c 89 e8             	mov    %r13,%rax
  4033bf:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  4033c5:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  4033cc:	80 ce 0c             	or     $0xc,%dh
  4033cf:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  4033d6:	eb 1b                	jmp    4033f3 <fmt_fp+0x833>
  4033d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4033df:	00 
  4033e0:	4c 89 c0             	mov    %r8,%rax
  4033e3:	d9 c2                	fld    %st(2)
  4033e5:	d9 c9                	fxch   %st(1)
  4033e7:	db e9                	fucomi %st(1),%st
  4033e9:	dd d9                	fstp   %st(1)
  4033eb:	7a 06                	jp     4033f3 <fmt_fp+0x833>
  4033ed:	0f 84 dc 10 00 00    	je     4044cf <fmt_fp+0x190f>
  4033f3:	d9 c0                	fld    %st(0)
  4033f5:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  4033fb:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403401:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403407:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40340b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403411:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403418:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40341d:	de e9                	fsubrp %st,%st(1)
  40341f:	41 09 f3             	or     %esi,%r11d
  403422:	44 88 18             	mov    %r11b,(%rax)
  403425:	d8 c9                	fmul   %st(1),%st
  403427:	4c 39 e8             	cmp    %r13,%rax
  40342a:	75 b4                	jne    4033e0 <fmt_fp+0x820>
  40342c:	d9 c2                	fld    %st(2)
  40342e:	df e9                	fucomip %st(1),%st
  403430:	0f 9a c2             	setp   %dl
  403433:	41 0f 45 d1          	cmovne %r9d,%edx
  403437:	84 d2                	test   %dl,%dl
  403439:	0f 85 31 06 00 00    	jne    403a70 <fmt_fp+0xeb0>
  40343f:	40 84 ff             	test   %dil,%dil
  403442:	0f 85 28 06 00 00    	jne    403a70 <fmt_fp+0xeb0>
  403448:	dd d8                	fstp   %st(0)
  40344a:	dd d8                	fstp   %st(0)
  40344c:	dd d8                	fstp   %st(0)
  40344e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403455:	74 08                	je     40345f <fmt_fp+0x89f>
  403457:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40345b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40345f:	4d 89 ec             	mov    %r13,%r12
  403462:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  403467:	48 63 c3             	movslq %ebx,%rax
  40346a:	49 63 cf             	movslq %r15d,%rcx
  40346d:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  403474:	4c 29 e2             	sub    %r12,%rdx
  403477:	48 29 c2             	sub    %rax,%rdx
  40347a:	48 39 d1             	cmp    %rdx,%rcx
  40347d:	0f 8f 24 10 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  403483:	4d 29 e8             	sub    %r13,%r8
  403486:	45 85 ff             	test   %r15d,%r15d
  403489:	74 0d                	je     403498 <fmt_fp+0x8d8>
  40348b:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  40348f:	48 39 d1             	cmp    %rdx,%rcx
  403492:	0f 8d ac 0c 00 00    	jge    404144 <fmt_fp+0x1584>
  403498:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40349c:	45 89 f7             	mov    %r14d,%r15d
  40349f:	44 01 fb             	add    %r15d,%ebx
  4034a2:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4034a9:	20 01 
  4034ab:	0f 85 a0 0b 00 00    	jne    404051 <fmt_fp+0x1491>
  4034b1:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4034b7:	39 d3                	cmp    %edx,%ebx
  4034b9:	0f 8d 1e fd ff ff    	jge    4031dd <fmt_fp+0x61d>
  4034bf:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4034c6:	89 d9                	mov    %ebx,%ecx
  4034c8:	be 20 00 00 00       	mov    $0x20,%esi
  4034cd:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  4034d4:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  4034db:	e8 e0 f5 ff ff       	call   402ac0 <pad.part.0>
  4034e0:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4034e7:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  4034ee:	f6 00 20             	testb  $0x20,(%rax)
  4034f1:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  4034f8:	0f 85 ef fc ff ff    	jne    4031ed <fmt_fp+0x62d>
  4034fe:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403505:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40350c:	48 89 c6             	mov    %rax,%rsi
  40350f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403516:	e8 45 2e 00 00       	call   406360 <__fwritex>
  40351b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403521:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403527:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  40352e:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403535:	35 00 00 01 00       	xor    $0x10000,%eax
  40353a:	a9 00 20 01 00       	test   $0x12000,%eax
  40353f:	75 37                	jne    403578 <fmt_fp+0x9b8>
  403541:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403548:	75 2e                	jne    403578 <fmt_fp+0x9b8>
  40354a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403550:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403557:	89 d9                	mov    %ebx,%ecx
  403559:	be 30 00 00 00       	mov    $0x30,%esi
  40355e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403565:	e8 56 f5 ff ff       	call   402ac0 <pad.part.0>
  40356a:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  403571:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403578:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40357f:	f6 00 20             	testb  $0x20,(%rax)
  403582:	0f 85 05 0b 00 00    	jne    40408d <fmt_fp+0x14cd>
  403588:	48 89 c2             	mov    %rax,%rdx
  40358b:	4c 89 c6             	mov    %r8,%rsi
  40358e:	4c 89 ef             	mov    %r13,%rdi
  403591:	45 29 f7             	sub    %r14d,%r15d
  403594:	e8 c7 2d 00 00       	call   406360 <__fwritex>
  403599:	45 85 ff             	test   %r15d,%r15d
  40359c:	0f 8e 76 fc ff ff    	jle    403218 <fmt_fp+0x658>
  4035a2:	e9 5b fc ff ff       	jmp    403202 <fmt_fp+0x642>
  4035a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4035ae:	00 00 
  4035b0:	44 89 c9             	mov    %r9d,%ecx
  4035b3:	45 31 c9             	xor    %r9d,%r9d
  4035b6:	f7 d9                	neg    %ecx
  4035b8:	49 39 dc             	cmp    %rbx,%r12
  4035bb:	0f 82 2b f9 ff ff    	jb     402eec <fmt_fp+0x32c>
  4035c1:	41 8b 34 24          	mov    (%r12),%esi
  4035c5:	85 f6                	test   %esi,%esi
  4035c7:	0f 84 66 05 00 00    	je     403b33 <fmt_fp+0xf73>
  4035cd:	41 83 fe 66          	cmp    $0x66,%r14d
  4035d1:	0f 85 cf f9 ff ff    	jne    402fa6 <fmt_fp+0x3e6>
  4035d7:	4c 89 e0             	mov    %r12,%rax
  4035da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4035e0:	49 89 c4             	mov    %rax,%r12
  4035e3:	48 89 f8             	mov    %rdi,%rax
  4035e6:	e9 a3 f9 ff ff       	jmp    402f8e <fmt_fp+0x3ce>
  4035eb:	a8 01                	test   $0x1,%al
  4035ed:	0f 84 2f 0b 00 00    	je     404122 <fmt_fp+0x1562>
  4035f3:	db 2d c7 3e 00 00    	fldt   0x3ec7(%rip)        # 4074c0 <states+0x200>
  4035f9:	d1 f9                	sar    $1,%ecx
  4035fb:	41 39 c9             	cmp    %ecx,%r9d
  4035fe:	0f 82 06 0b 00 00    	jb     40410a <fmt_fp+0x154a>
  403604:	44 39 c9             	cmp    %r9d,%ecx
  403607:	0f 84 31 0e 00 00    	je     40443e <fmt_fp+0x187e>
  40360d:	d9 05 89 3e 00 00    	flds   0x3e89(%rip)        # 40749c <states+0x1dc>
  403613:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403619:	85 d2                	test   %edx,%edx
  40361b:	74 14                	je     403631 <fmt_fp+0xa71>
  40361d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403624:	80 38 2d             	cmpb   $0x2d,(%rax)
  403627:	75 08                	jne    403631 <fmt_fp+0xa71>
  403629:	d9 c9                	fxch   %st(1)
  40362b:	d9 e0                	fchs
  40362d:	d9 c9                	fxch   %st(1)
  40362f:	d9 e0                	fchs
  403631:	d8 c1                	fadd   %st(1),%st
  403633:	44 89 d0             	mov    %r10d,%eax
  403636:	44 29 c8             	sub    %r9d,%eax
  403639:	df e9                	fucomip %st(1),%st
  40363b:	dd d8                	fstp   %st(0)
  40363d:	0f 8a 4c 09 00 00    	jp     403f8f <fmt_fp+0x13cf>
  403643:	0f 85 46 09 00 00    	jne    403f8f <fmt_fp+0x13cf>
  403649:	89 06                	mov    %eax,(%rsi)
  40364b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40364f:	48 39 d3             	cmp    %rdx,%rbx
  403652:	48 0f 47 da          	cmova  %rdx,%rbx
  403656:	49 39 dc             	cmp    %rbx,%r12
  403659:	72 0e                	jb     403669 <fmt_fp+0xaa9>
  40365b:	eb 13                	jmp    403670 <fmt_fp+0xab0>
  40365d:	0f 1f 00             	nopl   (%rax)
  403660:	48 83 eb 04          	sub    $0x4,%rbx
  403664:	49 39 dc             	cmp    %rbx,%r12
  403667:	73 07                	jae    403670 <fmt_fp+0xab0>
  403669:	8b 43 fc             	mov    -0x4(%rbx),%eax
  40366c:	85 c0                	test   %eax,%eax
  40366e:	74 f0                	je     403660 <fmt_fp+0xaa0>
  403670:	41 83 fe 67          	cmp    $0x67,%r14d
  403674:	0f 84 25 05 00 00    	je     403b9f <fmt_fp+0xfdf>
  40367a:	45 85 ff             	test   %r15d,%r15d
  40367d:	0f 85 ba 04 00 00    	jne    403b3d <fmt_fp+0xf7d>
  403683:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  40368a:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403690:	41 c1 e9 03          	shr    $0x3,%r9d
  403694:	41 83 e1 01          	and    $0x1,%r9d
  403698:	41 83 c1 01          	add    $0x1,%r9d
  40369c:	45 29 ca             	sub    %r9d,%r10d
  40369f:	41 83 fe 66          	cmp    $0x66,%r14d
  4036a3:	0f 84 80 0b 00 00    	je     404229 <fmt_fp+0x1669>
  4036a9:	4d 63 d2             	movslq %r10d,%r10
  4036ac:	85 ff                	test   %edi,%edi
  4036ae:	0f 84 9e 0d 00 00    	je     404452 <fmt_fp+0x1892>
  4036b4:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  4036bb:	cc cc cc 
  4036be:	89 fe                	mov    %edi,%esi
  4036c0:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4036c4:	f7 de                	neg    %esi
  4036c6:	4c 89 e9             	mov    %r13,%rcx
  4036c9:	0f 48 f7             	cmovs  %edi,%esi
  4036cc:	48 63 f6             	movslq %esi,%rsi
  4036cf:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4036d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036db:	00 00 00 00 
  4036df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036e6:	00 00 00 00 
  4036ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036f1:	00 00 00 00 
  4036f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4036fc:	00 00 00 00 
  403700:	48 89 f0             	mov    %rsi,%rax
  403703:	48 83 e9 01          	sub    $0x1,%rcx
  403707:	49 f7 e0             	mul    %r8
  40370a:	48 89 f0             	mov    %rsi,%rax
  40370d:	48 c1 ea 03          	shr    $0x3,%rdx
  403711:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403715:	4d 01 db             	add    %r11,%r11
  403718:	4c 29 d8             	sub    %r11,%rax
  40371b:	83 c0 30             	add    $0x30,%eax
  40371e:	48 83 fe 09          	cmp    $0x9,%rsi
  403722:	48 89 d6             	mov    %rdx,%rsi
  403725:	88 01                	mov    %al,(%rcx)
  403727:	77 d7                	ja     403700 <fmt_fp+0xb40>
  403729:	4c 89 e8             	mov    %r13,%rax
  40372c:	48 29 c8             	sub    %rcx,%rax
  40372f:	48 83 f8 01          	cmp    $0x1,%rax
  403733:	7f 1e                	jg     403753 <fmt_fp+0xb93>
  403735:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40373c:	00 00 00 00 
  403740:	48 83 e9 01          	sub    $0x1,%rcx
  403744:	4c 89 e8             	mov    %r13,%rax
  403747:	c6 01 30             	movb   $0x30,(%rcx)
  40374a:	48 29 c8             	sub    %rcx,%rax
  40374d:	48 83 f8 01          	cmp    $0x1,%rax
  403751:	7e ed                	jle    403740 <fmt_fp+0xb80>
  403753:	c1 ff 1f             	sar    $0x1f,%edi
  403756:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40375a:	83 e7 02             	and    $0x2,%edi
  40375d:	49 29 c5             	sub    %rax,%r13
  403760:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  403767:	83 c7 2b             	add    $0x2b,%edi
  40376a:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  40376e:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  403775:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  403779:	4d 39 d5             	cmp    %r10,%r13
  40377c:	0f 8f 25 0d 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  403782:	45 01 e9             	add    %r13d,%r9d
  403785:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  40378a:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  403790:	41 39 c1             	cmp    %eax,%r9d
  403793:	0f 8f 0e 0d 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  403799:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40379f:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  4037a5:	44 01 c8             	add    %r9d,%eax
  4037a8:	39 f8                	cmp    %edi,%eax
  4037aa:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  4037b0:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  4037b7:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4037be:	20 01 
  4037c0:	0f 85 3c 07 00 00    	jne    403f02 <fmt_fp+0x1342>
  4037c6:	39 f8                	cmp    %edi,%eax
  4037c8:	0f 8d c5 06 00 00    	jge    403e93 <fmt_fp+0x12d3>
  4037ce:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  4037d5:	89 fa                	mov    %edi,%edx
  4037d7:	89 c1                	mov    %eax,%ecx
  4037d9:	be 20 00 00 00       	mov    $0x20,%esi
  4037de:	4c 89 ef             	mov    %r13,%rdi
  4037e1:	e8 da f2 ff ff       	call   402ac0 <pad.part.0>
  4037e6:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4037eb:	0f 84 b2 06 00 00    	je     403ea3 <fmt_fp+0x12e3>
  4037f1:	41 83 fe 66          	cmp    $0x66,%r14d
  4037f5:	0f 84 75 04 00 00    	je     403c70 <fmt_fp+0x10b0>
  4037fb:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403800:	49 39 dc             	cmp    %rbx,%r12
  403803:	48 0f 43 d8          	cmovae %rax,%rbx
  403807:	45 85 ff             	test   %r15d,%r15d
  40380a:	0f 88 af 01 00 00    	js     4039bf <fmt_fp+0xdff>
  403810:	49 39 dc             	cmp    %rbx,%r12
  403813:	0f 83 a6 01 00 00    	jae    4039bf <fmt_fp+0xdff>
  403819:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40381e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403825:	4d 89 e6             	mov    %r12,%r14
  403828:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  40382c:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403833:	66 0f 6e c0          	movd   %eax,%xmm0
  403837:	49 89 dc             	mov    %rbx,%r12
  40383a:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403841:	cc cc cc 
  403844:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403848:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  40384d:	0f 1f 00             	nopl   (%rax)
  403850:	41 8b 0e             	mov    (%r14),%ecx
  403853:	4c 89 c7             	mov    %r8,%rdi
  403856:	48 85 c9             	test   %rcx,%rcx
  403859:	0f 84 e1 01 00 00    	je     403a40 <fmt_fp+0xe80>
  40385f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403866:	00 00 00 00 
  40386a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403871:	00 00 00 00 
  403875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40387c:	00 00 00 00 
  403880:	48 89 c8             	mov    %rcx,%rax
  403883:	48 83 ef 01          	sub    $0x1,%rdi
  403887:	49 f7 e5             	mul    %r13
  40388a:	48 89 c8             	mov    %rcx,%rax
  40388d:	48 c1 ea 03          	shr    $0x3,%rdx
  403891:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403895:	48 01 f6             	add    %rsi,%rsi
  403898:	48 29 f0             	sub    %rsi,%rax
  40389b:	83 c0 30             	add    $0x30,%eax
  40389e:	48 83 f9 09          	cmp    $0x9,%rcx
  4038a2:	48 89 d1             	mov    %rdx,%rcx
  4038a5:	88 07                	mov    %al,(%rdi)
  4038a7:	77 d7                	ja     403880 <fmt_fp+0xcc0>
  4038a9:	4c 39 c7             	cmp    %r8,%rdi
  4038ac:	0f 84 8e 01 00 00    	je     403a40 <fmt_fp+0xe80>
  4038b2:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  4038b9:	0f 84 96 01 00 00    	je     403a55 <fmt_fp+0xe95>
  4038bf:	48 39 fb             	cmp    %rdi,%rbx
  4038c2:	0f 83 c9 02 00 00    	jae    403b91 <fmt_fp+0xfd1>
  4038c8:	48 89 fe             	mov    %rdi,%rsi
  4038cb:	48 89 f8             	mov    %rdi,%rax
  4038ce:	48 29 de             	sub    %rbx,%rsi
  4038d1:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  4038d5:	48 83 fa 0e          	cmp    $0xe,%rdx
  4038d9:	76 3d                	jbe    403918 <fmt_fp+0xd58>
  4038db:	48 89 f1             	mov    %rsi,%rcx
  4038de:	48 89 fa             	mov    %rdi,%rdx
  4038e1:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4038e5:	48 29 ca             	sub    %rcx,%rdx
  4038e8:	f6 c1 10             	test   $0x10,%cl
  4038eb:	74 13                	je     403900 <fmt_fp+0xd40>
  4038ed:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  4038f1:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  4038f5:	48 39 d0             	cmp    %rdx,%rax
  4038f8:	74 16                	je     403910 <fmt_fp+0xd50>
  4038fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403900:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403904:	48 83 e8 20          	sub    $0x20,%rax
  403908:	0f 11 00             	movups %xmm0,(%rax)
  40390b:	48 39 d0             	cmp    %rdx,%rax
  40390e:	75 f0                	jne    403900 <fmt_fp+0xd40>
  403910:	48 39 f1             	cmp    %rsi,%rcx
  403913:	74 3b                	je     403950 <fmt_fp+0xd90>
  403915:	48 29 cf             	sub    %rcx,%rdi
  403918:	48 89 d8             	mov    %rbx,%rax
  40391b:	48 f7 d0             	not    %rax
  40391e:	48 01 f8             	add    %rdi,%rax
  403921:	48 83 ef 01          	sub    $0x1,%rdi
  403925:	c6 07 30             	movb   $0x30,(%rdi)
  403928:	48 39 fb             	cmp    %rdi,%rbx
  40392b:	73 23                	jae    403950 <fmt_fp+0xd90>
  40392d:	a8 01                	test   $0x1,%al
  40392f:	74 0f                	je     403940 <fmt_fp+0xd80>
  403931:	48 83 ef 01          	sub    $0x1,%rdi
  403935:	c6 07 30             	movb   $0x30,(%rdi)
  403938:	48 39 fb             	cmp    %rdi,%rbx
  40393b:	73 13                	jae    403950 <fmt_fp+0xd90>
  40393d:	0f 1f 00             	nopl   (%rax)
  403940:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403944:	48 83 ef 02          	sub    $0x2,%rdi
  403948:	c6 07 30             	movb   $0x30,(%rdi)
  40394b:	48 39 fb             	cmp    %rdi,%rbx
  40394e:	72 f0                	jb     403940 <fmt_fp+0xd80>
  403950:	41 8b 02             	mov    (%r10),%eax
  403953:	49 89 d9             	mov    %rbx,%r9
  403956:	83 e0 20             	and    $0x20,%eax
  403959:	4c 89 c1             	mov    %r8,%rcx
  40395c:	4c 29 c9             	sub    %r9,%rcx
  40395f:	85 c0                	test   %eax,%eax
  403961:	75 47                	jne    4039aa <fmt_fp+0xdea>
  403963:	49 63 f7             	movslq %r15d,%rsi
  403966:	4c 89 d2             	mov    %r10,%rdx
  403969:	4c 89 cf             	mov    %r9,%rdi
  40396c:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403973:	48 39 ce             	cmp    %rcx,%rsi
  403976:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  40397d:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403981:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403988:	e8 d3 29 00 00       	call   406360 <__fwritex>
  40398d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403994:	66 0f 6f 05 34 3b 00 	movdqa 0x3b34(%rip),%xmm0        # 4074d0 <states+0x210>
  40399b:	00 
  40399c:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  4039a3:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  4039aa:	49 83 c6 04          	add    $0x4,%r14
  4039ae:	41 29 cf             	sub    %ecx,%r15d
  4039b1:	4d 39 e6             	cmp    %r12,%r14
  4039b4:	73 09                	jae    4039bf <fmt_fp+0xdff>
  4039b6:	45 85 ff             	test   %r15d,%r15d
  4039b9:	0f 89 91 fe ff ff    	jns    403850 <fmt_fp+0xc90>
  4039bf:	41 8d 57 12          	lea    0x12(%r15),%edx
  4039c3:	83 fa 12             	cmp    $0x12,%edx
  4039c6:	7e 16                	jle    4039de <fmt_fp+0xe1e>
  4039c8:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4039cf:	b9 12 00 00 00       	mov    $0x12,%ecx
  4039d4:	be 30 00 00 00       	mov    $0x30,%esi
  4039d9:	e8 e2 f0 ff ff       	call   402ac0 <pad.part.0>
  4039de:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4039e5:	f6 00 20             	testb  $0x20,(%rax)
  4039e8:	0f 84 86 05 00 00    	je     403f74 <fmt_fp+0x13b4>
  4039ee:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4039f4:	80 f4 20             	xor    $0x20,%ah
  4039f7:	a9 00 20 01 00       	test   $0x12000,%eax
  4039fc:	75 26                	jne    403a24 <fmt_fp+0xe64>
  4039fe:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403a05:	75 1d                	jne    403a24 <fmt_fp+0xe64>
  403a07:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403a0d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403a13:	be 20 00 00 00       	mov    $0x20,%esi
  403a18:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403a1f:	e8 9c f0 ff ff       	call   402ac0 <pad.part.0>
  403a24:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403a2a:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403a30:	39 c7                	cmp    %eax,%edi
  403a32:	0f 4d c7             	cmovge %edi,%eax
  403a35:	e9 65 f7 ff ff       	jmp    40319f <fmt_fp+0x5df>
  403a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a40:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403a44:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403a48:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403a4f:	0f 85 73 fe ff ff    	jne    4038c8 <fmt_fp+0xd08>
  403a55:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403a59:	41 f6 02 20          	testb  $0x20,(%r10)
  403a5d:	74 1e                	je     403a7d <fmt_fp+0xebd>
  403a5f:	4c 89 c1             	mov    %r8,%rcx
  403a62:	4c 29 c9             	sub    %r9,%rcx
  403a65:	e9 40 ff ff ff       	jmp    4039aa <fmt_fp+0xdea>
  403a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403a70:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403a74:	48 83 c0 02          	add    $0x2,%rax
  403a78:	e9 66 f9 ff ff       	jmp    4033e3 <fmt_fp+0x823>
  403a7d:	4c 89 d2             	mov    %r10,%rdx
  403a80:	be 01 00 00 00       	mov    $0x1,%esi
  403a85:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403a8c:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403a93:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403a9a:	e8 c1 28 00 00       	call   406360 <__fwritex>
  403a9f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403aa6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403aac:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403ab3:	66 0f 6f 05 15 3a 00 	movdqa 0x3a15(%rip),%xmm0        # 4074d0 <states+0x210>
  403aba:	00 
  403abb:	41 8b 02             	mov    (%r10),%eax
  403abe:	83 e2 08             	and    $0x8,%edx
  403ac1:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403ac8:	83 e0 20             	and    $0x20,%eax
  403acb:	44 09 fa             	or     %r15d,%edx
  403ace:	0f 84 85 fe ff ff    	je     403959 <fmt_fp+0xd99>
  403ad4:	85 c0                	test   %eax,%eax
  403ad6:	75 87                	jne    403a5f <fmt_fp+0xe9f>
  403ad8:	4c 89 d2             	mov    %r10,%rdx
  403adb:	be 01 00 00 00       	mov    $0x1,%esi
  403ae0:	48 8d 3d 50 36 00 00 	lea    0x3650(%rip),%rdi        # 407137 <_fini+0x373>
  403ae7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403aee:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403af5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403afc:	e8 5f 28 00 00       	call   406360 <__fwritex>
  403b01:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403b08:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403b0f:	66 0f 6f 05 b9 39 00 	movdqa 0x39b9(%rip),%xmm0        # 4074d0 <states+0x210>
  403b16:	00 
  403b17:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403b1e:	41 8b 02             	mov    (%r10),%eax
  403b21:	83 e0 20             	and    $0x20,%eax
  403b24:	e9 30 fe ff ff       	jmp    403959 <fmt_fp+0xd99>
  403b29:	44 89 f8             	mov    %r15d,%eax
  403b2c:	31 ff                	xor    %edi,%edi
  403b2e:	e9 e5 f4 ff ff       	jmp    403018 <fmt_fp+0x458>
  403b33:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403b38:	e9 44 f4 ff ff       	jmp    402f81 <fmt_fp+0x3c1>
  403b3d:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403b44:	0f 8f 5d 09 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  403b4a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403b51:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403b55:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403b5b:	45 29 ca             	sub    %r9d,%r10d
  403b5e:	41 83 ce 20          	or     $0x20,%r14d
  403b62:	41 83 fe 66          	cmp    $0x66,%r14d
  403b66:	0f 85 3d fb ff ff    	jne    4036a9 <fmt_fp+0xae9>
  403b6c:	44 39 d7             	cmp    %r10d,%edi
  403b6f:	0f 8f 32 09 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  403b75:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403b7b:	85 ff                	test   %edi,%edi
  403b7d:	0f 8e 02 fc ff ff    	jle    403785 <fmt_fp+0xbc5>
  403b83:	41 01 f9             	add    %edi,%r9d
  403b86:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403b8c:	e9 f4 fb ff ff       	jmp    403785 <fmt_fp+0xbc5>
  403b91:	41 8b 02             	mov    (%r10),%eax
  403b94:	49 89 f9             	mov    %rdi,%r9
  403b97:	83 e0 20             	and    $0x20,%eax
  403b9a:	e9 ba fd ff ff       	jmp    403959 <fmt_fp+0xd99>
  403b9f:	45 85 ff             	test   %r15d,%r15d
  403ba2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403ba8:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403bac:	41 39 f9             	cmp    %edi,%r9d
  403baf:	0f 8e e9 04 00 00    	jle    40409e <fmt_fp+0x14de>
  403bb5:	83 ff fc             	cmp    $0xfffffffc,%edi
  403bb8:	0f 8c e0 04 00 00    	jl     40409e <fmt_fp+0x14de>
  403bbe:	8d 47 01             	lea    0x1(%rdi),%eax
  403bc1:	45 89 cf             	mov    %r9d,%r15d
  403bc4:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403bcb:	41 29 c7             	sub    %eax,%r15d
  403bce:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403bd5:	0f 85 9c 05 00 00    	jne    404177 <fmt_fp+0x15b7>
  403bdb:	be 09 00 00 00       	mov    $0x9,%esi
  403be0:	49 39 dc             	cmp    %rbx,%r12
  403be3:	73 1f                	jae    403c04 <fmt_fp+0x1044>
  403be5:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403be9:	45 85 c9             	test   %r9d,%r9d
  403bec:	74 16                	je     403c04 <fmt_fp+0x1044>
  403bee:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403bf5:	d1 c8                	ror    $1,%eax
  403bf7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403bfc:	0f 86 e0 04 00 00    	jbe    4040e2 <fmt_fp+0x1522>
  403c02:	31 f6                	xor    %esi,%esi
  403c04:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403c0b:	41 83 ce 20          	or     $0x20,%r14d
  403c0f:	41 83 fe 66          	cmp    $0x66,%r14d
  403c13:	0f 85 ac 05 00 00    	jne    4041c5 <fmt_fp+0x1605>
  403c19:	48 89 d8             	mov    %rbx,%rax
  403c1c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403c23:	ba 00 00 00 00       	mov    $0x0,%edx
  403c28:	48 c1 f8 02          	sar    $0x2,%rax
  403c2c:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403c31:	48 29 f0             	sub    %rsi,%rax
  403c34:	48 0f 48 c2          	cmovs  %rdx,%rax
  403c38:	49 63 d7             	movslq %r15d,%rdx
  403c3b:	48 39 d0             	cmp    %rdx,%rax
  403c3e:	48 0f 4f c2          	cmovg  %rdx,%rax
  403c42:	48 85 c0             	test   %rax,%rax
  403c45:	0f 84 66 08 00 00    	je     4044b1 <fmt_fp+0x18f1>
  403c4b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403c51:	0f 8f 50 08 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  403c57:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403c5b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403c61:	41 89 c7             	mov    %eax,%r15d
  403c64:	45 29 ca             	sub    %r9d,%r10d
  403c67:	e9 00 ff ff ff       	jmp    403b6c <fmt_fp+0xfac>
  403c6c:	0f 1f 40 00          	nopl   0x0(%rax)
  403c70:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403c77:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403c7e:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403c83:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403c8a:	cc cc cc 
  403c8d:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403c94:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403c9b:	66 0f 6e c7          	movd   %edi,%xmm0
  403c9f:	4c 39 e0             	cmp    %r12,%rax
  403ca2:	49 89 c6             	mov    %rax,%r14
  403ca5:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403caa:	4c 0f 46 e0          	cmovbe %rax,%r12
  403cae:	4c 89 e3             	mov    %r12,%rbx
  403cb1:	0f 1f 40 00          	nopl   0x0(%rax)
  403cb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cbc:	00 00 00 00 
  403cc0:	41 8b 0c 24          	mov    (%r12),%ecx
  403cc4:	48 85 c9             	test   %rcx,%rcx
  403cc7:	0f 84 43 02 00 00    	je     403f10 <fmt_fp+0x1350>
  403ccd:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403cd1:	48 89 f7             	mov    %rsi,%rdi
  403cd4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cdb:	00 00 00 00 
  403cdf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ce6:	00 00 00 00 
  403cea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cf1:	00 00 00 00 
  403cf5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403cfc:	00 00 00 00 
  403d00:	48 89 c8             	mov    %rcx,%rax
  403d03:	48 83 ef 01          	sub    $0x1,%rdi
  403d07:	49 f7 e5             	mul    %r13
  403d0a:	48 89 c8             	mov    %rcx,%rax
  403d0d:	48 c1 ea 03          	shr    $0x3,%rdx
  403d11:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403d15:	4d 01 c0             	add    %r8,%r8
  403d18:	4c 29 c0             	sub    %r8,%rax
  403d1b:	83 c0 30             	add    $0x30,%eax
  403d1e:	48 83 f9 09          	cmp    $0x9,%rcx
  403d22:	48 89 d1             	mov    %rdx,%rcx
  403d25:	88 07                	mov    %al,(%rdi)
  403d27:	77 d7                	ja     403d00 <fmt_fp+0x1140>
  403d29:	4c 39 e3             	cmp    %r12,%rbx
  403d2c:	0f 84 36 01 00 00    	je     403e68 <fmt_fp+0x12a8>
  403d32:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403d36:	48 39 fa             	cmp    %rdi,%rdx
  403d39:	0f 83 32 01 00 00    	jae    403e71 <fmt_fp+0x12b1>
  403d3f:	49 89 fa             	mov    %rdi,%r10
  403d42:	48 89 f8             	mov    %rdi,%rax
  403d45:	49 29 d2             	sub    %rdx,%r10
  403d48:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403d4c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403d50:	76 46                	jbe    403d98 <fmt_fp+0x11d8>
  403d52:	4c 89 d6             	mov    %r10,%rsi
  403d55:	48 89 f9             	mov    %rdi,%rcx
  403d58:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403d5c:	48 29 f1             	sub    %rsi,%rcx
  403d5f:	40 f6 c6 10          	test   $0x10,%sil
  403d63:	74 1b                	je     403d80 <fmt_fp+0x11c0>
  403d65:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403d69:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403d6d:	48 39 c8             	cmp    %rcx,%rax
  403d70:	74 1e                	je     403d90 <fmt_fp+0x11d0>
  403d72:	0f 1f 00             	nopl   (%rax)
  403d75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403d7c:	00 00 00 00 
  403d80:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403d84:	48 83 e8 20          	sub    $0x20,%rax
  403d88:	0f 11 00             	movups %xmm0,(%rax)
  403d8b:	48 39 c8             	cmp    %rcx,%rax
  403d8e:	75 f0                	jne    403d80 <fmt_fp+0x11c0>
  403d90:	4c 39 d6             	cmp    %r10,%rsi
  403d93:	74 3b                	je     403dd0 <fmt_fp+0x1210>
  403d95:	48 29 f7             	sub    %rsi,%rdi
  403d98:	48 89 d0             	mov    %rdx,%rax
  403d9b:	48 f7 d0             	not    %rax
  403d9e:	48 01 f8             	add    %rdi,%rax
  403da1:	48 83 ef 01          	sub    $0x1,%rdi
  403da5:	c6 07 30             	movb   $0x30,(%rdi)
  403da8:	48 39 fa             	cmp    %rdi,%rdx
  403dab:	73 23                	jae    403dd0 <fmt_fp+0x1210>
  403dad:	a8 01                	test   $0x1,%al
  403daf:	74 0f                	je     403dc0 <fmt_fp+0x1200>
  403db1:	48 83 ef 01          	sub    $0x1,%rdi
  403db5:	c6 07 30             	movb   $0x30,(%rdi)
  403db8:	48 39 fa             	cmp    %rdi,%rdx
  403dbb:	73 13                	jae    403dd0 <fmt_fp+0x1210>
  403dbd:	0f 1f 00             	nopl   (%rax)
  403dc0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403dc4:	48 83 ef 02          	sub    $0x2,%rdi
  403dc8:	c6 07 30             	movb   $0x30,(%rdi)
  403dcb:	48 39 fa             	cmp    %rdi,%rdx
  403dce:	72 f0                	jb     403dc0 <fmt_fp+0x1200>
  403dd0:	be 09 00 00 00       	mov    $0x9,%esi
  403dd5:	48 89 d7             	mov    %rdx,%rdi
  403dd8:	41 f6 07 20          	testb  $0x20,(%r15)
  403ddc:	0f 84 9c 00 00 00    	je     403e7e <fmt_fp+0x12be>
  403de2:	49 83 c4 04          	add    $0x4,%r12
  403de6:	4d 39 e6             	cmp    %r12,%r14
  403de9:	0f 83 d1 fe ff ff    	jae    403cc0 <fmt_fp+0x1100>
  403def:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  403df6:	49 89 dc             	mov    %rbx,%r12
  403df9:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  403e00:	45 85 ff             	test   %r15d,%r15d
  403e03:	0f 85 36 04 00 00    	jne    40423f <fmt_fp+0x167f>
  403e09:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403e10:	0f 84 d8 fb ff ff    	je     4039ee <fmt_fp+0xe2e>
  403e16:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403e1d:	f6 02 20             	testb  $0x20,(%rdx)
  403e20:	0f 85 c8 fb ff ff    	jne    4039ee <fmt_fp+0xe2e>
  403e26:	be 01 00 00 00       	mov    $0x1,%esi
  403e2b:	48 8d 3d 05 33 00 00 	lea    0x3305(%rip),%rdi        # 407137 <_fini+0x373>
  403e32:	e8 29 25 00 00       	call   406360 <__fwritex>
  403e37:	41 83 c7 09          	add    $0x9,%r15d
  403e3b:	41 83 ff 09          	cmp    $0x9,%r15d
  403e3f:	0f 8e a9 fb ff ff    	jle    4039ee <fmt_fp+0xe2e>
  403e45:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403e4c:	b9 09 00 00 00       	mov    $0x9,%ecx
  403e51:	44 89 fa             	mov    %r15d,%edx
  403e54:	be 30 00 00 00       	mov    $0x30,%esi
  403e59:	e8 62 ec ff ff       	call   402ac0 <pad.part.0>
  403e5e:	e9 8b fb ff ff       	jmp    4039ee <fmt_fp+0xe2e>
  403e63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403e68:	48 39 f7             	cmp    %rsi,%rdi
  403e6b:	0f 84 b0 00 00 00    	je     403f21 <fmt_fp+0x1361>
  403e71:	48 29 fe             	sub    %rdi,%rsi
  403e74:	41 f6 07 20          	testb  $0x20,(%r15)
  403e78:	0f 85 64 ff ff ff    	jne    403de2 <fmt_fp+0x1222>
  403e7e:	4c 89 fa             	mov    %r15,%rdx
  403e81:	e8 da 24 00 00       	call   406360 <__fwritex>
  403e86:	66 0f 6f 05 42 36 00 	movdqa 0x3642(%rip),%xmm0        # 4074d0 <states+0x210>
  403e8d:	00 
  403e8e:	e9 4f ff ff ff       	jmp    403de2 <fmt_fp+0x1222>
  403e93:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403e9a:	f6 00 20             	testb  $0x20,(%rax)
  403e9d:	0f 85 4e f9 ff ff    	jne    4037f1 <fmt_fp+0xc31>
  403ea3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  403eaa:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403eb1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403eb8:	e8 a3 24 00 00       	call   406360 <__fwritex>
  403ebd:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403ec3:	35 00 00 01 00       	xor    $0x10000,%eax
  403ec8:	a9 00 20 01 00       	test   $0x12000,%eax
  403ecd:	0f 85 1e f9 ff ff    	jne    4037f1 <fmt_fp+0xc31>
  403ed3:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403eda:	0f 85 11 f9 ff ff    	jne    4037f1 <fmt_fp+0xc31>
  403ee0:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403ee6:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403eec:	be 30 00 00 00       	mov    $0x30,%esi
  403ef1:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403ef8:	e8 c3 eb ff ff       	call   402ac0 <pad.part.0>
  403efd:	e9 ef f8 ff ff       	jmp    4037f1 <fmt_fp+0xc31>
  403f02:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403f09:	f6 00 20             	testb  $0x20,(%rax)
  403f0c:	75 af                	jne    403ebd <fmt_fp+0x12fd>
  403f0e:	eb 93                	jmp    403ea3 <fmt_fp+0x12e3>
  403f10:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  403f14:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403f18:	4c 39 e3             	cmp    %r12,%rbx
  403f1b:	0f 85 1e fe ff ff    	jne    403d3f <fmt_fp+0x117f>
  403f21:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403f25:	be 01 00 00 00       	mov    $0x1,%esi
  403f2a:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403f2e:	e9 a5 fe ff ff       	jmp    403dd8 <fmt_fp+0x1218>
  403f33:	d9 05 57 35 00 00    	flds   0x3557(%rip)        # 407490 <states+0x1d0>
  403f39:	d9 05 61 35 00 00    	flds   0x3561(%rip)        # 4074a0 <states+0x1e0>
  403f3f:	b8 0e 00 00 00       	mov    $0xe,%eax
  403f44:	44 29 f8             	sub    %r15d,%eax
  403f47:	90                   	nop
  403f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403f4f:	00 
  403f50:	dc c9                	fmul   %st,%st(1)
  403f52:	83 e8 01             	sub    $0x1,%eax
  403f55:	73 f9                	jae    403f50 <fmt_fp+0x1390>
  403f57:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403f5e:	80 38 2d             	cmpb   $0x2d,(%rax)
  403f61:	0f 84 c6 04 00 00    	je     40442d <fmt_fp+0x186d>
  403f67:	d9 ca                	fxch   %st(2)
  403f69:	d8 c1                	fadd   %st(1),%st
  403f6b:	de e1                	fsubp  %st,%st(1)
  403f6d:	d9 c9                	fxch   %st(1)
  403f6f:	e9 9d f3 ff ff       	jmp    403311 <fmt_fp+0x751>
  403f74:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  403f7b:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  403f7f:	48 89 c2             	mov    %rax,%rdx
  403f82:	48 29 fe             	sub    %rdi,%rsi
  403f85:	e8 d6 23 00 00       	call   406360 <__fwritex>
  403f8a:	e9 5f fa ff ff       	jmp    4039ee <fmt_fp+0xe2e>
  403f8f:	44 01 d8             	add    %r11d,%eax
  403f92:	89 06                	mov    %eax,(%rsi)
  403f94:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  403f99:	0f 86 3e 05 00 00    	jbe    4044dd <fmt_fp+0x191d>
  403f9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fa6:	00 00 00 00 
  403faa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fb1:	00 00 00 00 
  403fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fbc:	00 00 00 00 
  403fc0:	48 89 f2             	mov    %rsi,%rdx
  403fc3:	48 83 ee 04          	sub    $0x4,%rsi
  403fc7:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  403fce:	4c 39 e6             	cmp    %r12,%rsi
  403fd1:	73 0d                	jae    403fe0 <fmt_fp+0x1420>
  403fd3:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  403fda:	00 00 
  403fdc:	49 83 ec 04          	sub    $0x4,%r12
  403fe0:	8b 06                	mov    (%rsi),%eax
  403fe2:	83 c0 01             	add    $0x1,%eax
  403fe5:	89 06                	mov    %eax,(%rsi)
  403fe7:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  403fec:	77 d2                	ja     403fc0 <fmt_fp+0x1400>
  403fee:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403ff5:	41 8b 0c 24          	mov    (%r12),%ecx
  403ff9:	4c 29 e0             	sub    %r12,%rax
  403ffc:	48 c1 f8 02          	sar    $0x2,%rax
  404000:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  404003:	83 f9 09             	cmp    $0x9,%ecx
  404006:	0f 86 43 f6 ff ff    	jbe    40364f <fmt_fp+0xa8f>
  40400c:	b8 0a 00 00 00       	mov    $0xa,%eax
  404011:	0f 1f 40 00          	nopl   0x0(%rax)
  404015:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40401c:	00 00 00 00 
  404020:	8d 04 80             	lea    (%rax,%rax,4),%eax
  404023:	83 c7 01             	add    $0x1,%edi
  404026:	01 c0                	add    %eax,%eax
  404028:	39 c1                	cmp    %eax,%ecx
  40402a:	73 f4                	jae    404020 <fmt_fp+0x1460>
  40402c:	e9 1e f6 ff ff       	jmp    40364f <fmt_fp+0xa8f>
  404031:	be 01 00 00 00       	mov    $0x1,%esi
  404036:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40403c:	e9 d7 ec ff ff       	jmp    402d18 <fmt_fp+0x158>
  404041:	be 01 00 00 00       	mov    $0x1,%esi
  404046:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40404c:	e9 b6 ec ff ff       	jmp    402d07 <fmt_fp+0x147>
  404051:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404058:	f6 07 20             	testb  $0x20,(%rdi)
  40405b:	0f 84 9d f4 ff ff    	je     4034fe <fmt_fp+0x93e>
  404061:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404067:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40406d:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  404074:	35 00 00 01 00       	xor    $0x10000,%eax
  404079:	a9 00 20 01 00       	test   $0x12000,%eax
  40407e:	75 0d                	jne    40408d <fmt_fp+0x14cd>
  404080:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  404087:	0f 84 bd f4 ff ff    	je     40354a <fmt_fp+0x98a>
  40408d:	45 29 f7             	sub    %r14d,%r15d
  404090:	45 85 ff             	test   %r15d,%r15d
  404093:	0f 8e 9d f1 ff ff    	jle    403236 <fmt_fp+0x676>
  404099:	e9 64 f1 ff ff       	jmp    403202 <fmt_fp+0x642>
  40409e:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  4040a5:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  4040a9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4040b0:	0f 85 9c 00 00 00    	jne    404152 <fmt_fp+0x1592>
  4040b6:	49 39 dc             	cmp    %rbx,%r12
  4040b9:	0f 83 01 01 00 00    	jae    4041c0 <fmt_fp+0x1600>
  4040bf:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  4040c3:	45 85 c9             	test   %r9d,%r9d
  4040c6:	0f 84 f4 00 00 00    	je     4041c0 <fmt_fp+0x1600>
  4040cc:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  4040d3:	31 f6                	xor    %esi,%esi
  4040d5:	d1 c8                	ror    $1,%eax
  4040d7:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  4040dc:	0f 87 e3 00 00 00    	ja     4041c5 <fmt_fp+0x1605>
  4040e2:	31 f6                	xor    %esi,%esi
  4040e4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4040e9:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4040ec:	44 89 c8             	mov    %r9d,%eax
  4040ef:	31 d2                	xor    %edx,%edx
  4040f1:	83 c6 01             	add    $0x1,%esi
  4040f4:	01 c9                	add    %ecx,%ecx
  4040f6:	f7 f1                	div    %ecx
  4040f8:	85 d2                	test   %edx,%edx
  4040fa:	74 ed                	je     4040e9 <fmt_fp+0x1529>
  4040fc:	48 63 f6             	movslq %esi,%rsi
  4040ff:	e9 00 fb ff ff       	jmp    403c04 <fmt_fp+0x1044>
  404104:	db 2d b6 33 00 00    	fldt   0x33b6(%rip)        # 4074c0 <states+0x200>
  40410a:	d9 05 88 33 00 00    	flds   0x3388(%rip)        # 407498 <states+0x1d8>
  404110:	e9 fe f4 ff ff       	jmp    403613 <fmt_fp+0xa53>
  404115:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404119:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40411d:	e9 54 f2 ff ff       	jmp    403376 <fmt_fp+0x7b6>
  404122:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  404128:	75 0f                	jne    404139 <fmt_fp+0x1579>
  40412a:	49 39 f4             	cmp    %rsi,%r12
  40412d:	73 0a                	jae    404139 <fmt_fp+0x1579>
  40412f:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  404133:	0f 85 ba f4 ff ff    	jne    4035f3 <fmt_fp+0xa33>
  404139:	d9 05 55 33 00 00    	flds   0x3355(%rip)        # 407494 <states+0x1d4>
  40413f:	e9 b5 f4 ff ff       	jmp    4035f9 <fmt_fp+0xa39>
  404144:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404149:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40414d:	e9 4d f3 ff ff       	jmp    40349f <fmt_fp+0x8df>
  404152:	45 85 ff             	test   %r15d,%r15d
  404155:	0f 85 24 03 00 00    	jne    40447f <fmt_fp+0x18bf>
  40415b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404162:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  404168:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  40416e:	41 83 ce 20          	or     $0x20,%r14d
  404172:	e9 3d f5 ff ff       	jmp    4036b4 <fmt_fp+0xaf4>
  404177:	45 85 ff             	test   %r15d,%r15d
  40417a:	0f 85 bd f9 ff ff    	jne    403b3d <fmt_fp+0xf7d>
  404180:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404187:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  40418d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  404193:	41 83 ce 20          	or     $0x20,%r14d
  404197:	41 83 fe 66          	cmp    $0x66,%r14d
  40419b:	0f 85 08 f5 ff ff    	jne    4036a9 <fmt_fp+0xae9>
  4041a1:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  4041a7:	0f 84 fa 02 00 00    	je     4044a7 <fmt_fp+0x18e7>
  4041ad:	85 ff                	test   %edi,%edi
  4041af:	0f 85 ce f9 ff ff    	jne    403b83 <fmt_fp+0xfc3>
  4041b5:	e9 df f5 ff ff       	jmp    403799 <fmt_fp+0xbd9>
  4041ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4041c0:	be 09 00 00 00       	mov    $0x9,%esi
  4041c5:	48 89 d8             	mov    %rbx,%rax
  4041c8:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  4041cf:	48 63 d7             	movslq %edi,%rdx
  4041d2:	48 c1 f8 02          	sar    $0x2,%rax
  4041d6:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  4041db:	48 01 d0             	add    %rdx,%rax
  4041de:	ba 00 00 00 00       	mov    $0x0,%edx
  4041e3:	48 29 f0             	sub    %rsi,%rax
  4041e6:	48 0f 48 c2          	cmovs  %rdx,%rax
  4041ea:	49 63 d7             	movslq %r15d,%rdx
  4041ed:	48 39 d0             	cmp    %rdx,%rax
  4041f0:	48 0f 4f c2          	cmovg  %rdx,%rax
  4041f4:	41 89 c7             	mov    %eax,%r15d
  4041f7:	48 85 c0             	test   %rax,%rax
  4041fa:	0f 85 3d f9 ff ff    	jne    403b3d <fmt_fp+0xf7d>
  404200:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404207:	41 83 ce 20          	or     $0x20,%r14d
  40420b:	41 83 fe 66          	cmp    $0x66,%r14d
  40420f:	0f 84 9c 02 00 00    	je     4044b1 <fmt_fp+0x18f1>
  404215:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40421b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404221:	45 31 ff             	xor    %r15d,%r15d
  404224:	e9 80 f4 ff ff       	jmp    4036a9 <fmt_fp+0xae9>
  404229:	44 39 d7             	cmp    %r10d,%edi
  40422c:	0f 8f 75 02 00 00    	jg     4044a7 <fmt_fp+0x18e7>
  404232:	85 ff                	test   %edi,%edi
  404234:	0f 8f 49 f9 ff ff    	jg     403b83 <fmt_fp+0xfc3>
  40423a:	e9 5a f5 ff ff       	jmp    403799 <fmt_fp+0xbd9>
  40423f:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404246:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40424b:	48 89 f8             	mov    %rdi,%rax
  40424e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404252:	4c 29 e0             	sub    %r12,%rax
  404255:	48 39 d1             	cmp    %rdx,%rcx
  404258:	ba 00 00 00 00       	mov    $0x0,%edx
  40425d:	48 0f 42 c2          	cmovb  %rdx,%rax
  404261:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  404266:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40426d:	f6 00 20             	testb  $0x20,(%rax)
  404270:	0f 84 70 02 00 00    	je     4044e6 <fmt_fp+0x1926>
  404276:	45 85 ff             	test   %r15d,%r15d
  404279:	0f 8e b8 fb ff ff    	jle    403e37 <fmt_fp+0x1277>
  40427f:	49 39 de             	cmp    %rbx,%r14
  404282:	0f 83 af fb ff ff    	jae    403e37 <fmt_fp+0x1277>
  404288:	b8 30 30 30 30       	mov    $0x30303030,%eax
  40428d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404291:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  404295:	49 89 d9             	mov    %rbx,%r9
  404298:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  40429f:	66 0f 6e c0          	movd   %eax,%xmm0
  4042a3:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  4042aa:	cc cc cc 
  4042ad:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4042b2:	0f 1f 00             	nopl   (%rax)
  4042b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042bc:	00 00 00 00 
  4042c0:	41 8b 0e             	mov    (%r14),%ecx
  4042c3:	4c 89 c7             	mov    %r8,%rdi
  4042c6:	48 85 c9             	test   %rcx,%rcx
  4042c9:	74 67                	je     404332 <fmt_fp+0x1772>
  4042cb:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4042d2:	00 00 
  4042d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042db:	00 00 00 00 
  4042df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042e6:	00 00 00 00 
  4042ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042f1:	00 00 00 00 
  4042f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4042fc:	00 00 00 00 
  404300:	48 89 c8             	mov    %rcx,%rax
  404303:	48 83 ef 01          	sub    $0x1,%rdi
  404307:	49 f7 e4             	mul    %r12
  40430a:	48 89 c8             	mov    %rcx,%rax
  40430d:	48 c1 ea 03          	shr    $0x3,%rdx
  404311:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404315:	48 01 f6             	add    %rsi,%rsi
  404318:	48 29 f0             	sub    %rsi,%rax
  40431b:	83 c0 30             	add    $0x30,%eax
  40431e:	48 83 f9 09          	cmp    $0x9,%rcx
  404322:	48 89 d1             	mov    %rdx,%rcx
  404325:	88 07                	mov    %al,(%rdi)
  404327:	77 d7                	ja     404300 <fmt_fp+0x1740>
  404329:	49 39 fd             	cmp    %rdi,%r13
  40432c:	0f 83 91 00 00 00    	jae    4043c3 <fmt_fp+0x1803>
  404332:	48 89 fe             	mov    %rdi,%rsi
  404335:	48 89 f8             	mov    %rdi,%rax
  404338:	4c 29 ee             	sub    %r13,%rsi
  40433b:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  40433f:	48 83 fa 0e          	cmp    $0xe,%rdx
  404343:	76 43                	jbe    404388 <fmt_fp+0x17c8>
  404345:	48 89 f1             	mov    %rsi,%rcx
  404348:	48 89 fa             	mov    %rdi,%rdx
  40434b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40434f:	48 29 ca             	sub    %rcx,%rdx
  404352:	f6 c1 10             	test   $0x10,%cl
  404355:	74 19                	je     404370 <fmt_fp+0x17b0>
  404357:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40435b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40435f:	48 39 d0             	cmp    %rdx,%rax
  404362:	74 1c                	je     404380 <fmt_fp+0x17c0>
  404364:	90                   	nop
  404365:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40436c:	00 00 00 00 
  404370:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  404374:	48 83 e8 20          	sub    $0x20,%rax
  404378:	0f 11 00             	movups %xmm0,(%rax)
  40437b:	48 39 d0             	cmp    %rdx,%rax
  40437e:	75 f0                	jne    404370 <fmt_fp+0x17b0>
  404380:	48 39 f1             	cmp    %rsi,%rcx
  404383:	74 3b                	je     4043c0 <fmt_fp+0x1800>
  404385:	48 29 cf             	sub    %rcx,%rdi
  404388:	4c 89 e8             	mov    %r13,%rax
  40438b:	48 f7 d0             	not    %rax
  40438e:	48 01 f8             	add    %rdi,%rax
  404391:	48 83 ef 01          	sub    $0x1,%rdi
  404395:	c6 07 30             	movb   $0x30,(%rdi)
  404398:	49 39 fd             	cmp    %rdi,%r13
  40439b:	73 23                	jae    4043c0 <fmt_fp+0x1800>
  40439d:	a8 01                	test   $0x1,%al
  40439f:	74 0f                	je     4043b0 <fmt_fp+0x17f0>
  4043a1:	48 83 ef 01          	sub    $0x1,%rdi
  4043a5:	c6 07 30             	movb   $0x30,(%rdi)
  4043a8:	49 39 fd             	cmp    %rdi,%r13
  4043ab:	73 13                	jae    4043c0 <fmt_fp+0x1800>
  4043ad:	0f 1f 00             	nopl   (%rax)
  4043b0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  4043b4:	48 83 ef 02          	sub    $0x2,%rdi
  4043b8:	c6 07 30             	movb   $0x30,(%rdi)
  4043bb:	49 39 fd             	cmp    %rdi,%r13
  4043be:	72 f0                	jb     4043b0 <fmt_fp+0x17f0>
  4043c0:	4c 89 ef             	mov    %r13,%rdi
  4043c3:	f6 03 20             	testb  $0x20,(%rbx)
  4043c6:	74 28                	je     4043f0 <fmt_fp+0x1830>
  4043c8:	49 83 c6 04          	add    $0x4,%r14
  4043cc:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  4043d0:	4d 39 ce             	cmp    %r9,%r14
  4043d3:	0f 83 62 fa ff ff    	jae    403e3b <fmt_fp+0x127b>
  4043d9:	85 c0                	test   %eax,%eax
  4043db:	0f 8e 5a fa ff ff    	jle    403e3b <fmt_fp+0x127b>
  4043e1:	41 89 c7             	mov    %eax,%r15d
  4043e4:	e9 d7 fe ff ff       	jmp    4042c0 <fmt_fp+0x1700>
  4043e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4043f0:	b8 09 00 00 00       	mov    $0x9,%eax
  4043f5:	48 89 da             	mov    %rbx,%rdx
  4043f8:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  4043ff:	41 39 c7             	cmp    %eax,%r15d
  404402:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404409:	41 0f 4e c7          	cmovle %r15d,%eax
  40440d:	48 63 f0             	movslq %eax,%rsi
  404410:	e8 4b 1f 00 00       	call   406360 <__fwritex>
  404415:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40441c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404423:	66 0f 6f 05 a5 30 00 	movdqa 0x30a5(%rip),%xmm0        # 4074d0 <states+0x210>
  40442a:	00 
  40442b:	eb 9b                	jmp    4043c8 <fmt_fp+0x1808>
  40442d:	d9 ca                	fxch   %st(2)
  40442f:	d9 e0                	fchs
  404431:	d8 e1                	fsub   %st(1),%st
  404433:	de c1                	faddp  %st,%st(1)
  404435:	d9 e0                	fchs
  404437:	d9 c9                	fxch   %st(1)
  404439:	e9 d3 ee ff ff       	jmp    403311 <fmt_fp+0x751>
  40443e:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404442:	48 39 c3             	cmp    %rax,%rbx
  404445:	0f 85 c2 f1 ff ff    	jne    40360d <fmt_fp+0xa4d>
  40444b:	d9 e8                	fld1
  40444d:	e9 c1 f1 ff ff       	jmp    403613 <fmt_fp+0xa53>
  404452:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404456:	4c 89 e9             	mov    %r13,%rcx
  404459:	e9 e2 f2 ff ff       	jmp    403740 <fmt_fp+0xb80>
  40445e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  404464:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404469:	e9 32 ec ff ff       	jmp    4030a0 <fmt_fp+0x4e0>
  40446e:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404472:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  404476:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  40447a:	e9 01 ef ff ff       	jmp    403380 <fmt_fp+0x7c0>
  40447f:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  404486:	74 1f                	je     4044a7 <fmt_fp+0x18e7>
  404488:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  40448f:	41 83 c1 01          	add    $0x1,%r9d
  404493:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  404498:	44 29 c8             	sub    %r9d,%eax
  40449b:	41 83 ce 20          	or     $0x20,%r14d
  40449f:	4c 63 d0             	movslq %eax,%r10
  4044a2:	e9 0d f2 ff ff       	jmp    4036b4 <fmt_fp+0xaf4>
  4044a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4044ac:	e9 ee ec ff ff       	jmp    40319f <fmt_fp+0x5df>
  4044b1:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  4044b7:	74 ee                	je     4044a7 <fmt_fp+0x18e7>
  4044b9:	45 31 ff             	xor    %r15d,%r15d
  4044bc:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4044c2:	85 ff                	test   %edi,%edi
  4044c4:	0f 8f b9 f6 ff ff    	jg     403b83 <fmt_fp+0xfc3>
  4044ca:	e9 ca f2 ff ff       	jmp    403799 <fmt_fp+0xbd9>
  4044cf:	dd d8                	fstp   %st(0)
  4044d1:	dd d8                	fstp   %st(0)
  4044d3:	dd d8                	fstp   %st(0)
  4044d5:	49 89 c0             	mov    %rax,%r8
  4044d8:	e9 82 ef ff ff       	jmp    40345f <fmt_fp+0x89f>
  4044dd:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  4044e1:	e9 08 fb ff ff       	jmp    403fee <fmt_fp+0x142e>
  4044e6:	48 89 c2             	mov    %rax,%rdx
  4044e9:	be 01 00 00 00       	mov    $0x1,%esi
  4044ee:	48 8d 3d 42 2c 00 00 	lea    0x2c42(%rip),%rdi        # 407137 <_fini+0x373>
  4044f5:	e8 66 1e 00 00       	call   406360 <__fwritex>
  4044fa:	e9 77 fd ff ff       	jmp    404276 <fmt_fp+0x16b6>
  4044ff:	e8 dc e1 ff ff       	call   4026e0 <__stack_chk_fail>
  404504:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40450b:	00 00 00 
  40450e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404515:	00 00 00 
  404518:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40451f:	00 00 00 
  404522:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404529:	00 00 00 
  40452c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404533:	00 00 00 
  404536:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40453d:	00 00 00 

0000000000404540 <printf_core>:
  404540:	55                   	push   %rbp
  404541:	48 89 e5             	mov    %rsp,%rbp
  404544:	41 57                	push   %r15
  404546:	4c 8d 3d 73 2d 00 00 	lea    0x2d73(%rip),%r15        # 4072c0 <states>
  40454d:	41 56                	push   %r14
  40454f:	49 89 f6             	mov    %rsi,%r14
  404552:	41 55                	push   %r13
  404554:	45 31 ed             	xor    %r13d,%r13d
  404557:	41 54                	push   %r12
  404559:	53                   	push   %rbx
  40455a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  404561:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  404565:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  40456c:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  404573:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  40457a:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  404581:	00 00 
  404583:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  404587:	45 31 c0             	xor    %r8d,%r8d
  40458a:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404591:	00 00 00 
  404594:	41 0f b6 06          	movzbl (%r14),%eax
  404598:	45 01 c5             	add    %r8d,%r13d
  40459b:	84 c0                	test   %al,%al
  40459d:	0f 84 ad 06 00 00    	je     404c50 <printf_core+0x710>
  4045a3:	4d 89 f2             	mov    %r14,%r10
  4045a6:	eb 25                	jmp    4045cd <printf_core+0x8d>
  4045a8:	66 90                	xchg   %ax,%ax
  4045aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045b1:	00 00 00 00 
  4045b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045bc:	00 00 00 00 
  4045c0:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  4045c5:	49 83 c2 01          	add    $0x1,%r10
  4045c9:	84 c0                	test   %al,%al
  4045cb:	74 73                	je     404640 <printf_core+0x100>
  4045cd:	3c 25                	cmp    $0x25,%al
  4045cf:	75 ef                	jne    4045c0 <printf_core+0x80>
  4045d1:	4c 89 d3             	mov    %r10,%rbx
  4045d4:	eb 17                	jmp    4045ed <printf_core+0xad>
  4045d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4045dd:	00 00 00 
  4045e0:	48 83 c3 02          	add    $0x2,%rbx
  4045e4:	49 83 c2 01          	add    $0x1,%r10
  4045e8:	80 3b 25             	cmpb   $0x25,(%rbx)
  4045eb:	75 06                	jne    4045f3 <printf_core+0xb3>
  4045ed:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  4045f1:	74 ed                	je     4045e0 <printf_core+0xa0>
  4045f3:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  4045f9:	4d 29 f2             	sub    %r14,%r10
  4045fc:	45 29 eb             	sub    %r13d,%r11d
  4045ff:	49 63 c3             	movslq %r11d,%rax
  404602:	49 39 c2             	cmp    %rax,%r10
  404605:	0f 8f 15 03 00 00    	jg     404920 <printf_core+0x3e0>
  40460b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40460f:	45 89 d0             	mov    %r10d,%r8d
  404612:	48 85 c0             	test   %rax,%rax
  404615:	74 09                	je     404620 <printf_core+0xe0>
  404617:	f6 00 20             	testb  $0x20,(%rax)
  40461a:	0f 84 10 03 00 00    	je     404930 <printf_core+0x3f0>
  404620:	45 85 d2             	test   %r10d,%r10d
  404623:	74 2b                	je     404650 <printf_core+0x110>
  404625:	45 39 c3             	cmp    %r8d,%r11d
  404628:	0f 8c f2 02 00 00    	jl     404920 <printf_core+0x3e0>
  40462e:	49 89 de             	mov    %rbx,%r14
  404631:	e9 5e ff ff ff       	jmp    404594 <printf_core+0x54>
  404636:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40463d:	00 00 00 
  404640:	3c 25                	cmp    $0x25,%al
  404642:	74 8d                	je     4045d1 <printf_core+0x91>
  404644:	4c 89 d3             	mov    %r10,%rbx
  404647:	eb aa                	jmp    4045f3 <printf_core+0xb3>
  404649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404650:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404654:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404657:	89 c8                	mov    %ecx,%eax
  404659:	83 ff 09             	cmp    $0x9,%edi
  40465c:	77 1a                	ja     404678 <printf_core+0x138>
  40465e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  404662:	0f 84 e5 03 00 00    	je     404a4d <printf_core+0x50d>
  404668:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40466c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404671:	eb 1a                	jmp    40468d <printf_core+0x14d>
  404673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404678:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  40467c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  404681:	83 e9 20             	sub    $0x20,%ecx
  404684:	83 f9 1f             	cmp    $0x1f,%ecx
  404687:	0f 87 b5 05 00 00    	ja     404c42 <printf_core+0x702>
  40468d:	45 31 e4             	xor    %r12d,%r12d
  404690:	be 89 28 01 00       	mov    $0x12889,%esi
  404695:	eb 48                	jmp    4046df <printf_core+0x19f>
  404697:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40469e:	00 
  40469f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046a6:	00 00 00 00 
  4046aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046b1:	00 00 00 00 
  4046b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4046bc:	00 00 00 00 
  4046c0:	b8 01 00 00 00       	mov    $0x1,%eax
  4046c5:	48 83 c2 01          	add    $0x1,%rdx
  4046c9:	d3 e0                	shl    %cl,%eax
  4046cb:	0f be 0a             	movsbl (%rdx),%ecx
  4046ce:	41 09 c4             	or     %eax,%r12d
  4046d1:	89 c8                	mov    %ecx,%eax
  4046d3:	83 e9 20             	sub    $0x20,%ecx
  4046d6:	83 f9 1f             	cmp    $0x1f,%ecx
  4046d9:	0f 87 49 01 00 00    	ja     404828 <printf_core+0x2e8>
  4046df:	8d 48 e0             	lea    -0x20(%rax),%ecx
  4046e2:	0f a3 ce             	bt     %ecx,%esi
  4046e5:	72 d9                	jb     4046c0 <printf_core+0x180>
  4046e7:	3c 2a                	cmp    $0x2a,%al
  4046e9:	0f 85 39 01 00 00    	jne    404828 <printf_core+0x2e8>
  4046ef:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  4046f4:	48 89 c8             	mov    %rcx,%rax
  4046f7:	83 e9 30             	sub    $0x30,%ecx
  4046fa:	83 f9 09             	cmp    $0x9,%ecx
  4046fd:	0f 86 0d 03 00 00    	jbe    404a10 <printf_core+0x4d0>
  404703:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404709:	85 c9                	test   %ecx,%ecx
  40470b:	0f 85 dc 00 00 00    	jne    4047ed <printf_core+0x2ad>
  404711:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404715:	45 89 d1             	mov    %r10d,%r9d
  404718:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40471d:	0f 84 58 01 00 00    	je     40487b <printf_core+0x33b>
  404723:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  40472a:	8b 06                	mov    (%rsi),%eax
  40472c:	83 f8 2f             	cmp    $0x2f,%eax
  40472f:	0f 87 4a 03 00 00    	ja     404a7f <printf_core+0x53f>
  404735:	89 c2                	mov    %eax,%edx
  404737:	83 c0 08             	add    $0x8,%eax
  40473a:	48 03 56 10          	add    0x10(%rsi),%rdx
  40473e:	89 06                	mov    %eax,(%rsi)
  404740:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404747:	00 00 00 
  40474a:	44 8b 0a             	mov    (%rdx),%r9d
  40474d:	44 89 e2             	mov    %r12d,%edx
  404750:	0f b6 03             	movzbl (%rbx),%eax
  404753:	80 ce 20             	or     $0x20,%dh
  404756:	45 85 c9             	test   %r9d,%r9d
  404759:	44 0f 48 e2          	cmovs  %edx,%r12d
  40475d:	44 89 ca             	mov    %r9d,%edx
  404760:	f7 da                	neg    %edx
  404762:	45 85 c9             	test   %r9d,%r9d
  404765:	44 0f 48 ca          	cmovs  %edx,%r9d
  404769:	3c 2e                	cmp    $0x2e,%al
  40476b:	0f 84 12 01 00 00    	je     404883 <printf_core+0x343>
  404771:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404778:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  40477f:	31 c0                	xor    %eax,%eax
  404781:	eb 5f                	jmp    4047e2 <printf_core+0x2a2>
  404783:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404789:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404790:	00 00 00 00 
  404794:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40479b:	00 00 00 00 
  40479f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047a6:	00 00 00 00 
  4047aa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047b1:	00 00 00 00 
  4047b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047bc:	00 00 00 00 
  4047c0:	89 c1                	mov    %eax,%ecx
  4047c2:	48 63 d2             	movslq %edx,%rdx
  4047c5:	48 83 c3 01          	add    $0x1,%rbx
  4047c9:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  4047cd:	4c 01 fe             	add    %r15,%rsi
  4047d0:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  4047d4:	8d 56 ff             	lea    -0x1(%rsi),%edx
  4047d7:	83 fa 07             	cmp    $0x7,%edx
  4047da:	0f 87 90 01 00 00    	ja     404970 <printf_core+0x430>
  4047e0:	89 f0                	mov    %esi,%eax
  4047e2:	0f be 13             	movsbl (%rbx),%edx
  4047e5:	83 ea 41             	sub    $0x41,%edx
  4047e8:	83 fa 39             	cmp    $0x39,%edx
  4047eb:	76 d3                	jbe    4047c0 <printf_core+0x280>
  4047ed:	e8 de 16 00 00       	call   405ed0 <__errno_location>
  4047f2:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  4047f8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  4047fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404802:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404809:	00 00 
  40480b:	0f 85 a2 0f 00 00    	jne    4057b3 <printf_core+0x1273>
  404811:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404815:	44 89 d8             	mov    %r11d,%eax
  404818:	5b                   	pop    %rbx
  404819:	41 5c                	pop    %r12
  40481b:	41 5d                	pop    %r13
  40481d:	41 5e                	pop    %r14
  40481f:	41 5f                	pop    %r15
  404821:	5d                   	pop    %rbp
  404822:	c3                   	ret
  404823:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404828:	0f be 0a             	movsbl (%rdx),%ecx
  40482b:	45 89 d1             	mov    %r10d,%r9d
  40482e:	48 89 d3             	mov    %rdx,%rbx
  404831:	89 c8                	mov    %ecx,%eax
  404833:	83 e9 30             	sub    $0x30,%ecx
  404836:	83 f9 09             	cmp    $0x9,%ecx
  404839:	77 40                	ja     40487b <printf_core+0x33b>
  40483b:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404842:	0f 8f c8 00 00 00    	jg     404910 <printf_core+0x3d0>
  404848:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  40484c:	83 e8 30             	sub    $0x30,%eax
  40484f:	0f be c0             	movsbl %al,%eax
  404852:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404858:	39 f0                	cmp    %esi,%eax
  40485a:	0f 8f b0 00 00 00    	jg     404910 <printf_core+0x3d0>
  404860:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404864:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404868:	29 c8                	sub    %ecx,%eax
  40486a:	41 89 c1             	mov    %eax,%r9d
  40486d:	89 d0                	mov    %edx,%eax
  40486f:	83 ea 30             	sub    $0x30,%edx
  404872:	83 fa 09             	cmp    $0x9,%edx
  404875:	0f 86 3d 0f 00 00    	jbe    4057b8 <printf_core+0x1278>
  40487b:	3c 2e                	cmp    $0x2e,%al
  40487d:	0f 85 ee fe ff ff    	jne    404771 <printf_core+0x231>
  404883:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404887:	3c 2a                	cmp    $0x2a,%al
  404889:	0f 85 11 02 00 00    	jne    404aa0 <printf_core+0x560>
  40488f:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404893:	89 c2                	mov    %eax,%edx
  404895:	83 e8 30             	sub    $0x30,%eax
  404898:	83 f8 09             	cmp    $0x9,%eax
  40489b:	77 0a                	ja     4048a7 <printf_core+0x367>
  40489d:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  4048a1:	0f 84 4f 03 00 00    	je     404bf6 <printf_core+0x6b6>
  4048a7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  4048ad:	85 c0                	test   %eax,%eax
  4048af:	0f 85 38 ff ff ff    	jne    4047ed <printf_core+0x2ad>
  4048b5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  4048ba:	0f 84 6f 03 00 00    	je     404c2f <printf_core+0x6ef>
  4048c0:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  4048c7:	8b 06                	mov    (%rsi),%eax
  4048c9:	83 f8 2f             	cmp    $0x2f,%eax
  4048cc:	0f 87 60 02 00 00    	ja     404b32 <printf_core+0x5f2>
  4048d2:	89 c2                	mov    %eax,%edx
  4048d4:	83 c0 08             	add    $0x8,%eax
  4048d7:	48 03 56 10          	add    0x10(%rsi),%rdx
  4048db:	89 06                	mov    %eax,(%rsi)
  4048dd:	8b 02                	mov    (%rdx),%eax
  4048df:	89 45 80             	mov    %eax,-0x80(%rbp)
  4048e2:	f7 d0                	not    %eax
  4048e4:	c1 e8 1f             	shr    $0x1f,%eax
  4048e7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4048ed:	48 83 c3 02          	add    $0x2,%rbx
  4048f1:	e9 89 fe ff ff       	jmp    40477f <printf_core+0x23f>
  4048f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4048fd:	00 00 00 
  404900:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404904:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404908:	83 e8 30             	sub    $0x30,%eax
  40490b:	83 f8 09             	cmp    $0x9,%eax
  40490e:	77 10                	ja     404920 <printf_core+0x3e0>
  404910:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404914:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404918:	83 ea 30             	sub    $0x30,%edx
  40491b:	83 fa 09             	cmp    $0x9,%edx
  40491e:	76 e0                	jbe    404900 <printf_core+0x3c0>
  404920:	e8 ab 15 00 00       	call   405ed0 <__errno_location>
  404925:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  40492b:	e9 c8 fe ff ff       	jmp    4047f8 <printf_core+0x2b8>
  404930:	49 63 f2             	movslq %r10d,%rsi
  404933:	48 89 c2             	mov    %rax,%rdx
  404936:	4c 89 f7             	mov    %r14,%rdi
  404939:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404940:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404947:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40494b:	e8 10 1a 00 00       	call   406360 <__fwritex>
  404950:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404957:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40495e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404962:	e9 b9 fc ff ff       	jmp    404620 <printf_core+0xe0>
  404967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40496e:	00 00 
  404970:	85 f6                	test   %esi,%esi
  404972:	0f 84 75 fe ff ff    	je     4047ed <printf_core+0x2ad>
  404978:	83 fe 1b             	cmp    $0x1b,%esi
  40497b:	0f 84 e5 00 00 00    	je     404a66 <printf_core+0x526>
  404981:	83 ff ff             	cmp    $0xffffffff,%edi
  404984:	0f 84 01 02 00 00    	je     404b8b <printf_core+0x64b>
  40498a:	48 63 ff             	movslq %edi,%rdi
  40498d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404992:	0f 84 b2 01 00 00    	je     404b4a <printf_core+0x60a>
  404998:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  40499f:	48 c1 e7 04          	shl    $0x4,%rdi
  4049a3:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  4049a8:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  4049ac:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4049b0:	f6 07 20             	testb  $0x20,(%rdi)
  4049b3:	0f 85 3f fe ff ff    	jne    4047f8 <printf_core+0x2b8>
  4049b9:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  4049bd:	89 d6                	mov    %edx,%esi
  4049bf:	85 c0                	test   %eax,%eax
  4049c1:	74 13                	je     4049d6 <printf_core+0x496>
  4049c3:	89 d7                	mov    %edx,%edi
  4049c5:	83 e6 df             	and    $0xffffffdf,%esi
  4049c8:	83 e7 0f             	and    $0xf,%edi
  4049cb:	40 0f be f6          	movsbl %sil,%esi
  4049cf:	40 80 ff 03          	cmp    $0x3,%dil
  4049d3:	0f 44 d6             	cmove  %esi,%edx
  4049d6:	44 89 e6             	mov    %r12d,%esi
  4049d9:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  4049df:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  4049e6:	44 0f 45 e6          	cmovne %esi,%r12d
  4049ea:	8d 72 bf             	lea    -0x41(%rdx),%esi
  4049ed:	83 fe 37             	cmp    $0x37,%esi
  4049f0:	0f 87 c2 02 00 00    	ja     404cb8 <printf_core+0x778>
  4049f6:	48 8d 3d 97 27 00 00 	lea    0x2797(%rip),%rdi        # 407194 <_fini+0x3d0>
  4049fd:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404a01:	48 01 fe             	add    %rdi,%rsi
  404a04:	3e ff e6             	notrack jmp *%rsi
  404a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404a0e:	00 00 
  404a10:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404a14:	0f 84 ab 01 00 00    	je     404bc5 <printf_core+0x685>
  404a1a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404a20:	85 f6                	test   %esi,%esi
  404a22:	0f 85 c5 fd ff ff    	jne    4047ed <printf_core+0x2ad>
  404a28:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404a2c:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404a31:	0f 85 ec fc ff ff    	jne    404723 <printf_core+0x1e3>
  404a37:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404a3e:	45 89 d1             	mov    %r10d,%r9d
  404a41:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404a48:	e9 32 fd ff ff       	jmp    40477f <printf_core+0x23f>
  404a4d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404a51:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404a55:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404a5c:	00 00 00 
  404a5f:	89 c8                	mov    %ecx,%eax
  404a61:	e9 1b fc ff ff       	jmp    404681 <printf_core+0x141>
  404a66:	83 ff ff             	cmp    $0xffffffff,%edi
  404a69:	0f 85 7e fd ff ff    	jne    4047ed <printf_core+0x2ad>
  404a6f:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404a74:	0f 85 32 ff ff ff    	jne    4049ac <printf_core+0x46c>
  404a7a:	e9 af fb ff ff       	jmp    40462e <printf_core+0xee>
  404a7f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404a86:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404a8a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404a8e:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404a92:	e9 a9 fc ff ff       	jmp    404740 <printf_core+0x200>
  404a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404a9e:	00 00 
  404aa0:	0f be d0             	movsbl %al,%edx
  404aa3:	48 83 c3 01          	add    $0x1,%rbx
  404aa7:	83 ea 30             	sub    $0x30,%edx
  404aaa:	83 fa 09             	cmp    $0x9,%edx
  404aad:	0f 87 93 0b 00 00    	ja     405646 <printf_core+0x1106>
  404ab3:	44 89 d2             	mov    %r10d,%edx
  404ab6:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404abc:	0f 8f fe 0c 00 00    	jg     4057c0 <printf_core+0x1280>
  404ac2:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404ac5:	83 e8 30             	sub    $0x30,%eax
  404ac8:	0f be c0             	movsbl %al,%eax
  404acb:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404ad1:	39 c2                	cmp    %eax,%edx
  404ad3:	0f 8d 87 00 00 00    	jge    404b60 <printf_core+0x620>
  404ad9:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404add:	83 e8 30             	sub    $0x30,%eax
  404ae0:	83 f8 09             	cmp    $0x9,%eax
  404ae3:	0f 87 8b 0a 00 00    	ja     405574 <printf_core+0x1034>
  404ae9:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404aed:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404af1:	83 ea 30             	sub    $0x30,%edx
  404af4:	83 fa 09             	cmp    $0x9,%edx
  404af7:	77 20                	ja     404b19 <printf_core+0x5d9>
  404af9:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404afd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404b01:	83 ea 30             	sub    $0x30,%edx
  404b04:	83 fa 09             	cmp    $0x9,%edx
  404b07:	77 13                	ja     404b1c <printf_core+0x5dc>
  404b09:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404b0d:	48 83 c0 02          	add    $0x2,%rax
  404b11:	83 ea 30             	sub    $0x30,%edx
  404b14:	83 fa 09             	cmp    $0x9,%edx
  404b17:	76 e0                	jbe    404af9 <printf_core+0x5b9>
  404b19:	48 89 c3             	mov    %rax,%rbx
  404b1c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404b23:	00 00 00 
  404b26:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404b2d:	e9 4d fc ff ff       	jmp    40477f <printf_core+0x23f>
  404b32:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404b39:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404b3d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404b41:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404b45:	e9 93 fd ff ff       	jmp    4048dd <printf_core+0x39d>
  404b4a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404b51:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404b54:	e9 d5 fa ff ff       	jmp    40462e <printf_core+0xee>
  404b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404b60:	48 83 c3 01          	add    $0x1,%rbx
  404b64:	29 c8                	sub    %ecx,%eax
  404b66:	0f be 0b             	movsbl (%rbx),%ecx
  404b69:	89 c2                	mov    %eax,%edx
  404b6b:	89 c8                	mov    %ecx,%eax
  404b6d:	83 e9 30             	sub    $0x30,%ecx
  404b70:	83 f9 09             	cmp    $0x9,%ecx
  404b73:	0f 86 3d ff ff ff    	jbe    404ab6 <printf_core+0x576>
  404b79:	89 55 80             	mov    %edx,-0x80(%rbp)
  404b7c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404b83:	00 00 00 
  404b86:	e9 f4 fb ff ff       	jmp    40477f <printf_core+0x23f>
  404b8b:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404b90:	0f 84 15 0c 00 00    	je     4057ab <printf_core+0x126b>
  404b96:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404b9d:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404ba1:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404ba7:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404bae:	e8 1d dd ff ff       	call   4028d0 <pop_arg>
  404bb3:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404bb9:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404bc0:	e9 e7 fd ff ff       	jmp    4049ac <printf_core+0x46c>
  404bc5:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404bc9:	48 83 e8 30          	sub    $0x30,%rax
  404bcd:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bd2:	0f 84 b6 09 00 00    	je     40558e <printf_core+0x104e>
  404bd8:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404bdf:	48 c1 e0 04          	shl    $0x4,%rax
  404be3:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404bea:	00 00 00 
  404bed:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404bf1:	e9 57 fb ff ff       	jmp    40474d <printf_core+0x20d>
  404bf6:	48 0f be c2          	movsbq %dl,%rax
  404bfa:	48 83 e8 30          	sub    $0x30,%rax
  404bfe:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c03:	0f 84 a9 09 00 00    	je     4055b2 <printf_core+0x1072>
  404c09:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404c10:	48 c1 e0 04          	shl    $0x4,%rax
  404c14:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404c18:	89 45 80             	mov    %eax,-0x80(%rbp)
  404c1b:	f7 d0                	not    %eax
  404c1d:	c1 e8 1f             	shr    $0x1f,%eax
  404c20:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404c26:	48 83 c3 04          	add    $0x4,%rbx
  404c2a:	e9 50 fb ff ff       	jmp    40477f <printf_core+0x23f>
  404c2f:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404c33:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404c3a:	00 00 00 
  404c3d:	e9 ab fc ff ff       	jmp    4048ed <printf_core+0x3ad>
  404c42:	48 89 d3             	mov    %rdx,%rbx
  404c45:	45 89 d1             	mov    %r10d,%r9d
  404c48:	45 31 e4             	xor    %r12d,%r12d
  404c4b:	e9 2b fc ff ff       	jmp    40487b <printf_core+0x33b>
  404c50:	45 89 eb             	mov    %r13d,%r11d
  404c53:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c58:	0f 85 a0 fb ff ff    	jne    4047fe <printf_core+0x2be>
  404c5e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404c65:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404c6b:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404c71:	48 83 c7 10          	add    $0x10,%rdi
  404c75:	85 c9                	test   %ecx,%ecx
  404c77:	0f 84 2e 0b 00 00    	je     4057ab <printf_core+0x126b>
  404c7d:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404c84:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404c8b:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404c8f:	85 f6                	test   %esi,%esi
  404c91:	0f 84 90 0a 00 00    	je     405727 <printf_core+0x11e7>
  404c97:	e8 34 dc ff ff       	call   4028d0 <pop_arg>
  404c9c:	49 83 c0 01          	add    $0x1,%r8
  404ca0:	48 83 c7 10          	add    $0x10,%rdi
  404ca4:	49 83 f8 0a          	cmp    $0xa,%r8
  404ca8:	75 e1                	jne    404c8b <printf_core+0x74b>
  404caa:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404cb0:	e9 49 fb ff ff       	jmp    4047fe <printf_core+0x2be>
  404cb5:	0f 1f 00             	nopl   (%rax)
  404cb8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404cbc:	4c 29 f0             	sub    %r14,%rax
  404cbf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404cc6:	48 89 c7             	mov    %rax,%rdi
  404cc9:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404ccd:	48 39 c7             	cmp    %rax,%rdi
  404cd0:	0f 8e da 07 00 00    	jle    4054b0 <printf_core+0xf70>
  404cd6:	48 89 f8             	mov    %rdi,%rax
  404cd9:	48 8d 3d 59 24 00 00 	lea    0x2459(%rip),%rdi        # 407139 <_fini+0x375>
  404ce0:	89 45 80             	mov    %eax,-0x80(%rbp)
  404ce3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404cea:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404cf0:	44 89 d0             	mov    %r10d,%eax
  404cf3:	66 90                	xchg   %ax,%ax
  404cf5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404cfc:	00 00 00 00 
  404d00:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404d06:	41 39 c9             	cmp    %ecx,%r9d
  404d09:	41 89 c8             	mov    %ecx,%r8d
  404d0c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404d10:	45 39 c3             	cmp    %r8d,%r11d
  404d13:	0f 8c 07 fc ff ff    	jl     404920 <printf_core+0x3e0>
  404d19:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404d20:	0f 85 e2 06 00 00    	jne    405408 <printf_core+0xec8>
  404d26:	41 39 c9             	cmp    %ecx,%r9d
  404d29:	0f 8e 40 07 00 00    	jle    40546f <printf_core+0xf2f>
  404d2f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404d33:	44 89 c2             	mov    %r8d,%edx
  404d36:	be 20 00 00 00       	mov    $0x20,%esi
  404d3b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404d41:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404d48:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404d4f:	e8 6c dd ff ff       	call   402ac0 <pad.part.0>
  404d54:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404d58:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404d5f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404d66:	f6 00 20             	testb  $0x20,(%rax)
  404d69:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404d6f:	0f 84 07 07 00 00    	je     40547c <printf_core+0xf3c>
  404d75:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404d7c:	89 c1                	mov    %eax,%ecx
  404d7e:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404d81:	0f 8d a7 f8 ff ff    	jge    40462e <printf_core+0xee>
  404d87:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404d8e:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404d95:	8b 55 80             	mov    -0x80(%rbp),%edx
  404d98:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404d9c:	be 30 00 00 00       	mov    $0x30,%esi
  404da1:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404da8:	e8 13 dd ff ff       	call   402ac0 <pad.part.0>
  404dad:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404db4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404db8:	f6 00 20             	testb  $0x20,(%rax)
  404dbb:	75 1b                	jne    404dd8 <printf_core+0x898>
  404dbd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  404dc1:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  404dc8:	4c 89 f7             	mov    %r14,%rdi
  404dcb:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404dcf:	e8 8c 15 00 00       	call   406360 <__fwritex>
  404dd4:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404dd8:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  404ddf:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  404de6:	0f 85 42 f8 ff ff    	jne    40462e <printf_core+0xee>
  404dec:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  404df3:	0f 85 35 f8 ff ff    	jne    40462e <printf_core+0xee>
  404df9:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404dfd:	44 89 c2             	mov    %r8d,%edx
  404e00:	be 20 00 00 00       	mov    $0x20,%esi
  404e05:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  404e09:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404e0f:	e8 ac dc ff ff       	call   402ac0 <pad.part.0>
  404e14:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404e18:	e9 11 f8 ff ff       	jmp    40462e <printf_core+0xee>
  404e1d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  404e21:	45 85 c0             	test   %r8d,%r8d
  404e24:	79 0d                	jns    404e33 <printf_core+0x8f3>
  404e26:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404e2d:	0f 85 ed fa ff ff    	jne    404920 <printf_core+0x3e0>
  404e33:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404e3a:	41 89 d0             	mov    %edx,%r8d
  404e3d:	44 89 ce             	mov    %r9d,%esi
  404e40:	44 89 e1             	mov    %r12d,%ecx
  404e43:	ff 75 98             	push   -0x68(%rbp)
  404e46:	ff 75 90             	push   -0x70(%rbp)
  404e49:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404e4d:	8b 55 80             	mov    -0x80(%rbp),%edx
  404e50:	e8 6b dd ff ff       	call   402bc0 <fmt_fp>
  404e55:	5e                   	pop    %rsi
  404e56:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404e5d:	83 f8 ff             	cmp    $0xffffffff,%eax
  404e60:	41 89 c0             	mov    %eax,%r8d
  404e63:	5f                   	pop    %rdi
  404e64:	0f 85 bb f7 ff ff    	jne    404625 <printf_core+0xe5>
  404e6a:	e9 b1 fa ff ff       	jmp    404920 <printf_core+0x3e0>
  404e6f:	90                   	nop
  404e70:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  404e74:	48 85 f6             	test   %rsi,%rsi
  404e77:	0f 88 4f 08 00 00    	js     4056cc <printf_core+0x118c>
  404e7d:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  404e84:	0f 85 61 08 00 00    	jne    4056eb <printf_core+0x11ab>
  404e8a:	41 f6 c4 01          	test   $0x1,%r12b
  404e8e:	0f 85 7b 08 00 00    	jne    40570f <printf_core+0x11cf>
  404e94:	48 8d 3d 9e 22 00 00 	lea    0x229e(%rip),%rdi        # 407139 <_fini+0x375>
  404e9b:	44 89 d0             	mov    %r10d,%eax
  404e9e:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404ea5:	48 85 f6             	test   %rsi,%rsi
  404ea8:	0f 84 55 08 00 00    	je     405703 <printf_core+0x11c3>
  404eae:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  404eb5:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404eb9:	89 c7                	mov    %eax,%edi
  404ebb:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  404ec2:	cc cc cc 
  404ec5:	4d 89 c6             	mov    %r8,%r14
  404ec8:	90                   	nop
  404ec9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ed0:	00 00 00 00 
  404ed4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404edb:	00 00 00 00 
  404edf:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ee6:	00 00 00 00 
  404eea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ef1:	00 00 00 00 
  404ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404efc:	00 00 00 00 
  404f00:	48 89 f0             	mov    %rsi,%rax
  404f03:	49 83 ee 01          	sub    $0x1,%r14
  404f07:	48 f7 e1             	mul    %rcx
  404f0a:	48 89 f0             	mov    %rsi,%rax
  404f0d:	48 c1 ea 03          	shr    $0x3,%rdx
  404f11:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  404f15:	4d 01 d2             	add    %r10,%r10
  404f18:	4c 29 d0             	sub    %r10,%rax
  404f1b:	83 c0 30             	add    $0x30,%eax
  404f1e:	48 83 fe 09          	cmp    $0x9,%rsi
  404f22:	48 89 d6             	mov    %rdx,%rsi
  404f25:	41 88 06             	mov    %al,(%r14)
  404f28:	77 d6                	ja     404f00 <printf_core+0x9c0>
  404f2a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  404f31:	89 f8                	mov    %edi,%eax
  404f33:	8b 7d 80             	mov    -0x80(%rbp),%edi
  404f36:	85 ff                	test   %edi,%edi
  404f38:	79 0d                	jns    404f47 <printf_core+0xa07>
  404f3a:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  404f41:	0f 85 d9 f9 ff ff    	jne    404920 <printf_core+0x3e0>
  404f47:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f4d:	44 89 e2             	mov    %r12d,%edx
  404f50:	8b 75 80             	mov    -0x80(%rbp),%esi
  404f53:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  404f59:	85 c9                	test   %ecx,%ecx
  404f5b:	44 0f 45 e2          	cmovne %edx,%r12d
  404f5f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  404f64:	0f 94 c2             	sete   %dl
  404f67:	85 f6                	test   %esi,%esi
  404f69:	75 08                	jne    404f73 <printf_core+0xa33>
  404f6b:	84 d2                	test   %dl,%dl
  404f6d:	0f 85 e4 05 00 00    	jne    405557 <printf_core+0x1017>
  404f73:	4c 89 c7             	mov    %r8,%rdi
  404f76:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  404f7a:	0f b6 d2             	movzbl %dl,%edx
  404f7d:	4c 29 f7             	sub    %r14,%rdi
  404f80:	48 01 fa             	add    %rdi,%rdx
  404f83:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  404f8a:	48 39 ca             	cmp    %rcx,%rdx
  404f8d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  404f91:	48 63 ca             	movslq %edx,%rcx
  404f94:	48 39 cf             	cmp    %rcx,%rdi
  404f97:	0f 4e fa             	cmovle %edx,%edi
  404f9a:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  404f9f:	29 c2                	sub    %eax,%edx
  404fa1:	89 7d 80             	mov    %edi,-0x80(%rbp)
  404fa4:	39 fa                	cmp    %edi,%edx
  404fa6:	0f 8c 74 f9 ff ff    	jl     404920 <printf_core+0x3e0>
  404fac:	8b 7d 80             	mov    -0x80(%rbp),%edi
  404faf:	01 c7                	add    %eax,%edi
  404fb1:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  404fb7:	e9 44 fd ff ff       	jmp    404d00 <printf_core+0x7c0>
  404fbc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  404fc0:	48 85 c0             	test   %rax,%rax
  404fc3:	0f 84 9a 02 00 00    	je     405263 <printf_core+0xd23>
  404fc9:	44 89 e7             	mov    %r12d,%edi
  404fcc:	83 e7 08             	and    $0x8,%edi
  404fcf:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  404fd5:	89 d7                	mov    %edx,%edi
  404fd7:	83 e7 20             	and    $0x20,%edi
  404fda:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  404fe0:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  404fe4:	48 8d 35 b5 22 00 00 	lea    0x22b5(%rip),%rsi        # 4072a0 <xdigits>
  404feb:	4d 89 c6             	mov    %r8,%r14
  404fee:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ff5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404ffc:	00 00 00 00 
  405000:	48 89 c1             	mov    %rax,%rcx
  405003:	49 83 ee 01          	sub    $0x1,%r14
  405007:	83 e1 0f             	and    $0xf,%ecx
  40500a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  40500e:	09 fa                	or     %edi,%edx
  405010:	48 c1 e8 04          	shr    $0x4,%rax
  405014:	41 88 16             	mov    %dl,(%r14)
  405017:	75 e7                	jne    405000 <printf_core+0xac0>
  405019:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40501f:	85 c0                	test   %eax,%eax
  405021:	0f 85 f9 05 00 00    	jne    405620 <printf_core+0x10e0>
  405027:	48 8d 3d 0b 21 00 00 	lea    0x210b(%rip),%rdi        # 407139 <_fini+0x375>
  40502e:	44 89 d0             	mov    %r10d,%eax
  405031:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405038:	e9 f6 fe ff ff       	jmp    404f33 <printf_core+0x9f3>
  40503d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405041:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405045:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40504c:	48 85 d2             	test   %rdx,%rdx
  40504f:	0f 84 06 07 00 00    	je     40575b <printf_core+0x121b>
  405055:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40505c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  405060:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  405067:	31 db                	xor    %ebx,%ebx
  405069:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  405070:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  405074:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  40507b:	49 89 ce             	mov    %rcx,%r14
  40507e:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  405082:	49 89 d5             	mov    %rdx,%r13
  405085:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  40508c:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  405093:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  40509a:	eb 34                	jmp    4050d0 <printf_core+0xb90>
  40509c:	0f 1f 40 00          	nopl   0x0(%rax)
  4050a0:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  4050a7:	e8 24 10 00 00       	call   4060d0 <wctomb>
  4050ac:	85 c0                	test   %eax,%eax
  4050ae:	0f 88 44 f7 ff ff    	js     4047f8 <printf_core+0x2b8>
  4050b4:	4c 89 ea             	mov    %r13,%rdx
  4050b7:	48 98                	cltq
  4050b9:	48 29 da             	sub    %rbx,%rdx
  4050bc:	48 39 c2             	cmp    %rax,%rdx
  4050bf:	72 16                	jb     4050d7 <printf_core+0xb97>
  4050c1:	48 01 c3             	add    %rax,%rbx
  4050c4:	4d 63 ec             	movslq %r12d,%r13
  4050c7:	49 83 c6 04          	add    $0x4,%r14
  4050cb:	4c 39 eb             	cmp    %r13,%rbx
  4050ce:	73 07                	jae    4050d7 <printf_core+0xb97>
  4050d0:	41 8b 36             	mov    (%r14),%esi
  4050d3:	85 f6                	test   %esi,%esi
  4050d5:	75 c9                	jne    4050a0 <printf_core+0xb60>
  4050d7:	49 89 de             	mov    %rbx,%r14
  4050da:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  4050e1:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  4050e8:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  4050ef:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  4050f6:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  4050fd:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405101:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405108:	0f 87 12 f8 ff ff    	ja     404920 <printf_core+0x3e0>
  40510e:	45 39 f1             	cmp    %r14d,%r9d
  405111:	44 89 f0             	mov    %r14d,%eax
  405114:	0f 9e c2             	setle  %dl
  405117:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40511e:	0f 95 c1             	setne  %cl
  405121:	08 d1                	or     %dl,%cl
  405123:	0f 84 5c 05 00 00    	je     405685 <printf_core+0x1145>
  405129:	4d 85 f6             	test   %r14,%r14
  40512c:	0f 84 96 06 00 00    	je     4057c8 <printf_core+0x1288>
  405132:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  405136:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  40513d:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405144:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40514b:	45 31 e4             	xor    %r12d,%r12d
  40514e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405155:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405159:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40515d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  405164:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  40516b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  405171:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  405177:	eb 10                	jmp    405189 <printf_core+0xc49>
  405179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405180:	4d 39 f4             	cmp    %r14,%r12
  405183:	0f 83 46 03 00 00    	jae    4054cf <printf_core+0xf8f>
  405189:	8b 33                	mov    (%rbx),%esi
  40518b:	85 f6                	test   %esi,%esi
  40518d:	0f 84 3c 03 00 00    	je     4054cf <printf_core+0xf8f>
  405193:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  405197:	e8 34 0f 00 00       	call   4060d0 <wctomb>
  40519c:	48 63 f0             	movslq %eax,%rsi
  40519f:	49 01 f4             	add    %rsi,%r12
  4051a2:	4d 39 e6             	cmp    %r12,%r14
  4051a5:	0f 82 24 03 00 00    	jb     4054cf <printf_core+0xf8f>
  4051ab:	48 83 c3 04          	add    $0x4,%rbx
  4051af:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4051b4:	75 ca                	jne    405180 <printf_core+0xc40>
  4051b6:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4051ba:	4c 89 ea             	mov    %r13,%rdx
  4051bd:	e8 9e 11 00 00       	call   406360 <__fwritex>
  4051c2:	eb bc                	jmp    405180 <printf_core+0xc40>
  4051c4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4051c8:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4051cc:	4d 89 c6             	mov    %r8,%r14
  4051cf:	48 85 c0             	test   %rax,%rax
  4051d2:	74 21                	je     4051f5 <printf_core+0xcb5>
  4051d4:	90                   	nop
  4051d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4051dc:	00 00 00 00 
  4051e0:	89 c2                	mov    %eax,%edx
  4051e2:	49 83 ee 01          	sub    $0x1,%r14
  4051e6:	83 e2 07             	and    $0x7,%edx
  4051e9:	83 c2 30             	add    $0x30,%edx
  4051ec:	48 c1 e8 03          	shr    $0x3,%rax
  4051f0:	41 88 16             	mov    %dl,(%r14)
  4051f3:	75 eb                	jne    4051e0 <printf_core+0xca0>
  4051f5:	41 f6 c4 08          	test   $0x8,%r12b
  4051f9:	0f 84 28 fe ff ff    	je     405027 <printf_core+0xae7>
  4051ff:	4c 89 c0             	mov    %r8,%rax
  405202:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405206:	4c 29 f0             	sub    %r14,%rax
  405209:	48 39 d0             	cmp    %rdx,%rax
  40520c:	0f 8c 15 fe ff ff    	jl     405027 <printf_core+0xae7>
  405212:	83 c0 01             	add    $0x1,%eax
  405215:	48 8d 3d 1d 1f 00 00 	lea    0x1f1d(%rip),%rdi        # 407139 <_fini+0x375>
  40521c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40521f:	44 89 d0             	mov    %r10d,%eax
  405222:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405229:	e9 05 fd ff ff       	jmp    404f33 <printf_core+0x9f3>
  40522e:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405231:	b8 10 00 00 00       	mov    $0x10,%eax
  405236:	ba 78 00 00 00       	mov    $0x78,%edx
  40523b:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405242:	00 00 00 
  405245:	39 c7                	cmp    %eax,%edi
  405247:	0f 43 c7             	cmovae %edi,%eax
  40524a:	41 83 cc 08          	or     $0x8,%r12d
  40524e:	bf 20 00 00 00       	mov    $0x20,%edi
  405253:	89 45 80             	mov    %eax,-0x80(%rbp)
  405256:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40525a:	48 85 c0             	test   %rax,%rax
  40525d:	0f 85 77 fd ff ff    	jne    404fda <printf_core+0xa9a>
  405263:	48 8d 3d cf 1e 00 00 	lea    0x1ecf(%rip),%rdi        # 407139 <_fini+0x375>
  40526a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40526e:	44 89 d0             	mov    %r10d,%eax
  405271:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405278:	4d 89 c6             	mov    %r8,%r14
  40527b:	e9 b3 fc ff ff       	jmp    404f33 <printf_core+0x9f3>
  405280:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405284:	48 8d 05 b8 1e 00 00 	lea    0x1eb8(%rip),%rax        # 407143 <_fini+0x37f>
  40528b:	4d 85 f6             	test   %r14,%r14
  40528e:	4c 0f 44 f0          	cmove  %rax,%r14
  405292:	8b 45 80             	mov    -0x80(%rbp),%eax
  405295:	85 c0                	test   %eax,%eax
  405297:	0f 88 36 03 00 00    	js     4055d3 <printf_core+0x1093>
  40529d:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  4052a1:	4c 89 f7             	mov    %r14,%rdi
  4052a4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4052ab:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4052b2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4052b9:	e8 82 07 00 00       	call   405a40 <strnlen>
  4052be:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  4052c5:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4052cc:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4052d3:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  4052d7:	4c 29 f2             	sub    %r14,%rdx
  4052da:	89 45 80             	mov    %eax,-0x80(%rbp)
  4052dd:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  4052e4:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  4052eb:	48 89 d7             	mov    %rdx,%rdi
  4052ee:	48 63 d0             	movslq %eax,%rdx
  4052f1:	48 39 d7             	cmp    %rdx,%rdi
  4052f4:	0f 8e b9 01 00 00    	jle    4054b3 <printf_core+0xf73>
  4052fa:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405301:	e9 d3 f9 ff ff       	jmp    404cd9 <printf_core+0x799>
  405306:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40530a:	48 85 f6             	test   %rsi,%rsi
  40530d:	0f 85 46 03 00 00    	jne    405659 <printf_core+0x1119>
  405313:	48 8d 3d 1f 1e 00 00 	lea    0x1e1f(%rip),%rdi        # 407139 <_fini+0x375>
  40531a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40531e:	44 89 d0             	mov    %r10d,%eax
  405321:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405328:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40532f:	00 00 00 
  405332:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  405336:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40533d:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405344:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40534b:	01 00 00 00 
  40534f:	e9 ac f9 ff ff       	jmp    404d00 <printf_core+0x7c0>
  405354:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40535b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405362:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405369:	e8 62 0b 00 00       	call   405ed0 <__errno_location>
  40536e:	8b 38                	mov    (%rax),%edi
  405370:	e8 ab 0b 00 00       	call   405f20 <strerror>
  405375:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  40537c:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  405383:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  40538a:	49 89 c6             	mov    %rax,%r14
  40538d:	e9 00 ff ff ff       	jmp    405292 <printf_core+0xd52>
  405392:	83 f8 07             	cmp    $0x7,%eax
  405395:	0f 87 93 f2 ff ff    	ja     40462e <printf_core+0xee>
  40539b:	48 8d 15 d2 1e 00 00 	lea    0x1ed2(%rip),%rdx        # 407274 <_fini+0x4b0>
  4053a2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4053a6:	48 01 d0             	add    %rdx,%rax
  4053a9:	3e ff e0             	notrack jmp *%rax
  4053ac:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4053b0:	49 63 c5             	movslq %r13d,%rax
  4053b3:	48 89 02             	mov    %rax,(%rdx)
  4053b6:	e9 73 f2 ff ff       	jmp    40462e <printf_core+0xee>
  4053bb:	48 8d 3d 77 1d 00 00 	lea    0x1d77(%rip),%rdi        # 407139 <_fini+0x375>
  4053c2:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4053c6:	44 89 d0             	mov    %r10d,%eax
  4053c9:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4053d0:	e9 d0 fa ff ff       	jmp    404ea5 <printf_core+0x965>
  4053d5:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4053d9:	e9 35 ff ff ff       	jmp    405313 <printf_core+0xdd3>
  4053de:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053e2:	44 89 28             	mov    %r13d,(%rax)
  4053e5:	e9 44 f2 ff ff       	jmp    40462e <printf_core+0xee>
  4053ea:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053ee:	66 44 89 28          	mov    %r13w,(%rax)
  4053f2:	e9 37 f2 ff ff       	jmp    40462e <printf_core+0xee>
  4053f7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4053fb:	44 88 28             	mov    %r13b,(%rax)
  4053fe:	e9 2b f2 ff ff       	jmp    40462e <printf_core+0xee>
  405403:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405408:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40540c:	f6 07 20             	testb  $0x20,(%rdi)
  40540f:	74 6b                	je     40547c <printf_core+0xf3c>
  405411:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405417:	44 89 e0             	mov    %r12d,%eax
  40541a:	41 39 c9             	cmp    %ecx,%r9d
  40541d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405424:	35 00 00 01 00       	xor    $0x10000,%eax
  405429:	a9 00 20 01 00       	test   $0x12000,%eax
  40542e:	75 28                	jne    405458 <printf_core+0xf18>
  405430:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405437:	75 1f                	jne    405458 <printf_core+0xf18>
  405439:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40543d:	44 89 c2             	mov    %r8d,%edx
  405440:	be 30 00 00 00       	mov    $0x30,%esi
  405445:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40544c:	e8 6f d6 ff ff       	call   402ac0 <pad.part.0>
  405451:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405458:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40545f:	89 c1                	mov    %eax,%ecx
  405461:	3b 45 80             	cmp    -0x80(%rbp),%eax
  405464:	0f 8d 4a f9 ff ff    	jge    404db4 <printf_core+0x874>
  40546a:	e9 26 f9 ff ff       	jmp    404d95 <printf_core+0x855>
  40546f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405473:	f6 07 20             	testb  $0x20,(%rdi)
  405476:	0f 85 f9 f8 ff ff    	jne    404d75 <printf_core+0x835>
  40547c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405480:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  405487:	48 63 f0             	movslq %eax,%rsi
  40548a:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  405491:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  405498:	e8 c3 0e 00 00       	call   406360 <__fwritex>
  40549d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4054a4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4054ab:	e9 61 ff ff ff       	jmp    405411 <printf_core+0xed1>
  4054b0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4054b3:	48 8d 3d 7f 1c 00 00 	lea    0x1c7f(%rip),%rdi        # 407139 <_fini+0x375>
  4054ba:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4054c0:	44 89 d0             	mov    %r10d,%eax
  4054c3:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4054ca:	e9 31 f8 ff ff       	jmp    404d00 <printf_core+0x7c0>
  4054cf:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4054d6:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  4054dd:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  4054e4:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  4054eb:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  4054f1:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  4054f8:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  4054ff:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405506:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40550d:	75 39                	jne    405548 <printf_core+0x1008>
  40550f:	84 d2                	test   %dl,%dl
  405511:	75 35                	jne    405548 <printf_core+0x1008>
  405513:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405517:	89 c1                	mov    %eax,%ecx
  405519:	44 89 ca             	mov    %r9d,%edx
  40551c:	be 20 00 00 00       	mov    $0x20,%esi
  405521:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405528:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40552e:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405532:	e8 89 d5 ff ff       	call   402ac0 <pad.part.0>
  405537:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40553e:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405544:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405548:	41 39 c1             	cmp    %eax,%r9d
  40554b:	41 0f 4d c1          	cmovge %r9d,%eax
  40554f:	41 89 c0             	mov    %eax,%r8d
  405552:	e9 ce f0 ff ff       	jmp    404625 <printf_core+0xe5>
  405557:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40555d:	4d 89 c6             	mov    %r8,%r14
  405560:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  405564:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  40556b:	00 00 00 00 
  40556f:	e9 8c f7 ff ff       	jmp    404d00 <printf_core+0x7c0>
  405574:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40557b:	00 00 00 
  40557e:	48 83 c3 01          	add    $0x1,%rbx
  405582:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405589:	e9 f1 f1 ff ff       	jmp    40477f <printf_core+0x23f>
  40558e:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  405595:	45 89 d1             	mov    %r10d,%r9d
  405598:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  40559f:	00 00 00 
  4055a2:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4055a9:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  4055ad:	e9 c9 f2 ff ff       	jmp    40487b <printf_core+0x33b>
  4055b2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4055b9:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4055bd:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4055c4:	00 00 00 
  4055c7:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4055ce:	e9 53 f6 ff ff       	jmp    404c26 <printf_core+0x6e6>
  4055d3:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  4055d8:	4c 89 f7             	mov    %r14,%rdi
  4055db:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  4055df:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  4055e6:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4055ed:	e8 4e 04 00 00       	call   405a40 <strnlen>
  4055f2:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  4055f6:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  4055fd:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405601:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405608:	80 3a 00             	cmpb   $0x0,(%rdx)
  40560b:	0f 84 c6 fc ff ff    	je     4052d7 <printf_core+0xd97>
  405611:	e9 0a f3 ff ff       	jmp    404920 <printf_core+0x3e0>
  405616:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40561d:	00 00 00 
  405620:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  405626:	48 8d 15 0c 1b 00 00 	lea    0x1b0c(%rip),%rdx        # 407139 <_fini+0x375>
  40562d:	c1 f8 04             	sar    $0x4,%eax
  405630:	48 98                	cltq
  405632:	48 01 d0             	add    %rdx,%rax
  405635:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40563c:	b8 02 00 00 00       	mov    $0x2,%eax
  405641:	e9 ed f8 ff ff       	jmp    404f33 <printf_core+0x9f3>
  405646:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40564a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405651:	00 00 00 
  405654:	e9 26 f1 ff ff       	jmp    40477f <printf_core+0x23f>
  405659:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40565d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  405660:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  405667:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  40566e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  405672:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  405679:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  405680:	e9 d0 f9 ff ff       	jmp    405055 <printf_core+0xb15>
  405685:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405689:	44 89 ca             	mov    %r9d,%edx
  40568c:	44 89 f1             	mov    %r14d,%ecx
  40568f:	be 20 00 00 00       	mov    $0x20,%esi
  405694:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  40569b:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  40569f:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  4056a6:	e8 15 d4 ff ff       	call   402ac0 <pad.part.0>
  4056ab:	4d 85 f6             	test   %r14,%r14
  4056ae:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4056b2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4056b8:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  4056bf:	0f 84 83 fe ff ff    	je     405548 <printf_core+0x1008>
  4056c5:	31 d2                	xor    %edx,%edx
  4056c7:	e9 66 fa ff ff       	jmp    405132 <printf_core+0xbf2>
  4056cc:	48 f7 de             	neg    %rsi
  4056cf:	48 8d 3d 63 1a 00 00 	lea    0x1a63(%rip),%rdi        # 407139 <_fini+0x375>
  4056d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4056db:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  4056df:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4056e6:	e9 c3 f7 ff ff       	jmp    404eae <printf_core+0x96e>
  4056eb:	48 8d 3d 48 1a 00 00 	lea    0x1a48(%rip),%rdi        # 40713a <_fini+0x376>
  4056f2:	b8 01 00 00 00       	mov    $0x1,%eax
  4056f7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4056fe:	e9 a2 f7 ff ff       	jmp    404ea5 <printf_core+0x965>
  405703:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405707:	4d 89 c6             	mov    %r8,%r14
  40570a:	e9 24 f8 ff ff       	jmp    404f33 <printf_core+0x9f3>
  40570f:	48 8d 3d 25 1a 00 00 	lea    0x1a25(%rip),%rdi        # 40713b <_fini+0x377>
  405716:	b8 01 00 00 00       	mov    $0x1,%eax
  40571b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405722:	e9 7e f7 ff ff       	jmp    404ea5 <printf_core+0x965>
  405727:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40572e:	eb 1e                	jmp    40574e <printf_core+0x120e>
  405730:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405735:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40573c:	00 00 00 00 
  405740:	49 83 c0 01          	add    $0x1,%r8
  405744:	49 83 f8 0a          	cmp    $0xa,%r8
  405748:	0f 84 5c f5 ff ff    	je     404caa <printf_core+0x76a>
  40574e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405752:	85 d2                	test   %edx,%edx
  405754:	74 ea                	je     405740 <printf_core+0x1200>
  405756:	e9 92 f0 ff ff       	jmp    4047ed <printf_core+0x2ad>
  40575b:	45 85 c9             	test   %r9d,%r9d
  40575e:	0f 94 c0             	sete   %al
  405761:	89 c2                	mov    %eax,%edx
  405763:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40576a:	75 5c                	jne    4057c8 <printf_core+0x1288>
  40576c:	84 c0                	test   %al,%al
  40576e:	75 58                	jne    4057c8 <printf_core+0x1288>
  405770:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405774:	44 89 ca             	mov    %r9d,%edx
  405777:	31 c9                	xor    %ecx,%ecx
  405779:	be 20 00 00 00       	mov    $0x20,%esi
  40577e:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405785:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405789:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  405790:	e8 2b d3 ff ff       	call   402ac0 <pad.part.0>
  405795:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40579b:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  40579f:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4057a6:	e9 9d fd ff ff       	jmp    405548 <printf_core+0x1008>
  4057ab:	45 31 db             	xor    %r11d,%r11d
  4057ae:	e9 4b f0 ff ff       	jmp    4047fe <printf_core+0x2be>
  4057b3:	e8 28 cf ff ff       	call   4026e0 <__stack_chk_fail>
  4057b8:	48 89 da             	mov    %rbx,%rdx
  4057bb:	e9 7b f0 ff ff       	jmp    40483b <printf_core+0x2fb>
  4057c0:	48 89 d8             	mov    %rbx,%rax
  4057c3:	e9 31 f3 ff ff       	jmp    404af9 <printf_core+0x5b9>
  4057c8:	44 89 d0             	mov    %r10d,%eax
  4057cb:	e9 2f fd ff ff       	jmp    4054ff <printf_core+0xfbf>

00000000004057d0 <vfprintf>:
  4057d0:	f3 0f 1e fa          	endbr64
  4057d4:	55                   	push   %rbp
  4057d5:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4057d9:	48 89 e5             	mov    %rsp,%rbp
  4057dc:	41 57                	push   %r15
  4057de:	41 56                	push   %r14
  4057e0:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  4057e7:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4057ee:	41 55                	push   %r13
  4057f0:	4c 89 f1             	mov    %r14,%rcx
  4057f3:	49 89 fd             	mov    %rdi,%r13
  4057f6:	31 ff                	xor    %edi,%edi
  4057f8:	41 54                	push   %r12
  4057fa:	53                   	push   %rbx
  4057fb:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405802:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405809:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405810:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405817:	00 00 
  405819:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40581d:	31 c0                	xor    %eax,%eax
  40581f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405826:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  40582d:	00 00 00 00 
  405831:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405838:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  40583f:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405843:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  40584a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  40584e:	48 89 da             	mov    %rbx,%rdx
  405851:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405858:	e8 e3 ec ff ff       	call   404540 <printf_core>
  40585d:	85 c0                	test   %eax,%eax
  40585f:	0f 88 68 01 00 00    	js     4059cd <vfprintf+0x1fd>
  405865:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  40586c:	31 db                	xor    %ebx,%ebx
  40586e:	85 c0                	test   %eax,%eax
  405870:	78 0a                	js     40587c <vfprintf+0xac>
  405872:	4c 89 ef             	mov    %r13,%rdi
  405875:	e8 86 08 00 00       	call   406100 <__lockfile>
  40587a:	89 c3                	mov    %eax,%ebx
  40587c:	41 8b 45 00          	mov    0x0(%r13),%eax
  405880:	89 c1                	mov    %eax,%ecx
  405882:	83 e0 df             	and    $0xffffffdf,%eax
  405885:	83 e1 20             	and    $0x20,%ecx
  405888:	41 89 45 00          	mov    %eax,0x0(%r13)
  40588c:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405892:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405897:	74 77                	je     405910 <vfprintf+0x140>
  405899:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  40589e:	0f 84 39 01 00 00    	je     4059dd <vfprintf+0x20d>
  4058a4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  4058ab:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  4058b2:	4c 89 f1             	mov    %r14,%rcx
  4058b5:	4c 89 ef             	mov    %r13,%rdi
  4058b8:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  4058bf:	e8 7c ec ff ff       	call   404540 <printf_core>
  4058c4:	41 89 c4             	mov    %eax,%r12d
  4058c7:	41 8b 45 00          	mov    0x0(%r13),%eax
  4058cb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4058d0:	a8 20                	test   $0x20,%al
  4058d2:	44 0f 45 e2          	cmovne %edx,%r12d
  4058d6:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  4058dc:	41 89 45 00          	mov    %eax,0x0(%r13)
  4058e0:	85 db                	test   %ebx,%ebx
  4058e2:	0f 85 d8 00 00 00    	jne    4059c0 <vfprintf+0x1f0>
  4058e8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4058ec:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4058f3:	00 00 
  4058f5:	0f 85 dd 00 00 00    	jne    4059d8 <vfprintf+0x208>
  4058fb:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405902:	44 89 e0             	mov    %r12d,%eax
  405905:	5b                   	pop    %rbx
  405906:	41 5c                	pop    %r12
  405908:	41 5d                	pop    %r13
  40590a:	41 5e                	pop    %r14
  40590c:	41 5f                	pop    %r15
  40590e:	5d                   	pop    %rbp
  40590f:	c3                   	ret
  405910:	49 8b 45 58          	mov    0x58(%r13),%rax
  405914:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  40591b:	00 
  40591c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405920:	4c 89 ef             	mov    %r13,%rdi
  405923:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  40592a:	00 
  40592b:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405931:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405938:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  40593f:	49 89 45 58          	mov    %rax,0x58(%r13)
  405943:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405948:	e8 a3 09 00 00       	call   4062f0 <__towrite>
  40594d:	85 c0                	test   %eax,%eax
  40594f:	75 23                	jne    405974 <vfprintf+0x1a4>
  405951:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405958:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  40595f:	4c 89 f1             	mov    %r14,%rcx
  405962:	4c 89 ef             	mov    %r13,%rdi
  405965:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  40596c:	e8 cf eb ff ff       	call   404540 <printf_core>
  405971:	41 89 c4             	mov    %eax,%r12d
  405974:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  40597b:	4d 85 f6             	test   %r14,%r14
  40597e:	0f 84 43 ff ff ff    	je     4058c7 <vfprintf+0xf7>
  405984:	31 d2                	xor    %edx,%edx
  405986:	31 f6                	xor    %esi,%esi
  405988:	4c 89 ef             	mov    %r13,%rdi
  40598b:	41 ff 55 48          	call   *0x48(%r13)
  40598f:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405994:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405998:	4d 89 75 58          	mov    %r14,0x58(%r13)
  40599c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4059a1:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  4059a8:	00 
  4059a9:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  4059b0:	00 
  4059b1:	44 0f 44 e0          	cmove  %eax,%r12d
  4059b5:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  4059ba:	e9 08 ff ff ff       	jmp    4058c7 <vfprintf+0xf7>
  4059bf:	90                   	nop
  4059c0:	4c 89 ef             	mov    %r13,%rdi
  4059c3:	e8 f8 07 00 00       	call   4061c0 <__unlockfile>
  4059c8:	e9 1b ff ff ff       	jmp    4058e8 <vfprintf+0x118>
  4059cd:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  4059d3:	e9 10 ff ff ff       	jmp    4058e8 <vfprintf+0x118>
  4059d8:	e8 03 cd ff ff       	call   4026e0 <__stack_chk_fail>
  4059dd:	4c 89 ef             	mov    %r13,%rdi
  4059e0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  4059e6:	e8 05 09 00 00       	call   4062f0 <__towrite>
  4059eb:	85 c0                	test   %eax,%eax
  4059ed:	0f 85 d4 fe ff ff    	jne    4058c7 <vfprintf+0xf7>
  4059f3:	e9 ac fe ff ff       	jmp    4058a4 <vfprintf+0xd4>
  4059f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4059ff:	00 

0000000000405a00 <vsprintf>:
  405a00:	f3 0f 1e fa          	endbr64
  405a04:	48 89 d1             	mov    %rdx,%rcx
  405a07:	48 89 f2             	mov    %rsi,%rdx
  405a0a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405a0f:	e9 bc 0b 00 00       	jmp    4065d0 <vsnprintf>
  405a14:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405a1b:	00 00 00 
  405a1e:	66 90                	xchg   %ax,%ax

0000000000405a20 <strcpy>:
  405a20:	f3 0f 1e fa          	endbr64
  405a24:	55                   	push   %rbp
  405a25:	48 89 e5             	mov    %rsp,%rbp
  405a28:	53                   	push   %rbx
  405a29:	48 89 fb             	mov    %rdi,%rbx
  405a2c:	48 83 ec 08          	sub    $0x8,%rsp
  405a30:	e8 8b 0d 00 00       	call   4067c0 <__stpcpy>
  405a35:	48 89 d8             	mov    %rbx,%rax
  405a38:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405a3c:	c9                   	leave
  405a3d:	c3                   	ret
  405a3e:	66 90                	xchg   %ax,%ax

0000000000405a40 <strnlen>:
  405a40:	f3 0f 1e fa          	endbr64
  405a44:	55                   	push   %rbp
  405a45:	48 89 f2             	mov    %rsi,%rdx
  405a48:	48 89 e5             	mov    %rsp,%rbp
  405a4b:	41 54                	push   %r12
  405a4d:	49 89 fc             	mov    %rdi,%r12
  405a50:	53                   	push   %rbx
  405a51:	48 89 f3             	mov    %rsi,%rbx
  405a54:	31 f6                	xor    %esi,%esi
  405a56:	e8 25 0c 00 00       	call   406680 <memchr>
  405a5b:	48 89 c2             	mov    %rax,%rdx
  405a5e:	4c 29 e0             	sub    %r12,%rax
  405a61:	48 85 d2             	test   %rdx,%rdx
  405a64:	48 0f 44 c3          	cmove  %rbx,%rax
  405a68:	5b                   	pop    %rbx
  405a69:	41 5c                	pop    %r12
  405a6b:	5d                   	pop    %rbp
  405a6c:	c3                   	ret

0000000000405a6d <memcpy>:
  405a6d:	48 89 f8             	mov    %rdi,%rax
  405a70:	48 83 fa 08          	cmp    $0x8,%rdx
  405a74:	72 14                	jb     405a8a <memcpy+0x1d>
  405a76:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405a7c:	74 0c                	je     405a8a <memcpy+0x1d>
  405a7e:	a4                   	movsb  (%rsi),(%rdi)
  405a7f:	48 ff ca             	dec    %rdx
  405a82:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405a88:	75 f4                	jne    405a7e <memcpy+0x11>
  405a8a:	48 89 d1             	mov    %rdx,%rcx
  405a8d:	48 c1 e9 03          	shr    $0x3,%rcx
  405a91:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405a94:	83 e2 07             	and    $0x7,%edx
  405a97:	74 05                	je     405a9e <memcpy+0x31>
  405a99:	a4                   	movsb  (%rsi),(%rdi)
  405a9a:	ff ca                	dec    %edx
  405a9c:	75 fb                	jne    405a99 <memcpy+0x2c>
  405a9e:	c3                   	ret

0000000000405a9f <memset>:
  405a9f:	48 0f b6 c6          	movzbq %sil,%rax
  405aa3:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405aaa:	01 01 01 
  405aad:	49 0f af c0          	imul   %r8,%rax
  405ab1:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405ab5:	77 78                	ja     405b2f <memset+0x90>
  405ab7:	85 d2                	test   %edx,%edx
  405ab9:	74 70                	je     405b2b <memset+0x8c>
  405abb:	40 88 37             	mov    %sil,(%rdi)
  405abe:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405ac3:	83 fa 02             	cmp    $0x2,%edx
  405ac6:	76 63                	jbe    405b2b <memset+0x8c>
  405ac8:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405acc:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405ad1:	83 fa 06             	cmp    $0x6,%edx
  405ad4:	76 55                	jbe    405b2b <memset+0x8c>
  405ad6:	89 47 03             	mov    %eax,0x3(%rdi)
  405ad9:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405add:	83 fa 0e             	cmp    $0xe,%edx
  405ae0:	76 49                	jbe    405b2b <memset+0x8c>
  405ae2:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405ae6:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405aeb:	83 fa 1e             	cmp    $0x1e,%edx
  405aee:	76 3b                	jbe    405b2b <memset+0x8c>
  405af0:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405af4:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405af8:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405afd:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405b02:	83 fa 3e             	cmp    $0x3e,%edx
  405b05:	76 24                	jbe    405b2b <memset+0x8c>
  405b07:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405b0b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405b0f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405b13:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405b17:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405b1c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405b21:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405b26:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405b2b:	48 89 f8             	mov    %rdi,%rax
  405b2e:	c3                   	ret
  405b2f:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405b35:	49 89 f8             	mov    %rdi,%r8
  405b38:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405b3d:	48 89 d1             	mov    %rdx,%rcx
  405b40:	75 0b                	jne    405b4d <memset+0xae>
  405b42:	48 c1 e9 03          	shr    $0x3,%rcx
  405b46:	f3 48 ab             	rep stos %rax,(%rdi)
  405b49:	4c 89 c0             	mov    %r8,%rax
  405b4c:	c3                   	ret
  405b4d:	31 d2                	xor    %edx,%edx
  405b4f:	29 fa                	sub    %edi,%edx
  405b51:	83 e2 0f             	and    $0xf,%edx
  405b54:	48 89 07             	mov    %rax,(%rdi)
  405b57:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405b5b:	48 29 d1             	sub    %rdx,%rcx
  405b5e:	48 01 d7             	add    %rdx,%rdi
  405b61:	eb df                	jmp    405b42 <memset+0xa3>
  405b63:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405b6a:	00 00 00 
  405b6d:	0f 1f 00             	nopl   (%rax)

0000000000405b70 <__init_tp>:
  405b70:	f3 0f 1e fa          	endbr64
  405b74:	55                   	push   %rbp
  405b75:	48 89 e5             	mov    %rsp,%rbp
  405b78:	53                   	push   %rbx
  405b79:	48 89 fb             	mov    %rdi,%rbx
  405b7c:	48 83 ec 08          	sub    $0x8,%rsp
  405b80:	48 89 3f             	mov    %rdi,(%rdi)
  405b83:	e8 21 0d 00 00       	call   4068a9 <__set_thread_area>
  405b88:	85 c0                	test   %eax,%eax
  405b8a:	78 65                	js     405bf1 <__init_tp+0x81>
  405b8c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405b91:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405b95:	74 51                	je     405be8 <__init_tp+0x78>
  405b97:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405b9e:	b8 da 00 00 00       	mov    $0xda,%eax
  405ba3:	48 8d 3d e6 4b 00 00 	lea    0x4be6(%rip),%rdi        # 40a790 <__thread_list_lock>
  405baa:	0f 05                	syscall
  405bac:	89 43 30             	mov    %eax,0x30(%rbx)
  405baf:	48 8d 05 e2 45 00 00 	lea    0x45e2(%rip),%rax        # 40a198 <__libc+0x38>
  405bb6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405bbd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405bc4:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405bcb:	48 8b 05 5e 45 00 00 	mov    0x455e(%rip),%rax        # 40a130 <__sysinfo>
  405bd2:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405bd6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405bda:	31 c0                	xor    %eax,%eax
  405bdc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405be0:	c9                   	leave
  405be1:	c3                   	ret
  405be2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405be8:	c6 05 71 45 00 00 01 	movb   $0x1,0x4571(%rip)        # 40a160 <__libc>
  405bef:	eb a6                	jmp    405b97 <__init_tp+0x27>
  405bf1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405bf6:	eb e4                	jmp    405bdc <__init_tp+0x6c>
  405bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405bff:	00 

0000000000405c00 <__copy_tls>:
  405c00:	f3 0f 1e fa          	endbr64
  405c04:	55                   	push   %rbp
  405c05:	48 8b 05 6c 45 00 00 	mov    0x456c(%rip),%rax        # 40a178 <__libc+0x18>
  405c0c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405c13:	ff 
  405c14:	48 89 e5             	mov    %rsp,%rbp
  405c17:	41 56                	push   %r14
  405c19:	49 89 fe             	mov    %rdi,%r14
  405c1c:	41 55                	push   %r13
  405c1e:	4c 8b 2d 5b 45 00 00 	mov    0x455b(%rip),%r13        # 40a180 <__libc+0x20>
  405c25:	41 54                	push   %r12
  405c27:	53                   	push   %rbx
  405c28:	48 8b 1d 41 45 00 00 	mov    0x4541(%rip),%rbx        # 40a170 <__libc+0x10>
  405c2f:	49 f7 dd             	neg    %r13
  405c32:	49 21 c5             	and    %rax,%r13
  405c35:	48 85 db             	test   %rbx,%rbx
  405c38:	74 32                	je     405c6c <__copy_tls+0x6c>
  405c3a:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405c3e:	66 90                	xchg   %ax,%ax
  405c40:	4c 89 e8             	mov    %r13,%rax
  405c43:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405c47:	4c 89 ef             	mov    %r13,%rdi
  405c4a:	49 83 c4 08          	add    $0x8,%r12
  405c4e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405c53:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405c57:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405c5b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405c5f:	e8 09 fe ff ff       	call   405a6d <memcpy>
  405c64:	48 8b 1b             	mov    (%rbx),%rbx
  405c67:	48 85 db             	test   %rbx,%rbx
  405c6a:	75 d4                	jne    405c40 <__copy_tls+0x40>
  405c6c:	48 8b 05 15 45 00 00 	mov    0x4515(%rip),%rax        # 40a188 <__libc+0x28>
  405c73:	49 89 06             	mov    %rax,(%r14)
  405c76:	4c 89 e8             	mov    %r13,%rax
  405c79:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405c7d:	5b                   	pop    %rbx
  405c7e:	41 5c                	pop    %r12
  405c80:	41 5d                	pop    %r13
  405c82:	41 5e                	pop    %r14
  405c84:	5d                   	pop    %rbp
  405c85:	c3                   	ret
  405c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405c8d:	00 00 00 

0000000000405c90 <__init_tls>:
  405c90:	f3 0f 1e fa          	endbr64
  405c94:	55                   	push   %rbp
  405c95:	48 89 e5             	mov    %rsp,%rbp
  405c98:	53                   	push   %rbx
  405c99:	48 83 ec 08          	sub    $0x8,%rsp
  405c9d:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405ca1:	48 85 c9             	test   %rcx,%rcx
  405ca4:	0f 84 fe 01 00 00    	je     405ea8 <__init_tls+0x218>
  405caa:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405cae:	31 f6                	xor    %esi,%esi
  405cb0:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405cb4:	45 31 c0             	xor    %r8d,%r8d
  405cb7:	4c 89 d0             	mov    %r10,%rax
  405cba:	eb 29                	jmp    405ce5 <__init_tls+0x55>
  405cbc:	0f 1f 40 00          	nopl   0x0(%rax)
  405cc0:	83 fa 02             	cmp    $0x2,%edx
  405cc3:	0f 85 77 01 00 00    	jne    405e40 <__init_tls+0x1b0>
  405cc9:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405cd0:	48 85 d2             	test   %rdx,%rdx
  405cd3:	74 07                	je     405cdc <__init_tls+0x4c>
  405cd5:	48 89 d6             	mov    %rdx,%rsi
  405cd8:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405cdc:	48 01 f8             	add    %rdi,%rax
  405cdf:	48 83 e9 01          	sub    $0x1,%rcx
  405ce3:	74 17                	je     405cfc <__init_tls+0x6c>
  405ce5:	8b 10                	mov    (%rax),%edx
  405ce7:	83 fa 06             	cmp    $0x6,%edx
  405cea:	75 d4                	jne    405cc0 <__init_tls+0x30>
  405cec:	4c 89 d6             	mov    %r10,%rsi
  405cef:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405cf3:	48 01 f8             	add    %rdi,%rax
  405cf6:	48 83 e9 01          	sub    $0x1,%rcx
  405cfa:	75 e9                	jne    405ce5 <__init_tls+0x55>
  405cfc:	4d 85 c0             	test   %r8,%r8
  405cff:	0f 84 a3 01 00 00    	je     405ea8 <__init_tls+0x218>
  405d05:	49 8b 40 20          	mov    0x20(%r8),%rax
  405d09:	49 03 70 10          	add    0x10(%r8),%rsi
  405d0d:	48 8d 1d ec 48 00 00 	lea    0x48ec(%rip),%rbx        # 40a600 <main_tls>
  405d14:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405d18:	48 89 35 e9 48 00 00 	mov    %rsi,0x48e9(%rip)        # 40a608 <main_tls+0x8>
  405d1f:	48 89 05 ea 48 00 00 	mov    %rax,0x48ea(%rip)        # 40a610 <main_tls+0x10>
  405d26:	49 8b 40 30          	mov    0x30(%r8),%rax
  405d2a:	48 c7 05 53 44 00 00 	movq   $0x1,0x4453(%rip)        # 40a188 <__libc+0x28>
  405d31:	01 00 00 00 
  405d35:	48 89 05 e4 48 00 00 	mov    %rax,0x48e4(%rip)        # 40a620 <main_tls+0x20>
  405d3c:	48 89 1d 2d 44 00 00 	mov    %rbx,0x442d(%rip)        # 40a170 <__libc+0x10>
  405d43:	48 01 d6             	add    %rdx,%rsi
  405d46:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405d4a:	48 f7 de             	neg    %rsi
  405d4d:	48 21 ce             	and    %rcx,%rsi
  405d50:	48 01 d6             	add    %rdx,%rsi
  405d53:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405d5a:	48 89 35 b7 48 00 00 	mov    %rsi,0x48b7(%rip)        # 40a618 <main_tls+0x18>
  405d61:	48 89 35 c0 48 00 00 	mov    %rsi,0x48c0(%rip)        # 40a628 <main_tls+0x28>
  405d68:	48 83 f8 07          	cmp    $0x7,%rax
  405d6c:	77 15                	ja     405d83 <__init_tls+0xf3>
  405d6e:	48 c7 05 a7 48 00 00 	movq   $0x8,0x48a7(%rip)        # 40a620 <main_tls+0x20>
  405d75:	08 00 00 00 
  405d79:	ba e7 00 00 00       	mov    $0xe7,%edx
  405d7e:	b8 08 00 00 00       	mov    $0x8,%eax
  405d83:	48 01 d6             	add    %rdx,%rsi
  405d86:	48 89 05 f3 43 00 00 	mov    %rax,0x43f3(%rip)        # 40a180 <__libc+0x20>
  405d8d:	48 8d 3d ac 48 00 00 	lea    0x48ac(%rip),%rdi        # 40a640 <builtin_tls>
  405d94:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405d98:	48 89 35 d9 43 00 00 	mov    %rsi,0x43d9(%rip)        # 40a178 <__libc+0x18>
  405d9f:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405da6:	76 21                	jbe    405dc9 <__init_tls+0x139>
  405da8:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405dae:	45 31 c9             	xor    %r9d,%r9d
  405db1:	b8 09 00 00 00       	mov    $0x9,%eax
  405db6:	31 ff                	xor    %edi,%edi
  405db8:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405dbf:	ba 03 00 00 00       	mov    $0x3,%edx
  405dc4:	0f 05                	syscall
  405dc6:	48 89 c7             	mov    %rax,%rdi
  405dc9:	e8 32 fe ff ff       	call   405c00 <__copy_tls>
  405dce:	48 89 00             	mov    %rax,(%rax)
  405dd1:	48 89 c7             	mov    %rax,%rdi
  405dd4:	48 89 c3             	mov    %rax,%rbx
  405dd7:	e8 cd 0a 00 00       	call   4068a9 <__set_thread_area>
  405ddc:	85 c0                	test   %eax,%eax
  405dde:	0f 88 b8 00 00 00    	js     405e9c <__init_tls+0x20c>
  405de4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405de9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405ded:	0f 84 9d 00 00 00    	je     405e90 <__init_tls+0x200>
  405df3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405dfa:	b8 da 00 00 00       	mov    $0xda,%eax
  405dff:	48 8d 3d 8a 49 00 00 	lea    0x498a(%rip),%rdi        # 40a790 <__thread_list_lock>
  405e06:	0f 05                	syscall
  405e08:	89 43 30             	mov    %eax,0x30(%rbx)
  405e0b:	48 8d 05 86 43 00 00 	lea    0x4386(%rip),%rax        # 40a198 <__libc+0x38>
  405e12:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405e19:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405e20:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405e27:	48 8b 05 02 43 00 00 	mov    0x4302(%rip),%rax        # 40a130 <__sysinfo>
  405e2e:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405e32:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405e36:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405e3a:	c9                   	leave
  405e3b:	c3                   	ret
  405e3c:	0f 1f 40 00          	nopl   0x0(%rax)
  405e40:	83 fa 07             	cmp    $0x7,%edx
  405e43:	75 0b                	jne    405e50 <__init_tls+0x1c0>
  405e45:	49 89 c0             	mov    %rax,%r8
  405e48:	e9 8f fe ff ff       	jmp    405cdc <__init_tls+0x4c>
  405e4d:	0f 1f 00             	nopl   (%rax)
  405e50:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  405e56:	0f 85 80 fe ff ff    	jne    405cdc <__init_tls+0x4c>
  405e5c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  405e60:	44 8b 0d a5 42 00 00 	mov    0x42a5(%rip),%r9d        # 40a10c <__default_stacksize>
  405e67:	49 39 d1             	cmp    %rdx,%r9
  405e6a:	0f 83 6c fe ff ff    	jae    405cdc <__init_tls+0x4c>
  405e70:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405e76:	4c 39 ca             	cmp    %r9,%rdx
  405e79:	49 0f 47 d1          	cmova  %r9,%rdx
  405e7d:	89 15 89 42 00 00    	mov    %edx,0x4289(%rip)        # 40a10c <__default_stacksize>
  405e83:	e9 54 fe ff ff       	jmp    405cdc <__init_tls+0x4c>
  405e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405e8f:	00 
  405e90:	c6 05 c9 42 00 00 01 	movb   $0x1,0x42c9(%rip)        # 40a160 <__libc>
  405e97:	e9 57 ff ff ff       	jmp    405df3 <__init_tls+0x163>
  405e9c:	f4                   	hlt
  405e9d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405ea1:	c9                   	leave
  405ea2:	c3                   	ret
  405ea3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405ea8:	48 8b 15 69 47 00 00 	mov    0x4769(%rip),%rdx        # 40a618 <main_tls+0x18>
  405eaf:	48 8b 35 52 47 00 00 	mov    0x4752(%rip),%rsi        # 40a608 <main_tls+0x8>
  405eb6:	48 8b 05 63 47 00 00 	mov    0x4763(%rip),%rax        # 40a620 <main_tls+0x20>
  405ebd:	e9 81 fe ff ff       	jmp    405d43 <__init_tls+0xb3>
  405ec2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405ec9:	00 00 00 
  405ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405ed0 <__errno_location>:
  405ed0:	f3 0f 1e fa          	endbr64
  405ed4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405edb:	00 00 
  405edd:	48 83 c0 34          	add    $0x34,%rax
  405ee1:	c3                   	ret
  405ee2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405ee9:	00 00 00 
  405eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405ef0 <__strerror_l>:
  405ef0:	f3 0f 1e fa          	endbr64
  405ef4:	48 8d 05 05 17 00 00 	lea    0x1705(%rip),%rax        # 407600 <errmsgstr>
  405efb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  405f01:	77 11                	ja     405f14 <__strerror_l+0x24>
  405f03:	48 63 ff             	movslq %edi,%rdi
  405f06:	48 8d 15 d3 15 00 00 	lea    0x15d3(%rip),%rdx        # 4074e0 <errmsgidx>
  405f0d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  405f11:	48 01 d0             	add    %rdx,%rax
  405f14:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  405f18:	48 89 c7             	mov    %rax,%rdi
  405f1b:	e9 50 00 00 00       	jmp    405f70 <__lctrans>

0000000000405f20 <strerror>:
  405f20:	f3 0f 1e fa          	endbr64
  405f24:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405f2b:	00 00 
  405f2d:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  405f34:	e9 b7 ff ff ff       	jmp    405ef0 <__strerror_l>
  405f39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405f40 <_Exit>:
  405f40:	f3 0f 1e fa          	endbr64
  405f44:	48 63 ff             	movslq %edi,%rdi
  405f47:	b8 e7 00 00 00       	mov    $0xe7,%eax
  405f4c:	0f 05                	syscall
  405f4e:	66 90                	xchg   %ax,%ax
  405f50:	b8 3c 00 00 00       	mov    $0x3c,%eax
  405f55:	0f 05                	syscall
  405f57:	eb f7                	jmp    405f50 <_Exit+0x10>
  405f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405f60 <__lctrans_impl>:
  405f60:	f3 0f 1e fa          	endbr64
  405f64:	48 89 f8             	mov    %rdi,%rax
  405f67:	c3                   	ret
  405f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405f6f:	00 

0000000000405f70 <__lctrans>:
  405f70:	f3 0f 1e fa          	endbr64
  405f74:	e9 e7 ff ff ff       	jmp    405f60 <__lctrans_impl>
  405f79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405f80 <__lctrans_cur>:
  405f80:	f3 0f 1e fa          	endbr64
  405f84:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  405f8b:	00 00 
  405f8d:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  405f94:	48 8b 70 28          	mov    0x28(%rax),%rsi
  405f98:	e9 c3 ff ff ff       	jmp    405f60 <__lctrans_impl>
  405f9d:	0f 1f 00             	nopl   (%rax)

0000000000405fa0 <__fpclassifyl>:
  405fa0:	f3 0f 1e fa          	endbr64
  405fa4:	55                   	push   %rbp
  405fa5:	48 89 e5             	mov    %rsp,%rbp
  405fa8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  405fac:	48 8b 45 18          	mov    0x18(%rbp),%rax
  405fb0:	48 89 ca             	mov    %rcx,%rdx
  405fb3:	89 c6                	mov    %eax,%esi
  405fb5:	25 ff 7f 00 00       	and    $0x7fff,%eax
  405fba:	48 c1 ea 3f          	shr    $0x3f,%rdx
  405fbe:	66 81 e6 ff 7f       	and    $0x7fff,%si
  405fc3:	09 d0                	or     %edx,%eax
  405fc5:	74 31                	je     405ff8 <__fpclassifyl+0x58>
  405fc7:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  405fce:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  405fd3:	74 0b                	je     405fe0 <__fpclassifyl+0x40>
  405fd5:	5d                   	pop    %rbp
  405fd6:	c3                   	ret
  405fd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405fde:	00 00 
  405fe0:	31 c0                	xor    %eax,%eax
  405fe2:	48 85 d2             	test   %rdx,%rdx
  405fe5:	74 ee                	je     405fd5 <__fpclassifyl+0x35>
  405fe7:	31 c0                	xor    %eax,%eax
  405fe9:	48 01 c9             	add    %rcx,%rcx
  405fec:	5d                   	pop    %rbp
  405fed:	0f 94 c0             	sete   %al
  405ff0:	c3                   	ret
  405ff1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405ff8:	48 83 f9 01          	cmp    $0x1,%rcx
  405ffc:	b8 02 00 00 00       	mov    $0x2,%eax
  406001:	5d                   	pop    %rbp
  406002:	83 d8 ff             	sbb    $0xffffffff,%eax
  406005:	c3                   	ret
  406006:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40600d:	00 00 00 

0000000000406010 <__signbitl>:
  406010:	f3 0f 1e fa          	endbr64
  406014:	55                   	push   %rbp
  406015:	48 89 e5             	mov    %rsp,%rbp
  406018:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  40601c:	5d                   	pop    %rbp
  40601d:	66 c1 e8 0f          	shr    $0xf,%ax
  406021:	0f b7 c0             	movzwl %ax,%eax
  406024:	c3                   	ret
  406025:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40602c:	00 00 00 
  40602f:	90                   	nop

0000000000406030 <frexpl>:
  406030:	f3 0f 1e fa          	endbr64
  406034:	55                   	push   %rbp
  406035:	48 89 e5             	mov    %rsp,%rbp
  406038:	48 83 ec 20          	sub    $0x20,%rsp
  40603c:	db 6d 10             	fldt   0x10(%rbp)
  40603f:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406043:	89 c2                	mov    %eax,%edx
  406045:	d9 c0                	fld    %st(0)
  406047:	db 7d f0             	fstpt  -0x10(%rbp)
  40604a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40604f:	74 2f                	je     406080 <frexpl+0x50>
  406051:	dd d8                	fstp   %st(0)
  406053:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406058:	74 38                	je     406092 <frexpl+0x62>
  40605a:	0f b7 d2             	movzwl %dx,%edx
  40605d:	66 25 00 80          	and    $0x8000,%ax
  406061:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  406067:	66 0d fe 3f          	or     $0x3ffe,%ax
  40606b:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  40606f:	db 6d f0             	fldt   -0x10(%rbp)
  406072:	89 17                	mov    %edx,(%rdi)
  406074:	c9                   	leave
  406075:	c3                   	ret
  406076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40607d:	00 00 00 
  406080:	d9 ee                	fldz
  406082:	d9 c9                	fxch   %st(1)
  406084:	df e9                	fucomip %st(1),%st
  406086:	dd d8                	fstp   %st(0)
  406088:	7a 16                	jp     4060a0 <frexpl+0x70>
  40608a:	75 14                	jne    4060a0 <frexpl+0x70>
  40608c:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  406092:	db 6d 10             	fldt   0x10(%rbp)
  406095:	c9                   	leave
  406096:	c3                   	ret
  406097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40609e:	00 00 
  4060a0:	db 6d 10             	fldt   0x10(%rbp)
  4060a3:	d8 0d 03 14 00 00    	fmuls  0x1403(%rip)        # 4074ac <states+0x1ec>
  4060a9:	48 83 ec 10          	sub    $0x10,%rsp
  4060ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4060b1:	db 3c 24             	fstpt  (%rsp)
  4060b4:	e8 77 ff ff ff       	call   406030 <frexpl>
  4060b9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4060bd:	83 2f 78             	subl   $0x78,(%rdi)
  4060c0:	58                   	pop    %rax
  4060c1:	5a                   	pop    %rdx
  4060c2:	c9                   	leave
  4060c3:	c3                   	ret
  4060c4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060cb:	00 00 00 
  4060ce:	66 90                	xchg   %ax,%ax

00000000004060d0 <wctomb>:
  4060d0:	f3 0f 1e fa          	endbr64
  4060d4:	48 85 ff             	test   %rdi,%rdi
  4060d7:	74 17                	je     4060f0 <wctomb+0x20>
  4060d9:	55                   	push   %rbp
  4060da:	31 d2                	xor    %edx,%edx
  4060dc:	48 89 e5             	mov    %rsp,%rbp
  4060df:	e8 3c 08 00 00       	call   406920 <wcrtomb>
  4060e4:	5d                   	pop    %rbp
  4060e5:	c3                   	ret
  4060e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060ed:	00 00 00 
  4060f0:	31 c0                	xor    %eax,%eax
  4060f2:	c3                   	ret
  4060f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4060fa:	00 00 00 
  4060fd:	0f 1f 00             	nopl   (%rax)

0000000000406100 <__lockfile>:
  406100:	f3 0f 1e fa          	endbr64
  406104:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40610a:	48 89 fa             	mov    %rdi,%rdx
  40610d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406114:	00 00 
  406116:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40611a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40611f:	31 c9                	xor    %ecx,%ecx
  406121:	44 39 c0             	cmp    %r8d,%eax
  406124:	74 3f                	je     406165 <__lockfile+0x65>
  406126:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  40612d:	89 c8                	mov    %ecx,%eax
  40612f:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  406136:	00 00 
  406138:	85 c0                	test   %eax,%eax
  40613a:	74 24                	je     406160 <__lockfile+0x60>
  40613c:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406143:	89 c8                	mov    %ecx,%eax
  406145:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40614c:	00 00 
  40614e:	89 c1                	mov    %eax,%ecx
  406150:	85 c0                	test   %eax,%eax
  406152:	75 33                	jne    406187 <__lockfile+0x87>
  406154:	90                   	nop
  406155:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40615c:	00 00 00 00 
  406160:	b9 01 00 00 00       	mov    $0x1,%ecx
  406165:	89 c8                	mov    %ecx,%eax
  406167:	c3                   	ret
  406168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40616f:	00 
  406170:	89 c8                	mov    %ecx,%eax
  406172:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406176:	39 c8                	cmp    %ecx,%eax
  406178:	74 1d                	je     406197 <__lockfile+0x97>
  40617a:	31 c0                	xor    %eax,%eax
  40617c:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406181:	89 c1                	mov    %eax,%ecx
  406183:	85 c0                	test   %eax,%eax
  406185:	74 d9                	je     406160 <__lockfile+0x60>
  406187:	89 ca                	mov    %ecx,%edx
  406189:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  40618f:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  406195:	74 d9                	je     406170 <__lockfile+0x70>
  406197:	48 63 d2             	movslq %edx,%rdx
  40619a:	45 31 d2             	xor    %r10d,%r10d
  40619d:	b8 ca 00 00 00       	mov    $0xca,%eax
  4061a2:	be 80 00 00 00       	mov    $0x80,%esi
  4061a7:	0f 05                	syscall
  4061a9:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4061ad:	75 cb                	jne    40617a <__lockfile+0x7a>
  4061af:	45 31 d2             	xor    %r10d,%r10d
  4061b2:	31 f6                	xor    %esi,%esi
  4061b4:	b8 ca 00 00 00       	mov    $0xca,%eax
  4061b9:	0f 05                	syscall
  4061bb:	eb bd                	jmp    40617a <__lockfile+0x7a>
  4061bd:	0f 1f 00             	nopl   (%rax)

00000000004061c0 <__unlockfile>:
  4061c0:	f3 0f 1e fa          	endbr64
  4061c4:	48 89 fa             	mov    %rdi,%rdx
  4061c7:	31 c0                	xor    %eax,%eax
  4061c9:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  4061d0:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  4061d6:	a9 00 00 00 40       	test   $0x40000000,%eax
  4061db:	74 17                	je     4061f4 <__unlockfile+0x34>
  4061dd:	be 81 00 00 00       	mov    $0x81,%esi
  4061e2:	b8 ca 00 00 00       	mov    $0xca,%eax
  4061e7:	ba 01 00 00 00       	mov    $0x1,%edx
  4061ec:	0f 05                	syscall
  4061ee:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4061f2:	74 04                	je     4061f8 <__unlockfile+0x38>
  4061f4:	c3                   	ret
  4061f5:	0f 1f 00             	nopl   (%rax)
  4061f8:	b8 ca 00 00 00       	mov    $0xca,%eax
  4061fd:	be 01 00 00 00       	mov    $0x1,%esi
  406202:	0f 05                	syscall
  406204:	c3                   	ret
  406205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40620c:	00 00 00 
  40620f:	90                   	nop

0000000000406210 <__aio_close>:
  406210:	f3 0f 1e fa          	endbr64
  406214:	89 f8                	mov    %edi,%eax
  406216:	c3                   	ret
  406217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40621e:	00 00 

0000000000406220 <__stdio_close>:
  406220:	f3 0f 1e fa          	endbr64
  406224:	55                   	push   %rbp
  406225:	8b 7f 78             	mov    0x78(%rdi),%edi
  406228:	48 89 e5             	mov    %rsp,%rbp
  40622b:	e8 e0 ff ff ff       	call   406210 <__aio_close>
  406230:	48 63 f8             	movslq %eax,%rdi
  406233:	b8 03 00 00 00       	mov    $0x3,%eax
  406238:	0f 05                	syscall
  40623a:	48 89 c7             	mov    %rax,%rdi
  40623d:	e8 9e 06 00 00       	call   4068e0 <__syscall_ret>
  406242:	5d                   	pop    %rbp
  406243:	c3                   	ret
  406244:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40624b:	00 00 00 
  40624e:	66 90                	xchg   %ax,%ax

0000000000406250 <__stdio_seek>:
  406250:	f3 0f 1e fa          	endbr64
  406254:	8b 7f 78             	mov    0x78(%rdi),%edi
  406257:	e9 64 06 00 00       	jmp    4068c0 <__lseek>
  40625c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406260 <__stdout_write>:
  406260:	f3 0f 1e fa          	endbr64
  406264:	55                   	push   %rbp
  406265:	48 8d 05 d4 08 00 00 	lea    0x8d4(%rip),%rax        # 406b40 <__stdio_write>
  40626c:	49 89 f8             	mov    %rdi,%r8
  40626f:	49 89 f1             	mov    %rsi,%r9
  406272:	48 89 e5             	mov    %rsp,%rbp
  406275:	48 83 ec 10          	sub    $0x10,%rsp
  406279:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406280:	00 00 
  406282:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406286:	49 89 d2             	mov    %rdx,%r10
  406289:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40628d:	f6 07 40             	testb  $0x40,(%rdi)
  406290:	75 19                	jne    4062ab <__stdout_write+0x4b>
  406292:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406296:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40629a:	b8 10 00 00 00       	mov    $0x10,%eax
  40629f:	be 13 54 00 00       	mov    $0x5413,%esi
  4062a4:	0f 05                	syscall
  4062a6:	48 85 c0             	test   %rax,%rax
  4062a9:	75 25                	jne    4062d0 <__stdout_write+0x70>
  4062ab:	4c 89 d2             	mov    %r10,%rdx
  4062ae:	4c 89 ce             	mov    %r9,%rsi
  4062b1:	4c 89 c7             	mov    %r8,%rdi
  4062b4:	e8 87 08 00 00       	call   406b40 <__stdio_write>
  4062b9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4062bd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4062c4:	00 00 
  4062c6:	75 15                	jne    4062dd <__stdout_write+0x7d>
  4062c8:	c9                   	leave
  4062c9:	c3                   	ret
  4062ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4062d0:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  4062d7:	ff ff ff ff 
  4062db:	eb ce                	jmp    4062ab <__stdout_write+0x4b>
  4062dd:	e8 fe c3 ff ff       	call   4026e0 <__stack_chk_fail>
  4062e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062e9:	00 00 00 
  4062ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004062f0 <__towrite>:
  4062f0:	f3 0f 1e fa          	endbr64
  4062f4:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  4062fa:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4062fd:	09 d0                	or     %edx,%eax
  4062ff:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  406305:	8b 07                	mov    (%rdi),%eax
  406307:	a8 08                	test   $0x8,%al
  406309:	75 35                	jne    406340 <__towrite+0x50>
  40630b:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40630f:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  406313:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406317:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  40631b:	48 01 c1             	add    %rax,%rcx
  40631e:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406323:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406327:	31 c0                	xor    %eax,%eax
  406329:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40632e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406332:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406336:	c3                   	ret
  406337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40633e:	00 00 
  406340:	83 c8 20             	or     $0x20,%eax
  406343:	89 07                	mov    %eax,(%rdi)
  406345:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40634a:	c3                   	ret
  40634b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406350 <__towrite_needs_stdio_exit>:
  406350:	f3 0f 1e fa          	endbr64
  406354:	e9 87 07 00 00       	jmp    406ae0 <__stdio_exit>
  406359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406360 <__fwritex>:
  406360:	f3 0f 1e fa          	endbr64
  406364:	55                   	push   %rbp
  406365:	48 89 f9             	mov    %rdi,%rcx
  406368:	48 89 e5             	mov    %rsp,%rbp
  40636b:	41 54                	push   %r12
  40636d:	49 89 f4             	mov    %rsi,%r12
  406370:	53                   	push   %rbx
  406371:	48 89 d3             	mov    %rdx,%rbx
  406374:	48 83 ec 10          	sub    $0x10,%rsp
  406378:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40637c:	48 85 c0             	test   %rax,%rax
  40637f:	0f 84 ab 00 00 00    	je     406430 <__fwritex+0xd0>
  406385:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406389:	48 29 f8             	sub    %rdi,%rax
  40638c:	4c 39 e0             	cmp    %r12,%rax
  40638f:	72 57                	jb     4063e8 <__fwritex+0x88>
  406391:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406397:	4c 89 e2             	mov    %r12,%rdx
  40639a:	85 c0                	test   %eax,%eax
  40639c:	79 3d                	jns    4063db <__fwritex+0x7b>
  40639e:	4d 89 e0             	mov    %r12,%r8
  4063a1:	4c 89 c2             	mov    %r8,%rdx
  4063a4:	48 89 ce             	mov    %rcx,%rsi
  4063a7:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  4063ab:	e8 bd f6 ff ff       	call   405a6d <memcpy>
  4063b0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4063b4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4063b8:	4c 89 e0             	mov    %r12,%rax
  4063bb:	48 83 c4 10          	add    $0x10,%rsp
  4063bf:	5b                   	pop    %rbx
  4063c0:	41 5c                	pop    %r12
  4063c2:	5d                   	pop    %rbp
  4063c3:	c3                   	ret
  4063c4:	90                   	nop
  4063c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4063cc:	00 00 00 00 
  4063d0:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  4063d5:	74 29                	je     406400 <__fwritex+0xa0>
  4063d7:	48 83 ea 01          	sub    $0x1,%rdx
  4063db:	48 85 d2             	test   %rdx,%rdx
  4063de:	75 f0                	jne    4063d0 <__fwritex+0x70>
  4063e0:	eb bc                	jmp    40639e <__fwritex+0x3e>
  4063e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4063e8:	48 8b 43 48          	mov    0x48(%rbx),%rax
  4063ec:	48 83 c4 10          	add    $0x10,%rsp
  4063f0:	4c 89 e2             	mov    %r12,%rdx
  4063f3:	48 89 df             	mov    %rbx,%rdi
  4063f6:	48 89 ce             	mov    %rcx,%rsi
  4063f9:	5b                   	pop    %rbx
  4063fa:	41 5c                	pop    %r12
  4063fc:	5d                   	pop    %rbp
  4063fd:	ff e0                	jmp    *%rax
  4063ff:	90                   	nop
  406400:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  406404:	48 89 ce             	mov    %rcx,%rsi
  406407:	48 89 df             	mov    %rbx,%rdi
  40640a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40640e:	ff 53 48             	call   *0x48(%rbx)
  406411:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406415:	48 39 d0             	cmp    %rdx,%rax
  406418:	72 a1                	jb     4063bb <__fwritex+0x5b>
  40641a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40641e:	4d 89 e0             	mov    %r12,%r8
  406421:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406425:	49 29 d0             	sub    %rdx,%r8
  406428:	48 01 d1             	add    %rdx,%rcx
  40642b:	e9 71 ff ff ff       	jmp    4063a1 <__fwritex+0x41>
  406430:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406434:	48 89 d7             	mov    %rdx,%rdi
  406437:	e8 b4 fe ff ff       	call   4062f0 <__towrite>
  40643c:	85 c0                	test   %eax,%eax
  40643e:	75 10                	jne    406450 <__fwritex+0xf0>
  406440:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406444:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406448:	e9 38 ff ff ff       	jmp    406385 <__fwritex+0x25>
  40644d:	0f 1f 00             	nopl   (%rax)
  406450:	31 c0                	xor    %eax,%eax
  406452:	e9 64 ff ff ff       	jmp    4063bb <__fwritex+0x5b>
  406457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40645e:	00 00 

0000000000406460 <fwrite>:
  406460:	f3 0f 1e fa          	endbr64
  406464:	55                   	push   %rbp
  406465:	31 c0                	xor    %eax,%eax
  406467:	48 89 e5             	mov    %rsp,%rbp
  40646a:	41 57                	push   %r15
  40646c:	41 56                	push   %r14
  40646e:	49 89 f6             	mov    %rsi,%r14
  406471:	41 55                	push   %r13
  406473:	4c 0f af f2          	imul   %rdx,%r14
  406477:	41 54                	push   %r12
  406479:	49 89 cc             	mov    %rcx,%r12
  40647c:	53                   	push   %rbx
  40647d:	48 89 f3             	mov    %rsi,%rbx
  406480:	48 83 ec 18          	sub    $0x18,%rsp
  406484:	48 85 f6             	test   %rsi,%rsi
  406487:	48 0f 45 c2          	cmovne %rdx,%rax
  40648b:	49 89 c5             	mov    %rax,%r13
  40648e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406494:	85 c0                	test   %eax,%eax
  406496:	79 30                	jns    4064c8 <fwrite+0x68>
  406498:	48 89 ca             	mov    %rcx,%rdx
  40649b:	4c 89 f6             	mov    %r14,%rsi
  40649e:	e8 bd fe ff ff       	call   406360 <__fwritex>
  4064a3:	49 39 c6             	cmp    %rax,%r14
  4064a6:	74 08                	je     4064b0 <fwrite+0x50>
  4064a8:	31 d2                	xor    %edx,%edx
  4064aa:	48 f7 f3             	div    %rbx
  4064ad:	49 89 c5             	mov    %rax,%r13
  4064b0:	48 83 c4 18          	add    $0x18,%rsp
  4064b4:	4c 89 e8             	mov    %r13,%rax
  4064b7:	5b                   	pop    %rbx
  4064b8:	41 5c                	pop    %r12
  4064ba:	41 5d                	pop    %r13
  4064bc:	41 5e                	pop    %r14
  4064be:	41 5f                	pop    %r15
  4064c0:	5d                   	pop    %rbp
  4064c1:	c3                   	ret
  4064c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064c8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4064cc:	48 89 cf             	mov    %rcx,%rdi
  4064cf:	e8 2c fc ff ff       	call   406100 <__lockfile>
  4064d4:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  4064d8:	4c 89 e2             	mov    %r12,%rdx
  4064db:	4c 89 f6             	mov    %r14,%rsi
  4064de:	41 89 c7             	mov    %eax,%r15d
  4064e1:	e8 7a fe ff ff       	call   406360 <__fwritex>
  4064e6:	45 85 ff             	test   %r15d,%r15d
  4064e9:	74 b8                	je     4064a3 <fwrite+0x43>
  4064eb:	4c 89 e7             	mov    %r12,%rdi
  4064ee:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4064f2:	e8 c9 fc ff ff       	call   4061c0 <__unlockfile>
  4064f7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4064fb:	eb a6                	jmp    4064a3 <fwrite+0x43>
  4064fd:	0f 1f 00             	nopl   (%rax)

0000000000406500 <sn_write>:
  406500:	f3 0f 1e fa          	endbr64
  406504:	55                   	push   %rbp
  406505:	48 89 f1             	mov    %rsi,%rcx
  406508:	48 89 e5             	mov    %rsp,%rbp
  40650b:	41 55                	push   %r13
  40650d:	49 89 d5             	mov    %rdx,%r13
  406510:	41 54                	push   %r12
  406512:	53                   	push   %rbx
  406513:	48 89 fb             	mov    %rdi,%rbx
  406516:	48 83 ec 18          	sub    $0x18,%rsp
  40651a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406521:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406525:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406529:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40652e:	49 8b 3c 24          	mov    (%r12),%rdi
  406532:	48 29 f2             	sub    %rsi,%rdx
  406535:	48 39 c2             	cmp    %rax,%rdx
  406538:	48 0f 47 d0          	cmova  %rax,%rdx
  40653c:	48 85 d2             	test   %rdx,%rdx
  40653f:	75 2f                	jne    406570 <sn_write+0x70>
  406541:	49 39 c5             	cmp    %rax,%r13
  406544:	49 0f 46 c5          	cmovbe %r13,%rax
  406548:	48 89 c2             	mov    %rax,%rdx
  40654b:	48 85 c0             	test   %rax,%rax
  40654e:	75 5c                	jne    4065ac <sn_write+0xac>
  406550:	c6 07 00             	movb   $0x0,(%rdi)
  406553:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406557:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40655b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40655f:	48 83 c4 18          	add    $0x18,%rsp
  406563:	4c 89 e8             	mov    %r13,%rax
  406566:	5b                   	pop    %rbx
  406567:	41 5c                	pop    %r12
  406569:	41 5d                	pop    %r13
  40656b:	5d                   	pop    %rbp
  40656c:	c3                   	ret
  40656d:	0f 1f 00             	nopl   (%rax)
  406570:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406574:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406578:	e8 f0 f4 ff ff       	call   405a6d <memcpy>
  40657d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406581:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406586:	49 8b 3c 24          	mov    (%r12),%rdi
  40658a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40658e:	48 29 d0             	sub    %rdx,%rax
  406591:	48 01 d7             	add    %rdx,%rdi
  406594:	49 39 c5             	cmp    %rax,%r13
  406597:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40659c:	49 0f 46 c5          	cmovbe %r13,%rax
  4065a0:	49 89 3c 24          	mov    %rdi,(%r12)
  4065a4:	48 89 c2             	mov    %rax,%rdx
  4065a7:	48 85 c0             	test   %rax,%rax
  4065aa:	74 a4                	je     406550 <sn_write+0x50>
  4065ac:	48 89 ce             	mov    %rcx,%rsi
  4065af:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4065b3:	e8 b5 f4 ff ff       	call   405a6d <memcpy>
  4065b8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4065bc:	49 8b 3c 24          	mov    (%r12),%rdi
  4065c0:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  4065c5:	48 01 d7             	add    %rdx,%rdi
  4065c8:	49 89 3c 24          	mov    %rdi,(%r12)
  4065cc:	eb 82                	jmp    406550 <sn_write+0x50>
  4065ce:	66 90                	xchg   %ax,%ax

00000000004065d0 <vsnprintf>:
  4065d0:	f3 0f 1e fa          	endbr64
  4065d4:	55                   	push   %rbp
  4065d5:	49 89 c9             	mov    %rcx,%r9
  4065d8:	49 89 d0             	mov    %rdx,%r8
  4065db:	48 89 e5             	mov    %rsp,%rbp
  4065de:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  4065e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4065ec:	00 00 
  4065ee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4065f2:	31 c0                	xor    %eax,%eax
  4065f4:	48 85 f6             	test   %rsi,%rsi
  4065f7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4065fb:	0f 95 c1             	setne  %cl
  4065fe:	48 0f 45 d7          	cmovne %rdi,%rdx
  406602:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  406609:	0f b6 c9             	movzbl %cl,%ecx
  40660c:	48 29 ce             	sub    %rcx,%rsi
  40660f:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406614:	c6 02 00             	movb   $0x0,(%rdx)
  406617:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40661e:	4c 89 ca             	mov    %r9,%rdx
  406621:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406628:	4c 89 c6             	mov    %r8,%rsi
  40662b:	f3 48 ab             	rep stos %rax,(%rdi)
  40662e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 406500 <sn_write>
  406635:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40663c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406643:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406647:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40664e:	48 8b 05 2b 17 00 00 	mov    0x172b(%rip),%rax        # 407d80 <errmsgstr+0x780>
  406655:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406659:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406660:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406664:	e8 67 f1 ff ff       	call   4057d0 <vfprintf>
  406669:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40666d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406674:	00 00 
  406676:	75 02                	jne    40667a <vsnprintf+0xaa>
  406678:	c9                   	leave
  406679:	c3                   	ret
  40667a:	e8 61 c0 ff ff       	call   4026e0 <__stack_chk_fail>
  40667f:	90                   	nop

0000000000406680 <memchr>:
  406680:	f3 0f 1e fa          	endbr64
  406684:	48 89 d0             	mov    %rdx,%rax
  406687:	40 0f b6 ce          	movzbl %sil,%ecx
  40668b:	40 f6 c7 07          	test   $0x7,%dil
  40668f:	75 1c                	jne    4066ad <memchr+0x2d>
  406691:	eb 2d                	jmp    4066c0 <memchr+0x40>
  406693:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406698:	0f b6 17             	movzbl (%rdi),%edx
  40669b:	39 ca                	cmp    %ecx,%edx
  40669d:	74 28                	je     4066c7 <memchr+0x47>
  40669f:	48 83 c7 01          	add    $0x1,%rdi
  4066a3:	48 83 e8 01          	sub    $0x1,%rax
  4066a7:	40 f6 c7 07          	test   $0x7,%dil
  4066ab:	74 13                	je     4066c0 <memchr+0x40>
  4066ad:	48 85 c0             	test   %rax,%rax
  4066b0:	75 e6                	jne    406698 <memchr+0x18>
  4066b2:	31 d2                	xor    %edx,%edx
  4066b4:	48 89 d0             	mov    %rdx,%rax
  4066b7:	c3                   	ret
  4066b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4066bf:	00 
  4066c0:	31 d2                	xor    %edx,%edx
  4066c2:	48 85 c0             	test   %rax,%rax
  4066c5:	74 ed                	je     4066b4 <memchr+0x34>
  4066c7:	0f b6 17             	movzbl (%rdi),%edx
  4066ca:	39 ca                	cmp    %ecx,%edx
  4066cc:	0f 84 ce 00 00 00    	je     4067a0 <memchr+0x120>
  4066d2:	48 83 f8 07          	cmp    $0x7,%rax
  4066d6:	0f 86 c4 00 00 00    	jbe    4067a0 <memchr+0x120>
  4066dc:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4066e3:	01 01 01 
  4066e6:	4c 63 c1             	movslq %ecx,%r8
  4066e9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4066f0:	fe fe fe 
  4066f3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4066fa:	80 80 80 
  4066fd:	4c 0f af c2          	imul   %rdx,%r8
  406701:	48 89 fa             	mov    %rdi,%rdx
  406704:	eb 48                	jmp    40674e <memchr+0xce>
  406706:	0f 1f 00             	nopl   (%rax)
  406709:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406710:	00 00 00 00 
  406714:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40671b:	00 00 00 00 
  40671f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406726:	00 00 00 00 
  40672a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406731:	00 00 00 00 
  406735:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40673c:	00 00 00 00 
  406740:	48 83 e8 08          	sub    $0x8,%rax
  406744:	48 83 c2 08          	add    $0x8,%rdx
  406748:	48 83 f8 07          	cmp    $0x7,%rax
  40674c:	76 5a                	jbe    4067a8 <memchr+0x128>
  40674e:	48 8b 32             	mov    (%rdx),%rsi
  406751:	4c 31 c6             	xor    %r8,%rsi
  406754:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406758:	48 f7 d6             	not    %rsi
  40675b:	48 21 fe             	and    %rdi,%rsi
  40675e:	4c 85 ce             	test   %r9,%rsi
  406761:	74 dd                	je     406740 <memchr+0xc0>
  406763:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40676a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406771:	00 00 00 00 
  406775:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40677c:	00 00 00 00 
  406780:	0f b6 32             	movzbl (%rdx),%esi
  406783:	39 ce                	cmp    %ecx,%esi
  406785:	0f 84 29 ff ff ff    	je     4066b4 <memchr+0x34>
  40678b:	48 83 c2 01          	add    $0x1,%rdx
  40678f:	48 83 e8 01          	sub    $0x1,%rax
  406793:	75 eb                	jne    406780 <memchr+0x100>
  406795:	e9 18 ff ff ff       	jmp    4066b2 <memchr+0x32>
  40679a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4067a0:	48 89 fa             	mov    %rdi,%rdx
  4067a3:	eb db                	jmp    406780 <memchr+0x100>
  4067a5:	0f 1f 00             	nopl   (%rax)
  4067a8:	48 85 c0             	test   %rax,%rax
  4067ab:	75 d3                	jne    406780 <memchr+0x100>
  4067ad:	e9 00 ff ff ff       	jmp    4066b2 <memchr+0x32>
  4067b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4067b9:	00 00 00 
  4067bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004067c0 <__stpcpy>:
  4067c0:	f3 0f 1e fa          	endbr64
  4067c4:	48 89 f9             	mov    %rdi,%rcx
  4067c7:	48 89 f8             	mov    %rdi,%rax
  4067ca:	48 89 f2             	mov    %rsi,%rdx
  4067cd:	48 31 f1             	xor    %rsi,%rcx
  4067d0:	83 e1 07             	and    $0x7,%ecx
  4067d3:	74 5c                	je     406831 <__stpcpy+0x71>
  4067d5:	0f b6 0a             	movzbl (%rdx),%ecx
  4067d8:	88 08                	mov    %cl,(%rax)
  4067da:	84 c9                	test   %cl,%cl
  4067dc:	0f 84 c6 00 00 00    	je     4068a8 <__stpcpy+0xe8>
  4067e2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4067e9:	00 
  4067ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067f1:	00 00 00 00 
  4067f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4067fc:	00 00 00 00 
  406800:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406804:	48 83 c2 01          	add    $0x1,%rdx
  406808:	48 83 c0 01          	add    $0x1,%rax
  40680c:	88 08                	mov    %cl,(%rax)
  40680e:	84 c9                	test   %cl,%cl
  406810:	75 ee                	jne    406800 <__stpcpy+0x40>
  406812:	c3                   	ret
  406813:	66 90                	xchg   %ax,%ax
  406815:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40681c:	00 00 00 00 
  406820:	0f b6 0a             	movzbl (%rdx),%ecx
  406823:	88 08                	mov    %cl,(%rax)
  406825:	84 c9                	test   %cl,%cl
  406827:	74 e9                	je     406812 <__stpcpy+0x52>
  406829:	48 83 c2 01          	add    $0x1,%rdx
  40682d:	48 83 c0 01          	add    $0x1,%rax
  406831:	f6 c2 07             	test   $0x7,%dl
  406834:	75 ea                	jne    406820 <__stpcpy+0x60>
  406836:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  40683d:	fe fe fe 
  406840:	48 8b 0a             	mov    (%rdx),%rcx
  406843:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  40684a:	80 80 80 
  40684d:	48 89 cf             	mov    %rcx,%rdi
  406850:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406854:	48 f7 d7             	not    %rdi
  406857:	48 21 fe             	and    %rdi,%rsi
  40685a:	4c 85 ce             	test   %r9,%rsi
  40685d:	0f 85 72 ff ff ff    	jne    4067d5 <__stpcpy+0x15>
  406863:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40686a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406871:	00 00 00 00 
  406875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40687c:	00 00 00 00 
  406880:	48 83 c2 08          	add    $0x8,%rdx
  406884:	48 89 08             	mov    %rcx,(%rax)
  406887:	48 83 c0 08          	add    $0x8,%rax
  40688b:	48 8b 0a             	mov    (%rdx),%rcx
  40688e:	48 89 cf             	mov    %rcx,%rdi
  406891:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406895:	48 f7 d7             	not    %rdi
  406898:	48 21 fe             	and    %rdi,%rsi
  40689b:	4c 85 ce             	test   %r9,%rsi
  40689e:	74 e0                	je     406880 <__stpcpy+0xc0>
  4068a0:	e9 30 ff ff ff       	jmp    4067d5 <__stpcpy+0x15>
  4068a5:	0f 1f 00             	nopl   (%rax)
  4068a8:	c3                   	ret

00000000004068a9 <__set_thread_area>:
  4068a9:	48 89 fe             	mov    %rdi,%rsi
  4068ac:	bf 02 10 00 00       	mov    $0x1002,%edi
  4068b1:	b8 9e 00 00 00       	mov    $0x9e,%eax
  4068b6:	0f 05                	syscall
  4068b8:	c3                   	ret
  4068b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004068c0 <__lseek>:
  4068c0:	f3 0f 1e fa          	endbr64
  4068c4:	48 63 ff             	movslq %edi,%rdi
  4068c7:	48 63 d2             	movslq %edx,%rdx
  4068ca:	b8 08 00 00 00       	mov    $0x8,%eax
  4068cf:	0f 05                	syscall
  4068d1:	48 89 c7             	mov    %rax,%rdi
  4068d4:	e9 07 00 00 00       	jmp    4068e0 <__syscall_ret>
  4068d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004068e0 <__syscall_ret>:
  4068e0:	f3 0f 1e fa          	endbr64
  4068e4:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  4068eb:	77 0b                	ja     4068f8 <__syscall_ret+0x18>
  4068ed:	48 89 f8             	mov    %rdi,%rax
  4068f0:	c3                   	ret
  4068f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4068f8:	55                   	push   %rbp
  4068f9:	48 89 e5             	mov    %rsp,%rbp
  4068fc:	53                   	push   %rbx
  4068fd:	48 89 fb             	mov    %rdi,%rbx
  406900:	48 83 ec 08          	sub    $0x8,%rsp
  406904:	e8 c7 f5 ff ff       	call   405ed0 <__errno_location>
  406909:	89 df                	mov    %ebx,%edi
  40690b:	f7 df                	neg    %edi
  40690d:	89 38                	mov    %edi,(%rax)
  40690f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406916:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40691a:	c9                   	leave
  40691b:	c3                   	ret
  40691c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406920 <wcrtomb>:
  406920:	f3 0f 1e fa          	endbr64
  406924:	48 85 ff             	test   %rdi,%rdi
  406927:	0f 84 d6 00 00 00    	je     406a03 <wcrtomb+0xe3>
  40692d:	83 fe 7f             	cmp    $0x7f,%esi
  406930:	0f 86 ca 00 00 00    	jbe    406a00 <wcrtomb+0xe0>
  406936:	55                   	push   %rbp
  406937:	89 f0                	mov    %esi,%eax
  406939:	48 89 f9             	mov    %rdi,%rcx
  40693c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406943:	00 00 
  406945:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  40694c:	48 89 e5             	mov    %rsp,%rbp
  40694f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406953:	74 53                	je     4069a8 <wcrtomb+0x88>
  406955:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  40695b:	0f 86 af 00 00 00    	jbe    406a10 <wcrtomb+0xf0>
  406961:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406967:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  40696d:	0f 86 bd 00 00 00    	jbe    406a30 <wcrtomb+0x110>
  406973:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406979:	0f 86 b1 00 00 00    	jbe    406a30 <wcrtomb+0x110>
  40697f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406985:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  40698b:	76 33                	jbe    4069c0 <wcrtomb+0xa0>
  40698d:	e8 3e f5 ff ff       	call   405ed0 <__errno_location>
  406992:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406998:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40699f:	5d                   	pop    %rbp
  4069a0:	c3                   	ret
  4069a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4069a8:	2d 80 df 00 00       	sub    $0xdf80,%eax
  4069ad:	83 f8 7f             	cmp    $0x7f,%eax
  4069b0:	77 db                	ja     40698d <wcrtomb+0x6d>
  4069b2:	40 88 37             	mov    %sil,(%rdi)
  4069b5:	b8 01 00 00 00       	mov    $0x1,%eax
  4069ba:	5d                   	pop    %rbp
  4069bb:	c3                   	ret
  4069bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4069c0:	89 c7                	mov    %eax,%edi
  4069c2:	83 e0 3f             	and    $0x3f,%eax
  4069c5:	89 f2                	mov    %esi,%edx
  4069c7:	c1 fe 0c             	sar    $0xc,%esi
  4069ca:	c1 ff 06             	sar    $0x6,%edi
  4069cd:	c1 e0 08             	shl    $0x8,%eax
  4069d0:	83 e6 3f             	and    $0x3f,%esi
  4069d3:	83 e7 3f             	and    $0x3f,%edi
  4069d6:	c1 fa 12             	sar    $0x12,%edx
  4069d9:	09 f8                	or     %edi,%eax
  4069db:	0f b6 d2             	movzbl %dl,%edx
  4069de:	c1 e0 08             	shl    $0x8,%eax
  4069e1:	09 f0                	or     %esi,%eax
  4069e3:	8b 35 c7 0a 00 00    	mov    0xac7(%rip),%esi        # 4074b0 <states+0x1f0>
  4069e9:	c1 e0 08             	shl    $0x8,%eax
  4069ec:	09 d0                	or     %edx,%eax
  4069ee:	09 f0                	or     %esi,%eax
  4069f0:	89 01                	mov    %eax,(%rcx)
  4069f2:	b8 04 00 00 00       	mov    $0x4,%eax
  4069f7:	5d                   	pop    %rbp
  4069f8:	c3                   	ret
  4069f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a00:	40 88 37             	mov    %sil,(%rdi)
  406a03:	b8 01 00 00 00       	mov    $0x1,%eax
  406a08:	c3                   	ret
  406a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a10:	89 f2                	mov    %esi,%edx
  406a12:	83 e0 3f             	and    $0x3f,%eax
  406a15:	c1 fa 06             	sar    $0x6,%edx
  406a18:	83 c8 80             	or     $0xffffff80,%eax
  406a1b:	83 ca c0             	or     $0xffffffc0,%edx
  406a1e:	88 47 01             	mov    %al,0x1(%rdi)
  406a21:	b8 02 00 00 00       	mov    $0x2,%eax
  406a26:	88 17                	mov    %dl,(%rdi)
  406a28:	5d                   	pop    %rbp
  406a29:	c3                   	ret
  406a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a30:	89 c2                	mov    %eax,%edx
  406a32:	c1 fa 0c             	sar    $0xc,%edx
  406a35:	83 ca e0             	or     $0xffffffe0,%edx
  406a38:	88 11                	mov    %dl,(%rcx)
  406a3a:	89 c2                	mov    %eax,%edx
  406a3c:	83 e0 3f             	and    $0x3f,%eax
  406a3f:	c1 fa 06             	sar    $0x6,%edx
  406a42:	83 c8 80             	or     $0xffffff80,%eax
  406a45:	83 e2 3f             	and    $0x3f,%edx
  406a48:	88 41 02             	mov    %al,0x2(%rcx)
  406a4b:	b8 03 00 00 00       	mov    $0x3,%eax
  406a50:	83 ca 80             	or     $0xffffff80,%edx
  406a53:	88 51 01             	mov    %dl,0x1(%rcx)
  406a56:	5d                   	pop    %rbp
  406a57:	c3                   	ret
  406a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406a5f:	00 

0000000000406a60 <close_file>:
  406a60:	48 85 ff             	test   %rdi,%rdi
  406a63:	74 6b                	je     406ad0 <close_file+0x70>
  406a65:	55                   	push   %rbp
  406a66:	48 89 e5             	mov    %rsp,%rbp
  406a69:	53                   	push   %rbx
  406a6a:	48 89 fb             	mov    %rdi,%rbx
  406a6d:	48 83 ec 08          	sub    $0x8,%rsp
  406a71:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406a77:	85 c0                	test   %eax,%eax
  406a79:	79 3d                	jns    406ab8 <close_file+0x58>
  406a7b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406a7f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406a83:	74 0a                	je     406a8f <close_file+0x2f>
  406a85:	31 d2                	xor    %edx,%edx
  406a87:	31 f6                	xor    %esi,%esi
  406a89:	48 89 df             	mov    %rbx,%rdi
  406a8c:	ff 53 48             	call   *0x48(%rbx)
  406a8f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406a93:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406a97:	48 39 c6             	cmp    %rax,%rsi
  406a9a:	74 24                	je     406ac0 <close_file+0x60>
  406a9c:	48 29 c6             	sub    %rax,%rsi
  406a9f:	48 89 df             	mov    %rbx,%rdi
  406aa2:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406aa6:	ba 01 00 00 00       	mov    $0x1,%edx
  406aab:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406aaf:	c9                   	leave
  406ab0:	ff e0                	jmp    *%rax
  406ab2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ab8:	e8 43 f6 ff ff       	call   406100 <__lockfile>
  406abd:	eb bc                	jmp    406a7b <close_file+0x1b>
  406abf:	90                   	nop
  406ac0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406ac4:	c9                   	leave
  406ac5:	c3                   	ret
  406ac6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406acd:	00 00 00 
  406ad0:	c3                   	ret
  406ad1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406ad8:	00 00 00 
  406adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406ae0 <__stdio_exit>:
  406ae0:	f3 0f 1e fa          	endbr64
  406ae4:	55                   	push   %rbp
  406ae5:	48 89 e5             	mov    %rsp,%rbp
  406ae8:	53                   	push   %rbx
  406ae9:	48 83 ec 08          	sub    $0x8,%rsp
  406aed:	e8 7e 01 00 00       	call   406c70 <__ofl_lock>
  406af2:	48 8b 18             	mov    (%rax),%rbx
  406af5:	48 85 db             	test   %rbx,%rbx
  406af8:	74 17                	je     406b11 <__stdio_exit+0x31>
  406afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406b00:	48 89 df             	mov    %rbx,%rdi
  406b03:	e8 58 ff ff ff       	call   406a60 <close_file>
  406b08:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406b0c:	48 85 db             	test   %rbx,%rbx
  406b0f:	75 ef                	jne    406b00 <__stdio_exit+0x20>
  406b11:	48 8b 3d 80 3c 00 00 	mov    0x3c80(%rip),%rdi        # 40a798 <__stderr_used>
  406b18:	e8 43 ff ff ff       	call   406a60 <close_file>
  406b1d:	48 8b 3d e4 34 00 00 	mov    0x34e4(%rip),%rdi        # 40a008 <__stdout_used>
  406b24:	e8 37 ff ff ff       	call   406a60 <close_file>
  406b29:	48 8b 3d 68 3c 00 00 	mov    0x3c68(%rip),%rdi        # 40a798 <__stderr_used>
  406b30:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406b34:	c9                   	leave
  406b35:	e9 26 ff ff ff       	jmp    406a60 <close_file>
  406b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406b40 <__stdio_write>:
  406b40:	f3 0f 1e fa          	endbr64
  406b44:	55                   	push   %rbp
  406b45:	48 89 e5             	mov    %rsp,%rbp
  406b48:	41 57                	push   %r15
  406b4a:	41 56                	push   %r14
  406b4c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406b50:	41 55                	push   %r13
  406b52:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406b58:	41 54                	push   %r12
  406b5a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406b60:	53                   	push   %rbx
  406b61:	48 89 fb             	mov    %rdi,%rbx
  406b64:	48 83 ec 48          	sub    $0x48,%rsp
  406b68:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406b6c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406b70:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406b77:	00 00 
  406b79:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406b7d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406b81:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406b85:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406b89:	49 29 c0             	sub    %rax,%r8
  406b8c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406b90:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406b94:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406b98:	eb 37                	jmp    406bd1 <__stdio_write+0x91>
  406b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ba0:	48 85 c0             	test   %rax,%rax
  406ba3:	0f 88 8f 00 00 00    	js     406c38 <__stdio_write+0xf8>
  406ba9:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406bad:	49 29 c6             	sub    %rax,%r14
  406bb0:	48 39 c2             	cmp    %rax,%rdx
  406bb3:	73 12                	jae    406bc7 <__stdio_write+0x87>
  406bb5:	41 83 ed 01          	sub    $0x1,%r13d
  406bb9:	48 29 d0             	sub    %rdx,%rax
  406bbc:	49 83 c7 10          	add    $0x10,%r15
  406bc0:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406bc4:	4d 63 e5             	movslq %r13d,%r12
  406bc7:	48 29 c2             	sub    %rax,%rdx
  406bca:	49 01 07             	add    %rax,(%r15)
  406bcd:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406bd1:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406bd5:	b8 14 00 00 00       	mov    $0x14,%eax
  406bda:	4c 89 fe             	mov    %r15,%rsi
  406bdd:	4c 89 e2             	mov    %r12,%rdx
  406be0:	0f 05                	syscall
  406be2:	48 89 c7             	mov    %rax,%rdi
  406be5:	e8 f6 fc ff ff       	call   4068e0 <__syscall_ret>
  406bea:	49 39 c6             	cmp    %rax,%r14
  406bed:	75 b1                	jne    406ba0 <__stdio_write+0x60>
  406bef:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406bf3:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406bf7:	48 01 c1             	add    %rax,%rcx
  406bfa:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406bff:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406c03:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406c07:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406c0c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406c10:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406c14:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406c18:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406c1f:	00 00 
  406c21:	75 3a                	jne    406c5d <__stdio_write+0x11d>
  406c23:	48 83 c4 48          	add    $0x48,%rsp
  406c27:	5b                   	pop    %rbx
  406c28:	41 5c                	pop    %r12
  406c2a:	41 5d                	pop    %r13
  406c2c:	41 5e                	pop    %r14
  406c2e:	41 5f                	pop    %r15
  406c30:	5d                   	pop    %rbp
  406c31:	c3                   	ret
  406c32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c38:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406c3c:	83 0b 20             	orl    $0x20,(%rbx)
  406c3f:	31 c0                	xor    %eax,%eax
  406c41:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406c48:	00 
  406c49:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406c4d:	41 83 fd 02          	cmp    $0x2,%r13d
  406c51:	74 c1                	je     406c14 <__stdio_write+0xd4>
  406c53:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406c57:	49 2b 47 08          	sub    0x8(%r15),%rax
  406c5b:	eb b7                	jmp    406c14 <__stdio_write+0xd4>
  406c5d:	e8 7e ba ff ff       	call   4026e0 <__stack_chk_fail>
  406c62:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406c69:	00 00 00 
  406c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406c70 <__ofl_lock>:
  406c70:	f3 0f 1e fa          	endbr64
  406c74:	55                   	push   %rbp
  406c75:	48 8d 3d 24 3b 00 00 	lea    0x3b24(%rip),%rdi        # 40a7a0 <ofl_lock>
  406c7c:	48 89 e5             	mov    %rsp,%rbp
  406c7f:	e8 1c 00 00 00       	call   406ca0 <__lock>
  406c84:	48 8d 05 1d 3b 00 00 	lea    0x3b1d(%rip),%rax        # 40a7a8 <ofl_head>
  406c8b:	5d                   	pop    %rbp
  406c8c:	c3                   	ret
  406c8d:	0f 1f 00             	nopl   (%rax)

0000000000406c90 <__ofl_unlock>:
  406c90:	f3 0f 1e fa          	endbr64
  406c94:	48 8d 3d 05 3b 00 00 	lea    0x3b05(%rip),%rdi        # 40a7a0 <ofl_lock>
  406c9b:	e9 e0 00 00 00       	jmp    406d80 <__unlock>

0000000000406ca0 <__lock>:
  406ca0:	f3 0f 1e fa          	endbr64
  406ca4:	0f be 0d b8 34 00 00 	movsbl 0x34b8(%rip),%ecx        # 40a163 <__libc+0x3>
  406cab:	85 c9                	test   %ecx,%ecx
  406cad:	74 51                	je     406d00 <__lock+0x60>
  406caf:	31 c0                	xor    %eax,%eax
  406cb1:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406cb6:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406cba:	89 c2                	mov    %eax,%edx
  406cbc:	85 c9                	test   %ecx,%ecx
  406cbe:	78 48                	js     406d08 <__lock+0x68>
  406cc0:	85 c0                	test   %eax,%eax
  406cc2:	74 3c                	je     406d00 <__lock+0x60>
  406cc4:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406cca:	eb 1e                	jmp    406cea <__lock+0x4a>
  406ccc:	0f 1f 40 00          	nopl   0x0(%rax)
  406cd0:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406cd6:	89 d1                	mov    %edx,%ecx
  406cd8:	89 c8                	mov    %ecx,%eax
  406cda:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406cde:	89 c2                	mov    %eax,%edx
  406ce0:	39 c1                	cmp    %eax,%ecx
  406ce2:	74 1c                	je     406d00 <__lock+0x60>
  406ce4:	41 83 e8 01          	sub    $0x1,%r8d
  406ce8:	74 2e                	je     406d18 <__lock+0x78>
  406cea:	85 d2                	test   %edx,%edx
  406cec:	79 e2                	jns    406cd0 <__lock+0x30>
  406cee:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406cf4:	89 d6                	mov    %edx,%esi
  406cf6:	eb e0                	jmp    406cd8 <__lock+0x38>
  406cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406cff:	00 
  406d00:	c3                   	ret
  406d01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406d08:	c6 05 54 34 00 00 00 	movb   $0x0,0x3454(%rip)        # 40a163 <__libc+0x3>
  406d0f:	85 c0                	test   %eax,%eax
  406d11:	75 b1                	jne    406cc4 <__lock+0x24>
  406d13:	c3                   	ret
  406d14:	0f 1f 40 00          	nopl   0x0(%rax)
  406d18:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406d1e:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406d23:	41 83 c0 01          	add    $0x1,%r8d
  406d27:	eb 1c                	jmp    406d45 <__lock+0xa5>
  406d29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406d30:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406d37:	89 d0                	mov    %edx,%eax
  406d39:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406d3e:	41 89 c0             	mov    %eax,%r8d
  406d41:	39 c2                	cmp    %eax,%edx
  406d43:	74 bb                	je     406d00 <__lock+0x60>
  406d45:	44 89 c2             	mov    %r8d,%edx
  406d48:	45 85 c0             	test   %r8d,%r8d
  406d4b:	79 e3                	jns    406d30 <__lock+0x90>
  406d4d:	49 63 d0             	movslq %r8d,%rdx
  406d50:	45 31 d2             	xor    %r10d,%r10d
  406d53:	b8 ca 00 00 00       	mov    $0xca,%eax
  406d58:	be 80 00 00 00       	mov    $0x80,%esi
  406d5d:	0f 05                	syscall
  406d5f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406d63:	75 09                	jne    406d6e <__lock+0xce>
  406d65:	31 f6                	xor    %esi,%esi
  406d67:	b8 ca 00 00 00       	mov    $0xca,%eax
  406d6c:	0f 05                	syscall
  406d6e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  406d75:	eb b9                	jmp    406d30 <__lock+0x90>
  406d77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406d7e:	00 00 

0000000000406d80 <__unlock>:
  406d80:	f3 0f 1e fa          	endbr64
  406d84:	8b 07                	mov    (%rdi),%eax
  406d86:	85 c0                	test   %eax,%eax
  406d88:	78 06                	js     406d90 <__unlock+0x10>
  406d8a:	c3                   	ret
  406d8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406d90:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  406d95:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  406d99:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  406d9e:	74 ea                	je     406d8a <__unlock+0xa>
  406da0:	be 81 00 00 00       	mov    $0x81,%esi
  406da5:	b8 ca 00 00 00       	mov    $0xca,%eax
  406daa:	ba 01 00 00 00       	mov    $0x1,%edx
  406daf:	0f 05                	syscall
  406db1:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406db5:	75 d3                	jne    406d8a <__unlock+0xa>
  406db7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406dbc:	be 01 00 00 00       	mov    $0x1,%esi
  406dc1:	0f 05                	syscall
  406dc3:	c3                   	ret

Disassembly of section .fini:

0000000000406dc4 <_fini>:
  406dc4:	50                   	push   %rax
  406dc5:	58                   	pop    %rax
  406dc6:	c3                   	ret
