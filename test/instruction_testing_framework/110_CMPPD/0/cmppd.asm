
./test_cmppd_assert_static_musl:     Dateiformat elf64-x86-64


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
  40104f:	e8 bc 16 00 00       	call   402710 <__funcs_on_exit>
  401054:	e8 c7 16 00 00       	call   402720 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 20 5d 00 00       	call   406d80 <__stdio_exit>
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
  40108a:	49 c7 c0 64 70 40 00 	mov    $0x407064,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 74 21 40 00 	mov    $0x402174,%rdi
  4010a2:	e9 99 15 00 00       	jmp    402640 <__libc_start_main>
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
#include <stdint.h>
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
void insert_i64( __m128i* dest, int64_t input[]){
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
void extract_i64( int64_t dest[], __m128i input){
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
  4017ff:	48 8d 0d fa 67 00 00 	lea    0x67fa(%rip),%rcx        # 408000 <_fini+0xf9c>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 d2 10 00 00       	call   402900 <sprintf>
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
  401857:	e8 a4 0e 00 00       	call   402700 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 67 00 00 	lea    0x6777(%rip),%rcx        # 408021 <_fini+0xfbd>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 36 10 00 00       	call   402900 <sprintf>
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
  4018f3:	e8 08 0e 00 00       	call   402700 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 65 00 00 	lea    0x65ce(%rip),%rsi        # 408030 <_fini+0xfcc>
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
  401a9f:	e8 5c 0e 00 00       	call   402900 <sprintf>
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
  401ad1:	e8 2a 0c 00 00       	call   402700 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 64 00 00 	lea    0x64d7(%rip),%rsi        # 408078 <_fini+0x1014>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 3e 0d 00 00       	call   402900 <sprintf>
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
  401bef:	e8 0c 0b 00 00       	call   402700 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 64 00 00 	lea    0x643b(%rip),%rsi        # 408099 <_fini+0x1035>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 88 0c 00 00       	call   402900 <sprintf>
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
  401ca1:	e8 5a 0a 00 00       	call   402700 <__stack_chk_fail>
  401ca6:	c9                   	leave
  401ca7:	c3                   	ret

0000000000401ca8 <to_string_i64>:
void to_string_i64(char* dest,  int64_t src[]){
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
  401cec:	48 8d 35 b7 63 00 00 	lea    0x63b7(%rip),%rsi        # 4080aa <_fini+0x1046>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 f9 0b 00 00       	call   402900 <sprintf>
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
  401d30:	e8 cb 09 00 00       	call   402700 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 61 00 00 	lea    0x6191(%rip),%rsi        # 408030 <_fini+0xfcc>
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
  401edc:	e8 1f 0a 00 00       	call   402900 <sprintf>
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
  401f0e:	e8 ed 07 00 00       	call   402700 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 60 00 00 	lea    0x609a(%rip),%rsi        # 408078 <_fini+0x1014>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 01 09 00 00       	call   402900 <sprintf>
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
  40202c:	e8 cf 06 00 00       	call   402700 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 60 00 00 	lea    0x601a(%rip),%rsi        # 4080b5 <_fini+0x1051>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 4b 08 00 00       	call   402900 <sprintf>
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
  4020de:	e8 1d 06 00 00       	call   402700 <__stack_chk_fail>
  4020e3:	c9                   	leave
  4020e4:	c3                   	ret

00000000004020e5 <to_string_u64>:
void to_string_u64(char* dest,  uint64_t src[]){
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
  402129:	48 8d 35 96 5f 00 00 	lea    0x5f96(%rip),%rsi        # 4080c6 <_fini+0x1062>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 bc 07 00 00       	call   402900 <sprintf>
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
  40216d:	e8 8e 05 00 00       	call   402700 <__stack_chk_fail>
  402172:	c9                   	leave
  402173:	c3                   	ret

0000000000402174 <main>:
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "./../lib/sse_service_3.h"
int main() {
  402174:	f3 0f 1e fa          	endbr64
  402178:	55                   	push   %rbp
  402179:	48 89 e5             	mov    %rsp,%rbp
  40217c:	48 81 ec 90 03 00 00 	sub    $0x390,%rsp
  402183:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40218a:	00 00 
  40218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402190:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402192:	f2 0f 10 05 a6 5f 00 	movsd  0x5fa6(%rip),%xmm0        # 408140 <_fini+0x10dc>
  402199:	00 
  40219a:	f2 0f 11 85 b0 fc ff 	movsd  %xmm0,-0x350(%rbp)
  4021a1:	ff 
  4021a2:	f2 0f 10 05 9e 5f 00 	movsd  0x5f9e(%rip),%xmm0        # 408148 <_fini+0x10e4>
  4021a9:	00 
  4021aa:	f2 0f 11 85 b8 fc ff 	movsd  %xmm0,-0x348(%rbp)
  4021b1:	ff 
    C_IN_TYPE in2[IN_LEN] = SRC2;
  4021b2:	f2 0f 10 05 86 5f 00 	movsd  0x5f86(%rip),%xmm0        # 408140 <_fini+0x10dc>
  4021b9:	00 
  4021ba:	f2 0f 11 85 c0 fc ff 	movsd  %xmm0,-0x340(%rbp)
  4021c1:	ff 
  4021c2:	f2 0f 10 05 86 5f 00 	movsd  0x5f86(%rip),%xmm0        # 408150 <_fini+0x10ec>
  4021c9:	00 
  4021ca:	f2 0f 11 85 c8 fc ff 	movsd  %xmm0,-0x338(%rbp)
  4021d1:	ff 
    C_OUT_TYPE con[OUT_LEN] = CON;
  4021d2:	48 c7 85 d0 fc ff ff 	movq   $0xffffffffffffffff,-0x330(%rbp)
  4021d9:	ff ff ff ff 
  4021dd:	48 c7 85 d8 fc ff ff 	movq   $0x0,-0x328(%rbp)
  4021e4:	00 00 00 00 
    C_OUT_TYPE out[OUT_LEN];

    SSE_TYPE v1;
    INSERT(&v1, in1);
  4021e8:	48 8d 95 b0 fc ff ff 	lea    -0x350(%rbp),%rdx
  4021ef:	48 8d 85 80 fc ff ff 	lea    -0x380(%rbp),%rax
  4021f6:	48 89 d6             	mov    %rdx,%rsi
  4021f9:	48 89 c7             	mov    %rax,%rdi
  4021fc:	e8 e2 ef ff ff       	call   4011e3 <insert_f64>
    SSE_TYPE v2;
    INSERT(&v2, in2);
  402201:	48 8d 95 c0 fc ff ff 	lea    -0x340(%rbp),%rdx
  402208:	48 8d 85 90 fc ff ff 	lea    -0x370(%rbp),%rax
  40220f:	48 89 d6             	mov    %rdx,%rsi
  402212:	48 89 c7             	mov    %rax,%rdi
  402215:	e8 c9 ef ff ff       	call   4011e3 <insert_f64>

    __m128i res = (__m128i) INTRINSIC_FUN(v1, v2, IMM8);
  40221a:	66 0f 28 8d 90 fc ff 	movapd -0x370(%rbp),%xmm1
  402221:	ff 
  402222:	66 0f 28 85 80 fc ff 	movapd -0x380(%rbp),%xmm0
  402229:	ff 
  40222a:	66 0f c2 c1 00       	cmpeqpd %xmm1,%xmm0
  40222f:	0f 29 85 a0 fc ff ff 	movaps %xmm0,-0x360(%rbp)

    EXTRACT(out, res);
  402236:	66 0f 6f 85 a0 fc ff 	movdqa -0x360(%rbp),%xmm0
  40223d:	ff 
  40223e:	48 8d 85 e0 fc ff ff 	lea    -0x320(%rbp),%rax
  402245:	48 89 c7             	mov    %rax,%rdi
  402248:	e8 fc f4 ff ff       	call   401749 <extract_i64>

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  40224d:	48 8d 95 b0 fc ff ff 	lea    -0x350(%rbp),%rdx
  402254:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  40225b:	48 89 d6             	mov    %rdx,%rsi
  40225e:	48 89 c7             	mov    %rax,%rdi
  402261:	e8 f8 f5 ff ff       	call   40185e <to_string_f64>
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  402266:	48 8d 95 c0 fc ff ff 	lea    -0x340(%rbp),%rdx
  40226d:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  402274:	48 89 d6             	mov    %rdx,%rsi
  402277:	48 89 c7             	mov    %rax,%rdi
  40227a:	e8 df f5 ff ff       	call   40185e <to_string_f64>
    char out_s[255];
    TO_STRING_OUT(out_s, out);
  40227f:	48 8d 95 e0 fc ff ff 	lea    -0x320(%rbp),%rdx
  402286:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40228d:	48 89 d6             	mov    %rdx,%rsi
  402290:	48 89 c7             	mov    %rax,%rdi
  402293:	e8 10 fa ff ff       	call   401ca8 <to_string_i64>

#ifdef PRINT
    printf("%s\n "STR(INST_NAME)"\n%s\n%d\n |\n\\/\n%s\n",in1_s, in2_s, IMM8, out_s);
#endif
#ifndef PRINT
    for( int i = 0; i<OUT_LEN;i++){
  402298:	c7 85 7c fc ff ff 00 	movl   $0x0,-0x384(%rbp)
  40229f:	00 00 00 
  4022a2:	eb 75                	jmp    402319 <main+0x1a5>
        if(out[i] != con[i]){
  4022a4:	8b 85 7c fc ff ff    	mov    -0x384(%rbp),%eax
  4022aa:	48 98                	cltq
  4022ac:	48 8b 94 c5 e0 fc ff 	mov    -0x320(%rbp,%rax,8),%rdx
  4022b3:	ff 
  4022b4:	8b 85 7c fc ff ff    	mov    -0x384(%rbp),%eax
  4022ba:	48 98                	cltq
  4022bc:	48 8b 84 c5 d0 fc ff 	mov    -0x330(%rbp,%rax,8),%rax
  4022c3:	ff 
  4022c4:	48 39 c2             	cmp    %rax,%rdx
  4022c7:	74 49                	je     402312 <main+0x19e>
            printf("\33[1;31m"STR(INST_NAME)" has failed!!! out[%d]:%lX != con[%d]:%lX\33[0m\n", i, out[i], i, con[i]);
  4022c9:	8b 85 7c fc ff ff    	mov    -0x384(%rbp),%eax
  4022cf:	48 98                	cltq
  4022d1:	48 8b b4 c5 d0 fc ff 	mov    -0x330(%rbp,%rax,8),%rsi
  4022d8:	ff 
  4022d9:	8b 85 7c fc ff ff    	mov    -0x384(%rbp),%eax
  4022df:	48 98                	cltq
  4022e1:	48 8b 94 c5 e0 fc ff 	mov    -0x320(%rbp,%rax,8),%rdx
  4022e8:	ff 
  4022e9:	8b 8d 7c fc ff ff    	mov    -0x384(%rbp),%ecx
  4022ef:	8b 85 7c fc ff ff    	mov    -0x384(%rbp),%eax
  4022f5:	48 8d 3d dc 5d 00 00 	lea    0x5ddc(%rip),%rdi        # 4080d8 <_fini+0x1074>
  4022fc:	49 89 f0             	mov    %rsi,%r8
  4022ff:	89 c6                	mov    %eax,%esi
  402301:	b8 00 00 00 00       	mov    $0x0,%eax
  402306:	e8 55 04 00 00       	call   402760 <printf>
            return 1;
  40230b:	b8 01 00 00 00       	mov    $0x1,%eax
  402310:	eb 24                	jmp    402336 <main+0x1c2>
    for( int i = 0; i<OUT_LEN;i++){
  402312:	83 85 7c fc ff ff 01 	addl   $0x1,-0x384(%rbp)
  402319:	83 bd 7c fc ff ff 01 	cmpl   $0x1,-0x384(%rbp)
  402320:	7e 82                	jle    4022a4 <main+0x130>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
  402322:	48 8d 05 ef 5d 00 00 	lea    0x5def(%rip),%rax        # 408118 <_fini+0x10b4>
  402329:	48 89 c7             	mov    %rax,%rdi
  40232c:	e8 ff 04 00 00       	call   402830 <puts>
#endif

    return 0;
  402331:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402336:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40233a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402341:	00 00 
  402343:	74 05                	je     40234a <main+0x1d6>
  402345:	e8 b6 03 00 00       	call   402700 <__stack_chk_fail>
  40234a:	c9                   	leave
  40234b:	c3                   	ret
  40234c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402350 <dummy>:
  402350:	f3 0f 1e fa          	endbr64
  402354:	c3                   	ret
  402355:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40235c:	00 00 00 
  40235f:	90                   	nop

0000000000402360 <dummy1>:
  402360:	f3 0f 1e fa          	endbr64
  402364:	c3                   	ret
  402365:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40236c:	00 00 00 
  40236f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402376:	00 00 00 
  402379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402380 <__init_libc>:
  402380:	f3 0f 1e fa          	endbr64
  402384:	55                   	push   %rbp
  402385:	48 89 fa             	mov    %rdi,%rdx
  402388:	31 c0                	xor    %eax,%eax
  40238a:	b9 26 00 00 00       	mov    $0x26,%ecx
  40238f:	48 89 e5             	mov    %rsp,%rbp
  402392:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  402399:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4023a0:	f3 48 ab             	rep stos %rax,(%rdi)
  4023a3:	48 c7 c0 e8 b5 40 00 	mov    $0x40b5e8,%rax
  4023aa:	48 89 10             	mov    %rdx,(%rax)
  4023ad:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  4023b1:	0f 84 c9 01 00 00    	je     402580 <__init_libc+0x200>
  4023b7:	31 c0                	xor    %eax,%eax
  4023b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023c0:	48 89 c1             	mov    %rax,%rcx
  4023c3:	48 83 c0 01          	add    $0x1,%rax
  4023c7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4023cc:	75 f2                	jne    4023c0 <__init_libc+0x40>
  4023ce:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4023d5:	00 
  4023d6:	48 01 d0             	add    %rdx,%rax
  4023d9:	48 89 05 88 8d 00 00 	mov    %rax,0x8d88(%rip)        # 40b168 <__libc+0x8>
  4023e0:	48 8b 10             	mov    (%rax),%rdx
  4023e3:	48 83 c0 08          	add    $0x8,%rax
  4023e7:	48 85 d2             	test   %rdx,%rdx
  4023ea:	0f 84 a0 01 00 00    	je     402590 <__init_libc+0x210>
  4023f0:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4023f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4023fc:	00 00 00 00 
  402400:	48 83 fa 25          	cmp    $0x25,%rdx
  402404:	77 0b                	ja     402411 <__init_libc+0x91>
  402406:	48 8b 08             	mov    (%rax),%rcx
  402409:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  402410:	ff 
  402411:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402415:	48 83 c0 10          	add    $0x10,%rax
  402419:	48 85 d2             	test   %rdx,%rdx
  40241c:	75 e2                	jne    402400 <__init_libc+0x80>
  40241e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402425:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402429:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402430:	48 89 0d 11 8d 00 00 	mov    %rcx,0x8d11(%rip)        # 40b148 <__hwcap>
  402437:	48 85 c0             	test   %rax,%rax
  40243a:	74 07                	je     402443 <__init_libc+0xc3>
  40243c:	48 89 05 ed 8c 00 00 	mov    %rax,0x8ced(%rip)        # 40b130 <__sysinfo>
  402443:	48 89 15 46 8d 00 00 	mov    %rdx,0x8d46(%rip)        # 40b190 <__libc+0x30>
  40244a:	48 85 f6             	test   %rsi,%rsi
  40244d:	0f 84 15 01 00 00    	je     402568 <__init_libc+0x1e8>
  402453:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  40245a:	48 c7 c1 40 b1 40 00 	mov    $0x40b140,%rcx
  402461:	48 89 30             	mov    %rsi,(%rax)
  402464:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402468:	48 89 31             	mov    %rsi,(%rcx)
  40246b:	0f b6 16             	movzbl (%rsi),%edx
  40246e:	84 d2                	test   %dl,%dl
  402470:	74 21                	je     402493 <__init_libc+0x113>
  402472:	0f 1f 00             	nopl   (%rax)
  402475:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40247c:	00 00 00 00 
  402480:	80 fa 2f             	cmp    $0x2f,%dl
  402483:	75 03                	jne    402488 <__init_libc+0x108>
  402485:	48 89 01             	mov    %rax,(%rcx)
  402488:	0f b6 10             	movzbl (%rax),%edx
  40248b:	48 83 c0 01          	add    $0x1,%rax
  40248f:	84 d2                	test   %dl,%dl
  402491:	75 ed                	jne    402480 <__init_libc+0x100>
  402493:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  40249a:	e8 f1 38 00 00       	call   405d90 <__init_tls>
  40249f:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4024a3:	e8 e8 01 00 00       	call   402690 <__init_ssp>
  4024a8:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  4024af:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  4024b6:	0f 84 84 00 00 00    	je     402540 <__init_libc+0x1c0>
  4024bc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4024c0:	b8 07 00 00 00       	mov    $0x7,%eax
  4024c5:	be 03 00 00 00       	mov    $0x3,%esi
  4024ca:	31 d2                	xor    %edx,%edx
  4024cc:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4024d3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4024da:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  4024e1:	00 00 00 00 
  4024e5:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  4024ec:	00 00 00 
  4024ef:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  4024f6:	00 00 00 
  4024f9:	0f 05                	syscall
  4024fb:	85 c0                	test   %eax,%eax
  4024fd:	79 01                	jns    402500 <__init_libc+0x180>
  4024ff:	f4                   	hlt
  402500:	48 89 fa             	mov    %rdi,%rdx
  402503:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  40250a:	be 02 80 00 00       	mov    $0x8002,%esi
  40250f:	48 8d 3d 42 5c 00 00 	lea    0x5c42(%rip),%rdi        # 408158 <_fini+0x10f4>
  402516:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  40251a:	74 0d                	je     402529 <__init_libc+0x1a9>
  40251c:	b8 02 00 00 00       	mov    $0x2,%eax
  402521:	0f 05                	syscall
  402523:	48 85 c0             	test   %rax,%rax
  402526:	79 01                	jns    402529 <__init_libc+0x1a9>
  402528:	f4                   	hlt
  402529:	48 83 c2 08          	add    $0x8,%rdx
  40252d:	4c 39 c2             	cmp    %r8,%rdx
  402530:	75 e4                	jne    402516 <__init_libc+0x196>
  402532:	c6 05 29 8c 00 00 01 	movb   $0x1,0x8c29(%rip)        # 40b162 <__libc+0x2>
  402539:	c9                   	leave
  40253a:	c3                   	ret
  40253b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402540:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402547:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40254e:	0f 85 68 ff ff ff    	jne    4024bc <__init_libc+0x13c>
  402554:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402559:	0f 85 5d ff ff ff    	jne    4024bc <__init_libc+0x13c>
  40255f:	c9                   	leave
  402560:	c3                   	ret
  402561:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402568:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40256c:	48 85 c0             	test   %rax,%rax
  40256f:	74 2f                	je     4025a0 <__init_libc+0x220>
  402571:	48 89 c6             	mov    %rax,%rsi
  402574:	e9 da fe ff ff       	jmp    402453 <__init_libc+0xd3>
  402579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402580:	b8 08 00 00 00       	mov    $0x8,%eax
  402585:	e9 4c fe ff ff       	jmp    4023d6 <__init_libc+0x56>
  40258a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402590:	48 c7 05 ad 8b 00 00 	movq   $0x0,0x8bad(%rip)        # 40b148 <__hwcap>
  402597:	00 00 00 00 
  40259b:	e9 a3 fe ff ff       	jmp    402443 <__init_libc+0xc3>
  4025a0:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  4025a7:	48 8d 3d e9 5b 00 00 	lea    0x5be9(%rip),%rdi        # 408197 <_fini+0x1133>
  4025ae:	48 89 38             	mov    %rdi,(%rax)
  4025b1:	48 c7 c0 40 b1 40 00 	mov    $0x40b140,%rax
  4025b8:	48 89 38             	mov    %rdi,(%rax)
  4025bb:	e9 d3 fe ff ff       	jmp    402493 <__init_libc+0x113>

00000000004025c0 <__libc_start_init>:
  4025c0:	f3 0f 1e fa          	endbr64
  4025c4:	55                   	push   %rbp
  4025c5:	48 89 e5             	mov    %rsp,%rbp
  4025c8:	41 54                	push   %r12
  4025ca:	53                   	push   %rbx
  4025cb:	e8 30 ea ff ff       	call   401000 <_init>
  4025d0:	48 c7 c3 c0 af 40 00 	mov    $0x40afc0,%rbx
  4025d7:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  4025de:	4c 39 e3             	cmp    %r12,%rbx
  4025e1:	73 18                	jae    4025fb <__libc_start_init+0x3b>
  4025e3:	66 90                	xchg   %ax,%ax
  4025e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4025ec:	00 00 00 00 
  4025f0:	ff 13                	call   *(%rbx)
  4025f2:	48 83 c3 08          	add    $0x8,%rbx
  4025f6:	4c 39 e3             	cmp    %r12,%rbx
  4025f9:	72 f5                	jb     4025f0 <__libc_start_init+0x30>
  4025fb:	5b                   	pop    %rbx
  4025fc:	41 5c                	pop    %r12
  4025fe:	5d                   	pop    %rbp
  4025ff:	c3                   	ret

0000000000402600 <libc_start_main_stage2>:
  402600:	f3 0f 1e fa          	endbr64
  402604:	55                   	push   %rbp
  402605:	48 63 c6             	movslq %esi,%rax
  402608:	48 89 e5             	mov    %rsp,%rbp
  40260b:	41 56                	push   %r14
  40260d:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  402612:	41 55                	push   %r13
  402614:	49 89 fd             	mov    %rdi,%r13
  402617:	41 54                	push   %r12
  402619:	49 89 d4             	mov    %rdx,%r12
  40261c:	53                   	push   %rbx
  40261d:	48 89 c3             	mov    %rax,%rbx
  402620:	e8 9b ff ff ff       	call   4025c0 <__libc_start_init>
  402625:	89 df                	mov    %ebx,%edi
  402627:	4c 89 f2             	mov    %r14,%rdx
  40262a:	4c 89 e6             	mov    %r12,%rsi
  40262d:	41 ff d5             	call   *%r13
  402630:	89 c7                	mov    %eax,%edi
  402632:	e8 09 ea ff ff       	call   401040 <exit>
  402637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40263e:	00 00 

0000000000402640 <__libc_start_main>:
  402640:	f3 0f 1e fa          	endbr64
  402644:	55                   	push   %rbp
  402645:	48 63 c6             	movslq %esi,%rax
  402648:	48 89 e5             	mov    %rsp,%rbp
  40264b:	41 54                	push   %r12
  40264d:	49 89 fc             	mov    %rdi,%r12
  402650:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402655:	53                   	push   %rbx
  402656:	48 89 c3             	mov    %rax,%rbx
  402659:	48 83 ec 10          	sub    $0x10,%rsp
  40265d:	48 8b 32             	mov    (%rdx),%rsi
  402660:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402664:	e8 17 fd ff ff       	call   402380 <__init_libc>
  402669:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 402600 <libc_start_main_stage2>
  402670:	89 de                	mov    %ebx,%esi
  402672:	4c 89 e7             	mov    %r12,%rdi
  402675:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402679:	48 83 c4 10          	add    $0x10,%rsp
  40267d:	5b                   	pop    %rbx
  40267e:	41 5c                	pop    %r12
  402680:	5d                   	pop    %rbp
  402681:	ff e0                	jmp    *%rax
  402683:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40268a:	00 00 00 
  40268d:	0f 1f 00             	nopl   (%rax)

0000000000402690 <__init_ssp>:
  402690:	f3 0f 1e fa          	endbr64
  402694:	55                   	push   %rbp
  402695:	48 89 e5             	mov    %rsp,%rbp
  402698:	48 83 ec 10          	sub    $0x10,%rsp
  40269c:	48 85 ff             	test   %rdi,%rdi
  40269f:	74 3f                	je     4026e0 <__init_ssp+0x50>
  4026a1:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  4026a8:	48 89 fe             	mov    %rdi,%rsi
  4026ab:	ba 08 00 00 00       	mov    $0x8,%edx
  4026b0:	48 89 cf             	mov    %rcx,%rdi
  4026b3:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  4026b7:	e8 b1 34 00 00       	call   405b6d <memcpy>
  4026bc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4026c0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4026c4:	48 8b 11             	mov    (%rcx),%rdx
  4026c7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4026ce:	00 00 
  4026d0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4026d4:	c9                   	leave
  4026d5:	c3                   	ret
  4026d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026dd:	00 00 00 
  4026e0:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  4026e7:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  4026ee:	48 89 01             	mov    %rax,(%rcx)
  4026f1:	eb cd                	jmp    4026c0 <__init_ssp+0x30>
  4026f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4026fa:	00 00 00 
  4026fd:	0f 1f 00             	nopl   (%rax)

0000000000402700 <__stack_chk_fail>:
  402700:	f3 0f 1e fa          	endbr64
  402704:	f4                   	hlt
  402705:	c3                   	ret
  402706:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40270d:	00 00 00 

0000000000402710 <__funcs_on_exit>:
  402710:	f3 0f 1e fa          	endbr64
  402714:	c3                   	ret
  402715:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40271c:	00 00 00 
  40271f:	90                   	nop

0000000000402720 <__libc_exit_fini>:
  402720:	f3 0f 1e fa          	endbr64
  402724:	55                   	push   %rbp
  402725:	48 89 e5             	mov    %rsp,%rbp
  402728:	41 54                	push   %r12
  40272a:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  402731:	53                   	push   %rbx
  402732:	48 c7 c3 d0 af 40 00 	mov    $0x40afd0,%rbx
  402739:	49 39 dc             	cmp    %rbx,%r12
  40273c:	73 0f                	jae    40274d <__libc_exit_fini+0x2d>
  40273e:	66 90                	xchg   %ax,%ax
  402740:	48 83 eb 08          	sub    $0x8,%rbx
  402744:	31 c0                	xor    %eax,%eax
  402746:	ff 13                	call   *(%rbx)
  402748:	49 39 dc             	cmp    %rbx,%r12
  40274b:	72 f3                	jb     402740 <__libc_exit_fini+0x20>
  40274d:	5b                   	pop    %rbx
  40274e:	31 c0                	xor    %eax,%eax
  402750:	41 5c                	pop    %r12
  402752:	5d                   	pop    %rbp
  402753:	e9 0c 49 00 00       	jmp    407064 <_fini>
  402758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40275f:	00 

0000000000402760 <printf>:
  402760:	f3 0f 1e fa          	endbr64
  402764:	55                   	push   %rbp
  402765:	48 89 e5             	mov    %rsp,%rbp
  402768:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40276f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402776:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40277d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402784:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  40278b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402792:	84 c0                	test   %al,%al
  402794:	74 20                	je     4027b6 <printf+0x56>
  402796:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  40279a:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  40279e:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  4027a2:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  4027a6:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  4027aa:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  4027ae:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  4027b2:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  4027b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027bd:	00 00 
  4027bf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4027c6:	31 c0                	xor    %eax,%eax
  4027c8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4027cc:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4027d3:	48 89 fe             	mov    %rdi,%rsi
  4027d6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4027dd:	48 8d 3d 3c 88 00 00 	lea    0x883c(%rip),%rdi        # 40b020 <__stdout_FILE>
  4027e4:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  4027eb:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  4027f2:	00 00 00 
  4027f5:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  4027fc:	00 00 00 
  4027ff:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402806:	e8 c5 30 00 00       	call   4058d0 <vfprintf>
  40280b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402812:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402819:	00 00 
  40281b:	75 02                	jne    40281f <printf+0xbf>
  40281d:	c9                   	leave
  40281e:	c3                   	ret
  40281f:	e8 dc fe ff ff       	call   402700 <__stack_chk_fail>
  402824:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40282b:	00 00 00 
  40282e:	66 90                	xchg   %ax,%ax

0000000000402830 <puts>:
  402830:	f3 0f 1e fa          	endbr64
  402834:	55                   	push   %rbp
  402835:	48 89 e5             	mov    %rsp,%rbp
  402838:	53                   	push   %rbx
  402839:	48 83 ec 18          	sub    $0x18,%rsp
  40283d:	8b 05 69 88 00 00    	mov    0x8869(%rip),%eax        # 40b0ac <__stdout_FILE+0x8c>
  402843:	85 c0                	test   %eax,%eax
  402845:	79 61                	jns    4028a8 <puts+0x78>
  402847:	48 8d 35 d2 87 00 00 	lea    0x87d2(%rip),%rsi        # 40b020 <__stdout_FILE>
  40284e:	e8 ad 3c 00 00       	call   406500 <fputs>
  402853:	85 c0                	test   %eax,%eax
  402855:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40285a:	78 41                	js     40289d <puts+0x6d>
  40285c:	31 db                	xor    %ebx,%ebx
  40285e:	83 3d 4b 88 00 00 0a 	cmpl   $0xa,0x884b(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  402865:	74 79                	je     4028e0 <puts+0xb0>
  402867:	48 8b 05 da 87 00 00 	mov    0x87da(%rip),%rax        # 40b048 <__stdout_FILE+0x28>
  40286e:	48 3b 05 cb 87 00 00 	cmp    0x87cb(%rip),%rax        # 40b040 <__stdout_FILE+0x20>
  402875:	74 69                	je     4028e0 <puts+0xb0>
  402877:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40287b:	48 89 15 c6 87 00 00 	mov    %rdx,0x87c6(%rip)        # 40b048 <__stdout_FILE+0x28>
  402882:	c6 00 0a             	movb   $0xa,(%rax)
  402885:	31 c0                	xor    %eax,%eax
  402887:	85 db                	test   %ebx,%ebx
  402889:	74 12                	je     40289d <puts+0x6d>
  40288b:	48 8d 3d 8e 87 00 00 	lea    0x878e(%rip),%rdi        # 40b020 <__stdout_FILE>
  402892:	89 45 e8             	mov    %eax,-0x18(%rbp)
  402895:	e8 26 3a 00 00       	call   4062c0 <__unlockfile>
  40289a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40289d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4028a1:	c9                   	leave
  4028a2:	c3                   	ret
  4028a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4028a8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4028ac:	48 8d 3d 6d 87 00 00 	lea    0x876d(%rip),%rdi        # 40b020 <__stdout_FILE>
  4028b3:	e8 48 39 00 00       	call   406200 <__lockfile>
  4028b8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4028bc:	48 8d 35 5d 87 00 00 	lea    0x875d(%rip),%rsi        # 40b020 <__stdout_FILE>
  4028c3:	89 c3                	mov    %eax,%ebx
  4028c5:	e8 36 3c 00 00       	call   406500 <fputs>
  4028ca:	85 c0                	test   %eax,%eax
  4028cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028d1:	78 b4                	js     402887 <puts+0x57>
  4028d3:	83 3d d6 87 00 00 0a 	cmpl   $0xa,0x87d6(%rip)        # 40b0b0 <__stdout_FILE+0x90>
  4028da:	75 8b                	jne    402867 <puts+0x37>
  4028dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4028e0:	be 0a 00 00 00       	mov    $0xa,%esi
  4028e5:	48 8d 3d 34 87 00 00 	lea    0x8734(%rip),%rdi        # 40b020 <__stdout_FILE>
  4028ec:	e8 1f 3a 00 00       	call   406310 <__overflow>
  4028f1:	c1 f8 1f             	sar    $0x1f,%eax
  4028f4:	eb 91                	jmp    402887 <puts+0x57>
  4028f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4028fd:	00 00 00 

0000000000402900 <sprintf>:
  402900:	f3 0f 1e fa          	endbr64
  402904:	55                   	push   %rbp
  402905:	48 89 e5             	mov    %rsp,%rbp
  402908:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40290f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402916:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40291d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402924:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  40292b:	84 c0                	test   %al,%al
  40292d:	74 20                	je     40294f <sprintf+0x4f>
  40292f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402933:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402937:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  40293b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  40293f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402943:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402947:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  40294b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  40294f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402956:	00 00 
  402958:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  40295f:	31 c0                	xor    %eax,%eax
  402961:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402965:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  40296c:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402973:	00 00 00 
  402976:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40297d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402984:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  40298b:	00 00 00 
  40298e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402995:	e8 66 31 00 00       	call   405b00 <vsprintf>
  40299a:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  4029a1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029a8:	00 00 
  4029aa:	75 02                	jne    4029ae <sprintf+0xae>
  4029ac:	c9                   	leave
  4029ad:	c3                   	ret
  4029ae:	e8 4d fd ff ff       	call   402700 <__stack_chk_fail>
  4029b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4029ba:	00 00 00 
  4029bd:	0f 1f 00             	nopl   (%rax)

00000000004029c0 <pop_arg>:
  4029c0:	83 ee 09             	sub    $0x9,%esi
  4029c3:	83 fe 11             	cmp    $0x11,%esi
  4029c6:	77 50                	ja     402a18 <pop_arg+0x58>
  4029c8:	48 8d 0d c9 57 00 00 	lea    0x57c9(%rip),%rcx        # 408198 <_fini+0x1134>
  4029cf:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  4029d3:	48 01 c8             	add    %rcx,%rax
  4029d6:	3e ff e0             	notrack jmp *%rax
  4029d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029e0:	8b 02                	mov    (%rdx),%eax
  4029e2:	83 f8 2f             	cmp    $0x2f,%eax
  4029e5:	77 39                	ja     402a20 <pop_arg+0x60>
  4029e7:	89 c1                	mov    %eax,%ecx
  4029e9:	83 c0 08             	add    $0x8,%eax
  4029ec:	48 03 4a 10          	add    0x10(%rdx),%rcx
  4029f0:	89 02                	mov    %eax,(%rdx)
  4029f2:	48 8b 01             	mov    (%rcx),%rax
  4029f5:	48 89 07             	mov    %rax,(%rdi)
  4029f8:	c3                   	ret
  4029f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a00:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402a04:	48 83 c0 0f          	add    $0xf,%rax
  402a08:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402a0c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402a10:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402a14:	db 28                	fldt   (%rax)
  402a16:	db 3f                	fstpt  (%rdi)
  402a18:	c3                   	ret
  402a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a20:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a24:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402a28:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402a2c:	48 8b 01             	mov    (%rcx),%rax
  402a2f:	48 89 07             	mov    %rax,(%rdi)
  402a32:	c3                   	ret
  402a33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a38:	8b 02                	mov    (%rdx),%eax
  402a3a:	83 f8 2f             	cmp    $0x2f,%eax
  402a3d:	0f 87 55 01 00 00    	ja     402b98 <pop_arg+0x1d8>
  402a43:	89 c1                	mov    %eax,%ecx
  402a45:	83 c0 08             	add    $0x8,%eax
  402a48:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a4c:	89 02                	mov    %eax,(%rdx)
  402a4e:	0f b7 01             	movzwl (%rcx),%eax
  402a51:	48 89 07             	mov    %rax,(%rdi)
  402a54:	c3                   	ret
  402a55:	0f 1f 00             	nopl   (%rax)
  402a58:	8b 42 04             	mov    0x4(%rdx),%eax
  402a5b:	3d af 00 00 00       	cmp    $0xaf,%eax
  402a60:	0f 87 1a 01 00 00    	ja     402b80 <pop_arg+0x1c0>
  402a66:	89 c1                	mov    %eax,%ecx
  402a68:	83 c0 10             	add    $0x10,%eax
  402a6b:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a6f:	89 42 04             	mov    %eax,0x4(%rdx)
  402a72:	dd 01                	fldl   (%rcx)
  402a74:	db 3f                	fstpt  (%rdi)
  402a76:	c3                   	ret
  402a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402a7e:	00 00 
  402a80:	8b 02                	mov    (%rdx),%eax
  402a82:	83 f8 2f             	cmp    $0x2f,%eax
  402a85:	0f 87 dd 00 00 00    	ja     402b68 <pop_arg+0x1a8>
  402a8b:	89 c1                	mov    %eax,%ecx
  402a8d:	83 c0 08             	add    $0x8,%eax
  402a90:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402a94:	89 02                	mov    %eax,(%rdx)
  402a96:	48 63 01             	movslq (%rcx),%rax
  402a99:	48 89 07             	mov    %rax,(%rdi)
  402a9c:	c3                   	ret
  402a9d:	0f 1f 00             	nopl   (%rax)
  402aa0:	8b 02                	mov    (%rdx),%eax
  402aa2:	83 f8 2f             	cmp    $0x2f,%eax
  402aa5:	0f 87 a5 00 00 00    	ja     402b50 <pop_arg+0x190>
  402aab:	89 c1                	mov    %eax,%ecx
  402aad:	83 c0 08             	add    $0x8,%eax
  402ab0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ab4:	89 02                	mov    %eax,(%rdx)
  402ab6:	8b 01                	mov    (%rcx),%eax
  402ab8:	48 89 07             	mov    %rax,(%rdi)
  402abb:	c3                   	ret
  402abc:	0f 1f 40 00          	nopl   0x0(%rax)
  402ac0:	8b 02                	mov    (%rdx),%eax
  402ac2:	83 f8 2f             	cmp    $0x2f,%eax
  402ac5:	77 79                	ja     402b40 <pop_arg+0x180>
  402ac7:	89 c1                	mov    %eax,%ecx
  402ac9:	83 c0 08             	add    $0x8,%eax
  402acc:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402ad0:	89 02                	mov    %eax,(%rdx)
  402ad2:	0f b6 01             	movzbl (%rcx),%eax
  402ad5:	48 89 07             	mov    %rax,(%rdi)
  402ad8:	c3                   	ret
  402ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ae0:	8b 02                	mov    (%rdx),%eax
  402ae2:	83 f8 2f             	cmp    $0x2f,%eax
  402ae5:	77 49                	ja     402b30 <pop_arg+0x170>
  402ae7:	89 c1                	mov    %eax,%ecx
  402ae9:	83 c0 08             	add    $0x8,%eax
  402aec:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402af0:	89 02                	mov    %eax,(%rdx)
  402af2:	48 0f be 01          	movsbq (%rcx),%rax
  402af6:	48 89 07             	mov    %rax,(%rdi)
  402af9:	c3                   	ret
  402afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b00:	8b 02                	mov    (%rdx),%eax
  402b02:	83 f8 2f             	cmp    $0x2f,%eax
  402b05:	77 19                	ja     402b20 <pop_arg+0x160>
  402b07:	89 c1                	mov    %eax,%ecx
  402b09:	83 c0 08             	add    $0x8,%eax
  402b0c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b10:	89 02                	mov    %eax,(%rdx)
  402b12:	48 0f bf 01          	movswq (%rcx),%rax
  402b16:	48 89 07             	mov    %rax,(%rdi)
  402b19:	c3                   	ret
  402b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b20:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b24:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b28:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b2c:	eb e4                	jmp    402b12 <pop_arg+0x152>
  402b2e:	66 90                	xchg   %ax,%ax
  402b30:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b34:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b38:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b3c:	eb b4                	jmp    402af2 <pop_arg+0x132>
  402b3e:	66 90                	xchg   %ax,%ax
  402b40:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b44:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b48:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b4c:	eb 84                	jmp    402ad2 <pop_arg+0x112>
  402b4e:	66 90                	xchg   %ax,%ax
  402b50:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b54:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b58:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b5c:	e9 55 ff ff ff       	jmp    402ab6 <pop_arg+0xf6>
  402b61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b68:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b6c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b70:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b74:	e9 1d ff ff ff       	jmp    402a96 <pop_arg+0xd6>
  402b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b80:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b84:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b88:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b8c:	e9 e1 fe ff ff       	jmp    402a72 <pop_arg+0xb2>
  402b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b98:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b9c:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402ba0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402ba4:	e9 a5 fe ff ff       	jmp    402a4e <pop_arg+0x8e>
  402ba9:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402bb0:	00 00 00 
  402bb3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402bba:	00 00 00 
  402bbd:	0f 1f 00             	nopl   (%rax)

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
  402c47:	e8 04 39 00 00       	call   406550 <__fwritex>
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
  402c8d:	e8 be 38 00 00       	call   406550 <__fwritex>
  402c92:	eb cc                	jmp    402c60 <pad.part.0+0xa0>
  402c94:	0f 1f 40 00          	nopl   0x0(%rax)
  402c98:	41 8b 45 00          	mov    0x0(%r13),%eax
  402c9c:	eb be                	jmp    402c5c <pad.part.0+0x9c>
  402c9e:	e8 5d fa ff ff       	call   402700 <__stack_chk_fail>
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
  402d30:	48 8d 05 2b 54 00 00 	lea    0x542b(%rip),%rax        # 408162 <_fini+0x10fe>
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
  402dca:	48 8d 05 94 53 00 00 	lea    0x5394(%rip),%rax        # 408165 <_fini+0x1101>
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
  402e0b:	d8 0d d3 56 00 00    	fmuls  0x56d3(%rip)        # 4084e4 <states+0x1e4>
  402e11:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402e18:	45 85 c9             	test   %r9d,%r9d
  402e1b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402e22:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402e29:	d9 05 b9 56 00 00    	flds   0x56b9(%rip)        # 4084e8 <states+0x1e8>
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
  4031e5:	d9 05 e9 52 00 00    	flds   0x52e9(%rip)        # 4084d4 <states+0x1d4>
  4031eb:	d9 05 e7 52 00 00    	flds   0x52e7(%rip)        # 4084d8 <states+0x1d8>
  4031f1:	e9 1d 05 00 00       	jmp    403713 <fmt_fp+0xa53>
  4031f6:	48 8d 1d 66 4f 00 00 	lea    0x4f66(%rip),%rbx        # 408163 <_fini+0x10ff>
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
  403230:	4c 8d 25 42 4f 00 00 	lea    0x4f42(%rip),%r12        # 408179 <_fini+0x1115>
  403237:	48 8d 05 43 4f 00 00 	lea    0x4f43(%rip),%rax        # 408181 <_fini+0x111d>
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
  4032c4:	4c 8d 25 b2 4e 00 00 	lea    0x4eb2(%rip),%r12        # 40817d <_fini+0x1119>
  4032cb:	48 8d 05 a3 4e 00 00 	lea    0x4ea3(%rip),%rax        # 408175 <_fini+0x1111>
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
  403331:	e8 1a 32 00 00       	call   406550 <__fwritex>
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
  4033ac:	e8 9f 31 00 00       	call   406550 <__fwritex>
  4033b1:	41 f6 06 20          	testb  $0x20,(%r14)
  4033b5:	0f 85 c0 fe ff ff    	jne    40327b <fmt_fp+0x5bb>
  4033bb:	4c 89 f2             	mov    %r14,%rdx
  4033be:	be 03 00 00 00       	mov    $0x3,%esi
  4033c3:	4c 89 e7             	mov    %r12,%rdi
  4033c6:	e8 85 31 00 00       	call   406550 <__fwritex>
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
  40340b:	d9 05 cf 50 00 00    	flds   0x50cf(%rip)        # 4084e0 <states+0x1e0>
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
  4034a1:	48 8d 0d 38 4e 00 00 	lea    0x4e38(%rip),%rcx        # 4082e0 <xdigits>
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
  403616:	e8 35 2f 00 00       	call   406550 <__fwritex>
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
  403694:	e8 b7 2e 00 00       	call   406550 <__fwritex>
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
  4036f3:	db 2d 07 4e 00 00    	fldt   0x4e07(%rip)        # 408500 <states+0x200>
  4036f9:	d1 f9                	sar    $1,%ecx
  4036fb:	41 39 c9             	cmp    %ecx,%r9d
  4036fe:	0f 82 06 0b 00 00    	jb     40420a <fmt_fp+0x154a>
  403704:	44 39 c9             	cmp    %r9d,%ecx
  403707:	0f 84 31 0e 00 00    	je     40453e <fmt_fp+0x187e>
  40370d:	d9 05 c9 4d 00 00    	flds   0x4dc9(%rip)        # 4084dc <states+0x1dc>
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
  403a88:	e8 c3 2a 00 00       	call   406550 <__fwritex>
  403a8d:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403a94:	66 0f 6f 05 74 4a 00 	movdqa 0x4a74(%rip),%xmm0        # 408510 <states+0x210>
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
  403b9a:	e8 b1 29 00 00       	call   406550 <__fwritex>
  403b9f:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403ba6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403bac:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403bb3:	66 0f 6f 05 55 49 00 	movdqa 0x4955(%rip),%xmm0        # 408510 <states+0x210>
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
  403be0:	48 8d 3d 9e 45 00 00 	lea    0x459e(%rip),%rdi        # 408185 <_fini+0x1121>
  403be7:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403bee:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403bf5:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403bfc:	e8 4f 29 00 00       	call   406550 <__fwritex>
  403c01:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403c08:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403c0f:	66 0f 6f 05 f9 48 00 	movdqa 0x48f9(%rip),%xmm0        # 408510 <states+0x210>
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
  403f2b:	48 8d 3d 53 42 00 00 	lea    0x4253(%rip),%rdi        # 408185 <_fini+0x1121>
  403f32:	e8 19 26 00 00       	call   406550 <__fwritex>
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
  403f81:	e8 ca 25 00 00       	call   406550 <__fwritex>
  403f86:	66 0f 6f 05 82 45 00 	movdqa 0x4582(%rip),%xmm0        # 408510 <states+0x210>
  403f8d:	00 
  403f8e:	e9 4f ff ff ff       	jmp    403ee2 <fmt_fp+0x1222>
  403f93:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403f9a:	f6 00 20             	testb  $0x20,(%rax)
  403f9d:	0f 85 4e f9 ff ff    	jne    4038f1 <fmt_fp+0xc31>
  403fa3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  403faa:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403fb1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403fb8:	e8 93 25 00 00       	call   406550 <__fwritex>
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
  404033:	d9 05 97 44 00 00    	flds   0x4497(%rip)        # 4084d0 <states+0x1d0>
  404039:	d9 05 a1 44 00 00    	flds   0x44a1(%rip)        # 4084e0 <states+0x1e0>
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
  404085:	e8 c6 24 00 00       	call   406550 <__fwritex>
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
  404204:	db 2d f6 42 00 00    	fldt   0x42f6(%rip)        # 408500 <states+0x200>
  40420a:	d9 05 c8 42 00 00    	flds   0x42c8(%rip)        # 4084d8 <states+0x1d8>
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
  404239:	d9 05 95 42 00 00    	flds   0x4295(%rip)        # 4084d4 <states+0x1d4>
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
  404510:	e8 3b 20 00 00       	call   406550 <__fwritex>
  404515:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40451c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404523:	66 0f 6f 05 e5 3f 00 	movdqa 0x3fe5(%rip),%xmm0        # 408510 <states+0x210>
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
  4045ee:	48 8d 3d 90 3b 00 00 	lea    0x3b90(%rip),%rdi        # 408185 <_fini+0x1121>
  4045f5:	e8 56 1f 00 00       	call   406550 <__fwritex>
  4045fa:	e9 77 fd ff ff       	jmp    404376 <fmt_fp+0x16b6>
  4045ff:	e8 fc e0 ff ff       	call   402700 <__stack_chk_fail>
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
  404646:	4c 8d 3d b3 3c 00 00 	lea    0x3cb3(%rip),%r15        # 408300 <states>
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
  404a4b:	e8 00 1b 00 00       	call   406550 <__fwritex>
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
  404af6:	48 8d 3d e3 36 00 00 	lea    0x36e3(%rip),%rdi        # 4081e0 <_fini+0x117c>
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
  404cae:	e8 0d dd ff ff       	call   4029c0 <pop_arg>
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
  404d97:	e8 24 dc ff ff       	call   4029c0 <pop_arg>
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
  404dd9:	48 8d 3d a7 33 00 00 	lea    0x33a7(%rip),%rdi        # 408187 <_fini+0x1123>
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
  404ecf:	e8 7c 16 00 00       	call   406550 <__fwritex>
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
  404f94:	48 8d 3d ec 31 00 00 	lea    0x31ec(%rip),%rdi        # 408187 <_fini+0x1123>
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
  4050e4:	48 8d 35 f5 31 00 00 	lea    0x31f5(%rip),%rsi        # 4082e0 <xdigits>
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
  405127:	48 8d 3d 59 30 00 00 	lea    0x3059(%rip),%rdi        # 408187 <_fini+0x1123>
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
  4052bd:	e8 8e 12 00 00       	call   406550 <__fwritex>
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
  405315:	48 8d 3d 6b 2e 00 00 	lea    0x2e6b(%rip),%rdi        # 408187 <_fini+0x1123>
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
  405363:	48 8d 3d 1d 2e 00 00 	lea    0x2e1d(%rip),%rdi        # 408187 <_fini+0x1123>
  40536a:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40536e:	44 89 d0             	mov    %r10d,%eax
  405371:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405378:	4d 89 c6             	mov    %r8,%r14
  40537b:	e9 b3 fc ff ff       	jmp    405033 <printf_core+0x9f3>
  405380:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  405384:	48 8d 05 06 2e 00 00 	lea    0x2e06(%rip),%rax        # 408191 <_fini+0x112d>
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
  405413:	48 8d 3d 6d 2d 00 00 	lea    0x2d6d(%rip),%rdi        # 408187 <_fini+0x1123>
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
  40549b:	48 8d 15 1e 2e 00 00 	lea    0x2e1e(%rip),%rdx        # 4082c0 <_fini+0x125c>
  4054a2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4054a6:	48 01 d0             	add    %rdx,%rax
  4054a9:	3e ff e0             	notrack jmp *%rax
  4054ac:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4054b0:	49 63 c5             	movslq %r13d,%rax
  4054b3:	48 89 02             	mov    %rax,(%rdx)
  4054b6:	e9 73 f2 ff ff       	jmp    40472e <printf_core+0xee>
  4054bb:	48 8d 3d c5 2c 00 00 	lea    0x2cc5(%rip),%rdi        # 408187 <_fini+0x1123>
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
  405598:	e8 b3 0f 00 00       	call   406550 <__fwritex>
  40559d:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4055a4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4055ab:	e9 61 ff ff ff       	jmp    405511 <printf_core+0xed1>
  4055b0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4055b3:	48 8d 3d cd 2b 00 00 	lea    0x2bcd(%rip),%rdi        # 408187 <_fini+0x1123>
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
  405726:	48 8d 15 5a 2a 00 00 	lea    0x2a5a(%rip),%rdx        # 408187 <_fini+0x1123>
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
  4057cf:	48 8d 3d b1 29 00 00 	lea    0x29b1(%rip),%rdi        # 408187 <_fini+0x1123>
  4057d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4057db:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  4057df:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4057e6:	e9 c3 f7 ff ff       	jmp    404fae <printf_core+0x96e>
  4057eb:	48 8d 3d 96 29 00 00 	lea    0x2996(%rip),%rdi        # 408188 <_fini+0x1124>
  4057f2:	b8 01 00 00 00       	mov    $0x1,%eax
  4057f7:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4057fe:	e9 a2 f7 ff ff       	jmp    404fa5 <printf_core+0x965>
  405803:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405807:	4d 89 c6             	mov    %r8,%r14
  40580a:	e9 24 f8 ff ff       	jmp    405033 <printf_core+0x9f3>
  40580f:	48 8d 3d 73 29 00 00 	lea    0x2973(%rip),%rdi        # 408189 <_fini+0x1125>
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
  4058b3:	e8 48 ce ff ff       	call   402700 <__stack_chk_fail>
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
  405a48:	e8 43 0a 00 00       	call   406490 <__towrite>
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
  405ad8:	e8 23 cc ff ff       	call   402700 <__stack_chk_fail>
  405add:	4c 89 ef             	mov    %r13,%rdi
  405ae0:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405ae6:	e8 a5 09 00 00       	call   406490 <__towrite>
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
  405b0f:	e9 ac 0c 00 00       	jmp    4067c0 <vsnprintf>
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
  405b30:	e8 8b 0e 00 00       	call   4069c0 <__stpcpy>
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
  405b56:	e8 25 0d 00 00       	call   406880 <memchr>
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
  405c83:	e8 c5 0e 00 00       	call   406b4d <__set_thread_area>
  405c88:	85 c0                	test   %eax,%eax
  405c8a:	78 65                	js     405cf1 <__init_tp+0x81>
  405c8c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405c91:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405c95:	74 51                	je     405ce8 <__init_tp+0x78>
  405c97:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405c9e:	b8 da 00 00 00       	mov    $0xda,%eax
  405ca3:	48 8d 3d e6 5a 00 00 	lea    0x5ae6(%rip),%rdi        # 40b790 <__thread_list_lock>
  405caa:	0f 05                	syscall
  405cac:	89 43 30             	mov    %eax,0x30(%rbx)
  405caf:	48 8d 05 e2 54 00 00 	lea    0x54e2(%rip),%rax        # 40b198 <__libc+0x38>
  405cb6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405cbd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405cc4:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405ccb:	48 8b 05 5e 54 00 00 	mov    0x545e(%rip),%rax        # 40b130 <__sysinfo>
  405cd2:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405cd6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405cda:	31 c0                	xor    %eax,%eax
  405cdc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405ce0:	c9                   	leave
  405ce1:	c3                   	ret
  405ce2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ce8:	c6 05 71 54 00 00 01 	movb   $0x1,0x5471(%rip)        # 40b160 <__libc>
  405cef:	eb a6                	jmp    405c97 <__init_tp+0x27>
  405cf1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405cf6:	eb e4                	jmp    405cdc <__init_tp+0x6c>
  405cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405cff:	00 

0000000000405d00 <__copy_tls>:
  405d00:	f3 0f 1e fa          	endbr64
  405d04:	55                   	push   %rbp
  405d05:	48 8b 05 6c 54 00 00 	mov    0x546c(%rip),%rax        # 40b178 <__libc+0x18>
  405d0c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405d13:	ff 
  405d14:	48 89 e5             	mov    %rsp,%rbp
  405d17:	41 56                	push   %r14
  405d19:	49 89 fe             	mov    %rdi,%r14
  405d1c:	41 55                	push   %r13
  405d1e:	4c 8b 2d 5b 54 00 00 	mov    0x545b(%rip),%r13        # 40b180 <__libc+0x20>
  405d25:	41 54                	push   %r12
  405d27:	53                   	push   %rbx
  405d28:	48 8b 1d 41 54 00 00 	mov    0x5441(%rip),%rbx        # 40b170 <__libc+0x10>
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
  405d6c:	48 8b 05 15 54 00 00 	mov    0x5415(%rip),%rax        # 40b188 <__libc+0x28>
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
  405e0d:	48 8d 1d ec 57 00 00 	lea    0x57ec(%rip),%rbx        # 40b600 <main_tls>
  405e14:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405e18:	48 89 35 e9 57 00 00 	mov    %rsi,0x57e9(%rip)        # 40b608 <main_tls+0x8>
  405e1f:	48 89 05 ea 57 00 00 	mov    %rax,0x57ea(%rip)        # 40b610 <main_tls+0x10>
  405e26:	49 8b 40 30          	mov    0x30(%r8),%rax
  405e2a:	48 c7 05 53 53 00 00 	movq   $0x1,0x5353(%rip)        # 40b188 <__libc+0x28>
  405e31:	01 00 00 00 
  405e35:	48 89 05 e4 57 00 00 	mov    %rax,0x57e4(%rip)        # 40b620 <main_tls+0x20>
  405e3c:	48 89 1d 2d 53 00 00 	mov    %rbx,0x532d(%rip)        # 40b170 <__libc+0x10>
  405e43:	48 01 d6             	add    %rdx,%rsi
  405e46:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405e4a:	48 f7 de             	neg    %rsi
  405e4d:	48 21 ce             	and    %rcx,%rsi
  405e50:	48 01 d6             	add    %rdx,%rsi
  405e53:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405e5a:	48 89 35 b7 57 00 00 	mov    %rsi,0x57b7(%rip)        # 40b618 <main_tls+0x18>
  405e61:	48 89 35 c0 57 00 00 	mov    %rsi,0x57c0(%rip)        # 40b628 <main_tls+0x28>
  405e68:	48 83 f8 07          	cmp    $0x7,%rax
  405e6c:	77 15                	ja     405e83 <__init_tls+0xf3>
  405e6e:	48 c7 05 a7 57 00 00 	movq   $0x8,0x57a7(%rip)        # 40b620 <main_tls+0x20>
  405e75:	08 00 00 00 
  405e79:	ba e7 00 00 00       	mov    $0xe7,%edx
  405e7e:	b8 08 00 00 00       	mov    $0x8,%eax
  405e83:	48 01 d6             	add    %rdx,%rsi
  405e86:	48 89 05 f3 52 00 00 	mov    %rax,0x52f3(%rip)        # 40b180 <__libc+0x20>
  405e8d:	48 8d 3d ac 57 00 00 	lea    0x57ac(%rip),%rdi        # 40b640 <builtin_tls>
  405e94:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405e98:	48 89 35 d9 52 00 00 	mov    %rsi,0x52d9(%rip)        # 40b178 <__libc+0x18>
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
  405ed7:	e8 71 0c 00 00       	call   406b4d <__set_thread_area>
  405edc:	85 c0                	test   %eax,%eax
  405ede:	0f 88 b8 00 00 00    	js     405f9c <__init_tls+0x20c>
  405ee4:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405ee9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405eed:	0f 84 9d 00 00 00    	je     405f90 <__init_tls+0x200>
  405ef3:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405efa:	b8 da 00 00 00       	mov    $0xda,%eax
  405eff:	48 8d 3d 8a 58 00 00 	lea    0x588a(%rip),%rdi        # 40b790 <__thread_list_lock>
  405f06:	0f 05                	syscall
  405f08:	89 43 30             	mov    %eax,0x30(%rbx)
  405f0b:	48 8d 05 86 52 00 00 	lea    0x5286(%rip),%rax        # 40b198 <__libc+0x38>
  405f12:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405f19:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405f20:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405f27:	48 8b 05 02 52 00 00 	mov    0x5202(%rip),%rax        # 40b130 <__sysinfo>
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
  405f60:	44 8b 0d a5 51 00 00 	mov    0x51a5(%rip),%r9d        # 40b10c <__default_stacksize>
  405f67:	49 39 d1             	cmp    %rdx,%r9
  405f6a:	0f 83 6c fe ff ff    	jae    405ddc <__init_tls+0x4c>
  405f70:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  405f76:	4c 39 ca             	cmp    %r9,%rdx
  405f79:	49 0f 47 d1          	cmova  %r9,%rdx
  405f7d:	89 15 89 51 00 00    	mov    %edx,0x5189(%rip)        # 40b10c <__default_stacksize>
  405f83:	e9 54 fe ff ff       	jmp    405ddc <__init_tls+0x4c>
  405f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405f8f:	00 
  405f90:	c6 05 c9 51 00 00 01 	movb   $0x1,0x51c9(%rip)        # 40b160 <__libc>
  405f97:	e9 57 ff ff ff       	jmp    405ef3 <__init_tls+0x163>
  405f9c:	f4                   	hlt
  405f9d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405fa1:	c9                   	leave
  405fa2:	c3                   	ret
  405fa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405fa8:	48 8b 15 69 56 00 00 	mov    0x5669(%rip),%rdx        # 40b618 <main_tls+0x18>
  405faf:	48 8b 35 52 56 00 00 	mov    0x5652(%rip),%rsi        # 40b608 <main_tls+0x8>
  405fb6:	48 8b 05 63 56 00 00 	mov    0x5663(%rip),%rax        # 40b620 <main_tls+0x20>
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
  405ff4:	48 8d 05 45 26 00 00 	lea    0x2645(%rip),%rax        # 408640 <errmsgstr>
  405ffb:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  406001:	77 11                	ja     406014 <__strerror_l+0x24>
  406003:	48 63 ff             	movslq %edi,%rdi
  406006:	48 8d 15 13 25 00 00 	lea    0x2513(%rip),%rdx        # 408520 <errmsgidx>
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
  4061a3:	d8 0d 43 23 00 00    	fmuls  0x2343(%rip)        # 4084ec <states+0x1ec>
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
  4061df:	e8 dc 09 00 00       	call   406bc0 <wcrtomb>
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

0000000000406310 <__overflow>:
  406310:	f3 0f 1e fa          	endbr64
  406314:	55                   	push   %rbp
  406315:	48 89 e5             	mov    %rsp,%rbp
  406318:	48 83 ec 20          	sub    $0x20,%rsp
  40631c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406323:	00 00 
  406325:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406329:	31 c0                	xor    %eax,%eax
  40632b:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40632f:	40 88 75 f7          	mov    %sil,-0x9(%rbp)
  406333:	48 85 c0             	test   %rax,%rax
  406336:	74 50                	je     406388 <__overflow+0x78>
  406338:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  40633c:	48 39 c2             	cmp    %rax,%rdx
  40633f:	74 0c                	je     40634d <__overflow+0x3d>
  406341:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406345:	3b 87 90 00 00 00    	cmp    0x90(%rdi),%eax
  40634b:	75 2b                	jne    406378 <__overflow+0x68>
  40634d:	48 8d 75 f7          	lea    -0x9(%rbp),%rsi
  406351:	ba 01 00 00 00       	mov    $0x1,%edx
  406356:	ff 57 48             	call   *0x48(%rdi)
  406359:	48 83 f8 01          	cmp    $0x1,%rax
  40635d:	75 41                	jne    4063a0 <__overflow+0x90>
  40635f:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  406363:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  406367:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40636e:	00 00 
  406370:	75 35                	jne    4063a7 <__overflow+0x97>
  406372:	c9                   	leave
  406373:	c3                   	ret
  406374:	0f 1f 40 00          	nopl   0x0(%rax)
  406378:	48 8d 72 01          	lea    0x1(%rdx),%rsi
  40637c:	48 89 77 28          	mov    %rsi,0x28(%rdi)
  406380:	88 02                	mov    %al,(%rdx)
  406382:	eb df                	jmp    406363 <__overflow+0x53>
  406384:	0f 1f 40 00          	nopl   0x0(%rax)
  406388:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40638c:	e8 ff 00 00 00       	call   406490 <__towrite>
  406391:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  406395:	85 c0                	test   %eax,%eax
  406397:	75 07                	jne    4063a0 <__overflow+0x90>
  406399:	48 8b 47 20          	mov    0x20(%rdi),%rax
  40639d:	eb 99                	jmp    406338 <__overflow+0x28>
  40639f:	90                   	nop
  4063a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4063a5:	eb bc                	jmp    406363 <__overflow+0x53>
  4063a7:	e8 54 c3 ff ff       	call   402700 <__stack_chk_fail>
  4063ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004063b0 <__aio_close>:
  4063b0:	f3 0f 1e fa          	endbr64
  4063b4:	89 f8                	mov    %edi,%eax
  4063b6:	c3                   	ret
  4063b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4063be:	00 00 

00000000004063c0 <__stdio_close>:
  4063c0:	f3 0f 1e fa          	endbr64
  4063c4:	55                   	push   %rbp
  4063c5:	8b 7f 78             	mov    0x78(%rdi),%edi
  4063c8:	48 89 e5             	mov    %rsp,%rbp
  4063cb:	e8 e0 ff ff ff       	call   4063b0 <__aio_close>
  4063d0:	48 63 f8             	movslq %eax,%rdi
  4063d3:	b8 03 00 00 00       	mov    $0x3,%eax
  4063d8:	0f 05                	syscall
  4063da:	48 89 c7             	mov    %rax,%rdi
  4063dd:	e8 9e 07 00 00       	call   406b80 <__syscall_ret>
  4063e2:	5d                   	pop    %rbp
  4063e3:	c3                   	ret
  4063e4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4063eb:	00 00 00 
  4063ee:	66 90                	xchg   %ax,%ax

00000000004063f0 <__stdio_seek>:
  4063f0:	f3 0f 1e fa          	endbr64
  4063f4:	8b 7f 78             	mov    0x78(%rdi),%edi
  4063f7:	e9 64 07 00 00       	jmp    406b60 <__lseek>
  4063fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406400 <__stdout_write>:
  406400:	f3 0f 1e fa          	endbr64
  406404:	55                   	push   %rbp
  406405:	48 8d 05 d4 09 00 00 	lea    0x9d4(%rip),%rax        # 406de0 <__stdio_write>
  40640c:	49 89 f8             	mov    %rdi,%r8
  40640f:	49 89 f1             	mov    %rsi,%r9
  406412:	48 89 e5             	mov    %rsp,%rbp
  406415:	48 83 ec 10          	sub    $0x10,%rsp
  406419:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  406420:	00 00 
  406422:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  406426:	49 89 d2             	mov    %rdx,%r10
  406429:	48 89 47 48          	mov    %rax,0x48(%rdi)
  40642d:	f6 07 40             	testb  $0x40,(%rdi)
  406430:	75 19                	jne    40644b <__stdout_write+0x4b>
  406432:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  406436:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40643a:	b8 10 00 00 00       	mov    $0x10,%eax
  40643f:	be 13 54 00 00       	mov    $0x5413,%esi
  406444:	0f 05                	syscall
  406446:	48 85 c0             	test   %rax,%rax
  406449:	75 25                	jne    406470 <__stdout_write+0x70>
  40644b:	4c 89 d2             	mov    %r10,%rdx
  40644e:	4c 89 ce             	mov    %r9,%rsi
  406451:	4c 89 c7             	mov    %r8,%rdi
  406454:	e8 87 09 00 00       	call   406de0 <__stdio_write>
  406459:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40645d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406464:	00 00 
  406466:	75 15                	jne    40647d <__stdout_write+0x7d>
  406468:	c9                   	leave
  406469:	c3                   	ret
  40646a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406470:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406477:	ff ff ff ff 
  40647b:	eb ce                	jmp    40644b <__stdout_write+0x4b>
  40647d:	e8 7e c2 ff ff       	call   402700 <__stack_chk_fail>
  406482:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406489:	00 00 00 
  40648c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406490 <__towrite>:
  406490:	f3 0f 1e fa          	endbr64
  406494:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  40649a:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40649d:	09 d0                	or     %edx,%eax
  40649f:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  4064a5:	8b 07                	mov    (%rdi),%eax
  4064a7:	a8 08                	test   $0x8,%al
  4064a9:	75 35                	jne    4064e0 <__towrite+0x50>
  4064ab:	48 8b 47 58          	mov    0x58(%rdi),%rax
  4064af:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  4064b3:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4064b7:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  4064bb:	48 01 c1             	add    %rax,%rcx
  4064be:	66 48 0f 6e c8       	movq   %rax,%xmm1
  4064c3:	48 89 47 38          	mov    %rax,0x38(%rdi)
  4064c7:	31 c0                	xor    %eax,%eax
  4064c9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  4064ce:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  4064d2:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  4064d6:	c3                   	ret
  4064d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4064de:	00 00 
  4064e0:	83 c8 20             	or     $0x20,%eax
  4064e3:	89 07                	mov    %eax,(%rdi)
  4064e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4064ea:	c3                   	ret
  4064eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004064f0 <__towrite_needs_stdio_exit>:
  4064f0:	f3 0f 1e fa          	endbr64
  4064f4:	e9 87 08 00 00       	jmp    406d80 <__stdio_exit>
  4064f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406500 <fputs>:
  406500:	f3 0f 1e fa          	endbr64
  406504:	55                   	push   %rbp
  406505:	48 89 e5             	mov    %rsp,%rbp
  406508:	41 54                	push   %r12
  40650a:	49 89 f4             	mov    %rsi,%r12
  40650d:	53                   	push   %rbx
  40650e:	48 83 ec 10          	sub    $0x10,%rsp
  406512:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406516:	e8 a5 05 00 00       	call   406ac0 <strlen>
  40651b:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40651f:	4c 89 e1             	mov    %r12,%rcx
  406522:	be 01 00 00 00       	mov    $0x1,%esi
  406527:	48 89 c2             	mov    %rax,%rdx
  40652a:	48 89 c3             	mov    %rax,%rbx
  40652d:	e8 1e 01 00 00       	call   406650 <fwrite>
  406532:	48 39 d8             	cmp    %rbx,%rax
  406535:	0f 95 c0             	setne  %al
  406538:	48 83 c4 10          	add    $0x10,%rsp
  40653c:	0f b6 c0             	movzbl %al,%eax
  40653f:	5b                   	pop    %rbx
  406540:	41 5c                	pop    %r12
  406542:	f7 d8                	neg    %eax
  406544:	5d                   	pop    %rbp
  406545:	c3                   	ret
  406546:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40654d:	00 00 00 

0000000000406550 <__fwritex>:
  406550:	f3 0f 1e fa          	endbr64
  406554:	55                   	push   %rbp
  406555:	48 89 f9             	mov    %rdi,%rcx
  406558:	48 89 e5             	mov    %rsp,%rbp
  40655b:	41 54                	push   %r12
  40655d:	49 89 f4             	mov    %rsi,%r12
  406560:	53                   	push   %rbx
  406561:	48 89 d3             	mov    %rdx,%rbx
  406564:	48 83 ec 10          	sub    $0x10,%rsp
  406568:	48 8b 42 20          	mov    0x20(%rdx),%rax
  40656c:	48 85 c0             	test   %rax,%rax
  40656f:	0f 84 ab 00 00 00    	je     406620 <__fwritex+0xd0>
  406575:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406579:	48 29 f8             	sub    %rdi,%rax
  40657c:	4c 39 e0             	cmp    %r12,%rax
  40657f:	72 57                	jb     4065d8 <__fwritex+0x88>
  406581:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  406587:	4c 89 e2             	mov    %r12,%rdx
  40658a:	85 c0                	test   %eax,%eax
  40658c:	79 3d                	jns    4065cb <__fwritex+0x7b>
  40658e:	4d 89 e0             	mov    %r12,%r8
  406591:	4c 89 c2             	mov    %r8,%rdx
  406594:	48 89 ce             	mov    %rcx,%rsi
  406597:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  40659b:	e8 cd f5 ff ff       	call   405b6d <memcpy>
  4065a0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4065a4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4065a8:	4c 89 e0             	mov    %r12,%rax
  4065ab:	48 83 c4 10          	add    $0x10,%rsp
  4065af:	5b                   	pop    %rbx
  4065b0:	41 5c                	pop    %r12
  4065b2:	5d                   	pop    %rbp
  4065b3:	c3                   	ret
  4065b4:	90                   	nop
  4065b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4065bc:	00 00 00 00 
  4065c0:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  4065c5:	74 29                	je     4065f0 <__fwritex+0xa0>
  4065c7:	48 83 ea 01          	sub    $0x1,%rdx
  4065cb:	48 85 d2             	test   %rdx,%rdx
  4065ce:	75 f0                	jne    4065c0 <__fwritex+0x70>
  4065d0:	eb bc                	jmp    40658e <__fwritex+0x3e>
  4065d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4065d8:	48 8b 43 48          	mov    0x48(%rbx),%rax
  4065dc:	48 83 c4 10          	add    $0x10,%rsp
  4065e0:	4c 89 e2             	mov    %r12,%rdx
  4065e3:	48 89 df             	mov    %rbx,%rdi
  4065e6:	48 89 ce             	mov    %rcx,%rsi
  4065e9:	5b                   	pop    %rbx
  4065ea:	41 5c                	pop    %r12
  4065ec:	5d                   	pop    %rbp
  4065ed:	ff e0                	jmp    *%rax
  4065ef:	90                   	nop
  4065f0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4065f4:	48 89 ce             	mov    %rcx,%rsi
  4065f7:	48 89 df             	mov    %rbx,%rdi
  4065fa:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4065fe:	ff 53 48             	call   *0x48(%rbx)
  406601:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406605:	48 39 d0             	cmp    %rdx,%rax
  406608:	72 a1                	jb     4065ab <__fwritex+0x5b>
  40660a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40660e:	4d 89 e0             	mov    %r12,%r8
  406611:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406615:	49 29 d0             	sub    %rdx,%r8
  406618:	48 01 d1             	add    %rdx,%rcx
  40661b:	e9 71 ff ff ff       	jmp    406591 <__fwritex+0x41>
  406620:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406624:	48 89 d7             	mov    %rdx,%rdi
  406627:	e8 64 fe ff ff       	call   406490 <__towrite>
  40662c:	85 c0                	test   %eax,%eax
  40662e:	75 10                	jne    406640 <__fwritex+0xf0>
  406630:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406634:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406638:	e9 38 ff ff ff       	jmp    406575 <__fwritex+0x25>
  40663d:	0f 1f 00             	nopl   (%rax)
  406640:	31 c0                	xor    %eax,%eax
  406642:	e9 64 ff ff ff       	jmp    4065ab <__fwritex+0x5b>
  406647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40664e:	00 00 

0000000000406650 <fwrite>:
  406650:	f3 0f 1e fa          	endbr64
  406654:	55                   	push   %rbp
  406655:	31 c0                	xor    %eax,%eax
  406657:	48 89 e5             	mov    %rsp,%rbp
  40665a:	41 57                	push   %r15
  40665c:	41 56                	push   %r14
  40665e:	49 89 f6             	mov    %rsi,%r14
  406661:	41 55                	push   %r13
  406663:	4c 0f af f2          	imul   %rdx,%r14
  406667:	41 54                	push   %r12
  406669:	49 89 cc             	mov    %rcx,%r12
  40666c:	53                   	push   %rbx
  40666d:	48 89 f3             	mov    %rsi,%rbx
  406670:	48 83 ec 18          	sub    $0x18,%rsp
  406674:	48 85 f6             	test   %rsi,%rsi
  406677:	48 0f 45 c2          	cmovne %rdx,%rax
  40667b:	49 89 c5             	mov    %rax,%r13
  40667e:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  406684:	85 c0                	test   %eax,%eax
  406686:	79 30                	jns    4066b8 <fwrite+0x68>
  406688:	48 89 ca             	mov    %rcx,%rdx
  40668b:	4c 89 f6             	mov    %r14,%rsi
  40668e:	e8 bd fe ff ff       	call   406550 <__fwritex>
  406693:	49 39 c6             	cmp    %rax,%r14
  406696:	74 08                	je     4066a0 <fwrite+0x50>
  406698:	31 d2                	xor    %edx,%edx
  40669a:	48 f7 f3             	div    %rbx
  40669d:	49 89 c5             	mov    %rax,%r13
  4066a0:	48 83 c4 18          	add    $0x18,%rsp
  4066a4:	4c 89 e8             	mov    %r13,%rax
  4066a7:	5b                   	pop    %rbx
  4066a8:	41 5c                	pop    %r12
  4066aa:	41 5d                	pop    %r13
  4066ac:	41 5e                	pop    %r14
  4066ae:	41 5f                	pop    %r15
  4066b0:	5d                   	pop    %rbp
  4066b1:	c3                   	ret
  4066b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4066b8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4066bc:	48 89 cf             	mov    %rcx,%rdi
  4066bf:	e8 3c fb ff ff       	call   406200 <__lockfile>
  4066c4:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  4066c8:	4c 89 e2             	mov    %r12,%rdx
  4066cb:	4c 89 f6             	mov    %r14,%rsi
  4066ce:	41 89 c7             	mov    %eax,%r15d
  4066d1:	e8 7a fe ff ff       	call   406550 <__fwritex>
  4066d6:	45 85 ff             	test   %r15d,%r15d
  4066d9:	74 b8                	je     406693 <fwrite+0x43>
  4066db:	4c 89 e7             	mov    %r12,%rdi
  4066de:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4066e2:	e8 d9 fb ff ff       	call   4062c0 <__unlockfile>
  4066e7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4066eb:	eb a6                	jmp    406693 <fwrite+0x43>
  4066ed:	0f 1f 00             	nopl   (%rax)

00000000004066f0 <sn_write>:
  4066f0:	f3 0f 1e fa          	endbr64
  4066f4:	55                   	push   %rbp
  4066f5:	48 89 f1             	mov    %rsi,%rcx
  4066f8:	48 89 e5             	mov    %rsp,%rbp
  4066fb:	41 55                	push   %r13
  4066fd:	49 89 d5             	mov    %rdx,%r13
  406700:	41 54                	push   %r12
  406702:	53                   	push   %rbx
  406703:	48 89 fb             	mov    %rdi,%rbx
  406706:	48 83 ec 18          	sub    $0x18,%rsp
  40670a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406711:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406715:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406719:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40671e:	49 8b 3c 24          	mov    (%r12),%rdi
  406722:	48 29 f2             	sub    %rsi,%rdx
  406725:	48 39 c2             	cmp    %rax,%rdx
  406728:	48 0f 47 d0          	cmova  %rax,%rdx
  40672c:	48 85 d2             	test   %rdx,%rdx
  40672f:	75 2f                	jne    406760 <sn_write+0x70>
  406731:	49 39 c5             	cmp    %rax,%r13
  406734:	49 0f 46 c5          	cmovbe %r13,%rax
  406738:	48 89 c2             	mov    %rax,%rdx
  40673b:	48 85 c0             	test   %rax,%rax
  40673e:	75 5c                	jne    40679c <sn_write+0xac>
  406740:	c6 07 00             	movb   $0x0,(%rdi)
  406743:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406747:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40674b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40674f:	48 83 c4 18          	add    $0x18,%rsp
  406753:	4c 89 e8             	mov    %r13,%rax
  406756:	5b                   	pop    %rbx
  406757:	41 5c                	pop    %r12
  406759:	41 5d                	pop    %r13
  40675b:	5d                   	pop    %rbp
  40675c:	c3                   	ret
  40675d:	0f 1f 00             	nopl   (%rax)
  406760:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  406764:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  406768:	e8 00 f4 ff ff       	call   405b6d <memcpy>
  40676d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  406771:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406776:	49 8b 3c 24          	mov    (%r12),%rdi
  40677a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40677e:	48 29 d0             	sub    %rdx,%rax
  406781:	48 01 d7             	add    %rdx,%rdi
  406784:	49 39 c5             	cmp    %rax,%r13
  406787:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  40678c:	49 0f 46 c5          	cmovbe %r13,%rax
  406790:	49 89 3c 24          	mov    %rdi,(%r12)
  406794:	48 89 c2             	mov    %rax,%rdx
  406797:	48 85 c0             	test   %rax,%rax
  40679a:	74 a4                	je     406740 <sn_write+0x50>
  40679c:	48 89 ce             	mov    %rcx,%rsi
  40679f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4067a3:	e8 c5 f3 ff ff       	call   405b6d <memcpy>
  4067a8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4067ac:	49 8b 3c 24          	mov    (%r12),%rdi
  4067b0:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  4067b5:	48 01 d7             	add    %rdx,%rdi
  4067b8:	49 89 3c 24          	mov    %rdi,(%r12)
  4067bc:	eb 82                	jmp    406740 <sn_write+0x50>
  4067be:	66 90                	xchg   %ax,%ax

00000000004067c0 <vsnprintf>:
  4067c0:	f3 0f 1e fa          	endbr64
  4067c4:	55                   	push   %rbp
  4067c5:	49 89 c9             	mov    %rcx,%r9
  4067c8:	49 89 d0             	mov    %rdx,%r8
  4067cb:	48 89 e5             	mov    %rsp,%rbp
  4067ce:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  4067d5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4067dc:	00 00 
  4067de:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4067e2:	31 c0                	xor    %eax,%eax
  4067e4:	48 85 f6             	test   %rsi,%rsi
  4067e7:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  4067eb:	0f 95 c1             	setne  %cl
  4067ee:	48 0f 45 d7          	cmovne %rdi,%rdx
  4067f2:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  4067f9:	0f b6 c9             	movzbl %cl,%ecx
  4067fc:	48 29 ce             	sub    %rcx,%rsi
  4067ff:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406804:	c6 02 00             	movb   $0x0,(%rdx)
  406807:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40680e:	4c 89 ca             	mov    %r9,%rdx
  406811:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406818:	4c 89 c6             	mov    %r8,%rsi
  40681b:	f3 48 ab             	rep stos %rax,(%rdi)
  40681e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 4066f0 <sn_write>
  406825:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40682c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406833:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406837:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40683e:	48 8b 05 7b 25 00 00 	mov    0x257b(%rip),%rax        # 408dc0 <errmsgstr+0x780>
  406845:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406849:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  406850:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  406854:	e8 77 f0 ff ff       	call   4058d0 <vfprintf>
  406859:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40685d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406864:	00 00 
  406866:	75 02                	jne    40686a <vsnprintf+0xaa>
  406868:	c9                   	leave
  406869:	c3                   	ret
  40686a:	e8 91 be ff ff       	call   402700 <__stack_chk_fail>
  40686f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406876:	00 00 00 
  406879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406880 <memchr>:
  406880:	f3 0f 1e fa          	endbr64
  406884:	48 89 d0             	mov    %rdx,%rax
  406887:	40 0f b6 ce          	movzbl %sil,%ecx
  40688b:	40 f6 c7 07          	test   $0x7,%dil
  40688f:	75 1c                	jne    4068ad <memchr+0x2d>
  406891:	eb 2d                	jmp    4068c0 <memchr+0x40>
  406893:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406898:	0f b6 17             	movzbl (%rdi),%edx
  40689b:	39 ca                	cmp    %ecx,%edx
  40689d:	74 28                	je     4068c7 <memchr+0x47>
  40689f:	48 83 c7 01          	add    $0x1,%rdi
  4068a3:	48 83 e8 01          	sub    $0x1,%rax
  4068a7:	40 f6 c7 07          	test   $0x7,%dil
  4068ab:	74 13                	je     4068c0 <memchr+0x40>
  4068ad:	48 85 c0             	test   %rax,%rax
  4068b0:	75 e6                	jne    406898 <memchr+0x18>
  4068b2:	31 d2                	xor    %edx,%edx
  4068b4:	48 89 d0             	mov    %rdx,%rax
  4068b7:	c3                   	ret
  4068b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4068bf:	00 
  4068c0:	31 d2                	xor    %edx,%edx
  4068c2:	48 85 c0             	test   %rax,%rax
  4068c5:	74 ed                	je     4068b4 <memchr+0x34>
  4068c7:	0f b6 17             	movzbl (%rdi),%edx
  4068ca:	39 ca                	cmp    %ecx,%edx
  4068cc:	0f 84 ce 00 00 00    	je     4069a0 <memchr+0x120>
  4068d2:	48 83 f8 07          	cmp    $0x7,%rax
  4068d6:	0f 86 c4 00 00 00    	jbe    4069a0 <memchr+0x120>
  4068dc:	48 ba 01 01 01 01 01 	movabs $0x101010101010101,%rdx
  4068e3:	01 01 01 
  4068e6:	4c 63 c1             	movslq %ecx,%r8
  4068e9:	49 ba ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r10
  4068f0:	fe fe fe 
  4068f3:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  4068fa:	80 80 80 
  4068fd:	4c 0f af c2          	imul   %rdx,%r8
  406901:	48 89 fa             	mov    %rdi,%rdx
  406904:	eb 48                	jmp    40694e <memchr+0xce>
  406906:	0f 1f 00             	nopl   (%rax)
  406909:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406910:	00 00 00 00 
  406914:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40691b:	00 00 00 00 
  40691f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406926:	00 00 00 00 
  40692a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406931:	00 00 00 00 
  406935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40693c:	00 00 00 00 
  406940:	48 83 e8 08          	sub    $0x8,%rax
  406944:	48 83 c2 08          	add    $0x8,%rdx
  406948:	48 83 f8 07          	cmp    $0x7,%rax
  40694c:	76 5a                	jbe    4069a8 <memchr+0x128>
  40694e:	48 8b 32             	mov    (%rdx),%rsi
  406951:	4c 31 c6             	xor    %r8,%rsi
  406954:	4a 8d 3c 16          	lea    (%rsi,%r10,1),%rdi
  406958:	48 f7 d6             	not    %rsi
  40695b:	48 21 fe             	and    %rdi,%rsi
  40695e:	4c 85 ce             	test   %r9,%rsi
  406961:	74 dd                	je     406940 <memchr+0xc0>
  406963:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40696a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406971:	00 00 00 00 
  406975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40697c:	00 00 00 00 
  406980:	0f b6 32             	movzbl (%rdx),%esi
  406983:	39 ce                	cmp    %ecx,%esi
  406985:	0f 84 29 ff ff ff    	je     4068b4 <memchr+0x34>
  40698b:	48 83 c2 01          	add    $0x1,%rdx
  40698f:	48 83 e8 01          	sub    $0x1,%rax
  406993:	75 eb                	jne    406980 <memchr+0x100>
  406995:	e9 18 ff ff ff       	jmp    4068b2 <memchr+0x32>
  40699a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4069a0:	48 89 fa             	mov    %rdi,%rdx
  4069a3:	eb db                	jmp    406980 <memchr+0x100>
  4069a5:	0f 1f 00             	nopl   (%rax)
  4069a8:	48 85 c0             	test   %rax,%rax
  4069ab:	75 d3                	jne    406980 <memchr+0x100>
  4069ad:	e9 00 ff ff ff       	jmp    4068b2 <memchr+0x32>
  4069b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4069b9:	00 00 00 
  4069bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004069c0 <__stpcpy>:
  4069c0:	f3 0f 1e fa          	endbr64
  4069c4:	48 89 f9             	mov    %rdi,%rcx
  4069c7:	48 89 f8             	mov    %rdi,%rax
  4069ca:	48 89 f2             	mov    %rsi,%rdx
  4069cd:	48 31 f1             	xor    %rsi,%rcx
  4069d0:	83 e1 07             	and    $0x7,%ecx
  4069d3:	74 5c                	je     406a31 <__stpcpy+0x71>
  4069d5:	0f b6 0a             	movzbl (%rdx),%ecx
  4069d8:	88 08                	mov    %cl,(%rax)
  4069da:	84 c9                	test   %cl,%cl
  4069dc:	0f 84 c6 00 00 00    	je     406aa8 <__stpcpy+0xe8>
  4069e2:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4069e9:	00 
  4069ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069f1:	00 00 00 00 
  4069f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4069fc:	00 00 00 00 
  406a00:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
  406a04:	48 83 c2 01          	add    $0x1,%rdx
  406a08:	48 83 c0 01          	add    $0x1,%rax
  406a0c:	88 08                	mov    %cl,(%rax)
  406a0e:	84 c9                	test   %cl,%cl
  406a10:	75 ee                	jne    406a00 <__stpcpy+0x40>
  406a12:	c3                   	ret
  406a13:	66 90                	xchg   %ax,%ax
  406a15:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a1c:	00 00 00 00 
  406a20:	0f b6 0a             	movzbl (%rdx),%ecx
  406a23:	88 08                	mov    %cl,(%rax)
  406a25:	84 c9                	test   %cl,%cl
  406a27:	74 e9                	je     406a12 <__stpcpy+0x52>
  406a29:	48 83 c2 01          	add    $0x1,%rdx
  406a2d:	48 83 c0 01          	add    $0x1,%rax
  406a31:	f6 c2 07             	test   $0x7,%dl
  406a34:	75 ea                	jne    406a20 <__stpcpy+0x60>
  406a36:	49 b8 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%r8
  406a3d:	fe fe fe 
  406a40:	48 8b 0a             	mov    (%rdx),%rcx
  406a43:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
  406a4a:	80 80 80 
  406a4d:	48 89 cf             	mov    %rcx,%rdi
  406a50:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406a54:	48 f7 d7             	not    %rdi
  406a57:	48 21 fe             	and    %rdi,%rsi
  406a5a:	4c 85 ce             	test   %r9,%rsi
  406a5d:	0f 85 72 ff ff ff    	jne    4069d5 <__stpcpy+0x15>
  406a63:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a6a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a71:	00 00 00 00 
  406a75:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406a7c:	00 00 00 00 
  406a80:	48 83 c2 08          	add    $0x8,%rdx
  406a84:	48 89 08             	mov    %rcx,(%rax)
  406a87:	48 83 c0 08          	add    $0x8,%rax
  406a8b:	48 8b 0a             	mov    (%rdx),%rcx
  406a8e:	48 89 cf             	mov    %rcx,%rdi
  406a91:	4a 8d 34 01          	lea    (%rcx,%r8,1),%rsi
  406a95:	48 f7 d7             	not    %rdi
  406a98:	48 21 fe             	and    %rdi,%rsi
  406a9b:	4c 85 ce             	test   %r9,%rsi
  406a9e:	74 e0                	je     406a80 <__stpcpy+0xc0>
  406aa0:	e9 30 ff ff ff       	jmp    4069d5 <__stpcpy+0x15>
  406aa5:	0f 1f 00             	nopl   (%rax)
  406aa8:	c3                   	ret
  406aa9:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406ab0:	00 00 00 
  406ab3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406aba:	00 00 00 
  406abd:	0f 1f 00             	nopl   (%rax)

0000000000406ac0 <strlen>:
  406ac0:	f3 0f 1e fa          	endbr64
  406ac4:	49 89 f8             	mov    %rdi,%r8
  406ac7:	48 89 f8             	mov    %rdi,%rax
  406aca:	40 f6 c7 07          	test   $0x7,%dil
  406ace:	75 18                	jne    406ae8 <strlen+0x28>
  406ad0:	eb 26                	jmp    406af8 <strlen+0x38>
  406ad2:	0f 1f 00             	nopl   (%rax)
  406ad5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  406adc:	00 00 00 00 
  406ae0:	48 83 c0 01          	add    $0x1,%rax
  406ae4:	a8 07                	test   $0x7,%al
  406ae6:	74 10                	je     406af8 <strlen+0x38>
  406ae8:	80 38 00             	cmpb   $0x0,(%rax)
  406aeb:	75 f3                	jne    406ae0 <strlen+0x20>
  406aed:	4c 29 c0             	sub    %r8,%rax
  406af0:	c3                   	ret
  406af1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406af8:	48 bf ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rdi
  406aff:	fe fe fe 
  406b02:	48 8b 10             	mov    (%rax),%rdx
  406b05:	48 be 80 80 80 80 80 	movabs $0x8080808080808080,%rsi
  406b0c:	80 80 80 
  406b0f:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406b13:	48 f7 d2             	not    %rdx
  406b16:	48 21 ca             	and    %rcx,%rdx
  406b19:	48 85 f2             	test   %rsi,%rdx
  406b1c:	75 26                	jne    406b44 <strlen+0x84>
  406b1e:	66 90                	xchg   %ax,%ax
  406b20:	48 8b 50 08          	mov    0x8(%rax),%rdx
  406b24:	48 83 c0 08          	add    $0x8,%rax
  406b28:	48 8d 0c 3a          	lea    (%rdx,%rdi,1),%rcx
  406b2c:	48 f7 d2             	not    %rdx
  406b2f:	48 21 ca             	and    %rcx,%rdx
  406b32:	48 85 f2             	test   %rsi,%rdx
  406b35:	74 e9                	je     406b20 <strlen+0x60>
  406b37:	eb 0b                	jmp    406b44 <strlen+0x84>
  406b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b40:	48 83 c0 01          	add    $0x1,%rax
  406b44:	80 38 00             	cmpb   $0x0,(%rax)
  406b47:	75 f7                	jne    406b40 <strlen+0x80>
  406b49:	4c 29 c0             	sub    %r8,%rax
  406b4c:	c3                   	ret

0000000000406b4d <__set_thread_area>:
  406b4d:	48 89 fe             	mov    %rdi,%rsi
  406b50:	bf 02 10 00 00       	mov    $0x1002,%edi
  406b55:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406b5a:	0f 05                	syscall
  406b5c:	c3                   	ret
  406b5d:	0f 1f 00             	nopl   (%rax)

0000000000406b60 <__lseek>:
  406b60:	f3 0f 1e fa          	endbr64
  406b64:	48 63 ff             	movslq %edi,%rdi
  406b67:	48 63 d2             	movslq %edx,%rdx
  406b6a:	b8 08 00 00 00       	mov    $0x8,%eax
  406b6f:	0f 05                	syscall
  406b71:	48 89 c7             	mov    %rax,%rdi
  406b74:	e9 07 00 00 00       	jmp    406b80 <__syscall_ret>
  406b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406b80 <__syscall_ret>:
  406b80:	f3 0f 1e fa          	endbr64
  406b84:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406b8b:	77 0b                	ja     406b98 <__syscall_ret+0x18>
  406b8d:	48 89 f8             	mov    %rdi,%rax
  406b90:	c3                   	ret
  406b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b98:	55                   	push   %rbp
  406b99:	48 89 e5             	mov    %rsp,%rbp
  406b9c:	53                   	push   %rbx
  406b9d:	48 89 fb             	mov    %rdi,%rbx
  406ba0:	48 83 ec 08          	sub    $0x8,%rsp
  406ba4:	e8 27 f4 ff ff       	call   405fd0 <__errno_location>
  406ba9:	89 df                	mov    %ebx,%edi
  406bab:	f7 df                	neg    %edi
  406bad:	89 38                	mov    %edi,(%rax)
  406baf:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406bb6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406bba:	c9                   	leave
  406bbb:	c3                   	ret
  406bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406bc0 <wcrtomb>:
  406bc0:	f3 0f 1e fa          	endbr64
  406bc4:	48 85 ff             	test   %rdi,%rdi
  406bc7:	0f 84 d6 00 00 00    	je     406ca3 <wcrtomb+0xe3>
  406bcd:	83 fe 7f             	cmp    $0x7f,%esi
  406bd0:	0f 86 ca 00 00 00    	jbe    406ca0 <wcrtomb+0xe0>
  406bd6:	55                   	push   %rbp
  406bd7:	89 f0                	mov    %esi,%eax
  406bd9:	48 89 f9             	mov    %rdi,%rcx
  406bdc:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406be3:	00 00 
  406be5:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406bec:	48 89 e5             	mov    %rsp,%rbp
  406bef:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406bf3:	74 53                	je     406c48 <wcrtomb+0x88>
  406bf5:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406bfb:	0f 86 af 00 00 00    	jbe    406cb0 <wcrtomb+0xf0>
  406c01:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406c07:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406c0d:	0f 86 bd 00 00 00    	jbe    406cd0 <wcrtomb+0x110>
  406c13:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406c19:	0f 86 b1 00 00 00    	jbe    406cd0 <wcrtomb+0x110>
  406c1f:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406c25:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406c2b:	76 33                	jbe    406c60 <wcrtomb+0xa0>
  406c2d:	e8 9e f3 ff ff       	call   405fd0 <__errno_location>
  406c32:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406c38:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406c3f:	5d                   	pop    %rbp
  406c40:	c3                   	ret
  406c41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c48:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406c4d:	83 f8 7f             	cmp    $0x7f,%eax
  406c50:	77 db                	ja     406c2d <wcrtomb+0x6d>
  406c52:	40 88 37             	mov    %sil,(%rdi)
  406c55:	b8 01 00 00 00       	mov    $0x1,%eax
  406c5a:	5d                   	pop    %rbp
  406c5b:	c3                   	ret
  406c5c:	0f 1f 40 00          	nopl   0x0(%rax)
  406c60:	89 c7                	mov    %eax,%edi
  406c62:	83 e0 3f             	and    $0x3f,%eax
  406c65:	89 f2                	mov    %esi,%edx
  406c67:	c1 fe 0c             	sar    $0xc,%esi
  406c6a:	c1 ff 06             	sar    $0x6,%edi
  406c6d:	c1 e0 08             	shl    $0x8,%eax
  406c70:	83 e6 3f             	and    $0x3f,%esi
  406c73:	83 e7 3f             	and    $0x3f,%edi
  406c76:	c1 fa 12             	sar    $0x12,%edx
  406c79:	09 f8                	or     %edi,%eax
  406c7b:	0f b6 d2             	movzbl %dl,%edx
  406c7e:	c1 e0 08             	shl    $0x8,%eax
  406c81:	09 f0                	or     %esi,%eax
  406c83:	8b 35 67 18 00 00    	mov    0x1867(%rip),%esi        # 4084f0 <states+0x1f0>
  406c89:	c1 e0 08             	shl    $0x8,%eax
  406c8c:	09 d0                	or     %edx,%eax
  406c8e:	09 f0                	or     %esi,%eax
  406c90:	89 01                	mov    %eax,(%rcx)
  406c92:	b8 04 00 00 00       	mov    $0x4,%eax
  406c97:	5d                   	pop    %rbp
  406c98:	c3                   	ret
  406c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ca0:	40 88 37             	mov    %sil,(%rdi)
  406ca3:	b8 01 00 00 00       	mov    $0x1,%eax
  406ca8:	c3                   	ret
  406ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406cb0:	89 f2                	mov    %esi,%edx
  406cb2:	83 e0 3f             	and    $0x3f,%eax
  406cb5:	c1 fa 06             	sar    $0x6,%edx
  406cb8:	83 c8 80             	or     $0xffffff80,%eax
  406cbb:	83 ca c0             	or     $0xffffffc0,%edx
  406cbe:	88 47 01             	mov    %al,0x1(%rdi)
  406cc1:	b8 02 00 00 00       	mov    $0x2,%eax
  406cc6:	88 17                	mov    %dl,(%rdi)
  406cc8:	5d                   	pop    %rbp
  406cc9:	c3                   	ret
  406cca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406cd0:	89 c2                	mov    %eax,%edx
  406cd2:	c1 fa 0c             	sar    $0xc,%edx
  406cd5:	83 ca e0             	or     $0xffffffe0,%edx
  406cd8:	88 11                	mov    %dl,(%rcx)
  406cda:	89 c2                	mov    %eax,%edx
  406cdc:	83 e0 3f             	and    $0x3f,%eax
  406cdf:	c1 fa 06             	sar    $0x6,%edx
  406ce2:	83 c8 80             	or     $0xffffff80,%eax
  406ce5:	83 e2 3f             	and    $0x3f,%edx
  406ce8:	88 41 02             	mov    %al,0x2(%rcx)
  406ceb:	b8 03 00 00 00       	mov    $0x3,%eax
  406cf0:	83 ca 80             	or     $0xffffff80,%edx
  406cf3:	88 51 01             	mov    %dl,0x1(%rcx)
  406cf6:	5d                   	pop    %rbp
  406cf7:	c3                   	ret
  406cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406cff:	00 

0000000000406d00 <close_file>:
  406d00:	48 85 ff             	test   %rdi,%rdi
  406d03:	74 6b                	je     406d70 <close_file+0x70>
  406d05:	55                   	push   %rbp
  406d06:	48 89 e5             	mov    %rsp,%rbp
  406d09:	53                   	push   %rbx
  406d0a:	48 89 fb             	mov    %rdi,%rbx
  406d0d:	48 83 ec 08          	sub    $0x8,%rsp
  406d11:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406d17:	85 c0                	test   %eax,%eax
  406d19:	79 3d                	jns    406d58 <close_file+0x58>
  406d1b:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406d1f:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406d23:	74 0a                	je     406d2f <close_file+0x2f>
  406d25:	31 d2                	xor    %edx,%edx
  406d27:	31 f6                	xor    %esi,%esi
  406d29:	48 89 df             	mov    %rbx,%rdi
  406d2c:	ff 53 48             	call   *0x48(%rbx)
  406d2f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406d33:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406d37:	48 39 c6             	cmp    %rax,%rsi
  406d3a:	74 24                	je     406d60 <close_file+0x60>
  406d3c:	48 29 c6             	sub    %rax,%rsi
  406d3f:	48 89 df             	mov    %rbx,%rdi
  406d42:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406d46:	ba 01 00 00 00       	mov    $0x1,%edx
  406d4b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d4f:	c9                   	leave
  406d50:	ff e0                	jmp    *%rax
  406d52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d58:	e8 a3 f4 ff ff       	call   406200 <__lockfile>
  406d5d:	eb bc                	jmp    406d1b <close_file+0x1b>
  406d5f:	90                   	nop
  406d60:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d64:	c9                   	leave
  406d65:	c3                   	ret
  406d66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d6d:	00 00 00 
  406d70:	c3                   	ret
  406d71:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d78:	00 00 00 
  406d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406d80 <__stdio_exit>:
  406d80:	f3 0f 1e fa          	endbr64
  406d84:	55                   	push   %rbp
  406d85:	48 89 e5             	mov    %rsp,%rbp
  406d88:	53                   	push   %rbx
  406d89:	48 83 ec 08          	sub    $0x8,%rsp
  406d8d:	e8 7e 01 00 00       	call   406f10 <__ofl_lock>
  406d92:	48 8b 18             	mov    (%rax),%rbx
  406d95:	48 85 db             	test   %rbx,%rbx
  406d98:	74 17                	je     406db1 <__stdio_exit+0x31>
  406d9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406da0:	48 89 df             	mov    %rbx,%rdi
  406da3:	e8 58 ff ff ff       	call   406d00 <close_file>
  406da8:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406dac:	48 85 db             	test   %rbx,%rbx
  406daf:	75 ef                	jne    406da0 <__stdio_exit+0x20>
  406db1:	48 8b 3d e0 49 00 00 	mov    0x49e0(%rip),%rdi        # 40b798 <__stderr_used>
  406db8:	e8 43 ff ff ff       	call   406d00 <close_file>
  406dbd:	48 8b 3d 44 42 00 00 	mov    0x4244(%rip),%rdi        # 40b008 <__stdout_used>
  406dc4:	e8 37 ff ff ff       	call   406d00 <close_file>
  406dc9:	48 8b 3d c8 49 00 00 	mov    0x49c8(%rip),%rdi        # 40b798 <__stderr_used>
  406dd0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406dd4:	c9                   	leave
  406dd5:	e9 26 ff ff ff       	jmp    406d00 <close_file>
  406dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406de0 <__stdio_write>:
  406de0:	f3 0f 1e fa          	endbr64
  406de4:	55                   	push   %rbp
  406de5:	48 89 e5             	mov    %rsp,%rbp
  406de8:	41 57                	push   %r15
  406dea:	41 56                	push   %r14
  406dec:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406df0:	41 55                	push   %r13
  406df2:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406df8:	41 54                	push   %r12
  406dfa:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406e00:	53                   	push   %rbx
  406e01:	48 89 fb             	mov    %rdi,%rbx
  406e04:	48 83 ec 48          	sub    $0x48,%rsp
  406e08:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406e0c:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406e10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406e17:	00 00 
  406e19:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406e1d:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406e21:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406e25:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406e29:	49 29 c0             	sub    %rax,%r8
  406e2c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406e30:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406e34:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406e38:	eb 37                	jmp    406e71 <__stdio_write+0x91>
  406e3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e40:	48 85 c0             	test   %rax,%rax
  406e43:	0f 88 8f 00 00 00    	js     406ed8 <__stdio_write+0xf8>
  406e49:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406e4d:	49 29 c6             	sub    %rax,%r14
  406e50:	48 39 c2             	cmp    %rax,%rdx
  406e53:	73 12                	jae    406e67 <__stdio_write+0x87>
  406e55:	41 83 ed 01          	sub    $0x1,%r13d
  406e59:	48 29 d0             	sub    %rdx,%rax
  406e5c:	49 83 c7 10          	add    $0x10,%r15
  406e60:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406e64:	4d 63 e5             	movslq %r13d,%r12
  406e67:	48 29 c2             	sub    %rax,%rdx
  406e6a:	49 01 07             	add    %rax,(%r15)
  406e6d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406e71:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406e75:	b8 14 00 00 00       	mov    $0x14,%eax
  406e7a:	4c 89 fe             	mov    %r15,%rsi
  406e7d:	4c 89 e2             	mov    %r12,%rdx
  406e80:	0f 05                	syscall
  406e82:	48 89 c7             	mov    %rax,%rdi
  406e85:	e8 f6 fc ff ff       	call   406b80 <__syscall_ret>
  406e8a:	49 39 c6             	cmp    %rax,%r14
  406e8d:	75 b1                	jne    406e40 <__stdio_write+0x60>
  406e8f:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406e93:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406e97:	48 01 c1             	add    %rax,%rcx
  406e9a:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406e9f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406ea3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406ea7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406eac:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406eb0:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406eb4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406eb8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406ebf:	00 00 
  406ec1:	75 3a                	jne    406efd <__stdio_write+0x11d>
  406ec3:	48 83 c4 48          	add    $0x48,%rsp
  406ec7:	5b                   	pop    %rbx
  406ec8:	41 5c                	pop    %r12
  406eca:	41 5d                	pop    %r13
  406ecc:	41 5e                	pop    %r14
  406ece:	41 5f                	pop    %r15
  406ed0:	5d                   	pop    %rbp
  406ed1:	c3                   	ret
  406ed2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406ed8:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406edc:	83 0b 20             	orl    $0x20,(%rbx)
  406edf:	31 c0                	xor    %eax,%eax
  406ee1:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406ee8:	00 
  406ee9:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406eed:	41 83 fd 02          	cmp    $0x2,%r13d
  406ef1:	74 c1                	je     406eb4 <__stdio_write+0xd4>
  406ef3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406ef7:	49 2b 47 08          	sub    0x8(%r15),%rax
  406efb:	eb b7                	jmp    406eb4 <__stdio_write+0xd4>
  406efd:	e8 fe b7 ff ff       	call   402700 <__stack_chk_fail>
  406f02:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406f09:	00 00 00 
  406f0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406f10 <__ofl_lock>:
  406f10:	f3 0f 1e fa          	endbr64
  406f14:	55                   	push   %rbp
  406f15:	48 8d 3d 84 48 00 00 	lea    0x4884(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f1c:	48 89 e5             	mov    %rsp,%rbp
  406f1f:	e8 1c 00 00 00       	call   406f40 <__lock>
  406f24:	48 8d 05 7d 48 00 00 	lea    0x487d(%rip),%rax        # 40b7a8 <ofl_head>
  406f2b:	5d                   	pop    %rbp
  406f2c:	c3                   	ret
  406f2d:	0f 1f 00             	nopl   (%rax)

0000000000406f30 <__ofl_unlock>:
  406f30:	f3 0f 1e fa          	endbr64
  406f34:	48 8d 3d 65 48 00 00 	lea    0x4865(%rip),%rdi        # 40b7a0 <ofl_lock>
  406f3b:	e9 e0 00 00 00       	jmp    407020 <__unlock>

0000000000406f40 <__lock>:
  406f40:	f3 0f 1e fa          	endbr64
  406f44:	0f be 0d 18 42 00 00 	movsbl 0x4218(%rip),%ecx        # 40b163 <__libc+0x3>
  406f4b:	85 c9                	test   %ecx,%ecx
  406f4d:	74 51                	je     406fa0 <__lock+0x60>
  406f4f:	31 c0                	xor    %eax,%eax
  406f51:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406f56:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406f5a:	89 c2                	mov    %eax,%edx
  406f5c:	85 c9                	test   %ecx,%ecx
  406f5e:	78 48                	js     406fa8 <__lock+0x68>
  406f60:	85 c0                	test   %eax,%eax
  406f62:	74 3c                	je     406fa0 <__lock+0x60>
  406f64:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406f6a:	eb 1e                	jmp    406f8a <__lock+0x4a>
  406f6c:	0f 1f 40 00          	nopl   0x0(%rax)
  406f70:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406f76:	89 d1                	mov    %edx,%ecx
  406f78:	89 c8                	mov    %ecx,%eax
  406f7a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406f7e:	89 c2                	mov    %eax,%edx
  406f80:	39 c1                	cmp    %eax,%ecx
  406f82:	74 1c                	je     406fa0 <__lock+0x60>
  406f84:	41 83 e8 01          	sub    $0x1,%r8d
  406f88:	74 2e                	je     406fb8 <__lock+0x78>
  406f8a:	85 d2                	test   %edx,%edx
  406f8c:	79 e2                	jns    406f70 <__lock+0x30>
  406f8e:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406f94:	89 d6                	mov    %edx,%esi
  406f96:	eb e0                	jmp    406f78 <__lock+0x38>
  406f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406f9f:	00 
  406fa0:	c3                   	ret
  406fa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406fa8:	c6 05 b4 41 00 00 00 	movb   $0x0,0x41b4(%rip)        # 40b163 <__libc+0x3>
  406faf:	85 c0                	test   %eax,%eax
  406fb1:	75 b1                	jne    406f64 <__lock+0x24>
  406fb3:	c3                   	ret
  406fb4:	0f 1f 40 00          	nopl   0x0(%rax)
  406fb8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406fbe:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406fc3:	41 83 c0 01          	add    $0x1,%r8d
  406fc7:	eb 1c                	jmp    406fe5 <__lock+0xa5>
  406fc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406fd0:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406fd7:	89 d0                	mov    %edx,%eax
  406fd9:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406fde:	41 89 c0             	mov    %eax,%r8d
  406fe1:	39 c2                	cmp    %eax,%edx
  406fe3:	74 bb                	je     406fa0 <__lock+0x60>
  406fe5:	44 89 c2             	mov    %r8d,%edx
  406fe8:	45 85 c0             	test   %r8d,%r8d
  406feb:	79 e3                	jns    406fd0 <__lock+0x90>
  406fed:	49 63 d0             	movslq %r8d,%rdx
  406ff0:	45 31 d2             	xor    %r10d,%r10d
  406ff3:	b8 ca 00 00 00       	mov    $0xca,%eax
  406ff8:	be 80 00 00 00       	mov    $0x80,%esi
  406ffd:	0f 05                	syscall
  406fff:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407003:	75 09                	jne    40700e <__lock+0xce>
  407005:	31 f6                	xor    %esi,%esi
  407007:	b8 ca 00 00 00       	mov    $0xca,%eax
  40700c:	0f 05                	syscall
  40700e:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  407015:	eb b9                	jmp    406fd0 <__lock+0x90>
  407017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40701e:	00 00 

0000000000407020 <__unlock>:
  407020:	f3 0f 1e fa          	endbr64
  407024:	8b 07                	mov    (%rdi),%eax
  407026:	85 c0                	test   %eax,%eax
  407028:	78 06                	js     407030 <__unlock+0x10>
  40702a:	c3                   	ret
  40702b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407030:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  407035:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  407039:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  40703e:	74 ea                	je     40702a <__unlock+0xa>
  407040:	be 81 00 00 00       	mov    $0x81,%esi
  407045:	b8 ca 00 00 00       	mov    $0xca,%eax
  40704a:	ba 01 00 00 00       	mov    $0x1,%edx
  40704f:	0f 05                	syscall
  407051:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  407055:	75 d3                	jne    40702a <__unlock+0xa>
  407057:	b8 ca 00 00 00       	mov    $0xca,%eax
  40705c:	be 01 00 00 00       	mov    $0x1,%esi
  407061:	0f 05                	syscall
  407063:	c3                   	ret

Disassembly of section .fini:

0000000000407064 <_fini>:
  407064:	50                   	push   %rax
  407065:	58                   	pop    %rax
  407066:	c3                   	ret
