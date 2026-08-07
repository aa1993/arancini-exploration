#include <arancini/input/x86/translators/translators.h>
#include <arancini/ir/ir-builder.h>
#include <arancini/ir/node.h>

using namespace arancini::ir;
using namespace arancini::input::x86::translators;

void fpvec_translator::do_translate() {
    // Right now we're missing the kmovw instruction anyways, but just in case
    if (xed_decoded_inst_masked_vector_operation(xed_inst()))
        throw std::runtime_error("Masked instructions not supported");

    // TODO: do not read dst if we overwrite everything
    auto dest = read_operand(0);
    auto src1 = read_operand(1);
    auto src2 = read_operand(2);
    int imm;
    switch (xed_decoded_inst_get_iclass(xed_inst())) {
    case XED_ICLASS_SUBPD:
    case XED_ICLASS_ADDPD:
    case XED_ICLASS_ADDSD:
    case XED_ICLASS_SUBSD:
    case XED_ICLASS_DIVSD:
    case XED_ICLASS_MULSD:
    case XED_ICLASS_ADDSS:
    case XED_ICLASS_SUBSS:
    case XED_ICLASS_DIVSS:
    case XED_ICLASS_MULSS:

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

    case XED_ICLASS_PANDN:
    case XED_ICLASS_PMADDUBSW:
    case XED_ICLASS_PMADDWD:

    case XED_ICLASS_PSLLQ:
    case XED_ICLASS_PSLLW:

    case XED_ICLASS_PSRAD:
    case XED_ICLASS_PSRAW:

    case XED_ICLASS_RCPPS:
    case XED_ICLASS_RCPSS:

    case XED_ICLASS_UNPCKHPS:
    case XED_ICLASS_UNPCKLPD:
    case XED_ICLASS_UNPCKLPS:

    case XED_ICLASS_BLENDVPD:
    case XED_ICLASS_BLENDVPS:
    case XED_ICLASS_PBLENDVB:

    case XED_ICLASS_PACKUSDW:
    case XED_ICLASS_PACKUSWB:

    case XED_ICLASS_MOVLHPS:
    {
        // we don't have 3 operands
        src2 = src1;
        src1 = dest;
    } break;
    //case XED_ICLASS_PINSRB:
    //case XED_ICLASS_PINSRD:
    //case XED_ICLASS_PINSRQ:
    //case XED_ICLASS_PINSRW:

    //case XED_ICLASS_DPPD:
    //case XED_ICLASS_DPPS:

    //case XED_ICLASS_MPSADBW:

    //case XED_ICLASS_EXTRACTPS:
    //case XED_ICLASS_INSERTPS:

    //case XED_ICLASS_BLENDPD:
    //case XED_ICLASS_BLENDPS:
    //case XED_ICLASS_PBLENDW:

    }

    // xmm1.f32[4], xmm2.f32[4]
    switch (xed_decoded_inst_get_iclass(xed_inst())) {
    case XED_ICLASS_XORPS:
    case XED_ICLASS_HADDPS:
    case XED_ICLASS_UNPCKLPS:
    case XED_ICLASS_MOVLHPS:
    case XED_ICLASS_SUBPS:
    case XED_ICLASS_HSUBPS:
    case XED_ICLASS_MULPS:
    case XED_ICLASS_DIVPS:
    case XED_ICLASS_MAXPS:
    case XED_ICLASS_MINPS:
    case XED_ICLASS_ADDSUBPS:
    case XED_ICLASS_RSQRTPS:
    case XED_ICLASS_SQRTPS:
    case XED_ICLASS_RCPPS:
    case XED_ICLASS_UNPCKHPS:
    case XED_ICLASS_BLENDVPS:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), src2->val());
    } break;
    // xmm1.f64[2], xmm2.f64[2]
    case XED_ICLASS_SUBPD:
    case XED_ICLASS_ADDPD:
    case XED_ICLASS_XORPD:
    case XED_ICLASS_HADDPD:
    case XED_ICLASS_HSUBPD:
    case XED_ICLASS_MULPD:
    case XED_ICLASS_DIVPD:
    case XED_ICLASS_MAXPD:
    case XED_ICLASS_MINPD:
    case XED_ICLASS_ADDSUBPD:
    case XED_ICLASS_SQRTPD:
    case XED_ICLASS_UNPCKLPD:
    case XED_ICLASS_BLENDVPD:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), src2->val());
    } break;
    // xmm1.f32[4], xmm2.f32[4]/m32.f32
    case XED_ICLASS_ADDSS:
    case XED_ICLASS_SUBSS:
    case XED_ICLASS_DIVSS:
    case XED_ICLASS_MULSS:
    case XED_ICLASS_VADDSS:
    case XED_ICLASS_VSUBSS:
    case XED_ICLASS_VDIVSS:
    case XED_ICLASS_VMULSS:
    case XED_ICLASS_MAXSS:
    case XED_ICLASS_MINSS:
    case XED_ICLASS_RSQRTSS:
    case XED_ICLASS_SQRTSS:
    case XED_ICLASS_RCPSS:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), src1->val());
        src1 = builder().insert_vector_extract(src1->val(), 0);
        if (src2->val().type().width() == 128) {
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::f32(), 4), src2->val());
            src2 = builder().insert_vector_extract(src2->val(), 0);
        } else
            src2 = builder().insert_bitcast(value_type::f32(), src2->val());
        break;
    }
    // xmm1.f64[2], xmm2.f64[2]/m64.f64
    case XED_ICLASS_ADDSD:
    case XED_ICLASS_SUBSD:
    case XED_ICLASS_DIVSD:
    case XED_ICLASS_MULSD:
    case XED_ICLASS_VADDSD:
    case XED_ICLASS_VSUBSD:
    case XED_ICLASS_VDIVSD:
    case XED_ICLASS_VMULSD:
    case XED_ICLASS_MAXSD:
    case XED_ICLASS_MINSD:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), src1->val());
        src1 = builder().insert_vector_extract(src1->val(), 0);
        if (src2->val().type().width() == 128) {
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::f64(), 2), src2->val());
            src2 = builder().insert_vector_extract(src2->val(), 0);
        } else
            src2 = builder().insert_bitcast(value_type::f64(), src2->val());
        break;
    }
    // xmm1.s8[16]/mm1.s8[8], (xmm2 | m128).s8[16]/(mm2 | m64).s8[8]
    case XED_ICLASS_PADDSB:
    case XED_ICLASS_PSUBSB:
    case XED_ICLASS_PABSB:
    case XED_ICLASS_PMAXSB:
    case XED_ICLASS_PMINSB:
    case XED_ICLASS_PSIGNB:
    case XED_ICLASS_PBLENDVB:
    {
        if (dest->val().type().width() == 128){
        dest = builder().insert_bitcast(
            value_type::vector(value_type::s8(), 16), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::s8(), 16), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::s8(), 16), src2->val());
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::s8(), 8), dest->val());
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::s8(), 8), src1->val());
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::s8(), 8), src2->val());
        }
        break;
    }
    // xmm1.s16[8]/mm1.s16[4], (xmm2 | m128).s16[8]/(mm2 | m64).s16[4]
    case XED_ICLASS_PHADDW:
    case XED_ICLASS_PADDSW:
    case XED_ICLASS_PHADDSW:
    case XED_ICLASS_PHSUBW:
    case XED_ICLASS_PSUBSW:
    case XED_ICLASS_PHSUBSW:
    case XED_ICLASS_PABSW:
    case XED_ICLASS_PMULHRSW:
    case XED_ICLASS_PMULHW:
    case XED_ICLASS_PMAXSW:
    case XED_ICLASS_PMINSW:
    case XED_ICLASS_PSIGNW:
    case XED_ICLASS_PACKUSWB:
    {
        if (dest->val().type().width() == 128){
        dest = builder().insert_bitcast(
            value_type::vector(value_type::s16(), 8), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::s16(), 8), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::s16(), 8), src2->val());
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::s16(), 4), dest->val());
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::s16(), 4), src1->val());
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::s16(), 4), src2->val());
        }
        break;
    }
    // xmm1.s32[4]/mm1.s32[2], (xmm2 | m128).s32[4]/(mm2 | m64).s32[2]
    case XED_ICLASS_PHADDD:
    case XED_ICLASS_PHSUBD:
    case XED_ICLASS_PABSD:
    case XED_ICLASS_PMULDQ:
    case XED_ICLASS_PMULLD:
    case XED_ICLASS_PMAXSD:
    case XED_ICLASS_PMINSD:
    case XED_ICLASS_PSIGND:
    case XED_ICLASS_PACKUSDW:
    {
        if (dest->val().type().width() == 128){
        dest = builder().insert_bitcast(
            value_type::vector(value_type::s32(), 4), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::s32(), 4), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::s32(), 4), src2->val());
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::s32(), 2), dest->val());
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::s32(), 2), src1->val());
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::s32(), 2), src2->val());
        }
        break;
    }
    // xmm1.u8[16]/mm1.u8[8], (xmm2 | m128).u8[16]/(mm2 | m64).u8[8]
    case XED_ICLASS_PADDUSB:
    case XED_ICLASS_PSUBUSB:
    case XED_ICLASS_PAVGB:
    case XED_ICLASS_PMAXUB:
    case XED_ICLASS_PMINUB:
    {
        if (dest->val().type().width() == 128){
        dest = builder().insert_bitcast(
            value_type::vector(value_type::u8(), 16), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::u8(), 16), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::u8(), 16), src2->val());
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::u8(), 8), dest->val());
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::u8(), 8), src1->val());
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::u8(), 8), src2->val());
        }
        break;
    }
    // xmm1.u16[8]/mm1.u16[4], (xmm2 | m128).u16[8]/(mm2 | m64).u16[4]
    case XED_ICLASS_PADDUSW:
    case XED_ICLASS_PSUBUSW:
    case XED_ICLASS_PAVGW:
    case XED_ICLASS_PMULHUW:
    case XED_ICLASS_PMAXUW:
    case XED_ICLASS_PMINUW:
    case XED_ICLASS_PHMINPOSUW:
    {
        if (dest->val().type().width() == 128){
        dest = builder().insert_bitcast(
            value_type::vector(value_type::u16(), 8), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::u16(), 8), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::u16(), 8), src2->val());
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::u16(), 4), dest->val());
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::u16(), 4), src1->val());
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::u16(), 4), src2->val());
        }
        break;
    }
    // xmm1.u32[4]/mm1.u32[2], (xmm2 | m128).u32[4]/(mm2 | m64).u32[2]
    case XED_ICLASS_PMAXUD:
    case XED_ICLASS_PMINUD:
    {
        if (dest->val().type().width() == 128){
        dest = builder().insert_bitcast(
            value_type::vector(value_type::u32(), 4), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::u32(), 4), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::u32(), 4), src2->val());
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::u32(), 2), dest->val());
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::u32(), 2), src1->val());
            src2 = builder().insert_bitcast(
                value_type::vector(value_type::u32(), 2), src2->val());
        }
        break;
    }
    // xmm1.f32[4],(xmm2/ m128).f32[4], imm8
    case XED_ICLASS_DPPS:
    case XED_ICLASS_BLENDPS:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), src1->val());
        imm = ((constant_node*)src2)->const_val_i();
        break;
    }
    // xmm1.f64[2],(xmm2/ m128).f64[2], imm8
    case XED_ICLASS_DPPD:
    case XED_ICLASS_BLENDPD:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), src1->val());
        imm = ((constant_node*)src2)->const_val_i();
        break;
    }
    // xmm1.s16[8],(xmm2/ m128).s16[8], imm8
    case XED_ICLASS_PBLENDW:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::s16(), 8), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::s16(), 8), src1->val());
        imm = ((constant_node*)src2)->const_val_i();
        break;
    }
    // xmm1.f32[4], xmm2.f32[4]/m32.f32, imm8
    case XED_ICLASS_INSERTPS:
    {
        dest = builder().insert_bitcast(
                value_type::vector(value_type::f32(), 4), dest->val());
        if(src1->val().type().width() == 32){
            src1 = builder().insert_bitcast(value_type::f32(), src1->val());
        } else {
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::f32(), 4), src1->val());
        }
        imm = ((constant_node*)src2)->const_val_i();
        break;
    }
    // xmm1.s8[16], (r32/m8).s8, imm8
    case XED_ICLASS_PINSRB:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::s8(), 16), dest->val());
        if(src1->val().type().width() == 32){
            src1 = builder().insert_bitcast(value_type::s32(), src1->val());
            src1 = builder().insert_trunc(value_type::s8(), src1->val());
        }else{
            src1 = builder().insert_bitcast(value_type::s8(), src1->val());
        }
        imm = ((constant_node*)src2)->const_val_i() & 1111;
        break;
    }
    // xmm1.s16[8]/mm1.s16[4], (r32/m16).s16, imm8
    case XED_ICLASS_PINSRW:
    {
        if (dest->val().type().width() == 128){
            dest = builder().insert_bitcast(
                value_type::vector(value_type::s16(), 8), dest->val());
            imm = ((constant_node*)src2)->const_val_i() & 111;
        }else{
            dest = builder().insert_bitcast(
                value_type::vector(value_type::s16(), 4), dest->val());
            imm = ((constant_node*)src2)->const_val_i() & 11;
        }
        if (src1->val().type().width() == 32){
            src1 = builder().insert_bitcast(value_type::s32(), src1->val());
            src1 = builder().insert_trunc(value_type::s16(), src1->val());
        } else {
            src1 = builder().insert_bitcast(value_type::s16(), src1->val());
        }
        break;
    }
    // xmm1.s32[4], (r/m)32.s32, imm8
    case XED_ICLASS_PINSRD:
    {
        dest = builder().insert_bitcast(
                value_type::vector(value_type::s32(), 4), dest->val());
        src1 = builder().insert_bitcast(
                value_type::s32(), src1->val());
        imm = ((constant_node*)src2)->const_val_i() & 11;
        break;
    }
    // xmm1.s64[2], (r/m)64.s64, imm8
    case XED_ICLASS_PINSRQ:
    {
        dest = builder().insert_bitcast(
                value_type::vector(value_type::s64(), 2), dest->val());
        src1 = builder().insert_bitcast(
                value_type::s64(), src1->val());
        imm = ((constant_node*)src2)->const_val_i() & 1;
        break;
    }
    // (m/r)32.f32 , xmm1.f32[4], imm8
    case XED_ICLASS_EXTRACTPS:
    {
        dest = builder().insert_bitcast(
                value_type::f32(), dest->val());
        src1 = builder().insert_bitcast(
                value_type::vector(value_type::f32(), 4), src1->val());
        imm = ((constant_node*)src2)->const_val_i();
        break;
    }
    // xmm1.u8[16], xmm2.u8[16], imm8
    case XED_ICLASS_MPSADBW:
    {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::u8(), 16), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::u8(), 16), src1->val());
        imm = ((constant_node*)src2)->const_val_i();
        break;
    }
    case XED_ICLASS_PSLLW:
    case XED_ICLASS_PSRAW:
    {
        if (dest->val().type().width() == 128){
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 8), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 8), src1->val());
        } else {
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 4), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 4), src1->val());
        }
        src2 = builder().insert_trunc(value_type::u8(), src2->val());
        break;
    }
    case XED_ICLASS_PSRAD:
    {
        if (dest->val().type().width() == 128){
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s32(), 4), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s32(), 4), src1->val());
        } else {
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s32(), 2), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s32(), 2), src1->val());
        }
        src2 = builder().insert_trunc(value_type::u8(), src2->val());
        break;
    }
    case XED_ICLASS_PSLLQ:
    {
        if (dest->val().type().width() == 128){
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s64(), 2), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s64(), 2), src1->val());
        } else {
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s64(), 1), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s64(), 1), src1->val());
        }
        src2 = builder().insert_trunc(value_type::u8(), src2->val());
        break;
    }
    // xmm1.u128/mm1.u64, (xmm1 | m).u128/(mm | m).u64
    case XED_ICLASS_PANDN:
    {
        break;
    }
    case XED_ICLASS_PMADDUBSW:
    {
        if (dest->val().type().width() == 128){
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 8), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::u8(), 16), src1->val());
            src2 = builder().insert_bitcast(
                    value_type::vector(value_type::s8(), 16), src2->val());
        } else {
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 4), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::u8(), 8), src1->val());
            src2 = builder().insert_bitcast(
                    value_type::vector(value_type::s8(), 8), src2->val());
        }
        break;
    }
    case XED_ICLASS_PMADDWD:
    {
        if (dest->val().type().width() == 128){
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s32(), 4), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 8), src1->val());
            src2 = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 8), src2->val());
        } else {
            dest = builder().insert_bitcast(
                    value_type::vector(value_type::s32(), 2), dest->val());
            src1 = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 4), src1->val());
            src2 = builder().insert_bitcast(
                    value_type::vector(value_type::s16(), 4), src2->val());
        }
        break;
    }

    case XED_ICLASS_CVTSD2SS:
    case XED_ICLASS_CVTSD2SI:
    case XED_ICLASS_CVTTSD2SI: {
        if (src1->val().type().element_width() == 128) {
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::f64(), 2), src1->val());
            src1 = builder().insert_vector_extract(src1->val(), 0);
        } else {
            src1 = builder().insert_bitcast(value_type::f64(), src1->val());
        }
        break;
    }
    case XED_ICLASS_CVTSI2SS: {
        src1 = builder().insert_convert(value_type::f32(), src1->val(),
                                        fp_convert_type::round);
        dest = builder().insert_bit_insert(dest->val(), src1->val(), 0, 32);
        write_operand(0, dest->val());
        return;
    }

    case XED_ICLASS_CVTSI2SD: {
        src1 = builder().insert_convert(value_type::f64(), src1->val(),
                                        fp_convert_type::round);
        dest = builder().insert_bit_insert(dest->val(), src1->val(), 0, 64);
        write_operand(0, dest->val());
        return;
    }
    case XED_ICLASS_CVTSS2SD:
    case XED_ICLASS_CVTSS2SI:
    case XED_ICLASS_CVTTSS2SI: {
        if (src1->val().type().element_width() == 128) {
            src1 = builder().insert_bitcast(
                value_type::vector(value_type::f32(), 4), src1->val());
            src1 = builder().insert_vector_extract(src1->val(), 0);
        } else {
            src1 = builder().insert_bitcast(value_type::f32(), src1->val());
        }
        break;
    }

    default:
        throw std::runtime_error("Unknown fpvec instruction");
    }

    switch (xed_decoded_inst_get_iclass(xed_inst())) {
    case XED_ICLASS_XORPD:
    case XED_ICLASS_XORPS: {
        auto res = builder().insert_xor(src1->val(), src2->val());
        write_operand(0, res->val());
    } break;
    case XED_ICLASS_ADDPD: {
        auto res = builder().insert_add(src1->val(), src2->val());
        write_operand(0, res->val());
    } break;
    case XED_ICLASS_ADDSS:
    case XED_ICLASS_ADDSD:
    case XED_ICLASS_VADDSS:
    case XED_ICLASS_VADDSD:
    {

        auto res = builder().insert_add(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_HADDPS:
    case XED_ICLASS_PHADDD:
    case XED_ICLASS_HADDPD:
    case XED_ICLASS_PHADDW:
    {
        size_t vector_len = src1->val().type().nr_elements();
        size_t vector_len_half = vector_len/2;
        for(int i = 0; i < vector_len; i++){
            if(i<vector_len_half){
                value_node* addend1 = builder().insert_vector_extract(src1->val(), i*2+1);
                value_node* addend2 = builder().insert_vector_extract(src1->val(), i*2);
                value_node* sum = builder().insert_add(addend1->val(), addend2->val());
                dest = builder().insert_vector_insert(dest->val(), i, sum->val());
            } else {
                value_node* addend1 = builder().insert_vector_extract(src2->val(), (i-vector_len_half)*2+1);
                value_node* addend2 = builder().insert_vector_extract(src2->val(), (i-vector_len_half)*2);
                value_node* sum = builder().insert_add(addend1->val(), addend2->val());
                dest = builder().insert_vector_insert(dest->val(), i, sum->val());
            }
        }
        write_operand(0, dest->val());
        break;
    }
    // add with signed/unsigned saturation
    case XED_ICLASS_PADDUSB:
    case XED_ICLASS_PADDUSW:
    case XED_ICLASS_PADDSB:
    case XED_ICLASS_PADDSW:{
//        for( int i = 0; i < 8 ; i++){
//            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
//            value_node* element2 = builder().insert_vector_extract(src2->val(), i);
////            binary_arith_node* cond = (binary_arith_node*)builder().insert_sub(element1->val(), element2->val());
////            value_node* zero = builder().insert_constant_s16(0);
////            auto res = builder().insert_sub(zero->val(), cond->negative());
////            res = builder().insert_bitcast(element1->val().type(), res->val());
//            auto res = bitmask_gt(element1, element2);
//            dest = builder().insert_vector_insert(dest->val(), i, res->val());
//        }
////        auto res = builder().insert_cmpgt(src1->val(), src2->val());
////        res = builder().insert_zx(value_type, res->val());
//        write_operand(0, dest->val());
        size_t vector_len = src1->val().type().nr_elements();
        size_t elem_width = src1->val().type().element_width();
        value_node* max_value;
        value_node* min_value;
        value_type single_type = value_type(src1->val().type().type_class(), elem_width);
        value_type double_type = value_type(src1->val().type().type_class(), elem_width*2);
//        if(src1->val().type().type_class() == value_type_class::unsigned_integer){
//            switch(elem_width){
//                case 8:{
//                    max_value = builder().insert_constant_u16(0b11111111);
//                    min_value = builder().insert_constant_u16(0b00000000);
//                    break;
//                }
//                case 16:{
//                    max_value = builder().insert_constant_u32(0b1111111111111111);
//                    min_value = builder().insert_constant_u32(0b0000000000000000);
//                    break;
//                }
//            }
//        } else {
//            switch(elem_width){
//                case 8:{
//                    max_value = builder().insert_constant_s8(0b01111111);
//                    min_value = builder().insert_constant_s8(0b10000000);
//                    max_value = builder().insert_sx(value_type::s16(), max_value->val());
//                    min_value = builder().insert_sx(value_type::s16(), min_value->val());
//                    break;
//                }
//                case 16:{
//                    max_value = builder().insert_constant_s16(0b0111111111111111);
//                    min_value = builder().insert_constant_s16(0b1000000000000000);
//                    max_value = builder().insert_sx(value_type::s32(), max_value->val());
//                    min_value = builder().insert_sx(value_type::s32(), min_value->val());
//                    break;
//                }
//            }
//        }
//        const local_var* res = builder().alloc_local(single_type);
//        write_local_node* res_node;
        for(int i=0; i < vector_len; i++){
            auto addend1 = builder().insert_vector_extract(src1->val(), i);
            auto addend2 = builder().insert_vector_extract(src2->val(), i);

            if(single_type.type_class() == value_type_class::unsigned_integer){
                addend1 = builder().insert_zx(double_type, addend1->val());
                addend2 = builder().insert_zx(double_type, addend2->val());
            } else {
                addend1 = builder().insert_sx(double_type, addend1->val());
                addend2 = builder().insert_sx(double_type, addend2->val());
            }

            addend1 = builder().insert_add(addend1->val(), addend2->val());

            // Saturation
//            value_node* lt_max = builder().insert_cmpgt(max_value->val(), addend1->val()); // max > x
//            cond_br_node* lt_br = (cond_br_node*)builder().insert_cond_br(lt_max->val(), nullptr); //max > x -> else
//            res_node = (write_local_node*)builder().insert_write_local(res, builder().insert_trunc(single_type, max_value->val())->val());
//            //addend1 = builder().insert_trunc(max_value->val().type(), max_value->val());
//            br_node* end1_br = (br_node*)builder().insert_br(nullptr); // -> end1
//            label_node* else_label = builder().insert_label("else");
//            lt_br->add_br_target(else_label);
//            value_node* gt_min = builder().insert_cmpgt(addend1->val(), min_value->val()); // x > min
//            cond_br_node* gt_br = (cond_br_node*)builder().insert_cond_br(gt_min->val(),nullptr); // x > min -> right
//            res_node = (write_local_node*)builder().insert_write_local(res, builder().insert_trunc(single_type, min_value->val())->val());
//            //addend1 = builder().insert_trunc(min_value->val().type(), min_value->val());
//            br_node* end2_br = (br_node*)builder().insert_br(nullptr);
//            label_node* right_label = builder().insert_label("right");
//            gt_br->add_br_target(right_label);
//            res_node = (write_local_node*)builder().insert_write_local(res, builder().insert_trunc(single_type, addend1->val())->val());
//            label_node* end_label_1 = builder().insert_label("end1");
//            label_node* end_label_2 = builder().insert_label("end2");
//            end1_br->add_br_target(end_label_1);
//            end2_br->add_br_target(end_label_2);
//
//            //dest = builder().insert_vector_insert(dest->val(), i, builder().insert_read_local(res_node->local())->val());
//            dest = builder().insert_vector_insert(dest->val(), i, res_node->write_value());
//            //addend1 = builder().insert_trunc(single_type, addend1->val());
//
//            //dest = builder().insert_vector_insert(dest->val(), i, addend1->val());
            addend1 = saturate(single_type, addend1);
            dest = builder().insert_vector_insert(dest->val(), i, addend1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // add horizontal with signed saturation
    case XED_ICLASS_PHADDSW: {
        size_t vector_len = 8;
        size_t elem_width = 16;
        value_type single_type = value_type(value_type_class::signed_integer, elem_width);
        value_type double_type = value_type(value_type_class::signed_integer, elem_width *2);
        for(int i=0; i < vector_len; i++){
            value_node* addend1;
            value_node* addend2;
            if(i<vector_len/2){
                addend1 = builder().insert_vector_extract(src1->val(), i*2);
                addend2 = builder().insert_vector_extract(src1->val(), i*2 +1);
            } else {
                addend1 = builder().insert_vector_extract(src2->val(), (i-(vector_len/2))*2);
                addend2 = builder().insert_vector_extract(src2->val(), (i-(vector_len/2))*2 +1);
            }

            addend1 = builder().insert_sx(double_type, addend1->val());
            addend2 = builder().insert_sx(double_type, addend2->val());

            addend1 = builder().insert_add(addend1->val(), addend2->val());

//            // Saturation
//            value_node* lt_max = builder().insert_cmpgt(max_value->val(), addend1->val());
//            cond_br_node* lt_br = (cond_br_node*)builder().insert_cond_br(lt_max->val(), nullptr);
//            addend1 = max_value;
//            br_node* end1 = (br_node*)builder().insert_br(nullptr);
//            label_node* else_label = builder().insert_label("else");
//            lt_br->add_br_target(else_label);
//            value_node* gt_min = builder().insert_cmpgt(addend1->val(), min_value->val());
//            cond_br_node* gt_br = (cond_br_node*)builder().insert_cond_br(gt_min->val(),nullptr);
//            addend1 = min_value;
//            label_node* end_1_label = builder().insert_label("end1");
//            label_node* end_2_label = builder().insert_label("end2");
//            end1->add_br_target(end_1_label);
//            gt_br->add_br_target(end_2_label);
//
//            addend1 = builder().insert_trunc(single_type, addend1->val());

            addend1 = saturate(single_type, addend1);
            dest = builder().insert_vector_insert(dest->val(), i, addend1->val());
        }
        write_operand(0, dest->val());
        break;
    }

    case XED_ICLASS_SUBPS:
    case XED_ICLASS_SUBPD: {
        auto res = builder().insert_sub(src1->val(), src2->val());
        write_operand(0, res->val());
    } break;
    case XED_ICLASS_SUBSS:
    case XED_ICLASS_SUBSD:
    case XED_ICLASS_VSUBSS:
    case XED_ICLASS_VSUBSD: {

        auto res = builder().insert_sub(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    // Horizontal Sub
    case XED_ICLASS_HSUBPS:
    case XED_ICLASS_HSUBPD:
    case XED_ICLASS_PHSUBD:
    case XED_ICLASS_PHSUBW:{
        size_t vector_len = src1->val().type().nr_elements();
        size_t vector_len_half = vector_len/2;
        for(int i = 0; i < vector_len; i++){
            if(i<vector_len_half){
                value_node* minuend = builder().insert_vector_extract(src1->val(), i*2);
                value_node* subtrahend = builder().insert_vector_extract(src1->val(), i*2+1);
                value_node* difference = builder().insert_sub(minuend->val(), subtrahend->val());
                dest = builder().insert_vector_insert(dest->val(), i, difference->val());
            } else {
                value_node* minuend = builder().insert_vector_extract(src2->val(), (i-vector_len_half)*2);
                value_node* subtrahend = builder().insert_vector_extract(src2->val(), (i-vector_len_half)*2+1);
                value_node* difference = builder().insert_sub(minuend->val(), subtrahend->val());
                dest = builder().insert_vector_insert(dest->val(), i, difference->val());
            }
        }
        write_operand(0, dest->val());
        break;
    }
    // sub with signed/unsigned saturation
    case XED_ICLASS_PSUBUSB:
    case XED_ICLASS_PSUBUSW:
    case XED_ICLASS_PSUBSB:
    case XED_ICLASS_PSUBSW:{
        size_t vector_len = src1->val().type().nr_elements();
        size_t width = src1->val().type().element_width();
        value_type single_type = value_type(src1->val().type().type_class(), width);
        value_type double_type = value_type(value_type_class::signed_integer, width *2);
        for(int i=0; i < vector_len; i++){
            value_node* minuend = builder().insert_vector_extract(src1->val(), i);
            value_node* subtrahend = builder().insert_vector_extract(src2->val(), i);

            if(single_type.type_class() == value_type_class::unsigned_integer){
                minuend = builder().insert_zx(double_type, minuend->val());
                subtrahend = builder().insert_zx(double_type, subtrahend->val());
            } else {
                minuend = builder().insert_sx(double_type, minuend->val());
                subtrahend = builder().insert_sx(double_type, subtrahend->val());
            }

            value_node* difference = builder().insert_sub(minuend->val(), subtrahend->val());

            if(single_type.type_class() == value_type_class::unsigned_integer){
                difference = saturate_to_unsigned(difference);
            }
            difference = saturate(single_type, difference);

            dest = builder().insert_vector_insert(dest->val(), i, difference->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // horizontal signed saturated subtraction
    case XED_ICLASS_PHSUBSW: {
        size_t vector_len = 8;
        size_t width = 16;
        value_type single_type = value_type(value_type_class::signed_integer, width);
        value_type double_type = value_type(value_type_class::signed_integer, width *2);
        for(int i=0; i < vector_len; i++){
            value_node* minuend;
            value_node* subtrahend;
            if(i<vector_len/2){
                minuend = builder().insert_vector_extract(src1->val(), i*2);
                subtrahend = builder().insert_vector_extract(src1->val(), i*2 +1);
            } else {
                minuend = builder().insert_vector_extract(src2->val(), (i-(vector_len/2))*2);
                subtrahend = builder().insert_vector_extract(src2->val(), (i-(vector_len/2))*2 +1);
            }

            minuend = builder().insert_sx(double_type, minuend->val());
            subtrahend = builder().insert_sx(double_type, subtrahend->val());

            value_node* difference = builder().insert_sub(minuend->val(), subtrahend->val());

            difference = saturate(single_type, difference);

            dest = builder().insert_vector_insert(dest->val(), i, difference->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // Packed Mul
    case XED_ICLASS_MULPD:
    case XED_ICLASS_MULPS: {
        auto res = builder().insert_mul(src1->val(), src2->val());
        write_operand(0, res->val());
        break;
    }
    // Scalar Mul
    case XED_ICLASS_VMULSS:
    case XED_ICLASS_VMULSD:
    case XED_ICLASS_MULSS:
    case XED_ICLASS_MULSD:
    {
        auto res = builder().insert_mul(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_PMULDQ: {
        value_node* zero = builder().insert_constant_u64(0);
        zero = builder().insert_zx(value_type::u128(), zero->val());
        auto factor1 = builder().insert_bitcast(
            value_type::vector(value_type::s64(), 2), zero->val());
        auto factor2 = builder().insert_bitcast(
            value_type::vector(value_type::s64(), 2), zero->val());

        auto tmp = builder().insert_vector_extract(src1->val(), 0);
        tmp = builder().insert_sx(value_type::s64(), tmp->val());
        factor1 = builder().insert_vector_insert(factor1->val(), 0, tmp->val());
        tmp = builder().insert_vector_extract(src1->val(), 2);
        tmp = builder().insert_sx(value_type::s64(), tmp->val());
        factor1 = builder().insert_vector_insert(factor1->val(), 1, tmp->val());

        tmp = builder().insert_vector_extract(src2->val(), 0);
        tmp = builder().insert_sx(value_type::s64(), tmp->val());
        factor2 = builder().insert_vector_insert(factor2->val(), 0, tmp->val());
        tmp = builder().insert_vector_extract(src2->val(), 2);
        tmp = builder().insert_sx(value_type::s64(), tmp->val());
        factor2 = builder().insert_vector_insert(factor2->val(), 1, tmp->val());
        
        auto product = builder().insert_mul(factor1->val(), factor2->val());
        write_operand(0, product->val());
        break;
    }
    case XED_ICLASS_PMULHRSW: {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i=0; i < vector_len; i++){
            auto factor1 = builder().insert_vector_extract(src1->val(), i);
            auto factor2 = builder().insert_vector_extract(src2->val(), i);

            factor1 = builder().insert_sx(value_type::s32(), factor1->val());
            factor2 = builder().insert_sx(value_type::s32(), factor2->val());
            factor1 = builder().insert_mul(factor1->val(), factor2->val());
            factor1 = builder().insert_lsr(factor1->val(), builder().insert_constant_s8(14)->val());
            factor1 = builder().insert_add(factor1->val(), builder().insert_constant_s8(1)->val());
            factor1 = builder().insert_lsr(factor1->val(), builder().insert_constant_s8(1)->val());
            factor1 = builder().insert_trunc(value_type::s16(), factor1->val());

            dest = builder().insert_vector_insert(dest->val(), i, factor1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // Multiplikation higher unsigned integer
    case XED_ICLASS_PMULHUW: {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i=0; i < vector_len; i++){
            auto factor1 = builder().insert_vector_extract(src1->val(), i);
            auto factor2 = builder().insert_vector_extract(src2->val(), i);

            factor1 = builder().insert_zx(value_type::u32(), factor1->val());
            factor2 = builder().insert_zx(value_type::u32(), factor2->val());
            factor1 = builder().insert_mul(factor1->val(), factor2->val());
            factor1 = builder().insert_lsr(factor1->val(), builder().insert_constant_s8(16)->val());
            factor1 = builder().insert_trunc(value_type::u16(), factor1->val());

            dest = builder().insert_vector_insert(dest->val(), i, factor1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PMULHW: {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i=0; i < vector_len; i++){
            auto factor1 = builder().insert_vector_extract(src1->val(), i);
            auto factor2 = builder().insert_vector_extract(src2->val(), i);

            factor1 = builder().insert_sx(value_type::s32(), factor1->val());
            factor2 = builder().insert_sx(value_type::s32(), factor2->val());
            factor1 = builder().insert_mul(factor1->val(), factor2->val());
            factor1 = builder().insert_lsr(factor1->val(), builder().insert_constant_s8(16)->val());
            factor1 = builder().insert_trunc(value_type::s16(), factor1->val());

            dest = builder().insert_vector_insert(dest->val(), i, factor1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PMULLD:{
        size_t vector_len = src1->val().type().nr_elements();
        for(int i=0; i < vector_len; i++){
            auto factor1 = builder().insert_vector_extract(src1->val(), i);
            auto factor2 = builder().insert_vector_extract(src2->val(), i);

            factor1 = builder().insert_sx(value_type::s64(), factor1->val());
            factor2 = builder().insert_sx(value_type::s64(), factor2->val());
            factor1 = builder().insert_mul(factor1->val(), factor2->val());
            factor1 = builder().insert_trunc(value_type::s32(), factor1->val());

            dest = builder().insert_vector_insert(dest->val(), i, factor1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // Packed Div
    case XED_ICLASS_DIVPS:
    case XED_ICLASS_DIVPD:{

        auto res = builder().insert_div(src1->val(), src2->val());

        write_operand(0, res->val());
        break;
    }
    // Scalar Div
    case XED_ICLASS_DIVSS:
    case XED_ICLASS_DIVSD:
    case XED_ICLASS_VDIVSS:
    case XED_ICLASS_VDIVSD:
    {

        auto res = builder().insert_div(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_ADDSUBPS:{
        auto minuend = builder().insert_vector_extract(src1->val(), 0);
        auto subtrahend = builder().insert_vector_extract(src2->val(), 0);
        auto diff = builder().insert_sub(minuend->val(), subtrahend->val());

        auto addend1 = builder().insert_vector_extract(src1->val(),1);
        auto addend2 = builder().insert_vector_extract(src2->val(),1);
        auto sum = builder().insert_add(addend1->val(), addend2->val());

        dest = builder().insert_vector_insert(dest->val(), 0, diff->val());
        dest = builder().insert_vector_insert(dest->val(), 1, sum->val());

        minuend = builder().insert_vector_extract(src1->val(), 2);
        subtrahend = builder().insert_vector_extract(src2->val(), 2);
        diff = builder().insert_sub(minuend->val(), subtrahend->val());

        addend1 = builder().insert_vector_extract(src1->val(),3);
        addend2 = builder().insert_vector_extract(src2->val(),3);
        sum = builder().insert_add(addend1->val(), addend2->val());

        dest = builder().insert_vector_insert(dest->val(), 2, diff->val());
        dest = builder().insert_vector_insert(dest->val(), 3, sum->val());

        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_ADDSUBPD:{
        auto minuend = builder().insert_vector_extract(src1->val(), 0);
        auto subtrahend = builder().insert_vector_extract(src2->val(), 0);
        auto diff = builder().insert_sub(minuend->val(), subtrahend->val());

        auto addend1 = builder().insert_vector_extract(src1->val(),1);
        auto addend2 = builder().insert_vector_extract(src2->val(),1);
        auto sum = builder().insert_add(addend1->val(), addend2->val());

        dest = builder().insert_vector_insert(dest->val(), 0, diff->val());
        dest = builder().insert_vector_insert(dest->val(), 1, sum->val());

        write_operand(0, dest->val());
        break;
    }
    // Packed Max
    case XED_ICLASS_MAXPD:
    case XED_ICLASS_MAXPS:
    case XED_ICLASS_PMAXSB:
    case XED_ICLASS_PMAXSW:
    case XED_ICLASS_PMAXSD:
    case XED_ICLASS_PMAXUB:
    case XED_ICLASS_PMAXUW:
    case XED_ICLASS_PMAXUD: {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i=0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* element2 = builder().insert_vector_extract(src2->val(), i);

            element1 = builder().insert_csel(builder().insert_cmpgt(element1->val(), element2->val())->val(), element1->val(), element2->val());

            dest = builder().insert_vector_insert(dest->val(), i, element1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // Scalar Max
    case XED_ICLASS_MAXSD:
    case XED_ICLASS_MAXSS: {
//        auto element1 = src1;
//        auto element2 = src2;
//        value_node* one_gt_cmp = builder().insert_cmpgt(element1->val(), element2->val());
//        cond_br_node* one_gt_br = (cond_br_node*)builder().insert_cond_br(one_gt_cmp->val(), nullptr);
//        auto dest2 = builder().insert_vector_insert(dest->val(), 0, element2->val());
//        write_operand(0, dest2->val());
//        br_node* end_br = (br_node*)builder().insert_br(nullptr);
//        label_node* one_gt_label = builder().insert_label("one_gt");
//        one_gt_br->add_br_target(one_gt_label);
//        auto dest1 = builder().insert_vector_insert(dest->val(), 0, element1->val());
//        write_operand(0, dest1->val());
//        label_node* end_label = builder().insert_label("end");
//        end_br->add_br_target(end_label);
//

        value_node* res = builder().insert_csel(builder().insert_cmpgt(src1->val(), src2->val())->val(), src1->val(), src2->val());
        dest = builder().insert_vector_insert(dest->val(), 0, res->val());
        write_operand(0, dest->val());
        
        break;
    }
    // Packed Min
    case XED_ICLASS_MINPD:
    case XED_ICLASS_MINPS:
    case XED_ICLASS_PMINSB:
    case XED_ICLASS_PMINSW:
    case XED_ICLASS_PMINSD:
    case XED_ICLASS_PMINUB:
    case XED_ICLASS_PMINUW:
    case XED_ICLASS_PMINUD: {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i=0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* element2 = builder().insert_vector_extract(src2->val(), i);

            element1 = builder().insert_csel(builder().insert_cmpgt(element2->val(), element1->val())->val(), element1->val(), element2->val());

            dest = builder().insert_vector_insert(dest->val(), i, element1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // Scalar Min
    case XED_ICLASS_MINSD:
    case XED_ICLASS_MINSS: {

//        auto element1 = src1;
//        auto element2 = src2;
//
//        value_node* one_gt_cmp = builder().insert_cmpgt(element1->val(), element2->val());
//        cond_br_node* one_gt_br = (cond_br_node*)builder().insert_cond_br(one_gt_cmp->val(), nullptr);
//        auto dest1 = builder().insert_vector_insert(dest->val(), 0, element1->val());
//        write_operand(0, dest1->val());
//        br_node* end_br = (br_node*)builder().insert_br(nullptr);
//        label_node* one_gt_label = builder().insert_label("one_gt");
//        one_gt_br->add_br_target(one_gt_label);
//        auto dest2 = builder().insert_vector_insert(dest->val(), 0, element2->val());
//        write_operand(0, dest2->val());
//        label_node* end_label = builder().insert_label("end");
//        end_br->add_br_target(end_label);

        value_node* res = builder().insert_csel(builder().insert_cmpgt(src1->val(), src2->val())->val(), src2->val(), src1->val());
        dest = builder().insert_vector_insert(dest->val(), 0, res->val());
        write_operand(0, dest->val());

        break;
    }
    case XED_ICLASS_PHMINPOSUW:
    {
        value_node* curr_min = builder().insert_vector_extract(src2->val(), 0);
        value_node* curr_index = builder().insert_constant_u16(0);
        for(unsigned short i = 1; i<8;i++){
            value_node* next_val = builder().insert_vector_extract(src2->val(), i);
            value_node* cmp_lt = builder().insert_cmpgt(curr_min->val(), next_val->val());
            curr_index = builder().insert_csel(cmp_lt->val(), builder().insert_constant_u16(i)->val(), curr_index->val());
            curr_min = builder().insert_csel(cmp_lt->val(), next_val->val(), curr_min->val());
        }
        dest = builder().insert_vector_insert(dest->val(), 0, curr_min->val());
        dest = builder().insert_vector_insert(dest->val(), 1, curr_index->val());
        value_node* zero = builder().insert_constant_u16(0);
        for(int i = 2; i<8;i++){
            dest = builder().insert_vector_insert(dest->val(), i, zero->val());
        }
//        zero = builder().insert_constant_u128(0);
//        dest = builder().insert_bitcast(
//            value_type::vector(value_type::u128(), 4), dest->val());
//        for(int i = 1;i<4;i++){
//            dest = builder().insert_vector_insert(dest->val(), i, zero->val());
//        }
        dest = builder().insert_bitcast(value_type::u128(), dest->val());
        dest = builder().insert_zx(value_type::u512(), dest->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PABSB:
    case XED_ICLASS_PABSW:
    case XED_ICLASS_PABSD:{
        size_t vector_len = src1->val().type().nr_elements();
        value_node* zero = builder().insert_constant_s8(0);
        value_node* negativ_one = builder().insert_constant_s8(-1);
        for(int i = 0; i < vector_len; i++){
            value_node* element = builder().insert_vector_extract(src2->val(), i);
            value_node* negativ_cmp = builder().insert_cmpgt(zero->val(), element->val());
            value_node* neg_elem = builder().insert_mul(element->val(), negativ_one->val());
            value_node* res = builder().insert_csel(negativ_cmp->val(), neg_elem->val(), element->val());
            dest = builder().insert_vector_insert(dest->val(), i, res->val());
        }
        write_operand(0, dest->val());
        break;
    }

    case XED_ICLASS_PAVGB:
    case XED_ICLASS_PAVGW:{
        size_t vector_len = src1->val().type().nr_elements();
        size_t double_size = src1->val().type().element_width() * 2;
        value_type one_type = value_type(value_type_class::unsigned_integer, double_size/2, 1);
        value_type double_type = value_type(value_type_class::unsigned_integer, double_size, 1);
        value_node* one = builder().insert_constant_u8(1);
        for(int i = 0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            element1 = builder().insert_zx(double_type, element1->val());
            value_node* element2 = builder().insert_vector_extract(src2->val(), i);
            element2 = builder().insert_zx(double_type, element2->val());
            element1 = builder().insert_add(element1->val(), element2->val());
            element1 = builder().insert_add(element1->val(), one->val());
            element1 = builder().insert_lsr(element1->val(), one->val());
            element1 = builder().insert_trunc(one_type, element1->val());
            dest = builder().insert_vector_insert(dest->val(), i, element1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    // Packed Squareroot
    case XED_ICLASS_SQRTPD:
    case XED_ICLASS_SQRTPS:
    {
        size_t vector_len = dest->val().type().nr_elements();
        for(int i = 0; i<vector_len;i++){
            value_node* element = builder().insert_vector_extract(src2->val(), i);
            element = builder().insert_sqrt(element->val());
            dest = builder().insert_vector_insert(dest->val(), i, element->val());
        }

        write_operand(0, dest->val());
        break;
    }
    // Solar Squareroot
    case XED_ICLASS_SQRTSS:
    {
        auto res = builder().insert_sqrt(src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_RSQRTPS:
    {
        value_node* one = builder().insert_constant_f32(1.0f);
        for(int i=0; i<4;i++){
            value_node* element = builder().insert_vector_extract(src2->val(), i);
            element = builder().insert_sqrt(element->val());
            element = builder().insert_div(one->val(), element->val());
            dest = builder().insert_vector_insert(dest->val(), i, element->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_RSQRTSS:
    {
        value_node* res = builder().insert_vector_extract(src2->val(), 0);
        value_node* one = builder().insert_constant_f32(1.0f);
        res = builder().insert_div(one->val(), builder().insert_sqrt(res->val())->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_PSIGNB:
    case XED_ICLASS_PSIGND:
    case XED_ICLASS_PSIGNW:
    {
        size_t vector_len = src1->val().type().nr_elements();
        size_t element_width = src1->val().type().element_width();
        value_type one_type = value_type(value_type_class::signed_integer, element_width);
        value_node* minus_one = builder().insert_constant_i(one_type,-1);
        value_node* zero = builder().insert_constant_i(one_type, 0);
        for(int i = 0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* element2 = builder().insert_vector_extract(src2->val(), i);

            value_node* negativ = builder().insert_mul(element1->val(), minus_one->val());

            value_node* zero_con = builder().insert_cmpeq(element2->val(), zero->val());
            element1 = builder().insert_csel(zero_con->val(), zero->val(), element1->val());
            value_node* negativ_con = builder().insert_cmpgt( zero->val(), element2->val());
            element1 = builder().insert_csel(negativ_con->val(), negativ->val(), element1->val());

            dest = builder().insert_vector_insert(dest->val(), i, element1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_DPPD:
    case XED_ICLASS_DPPS:
    {
        size_t vector_len = src1->val().type().nr_elements();
        size_t element_width = src1->val().type().element_width();
        value_type one_type = src1->val().type().element_type();
        //value_node* zero = builder().insert_constant_f(one_type, 0);
        value_node* res = builder().insert_constant_u64(0);
        res = builder().insert_zx(value_type::u128(), res->val());
        res = builder().insert_bitcast(value_type::vector(one_type, vector_len), res->val());
        value_node* sum = builder().insert_constant_f(one_type, 0);
        for(int i = 0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(dest->val(), i);
            value_node* element2 = builder().insert_vector_extract(src1->val(), i);

            if((imm & (0b10000<<i)) > 1){
                sum = builder().insert_add(sum->val(), builder().insert_mul(element1->val(), element2->val())->val());
            }
        }
        for(int i = 0; i < vector_len; i++){
            if((imm & (1<<i))>0){
                res = builder().insert_vector_insert(res->val(), i, sum->val());
            }
        }
        write_operand(0, res->val());
        break;
    }
    case XED_ICLASS_PANDN:
    {
        src1 = builder().insert_not(src1->val());
        dest = builder().insert_and(src1->val(), src2->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PMADDUBSW:
    {
        size_t vector_len = dest->val().type().nr_elements();
        value_type sw_type = value_type(value_type_class::signed_integer, 16);
        value_type sd_type = value_type(value_type_class::signed_integer, 32);
        for(int i=0 ; i<vector_len ; i++){
            value_node* element1_1 = builder().insert_vector_extract(src1->val(), i*2);
            value_node* element1_2 = builder().insert_vector_extract(src1->val(), i*2+1);
            value_node* element2_1 = builder().insert_vector_extract(src2->val(), i*2);
            value_node* element2_2 = builder().insert_vector_extract(src2->val(), i*2+1);

            element1_1 = builder().insert_zx(sd_type, element1_1->val());
            element1_2 = builder().insert_zx(sd_type, element1_2->val());
            element2_1 = builder().insert_sx(sd_type, element2_1->val());
            element2_2 = builder().insert_sx(sd_type, element2_2->val());

            element1_1 = builder().insert_mul(element1_1->val(), element2_1->val());
            element1_2 = builder().insert_mul(element1_2->val(), element2_2->val());

            element1_1 = builder().insert_add(element1_1->val(), element1_2->val());

            value_node* res = saturate(sw_type, element1_1);
 
            dest = builder().insert_vector_insert(dest->val(), i, res->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PMADDWD:
    {
        size_t vector_len = dest->val().type().nr_elements();
        value_type target_type = value_type::s32();
        for(int i = 0; i<vector_len;i++){
            value_node* element1_1 = builder().insert_vector_extract(src1->val(), i*2);
            value_node* element1_2 = builder().insert_vector_extract(src1->val(), i*2+1);
            value_node* element2_1 = builder().insert_vector_extract(src2->val(), i*2);
            value_node* element2_2 = builder().insert_vector_extract(src2->val(), i*2+1);

            element1_1 = builder().insert_sx(target_type, element1_1->val());
            element1_2 = builder().insert_sx(target_type, element1_2->val());
            element2_1 = builder().insert_sx(target_type, element2_1->val());
            element2_2 = builder().insert_sx(target_type, element2_2->val());

            element1_1 = builder().insert_mul(element1_1->val(), element2_1->val());
            element1_2 = builder().insert_mul(element1_2->val(), element2_2->val());

            element1_1 = builder().insert_add(element1_1->val(), element1_2->val());
 
            dest = builder().insert_vector_insert(dest->val(), i, element1_1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_MPSADBW:
    {
        int blk1_offset = (imm & 0b11) * 4;
        int blk2_offset = ((imm & 0b100)>>2) * 4;
        value_node* src1_byte[11];
        value_node* src2_byte[4];
        for( int i = 0; i<11;i++){
            src1_byte[i] = builder().insert_zx(value_type::s16(), builder().insert_vector_extract(dest->val(), i+blk1_offset)->val());
        }
        for( int i = 0; i<4;i++){
            src2_byte[i] = builder().insert_zx(value_type::s16(), builder().insert_vector_extract(src1->val(), i+blk2_offset)->val());
        }
        value_node* res = builder().insert_bitcast(
            value_type::vector(value_type::s16(), 8), dest->val());
        for(int i = 0; i<8;i++){
            value_node* temp0 = absolute(builder().insert_sub(src1_byte[i]->val(), src2_byte[0]->val()));
            value_node* temp1 = absolute(builder().insert_sub(src1_byte[i+1]->val(), src2_byte[1]->val()));
            value_node* temp2 = absolute(builder().insert_sub(src1_byte[i+2]->val(), src2_byte[2]->val()));
            value_node* temp3 = absolute(builder().insert_sub(src1_byte[i+3]->val(), src2_byte[3]->val()));
            temp0 = builder().insert_add(builder().insert_add(temp0->val(), temp1->val())->val(), builder().insert_add(temp2->val(), temp3->val())->val());
            res = builder().insert_vector_insert(res->val(), i, temp0->val());
        }
        write_operand(0, res->val());
        break;
    }
    case XED_ICLASS_PSLLQ:
    case XED_ICLASS_PSLLW:
    {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i = 0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* res = builder().insert_lsl(element1->val(), src2->val());

            dest = builder().insert_vector_insert(dest->val(), i, res->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PSRAD:
    case XED_ICLASS_PSRAW:
    {
        size_t vector_len = src1->val().type().nr_elements();
        for(int i = 0; i < vector_len; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* res = builder().insert_asr(element1->val(), src2->val());

            dest = builder().insert_vector_insert(dest->val(), i, res->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_RCPSS:
    {
        value_node* one = builder().insert_constant_f32(1.0f);
        src2 = builder().insert_div(one->val(), src2->val());
        dest = builder().insert_vector_insert(dest->val(), 0, src2->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_RCPPS:
    {
        value_node* one = builder().insert_constant_f32(1.0f);
        for(int i = 0; i<4; i++){
            value_node* element1 = builder().insert_vector_extract(src2->val(), i);
            element1 = builder().insert_div(one->val(), element1->val());
            dest = builder().insert_vector_insert(dest->val(), i, element1->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_EXTRACTPS:
    {
        value_node* res = builder().insert_vector_extract(src1->val(), imm & 0b11);
        write_operand(0, res->val());
        break;
    }
    case XED_ICLASS_INSERTPS:{
        value_node* tmp1;
        if(src1->val().type().width() != 32){
            tmp1 = builder().insert_vector_extract(src1->val(), ((imm & 0b11000000)>>6) );
        } else {
            tmp1 = src1;
        }
        dest = builder().insert_vector_insert(dest->val(), ((imm & 0b110000)>>4), tmp1->val());
        value_node* zero = builder().insert_constant_f32(0.0f);
        if((imm & 0b1) > 0)
            dest = builder().insert_vector_insert(dest->val(), 0, zero->val());
        if((imm & 0b10) > 0)
            dest = builder().insert_vector_insert(dest->val(), 1, zero->val());
        if((imm & 0b100) > 0)
            dest = builder().insert_vector_insert(dest->val(), 2, zero->val());
        if((imm & 0b1000) > 0)
            dest = builder().insert_vector_insert(dest->val(), 3, zero->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PINSRB:
    case XED_ICLASS_PINSRD:
    case XED_ICLASS_PINSRQ:
    case XED_ICLASS_PINSRW:
    {
        dest = builder().insert_vector_insert(dest->val(), imm, src1->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_UNPCKHPS:{
        dest = builder().insert_vector_insert(dest->val(), 0, builder().insert_vector_extract(src1->val(),2)->val());
        dest = builder().insert_vector_insert(dest->val(), 1, builder().insert_vector_extract(src2->val(),2)->val());
        dest = builder().insert_vector_insert(dest->val(), 2, builder().insert_vector_extract(src1->val(),3)->val());
        dest = builder().insert_vector_insert(dest->val(), 3, builder().insert_vector_extract(src2->val(),3)->val());

        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_UNPCKLPD: {
        dest = builder().insert_vector_insert(dest->val(), 0, builder().insert_vector_extract(src1->val(), 0)->val());
        dest = builder().insert_vector_insert(dest->val(), 1, builder().insert_vector_extract(src2->val(), 0)->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_UNPCKLPS: {
        value_node* tmp1 = builder().insert_vector_extract(src2->val(), 0);
        value_node* tmp2 = builder().insert_vector_extract(dest->val(), 1);
        dest = builder().insert_vector_insert(dest->val(), 1, tmp1->val());
        dest = builder().insert_vector_insert(dest->val(), 2, tmp2->val());
        tmp1 = builder().insert_vector_extract(src2->val(), 1);
        dest = builder().insert_vector_insert(dest->val(), 3, tmp1->val());
        write_operand(0, dest->val());
        break;
    }

    case XED_ICLASS_BLENDPD:
    case XED_ICLASS_BLENDPS:
    case XED_ICLASS_PBLENDW:
    {
        size_t vector_len = dest->val().type().nr_elements();
        value_node* one = builder().insert_constant_u1(1);
        for(int i=0; i<vector_len ; i++){
            value_node* element1 = builder().insert_vector_extract(dest->val(), i);
            value_node* element2 = builder().insert_vector_extract(src1->val(), i);
            value_node* cond = builder().insert_cmpeq(one->val(), builder().insert_constant_u1((imm>>i) & 1)->val());
            value_node* res = builder().insert_csel(cond->val(), element2->val(), element1->val());
            dest = builder().insert_vector_insert(dest->val(), i, res->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PBLENDVB:
    {
        value_node* src3 = read_reg(value_type::u512() , reg_offsets::ZMM0);
        src3 = builder().insert_bitcast(value_type::vector(value_type::s8(), 64) , src3->val());
        size_t vector_len = dest->val().type().nr_elements();
        value_node* zero = builder().insert_constant_s8(0);
        for(int i=0; i<vector_len ; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* element2 = builder().insert_vector_extract(src2->val(), i);
            value_node* element3 = builder().insert_vector_extract(src3->val(), i);
            //value_node* element3 = builder().insert_bit_extract(src3->val(), i*8, 8);
            //element3 = builder().insert_bitcast(value_type::s8(), element3->val());
            value_node* cond = builder().insert_cmpgt(zero->val(), element3->val());
            value_node* res = builder().insert_csel(cond->val(), element2->val(), element1->val());
            dest = builder().insert_vector_insert(dest->val(), i, element3->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_BLENDVPD:
    case XED_ICLASS_BLENDVPS:
    {
        value_node* src3 = read_reg(dest->val().type() , reg_offsets::ZMM0);
        size_t vector_len = dest->val().type().nr_elements();
        //size_t e_width = dest->val().type().element_width();
        value_type ele_type = dest->val().type().element_type();
        value_node* zero = builder().insert_constant_f(ele_type, 0.0);
        for(int i=0; i<vector_len ; i++){
            value_node* element1 = builder().insert_vector_extract(src1->val(), i);
            value_node* element2 = builder().insert_vector_extract(src2->val(), i);
            value_node* element3 = builder().insert_vector_extract(src3->val(), i);
            value_node* cond = builder().insert_cmpgt(zero->val(), element3->val());
            value_node* res = builder().insert_csel(cond->val(), element2->val(), element1->val());
            dest = builder().insert_vector_insert(dest->val(), i, res->val());
        }
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_PACKUSWB:
    case XED_ICLASS_PACKUSDW:
    {
        size_t vector_len = src1->val().type().nr_elements();
        size_t element_width = src1->val().type().element_width();
        value_type target = value_type(value_type_class::unsigned_integer, element_width/2, vector_len*2);
        dest = builder().insert_bitcast(target, dest->val());
        for(int i=0;i<vector_len*2;i++){
            value_node* element;
            if(i<vector_len){
                element = builder().insert_vector_extract(src1->val(), i);
            } else {
                element = builder().insert_vector_extract(src2->val(), i-vector_len);
            }
            value_node* res1 = saturate_to_unsigned(element);
            value_type target_element = value_type(value_type_class::unsigned_integer, element_width/2);
            value_node* res2 = saturate(target_element, res1);
            dest = builder().insert_vector_insert(dest->val(), i, res2->val());
        }
        write_operand(0, dest->val());
        break;
    }

    case XED_ICLASS_MOVLHPS:{
        value_node* tmp1 = builder().insert_vector_extract(src2->val(), 0);
        value_node* tmp2 = builder().insert_vector_extract(src2->val(), 1);
        dest = builder().insert_vector_insert(dest->val(), 2, tmp1->val());
        dest = builder().insert_vector_insert(dest->val(), 3, tmp2->val());
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_CVTSD2SI:
    case XED_ICLASS_CVTSD2SS: {
        auto res = builder().insert_convert(value_type::f32(), src1->val(),
                                            fp_convert_type::round);
        dest = builder().insert_vector_insert(dest->val(), 0, res->val());

        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_CVTTSD2SI:
    case XED_ICLASS_CVTTSS2SI: {
        dest = builder().insert_convert(dest->val().type(), src1->val(),
                                        fp_convert_type::trunc);
        write_operand(0, dest->val());
        break;
    }
    case XED_ICLASS_CVTSS2SI:
    case XED_ICLASS_CVTSS2SD: {
        dest = builder().insert_convert(dest->val().type(), src1->val(),
                                        fp_convert_type::none);
        write_operand(0, dest->val());
        break;
    }
    default: {
        throw std::runtime_error(
            std::string("Unknown fpvec instruction: ") +
            xed_iclass_enum_t2str(xed_decoded_inst_get_iclass(xed_inst())));
    } break;
    }
}
