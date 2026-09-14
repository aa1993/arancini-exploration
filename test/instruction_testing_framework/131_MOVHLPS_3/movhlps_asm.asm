
test_movhlps_asm:     Dateiformat elf64-x86-64


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
  40104f:	e8 dc 18 00 00       	call   402930 <__funcs_on_exit>
  401054:	e8 e7 18 00 00       	call   402940 <__libc_exit_fini>
  401059:	31 c0                	xor    %eax,%eax
  40105b:	e8 c0 5c 00 00       	call   406d20 <__stdio_exit>
  401060:	89 df                	mov    %ebx,%edi
  401062:	e8 19 51 00 00       	call   406180 <_Exit>

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
  40108a:	49 c7 c0 04 70 40 00 	mov    $0x407004,%r8
  401091:	45 31 c9             	xor    %r9d,%r9d
  401094:	48 c7 c1 00 10 40 00 	mov    $0x401000,%rcx
  40109b:	48 c7 c7 53 23 40 00 	mov    $0x402353,%rdi
  4010a2:	e9 b9 17 00 00       	jmp    402860 <__libc_start_main>
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
  4017ff:	48 8d 0d fa 67 00 00 	lea    0x67fa(%rip),%rcx        # 408000 <_fini+0xffc>
  401806:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  40180d:	66 0f 28 da          	movapd %xmm2,%xmm3
  401811:	66 0f 28 d1          	movapd %xmm1,%xmm2
  401815:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401819:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  40181e:	48 89 ce             	mov    %rcx,%rsi
  401821:	48 89 c7             	mov    %rax,%rdi
  401824:	b8 04 00 00 00       	mov    $0x4,%eax
  401829:	e8 22 12 00 00       	call   402a50 <sprintf>
    strcpy(dest, res);
  40182e:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401835:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  40183c:	48 89 d6             	mov    %rdx,%rsi
  40183f:	48 89 c7             	mov    %rax,%rdi
  401842:	e8 19 44 00 00       	call   405c60 <strcpy>
}
  401847:	90                   	nop
  401848:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40184c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401853:	00 00 
  401855:	74 05                	je     40185c <to_string_f32+0xe2>
  401857:	e8 c4 10 00 00       	call   402920 <__stack_chk_fail>
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
  4018a3:	48 8d 0d 77 67 00 00 	lea    0x6777(%rip),%rcx        # 408021 <_fini+0x101d>
  4018aa:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4018b1:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4018b5:	66 48 0f 6e c2       	movq   %rdx,%xmm0
  4018ba:	48 89 ce             	mov    %rcx,%rsi
  4018bd:	48 89 c7             	mov    %rax,%rdi
  4018c0:	b8 02 00 00 00       	mov    $0x2,%eax
  4018c5:	e8 86 11 00 00       	call   402a50 <sprintf>
    strcpy(dest, res);
  4018ca:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4018d1:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4018d8:	48 89 d6             	mov    %rdx,%rsi
  4018db:	48 89 c7             	mov    %rax,%rdi
  4018de:	e8 7d 43 00 00       	call   405c60 <strcpy>
}
  4018e3:	90                   	nop
  4018e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018ef:	00 00 
  4018f1:	74 05                	je     4018f8 <to_string_f64+0x9a>
  4018f3:	e8 28 10 00 00       	call   402920 <__stack_chk_fail>
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
  401a5b:	48 8d 35 ce 65 00 00 	lea    0x65ce(%rip),%rsi        # 408030 <_fini+0x102c>
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
  401a9f:	e8 ac 0f 00 00       	call   402a50 <sprintf>
  401aa4:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401aa8:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401aaf:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ab6:	48 89 d6             	mov    %rdx,%rsi
  401ab9:	48 89 c7             	mov    %rax,%rdi
  401abc:	e8 9f 41 00 00       	call   405c60 <strcpy>
}
  401ac1:	90                   	nop
  401ac2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ac6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401acd:	00 00 
  401acf:	74 05                	je     401ad6 <to_string_i8+0x1dc>
  401ad1:	e8 4a 0e 00 00       	call   402920 <__stack_chk_fail>
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
  401b9a:	48 8d 35 d7 64 00 00 	lea    0x64d7(%rip),%rsi        # 408078 <_fini+0x1074>
  401ba1:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401ba8:	41 52                	push   %r10
  401baa:	41 51                	push   %r9
  401bac:	41 50                	push   %r8
  401bae:	57                   	push   %rdi
  401baf:	41 89 d9             	mov    %ebx,%r9d
  401bb2:	45 89 d8             	mov    %r11d,%r8d
  401bb5:	48 89 c7             	mov    %rax,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 8e 0e 00 00       	call   402a50 <sprintf>
  401bc2:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  401bc6:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401bcd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  401bd4:	48 89 d6             	mov    %rdx,%rsi
  401bd7:	48 89 c7             	mov    %rax,%rdi
  401bda:	e8 81 40 00 00       	call   405c60 <strcpy>
}
  401bdf:	90                   	nop
  401be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401be4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401beb:	00 00 
  401bed:	74 05                	je     401bf4 <to_string_i16+0x10f>
  401bef:	e8 2c 0d 00 00       	call   402920 <__stack_chk_fail>
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
  401c57:	48 8d 35 3b 64 00 00 	lea    0x643b(%rip),%rsi        # 408099 <_fini+0x1095>
  401c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401c65:	45 89 c1             	mov    %r8d,%r9d
  401c68:	41 89 f8             	mov    %edi,%r8d
  401c6b:	48 89 c7             	mov    %rax,%rdi
  401c6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c73:	e8 d8 0d 00 00       	call   402a50 <sprintf>
    strcpy(dest, res);
  401c78:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401c7f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401c86:	48 89 d6             	mov    %rdx,%rsi
  401c89:	48 89 c7             	mov    %rax,%rdi
  401c8c:	e8 cf 3f 00 00       	call   405c60 <strcpy>
}
  401c91:	90                   	nop
  401c92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c96:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c9d:	00 00 
  401c9f:	74 05                	je     401ca6 <to_string_i32+0xac>
  401ca1:	e8 7a 0c 00 00       	call   402920 <__stack_chk_fail>
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
  401cec:	48 8d 35 b7 63 00 00 	lea    0x63b7(%rip),%rsi        # 4080aa <_fini+0x10a6>
  401cf3:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401cfa:	48 89 c7             	mov    %rax,%rdi
  401cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401d02:	e8 49 0d 00 00       	call   402a50 <sprintf>
    strcpy(dest, res);
  401d07:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401d0e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  401d15:	48 89 d6             	mov    %rdx,%rsi
  401d18:	48 89 c7             	mov    %rax,%rdi
  401d1b:	e8 40 3f 00 00       	call   405c60 <strcpy>
}
  401d20:	90                   	nop
  401d21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d25:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401d2c:	00 00 
  401d2e:	74 05                	je     401d35 <to_string_i64+0x8d>
  401d30:	e8 eb 0b 00 00       	call   402920 <__stack_chk_fail>
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
  401e98:	48 8d 35 91 61 00 00 	lea    0x6191(%rip),%rsi        # 408030 <_fini+0x102c>
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
  401edc:	e8 6f 0b 00 00       	call   402a50 <sprintf>
  401ee1:	48 83 c4 60          	add    $0x60,%rsp
    strcpy(dest, res);
  401ee5:	48 8d 95 c0 fe ff ff 	lea    -0x140(%rbp),%rdx
  401eec:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  401ef3:	48 89 d6             	mov    %rdx,%rsi
  401ef6:	48 89 c7             	mov    %rax,%rdi
  401ef9:	e8 62 3d 00 00       	call   405c60 <strcpy>
}
  401efe:	90                   	nop
  401eff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401f03:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401f0a:	00 00 
  401f0c:	74 05                	je     401f13 <to_string_u8+0x1dc>
  401f0e:	e8 0d 0a 00 00       	call   402920 <__stack_chk_fail>
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
  401fd7:	48 8d 35 9a 60 00 00 	lea    0x609a(%rip),%rsi        # 408078 <_fini+0x1074>
  401fde:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401fe5:	41 52                	push   %r10
  401fe7:	41 51                	push   %r9
  401fe9:	41 50                	push   %r8
  401feb:	57                   	push   %rdi
  401fec:	41 89 d9             	mov    %ebx,%r9d
  401fef:	45 89 d8             	mov    %r11d,%r8d
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffa:	e8 51 0a 00 00       	call   402a50 <sprintf>
  401fff:	48 83 c4 20          	add    $0x20,%rsp
    strcpy(dest, res);
  402003:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40200a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  402011:	48 89 d6             	mov    %rdx,%rsi
  402014:	48 89 c7             	mov    %rax,%rdi
  402017:	e8 44 3c 00 00       	call   405c60 <strcpy>
}
  40201c:	90                   	nop
  40201d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402021:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402028:	00 00 
  40202a:	74 05                	je     402031 <to_string_u16+0x10f>
  40202c:	e8 ef 08 00 00       	call   402920 <__stack_chk_fail>
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
  402094:	48 8d 35 1a 60 00 00 	lea    0x601a(%rip),%rsi        # 4080b5 <_fini+0x10b1>
  40209b:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4020a2:	45 89 c1             	mov    %r8d,%r9d
  4020a5:	41 89 f8             	mov    %edi,%r8d
  4020a8:	48 89 c7             	mov    %rax,%rdi
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 9b 09 00 00       	call   402a50 <sprintf>
    strcpy(dest, res);
  4020b5:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4020bc:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  4020c3:	48 89 d6             	mov    %rdx,%rsi
  4020c6:	48 89 c7             	mov    %rax,%rdi
  4020c9:	e8 92 3b 00 00       	call   405c60 <strcpy>
}
  4020ce:	90                   	nop
  4020cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4020da:	00 00 
  4020dc:	74 05                	je     4020e3 <to_string_u32+0xac>
  4020de:	e8 3d 08 00 00       	call   402920 <__stack_chk_fail>
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
  402129:	48 8d 35 96 5f 00 00 	lea    0x5f96(%rip),%rsi        # 4080c6 <_fini+0x10c2>
  402130:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402137:	48 89 c7             	mov    %rax,%rdi
  40213a:	b8 00 00 00 00       	mov    $0x0,%eax
  40213f:	e8 0c 09 00 00       	call   402a50 <sprintf>
    strcpy(dest, res);
  402144:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40214b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402152:	48 89 d6             	mov    %rdx,%rsi
  402155:	48 89 c7             	mov    %rax,%rdi
  402158:	e8 03 3b 00 00       	call   405c60 <strcpy>
}
  40215d:	90                   	nop
  40215e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402162:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402169:	00 00 
  40216b:	74 05                	je     402172 <to_string_u64+0x8d>
  40216d:	e8 ae 07 00 00       	call   402920 <__stack_chk_fail>
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
  402202:	48 8d 35 cf 5e 00 00 	lea    0x5ecf(%rip),%rsi        # 4080d8 <_fini+0x10d4>
  402209:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402210:	41 50                	push   %r8
  402212:	57                   	push   %rdi
  402213:	4d 89 d0             	mov    %r10,%r8
  402216:	48 89 c7             	mov    %rax,%rdi
  402219:	b8 00 00 00 00       	mov    $0x0,%eax
  40221e:	e8 2d 08 00 00       	call   402a50 <sprintf>
  402223:	48 83 c4 10          	add    $0x10,%rsp
          );
    strcpy(dest, res);
  402227:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  40222e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  402235:	48 89 d6             	mov    %rdx,%rsi
  402238:	48 89 c7             	mov    %rax,%rdi
  40223b:	e8 20 3a 00 00       	call   405c60 <strcpy>
}
  402240:	90                   	nop
  402241:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402245:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40224c:	00 00 
  40224e:	74 05                	je     402255 <flags_to_string+0xe1>
  402250:	e8 cb 06 00 00       	call   402920 <__stack_chk_fail>
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
  4022f3:	48 8d 35 15 5e 00 00 	lea    0x5e15(%rip),%rsi        # 40810f <_fini+0x110b>
  4022fa:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  402301:	41 52                	push   %r10
  402303:	41 51                	push   %r9
  402305:	41 50                	push   %r8
  402307:	57                   	push   %rdi
  402308:	41 89 d9             	mov    %ebx,%r9d
  40230b:	45 89 d8             	mov    %r11d,%r8d
  40230e:	48 89 c7             	mov    %rax,%rdi
  402311:	b8 00 00 00 00       	mov    $0x0,%eax
  402316:	e8 35 07 00 00       	call   402a50 <sprintf>
  40231b:	48 83 c4 20          	add    $0x20,%rsp
          src>>0 & 1
          );
    strcpy(dest, res);
  40231f:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  402326:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  40232d:	48 89 d6             	mov    %rdx,%rsi
  402330:	48 89 c7             	mov    %rax,%rdi
  402333:	e8 28 39 00 00       	call   405c60 <strcpy>
}
  402338:	90                   	nop
  402339:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40233d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402344:	00 00 
  402346:	74 05                	je     40234d <imm8_to_string+0xf6>
  402348:	e8 d3 05 00 00       	call   402920 <__stack_chk_fail>
  40234d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402351:	c9                   	leave
  402352:	c3                   	ret

0000000000402353 <main>:
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "sse_service.h"
int main() {
  402353:	f3 0f 1e fa          	endbr64
  402357:	55                   	push   %rbp
  402358:	48 89 e5             	mov    %rsp,%rbp
  40235b:	48 81 ec 80 05 00 00 	sub    $0x580,%rsp
  402362:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402369:	00 00 
  40236b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40236f:	31 c0                	xor    %eax,%eax
    C_IN_TYPE in1[IN_LEN] = SRC1;
  402371:	f3 0f 10 05 eb 5d 00 	movss  0x5deb(%rip),%xmm0        # 408164 <_fini+0x1160>
  402378:	00 
  402379:	f3 0f 11 85 b0 fa ff 	movss  %xmm0,-0x550(%rbp)
  402380:	ff 
  402381:	f3 0f 10 05 df 5d 00 	movss  0x5ddf(%rip),%xmm0        # 408168 <_fini+0x1164>
  402388:	00 
  402389:	f3 0f 11 85 b4 fa ff 	movss  %xmm0,-0x54c(%rbp)
  402390:	ff 
  402391:	f3 0f 10 05 d3 5d 00 	movss  0x5dd3(%rip),%xmm0        # 40816c <_fini+0x1168>
  402398:	00 
  402399:	f3 0f 11 85 b8 fa ff 	movss  %xmm0,-0x548(%rbp)
  4023a0:	ff 
  4023a1:	f3 0f 10 05 c7 5d 00 	movss  0x5dc7(%rip),%xmm0        # 408170 <_fini+0x116c>
  4023a8:	00 
  4023a9:	f3 0f 11 85 bc fa ff 	movss  %xmm0,-0x544(%rbp)
  4023b0:	ff 
#ifdef SRC2
    C_IN_TYPE in2[IN_LEN] = SRC2;
  4023b1:	f3 0f 10 05 bb 5d 00 	movss  0x5dbb(%rip),%xmm0        # 408174 <_fini+0x1170>
  4023b8:	00 
  4023b9:	f3 0f 11 85 c0 fa ff 	movss  %xmm0,-0x540(%rbp)
  4023c0:	ff 
  4023c1:	f3 0f 10 05 af 5d 00 	movss  0x5daf(%rip),%xmm0        # 408178 <_fini+0x1174>
  4023c8:	00 
  4023c9:	f3 0f 11 85 c4 fa ff 	movss  %xmm0,-0x53c(%rbp)
  4023d0:	ff 
  4023d1:	f3 0f 10 05 a3 5d 00 	movss  0x5da3(%rip),%xmm0        # 40817c <_fini+0x1178>
  4023d8:	00 
  4023d9:	f3 0f 11 85 c8 fa ff 	movss  %xmm0,-0x538(%rbp)
  4023e0:	ff 
  4023e1:	f3 0f 10 05 97 5d 00 	movss  0x5d97(%rip),%xmm0        # 408180 <_fini+0x117c>
  4023e8:	00 
  4023e9:	f3 0f 11 85 cc fa ff 	movss  %xmm0,-0x534(%rbp)
  4023f0:	ff 
#endif
    C_OUT_TYPE con[OUT_LEN] = CON;
  4023f1:	f3 0f 10 05 83 5d 00 	movss  0x5d83(%rip),%xmm0        # 40817c <_fini+0x1178>
  4023f8:	00 
  4023f9:	f3 0f 11 85 d0 fa ff 	movss  %xmm0,-0x530(%rbp)
  402400:	ff 
  402401:	f3 0f 10 05 77 5d 00 	movss  0x5d77(%rip),%xmm0        # 408180 <_fini+0x117c>
  402408:	00 
  402409:	f3 0f 11 85 d4 fa ff 	movss  %xmm0,-0x52c(%rbp)
  402410:	ff 
  402411:	f3 0f 10 05 53 5d 00 	movss  0x5d53(%rip),%xmm0        # 40816c <_fini+0x1168>
  402418:	00 
  402419:	f3 0f 11 85 d8 fa ff 	movss  %xmm0,-0x528(%rbp)
  402420:	ff 
  402421:	f3 0f 10 05 47 5d 00 	movss  0x5d47(%rip),%xmm0        # 408170 <_fini+0x116c>
  402428:	00 
  402429:	f3 0f 11 85 dc fa ff 	movss  %xmm0,-0x524(%rbp)
  402430:	ff 
    C_OUT_TYPE out[OUT_LEN];
    long flags;

    SSE_TYPE v1;
    INSERT(&v1, in1);
  402431:	48 8d 95 b0 fa ff ff 	lea    -0x550(%rbp),%rdx
  402438:	48 8d 85 90 fa ff ff 	lea    -0x570(%rbp),%rax
  40243f:	48 89 d6             	mov    %rdx,%rsi
  402442:	48 89 c7             	mov    %rax,%rdi
  402445:	e8 1f ed ff ff       	call   401169 <insert_f32>
#ifdef SRC2
    SSE_TYPE v2;
    INSERT(&v2, in2);
  40244a:	48 8d 95 c0 fa ff ff 	lea    -0x540(%rbp),%rdx
  402451:	48 8d 85 a0 fa ff ff 	lea    -0x560(%rbp),%rax
  402458:	48 89 d6             	mov    %rdx,%rsi
  40245b:	48 89 c7             	mov    %rax,%rdi
  40245e:	e8 06 ed ff ff       	call   401169 <insert_f32>
       "popq %[flags]"
        : [v1] "+x"(v1),[flags] "=r" (flags)         // output
        : [v2] "x"(v2)      // input
    );
#else
    asm volatile (
  402463:	0f 28 8d a0 fa ff ff 	movaps -0x560(%rbp),%xmm1
  40246a:	0f 28 85 90 fa ff ff 	movaps -0x570(%rbp),%xmm0
  402471:	0f 12 c1             	movhlps %xmm1,%xmm0
  402474:	0f 29 85 90 fa ff ff 	movaps %xmm0,-0x570(%rbp)
#endif

#ifdef SSE_TYPE_OUT
    EXTRACT(out, (SSE_TYPE_OUT)v1);
#else
    EXTRACT(out, v1);
  40247b:	0f 28 85 90 fa ff ff 	movaps -0x570(%rbp),%xmm0
  402482:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
  402489:	48 89 c7             	mov    %rax,%rdi
  40248c:	e8 c5 f1 ff ff       	call   401656 <extract_f32>
#endif

    char in1_s[255];
    TO_STRING_IN(in1_s, in1);
  402491:	48 8d 95 b0 fa ff ff 	lea    -0x550(%rbp),%rdx
  402498:	48 8d 85 f0 fa ff ff 	lea    -0x510(%rbp),%rax
  40249f:	48 89 d6             	mov    %rdx,%rsi
  4024a2:	48 89 c7             	mov    %rax,%rdi
  4024a5:	e8 d0 f2 ff ff       	call   40177a <to_string_f32>
#ifdef SRC2
    char in2_s[255];
    TO_STRING_IN(in2_s, in2);
  4024aa:	48 8d 95 c0 fa ff ff 	lea    -0x540(%rbp),%rdx
  4024b1:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4024b8:	48 89 d6             	mov    %rdx,%rsi
  4024bb:	48 89 c7             	mov    %rax,%rdi
  4024be:	e8 b7 f2 ff ff       	call   40177a <to_string_f32>
#ifdef IMM8
    char imm8_s[255];
    imm8_to_string(imm8_s, IMM8);
#endif
    char out_s[255];
    TO_STRING_OUT(out_s, out);
  4024c3:	48 8d 95 e0 fa ff ff 	lea    -0x520(%rbp),%rdx
  4024ca:	48 8d 85 f0 fc ff ff 	lea    -0x310(%rbp),%rax
  4024d1:	48 89 d6             	mov    %rdx,%rsi
  4024d4:	48 89 c7             	mov    %rax,%rdi
  4024d7:	e8 9e f2 ff ff       	call   40177a <to_string_f32>
    char con_s[255];
    TO_STRING_OUT(con_s, con);
  4024dc:	48 8d 95 d0 fa ff ff 	lea    -0x530(%rbp),%rdx
  4024e3:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  4024ea:	48 89 d6             	mov    %rdx,%rsi
  4024ed:	48 89 c7             	mov    %rax,%rdi
  4024f0:	e8 85 f2 ff ff       	call   40177a <to_string_f32>
    char flags_s[255];
    flags_to_string(flags_s, flags);
  4024f5:	48 8b 95 88 fa ff ff 	mov    -0x578(%rbp),%rdx
  4024fc:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  402503:	48 89 d6             	mov    %rdx,%rsi
  402506:	48 89 c7             	mov    %rax,%rdi
  402509:	e8 66 fc ff ff       	call   402174 <flags_to_string>
#ifdef SRC2
#ifdef IMM8
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\nimm8: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
        in1_s, in2_s, imm8_s, out_s, con_s, flags_s);
#else
    printf(STR(INST_NAME)"\nsrc1: %s\nsrc2: %s\n |\n\\/\nres: %s\ncon: %s\nflags: %s\n",
  40250e:	4c 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%r8
  402515:	48 8d b5 f0 fd ff ff 	lea    -0x210(%rbp),%rsi
  40251c:	48 8d 8d f0 fc ff ff 	lea    -0x310(%rbp),%rcx
  402523:	48 8d 95 f0 fb ff ff 	lea    -0x410(%rbp),%rdx
  40252a:	48 8d 85 f0 fa ff ff 	lea    -0x510(%rbp),%rax
  402531:	48 8d 3d f0 5b 00 00 	lea    0x5bf0(%rip),%rdi        # 408128 <_fini+0x1124>
  402538:	4d 89 c1             	mov    %r8,%r9
  40253b:	49 89 f0             	mov    %rsi,%r8
  40253e:	48 89 c6             	mov    %rax,%rsi
  402541:	b8 00 00 00 00       	mov    $0x0,%eax
  402546:	e8 35 04 00 00       	call   402980 <printf>
        }
    }
    printf("\33[1;32m"STR(INST_NAME)" has passed the test!\33[0m\n");
#endif

    return 0;
  40254b:	b8 00 00 00 00       	mov    $0x0,%eax
}
  402550:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402554:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40255b:	00 00 
  40255d:	74 05                	je     402564 <main+0x211>
  40255f:	e8 bc 03 00 00       	call   402920 <__stack_chk_fail>
  402564:	c9                   	leave
  402565:	c3                   	ret
  402566:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40256d:	00 00 00 

0000000000402570 <dummy>:
  402570:	f3 0f 1e fa          	endbr64
  402574:	c3                   	ret
  402575:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40257c:	00 00 00 
  40257f:	90                   	nop

0000000000402580 <dummy1>:
  402580:	f3 0f 1e fa          	endbr64
  402584:	c3                   	ret
  402585:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40258c:	00 00 00 
  40258f:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402596:	00 00 00 
  402599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004025a0 <__init_libc>:
  4025a0:	f3 0f 1e fa          	endbr64
  4025a4:	55                   	push   %rbp
  4025a5:	48 89 fa             	mov    %rdi,%rdx
  4025a8:	31 c0                	xor    %eax,%eax
  4025aa:	b9 26 00 00 00       	mov    $0x26,%ecx
  4025af:	48 89 e5             	mov    %rsp,%rbp
  4025b2:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  4025b9:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4025c0:	f3 48 ab             	rep stos %rax,(%rdi)
  4025c3:	48 c7 c0 e8 b5 40 00 	mov    $0x40b5e8,%rax
  4025ca:	48 89 10             	mov    %rdx,(%rax)
  4025cd:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  4025d1:	0f 84 c9 01 00 00    	je     4027a0 <__init_libc+0x200>
  4025d7:	31 c0                	xor    %eax,%eax
  4025d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025e0:	48 89 c1             	mov    %rax,%rcx
  4025e3:	48 83 c0 01          	add    $0x1,%rax
  4025e7:	48 83 3c c2 00       	cmpq   $0x0,(%rdx,%rax,8)
  4025ec:	75 f2                	jne    4025e0 <__init_libc+0x40>
  4025ee:	48 8d 04 cd 10 00 00 	lea    0x10(,%rcx,8),%rax
  4025f5:	00 
  4025f6:	48 01 d0             	add    %rdx,%rax
  4025f9:	48 89 05 68 8b 00 00 	mov    %rax,0x8b68(%rip)        # 40b168 <__libc+0x8>
  402600:	48 8b 10             	mov    (%rax),%rdx
  402603:	48 83 c0 08          	add    $0x8,%rax
  402607:	48 85 d2             	test   %rdx,%rdx
  40260a:	0f 84 a0 01 00 00    	je     4027b0 <__init_libc+0x210>
  402610:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402615:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40261c:	00 00 00 00 
  402620:	48 83 fa 25          	cmp    $0x25,%rdx
  402624:	77 0b                	ja     402631 <__init_libc+0x91>
  402626:	48 8b 08             	mov    (%rax),%rcx
  402629:	48 89 8c d5 d0 fe ff 	mov    %rcx,-0x130(%rbp,%rdx,8)
  402630:	ff 
  402631:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402635:	48 83 c0 10          	add    $0x10,%rax
  402639:	48 85 d2             	test   %rdx,%rdx
  40263c:	75 e2                	jne    402620 <__init_libc+0x80>
  40263e:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  402645:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402649:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  402650:	48 89 0d f1 8a 00 00 	mov    %rcx,0x8af1(%rip)        # 40b148 <__hwcap>
  402657:	48 85 c0             	test   %rax,%rax
  40265a:	74 07                	je     402663 <__init_libc+0xc3>
  40265c:	48 89 05 cd 8a 00 00 	mov    %rax,0x8acd(%rip)        # 40b130 <__sysinfo>
  402663:	48 89 15 26 8b 00 00 	mov    %rdx,0x8b26(%rip)        # 40b190 <__libc+0x30>
  40266a:	48 85 f6             	test   %rsi,%rsi
  40266d:	0f 84 15 01 00 00    	je     402788 <__init_libc+0x1e8>
  402673:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  40267a:	48 c7 c1 40 b1 40 00 	mov    $0x40b140,%rcx
  402681:	48 89 30             	mov    %rsi,(%rax)
  402684:	48 8d 46 01          	lea    0x1(%rsi),%rax
  402688:	48 89 31             	mov    %rsi,(%rcx)
  40268b:	0f b6 16             	movzbl (%rsi),%edx
  40268e:	84 d2                	test   %dl,%dl
  402690:	74 21                	je     4026b3 <__init_libc+0x113>
  402692:	0f 1f 00             	nopl   (%rax)
  402695:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40269c:	00 00 00 00 
  4026a0:	80 fa 2f             	cmp    $0x2f,%dl
  4026a3:	75 03                	jne    4026a8 <__init_libc+0x108>
  4026a5:	48 89 01             	mov    %rax,(%rcx)
  4026a8:	0f b6 10             	movzbl (%rax),%edx
  4026ab:	48 83 c0 01          	add    $0x1,%rax
  4026af:	84 d2                	test   %dl,%dl
  4026b1:	75 ed                	jne    4026a0 <__init_libc+0x100>
  4026b3:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  4026ba:	e8 11 38 00 00       	call   405ed0 <__init_tls>
  4026bf:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4026c3:	e8 e8 01 00 00       	call   4028b0 <__init_ssp>
  4026c8:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
  4026cf:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
  4026d6:	0f 84 84 00 00 00    	je     402760 <__init_libc+0x1c0>
  4026dc:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4026e0:	b8 07 00 00 00       	mov    $0x7,%eax
  4026e5:	be 03 00 00 00       	mov    $0x3,%esi
  4026ea:	31 d2                	xor    %edx,%edx
  4026ec:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  4026f3:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
  4026fa:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  402701:	00 00 00 00 
  402705:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  40270c:	00 00 00 
  40270f:	c7 85 c0 fe ff ff 02 	movl   $0x2,-0x140(%rbp)
  402716:	00 00 00 
  402719:	0f 05                	syscall
  40271b:	85 c0                	test   %eax,%eax
  40271d:	79 01                	jns    402720 <__init_libc+0x180>
  40271f:	f4                   	hlt
  402720:	48 89 fa             	mov    %rdi,%rdx
  402723:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
  40272a:	be 02 80 00 00       	mov    $0x8002,%esi
  40272f:	48 8d 3d 4e 5a 00 00 	lea    0x5a4e(%rip),%rdi        # 408184 <_fini+0x1180>
  402736:	f6 42 06 20          	testb  $0x20,0x6(%rdx)
  40273a:	74 0d                	je     402749 <__init_libc+0x1a9>
  40273c:	b8 02 00 00 00       	mov    $0x2,%eax
  402741:	0f 05                	syscall
  402743:	48 85 c0             	test   %rax,%rax
  402746:	79 01                	jns    402749 <__init_libc+0x1a9>
  402748:	f4                   	hlt
  402749:	48 83 c2 08          	add    $0x8,%rdx
  40274d:	4c 39 c2             	cmp    %r8,%rdx
  402750:	75 e4                	jne    402736 <__init_libc+0x196>
  402752:	c6 05 09 8a 00 00 01 	movb   $0x1,0x8a09(%rip)        # 40b162 <__libc+0x2>
  402759:	c9                   	leave
  40275a:	c3                   	ret
  40275b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402760:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  402767:	48 39 85 38 ff ff ff 	cmp    %rax,-0xc8(%rbp)
  40276e:	0f 85 68 ff ff ff    	jne    4026dc <__init_libc+0x13c>
  402774:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  402779:	0f 85 5d ff ff ff    	jne    4026dc <__init_libc+0x13c>
  40277f:	c9                   	leave
  402780:	c3                   	ret
  402781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402788:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40278c:	48 85 c0             	test   %rax,%rax
  40278f:	74 2f                	je     4027c0 <__init_libc+0x220>
  402791:	48 89 c6             	mov    %rax,%rsi
  402794:	e9 da fe ff ff       	jmp    402673 <__init_libc+0xd3>
  402799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4027a0:	b8 08 00 00 00       	mov    $0x8,%eax
  4027a5:	e9 4c fe ff ff       	jmp    4025f6 <__init_libc+0x56>
  4027aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4027b0:	48 c7 05 8d 89 00 00 	movq   $0x0,0x898d(%rip)        # 40b148 <__hwcap>
  4027b7:	00 00 00 00 
  4027bb:	e9 a3 fe ff ff       	jmp    402663 <__init_libc+0xc3>
  4027c0:	48 c7 c0 38 b1 40 00 	mov    $0x40b138,%rax
  4027c7:	48 8d 3d f5 59 00 00 	lea    0x59f5(%rip),%rdi        # 4081c3 <_fini+0x11bf>
  4027ce:	48 89 38             	mov    %rdi,(%rax)
  4027d1:	48 c7 c0 40 b1 40 00 	mov    $0x40b140,%rax
  4027d8:	48 89 38             	mov    %rdi,(%rax)
  4027db:	e9 d3 fe ff ff       	jmp    4026b3 <__init_libc+0x113>

00000000004027e0 <__libc_start_init>:
  4027e0:	f3 0f 1e fa          	endbr64
  4027e4:	55                   	push   %rbp
  4027e5:	48 89 e5             	mov    %rsp,%rbp
  4027e8:	41 54                	push   %r12
  4027ea:	53                   	push   %rbx
  4027eb:	e8 10 e8 ff ff       	call   401000 <_init>
  4027f0:	48 c7 c3 c0 af 40 00 	mov    $0x40afc0,%rbx
  4027f7:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  4027fe:	4c 39 e3             	cmp    %r12,%rbx
  402801:	73 18                	jae    40281b <__libc_start_init+0x3b>
  402803:	66 90                	xchg   %ax,%ax
  402805:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40280c:	00 00 00 00 
  402810:	ff 13                	call   *(%rbx)
  402812:	48 83 c3 08          	add    $0x8,%rbx
  402816:	4c 39 e3             	cmp    %r12,%rbx
  402819:	72 f5                	jb     402810 <__libc_start_init+0x30>
  40281b:	5b                   	pop    %rbx
  40281c:	41 5c                	pop    %r12
  40281e:	5d                   	pop    %rbp
  40281f:	c3                   	ret

0000000000402820 <libc_start_main_stage2>:
  402820:	f3 0f 1e fa          	endbr64
  402824:	55                   	push   %rbp
  402825:	48 63 c6             	movslq %esi,%rax
  402828:	48 89 e5             	mov    %rsp,%rbp
  40282b:	41 56                	push   %r14
  40282d:	4c 8d 74 c2 08       	lea    0x8(%rdx,%rax,8),%r14
  402832:	41 55                	push   %r13
  402834:	49 89 fd             	mov    %rdi,%r13
  402837:	41 54                	push   %r12
  402839:	49 89 d4             	mov    %rdx,%r12
  40283c:	53                   	push   %rbx
  40283d:	48 89 c3             	mov    %rax,%rbx
  402840:	e8 9b ff ff ff       	call   4027e0 <__libc_start_init>
  402845:	89 df                	mov    %ebx,%edi
  402847:	4c 89 f2             	mov    %r14,%rdx
  40284a:	4c 89 e6             	mov    %r12,%rsi
  40284d:	41 ff d5             	call   *%r13
  402850:	89 c7                	mov    %eax,%edi
  402852:	e8 e9 e7 ff ff       	call   401040 <exit>
  402857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40285e:	00 00 

0000000000402860 <__libc_start_main>:
  402860:	f3 0f 1e fa          	endbr64
  402864:	55                   	push   %rbp
  402865:	48 63 c6             	movslq %esi,%rax
  402868:	48 89 e5             	mov    %rsp,%rbp
  40286b:	41 54                	push   %r12
  40286d:	49 89 fc             	mov    %rdi,%r12
  402870:	48 8d 7c c2 08       	lea    0x8(%rdx,%rax,8),%rdi
  402875:	53                   	push   %rbx
  402876:	48 89 c3             	mov    %rax,%rbx
  402879:	48 83 ec 10          	sub    $0x10,%rsp
  40287d:	48 8b 32             	mov    (%rdx),%rsi
  402880:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402884:	e8 17 fd ff ff       	call   4025a0 <__init_libc>
  402889:	48 8d 05 90 ff ff ff 	lea    -0x70(%rip),%rax        # 402820 <libc_start_main_stage2>
  402890:	89 de                	mov    %ebx,%esi
  402892:	4c 89 e7             	mov    %r12,%rdi
  402895:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402899:	48 83 c4 10          	add    $0x10,%rsp
  40289d:	5b                   	pop    %rbx
  40289e:	41 5c                	pop    %r12
  4028a0:	5d                   	pop    %rbp
  4028a1:	ff e0                	jmp    *%rax
  4028a3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4028aa:	00 00 00 
  4028ad:	0f 1f 00             	nopl   (%rax)

00000000004028b0 <__init_ssp>:
  4028b0:	f3 0f 1e fa          	endbr64
  4028b4:	55                   	push   %rbp
  4028b5:	48 89 e5             	mov    %rsp,%rbp
  4028b8:	48 83 ec 10          	sub    $0x10,%rsp
  4028bc:	48 85 ff             	test   %rdi,%rdi
  4028bf:	74 3f                	je     402900 <__init_ssp+0x50>
  4028c1:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  4028c8:	48 89 fe             	mov    %rdi,%rsi
  4028cb:	ba 08 00 00 00       	mov    $0x8,%edx
  4028d0:	48 89 cf             	mov    %rcx,%rdi
  4028d3:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  4028d7:	e8 d1 33 00 00       	call   405cad <memcpy>
  4028dc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4028e0:	c6 41 01 00          	movb   $0x0,0x1(%rcx)
  4028e4:	48 8b 11             	mov    (%rcx),%rdx
  4028e7:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4028ee:	00 00 
  4028f0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4028f4:	c9                   	leave
  4028f5:	c3                   	ret
  4028f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4028fd:	00 00 00 
  402900:	48 c7 c1 28 b1 40 00 	mov    $0x40b128,%rcx
  402907:	48 69 c1 6d 4e c6 41 	imul   $0x41c64e6d,%rcx,%rax
  40290e:	48 89 01             	mov    %rax,(%rcx)
  402911:	eb cd                	jmp    4028e0 <__init_ssp+0x30>
  402913:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40291a:	00 00 00 
  40291d:	0f 1f 00             	nopl   (%rax)

0000000000402920 <__stack_chk_fail>:
  402920:	f3 0f 1e fa          	endbr64
  402924:	f4                   	hlt
  402925:	c3                   	ret
  402926:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40292d:	00 00 00 

0000000000402930 <__funcs_on_exit>:
  402930:	f3 0f 1e fa          	endbr64
  402934:	c3                   	ret
  402935:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40293c:	00 00 00 
  40293f:	90                   	nop

