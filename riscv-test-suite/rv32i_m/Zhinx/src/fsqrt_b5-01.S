
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.12.2
// timestamp : Wed Sep 25 05:27:49 2024 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /home/riscv/testing/riscv-ctg/sample_cgfs/dataset.cgf \
//                  --cgf /home/riscv/testing/riscv-ctg/sample_cgfs/sample_cgfs_fext/RV32Zhinx/rv32h_fsqrt.cgf \
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
// This assembly file tests the fsqrt.h instruction of the RISC-V RV32_Zfinx_Zhinx,RV64_Zfinx_Zhinx extension for the fsqrt_b5 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*I.*Zfinx.*Zhinx.*);def TEST_CASE_1=True;",fsqrt_b5)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x1,test_dataset_0)
RVTEST_SIGBASE(x6,signature_x6_1)

inst_0:
// rs1 == rd, rs1==x5, rd==x5,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x5; dest:x5; op1val:0x0; valaddr_reg:x1;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x5, x5, dyn, 0, 0, x1, 0*FLEN/8, x19, x6, x8)

inst_1:
// rs1 != rd, rs1==x28, rd==x25,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x28; dest:x25; op1val:0x0; valaddr_reg:x1;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 32 */
TEST_FPSR_OP(fsqrt.h, x25, x28, dyn, 32, 0, x1, 1*FLEN/8, x19, x6, x8)

inst_2:
// rs1==x14, rd==x2,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x14; dest:x2; op1val:0x0; valaddr_reg:x1;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 64 */
TEST_FPSR_OP(fsqrt.h, x2, x14, dyn, 64, 0, x1, 2*FLEN/8, x19, x6, x8)

inst_3:
// rs1==x10, rd==x13,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x10; dest:x13; op1val:0x0; valaddr_reg:x1;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 96 */
TEST_FPSR_OP(fsqrt.h, x13, x10, dyn, 96, 0, x1, 3*FLEN/8, x19, x6, x8)

inst_4:
// rs1==x16, rd==x31,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x16; dest:x31; op1val:0x0; valaddr_reg:x1;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 128 */
TEST_FPSR_OP(fsqrt.h, x31, x16, dyn, 128, 0, x1, 4*FLEN/8, x19, x6, x8)

inst_5:
// rs1==x9, rd==x7,fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x9; dest:x7; op1val:0x1; valaddr_reg:x1;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x7, x9, dyn, 0, 0, x1, 5*FLEN/8, x19, x6, x8)

inst_6:
// rs1==x27, rd==x28,fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x27; dest:x28; op1val:0x1; valaddr_reg:x1;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 32 */
TEST_FPSR_OP(fsqrt.h, x28, x27, dyn, 32, 0, x1, 6*FLEN/8, x19, x6, x8)

inst_7:
// rs1==x7, rd==x12,fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x7; dest:x12; op1val:0x1; valaddr_reg:x1;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 64 */
TEST_FPSR_OP(fsqrt.h, x12, x7, dyn, 64, 0, x1, 7*FLEN/8, x19, x6, x8)

inst_8:
// rs1==x12, rd==x3,fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x12; dest:x3; op1val:0x1; valaddr_reg:x1;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 96 */
TEST_FPSR_OP(fsqrt.h, x3, x12, dyn, 96, 0, x1, 8*FLEN/8, x19, x6, x8)

inst_9:
// rs1==x23, rd==x21,fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x23; dest:x21; op1val:0x1; valaddr_reg:x1;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 128 */
TEST_FPSR_OP(fsqrt.h, x21, x23, dyn, 128, 0, x1, 9*FLEN/8, x19, x6, x8)

inst_10:
// rs1==x2, rd==x9,fs1 == 0 and fe1 == 0x00 and fm1 == 0x004 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x2; dest:x9; op1val:0x4; valaddr_reg:x1;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x9, x2, dyn, 0, 0, x1, 10*FLEN/8, x19, x6, x8)

inst_11:
// rs1==x18, rd==x4,fs1 == 0 and fe1 == 0x00 and fm1 == 0x004 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x18; dest:x4; op1val:0x4; valaddr_reg:x1;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 32 */
TEST_FPSR_OP(fsqrt.h, x4, x18, dyn, 32, 0, x1, 11*FLEN/8, x19, x6, x8)

