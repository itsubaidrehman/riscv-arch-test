
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.12.2
// timestamp : Wed Sep 25 06:00:03 2024 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /home/riscv/testing/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /home/riscv/testing/riscv-ctg/sample_cgfs/sample_cgfs_fext/RV32Zhinx/rv32h_fcvt.w.h.cgf \
 \
//                  -- xlen 32  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the fcvt.w.h instruction of the RISC-V RV32_Zfinx_Zhinx,RV64_Zfinx_Zhinx extension for the fcvt.w.h_b29 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zfinx_Zhinx,RV64I_Zfinx_Zhinx")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*Zfinx.*Zhinx.*);def TEST_CASE_1=True;",fcvt.w.h_b29)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x12,test_dataset_0)
RVTEST_SIGBASE(x2,signature_x2_1)

inst_0:// rs1==x13, rd==x15,fs1 == 0 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x13; dest:x15; op1val:0x3248; valaddr_reg:x12;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x15, x13, dyn, 0, 0, x12, 0*FLEN/8, x24, x2, x17,FLREG)

inst_1:// rs1==x18, rd==x5,fs1 == 0 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x18; dest:x5; op1val:0x3248; valaddr_reg:x12;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x5, x18, dyn, 32, 0, x12, 1*FLEN/8, x24, x2, x17,FLREG)

inst_2:// rs1==x27, rd==x22,fs1 == 0 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x27; dest:x22; op1val:0x3248; valaddr_reg:x12;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x22, x27, dyn, 64, 0, x12, 2*FLEN/8, x24, x2, x17,FLREG)

inst_3:// rs1==x19, rd==x4,fs1 == 0 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x19; dest:x4; op1val:0x3248; valaddr_reg:x12;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x4, x19, dyn, 96, 0, x12, 3*FLEN/8, x24, x2, x17,FLREG)

inst_4:// rs1==x6, rd==x29,fs1 == 0 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x6; dest:x29; op1val:0x3248; valaddr_reg:x12;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x29, x6, dyn, 128, 0, x12, 4*FLEN/8, x24, x2, x17,FLREG)

inst_5:// rs1==x16, rd==x14,fs1 == 0 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x16; dest:x14; op1val:0x3249; valaddr_reg:x12;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x14, x16, dyn, 0, 0, x12, 5*FLEN/8, x24, x2, x17,FLREG)

inst_6:// rs1==x3, rd==x1,fs1 == 0 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x3; dest:x1; op1val:0x3249; valaddr_reg:x12;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x1, x3, dyn, 32, 0, x12, 6*FLEN/8, x24, x2, x17,FLREG)

inst_7:// rs1==x15, rd==x11,fs1 == 0 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x15; dest:x11; op1val:0x3249; valaddr_reg:x12;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x11, x15, dyn, 64, 0, x12, 7*FLEN/8, x24, x2, x17,FLREG)

inst_8:// rs1==x9, rd==x23,fs1 == 0 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x9; dest:x23; op1val:0x3249; valaddr_reg:x12;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x23, x9, dyn, 96, 0, x12, 8*FLEN/8, x24, x2, x17,FLREG)

inst_9:// rs1==x8, rd==x3,fs1 == 0 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x8; dest:x3; op1val:0x3249; valaddr_reg:x12;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x3, x8, dyn, 128, 0, x12, 9*FLEN/8, x24, x2, x17,FLREG)

inst_10:// rs1==x5, rd==x21,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x5; dest:x21; op1val:0x324a; valaddr_reg:x12;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x21, x5, dyn, 0, 0, x12, 10*FLEN/8, x24, x2, x17,FLREG)

inst_11:// rs1==x11, rd==x27,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x11; dest:x27; op1val:0x324a; valaddr_reg:x12;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x27, x11, dyn, 32, 0, x12, 11*FLEN/8, x24, x2, x17,FLREG)

inst_12:// rs1==x10, rd==x9,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x10; dest:x9; op1val:0x324a; valaddr_reg:x12;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x9, x10, dyn, 64, 0, x12, 12*FLEN/8, x24, x2, x17,FLREG)

