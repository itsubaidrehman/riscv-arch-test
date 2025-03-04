
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
// This assembly file tests the fcvt.lu.h instruction of the RISC-V RV64_Zfinx_Zhinx extension for the fcvt.lu.h_b23 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*I.*Zfinx.*Zhinx.*);def TEST_CASE_1=True;",fcvt.lu.h_b23)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x2,test_dataset_0)
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:// rs1 != rd, rs1==x7, rd==x23,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fc and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x7; dest:x23; op1val:0x77fc; valaddr_reg:x2;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x23, x7, dyn, 0, 0, x2, 0*FLEN/8, x13, x1, x22,FLREG)

inst_1:// rs1 == rd, rs1==x21, rd==x21,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fc and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x21; dest:x21; op1val:0x77fc; valaddr_reg:x2;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x21, x21, dyn, 32, 0, x2, 1*FLEN/8, x13, x1, x22,FLREG)

inst_2:// rs1==x12, rd==x5,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fc and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x12; dest:x5; op1val:0x77fc; valaddr_reg:x2;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x5, x12, dyn, 64, 0, x2, 2*FLEN/8, x13, x1, x22,FLREG)

inst_3:// rs1==x15, rd==x30,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fc and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x15; dest:x30; op1val:0x77fc; valaddr_reg:x2;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x30, x15, dyn, 96, 0, x2, 3*FLEN/8, x13, x1, x22,FLREG)

inst_4:// rs1==x19, rd==x4,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fc and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x19; dest:x4; op1val:0x77fc; valaddr_reg:x2;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x4, x19, dyn, 128, 0, x2, 4*FLEN/8, x13, x1, x22,FLREG)

inst_5:// rs1==x14, rd==x20,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fd and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x14; dest:x20; op1val:0x77fd; valaddr_reg:x2;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x20, x14, dyn, 0, 0, x2, 5*FLEN/8, x13, x1, x22,FLREG)

inst_6:// rs1==x18, rd==x31,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fd and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x18; dest:x31; op1val:0x77fd; valaddr_reg:x2;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x31, x18, dyn, 32, 0, x2, 6*FLEN/8, x13, x1, x22,FLREG)

inst_7:// rs1==x28, rd==x17,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fd and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x28; dest:x17; op1val:0x77fd; valaddr_reg:x2;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x17, x28, dyn, 64, 0, x2, 7*FLEN/8, x13, x1, x22,FLREG)

inst_8:// rs1==x31, rd==x25,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fd and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x31; dest:x25; op1val:0x77fd; valaddr_reg:x2;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x25, x31, dyn, 96, 0, x2, 8*FLEN/8, x13, x1, x22,FLREG)

inst_9:// rs1==x9, rd==x8,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fd and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x9; dest:x8; op1val:0x77fd; valaddr_reg:x2;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x8, x9, dyn, 128, 0, x2, 9*FLEN/8, x13, x1, x22,FLREG)

inst_10:// rs1==x6, rd==x12,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fe and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x6; dest:x12; op1val:0x77fe; valaddr_reg:x2;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x12, x6, dyn, 0, 0, x2, 10*FLEN/8, x13, x1, x22,FLREG)

inst_11:// rs1==x8, rd==x11,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fe and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x8; dest:x11; op1val:0x77fe; valaddr_reg:x2;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x11, x8, dyn, 32, 0, x2, 11*FLEN/8, x13, x1, x22,FLREG)

inst_12:// rs1==x26, rd==x18,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fe and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x26; dest:x18; op1val:0x77fe; valaddr_reg:x2;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x18, x26, dyn, 64, 0, x2, 12*FLEN/8, x13, x1, x22,FLREG)

inst_13:// rs1==x23, rd==x16,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fe and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x23; dest:x16; op1val:0x77fe; valaddr_reg:x2;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x16, x23, dyn, 96, 0, x2, 13*FLEN/8, x13, x1, x22,FLREG)

inst_14:// rs1==x3, rd==x15,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3fe and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x3; dest:x15; op1val:0x77fe; valaddr_reg:x2;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x15, x3, dyn, 128, 0, x2, 14*FLEN/8, x13, x1, x22,FLREG)

inst_15:// rs1==x10, rd==x27,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3ff and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x10; dest:x27; op1val:0x77ff; valaddr_reg:x2;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x27, x10, dyn, 0, 0, x2, 15*FLEN/8, x13, x1, x22,FLREG)
RVTEST_VALBASEUPD(x15,test_dataset_1)

inst_16:// rs1==x13, rd==x2,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3ff and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x13; dest:x2; op1val:0x77ff; valaddr_reg:x15;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x22;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x2, x13, dyn, 32, 0, x15, 0*FLEN/8, x18, x1, x22,FLREG)
RVTEST_SIGBASE(x8,signature_x8_0)

