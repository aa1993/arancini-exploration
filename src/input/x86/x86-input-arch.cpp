#include <arancini/input/x86/translators/translators.h>
#include <arancini/input/x86/x86-input-arch.h>
#include <arancini/ir/ir-builder.h>
#include <arancini/native_lib/nlib_func.h>
#include <arancini/util/logger.h>

using namespace arancini::ir;
using namespace arancini::input;
using namespace arancini::input::x86;
using namespace arancini::input::x86::translators;

static void initialise_xed() {
    static bool has_initialised_xed = false;

    if (!has_initialised_xed) {
        xed_tables_init();
        has_initialised_xed = true;
    }
}

/*
This function implements the factory pattern, returning a translator specialized
in the translation for each category of instructions.

TODO: This is quite heavy-weight - need to hold instances of translators ready
to go, rather than instantiating each time.
*/
static std::unique_ptr<translator> get_translator(ir_builder &builder,
                                                  xed_iclass_enum_t ic) {
    switch (ic) {
    case XED_ICLASS_MOV:
    case XED_ICLASS_LEA:
    case XED_ICLASS_MOVQ:
    case XED_ICLASS_MOVD:
    case XED_ICLASS_MOVSX:
    case XED_ICLASS_MOVSXD:
    case XED_ICLASS_MOVSD_XMM:
    case XED_ICLASS_MOVSB:
    case XED_ICLASS_MOVSW:
    case XED_ICLASS_MOVSD:
    case XED_ICLASS_MOVSQ:
    case XED_ICLASS_MOVZX:
    case XED_ICLASS_MOVHPS:
    case XED_ICLASS_MOVUPS:
    case XED_ICLASS_MOVAPS:
    case XED_ICLASS_MOVDQA:
    case XED_ICLASS_MOVAPD:
    case XED_ICLASS_MOVLPS:
    case XED_ICLASS_MOVLPD:
    case XED_ICLASS_MOVHPD:
    case XED_ICLASS_MOVSS:
    case XED_ICLASS_MOVDQU:
    case XED_ICLASS_CQO:
    case XED_ICLASS_CWD:
    case XED_ICLASS_CDQ:
    case XED_ICLASS_CDQE:

    case XED_ICLASS_CWDE:
        return std::make_unique<mov_translator>(builder);

    case XED_ICLASS_SETNBE:
    case XED_ICLASS_SETNB:
    case XED_ICLASS_SETB:
    case XED_ICLASS_SETBE:
    case XED_ICLASS_SETZ:
    case XED_ICLASS_SETNLE:
    case XED_ICLASS_SETNL:
    case XED_ICLASS_SETL:
    case XED_ICLASS_SETLE:
    case XED_ICLASS_SETNZ:
    case XED_ICLASS_SETNO:
    case XED_ICLASS_SETNP:
    case XED_ICLASS_SETNS:
    case XED_ICLASS_SETO:
    case XED_ICLASS_SETP:
    case XED_ICLASS_SETS:
        return std::make_unique<setcc_translator>(builder);

    case XED_ICLASS_JNBE:
    case XED_ICLASS_JNB:
    case XED_ICLASS_JB:
    case XED_ICLASS_JBE:
    case XED_ICLASS_JZ:
    case XED_ICLASS_JNLE:
    case XED_ICLASS_JNL:
    case XED_ICLASS_JL:
    case XED_ICLASS_JLE:
    case XED_ICLASS_JNZ:
    case XED_ICLASS_JNO:
    case XED_ICLASS_JNP:
    case XED_ICLASS_JNS:
    case XED_ICLASS_JO:
    case XED_ICLASS_JP:
    case XED_ICLASS_JS:
        return std::make_unique<jcc_translator>(builder);

    case XED_ICLASS_CMOVNBE:
    case XED_ICLASS_CMOVNB:
    case XED_ICLASS_CMOVB:
    case XED_ICLASS_CMOVBE:
    case XED_ICLASS_CMOVZ:
    case XED_ICLASS_CMOVNLE:
    case XED_ICLASS_CMOVNL:
    case XED_ICLASS_CMOVL:
    case XED_ICLASS_CMOVLE:
    case XED_ICLASS_CMOVNZ:
    case XED_ICLASS_CMOVNO:
    case XED_ICLASS_CMOVNP:
    case XED_ICLASS_CMOVNS:
    case XED_ICLASS_CMOVO:
    case XED_ICLASS_CMOVP:
    case XED_ICLASS_CMOVS:
    case XED_ICLASS_FCMOVE:
    case XED_ICLASS_FCMOVNE:
    case XED_ICLASS_FCMOVB:
    case XED_ICLASS_FCMOVBE:
    case XED_ICLASS_FCMOVNB:
    case XED_ICLASS_FCMOVNBE:
    case XED_ICLASS_FCMOVU:
    case XED_ICLASS_FCMOVNU:
        return std::make_unique<cmov_translator>(builder);

    case XED_ICLASS_NOP:
    case XED_ICLASS_CPUID:
    case XED_ICLASS_PREFETCHNTA:
    case XED_ICLASS_PAUSE:
        return std::make_unique<nop_translator>(builder);

    case XED_ICLASS_XOR:
    case XED_ICLASS_PXOR:
    case XED_ICLASS_AND:
    case XED_ICLASS_PAND:
    case XED_ICLASS_ANDPS:
    case XED_ICLASS_ANDPD:
    case XED_ICLASS_ANDNPS:
    case XED_ICLASS_ANDNPD:
    case XED_ICLASS_OR:
    case XED_ICLASS_POR:
    case XED_ICLASS_ORPS:
    case XED_ICLASS_ORPD:
    case XED_ICLASS_ADD:
    case XED_ICLASS_ADDPS:
    case XED_ICLASS_ADC:
    case XED_ICLASS_SUB:
    case XED_ICLASS_SBB:
    case XED_ICLASS_CMP:
    case XED_ICLASS_TEST:
    case XED_ICLASS_XADD:
    case XED_ICLASS_BT:
    case XED_ICLASS_BTS:
    case XED_ICLASS_BTR:
    case XED_ICLASS_BSR:
    case XED_ICLASS_BSF:
    case XED_ICLASS_COMISS:
    case XED_ICLASS_COMISD:
    case XED_ICLASS_UCOMISS:
    case XED_ICLASS_UCOMISD:
    // SSE2 binary operations
    case XED_ICLASS_PADDQ:
    case XED_ICLASS_PADDD:
    case XED_ICLASS_PADDW:
    case XED_ICLASS_PADDB:
    case XED_ICLASS_PSUBQ:
    case XED_ICLASS_PSUBD:
    case XED_ICLASS_PSUBW:
    case XED_ICLASS_PSUBB:
    case XED_ICLASS_PCMPEQB:
    case XED_ICLASS_PCMPEQW:
    case XED_ICLASS_PCMPEQD:
    case XED_ICLASS_PCMPGTB:
    case XED_ICLASS_PCMPGTW:
    case XED_ICLASS_PCMPGTD:
    case XED_ICLASS_CMPSS:
    case XED_ICLASS_CMPSD_XMM:
        return std::make_unique<binop_translator>(builder);

    case XED_ICLASS_PUSH:
    case XED_ICLASS_POP:
    case XED_ICLASS_LEAVE:
        return std::make_unique<stack_translator>(builder);

    case XED_ICLASS_CALL_FAR:
    case XED_ICLASS_CALL_NEAR:
    case XED_ICLASS_RET_FAR:
    case XED_ICLASS_RET_NEAR:
    case XED_ICLASS_JMP:
        return std::make_unique<branch_translator>(builder);

    case XED_ICLASS_SAR:
    case XED_ICLASS_SHR:
    case XED_ICLASS_SHL:
    case XED_ICLASS_SHRD:
    case XED_ICLASS_SHLD:
    case XED_ICLASS_ROR:
    case XED_ICLASS_ROL:
    case XED_ICLASS_PSRLW:
    case XED_ICLASS_PSRLD:
    case XED_ICLASS_PSRLQ:
    case XED_ICLASS_PSLLDQ:
    case XED_ICLASS_PSRLDQ:
    case XED_ICLASS_PSLLD:
        return std::make_unique<shifts_translator>(builder);

    case XED_ICLASS_INC:
    case XED_ICLASS_DEC:
    case XED_ICLASS_NOT:
    case XED_ICLASS_NEG:
    case XED_ICLASS_BSWAP:
    case XED_ICLASS_PMOVMSKB:
    case XED_ICLASS_SQRTSD:
        return std::make_unique<unop_translator>(builder);

    case XED_ICLASS_MUL:
    case XED_ICLASS_IMUL:
    case XED_ICLASS_DIV:
    case XED_ICLASS_IDIV:
    case XED_ICLASS_PMULUDQ:
    case XED_ICLASS_PMULLW:
        return std::make_unique<muldiv_translator>(builder);

    case XED_ICLASS_REPE_CMPSB:
    case XED_ICLASS_REP_STOSB:
    case XED_ICLASS_REP_STOSD:
    case XED_ICLASS_REP_STOSW:
    case XED_ICLASS_REP_STOSQ:
    case XED_ICLASS_REP_MOVSB:
    case XED_ICLASS_REP_MOVSD:
    case XED_ICLASS_REP_MOVSW:
    case XED_ICLASS_REP_MOVSQ:
        return std::make_unique<rep_translator>(builder);

    case XED_ICLASS_UNPCKHPD:
    case XED_ICLASS_PUNPCKLBW:
    case XED_ICLASS_PUNPCKLWD:
    case XED_ICLASS_PUNPCKLDQ:
    case XED_ICLASS_PUNPCKLQDQ:
    case XED_ICLASS_PUNPCKHBW:
    case XED_ICLASS_PUNPCKHWD:
    case XED_ICLASS_PUNPCKHDQ:
    case XED_ICLASS_PUNPCKHQDQ:
    //case XED_ICLASS_PACKUSWB:
    case XED_ICLASS_PACKSSWB:
    case XED_ICLASS_PACKSSDW:
    case XED_ICLASS_PEXTRW:
        return std::make_unique<punpck_translator>(builder);

    case XED_ICLASS_SUBPD:
    case XED_ICLASS_ADDPD:
    case XED_ICLASS_XORPD:
    case XED_ICLASS_XORPS:
    case XED_ICLASS_VADDSS:
    case XED_ICLASS_ADDSS:
    case XED_ICLASS_VSUBSS:
    case XED_ICLASS_SUBSS:
    case XED_ICLASS_VDIVSS:
    case XED_ICLASS_DIVSS:
    case XED_ICLASS_VMULSS:
    case XED_ICLASS_MULSS:
    case XED_ICLASS_VADDSD:
    case XED_ICLASS_ADDSD:
    case XED_ICLASS_VSUBSD:
    case XED_ICLASS_SUBSD:
    case XED_ICLASS_VDIVSD:
    case XED_ICLASS_DIVSD:
    case XED_ICLASS_VMULSD:
    case XED_ICLASS_MULSD:
    case XED_ICLASS_CVTSD2SI:
    case XED_ICLASS_CVTSD2SS:
    case XED_ICLASS_CVTSS2SD:
    case XED_ICLASS_CVTSS2SI:
    case XED_ICLASS_CVTSI2SS:
    case XED_ICLASS_CVTSI2SD:
    case XED_ICLASS_CVTTSS2SI:
    case XED_ICLASS_CVTTSD2SI:

    case XED_ICLASS_HADDPS:
    case XED_ICLASS_HADDPD:
    case XED_ICLASS_PHADDD:
    case XED_ICLASS_PHADDW:

    case XED_ICLASS_PADDUSB:
    case XED_ICLASS_PADDUSW:
    case XED_ICLASS_PADDSB:
    case XED_ICLASS_PADDSW:

    case XED_ICLASS_PHADDSW:

    case XED_ICLASS_SUBPS:

    case XED_ICLASS_HSUBPS:
    case XED_ICLASS_HSUBPD:
    case XED_ICLASS_PHSUBD:
    case XED_ICLASS_PHSUBW:

    case XED_ICLASS_PSUBUSB:
    case XED_ICLASS_PSUBUSW:
    case XED_ICLASS_PSUBSB:
    case XED_ICLASS_PSUBSW:

    case XED_ICLASS_PHSUBSW:

    case XED_ICLASS_MULPD:
    case XED_ICLASS_MULPS:
    case XED_ICLASS_PMULDQ:
    case XED_ICLASS_PMULHRSW:
    case XED_ICLASS_PMULHUW:
    case XED_ICLASS_PMULHW:
    case XED_ICLASS_PMULLD:

    case XED_ICLASS_DIVPS:
    case XED_ICLASS_DIVPD:

    case XED_ICLASS_ADDSUBPS:
    case XED_ICLASS_ADDSUBPD:

    case XED_ICLASS_MAXPD:
    case XED_ICLASS_MAXPS:
    case XED_ICLASS_MAXSD:
    case XED_ICLASS_MAXSS:
    case XED_ICLASS_PMAXSB:
    case XED_ICLASS_PMAXSW:
    case XED_ICLASS_PMAXSD:
    case XED_ICLASS_PMAXUB:
    case XED_ICLASS_PMAXUW:
    case XED_ICLASS_PMAXUD:

    case XED_ICLASS_MINPD:
    case XED_ICLASS_MINPS:
    case XED_ICLASS_MINSD:
    case XED_ICLASS_MINSS:
    case XED_ICLASS_PMINSB:
    case XED_ICLASS_PMINSW:
    case XED_ICLASS_PMINSD:
    case XED_ICLASS_PMINUB:
    case XED_ICLASS_PMINUW:
    case XED_ICLASS_PMINUD:

    case XED_ICLASS_PHMINPOSUW:

    case XED_ICLASS_PABSB:
    case XED_ICLASS_PABSW:
    case XED_ICLASS_PABSD:

    case XED_ICLASS_PAVGB:
    case XED_ICLASS_PAVGW:

    case XED_ICLASS_RSQRTPS:
    case XED_ICLASS_RSQRTSS:
    case XED_ICLASS_SQRTPD:
    case XED_ICLASS_SQRTPS:
    case XED_ICLASS_SQRTSS:

    case XED_ICLASS_PSIGNB:
    case XED_ICLASS_PSIGND:
    case XED_ICLASS_PSIGNW:

    case XED_ICLASS_PSLLQ:
    case XED_ICLASS_PSLLW:

    case XED_ICLASS_PSRAD:
    case XED_ICLASS_PSRAW:

    case XED_ICLASS_RCPPS:
    case XED_ICLASS_RCPSS:

    case XED_ICLASS_PTEST:

    case XED_ICLASS_EXTRACTPS:
    case XED_ICLASS_INSERTPS:

    case XED_ICLASS_UNPCKLPD:
    case XED_ICLASS_UNPCKLPS:
    case XED_ICLASS_UNPCKHPS:

    case XED_ICLASS_BLENDPD:
    case XED_ICLASS_BLENDPS:
    case XED_ICLASS_PBLENDW:
    case XED_ICLASS_BLENDVPD:
    case XED_ICLASS_BLENDVPS:
    case XED_ICLASS_PBLENDVB:

    case XED_ICLASS_PACKUSDW:
    case XED_ICLASS_PACKUSWB:

    case XED_ICLASS_PALIGNR:

    case XED_ICLASS_PINSRB:
    case XED_ICLASS_PINSRD:
    case XED_ICLASS_PINSRQ:
    case XED_ICLASS_PINSRW:

    case XED_ICLASS_PEXTRB:
    case XED_ICLASS_PEXTRD:
    case XED_ICLASS_PEXTRQ:
    case XED_ICLASS_PEXTRW_SSE4:

    case XED_ICLASS_DPPD:
    case XED_ICLASS_DPPS:

    case XED_ICLASS_PANDN:

    case XED_ICLASS_PMADDUBSW:
    case XED_ICLASS_PMADDWD:

    case XED_ICLASS_MPSADBW:

    case XED_ICLASS_MOVLHPS:

    case XED_ICLASS_PMOVSXBW:
    case XED_ICLASS_PMOVSXBD:
    case XED_ICLASS_PMOVSXWD:
    case XED_ICLASS_PMOVSXDQ:
    case XED_ICLASS_PMOVSXBQ:
    case XED_ICLASS_PMOVSXWQ:
    case XED_ICLASS_PMOVZXBW:
    case XED_ICLASS_PMOVZXBD:
    case XED_ICLASS_PMOVZXWD:
    case XED_ICLASS_PMOVZXBQ:
    case XED_ICLASS_PMOVZXDQ:
    case XED_ICLASS_PMOVZXWQ:

    case XED_ICLASS_PSADBW:
    case XED_ICLASS_PSHUFB:
        return std::make_unique<fpvec_translator>(builder);

    case XED_ICLASS_PSHUFD:
    case XED_ICLASS_SHUFPS:
    case XED_ICLASS_SHUFPD:
    case XED_ICLASS_PSHUFLW:
    case XED_ICLASS_PSHUFHW:
        return std::make_unique<shuffle_translator>(builder);

    case XED_ICLASS_XADD_LOCK:
    case XED_ICLASS_XCHG:
    case XED_ICLASS_CMPXCHG_LOCK:
    case XED_ICLASS_ADD_LOCK:
    case XED_ICLASS_AND_LOCK:
    case XED_ICLASS_OR_LOCK:
    case XED_ICLASS_INC_LOCK:
    case XED_ICLASS_DEC_LOCK:
        return std::make_unique<atomic_translator>(builder);

    case XED_ICLASS_XGETBV:
    case XED_ICLASS_STD:
    case XED_ICLASS_CLD:
    case XED_ICLASS_STC:
    case XED_ICLASS_CLC:
        return std::make_unique<control_translator>(builder);

    // 5.2.1 X87 FPU Data Transfer Instructions
    case XED_ICLASS_FLD:
    case XED_ICLASS_FST:
    case XED_ICLASS_FSTP:
    case XED_ICLASS_FILD:
    case XED_ICLASS_FIST:
    case XED_ICLASS_FISTP:
    // TODO: FPU: case XED_ICLASS_FBLD:
    // TODO: FPU: case XED_ICLASS_FBSTP:
    case XED_ICLASS_FXCH:
    // FCMOVcc: cmov_translator
    // 5.2.2 X87 FPU Basic Arithmetic Instructions
    case XED_ICLASS_FADD:
    case XED_ICLASS_FADDP:
    case XED_ICLASS_FIADD:
    case XED_ICLASS_FSUB:
    case XED_ICLASS_FSUBP:
    case XED_ICLASS_FISUB:
    case XED_ICLASS_FSUBR:
    case XED_ICLASS_FSUBRP:
    case XED_ICLASS_FISUBR:
    case XED_ICLASS_FMUL:
    case XED_ICLASS_FMULP:
    case XED_ICLASS_FIMUL:
    case XED_ICLASS_FDIV:
    case XED_ICLASS_FDIVP:
    case XED_ICLASS_FIDIV:
    case XED_ICLASS_FDIVR:
    case XED_ICLASS_FDIVRP:
    case XED_ICLASS_FIDIVR:
    case XED_ICLASS_FPREM:
    case XED_ICLASS_FPREM1:
    case XED_ICLASS_FABS:
    case XED_ICLASS_FCHS:
    case XED_ICLASS_FRNDINT:
    case XED_ICLASS_FSCALE:
    case XED_ICLASS_FSQRT:
    case XED_ICLASS_FXTRACT:
    // 5.2.3 X87 FPU Comparison Instructions
    case XED_ICLASS_FCOM:
    case XED_ICLASS_FCOMP:
    case XED_ICLASS_FCOMPP:
    case XED_ICLASS_FUCOM:
    case XED_ICLASS_FUCOMP:
    case XED_ICLASS_FUCOMPP:
    case XED_ICLASS_FICOM:
    case XED_ICLASS_FICOMP:
    case XED_ICLASS_FCOMI:
    case XED_ICLASS_FUCOMI:
    case XED_ICLASS_FCOMIP:
    case XED_ICLASS_FUCOMIP:
    case XED_ICLASS_FTST:
    case XED_ICLASS_FXAM:
    // 5.2.4 X87 FPU Transcendental Instructions
    case XED_ICLASS_FSIN:
    case XED_ICLASS_FCOS:
    case XED_ICLASS_FSINCOS:
    case XED_ICLASS_FPTAN:
    case XED_ICLASS_FPATAN:
    case XED_ICLASS_F2XM1:
    case XED_ICLASS_FYL2X:
    case XED_ICLASS_FYL2XP1:
    // 5.2.5 X87 FPU Load Constants Instructions
    case XED_ICLASS_FLD1:
    case XED_ICLASS_FLDZ:
    case XED_ICLASS_FLDPI:
    case XED_ICLASS_FLDL2E:
    case XED_ICLASS_FLDLN2:
    case XED_ICLASS_FLDL2T:
    case XED_ICLASS_FLDLG2:
    // 5.2.6 X87 FPU Control Instructions
    case XED_ICLASS_FINCSTP:
    case XED_ICLASS_FDECSTP:
    case XED_ICLASS_FFREE:
    // case XED_ICLASS_FINIT: // NA in XED
    case XED_ICLASS_FNINIT:
    // case XED_ICLASS_FCLEX: // NA in XED
    case XED_ICLASS_FNCLEX:
    // case XED_ICLASS_FSTCW:
    case XED_ICLASS_FNSTCW:
    case XED_ICLASS_FLDCW:
    // TODO: FPU: storing/loading FPU State
    // case XED_ICLASS_FSTENV: // NA in XED
    // case XED_ICLASS_FNSTENV:
    // case XED_ICLASS_FLDENV:
    // // case XED_ICLASS_FSAVE: // NA in XED
    // case XED_ICLASS_FNSAVE:
    // case XED_ICLASS_FRSTOR:
    // case XED_ICLASS_FSTSW: // NA in XED
    case XED_ICLASS_FNSTSW:
    // case XED_ICLASS_WAIT: // NA in XED
    case XED_ICLASS_FWAIT:
    case XED_ICLASS_FNOP:
        return std::make_unique<fpu_translator>(builder);

    case XED_ICLASS_HLT:
    case XED_ICLASS_INT:
    case XED_ICLASS_INT3:
    case XED_ICLASS_SYSCALL:
    case XED_ICLASS_UD0:
    case XED_ICLASS_UD1:
    case XED_ICLASS_UD2:
        return std::make_unique<interrupt_translator>(builder);

    default:
        return std::make_unique<unimplemented_translator>(builder);
    }
}