0000000000402940 <__libc_exit_fini>:
  402940:	f3 0f 1e fa          	endbr64
  402944:	55                   	push   %rbp
  402945:	48 89 e5             	mov    %rsp,%rbp
  402948:	41 54                	push   %r12
  40294a:	49 c7 c4 c8 af 40 00 	mov    $0x40afc8,%r12
  402951:	53                   	push   %rbx
  402952:	48 c7 c3 d0 af 40 00 	mov    $0x40afd0,%rbx
  402959:	49 39 dc             	cmp    %rbx,%r12
  40295c:	73 0f                	jae    40296d <__libc_exit_fini+0x2d>
  40295e:	66 90                	xchg   %ax,%ax
  402960:	48 83 eb 08          	sub    $0x8,%rbx
  402964:	31 c0                	xor    %eax,%eax
  402966:	ff 13                	call   *(%rbx)
  402968:	49 39 dc             	cmp    %rbx,%r12
  40296b:	72 f3                	jb     402960 <__libc_exit_fini+0x20>
  40296d:	5b                   	pop    %rbx
  40296e:	31 c0                	xor    %eax,%eax
  402970:	41 5c                	pop    %r12
  402972:	5d                   	pop    %rbp
  402973:	e9 8c 46 00 00       	jmp    407004 <_fini>
  402978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40297f:	00 

0000000000402980 <printf>:
  402980:	f3 0f 1e fa          	endbr64
  402984:	55                   	push   %rbp
  402985:	48 89 e5             	mov    %rsp,%rbp
  402988:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  40298f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  402996:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  40299d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  4029a4:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4029ab:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  4029b2:	84 c0                	test   %al,%al
  4029b4:	74 20                	je     4029d6 <printf+0x56>
  4029b6:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  4029ba:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  4029be:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  4029c2:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  4029c6:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  4029ca:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  4029ce:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  4029d2:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  4029d6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029dd:	00 00 
  4029df:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  4029e6:	31 c0                	xor    %eax,%eax
  4029e8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  4029ec:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4029f3:	48 89 fe             	mov    %rdi,%rsi
  4029f6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4029fd:	48 8d 3d 1c 86 00 00 	lea    0x861c(%rip),%rdi        # 40b020 <__stdout_FILE>
  402a04:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402a0b:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
  402a12:	00 00 00 
  402a15:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  402a1c:	00 00 00 
  402a1f:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402a26:	e8 e5 2f 00 00       	call   405a10 <vfprintf>
  402a2b:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402a32:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a39:	00 00 
  402a3b:	75 02                	jne    402a3f <printf+0xbf>
  402a3d:	c9                   	leave
  402a3e:	c3                   	ret
  402a3f:	e8 dc fe ff ff       	call   402920 <__stack_chk_fail>
  402a44:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402a4b:	00 00 00 
  402a4e:	66 90                	xchg   %ax,%ax

0000000000402a50 <sprintf>:
  402a50:	f3 0f 1e fa          	endbr64
  402a54:	55                   	push   %rbp
  402a55:	48 89 e5             	mov    %rsp,%rbp
  402a58:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402a5f:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  402a66:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  402a6d:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  402a74:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  402a7b:	84 c0                	test   %al,%al
  402a7d:	74 20                	je     402a9f <sprintf+0x4f>
  402a7f:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
  402a83:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  402a87:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  402a8b:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
  402a8f:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
  402a93:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
  402a97:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
  402a9b:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
  402a9f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402aa6:	00 00 
  402aa8:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  402aaf:	31 c0                	xor    %eax,%eax
  402ab1:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402ab5:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  402abc:	c7 85 30 ff ff ff 10 	movl   $0x10,-0xd0(%rbp)
  402ac3:	00 00 00 
  402ac6:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  402acd:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  402ad4:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
  402adb:	00 00 00 
  402ade:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  402ae5:	e8 56 31 00 00       	call   405c40 <vsprintf>
  402aea:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  402af1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402af8:	00 00 
  402afa:	75 02                	jne    402afe <sprintf+0xae>
  402afc:	c9                   	leave
  402afd:	c3                   	ret
  402afe:	e8 1d fe ff ff       	call   402920 <__stack_chk_fail>
  402b03:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402b0a:	00 00 00 
  402b0d:	0f 1f 00             	nopl   (%rax)

0000000000402b10 <pop_arg>:
  402b10:	83 ee 09             	sub    $0x9,%esi
  402b13:	83 fe 11             	cmp    $0x11,%esi
  402b16:	77 50                	ja     402b68 <pop_arg+0x58>
  402b18:	48 8d 0d a5 56 00 00 	lea    0x56a5(%rip),%rcx        # 4081c4 <_fini+0x11c0>
  402b1f:	48 63 04 b1          	movslq (%rcx,%rsi,4),%rax
  402b23:	48 01 c8             	add    %rcx,%rax
  402b26:	3e ff e0             	notrack jmp *%rax
  402b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b30:	8b 02                	mov    (%rdx),%eax
  402b32:	83 f8 2f             	cmp    $0x2f,%eax
  402b35:	77 39                	ja     402b70 <pop_arg+0x60>
  402b37:	89 c1                	mov    %eax,%ecx
  402b39:	83 c0 08             	add    $0x8,%eax
  402b3c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b40:	89 02                	mov    %eax,(%rdx)
  402b42:	48 8b 01             	mov    (%rcx),%rax
  402b45:	48 89 07             	mov    %rax,(%rdi)
  402b48:	c3                   	ret
  402b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b50:	48 8b 42 08          	mov    0x8(%rdx),%rax
  402b54:	48 83 c0 0f          	add    $0xf,%rax
  402b58:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402b5c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  402b60:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  402b64:	db 28                	fldt   (%rax)
  402b66:	db 3f                	fstpt  (%rdi)
  402b68:	c3                   	ret
  402b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b70:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b74:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402b78:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402b7c:	48 8b 01             	mov    (%rcx),%rax
  402b7f:	48 89 07             	mov    %rax,(%rdi)
  402b82:	c3                   	ret
  402b83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402b88:	8b 02                	mov    (%rdx),%eax
  402b8a:	83 f8 2f             	cmp    $0x2f,%eax
  402b8d:	0f 87 55 01 00 00    	ja     402ce8 <pop_arg+0x1d8>
  402b93:	89 c1                	mov    %eax,%ecx
  402b95:	83 c0 08             	add    $0x8,%eax
  402b98:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402b9c:	89 02                	mov    %eax,(%rdx)
  402b9e:	0f b7 01             	movzwl (%rcx),%eax
  402ba1:	48 89 07             	mov    %rax,(%rdi)
  402ba4:	c3                   	ret
  402ba5:	0f 1f 00             	nopl   (%rax)
  402ba8:	8b 42 04             	mov    0x4(%rdx),%eax
  402bab:	3d af 00 00 00       	cmp    $0xaf,%eax
  402bb0:	0f 87 1a 01 00 00    	ja     402cd0 <pop_arg+0x1c0>
  402bb6:	89 c1                	mov    %eax,%ecx
  402bb8:	83 c0 10             	add    $0x10,%eax
  402bbb:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402bbf:	89 42 04             	mov    %eax,0x4(%rdx)
  402bc2:	dd 01                	fldl   (%rcx)
  402bc4:	db 3f                	fstpt  (%rdi)
  402bc6:	c3                   	ret
  402bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402bce:	00 00 
  402bd0:	8b 02                	mov    (%rdx),%eax
  402bd2:	83 f8 2f             	cmp    $0x2f,%eax
  402bd5:	0f 87 dd 00 00 00    	ja     402cb8 <pop_arg+0x1a8>
  402bdb:	89 c1                	mov    %eax,%ecx
  402bdd:	83 c0 08             	add    $0x8,%eax
  402be0:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402be4:	89 02                	mov    %eax,(%rdx)
  402be6:	48 63 01             	movslq (%rcx),%rax
  402be9:	48 89 07             	mov    %rax,(%rdi)
  402bec:	c3                   	ret
  402bed:	0f 1f 00             	nopl   (%rax)
  402bf0:	8b 02                	mov    (%rdx),%eax
  402bf2:	83 f8 2f             	cmp    $0x2f,%eax
  402bf5:	0f 87 a5 00 00 00    	ja     402ca0 <pop_arg+0x190>
  402bfb:	89 c1                	mov    %eax,%ecx
  402bfd:	83 c0 08             	add    $0x8,%eax
  402c00:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c04:	89 02                	mov    %eax,(%rdx)
  402c06:	8b 01                	mov    (%rcx),%eax
  402c08:	48 89 07             	mov    %rax,(%rdi)
  402c0b:	c3                   	ret
  402c0c:	0f 1f 40 00          	nopl   0x0(%rax)
  402c10:	8b 02                	mov    (%rdx),%eax
  402c12:	83 f8 2f             	cmp    $0x2f,%eax
  402c15:	77 79                	ja     402c90 <pop_arg+0x180>
  402c17:	89 c1                	mov    %eax,%ecx
  402c19:	83 c0 08             	add    $0x8,%eax
  402c1c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c20:	89 02                	mov    %eax,(%rdx)
  402c22:	0f b6 01             	movzbl (%rcx),%eax
  402c25:	48 89 07             	mov    %rax,(%rdi)
  402c28:	c3                   	ret
  402c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c30:	8b 02                	mov    (%rdx),%eax
  402c32:	83 f8 2f             	cmp    $0x2f,%eax
  402c35:	77 49                	ja     402c80 <pop_arg+0x170>
  402c37:	89 c1                	mov    %eax,%ecx
  402c39:	83 c0 08             	add    $0x8,%eax
  402c3c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c40:	89 02                	mov    %eax,(%rdx)
  402c42:	48 0f be 01          	movsbq (%rcx),%rax
  402c46:	48 89 07             	mov    %rax,(%rdi)
  402c49:	c3                   	ret
  402c4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402c50:	8b 02                	mov    (%rdx),%eax
  402c52:	83 f8 2f             	cmp    $0x2f,%eax
  402c55:	77 19                	ja     402c70 <pop_arg+0x160>
  402c57:	89 c1                	mov    %eax,%ecx
  402c59:	83 c0 08             	add    $0x8,%eax
  402c5c:	48 03 4a 10          	add    0x10(%rdx),%rcx
  402c60:	89 02                	mov    %eax,(%rdx)
  402c62:	48 0f bf 01          	movswq (%rcx),%rax
  402c66:	48 89 07             	mov    %rax,(%rdi)
  402c69:	c3                   	ret
  402c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402c70:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c74:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c78:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c7c:	eb e4                	jmp    402c62 <pop_arg+0x152>
  402c7e:	66 90                	xchg   %ax,%ax
  402c80:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c84:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c88:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c8c:	eb b4                	jmp    402c42 <pop_arg+0x132>
  402c8e:	66 90                	xchg   %ax,%ax
  402c90:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c94:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402c98:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402c9c:	eb 84                	jmp    402c22 <pop_arg+0x112>
  402c9e:	66 90                	xchg   %ax,%ax
  402ca0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402ca4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402ca8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402cac:	e9 55 ff ff ff       	jmp    402c06 <pop_arg+0xf6>
  402cb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402cb8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402cbc:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402cc0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402cc4:	e9 1d ff ff ff       	jmp    402be6 <pop_arg+0xd6>
  402cc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402cd0:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402cd4:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402cd8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402cdc:	e9 e1 fe ff ff       	jmp    402bc2 <pop_arg+0xb2>
  402ce1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ce8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402cec:	48 8d 41 08          	lea    0x8(%rcx),%rax
  402cf0:	48 89 42 08          	mov    %rax,0x8(%rdx)
  402cf4:	e9 a5 fe ff ff       	jmp    402b9e <pop_arg+0x8e>
  402cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402d00 <pad.part.0>:
  402d00:	55                   	push   %rbp
  402d01:	29 ca                	sub    %ecx,%edx
  402d03:	40 0f be f6          	movsbl %sil,%esi
  402d07:	48 89 e5             	mov    %rsp,%rbp
  402d0a:	41 56                	push   %r14
  402d0c:	41 55                	push   %r13
  402d0e:	41 54                	push   %r12
  402d10:	4c 63 e2             	movslq %edx,%r12
  402d13:	ba 00 01 00 00       	mov    $0x100,%edx
  402d18:	53                   	push   %rbx
  402d19:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  402d20:	41 39 d4             	cmp    %edx,%r12d
  402d23:	64 4c 8b 2c 25 28 00 	mov    %fs:0x28,%r13
  402d2a:	00 00 
  402d2c:	4c 89 6d d8          	mov    %r13,-0x28(%rbp)
  402d30:	49 89 fd             	mov    %rdi,%r13
  402d33:	49 0f 4e d4          	cmovle %r12,%rdx
  402d37:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402d3e:	e8 9c 2f 00 00       	call   405cdf <memset>
  402d43:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
  402d4a:	0f 8e 88 00 00 00    	jle    402dd8 <pad.part.0+0xd8>
  402d50:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d54:	44 89 e3             	mov    %r12d,%ebx
  402d57:	eb 15                	jmp    402d6e <pad.part.0+0x6e>
  402d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402d60:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402d66:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402d6c:	76 2a                	jbe    402d98 <pad.part.0+0x98>
  402d6e:	a8 20                	test   $0x20,%al
  402d70:	75 ee                	jne    402d60 <pad.part.0+0x60>
  402d72:	4c 89 ea             	mov    %r13,%rdx
  402d75:	be 00 01 00 00       	mov    $0x100,%esi
  402d7a:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402d81:	81 eb 00 01 00 00    	sub    $0x100,%ebx
  402d87:	e8 14 38 00 00       	call   4065a0 <__fwritex>
  402d8c:	41 8b 45 00          	mov    0x0(%r13),%eax
  402d90:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
  402d96:	77 d6                	ja     402d6e <pad.part.0+0x6e>
  402d98:	45 0f b6 e4          	movzbl %r12b,%r12d
  402d9c:	a8 20                	test   $0x20,%al
  402d9e:	74 20                	je     402dc0 <pad.part.0+0xc0>
  402da0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402da4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402dab:	00 00 
  402dad:	75 2f                	jne    402dde <pad.part.0+0xde>
  402daf:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
  402db6:	5b                   	pop    %rbx
  402db7:	41 5c                	pop    %r12
  402db9:	41 5d                	pop    %r13
  402dbb:	41 5e                	pop    %r14
  402dbd:	5d                   	pop    %rbp
  402dbe:	c3                   	ret
  402dbf:	90                   	nop
  402dc0:	49 63 f4             	movslq %r12d,%rsi
  402dc3:	4c 89 ea             	mov    %r13,%rdx
  402dc6:	48 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%rdi
  402dcd:	e8 ce 37 00 00       	call   4065a0 <__fwritex>
  402dd2:	eb cc                	jmp    402da0 <pad.part.0+0xa0>
  402dd4:	0f 1f 40 00          	nopl   0x0(%rax)
  402dd8:	41 8b 45 00          	mov    0x0(%r13),%eax
  402ddc:	eb be                	jmp    402d9c <pad.part.0+0x9c>
  402dde:	e8 3d fb ff ff       	call   402920 <__stack_chk_fail>
  402de3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402dea:	00 00 00 
  402ded:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402df4:	00 00 00 
  402df7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402dfe:	00 00 