inst_17:// rs1==x11, rd==x26,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3ff and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x11; dest:x26; op1val:0x77ff; valaddr_reg:x15;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x26, x11, dyn, 64, 0, x15, 1*FLEN/8, x18, x8, x12,FLREG)

inst_18:// rs1==x20, rd==x19,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3ff and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x20; dest:x19; op1val:0x77ff; valaddr_reg:x15;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x19, x20, dyn, 96, 0, x15, 2*FLEN/8, x18, x8, x12,FLREG)

inst_19:// rs1==x30, rd==x10,fs1 == 0 and fe1 == 0x1d and fm1 == 0x3ff and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x10; op1val:0x77ff; valaddr_reg:x15;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x10, x30, dyn, 128, 0, x15, 3*FLEN/8, x18, x8, x12,FLREG)

inst_20:// rs1==x16, rd==x9,fs1 == 0 and fe1 == 0x1e and fm1 == 0x000 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x16; dest:x9; op1val:0x7800; valaddr_reg:x15;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x9, x16, dyn, 0, 0, x15, 4*FLEN/8, x18, x8, x12,FLREG)

inst_21:// rs1==x27, rd==x1,fs1 == 0 and fe1 == 0x1e and fm1 == 0x000 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x27; dest:x1; op1val:0x7800; valaddr_reg:x15;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x1, x27, dyn, 32, 0, x15, 5*FLEN/8, x18, x8, x12,FLREG)

inst_22:// rs1==x1, rd==x14,fs1 == 0 and fe1 == 0x1e and fm1 == 0x000 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x1; dest:x14; op1val:0x7800; valaddr_reg:x15;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x14, x1, dyn, 64, 0, x15, 6*FLEN/8, x18, x8, x12,FLREG)

inst_23:// rs1==x2, rd==x7,fs1 == 0 and fe1 == 0x1e and fm1 == 0x000 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x2; dest:x7; op1val:0x7800; valaddr_reg:x15;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x7, x2, dyn, 96, 0, x15, 7*FLEN/8, x18, x8, x12,FLREG)

inst_24:// rs1==x25, rd==x6,fs1 == 0 and fe1 == 0x1e and fm1 == 0x000 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x25; dest:x6; op1val:0x7800; valaddr_reg:x15;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x6, x25, dyn, 128, 0, x15, 8*FLEN/8, x18, x8, x12,FLREG)

inst_25:// rs1==x4, rd==x0,fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x4; dest:x0; op1val:0x7801; valaddr_reg:x15;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x0, x4, dyn, 0, 0, x15, 9*FLEN/8, x18, x8, x12,FLREG)

inst_26:// rs1==x0, rd==x13,fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x0; dest:x13; op1val:0x0; valaddr_reg:x15;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x13, x0, dyn, 32, 0, x15, 10*FLEN/8, x18, x8, x12,FLREG)

inst_27:// rs1==x24, rd==x3,fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x24; dest:x3; op1val:0x7801; valaddr_reg:x15;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x3, x24, dyn, 64, 0, x15, 11*FLEN/8, x18, x8, x12,FLREG)

inst_28:// rs1==x29, rd==x22,fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x29; dest:x22; op1val:0x7801; valaddr_reg:x15;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x22, x29, dyn, 96, 0, x15, 12*FLEN/8, x18, x8, x12,FLREG)

inst_29:// rs1==x22, rd==x24,fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x22; dest:x24; op1val:0x7801; valaddr_reg:x15;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x24, x22, dyn, 128, 0, x15, 13*FLEN/8, x18, x8, x12,FLREG)

inst_30:// rs1==x17, rd==x28,fs1 == 0 and fe1 == 0x1e and fm1 == 0x002 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x17; dest:x28; op1val:0x7802; valaddr_reg:x15;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x28, x17, dyn, 0, 0, x15, 14*FLEN/8, x18, x8, x12,FLREG)

inst_31:// rs1==x5, rd==x29,fs1 == 0 and fe1 == 0x1e and fm1 == 0x002 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x5; dest:x29; op1val:0x7802; valaddr_reg:x15;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x29, x5, dyn, 32, 0, x15, 15*FLEN/8, x18, x8, x12,FLREG)
RVTEST_VALBASEUPD(x1,test_dataset_2)

inst_32:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x002 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7802; valaddr_reg:x1;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 64, 0, x1, 0*FLEN/8, x2, x8, x12,FLREG)

inst_33:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x002 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7802; valaddr_reg:x1;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 96, 0, x1, 1*FLEN/8, x2, x8, x12,FLREG)

