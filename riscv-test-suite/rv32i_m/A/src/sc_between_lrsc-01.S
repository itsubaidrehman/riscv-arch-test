
/*
Copyright (c) 2020. RISC-V International. All rights reserved.
SPDX-License-Identifier: BSD-3-Clause

Test Plan: https://docs.google.com/spreadsheets/d/15Ln0AyXZErfmR2lNLxv6MDQteEOGSzGzPxE1hn_uMPg/edit?gid=0#gid=0

Developed By: Ubaid Rehman - https://github.com/itsubaidrehman
Date :        December 25, 2024
Description: This assembly test verifies that if the addr is reserved by lr and if there is SC to some other addr and then SC to the
            reserved addr, then reserved addr should be invalidated and SC should be failed.

*/
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IA")


.section .text.init
.globl rvtest_entry_point
.option norvc 
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
main:
RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*A); def TEST_CASE_1=True;",sc_between_lrsc-01)

RVTEST_SIGBASE(x1,signature_x1_1)



inst_0:
    //destreg1: x28:, destreg2: x29, addrreg: x2, loadreg: x12, tempreg: x2, storeval: 15, sigptr x1, immval:0, immval: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x2, x12, x9, 15, x1, 0, 12)

inst_1:
    //destreg1: x28, destreg2,: x29 addrreg,: x3 loadreg,: x12 tempreg,: x2 storeval,: 73 sigptr, x1 immval1:4 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x3, x12, x2, 73, x1, 4, 12)

inst_2:
    //destreg1: x28, destreg2,: x29 addrreg,: x4 loadreg,: x12 tempreg,: x2 storeval,: 28 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x4, x12, x2, 28, x1, 0, 12)

inst_3:
    //destreg1: x28, destreg2,: x29 addrreg,: x5, loadreg,: x12 tempreg,: x2 storeval,: 95 sigptr, x1 immval1:8 immval2: 16
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x5, x12, x2, 95, x1, 8, 16)

inst_4:
    //destreg1: x28, destreg2,: x29 addrreg,: x6, loadreg,: x12 tempreg,: x2 storeval,: 41 sigptr, x1 immval1:0 immval2: 20
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x6, x12, x2, 41, x1, 0, 20)

inst_5:
    //destreg1: x28, destreg2,: x29 addrreg,: x7, loadreg,: x12 tempreg,: x2 storeval,: 87 sigptr, x1 immval1:0 immval2: 24
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x7, x12, x2, 87, x1, 0, 24)

inst_6:
    //destreg1: x28, destreg2,: x29 addrreg,: x8, loadreg,: x12 tempreg,: x2 storeval,: 12 sigptr, x1 immval1:12 immval2: 28
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x8, x12, x2, 12, x1, 12, 28)

inst_7:
    //destreg1: x28, destreg2,: x29 addrreg,: x9, loadreg,: x12 tempreg,: x2 storeval,: 63 sigptr, x1 immval1:4 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x9, x12, x2, 63, x1, 4, 12)

inst_8:
    //destreg1: x28, destreg2,: x29 addrreg,: 10, loadreg,: x12 tempreg,: x2 storeval,: 34 sigptr, x1 immval1:8 immval2: 20
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x10, x12, x2, 34, x1, 8, 20)

inst_9:
    //destreg1: x28, destreg2,: x29 addrreg,: x11, loadreg,: x12 tempreg,: x2 storeval,: 89 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x11, x12, x2, 89, x1, 0, 12)

inst_10:
    //destreg1: x28, destreg2,: x29 addrreg,: x12, loadreg,: x12 tempreg,: x2 storeval,: 56 sigptr, x1 immval1:4 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x12, x15, x2, 56, x1, 4, 12)

inst_11:
    //destreg1: x28, destreg2,: x29 addrreg,: x13, loadreg,: x12 tempreg,: x2 storeval,: 19 sigptr, x1 immval1:8 immval2: 20
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x13, x12, x2, 19, x1, 8, 20)

inst_12:
    //destreg1: x28, destreg2,: x29 addrreg,: x14, loadreg,: x12 tempreg,: x2 storeval,: 82 sigptr, x1 immval1:0 immval2: 24
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x14, x12, x2, 82, x1, 0, 24)

inst_13:
    //destreg1: x28, destreg2,: x29 addrreg,: x15, loadreg,: x12 tempreg,: x2 storeval,: 47 sigptr, x1 immval1:4 immval2: 24
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x15, x12, x2, 47, x1, 4, 24)

inst_14:
    //destreg1: x28, destreg2,: x29 addrreg,: x16, loadreg,: x12 tempreg,: x2 storeval,: 93 sigptr, x1 immval1:8 immval2: 16
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x16, x12, x2, 93, x1, 8, 16)