inst_13:// rs1==x26, rd==x16,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x26; dest:x16; op1val:0x324a; valaddr_reg:x12;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x16, x26, dyn, 96, 0, x12, 13*FLEN/8, x24, x2, x17,FLREG)

inst_14:// rs1==x7, rd==x28,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x7; dest:x28; op1val:0x324a; valaddr_reg:x12;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x28, x7, dyn, 128, 0, x12, 14*FLEN/8, x24, x2, x17,FLREG)

inst_15:// rs1==x28, rd==x20,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x28; dest:x20; op1val:0x324b; valaddr_reg:x12;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x20, x28, dyn, 0, 0, x12, 15*FLEN/8, x24, x2, x17,FLREG)
RVTEST_VALBASEUPD(x5,test_dataset_1)

inst_16:// rs1==x0, rd==x19,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x0; dest:x19; op1val:0x0; valaddr_reg:x5;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x19, x0, dyn, 32, 0, x5, 0*FLEN/8, x9, x2, x17,FLREG)

inst_17:// rs1==x14, rd==x30,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x14; dest:x30; op1val:0x324b; valaddr_reg:x5;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x30, x14, dyn, 64, 0, x5, 1*FLEN/8, x9, x2, x17,FLREG)

inst_18:// rs1==x4, rd==x12,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x4; dest:x12; op1val:0x324b; valaddr_reg:x5;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x17;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x12, x4, dyn, 96, 0, x5, 2*FLEN/8, x9, x2, x17,FLREG)

inst_19:// rs1==x23, rd==x31,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x23; dest:x31; op1val:0x324b; valaddr_reg:x5;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x23, dyn, 128, 0, x5, 3*FLEN/8, x9, x2, x4,FLREG)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_20:// rs1==x31, rd==x24,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x31; dest:x24; op1val:0x324c; valaddr_reg:x5;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x24, x31, dyn, 0, 0, x5, 4*FLEN/8, x9, x3, x4,FLREG)

inst_21:// rs1==x1, rd==x7,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x1; dest:x7; op1val:0x324c; valaddr_reg:x5;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x7, x1, dyn, 32, 0, x5, 5*FLEN/8, x9, x3, x4,FLREG)

inst_22:// rs1==x22, rd==x25,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x22; dest:x25; op1val:0x324c; valaddr_reg:x5;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x25, x22, dyn, 64, 0, x5, 6*FLEN/8, x9, x3, x4,FLREG)

inst_23:// rs1==x21, rd==x13,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x21; dest:x13; op1val:0x324c; valaddr_reg:x5;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x13, x21, dyn, 96, 0, x5, 7*FLEN/8, x9, x3, x4,FLREG)

inst_24:// rs1==x20, rd==x0,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x20; dest:x0; op1val:0x324c; valaddr_reg:x5;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x0, x20, dyn, 128, 0, x5, 8*FLEN/8, x9, x3, x4,FLREG)

inst_25:// rs1==x2, rd==x8,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x2; dest:x8; op1val:0x324d; valaddr_reg:x5;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x8, x2, dyn, 0, 0, x5, 9*FLEN/8, x9, x3, x4,FLREG)

inst_26:// rs1==x25, rd==x17,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x25; dest:x17; op1val:0x324d; valaddr_reg:x5;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x17, x25, dyn, 32, 0, x5, 10*FLEN/8, x9, x3, x4,FLREG)

inst_27:// rs1==x30, rd==x26,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x26; op1val:0x324d; valaddr_reg:x5;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x26, x30, dyn, 64, 0, x5, 11*FLEN/8, x9, x3, x4,FLREG)

inst_28:// rs1==x24, rd==x2,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x24; dest:x2; op1val:0x324d; valaddr_reg:x5;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x2, x24, dyn, 96, 0, x5, 12*FLEN/8, x9, x3, x4,FLREG)

inst_29:// rs1==x12, rd==x10,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x12; dest:x10; op1val:0x324d; valaddr_reg:x5;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x10, x12, dyn, 128, 0, x5, 13*FLEN/8, x9, x3, x4,FLREG)