inst_34:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x002 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7802; valaddr_reg:x1;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 128, 0, x1, 2*FLEN/8, x2, x8, x12,FLREG)

inst_35:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x003 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7803; valaddr_reg:x1;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 0, 0, x1, 3*FLEN/8, x2, x8, x12,FLREG)

inst_36:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x003 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7803; valaddr_reg:x1;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 32, 0, x1, 4*FLEN/8, x2, x8, x12,FLREG)

inst_37:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x003 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7803; valaddr_reg:x1;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 64, 0, x1, 5*FLEN/8, x2, x8, x12,FLREG)

inst_38:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x003 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7803; valaddr_reg:x1;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 96, 0, x1, 6*FLEN/8, x2, x8, x12,FLREG)

inst_39:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x003 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7803; valaddr_reg:x1;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 128, 0, x1, 7*FLEN/8, x2, x8, x12,FLREG)

inst_40:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x004 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7804; valaddr_reg:x1;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 0, 0, x1, 8*FLEN/8, x2, x8, x12,FLREG)

inst_41:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x004 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7804; valaddr_reg:x1;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 32, 0, x1, 9*FLEN/8, x2, x8, x12,FLREG)

inst_42:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x004 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7804; valaddr_reg:x1;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:64*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 64, 0, x1, 10*FLEN/8, x2, x8, x12,FLREG)

inst_43:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x004 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7804; valaddr_reg:x1;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:96*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 96, 0, x1, 11*FLEN/8, x2, x8, x12,FLREG)

inst_44:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x004 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7804; valaddr_reg:x1;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:128*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 128, 0, x1, 12*FLEN/8, x2, x8, x12,FLREG)

inst_45:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7801; valaddr_reg:x1;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:0*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 0, 0, x1, 13*FLEN/8, x2, x8, x12,FLREG)

inst_46:// fs1 == 0 and fe1 == 0x1e and fm1 == 0x001 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fcvt.lu.h ; op1:x30; dest:x31; op1val:0x7801; valaddr_reg:x1;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x12;
fcsr_val:32*/
TEST_FPID_OP(fcvt.lu.h, x31, x30, dyn, 32, 0, x1, 14*FLEN/8, x2, x8, x12,FLREG)
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
NAN_BOXED(30716,32,FLEN)
NAN_BOXED(30716,32,FLEN)
NAN_BOXED(30716,32,FLEN)
NAN_BOXED(30716,32,FLEN)
NAN_BOXED(30716,32,FLEN)
NAN_BOXED(30717,32,FLEN)
NAN_BOXED(30717,32,FLEN)
NAN_BOXED(30717,32,FLEN)
NAN_BOXED(30717,32,FLEN)
NAN_BOXED(30717,32,FLEN)
NAN_BOXED(30718,32,FLEN)
NAN_BOXED(30718,32,FLEN)
NAN_BOXED(30718,32,FLEN)
NAN_BOXED(30718,32,FLEN)
NAN_BOXED(30718,32,FLEN)
NAN_BOXED(30719,32,FLEN)
test_dataset_1:
NAN_BOXED(30719,32,FLEN)
NAN_BOXED(30719,32,FLEN)
NAN_BOXED(30719,32,FLEN)
NAN_BOXED(30719,32,FLEN)
NAN_BOXED(30720,32,FLEN)
NAN_BOXED(30720,32,FLEN)
NAN_BOXED(30720,32,FLEN)
NAN_BOXED(30720,32,FLEN)
NAN_BOXED(30720,32,FLEN)
NAN_BOXED(30721,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(30721,32,FLEN)
NAN_BOXED(30721,32,FLEN)
NAN_BOXED(30721,32,FLEN)
NAN_BOXED(30722,32,FLEN)
NAN_BOXED(30722,32,FLEN)
test_dataset_2:
NAN_BOXED(30722,16,FLEN)
NAN_BOXED(30722,16,FLEN)
NAN_BOXED(30722,16,FLEN)
NAN_BOXED(30723,16,FLEN)
NAN_BOXED(30723,16,FLEN)
NAN_BOXED(30723,16,FLEN)
NAN_BOXED(30723,16,FLEN)
NAN_BOXED(30723,16,FLEN)
NAN_BOXED(30724,16,FLEN)
NAN_BOXED(30724,16,FLEN)
NAN_BOXED(30724,16,FLEN)
NAN_BOXED(30724,16,FLEN)
NAN_BOXED(30724,16,FLEN)
NAN_BOXED(30721,16,FLEN)
NAN_BOXED(30721,16,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x1_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_1:
    .fill 34*((SIGALIGN)/4),4,0xdeadbeef


signature_x8_0:
    .fill 60*((SIGALIGN)/4),4,0xdeadbeef

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