static translation_result
translate_instruction(ir_builder &builder, size_t address,
                      xed_decoded_inst_t *xedd, bool debug,
                      disassembly_syntax da, std::string &disasm) {
    if (debug) {
        char buffer[64];
        xed_format_context(
            da == disassembly_syntax::intel ? XED_SYNTAX_INTEL : XED_SYNTAX_ATT,
            xedd, buffer, sizeof(buffer) - 1, address, nullptr, 0);
        disasm = std::string(buffer);
    }

    auto t = get_translator(builder, xed_decoded_inst_get_iclass(xedd));

    if (t) {
        return t->translate(address, xedd, disasm);
    } else {
        util::global_logger.error("Could not find a translator for {}\n",
                                  disasm);
        return translation_result::fail;
    }
}

/*
This is the starting point for the translation of the input architecture.
For each instruction in the input machine code, it uses a factory pattern
to get a translator specific for that category of instruction, which
is then used to translate the instruction to the Arancini IR.
Each instruction is translated into a packet, which is then added to
the output chunk.

The translator factory is implemented by the get_translator function.
All the x86 translators implementations can be found in the
src/input/x86/translators/ folder.
*/
void x86_input_arch::translate_chunk(ir_builder &builder, off_t base_address,
                                     const void *code, size_t code_size,
                                     bool basic_block,
                                     const std::string &name) {
    builder.begin_chunk(name);

    initialise_xed();

    const uint8_t *mc = (const uint8_t *)code;

    static uint nr_chunk = 1;

    util::global_logger.info("chunk [{}] @ {:#x} code={} size={}\n", nr_chunk,
                             base_address, fmt::ptr(code), code_size);

    nr_chunk++;

    size_t offset = 0;
    std::string disasm;

    translation_result r;

    while (offset < code_size) {
        xed_decoded_inst_t xedd;
        xed_decoded_inst_zero(&xedd);
        xed_decoded_inst_set_mode(&xedd, XED_MACHINE_MODE_LONG_64,
                                  XED_ADDRESS_WIDTH_64b);
        xed_decoded_inst_set_input_chip(&xedd, XED_CHIP_ALL);

        xed_error_enum_t xed_error =
            xed_decode(&xedd, &mc[offset], code_size - offset);
        if (xed_error != XED_ERROR_NONE) {
            throw std::runtime_error(
                fmt::format("unable to decode instruction: {} instruction: {}",
                            std::to_string(xed_error), base_address + offset));
        }

        xed_uint_t length = xed_decoded_inst_get_length(&xedd);

        r = translate_instruction(builder, base_address, &xedd, debug(), da_,
                                  disasm);

        if (r == translation_result::fail) {
            throw std::runtime_error("instruction translation failure: " +
                                     std::to_string(xed_error));
        } else if (r == translation_result::end_of_block && basic_block) {
            // Print backwards branch addr (if exists)
            // Useful for debug infrastructure
            auto pos = disasm.find("0x");
            if (pos != disasm.npos) {
                auto addr_str = disasm.substr(pos);
                off_t addr = std::strtol(addr_str.c_str(), nullptr, 16);

                if (addr > base_address &&
                    addr < base_address + offset + length)
                    util::global_logger.info("Backwards branch @ {}\n",
                                             addr_str);
            }
            break;
        }

        offset += length;
        base_address += length;
    }

    if (r == translation_result::normal) {
        // End of translation but no set of PC
        builder.begin_packet(0);
        builder.insert_write_pc(
            builder.insert_constant_u64(base_address)->val(), br_type::br);
        builder.end_packet();
    }

    builder.end_chunk();
}

