#include <arancini/input/x86/translators/translators.h>
#include <arancini/ir/ir-builder.h>
#include <arancini/ir/node.h>

using namespace arancini::ir;
using namespace arancini::input::x86::translators;

void stack_translator::do_translate() {
    switch (xed_decoded_inst_get_iclass(xed_inst())) {
    case XED_ICLASS_PUSH: {
        auto rsp = read_reg(value_type::u64(), reg_offsets::RSP);
        auto new_rsp = builder().insert_sub(
            rsp->val(), builder().insert_constant_u64(8)->val());

        builder().insert_write_mem(new_rsp->val(), read_operand(0)->val());
        write_reg(reg_offsets::RSP, new_rsp->val());
        break;
    }
    case XED_ICLASS_PUSHF: {
        auto rsp = read_reg(value_type::u64(), reg_offsets::RSP);
        auto new_rsp = builder().insert_sub(
            rsp->val(), builder().insert_constant_u64(2)->val());

        value_node* zf = read_reg(value_type::u1(), reg_offsets::ZF);
        value_node* cf = read_reg(value_type::u1(), reg_offsets::CF);
        value_node* of = read_reg(value_type::u1(), reg_offsets::OF);
        value_node* sf = read_reg(value_type::u1(), reg_offsets::SF);
        value_node* pf = read_reg(value_type::u1(), reg_offsets::PF);
        value_node* df = read_reg(value_type::u1(), reg_offsets::DF);

        value_node* res = builder().insert_constant_u16(0);
        res = builder().insert_bit_insert(res->val(), cf->val(), 0, 1);
        res = builder().insert_bit_insert(res->val(), pf->val(), 2, 1);
        res = builder().insert_bit_insert(res->val(), zf->val(), 6, 1);
        res = builder().insert_bit_insert(res->val(), sf->val(), 7, 1);
        res = builder().insert_bit_insert(res->val(), df->val(), 10, 1);
        res = builder().insert_bit_insert(res->val(), of->val(), 11, 1);

        builder().insert_write_mem(new_rsp->val(), res->val());
        write_reg(reg_offsets::RSP, new_rsp->val());
        break;
    }
    case XED_ICLASS_PUSHFD: {
        auto rsp = read_reg(value_type::u64(), reg_offsets::RSP);
        auto new_rsp = builder().insert_sub(
            rsp->val(), builder().insert_constant_u64(4)->val());

        value_node* zf = read_reg(value_type::u1(), reg_offsets::ZF);
        value_node* cf = read_reg(value_type::u1(), reg_offsets::CF);
        value_node* of = read_reg(value_type::u1(), reg_offsets::OF);
        value_node* sf = read_reg(value_type::u1(), reg_offsets::SF);
        value_node* pf = read_reg(value_type::u1(), reg_offsets::PF);
        value_node* df = read_reg(value_type::u1(), reg_offsets::DF);

        value_node* res = builder().insert_constant_u32(0);
        res = builder().insert_bit_insert(res->val(), cf->val(), 0, 1);
        res = builder().insert_bit_insert(res->val(), pf->val(), 2, 1);
        res = builder().insert_bit_insert(res->val(), zf->val(), 6, 1);
        res = builder().insert_bit_insert(res->val(), sf->val(), 7, 1);
        res = builder().insert_bit_insert(res->val(), df->val(), 10, 1);
        res = builder().insert_bit_insert(res->val(), of->val(), 11, 1);

        builder().insert_write_mem(new_rsp->val(), res->val());
        write_reg(reg_offsets::RSP, new_rsp->val());
        break;
    }
    case XED_ICLASS_PUSHFQ: {
        auto rsp = read_reg(value_type::u64(), reg_offsets::RSP);
        auto new_rsp = builder().insert_sub(
            rsp->val(), builder().insert_constant_u64(8)->val());

        value_node* zf = read_reg(value_type::u1(), reg_offsets::ZF);
        value_node* cf = read_reg(value_type::u1(), reg_offsets::CF);
        value_node* of = read_reg(value_type::u1(), reg_offsets::OF);
        value_node* sf = read_reg(value_type::u1(), reg_offsets::SF);
        value_node* pf = read_reg(value_type::u1(), reg_offsets::PF);
        value_node* df = read_reg(value_type::u1(), reg_offsets::DF);

        value_node* res = builder().insert_constant_u64(0);
        res = builder().insert_bit_insert(res->val(), cf->val(), 0, 1);
        res = builder().insert_bit_insert(res->val(), pf->val(), 2, 1);
        res = builder().insert_bit_insert(res->val(), zf->val(), 6, 1);
        res = builder().insert_bit_insert(res->val(), sf->val(), 7, 1);
        res = builder().insert_bit_insert(res->val(), df->val(), 10, 1);
        res = builder().insert_bit_insert(res->val(), of->val(), 11, 1);

        builder().insert_write_mem(new_rsp->val(), res->val());
        write_reg(reg_offsets::RSP, new_rsp->val());
        break;
    }

    case XED_ICLASS_POP: {
        auto rsp = read_reg(value_type::u64(), reg_offsets::RSP);
        write_operand(
            0, builder().insert_read_mem(value_type::u64(), rsp->val())->val());

        auto new_rsp = builder().insert_add(
            rsp->val(), builder().insert_constant_u64(8)->val());
        write_reg(reg_offsets::RSP, new_rsp->val());
        break;
    }

    case XED_ICLASS_LEAVE: {
        /* Only supported for 64-bit mode */
        /*
         * LEAVE:
         * 	RSP := RBP
         * 	RBP := Pop()
         */
        auto rbp = read_reg(value_type::u64(), reg_offsets::RBP);
        write_reg(reg_offsets::RSP, rbp->val());

        auto rsp = read_reg(value_type::u64(), reg_offsets::RSP);
        write_reg(
            reg_offsets::RBP,
            builder().insert_read_mem(value_type::u64(), rsp->val())->val());

        auto new_rsp = builder().insert_add(
            rsp->val(), builder().insert_constant_u64(8)->val());
        write_reg(reg_offsets::RSP, new_rsp->val());
        break;
    }

    default:
        throw std::runtime_error("unsupported stack operation");
    }
}
