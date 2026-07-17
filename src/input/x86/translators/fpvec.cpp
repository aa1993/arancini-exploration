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
    case XED_ICLASS_UNPCKLPS:
    case XED_ICLASS_MOVLHPS:
    case XED_ICLASS_PHADDD:
    {
        // we don't have 3 operands
        src2 = src1;
        src1 = dest;
    } break;
    }

    switch (xed_decoded_inst_get_iclass(xed_inst())) {
    case XED_ICLASS_XORPS:
    case XED_ICLASS_HADDPS:
    case XED_ICLASS_UNPCKLPS:
    case XED_ICLASS_MOVLHPS:{
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::f32(), 4), src2->val());
    } break;
    case XED_ICLASS_SUBPD:
    case XED_ICLASS_ADDPD:
    case XED_ICLASS_XORPD: {
        dest = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), dest->val());
        src1 = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), src1->val());
        src2 = builder().insert_bitcast(
            value_type::vector(value_type::f64(), 2), src2->val());
    } break;
    case XED_ICLASS_ADDSS:
    case XED_ICLASS_SUBSS:
    case XED_ICLASS_DIVSS:
    case XED_ICLASS_MULSS:
    case XED_ICLASS_VADDSS:
    case XED_ICLASS_VSUBSS:
    case XED_ICLASS_VDIVSS:
    case XED_ICLASS_VMULSS: {
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
    case XED_ICLASS_ADDSD:
    case XED_ICLASS_SUBSD:
    case XED_ICLASS_DIVSD:
    case XED_ICLASS_MULSD:
    case XED_ICLASS_VADDSD:
    case XED_ICLASS_VSUBSD:
    case XED_ICLASS_VDIVSD:
    case XED_ICLASS_VMULSD:{
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
    // xmm1.s32[4]/mm1.s32[2], (xmm2 | m128).s32[4]/(mm2 | m64).s32[2]
    case XED_ICLASS_PHADDD:
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
    case XED_ICLASS_SUBPD: {
        auto res = builder().insert_sub(src1->val(), src2->val());
        write_operand(0, res->val());
    } break;
    case XED_ICLASS_ADDSS:
    case XED_ICLASS_ADDSD:
    case XED_ICLASS_VADDSS:
    case XED_ICLASS_VADDSD: {

        auto res = builder().insert_add(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_HADDPS:
    case XED_ICLASS_PHADDD:{
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
    case XED_ICLASS_DIVSS:
    case XED_ICLASS_DIVSD:
    case XED_ICLASS_VDIVSS:
    case XED_ICLASS_VDIVSD: {

        auto res = builder().insert_div(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
        break;
    }
    case XED_ICLASS_VMULSS:
    case XED_ICLASS_VMULSD:
    case XED_ICLASS_MULSS:
    case XED_ICLASS_MULSD: {
        auto res = builder().insert_mul(src1->val(), src2->val());

        write_operand(
            0,
            builder().insert_vector_insert(dest->val(), 0, res->val())->val());
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