inst_30:// rs1==x29, rd==x6,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x29; dest:x6; op1val:0x324e; valaddr_reg:x5;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x6, x29, dyn, 0, 0, x5, 14*FLEN/8, x9, x3, x4,FLREG)

inst_31:// rs1==x17, rd==x18,fs1 == 0 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x17; dest:x18; op1val:0x324e; valaddr_reg:x5;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x18, x17, dyn, 32, 0, x5, 15*FLEN/8, x9, x3, x4,FLREG)

inst_32:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324e; valaddr_reg:x5;
val_offset:16*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 16*FLEN/8, x9, x3, x4,FLREG)

inst_33:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324e; valaddr_reg:x5;
val_offset:17*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 17*FLEN/8, x9, x3, x4,FLREG)

inst_34:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324e; valaddr_reg:x5;
val_offset:18*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 18*FLEN/8, x9, x3, x4,FLREG)

inst_35:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324f; valaddr_reg:x5;
val_offset:19*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 19*FLEN/8, x9, x3, x4,FLREG)

inst_36:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324f; valaddr_reg:x5;
val_offset:20*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 20*FLEN/8, x9, x3, x4,FLREG)

inst_37:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324f; valaddr_reg:x5;
val_offset:21*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 21*FLEN/8, x9, x3, x4,FLREG)

inst_38:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324f; valaddr_reg:x5;
val_offset:22*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 22*FLEN/8, x9, x3, x4,FLREG)

inst_39:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324f; valaddr_reg:x5;
val_offset:23*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 23*FLEN/8, x9, x3, x4,FLREG)

inst_40:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb248; valaddr_reg:x5;
val_offset:24*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 24*FLEN/8, x9, x3, x4,FLREG)

inst_41:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb248; valaddr_reg:x5;
val_offset:25*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 25*FLEN/8, x9, x3, x4,FLREG)

inst_42:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb248; valaddr_reg:x5;
val_offset:26*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 26*FLEN/8, x9, x3, x4,FLREG)

inst_43:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb248; valaddr_reg:x5;
val_offset:27*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 27*FLEN/8, x9, x3, x4,FLREG)

inst_44:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x248 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb248; valaddr_reg:x5;
val_offset:28*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 28*FLEN/8, x9, x3, x4,FLREG)

inst_45:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb249; valaddr_reg:x5;
val_offset:29*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 29*FLEN/8, x9, x3, x4,FLREG)

inst_46:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb249; valaddr_reg:x5;
val_offset:30*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 30*FLEN/8, x9, x3, x4,FLREG)

inst_47:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb249; valaddr_reg:x5;
val_offset:31*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 31*FLEN/8, x9, x3, x4,FLREG)

inst_48:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb249; valaddr_reg:x5;
val_offset:32*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 32*FLEN/8, x9, x3, x4,FLREG)

inst_49:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x249 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb249; valaddr_reg:x5;
val_offset:33*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 33*FLEN/8, x9, x3, x4,FLREG)

inst_50:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24a; valaddr_reg:x5;
val_offset:34*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 34*FLEN/8, x9, x3, x4,FLREG)

inst_51:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24a; valaddr_reg:x5;
val_offset:35*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 35*FLEN/8, x9, x3, x4,FLREG)

inst_52:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24a; valaddr_reg:x5;
val_offset:36*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 36*FLEN/8, x9, x3, x4,FLREG)

inst_53:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24a; valaddr_reg:x5;
val_offset:37*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 37*FLEN/8, x9, x3, x4,FLREG)

inst_54:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24a and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24a; valaddr_reg:x5;
val_offset:38*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 38*FLEN/8, x9, x3, x4,FLREG)

inst_55:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24b; valaddr_reg:x5;
val_offset:39*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 39*FLEN/8, x9, x3, x4,FLREG)

inst_56:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24b; valaddr_reg:x5;
val_offset:40*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 40*FLEN/8, x9, x3, x4,FLREG)

inst_57:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24b; valaddr_reg:x5;
val_offset:41*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 41*FLEN/8, x9, x3, x4,FLREG)