inst_15:
    //destreg1: x28, destreg2,: x29 addrreg,: x17, loadreg,: x12 tempreg,: x2 storeval,: 25 sigptr, x1 immval1:4 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x17, x12, x2, 25, x1, 4, 12)

inst_16:
    //destreg1: x28, destreg2,: x29 addrreg,: x18, loadreg,: x12 tempreg,: x2 storeval,: 71 sigptr, x1 immval1:8 immval2: 20
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x18, x12, x2, 71, x1, 8, 20)

inst_17:
    //destreg1: x28, destreg2,: x29 addrreg,: x19, loadreg,: x12 tempreg,: x2 storeval,: 38 sigptr, x1 immval1:8 immval2: 24
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x19, x12, x2, 38, x1, 8, 24)

inst_18:
    //destreg1: x28, destreg2,: x29 addrreg,: x20, loadreg,: x12 tempreg,: x2 storeval,: 84 sigptr, x1 immval1:4 immval2: 20
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x20, x12, x2, 84, x1, 4, 20)

inst_19:
    //destreg1: x28, destreg2,: x29 addrreg,: x21, loadreg,: x12 tempreg,: x2 storeval,: 16 sigptr, x1 immval1:12 immval2: 28
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x21, x12, x2, 16, x1, 12, 28)

inst_20:
    //destreg1: x28, destreg2,: x29 addrreg,: x22, loadreg,: x12 tempreg,: x2 storeval,: 67 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x22, x12, x2, 67, x1, 0, 12)

inst_21:
    //destreg1: x28, destreg2,: x29 addrreg,: x23, loadreg,: x12 tempreg,: x2 storeval,: 31 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x23, x12, x2, 31, x1, 0, 12)

inst_22:
    //destreg1: x28, destreg2,: x29 addrreg,: x24, loadreg,: x12 tempreg,: x2 storeval,: 96 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x24, x12, x2, 96, x1, 0, 12)

inst_23:
    //destreg1: x28, destreg2,: x29 addrreg,: x25, loadreg,: x12 tempreg,: x2 storeval,: 52 sigptr, x1 immval1:4 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x25, x12, x2, 52, x1, 4, 12)

inst_24:
    //destreg1: x28, destreg2,: x29 addrreg,: x26, loadreg,: x12 tempreg,: x2 storeval,: 78 sigptr, x1 immval1:0 immval2: 16
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x26, x12, x2, 78, x1, 8, 16)

inst_25:
    //destreg1: x28, destreg2,: x29 addrreg,: x27, loadreg,: x12 tempreg,: x2 storeval,: 43 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x27, x12, x2, 43, x1, 0, 12)

inst_26:
    //destreg1: x28, destreg2,: x29 addrreg,: x28, loadreg,: x12 tempreg,: x2 storeval,: 91 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x25, x29, x28, x12, x2, 91, x1, 0, 12)

inst_27:
    //destreg1: x28, destreg2,: x29 addrreg,: x29, loadreg,: x12 tempreg,: x2 storeval,: 22 sigptr, x1 immval1:0 immval2: 16
    TEST_LR_SC_DIFF_ADDR_OP(x28, x21, x29, x12, x2, 22, x1, 0, 16)

inst_28:
    //destreg1: x28, destreg2,: x29 addrreg,: x30, loadreg,: x12 tempreg,: x2 storeval,: 69 sigptr, x1 immval1:0 immval2: 28
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x30, x12, x2, 69, x1, 0, 28)

inst_29:
    //destreg1: x28, destreg2,: x29 addrreg,: x31, loadreg,: x12 tempreg,: x2 storeval,: 35 sigptr, x1 immval1:0 immval2: 24
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x31, x12, x2, 35, x1, 0, 24)


# update the destination register
inst_31:
    //destreg1: x28, destreg2,: x2 addrreg,: x5 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x2, x5, x12, x9, 15, x1, 0, 12)

inst_32:
    //destreg1: x28, destreg2,: x3 addrreg,: x6 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 16
    TEST_LR_SC_DIFF_ADDR_OP(x28, x3, x6, x12, x9, 15, x1, 0, 16)

inst_33:
    //destreg1: x28, destreg2,: x4, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:4 immval2: 24
    TEST_LR_SC_DIFF_ADDR_OP(x28, x4, x2, x12, x9, 15, x1, 4, 24)

inst_34:
    //destreg1: x28, destreg2,: x5, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x5, x2, x12, x9, 15, x1, 0, 12)

inst_35:
    //destreg1: x28, destreg2,: x6, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:4 immval2: 28
    TEST_LR_SC_DIFF_ADDR_OP(x28, x6, x2, x12, x9, 15, x1, 4, 28)