0000000000402e00 <fmt_fp>:
  402e00:	55                   	push   %rbp
  402e01:	48 89 e5             	mov    %rsp,%rbp
  402e04:	41 57                	push   %r15
  402e06:	41 56                	push   %r14
  402e08:	41 55                	push   %r13
  402e0a:	41 54                	push   %r12
  402e0c:	53                   	push   %rbx
  402e0d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402e14:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402e19:	48 81 ec 68 0d 00 00 	sub    $0xd68,%rsp
  402e20:	48 89 bd b8 e2 ff ff 	mov    %rdi,-0x1d48(%rbp)
  402e27:	41 89 d7             	mov    %edx,%r15d
  402e2a:	89 b5 b4 e2 ff ff    	mov    %esi,-0x1d4c(%rbp)
  402e30:	89 8d c8 e2 ff ff    	mov    %ecx,-0x1d38(%rbp)
  402e36:	44 89 85 a0 e2 ff ff 	mov    %r8d,-0x1d60(%rbp)
  402e3d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e44:	00 00 
  402e46:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402e4a:	31 c0                	xor    %eax,%eax
  402e4c:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  402e53:	00 00 00 
  402e56:	ff 75 18             	push   0x18(%rbp)
  402e59:	ff 75 10             	push   0x10(%rbp)
  402e5c:	e8 ef 33 00 00       	call   406250 <__signbitl>
  402e61:	41 5d                	pop    %r13
  402e63:	41 5e                	pop    %r14
  402e65:	85 c0                	test   %eax,%eax
  402e67:	0f 84 8b 00 00 00    	je     402ef8 <fmt_fp+0xf8>
  402e6d:	db 6d 10             	fldt   0x10(%rbp)
  402e70:	48 8d 05 17 53 00 00 	lea    0x5317(%rip),%rax        # 40818e <_fini+0x118a>
  402e77:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402e7e:	00 00 00 
  402e81:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402e88:	d9 e0                	fchs
  402e8a:	db 7d 10             	fstpt  0x10(%rbp)
  402e8d:	ff 75 18             	push   0x18(%rbp)
  402e90:	ff 75 10             	push   0x10(%rbp)
  402e93:	e8 48 33 00 00       	call   4061e0 <__fpclassifyl>
  402e98:	5b                   	pop    %rbx
  402e99:	41 5c                	pop    %r12
  402e9b:	83 f8 01             	cmp    $0x1,%eax
  402e9e:	0f 8e bc 04 00 00    	jle    403360 <fmt_fp+0x560>
  402ea4:	ff 75 18             	push   0x18(%rbp)
  402ea7:	48 8d bd dc e2 ff ff 	lea    -0x1d24(%rbp),%rdi
  402eae:	ff 75 10             	push   0x10(%rbp)
  402eb1:	e8 ba 33 00 00       	call   406270 <frexpl>
  402eb6:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  402ebd:	41 5a                	pop    %r10
  402ebf:	d8 c0                	fadd   %st(0),%st
  402ec1:	44 8b 8d dc e2 ff ff 	mov    -0x1d24(%rbp),%r9d
  402ec8:	41 5b                	pop    %r11
  402eca:	41 83 ce 20          	or     $0x20,%r14d
  402ece:	d9 ee                	fldz
  402ed0:	d9 c9                	fxch   %st(1)
  402ed2:	db e9                	fucomi %st(1),%st
  402ed4:	dd d9                	fstp   %st(1)
  402ed6:	7a 58                	jp     402f30 <fmt_fp+0x130>
  402ed8:	75 56                	jne    402f30 <fmt_fp+0x130>
  402eda:	41 83 fe 61          	cmp    $0x61,%r14d
  402ede:	0f 84 37 06 00 00    	je     40351b <fmt_fp+0x71b>
  402ee4:	45 85 ff             	test   %r15d,%r15d
  402ee7:	0f 88 84 13 00 00    	js     404271 <fmt_fp+0x1471>
  402eed:	40 0f 95 c6          	setne  %sil
  402ef1:	eb 65                	jmp    402f58 <fmt_fp+0x158>
  402ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ef8:	8b bd c8 e2 ff ff    	mov    -0x1d38(%rbp),%edi
  402efe:	f7 c7 00 08 00 00    	test   $0x800,%edi
  402f04:	0f 84 2c 04 00 00    	je     403336 <fmt_fp+0x536>
  402f0a:	48 8d 05 80 52 00 00 	lea    0x5280(%rip),%rax        # 408191 <_fini+0x118d>
  402f11:	c7 85 98 e2 ff ff 01 	movl   $0x1,-0x1d68(%rbp)
  402f18:	00 00 00 
  402f1b:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  402f22:	e9 66 ff ff ff       	jmp    402e8d <fmt_fp+0x8d>
  402f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402f2e:	00 00 
  402f30:	41 83 fe 61          	cmp    $0x61,%r14d
  402f34:	0f 84 d6 05 00 00    	je     403510 <fmt_fp+0x710>
  402f3a:	45 85 ff             	test   %r15d,%r15d
  402f3d:	0f 88 3e 13 00 00    	js     404281 <fmt_fp+0x1481>
  402f43:	40 0f 95 c6          	setne  %sil
  402f47:	41 83 e9 1d          	sub    $0x1d,%r9d
  402f4b:	d8 0d b3 55 00 00    	fmuls  0x55b3(%rip)        # 408504 <states+0x1e4>
  402f51:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  402f58:	45 85 c9             	test   %r9d,%r9d
  402f5b:	48 8d 85 e0 e2 ff ff 	lea    -0x1d20(%rbp),%rax
  402f62:	48 8d 95 88 fe ff ff 	lea    -0x178(%rbp),%rdx
  402f69:	d9 05 99 55 00 00    	flds   0x5599(%rip)        # 408508 <states+0x1e8>
  402f6f:	d9 c9                	fxch   %st(1)
  402f71:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  402f77:	48 0f 49 c2          	cmovns %rdx,%rax
  402f7b:	48 89 85 90 e2 ff ff 	mov    %rax,-0x1d70(%rbp)
  402f82:	48 89 c3             	mov    %rax,%rbx
  402f85:	0f b7 85 ce e2 ff ff 	movzwl -0x1d32(%rbp),%eax
  402f8c:	80 cc 0c             	or     $0xc,%ah
  402f8f:	66 89 85 cc e2 ff ff 	mov    %ax,-0x1d34(%rbp)
  402f96:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402f9d:	00 00 
  402f9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fa6:	00 00 00 00 
  402faa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fb1:	00 00 00 00 
  402fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402fbc:	00 00 00 00 
  402fc0:	d9 c0                	fld    %st(0)
  402fc2:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  402fc8:	df bd c0 e2 ff ff    	fistpll -0x1d40(%rbp)
  402fce:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  402fd4:	48 83 c3 04          	add    $0x4,%rbx
  402fd8:	48 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%rax
  402fdf:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402fe2:	89 c0                	mov    %eax,%eax
  402fe4:	48 89 85 c0 e2 ff ff 	mov    %rax,-0x1d40(%rbp)
  402feb:	df ad c0 e2 ff ff    	fildll -0x1d40(%rbp)
  402ff1:	de e9                	fsubrp %st,%st(1)
  402ff3:	d8 c9                	fmul   %st(1),%st
  402ff5:	d9 ee                	fldz
  402ff7:	d9 c9                	fxch   %st(1)
  402ff9:	db e9                	fucomi %st(1),%st
  402ffb:	dd d9                	fstp   %st(1)
  402ffd:	7a c1                	jp     402fc0 <fmt_fp+0x1c0>
  402fff:	75 bf                	jne    402fc0 <fmt_fp+0x1c0>
  403001:	dd d8                	fstp   %st(0)
  403003:	dd d8                	fstp   %st(0)
  403005:	4c 8b a5 90 e2 ff ff 	mov    -0x1d70(%rbp),%r12
  40300c:	45 85 c9             	test   %r9d,%r9d
  40300f:	0f 8e b0 00 00 00    	jle    4030c5 <fmt_fp+0x2c5>
  403015:	48 bf 53 5a 9b a0 2f 	movabs $0x44b82fa09b5a53,%rdi
  40301c:	b8 44 00 
  40301f:	90                   	nop
  403020:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  403025:	4c 8d 53 fc          	lea    -0x4(%rbx),%r10
  403029:	41 39 c9             	cmp    %ecx,%r9d
  40302c:	41 0f 4e c9          	cmovle %r9d,%ecx
  403030:	4d 39 e2             	cmp    %r12,%r10
  403033:	72 4b                	jb     403080 <fmt_fp+0x280>
  403035:	31 c0                	xor    %eax,%eax
  403037:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40303e:	00 00 
  403040:	45 8b 02             	mov    (%r10),%r8d
  403043:	49 83 ea 04          	sub    $0x4,%r10
  403047:	49 d3 e0             	shl    %cl,%r8
  40304a:	49 01 c0             	add    %rax,%r8
  40304d:	4c 89 c2             	mov    %r8,%rdx
  403050:	48 c1 ea 09          	shr    $0x9,%rdx
  403054:	48 89 d0             	mov    %rdx,%rax
  403057:	48 f7 e7             	mul    %rdi
  40305a:	48 c1 ea 0b          	shr    $0xb,%rdx
  40305e:	48 69 c2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rax
  403065:	49 29 c0             	sub    %rax,%r8
  403068:	89 d0                	mov    %edx,%eax
  40306a:	45 89 42 04          	mov    %r8d,0x4(%r10)
  40306e:	4d 39 e2             	cmp    %r12,%r10
  403071:	73 cd                	jae    403040 <fmt_fp+0x240>
  403073:	85 d2                	test   %edx,%edx
  403075:	74 09                	je     403080 <fmt_fp+0x280>
  403077:	41 89 54 24 fc       	mov    %edx,-0x4(%r12)
  40307c:	49 83 ec 04          	sub    $0x4,%r12
  403080:	49 39 dc             	cmp    %rbx,%r12
  403083:	72 24                	jb     4030a9 <fmt_fp+0x2a9>
  403085:	eb 2b                	jmp    4030b2 <fmt_fp+0x2b2>
  403087:	0f 1f 00             	nopl   (%rax)
  40308a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403091:	00 00 00 00 
  403095:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40309c:	00 00 00 00 
  4030a0:	48 83 eb 04          	sub    $0x4,%rbx
  4030a4:	49 39 dc             	cmp    %rbx,%r12
  4030a7:	73 09                	jae    4030b2 <fmt_fp+0x2b2>
  4030a9:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  4030ad:	45 85 c0             	test   %r8d,%r8d
  4030b0:	74 ee                	je     4030a0 <fmt_fp+0x2a0>
  4030b2:	41 29 c9             	sub    %ecx,%r9d
  4030b5:	45 85 c9             	test   %r9d,%r9d
  4030b8:	0f 8f 62 ff ff ff    	jg     403020 <fmt_fp+0x220>
  4030be:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  4030c5:	45 85 c9             	test   %r9d,%r9d
  4030c8:	0f 84 35 01 00 00    	je     403203 <fmt_fp+0x403>
  4030ce:	41 8d 47 1d          	lea    0x1d(%r15),%eax
  4030d2:	44 89 bd b0 e2 ff ff 	mov    %r15d,-0x1d50(%rbp)
  4030d9:	41 89 f0             	mov    %esi,%r8d
  4030dc:	48 69 c0 39 8e e3 38 	imul   $0x38e38e39,%rax,%rax
  4030e3:	48 c1 e8 21          	shr    $0x21,%rax
  4030e7:	48 8d 78 01          	lea    0x1(%rax),%rdi
  4030eb:	48 89 bd a8 e2 ff ff 	mov    %rdi,-0x1d58(%rbp)
  4030f2:	4c 8d 1c bd 00 00 00 	lea    0x0(,%rdi,4),%r11
  4030f9:	00 
  4030fa:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  403101:	0f 1f 40 00          	nopl   0x0(%rax)
  403105:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40310c:	00 00 00 00 
  403110:	41 83 f9 f7          	cmp    $0xfffffff7,%r9d
  403114:	0f 8d d6 06 00 00    	jge    4037f0 <fmt_fp+0x9f0>
  40311a:	41 83 c1 09          	add    $0x9,%r9d
  40311e:	b9 09 00 00 00       	mov    $0x9,%ecx
  403123:	49 39 dc             	cmp    %rbx,%r12
  403126:	0f 83 d5 06 00 00    	jae    403801 <fmt_fp+0xa01>
  40312c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  403132:	44 89 8d c0 e2 ff ff 	mov    %r9d,-0x1d40(%rbp)
  403139:	4c 89 e6             	mov    %r12,%rsi
  40313c:	31 d2                	xor    %edx,%edx
  40313e:	41 d3 e2             	shl    %cl,%r10d
  403141:	41 bf 00 ca 9a 3b    	mov    $0x3b9aca00,%r15d
  403147:	41 83 ea 01          	sub    $0x1,%r10d
  40314b:	41 d3 ff             	sar    %cl,%r15d
  40314e:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403154:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40315b:	00 00 00 00 
  40315f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403166:	00 00 00 00 
  40316a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403171:	00 00 00 00 
  403175:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40317c:	00 00 00 00 
  403180:	8b 06                	mov    (%rsi),%eax
  403182:	48 83 c6 04          	add    $0x4,%rsi
  403186:	41 89 c1             	mov    %eax,%r9d
  403189:	44 21 d0             	and    %r10d,%eax
  40318c:	41 0f af c7          	imul   %r15d,%eax
  403190:	41 d3 e9             	shr    %cl,%r9d
  403193:	41 01 d1             	add    %edx,%r9d
  403196:	44 89 4e fc          	mov    %r9d,-0x4(%rsi)
  40319a:	89 c2                	mov    %eax,%edx
  40319c:	48 39 de             	cmp    %rbx,%rsi
  40319f:	72 df                	jb     403180 <fmt_fp+0x380>
  4031a1:	41 8b 0c 24          	mov    (%r12),%ecx
  4031a5:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  4031aa:	44 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9d
  4031b1:	85 c9                	test   %ecx,%ecx
  4031b3:	49 0f 45 c4          	cmovne %r12,%rax
  4031b7:	85 d2                	test   %edx,%edx
  4031b9:	74 06                	je     4031c1 <fmt_fp+0x3c1>
  4031bb:	89 13                	mov    %edx,(%rbx)
  4031bd:	48 83 c3 04          	add    $0x4,%rbx
  4031c1:	49 89 c4             	mov    %rax,%r12
  4031c4:	41 83 fe 66          	cmp    $0x66,%r14d
  4031c8:	0f 84 52 06 00 00    	je     403820 <fmt_fp+0xa20>
  4031ce:	48 89 da             	mov    %rbx,%rdx
  4031d1:	48 29 c2             	sub    %rax,%rdx
  4031d4:	4c 01 d8             	add    %r11,%rax
  4031d7:	48 c1 fa 02          	sar    $0x2,%rdx
  4031db:	48 3b 95 a8 e2 ff ff 	cmp    -0x1d58(%rbp),%rdx
  4031e2:	48 0f 4f d8          	cmovg  %rax,%rbx
  4031e6:	45 85 c9             	test   %r9d,%r9d
  4031e9:	0f 85 21 ff ff ff    	jne    403110 <fmt_fp+0x310>
  4031ef:	c7 85 dc e2 ff ff 00 	movl   $0x0,-0x1d24(%rbp)
  4031f6:	00 00 00 
  4031f9:	44 8b bd b0 e2 ff ff 	mov    -0x1d50(%rbp),%r15d
  403200:	44 89 c6             	mov    %r8d,%esi
  403203:	49 39 dc             	cmp    %rbx,%r12
  403206:	0f 83 5d 0b 00 00    	jae    403d69 <fmt_fp+0xf69>
  40320c:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403213:	41 83 fe 66          	cmp    $0x66,%r14d
  403217:	41 8b 14 24          	mov    (%r12),%edx
  40321b:	0f 95 c1             	setne  %cl
  40321e:	4c 29 e0             	sub    %r12,%rax
  403221:	48 c1 f8 02          	sar    $0x2,%rax
  403225:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  403228:	b8 0a 00 00 00       	mov    $0xa,%eax
  40322d:	83 fa 09             	cmp    $0x9,%edx
  403230:	76 1a                	jbe    40324c <fmt_fp+0x44c>
  403232:	0f 1f 00             	nopl   (%rax)
  403235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40323c:	00 00 00 00 
  403240:	8d 04 80             	lea    (%rax,%rax,4),%eax
  403243:	83 c7 01             	add    $0x1,%edi
  403246:	01 c0                	add    %eax,%eax
  403248:	39 c2                	cmp    %eax,%edx
  40324a:	73 f4                	jae    403240 <fmt_fp+0x440>
  40324c:	31 d2                	xor    %edx,%edx
  40324e:	84 c9                	test   %cl,%cl
  403250:	44 89 f8             	mov    %r15d,%eax
  403253:	0f 45 d7             	cmovne %edi,%edx
  403256:	29 d0                	sub    %edx,%eax
  403258:	31 d2                	xor    %edx,%edx
  40325a:	41 83 fe 67          	cmp    $0x67,%r14d
  40325e:	0f 94 c2             	sete   %dl
  403261:	21 f2                	and    %esi,%edx
  403263:	48 8b b5 90 e2 ff ff 	mov    -0x1d70(%rbp),%rsi
  40326a:	29 d0                	sub    %edx,%eax
  40326c:	48 89 da             	mov    %rbx,%rdx
  40326f:	48 29 f2             	sub    %rsi,%rdx
  403272:	48 63 c8             	movslq %eax,%rcx
  403275:	48 c1 fa 02          	sar    $0x2,%rdx
  403279:	48 8d 54 d2 f7       	lea    -0x9(%rdx,%rdx,8),%rdx
  40327e:	48 39 d1             	cmp    %rdx,%rcx
  403281:	0f 8d 0f 06 00 00    	jge    403896 <fmt_fp+0xa96>
  403287:	05 00 40 02 00       	add    $0x24000,%eax
  40328c:	48 63 d0             	movslq %eax,%rdx
  40328f:	89 c1                	mov    %eax,%ecx
  403291:	48 69 d2 39 8e e3 38 	imul   $0x38e38e39,%rdx,%rdx
  403298:	c1 f9 1f             	sar    $0x1f,%ecx
  40329b:	48 c1 fa 21          	sar    $0x21,%rdx
  40329f:	29 ca                	sub    %ecx,%edx
  4032a1:	48 63 ca             	movslq %edx,%rcx
  4032a4:	48 8d b4 8e 04 00 ff 	lea    -0xfffc(%rsi,%rcx,4),%rsi
  4032ab:	ff 
  4032ac:	8d 0c d2             	lea    (%rdx,%rdx,8),%ecx
  4032af:	29 c8                	sub    %ecx,%eax
  4032b1:	89 c2                	mov    %eax,%edx
  4032b3:	8d 40 01             	lea    0x1(%rax),%eax
  4032b6:	83 fa 08             	cmp    $0x8,%edx
  4032b9:	0f 84 df 13 00 00    	je     40469e <fmt_fp+0x189e>
  4032bf:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4032c4:	90                   	nop
  4032c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4032cc:	00 00 00 00 
  4032d0:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  4032d3:	83 c0 01             	add    $0x1,%eax
  4032d6:	01 c9                	add    %ecx,%ecx
  4032d8:	83 f8 09             	cmp    $0x9,%eax
  4032db:	75 f3                	jne    4032d0 <fmt_fp+0x4d0>
  4032dd:	41 89 cb             	mov    %ecx,%r11d
  4032e0:	44 8b 16             	mov    (%rsi),%r10d
  4032e3:	31 d2                	xor    %edx,%edx
  4032e5:	44 89 d0             	mov    %r10d,%eax
  4032e8:	41 f7 f3             	div    %r11d
  4032eb:	41 89 d1             	mov    %edx,%r9d
  4032ee:	85 d2                	test   %edx,%edx
  4032f0:	0f 85 35 05 00 00    	jne    40382b <fmt_fp+0xa2b>
  4032f6:	4c 8d 46 04          	lea    0x4(%rsi),%r8
  4032fa:	48 89 da             	mov    %rbx,%rdx
  4032fd:	4c 39 c3             	cmp    %r8,%rbx
  403300:	0f 84 89 05 00 00    	je     40388f <fmt_fp+0xa8f>
  403306:	a8 01                	test   $0x1,%al
  403308:	0f 85 36 10 00 00    	jne    404344 <fmt_fp+0x1544>
  40330e:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  403314:	75 0f                	jne    403325 <fmt_fp+0x525>
  403316:	49 39 f4             	cmp    %rsi,%r12
  403319:	73 0a                	jae    403325 <fmt_fp+0x525>
  40331b:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  40331f:	0f 85 1f 10 00 00    	jne    404344 <fmt_fp+0x1544>
  403325:	d9 05 c9 51 00 00    	flds   0x51c9(%rip)        # 4084f4 <states+0x1d4>
  40332b:	d9 05 c7 51 00 00    	flds   0x51c7(%rip)        # 4084f8 <states+0x1d8>
  403331:	e9 1d 05 00 00       	jmp    403853 <fmt_fp+0xa53>
  403336:	48 8d 1d 52 4e 00 00 	lea    0x4e52(%rip),%rbx        # 40818f <_fini+0x118b>
  40333d:	83 e7 01             	and    $0x1,%edi
  403340:	48 8d 43 05          	lea    0x5(%rbx),%rax
  403344:	89 bd 98 e2 ff ff    	mov    %edi,-0x1d68(%rbp)
  40334a:	48 0f 44 c3          	cmove  %rbx,%rax
  40334e:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403355:	e9 33 fb ff ff       	jmp    402e8d <fmt_fp+0x8d>
  40335a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403360:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403367:	0f 84 94 00 00 00    	je     403401 <fmt_fp+0x601>
  40336d:	db 6d 10             	fldt   0x10(%rbp)
  403370:	4c 8d 25 2e 4e 00 00 	lea    0x4e2e(%rip),%r12        # 4081a5 <_fini+0x11a1>
  403377:	48 8d 05 2f 4e 00 00 	lea    0x4e2f(%rip),%rax        # 4081ad <_fini+0x11a9>
  40337e:	df e8                	fucomip %st(0),%st
  403380:	4c 0f 4b e0          	cmovnp %rax,%r12
  403384:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  40338a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403390:	8d 58 03             	lea    0x3(%rax),%ebx
  403393:	39 d3                	cmp    %edx,%ebx
  403395:	41 0f 9d c5          	setge  %r13b
  403399:	f6 85 c9 e2 ff ff 20 	testb  $0x20,-0x1d37(%rbp)
  4033a0:	75 09                	jne    4033ab <fmt_fp+0x5ab>
  4033a2:	45 84 ed             	test   %r13b,%r13b
  4033a5:	0f 84 0a 01 00 00    	je     4034b5 <fmt_fp+0x6b5>
  4033ab:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4033b2:	f6 00 20             	testb  $0x20,(%rax)
  4033b5:	0f 84 1d 01 00 00    	je     4034d8 <fmt_fp+0x6d8>
  4033bb:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4033c1:	80 f4 20             	xor    $0x20,%ah
  4033c4:	a9 00 20 01 00       	test   $0x12000,%eax
  4033c9:	75 09                	jne    4033d4 <fmt_fp+0x5d4>
  4033cb:	45 84 ed             	test   %r13b,%r13b
  4033ce:	0f 84 c3 00 00 00    	je     403497 <fmt_fp+0x697>
  4033d4:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  4033da:	39 c3                	cmp    %eax,%ebx
  4033dc:	0f 4d c3             	cmovge %ebx,%eax
  4033df:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4033e3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4033ea:	00 00 
  4033ec:	0f 85 4d 13 00 00    	jne    40473f <fmt_fp+0x193f>
  4033f2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4033f6:	5b                   	pop    %rbx
  4033f7:	41 5c                	pop    %r12
  4033f9:	41 5d                	pop    %r13
  4033fb:	41 5e                	pop    %r14
  4033fd:	41 5f                	pop    %r15
  4033ff:	5d                   	pop    %rbp
  403400:	c3                   	ret
  403401:	db 6d 10             	fldt   0x10(%rbp)
  403404:	4c 8d 25 9e 4d 00 00 	lea    0x4d9e(%rip),%r12        # 4081a9 <_fini+0x11a5>
  40340b:	48 8d 05 8f 4d 00 00 	lea    0x4d8f(%rip),%rax        # 4081a1 <_fini+0x119d>
  403412:	df e8                	fucomip %st(0),%st
  403414:	4c 0f 4b e0          	cmovnp %rax,%r12
  403418:	e9 67 ff ff ff       	jmp    403384 <fmt_fp+0x584>
  40341d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403424:	f6 07 20             	testb  $0x20,(%rdi)
  403427:	0f 84 11 03 00 00    	je     40373e <fmt_fp+0x93e>
  40342d:	45 29 f7             	sub    %r14d,%r15d
  403430:	45 85 ff             	test   %r15d,%r15d
  403433:	7e 9f                	jle    4033d4 <fmt_fp+0x5d4>
  403435:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  40343b:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  403442:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403449:	31 c9                	xor    %ecx,%ecx
  40344b:	44 89 fa             	mov    %r15d,%edx
  40344e:	be 30 00 00 00       	mov    $0x30,%esi
  403453:	e8 a8 f8 ff ff       	call   402d00 <pad.part.0>
  403458:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  40345f:	f6 00 20             	testb  $0x20,(%rax)
  403462:	75 12                	jne    403476 <fmt_fp+0x676>
  403464:	48 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%rdi
  40346b:	48 89 c2             	mov    %rax,%rdx
  40346e:	4c 89 e6             	mov    %r12,%rsi
  403471:	e8 2a 31 00 00       	call   4065a0 <__fwritex>
  403476:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  40347c:	80 f4 20             	xor    $0x20,%ah
  40347f:	a9 00 20 01 00       	test   $0x12000,%eax
  403484:	0f 85 4a ff ff ff    	jne    4033d4 <fmt_fp+0x5d4>
  40348a:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403491:	0f 85 3d ff ff ff    	jne    4033d4 <fmt_fp+0x5d4>
  403497:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40349d:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4034a4:	89 d9                	mov    %ebx,%ecx
  4034a6:	be 20 00 00 00       	mov    $0x20,%esi
  4034ab:	e8 50 f8 ff ff       	call   402d00 <pad.part.0>
  4034b0:	e9 1f ff ff ff       	jmp    4033d4 <fmt_fp+0x5d4>
  4034b5:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  4034bc:	89 d9                	mov    %ebx,%ecx
  4034be:	be 20 00 00 00       	mov    $0x20,%esi
  4034c3:	e8 38 f8 ff ff       	call   402d00 <pad.part.0>
  4034c8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4034cf:	f6 00 20             	testb  $0x20,(%rax)
  4034d2:	0f 85 e3 fe ff ff    	jne    4033bb <fmt_fp+0x5bb>
  4034d8:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  4034df:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4034e6:	49 89 c6             	mov    %rax,%r14
  4034e9:	48 89 c2             	mov    %rax,%rdx
  4034ec:	e8 af 30 00 00       	call   4065a0 <__fwritex>
  4034f1:	41 f6 06 20          	testb  $0x20,(%r14)
  4034f5:	0f 85 c0 fe ff ff    	jne    4033bb <fmt_fp+0x5bb>
  4034fb:	4c 89 f2             	mov    %r14,%rdx
  4034fe:	be 03 00 00 00       	mov    $0x3,%esi
  403503:	4c 89 e7             	mov    %r12,%rdi
  403506:	e8 95 30 00 00       	call   4065a0 <__fwritex>
  40350b:	e9 ab fe ff ff       	jmp    4033bb <fmt_fp+0x5bb>
  403510:	41 83 e9 01          	sub    $0x1,%r9d
  403514:	44 89 8d dc e2 ff ff 	mov    %r9d,-0x1d24(%rbp)
  40351b:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  403522:	f6 85 a0 e2 ff ff 20 	testb  $0x20,-0x1d60(%rbp)
  403529:	8b 9d 98 e2 ff ff    	mov    -0x1d68(%rbp),%ebx
  40352f:	48 8d 47 09          	lea    0x9(%rdi),%rax
  403533:	48 0f 44 c7          	cmove  %rdi,%rax
  403537:	83 c3 02             	add    $0x2,%ebx
  40353a:	48 89 85 88 e2 ff ff 	mov    %rax,-0x1d78(%rbp)
  403541:	41 83 ff 0e          	cmp    $0xe,%r15d
  403545:	0f 86 28 0c 00 00    	jbe    404173 <fmt_fp+0x1373>
  40354b:	d9 05 af 4f 00 00    	flds   0x4faf(%rip)        # 408500 <states+0x1e0>
  403551:	45 85 c9             	test   %r9d,%r9d
  403554:	0f 84 54 11 00 00    	je     4046ae <fmt_fp+0x18ae>
  40355a:	44 89 c9             	mov    %r9d,%ecx
  40355d:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403561:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  403568:	cc cc cc 
  40356b:	f7 d9                	neg    %ecx
  40356d:	4d 89 e8             	mov    %r13,%r8
  403570:	41 0f 48 c9          	cmovs  %r9d,%ecx
  403574:	48 63 c9             	movslq %ecx,%rcx
  403577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40357e:	00 00 
  403580:	48 89 c8             	mov    %rcx,%rax
  403583:	4c 89 c7             	mov    %r8,%rdi
  403586:	49 83 e8 01          	sub    $0x1,%r8
  40358a:	48 f7 e6             	mul    %rsi
  40358d:	48 89 c8             	mov    %rcx,%rax
  403590:	48 c1 ea 03          	shr    $0x3,%rdx
  403594:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  403598:	4d 01 d2             	add    %r10,%r10
  40359b:	4c 29 d0             	sub    %r10,%rax
  40359e:	83 c0 30             	add    $0x30,%eax
  4035a1:	48 83 f9 09          	cmp    $0x9,%rcx
  4035a5:	48 89 d1             	mov    %rdx,%rcx
  4035a8:	41 88 00             	mov    %al,(%r8)
  4035ab:	77 d3                	ja     403580 <fmt_fp+0x780>
  4035ad:	4d 39 e8             	cmp    %r13,%r8
  4035b0:	0f 84 9f 0d 00 00    	je     404355 <fmt_fp+0x1555>
  4035b6:	b8 2d 00 00 00       	mov    $0x2d,%eax
  4035bb:	45 85 c9             	test   %r9d,%r9d
  4035be:	78 05                	js     4035c5 <fmt_fp+0x7c5>
  4035c0:	b8 2b 00 00 00       	mov    $0x2b,%eax
  4035c5:	8b b5 a0 e2 ff ff    	mov    -0x1d60(%rbp),%esi
  4035cb:	41 88 40 ff          	mov    %al,-0x1(%r8)
  4035cf:	49 8d 40 fe          	lea    -0x2(%r8),%rax
  4035d3:	d9 ee                	fldz
  4035d5:	d9 ca                	fxch   %st(2)
  4035d7:	48 89 85 a8 e2 ff ff 	mov    %rax,-0x1d58(%rbp)
  4035de:	45 85 ff             	test   %r15d,%r15d
  4035e1:	48 8d 0d 28 4d 00 00 	lea    0x4d28(%rip),%rcx        # 408310 <xdigits>
  4035e8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  4035ee:	8d 46 0f             	lea    0xf(%rsi),%eax
  4035f1:	40 0f 9f c7          	setg   %dil
  4035f5:	83 e6 20             	and    $0x20,%esi
  4035f8:	41 88 40 fe          	mov    %al,-0x2(%r8)
  4035fc:	4c 89 e8             	mov    %r13,%rax
  4035ff:	d9 bd ce e2 ff ff    	fnstcw -0x1d32(%rbp)
  403605:	0f b7 95 ce e2 ff ff 	movzwl -0x1d32(%rbp),%edx
  40360c:	80 ce 0c             	or     $0xc,%dh
  40360f:	66 89 95 cc e2 ff ff 	mov    %dx,-0x1d34(%rbp)
  403616:	eb 1b                	jmp    403633 <fmt_fp+0x833>
  403618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40361f:	00 
  403620:	4c 89 c0             	mov    %r8,%rax
  403623:	d9 c2                	fld    %st(2)
  403625:	d9 c9                	fxch   %st(1)
  403627:	db e9                	fucomi %st(1),%st
  403629:	dd d9                	fstp   %st(1)
  40362b:	7a 06                	jp     403633 <fmt_fp+0x833>
  40362d:	0f 84 dc 10 00 00    	je     40470f <fmt_fp+0x190f>
  403633:	d9 c0                	fld    %st(0)
  403635:	d9 ad cc e2 ff ff    	fldcw  -0x1d34(%rbp)
  40363b:	db 9d c0 e2 ff ff    	fistpl -0x1d40(%rbp)
  403641:	d9 ad ce e2 ff ff    	fldcw  -0x1d32(%rbp)
  403647:	4c 8d 40 01          	lea    0x1(%rax),%r8
  40364b:	db 85 c0 e2 ff ff    	fildl  -0x1d40(%rbp)
  403651:	48 63 95 c0 e2 ff ff 	movslq -0x1d40(%rbp),%rdx
  403658:	44 0f b6 1c 11       	movzbl (%rcx,%rdx,1),%r11d
  40365d:	de e9                	fsubrp %st,%st(1)
  40365f:	41 09 f3             	or     %esi,%r11d
  403662:	44 88 18             	mov    %r11b,(%rax)
  403665:	d8 c9                	fmul   %st(1),%st
  403667:	4c 39 e8             	cmp    %r13,%rax
  40366a:	75 b4                	jne    403620 <fmt_fp+0x820>
  40366c:	d9 c2                	fld    %st(2)
  40366e:	df e9                	fucomip %st(1),%st
  403670:	0f 9a c2             	setp   %dl
  403673:	41 0f 45 d1          	cmovne %r9d,%edx
  403677:	84 d2                	test   %dl,%dl
  403679:	0f 85 31 06 00 00    	jne    403cb0 <fmt_fp+0xeb0>
  40367f:	40 84 ff             	test   %dil,%dil
  403682:	0f 85 28 06 00 00    	jne    403cb0 <fmt_fp+0xeb0>
  403688:	dd d8                	fstp   %st(0)
  40368a:	dd d8                	fstp   %st(0)
  40368c:	dd d8                	fstp   %st(0)
  40368e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403695:	74 08                	je     40369f <fmt_fp+0x89f>
  403697:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  40369b:	4c 8d 40 02          	lea    0x2(%rax),%r8
  40369f:	4d 89 ec             	mov    %r13,%r12
  4036a2:	ba fd ff ff 7f       	mov    $0x7ffffffd,%edx
  4036a7:	48 63 c3             	movslq %ebx,%rax
  4036aa:	49 63 cf             	movslq %r15d,%rcx
  4036ad:	4c 2b a5 a8 e2 ff ff 	sub    -0x1d58(%rbp),%r12
  4036b4:	4c 29 e2             	sub    %r12,%rdx
  4036b7:	48 29 c2             	sub    %rax,%rdx
  4036ba:	48 39 d1             	cmp    %rdx,%rcx
  4036bd:	0f 8f 24 10 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  4036c3:	4d 29 e8             	sub    %r13,%r8
  4036c6:	45 85 ff             	test   %r15d,%r15d
  4036c9:	74 0d                	je     4036d8 <fmt_fp+0x8d8>
  4036cb:	49 8d 50 ff          	lea    -0x1(%r8),%rdx
  4036cf:	48 39 d1             	cmp    %rdx,%rcx
  4036d2:	0f 8d ac 0c 00 00    	jge    404384 <fmt_fp+0x1584>
  4036d8:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  4036dc:	45 89 f7             	mov    %r14d,%r15d
  4036df:	44 01 fb             	add    %r15d,%ebx
  4036e2:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4036e9:	20 01 
  4036eb:	0f 85 a0 0b 00 00    	jne    404291 <fmt_fp+0x1491>
  4036f1:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  4036f7:	39 d3                	cmp    %edx,%ebx
  4036f9:	0f 8d 1e fd ff ff    	jge    40341d <fmt_fp+0x61d>
  4036ff:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403706:	89 d9                	mov    %ebx,%ecx
  403708:	be 20 00 00 00       	mov    $0x20,%esi
  40370d:	48 89 85 a0 e2 ff ff 	mov    %rax,-0x1d60(%rbp)
  403714:	4c 89 85 c0 e2 ff ff 	mov    %r8,-0x1d40(%rbp)
  40371b:	e8 e0 f5 ff ff       	call   402d00 <pad.part.0>
  403720:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403727:	4c 8b 85 c0 e2 ff ff 	mov    -0x1d40(%rbp),%r8
  40372e:	f6 00 20             	testb  $0x20,(%rax)
  403731:	48 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%rax
  403738:	0f 85 ef fc ff ff    	jne    40342d <fmt_fp+0x62d>
  40373e:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  403745:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  40374c:	48 89 c6             	mov    %rax,%rsi
  40374f:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  403756:	e8 45 2e 00 00       	call   4065a0 <__fwritex>
  40375b:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403761:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  403767:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  40376e:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  403775:	35 00 00 01 00       	xor    $0x10000,%eax
  40377a:	a9 00 20 01 00       	test   $0x12000,%eax
  40377f:	75 37                	jne    4037b8 <fmt_fp+0x9b8>
  403781:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  403788:	75 2e                	jne    4037b8 <fmt_fp+0x9b8>
  40378a:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403790:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403797:	89 d9                	mov    %ebx,%ecx
  403799:	be 30 00 00 00       	mov    $0x30,%esi
  40379e:	4c 89 85 a0 e2 ff ff 	mov    %r8,-0x1d60(%rbp)
  4037a5:	e8 56 f5 ff ff       	call   402d00 <pad.part.0>
  4037aa:	c6 85 c0 e2 ff ff 00 	movb   $0x0,-0x1d40(%rbp)
  4037b1:	4c 8b 85 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r8
  4037b8:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4037bf:	f6 00 20             	testb  $0x20,(%rax)
  4037c2:	0f 85 05 0b 00 00    	jne    4042cd <fmt_fp+0x14cd>
  4037c8:	48 89 c2             	mov    %rax,%rdx
  4037cb:	4c 89 c6             	mov    %r8,%rsi
  4037ce:	4c 89 ef             	mov    %r13,%rdi
  4037d1:	45 29 f7             	sub    %r14d,%r15d
  4037d4:	e8 c7 2d 00 00       	call   4065a0 <__fwritex>
  4037d9:	45 85 ff             	test   %r15d,%r15d
  4037dc:	0f 8e 76 fc ff ff    	jle    403458 <fmt_fp+0x658>
  4037e2:	e9 5b fc ff ff       	jmp    403442 <fmt_fp+0x642>
  4037e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4037ee:	00 00 
  4037f0:	44 89 c9             	mov    %r9d,%ecx
  4037f3:	45 31 c9             	xor    %r9d,%r9d
  4037f6:	f7 d9                	neg    %ecx
  4037f8:	49 39 dc             	cmp    %rbx,%r12
  4037fb:	0f 82 2b f9 ff ff    	jb     40312c <fmt_fp+0x32c>
  403801:	41 8b 34 24          	mov    (%r12),%esi
  403805:	85 f6                	test   %esi,%esi
  403807:	0f 84 66 05 00 00    	je     403d73 <fmt_fp+0xf73>
  40380d:	41 83 fe 66          	cmp    $0x66,%r14d
  403811:	0f 85 cf f9 ff ff    	jne    4031e6 <fmt_fp+0x3e6>
  403817:	4c 89 e0             	mov    %r12,%rax
  40381a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403820:	49 89 c4             	mov    %rax,%r12
  403823:	48 89 f8             	mov    %rdi,%rax
  403826:	e9 a3 f9 ff ff       	jmp    4031ce <fmt_fp+0x3ce>
  40382b:	a8 01                	test   $0x1,%al
  40382d:	0f 84 2f 0b 00 00    	je     404362 <fmt_fp+0x1562>
  403833:	db 2d e7 4c 00 00    	fldt   0x4ce7(%rip)        # 408520 <states+0x200>
  403839:	d1 f9                	sar    $1,%ecx
  40383b:	41 39 c9             	cmp    %ecx,%r9d
  40383e:	0f 82 06 0b 00 00    	jb     40434a <fmt_fp+0x154a>
  403844:	44 39 c9             	cmp    %r9d,%ecx
  403847:	0f 84 31 0e 00 00    	je     40467e <fmt_fp+0x187e>
  40384d:	d9 05 a9 4c 00 00    	flds   0x4ca9(%rip)        # 4084fc <states+0x1dc>
  403853:	8b 95 98 e2 ff ff    	mov    -0x1d68(%rbp),%edx
  403859:	85 d2                	test   %edx,%edx
  40385b:	74 14                	je     403871 <fmt_fp+0xa71>
  40385d:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  403864:	80 38 2d             	cmpb   $0x2d,(%rax)
  403867:	75 08                	jne    403871 <fmt_fp+0xa71>
  403869:	d9 c9                	fxch   %st(1)
  40386b:	d9 e0                	fchs
  40386d:	d9 c9                	fxch   %st(1)
  40386f:	d9 e0                	fchs
  403871:	d8 c1                	fadd   %st(1),%st
  403873:	44 89 d0             	mov    %r10d,%eax
  403876:	44 29 c8             	sub    %r9d,%eax
  403879:	df e9                	fucomip %st(1),%st
  40387b:	dd d8                	fstp   %st(0)
  40387d:	0f 8a 4c 09 00 00    	jp     4041cf <fmt_fp+0x13cf>
  403883:	0f 85 46 09 00 00    	jne    4041cf <fmt_fp+0x13cf>
  403889:	89 06                	mov    %eax,(%rsi)
  40388b:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  40388f:	48 39 d3             	cmp    %rdx,%rbx
  403892:	48 0f 47 da          	cmova  %rdx,%rbx
  403896:	49 39 dc             	cmp    %rbx,%r12
  403899:	72 0e                	jb     4038a9 <fmt_fp+0xaa9>
  40389b:	eb 13                	jmp    4038b0 <fmt_fp+0xab0>
  40389d:	0f 1f 00             	nopl   (%rax)
  4038a0:	48 83 eb 04          	sub    $0x4,%rbx
  4038a4:	49 39 dc             	cmp    %rbx,%r12
  4038a7:	73 07                	jae    4038b0 <fmt_fp+0xab0>
  4038a9:	8b 43 fc             	mov    -0x4(%rbx),%eax
  4038ac:	85 c0                	test   %eax,%eax
  4038ae:	74 f0                	je     4038a0 <fmt_fp+0xaa0>
  4038b0:	41 83 fe 67          	cmp    $0x67,%r14d
  4038b4:	0f 84 25 05 00 00    	je     403ddf <fmt_fp+0xfdf>
  4038ba:	45 85 ff             	test   %r15d,%r15d
  4038bd:	0f 85 ba 04 00 00    	jne    403d7d <fmt_fp+0xf7d>
  4038c3:	44 8b 8d c8 e2 ff ff 	mov    -0x1d38(%rbp),%r9d
  4038ca:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  4038d0:	41 c1 e9 03          	shr    $0x3,%r9d
  4038d4:	41 83 e1 01          	and    $0x1,%r9d
  4038d8:	41 83 c1 01          	add    $0x1,%r9d
  4038dc:	45 29 ca             	sub    %r9d,%r10d
  4038df:	41 83 fe 66          	cmp    $0x66,%r14d
  4038e3:	0f 84 80 0b 00 00    	je     404469 <fmt_fp+0x1669>
  4038e9:	4d 63 d2             	movslq %r10d,%r10
  4038ec:	85 ff                	test   %edi,%edi
  4038ee:	0f 84 9e 0d 00 00    	je     404692 <fmt_fp+0x1892>
  4038f4:	49 b8 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r8
  4038fb:	cc cc cc 
  4038fe:	89 fe                	mov    %edi,%esi
  403900:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  403904:	f7 de                	neg    %esi
  403906:	4c 89 e9             	mov    %r13,%rcx
  403909:	0f 48 f7             	cmovs  %edi,%esi
  40390c:	48 63 f6             	movslq %esi,%rsi
  40390f:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403914:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40391b:	00 00 00 00 
  40391f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403926:	00 00 00 00 
  40392a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403931:	00 00 00 00 
  403935:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40393c:	00 00 00 00 
  403940:	48 89 f0             	mov    %rsi,%rax
  403943:	48 83 e9 01          	sub    $0x1,%rcx
  403947:	49 f7 e0             	mul    %r8
  40394a:	48 89 f0             	mov    %rsi,%rax
  40394d:	48 c1 ea 03          	shr    $0x3,%rdx
  403951:	4c 8d 1c 92          	lea    (%rdx,%rdx,4),%r11
  403955:	4d 01 db             	add    %r11,%r11
  403958:	4c 29 d8             	sub    %r11,%rax
  40395b:	83 c0 30             	add    $0x30,%eax
  40395e:	48 83 fe 09          	cmp    $0x9,%rsi
  403962:	48 89 d6             	mov    %rdx,%rsi
  403965:	88 01                	mov    %al,(%rcx)
  403967:	77 d7                	ja     403940 <fmt_fp+0xb40>
  403969:	4c 89 e8             	mov    %r13,%rax
  40396c:	48 29 c8             	sub    %rcx,%rax
  40396f:	48 83 f8 01          	cmp    $0x1,%rax
  403973:	7f 1e                	jg     403993 <fmt_fp+0xb93>
  403975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40397c:	00 00 00 00 
  403980:	48 83 e9 01          	sub    $0x1,%rcx
  403984:	4c 89 e8             	mov    %r13,%rax
  403987:	c6 01 30             	movb   $0x30,(%rcx)
  40398a:	48 29 c8             	sub    %rcx,%rax
  40398d:	48 83 f8 01          	cmp    $0x1,%rax
  403991:	7e ed                	jle    403980 <fmt_fp+0xb80>
  403993:	c1 ff 1f             	sar    $0x1f,%edi
  403996:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
  40399a:	83 e7 02             	and    $0x2,%edi
  40399d:	49 29 c5             	sub    %rax,%r13
  4039a0:	48 89 85 78 e2 ff ff 	mov    %rax,-0x1d88(%rbp)
  4039a7:	83 c7 2b             	add    $0x2b,%edi
  4039aa:	40 88 79 ff          	mov    %dil,-0x1(%rcx)
  4039ae:	0f b6 bd a0 e2 ff ff 	movzbl -0x1d60(%rbp),%edi
  4039b5:	40 88 79 fe          	mov    %dil,-0x2(%rcx)
  4039b9:	4d 39 d5             	cmp    %r10,%r13
  4039bc:	0f 8f 25 0d 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  4039c2:	45 01 e9             	add    %r13d,%r9d
  4039c5:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4039ca:	2b 85 98 e2 ff ff    	sub    -0x1d68(%rbp),%eax
  4039d0:	41 39 c1             	cmp    %eax,%r9d
  4039d3:	0f 8f 0e 0d 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  4039d9:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
  4039df:	8b bd b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edi
  4039e5:	44 01 c8             	add    %r9d,%eax
  4039e8:	39 f8                	cmp    %edi,%eax
  4039ea:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
  4039f0:	0f 9d 85 87 e2 ff ff 	setge  -0x1d79(%rbp)
  4039f7:	66 f7 85 c9 e2 ff ff 	testw  $0x120,-0x1d37(%rbp)
  4039fe:	20 01 
  403a00:	0f 85 3c 07 00 00    	jne    404142 <fmt_fp+0x1342>
  403a06:	39 f8                	cmp    %edi,%eax
  403a08:	0f 8d c5 06 00 00    	jge    4040d3 <fmt_fp+0x12d3>
  403a0e:	4c 8b ad b8 e2 ff ff 	mov    -0x1d48(%rbp),%r13
  403a15:	89 fa                	mov    %edi,%edx
  403a17:	89 c1                	mov    %eax,%ecx
  403a19:	be 20 00 00 00       	mov    $0x20,%esi
  403a1e:	4c 89 ef             	mov    %r13,%rdi
  403a21:	e8 da f2 ff ff       	call   402d00 <pad.part.0>
  403a26:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  403a2b:	0f 84 b2 06 00 00    	je     4040e3 <fmt_fp+0x12e3>
  403a31:	41 83 fe 66          	cmp    $0x66,%r14d
  403a35:	0f 84 75 04 00 00    	je     403eb0 <fmt_fp+0x10b0>
  403a3b:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403a40:	49 39 dc             	cmp    %rbx,%r12
  403a43:	48 0f 43 d8          	cmovae %rax,%rbx
  403a47:	45 85 ff             	test   %r15d,%r15d
  403a4a:	0f 88 af 01 00 00    	js     403bff <fmt_fp+0xdff>
  403a50:	49 39 dc             	cmp    %rbx,%r12
  403a53:	0f 83 a6 01 00 00    	jae    403bff <fmt_fp+0xdff>
  403a59:	b8 30 30 30 30       	mov    $0x30303030,%eax
  403a5e:	4c 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%r10
  403a65:	4d 89 e6             	mov    %r12,%r14
  403a68:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  403a6c:	4c 89 a5 c0 e2 ff ff 	mov    %r12,-0x1d40(%rbp)
  403a73:	66 0f 6e c0          	movd   %eax,%xmm0
  403a77:	49 89 dc             	mov    %rbx,%r12
  403a7a:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403a81:	cc cc cc 
  403a84:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
  403a88:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403a8d:	0f 1f 00             	nopl   (%rax)
  403a90:	41 8b 0e             	mov    (%r14),%ecx
  403a93:	4c 89 c7             	mov    %r8,%rdi
  403a96:	48 85 c9             	test   %rcx,%rcx
  403a99:	0f 84 e1 01 00 00    	je     403c80 <fmt_fp+0xe80>
  403a9f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403aa6:	00 00 00 00 
  403aaa:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403ab1:	00 00 00 00 
  403ab5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403abc:	00 00 00 00 
  403ac0:	48 89 c8             	mov    %rcx,%rax
  403ac3:	48 83 ef 01          	sub    $0x1,%rdi
  403ac7:	49 f7 e5             	mul    %r13
  403aca:	48 89 c8             	mov    %rcx,%rax
  403acd:	48 c1 ea 03          	shr    $0x3,%rdx
  403ad1:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  403ad5:	48 01 f6             	add    %rsi,%rsi
  403ad8:	48 29 f0             	sub    %rsi,%rax
  403adb:	83 c0 30             	add    $0x30,%eax
  403ade:	48 83 f9 09          	cmp    $0x9,%rcx
  403ae2:	48 89 d1             	mov    %rdx,%rcx
  403ae5:	88 07                	mov    %al,(%rdi)
  403ae7:	77 d7                	ja     403ac0 <fmt_fp+0xcc0>
  403ae9:	4c 39 c7             	cmp    %r8,%rdi
  403aec:	0f 84 8e 01 00 00    	je     403c80 <fmt_fp+0xe80>
  403af2:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403af9:	0f 84 96 01 00 00    	je     403c95 <fmt_fp+0xe95>
  403aff:	48 39 fb             	cmp    %rdi,%rbx
  403b02:	0f 83 c9 02 00 00    	jae    403dd1 <fmt_fp+0xfd1>
  403b08:	48 89 fe             	mov    %rdi,%rsi
  403b0b:	48 89 f8             	mov    %rdi,%rax
  403b0e:	48 29 de             	sub    %rbx,%rsi
  403b11:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  403b15:	48 83 fa 0e          	cmp    $0xe,%rdx
  403b19:	76 3d                	jbe    403b58 <fmt_fp+0xd58>
  403b1b:	48 89 f1             	mov    %rsi,%rcx
  403b1e:	48 89 fa             	mov    %rdi,%rdx
  403b21:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  403b25:	48 29 ca             	sub    %rcx,%rdx
  403b28:	f6 c1 10             	test   $0x10,%cl
  403b2b:	74 13                	je     403b40 <fmt_fp+0xd40>
  403b2d:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403b31:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403b35:	48 39 d0             	cmp    %rdx,%rax
  403b38:	74 16                	je     403b50 <fmt_fp+0xd50>
  403b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403b40:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403b44:	48 83 e8 20          	sub    $0x20,%rax
  403b48:	0f 11 00             	movups %xmm0,(%rax)
  403b4b:	48 39 d0             	cmp    %rdx,%rax
  403b4e:	75 f0                	jne    403b40 <fmt_fp+0xd40>
  403b50:	48 39 f1             	cmp    %rsi,%rcx
  403b53:	74 3b                	je     403b90 <fmt_fp+0xd90>
  403b55:	48 29 cf             	sub    %rcx,%rdi
  403b58:	48 89 d8             	mov    %rbx,%rax
  403b5b:	48 f7 d0             	not    %rax
  403b5e:	48 01 f8             	add    %rdi,%rax
  403b61:	48 83 ef 01          	sub    $0x1,%rdi
  403b65:	c6 07 30             	movb   $0x30,(%rdi)
  403b68:	48 39 fb             	cmp    %rdi,%rbx
  403b6b:	73 23                	jae    403b90 <fmt_fp+0xd90>
  403b6d:	a8 01                	test   $0x1,%al
  403b6f:	74 0f                	je     403b80 <fmt_fp+0xd80>
  403b71:	48 83 ef 01          	sub    $0x1,%rdi
  403b75:	c6 07 30             	movb   $0x30,(%rdi)
  403b78:	48 39 fb             	cmp    %rdi,%rbx
  403b7b:	73 13                	jae    403b90 <fmt_fp+0xd90>
  403b7d:	0f 1f 00             	nopl   (%rax)
  403b80:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  403b84:	48 83 ef 02          	sub    $0x2,%rdi
  403b88:	c6 07 30             	movb   $0x30,(%rdi)
  403b8b:	48 39 fb             	cmp    %rdi,%rbx
  403b8e:	72 f0                	jb     403b80 <fmt_fp+0xd80>
  403b90:	41 8b 02             	mov    (%r10),%eax
  403b93:	49 89 d9             	mov    %rbx,%r9
  403b96:	83 e0 20             	and    $0x20,%eax
  403b99:	4c 89 c1             	mov    %r8,%rcx
  403b9c:	4c 29 c9             	sub    %r9,%rcx
  403b9f:	85 c0                	test   %eax,%eax
  403ba1:	75 47                	jne    403bea <fmt_fp+0xdea>
  403ba3:	49 63 f7             	movslq %r15d,%rsi
  403ba6:	4c 89 d2             	mov    %r10,%rdx
  403ba9:	4c 89 cf             	mov    %r9,%rdi
  403bac:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403bb3:	48 39 ce             	cmp    %rcx,%rsi
  403bb6:	48 89 8d a0 e2 ff ff 	mov    %rcx,-0x1d60(%rbp)
  403bbd:	48 0f 4f f1          	cmovg  %rcx,%rsi
  403bc1:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403bc8:	e8 d3 29 00 00       	call   4065a0 <__fwritex>
  403bcd:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403bd4:	66 0f 6f 05 54 49 00 	movdqa 0x4954(%rip),%xmm0        # 408530 <states+0x210>
  403bdb:	00 
  403bdc:	48 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%rcx
  403be3:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403bea:	49 83 c6 04          	add    $0x4,%r14
  403bee:	41 29 cf             	sub    %ecx,%r15d
  403bf1:	4d 39 e6             	cmp    %r12,%r14
  403bf4:	73 09                	jae    403bff <fmt_fp+0xdff>
  403bf6:	45 85 ff             	test   %r15d,%r15d
  403bf9:	0f 89 91 fe ff ff    	jns    403a90 <fmt_fp+0xc90>
  403bff:	41 8d 57 12          	lea    0x12(%r15),%edx
  403c03:	83 fa 12             	cmp    $0x12,%edx
  403c06:	7e 16                	jle    403c1e <fmt_fp+0xe1e>
  403c08:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403c0f:	b9 12 00 00 00       	mov    $0x12,%ecx
  403c14:	be 30 00 00 00       	mov    $0x30,%esi
  403c19:	e8 e2 f0 ff ff       	call   402d00 <pad.part.0>
  403c1e:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  403c25:	f6 00 20             	testb  $0x20,(%rax)
  403c28:	0f 84 86 05 00 00    	je     4041b4 <fmt_fp+0x13b4>
  403c2e:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  403c34:	80 f4 20             	xor    $0x20,%ah
  403c37:	a9 00 20 01 00       	test   $0x12000,%eax
  403c3c:	75 26                	jne    403c64 <fmt_fp+0xe64>
  403c3e:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  403c45:	75 1d                	jne    403c64 <fmt_fp+0xe64>
  403c47:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  403c4d:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  403c53:	be 20 00 00 00       	mov    $0x20,%esi
  403c58:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  403c5f:	e8 9c f0 ff ff       	call   402d00 <pad.part.0>
  403c64:	8b bd b0 e2 ff ff    	mov    -0x1d50(%rbp),%edi
  403c6a:	8b 85 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%eax
  403c70:	39 c7                	cmp    %eax,%edi
  403c72:	0f 4d c7             	cmovge %edi,%eax
  403c75:	e9 65 f7 ff ff       	jmp    4033df <fmt_fp+0x5df>
  403c7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403c80:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  403c84:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  403c88:	4c 39 b5 c0 e2 ff ff 	cmp    %r14,-0x1d40(%rbp)
  403c8f:	0f 85 73 fe ff ff    	jne    403b08 <fmt_fp+0xd08>
  403c95:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  403c99:	41 f6 02 20          	testb  $0x20,(%r10)
  403c9d:	74 1e                	je     403cbd <fmt_fp+0xebd>
  403c9f:	4c 89 c1             	mov    %r8,%rcx
  403ca2:	4c 29 c9             	sub    %r9,%rcx
  403ca5:	e9 40 ff ff ff       	jmp    403bea <fmt_fp+0xdea>
  403caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403cb0:	c6 40 01 2e          	movb   $0x2e,0x1(%rax)
  403cb4:	48 83 c0 02          	add    $0x2,%rax
  403cb8:	e9 66 f9 ff ff       	jmp    403623 <fmt_fp+0x823>
  403cbd:	4c 89 d2             	mov    %r10,%rdx
  403cc0:	be 01 00 00 00       	mov    $0x1,%esi
  403cc5:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403ccc:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403cd3:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403cda:	e8 c1 28 00 00       	call   4065a0 <__fwritex>
  403cdf:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403ce6:	8b 95 c8 e2 ff ff    	mov    -0x1d38(%rbp),%edx
  403cec:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403cf3:	66 0f 6f 05 35 48 00 	movdqa 0x4835(%rip),%xmm0        # 408530 <states+0x210>
  403cfa:	00 
  403cfb:	41 8b 02             	mov    (%r10),%eax
  403cfe:	83 e2 08             	and    $0x8,%edx
  403d01:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403d08:	83 e0 20             	and    $0x20,%eax
  403d0b:	44 09 fa             	or     %r15d,%edx
  403d0e:	0f 84 85 fe ff ff    	je     403b99 <fmt_fp+0xd99>
  403d14:	85 c0                	test   %eax,%eax
  403d16:	75 87                	jne    403c9f <fmt_fp+0xe9f>
  403d18:	4c 89 d2             	mov    %r10,%rdx
  403d1b:	be 01 00 00 00       	mov    $0x1,%esi
  403d20:	48 8d 3d 8a 44 00 00 	lea    0x448a(%rip),%rdi        # 4081b1 <_fini+0x11ad>
  403d27:	4c 89 85 98 e2 ff ff 	mov    %r8,-0x1d68(%rbp)
  403d2e:	4c 89 8d a0 e2 ff ff 	mov    %r9,-0x1d60(%rbp)
  403d35:	4c 89 95 a8 e2 ff ff 	mov    %r10,-0x1d58(%rbp)
  403d3c:	e8 5f 28 00 00       	call   4065a0 <__fwritex>
  403d41:	4c 8b 95 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r10
  403d48:	4c 8b 85 98 e2 ff ff 	mov    -0x1d68(%rbp),%r8
  403d4f:	66 0f 6f 05 d9 47 00 	movdqa 0x47d9(%rip),%xmm0        # 408530 <states+0x210>
  403d56:	00 
  403d57:	4c 8b 8d a0 e2 ff ff 	mov    -0x1d60(%rbp),%r9
  403d5e:	41 8b 02             	mov    (%r10),%eax
  403d61:	83 e0 20             	and    $0x20,%eax
  403d64:	e9 30 fe ff ff       	jmp    403b99 <fmt_fp+0xd99>
  403d69:	44 89 f8             	mov    %r15d,%eax
  403d6c:	31 ff                	xor    %edi,%edi
  403d6e:	e9 e5 f4 ff ff       	jmp    403258 <fmt_fp+0x458>
  403d73:	49 8d 44 24 04       	lea    0x4(%r12),%rax
  403d78:	e9 44 f4 ff ff       	jmp    4031c1 <fmt_fp+0x3c1>
  403d7d:	41 81 ff fd ff ff 7f 	cmp    $0x7ffffffd,%r15d
  403d84:	0f 8f 5d 09 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  403d8a:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403d91:	45 8d 4f 02          	lea    0x2(%r15),%r9d
  403d95:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403d9b:	45 29 ca             	sub    %r9d,%r10d
  403d9e:	41 83 ce 20          	or     $0x20,%r14d
  403da2:	41 83 fe 66          	cmp    $0x66,%r14d
  403da6:	0f 85 3d fb ff ff    	jne    4038e9 <fmt_fp+0xae9>
  403dac:	44 39 d7             	cmp    %r10d,%edi
  403daf:	0f 8f 32 09 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  403db5:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403dbb:	85 ff                	test   %edi,%edi
  403dbd:	0f 8e 02 fc ff ff    	jle    4039c5 <fmt_fp+0xbc5>
  403dc3:	41 01 f9             	add    %edi,%r9d
  403dc6:	41 be 66 00 00 00    	mov    $0x66,%r14d
  403dcc:	e9 f4 fb ff ff       	jmp    4039c5 <fmt_fp+0xbc5>
  403dd1:	41 8b 02             	mov    (%r10),%eax
  403dd4:	49 89 f9             	mov    %rdi,%r9
  403dd7:	83 e0 20             	and    $0x20,%eax
  403dda:	e9 ba fd ff ff       	jmp    403b99 <fmt_fp+0xd99>
  403ddf:	45 85 ff             	test   %r15d,%r15d
  403de2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  403de8:	45 0f 4f cf          	cmovg  %r15d,%r9d
  403dec:	41 39 f9             	cmp    %edi,%r9d
  403def:	0f 8e e9 04 00 00    	jle    4042de <fmt_fp+0x14de>
  403df5:	83 ff fc             	cmp    $0xfffffffc,%edi
  403df8:	0f 8c e0 04 00 00    	jl     4042de <fmt_fp+0x14de>
  403dfe:	8d 47 01             	lea    0x1(%rdi),%eax
  403e01:	45 89 cf             	mov    %r9d,%r15d
  403e04:	83 ad a0 e2 ff ff 01 	subl   $0x1,-0x1d60(%rbp)
  403e0b:	41 29 c7             	sub    %eax,%r15d
  403e0e:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  403e15:	0f 85 9c 05 00 00    	jne    4043b7 <fmt_fp+0x15b7>
  403e1b:	be 09 00 00 00       	mov    $0x9,%esi
  403e20:	49 39 dc             	cmp    %rbx,%r12
  403e23:	73 1f                	jae    403e44 <fmt_fp+0x1044>
  403e25:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  403e29:	45 85 c9             	test   %r9d,%r9d
  403e2c:	74 16                	je     403e44 <fmt_fp+0x1044>
  403e2e:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  403e35:	d1 c8                	ror    $1,%eax
  403e37:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  403e3c:	0f 86 e0 04 00 00    	jbe    404322 <fmt_fp+0x1522>
  403e42:	31 f6                	xor    %esi,%esi
  403e44:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  403e4b:	41 83 ce 20          	or     $0x20,%r14d
  403e4f:	41 83 fe 66          	cmp    $0x66,%r14d
  403e53:	0f 85 ac 05 00 00    	jne    404405 <fmt_fp+0x1605>
  403e59:	48 89 d8             	mov    %rbx,%rax
  403e5c:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  403e63:	ba 00 00 00 00       	mov    $0x0,%edx
  403e68:	48 c1 f8 02          	sar    $0x2,%rax
  403e6c:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  403e71:	48 29 f0             	sub    %rsi,%rax
  403e74:	48 0f 48 c2          	cmovs  %rdx,%rax
  403e78:	49 63 d7             	movslq %r15d,%rdx
  403e7b:	48 39 d0             	cmp    %rdx,%rax
  403e7e:	48 0f 4f c2          	cmovg  %rdx,%rax
  403e82:	48 85 c0             	test   %rax,%rax
  403e85:	0f 84 66 08 00 00    	je     4046f1 <fmt_fp+0x18f1>
  403e8b:	48 3d fd ff ff 7f    	cmp    $0x7ffffffd,%rax
  403e91:	0f 8f 50 08 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  403e97:	44 8d 48 02          	lea    0x2(%rax),%r9d
  403e9b:	41 ba ff ff ff 7f    	mov    $0x7fffffff,%r10d
  403ea1:	41 89 c7             	mov    %eax,%r15d
  403ea4:	45 29 ca             	sub    %r9d,%r10d
  403ea7:	e9 00 ff ff ff       	jmp    403dac <fmt_fp+0xfac>
  403eac:	0f 1f 40 00          	nopl   0x0(%rax)
  403eb0:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  403eb7:	44 89 bd a8 e2 ff ff 	mov    %r15d,-0x1d58(%rbp)
  403ebe:	bf 30 30 30 30       	mov    $0x30303030,%edi
  403ec3:	49 bd cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r13
  403eca:	cc cc cc 
  403ecd:	4c 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%r15
  403ed4:	48 89 9d c0 e2 ff ff 	mov    %rbx,-0x1d40(%rbp)
  403edb:	66 0f 6e c7          	movd   %edi,%xmm0
  403edf:	4c 39 e0             	cmp    %r12,%rax
  403ee2:	49 89 c6             	mov    %rax,%r14
  403ee5:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  403eea:	4c 0f 46 e0          	cmovbe %rax,%r12
  403eee:	4c 89 e3             	mov    %r12,%rbx
  403ef1:	0f 1f 40 00          	nopl   0x0(%rax)
  403ef5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403efc:	00 00 00 00 
  403f00:	41 8b 0c 24          	mov    (%r12),%ecx
  403f04:	48 85 c9             	test   %rcx,%rcx
  403f07:	0f 84 43 02 00 00    	je     404150 <fmt_fp+0x1350>
  403f0d:	48 8d 75 a9          	lea    -0x57(%rbp),%rsi
  403f11:	48 89 f7             	mov    %rsi,%rdi
  403f14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f1b:	00 00 00 00 
  403f1f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f26:	00 00 00 00 
  403f2a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f31:	00 00 00 00 
  403f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403f3c:	00 00 00 00 
  403f40:	48 89 c8             	mov    %rcx,%rax
  403f43:	48 83 ef 01          	sub    $0x1,%rdi
  403f47:	49 f7 e5             	mul    %r13
  403f4a:	48 89 c8             	mov    %rcx,%rax
  403f4d:	48 c1 ea 03          	shr    $0x3,%rdx
  403f51:	4c 8d 04 92          	lea    (%rdx,%rdx,4),%r8
  403f55:	4d 01 c0             	add    %r8,%r8
  403f58:	4c 29 c0             	sub    %r8,%rax
  403f5b:	83 c0 30             	add    $0x30,%eax
  403f5e:	48 83 f9 09          	cmp    $0x9,%rcx
  403f62:	48 89 d1             	mov    %rdx,%rcx
  403f65:	88 07                	mov    %al,(%rdi)
  403f67:	77 d7                	ja     403f40 <fmt_fp+0x1140>
  403f69:	4c 39 e3             	cmp    %r12,%rbx
  403f6c:	0f 84 36 01 00 00    	je     4040a8 <fmt_fp+0x12a8>
  403f72:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  403f76:	48 39 fa             	cmp    %rdi,%rdx
  403f79:	0f 83 32 01 00 00    	jae    4040b1 <fmt_fp+0x12b1>
  403f7f:	49 89 fa             	mov    %rdi,%r10
  403f82:	48 89 f8             	mov    %rdi,%rax
  403f85:	49 29 d2             	sub    %rdx,%r10
  403f88:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  403f8c:	48 83 f9 0e          	cmp    $0xe,%rcx
  403f90:	76 46                	jbe    403fd8 <fmt_fp+0x11d8>
  403f92:	4c 89 d6             	mov    %r10,%rsi
  403f95:	48 89 f9             	mov    %rdi,%rcx
  403f98:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  403f9c:	48 29 f1             	sub    %rsi,%rcx
  403f9f:	40 f6 c6 10          	test   $0x10,%sil
  403fa3:	74 1b                	je     403fc0 <fmt_fp+0x11c0>
  403fa5:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  403fa9:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  403fad:	48 39 c8             	cmp    %rcx,%rax
  403fb0:	74 1e                	je     403fd0 <fmt_fp+0x11d0>
  403fb2:	0f 1f 00             	nopl   (%rax)
  403fb5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403fbc:	00 00 00 00 
  403fc0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  403fc4:	48 83 e8 20          	sub    $0x20,%rax
  403fc8:	0f 11 00             	movups %xmm0,(%rax)
  403fcb:	48 39 c8             	cmp    %rcx,%rax
  403fce:	75 f0                	jne    403fc0 <fmt_fp+0x11c0>
  403fd0:	4c 39 d6             	cmp    %r10,%rsi
  403fd3:	74 3b                	je     404010 <fmt_fp+0x1210>
  403fd5:	48 29 f7             	sub    %rsi,%rdi
  403fd8:	48 89 d0             	mov    %rdx,%rax
  403fdb:	48 f7 d0             	not    %rax
  403fde:	48 01 f8             	add    %rdi,%rax
  403fe1:	48 83 ef 01          	sub    $0x1,%rdi
  403fe5:	c6 07 30             	movb   $0x30,(%rdi)
  403fe8:	48 39 fa             	cmp    %rdi,%rdx
  403feb:	73 23                	jae    404010 <fmt_fp+0x1210>
  403fed:	a8 01                	test   $0x1,%al
  403fef:	74 0f                	je     404000 <fmt_fp+0x1200>
  403ff1:	48 83 ef 01          	sub    $0x1,%rdi
  403ff5:	c6 07 30             	movb   $0x30,(%rdi)
  403ff8:	48 39 fa             	cmp    %rdi,%rdx
  403ffb:	73 13                	jae    404010 <fmt_fp+0x1210>
  403ffd:	0f 1f 00             	nopl   (%rax)
  404000:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  404004:	48 83 ef 02          	sub    $0x2,%rdi
  404008:	c6 07 30             	movb   $0x30,(%rdi)
  40400b:	48 39 fa             	cmp    %rdi,%rdx
  40400e:	72 f0                	jb     404000 <fmt_fp+0x1200>
  404010:	be 09 00 00 00       	mov    $0x9,%esi
  404015:	48 89 d7             	mov    %rdx,%rdi
  404018:	41 f6 07 20          	testb  $0x20,(%r15)
  40401c:	0f 84 9c 00 00 00    	je     4040be <fmt_fp+0x12be>
  404022:	49 83 c4 04          	add    $0x4,%r12
  404026:	4d 39 e6             	cmp    %r12,%r14
  404029:	0f 83 d1 fe ff ff    	jae    403f00 <fmt_fp+0x1100>
  40402f:	44 8b bd a8 e2 ff ff 	mov    -0x1d58(%rbp),%r15d
  404036:	49 89 dc             	mov    %rbx,%r12
  404039:	48 8b 9d c0 e2 ff ff 	mov    -0x1d40(%rbp),%rbx
  404040:	45 85 ff             	test   %r15d,%r15d
  404043:	0f 85 36 04 00 00    	jne    40447f <fmt_fp+0x167f>
  404049:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  404050:	0f 84 d8 fb ff ff    	je     403c2e <fmt_fp+0xe2e>
  404056:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  40405d:	f6 02 20             	testb  $0x20,(%rdx)
  404060:	0f 85 c8 fb ff ff    	jne    403c2e <fmt_fp+0xe2e>
  404066:	be 01 00 00 00       	mov    $0x1,%esi
  40406b:	48 8d 3d 3f 41 00 00 	lea    0x413f(%rip),%rdi        # 4081b1 <_fini+0x11ad>
  404072:	e8 29 25 00 00       	call   4065a0 <__fwritex>
  404077:	41 83 c7 09          	add    $0x9,%r15d
  40407b:	41 83 ff 09          	cmp    $0x9,%r15d
  40407f:	0f 8e a9 fb ff ff    	jle    403c2e <fmt_fp+0xe2e>
  404085:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  40408c:	b9 09 00 00 00       	mov    $0x9,%ecx
  404091:	44 89 fa             	mov    %r15d,%edx
  404094:	be 30 00 00 00       	mov    $0x30,%esi
  404099:	e8 62 ec ff ff       	call   402d00 <pad.part.0>
  40409e:	e9 8b fb ff ff       	jmp    403c2e <fmt_fp+0xe2e>
  4040a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4040a8:	48 39 f7             	cmp    %rsi,%rdi
  4040ab:	0f 84 b0 00 00 00    	je     404161 <fmt_fp+0x1361>
  4040b1:	48 29 fe             	sub    %rdi,%rsi
  4040b4:	41 f6 07 20          	testb  $0x20,(%r15)
  4040b8:	0f 85 64 ff ff ff    	jne    404022 <fmt_fp+0x1222>
  4040be:	4c 89 fa             	mov    %r15,%rdx
  4040c1:	e8 da 24 00 00       	call   4065a0 <__fwritex>
  4040c6:	66 0f 6f 05 62 44 00 	movdqa 0x4462(%rip),%xmm0        # 408530 <states+0x210>
  4040cd:	00 
  4040ce:	e9 4f ff ff ff       	jmp    404022 <fmt_fp+0x1222>
  4040d3:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4040da:	f6 00 20             	testb  $0x20,(%rax)
  4040dd:	0f 85 4e f9 ff ff    	jne    403a31 <fmt_fp+0xc31>
  4040e3:	48 63 b5 98 e2 ff ff 	movslq -0x1d68(%rbp),%rsi
  4040ea:	48 8b 95 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdx
  4040f1:	48 8b bd 88 e2 ff ff 	mov    -0x1d78(%rbp),%rdi
  4040f8:	e8 a3 24 00 00       	call   4065a0 <__fwritex>
  4040fd:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  404103:	35 00 00 01 00       	xor    $0x10000,%eax
  404108:	a9 00 20 01 00       	test   $0x12000,%eax
  40410d:	0f 85 1e f9 ff ff    	jne    403a31 <fmt_fp+0xc31>
  404113:	80 bd 87 e2 ff ff 00 	cmpb   $0x0,-0x1d79(%rbp)
  40411a:	0f 85 11 f9 ff ff    	jne    403a31 <fmt_fp+0xc31>
  404120:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
  404126:	8b 95 b4 e2 ff ff    	mov    -0x1d4c(%rbp),%edx
  40412c:	be 30 00 00 00       	mov    $0x30,%esi
  404131:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404138:	e8 c3 eb ff ff       	call   402d00 <pad.part.0>
  40413d:	e9 ef f8 ff ff       	jmp    403a31 <fmt_fp+0xc31>
  404142:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  404149:	f6 00 20             	testb  $0x20,(%rax)
  40414c:	75 af                	jne    4040fd <fmt_fp+0x12fd>
  40414e:	eb 93                	jmp    4040e3 <fmt_fp+0x12e3>
  404150:	48 8d 7d a9          	lea    -0x57(%rbp),%rdi
  404154:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  404158:	4c 39 e3             	cmp    %r12,%rbx
  40415b:	0f 85 1e fe ff ff    	jne    403f7f <fmt_fp+0x117f>
  404161:	c6 45 a8 30          	movb   $0x30,-0x58(%rbp)
  404165:	be 01 00 00 00       	mov    $0x1,%esi
  40416a:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  40416e:	e9 a5 fe ff ff       	jmp    404018 <fmt_fp+0x1218>
  404173:	d9 05 77 43 00 00    	flds   0x4377(%rip)        # 4084f0 <states+0x1d0>
  404179:	d9 05 81 43 00 00    	flds   0x4381(%rip)        # 408500 <states+0x1e0>
  40417f:	b8 0e 00 00 00       	mov    $0xe,%eax
  404184:	44 29 f8             	sub    %r15d,%eax
  404187:	90                   	nop
  404188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40418f:	00 
  404190:	dc c9                	fmul   %st,%st(1)
  404192:	83 e8 01             	sub    $0x1,%eax
  404195:	73 f9                	jae    404190 <fmt_fp+0x1390>
  404197:	48 8b 85 88 e2 ff ff 	mov    -0x1d78(%rbp),%rax
  40419e:	80 38 2d             	cmpb   $0x2d,(%rax)
  4041a1:	0f 84 c6 04 00 00    	je     40466d <fmt_fp+0x186d>
  4041a7:	d9 ca                	fxch   %st(2)
  4041a9:	d8 c1                	fadd   %st(1),%st
  4041ab:	de e1                	fsubp  %st,%st(1)
  4041ad:	d9 c9                	fxch   %st(1)
  4041af:	e9 9d f3 ff ff       	jmp    403551 <fmt_fp+0x751>
  4041b4:	48 8b bd 78 e2 ff ff 	mov    -0x1d88(%rbp),%rdi
  4041bb:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
  4041bf:	48 89 c2             	mov    %rax,%rdx
  4041c2:	48 29 fe             	sub    %rdi,%rsi
  4041c5:	e8 d6 23 00 00       	call   4065a0 <__fwritex>
  4041ca:	e9 5f fa ff ff       	jmp    403c2e <fmt_fp+0xe2e>
  4041cf:	44 01 d8             	add    %r11d,%eax
  4041d2:	89 06                	mov    %eax,(%rsi)
  4041d4:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  4041d9:	0f 86 3e 05 00 00    	jbe    40471d <fmt_fp+0x191d>
  4041df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041e6:	00 00 00 00 
  4041ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041f1:	00 00 00 00 
  4041f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4041fc:	00 00 00 00 
  404200:	48 89 f2             	mov    %rsi,%rdx
  404203:	48 83 ee 04          	sub    $0x4,%rsi
  404207:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%rsi)
  40420e:	4c 39 e6             	cmp    %r12,%rsi
  404211:	73 0d                	jae    404220 <fmt_fp+0x1420>
  404213:	41 c7 44 24 fc 00 00 	movl   $0x0,-0x4(%r12)
  40421a:	00 00 
  40421c:	49 83 ec 04          	sub    $0x4,%r12
  404220:	8b 06                	mov    (%rsi),%eax
  404222:	83 c0 01             	add    $0x1,%eax
  404225:	89 06                	mov    %eax,(%rsi)
  404227:	3d ff c9 9a 3b       	cmp    $0x3b9ac9ff,%eax
  40422c:	77 d2                	ja     404200 <fmt_fp+0x1400>
  40422e:	48 8b 85 90 e2 ff ff 	mov    -0x1d70(%rbp),%rax
  404235:	41 8b 0c 24          	mov    (%r12),%ecx
  404239:	4c 29 e0             	sub    %r12,%rax
  40423c:	48 c1 f8 02          	sar    $0x2,%rax
  404240:	8d 3c c0             	lea    (%rax,%rax,8),%edi
  404243:	83 f9 09             	cmp    $0x9,%ecx
  404246:	0f 86 43 f6 ff ff    	jbe    40388f <fmt_fp+0xa8f>
  40424c:	b8 0a 00 00 00       	mov    $0xa,%eax
  404251:	0f 1f 40 00          	nopl   0x0(%rax)
  404255:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40425c:	00 00 00 00 
  404260:	8d 04 80             	lea    (%rax,%rax,4),%eax
  404263:	83 c7 01             	add    $0x1,%edi
  404266:	01 c0                	add    %eax,%eax
  404268:	39 c1                	cmp    %eax,%ecx
  40426a:	73 f4                	jae    404260 <fmt_fp+0x1460>
  40426c:	e9 1e f6 ff ff       	jmp    40388f <fmt_fp+0xa8f>
  404271:	be 01 00 00 00       	mov    $0x1,%esi
  404276:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40427c:	e9 d7 ec ff ff       	jmp    402f58 <fmt_fp+0x158>
  404281:	be 01 00 00 00       	mov    $0x1,%esi
  404286:	41 bf 06 00 00 00    	mov    $0x6,%r15d
  40428c:	e9 b6 ec ff ff       	jmp    402f47 <fmt_fp+0x147>
  404291:	48 8b bd b8 e2 ff ff 	mov    -0x1d48(%rbp),%rdi
  404298:	f6 07 20             	testb  $0x20,(%rdi)
  40429b:	0f 84 9d f4 ff ff    	je     40373e <fmt_fp+0x93e>
  4042a1:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
  4042a7:	3b 9d b4 e2 ff ff    	cmp    -0x1d4c(%rbp),%ebx
  4042ad:	0f 9d 85 c0 e2 ff ff 	setge  -0x1d40(%rbp)
  4042b4:	35 00 00 01 00       	xor    $0x10000,%eax
  4042b9:	a9 00 20 01 00       	test   $0x12000,%eax
  4042be:	75 0d                	jne    4042cd <fmt_fp+0x14cd>
  4042c0:	80 bd c0 e2 ff ff 00 	cmpb   $0x0,-0x1d40(%rbp)
  4042c7:	0f 84 bd f4 ff ff    	je     40378a <fmt_fp+0x98a>
  4042cd:	45 29 f7             	sub    %r14d,%r15d
  4042d0:	45 85 ff             	test   %r15d,%r15d
  4042d3:	0f 8e 9d f1 ff ff    	jle    403476 <fmt_fp+0x676>
  4042d9:	e9 64 f1 ff ff       	jmp    403442 <fmt_fp+0x642>
  4042de:	83 ad a0 e2 ff ff 02 	subl   $0x2,-0x1d60(%rbp)
  4042e5:	45 8d 79 ff          	lea    -0x1(%r9),%r15d
  4042e9:	f6 85 c8 e2 ff ff 08 	testb  $0x8,-0x1d38(%rbp)
  4042f0:	0f 85 9c 00 00 00    	jne    404392 <fmt_fp+0x1592>
  4042f6:	49 39 dc             	cmp    %rbx,%r12
  4042f9:	0f 83 01 01 00 00    	jae    404400 <fmt_fp+0x1600>
  4042ff:	44 8b 4b fc          	mov    -0x4(%rbx),%r9d
  404303:	45 85 c9             	test   %r9d,%r9d
  404306:	0f 84 f4 00 00 00    	je     404400 <fmt_fp+0x1600>
  40430c:	41 69 c1 cd cc cc cc 	imul   $0xcccccccd,%r9d,%eax
  404313:	31 f6                	xor    %esi,%esi
  404315:	d1 c8                	ror    $1,%eax
  404317:	3d 99 99 99 19       	cmp    $0x19999999,%eax
  40431c:	0f 87 e3 00 00 00    	ja     404405 <fmt_fp+0x1605>
  404322:	31 f6                	xor    %esi,%esi
  404324:	b9 0a 00 00 00       	mov    $0xa,%ecx
  404329:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  40432c:	44 89 c8             	mov    %r9d,%eax
  40432f:	31 d2                	xor    %edx,%edx
  404331:	83 c6 01             	add    $0x1,%esi
  404334:	01 c9                	add    %ecx,%ecx
  404336:	f7 f1                	div    %ecx
  404338:	85 d2                	test   %edx,%edx
  40433a:	74 ed                	je     404329 <fmt_fp+0x1529>
  40433c:	48 63 f6             	movslq %esi,%rsi
  40433f:	e9 00 fb ff ff       	jmp    403e44 <fmt_fp+0x1044>
  404344:	db 2d d6 41 00 00    	fldt   0x41d6(%rip)        # 408520 <states+0x200>
  40434a:	d9 05 a8 41 00 00    	flds   0x41a8(%rip)        # 4084f8 <states+0x1d8>
  404350:	e9 fe f4 ff ff       	jmp    403853 <fmt_fp+0xa53>
  404355:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  404359:	4c 8d 47 fe          	lea    -0x2(%rdi),%r8
  40435d:	e9 54 f2 ff ff       	jmp    4035b6 <fmt_fp+0x7b6>
  404362:	81 f9 00 ca 9a 3b    	cmp    $0x3b9aca00,%ecx
  404368:	75 0f                	jne    404379 <fmt_fp+0x1579>
  40436a:	49 39 f4             	cmp    %rsi,%r12
  40436d:	73 0a                	jae    404379 <fmt_fp+0x1579>
  40436f:	f6 46 fc 01          	testb  $0x1,-0x4(%rsi)
  404373:	0f 85 ba f4 ff ff    	jne    403833 <fmt_fp+0xa33>
  404379:	d9 05 75 41 00 00    	flds   0x4175(%rip)        # 4084f4 <states+0x1d4>
  40437f:	e9 b5 f4 ff ff       	jmp    403839 <fmt_fp+0xa39>
  404384:	47 8d 7c 27 02       	lea    0x2(%r15,%r12,1),%r15d
  404389:	47 8d 34 04          	lea    (%r12,%r8,1),%r14d
  40438d:	e9 4d f3 ff ff       	jmp    4036df <fmt_fp+0x8df>
  404392:	45 85 ff             	test   %r15d,%r15d
  404395:	0f 85 24 03 00 00    	jne    4046bf <fmt_fp+0x18bf>
  40439b:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4043a2:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4043a8:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4043ae:	41 83 ce 20          	or     $0x20,%r14d
  4043b2:	e9 3d f5 ff ff       	jmp    4038f4 <fmt_fp+0xaf4>
  4043b7:	45 85 ff             	test   %r15d,%r15d
  4043ba:	0f 85 bd f9 ff ff    	jne    403d7d <fmt_fp+0xf7d>
  4043c0:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4043c7:	41 ba fd ff ff 7f    	mov    $0x7ffffffd,%r10d
  4043cd:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  4043d3:	41 83 ce 20          	or     $0x20,%r14d
  4043d7:	41 83 fe 66          	cmp    $0x66,%r14d
  4043db:	0f 85 08 f5 ff ff    	jne    4038e9 <fmt_fp+0xae9>
  4043e1:	81 ff fe ff ff 7f    	cmp    $0x7ffffffe,%edi
  4043e7:	0f 84 fa 02 00 00    	je     4046e7 <fmt_fp+0x18e7>
  4043ed:	85 ff                	test   %edi,%edi
  4043ef:	0f 85 ce f9 ff ff    	jne    403dc3 <fmt_fp+0xfc3>
  4043f5:	e9 df f5 ff ff       	jmp    4039d9 <fmt_fp+0xbd9>
  4043fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404400:	be 09 00 00 00       	mov    $0x9,%esi
  404405:	48 89 d8             	mov    %rbx,%rax
  404408:	48 2b 85 90 e2 ff ff 	sub    -0x1d70(%rbp),%rax
  40440f:	48 63 d7             	movslq %edi,%rdx
  404412:	48 c1 f8 02          	sar    $0x2,%rax
  404416:	48 8d 44 c0 f7       	lea    -0x9(%rax,%rax,8),%rax
  40441b:	48 01 d0             	add    %rdx,%rax
  40441e:	ba 00 00 00 00       	mov    $0x0,%edx
  404423:	48 29 f0             	sub    %rsi,%rax
  404426:	48 0f 48 c2          	cmovs  %rdx,%rax
  40442a:	49 63 d7             	movslq %r15d,%rdx
  40442d:	48 39 d0             	cmp    %rdx,%rax
  404430:	48 0f 4f c2          	cmovg  %rdx,%rax
  404434:	41 89 c7             	mov    %eax,%r15d
  404437:	48 85 c0             	test   %rax,%rax
  40443a:	0f 85 3d f9 ff ff    	jne    403d7d <fmt_fp+0xf7d>
  404440:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  404447:	41 83 ce 20          	or     $0x20,%r14d
  40444b:	41 83 fe 66          	cmp    $0x66,%r14d
  40444f:	0f 84 9c 02 00 00    	je     4046f1 <fmt_fp+0x18f1>
  404455:	41 ba fe ff ff 7f    	mov    $0x7ffffffe,%r10d
  40445b:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404461:	45 31 ff             	xor    %r15d,%r15d
  404464:	e9 80 f4 ff ff       	jmp    4038e9 <fmt_fp+0xae9>
  404469:	44 39 d7             	cmp    %r10d,%edi
  40446c:	0f 8f 75 02 00 00    	jg     4046e7 <fmt_fp+0x18e7>
  404472:	85 ff                	test   %edi,%edi
  404474:	0f 8f 49 f9 ff ff    	jg     403dc3 <fmt_fp+0xfc3>
  40447a:	e9 5a f5 ff ff       	jmp    4039d9 <fmt_fp+0xbd9>
  40447f:	48 8b bd 90 e2 ff ff 	mov    -0x1d70(%rbp),%rdi
  404486:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
  40448b:	48 89 f8             	mov    %rdi,%rax
  40448e:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
  404492:	4c 29 e0             	sub    %r12,%rax
  404495:	48 39 d1             	cmp    %rdx,%rcx
  404498:	ba 00 00 00 00       	mov    $0x0,%edx
  40449d:	48 0f 42 c2          	cmovb  %rdx,%rax
  4044a1:	4d 8d 74 04 04       	lea    0x4(%r12,%rax,1),%r14
  4044a6:	48 8b 85 b8 e2 ff ff 	mov    -0x1d48(%rbp),%rax
  4044ad:	f6 00 20             	testb  $0x20,(%rax)
  4044b0:	0f 84 70 02 00 00    	je     404726 <fmt_fp+0x1926>
  4044b6:	45 85 ff             	test   %r15d,%r15d
  4044b9:	0f 8e b8 fb ff ff    	jle    404077 <fmt_fp+0x1277>
  4044bf:	49 39 de             	cmp    %rbx,%r14
  4044c2:	0f 83 af fb ff ff    	jae    404077 <fmt_fp+0x1277>
  4044c8:	b8 30 30 30 30       	mov    $0x30303030,%eax
  4044cd:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4044d1:	4c 8d 45 a9          	lea    -0x57(%rbp),%r8
  4044d5:	49 89 d9             	mov    %rbx,%r9
  4044d8:	48 8b 9d b8 e2 ff ff 	mov    -0x1d48(%rbp),%rbx
  4044df:	66 0f 6e c0          	movd   %eax,%xmm0
  4044e3:	49 bc cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r12
  4044ea:	cc cc cc 
  4044ed:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
  4044f2:	0f 1f 00             	nopl   (%rax)
  4044f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4044fc:	00 00 00 00 
  404500:	41 8b 0e             	mov    (%r14),%ecx
  404503:	4c 89 c7             	mov    %r8,%rdi
  404506:	48 85 c9             	test   %rcx,%rcx
  404509:	74 67                	je     404572 <fmt_fp+0x1772>
  40450b:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404512:	00 00 
  404514:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40451b:	00 00 00 00 
  40451f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404526:	00 00 00 00 
  40452a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404531:	00 00 00 00 
  404535:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40453c:	00 00 00 00 
  404540:	48 89 c8             	mov    %rcx,%rax
  404543:	48 83 ef 01          	sub    $0x1,%rdi
  404547:	49 f7 e4             	mul    %r12
  40454a:	48 89 c8             	mov    %rcx,%rax
  40454d:	48 c1 ea 03          	shr    $0x3,%rdx
  404551:	48 8d 34 92          	lea    (%rdx,%rdx,4),%rsi
  404555:	48 01 f6             	add    %rsi,%rsi
  404558:	48 29 f0             	sub    %rsi,%rax
  40455b:	83 c0 30             	add    $0x30,%eax
  40455e:	48 83 f9 09          	cmp    $0x9,%rcx
  404562:	48 89 d1             	mov    %rdx,%rcx
  404565:	88 07                	mov    %al,(%rdi)
  404567:	77 d7                	ja     404540 <fmt_fp+0x1740>
  404569:	49 39 fd             	cmp    %rdi,%r13
  40456c:	0f 83 91 00 00 00    	jae    404603 <fmt_fp+0x1803>
  404572:	48 89 fe             	mov    %rdi,%rsi
  404575:	48 89 f8             	mov    %rdi,%rax
  404578:	4c 29 ee             	sub    %r13,%rsi
  40457b:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
  40457f:	48 83 fa 0e          	cmp    $0xe,%rdx
  404583:	76 43                	jbe    4045c8 <fmt_fp+0x17c8>
  404585:	48 89 f1             	mov    %rsi,%rcx
  404588:	48 89 fa             	mov    %rdi,%rdx
  40458b:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40458f:	48 29 ca             	sub    %rcx,%rdx
  404592:	f6 c1 10             	test   $0x10,%cl
  404595:	74 19                	je     4045b0 <fmt_fp+0x17b0>
  404597:	48 8d 47 f0          	lea    -0x10(%rdi),%rax
  40459b:	0f 11 47 f0          	movups %xmm0,-0x10(%rdi)
  40459f:	48 39 d0             	cmp    %rdx,%rax
  4045a2:	74 1c                	je     4045c0 <fmt_fp+0x17c0>
  4045a4:	90                   	nop
  4045a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4045ac:	00 00 00 00 
  4045b0:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  4045b4:	48 83 e8 20          	sub    $0x20,%rax
  4045b8:	0f 11 00             	movups %xmm0,(%rax)
  4045bb:	48 39 d0             	cmp    %rdx,%rax
  4045be:	75 f0                	jne    4045b0 <fmt_fp+0x17b0>
  4045c0:	48 39 f1             	cmp    %rsi,%rcx
  4045c3:	74 3b                	je     404600 <fmt_fp+0x1800>
  4045c5:	48 29 cf             	sub    %rcx,%rdi
  4045c8:	4c 89 e8             	mov    %r13,%rax
  4045cb:	48 f7 d0             	not    %rax
  4045ce:	48 01 f8             	add    %rdi,%rax
  4045d1:	48 83 ef 01          	sub    $0x1,%rdi
  4045d5:	c6 07 30             	movb   $0x30,(%rdi)
  4045d8:	49 39 fd             	cmp    %rdi,%r13
  4045db:	73 23                	jae    404600 <fmt_fp+0x1800>
  4045dd:	a8 01                	test   $0x1,%al
  4045df:	74 0f                	je     4045f0 <fmt_fp+0x17f0>
  4045e1:	48 83 ef 01          	sub    $0x1,%rdi
  4045e5:	c6 07 30             	movb   $0x30,(%rdi)
  4045e8:	49 39 fd             	cmp    %rdi,%r13
  4045eb:	73 13                	jae    404600 <fmt_fp+0x1800>
  4045ed:	0f 1f 00             	nopl   (%rax)
  4045f0:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
  4045f4:	48 83 ef 02          	sub    $0x2,%rdi
  4045f8:	c6 07 30             	movb   $0x30,(%rdi)
  4045fb:	49 39 fd             	cmp    %rdi,%r13
  4045fe:	72 f0                	jb     4045f0 <fmt_fp+0x17f0>
  404600:	4c 89 ef             	mov    %r13,%rdi
  404603:	f6 03 20             	testb  $0x20,(%rbx)
  404606:	74 28                	je     404630 <fmt_fp+0x1830>
  404608:	49 83 c6 04          	add    $0x4,%r14
  40460c:	41 8d 47 f7          	lea    -0x9(%r15),%eax
  404610:	4d 39 ce             	cmp    %r9,%r14
  404613:	0f 83 62 fa ff ff    	jae    40407b <fmt_fp+0x127b>
  404619:	85 c0                	test   %eax,%eax
  40461b:	0f 8e 5a fa ff ff    	jle    40407b <fmt_fp+0x127b>
  404621:	41 89 c7             	mov    %eax,%r15d
  404624:	e9 d7 fe ff ff       	jmp    404500 <fmt_fp+0x1700>
  404629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404630:	b8 09 00 00 00       	mov    $0x9,%eax
  404635:	48 89 da             	mov    %rbx,%rdx
  404638:	4c 89 85 a8 e2 ff ff 	mov    %r8,-0x1d58(%rbp)
  40463f:	41 39 c7             	cmp    %eax,%r15d
  404642:	4c 89 8d c0 e2 ff ff 	mov    %r9,-0x1d40(%rbp)
  404649:	41 0f 4e c7          	cmovle %r15d,%eax
  40464d:	48 63 f0             	movslq %eax,%rsi
  404650:	e8 4b 1f 00 00       	call   4065a0 <__fwritex>
  404655:	4c 8b 85 a8 e2 ff ff 	mov    -0x1d58(%rbp),%r8
  40465c:	4c 8b 8d c0 e2 ff ff 	mov    -0x1d40(%rbp),%r9
  404663:	66 0f 6f 05 c5 3e 00 	movdqa 0x3ec5(%rip),%xmm0        # 408530 <states+0x210>
  40466a:	00 
  40466b:	eb 9b                	jmp    404608 <fmt_fp+0x1808>
  40466d:	d9 ca                	fxch   %st(2)
  40466f:	d9 e0                	fchs
  404671:	d8 e1                	fsub   %st(1),%st
  404673:	de c1                	faddp  %st,%st(1)
  404675:	d9 e0                	fchs
  404677:	d9 c9                	fxch   %st(1)
  404679:	e9 d3 ee ff ff       	jmp    403551 <fmt_fp+0x751>
  40467e:	48 8d 46 04          	lea    0x4(%rsi),%rax
  404682:	48 39 c3             	cmp    %rax,%rbx
  404685:	0f 85 c2 f1 ff ff    	jne    40384d <fmt_fp+0xa4d>
  40468b:	d9 e8                	fld1
  40468d:	e9 c1 f1 ff ff       	jmp    403853 <fmt_fp+0xa53>
  404692:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  404696:	4c 89 e9             	mov    %r13,%rcx
  404699:	e9 e2 f2 ff ff       	jmp    403980 <fmt_fp+0xb80>
  40469e:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
  4046a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4046a9:	e9 32 ec ff ff       	jmp    4032e0 <fmt_fp+0x4e0>
  4046ae:	c6 45 9f 30          	movb   $0x30,-0x61(%rbp)
  4046b2:	4c 8d 45 9f          	lea    -0x61(%rbp),%r8
  4046b6:	4c 8d 6d a0          	lea    -0x60(%rbp),%r13
  4046ba:	e9 01 ef ff ff       	jmp    4035c0 <fmt_fp+0x7c0>
  4046bf:	41 81 ff fe ff ff 7f 	cmp    $0x7ffffffe,%r15d
  4046c6:	74 1f                	je     4046e7 <fmt_fp+0x18e7>
  4046c8:	44 8b b5 a0 e2 ff ff 	mov    -0x1d60(%rbp),%r14d
  4046cf:	41 83 c1 01          	add    $0x1,%r9d
  4046d3:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4046d8:	44 29 c8             	sub    %r9d,%eax
  4046db:	41 83 ce 20          	or     $0x20,%r14d
  4046df:	4c 63 d0             	movslq %eax,%r10
  4046e2:	e9 0d f2 ff ff       	jmp    4038f4 <fmt_fp+0xaf4>
  4046e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4046ec:	e9 ee ec ff ff       	jmp    4033df <fmt_fp+0x5df>
  4046f1:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
  4046f7:	74 ee                	je     4046e7 <fmt_fp+0x18e7>
  4046f9:	45 31 ff             	xor    %r15d,%r15d
  4046fc:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  404702:	85 ff                	test   %edi,%edi
  404704:	0f 8f b9 f6 ff ff    	jg     403dc3 <fmt_fp+0xfc3>
  40470a:	e9 ca f2 ff ff       	jmp    4039d9 <fmt_fp+0xbd9>
  40470f:	dd d8                	fstp   %st(0)
  404711:	dd d8                	fstp   %st(0)
  404713:	dd d8                	fstp   %st(0)
  404715:	49 89 c0             	mov    %rax,%r8
  404718:	e9 82 ef ff ff       	jmp    40369f <fmt_fp+0x89f>
  40471d:	48 8d 56 04          	lea    0x4(%rsi),%rdx
  404721:	e9 08 fb ff ff       	jmp    40422e <fmt_fp+0x142e>
  404726:	48 89 c2             	mov    %rax,%rdx
  404729:	be 01 00 00 00       	mov    $0x1,%esi
  40472e:	48 8d 3d 7c 3a 00 00 	lea    0x3a7c(%rip),%rdi        # 4081b1 <_fini+0x11ad>
  404735:	e8 66 1e 00 00       	call   4065a0 <__fwritex>
  40473a:	e9 77 fd ff ff       	jmp    4044b6 <fmt_fp+0x16b6>
  40473f:	e8 dc e1 ff ff       	call   402920 <__stack_chk_fail>
  404744:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40474b:	00 00 00 
  40474e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404755:	00 00 00 
  404758:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40475f:	00 00 00 
  404762:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404769:	00 00 00 
  40476c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404773:	00 00 00 
  404776:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40477d:	00 00 00 