inst_12:
// rs1==x17, rd==x27,fs1 == 0 and fe1 == 0x00 and fm1 == 0x004 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x17; dest:x27; op1val:0x4; valaddr_reg:x1;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 64 */
TEST_FPSR_OP(fsqrt.h, x27, x17, dyn, 64, 0, x1, 12*FLEN/8, x19, x6, x8)

inst_13:
// rs1==x11, rd==x10,fs1 == 0 and fe1 == 0x00 and fm1 == 0x004 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x11; dest:x10; op1val:0x4; valaddr_reg:x1;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 96 */
TEST_FPSR_OP(fsqrt.h, x10, x11, dyn, 96, 0, x1, 13*FLEN/8, x19, x6, x8)

inst_14:
// rs1==x30, rd==x23,fs1 == 0 and fe1 == 0x00 and fm1 == 0x004 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x30; dest:x23; op1val:0x4; valaddr_reg:x1;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 128 */
TEST_FPSR_OP(fsqrt.h, x23, x30, dyn, 128, 0, x1, 14*FLEN/8, x19, x6, x8)

inst_15:
// rs1==x13, rd==x11,fs1 == 0 and fe1 == 0x00 and fm1 == 0x010 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x13; dest:x11; op1val:0x10; valaddr_reg:x1;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x11, x13, dyn, 0, 0, x1, 15*FLEN/8, x19, x6, x8)

inst_16:
// rs1==x15, rd==x30,fs1 == 0 and fe1 == 0x00 and fm1 == 0x010 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x15; dest:x30; op1val:0x10; valaddr_reg:x1;
val_offset:16*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 32 */
TEST_FPSR_OP(fsqrt.h, x30, x15, dyn, 32, 0, x1, 16*FLEN/8, x19, x6, x8)

inst_17:
// rs1==x24, rd==x22,fs1 == 0 and fe1 == 0x00 and fm1 == 0x010 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x24; dest:x22; op1val:0x10; valaddr_reg:x1;
val_offset:17*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 64 */
TEST_FPSR_OP(fsqrt.h, x22, x24, dyn, 64, 0, x1, 17*FLEN/8, x19, x6, x8)
RVTEST_VALBASEUPD(x7,test_dataset_1)

inst_18:
// rs1==x20, rd==x16,fs1 == 0 and fe1 == 0x00 and fm1 == 0x010 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x20; dest:x16; op1val:0x10; valaddr_reg:x7;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 96 */
TEST_FPSR_OP(fsqrt.h, x16, x20, dyn, 96, 0, x7, 0*FLEN/8, x9, x6, x8)

inst_19:
// rs1==x31, rd==x1,fs1 == 0 and fe1 == 0x00 and fm1 == 0x010 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x31; dest:x1; op1val:0x10; valaddr_reg:x7;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x8;
fcsr_val: 128 */
TEST_FPSR_OP(fsqrt.h, x1, x31, dyn, 128, 0, x7, 1*FLEN/8, x9, x6, x8)

inst_20:
// rs1==x29, rd==x0,fs1 == 0 and fe1 == 0x00 and fm1 == 0x040 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x29; dest:x0; op1val:0x40; valaddr_reg:x7;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x0, x29, dyn, 0, 0, x7, 2*FLEN/8, x9, x6, x5)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_21:
// rs1==x3, rd==x14,fs1 == 0 and fe1 == 0x00 and fm1 == 0x040 and  fcsr == 0x20 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x3; dest:x14; op1val:0x40; valaddr_reg:x7;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 32 */
TEST_FPSR_OP(fsqrt.h, x14, x3, dyn, 32, 0, x7, 3*FLEN/8, x9, x2, x5)

inst_22:
// rs1==x6, rd==x8,fs1 == 0 and fe1 == 0x00 and fm1 == 0x040 and  fcsr == 0x40 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x6; dest:x8; op1val:0x40; valaddr_reg:x7;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 64 */
TEST_FPSR_OP(fsqrt.h, x8, x6, dyn, 64, 0, x7, 4*FLEN/8, x9, x2, x5)