void x86_input_arch::gen_wrapper(ir_builder &builder,
                                 const native_lib::nlib_function &func) {

    builder.begin_chunk("__arancini__" + func.fname + "_wrapper");
    builder.begin_packet(0);

    std::vector<value_type> params = func.sig.parameter_types();

    const std::array<reg_offsets, 6> gpr_arg_regoff{
        reg_offsets::RDI, reg_offsets::RSI, reg_offsets::RDX,
        reg_offsets::RCX, reg_offsets::R8,  reg_offsets::R9};
    const std::array<reg_idx, 6> gpr_arg_regidx{reg_idx::RDI, reg_idx::RSI,
                                                reg_idx::RCX, reg_idx::RDX,
                                                reg_idx::R8,  reg_idx::R9};
    const std::array<const char *, 6> gpr_arg_regname{"RDI", "RSI", "RCX",
                                                      "RDX", "R8",  "R9"};

    int gri = 0;

    std::vector<port *> args;
    args.reserve(params.size());

    for (const auto &item : params) {
        switch (item.type_class()) {
        case value_type_class::none:
            break;
        case value_type_class::signed_integer:
        case value_type_class::unsigned_integer:
            if (gri >= 6) {
                throw std::runtime_error(
                    "Stack args unsupported in native lib wrapper.");
            } else {
                args.push_back(
                    &builder
                         .insert_read_reg(item,
                                          (unsigned long)gpr_arg_regoff[gri],
                                          (unsigned long)gpr_arg_regidx[gri],
                                          gpr_arg_regname[gri])
                         ->val());
                gri++;
            }
            break;
        case value_type_class::floating_point:
            throw std::runtime_error(
                "Float args unsupported in native lib wrapper.");
        }
    }

    action_node *call = builder.insert_internal_call(
        std::make_unique<internal_function>(func.fname, func.sig), args);

    const value_type &retty = func.sig.return_type();
    switch (retty.type_class()) {
    case value_type_class::none:
        break;
    case value_type_class::signed_integer:
    case value_type_class::unsigned_integer:
        if (retty.element_width() <= 64) {
            builder.insert_write_reg(
                static_cast<unsigned long>(reg_offsets::RAX),
                static_cast<unsigned long>(reg_idx::RAX), "RAX", call->val());
        } else {
            throw std::runtime_error(
                "Return types > 64bit unsupported in native lib wrapper.");
        }
        break;
    case value_type_class::floating_point:
        throw std::runtime_error(
            "Float return types unsupported in native lib wrapper.");
    }
    builder.end_packet();

    // Simulate return
    builder.begin_packet(1);

    // FIXME Copy pasted from ret translation

    auto rsp = builder.insert_read_reg(
        value_type::u64(), static_cast<unsigned long>(reg_offsets::RSP),
        static_cast<unsigned long>(reg_idx::RSP), "RSP");
    auto retaddr = builder.insert_read_mem(value_type::u64(), rsp->val());

    auto new_rsp =
        builder.insert_add(rsp->val(), builder.insert_constant_u64(8)->val());
    builder.insert_write_reg(static_cast<unsigned long>(reg_offsets::RSP),
                             static_cast<unsigned long>(reg_idx::RSP), "RSP",
                             new_rsp->val());

    builder.insert_write_pc(retaddr->val(), br_type::ret);

    builder.end_packet();

    builder.end_chunk();
}