0000000000404780 <printf_core>:
  404780:	55                   	push   %rbp
  404781:	48 89 e5             	mov    %rsp,%rbp
  404784:	41 57                	push   %r15
  404786:	4c 8d 3d 93 3b 00 00 	lea    0x3b93(%rip),%r15        # 408320 <states>
  40478d:	41 56                	push   %r14
  40478f:	49 89 f6             	mov    %rsi,%r14
  404792:	41 55                	push   %r13
  404794:	45 31 ed             	xor    %r13d,%r13d
  404797:	41 54                	push   %r12
  404799:	53                   	push   %rbx
  40479a:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  4047a1:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  4047a5:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  4047ac:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
  4047b3:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
  4047ba:	64 4c 8b 04 25 28 00 	mov    %fs:0x28,%r8
  4047c1:	00 00 
  4047c3:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  4047c7:	45 31 c0             	xor    %r8d,%r8d
  4047ca:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  4047d1:	00 00 00 
  4047d4:	41 0f b6 06          	movzbl (%r14),%eax
  4047d8:	45 01 c5             	add    %r8d,%r13d
  4047db:	84 c0                	test   %al,%al
  4047dd:	0f 84 ad 06 00 00    	je     404e90 <printf_core+0x710>
  4047e3:	4d 89 f2             	mov    %r14,%r10
  4047e6:	eb 25                	jmp    40480d <printf_core+0x8d>
  4047e8:	66 90                	xchg   %ax,%ax
  4047ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047f1:	00 00 00 00 
  4047f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4047fc:	00 00 00 00 
  404800:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
  404805:	49 83 c2 01          	add    $0x1,%r10
  404809:	84 c0                	test   %al,%al
  40480b:	74 73                	je     404880 <printf_core+0x100>
  40480d:	3c 25                	cmp    $0x25,%al
  40480f:	75 ef                	jne    404800 <printf_core+0x80>
  404811:	4c 89 d3             	mov    %r10,%rbx
  404814:	eb 17                	jmp    40482d <printf_core+0xad>
  404816:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40481d:	00 00 00 
  404820:	48 83 c3 02          	add    $0x2,%rbx
  404824:	49 83 c2 01          	add    $0x1,%r10
  404828:	80 3b 25             	cmpb   $0x25,(%rbx)
  40482b:	75 06                	jne    404833 <printf_core+0xb3>
  40482d:	80 7b 01 25          	cmpb   $0x25,0x1(%rbx)
  404831:	74 ed                	je     404820 <printf_core+0xa0>
  404833:	41 bb ff ff ff 7f    	mov    $0x7fffffff,%r11d
  404839:	4d 29 f2             	sub    %r14,%r10
  40483c:	45 29 eb             	sub    %r13d,%r11d
  40483f:	49 63 c3             	movslq %r11d,%rax
  404842:	49 39 c2             	cmp    %rax,%r10
  404845:	0f 8f 15 03 00 00    	jg     404b60 <printf_core+0x3e0>
  40484b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  40484f:	45 89 d0             	mov    %r10d,%r8d
  404852:	48 85 c0             	test   %rax,%rax
  404855:	74 09                	je     404860 <printf_core+0xe0>
  404857:	f6 00 20             	testb  $0x20,(%rax)
  40485a:	0f 84 10 03 00 00    	je     404b70 <printf_core+0x3f0>
  404860:	45 85 d2             	test   %r10d,%r10d
  404863:	74 2b                	je     404890 <printf_core+0x110>
  404865:	45 39 c3             	cmp    %r8d,%r11d
  404868:	0f 8c f2 02 00 00    	jl     404b60 <printf_core+0x3e0>
  40486e:	49 89 de             	mov    %rbx,%r14
  404871:	e9 5e ff ff ff       	jmp    4047d4 <printf_core+0x54>
  404876:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40487d:	00 00 00 
  404880:	3c 25                	cmp    $0x25,%al
  404882:	74 8d                	je     404811 <printf_core+0x91>
  404884:	4c 89 d3             	mov    %r10,%rbx
  404887:	eb aa                	jmp    404833 <printf_core+0xb3>
  404889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404890:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  404894:	8d 79 d0             	lea    -0x30(%rcx),%edi
  404897:	89 c8                	mov    %ecx,%eax
  404899:	83 ff 09             	cmp    $0x9,%edi
  40489c:	77 1a                	ja     4048b8 <printf_core+0x138>
  40489e:	80 7b 02 24          	cmpb   $0x24,0x2(%rbx)
  4048a2:	0f 84 e5 03 00 00    	je     404c8d <printf_core+0x50d>
  4048a8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4048ac:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4048b1:	eb 1a                	jmp    4048cd <printf_core+0x14d>
  4048b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4048b8:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  4048bc:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4048c1:	83 e9 20             	sub    $0x20,%ecx
  4048c4:	83 f9 1f             	cmp    $0x1f,%ecx
  4048c7:	0f 87 b5 05 00 00    	ja     404e82 <printf_core+0x702>
  4048cd:	45 31 e4             	xor    %r12d,%r12d
  4048d0:	be 89 28 01 00       	mov    $0x12889,%esi
  4048d5:	eb 48                	jmp    40491f <printf_core+0x19f>
  4048d7:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4048de:	00 
  4048df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048e6:	00 00 00 00 
  4048ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048f1:	00 00 00 00 
  4048f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4048fc:	00 00 00 00 
  404900:	b8 01 00 00 00       	mov    $0x1,%eax
  404905:	48 83 c2 01          	add    $0x1,%rdx
  404909:	d3 e0                	shl    %cl,%eax
  40490b:	0f be 0a             	movsbl (%rdx),%ecx
  40490e:	41 09 c4             	or     %eax,%r12d
  404911:	89 c8                	mov    %ecx,%eax
  404913:	83 e9 20             	sub    $0x20,%ecx
  404916:	83 f9 1f             	cmp    $0x1f,%ecx
  404919:	0f 87 49 01 00 00    	ja     404a68 <printf_core+0x2e8>
  40491f:	8d 48 e0             	lea    -0x20(%rax),%ecx
  404922:	0f a3 ce             	bt     %ecx,%esi
  404925:	72 d9                	jb     404900 <printf_core+0x180>
  404927:	3c 2a                	cmp    $0x2a,%al
  404929:	0f 85 39 01 00 00    	jne    404a68 <printf_core+0x2e8>
  40492f:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
  404934:	48 89 c8             	mov    %rcx,%rax
  404937:	83 e9 30             	sub    $0x30,%ecx
  40493a:	83 f9 09             	cmp    $0x9,%ecx
  40493d:	0f 86 0d 03 00 00    	jbe    404c50 <printf_core+0x4d0>
  404943:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404949:	85 c9                	test   %ecx,%ecx
  40494b:	0f 85 dc 00 00 00    	jne    404a2d <printf_core+0x2ad>
  404951:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404955:	45 89 d1             	mov    %r10d,%r9d
  404958:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  40495d:	0f 84 58 01 00 00    	je     404abb <printf_core+0x33b>
  404963:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  40496a:	8b 06                	mov    (%rsi),%eax
  40496c:	83 f8 2f             	cmp    $0x2f,%eax
  40496f:	0f 87 4a 03 00 00    	ja     404cbf <printf_core+0x53f>
  404975:	89 c2                	mov    %eax,%edx
  404977:	83 c0 08             	add    $0x8,%eax
  40497a:	48 03 56 10          	add    0x10(%rsi),%rdx
  40497e:	89 06                	mov    %eax,(%rsi)
  404980:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
  404987:	00 00 00 
  40498a:	44 8b 0a             	mov    (%rdx),%r9d
  40498d:	44 89 e2             	mov    %r12d,%edx
  404990:	0f b6 03             	movzbl (%rbx),%eax
  404993:	80 ce 20             	or     $0x20,%dh
  404996:	45 85 c9             	test   %r9d,%r9d
  404999:	44 0f 48 e2          	cmovs  %edx,%r12d
  40499d:	44 89 ca             	mov    %r9d,%edx
  4049a0:	f7 da                	neg    %edx
  4049a2:	45 85 c9             	test   %r9d,%r9d
  4049a5:	44 0f 48 ca          	cmovs  %edx,%r9d
  4049a9:	3c 2e                	cmp    $0x2e,%al
  4049ab:	0f 84 12 01 00 00    	je     404ac3 <printf_core+0x343>
  4049b1:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  4049b8:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4049bf:	31 c0                	xor    %eax,%eax
  4049c1:	eb 5f                	jmp    404a22 <printf_core+0x2a2>
  4049c3:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4049c9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049d0:	00 00 00 00 
  4049d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049db:	00 00 00 00 
  4049df:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049e6:	00 00 00 00 
  4049ea:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049f1:	00 00 00 00 
  4049f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4049fc:	00 00 00 00 
  404a00:	89 c1                	mov    %eax,%ecx
  404a02:	48 63 d2             	movslq %edx,%rdx
  404a05:	48 83 c3 01          	add    $0x1,%rbx
  404a09:	48 6b f1 3a          	imul   $0x3a,%rcx,%rsi
  404a0d:	4c 01 fe             	add    %r15,%rsi
  404a10:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  404a14:	8d 56 ff             	lea    -0x1(%rsi),%edx
  404a17:	83 fa 07             	cmp    $0x7,%edx
  404a1a:	0f 87 90 01 00 00    	ja     404bb0 <printf_core+0x430>
  404a20:	89 f0                	mov    %esi,%eax
  404a22:	0f be 13             	movsbl (%rbx),%edx
  404a25:	83 ea 41             	sub    $0x41,%edx
  404a28:	83 fa 39             	cmp    $0x39,%edx
  404a2b:	76 d3                	jbe    404a00 <printf_core+0x280>
  404a2d:	e8 de 16 00 00       	call   406110 <__errno_location>
  404a32:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
  404a38:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
  404a3e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  404a42:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404a49:	00 00 
  404a4b:	0f 85 a2 0f 00 00    	jne    4059f3 <printf_core+0x1273>
  404a51:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  404a55:	44 89 d8             	mov    %r11d,%eax
  404a58:	5b                   	pop    %rbx
  404a59:	41 5c                	pop    %r12
  404a5b:	41 5d                	pop    %r13
  404a5d:	41 5e                	pop    %r14
  404a5f:	41 5f                	pop    %r15
  404a61:	5d                   	pop    %rbp
  404a62:	c3                   	ret
  404a63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404a68:	0f be 0a             	movsbl (%rdx),%ecx
  404a6b:	45 89 d1             	mov    %r10d,%r9d
  404a6e:	48 89 d3             	mov    %rdx,%rbx
  404a71:	89 c8                	mov    %ecx,%eax
  404a73:	83 e9 30             	sub    $0x30,%ecx
  404a76:	83 f9 09             	cmp    $0x9,%ecx
  404a79:	77 40                	ja     404abb <printf_core+0x33b>
  404a7b:	41 81 f9 cc cc cc 0c 	cmp    $0xccccccc,%r9d
  404a82:	0f 8f c8 00 00 00    	jg     404b50 <printf_core+0x3d0>
  404a88:	41 6b c9 f6          	imul   $0xfffffff6,%r9d,%ecx
  404a8c:	83 e8 30             	sub    $0x30,%eax
  404a8f:	0f be c0             	movsbl %al,%eax
  404a92:	8d b1 ff ff ff 7f    	lea    0x7fffffff(%rcx),%esi
  404a98:	39 f0                	cmp    %esi,%eax
  404a9a:	0f 8f b0 00 00 00    	jg     404b50 <printf_core+0x3d0>
  404aa0:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404aa4:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404aa8:	29 c8                	sub    %ecx,%eax
  404aaa:	41 89 c1             	mov    %eax,%r9d
  404aad:	89 d0                	mov    %edx,%eax
  404aaf:	83 ea 30             	sub    $0x30,%edx
  404ab2:	83 fa 09             	cmp    $0x9,%edx
  404ab5:	0f 86 3d 0f 00 00    	jbe    4059f8 <printf_core+0x1278>
  404abb:	3c 2e                	cmp    $0x2e,%al
  404abd:	0f 85 ee fe ff ff    	jne    4049b1 <printf_core+0x231>
  404ac3:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  404ac7:	3c 2a                	cmp    $0x2a,%al
  404ac9:	0f 85 11 02 00 00    	jne    404ce0 <printf_core+0x560>
  404acf:	0f be 43 02          	movsbl 0x2(%rbx),%eax
  404ad3:	89 c2                	mov    %eax,%edx
  404ad5:	83 e8 30             	sub    $0x30,%eax
  404ad8:	83 f8 09             	cmp    $0x9,%eax
  404adb:	77 0a                	ja     404ae7 <printf_core+0x367>
  404add:	80 7b 03 24          	cmpb   $0x24,0x3(%rbx)
  404ae1:	0f 84 4f 03 00 00    	je     404e36 <printf_core+0x6b6>
  404ae7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  404aed:	85 c0                	test   %eax,%eax
  404aef:	0f 85 38 ff ff ff    	jne    404a2d <printf_core+0x2ad>
  404af5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404afa:	0f 84 6f 03 00 00    	je     404e6f <printf_core+0x6ef>
  404b00:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404b07:	8b 06                	mov    (%rsi),%eax
  404b09:	83 f8 2f             	cmp    $0x2f,%eax
  404b0c:	0f 87 60 02 00 00    	ja     404d72 <printf_core+0x5f2>
  404b12:	89 c2                	mov    %eax,%edx
  404b14:	83 c0 08             	add    $0x8,%eax
  404b17:	48 03 56 10          	add    0x10(%rsi),%rdx
  404b1b:	89 06                	mov    %eax,(%rsi)
  404b1d:	8b 02                	mov    (%rdx),%eax
  404b1f:	89 45 80             	mov    %eax,-0x80(%rbp)
  404b22:	f7 d0                	not    %eax
  404b24:	c1 e8 1f             	shr    $0x1f,%eax
  404b27:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404b2d:	48 83 c3 02          	add    $0x2,%rbx
  404b31:	e9 89 fe ff ff       	jmp    4049bf <printf_core+0x23f>
  404b36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  404b3d:	00 00 00 
  404b40:	48 8d 50 01          	lea    0x1(%rax),%rdx
  404b44:	0f be 40 01          	movsbl 0x1(%rax),%eax
  404b48:	83 e8 30             	sub    $0x30,%eax
  404b4b:	83 f8 09             	cmp    $0x9,%eax
  404b4e:	77 10                	ja     404b60 <printf_core+0x3e0>
  404b50:	48 8d 42 01          	lea    0x1(%rdx),%rax
  404b54:	0f be 52 01          	movsbl 0x1(%rdx),%edx
  404b58:	83 ea 30             	sub    $0x30,%edx
  404b5b:	83 fa 09             	cmp    $0x9,%edx
  404b5e:	76 e0                	jbe    404b40 <printf_core+0x3c0>
  404b60:	e8 ab 15 00 00       	call   406110 <__errno_location>
  404b65:	c7 00 4b 00 00 00    	movl   $0x4b,(%rax)
  404b6b:	e9 c8 fe ff ff       	jmp    404a38 <printf_core+0x2b8>
  404b70:	49 63 f2             	movslq %r10d,%rsi
  404b73:	48 89 c2             	mov    %rax,%rdx
  404b76:	4c 89 f7             	mov    %r14,%rdi
  404b79:	44 89 95 50 ff ff ff 	mov    %r10d,-0xb0(%rbp)
  404b80:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  404b87:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  404b8b:	e8 10 1a 00 00       	call   4065a0 <__fwritex>
  404b90:	44 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%r8d
  404b97:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  404b9e:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  404ba2:	e9 b9 fc ff ff       	jmp    404860 <printf_core+0xe0>
  404ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404bae:	00 00 
  404bb0:	85 f6                	test   %esi,%esi
  404bb2:	0f 84 75 fe ff ff    	je     404a2d <printf_core+0x2ad>
  404bb8:	83 fe 1b             	cmp    $0x1b,%esi
  404bbb:	0f 84 e5 00 00 00    	je     404ca6 <printf_core+0x526>
  404bc1:	83 ff ff             	cmp    $0xffffffff,%edi
  404bc4:	0f 84 01 02 00 00    	je     404dcb <printf_core+0x64b>
  404bca:	48 63 ff             	movslq %edi,%rdi
  404bcd:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404bd2:	0f 84 b2 01 00 00    	je     404d8a <printf_core+0x60a>
  404bd8:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404bdf:	48 c1 e7 04          	shl    $0x4,%rdi
  404be3:	66 0f 6f 04 3e       	movdqa (%rsi,%rdi,1),%xmm0
  404be8:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
  404bec:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404bf0:	f6 07 20             	testb  $0x20,(%rdi)
  404bf3:	0f 85 3f fe ff ff    	jne    404a38 <printf_core+0x2b8>
  404bf9:	0f be 53 ff          	movsbl -0x1(%rbx),%edx
  404bfd:	89 d6                	mov    %edx,%esi
  404bff:	85 c0                	test   %eax,%eax
  404c01:	74 13                	je     404c16 <printf_core+0x496>
  404c03:	89 d7                	mov    %edx,%edi
  404c05:	83 e6 df             	and    $0xffffffdf,%esi
  404c08:	83 e7 0f             	and    $0xf,%edi
  404c0b:	40 0f be f6          	movsbl %sil,%esi
  404c0f:	40 80 ff 03          	cmp    $0x3,%dil
  404c13:	0f 44 d6             	cmove  %esi,%edx
  404c16:	44 89 e6             	mov    %r12d,%esi
  404c19:	81 e6 ff ff fe ff    	and    $0xfffeffff,%esi
  404c1f:	41 f7 c4 00 20 00 00 	test   $0x2000,%r12d
  404c26:	44 0f 45 e6          	cmovne %esi,%r12d
  404c2a:	8d 72 bf             	lea    -0x41(%rdx),%esi
  404c2d:	83 fe 37             	cmp    $0x37,%esi
  404c30:	0f 87 c2 02 00 00    	ja     404ef8 <printf_core+0x778>
  404c36:	48 8d 3d cf 35 00 00 	lea    0x35cf(%rip),%rdi        # 40820c <_fini+0x1208>
  404c3d:	48 63 34 b7          	movslq (%rdi,%rsi,4),%rsi
  404c41:	48 01 fe             	add    %rdi,%rsi
  404c44:	3e ff e6             	notrack jmp *%rsi
  404c47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404c4e:	00 00 
  404c50:	80 7a 02 24          	cmpb   $0x24,0x2(%rdx)
  404c54:	0f 84 ab 01 00 00    	je     404e05 <printf_core+0x685>
  404c5a:	8b b5 7c ff ff ff    	mov    -0x84(%rbp),%esi
  404c60:	85 f6                	test   %esi,%esi
  404c62:	0f 85 c5 fd ff ff    	jne    404a2d <printf_core+0x2ad>
  404c68:	48 8d 5a 01          	lea    0x1(%rdx),%rbx
  404c6c:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404c71:	0f 85 ec fc ff ff    	jne    404963 <printf_core+0x1e3>
  404c77:	44 89 95 68 ff ff ff 	mov    %r10d,-0x98(%rbp)
  404c7e:	45 89 d1             	mov    %r10d,%r9d
  404c81:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404c88:	e9 32 fd ff ff       	jmp    4049bf <printf_core+0x23f>
  404c8d:	0f be 4b 03          	movsbl 0x3(%rbx),%ecx
  404c91:	48 8d 53 03          	lea    0x3(%rbx),%rdx
  404c95:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404c9c:	00 00 00 
  404c9f:	89 c8                	mov    %ecx,%eax
  404ca1:	e9 1b fc ff ff       	jmp    4048c1 <printf_core+0x141>
  404ca6:	83 ff ff             	cmp    $0xffffffff,%edi
  404ca9:	0f 85 7e fd ff ff    	jne    404a2d <printf_core+0x2ad>
  404caf:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404cb4:	0f 85 32 ff ff ff    	jne    404bec <printf_core+0x46c>
  404cba:	e9 af fb ff ff       	jmp    40486e <printf_core+0xee>
  404cbf:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404cc6:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404cca:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404cce:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404cd2:	e9 a9 fc ff ff       	jmp    404980 <printf_core+0x200>
  404cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404cde:	00 00 
  404ce0:	0f be d0             	movsbl %al,%edx
  404ce3:	48 83 c3 01          	add    $0x1,%rbx
  404ce7:	83 ea 30             	sub    $0x30,%edx
  404cea:	83 fa 09             	cmp    $0x9,%edx
  404ced:	0f 87 93 0b 00 00    	ja     405886 <printf_core+0x1106>
  404cf3:	44 89 d2             	mov    %r10d,%edx
  404cf6:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
  404cfc:	0f 8f fe 0c 00 00    	jg     405a00 <printf_core+0x1280>
  404d02:	6b ca f6             	imul   $0xfffffff6,%edx,%ecx
  404d05:	83 e8 30             	sub    $0x30,%eax
  404d08:	0f be c0             	movsbl %al,%eax
  404d0b:	8d 91 ff ff ff 7f    	lea    0x7fffffff(%rcx),%edx
  404d11:	39 c2                	cmp    %eax,%edx
  404d13:	0f 8d 87 00 00 00    	jge    404da0 <printf_core+0x620>
  404d19:	0f be 43 01          	movsbl 0x1(%rbx),%eax
  404d1d:	83 e8 30             	sub    $0x30,%eax
  404d20:	83 f8 09             	cmp    $0x9,%eax
  404d23:	0f 87 8b 0a 00 00    	ja     4057b4 <printf_core+0x1034>
  404d29:	0f be 53 02          	movsbl 0x2(%rbx),%edx
  404d2d:	48 8d 43 02          	lea    0x2(%rbx),%rax
  404d31:	83 ea 30             	sub    $0x30,%edx
  404d34:	83 fa 09             	cmp    $0x9,%edx
  404d37:	77 20                	ja     404d59 <printf_core+0x5d9>
  404d39:	0f be 50 01          	movsbl 0x1(%rax),%edx
  404d3d:	48 8d 58 01          	lea    0x1(%rax),%rbx
  404d41:	83 ea 30             	sub    $0x30,%edx
  404d44:	83 fa 09             	cmp    $0x9,%edx
  404d47:	77 13                	ja     404d5c <printf_core+0x5dc>
  404d49:	0f be 50 02          	movsbl 0x2(%rax),%edx
  404d4d:	48 83 c0 02          	add    $0x2,%rax
  404d51:	83 ea 30             	sub    $0x30,%edx
  404d54:	83 fa 09             	cmp    $0x9,%edx
  404d57:	76 e0                	jbe    404d39 <printf_core+0x5b9>
  404d59:	48 89 c3             	mov    %rax,%rbx
  404d5c:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404d63:	00 00 00 
  404d66:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  404d6d:	e9 4d fc ff ff       	jmp    4049bf <printf_core+0x23f>
  404d72:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  404d79:	48 8b 56 08          	mov    0x8(%rsi),%rdx
  404d7d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  404d81:	48 89 46 08          	mov    %rax,0x8(%rsi)
  404d85:	e9 93 fd ff ff       	jmp    404b1d <printf_core+0x39d>
  404d8a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  404d91:	89 34 b8             	mov    %esi,(%rax,%rdi,4)
  404d94:	e9 d5 fa ff ff       	jmp    40486e <printf_core+0xee>
  404d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404da0:	48 83 c3 01          	add    $0x1,%rbx
  404da4:	29 c8                	sub    %ecx,%eax
  404da6:	0f be 0b             	movsbl (%rbx),%ecx
  404da9:	89 c2                	mov    %eax,%edx
  404dab:	89 c8                	mov    %ecx,%eax
  404dad:	83 e9 30             	sub    $0x30,%ecx
  404db0:	83 f9 09             	cmp    $0x9,%ecx
  404db3:	0f 86 3d ff ff ff    	jbe    404cf6 <printf_core+0x576>
  404db9:	89 55 80             	mov    %edx,-0x80(%rbp)
  404dbc:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404dc3:	00 00 00 
  404dc6:	e9 f4 fb ff ff       	jmp    4049bf <printf_core+0x23f>
  404dcb:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404dd0:	0f 84 15 0c 00 00    	je     4059eb <printf_core+0x126b>
  404dd6:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404ddd:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
  404de1:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  404de7:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
  404dee:	e8 1d dd ff ff       	call   402b10 <pop_arg>
  404df3:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  404df9:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  404e00:	e9 e7 fd ff ff       	jmp    404bec <printf_core+0x46c>
  404e05:	48 8d 5a 03          	lea    0x3(%rdx),%rbx
  404e09:	48 83 e8 30          	sub    $0x30,%rax
  404e0d:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e12:	0f 84 b6 09 00 00    	je     4057ce <printf_core+0x104e>
  404e18:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404e1f:	48 c1 e0 04          	shl    $0x4,%rax
  404e23:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  404e2a:	00 00 00 
  404e2d:	44 8b 0c 06          	mov    (%rsi,%rax,1),%r9d
  404e31:	e9 57 fb ff ff       	jmp    40498d <printf_core+0x20d>
  404e36:	48 0f be c2          	movsbq %dl,%rax
  404e3a:	48 83 e8 30          	sub    $0x30,%rax
  404e3e:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e43:	0f 84 a9 09 00 00    	je     4057f2 <printf_core+0x1072>
  404e49:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  404e50:	48 c1 e0 04          	shl    $0x4,%rax
  404e54:	48 8b 04 06          	mov    (%rsi,%rax,1),%rax
  404e58:	89 45 80             	mov    %eax,-0x80(%rbp)
  404e5b:	f7 d0                	not    %eax
  404e5d:	c1 e8 1f             	shr    $0x1f,%eax
  404e60:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404e66:	48 83 c3 04          	add    $0x4,%rbx
  404e6a:	e9 50 fb ff ff       	jmp    4049bf <printf_core+0x23f>
  404e6f:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  404e73:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  404e7a:	00 00 00 
  404e7d:	e9 ab fc ff ff       	jmp    404b2d <printf_core+0x3ad>
  404e82:	48 89 d3             	mov    %rdx,%rbx
  404e85:	45 89 d1             	mov    %r10d,%r9d
  404e88:	45 31 e4             	xor    %r12d,%r12d
  404e8b:	e9 2b fc ff ff       	jmp    404abb <printf_core+0x33b>
  404e90:	45 89 eb             	mov    %r13d,%r11d
  404e93:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
  404e98:	0f 85 a0 fb ff ff    	jne    404a3e <printf_core+0x2be>
  404e9e:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  404ea5:	8b 8d 7c ff ff ff    	mov    -0x84(%rbp),%ecx
  404eab:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404eb1:	48 83 c7 10          	add    $0x10,%rdi
  404eb5:	85 c9                	test   %ecx,%ecx
  404eb7:	0f 84 2e 0b 00 00    	je     4059eb <printf_core+0x126b>
  404ebd:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  404ec4:	4c 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%r9
  404ecb:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
  404ecf:	85 f6                	test   %esi,%esi
  404ed1:	0f 84 90 0a 00 00    	je     405967 <printf_core+0x11e7>
  404ed7:	e8 34 dc ff ff       	call   402b10 <pop_arg>
  404edc:	49 83 c0 01          	add    $0x1,%r8
  404ee0:	48 83 c7 10          	add    $0x10,%rdi
  404ee4:	49 83 f8 0a          	cmp    $0xa,%r8
  404ee8:	75 e1                	jne    404ecb <printf_core+0x74b>
  404eea:	41 bb 01 00 00 00    	mov    $0x1,%r11d
  404ef0:	e9 49 fb ff ff       	jmp    404a3e <printf_core+0x2be>
  404ef5:	0f 1f 00             	nopl   (%rax)
  404ef8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  404efc:	4c 29 f0             	sub    %r14,%rax
  404eff:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  404f06:	48 89 c7             	mov    %rax,%rdi
  404f09:	48 63 45 80          	movslq -0x80(%rbp),%rax
  404f0d:	48 39 c7             	cmp    %rax,%rdi
  404f10:	0f 8e da 07 00 00    	jle    4056f0 <printf_core+0xf70>
  404f16:	48 89 f8             	mov    %rdi,%rax
  404f19:	48 8d 3d 93 32 00 00 	lea    0x3293(%rip),%rdi        # 4081b3 <_fini+0x11af>
  404f20:	89 45 80             	mov    %eax,-0x80(%rbp)
  404f23:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  404f2a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  404f30:	44 89 d0             	mov    %r10d,%eax
  404f33:	66 90                	xchg   %ax,%ax
  404f35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  404f3c:	00 00 00 00 
  404f40:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  404f46:	41 39 c9             	cmp    %ecx,%r9d
  404f49:	41 89 c8             	mov    %ecx,%r8d
  404f4c:	45 0f 4d c1          	cmovge %r9d,%r8d
  404f50:	45 39 c3             	cmp    %r8d,%r11d
  404f53:	0f 8c 07 fc ff ff    	jl     404b60 <printf_core+0x3e0>
  404f59:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  404f60:	0f 85 e2 06 00 00    	jne    405648 <printf_core+0xec8>
  404f66:	41 39 c9             	cmp    %ecx,%r9d
  404f69:	0f 8e 40 07 00 00    	jle    4056af <printf_core+0xf2f>
  404f6f:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404f73:	44 89 c2             	mov    %r8d,%edx
  404f76:	be 20 00 00 00       	mov    $0x20,%esi
  404f7b:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  404f81:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  404f88:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404f8f:	e8 6c dd ff ff       	call   402d00 <pad.part.0>
  404f94:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404f98:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404f9f:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  404fa6:	f6 00 20             	testb  $0x20,(%rax)
  404fa9:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  404faf:	0f 84 07 07 00 00    	je     4056bc <printf_core+0xf3c>
  404fb5:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  404fbc:	89 c1                	mov    %eax,%ecx
  404fbe:	3b 45 80             	cmp    -0x80(%rbp),%eax
  404fc1:	0f 8d a7 f8 ff ff    	jge    40486e <printf_core+0xee>
  404fc7:	44 3b 8d 68 ff ff ff 	cmp    -0x98(%rbp),%r9d
  404fce:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  404fd5:	8b 55 80             	mov    -0x80(%rbp),%edx
  404fd8:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  404fdc:	be 30 00 00 00       	mov    $0x30,%esi
  404fe1:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  404fe8:	e8 13 dd ff ff       	call   402d00 <pad.part.0>
  404fed:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  404ff4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  404ff8:	f6 00 20             	testb  $0x20,(%rax)
  404ffb:	75 1b                	jne    405018 <printf_core+0x898>
  404ffd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  405001:	48 8b b5 48 ff ff ff 	mov    -0xb8(%rbp),%rsi
  405008:	4c 89 f7             	mov    %r14,%rdi
  40500b:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  40500f:	e8 8c 15 00 00       	call   4065a0 <__fwritex>
  405014:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  405018:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  40501f:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  405026:	0f 85 42 f8 ff ff    	jne    40486e <printf_core+0xee>
  40502c:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405033:	0f 85 35 f8 ff ff    	jne    40486e <printf_core+0xee>
  405039:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40503d:	44 89 c2             	mov    %r8d,%edx
  405040:	be 20 00 00 00       	mov    $0x20,%esi
  405045:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
  405049:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40504f:	e8 ac dc ff ff       	call   402d00 <pad.part.0>
  405054:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  405058:	e9 11 f8 ff ff       	jmp    40486e <printf_core+0xee>
  40505d:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  405061:	45 85 c0             	test   %r8d,%r8d
  405064:	79 0d                	jns    405073 <printf_core+0x8f3>
  405066:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  40506d:	0f 85 ed fa ff ff    	jne    404b60 <printf_core+0x3e0>
  405073:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  40507a:	41 89 d0             	mov    %edx,%r8d
  40507d:	44 89 ce             	mov    %r9d,%esi
  405080:	44 89 e1             	mov    %r12d,%ecx
  405083:	ff 75 98             	push   -0x68(%rbp)
  405086:	ff 75 90             	push   -0x70(%rbp)
  405089:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40508d:	8b 55 80             	mov    -0x80(%rbp),%edx
  405090:	e8 6b dd ff ff       	call   402e00 <fmt_fp>
  405095:	5e                   	pop    %rsi
  405096:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40509d:	83 f8 ff             	cmp    $0xffffffff,%eax
  4050a0:	41 89 c0             	mov    %eax,%r8d
  4050a3:	5f                   	pop    %rdi
  4050a4:	0f 85 bb f7 ff ff    	jne    404865 <printf_core+0xe5>
  4050aa:	e9 b1 fa ff ff       	jmp    404b60 <printf_core+0x3e0>
  4050af:	90                   	nop
  4050b0:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  4050b4:	48 85 f6             	test   %rsi,%rsi
  4050b7:	0f 88 4f 08 00 00    	js     40590c <printf_core+0x118c>
  4050bd:	41 f7 c4 00 08 00 00 	test   $0x800,%r12d
  4050c4:	0f 85 61 08 00 00    	jne    40592b <printf_core+0x11ab>
  4050ca:	41 f6 c4 01          	test   $0x1,%r12b
  4050ce:	0f 85 7b 08 00 00    	jne    40594f <printf_core+0x11cf>
  4050d4:	48 8d 3d d8 30 00 00 	lea    0x30d8(%rip),%rdi        # 4081b3 <_fini+0x11af>
  4050db:	44 89 d0             	mov    %r10d,%eax
  4050de:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4050e5:	48 85 f6             	test   %rsi,%rsi
  4050e8:	0f 84 55 08 00 00    	je     405943 <printf_core+0x11c3>
  4050ee:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  4050f5:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4050f9:	89 c7                	mov    %eax,%edi
  4050fb:	48 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rcx
  405102:	cc cc cc 
  405105:	4d 89 c6             	mov    %r8,%r14
  405108:	90                   	nop
  405109:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405110:	00 00 00 00 
  405114:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40511b:	00 00 00 00 
  40511f:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405126:	00 00 00 00 
  40512a:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  405131:	00 00 00 00 
  405135:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40513c:	00 00 00 00 
  405140:	48 89 f0             	mov    %rsi,%rax
  405143:	49 83 ee 01          	sub    $0x1,%r14
  405147:	48 f7 e1             	mul    %rcx
  40514a:	48 89 f0             	mov    %rsi,%rax
  40514d:	48 c1 ea 03          	shr    $0x3,%rdx
  405151:	4c 8d 14 92          	lea    (%rdx,%rdx,4),%r10
  405155:	4d 01 d2             	add    %r10,%r10
  405158:	4c 29 d0             	sub    %r10,%rax
  40515b:	83 c0 30             	add    $0x30,%eax
  40515e:	48 83 fe 09          	cmp    $0x9,%rsi
  405162:	48 89 d6             	mov    %rdx,%rsi
  405165:	41 88 06             	mov    %al,(%r14)
  405168:	77 d6                	ja     405140 <printf_core+0x9c0>
  40516a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405171:	89 f8                	mov    %edi,%eax
  405173:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405176:	85 ff                	test   %edi,%edi
  405178:	79 0d                	jns    405187 <printf_core+0xa07>
  40517a:	f6 85 68 ff ff ff 01 	testb  $0x1,-0x98(%rbp)
  405181:	0f 85 d9 f9 ff ff    	jne    404b60 <printf_core+0x3e0>
  405187:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  40518d:	44 89 e2             	mov    %r12d,%edx
  405190:	8b 75 80             	mov    -0x80(%rbp),%esi
  405193:	81 e2 ff ff fe ff    	and    $0xfffeffff,%edx
  405199:	85 c9                	test   %ecx,%ecx
  40519b:	44 0f 45 e2          	cmovne %edx,%r12d
  40519f:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  4051a4:	0f 94 c2             	sete   %dl
  4051a7:	85 f6                	test   %esi,%esi
  4051a9:	75 08                	jne    4051b3 <printf_core+0xa33>
  4051ab:	84 d2                	test   %dl,%dl
  4051ad:	0f 85 e4 05 00 00    	jne    405797 <printf_core+0x1017>
  4051b3:	4c 89 c7             	mov    %r8,%rdi
  4051b6:	48 63 4d 80          	movslq -0x80(%rbp),%rcx
  4051ba:	0f b6 d2             	movzbl %dl,%edx
  4051bd:	4c 29 f7             	sub    %r14,%rdi
  4051c0:	48 01 fa             	add    %rdi,%rdx
  4051c3:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  4051ca:	48 39 ca             	cmp    %rcx,%rdx
  4051cd:	48 0f 4c d1          	cmovl  %rcx,%rdx
  4051d1:	48 63 ca             	movslq %edx,%rcx
  4051d4:	48 39 cf             	cmp    %rcx,%rdi
  4051d7:	0f 4e fa             	cmovle %edx,%edi
  4051da:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
  4051df:	29 c2                	sub    %eax,%edx
  4051e1:	89 7d 80             	mov    %edi,-0x80(%rbp)
  4051e4:	39 fa                	cmp    %edi,%edx
  4051e6:	0f 8c 74 f9 ff ff    	jl     404b60 <printf_core+0x3e0>
  4051ec:	8b 7d 80             	mov    -0x80(%rbp),%edi
  4051ef:	01 c7                	add    %eax,%edi
  4051f1:	89 bd 68 ff ff ff    	mov    %edi,-0x98(%rbp)
  4051f7:	e9 44 fd ff ff       	jmp    404f40 <printf_core+0x7c0>
  4051fc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405200:	48 85 c0             	test   %rax,%rax
  405203:	0f 84 9a 02 00 00    	je     4054a3 <printf_core+0xd23>
  405209:	44 89 e7             	mov    %r12d,%edi
  40520c:	83 e7 08             	and    $0x8,%edi
  40520f:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
  405215:	89 d7                	mov    %edx,%edi
  405217:	83 e7 20             	and    $0x20,%edi
  40521a:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%rbp)
  405220:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405224:	48 8d 35 e5 30 00 00 	lea    0x30e5(%rip),%rsi        # 408310 <xdigits>
  40522b:	4d 89 c6             	mov    %r8,%r14
  40522e:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40523c:	00 00 00 00 
  405240:	48 89 c1             	mov    %rax,%rcx
  405243:	49 83 ee 01          	sub    $0x1,%r14
  405247:	83 e1 0f             	and    $0xf,%ecx
  40524a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  40524e:	09 fa                	or     %edi,%edx
  405250:	48 c1 e8 04          	shr    $0x4,%rax
  405254:	41 88 16             	mov    %dl,(%r14)
  405257:	75 e7                	jne    405240 <printf_core+0xac0>
  405259:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40525f:	85 c0                	test   %eax,%eax
  405261:	0f 85 f9 05 00 00    	jne    405860 <printf_core+0x10e0>
  405267:	48 8d 3d 45 2f 00 00 	lea    0x2f45(%rip),%rdi        # 4081b3 <_fini+0x11af>
  40526e:	44 89 d0             	mov    %r10d,%eax
  405271:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405278:	e9 f6 fe ff ff       	jmp    405173 <printf_core+0x9f3>
  40527d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405281:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405285:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40528c:	48 85 d2             	test   %rdx,%rdx
  40528f:	0f 84 06 07 00 00    	je     40599b <printf_core+0x121b>
  405295:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
  40529c:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
  4052a0:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
  4052a7:	31 db                	xor    %ebx,%ebx
  4052a9:	44 89 a5 3c ff ff ff 	mov    %r12d,-0xc4(%rbp)
  4052b0:	44 8b 65 80          	mov    -0x80(%rbp),%r12d
  4052b4:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  4052bb:	49 89 ce             	mov    %rcx,%r14
  4052be:	44 89 6d 80          	mov    %r13d,-0x80(%rbp)
  4052c2:	49 89 d5             	mov    %rdx,%r13
  4052c5:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
  4052cc:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
  4052d3:	44 89 8d 38 ff ff ff 	mov    %r9d,-0xc8(%rbp)
  4052da:	eb 34                	jmp    405310 <printf_core+0xb90>
  4052dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4052e0:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  4052e7:	e8 24 10 00 00       	call   406310 <wctomb>
  4052ec:	85 c0                	test   %eax,%eax
  4052ee:	0f 88 44 f7 ff ff    	js     404a38 <printf_core+0x2b8>
  4052f4:	4c 89 ea             	mov    %r13,%rdx
  4052f7:	48 98                	cltq
  4052f9:	48 29 da             	sub    %rbx,%rdx
  4052fc:	48 39 c2             	cmp    %rax,%rdx
  4052ff:	72 16                	jb     405317 <printf_core+0xb97>
  405301:	48 01 c3             	add    %rax,%rbx
  405304:	4d 63 ec             	movslq %r12d,%r13
  405307:	49 83 c6 04          	add    $0x4,%r14
  40530b:	4c 39 eb             	cmp    %r13,%rbx
  40530e:	73 07                	jae    405317 <printf_core+0xb97>
  405310:	41 8b 36             	mov    (%r14),%esi
  405313:	85 f6                	test   %esi,%esi
  405315:	75 c9                	jne    4052e0 <printf_core+0xb60>
  405317:	49 89 de             	mov    %rbx,%r14
  40531a:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
  405321:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
  405328:	44 8b a5 3c ff ff ff 	mov    -0xc4(%rbp),%r12d
  40532f:	44 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9d
  405336:	48 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%rbx
  40533d:	44 8b 6d 80          	mov    -0x80(%rbp),%r13d
  405341:	49 81 fe ff ff ff 7f 	cmp    $0x7fffffff,%r14
  405348:	0f 87 12 f8 ff ff    	ja     404b60 <printf_core+0x3e0>
  40534e:	45 39 f1             	cmp    %r14d,%r9d
  405351:	44 89 f0             	mov    %r14d,%eax
  405354:	0f 9e c2             	setle  %dl
  405357:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  40535e:	0f 95 c1             	setne  %cl
  405361:	08 d1                	or     %dl,%cl
  405363:	0f 84 5c 05 00 00    	je     4058c5 <printf_core+0x1145>
  405369:	4d 85 f6             	test   %r14,%r14
  40536c:	0f 84 96 06 00 00    	je     405a08 <printf_core+0x1288>
  405372:	48 8d 7d ac          	lea    -0x54(%rbp),%rdi
  405376:	48 89 9d 48 ff ff ff 	mov    %rbx,-0xb8(%rbp)
  40537d:	48 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%rbx
  405384:	44 89 a5 78 ff ff ff 	mov    %r12d,-0x88(%rbp)
  40538b:	45 31 e4             	xor    %r12d,%r12d
  40538e:	44 89 ad 38 ff ff ff 	mov    %r13d,-0xc8(%rbp)
  405395:	4c 8b 6d 88          	mov    -0x78(%rbp),%r13
  405399:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40539d:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  4053a4:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
  4053ab:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
  4053b1:	88 95 50 ff ff ff    	mov    %dl,-0xb0(%rbp)
  4053b7:	eb 10                	jmp    4053c9 <printf_core+0xc49>
  4053b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4053c0:	4d 39 f4             	cmp    %r14,%r12
  4053c3:	0f 83 46 03 00 00    	jae    40570f <printf_core+0xf8f>
  4053c9:	8b 33                	mov    (%rbx),%esi
  4053cb:	85 f6                	test   %esi,%esi
  4053cd:	0f 84 3c 03 00 00    	je     40570f <printf_core+0xf8f>
  4053d3:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4053d7:	e8 34 0f 00 00       	call   406310 <wctomb>
  4053dc:	48 63 f0             	movslq %eax,%rsi
  4053df:	49 01 f4             	add    %rsi,%r12
  4053e2:	4d 39 e6             	cmp    %r12,%r14
  4053e5:	0f 82 24 03 00 00    	jb     40570f <printf_core+0xf8f>
  4053eb:	48 83 c3 04          	add    $0x4,%rbx
  4053ef:	41 f6 45 00 20       	testb  $0x20,0x0(%r13)
  4053f4:	75 ca                	jne    4053c0 <printf_core+0xc40>
  4053f6:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  4053fa:	4c 89 ea             	mov    %r13,%rdx
  4053fd:	e8 9e 11 00 00       	call   4065a0 <__fwritex>
  405402:	eb bc                	jmp    4053c0 <printf_core+0xc40>
  405404:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405408:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  40540c:	4d 89 c6             	mov    %r8,%r14
  40540f:	48 85 c0             	test   %rax,%rax
  405412:	74 21                	je     405435 <printf_core+0xcb5>
  405414:	90                   	nop
  405415:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40541c:	00 00 00 00 
  405420:	89 c2                	mov    %eax,%edx
  405422:	49 83 ee 01          	sub    $0x1,%r14
  405426:	83 e2 07             	and    $0x7,%edx
  405429:	83 c2 30             	add    $0x30,%edx
  40542c:	48 c1 e8 03          	shr    $0x3,%rax
  405430:	41 88 16             	mov    %dl,(%r14)
  405433:	75 eb                	jne    405420 <printf_core+0xca0>
  405435:	41 f6 c4 08          	test   $0x8,%r12b
  405439:	0f 84 28 fe ff ff    	je     405267 <printf_core+0xae7>
  40543f:	4c 89 c0             	mov    %r8,%rax
  405442:	48 63 55 80          	movslq -0x80(%rbp),%rdx
  405446:	4c 29 f0             	sub    %r14,%rax
  405449:	48 39 d0             	cmp    %rdx,%rax
  40544c:	0f 8c 15 fe ff ff    	jl     405267 <printf_core+0xae7>
  405452:	83 c0 01             	add    $0x1,%eax
  405455:	48 8d 3d 57 2d 00 00 	lea    0x2d57(%rip),%rdi        # 4081b3 <_fini+0x11af>
  40545c:	89 45 80             	mov    %eax,-0x80(%rbp)
  40545f:	44 89 d0             	mov    %r10d,%eax
  405462:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405469:	e9 05 fd ff ff       	jmp    405173 <printf_core+0x9f3>
  40546e:	8b 7d 80             	mov    -0x80(%rbp),%edi
  405471:	b8 10 00 00 00       	mov    $0x10,%eax
  405476:	ba 78 00 00 00       	mov    $0x78,%edx
  40547b:	c7 85 50 ff ff ff 08 	movl   $0x8,-0xb0(%rbp)
  405482:	00 00 00 
  405485:	39 c7                	cmp    %eax,%edi
  405487:	0f 43 c7             	cmovae %edi,%eax
  40548a:	41 83 cc 08          	or     $0x8,%r12d
  40548e:	bf 20 00 00 00       	mov    $0x20,%edi
  405493:	89 45 80             	mov    %eax,-0x80(%rbp)
  405496:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40549a:	48 85 c0             	test   %rax,%rax
  40549d:	0f 85 77 fd ff ff    	jne    40521a <printf_core+0xa9a>
  4054a3:	48 8d 3d 09 2d 00 00 	lea    0x2d09(%rip),%rdi        # 4081b3 <_fini+0x11af>
  4054aa:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  4054ae:	44 89 d0             	mov    %r10d,%eax
  4054b1:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4054b8:	4d 89 c6             	mov    %r8,%r14
  4054bb:	e9 b3 fc ff ff       	jmp    405173 <printf_core+0x9f3>
  4054c0:	4c 8b 75 90          	mov    -0x70(%rbp),%r14
  4054c4:	48 8d 05 f2 2c 00 00 	lea    0x2cf2(%rip),%rax        # 4081bd <_fini+0x11b9>
  4054cb:	4d 85 f6             	test   %r14,%r14
  4054ce:	4c 0f 44 f0          	cmove  %rax,%r14
  4054d2:	8b 45 80             	mov    -0x80(%rbp),%eax
  4054d5:	85 c0                	test   %eax,%eax
  4054d7:	0f 88 36 03 00 00    	js     405813 <printf_core+0x1093>
  4054dd:	48 63 75 80          	movslq -0x80(%rbp),%rsi
  4054e1:	4c 89 f7             	mov    %r14,%rdi
  4054e4:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  4054eb:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4054f2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4054f9:	e8 82 07 00 00       	call   405c80 <strnlen>
  4054fe:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  405505:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40550c:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  405513:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405517:	4c 29 f2             	sub    %r14,%rdx
  40551a:	89 45 80             	mov    %eax,-0x80(%rbp)
  40551d:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405524:	48 89 95 48 ff ff ff 	mov    %rdx,-0xb8(%rbp)
  40552b:	48 89 d7             	mov    %rdx,%rdi
  40552e:	48 63 d0             	movslq %eax,%rdx
  405531:	48 39 d7             	cmp    %rdx,%rdi
  405534:	0f 8e b9 01 00 00    	jle    4056f3 <printf_core+0xf73>
  40553a:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  405541:	e9 d3 f9 ff ff       	jmp    404f19 <printf_core+0x799>
  405546:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  40554a:	48 85 f6             	test   %rsi,%rsi
  40554d:	0f 85 46 03 00 00    	jne    405899 <printf_core+0x1119>
  405553:	48 8d 3d 59 2c 00 00 	lea    0x2c59(%rip),%rdi        # 4081b3 <_fini+0x11af>
  40555a:	40 88 75 c7          	mov    %sil,-0x39(%rbp)
  40555e:	44 89 d0             	mov    %r10d,%eax
  405561:	41 81 e4 ff ff fe ff 	and    $0xfffeffff,%r12d
  405568:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  40556f:	00 00 00 
  405572:	4c 8d 75 c7          	lea    -0x39(%rbp),%r14
  405576:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40557d:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
  405584:	48 c7 85 48 ff ff ff 	movq   $0x1,-0xb8(%rbp)
  40558b:	01 00 00 00 
  40558f:	e9 ac f9 ff ff       	jmp    404f40 <printf_core+0x7c0>
  405594:	44 89 8d 48 ff ff ff 	mov    %r9d,-0xb8(%rbp)
  40559b:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4055a2:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4055a9:	e8 62 0b 00 00       	call   406110 <__errno_location>
  4055ae:	8b 38                	mov    (%rax),%edi
  4055b0:	e8 ab 0b 00 00       	call   406160 <strerror>
  4055b5:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
  4055bc:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4055c3:	44 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%r9d
  4055ca:	49 89 c6             	mov    %rax,%r14
  4055cd:	e9 00 ff ff ff       	jmp    4054d2 <printf_core+0xd52>
  4055d2:	83 f8 07             	cmp    $0x7,%eax
  4055d5:	0f 87 93 f2 ff ff    	ja     40486e <printf_core+0xee>
  4055db:	48 8d 15 0a 2d 00 00 	lea    0x2d0a(%rip),%rdx        # 4082ec <_fini+0x12e8>
  4055e2:	48 63 04 8a          	movslq (%rdx,%rcx,4),%rax
  4055e6:	48 01 d0             	add    %rdx,%rax
  4055e9:	3e ff e0             	notrack jmp *%rax
  4055ec:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  4055f0:	49 63 c5             	movslq %r13d,%rax
  4055f3:	48 89 02             	mov    %rax,(%rdx)
  4055f6:	e9 73 f2 ff ff       	jmp    40486e <printf_core+0xee>
  4055fb:	48 8d 3d b1 2b 00 00 	lea    0x2bb1(%rip),%rdi        # 4081b3 <_fini+0x11af>
  405602:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405606:	44 89 d0             	mov    %r10d,%eax
  405609:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405610:	e9 d0 fa ff ff       	jmp    4050e5 <printf_core+0x965>
  405615:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  405619:	e9 35 ff ff ff       	jmp    405553 <printf_core+0xdd3>
  40561e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  405622:	44 89 28             	mov    %r13d,(%rax)
  405625:	e9 44 f2 ff ff       	jmp    40486e <printf_core+0xee>
  40562a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40562e:	66 44 89 28          	mov    %r13w,(%rax)
  405632:	e9 37 f2 ff ff       	jmp    40486e <printf_core+0xee>
  405637:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40563b:	44 88 28             	mov    %r13b,(%rax)
  40563e:	e9 2b f2 ff ff       	jmp    40486e <printf_core+0xee>
  405643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405648:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40564c:	f6 07 20             	testb  $0x20,(%rdi)
  40564f:	74 6b                	je     4056bc <printf_core+0xf3c>
  405651:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  405657:	44 89 e0             	mov    %r12d,%eax
  40565a:	41 39 c9             	cmp    %ecx,%r9d
  40565d:	0f 9e 85 50 ff ff ff 	setle  -0xb0(%rbp)
  405664:	35 00 00 01 00       	xor    $0x10000,%eax
  405669:	a9 00 20 01 00       	test   $0x12000,%eax
  40566e:	75 28                	jne    405698 <printf_core+0xf18>
  405670:	80 bd 50 ff ff ff 00 	cmpb   $0x0,-0xb0(%rbp)
  405677:	75 1f                	jne    405698 <printf_core+0xf18>
  405679:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  40567d:	44 89 c2             	mov    %r8d,%edx
  405680:	be 30 00 00 00       	mov    $0x30,%esi
  405685:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
  40568c:	e8 6f d6 ff ff       	call   402d00 <pad.part.0>
  405691:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
  405698:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40569f:	89 c1                	mov    %eax,%ecx
  4056a1:	3b 45 80             	cmp    -0x80(%rbp),%eax
  4056a4:	0f 8d 4a f9 ff ff    	jge    404ff4 <printf_core+0x874>
  4056aa:	e9 26 f9 ff ff       	jmp    404fd5 <printf_core+0x855>
  4056af:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4056b3:	f6 07 20             	testb  $0x20,(%rdi)
  4056b6:	0f 85 f9 f8 ff ff    	jne    404fb5 <printf_core+0x835>
  4056bc:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  4056c0:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  4056c7:	48 63 f0             	movslq %eax,%rsi
  4056ca:	44 89 85 40 ff ff ff 	mov    %r8d,-0xc0(%rbp)
  4056d1:	44 89 8d 78 ff ff ff 	mov    %r9d,-0x88(%rbp)
  4056d8:	e8 c3 0e 00 00       	call   4065a0 <__fwritex>
  4056dd:	44 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%r9d
  4056e4:	44 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8d
  4056eb:	e9 61 ff ff ff       	jmp    405651 <printf_core+0xed1>
  4056f0:	8b 45 80             	mov    -0x80(%rbp),%eax
  4056f3:	48 8d 3d b9 2a 00 00 	lea    0x2ab9(%rip),%rdi        # 4081b3 <_fini+0x11af>
  4056fa:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  405700:	44 89 d0             	mov    %r10d,%eax
  405703:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40570a:	e9 31 f8 ff ff       	jmp    404f40 <printf_core+0x7c0>
  40570f:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  405716:	48 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%rbx
  40571d:	44 8b a5 78 ff ff ff 	mov    -0x88(%rbp),%r12d
  405724:	44 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%r9d
  40572b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  405731:	0f b6 95 50 ff ff ff 	movzbl -0xb0(%rbp),%edx
  405738:	44 8b ad 38 ff ff ff 	mov    -0xc8(%rbp),%r13d
  40573f:	41 81 f4 00 20 00 00 	xor    $0x2000,%r12d
  405746:	41 81 e4 00 20 01 00 	and    $0x12000,%r12d
  40574d:	75 39                	jne    405788 <printf_core+0x1008>
  40574f:	84 d2                	test   %dl,%dl
  405751:	75 35                	jne    405788 <printf_core+0x1008>
  405753:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  405757:	89 c1                	mov    %eax,%ecx
  405759:	44 89 ca             	mov    %r9d,%edx
  40575c:	be 20 00 00 00       	mov    $0x20,%esi
  405761:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  405768:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40576e:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  405772:	e8 89 d5 ff ff       	call   402d00 <pad.part.0>
  405777:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  40577e:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  405784:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  405788:	41 39 c1             	cmp    %eax,%r9d
  40578b:	41 0f 4d c1          	cmovge %r9d,%eax
  40578f:	41 89 c0             	mov    %eax,%r8d
  405792:	e9 ce f0 ff ff       	jmp    404865 <printf_core+0xe5>
  405797:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  40579d:	4d 89 c6             	mov    %r8,%r14
  4057a0:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4057a4:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  4057ab:	00 00 00 00 
  4057af:	e9 8c f7 ff ff       	jmp    404f40 <printf_core+0x7c0>
  4057b4:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  4057bb:	00 00 00 
  4057be:	48 83 c3 01          	add    $0x1,%rbx
  4057c2:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4057c9:	e9 f1 f1 ff ff       	jmp    4049bf <printf_core+0x23f>
  4057ce:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4057d5:	45 89 d1             	mov    %r10d,%r9d
  4057d8:	c7 85 7c ff ff ff 01 	movl   $0x1,-0x84(%rbp)
  4057df:	00 00 00 
  4057e2:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  4057e9:	0f b6 42 03          	movzbl 0x3(%rdx),%eax
  4057ed:	e9 c9 f2 ff ff       	jmp    404abb <printf_core+0x33b>
  4057f2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
  4057f9:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  4057fd:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405804:	00 00 00 
  405807:	c7 04 86 0a 00 00 00 	movl   $0xa,(%rsi,%rax,4)
  40580e:	e9 53 f6 ff ff       	jmp    404e66 <printf_core+0x6e6>
  405813:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405818:	4c 89 f7             	mov    %r14,%rdi
  40581b:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
  40581f:	44 89 8d 50 ff ff ff 	mov    %r9d,-0xb0(%rbp)
  405826:	44 89 9d 68 ff ff ff 	mov    %r11d,-0x98(%rbp)
  40582d:	e8 4e 04 00 00       	call   405c80 <strnlen>
  405832:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
  405836:	44 8b 9d 68 ff ff ff 	mov    -0x98(%rbp),%r11d
  40583d:	49 8d 14 06          	lea    (%r14,%rax,1),%rdx
  405841:	44 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%r9d
  405848:	80 3a 00             	cmpb   $0x0,(%rdx)
  40584b:	0f 84 c6 fc ff ff    	je     405517 <printf_core+0xd97>
  405851:	e9 0a f3 ff ff       	jmp    404b60 <printf_core+0x3e0>
  405856:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40585d:	00 00 00 
  405860:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
  405866:	48 8d 15 46 29 00 00 	lea    0x2946(%rip),%rdx        # 4081b3 <_fini+0x11af>
  40586d:	c1 f8 04             	sar    $0x4,%eax
  405870:	48 98                	cltq
  405872:	48 01 d0             	add    %rdx,%rax
  405875:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  40587c:	b8 02 00 00 00       	mov    $0x2,%eax
  405881:	e9 ed f8 ff ff       	jmp    405173 <printf_core+0x9f3>
  405886:	44 89 55 80          	mov    %r10d,-0x80(%rbp)
  40588a:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
  405891:	00 00 00 
  405894:	e9 26 f1 ff ff       	jmp    4049bf <printf_core+0x23f>
  405899:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
  40589d:	89 75 a4             	mov    %esi,-0x5c(%rbp)
  4058a0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4058a7:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
  4058ae:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4058b2:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  4058b9:	c7 45 80 ff ff ff ff 	movl   $0xffffffff,-0x80(%rbp)
  4058c0:	e9 d0 f9 ff ff       	jmp    405295 <printf_core+0xb15>
  4058c5:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4058c9:	44 89 ca             	mov    %r9d,%edx
  4058cc:	44 89 f1             	mov    %r14d,%ecx
  4058cf:	be 20 00 00 00       	mov    $0x20,%esi
  4058d4:	44 89 9d 48 ff ff ff 	mov    %r11d,-0xb8(%rbp)
  4058db:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4058df:	44 89 b5 68 ff ff ff 	mov    %r14d,-0x98(%rbp)
  4058e6:	e8 15 d4 ff ff       	call   402d00 <pad.part.0>
  4058eb:	4d 85 f6             	test   %r14,%r14
  4058ee:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4058f2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4058f8:	44 8b 9d 48 ff ff ff 	mov    -0xb8(%rbp),%r11d
  4058ff:	0f 84 83 fe ff ff    	je     405788 <printf_core+0x1008>
  405905:	31 d2                	xor    %edx,%edx
  405907:	e9 66 fa ff ff       	jmp    405372 <printf_core+0xbf2>
  40590c:	48 f7 de             	neg    %rsi
  40590f:	48 8d 3d 9d 28 00 00 	lea    0x289d(%rip),%rdi        # 4081b3 <_fini+0x11af>
  405916:	b8 01 00 00 00       	mov    $0x1,%eax
  40591b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
  40591f:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405926:	e9 c3 f7 ff ff       	jmp    4050ee <printf_core+0x96e>
  40592b:	48 8d 3d 82 28 00 00 	lea    0x2882(%rip),%rdi        # 4081b4 <_fini+0x11b0>
  405932:	b8 01 00 00 00       	mov    $0x1,%eax
  405937:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  40593e:	e9 a2 f7 ff ff       	jmp    4050e5 <printf_core+0x965>
  405943:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
  405947:	4d 89 c6             	mov    %r8,%r14
  40594a:	e9 24 f8 ff ff       	jmp    405173 <printf_core+0x9f3>
  40594f:	48 8d 3d 5f 28 00 00 	lea    0x285f(%rip),%rdi        # 4081b5 <_fini+0x11b1>
  405956:	b8 01 00 00 00       	mov    $0x1,%eax
  40595b:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  405962:	e9 7e f7 ff ff       	jmp    4050e5 <printf_core+0x965>
  405967:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  40596e:	eb 1e                	jmp    40598e <printf_core+0x120e>
  405970:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405975:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40597c:	00 00 00 00 
  405980:	49 83 c0 01          	add    $0x1,%r8
  405984:	49 83 f8 0a          	cmp    $0xa,%r8
  405988:	0f 84 5c f5 ff ff    	je     404eea <printf_core+0x76a>
  40598e:	42 8b 14 80          	mov    (%rax,%r8,4),%edx
  405992:	85 d2                	test   %edx,%edx
  405994:	74 ea                	je     405980 <printf_core+0x1200>
  405996:	e9 92 f0 ff ff       	jmp    404a2d <printf_core+0x2ad>
  40599b:	45 85 c9             	test   %r9d,%r9d
  40599e:	0f 94 c0             	sete   %al
  4059a1:	89 c2                	mov    %eax,%edx
  4059a3:	41 f7 c4 00 20 01 00 	test   $0x12000,%r12d
  4059aa:	75 5c                	jne    405a08 <printf_core+0x1288>
  4059ac:	84 c0                	test   %al,%al
  4059ae:	75 58                	jne    405a08 <printf_core+0x1288>
  4059b0:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4059b4:	44 89 ca             	mov    %r9d,%edx
  4059b7:	31 c9                	xor    %ecx,%ecx
  4059b9:	be 20 00 00 00       	mov    $0x20,%esi
  4059be:	44 89 9d 50 ff ff ff 	mov    %r11d,-0xb0(%rbp)
  4059c5:	44 89 4d 80          	mov    %r9d,-0x80(%rbp)
  4059c9:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
  4059d0:	e8 2b d3 ff ff       	call   402d00 <pad.part.0>
  4059d5:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4059db:	44 8b 4d 80          	mov    -0x80(%rbp),%r9d
  4059df:	44 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11d
  4059e6:	e9 9d fd ff ff       	jmp    405788 <printf_core+0x1008>
  4059eb:	45 31 db             	xor    %r11d,%r11d
  4059ee:	e9 4b f0 ff ff       	jmp    404a3e <printf_core+0x2be>
  4059f3:	e8 28 cf ff ff       	call   402920 <__stack_chk_fail>
  4059f8:	48 89 da             	mov    %rbx,%rdx
  4059fb:	e9 7b f0 ff ff       	jmp    404a7b <printf_core+0x2fb>
  405a00:	48 89 d8             	mov    %rbx,%rax
  405a03:	e9 31 f3 ff ff       	jmp    404d39 <printf_core+0x5b9>
  405a08:	44 89 d0             	mov    %r10d,%eax
  405a0b:	e9 2f fd ff ff       	jmp    40573f <printf_core+0xfbf>