inst_23:
// rs1==x26, rd==x24,fs1 == 0 and fe1 == 0x00 and fm1 == 0x040 and  fcsr == 0x60 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x26; dest:x24; op1val:0x40; valaddr_reg:x7;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 96 */
TEST_FPSR_OP(fsqrt.h, x24, x26, dyn, 96, 0, x7, 5*FLEN/8, x9, x2, x5)

inst_24:
// rs1==x21, rd==x15,fs1 == 0 and fe1 == 0x00 and fm1 == 0x040 and  fcsr == 0x80 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x21; dest:x15; op1val:0x40; valaddr_reg:x7;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 128 */
TEST_FPSR_OP(fsqrt.h, x15, x21, dyn, 128, 0, x7, 6*FLEN/8, x9, x2, x5)

inst_25:
// rs1==x19, rd==x29,
/* opcode: fsqrt.h ; op1:x19; dest:x29; op1val:0x0; valaddr_reg:x7;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x29, x19, dyn, 0, 0, x7, 7*FLEN/8, x9, x2, x5)

inst_26:
// rs1==x8, rd==x17,
/* opcode: fsqrt.h ; op1:x8; dest:x17; op1val:0x0; valaddr_reg:x7;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x17, x8, dyn, 0, 0, x7, 8*FLEN/8, x9, x2, x5)

inst_27:
// rs1==x4, rd==x6,
/* opcode: fsqrt.h ; op1:x4; dest:x6; op1val:0x0; valaddr_reg:x7;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x6, x4, dyn, 0, 0, x7, 9*FLEN/8, x9, x2, x5)

inst_28:
// rs1==x22, rd==x18,
/* opcode: fsqrt.h ; op1:x22; dest:x18; op1val:0x0; valaddr_reg:x7;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x18, x22, dyn, 0, 0, x7, 10*FLEN/8, x9, x2, x5)

inst_29:
// rs1==x0, rd==x26,
/* opcode: fsqrt.h ; op1:x0; dest:x26; op1val:0x0; valaddr_reg:x7;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x26, x0, dyn, 0, 0, x7, 11*FLEN/8, x9, x2, x5)

inst_30:
// rs1==x25, rd==x20,
/* opcode: fsqrt.h ; op1:x25; dest:x20; op1val:0x0; valaddr_reg:x7;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x20, x25, dyn, 0, 0, x7, 12*FLEN/8, x9, x2, x5)

inst_31:
// rs1==x1, rd==x19,
/* opcode: fsqrt.h ; op1:x1; dest:x19; op1val:0x0; valaddr_reg:x7;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x19, x1, dyn, 0, 0, x7, 13*FLEN/8, x9, x2, x5)

inst_32:
// fs1 == 0 and fe1 == 0x00 and fm1 == 0x040 and  fcsr == 0x0 and rm_val == 7  and rs1_sgn_prefix == 0x0000  
/* opcode: fsqrt.h ; op1:x30; dest:x31; op1val:0x40; valaddr_reg:x7;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x5;
fcsr_val: 0 */
TEST_FPSR_OP(fsqrt.h, x31, x30, dyn, 0, 0, x7, 14*FLEN/8, x9, x2, x5)
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
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(1,32,FLEN)
NAN_BOXED(1,32,FLEN)
NAN_BOXED(1,32,FLEN)
NAN_BOXED(1,32,FLEN)
NAN_BOXED(1,32,FLEN)
NAN_BOXED(4,32,FLEN)
NAN_BOXED(4,32,FLEN)
NAN_BOXED(4,32,FLEN)
NAN_BOXED(4,32,FLEN)
NAN_BOXED(4,32,FLEN)
NAN_BOXED(16,32,FLEN)
NAN_BOXED(16,32,FLEN)
NAN_BOXED(16,32,FLEN)
test_dataset_1:
NAN_BOXED(16,16,FLEN)
NAN_BOXED(16,16,FLEN)
NAN_BOXED(64,16,FLEN)
NAN_BOXED(64,16,FLEN)
NAN_BOXED(64,16,FLEN)
NAN_BOXED(64,16,FLEN)
NAN_BOXED(64,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(0,16,FLEN)
NAN_BOXED(64,16,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x6_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x6_1:
    .fill 42*((SIGALIGN)/4),4,0xdeadbeef


signature_x2_0:
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