inst_36:
    //destreg1: x28, destreg2,: x7, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:16 immval2: 4
    TEST_LR_SC_DIFF_ADDR_OP(x28, x7, x2, x12, x9, 15, x1, 4, 16)

inst_37:
    //destreg1: x28, destreg2,: x8, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:16 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x28, x8, x2, x12, x9, 15, x1, 0, 12)

inst_38:
    //destreg1: x28, destreg2,: x9, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:8 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x28, x9, x2, x12, x11, 15, x1, 0, 8)

inst_39:
    //destreg1: x28, destreg2,: x10, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x10, x2, x12, x9, 15, x1, 0, 12)

inst_40:
    //destreg1: x28, destreg2,: x11, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:4 immval2: 32
    TEST_LR_SC_DIFF_ADDR_OP(x28, x11, x2, x12, x9, 15, x1, 4, 32)

inst_41:
    //destreg1: x28, destreg2,: x12, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x12, x2, x11, x9, 15, x1, 0, 12)

inst_42:
    //destreg1: x28, destreg2,: x13, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x28, x13, x2, x12, x9, 15, x1, 0, 8)

inst_43:
    //destreg1: x28, destreg2,: x14, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x14, x2, x12, x9, 15, x1, 0, 12)

inst_44:
    //destreg1: x28, destreg2,: x15, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x15, x2, x12, x9, 15, x1, 0, 12)

inst_45:
    //destreg1: x28, destreg2,: x16, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x16, x2, x12, x9, 15, x1, 0, 12)

inst_46:
    //destreg1: x28, destreg2,: x17, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:4 immval2: 20
    TEST_LR_SC_DIFF_ADDR_OP(x28, x17, x2, x12, x9, 15, x1, 4, 20)

inst_47:
    //destreg1: x28, destreg2,: x18, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:20 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x28, x18, x2, x12, x9, 15, x1, 0, 20)

inst_48:
    //destreg1: x28, destreg2,: x19, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x19, x2, x12, x9, 15, x1, 0, 12)

inst_49:
    //destreg1: x28, destreg2,: x20, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x20, x2, x12, x9, 15, x1, 0, 12)

inst_50:
    //destreg1: x28, destreg2,: x21, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 16
    TEST_LR_SC_DIFF_ADDR_OP(x28, x21, x2, x12, x9, 15, x1, 0, 16)

inst_51:
    //destreg1: x28, destreg2,: x22, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:4 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x22, x2, x12, x9, 15, x1, 4, 12)

inst_52:
    //destreg1: x28, destreg2,: x23, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x23, x2, x12, x9, 15, x1, 0, 12)

inst_53:
    //destreg1: x28, destreg2,: x24, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x24, x2, x12, x9, 15, x1, 0, 12)

inst_54:
    //destreg1: x28, destreg2,: x25, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:8 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x28, x25, x2, x12, x9, 15, x1, 0, 8)

inst_55:
    //destreg1: x28, destreg2,: x26, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:12 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x28, x26, x2, x12, x9, 15, x1, 0, 12)

inst_56:
    //destreg1: x28, destreg2,: x27. addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x27, x2, x12, x9, 15, x1, 0, 12)

inst_57:
    //destreg1: x28, destreg2,: x28, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:16 immval2: 0
    TEST_LR_SC_DIFF_ADDR_OP(x18, x28, x2, x12, x9, 15, x1, 0, 16)

inst_58:
    //destreg1: x28, destreg2,: x29, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:20 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x29, x2, x12, x9, 15, x1, 8, 12)

inst_59:
    //destreg1: x28, destreg2,: x30 addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x30, x2, x12, x9, 15, x1, 0, 12)

inst_60:
    //destreg1: x28, destreg2,: x31, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x31, x2, x12, x9, 15, x1, 0, 12)

inst_61:
    //destreg1: x28, destreg2,: x3, addrreg,: x2 loadreg,: x12 tempreg,: x2 storeval,: 15 sigptr, x1 immval1:0 immval2: 12
    TEST_LR_SC_DIFF_ADDR_OP(x28, x3, x2, x12, x9, 15, x1, 0, 12)



#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
.word 0xffffffff
.word 0xffffffff
.word 0xffffffff
.word 0xffffffff
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
.word 0xffffffff
.word 0xffffffff
.word 0xffffffff
.word 0xffffffff


RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_x1_1:
    .fill 256*((XLEN/32)),4,0xdeadbeef


#ifdef rvtest_mtrap_routine
tsig_begin_canary:
CANARY;

mtrap_sigptr:
    .fill 64*XLEN/32,4,0xdeadbeef

tsig_end_canary:
CANARY;
#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*XLEN/32,4,0xdeadbeef

#endif


sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END