0000000000405a10 <vfprintf>:
  405a10:	f3 0f 1e fa          	endbr64
  405a14:	55                   	push   %rbp
  405a15:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405a19:	48 89 e5             	mov    %rsp,%rbp
  405a1c:	41 57                	push   %r15
  405a1e:	41 56                	push   %r14
  405a20:	4c 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%r14
  405a27:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405a2e:	41 55                	push   %r13
  405a30:	4c 89 f1             	mov    %r14,%rcx
  405a33:	49 89 fd             	mov    %rdi,%r13
  405a36:	31 ff                	xor    %edi,%edi
  405a38:	41 54                	push   %r12
  405a3a:	53                   	push   %rbx
  405a3b:	48 8d 9d 88 fe ff ff 	lea    -0x178(%rbp),%rbx
  405a42:	48 81 ec 78 01 00 00 	sub    $0x178,%rsp
  405a49:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
  405a50:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  405a57:	00 00 
  405a59:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  405a5d:	31 c0                	xor    %eax,%eax
  405a5f:	48 89 9d 70 fe ff ff 	mov    %rbx,-0x190(%rbp)
  405a66:	48 c7 85 c0 fe ff ff 	movq   $0x0,-0x140(%rbp)
  405a6d:	00 00 00 00 
  405a71:	0f 29 85 a0 fe ff ff 	movaps %xmm0,-0x160(%rbp)
  405a78:	0f 29 85 b0 fe ff ff 	movaps %xmm0,-0x150(%rbp)
  405a7f:	f3 0f 6f 02          	movdqu (%rdx),%xmm0
  405a83:	0f 11 85 88 fe ff ff 	movups %xmm0,-0x178(%rbp)
  405a8a:	48 8b 42 10          	mov    0x10(%rdx),%rax
  405a8e:	48 89 da             	mov    %rbx,%rdx
  405a91:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  405a98:	e8 e3 ec ff ff       	call   404780 <printf_core>
  405a9d:	85 c0                	test   %eax,%eax
  405a9f:	0f 88 68 01 00 00    	js     405c0d <vfprintf+0x1fd>
  405aa5:	41 8b 85 8c 00 00 00 	mov    0x8c(%r13),%eax
  405aac:	31 db                	xor    %ebx,%ebx
  405aae:	85 c0                	test   %eax,%eax
  405ab0:	78 0a                	js     405abc <vfprintf+0xac>
  405ab2:	4c 89 ef             	mov    %r13,%rdi
  405ab5:	e8 86 08 00 00       	call   406340 <__lockfile>
  405aba:	89 c3                	mov    %eax,%ebx
  405abc:	41 8b 45 00          	mov    0x0(%r13),%eax
  405ac0:	89 c1                	mov    %eax,%ecx
  405ac2:	83 e0 df             	and    $0xffffffdf,%eax
  405ac5:	83 e1 20             	and    $0x20,%ecx
  405ac8:	41 89 45 00          	mov    %eax,0x0(%r13)
  405acc:	89 8d 7c fe ff ff    	mov    %ecx,-0x184(%rbp)
  405ad2:	49 83 7d 60 00       	cmpq   $0x0,0x60(%r13)
  405ad7:	74 77                	je     405b50 <vfprintf+0x140>
  405ad9:	49 83 7d 20 00       	cmpq   $0x0,0x20(%r13)
  405ade:	0f 84 39 01 00 00    	je     405c1d <vfprintf+0x20d>
  405ae4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405aeb:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405af2:	4c 89 f1             	mov    %r14,%rcx
  405af5:	4c 89 ef             	mov    %r13,%rdi
  405af8:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405aff:	e8 7c ec ff ff       	call   404780 <printf_core>
  405b04:	41 89 c4             	mov    %eax,%r12d
  405b07:	41 8b 45 00          	mov    0x0(%r13),%eax
  405b0b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405b10:	a8 20                	test   $0x20,%al
  405b12:	44 0f 45 e2          	cmovne %edx,%r12d
  405b16:	0b 85 7c fe ff ff    	or     -0x184(%rbp),%eax
  405b1c:	41 89 45 00          	mov    %eax,0x0(%r13)
  405b20:	85 db                	test   %ebx,%ebx
  405b22:	0f 85 d8 00 00 00    	jne    405c00 <vfprintf+0x1f0>
  405b28:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405b2c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  405b33:	00 00 
  405b35:	0f 85 dd 00 00 00    	jne    405c18 <vfprintf+0x208>
  405b3b:	48 81 c4 78 01 00 00 	add    $0x178,%rsp
  405b42:	44 89 e0             	mov    %r12d,%eax
  405b45:	5b                   	pop    %rbx
  405b46:	41 5c                	pop    %r12
  405b48:	41 5d                	pop    %r13
  405b4a:	41 5e                	pop    %r14
  405b4c:	41 5f                	pop    %r15
  405b4e:	5d                   	pop    %rbp
  405b4f:	c3                   	ret
  405b50:	49 8b 45 58          	mov    0x58(%r13),%rax
  405b54:	49 c7 45 60 50 00 00 	movq   $0x50,0x60(%r13)
  405b5b:	00 
  405b5c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405b60:	4c 89 ef             	mov    %r13,%rdi
  405b63:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405b6a:	00 
  405b6b:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405b71:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  405b78:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  405b7f:	49 89 45 58          	mov    %rax,0x58(%r13)
  405b83:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405b88:	e8 a3 09 00 00       	call   406530 <__towrite>
  405b8d:	85 c0                	test   %eax,%eax
  405b8f:	75 23                	jne    405bb4 <vfprintf+0x1a4>
  405b91:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
  405b98:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
  405b9f:	4c 89 f1             	mov    %r14,%rcx
  405ba2:	4c 89 ef             	mov    %r13,%rdi
  405ba5:	4c 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%r8
  405bac:	e8 cf eb ff ff       	call   404780 <printf_core>
  405bb1:	41 89 c4             	mov    %eax,%r12d
  405bb4:	4c 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%r14
  405bbb:	4d 85 f6             	test   %r14,%r14
  405bbe:	0f 84 43 ff ff ff    	je     405b07 <vfprintf+0xf7>
  405bc4:	31 d2                	xor    %edx,%edx
  405bc6:	31 f6                	xor    %esi,%esi
  405bc8:	4c 89 ef             	mov    %r13,%rdi
  405bcb:	41 ff 55 48          	call   *0x48(%r13)
  405bcf:	49 83 7d 28 00       	cmpq   $0x0,0x28(%r13)
  405bd4:	66 0f ef c0          	pxor   %xmm0,%xmm0
  405bd8:	4d 89 75 58          	mov    %r14,0x58(%r13)
  405bdc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405be1:	49 c7 45 60 00 00 00 	movq   $0x0,0x60(%r13)
  405be8:	00 
  405be9:	49 c7 45 38 00 00 00 	movq   $0x0,0x38(%r13)
  405bf0:	00 
  405bf1:	44 0f 44 e0          	cmove  %eax,%r12d
  405bf5:	41 0f 11 45 20       	movups %xmm0,0x20(%r13)
  405bfa:	e9 08 ff ff ff       	jmp    405b07 <vfprintf+0xf7>
  405bff:	90                   	nop
  405c00:	4c 89 ef             	mov    %r13,%rdi
  405c03:	e8 f8 07 00 00       	call   406400 <__unlockfile>
  405c08:	e9 1b ff ff ff       	jmp    405b28 <vfprintf+0x118>
  405c0d:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405c13:	e9 10 ff ff ff       	jmp    405b28 <vfprintf+0x118>
  405c18:	e8 03 cd ff ff       	call   402920 <__stack_chk_fail>
  405c1d:	4c 89 ef             	mov    %r13,%rdi
  405c20:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  405c26:	e8 05 09 00 00       	call   406530 <__towrite>
  405c2b:	85 c0                	test   %eax,%eax
  405c2d:	0f 85 d4 fe ff ff    	jne    405b07 <vfprintf+0xf7>
  405c33:	e9 ac fe ff ff       	jmp    405ae4 <vfprintf+0xd4>
  405c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405c3f:	00 