inst_58:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24b; valaddr_reg:x5;
val_offset:42*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 42*FLEN/8, x9, x3, x4,FLREG)

inst_59:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24b; valaddr_reg:x5;
val_offset:43*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 43*FLEN/8, x9, x3, x4,FLREG)

inst_60:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24c; valaddr_reg:x5;
val_offset:44*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 44*FLEN/8, x9, x3, x4,FLREG)

inst_61:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24c; valaddr_reg:x5;
val_offset:45*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 45*FLEN/8, x9, x3, x4,FLREG)

inst_62:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24c; valaddr_reg:x5;
val_offset:46*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 46*FLEN/8, x9, x3, x4,FLREG)

inst_63:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24c; valaddr_reg:x5;
val_offset:47*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 47*FLEN/8, x9, x3, x4,FLREG)

inst_64:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24c; valaddr_reg:x5;
val_offset:48*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 48*FLEN/8, x9, x3, x4,FLREG)

inst_65:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24d; valaddr_reg:x5;
val_offset:49*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 49*FLEN/8, x9, x3, x4,FLREG)

inst_66:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24d; valaddr_reg:x5;
val_offset:50*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 50*FLEN/8, x9, x3, x4,FLREG)

inst_67:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24d; valaddr_reg:x5;
val_offset:51*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 51*FLEN/8, x9, x3, x4,FLREG)

inst_68:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24d; valaddr_reg:x5;
val_offset:52*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 52*FLEN/8, x9, x3, x4,FLREG)

inst_69:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24d and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24d; valaddr_reg:x5;
val_offset:53*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 53*FLEN/8, x9, x3, x4,FLREG)

inst_70:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24e; valaddr_reg:x5;
val_offset:54*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 54*FLEN/8, x9, x3, x4,FLREG)

inst_71:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24e; valaddr_reg:x5;
val_offset:55*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 55*FLEN/8, x9, x3, x4,FLREG)

inst_72:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24e; valaddr_reg:x5;
val_offset:56*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 56*FLEN/8, x9, x3, x4,FLREG)

inst_73:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24e; valaddr_reg:x5;
val_offset:57*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 57*FLEN/8, x9, x3, x4,FLREG)

inst_74:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24e and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24e; valaddr_reg:x5;
val_offset:58*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 58*FLEN/8, x9, x3, x4,FLREG)

inst_75:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24f; valaddr_reg:x5;
val_offset:59*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:0*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 0, 0, x5, 59*FLEN/8, x9, x3, x4,FLREG)

inst_76:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24f; valaddr_reg:x5;
val_offset:60*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 60*FLEN/8, x9, x3, x4,FLREG)

inst_77:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24f; valaddr_reg:x5;
val_offset:61*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:64*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 64, 0, x5, 61*FLEN/8, x9, x3, x4,FLREG)

inst_78:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24f; valaddr_reg:x5;
val_offset:62*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:96*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 96, 0, x5, 62*FLEN/8, x9, x3, x4,FLREG)

inst_79:// fs1 == 1 and fe1 == 0x0c and fm1 == 0x24f and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0xffff  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0xb24f; valaddr_reg:x5;
val_offset:63*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 63*FLEN/8, x9, x3, x4,FLREG)

inst_80:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24b and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324b; valaddr_reg:x5;
val_offset:64*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:32*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 32, 0, x5, 64*FLEN/8, x9, x3, x4,FLREG)

