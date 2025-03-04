
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.12.2
// timestamp : Wed Sep 25 04:44:02 2024 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /home/riscv/testing/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /home/riscv/testing/riscv-ctg/sample_cgfs/sample_cgfs_fext/RV64Zhinx/rv64h_fcvt.lu.h.cgf \
 \
//                  -- xlen 64  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the fcvt.lu.h instruction of the RISC-V RV64_Zfinx_Zhinx extension for the fcvt.lu.h_b27 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64I_Zfinx_Zhinx")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*Zfinx.*Zhinx.*);def TEST_CASE_1=True;",fcvt.lu.h_b27)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x11,test_dataset_0)
RVTEST_SIGBASE(x5,signature_x5_1)

inst_0:// rs1 != rd, rs1==x2, rd==x15,fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x2; dest:x15; op1val:0x7c01; valaddr_reg:x11;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x15, x2, dyn, 0, 0, x11, 0*FLEN/8, x20, x5, x8,FLREG)

inst_1:// rs1 == rd, rs1==x31, rd==x31,fs1 == 1 and fe1 == 0x1f and fm1 == 0x001 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.lu.h ; op1:x31; dest:x31; op1val:0xfc01; valaddr_reg:x11;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x31, x31, dyn, 0, 0, x11, 1*FLEN/8, x20, x5, x8,FLREG)

inst_2:// rs1==x21, rd==x14,fs1 == 0 and fe1 == 0x1f and fm1 == 0x155 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x21; dest:x14; op1val:0x7d55; valaddr_reg:x11;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x14, x21, dyn, 0, 0, x11, 2*FLEN/8, x20, x5, x8,FLREG)

inst_3:// rs1==x14, rd==x28,fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.lu.h ; op1:x14; dest:x28; op1val:0xfd55; valaddr_reg:x11;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x28, x14, dyn, 0, 0, x11, 3*FLEN/8, x20, x5, x8,FLREG)

inst_4:// rs1==x6, rd==x27,fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x6; dest:x27; op1val:0x7e01; valaddr_reg:x11;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x27, x6, dyn, 0, 0, x11, 4*FLEN/8, x20, x5, x8,FLREG)

inst_5:// rs1==x7, rd==x4,fs1 == 1 and fe1 == 0x1f and fm1 == 0x201 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.lu.h ; op1:x7; dest:x4; op1val:0xfe01; valaddr_reg:x11;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x4, x7, dyn, 0, 0, x11, 5*FLEN/8, x20, x5, x8,FLREG)

inst_6:// rs1==x19, rd==x1,fs1 == 0 and fe1 == 0x1f and fm1 == 0x255 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x19; dest:x1; op1val:0x7e55; valaddr_reg:x11;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x1, x19, dyn, 0, 0, x11, 6*FLEN/8, x20, x5, x8,FLREG)

inst_7:// rs1==x4, rd==x7,fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.lu.h ; op1:x4; dest:x7; op1val:0xfe55; valaddr_reg:x11;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x7, x4, dyn, 0, 0, x11, 7*FLEN/8, x20, x5, x8,FLREG)