0000000000405c40 <vsprintf>:
  405c40:	f3 0f 1e fa          	endbr64
  405c44:	48 89 d1             	mov    %rdx,%rcx
  405c47:	48 89 f2             	mov    %rsi,%rdx
  405c4a:	be ff ff ff 7f       	mov    $0x7fffffff,%esi
  405c4f:	e9 bc 0b 00 00       	jmp    406810 <vsnprintf>
  405c54:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405c5b:	00 00 00 
  405c5e:	66 90                	xchg   %ax,%ax

0000000000405c60 <strcpy>:
  405c60:	f3 0f 1e fa          	endbr64
  405c64:	55                   	push   %rbp
  405c65:	48 89 e5             	mov    %rsp,%rbp
  405c68:	53                   	push   %rbx
  405c69:	48 89 fb             	mov    %rdi,%rbx
  405c6c:	48 83 ec 08          	sub    $0x8,%rsp
  405c70:	e8 8b 0d 00 00       	call   406a00 <__stpcpy>
  405c75:	48 89 d8             	mov    %rbx,%rax
  405c78:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405c7c:	c9                   	leave
  405c7d:	c3                   	ret
  405c7e:	66 90                	xchg   %ax,%ax

0000000000405c80 <strnlen>:
  405c80:	f3 0f 1e fa          	endbr64
  405c84:	55                   	push   %rbp
  405c85:	48 89 f2             	mov    %rsi,%rdx
  405c88:	48 89 e5             	mov    %rsp,%rbp
  405c8b:	41 54                	push   %r12
  405c8d:	49 89 fc             	mov    %rdi,%r12
  405c90:	53                   	push   %rbx
  405c91:	48 89 f3             	mov    %rsi,%rbx
  405c94:	31 f6                	xor    %esi,%esi
  405c96:	e8 25 0c 00 00       	call   4068c0 <memchr>
  405c9b:	48 89 c2             	mov    %rax,%rdx
  405c9e:	4c 29 e0             	sub    %r12,%rax
  405ca1:	48 85 d2             	test   %rdx,%rdx
  405ca4:	48 0f 44 c3          	cmove  %rbx,%rax
  405ca8:	5b                   	pop    %rbx
  405ca9:	41 5c                	pop    %r12
  405cab:	5d                   	pop    %rbp
  405cac:	c3                   	ret