inst_81:// fs1 == 0 and fe1 == 0x0c and fm1 == 0x24c and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.w.h ; op1:x30; dest:x31; op1val:0x324c; valaddr_reg:x5;
val_offset:65*FLEN/8; rmval:dyn; correctval:??; testreg:x4;
fcsr_val:128*/
TEST_FPID_OP(fcvt.w.h, x31, x30, dyn, 128, 0, x5, 65*FLEN/8, x9, x3, x4,FLREG)
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
NAN_BOXED(12872,32,FLEN)
NAN_BOXED(12872,32,FLEN)
NAN_BOXED(12872,32,FLEN)
NAN_BOXED(12872,32,FLEN)
NAN_BOXED(12872,32,FLEN)
NAN_BOXED(12873,32,FLEN)
NAN_BOXED(12873,32,FLEN)
NAN_BOXED(12873,32,FLEN)
NAN_BOXED(12873,32,FLEN)
NAN_BOXED(12873,32,FLEN)
NAN_BOXED(12874,32,FLEN)
NAN_BOXED(12874,32,FLEN)
NAN_BOXED(12874,32,FLEN)
NAN_BOXED(12874,32,FLEN)
NAN_BOXED(12874,32,FLEN)
NAN_BOXED(12875,32,FLEN)
test_dataset_1:
NAN_BOXED(0,16,FLEN)
NAN_BOXED(12875,16,FLEN)
NAN_BOXED(12875,16,FLEN)
NAN_BOXED(12875,16,FLEN)
NAN_BOXED(12876,16,FLEN)
NAN_BOXED(12876,16,FLEN)
NAN_BOXED(12876,16,FLEN)
NAN_BOXED(12876,16,FLEN)
NAN_BOXED(12876,16,FLEN)
NAN_BOXED(12877,16,FLEN)
NAN_BOXED(12877,16,FLEN)
NAN_BOXED(12877,16,FLEN)
NAN_BOXED(12877,16,FLEN)
NAN_BOXED(12877,16,FLEN)
NAN_BOXED(12878,16,FLEN)
NAN_BOXED(12878,16,FLEN)
NAN_BOXED(12878,16,FLEN)
NAN_BOXED(12878,16,FLEN)
NAN_BOXED(12878,16,FLEN)
NAN_BOXED(12879,16,FLEN)
NAN_BOXED(12879,16,FLEN)
NAN_BOXED(12879,16,FLEN)
NAN_BOXED(12879,16,FLEN)
NAN_BOXED(12879,16,FLEN)
NAN_BOXED(45640,16,FLEN)
NAN_BOXED(45640,16,FLEN)
NAN_BOXED(45640,16,FLEN)
NAN_BOXED(45640,16,FLEN)
NAN_BOXED(45640,16,FLEN)
NAN_BOXED(45641,16,FLEN)
NAN_BOXED(45641,16,FLEN)
NAN_BOXED(45641,16,FLEN)
NAN_BOXED(45641,16,FLEN)
NAN_BOXED(45641,16,FLEN)
NAN_BOXED(45642,16,FLEN)
NAN_BOXED(45642,16,FLEN)
NAN_BOXED(45642,16,FLEN)
NAN_BOXED(45642,16,FLEN)
NAN_BOXED(45642,16,FLEN)
NAN_BOXED(45643,16,FLEN)
NAN_BOXED(45643,16,FLEN)
NAN_BOXED(45643,16,FLEN)
NAN_BOXED(45643,16,FLEN)
NAN_BOXED(45643,16,FLEN)
NAN_BOXED(45644,16,FLEN)
NAN_BOXED(45644,16,FLEN)
NAN_BOXED(45644,16,FLEN)
NAN_BOXED(45644,16,FLEN)
NAN_BOXED(45644,16,FLEN)
NAN_BOXED(45645,16,FLEN)
NAN_BOXED(45645,16,FLEN)
NAN_BOXED(45645,16,FLEN)
NAN_BOXED(45645,16,FLEN)
NAN_BOXED(45645,16,FLEN)
NAN_BOXED(45646,16,FLEN)
NAN_BOXED(45646,16,FLEN)
NAN_BOXED(45646,16,FLEN)
NAN_BOXED(45646,16,FLEN)
NAN_BOXED(45646,16,FLEN)
NAN_BOXED(45647,16,FLEN)
NAN_BOXED(45647,16,FLEN)
NAN_BOXED(45647,16,FLEN)
NAN_BOXED(45647,16,FLEN)
NAN_BOXED(45647,16,FLEN)
NAN_BOXED(12875,16,FLEN)
NAN_BOXED(12876,16,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x2_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x2_1:
    .fill 40*((SIGALIGN)/4),4,0xdeadbeef


signature_x3_0:
    .fill 124*((SIGALIGN)/4),4,0xdeadbeef

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