inst_8:// rs1==x24, rd==x10,
/* opcode: fcvt.lu.h ; op1:x24; dest:x10; op1val:0x0; valaddr_reg:x11;
val_offset:8*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x10, x24, rne, 0, 0, x11, 8*FLEN/8, x20, x5, x8,FLREG)

inst_9:// rs1==x13, rd==x19,
/* opcode: fcvt.lu.h ; op1:x13; dest:x19; op1val:0x0; valaddr_reg:x11;
val_offset:9*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x19, x13, rne, 0, 0, x11, 9*FLEN/8, x20, x5, x8,FLREG)

inst_10:// rs1==x16, rd==x13,
/* opcode: fcvt.lu.h ; op1:x16; dest:x13; op1val:0x0; valaddr_reg:x11;
val_offset:10*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x13, x16, rne, 0, 0, x11, 10*FLEN/8, x20, x5, x8,FLREG)

inst_11:// rs1==x28, rd==x6,
/* opcode: fcvt.lu.h ; op1:x28; dest:x6; op1val:0x0; valaddr_reg:x11;
val_offset:11*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x6, x28, rne, 0, 0, x11, 11*FLEN/8, x20, x5, x8,FLREG)

inst_12:// rs1==x9, rd==x30,
/* opcode: fcvt.lu.h ; op1:x9; dest:x30; op1val:0x0; valaddr_reg:x11;
val_offset:12*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x30, x9, rne, 0, 0, x11, 12*FLEN/8, x20, x5, x8,FLREG)

inst_13:// rs1==x17, rd==x12,
/* opcode: fcvt.lu.h ; op1:x17; dest:x12; op1val:0x0; valaddr_reg:x11;
val_offset:13*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x12, x17, rne, 0, 0, x11, 13*FLEN/8, x20, x5, x8,FLREG)

inst_14:// rs1==x29, rd==x3,
/* opcode: fcvt.lu.h ; op1:x29; dest:x3; op1val:0x0; valaddr_reg:x11;
val_offset:14*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x3, x29, rne, 0, 0, x11, 14*FLEN/8, x20, x5, x8,FLREG)

inst_15:// rs1==x1, rd==x26,
/* opcode: fcvt.lu.h ; op1:x1; dest:x26; op1val:0x0; valaddr_reg:x11;
val_offset:15*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x26, x1, rne, 0, 0, x11, 15*FLEN/8, x20, x5, x8,FLREG)

inst_16:// rs1==x12, rd==x21,
/* opcode: fcvt.lu.h ; op1:x12; dest:x21; op1val:0x0; valaddr_reg:x11;
val_offset:16*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x21, x12, rne, 0, 0, x11, 16*FLEN/8, x20, x5, x8,FLREG)

inst_17:// rs1==x25, rd==x18,
/* opcode: fcvt.lu.h ; op1:x25; dest:x18; op1val:0x0; valaddr_reg:x11;
val_offset:17*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x18, x25, rne, 0, 0, x11, 17*FLEN/8, x20, x5, x8,FLREG)
RVTEST_VALBASEUPD(x6,test_dataset_1)

inst_18:// rs1==x18, rd==x25,
/* opcode: fcvt.lu.h ; op1:x18; dest:x25; op1val:0x0; valaddr_reg:x6;
val_offset:0*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x25, x18, rne, 0, 0, x6, 0*FLEN/8, x7, x5, x8,FLREG)

inst_19:// rs1==x20, rd==x23,
/* opcode: fcvt.lu.h ; op1:x20; dest:x23; op1val:0x0; valaddr_reg:x6;
val_offset:1*FLEN/8; rmval:rne; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x23, x20, rne, 0, 0, x6, 1*FLEN/8, x7, x5, x8,FLREG)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_20:// rs1==x23, rd==x0,
/* opcode: fcvt.lu.h ; op1:x23; dest:x0; op1val:0x0; valaddr_reg:x6;
val_offset:2*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x0, x23, rne, 0, 0, x6, 2*FLEN/8, x7, x1, x4,FLREG)

inst_21:// rs1==x8, rd==x11,
/* opcode: fcvt.lu.h ; op1:x8; dest:x11; op1val:0x0; valaddr_reg:x6;
val_offset:3*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x11, x8, rne, 0, 0, x6, 3*FLEN/8, x7, x1, x4,FLREG)

inst_22:// rs1==x15, rd==x2,
/* opcode: fcvt.lu.h ; op1:x15; dest:x2; op1val:0x0; valaddr_reg:x6;
val_offset:4*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x2, x15, rne, 0, 0, x6, 4*FLEN/8, x7, x1, x4,FLREG)

inst_23:// rs1==x30, rd==x20,
/* opcode: fcvt.lu.h ; op1:x30; dest:x20; op1val:0x0; valaddr_reg:x6;
val_offset:5*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x20, x30, rne, 0, 0, x6, 5*FLEN/8, x7, x1, x4,FLREG)

inst_24:// rs1==x26, rd==x22,
/* opcode: fcvt.lu.h ; op1:x26; dest:x22; op1val:0x0; valaddr_reg:x6;
val_offset:6*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x22, x26, rne, 0, 0, x6, 6*FLEN/8, x7, x1, x4,FLREG)

inst_25:// rs1==x10, rd==x8,
/* opcode: fcvt.lu.h ; op1:x10; dest:x8; op1val:0x0; valaddr_reg:x6;
val_offset:7*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x8, x10, rne, 0, 0, x6, 7*FLEN/8, x7, x1, x4,FLREG)

inst_26:// rs1==x0, rd==x16,
/* opcode: fcvt.lu.h ; op1:x0; dest:x16; op1val:0x0; valaddr_reg:x6;
val_offset:8*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x16, x0, rne, 0, 0, x6, 8*FLEN/8, x7, x1, x4,FLREG)

inst_27:// rs1==x27, rd==x5,
/* opcode: fcvt.lu.h ; op1:x27; dest:x5; op1val:0x0; valaddr_reg:x6;
val_offset:9*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x5, x27, rne, 0, 0, x6, 9*FLEN/8, x7, x1, x4,FLREG)

inst_28:// rs1==x11, rd==x29,
/* opcode: fcvt.lu.h ; op1:x11; dest:x29; op1val:0x0; valaddr_reg:x6;
val_offset:10*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x29, x11, rne, 0, 0, x6, 10*FLEN/8, x7, x1, x4,FLREG)

inst_29:// rs1==x3, rd==x24,
/* opcode: fcvt.lu.h ; op1:x3; dest:x24; op1val:0x0; valaddr_reg:x6;
val_offset:11*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x24, x3, rne, 0, 0, x6, 11*FLEN/8, x7, x1, x4,FLREG)

inst_30:// rs1==x5, rd==x9,
/* opcode: fcvt.lu.h ; op1:x5; dest:x9; op1val:0x0; valaddr_reg:x6;
val_offset:12*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x9, x5, rne, 0, 0, x6, 12*FLEN/8, x7, x1, x4,FLREG)

inst_31:// rs1==x22, rd==x17,
/* opcode: fcvt.lu.h ; op1:x22; dest:x17; op1val:0x0; valaddr_reg:x6;
val_offset:13*FLEN/8; rmval:rne; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x17, x22, rne, 0, 0, x6, 13*FLEN/8, x7, x1, x4,FLREG)
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
test_dataset_0:
NAN_BOXED(31745,32,FLEN)
NAN_BOXED(64513,16,FLEN)
NAN_BOXED(32085,32,FLEN)
NAN_BOXED(64853,16,FLEN)
NAN_BOXED(32257,32,FLEN)
NAN_BOXED(65025,16,FLEN)
NAN_BOXED(32341,32,FLEN)
NAN_BOXED(65109,16,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
test_dataset_1:
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x5_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x5_1:
    .fill 40*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_0:
    .fill 24*((SIGALIGN)/4),4,0xdeadbeef

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