0000000000405cad <memcpy>:
  405cad:	48 89 f8             	mov    %rdi,%rax
  405cb0:	48 83 fa 08          	cmp    $0x8,%rdx
  405cb4:	72 14                	jb     405cca <memcpy+0x1d>
  405cb6:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405cbc:	74 0c                	je     405cca <memcpy+0x1d>
  405cbe:	a4                   	movsb  (%rsi),(%rdi)
  405cbf:	48 ff ca             	dec    %rdx
  405cc2:	f7 c7 07 00 00 00    	test   $0x7,%edi
  405cc8:	75 f4                	jne    405cbe <memcpy+0x11>
  405cca:	48 89 d1             	mov    %rdx,%rcx
  405ccd:	48 c1 e9 03          	shr    $0x3,%rcx
  405cd1:	f3 48 a5             	rep movsq (%rsi),(%rdi)
  405cd4:	83 e2 07             	and    $0x7,%edx
  405cd7:	74 05                	je     405cde <memcpy+0x31>
  405cd9:	a4                   	movsb  (%rsi),(%rdi)
  405cda:	ff ca                	dec    %edx
  405cdc:	75 fb                	jne    405cd9 <memcpy+0x2c>
  405cde:	c3                   	ret

0000000000405cdf <memset>:
  405cdf:	48 0f b6 c6          	movzbq %sil,%rax
  405ce3:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
  405cea:	01 01 01 
  405ced:	49 0f af c0          	imul   %r8,%rax
  405cf1:	48 83 fa 7e          	cmp    $0x7e,%rdx
  405cf5:	77 78                	ja     405d6f <memset+0x90>
  405cf7:	85 d2                	test   %edx,%edx
  405cf9:	74 70                	je     405d6b <memset+0x8c>
  405cfb:	40 88 37             	mov    %sil,(%rdi)
  405cfe:	40 88 74 17 ff       	mov    %sil,-0x1(%rdi,%rdx,1)
  405d03:	83 fa 02             	cmp    $0x2,%edx
  405d06:	76 63                	jbe    405d6b <memset+0x8c>
  405d08:	66 89 47 01          	mov    %ax,0x1(%rdi)
  405d0c:	66 89 44 17 fd       	mov    %ax,-0x3(%rdi,%rdx,1)
  405d11:	83 fa 06             	cmp    $0x6,%edx
  405d14:	76 55                	jbe    405d6b <memset+0x8c>
  405d16:	89 47 03             	mov    %eax,0x3(%rdi)
  405d19:	89 44 17 f9          	mov    %eax,-0x7(%rdi,%rdx,1)
  405d1d:	83 fa 0e             	cmp    $0xe,%edx
  405d20:	76 49                	jbe    405d6b <memset+0x8c>
  405d22:	48 89 47 07          	mov    %rax,0x7(%rdi)
  405d26:	48 89 44 17 f1       	mov    %rax,-0xf(%rdi,%rdx,1)
  405d2b:	83 fa 1e             	cmp    $0x1e,%edx
  405d2e:	76 3b                	jbe    405d6b <memset+0x8c>
  405d30:	48 89 47 0f          	mov    %rax,0xf(%rdi)
  405d34:	48 89 47 17          	mov    %rax,0x17(%rdi)
  405d38:	48 89 44 17 e1       	mov    %rax,-0x1f(%rdi,%rdx,1)
  405d3d:	48 89 44 17 e9       	mov    %rax,-0x17(%rdi,%rdx,1)
  405d42:	83 fa 3e             	cmp    $0x3e,%edx
  405d45:	76 24                	jbe    405d6b <memset+0x8c>
  405d47:	48 89 47 1f          	mov    %rax,0x1f(%rdi)
  405d4b:	48 89 47 27          	mov    %rax,0x27(%rdi)
  405d4f:	48 89 47 2f          	mov    %rax,0x2f(%rdi)
  405d53:	48 89 47 37          	mov    %rax,0x37(%rdi)
  405d57:	48 89 44 17 c1       	mov    %rax,-0x3f(%rdi,%rdx,1)
  405d5c:	48 89 44 17 c9       	mov    %rax,-0x37(%rdi,%rdx,1)
  405d61:	48 89 44 17 d1       	mov    %rax,-0x2f(%rdi,%rdx,1)
  405d66:	48 89 44 17 d9       	mov    %rax,-0x27(%rdi,%rdx,1)
  405d6b:	48 89 f8             	mov    %rdi,%rax
  405d6e:	c3                   	ret
  405d6f:	f7 c7 0f 00 00 00    	test   $0xf,%edi
  405d75:	49 89 f8             	mov    %rdi,%r8
  405d78:	48 89 44 17 f8       	mov    %rax,-0x8(%rdi,%rdx,1)
  405d7d:	48 89 d1             	mov    %rdx,%rcx
  405d80:	75 0b                	jne    405d8d <memset+0xae>
  405d82:	48 c1 e9 03          	shr    $0x3,%rcx
  405d86:	f3 48 ab             	rep stos %rax,(%rdi)
  405d89:	4c 89 c0             	mov    %r8,%rax
  405d8c:	c3                   	ret
  405d8d:	31 d2                	xor    %edx,%edx
  405d8f:	29 fa                	sub    %edi,%edx
  405d91:	83 e2 0f             	and    $0xf,%edx
  405d94:	48 89 07             	mov    %rax,(%rdi)
  405d97:	48 89 47 08          	mov    %rax,0x8(%rdi)
  405d9b:	48 29 d1             	sub    %rdx,%rcx
  405d9e:	48 01 d7             	add    %rdx,%rdi
  405da1:	eb df                	jmp    405d82 <memset+0xa3>
  405da3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405daa:	00 00 00 
  405dad:	0f 1f 00             	nopl   (%rax)

0000000000405db0 <__init_tp>:
  405db0:	f3 0f 1e fa          	endbr64
  405db4:	55                   	push   %rbp
  405db5:	48 89 e5             	mov    %rsp,%rbp
  405db8:	53                   	push   %rbx
  405db9:	48 89 fb             	mov    %rdi,%rbx
  405dbc:	48 83 ec 08          	sub    $0x8,%rsp
  405dc0:	48 89 3f             	mov    %rdi,(%rdi)
  405dc3:	e8 21 0d 00 00       	call   406ae9 <__set_thread_area>
  405dc8:	85 c0                	test   %eax,%eax
  405dca:	78 65                	js     405e31 <__init_tp+0x81>
  405dcc:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  405dd1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  405dd5:	74 51                	je     405e28 <__init_tp+0x78>
  405dd7:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  405dde:	b8 da 00 00 00       	mov    $0xda,%eax
  405de3:	48 8d 3d a6 59 00 00 	lea    0x59a6(%rip),%rdi        # 40b790 <__thread_list_lock>
  405dea:	0f 05                	syscall
  405dec:	89 43 30             	mov    %eax,0x30(%rbx)
  405def:	48 8d 05 a2 53 00 00 	lea    0x53a2(%rip),%rax        # 40b198 <__libc+0x38>
  405df6:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  405dfd:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  405e04:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  405e0b:	48 8b 05 1e 53 00 00 	mov    0x531e(%rip),%rax        # 40b130 <__sysinfo>
  405e12:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  405e16:	48 89 43 20          	mov    %rax,0x20(%rbx)
  405e1a:	31 c0                	xor    %eax,%eax
  405e1c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  405e20:	c9                   	leave
  405e21:	c3                   	ret
  405e22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405e28:	c6 05 31 53 00 00 01 	movb   $0x1,0x5331(%rip)        # 40b160 <__libc>
  405e2f:	eb a6                	jmp    405dd7 <__init_tp+0x27>
  405e31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405e36:	eb e4                	jmp    405e1c <__init_tp+0x6c>
  405e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405e3f:	00 

0000000000405e40 <__copy_tls>:
  405e40:	f3 0f 1e fa          	endbr64
  405e44:	55                   	push   %rbp
  405e45:	48 8b 05 2c 53 00 00 	mov    0x532c(%rip),%rax        # 40b178 <__libc+0x18>
  405e4c:	48 8d 84 07 38 ff ff 	lea    -0xc8(%rdi,%rax,1),%rax
  405e53:	ff 
  405e54:	48 89 e5             	mov    %rsp,%rbp
  405e57:	41 56                	push   %r14
  405e59:	49 89 fe             	mov    %rdi,%r14
  405e5c:	41 55                	push   %r13
  405e5e:	4c 8b 2d 1b 53 00 00 	mov    0x531b(%rip),%r13        # 40b180 <__libc+0x20>
  405e65:	41 54                	push   %r12
  405e67:	53                   	push   %rbx
  405e68:	48 8b 1d 01 53 00 00 	mov    0x5301(%rip),%rbx        # 40b170 <__libc+0x10>
  405e6f:	49 f7 dd             	neg    %r13
  405e72:	49 21 c5             	and    %rax,%r13
  405e75:	48 85 db             	test   %rbx,%rbx
  405e78:	74 32                	je     405eac <__copy_tls+0x6c>
  405e7a:	4c 8d 67 08          	lea    0x8(%rdi),%r12
  405e7e:	66 90                	xchg   %ax,%ax
  405e80:	4c 89 e8             	mov    %r13,%rax
  405e83:	48 2b 43 28          	sub    0x28(%rbx),%rax
  405e87:	4c 89 ef             	mov    %r13,%rdi
  405e8a:	49 83 c4 08          	add    $0x8,%r12
  405e8e:	49 89 44 24 f8       	mov    %rax,-0x8(%r12)
  405e93:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  405e97:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405e9b:	48 2b 7b 28          	sub    0x28(%rbx),%rdi
  405e9f:	e8 09 fe ff ff       	call   405cad <memcpy>
  405ea4:	48 8b 1b             	mov    (%rbx),%rbx
  405ea7:	48 85 db             	test   %rbx,%rbx
  405eaa:	75 d4                	jne    405e80 <__copy_tls+0x40>
  405eac:	48 8b 05 d5 52 00 00 	mov    0x52d5(%rip),%rax        # 40b188 <__libc+0x28>
  405eb3:	49 89 06             	mov    %rax,(%r14)
  405eb6:	4c 89 e8             	mov    %r13,%rax
  405eb9:	4d 89 75 08          	mov    %r14,0x8(%r13)
  405ebd:	5b                   	pop    %rbx
  405ebe:	41 5c                	pop    %r12
  405ec0:	41 5d                	pop    %r13
  405ec2:	41 5e                	pop    %r14
  405ec4:	5d                   	pop    %rbp
  405ec5:	c3                   	ret
  405ec6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  405ecd:	00 00 00 

0000000000405ed0 <__init_tls>:
  405ed0:	f3 0f 1e fa          	endbr64
  405ed4:	55                   	push   %rbp
  405ed5:	48 89 e5             	mov    %rsp,%rbp
  405ed8:	53                   	push   %rbx
  405ed9:	48 83 ec 08          	sub    $0x8,%rsp
  405edd:	48 8b 4f 28          	mov    0x28(%rdi),%rcx
  405ee1:	48 85 c9             	test   %rcx,%rcx
  405ee4:	0f 84 fe 01 00 00    	je     4060e8 <__init_tls+0x218>
  405eea:	4c 8b 57 18          	mov    0x18(%rdi),%r10
  405eee:	31 f6                	xor    %esi,%esi
  405ef0:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  405ef4:	45 31 c0             	xor    %r8d,%r8d
  405ef7:	4c 89 d0             	mov    %r10,%rax
  405efa:	eb 29                	jmp    405f25 <__init_tls+0x55>
  405efc:	0f 1f 40 00          	nopl   0x0(%rax)
  405f00:	83 fa 02             	cmp    $0x2,%edx
  405f03:	0f 85 77 01 00 00    	jne    406080 <__init_tls+0x1b0>
  405f09:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
  405f10:	48 85 d2             	test   %rdx,%rdx
  405f13:	74 07                	je     405f1c <__init_tls+0x4c>
  405f15:	48 89 d6             	mov    %rdx,%rsi
  405f18:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405f1c:	48 01 f8             	add    %rdi,%rax
  405f1f:	48 83 e9 01          	sub    $0x1,%rcx
  405f23:	74 17                	je     405f3c <__init_tls+0x6c>
  405f25:	8b 10                	mov    (%rax),%edx
  405f27:	83 fa 06             	cmp    $0x6,%edx
  405f2a:	75 d4                	jne    405f00 <__init_tls+0x30>
  405f2c:	4c 89 d6             	mov    %r10,%rsi
  405f2f:	48 2b 70 10          	sub    0x10(%rax),%rsi
  405f33:	48 01 f8             	add    %rdi,%rax
  405f36:	48 83 e9 01          	sub    $0x1,%rcx
  405f3a:	75 e9                	jne    405f25 <__init_tls+0x55>
  405f3c:	4d 85 c0             	test   %r8,%r8
  405f3f:	0f 84 a3 01 00 00    	je     4060e8 <__init_tls+0x218>
  405f45:	49 8b 40 20          	mov    0x20(%r8),%rax
  405f49:	49 03 70 10          	add    0x10(%r8),%rsi
  405f4d:	48 8d 1d ac 56 00 00 	lea    0x56ac(%rip),%rbx        # 40b600 <main_tls>
  405f54:	49 8b 50 28          	mov    0x28(%r8),%rdx
  405f58:	48 89 35 a9 56 00 00 	mov    %rsi,0x56a9(%rip)        # 40b608 <main_tls+0x8>
  405f5f:	48 89 05 aa 56 00 00 	mov    %rax,0x56aa(%rip)        # 40b610 <main_tls+0x10>
  405f66:	49 8b 40 30          	mov    0x30(%r8),%rax
  405f6a:	48 c7 05 13 52 00 00 	movq   $0x1,0x5213(%rip)        # 40b188 <__libc+0x28>
  405f71:	01 00 00 00 
  405f75:	48 89 05 a4 56 00 00 	mov    %rax,0x56a4(%rip)        # 40b620 <main_tls+0x20>
  405f7c:	48 89 1d ed 51 00 00 	mov    %rbx,0x51ed(%rip)        # 40b170 <__libc+0x10>
  405f83:	48 01 d6             	add    %rdx,%rsi
  405f86:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  405f8a:	48 f7 de             	neg    %rsi
  405f8d:	48 21 ce             	and    %rcx,%rsi
  405f90:	48 01 d6             	add    %rdx,%rsi
  405f93:	48 8d 90 df 00 00 00 	lea    0xdf(%rax),%rdx
  405f9a:	48 89 35 77 56 00 00 	mov    %rsi,0x5677(%rip)        # 40b618 <main_tls+0x18>
  405fa1:	48 89 35 80 56 00 00 	mov    %rsi,0x5680(%rip)        # 40b628 <main_tls+0x28>
  405fa8:	48 83 f8 07          	cmp    $0x7,%rax
  405fac:	77 15                	ja     405fc3 <__init_tls+0xf3>
  405fae:	48 c7 05 67 56 00 00 	movq   $0x8,0x5667(%rip)        # 40b620 <main_tls+0x20>
  405fb5:	08 00 00 00 
  405fb9:	ba e7 00 00 00       	mov    $0xe7,%edx
  405fbe:	b8 08 00 00 00       	mov    $0x8,%eax
  405fc3:	48 01 d6             	add    %rdx,%rsi
  405fc6:	48 89 05 b3 51 00 00 	mov    %rax,0x51b3(%rip)        # 40b180 <__libc+0x20>
  405fcd:	48 8d 3d 6c 56 00 00 	lea    0x566c(%rip),%rdi        # 40b640 <builtin_tls>
  405fd4:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
  405fd8:	48 89 35 99 51 00 00 	mov    %rsi,0x5199(%rip)        # 40b178 <__libc+0x18>
  405fdf:	48 81 fe 50 01 00 00 	cmp    $0x150,%rsi
  405fe6:	76 21                	jbe    406009 <__init_tls+0x139>
  405fe8:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  405fee:	45 31 c9             	xor    %r9d,%r9d
  405ff1:	b8 09 00 00 00       	mov    $0x9,%eax
  405ff6:	31 ff                	xor    %edi,%edi
  405ff8:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  405fff:	ba 03 00 00 00       	mov    $0x3,%edx
  406004:	0f 05                	syscall
  406006:	48 89 c7             	mov    %rax,%rdi
  406009:	e8 32 fe ff ff       	call   405e40 <__copy_tls>
  40600e:	48 89 00             	mov    %rax,(%rax)
  406011:	48 89 c7             	mov    %rax,%rdi
  406014:	48 89 c3             	mov    %rax,%rbx
  406017:	e8 cd 0a 00 00       	call   406ae9 <__set_thread_area>
  40601c:	85 c0                	test   %eax,%eax
  40601e:	0f 88 b8 00 00 00    	js     4060dc <__init_tls+0x20c>
  406024:	66 48 0f 6e c3       	movq   %rbx,%xmm0
  406029:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  40602d:	0f 84 9d 00 00 00    	je     4060d0 <__init_tls+0x200>
  406033:	c7 43 38 02 00 00 00 	movl   $0x2,0x38(%rbx)
  40603a:	b8 da 00 00 00       	mov    $0xda,%eax
  40603f:	48 8d 3d 4a 57 00 00 	lea    0x574a(%rip),%rdi        # 40b790 <__thread_list_lock>
  406046:	0f 05                	syscall
  406048:	89 43 30             	mov    %eax,0x30(%rbx)
  40604b:	48 8d 05 46 51 00 00 	lea    0x5146(%rip),%rax        # 40b198 <__libc+0x38>
  406052:	48 89 83 a8 00 00 00 	mov    %rax,0xa8(%rbx)
  406059:	48 8d 83 88 00 00 00 	lea    0x88(%rbx),%rax
  406060:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
  406067:	48 8b 05 c2 50 00 00 	mov    0x50c2(%rip),%rax        # 40b130 <__sysinfo>
  40606e:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
  406072:	48 89 43 20          	mov    %rax,0x20(%rbx)
  406076:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40607a:	c9                   	leave
  40607b:	c3                   	ret
  40607c:	0f 1f 40 00          	nopl   0x0(%rax)
  406080:	83 fa 07             	cmp    $0x7,%edx
  406083:	75 0b                	jne    406090 <__init_tls+0x1c0>
  406085:	49 89 c0             	mov    %rax,%r8
  406088:	e9 8f fe ff ff       	jmp    405f1c <__init_tls+0x4c>
  40608d:	0f 1f 00             	nopl   (%rax)
  406090:	81 fa 51 e5 74 64    	cmp    $0x6474e551,%edx
  406096:	0f 85 80 fe ff ff    	jne    405f1c <__init_tls+0x4c>
  40609c:	48 8b 50 28          	mov    0x28(%rax),%rdx
  4060a0:	44 8b 0d 65 50 00 00 	mov    0x5065(%rip),%r9d        # 40b10c <__default_stacksize>
  4060a7:	49 39 d1             	cmp    %rdx,%r9
  4060aa:	0f 83 6c fe ff ff    	jae    405f1c <__init_tls+0x4c>
  4060b0:	41 b9 00 00 80 00    	mov    $0x800000,%r9d
  4060b6:	4c 39 ca             	cmp    %r9,%rdx
  4060b9:	49 0f 47 d1          	cmova  %r9,%rdx
  4060bd:	89 15 49 50 00 00    	mov    %edx,0x5049(%rip)        # 40b10c <__default_stacksize>
  4060c3:	e9 54 fe ff ff       	jmp    405f1c <__init_tls+0x4c>
  4060c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4060cf:	00 
  4060d0:	c6 05 89 50 00 00 01 	movb   $0x1,0x5089(%rip)        # 40b160 <__libc>
  4060d7:	e9 57 ff ff ff       	jmp    406033 <__init_tls+0x163>
  4060dc:	f4                   	hlt
  4060dd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4060e1:	c9                   	leave
  4060e2:	c3                   	ret
  4060e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4060e8:	48 8b 15 29 55 00 00 	mov    0x5529(%rip),%rdx        # 40b618 <main_tls+0x18>
  4060ef:	48 8b 35 12 55 00 00 	mov    0x5512(%rip),%rsi        # 40b608 <main_tls+0x8>
  4060f6:	48 8b 05 23 55 00 00 	mov    0x5523(%rip),%rax        # 40b620 <main_tls+0x20>
  4060fd:	e9 81 fe ff ff       	jmp    405f83 <__init_tls+0xb3>
  406102:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406109:	00 00 00 
  40610c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406110 <__errno_location>:
  406110:	f3 0f 1e fa          	endbr64
  406114:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40611b:	00 00 
  40611d:	48 83 c0 34          	add    $0x34,%rax
  406121:	c3                   	ret
  406122:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406129:	00 00 00 
  40612c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406130 <__strerror_l>:
  406130:	f3 0f 1e fa          	endbr64
  406134:	48 8d 05 25 25 00 00 	lea    0x2525(%rip),%rax        # 408660 <errmsgstr>
  40613b:	81 ff 83 00 00 00    	cmp    $0x83,%edi
  406141:	77 11                	ja     406154 <__strerror_l+0x24>
  406143:	48 63 ff             	movslq %edi,%rdi
  406146:	48 8d 15 f3 23 00 00 	lea    0x23f3(%rip),%rdx        # 408540 <errmsgidx>
  40614d:	0f b7 14 7a          	movzwl (%rdx,%rdi,2),%edx
  406151:	48 01 d0             	add    %rdx,%rax
  406154:	48 8b 76 28          	mov    0x28(%rsi),%rsi
  406158:	48 89 c7             	mov    %rax,%rdi
  40615b:	e9 50 00 00 00       	jmp    4061b0 <__lctrans>

0000000000406160 <strerror>:
  406160:	f3 0f 1e fa          	endbr64
  406164:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  40616b:	00 00 
  40616d:	48 8b b0 a8 00 00 00 	mov    0xa8(%rax),%rsi
  406174:	e9 b7 ff ff ff       	jmp    406130 <__strerror_l>
  406179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406180 <_Exit>:
  406180:	f3 0f 1e fa          	endbr64
  406184:	48 63 ff             	movslq %edi,%rdi
  406187:	b8 e7 00 00 00       	mov    $0xe7,%eax
  40618c:	0f 05                	syscall
  40618e:	66 90                	xchg   %ax,%ax
  406190:	b8 3c 00 00 00       	mov    $0x3c,%eax
  406195:	0f 05                	syscall
  406197:	eb f7                	jmp    406190 <_Exit+0x10>
  406199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004061a0 <__lctrans_impl>:
  4061a0:	f3 0f 1e fa          	endbr64
  4061a4:	48 89 f8             	mov    %rdi,%rax
  4061a7:	c3                   	ret
  4061a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4061af:	00 

00000000004061b0 <__lctrans>:
  4061b0:	f3 0f 1e fa          	endbr64
  4061b4:	e9 e7 ff ff ff       	jmp    4061a0 <__lctrans_impl>
  4061b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004061c0 <__lctrans_cur>:
  4061c0:	f3 0f 1e fa          	endbr64
  4061c4:	64 48 8b 04 25 00 00 	mov    %fs:0x0,%rax
  4061cb:	00 00 
  4061cd:	48 8b 80 a8 00 00 00 	mov    0xa8(%rax),%rax
  4061d4:	48 8b 70 28          	mov    0x28(%rax),%rsi
  4061d8:	e9 c3 ff ff ff       	jmp    4061a0 <__lctrans_impl>
  4061dd:	0f 1f 00             	nopl   (%rax)

00000000004061e0 <__fpclassifyl>:
  4061e0:	f3 0f 1e fa          	endbr64
  4061e4:	55                   	push   %rbp
  4061e5:	48 89 e5             	mov    %rsp,%rbp
  4061e8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4061ec:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4061f0:	48 89 ca             	mov    %rcx,%rdx
  4061f3:	89 c6                	mov    %eax,%esi
  4061f5:	25 ff 7f 00 00       	and    $0x7fff,%eax
  4061fa:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4061fe:	66 81 e6 ff 7f       	and    $0x7fff,%si
  406203:	09 d0                	or     %edx,%eax
  406205:	74 31                	je     406238 <__fpclassifyl+0x58>
  406207:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  40620e:	66 81 fe ff 7f       	cmp    $0x7fff,%si
  406213:	74 0b                	je     406220 <__fpclassifyl+0x40>
  406215:	5d                   	pop    %rbp
  406216:	c3                   	ret
  406217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40621e:	00 00 
  406220:	31 c0                	xor    %eax,%eax
  406222:	48 85 d2             	test   %rdx,%rdx
  406225:	74 ee                	je     406215 <__fpclassifyl+0x35>
  406227:	31 c0                	xor    %eax,%eax
  406229:	48 01 c9             	add    %rcx,%rcx
  40622c:	5d                   	pop    %rbp
  40622d:	0f 94 c0             	sete   %al
  406230:	c3                   	ret
  406231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406238:	48 83 f9 01          	cmp    $0x1,%rcx
  40623c:	b8 02 00 00 00       	mov    $0x2,%eax
  406241:	5d                   	pop    %rbp
  406242:	83 d8 ff             	sbb    $0xffffffff,%eax
  406245:	c3                   	ret
  406246:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40624d:	00 00 00 

0000000000406250 <__signbitl>:
  406250:	f3 0f 1e fa          	endbr64
  406254:	55                   	push   %rbp
  406255:	48 89 e5             	mov    %rsp,%rbp
  406258:	0f b7 45 18          	movzwl 0x18(%rbp),%eax
  40625c:	5d                   	pop    %rbp
  40625d:	66 c1 e8 0f          	shr    $0xf,%ax
  406261:	0f b7 c0             	movzwl %ax,%eax
  406264:	c3                   	ret
  406265:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40626c:	00 00 00 
  40626f:	90                   	nop

0000000000406270 <frexpl>:
  406270:	f3 0f 1e fa          	endbr64
  406274:	55                   	push   %rbp
  406275:	48 89 e5             	mov    %rsp,%rbp
  406278:	48 83 ec 20          	sub    $0x20,%rsp
  40627c:	db 6d 10             	fldt   0x10(%rbp)
  40627f:	48 8b 45 18          	mov    0x18(%rbp),%rax
  406283:	89 c2                	mov    %eax,%edx
  406285:	d9 c0                	fld    %st(0)
  406287:	db 7d f0             	fstpt  -0x10(%rbp)
  40628a:	66 81 e2 ff 7f       	and    $0x7fff,%dx
  40628f:	74 2f                	je     4062c0 <frexpl+0x50>
  406291:	dd d8                	fstp   %st(0)
  406293:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
  406298:	74 38                	je     4062d2 <frexpl+0x62>
  40629a:	0f b7 d2             	movzwl %dx,%edx
  40629d:	66 25 00 80          	and    $0x8000,%ax
  4062a1:	81 ea fe 3f 00 00    	sub    $0x3ffe,%edx
  4062a7:	66 0d fe 3f          	or     $0x3ffe,%ax
  4062ab:	66 89 45 f8          	mov    %ax,-0x8(%rbp)
  4062af:	db 6d f0             	fldt   -0x10(%rbp)
  4062b2:	89 17                	mov    %edx,(%rdi)
  4062b4:	c9                   	leave
  4062b5:	c3                   	ret
  4062b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4062bd:	00 00 00 
  4062c0:	d9 ee                	fldz
  4062c2:	d9 c9                	fxch   %st(1)
  4062c4:	df e9                	fucomip %st(1),%st
  4062c6:	dd d8                	fstp   %st(0)
  4062c8:	7a 16                	jp     4062e0 <frexpl+0x70>
  4062ca:	75 14                	jne    4062e0 <frexpl+0x70>
  4062cc:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  4062d2:	db 6d 10             	fldt   0x10(%rbp)
  4062d5:	c9                   	leave
  4062d6:	c3                   	ret
  4062d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4062de:	00 00 
  4062e0:	db 6d 10             	fldt   0x10(%rbp)
  4062e3:	d8 0d 23 22 00 00    	fmuls  0x2223(%rip)        # 40850c <states+0x1ec>
  4062e9:	48 83 ec 10          	sub    $0x10,%rsp
  4062ed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4062f1:	db 3c 24             	fstpt  (%rsp)
  4062f4:	e8 77 ff ff ff       	call   406270 <frexpl>
  4062f9:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4062fd:	83 2f 78             	subl   $0x78,(%rdi)
  406300:	58                   	pop    %rax
  406301:	5a                   	pop    %rdx
  406302:	c9                   	leave
  406303:	c3                   	ret
  406304:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40630b:	00 00 00 
  40630e:	66 90                	xchg   %ax,%ax

0000000000406310 <wctomb>:
  406310:	f3 0f 1e fa          	endbr64
  406314:	48 85 ff             	test   %rdi,%rdi
  406317:	74 17                	je     406330 <wctomb+0x20>
  406319:	55                   	push   %rbp
  40631a:	31 d2                	xor    %edx,%edx
  40631c:	48 89 e5             	mov    %rsp,%rbp
  40631f:	e8 3c 08 00 00       	call   406b60 <wcrtomb>
  406324:	5d                   	pop    %rbp
  406325:	c3                   	ret
  406326:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40632d:	00 00 00 
  406330:	31 c0                	xor    %eax,%eax
  406332:	c3                   	ret
  406333:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40633a:	00 00 00 
  40633d:	0f 1f 00             	nopl   (%rax)

0000000000406340 <__lockfile>:
  406340:	f3 0f 1e fa          	endbr64
  406344:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  40634a:	48 89 fa             	mov    %rdi,%rdx
  40634d:	64 48 8b 0c 25 00 00 	mov    %fs:0x0,%rcx
  406354:	00 00 
  406356:	44 8b 41 30          	mov    0x30(%rcx),%r8d
  40635a:	25 ff ff ff bf       	and    $0xbfffffff,%eax
  40635f:	31 c9                	xor    %ecx,%ecx
  406361:	44 39 c0             	cmp    %r8d,%eax
  406364:	74 3f                	je     4063a5 <__lockfile+0x65>
  406366:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  40636d:	89 c8                	mov    %ecx,%eax
  40636f:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  406376:	00 00 
  406378:	85 c0                	test   %eax,%eax
  40637a:	74 24                	je     4063a0 <__lockfile+0x60>
  40637c:	41 81 c8 00 00 00 40 	or     $0x40000000,%r8d
  406383:	89 c8                	mov    %ecx,%eax
  406385:	f0 44 0f b1 82 8c 00 	lock cmpxchg %r8d,0x8c(%rdx)
  40638c:	00 00 
  40638e:	89 c1                	mov    %eax,%ecx
  406390:	85 c0                	test   %eax,%eax
  406392:	75 33                	jne    4063c7 <__lockfile+0x87>
  406394:	90                   	nop
  406395:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40639c:	00 00 00 00 
  4063a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4063a5:	89 c8                	mov    %ecx,%eax
  4063a7:	c3                   	ret
  4063a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4063af:	00 
  4063b0:	89 c8                	mov    %ecx,%eax
  4063b2:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  4063b6:	39 c8                	cmp    %ecx,%eax
  4063b8:	74 1d                	je     4063d7 <__lockfile+0x97>
  4063ba:	31 c0                	xor    %eax,%eax
  4063bc:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  4063c1:	89 c1                	mov    %eax,%ecx
  4063c3:	85 c0                	test   %eax,%eax
  4063c5:	74 d9                	je     4063a0 <__lockfile+0x60>
  4063c7:	89 ca                	mov    %ecx,%edx
  4063c9:	81 ca 00 00 00 40    	or     $0x40000000,%edx
  4063cf:	f7 c1 00 00 00 40    	test   $0x40000000,%ecx
  4063d5:	74 d9                	je     4063b0 <__lockfile+0x70>
  4063d7:	48 63 d2             	movslq %edx,%rdx
  4063da:	45 31 d2             	xor    %r10d,%r10d
  4063dd:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063e2:	be 80 00 00 00       	mov    $0x80,%esi
  4063e7:	0f 05                	syscall
  4063e9:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  4063ed:	75 cb                	jne    4063ba <__lockfile+0x7a>
  4063ef:	45 31 d2             	xor    %r10d,%r10d
  4063f2:	31 f6                	xor    %esi,%esi
  4063f4:	b8 ca 00 00 00       	mov    $0xca,%eax
  4063f9:	0f 05                	syscall
  4063fb:	eb bd                	jmp    4063ba <__lockfile+0x7a>
  4063fd:	0f 1f 00             	nopl   (%rax)

0000000000406400 <__unlockfile>:
  406400:	f3 0f 1e fa          	endbr64
  406404:	48 89 fa             	mov    %rdi,%rdx
  406407:	31 c0                	xor    %eax,%eax
  406409:	48 8d bf 8c 00 00 00 	lea    0x8c(%rdi),%rdi
  406410:	87 82 8c 00 00 00    	xchg   %eax,0x8c(%rdx)
  406416:	a9 00 00 00 40       	test   $0x40000000,%eax
  40641b:	74 17                	je     406434 <__unlockfile+0x34>
  40641d:	be 81 00 00 00       	mov    $0x81,%esi
  406422:	b8 ca 00 00 00       	mov    $0xca,%eax
  406427:	ba 01 00 00 00       	mov    $0x1,%edx
  40642c:	0f 05                	syscall
  40642e:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406432:	74 04                	je     406438 <__unlockfile+0x38>
  406434:	c3                   	ret
  406435:	0f 1f 00             	nopl   (%rax)
  406438:	b8 ca 00 00 00       	mov    $0xca,%eax
  40643d:	be 01 00 00 00       	mov    $0x1,%esi
  406442:	0f 05                	syscall
  406444:	c3                   	ret
  406445:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40644c:	00 00 00 
  40644f:	90                   	nop

0000000000406450 <__aio_close>:
  406450:	f3 0f 1e fa          	endbr64
  406454:	89 f8                	mov    %edi,%eax
  406456:	c3                   	ret
  406457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40645e:	00 00 

0000000000406460 <__stdio_close>:
  406460:	f3 0f 1e fa          	endbr64
  406464:	55                   	push   %rbp
  406465:	8b 7f 78             	mov    0x78(%rdi),%edi
  406468:	48 89 e5             	mov    %rsp,%rbp
  40646b:	e8 e0 ff ff ff       	call   406450 <__aio_close>
  406470:	48 63 f8             	movslq %eax,%rdi
  406473:	b8 03 00 00 00       	mov    $0x3,%eax
  406478:	0f 05                	syscall
  40647a:	48 89 c7             	mov    %rax,%rdi
  40647d:	e8 9e 06 00 00       	call   406b20 <__syscall_ret>
  406482:	5d                   	pop    %rbp
  406483:	c3                   	ret
  406484:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40648b:	00 00 00 
  40648e:	66 90                	xchg   %ax,%ax

