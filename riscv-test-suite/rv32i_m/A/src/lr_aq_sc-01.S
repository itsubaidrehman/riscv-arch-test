
/*
Copyright (c) 2020. RISC-V International. All rights reserved.
SPDX-License-Identifier: BSD-3-Clause

Test Plan: https://docs.google.com/spreadsheets/d/15Ln0AyXZErfmR2lNLxv6MDQteEOGSzGzPxE1hn_uMPg/edit?gid=0#gid=0

Developed By: Ubaid Rehman - https://github.com/itsubaidrehman
Date :        December 26, 2024
Description: This assembly test verifies the behavoiour of lr/sc sequence if the aq bit of lr is high and rl bit is low.

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

RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*A); def TEST_CASE_1=True;",lr_aq_sc-01)

RVTEST_SIGBASE(x1,signature_x1_1)

    
# Store the addr in different registers
inst_0:
    // dest_reg: x10; temp_reg: x11; addr_reg: x2; immval: 20; sigptr:x1; addr_offset(immval): 16
    
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x2, 20, x1, 16)
    

inst_1:
    // dest_reg: x10; temp_reg: x11; addr_reg: x3; immval: 20; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x3, 20, x1, 8)
    

inst_2:
    // dest_reg: x10; temp_reg: x11; addr_reg: x4; immval: 20; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x4, 05, x1, 4)
    

inst_3:
    // dest_reg: x10; temp_reg: x11; addr_reg: x5; immval: 20; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x5, 12, x1, 12)
    

inst_4:
    // dest_reg: x10; temp_reg: x11; addr_reg: x6; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x6, 20, x1, 16)
    

inst_5:
    // dest_reg: x10; temp_reg: x11; addr_reg: x7; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x7, 20, x1, 16)
    

inst_6:
    // dest_reg: x10; temp_reg: x11; addr_reg: x8; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x8, 20, x1, 16)
    

inst_7:
    // dest_reg: x10; temp_reg: x11; addr_reg: x9; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x9, 20, x1, 16)
    

inst_8:
    // dest_reg: x10; temp_reg: x11; addr_reg: x10; immval: 20; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x12, x11, x10, 19, x1, 8)
    

inst_9:
    // dest_reg: x10; temp_reg: x11; addr_reg: x11; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x9, x11, 20, x1, 16)
    

inst_10:
    // dest_reg: x10; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x12, 18, x1, 4)
    

inst_11:
    // dest_reg: x10; temp_reg: x11; addr_reg: x13; immval: 20; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x13, 10, x1, 12)
    


inst_12:
    // dest_reg: x10; temp_reg: x11; addr_reg: x14; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x14, 2, x1, 16)
    


inst_13:
    // dest_reg: x10; temp_reg: x11; addr_reg: x15; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x15, 25, x1, 16)
    


inst_14:
    // dest_reg: x10; temp_reg: x11; addr_reg: x16; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x16, 20, x1, 16)
    


inst_15:
    // dest_reg: x10; temp_reg: x11; addr_reg: x17; immval: 20; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x17, 21, x1, 12)
    


inst_16:
    // dest_reg: x10; temp_reg: x11; addr_reg: x18; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x18, 20, x1, 16)
    


inst_17:
    // dest_reg: x10; temp_reg: x11; addr_reg: x19; immval: 20; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x19, 17, x1, 12)
    


inst_18:
    // dest_reg: x10; temp_reg: x11; addr_reg: x20; immval: 15; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x20, 15, x1, 16)
    


inst_19:
    // dest_reg: x10; temp_reg: x11; addr_reg: x21; immval: 20; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x21, 20, x1, 8)
    


inst_20:
    // dest_reg: x10; temp_reg: x11; addr_reg: x22; immval: 12; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x22, 12, x1, 4)
    


inst_21:
    // dest_reg: x10; temp_reg: x11; addr_reg: x23; immval: 2; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x23, 2, x1, 16)
    


inst_22:
    // dest_reg: x10; temp_reg: x11; addr_reg: x24; immval: 22; sigptr:x1; addr_offset(immval): 20
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x24, 22, x1, 20)
    


inst_23:
    // dest_reg: x10; temp_reg: x11; addr_reg: x25; immval: 22; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x25, 22, x1, 12)
    


inst_24:
    // dest_reg: x10; temp_reg: x11; addr_reg: x26; immval: 21; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x26, 21, x1, 16)
    


inst_25:
    // dest_reg: x10; temp_reg: x11; addr_reg: x28; immval: 22; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x27, 22, x1, 12)
    


inst_26:
    // dest_reg: x10; temp_reg: x11; addr_reg: x29; immval: 18; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x28, 18, x1, 4)
    


inst_27:
    // dest_reg: x10; temp_reg: x11; addr_reg: x29; immval: 11; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x29, 11, x1, 12)
    


inst_28:
    // dest_reg: x10; temp_reg: x11; addr_reg: x30; immval: 12; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x30, 12, x1, 8)
    


inst_29:
    // dest_reg: x10; temp_reg: x11; addr_reg: x31; immval: 15; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x31, 15, x1, 4)
    

# update the destination register of sc.w
inst_30:
    // dest_reg: x2; temp_reg: x11; addr_reg: 12; immval: 12; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x2, x11, x12, 13, x1, 4)
    

inst_31:
    // dest_reg: x3; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x3, x11, x12, 20, x1, 8)
    

inst_32:
    // dest_reg: x4; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x4, x11, x12, 20, x1, 4)
    

inst_33:
    // dest_reg: x5; temp_reg: x11; addr_reg: x12; immval: 12; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x5, x11, x12, 12, x1, 12)
    

inst_34:
    // dest_reg: x6; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x6, x11, x12, 20, x1, 16)
    

inst_35:
    // dest_reg: x7; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x7, x11, x12, 20, x1, 16)
    

inst_36:
    // dest_reg: x8; temp_reg: x11; addr_reg: x12; immval: 11; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x8, x11, x12, 11, x1, 12)
    

inst_37:
    // dest_reg: x9; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x9, x11, x12, 20, x1, 12)
    

inst_38:
    // dest_reg: x10; temp_reg: x11; addr_reg: x12; immval: 18; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x10, x11, x12, 18, x1, 8)
    

inst_39:
    // dest_reg: x11; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x11, x11, x12, 20, x1, 8)
    

inst_40:
    // dest_reg: x12; temp_reg: x11; addr_reg: x10; immval: 20; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x12, x11, x10, 20, x1, 4)
    

inst_41:
    // dest_reg: x13; temp_reg: x11; addr_reg: x12; immval: 25; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x13, x11, x12, 25, x1, 12)
    

inst_42:
    // dest_reg: x14; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x14, x11, x12, 20, x1, 16)
    

inst_43:
    // dest_reg: x15; temp_reg: x11; addr_reg: x12; immval: 23; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x15, x11, x12, 23, x1, 12)
    

inst_44:
    // dest_reg: x16; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x16, x11, x12, 20, x1, 16)
    

inst_45:
    // dest_reg: x17; temp_reg: x11; addr_reg: x12; immval: 22; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x17, x11, x12, 22, x1, 8)
    

inst_46:
    // dest_reg: x18; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 4
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x18, x11, x12, 20, x1, 4)
    

inst_47:
    // dest_reg: x19; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x19, x11, x12, 20, x1, 12)
    

inst_48:
    // dest_reg: x20; temp_reg: x11; addr_reg: x12; immval: 19; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x20, x11, x12, 19, x1, 12)
    

inst_49:
    // dest_reg: x21; temp_reg: x11; addr_reg: x12; immval: 16; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x21, x11, x12, 16, x1, 12)
    

inst_50:
    // dest_reg: x22; temp_reg: x11; addr_reg: x12; immval: 14; sigptr:x1; addr_offset(immval): 12
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x22, x11, x12, 14, x1, 12)
    

inst_51:
    // dest_reg: x23; temp_reg: x11; addr_reg: x12; immval: 10; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x23, x11, x12, 10, x1, 8)
    

inst_52:
    // dest_reg: x24; temp_reg: x11; addr_reg: x12; immval: 12; sigptr:x1; addr_offset(immval): 8
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x24, x11, x12, 12, x1, 8)
    

inst_53:
    // dest_reg: x25; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x25, x11, x12, 20, x1, 16)
    

inst_54:
    // dest_reg: x26; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x26, x11, x12, 20, x1, 16)
    

inst_55:
    // dest_reg: x27; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x27, x11, x12, 20, x1, 16)
    

inst_56:
    // dest_reg: x28; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x28, x11, x12, 20, x1, 16)
    

inst_57:
    // dest_reg: x29; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x29, x11, x12, 20, x1, 16)
    

inst_58:
    // dest_reg: x30; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x30, x11, x12, 20, x1, 16)
    

inst_59:
    // dest_reg: x31; temp_reg: x11; addr_reg: x12; immval: 20; sigptr:x1; addr_offset(immval): 16
    //arg1: dest_reg for sc; arg2: temp_reg to store random value; arg3: addr_reg; arg4: random imm val; arg5 signature register; arg6: addr_offser
    TEST_LR_AQ_SC_OP(x31, x11, x12, 20, x1, 16)
    





    


    


#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0x12345678
.word 0x87654321
.word 0xbecafeba
.word 0x01348294
.word 0xffffffff
.word 0x12345678
.word 0x87654321
.word 0xffffffff
.word 0x12345678
.word 0x87654321
.word 0x10193204
.word 0x01348294
.word 0x18393492
.word 0x11111111
.word 0xffffffff
.word 0xffffffff
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;




signature_x1_1:
    .fill 128*(XLEN/32),4,0xdeadbeef


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