0000000000406490 <__stdio_seek>:
  406490:	f3 0f 1e fa          	endbr64
  406494:	8b 7f 78             	mov    0x78(%rdi),%edi
  406497:	e9 64 06 00 00       	jmp    406b00 <__lseek>
  40649c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004064a0 <__stdout_write>:
  4064a0:	f3 0f 1e fa          	endbr64
  4064a4:	55                   	push   %rbp
  4064a5:	48 8d 05 d4 08 00 00 	lea    0x8d4(%rip),%rax        # 406d80 <__stdio_write>
  4064ac:	49 89 f8             	mov    %rdi,%r8
  4064af:	49 89 f1             	mov    %rsi,%r9
  4064b2:	48 89 e5             	mov    %rsp,%rbp
  4064b5:	48 83 ec 10          	sub    $0x10,%rsp
  4064b9:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
  4064c0:	00 00 
  4064c2:	4c 89 55 f8          	mov    %r10,-0x8(%rbp)
  4064c6:	49 89 d2             	mov    %rdx,%r10
  4064c9:	48 89 47 48          	mov    %rax,0x48(%rdi)
  4064cd:	f6 07 40             	testb  $0x40,(%rdi)
  4064d0:	75 19                	jne    4064eb <__stdout_write+0x4b>
  4064d2:	48 63 7f 78          	movslq 0x78(%rdi),%rdi
  4064d6:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4064da:	b8 10 00 00 00       	mov    $0x10,%eax
  4064df:	be 13 54 00 00       	mov    $0x5413,%esi
  4064e4:	0f 05                	syscall
  4064e6:	48 85 c0             	test   %rax,%rax
  4064e9:	75 25                	jne    406510 <__stdout_write+0x70>
  4064eb:	4c 89 d2             	mov    %r10,%rdx
  4064ee:	4c 89 ce             	mov    %r9,%rsi
  4064f1:	4c 89 c7             	mov    %r8,%rdi
  4064f4:	e8 87 08 00 00       	call   406d80 <__stdio_write>
  4064f9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4064fd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406504:	00 00 
  406506:	75 15                	jne    40651d <__stdout_write+0x7d>
  406508:	c9                   	leave
  406509:	c3                   	ret
  40650a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406510:	41 c7 80 90 00 00 00 	movl   $0xffffffff,0x90(%r8)
  406517:	ff ff ff ff 
  40651b:	eb ce                	jmp    4064eb <__stdout_write+0x4b>
  40651d:	e8 fe c3 ff ff       	call   402920 <__stack_chk_fail>
  406522:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406529:	00 00 00 
  40652c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406530 <__towrite>:
  406530:	f3 0f 1e fa          	endbr64
  406534:	8b 97 88 00 00 00    	mov    0x88(%rdi),%edx
  40653a:	8d 42 ff             	lea    -0x1(%rdx),%eax
  40653d:	09 d0                	or     %edx,%eax
  40653f:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
  406545:	8b 07                	mov    (%rdi),%eax
  406547:	a8 08                	test   $0x8,%al
  406549:	75 35                	jne    406580 <__towrite+0x50>
  40654b:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40654f:	48 8b 4f 60          	mov    0x60(%rdi),%rcx
  406553:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406557:	0f 11 47 08          	movups %xmm0,0x8(%rdi)
  40655b:	48 01 c1             	add    %rax,%rcx
  40655e:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406563:	48 89 47 38          	mov    %rax,0x38(%rdi)
  406567:	31 c0                	xor    %eax,%eax
  406569:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  40656e:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406572:	0f 11 47 20          	movups %xmm0,0x20(%rdi)
  406576:	c3                   	ret
  406577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40657e:	00 00 
  406580:	83 c8 20             	or     $0x20,%eax
  406583:	89 07                	mov    %eax,(%rdi)
  406585:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40658a:	c3                   	ret
  40658b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406590 <__towrite_needs_stdio_exit>:
  406590:	f3 0f 1e fa          	endbr64
  406594:	e9 87 07 00 00       	jmp    406d20 <__stdio_exit>
  406599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004065a0 <__fwritex>:
  4065a0:	f3 0f 1e fa          	endbr64
  4065a4:	55                   	push   %rbp
  4065a5:	48 89 f9             	mov    %rdi,%rcx
  4065a8:	48 89 e5             	mov    %rsp,%rbp
  4065ab:	41 54                	push   %r12
  4065ad:	49 89 f4             	mov    %rsi,%r12
  4065b0:	53                   	push   %rbx
  4065b1:	48 89 d3             	mov    %rdx,%rbx
  4065b4:	48 83 ec 10          	sub    $0x10,%rsp
  4065b8:	48 8b 42 20          	mov    0x20(%rdx),%rax
  4065bc:	48 85 c0             	test   %rax,%rax
  4065bf:	0f 84 ab 00 00 00    	je     406670 <__fwritex+0xd0>
  4065c5:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4065c9:	48 29 f8             	sub    %rdi,%rax
  4065cc:	4c 39 e0             	cmp    %r12,%rax
  4065cf:	72 57                	jb     406628 <__fwritex+0x88>
  4065d1:	8b 83 90 00 00 00    	mov    0x90(%rbx),%eax
  4065d7:	4c 89 e2             	mov    %r12,%rdx
  4065da:	85 c0                	test   %eax,%eax
  4065dc:	79 3d                	jns    40661b <__fwritex+0x7b>
  4065de:	4d 89 e0             	mov    %r12,%r8
  4065e1:	4c 89 c2             	mov    %r8,%rdx
  4065e4:	48 89 ce             	mov    %rcx,%rsi
  4065e7:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
  4065eb:	e8 bd f6 ff ff       	call   405cad <memcpy>
  4065f0:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4065f4:	4c 01 43 28          	add    %r8,0x28(%rbx)
  4065f8:	4c 89 e0             	mov    %r12,%rax
  4065fb:	48 83 c4 10          	add    $0x10,%rsp
  4065ff:	5b                   	pop    %rbx
  406600:	41 5c                	pop    %r12
  406602:	5d                   	pop    %rbp
  406603:	c3                   	ret
  406604:	90                   	nop
  406605:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40660c:	00 00 00 00 
  406610:	80 7c 11 ff 0a       	cmpb   $0xa,-0x1(%rcx,%rdx,1)
  406615:	74 29                	je     406640 <__fwritex+0xa0>
  406617:	48 83 ea 01          	sub    $0x1,%rdx
  40661b:	48 85 d2             	test   %rdx,%rdx
  40661e:	75 f0                	jne    406610 <__fwritex+0x70>
  406620:	eb bc                	jmp    4065de <__fwritex+0x3e>
  406622:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406628:	48 8b 43 48          	mov    0x48(%rbx),%rax
  40662c:	48 83 c4 10          	add    $0x10,%rsp
  406630:	4c 89 e2             	mov    %r12,%rdx
  406633:	48 89 df             	mov    %rbx,%rdi
  406636:	48 89 ce             	mov    %rcx,%rsi
  406639:	5b                   	pop    %rbx
  40663a:	41 5c                	pop    %r12
  40663c:	5d                   	pop    %rbp
  40663d:	ff e0                	jmp    *%rax
  40663f:	90                   	nop
  406640:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  406644:	48 89 ce             	mov    %rcx,%rsi
  406647:	48 89 df             	mov    %rbx,%rdi
  40664a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40664e:	ff 53 48             	call   *0x48(%rbx)
  406651:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  406655:	48 39 d0             	cmp    %rdx,%rax
  406658:	72 a1                	jb     4065fb <__fwritex+0x5b>
  40665a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40665e:	4d 89 e0             	mov    %r12,%r8
  406661:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  406665:	49 29 d0             	sub    %rdx,%r8
  406668:	48 01 d1             	add    %rdx,%rcx
  40666b:	e9 71 ff ff ff       	jmp    4065e1 <__fwritex+0x41>
  406670:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  406674:	48 89 d7             	mov    %rdx,%rdi
  406677:	e8 b4 fe ff ff       	call   406530 <__towrite>
  40667c:	85 c0                	test   %eax,%eax
  40667e:	75 10                	jne    406690 <__fwritex+0xf0>
  406680:	48 8b 43 20          	mov    0x20(%rbx),%rax
  406684:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  406688:	e9 38 ff ff ff       	jmp    4065c5 <__fwritex+0x25>
  40668d:	0f 1f 00             	nopl   (%rax)
  406690:	31 c0                	xor    %eax,%eax
  406692:	e9 64 ff ff ff       	jmp    4065fb <__fwritex+0x5b>
  406697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40669e:	00 00 

00000000004066a0 <fwrite>:
  4066a0:	f3 0f 1e fa          	endbr64
  4066a4:	55                   	push   %rbp
  4066a5:	31 c0                	xor    %eax,%eax
  4066a7:	48 89 e5             	mov    %rsp,%rbp
  4066aa:	41 57                	push   %r15
  4066ac:	41 56                	push   %r14
  4066ae:	49 89 f6             	mov    %rsi,%r14
  4066b1:	41 55                	push   %r13
  4066b3:	4c 0f af f2          	imul   %rdx,%r14
  4066b7:	41 54                	push   %r12
  4066b9:	49 89 cc             	mov    %rcx,%r12
  4066bc:	53                   	push   %rbx
  4066bd:	48 89 f3             	mov    %rsi,%rbx
  4066c0:	48 83 ec 18          	sub    $0x18,%rsp
  4066c4:	48 85 f6             	test   %rsi,%rsi
  4066c7:	48 0f 45 c2          	cmovne %rdx,%rax
  4066cb:	49 89 c5             	mov    %rax,%r13
  4066ce:	8b 81 8c 00 00 00    	mov    0x8c(%rcx),%eax
  4066d4:	85 c0                	test   %eax,%eax
  4066d6:	79 30                	jns    406708 <fwrite+0x68>
  4066d8:	48 89 ca             	mov    %rcx,%rdx
  4066db:	4c 89 f6             	mov    %r14,%rsi
  4066de:	e8 bd fe ff ff       	call   4065a0 <__fwritex>
  4066e3:	49 39 c6             	cmp    %rax,%r14
  4066e6:	74 08                	je     4066f0 <fwrite+0x50>
  4066e8:	31 d2                	xor    %edx,%edx
  4066ea:	48 f7 f3             	div    %rbx
  4066ed:	49 89 c5             	mov    %rax,%r13
  4066f0:	48 83 c4 18          	add    $0x18,%rsp
  4066f4:	4c 89 e8             	mov    %r13,%rax
  4066f7:	5b                   	pop    %rbx
  4066f8:	41 5c                	pop    %r12
  4066fa:	41 5d                	pop    %r13
  4066fc:	41 5e                	pop    %r14
  4066fe:	41 5f                	pop    %r15
  406700:	5d                   	pop    %rbp
  406701:	c3                   	ret
  406702:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406708:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  40670c:	48 89 cf             	mov    %rcx,%rdi
  40670f:	e8 2c fc ff ff       	call   406340 <__lockfile>
  406714:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  406718:	4c 89 e2             	mov    %r12,%rdx
  40671b:	4c 89 f6             	mov    %r14,%rsi
  40671e:	41 89 c7             	mov    %eax,%r15d
  406721:	e8 7a fe ff ff       	call   4065a0 <__fwritex>
  406726:	45 85 ff             	test   %r15d,%r15d
  406729:	74 b8                	je     4066e3 <fwrite+0x43>
  40672b:	4c 89 e7             	mov    %r12,%rdi
  40672e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406732:	e8 c9 fc ff ff       	call   406400 <__unlockfile>
  406737:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40673b:	eb a6                	jmp    4066e3 <fwrite+0x43>
  40673d:	0f 1f 00             	nopl   (%rax)

0000000000406740 <sn_write>:
  406740:	f3 0f 1e fa          	endbr64
  406744:	55                   	push   %rbp
  406745:	48 89 f1             	mov    %rsi,%rcx
  406748:	48 89 e5             	mov    %rsp,%rbp
  40674b:	41 55                	push   %r13
  40674d:	49 89 d5             	mov    %rdx,%r13
  406750:	41 54                	push   %r12
  406752:	53                   	push   %rbx
  406753:	48 89 fb             	mov    %rdi,%rbx
  406756:	48 83 ec 18          	sub    $0x18,%rsp
  40675a:	4c 8b a7 98 00 00 00 	mov    0x98(%rdi),%r12
  406761:	48 8b 77 38          	mov    0x38(%rdi),%rsi
  406765:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  406769:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  40676e:	49 8b 3c 24          	mov    (%r12),%rdi
  406772:	48 29 f2             	sub    %rsi,%rdx
  406775:	48 39 c2             	cmp    %rax,%rdx
  406778:	48 0f 47 d0          	cmova  %rax,%rdx
  40677c:	48 85 d2             	test   %rdx,%rdx
  40677f:	75 2f                	jne    4067b0 <sn_write+0x70>
  406781:	49 39 c5             	cmp    %rax,%r13
  406784:	49 0f 46 c5          	cmovbe %r13,%rax
  406788:	48 89 c2             	mov    %rax,%rdx
  40678b:	48 85 c0             	test   %rax,%rax
  40678e:	75 5c                	jne    4067ec <sn_write+0xac>
  406790:	c6 07 00             	movb   $0x0,(%rdi)
  406793:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406797:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40679b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40679f:	48 83 c4 18          	add    $0x18,%rsp
  4067a3:	4c 89 e8             	mov    %r13,%rax
  4067a6:	5b                   	pop    %rbx
  4067a7:	41 5c                	pop    %r12
  4067a9:	41 5d                	pop    %r13
  4067ab:	5d                   	pop    %rbp
  4067ac:	c3                   	ret
  4067ad:	0f 1f 00             	nopl   (%rax)
  4067b0:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4067b4:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4067b8:	e8 f0 f4 ff ff       	call   405cad <memcpy>
  4067bd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4067c1:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4067c6:	49 8b 3c 24          	mov    (%r12),%rdi
  4067ca:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4067ce:	48 29 d0             	sub    %rdx,%rax
  4067d1:	48 01 d7             	add    %rdx,%rdi
  4067d4:	49 39 c5             	cmp    %rax,%r13
  4067d7:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4067dc:	49 0f 46 c5          	cmovbe %r13,%rax
  4067e0:	49 89 3c 24          	mov    %rdi,(%r12)
  4067e4:	48 89 c2             	mov    %rax,%rdx
  4067e7:	48 85 c0             	test   %rax,%rax
  4067ea:	74 a4                	je     406790 <sn_write+0x50>
  4067ec:	48 89 ce             	mov    %rcx,%rsi
  4067ef:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4067f3:	e8 b5 f4 ff ff       	call   405cad <memcpy>
  4067f8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4067fc:	49 8b 3c 24          	mov    (%r12),%rdi
  406800:	49 29 54 24 08       	sub    %rdx,0x8(%r12)
  406805:	48 01 d7             	add    %rdx,%rdi
  406808:	49 89 3c 24          	mov    %rdi,(%r12)
  40680c:	eb 82                	jmp    406790 <sn_write+0x50>
  40680e:	66 90                	xchg   %ax,%ax

0000000000406810 <vsnprintf>:
  406810:	f3 0f 1e fa          	endbr64
  406814:	55                   	push   %rbp
  406815:	49 89 c9             	mov    %rcx,%r9
  406818:	49 89 d0             	mov    %rdx,%r8
  40681b:	48 89 e5             	mov    %rsp,%rbp
  40681e:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  406825:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40682c:	00 00 
  40682e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  406832:	31 c0                	xor    %eax,%eax
  406834:	48 85 f6             	test   %rsi,%rsi
  406837:	48 8d 55 f7          	lea    -0x9(%rbp),%rdx
  40683b:	0f 95 c1             	setne  %cl
  40683e:	48 0f 45 d7          	cmovne %rdi,%rdx
  406842:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  406849:	0f b6 c9             	movzbl %cl,%ecx
  40684c:	48 29 ce             	sub    %rcx,%rsi
  40684f:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  406854:	c6 02 00             	movb   $0x0,(%rdx)
  406857:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
  40685e:	4c 89 ca             	mov    %r9,%rdx
  406861:	48 89 b5 f8 fe ff ff 	mov    %rsi,-0x108(%rbp)
  406868:	4c 89 c6             	mov    %r8,%rsi
  40686b:	f3 48 ab             	rep stos %rax,(%rdi)
  40686e:	48 8d 05 cb fe ff ff 	lea    -0x135(%rip),%rax        # 406740 <sn_write>
  406875:	48 8d bd 00 ff ff ff 	lea    -0x100(%rbp),%rdi
  40687c:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  406883:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  406887:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40688e:	48 8b 05 4b 25 00 00 	mov    0x254b(%rip),%rax        # 408de0 <errmsgstr+0x780>
  406895:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  406899:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  4068a0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  4068a4:	e8 67 f1 ff ff       	call   405a10 <vfprintf>
  4068a9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4068ad:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4068b4:	00 00 
  4068b6:	75 02                	jne    4068ba <vsnprintf+0xaa>
  4068b8:	c9                   	leave
  4068b9:	c3                   	ret
  4068ba:	e8 61 c0 ff ff       	call   402920 <__stack_chk_fail>
  4068bf:	90                   	nop

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

0000000000406ae9 <__set_thread_area>:
  406ae9:	48 89 fe             	mov    %rdi,%rsi
  406aec:	bf 02 10 00 00       	mov    $0x1002,%edi
  406af1:	b8 9e 00 00 00       	mov    $0x9e,%eax
  406af6:	0f 05                	syscall
  406af8:	c3                   	ret
  406af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406b00 <__lseek>:
  406b00:	f3 0f 1e fa          	endbr64
  406b04:	48 63 ff             	movslq %edi,%rdi
  406b07:	48 63 d2             	movslq %edx,%rdx
  406b0a:	b8 08 00 00 00       	mov    $0x8,%eax
  406b0f:	0f 05                	syscall
  406b11:	48 89 c7             	mov    %rax,%rdi
  406b14:	e9 07 00 00 00       	jmp    406b20 <__syscall_ret>
  406b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406b20 <__syscall_ret>:
  406b20:	f3 0f 1e fa          	endbr64
  406b24:	48 81 ff 00 f0 ff ff 	cmp    $0xfffffffffffff000,%rdi
  406b2b:	77 0b                	ja     406b38 <__syscall_ret+0x18>
  406b2d:	48 89 f8             	mov    %rdi,%rax
  406b30:	c3                   	ret
  406b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b38:	55                   	push   %rbp
  406b39:	48 89 e5             	mov    %rsp,%rbp
  406b3c:	53                   	push   %rbx
  406b3d:	48 89 fb             	mov    %rdi,%rbx
  406b40:	48 83 ec 08          	sub    $0x8,%rsp
  406b44:	e8 c7 f5 ff ff       	call   406110 <__errno_location>
  406b49:	89 df                	mov    %ebx,%edi
  406b4b:	f7 df                	neg    %edi
  406b4d:	89 38                	mov    %edi,(%rax)
  406b4f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406b56:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406b5a:	c9                   	leave
  406b5b:	c3                   	ret
  406b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406b60 <wcrtomb>:
  406b60:	f3 0f 1e fa          	endbr64
  406b64:	48 85 ff             	test   %rdi,%rdi
  406b67:	0f 84 d6 00 00 00    	je     406c43 <wcrtomb+0xe3>
  406b6d:	83 fe 7f             	cmp    $0x7f,%esi
  406b70:	0f 86 ca 00 00 00    	jbe    406c40 <wcrtomb+0xe0>
  406b76:	55                   	push   %rbp
  406b77:	89 f0                	mov    %esi,%eax
  406b79:	48 89 f9             	mov    %rdi,%rcx
  406b7c:	64 48 8b 14 25 00 00 	mov    %fs:0x0,%rdx
  406b83:	00 00 
  406b85:	48 8b 92 a8 00 00 00 	mov    0xa8(%rdx),%rdx
  406b8c:	48 89 e5             	mov    %rsp,%rbp
  406b8f:	48 83 3a 00          	cmpq   $0x0,(%rdx)
  406b93:	74 53                	je     406be8 <wcrtomb+0x88>
  406b95:	81 fe ff 07 00 00    	cmp    $0x7ff,%esi
  406b9b:	0f 86 af 00 00 00    	jbe    406c50 <wcrtomb+0xf0>
  406ba1:	8d 96 00 20 ff ff    	lea    -0xe000(%rsi),%edx
  406ba7:	81 fa ff 1f 00 00    	cmp    $0x1fff,%edx
  406bad:	0f 86 bd 00 00 00    	jbe    406c70 <wcrtomb+0x110>
  406bb3:	81 fe ff d7 00 00    	cmp    $0xd7ff,%esi
  406bb9:	0f 86 b1 00 00 00    	jbe    406c70 <wcrtomb+0x110>
  406bbf:	8d 96 00 00 ff ff    	lea    -0x10000(%rsi),%edx
  406bc5:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
  406bcb:	76 33                	jbe    406c00 <wcrtomb+0xa0>
  406bcd:	e8 3e f5 ff ff       	call   406110 <__errno_location>
  406bd2:	c7 00 54 00 00 00    	movl   $0x54,(%rax)
  406bd8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  406bdf:	5d                   	pop    %rbp
  406be0:	c3                   	ret
  406be1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406be8:	2d 80 df 00 00       	sub    $0xdf80,%eax
  406bed:	83 f8 7f             	cmp    $0x7f,%eax
  406bf0:	77 db                	ja     406bcd <wcrtomb+0x6d>
  406bf2:	40 88 37             	mov    %sil,(%rdi)
  406bf5:	b8 01 00 00 00       	mov    $0x1,%eax
  406bfa:	5d                   	pop    %rbp
  406bfb:	c3                   	ret
  406bfc:	0f 1f 40 00          	nopl   0x0(%rax)
  406c00:	89 c7                	mov    %eax,%edi
  406c02:	83 e0 3f             	and    $0x3f,%eax
  406c05:	89 f2                	mov    %esi,%edx
  406c07:	c1 fe 0c             	sar    $0xc,%esi
  406c0a:	c1 ff 06             	sar    $0x6,%edi
  406c0d:	c1 e0 08             	shl    $0x8,%eax
  406c10:	83 e6 3f             	and    $0x3f,%esi
  406c13:	83 e7 3f             	and    $0x3f,%edi
  406c16:	c1 fa 12             	sar    $0x12,%edx
  406c19:	09 f8                	or     %edi,%eax
  406c1b:	0f b6 d2             	movzbl %dl,%edx
  406c1e:	c1 e0 08             	shl    $0x8,%eax
  406c21:	09 f0                	or     %esi,%eax
  406c23:	8b 35 e7 18 00 00    	mov    0x18e7(%rip),%esi        # 408510 <states+0x1f0>
  406c29:	c1 e0 08             	shl    $0x8,%eax
  406c2c:	09 d0                	or     %edx,%eax
  406c2e:	09 f0                	or     %esi,%eax
  406c30:	89 01                	mov    %eax,(%rcx)
  406c32:	b8 04 00 00 00       	mov    $0x4,%eax
  406c37:	5d                   	pop    %rbp
  406c38:	c3                   	ret
  406c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c40:	40 88 37             	mov    %sil,(%rdi)
  406c43:	b8 01 00 00 00       	mov    $0x1,%eax
  406c48:	c3                   	ret
  406c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406c50:	89 f2                	mov    %esi,%edx
  406c52:	83 e0 3f             	and    $0x3f,%eax
  406c55:	c1 fa 06             	sar    $0x6,%edx
  406c58:	83 c8 80             	or     $0xffffff80,%eax
  406c5b:	83 ca c0             	or     $0xffffffc0,%edx
  406c5e:	88 47 01             	mov    %al,0x1(%rdi)
  406c61:	b8 02 00 00 00       	mov    $0x2,%eax
  406c66:	88 17                	mov    %dl,(%rdi)
  406c68:	5d                   	pop    %rbp
  406c69:	c3                   	ret
  406c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c70:	89 c2                	mov    %eax,%edx
  406c72:	c1 fa 0c             	sar    $0xc,%edx
  406c75:	83 ca e0             	or     $0xffffffe0,%edx
  406c78:	88 11                	mov    %dl,(%rcx)
  406c7a:	89 c2                	mov    %eax,%edx
  406c7c:	83 e0 3f             	and    $0x3f,%eax
  406c7f:	c1 fa 06             	sar    $0x6,%edx
  406c82:	83 c8 80             	or     $0xffffff80,%eax
  406c85:	83 e2 3f             	and    $0x3f,%edx
  406c88:	88 41 02             	mov    %al,0x2(%rcx)
  406c8b:	b8 03 00 00 00       	mov    $0x3,%eax
  406c90:	83 ca 80             	or     $0xffffff80,%edx
  406c93:	88 51 01             	mov    %dl,0x1(%rcx)
  406c96:	5d                   	pop    %rbp
  406c97:	c3                   	ret
  406c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406c9f:	00 

0000000000406ca0 <close_file>:
  406ca0:	48 85 ff             	test   %rdi,%rdi
  406ca3:	74 6b                	je     406d10 <close_file+0x70>
  406ca5:	55                   	push   %rbp
  406ca6:	48 89 e5             	mov    %rsp,%rbp
  406ca9:	53                   	push   %rbx
  406caa:	48 89 fb             	mov    %rdi,%rbx
  406cad:	48 83 ec 08          	sub    $0x8,%rsp
  406cb1:	8b 87 8c 00 00 00    	mov    0x8c(%rdi),%eax
  406cb7:	85 c0                	test   %eax,%eax
  406cb9:	79 3d                	jns    406cf8 <close_file+0x58>
  406cbb:	48 8b 43 38          	mov    0x38(%rbx),%rax
  406cbf:	48 39 43 28          	cmp    %rax,0x28(%rbx)
  406cc3:	74 0a                	je     406ccf <close_file+0x2f>
  406cc5:	31 d2                	xor    %edx,%edx
  406cc7:	31 f6                	xor    %esi,%esi
  406cc9:	48 89 df             	mov    %rbx,%rdi
  406ccc:	ff 53 48             	call   *0x48(%rbx)
  406ccf:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  406cd3:	48 8b 43 10          	mov    0x10(%rbx),%rax
  406cd7:	48 39 c6             	cmp    %rax,%rsi
  406cda:	74 24                	je     406d00 <close_file+0x60>
  406cdc:	48 29 c6             	sub    %rax,%rsi
  406cdf:	48 89 df             	mov    %rbx,%rdi
  406ce2:	48 8b 43 50          	mov    0x50(%rbx),%rax
  406ce6:	ba 01 00 00 00       	mov    $0x1,%edx
  406ceb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406cef:	c9                   	leave
  406cf0:	ff e0                	jmp    *%rax
  406cf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406cf8:	e8 43 f6 ff ff       	call   406340 <__lockfile>
  406cfd:	eb bc                	jmp    406cbb <close_file+0x1b>
  406cff:	90                   	nop
  406d00:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d04:	c9                   	leave
  406d05:	c3                   	ret
  406d06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d0d:	00 00 00 
  406d10:	c3                   	ret
  406d11:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406d18:	00 00 00 
  406d1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000406d20 <__stdio_exit>:
  406d20:	f3 0f 1e fa          	endbr64
  406d24:	55                   	push   %rbp
  406d25:	48 89 e5             	mov    %rsp,%rbp
  406d28:	53                   	push   %rbx
  406d29:	48 83 ec 08          	sub    $0x8,%rsp
  406d2d:	e8 7e 01 00 00       	call   406eb0 <__ofl_lock>
  406d32:	48 8b 18             	mov    (%rax),%rbx
  406d35:	48 85 db             	test   %rbx,%rbx
  406d38:	74 17                	je     406d51 <__stdio_exit+0x31>
  406d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d40:	48 89 df             	mov    %rbx,%rdi
  406d43:	e8 58 ff ff ff       	call   406ca0 <close_file>
  406d48:	48 8b 5b 70          	mov    0x70(%rbx),%rbx
  406d4c:	48 85 db             	test   %rbx,%rbx
  406d4f:	75 ef                	jne    406d40 <__stdio_exit+0x20>
  406d51:	48 8b 3d 40 4a 00 00 	mov    0x4a40(%rip),%rdi        # 40b798 <__stderr_used>
  406d58:	e8 43 ff ff ff       	call   406ca0 <close_file>
  406d5d:	48 8b 3d a4 42 00 00 	mov    0x42a4(%rip),%rdi        # 40b008 <__stdout_used>
  406d64:	e8 37 ff ff ff       	call   406ca0 <close_file>
  406d69:	48 8b 3d 28 4a 00 00 	mov    0x4a28(%rip),%rdi        # 40b798 <__stderr_used>
  406d70:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  406d74:	c9                   	leave
  406d75:	e9 26 ff ff ff       	jmp    406ca0 <close_file>
  406d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406d80 <__stdio_write>:
  406d80:	f3 0f 1e fa          	endbr64
  406d84:	55                   	push   %rbp
  406d85:	48 89 e5             	mov    %rsp,%rbp
  406d88:	41 57                	push   %r15
  406d8a:	41 56                	push   %r14
  406d8c:	4c 8d 7d a0          	lea    -0x60(%rbp),%r15
  406d90:	41 55                	push   %r13
  406d92:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  406d98:	41 54                	push   %r12
  406d9a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406da0:	53                   	push   %rbx
  406da1:	48 89 fb             	mov    %rdi,%rbx
  406da4:	48 83 ec 48          	sub    $0x48,%rsp
  406da8:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  406dac:	4c 8b 47 28          	mov    0x28(%rdi),%r8
  406db0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406db7:	00 00 
  406db9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  406dbd:	48 8b 47 38          	mov    0x38(%rdi),%rax
  406dc1:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  406dc5:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  406dc9:	49 29 c0             	sub    %rax,%r8
  406dcc:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  406dd0:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  406dd4:	4d 8d 34 10          	lea    (%r8,%rdx,1),%r14
  406dd8:	eb 37                	jmp    406e11 <__stdio_write+0x91>
  406dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406de0:	48 85 c0             	test   %rax,%rax
  406de3:	0f 88 8f 00 00 00    	js     406e78 <__stdio_write+0xf8>
  406de9:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406ded:	49 29 c6             	sub    %rax,%r14
  406df0:	48 39 c2             	cmp    %rax,%rdx
  406df3:	73 12                	jae    406e07 <__stdio_write+0x87>
  406df5:	41 83 ed 01          	sub    $0x1,%r13d
  406df9:	48 29 d0             	sub    %rdx,%rax
  406dfc:	49 83 c7 10          	add    $0x10,%r15
  406e00:	49 8b 57 08          	mov    0x8(%r15),%rdx
  406e04:	4d 63 e5             	movslq %r13d,%r12
  406e07:	48 29 c2             	sub    %rax,%rdx
  406e0a:	49 01 07             	add    %rax,(%r15)
  406e0d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  406e11:	48 63 7b 78          	movslq 0x78(%rbx),%rdi
  406e15:	b8 14 00 00 00       	mov    $0x14,%eax
  406e1a:	4c 89 fe             	mov    %r15,%rsi
  406e1d:	4c 89 e2             	mov    %r12,%rdx
  406e20:	0f 05                	syscall
  406e22:	48 89 c7             	mov    %rax,%rdi
  406e25:	e8 f6 fc ff ff       	call   406b20 <__syscall_ret>
  406e2a:	49 39 c6             	cmp    %rax,%r14
  406e2d:	75 b1                	jne    406de0 <__stdio_write+0x60>
  406e2f:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406e33:	48 8b 4b 60          	mov    0x60(%rbx),%rcx
  406e37:	48 01 c1             	add    %rax,%rcx
  406e3a:	66 48 0f 6e c8       	movq   %rax,%xmm1
  406e3f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  406e43:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406e47:	66 48 0f 6e c1       	movq   %rcx,%xmm0
  406e4c:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  406e50:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406e54:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  406e58:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  406e5f:	00 00 
  406e61:	75 3a                	jne    406e9d <__stdio_write+0x11d>
  406e63:	48 83 c4 48          	add    $0x48,%rsp
  406e67:	5b                   	pop    %rbx
  406e68:	41 5c                	pop    %r12
  406e6a:	41 5d                	pop    %r13
  406e6c:	41 5e                	pop    %r14
  406e6e:	41 5f                	pop    %r15
  406e70:	5d                   	pop    %rbp
  406e71:	c3                   	ret
  406e72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e78:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406e7c:	83 0b 20             	orl    $0x20,(%rbx)
  406e7f:	31 c0                	xor    %eax,%eax
  406e81:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
  406e88:	00 
  406e89:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
  406e8d:	41 83 fd 02          	cmp    $0x2,%r13d
  406e91:	74 c1                	je     406e54 <__stdio_write+0xd4>
  406e93:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  406e97:	49 2b 47 08          	sub    0x8(%r15),%rax
  406e9b:	eb b7                	jmp    406e54 <__stdio_write+0xd4>
  406e9d:	e8 7e ba ff ff       	call   402920 <__stack_chk_fail>
  406ea2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  406ea9:	00 00 00 
  406eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406eb0 <__ofl_lock>:
  406eb0:	f3 0f 1e fa          	endbr64
  406eb4:	55                   	push   %rbp
  406eb5:	48 8d 3d e4 48 00 00 	lea    0x48e4(%rip),%rdi        # 40b7a0 <ofl_lock>
  406ebc:	48 89 e5             	mov    %rsp,%rbp
  406ebf:	e8 1c 00 00 00       	call   406ee0 <__lock>
  406ec4:	48 8d 05 dd 48 00 00 	lea    0x48dd(%rip),%rax        # 40b7a8 <ofl_head>
  406ecb:	5d                   	pop    %rbp
  406ecc:	c3                   	ret
  406ecd:	0f 1f 00             	nopl   (%rax)

0000000000406ed0 <__ofl_unlock>:
  406ed0:	f3 0f 1e fa          	endbr64
  406ed4:	48 8d 3d c5 48 00 00 	lea    0x48c5(%rip),%rdi        # 40b7a0 <ofl_lock>
  406edb:	e9 e0 00 00 00       	jmp    406fc0 <__unlock>

0000000000406ee0 <__lock>:
  406ee0:	f3 0f 1e fa          	endbr64
  406ee4:	0f be 0d 78 42 00 00 	movsbl 0x4278(%rip),%ecx        # 40b163 <__libc+0x3>
  406eeb:	85 c9                	test   %ecx,%ecx
  406eed:	74 51                	je     406f40 <__lock+0x60>
  406eef:	31 c0                	xor    %eax,%eax
  406ef1:	ba 01 00 00 80       	mov    $0x80000001,%edx
  406ef6:	f0 0f b1 17          	lock cmpxchg %edx,(%rdi)
  406efa:	89 c2                	mov    %eax,%edx
  406efc:	85 c9                	test   %ecx,%ecx
  406efe:	78 48                	js     406f48 <__lock+0x68>
  406f00:	85 c0                	test   %eax,%eax
  406f02:	74 3c                	je     406f40 <__lock+0x60>
  406f04:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  406f0a:	eb 1e                	jmp    406f2a <__lock+0x4a>
  406f0c:	0f 1f 40 00          	nopl   0x0(%rax)
  406f10:	8d b2 01 00 00 80    	lea    -0x7fffffff(%rdx),%esi
  406f16:	89 d1                	mov    %edx,%ecx
  406f18:	89 c8                	mov    %ecx,%eax
  406f1a:	f0 0f b1 37          	lock cmpxchg %esi,(%rdi)
  406f1e:	89 c2                	mov    %eax,%edx
  406f20:	39 c1                	cmp    %eax,%ecx
  406f22:	74 1c                	je     406f40 <__lock+0x60>
  406f24:	41 83 e8 01          	sub    $0x1,%r8d
  406f28:	74 2e                	je     406f58 <__lock+0x78>
  406f2a:	85 d2                	test   %edx,%edx
  406f2c:	79 e2                	jns    406f10 <__lock+0x30>
  406f2e:	8d 8a ff ff ff 7f    	lea    0x7fffffff(%rdx),%ecx
  406f34:	89 d6                	mov    %edx,%esi
  406f36:	eb e0                	jmp    406f18 <__lock+0x38>
  406f38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406f3f:	00 
  406f40:	c3                   	ret
  406f41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406f48:	c6 05 14 42 00 00 00 	movb   $0x0,0x4214(%rip)        # 40b163 <__libc+0x3>
  406f4f:	85 c0                	test   %eax,%eax
  406f51:	75 b1                	jne    406f04 <__lock+0x24>
  406f53:	c3                   	ret
  406f54:	0f 1f 40 00          	nopl   0x0(%rax)
  406f58:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406f5e:	f0 44 0f c1 07       	lock xadd %r8d,(%rdi)
  406f63:	41 83 c0 01          	add    $0x1,%r8d
  406f67:	eb 1c                	jmp    406f85 <__lock+0xa5>
  406f69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406f70:	44 8d 82 00 00 00 80 	lea    -0x80000000(%rdx),%r8d
  406f77:	89 d0                	mov    %edx,%eax
  406f79:	f0 44 0f b1 07       	lock cmpxchg %r8d,(%rdi)
  406f7e:	41 89 c0             	mov    %eax,%r8d
  406f81:	39 c2                	cmp    %eax,%edx
  406f83:	74 bb                	je     406f40 <__lock+0x60>
  406f85:	44 89 c2             	mov    %r8d,%edx
  406f88:	45 85 c0             	test   %r8d,%r8d
  406f8b:	79 e3                	jns    406f70 <__lock+0x90>
  406f8d:	49 63 d0             	movslq %r8d,%rdx
  406f90:	45 31 d2             	xor    %r10d,%r10d
  406f93:	b8 ca 00 00 00       	mov    $0xca,%eax
  406f98:	be 80 00 00 00       	mov    $0x80,%esi
  406f9d:	0f 05                	syscall
  406f9f:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406fa3:	75 09                	jne    406fae <__lock+0xce>
  406fa5:	31 f6                	xor    %esi,%esi
  406fa7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406fac:	0f 05                	syscall
  406fae:	41 8d 90 ff ff ff 7f 	lea    0x7fffffff(%r8),%edx
  406fb5:	eb b9                	jmp    406f70 <__lock+0x90>
  406fb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406fbe:	00 00 

0000000000406fc0 <__unlock>:
  406fc0:	f3 0f 1e fa          	endbr64
  406fc4:	8b 07                	mov    (%rdi),%eax
  406fc6:	85 c0                	test   %eax,%eax
  406fc8:	78 06                	js     406fd0 <__unlock+0x10>
  406fca:	c3                   	ret
  406fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406fd0:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  406fd5:	f0 0f c1 07          	lock xadd %eax,(%rdi)
  406fd9:	3d 01 00 00 80       	cmp    $0x80000001,%eax
  406fde:	74 ea                	je     406fca <__unlock+0xa>
  406fe0:	be 81 00 00 00       	mov    $0x81,%esi
  406fe5:	b8 ca 00 00 00       	mov    $0xca,%eax
  406fea:	ba 01 00 00 00       	mov    $0x1,%edx
  406fef:	0f 05                	syscall
  406ff1:	48 83 f8 da          	cmp    $0xffffffffffffffda,%rax
  406ff5:	75 d3                	jne    406fca <__unlock+0xa>
  406ff7:	b8 ca 00 00 00       	mov    $0xca,%eax
  406ffc:	be 01 00 00 00       	mov    $0x1,%esi
  407001:	0f 05                	syscall
  407003:	c3                   	ret

Disassembly of section .fini:

0000000000407004 <_fini>:
  407004:	50                   	push   %rax
  407005:	58                   	pop    %rax
  407006:	c3                   	ret
