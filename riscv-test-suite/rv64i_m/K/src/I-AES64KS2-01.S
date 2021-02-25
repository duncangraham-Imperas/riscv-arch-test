// RISC-V Compliance Test I-AES64KS2-01
//
#
# Copyright (c) 2021 Imperas Software Ltd., www.imperas.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

//
// Specification: K Crypto/Scalar
// Description: Testing instruction 'aes64ks2'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV64IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1



    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x6,signature_1_0)

 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), rs2:x16(0xdf7f3844121bcc23), result rd:x1(0xdd99c98a02e6f1ce)
    # li  x16, MASK_XLEN(0xdf7f3844121bcc23)
    # li  x31, MASK_XLEN(0x10fd3dedadea5195)
    # aes64ks2 x1, x31, x16
    # sd x1, 0(x6)
inst_0:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0xdd99c98a02e6f1ce, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0xdd99c98a02e6f1ce) 
    
 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), rs2:x15(0xf5adb41aa47d105b), result rd:x2(0xecf9f8a319544cb9)
    # li  x15, MASK_XLEN(0xf5adb41aa47d105b)
    # li  x30, MASK_XLEN(0xbd295ce2d2ffbec1)
    # aes64ks2 x2, x30, x15
    # sd x2, 8(x6)
inst_1:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0xecf9f8a319544cb9, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xecf9f8a319544cb9) 
    
 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), rs2:x14(0x82f6747f707af2c0), result rd:x3(0x3be819bab91e6dc5)
    # li  x14, MASK_XLEN(0x82f6747f707af2c0)
    # li  x29, MASK_XLEN(0xc9649f05a8e1a8bb)
    # aes64ks2 x3, x29, x14
    # sd x3, 16(x6)
inst_2:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0x3be819bab91e6dc5, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x3be819bab91e6dc5) 
    
 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), rs2:x13(0x73a92fd4e19bfbc3), result rd:x4(0xa773fd0fd4dad2db)
    # li  x13, MASK_XLEN(0x73a92fd4e19bfbc3)
    # li  x28, MASK_XLEN(0x3541291848c99fcb)
    # aes64ks2 x4, x28, x13
    # sd x4, 24(x6)
inst_3:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0xa773fd0fd4dad2db, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xa773fd0fd4dad2db) 
    
 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), rs2:x12(0x546b0e54528a10af), result rd:x5(0x164359bb422857ef)
    # li  x12, MASK_XLEN(0x546b0e54528a10af)
    # li  x27, MASK_XLEN(0x10a24740461d524f)
    # aes64ks2 x5, x27, x12
    # sd x5, 32(x6)
inst_4:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0x164359bb422857ef, 0x10a24740461d524f, 0x546b0e54528a10af, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x164359bb422857ef) 
    





    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_2_0)

 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), rs2:x11(0x10a24740461d524f), result rd:x6(0x02d41b5b12765c1b)
    # li  x11, MASK_XLEN(0x10a24740461d524f)
    # li  x26, MASK_XLEN(0x546b0e54528a10af)
    # aes64ks2 x6, x26, x11
    # sd x6, 0(x1)
inst_5:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0x02d41b5b12765c1b, 0x546b0e54528a10af, 0x10a24740461d524f, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x02d41b5b12765c1b) 
    
 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), rs2:x10(0x3541291848c99fcb), result rd:x7(0x0e2199073b60b01f)
    # li  x10, MASK_XLEN(0x3541291848c99fcb)
    # li  x25, MASK_XLEN(0x73a92fd4e19bfbc3)
    # aes64ks2 x7, x25, x10
    # sd x7, 8(x1)
inst_6:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0x0e2199073b60b01f, 0x73a92fd4e19bfbc3, 0x3541291848c99fcb, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0e2199073b60b01f) 
    
 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), rs2:x9(0xc9649f05a8e1a8bb), result rd:x8(0xe37343c12a17dcc4)
    # li  x9, MASK_XLEN(0xc9649f05a8e1a8bb)
    # li  x24, MASK_XLEN(0x82f6747f707af2c0)
    # aes64ks2 x8, x24, x9
    # sd x8, 16(x1)
inst_7:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0xe37343c12a17dcc4, 0x82f6747f707af2c0, 0xc9649f05a8e1a8bb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xe37343c12a17dcc4) 
    
 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), rs2:x8(0xbd295ce2d2ffbec1), result rd:x9(0x9a7b563927520adb)
    # li  x8, MASK_XLEN(0xbd295ce2d2ffbec1)
    # li  x23, MASK_XLEN(0xf5adb41aa47d105b)
    # aes64ks2 x9, x23, x8
    # sd x9, 24(x1)
inst_8:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0x9a7b563927520adb, 0xf5adb41aa47d105b, 0xbd295ce2d2ffbec1, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x9a7b563927520adb) 
    
 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), rs2:x7(0x10fd3dedadea5195), result rd:x10(0x6268543c729569d1)
    # li  x7, MASK_XLEN(0x10fd3dedadea5195)
    # li  x22, MASK_XLEN(0xdf7f3844121bcc23)
    # aes64ks2 x10, x22, x7
    # sd x10, 32(x1)
inst_9:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0x6268543c729569d1, 0xdf7f3844121bcc23, 0x10fd3dedadea5195, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x6268543c729569d1) 
    





    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_3_0)

 
    # Testcase 10:  rs1:x21(0x0000000000000001), rs2:x6(0xffffffffffffffff), result rd:x11(0x00000000ffffffff)
    # li  x6, MASK_XLEN(0xffffffffffffffff)
    # li  x21, MASK_XLEN(0x1)
    # aes64ks2 x11, x21, x6
    # sd x11, 0(x1)
inst_10:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0x00000000ffffffff, 0x1, 0xffffffffffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x00000000ffffffff) 
    
 
    # Testcase 11:  rs1:x20(0x0000000000000002), rs2:x5(0x7fffffffffffffff), result rd:x12(0x80000000ffffffff)
    # li  x5, MASK_XLEN(0x7fffffffffffffff)
    # li  x20, MASK_XLEN(0x2)
    # aes64ks2 x12, x20, x5
    # sd x12, 8(x1)
inst_11:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0x80000000ffffffff, 0x2, 0x7fffffffffffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x80000000ffffffff) 
    
 
    # Testcase 12:  rs1:x19(0x0000000000000004), rs2:x4(0xbfffffffffffffff), result rd:x13(0x40000000ffffffff)
    # li  x4, MASK_XLEN(0xbfffffffffffffff)
    # li  x19, MASK_XLEN(0x4)
    # aes64ks2 x13, x19, x4
    # sd x13, 16(x1)
inst_12:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0x40000000ffffffff, 0x4, 0xbfffffffffffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x40000000ffffffff) 
    
 
    # Testcase 13:  rs1:x18(0x0000000000000008), rs2:x3(0xdfffffffffffffff), result rd:x14(0x20000000ffffffff)
    # li  x3, MASK_XLEN(0xdfffffffffffffff)
    # li  x18, MASK_XLEN(0x8)
    # aes64ks2 x14, x18, x3
    # sd x14, 24(x1)
inst_13:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0x20000000ffffffff, 0x8, 0xdfffffffffffffff, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x20000000ffffffff) 
    
 
    # Testcase 14:  rs1:x17(0x0000000000000010), rs2:x2(0xefffffffffffffff), result rd:x15(0x10000000ffffffff)
    # li  x2, MASK_XLEN(0xefffffffffffffff)
    # li  x17, MASK_XLEN(0x10)
    # aes64ks2 x15, x17, x2
    # sd x15, 32(x1)
inst_14:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0x10000000ffffffff, 0x10, 0xefffffffffffffff, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x10000000ffffffff) 
    





    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x2,signature_4_0)

 
    # Testcase 15:  rs1:x16(0x0000000000000020), rs2:x1(0xf7ffffffffffffff), result rd:x16(0x08000000ffffffff)
    # li  x1, MASK_XLEN(0xf7ffffffffffffff)
    # li  x16, MASK_XLEN(0x20)
    # aes64ks2 x16, x16, x1
    # sd x16, 0(x2)
inst_15:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0x08000000ffffffff, 0x20, 0xf7ffffffffffffff, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x08000000ffffffff) 
    
 
    # Testcase 16:  rs1:x15(0x0000000000000040), rs2:x31(0xfbffffffffffffff), result rd:x17(0x04000000ffffffff)
    # li  x31, MASK_XLEN(0xfbffffffffffffff)
    # li  x15, MASK_XLEN(0x40)
    # aes64ks2 x17, x15, x31
    # sd x17, 8(x2)
inst_16:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0x04000000ffffffff, 0x40, 0xfbffffffffffffff, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x04000000ffffffff) 
    
 
    # Testcase 17:  rs1:x14(0x0000000000000080), rs2:x30(0xfdffffffffffffff), result rd:x18(0x02000000ffffffff)
    # li  x30, MASK_XLEN(0xfdffffffffffffff)
    # li  x14, MASK_XLEN(0x80)
    # aes64ks2 x18, x14, x30
    # sd x18, 16(x2)
inst_17:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0x02000000ffffffff, 0x80, 0xfdffffffffffffff, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x02000000ffffffff) 
    
 
    # Testcase 18:  rs1:x13(0x0000000000000100), rs2:x29(0xfeffffffffffffff), result rd:x19(0x01000000ffffffff)
    # li  x29, MASK_XLEN(0xfeffffffffffffff)
    # li  x13, MASK_XLEN(0x100)
    # aes64ks2 x19, x13, x29
    # sd x19, 24(x2)
inst_18:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0x01000000ffffffff, 0x100, 0xfeffffffffffffff, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x01000000ffffffff) 
    
 
    # Testcase 19:  rs1:x12(0x0000000000000200), rs2:x28(0xff7fffffffffffff), result rd:x20(0x00800000ffffffff)
    # li  x28, MASK_XLEN(0xff7fffffffffffff)
    # li  x12, MASK_XLEN(0x200)
    # aes64ks2 x20, x12, x28
    # sd x20, 32(x2)
inst_19:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0x00800000ffffffff, 0x200, 0xff7fffffffffffff, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x00800000ffffffff) 
    





    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_5_0)

 
    # Testcase 20:  rs1:x11(0x0000000000000400), rs2:x27(0xffbfffffffffffff), result rd:x21(0x00400000ffffffff)
    # li  x27, MASK_XLEN(0xffbfffffffffffff)
    # li  x11, MASK_XLEN(0x400)
    # aes64ks2 x21, x11, x27
    # sd x21, 0(x1)
inst_20:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0x00400000ffffffff, 0x400, 0xffbfffffffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00400000ffffffff) 
    
 
    # Testcase 21:  rs1:x10(0x0000000000000800), rs2:x26(0xffdfffffffffffff), result rd:x22(0x00200000ffffffff)
    # li  x26, MASK_XLEN(0xffdfffffffffffff)
    # li  x10, MASK_XLEN(0x800)
    # aes64ks2 x22, x10, x26
    # sd x22, 8(x1)
inst_21:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0x00200000ffffffff, 0x800, 0xffdfffffffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00200000ffffffff) 
    
 
    # Testcase 22:  rs1:x9(0x0000000000001000), rs2:x25(0xffefffffffffffff), result rd:x23(0x00100000ffffffff)
    # li  x25, MASK_XLEN(0xffefffffffffffff)
    # li  x9, MASK_XLEN(0x1000)
    # aes64ks2 x23, x9, x25
    # sd x23, 16(x1)
inst_22:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0x00100000ffffffff, 0x1000, 0xffefffffffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00100000ffffffff) 
    
 
    # Testcase 23:  rs1:x8(0x0000000000002000), rs2:x24(0xfff7ffffffffffff), result rd:x24(0x00080000ffffffff)
    # li  x24, MASK_XLEN(0xfff7ffffffffffff)
    # li  x8, MASK_XLEN(0x2000)
    # aes64ks2 x24, x8, x24
    # sd x24, 24(x1)
inst_23:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0x00080000ffffffff, 0x2000, 0xfff7ffffffffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00080000ffffffff) 
    
 
    # Testcase 24:  rs1:x7(0x0000000000004000), rs2:x23(0xfffbffffffffffff), result rd:x25(0x00040000ffffffff)
    # li  x23, MASK_XLEN(0xfffbffffffffffff)
    # li  x7, MASK_XLEN(0x4000)
    # aes64ks2 x25, x7, x23
    # sd x25, 32(x1)
inst_24:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0x00040000ffffffff, 0x4000, 0xfffbffffffffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00040000ffffffff) 
    





    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_6_0)

 
    # Testcase 25:  rs1:x6(0x0000000000008000), rs2:x22(0xfffdffffffffffff), result rd:x26(0x00020000ffffffff)
    # li  x22, MASK_XLEN(0xfffdffffffffffff)
    # li  x6, MASK_XLEN(0x8000)
    # aes64ks2 x26, x6, x22
    # sd x26, 0(x1)
inst_25:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0x00020000ffffffff, 0x8000, 0xfffdffffffffffff, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x00020000ffffffff) 
    
 
    # Testcase 26:  rs1:x5(0x0000000000010000), rs2:x21(0xfffeffffffffffff), result rd:x27(0x00010000ffffffff)
    # li  x21, MASK_XLEN(0xfffeffffffffffff)
    # li  x5, MASK_XLEN(0x10000)
    # aes64ks2 x27, x5, x21
    # sd x27, 8(x1)
inst_26:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0x00010000ffffffff, 0x10000, 0xfffeffffffffffff, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x00010000ffffffff) 
    
 
    # Testcase 27:  rs1:x4(0x0000000000020000), rs2:x20(0xffff7fffffffffff), result rd:x28(0x00008000ffffffff)
    # li  x20, MASK_XLEN(0xffff7fffffffffff)
    # li  x4, MASK_XLEN(0x20000)
    # aes64ks2 x28, x4, x20
    # sd x28, 16(x1)
inst_27:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0x00008000ffffffff, 0x20000, 0xffff7fffffffffff, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x00008000ffffffff) 
    
 
    # Testcase 28:  rs1:x3(0x0000000000040000), rs2:x19(0xffffbfffffffffff), result rd:x29(0x00004000ffffffff)
    # li  x19, MASK_XLEN(0xffffbfffffffffff)
    # li  x3, MASK_XLEN(0x40000)
    # aes64ks2 x29, x3, x19
    # sd x29, 24(x1)
inst_28:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0x00004000ffffffff, 0x40000, 0xffffbfffffffffff, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00004000ffffffff) 
    
 
    # Testcase 29:  rs1:x2(0x0000000000080000), rs2:x18(0xffffdfffffffffff), result rd:x30(0x00002000ffffffff)
    # li  x18, MASK_XLEN(0xffffdfffffffffff)
    # li  x2, MASK_XLEN(0x80000)
    # aes64ks2 x30, x2, x18
    # sd x30, 32(x1)
inst_29:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0x00002000ffffffff, 0x80000, 0xffffdfffffffffff, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x00002000ffffffff) 
    





    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x5,signature_7_0)

 
    # Testcase 30:  rs1:x1(0x0000000000100000), rs2:x17(0xffffefffffffffff), result rd:x31(0x00001000ffffffff)
    # li  x17, MASK_XLEN(0xffffefffffffffff)
    # li  x1, MASK_XLEN(0x100000)
    # aes64ks2 x31, x1, x17
    # sd x31, 0(x5)
inst_30:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0x00001000ffffffff, 0x100000, 0xffffefffffffffff, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00001000ffffffff) 
    
 
    # Testcase 31:  rs1:x31(0x0000000000200000), rs2:x16(0xfffff7ffffffffff), result rd:x1(0x00000800ffffffff)
    # li  x16, MASK_XLEN(0xfffff7ffffffffff)
    # li  x31, MASK_XLEN(0x200000)
    # aes64ks2 x1, x31, x16
    # sd x1, 8(x5)
inst_31:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0x00000800ffffffff, 0x200000, 0xfffff7ffffffffff, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00000800ffffffff) 
    
 
    # Testcase 32:  rs1:x30(0x0000000000400000), rs2:x15(0xfffffbffffffffff), result rd:x2(0x00000400ffffffff)
    # li  x15, MASK_XLEN(0xfffffbffffffffff)
    # li  x30, MASK_XLEN(0x400000)
    # aes64ks2 x2, x30, x15
    # sd x2, 16(x5)
inst_32:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0x00000400ffffffff, 0x400000, 0xfffffbffffffffff, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x00000400ffffffff) 
    
 
    # Testcase 33:  rs1:x29(0x0000000000800000), rs2:x14(0xfffffdffffffffff), result rd:x3(0x00000200ffffffff)
    # li  x14, MASK_XLEN(0xfffffdffffffffff)
    # li  x29, MASK_XLEN(0x800000)
    # aes64ks2 x3, x29, x14
    # sd x3, 24(x5)
inst_33:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0x00000200ffffffff, 0x800000, 0xfffffdffffffffff, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x00000200ffffffff) 
    
 
    # Testcase 34:  rs1:x28(0x0000000001000000), rs2:x13(0xfffffeffffffffff), result rd:x4(0x00000100ffffffff)
    # li  x13, MASK_XLEN(0xfffffeffffffffff)
    # li  x28, MASK_XLEN(0x1000000)
    # aes64ks2 x4, x28, x13
    # sd x4, 32(x5)
inst_34:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0x00000100ffffffff, 0x1000000, 0xfffffeffffffffff, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x00000100ffffffff) 
    





    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_8_0)

 
    # Testcase 35:  rs1:x27(0x0000000002000000), rs2:x12(0xffffff7fffffffff), result rd:x5(0x00000080ffffffff)
    # li  x12, MASK_XLEN(0xffffff7fffffffff)
    # li  x27, MASK_XLEN(0x2000000)
    # aes64ks2 x5, x27, x12
    # sd x5, 0(x1)
inst_35:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0x00000080ffffffff, 0x2000000, 0xffffff7fffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00000080ffffffff) 
    
 
    # Testcase 36:  rs1:x26(0x0000000004000000), rs2:x11(0xffffffbfffffffff), result rd:x6(0x00000040ffffffff)
    # li  x11, MASK_XLEN(0xffffffbfffffffff)
    # li  x26, MASK_XLEN(0x4000000)
    # aes64ks2 x6, x26, x11
    # sd x6, 8(x1)
inst_36:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0x00000040ffffffff, 0x4000000, 0xffffffbfffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00000040ffffffff) 
    
 
    # Testcase 37:  rs1:x25(0x0000000008000000), rs2:x10(0xffffffdfffffffff), result rd:x7(0x00000020ffffffff)
    # li  x10, MASK_XLEN(0xffffffdfffffffff)
    # li  x25, MASK_XLEN(0x8000000)
    # aes64ks2 x7, x25, x10
    # sd x7, 16(x1)
inst_37:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0x00000020ffffffff, 0x8000000, 0xffffffdfffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00000020ffffffff) 
    
 
    # Testcase 38:  rs1:x24(0x0000000010000000), rs2:x9(0xffffffefffffffff), result rd:x8(0x00000010ffffffff)
    # li  x9, MASK_XLEN(0xffffffefffffffff)
    # li  x24, MASK_XLEN(0x10000000)
    # aes64ks2 x8, x24, x9
    # sd x8, 24(x1)
inst_38:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0x00000010ffffffff, 0x10000000, 0xffffffefffffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x00000010ffffffff) 
    
 
    # Testcase 39:  rs1:x23(0x0000000020000000), rs2:x8(0xfffffff7ffffffff), result rd:x9(0x00000008ffffffff)
    # li  x8, MASK_XLEN(0xfffffff7ffffffff)
    # li  x23, MASK_XLEN(0x20000000)
    # aes64ks2 x9, x23, x8
    # sd x9, 32(x1)
inst_39:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0x00000008ffffffff, 0x20000000, 0xfffffff7ffffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x00000008ffffffff) 
    





    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_9_0)

 
    # Testcase 40:  rs1:x22(0x0000000040000000), rs2:x7(0xfffffffbffffffff), result rd:x10(0x00000004ffffffff)
    # li  x7, MASK_XLEN(0xfffffffbffffffff)
    # li  x22, MASK_XLEN(0x40000000)
    # aes64ks2 x10, x22, x7
    # sd x10, 0(x1)
inst_40:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0x00000004ffffffff, 0x40000000, 0xfffffffbffffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x00000004ffffffff) 
    
 
    # Testcase 41:  rs1:x21(0x0000000080000000), rs2:x6(0xfffffffdffffffff), result rd:x11(0x00000002ffffffff)
    # li  x6, MASK_XLEN(0xfffffffdffffffff)
    # li  x21, MASK_XLEN(0x80000000)
    # aes64ks2 x11, x21, x6
    # sd x11, 8(x1)
inst_41:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0x00000002ffffffff, 0x80000000, 0xfffffffdffffffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x00000002ffffffff) 
    
 
    # Testcase 42:  rs1:x20(0x0000000100000000), rs2:x5(0xfffffffeffffffff), result rd:x12(0x00000000fffffffe)
    # li  x5, MASK_XLEN(0xfffffffeffffffff)
    # li  x20, MASK_XLEN(0x100000000)
    # aes64ks2 x12, x20, x5
    # sd x12, 16(x1)
inst_42:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0x00000000fffffffe, 0x100000000, 0xfffffffeffffffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000fffffffe) 
    
 
    # Testcase 43:  rs1:x19(0x0000000200000000), rs2:x4(0xffffffff7fffffff), result rd:x13(0x800000027ffffffd)
    # li  x4, MASK_XLEN(0xffffffff7fffffff)
    # li  x19, MASK_XLEN(0x200000000)
    # aes64ks2 x13, x19, x4
    # sd x13, 24(x1)
inst_43:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0x800000027ffffffd, 0x200000000, 0xffffffff7fffffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x800000027ffffffd) 
    
 
    # Testcase 44:  rs1:x18(0x0000000400000000), rs2:x3(0xffffffffbfffffff), result rd:x14(0x40000004bffffffb)
    # li  x3, MASK_XLEN(0xffffffffbfffffff)
    # li  x18, MASK_XLEN(0x400000000)
    # aes64ks2 x14, x18, x3
    # sd x14, 32(x1)
inst_44:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0x40000004bffffffb, 0x400000000, 0xffffffffbfffffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x40000004bffffffb) 
    





    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x3,signature_10_0)

 
    # Testcase 45:  rs1:x17(0x0000000800000000), rs2:x2(0xffffffffdfffffff), result rd:x15(0x20000008dffffff7)
    # li  x2, MASK_XLEN(0xffffffffdfffffff)
    # li  x17, MASK_XLEN(0x800000000)
    # aes64ks2 x15, x17, x2
    # sd x15, 0(x3)
inst_45:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0x20000008dffffff7, 0x800000000, 0xffffffffdfffffff, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x20000008dffffff7) 
    
 
    # Testcase 46:  rs1:x16(0x0000001000000000), rs2:x1(0xffffffffefffffff), result rd:x16(0x10000010efffffef)
    # li  x1, MASK_XLEN(0xffffffffefffffff)
    # li  x16, MASK_XLEN(0x1000000000)
    # aes64ks2 x16, x16, x1
    # sd x16, 8(x3)
inst_46:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0x10000010efffffef, 0x1000000000, 0xffffffffefffffff, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x10000010efffffef) 
    
 
    # Testcase 47:  rs1:x15(0x0000002000000000), rs2:x31(0xfffffffff7ffffff), result rd:x17(0x08000020f7ffffdf)
    # li  x31, MASK_XLEN(0xfffffffff7ffffff)
    # li  x15, MASK_XLEN(0x2000000000)
    # aes64ks2 x17, x15, x31
    # sd x17, 16(x3)
inst_47:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0x08000020f7ffffdf, 0x2000000000, 0xfffffffff7ffffff, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x08000020f7ffffdf) 
    
 
    # Testcase 48:  rs1:x14(0x0000004000000000), rs2:x30(0xfffffffffbffffff), result rd:x18(0x04000040fbffffbf)
    # li  x30, MASK_XLEN(0xfffffffffbffffff)
    # li  x14, MASK_XLEN(0x4000000000)
    # aes64ks2 x18, x14, x30
    # sd x18, 24(x3)
inst_48:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0x04000040fbffffbf, 0x4000000000, 0xfffffffffbffffff, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x04000040fbffffbf) 
    
 
    # Testcase 49:  rs1:x13(0x0000008000000000), rs2:x29(0xfffffffffdffffff), result rd:x19(0x02000080fdffff7f)
    # li  x29, MASK_XLEN(0xfffffffffdffffff)
    # li  x13, MASK_XLEN(0x8000000000)
    # aes64ks2 x19, x13, x29
    # sd x19, 32(x3)
inst_49:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0x02000080fdffff7f, 0x8000000000, 0xfffffffffdffffff, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x02000080fdffff7f) 
    





    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_11_0)

 
    # Testcase 50:  rs1:x12(0x0000010000000000), rs2:x28(0xfffffffffeffffff), result rd:x20(0x01000100fefffeff)
    # li  x28, MASK_XLEN(0xfffffffffeffffff)
    # li  x12, MASK_XLEN(0x10000000000)
    # aes64ks2 x20, x12, x28
    # sd x20, 0(x1)
inst_50:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0x01000100fefffeff, 0x10000000000, 0xfffffffffeffffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x01000100fefffeff) 
    
 
    # Testcase 51:  rs1:x11(0x0000020000000000), rs2:x27(0xffffffffff7fffff), result rd:x21(0x00800200ff7ffdff)
    # li  x27, MASK_XLEN(0xffffffffff7fffff)
    # li  x11, MASK_XLEN(0x20000000000)
    # aes64ks2 x21, x11, x27
    # sd x21, 8(x1)
inst_51:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0x00800200ff7ffdff, 0x20000000000, 0xffffffffff7fffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x00800200ff7ffdff) 
    
 
    # Testcase 52:  rs1:x10(0x0000040000000000), rs2:x26(0xffffffffffbfffff), result rd:x22(0x00400400ffbffbff)
    # li  x26, MASK_XLEN(0xffffffffffbfffff)
    # li  x10, MASK_XLEN(0x40000000000)
    # aes64ks2 x22, x10, x26
    # sd x22, 16(x1)
inst_52:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0x00400400ffbffbff, 0x40000000000, 0xffffffffffbfffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00400400ffbffbff) 
    
 
    # Testcase 53:  rs1:x9(0x0000080000000000), rs2:x25(0xffffffffffdfffff), result rd:x23(0x00200800ffdff7ff)
    # li  x25, MASK_XLEN(0xffffffffffdfffff)
    # li  x9, MASK_XLEN(0x80000000000)
    # aes64ks2 x23, x9, x25
    # sd x23, 24(x1)
inst_53:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0x00200800ffdff7ff, 0x80000000000, 0xffffffffffdfffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x00200800ffdff7ff) 
    
 
    # Testcase 54:  rs1:x8(0x0000100000000000), rs2:x24(0xffffffffffefffff), result rd:x24(0x00101000ffefefff)
    # li  x24, MASK_XLEN(0xffffffffffefffff)
    # li  x8, MASK_XLEN(0x100000000000)
    # aes64ks2 x24, x8, x24
    # sd x24, 32(x1)
inst_54:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0x00101000ffefefff, 0x100000000000, 0xffffffffffefffff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x00101000ffefefff) 
    





    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_12_0)

 
    # Testcase 55:  rs1:x7(0x0000200000000000), rs2:x23(0xfffffffffff7ffff), result rd:x25(0x00082000fff7dfff)
    # li  x23, MASK_XLEN(0xfffffffffff7ffff)
    # li  x7, MASK_XLEN(0x200000000000)
    # aes64ks2 x25, x7, x23
    # sd x25, 0(x1)
inst_55:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0x00082000fff7dfff, 0x200000000000, 0xfffffffffff7ffff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x00082000fff7dfff) 
    
 
    # Testcase 56:  rs1:x6(0x0000400000000000), rs2:x22(0xfffffffffffbffff), result rd:x26(0x00044000fffbbfff)
    # li  x22, MASK_XLEN(0xfffffffffffbffff)
    # li  x6, MASK_XLEN(0x400000000000)
    # aes64ks2 x26, x6, x22
    # sd x26, 8(x1)
inst_56:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0x00044000fffbbfff, 0x400000000000, 0xfffffffffffbffff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x00044000fffbbfff) 
    
 
    # Testcase 57:  rs1:x5(0x0000800000000000), rs2:x21(0xfffffffffffdffff), result rd:x27(0x00028000fffd7fff)
    # li  x21, MASK_XLEN(0xfffffffffffdffff)
    # li  x5, MASK_XLEN(0x800000000000)
    # aes64ks2 x27, x5, x21
    # sd x27, 16(x1)
inst_57:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0x00028000fffd7fff, 0x800000000000, 0xfffffffffffdffff, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x00028000fffd7fff) 
    
 
    # Testcase 58:  rs1:x4(0x0001000000000000), rs2:x20(0xfffffffffffeffff), result rd:x28(0x00000000ffffffff)
    # li  x20, MASK_XLEN(0xfffffffffffeffff)
    # li  x4, MASK_XLEN(0x1000000000000)
    # aes64ks2 x28, x4, x20
    # sd x28, 24(x1)
inst_58:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0x00000000ffffffff, 0x1000000000000, 0xfffffffffffeffff, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x00000000ffffffff) 
    
 
    # Testcase 59:  rs1:x3(0x0002000000000000), rs2:x19(0xffffffffffff7fff), result rd:x29(0x00028000fffd7fff)
    # li  x19, MASK_XLEN(0xffffffffffff7fff)
    # li  x3, MASK_XLEN(0x2000000000000)
    # aes64ks2 x29, x3, x19
    # sd x29, 32(x1)
inst_59:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0x00028000fffd7fff, 0x2000000000000, 0xffffffffffff7fff, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x00028000fffd7fff) 
    





    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x4,signature_13_0)

 
    # Testcase 60:  rs1:x2(0x0004000000000000), rs2:x18(0xffffffffffffbfff), result rd:x30(0x00044000fffbbfff)
    # li  x18, MASK_XLEN(0xffffffffffffbfff)
    # li  x2, MASK_XLEN(0x4000000000000)
    # aes64ks2 x30, x2, x18
    # sd x30, 0(x4)
inst_60:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0x00044000fffbbfff, 0x4000000000000, 0xffffffffffffbfff, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x00044000fffbbfff) 
    
 
    # Testcase 61:  rs1:x1(0x0008000000000000), rs2:x17(0xffffffffffffdfff), result rd:x31(0x00082000fff7dfff)
    # li  x17, MASK_XLEN(0xffffffffffffdfff)
    # li  x1, MASK_XLEN(0x8000000000000)
    # aes64ks2 x31, x1, x17
    # sd x31, 8(x4)
inst_61:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0x00082000fff7dfff, 0x8000000000000, 0xffffffffffffdfff, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x00082000fff7dfff) 
    
 
    # Testcase 62:  rs1:x31(0x0010000000000000), rs2:x16(0xffffffffffffefff), result rd:x1(0x00101000ffefefff)
    # li  x16, MASK_XLEN(0xffffffffffffefff)
    # li  x31, MASK_XLEN(0x10000000000000)
    # aes64ks2 x1, x31, x16
    # sd x1, 16(x4)
inst_62:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0x00101000ffefefff, 0x10000000000000, 0xffffffffffffefff, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00101000ffefefff) 
    
 
    # Testcase 63:  rs1:x30(0x0020000000000000), rs2:x15(0xfffffffffffff7ff), result rd:x2(0x00200800ffdff7ff)
    # li  x15, MASK_XLEN(0xfffffffffffff7ff)
    # li  x30, MASK_XLEN(0x20000000000000)
    # aes64ks2 x2, x30, x15
    # sd x2, 24(x4)
inst_63:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0x00200800ffdff7ff, 0x20000000000000, 0xfffffffffffff7ff, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00200800ffdff7ff) 
    
 
    # Testcase 64:  rs1:x29(0x0040000000000000), rs2:x14(0xfffffffffffffbff), result rd:x3(0x00400400ffbffbff)
    # li  x14, MASK_XLEN(0xfffffffffffffbff)
    # li  x29, MASK_XLEN(0x40000000000000)
    # aes64ks2 x3, x29, x14
    # sd x3, 32(x4)
inst_64:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0x00400400ffbffbff, 0x40000000000000, 0xfffffffffffffbff, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0x00400400ffbffbff) 
    





    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_14_0)

 
    # Testcase 65:  rs1:x28(0x0080000000000000), rs2:x13(0xfffffffffffffdff), result rd:x4(0x00800200ff7ffdff)
    # li  x13, MASK_XLEN(0xfffffffffffffdff)
    # li  x28, MASK_XLEN(0x80000000000000)
    # aes64ks2 x4, x28, x13
    # sd x4, 0(x1)
inst_65:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0x00800200ff7ffdff, 0x80000000000000, 0xfffffffffffffdff, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00800200ff7ffdff) 
    
 
    # Testcase 66:  rs1:x27(0x0100000000000000), rs2:x12(0xfffffffffffffeff), result rd:x5(0x01000100fefffeff)
    # li  x12, MASK_XLEN(0xfffffffffffffeff)
    # li  x27, MASK_XLEN(0x100000000000000)
    # aes64ks2 x5, x27, x12
    # sd x5, 8(x1)
inst_66:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0x01000100fefffeff, 0x100000000000000, 0xfffffffffffffeff, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x01000100fefffeff) 
    
 
    # Testcase 67:  rs1:x26(0x0200000000000000), rs2:x11(0xffffffffffffff7f), result rd:x6(0x02000080fdffff7f)
    # li  x11, MASK_XLEN(0xffffffffffffff7f)
    # li  x26, MASK_XLEN(0x200000000000000)
    # aes64ks2 x6, x26, x11
    # sd x6, 16(x1)
inst_67:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0x02000080fdffff7f, 0x200000000000000, 0xffffffffffffff7f, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x02000080fdffff7f) 
    
 
    # Testcase 68:  rs1:x25(0x0400000000000000), rs2:x10(0xffffffffffffffbf), result rd:x7(0x04000040fbffffbf)
    # li  x10, MASK_XLEN(0xffffffffffffffbf)
    # li  x25, MASK_XLEN(0x400000000000000)
    # aes64ks2 x7, x25, x10
    # sd x7, 24(x1)
inst_68:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0x04000040fbffffbf, 0x400000000000000, 0xffffffffffffffbf, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x04000040fbffffbf) 
    
 
    # Testcase 69:  rs1:x24(0x0800000000000000), rs2:x9(0xffffffffffffffdf), result rd:x8(0x08000020f7ffffdf)
    # li  x9, MASK_XLEN(0xffffffffffffffdf)
    # li  x24, MASK_XLEN(0x800000000000000)
    # aes64ks2 x8, x24, x9
    # sd x8, 32(x1)
inst_69:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0x08000020f7ffffdf, 0x800000000000000, 0xffffffffffffffdf, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x08000020f7ffffdf) 
    





    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_15_0)

 
    # Testcase 70:  rs1:x23(0x1000000000000000), rs2:x8(0xffffffffffffffef), result rd:x9(0x10000010efffffef)
    # li  x8, MASK_XLEN(0xffffffffffffffef)
    # li  x23, MASK_XLEN(0x1000000000000000)
    # aes64ks2 x9, x23, x8
    # sd x9, 0(x1)
inst_70:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0x10000010efffffef, 0x1000000000000000, 0xffffffffffffffef, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x10000010efffffef) 
    
 
    # Testcase 71:  rs1:x22(0x2000000000000000), rs2:x7(0xfffffffffffffff7), result rd:x10(0x20000008dffffff7)
    # li  x7, MASK_XLEN(0xfffffffffffffff7)
    # li  x22, MASK_XLEN(0x2000000000000000)
    # aes64ks2 x10, x22, x7
    # sd x10, 8(x1)
inst_71:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0x20000008dffffff7, 0x2000000000000000, 0xfffffffffffffff7, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x20000008dffffff7) 
    
 
    # Testcase 72:  rs1:x21(0x4000000000000000), rs2:x6(0xfffffffffffffffb), result rd:x11(0x40000004bffffffb)
    # li  x6, MASK_XLEN(0xfffffffffffffffb)
    # li  x21, MASK_XLEN(0x4000000000000000)
    # aes64ks2 x11, x21, x6
    # sd x11, 16(x1)
inst_72:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0x40000004bffffffb, 0x4000000000000000, 0xfffffffffffffffb, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x40000004bffffffb) 
    
 
    # Testcase 73:  rs1:x20(0x8000000000000000), rs2:x5(0xfffffffffffffffd), result rd:x12(0x800000027ffffffd)
    # li  x5, MASK_XLEN(0xfffffffffffffffd)
    # li  x20, MASK_XLEN(0x8000000000000000)
    # aes64ks2 x12, x20, x5
    # sd x12, 24(x1)
inst_73:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0x800000027ffffffd, 0x8000000000000000, 0xfffffffffffffffd, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x800000027ffffffd) 
    
 
    # Testcase 74:  rs1:x19(0x0000000000000000), rs2:x4(0xfffffffffffffffe), result rd:x13(0x00000001fffffffe)
    # li  x4, MASK_XLEN(0xfffffffffffffffe)
    # li  x19, MASK_XLEN(0x0)
    # aes64ks2 x13, x19, x4
    # sd x13, 32(x1)
inst_74:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0x00000001fffffffe, 0x0, 0xfffffffffffffffe, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x00000001fffffffe) 
    





    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x4,signature_16_0)

 
    # Testcase 75:  rs1:x18(0xfffffffffffffffe), rs2:x3(0x0000000000000000), result rd:x14(0xffffffffffffffff)
    # li  x3, MASK_XLEN(0x0)
    # li  x18, MASK_XLEN(0xfffffffffffffffe)
    # aes64ks2 x14, x18, x3
    # sd x14, 0(x4)
inst_75:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0xffffffffffffffff, 0xfffffffffffffffe, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xffffffffffffffff) 
    
 
    # Testcase 76:  rs1:x17(0xfffffffffffffffd), rs2:x2(0x8000000000000000), result rd:x15(0x7fffffffffffffff)
    # li  x2, MASK_XLEN(0x8000000000000000)
    # li  x17, MASK_XLEN(0xfffffffffffffffd)
    # aes64ks2 x15, x17, x2
    # sd x15, 8(x4)
inst_76:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0x7fffffffffffffff, 0xfffffffffffffffd, 0x8000000000000000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x7fffffffffffffff) 
    
 
    # Testcase 77:  rs1:x16(0xfffffffffffffffb), rs2:x1(0x4000000000000000), result rd:x16(0xbfffffffffffffff)
    # li  x1, MASK_XLEN(0x4000000000000000)
    # li  x16, MASK_XLEN(0xfffffffffffffffb)
    # aes64ks2 x16, x16, x1
    # sd x16, 16(x4)
inst_77:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0xbfffffffffffffff, 0xfffffffffffffffb, 0x4000000000000000, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xbfffffffffffffff) 
    
 
    # Testcase 78:  rs1:x15(0xfffffffffffffff7), rs2:x31(0x2000000000000000), result rd:x17(0xdfffffffffffffff)
    # li  x31, MASK_XLEN(0x2000000000000000)
    # li  x15, MASK_XLEN(0xfffffffffffffff7)
    # aes64ks2 x17, x15, x31
    # sd x17, 24(x4)
inst_78:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0xdfffffffffffffff, 0xfffffffffffffff7, 0x2000000000000000, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xdfffffffffffffff) 
    
 
    # Testcase 79:  rs1:x14(0xffffffffffffffef), rs2:x30(0x1000000000000000), result rd:x18(0xefffffffffffffff)
    # li  x30, MASK_XLEN(0x1000000000000000)
    # li  x14, MASK_XLEN(0xffffffffffffffef)
    # aes64ks2 x18, x14, x30
    # sd x18, 32(x4)
inst_79:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0xefffffffffffffff, 0xffffffffffffffef, 0x1000000000000000, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xefffffffffffffff) 
    





    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_17_0)

 
    # Testcase 80:  rs1:x13(0xffffffffffffffdf), rs2:x29(0x0800000000000000), result rd:x19(0xf7ffffffffffffff)
    # li  x29, MASK_XLEN(0x800000000000000)
    # li  x13, MASK_XLEN(0xffffffffffffffdf)
    # aes64ks2 x19, x13, x29
    # sd x19, 0(x1)
inst_80:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0xf7ffffffffffffff, 0xffffffffffffffdf, 0x800000000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xf7ffffffffffffff) 
    
 
    # Testcase 81:  rs1:x12(0xffffffffffffffbf), rs2:x28(0x0400000000000000), result rd:x20(0xfbffffffffffffff)
    # li  x28, MASK_XLEN(0x400000000000000)
    # li  x12, MASK_XLEN(0xffffffffffffffbf)
    # aes64ks2 x20, x12, x28
    # sd x20, 8(x1)
inst_81:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0xfbffffffffffffff, 0xffffffffffffffbf, 0x400000000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfbffffffffffffff) 
    
 
    # Testcase 82:  rs1:x11(0xffffffffffffff7f), rs2:x27(0x0200000000000000), result rd:x21(0xfdffffffffffffff)
    # li  x27, MASK_XLEN(0x200000000000000)
    # li  x11, MASK_XLEN(0xffffffffffffff7f)
    # aes64ks2 x21, x11, x27
    # sd x21, 16(x1)
inst_82:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0xfdffffffffffffff, 0xffffffffffffff7f, 0x200000000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfdffffffffffffff) 
    
 
    # Testcase 83:  rs1:x10(0xfffffffffffffeff), rs2:x26(0x0100000000000000), result rd:x22(0xfeffffffffffffff)
    # li  x26, MASK_XLEN(0x100000000000000)
    # li  x10, MASK_XLEN(0xfffffffffffffeff)
    # aes64ks2 x22, x10, x26
    # sd x22, 24(x1)
inst_83:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0xfeffffffffffffff, 0xfffffffffffffeff, 0x100000000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfeffffffffffffff) 
    
 
    # Testcase 84:  rs1:x9(0xfffffffffffffdff), rs2:x25(0x0080000000000000), result rd:x23(0xff7fffffffffffff)
    # li  x25, MASK_XLEN(0x80000000000000)
    # li  x9, MASK_XLEN(0xfffffffffffffdff)
    # aes64ks2 x23, x9, x25
    # sd x23, 32(x1)
inst_84:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0xff7fffffffffffff, 0xfffffffffffffdff, 0x80000000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xff7fffffffffffff) 
    





    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_18_0)

 
    # Testcase 85:  rs1:x8(0xfffffffffffffbff), rs2:x24(0x0040000000000000), result rd:x24(0xffbfffffffffffff)
    # li  x24, MASK_XLEN(0x40000000000000)
    # li  x8, MASK_XLEN(0xfffffffffffffbff)
    # aes64ks2 x24, x8, x24
    # sd x24, 0(x1)
inst_85:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0xffbfffffffffffff, 0xfffffffffffffbff, 0x40000000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffbfffffffffffff) 
    
 
    # Testcase 86:  rs1:x7(0xfffffffffffff7ff), rs2:x23(0x0020000000000000), result rd:x25(0xffdfffffffffffff)
    # li  x23, MASK_XLEN(0x20000000000000)
    # li  x7, MASK_XLEN(0xfffffffffffff7ff)
    # aes64ks2 x25, x7, x23
    # sd x25, 8(x1)
inst_86:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0xffdfffffffffffff, 0xfffffffffffff7ff, 0x20000000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffdfffffffffffff) 
    
 
    # Testcase 87:  rs1:x6(0xffffffffffffefff), rs2:x22(0x0010000000000000), result rd:x26(0xffefffffffffffff)
    # li  x22, MASK_XLEN(0x10000000000000)
    # li  x6, MASK_XLEN(0xffffffffffffefff)
    # aes64ks2 x26, x6, x22
    # sd x26, 16(x1)
inst_87:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0xffefffffffffffff, 0xffffffffffffefff, 0x10000000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffefffffffffffff) 
    
 
    # Testcase 88:  rs1:x5(0xffffffffffffdfff), rs2:x21(0x0008000000000000), result rd:x27(0xfff7ffffffffffff)
    # li  x21, MASK_XLEN(0x8000000000000)
    # li  x5, MASK_XLEN(0xffffffffffffdfff)
    # aes64ks2 x27, x5, x21
    # sd x27, 24(x1)
inst_88:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0xfff7ffffffffffff, 0xffffffffffffdfff, 0x8000000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xfff7ffffffffffff) 
    
 
    # Testcase 89:  rs1:x4(0xffffffffffffbfff), rs2:x20(0x0004000000000000), result rd:x28(0xfffbffffffffffff)
    # li  x20, MASK_XLEN(0x4000000000000)
    # li  x4, MASK_XLEN(0xffffffffffffbfff)
    # aes64ks2 x28, x4, x20
    # sd x28, 32(x1)
inst_89:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0xfffbffffffffffff, 0xffffffffffffbfff, 0x4000000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xfffbffffffffffff) 
    





    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x4,signature_19_0)

 
    # Testcase 90:  rs1:x3(0xffffffffffff7fff), rs2:x19(0x0002000000000000), result rd:x29(0xfffdffffffffffff)
    # li  x19, MASK_XLEN(0x2000000000000)
    # li  x3, MASK_XLEN(0xffffffffffff7fff)
    # aes64ks2 x29, x3, x19
    # sd x29, 0(x4)
inst_90:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0xfffdffffffffffff, 0xffffffffffff7fff, 0x2000000000000, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xfffdffffffffffff) 
    
 
    # Testcase 91:  rs1:x2(0xfffffffffffeffff), rs2:x18(0x0001000000000000), result rd:x30(0xfffeffffffffffff)
    # li  x18, MASK_XLEN(0x1000000000000)
    # li  x2, MASK_XLEN(0xfffffffffffeffff)
    # aes64ks2 x30, x2, x18
    # sd x30, 8(x4)
inst_91:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0xfffeffffffffffff, 0xfffffffffffeffff, 0x1000000000000, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xfffeffffffffffff) 
    
 
    # Testcase 92:  rs1:x1(0xfffffffffffdffff), rs2:x17(0x0000800000000000), result rd:x31(0xffff7fffffffffff)
    # li  x17, MASK_XLEN(0x800000000000)
    # li  x1, MASK_XLEN(0xfffffffffffdffff)
    # aes64ks2 x31, x1, x17
    # sd x31, 16(x4)
inst_92:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0xffff7fffffffffff, 0xfffffffffffdffff, 0x800000000000, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xffff7fffffffffff) 
    
 
    # Testcase 93:  rs1:x31(0xfffffffffffbffff), rs2:x16(0x0000400000000000), result rd:x1(0xffffbfffffffffff)
    # li  x16, MASK_XLEN(0x400000000000)
    # li  x31, MASK_XLEN(0xfffffffffffbffff)
    # aes64ks2 x1, x31, x16
    # sd x1, 24(x4)
inst_93:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0xffffbfffffffffff, 0xfffffffffffbffff, 0x400000000000, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffbfffffffffff) 
    
 
    # Testcase 94:  rs1:x30(0xfffffffffff7ffff), rs2:x15(0x0000200000000000), result rd:x2(0xffffdfffffffffff)
    # li  x15, MASK_XLEN(0x200000000000)
    # li  x30, MASK_XLEN(0xfffffffffff7ffff)
    # aes64ks2 x2, x30, x15
    # sd x2, 32(x4)
inst_94:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0xffffdfffffffffff, 0xfffffffffff7ffff, 0x200000000000, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffdfffffffffff) 
    





    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_20_0)

 
    # Testcase 95:  rs1:x29(0xffffffffffefffff), rs2:x14(0x0000100000000000), result rd:x3(0xffffefffffffffff)
    # li  x14, MASK_XLEN(0x100000000000)
    # li  x29, MASK_XLEN(0xffffffffffefffff)
    # aes64ks2 x3, x29, x14
    # sd x3, 0(x1)
inst_95:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0xffffefffffffffff, 0xffffffffffefffff, 0x100000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xffffefffffffffff) 
    
 
    # Testcase 96:  rs1:x28(0xffffffffffdfffff), rs2:x13(0x0000080000000000), result rd:x4(0xfffff7ffffffffff)
    # li  x13, MASK_XLEN(0x80000000000)
    # li  x28, MASK_XLEN(0xffffffffffdfffff)
    # aes64ks2 x4, x28, x13
    # sd x4, 8(x1)
inst_96:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0xfffff7ffffffffff, 0xffffffffffdfffff, 0x80000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xfffff7ffffffffff) 
    
 
    # Testcase 97:  rs1:x27(0xffffffffffbfffff), rs2:x12(0x0000040000000000), result rd:x5(0xfffffbffffffffff)
    # li  x12, MASK_XLEN(0x40000000000)
    # li  x27, MASK_XLEN(0xffffffffffbfffff)
    # aes64ks2 x5, x27, x12
    # sd x5, 16(x1)
inst_97:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0xfffffbffffffffff, 0xffffffffffbfffff, 0x40000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xfffffbffffffffff) 
    
 
    # Testcase 98:  rs1:x26(0xffffffffff7fffff), rs2:x11(0x0000020000000000), result rd:x6(0xfffffdffffffffff)
    # li  x11, MASK_XLEN(0x20000000000)
    # li  x26, MASK_XLEN(0xffffffffff7fffff)
    # aes64ks2 x6, x26, x11
    # sd x6, 24(x1)
inst_98:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0xfffffdffffffffff, 0xffffffffff7fffff, 0x20000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfffffdffffffffff) 
    
 
    # Testcase 99:  rs1:x25(0xfffffffffeffffff), rs2:x10(0x0000010000000000), result rd:x7(0xfffffeffffffffff)
    # li  x10, MASK_XLEN(0x10000000000)
    # li  x25, MASK_XLEN(0xfffffffffeffffff)
    # aes64ks2 x7, x25, x10
    # sd x7, 32(x1)
inst_99:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0xfffffeffffffffff, 0xfffffffffeffffff, 0x10000000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffffeffffffffff) 
    





    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_21_0)

 
    # Testcase 100:  rs1:x24(0xfffffffffdffffff), rs2:x9(0x0000008000000000), result rd:x8(0xffffff7fffffffff)
    # li  x9, MASK_XLEN(0x8000000000)
    # li  x24, MASK_XLEN(0xfffffffffdffffff)
    # aes64ks2 x8, x24, x9
    # sd x8, 0(x1)
inst_100:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0xffffff7fffffffff, 0xfffffffffdffffff, 0x8000000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffff7fffffffff) 
    
 
    # Testcase 101:  rs1:x23(0xfffffffffbffffff), rs2:x8(0x0000004000000000), result rd:x9(0xffffffbfffffffff)
    # li  x8, MASK_XLEN(0x4000000000)
    # li  x23, MASK_XLEN(0xfffffffffbffffff)
    # aes64ks2 x9, x23, x8
    # sd x9, 8(x1)
inst_101:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0xffffffbfffffffff, 0xfffffffffbffffff, 0x4000000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffbfffffffff) 
    
 
    # Testcase 102:  rs1:x22(0xfffffffff7ffffff), rs2:x7(0x0000002000000000), result rd:x10(0xffffffdfffffffff)
    # li  x7, MASK_XLEN(0x2000000000)
    # li  x22, MASK_XLEN(0xfffffffff7ffffff)
    # aes64ks2 x10, x22, x7
    # sd x10, 16(x1)
inst_102:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0xffffffdfffffffff, 0xfffffffff7ffffff, 0x2000000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffdfffffffff) 
    
 
    # Testcase 103:  rs1:x21(0xffffffffefffffff), rs2:x6(0x0000001000000000), result rd:x11(0xffffffefffffffff)
    # li  x6, MASK_XLEN(0x1000000000)
    # li  x21, MASK_XLEN(0xffffffffefffffff)
    # aes64ks2 x11, x21, x6
    # sd x11, 24(x1)
inst_103:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0xffffffefffffffff, 0xffffffffefffffff, 0x1000000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffefffffffff) 
    
 
    # Testcase 104:  rs1:x20(0xffffffffdfffffff), rs2:x5(0x0000000800000000), result rd:x12(0xfffffff7ffffffff)
    # li  x5, MASK_XLEN(0x800000000)
    # li  x20, MASK_XLEN(0xffffffffdfffffff)
    # aes64ks2 x12, x20, x5
    # sd x12, 32(x1)
inst_104:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0xfffffff7ffffffff, 0xffffffffdfffffff, 0x800000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xfffffff7ffffffff) 
    





    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x5,signature_22_0)

 
    # Testcase 105:  rs1:x19(0xffffffffbfffffff), rs2:x4(0x0000000400000000), result rd:x13(0xfffffffbffffffff)
    # li  x4, MASK_XLEN(0x400000000)
    # li  x19, MASK_XLEN(0xffffffffbfffffff)
    # aes64ks2 x13, x19, x4
    # sd x13, 0(x5)
inst_105:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0xfffffffbffffffff, 0xffffffffbfffffff, 0x400000000, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xfffffffbffffffff) 
    
 
    # Testcase 106:  rs1:x18(0xffffffff7fffffff), rs2:x3(0x0000000200000000), result rd:x14(0xfffffffdffffffff)
    # li  x3, MASK_XLEN(0x200000000)
    # li  x18, MASK_XLEN(0xffffffff7fffffff)
    # aes64ks2 x14, x18, x3
    # sd x14, 8(x5)
inst_106:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0xfffffffdffffffff, 0xffffffff7fffffff, 0x200000000, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xfffffffdffffffff) 
    
 
    # Testcase 107:  rs1:x17(0xfffffffeffffffff), rs2:x2(0x0000000100000000), result rd:x15(0xfffffffffffffffe)
    # li  x2, MASK_XLEN(0x100000000)
    # li  x17, MASK_XLEN(0xfffffffeffffffff)
    # aes64ks2 x15, x17, x2
    # sd x15, 16(x5)
inst_107:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0xfffffffffffffffe, 0xfffffffeffffffff, 0x100000000, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xfffffffffffffffe) 
    
 
    # Testcase 108:  rs1:x16(0xfffffffdffffffff), rs2:x1(0x0000000080000000), result rd:x16(0x7ffffffd7ffffffd)
    # li  x1, MASK_XLEN(0x80000000)
    # li  x16, MASK_XLEN(0xfffffffdffffffff)
    # aes64ks2 x16, x16, x1
    # sd x16, 24(x5)
inst_108:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0x7ffffffd7ffffffd, 0xfffffffdffffffff, 0x80000000, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x7ffffffd7ffffffd) 
    
 
    # Testcase 109:  rs1:x15(0xfffffffbffffffff), rs2:x31(0x0000000040000000), result rd:x17(0xbffffffbbffffffb)
    # li  x31, MASK_XLEN(0x40000000)
    # li  x15, MASK_XLEN(0xfffffffbffffffff)
    # aes64ks2 x17, x15, x31
    # sd x17, 32(x5)
inst_109:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0xbffffffbbffffffb, 0xfffffffbffffffff, 0x40000000, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xbffffffbbffffffb) 
    





    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_23_0)

 
    # Testcase 110:  rs1:x14(0xfffffff7ffffffff), rs2:x30(0x0000000020000000), result rd:x18(0xdffffff7dffffff7)
    # li  x30, MASK_XLEN(0x20000000)
    # li  x14, MASK_XLEN(0xfffffff7ffffffff)
    # aes64ks2 x18, x14, x30
    # sd x18, 0(x1)
inst_110:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0xdffffff7dffffff7, 0xfffffff7ffffffff, 0x20000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xdffffff7dffffff7) 
    
 
    # Testcase 111:  rs1:x13(0xffffffefffffffff), rs2:x29(0x0000000010000000), result rd:x19(0xefffffefefffffef)
    # li  x29, MASK_XLEN(0x10000000)
    # li  x13, MASK_XLEN(0xffffffefffffffff)
    # aes64ks2 x19, x13, x29
    # sd x19, 8(x1)
inst_111:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0xefffffefefffffef, 0xffffffefffffffff, 0x10000000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xefffffefefffffef) 
    
 
    # Testcase 112:  rs1:x12(0xffffffdfffffffff), rs2:x28(0x0000000008000000), result rd:x20(0xf7ffffdff7ffffdf)
    # li  x28, MASK_XLEN(0x8000000)
    # li  x12, MASK_XLEN(0xffffffdfffffffff)
    # aes64ks2 x20, x12, x28
    # sd x20, 16(x1)
inst_112:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0xf7ffffdff7ffffdf, 0xffffffdfffffffff, 0x8000000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xf7ffffdff7ffffdf) 
    
 
    # Testcase 113:  rs1:x11(0xffffffbfffffffff), rs2:x27(0x0000000004000000), result rd:x21(0xfbffffbffbffffbf)
    # li  x27, MASK_XLEN(0x4000000)
    # li  x11, MASK_XLEN(0xffffffbfffffffff)
    # aes64ks2 x21, x11, x27
    # sd x21, 24(x1)
inst_113:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0xfbffffbffbffffbf, 0xffffffbfffffffff, 0x4000000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfbffffbffbffffbf) 
    
 
    # Testcase 114:  rs1:x10(0xffffff7fffffffff), rs2:x26(0x0000000002000000), result rd:x22(0xfdffff7ffdffff7f)
    # li  x26, MASK_XLEN(0x2000000)
    # li  x10, MASK_XLEN(0xffffff7fffffffff)
    # aes64ks2 x22, x10, x26
    # sd x22, 32(x1)
inst_114:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0xfdffff7ffdffff7f, 0xffffff7fffffffff, 0x2000000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfdffff7ffdffff7f) 
    





    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_24_0)

 
    # Testcase 115:  rs1:x9(0xfffffeffffffffff), rs2:x25(0x0000000001000000), result rd:x23(0xfefffefffefffeff)
    # li  x25, MASK_XLEN(0x1000000)
    # li  x9, MASK_XLEN(0xfffffeffffffffff)
    # aes64ks2 x23, x9, x25
    # sd x23, 0(x1)
inst_115:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0xfefffefffefffeff, 0xfffffeffffffffff, 0x1000000, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfefffefffefffeff) 
    
 
    # Testcase 116:  rs1:x8(0xfffffdffffffffff), rs2:x24(0x0000000000800000), result rd:x24(0xff7ffdffff7ffdff)
    # li  x24, MASK_XLEN(0x800000)
    # li  x8, MASK_XLEN(0xfffffdffffffffff)
    # aes64ks2 x24, x8, x24
    # sd x24, 8(x1)
inst_116:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0xff7ffdffff7ffdff, 0xfffffdffffffffff, 0x800000, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xff7ffdffff7ffdff) 
    
 
    # Testcase 117:  rs1:x7(0xfffffbffffffffff), rs2:x23(0x0000000000400000), result rd:x25(0xffbffbffffbffbff)
    # li  x23, MASK_XLEN(0x400000)
    # li  x7, MASK_XLEN(0xfffffbffffffffff)
    # aes64ks2 x25, x7, x23
    # sd x25, 16(x1)
inst_117:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0xffbffbffffbffbff, 0xfffffbffffffffff, 0x400000, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffbffbffffbffbff) 
    
 
    # Testcase 118:  rs1:x6(0xfffff7ffffffffff), rs2:x22(0x0000000000200000), result rd:x26(0xffdff7ffffdff7ff)
    # li  x22, MASK_XLEN(0x200000)
    # li  x6, MASK_XLEN(0xfffff7ffffffffff)
    # aes64ks2 x26, x6, x22
    # sd x26, 24(x1)
inst_118:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0xffdff7ffffdff7ff, 0xfffff7ffffffffff, 0x200000, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffdff7ffffdff7ff) 
    
 
    # Testcase 119:  rs1:x5(0xffffefffffffffff), rs2:x21(0x0000000000100000), result rd:x27(0xffefefffffefefff)
    # li  x21, MASK_XLEN(0x100000)
    # li  x5, MASK_XLEN(0xffffefffffffffff)
    # aes64ks2 x27, x5, x21
    # sd x27, 32(x1)
inst_119:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0xffefefffffefefff, 0xffffefffffffffff, 0x100000, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffefefffffefefff) 
    





    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x5,signature_25_0)

 
    # Testcase 120:  rs1:x4(0xffffdfffffffffff), rs2:x20(0x0000000000080000), result rd:x28(0xfff7dffffff7dfff)
    # li  x20, MASK_XLEN(0x80000)
    # li  x4, MASK_XLEN(0xffffdfffffffffff)
    # aes64ks2 x28, x4, x20
    # sd x28, 0(x5)
inst_120:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0xfff7dffffff7dfff, 0xffffdfffffffffff, 0x80000, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xfff7dffffff7dfff) 
    
 
    # Testcase 121:  rs1:x3(0xffffbfffffffffff), rs2:x19(0x0000000000040000), result rd:x29(0xfffbbffffffbbfff)
    # li  x19, MASK_XLEN(0x40000)
    # li  x3, MASK_XLEN(0xffffbfffffffffff)
    # aes64ks2 x29, x3, x19
    # sd x29, 8(x5)
inst_121:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0xfffbbffffffbbfff, 0xffffbfffffffffff, 0x40000, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xfffbbffffffbbfff) 
    
 
    # Testcase 122:  rs1:x2(0xffff7fffffffffff), rs2:x18(0x0000000000020000), result rd:x30(0xfffd7ffffffd7fff)
    # li  x18, MASK_XLEN(0x20000)
    # li  x2, MASK_XLEN(0xffff7fffffffffff)
    # aes64ks2 x30, x2, x18
    # sd x30, 16(x5)
inst_122:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0xfffd7ffffffd7fff, 0xffff7fffffffffff, 0x20000, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xfffd7ffffffd7fff) 
    
 
    # Testcase 123:  rs1:x1(0xfffeffffffffffff), rs2:x17(0x0000000000010000), result rd:x31(0xffffffffffffffff)
    # li  x17, MASK_XLEN(0x10000)
    # li  x1, MASK_XLEN(0xfffeffffffffffff)
    # aes64ks2 x31, x1, x17
    # sd x31, 24(x5)
inst_123:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0xffffffffffffffff, 0xfffeffffffffffff, 0x10000, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xffffffffffffffff) 
    
 
    # Testcase 124:  rs1:x31(0xfffdffffffffffff), rs2:x16(0x0000000000008000), result rd:x1(0xfffd7ffffffd7fff)
    # li  x16, MASK_XLEN(0x8000)
    # li  x31, MASK_XLEN(0xfffdffffffffffff)
    # aes64ks2 x1, x31, x16
    # sd x1, 32(x5)
inst_124:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0xfffd7ffffffd7fff, 0xfffdffffffffffff, 0x8000, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xfffd7ffffffd7fff) 
    





    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_26_0)

 
    # Testcase 125:  rs1:x30(0xfffbffffffffffff), rs2:x15(0x0000000000004000), result rd:x2(0xfffbbffffffbbfff)
    # li  x15, MASK_XLEN(0x4000)
    # li  x30, MASK_XLEN(0xfffbffffffffffff)
    # aes64ks2 x2, x30, x15
    # sd x2, 0(x1)
inst_125:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0xfffbbffffffbbfff, 0xfffbffffffffffff, 0x4000, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0xfffbbffffffbbfff) 
    
 
    # Testcase 126:  rs1:x29(0xfff7ffffffffffff), rs2:x14(0x0000000000002000), result rd:x3(0xfff7dffffff7dfff)
    # li  x14, MASK_XLEN(0x2000)
    # li  x29, MASK_XLEN(0xfff7ffffffffffff)
    # aes64ks2 x3, x29, x14
    # sd x3, 8(x1)
inst_126:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0xfff7dffffff7dfff, 0xfff7ffffffffffff, 0x2000, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xfff7dffffff7dfff) 
    
 
    # Testcase 127:  rs1:x28(0xffefffffffffffff), rs2:x13(0x0000000000001000), result rd:x4(0xffefefffffefefff)
    # li  x13, MASK_XLEN(0x1000)
    # li  x28, MASK_XLEN(0xffefffffffffffff)
    # aes64ks2 x4, x28, x13
    # sd x4, 16(x1)
inst_127:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0xffefefffffefefff, 0xffefffffffffffff, 0x1000, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xffefefffffefefff) 
    
 
    # Testcase 128:  rs1:x27(0xffdfffffffffffff), rs2:x12(0x0000000000000800), result rd:x5(0xffdff7ffffdff7ff)
    # li  x12, MASK_XLEN(0x800)
    # li  x27, MASK_XLEN(0xffdfffffffffffff)
    # aes64ks2 x5, x27, x12
    # sd x5, 24(x1)
inst_128:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0xffdff7ffffdff7ff, 0xffdfffffffffffff, 0x800, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xffdff7ffffdff7ff) 
    
 
    # Testcase 129:  rs1:x26(0xffbfffffffffffff), rs2:x11(0x0000000000000400), result rd:x6(0xffbffbffffbffbff)
    # li  x11, MASK_XLEN(0x400)
    # li  x26, MASK_XLEN(0xffbfffffffffffff)
    # aes64ks2 x6, x26, x11
    # sd x6, 32(x1)
inst_129:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0xffbffbffffbffbff, 0xffbfffffffffffff, 0x400, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xffbffbffffbffbff) 
    





    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_27_0)

 
    # Testcase 130:  rs1:x25(0xff7fffffffffffff), rs2:x10(0x0000000000000200), result rd:x7(0xff7ffdffff7ffdff)
    # li  x10, MASK_XLEN(0x200)
    # li  x25, MASK_XLEN(0xff7fffffffffffff)
    # aes64ks2 x7, x25, x10
    # sd x7, 0(x1)
inst_130:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0xff7ffdffff7ffdff, 0xff7fffffffffffff, 0x200, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xff7ffdffff7ffdff) 
    
 
    # Testcase 131:  rs1:x24(0xfeffffffffffffff), rs2:x9(0x0000000000000100), result rd:x8(0xfefffefffefffeff)
    # li  x9, MASK_XLEN(0x100)
    # li  x24, MASK_XLEN(0xfeffffffffffffff)
    # aes64ks2 x8, x24, x9
    # sd x8, 8(x1)
inst_131:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0xfefffefffefffeff, 0xfeffffffffffffff, 0x100, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfefffefffefffeff) 
    
 
    # Testcase 132:  rs1:x23(0xfdffffffffffffff), rs2:x8(0x0000000000000080), result rd:x9(0xfdffff7ffdffff7f)
    # li  x8, MASK_XLEN(0x80)
    # li  x23, MASK_XLEN(0xfdffffffffffffff)
    # aes64ks2 x9, x23, x8
    # sd x9, 16(x1)
inst_132:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0xfdffff7ffdffff7f, 0xfdffffffffffffff, 0x80, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xfdffff7ffdffff7f) 
    
 
    # Testcase 133:  rs1:x22(0xfbffffffffffffff), rs2:x7(0x0000000000000040), result rd:x10(0xfbffffbffbffffbf)
    # li  x7, MASK_XLEN(0x40)
    # li  x22, MASK_XLEN(0xfbffffffffffffff)
    # aes64ks2 x10, x22, x7
    # sd x10, 24(x1)
inst_133:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0xfbffffbffbffffbf, 0xfbffffffffffffff, 0x40, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xfbffffbffbffffbf) 
    
 
    # Testcase 134:  rs1:x21(0xf7ffffffffffffff), rs2:x6(0x0000000000000020), result rd:x11(0xf7ffffdff7ffffdf)
    # li  x6, MASK_XLEN(0x20)
    # li  x21, MASK_XLEN(0xf7ffffffffffffff)
    # aes64ks2 x11, x21, x6
    # sd x11, 32(x1)
inst_134:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0xf7ffffdff7ffffdf, 0xf7ffffffffffffff, 0x20, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xf7ffffdff7ffffdf) 
    





    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x6,signature_28_0)

 
    # Testcase 135:  rs1:x20(0xefffffffffffffff), rs2:x5(0x0000000000000010), result rd:x12(0xefffffefefffffef)
    # li  x5, MASK_XLEN(0x10)
    # li  x20, MASK_XLEN(0xefffffffffffffff)
    # aes64ks2 x12, x20, x5
    # sd x12, 0(x6)
inst_135:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0xefffffefefffffef, 0xefffffffffffffff, 0x10, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xefffffefefffffef) 
    
 
    # Testcase 136:  rs1:x19(0xdfffffffffffffff), rs2:x4(0x0000000000000008), result rd:x13(0xdffffff7dffffff7)
    # li  x4, MASK_XLEN(0x8)
    # li  x19, MASK_XLEN(0xdfffffffffffffff)
    # aes64ks2 x13, x19, x4
    # sd x13, 8(x6)
inst_136:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0xdffffff7dffffff7, 0xdfffffffffffffff, 0x8, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xdffffff7dffffff7) 
    
 
    # Testcase 137:  rs1:x18(0xbfffffffffffffff), rs2:x3(0x0000000000000004), result rd:x14(0xbffffffbbffffffb)
    # li  x3, MASK_XLEN(0x4)
    # li  x18, MASK_XLEN(0xbfffffffffffffff)
    # aes64ks2 x14, x18, x3
    # sd x14, 16(x6)
inst_137:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0xbffffffbbffffffb, 0xbfffffffffffffff, 0x4, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xbffffffbbffffffb) 
    
 
    # Testcase 138:  rs1:x17(0x7fffffffffffffff), rs2:x2(0x0000000000000002), result rd:x15(0x7ffffffd7ffffffd)
    # li  x2, MASK_XLEN(0x2)
    # li  x17, MASK_XLEN(0x7fffffffffffffff)
    # aes64ks2 x15, x17, x2
    # sd x15, 24(x6)
inst_138:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0x7ffffffd7ffffffd, 0x7fffffffffffffff, 0x2, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x7ffffffd7ffffffd) 
    
 
    # Testcase 139:  rs1:x16(0xffffffffffffffff), rs2:x1(0x0000000000000001), result rd:x16(0xfffffffefffffffe)
    # li  x1, MASK_XLEN(0x1)
    # li  x16, MASK_XLEN(0xffffffffffffffff)
    # aes64ks2 x16, x16, x1
    # sd x16, 32(x6)
inst_139:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0xfffffffefffffffe, 0xffffffffffffffff, 0x1, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xfffffffefffffffe) 
    





    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_29_0)

 
    # Testcase 140:  rs1:x15(0x0000000000000001), rs2:x31(0x0000000000000000), result rd:x17(0x0000000000000000)
    # li  x31, MASK_XLEN(0x0)
    # li  x15, MASK_XLEN(0x1)
    # aes64ks2 x17, x15, x31
    # sd x17, 0(x1)
inst_140:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0x0000000000000000, 0x1, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x0000000000000000) 
    
 
    # Testcase 141:  rs1:x14(0x0000000000000002), rs2:x30(0x0000000000000000), result rd:x18(0x0000000000000000)
    # li  x30, MASK_XLEN(0x0)
    # li  x14, MASK_XLEN(0x2)
    # aes64ks2 x18, x14, x30
    # sd x18, 8(x1)
inst_141:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0x0000000000000000, 0x2, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0x0000000000000000) 
    
 
    # Testcase 142:  rs1:x13(0x0000000000000004), rs2:x29(0x0000000000000000), result rd:x19(0x0000000000000000)
    # li  x29, MASK_XLEN(0x0)
    # li  x13, MASK_XLEN(0x4)
    # aes64ks2 x19, x13, x29
    # sd x19, 16(x1)
inst_142:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0x0000000000000000, 0x4, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x0000000000000000) 
    
 
    # Testcase 143:  rs1:x12(0x0000000000000008), rs2:x28(0x0000000000000000), result rd:x20(0x0000000000000000)
    # li  x28, MASK_XLEN(0x0)
    # li  x12, MASK_XLEN(0x8)
    # aes64ks2 x20, x12, x28
    # sd x20, 24(x1)
inst_143:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0x0000000000000000, 0x8, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x0000000000000000) 
    
 
    # Testcase 144:  rs1:x11(0x0000000000000010), rs2:x27(0x0000000000000000), result rd:x21(0x0000000000000000)
    # li  x27, MASK_XLEN(0x0)
    # li  x11, MASK_XLEN(0x10)
    # aes64ks2 x21, x11, x27
    # sd x21, 32(x1)
inst_144:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0x0000000000000000, 0x10, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000000000000) 
    





    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_30_0)

 
    # Testcase 145:  rs1:x10(0x0000000000000020), rs2:x26(0x0000000000000000), result rd:x22(0x0000000000000000)
    # li  x26, MASK_XLEN(0x0)
    # li  x10, MASK_XLEN(0x20)
    # aes64ks2 x22, x10, x26
    # sd x22, 0(x1)
inst_145:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0x0000000000000000, 0x20, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000000000000000) 
    
 
    # Testcase 146:  rs1:x9(0x0000000000000040), rs2:x25(0x0000000000000000), result rd:x23(0x0000000000000000)
    # li  x25, MASK_XLEN(0x0)
    # li  x9, MASK_XLEN(0x40)
    # aes64ks2 x23, x9, x25
    # sd x23, 8(x1)
inst_146:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0x0000000000000000, 0x40, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000000000000000) 
    
 
    # Testcase 147:  rs1:x8(0x0000000000000080), rs2:x24(0x0000000000000000), result rd:x24(0x0000000000000000)
    # li  x24, MASK_XLEN(0x0)
    # li  x8, MASK_XLEN(0x80)
    # aes64ks2 x24, x8, x24
    # sd x24, 16(x1)
inst_147:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0x0000000000000000, 0x80, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000000000000000) 
    
 
    # Testcase 148:  rs1:x7(0x0000000000000100), rs2:x23(0x0000000000000000), result rd:x25(0x0000000000000000)
    # li  x23, MASK_XLEN(0x0)
    # li  x7, MASK_XLEN(0x100)
    # aes64ks2 x25, x7, x23
    # sd x25, 24(x1)
inst_148:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0x0000000000000000, 0x100, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000000000000000) 
    
 
    # Testcase 149:  rs1:x6(0x0000000000000200), rs2:x22(0x0000000000000000), result rd:x26(0x0000000000000000)
    # li  x22, MASK_XLEN(0x0)
    # li  x6, MASK_XLEN(0x200)
    # aes64ks2 x26, x6, x22
    # sd x26, 32(x1)
inst_149:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0x0000000000000000, 0x200, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x0000000000000000) 
    





    RVTEST_CASE(30,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x6,signature_31_0)

 
    # Testcase 150:  rs1:x5(0x0000000000000400), rs2:x21(0x0000000000000000), result rd:x27(0x0000000000000000)
    # li  x21, MASK_XLEN(0x0)
    # li  x5, MASK_XLEN(0x400)
    # aes64ks2 x27, x5, x21
    # sd x27, 0(x6)
inst_150:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0x0000000000000000, 0x400, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000000000000000) 
    
 
    # Testcase 151:  rs1:x4(0x0000000000000800), rs2:x20(0x0000000000000000), result rd:x28(0x0000000000000000)
    # li  x20, MASK_XLEN(0x0)
    # li  x4, MASK_XLEN(0x800)
    # aes64ks2 x28, x4, x20
    # sd x28, 8(x6)
inst_151:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0x0000000000000000, 0x800, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000000000000000) 
    
 
    # Testcase 152:  rs1:x3(0x0000000000001000), rs2:x19(0x0000000000000000), result rd:x29(0x0000000000000000)
    # li  x19, MASK_XLEN(0x0)
    # li  x3, MASK_XLEN(0x1000)
    # aes64ks2 x29, x3, x19
    # sd x29, 16(x6)
inst_152:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0x0000000000000000, 0x1000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000000000000000) 
    
 
    # Testcase 153:  rs1:x2(0x0000000000002000), rs2:x18(0x0000000000000000), result rd:x30(0x0000000000000000)
    # li  x18, MASK_XLEN(0x0)
    # li  x2, MASK_XLEN(0x2000)
    # aes64ks2 x30, x2, x18
    # sd x30, 24(x6)
inst_153:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0x0000000000000000, 0x2000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000000000000000) 
    
 
    # Testcase 154:  rs1:x1(0x0000000000004000), rs2:x17(0x0000000000000000), result rd:x31(0x0000000000000000)
    # li  x17, MASK_XLEN(0x0)
    # li  x1, MASK_XLEN(0x4000)
    # aes64ks2 x31, x1, x17
    # sd x31, 32(x6)
inst_154:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0x0000000000000000, 0x4000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x31, 0x0000000000000000) 
    





    RVTEST_CASE(31,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x6,signature_32_0)

 
    # Testcase 155:  rs1:x31(0x0000000000008000), rs2:x16(0x0000000000000000), result rd:x1(0x0000000000000000)
    # li  x16, MASK_XLEN(0x0)
    # li  x31, MASK_XLEN(0x8000)
    # aes64ks2 x1, x31, x16
    # sd x1, 0(x6)
inst_155:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0x0000000000000000, 0x8000, 0x0, x6, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x0000000000000000) 
    
 
    # Testcase 156:  rs1:x30(0x0000000000010000), rs2:x15(0x0000000000000000), result rd:x2(0x0000000000000000)
    # li  x15, MASK_XLEN(0x0)
    # li  x30, MASK_XLEN(0x10000)
    # aes64ks2 x2, x30, x15
    # sd x2, 8(x6)
inst_156:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0x0000000000000000, 0x10000, 0x0, x6, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x0000000000000000) 
    
 
    # Testcase 157:  rs1:x29(0x0000000000020000), rs2:x14(0x0000000000000000), result rd:x3(0x0000000000000000)
    # li  x14, MASK_XLEN(0x0)
    # li  x29, MASK_XLEN(0x20000)
    # aes64ks2 x3, x29, x14
    # sd x3, 16(x6)
inst_157:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0x0000000000000000, 0x20000, 0x0, x6, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x0000000000000000) 
    
 
    # Testcase 158:  rs1:x28(0x0000000000040000), rs2:x13(0x0000000000000000), result rd:x4(0x0000000000000000)
    # li  x13, MASK_XLEN(0x0)
    # li  x28, MASK_XLEN(0x40000)
    # aes64ks2 x4, x28, x13
    # sd x4, 24(x6)
inst_158:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0x0000000000000000, 0x40000, 0x0, x6, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x0000000000000000) 
    
 
    # Testcase 159:  rs1:x27(0x0000000000080000), rs2:x12(0x0000000000000000), result rd:x5(0x0000000000000000)
    # li  x12, MASK_XLEN(0x0)
    # li  x27, MASK_XLEN(0x80000)
    # aes64ks2 x5, x27, x12
    # sd x5, 32(x6)
inst_159:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0x0000000000000000, 0x80000, 0x0, x6, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0x0000000000000000) 
    





    RVTEST_CASE(32,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_33_0)

 
    # Testcase 160:  rs1:x26(0x0000000000100000), rs2:x11(0x0000000000000000), result rd:x6(0x0000000000000000)
    # li  x11, MASK_XLEN(0x0)
    # li  x26, MASK_XLEN(0x100000)
    # aes64ks2 x6, x26, x11
    # sd x6, 0(x1)
inst_160:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0x0000000000000000, 0x100000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0000000000000000) 
    
 
    # Testcase 161:  rs1:x25(0x0000000000200000), rs2:x10(0x0000000000000000), result rd:x7(0x0000000000000000)
    # li  x10, MASK_XLEN(0x0)
    # li  x25, MASK_XLEN(0x200000)
    # aes64ks2 x7, x25, x10
    # sd x7, 8(x1)
inst_161:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0x0000000000000000, 0x200000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0000000000000000) 
    
 
    # Testcase 162:  rs1:x24(0x0000000000400000), rs2:x9(0x0000000000000000), result rd:x8(0x0000000000000000)
    # li  x9, MASK_XLEN(0x0)
    # li  x24, MASK_XLEN(0x400000)
    # aes64ks2 x8, x24, x9
    # sd x8, 16(x1)
inst_162:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0x0000000000000000, 0x400000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0000000000000000) 
    
 
    # Testcase 163:  rs1:x23(0x0000000000800000), rs2:x8(0x0000000000000000), result rd:x9(0x0000000000000000)
    # li  x8, MASK_XLEN(0x0)
    # li  x23, MASK_XLEN(0x800000)
    # aes64ks2 x9, x23, x8
    # sd x9, 24(x1)
inst_163:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0x0000000000000000, 0x800000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0000000000000000) 
    
 
    # Testcase 164:  rs1:x22(0x0000000001000000), rs2:x7(0x0000000000000000), result rd:x10(0x0000000000000000)
    # li  x7, MASK_XLEN(0x0)
    # li  x22, MASK_XLEN(0x1000000)
    # aes64ks2 x10, x22, x7
    # sd x10, 32(x1)
inst_164:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0x0000000000000000, 0x1000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0000000000000000) 
    





    RVTEST_CASE(33,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_34_0)

 
    # Testcase 165:  rs1:x21(0x0000000002000000), rs2:x6(0x0000000000000000), result rd:x11(0x0000000000000000)
    # li  x6, MASK_XLEN(0x0)
    # li  x21, MASK_XLEN(0x2000000)
    # aes64ks2 x11, x21, x6
    # sd x11, 0(x1)
inst_165:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0x0000000000000000, 0x2000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x0000000000000000) 
    
 
    # Testcase 166:  rs1:x20(0x0000000004000000), rs2:x5(0x0000000000000000), result rd:x12(0x0000000000000000)
    # li  x5, MASK_XLEN(0x0)
    # li  x20, MASK_XLEN(0x4000000)
    # aes64ks2 x12, x20, x5
    # sd x12, 8(x1)
inst_166:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0x0000000000000000, 0x4000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x0000000000000000) 
    
 
    # Testcase 167:  rs1:x19(0x0000000008000000), rs2:x4(0x0000000000000000), result rd:x13(0x0000000000000000)
    # li  x4, MASK_XLEN(0x0)
    # li  x19, MASK_XLEN(0x8000000)
    # aes64ks2 x13, x19, x4
    # sd x13, 16(x1)
inst_167:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0x0000000000000000, 0x8000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x0000000000000000) 
    
 
    # Testcase 168:  rs1:x18(0x0000000010000000), rs2:x3(0x0000000000000000), result rd:x14(0x0000000000000000)
    # li  x3, MASK_XLEN(0x0)
    # li  x18, MASK_XLEN(0x10000000)
    # aes64ks2 x14, x18, x3
    # sd x14, 24(x1)
inst_168:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0x0000000000000000, 0x10000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x0000000000000000) 
    
 
    # Testcase 169:  rs1:x17(0x0000000020000000), rs2:x2(0x0000000000000000), result rd:x15(0x0000000000000000)
    # li  x2, MASK_XLEN(0x0)
    # li  x17, MASK_XLEN(0x20000000)
    # aes64ks2 x15, x17, x2
    # sd x15, 32(x1)
inst_169:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0x0000000000000000, 0x20000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x0000000000000000) 
    





    RVTEST_CASE(34,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x2,signature_35_0)

 
    # Testcase 170:  rs1:x16(0x0000000040000000), rs2:x1(0x0000000000000000), result rd:x16(0x0000000000000000)
    # li  x1, MASK_XLEN(0x0)
    # li  x16, MASK_XLEN(0x40000000)
    # aes64ks2 x16, x16, x1
    # sd x16, 0(x2)
inst_170:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0x0000000000000000, 0x40000000, 0x0, x2, 0, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x0000000000000000) 
    
 
    # Testcase 171:  rs1:x15(0x0000000080000000), rs2:x31(0x0000000000000000), result rd:x17(0x0000000000000000)
    # li  x31, MASK_XLEN(0x0)
    # li  x15, MASK_XLEN(0x80000000)
    # aes64ks2 x17, x15, x31
    # sd x17, 8(x2)
inst_171:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0x0000000000000000, 0x80000000, 0x0, x2, 8, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x0000000000000000) 
    
 
    # Testcase 172:  rs1:x14(0x0000000100000000), rs2:x30(0x0000000000000000), result rd:x18(0x0000000100000001)
    # li  x30, MASK_XLEN(0x0)
    # li  x14, MASK_XLEN(0x100000000)
    # aes64ks2 x18, x14, x30
    # sd x18, 16(x2)
inst_172:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0x0000000100000001, 0x100000000, 0x0, x2, 16, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x0000000100000001) 
    
 
    # Testcase 173:  rs1:x13(0x0000000200000000), rs2:x29(0x0000000000000000), result rd:x19(0x0000000200000002)
    # li  x29, MASK_XLEN(0x0)
    # li  x13, MASK_XLEN(0x200000000)
    # aes64ks2 x19, x13, x29
    # sd x19, 24(x2)
inst_173:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0x0000000200000002, 0x200000000, 0x0, x2, 24, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x0000000200000002) 
    
 
    # Testcase 174:  rs1:x12(0x0000000400000000), rs2:x28(0x0000000000000000), result rd:x20(0x0000000400000004)
    # li  x28, MASK_XLEN(0x0)
    # li  x12, MASK_XLEN(0x400000000)
    # aes64ks2 x20, x12, x28
    # sd x20, 32(x2)
inst_174:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0x0000000400000004, 0x400000000, 0x0, x2, 32, x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x0000000400000004) 
    





    RVTEST_CASE(35,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_36_0)

 
    # Testcase 175:  rs1:x11(0x0000000800000000), rs2:x27(0x0000000000000000), result rd:x21(0x0000000800000008)
    # li  x27, MASK_XLEN(0x0)
    # li  x11, MASK_XLEN(0x800000000)
    # aes64ks2 x21, x11, x27
    # sd x21, 0(x1)
inst_175:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0x0000000800000008, 0x800000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x0000000800000008) 
    
 
    # Testcase 176:  rs1:x10(0x0000001000000000), rs2:x26(0x0000000000000000), result rd:x22(0x0000001000000010)
    # li  x26, MASK_XLEN(0x0)
    # li  x10, MASK_XLEN(0x1000000000)
    # aes64ks2 x22, x10, x26
    # sd x22, 8(x1)
inst_176:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0x0000001000000010, 0x1000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x0000001000000010) 
    
 
    # Testcase 177:  rs1:x9(0x0000002000000000), rs2:x25(0x0000000000000000), result rd:x23(0x0000002000000020)
    # li  x25, MASK_XLEN(0x0)
    # li  x9, MASK_XLEN(0x2000000000)
    # aes64ks2 x23, x9, x25
    # sd x23, 16(x1)
inst_177:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0x0000002000000020, 0x2000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x0000002000000020) 
    
 
    # Testcase 178:  rs1:x8(0x0000004000000000), rs2:x24(0x0000000000000000), result rd:x24(0x0000004000000040)
    # li  x24, MASK_XLEN(0x0)
    # li  x8, MASK_XLEN(0x4000000000)
    # aes64ks2 x24, x8, x24
    # sd x24, 24(x1)
inst_178:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0x0000004000000040, 0x4000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x0000004000000040) 
    
 
    # Testcase 179:  rs1:x7(0x0000008000000000), rs2:x23(0x0000000000000000), result rd:x25(0x0000008000000080)
    # li  x23, MASK_XLEN(0x0)
    # li  x7, MASK_XLEN(0x8000000000)
    # aes64ks2 x25, x7, x23
    # sd x25, 32(x1)
inst_179:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0x0000008000000080, 0x8000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x0000008000000080) 
    





    RVTEST_CASE(36,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_37_0)

 
    # Testcase 180:  rs1:x6(0x0000010000000000), rs2:x22(0x0000000000000000), result rd:x26(0x0000010000000100)
    # li  x22, MASK_XLEN(0x0)
    # li  x6, MASK_XLEN(0x10000000000)
    # aes64ks2 x26, x6, x22
    # sd x26, 0(x1)
inst_180:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0x0000010000000100, 0x10000000000, 0x0, x1, 0, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x0000010000000100) 
    
 
    # Testcase 181:  rs1:x5(0x0000020000000000), rs2:x21(0x0000000000000000), result rd:x27(0x0000020000000200)
    # li  x21, MASK_XLEN(0x0)
    # li  x5, MASK_XLEN(0x20000000000)
    # aes64ks2 x27, x5, x21
    # sd x27, 8(x1)
inst_181:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0x0000020000000200, 0x20000000000, 0x0, x1, 8, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x0000020000000200) 
    
 
    # Testcase 182:  rs1:x4(0x0000040000000000), rs2:x20(0x0000000000000000), result rd:x28(0x0000040000000400)
    # li  x20, MASK_XLEN(0x0)
    # li  x4, MASK_XLEN(0x40000000000)
    # aes64ks2 x28, x4, x20
    # sd x28, 16(x1)
inst_182:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0x0000040000000400, 0x40000000000, 0x0, x1, 16, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x0000040000000400) 
    
 
    # Testcase 183:  rs1:x3(0x0000080000000000), rs2:x19(0x0000000000000000), result rd:x29(0x0000080000000800)
    # li  x19, MASK_XLEN(0x0)
    # li  x3, MASK_XLEN(0x80000000000)
    # aes64ks2 x29, x3, x19
    # sd x29, 24(x1)
inst_183:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0x0000080000000800, 0x80000000000, 0x0, x1, 24, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x0000080000000800) 
    
 
    # Testcase 184:  rs1:x2(0x0000100000000000), rs2:x18(0x0000000000000000), result rd:x30(0x0000100000001000)
    # li  x18, MASK_XLEN(0x0)
    # li  x2, MASK_XLEN(0x100000000000)
    # aes64ks2 x30, x2, x18
    # sd x30, 32(x1)
inst_184:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0x0000100000001000, 0x100000000000, 0x0, x1, 32, x7)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x0000100000001000) 
    





    RVTEST_CASE(37,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x5,signature_38_0)

 
    # Testcase 185:  rs1:x1(0x0000200000000000), rs2:x17(0x0000000000000000), result rd:x31(0x0000200000002000)
    # li  x17, MASK_XLEN(0x0)
    # li  x1, MASK_XLEN(0x200000000000)
    # aes64ks2 x31, x1, x17
    # sd x31, 0(x5)
inst_185:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0x0000200000002000, 0x200000000000, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x0000200000002000) 
    
 
    # Testcase 186:  rs1:x31(0x0000400000000000), rs2:x16(0x0000000000000000), result rd:x1(0x0000400000004000)
    # li  x16, MASK_XLEN(0x0)
    # li  x31, MASK_XLEN(0x400000000000)
    # aes64ks2 x1, x31, x16
    # sd x1, 8(x5)
inst_186:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0x0000400000004000, 0x400000000000, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x0000400000004000) 
    
 
    # Testcase 187:  rs1:x30(0x0000800000000000), rs2:x15(0x0000000000000000), result rd:x2(0x0000800000008000)
    # li  x15, MASK_XLEN(0x0)
    # li  x30, MASK_XLEN(0x800000000000)
    # aes64ks2 x2, x30, x15
    # sd x2, 16(x5)
inst_187:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0x0000800000008000, 0x800000000000, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x0000800000008000) 
    
 
    # Testcase 188:  rs1:x29(0x0001000000000000), rs2:x14(0x0000000000000000), result rd:x3(0x0001000000010000)
    # li  x14, MASK_XLEN(0x0)
    # li  x29, MASK_XLEN(0x1000000000000)
    # aes64ks2 x3, x29, x14
    # sd x3, 24(x5)
inst_188:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0x0001000000010000, 0x1000000000000, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x0001000000010000) 
    
 
    # Testcase 189:  rs1:x28(0x0002000000000000), rs2:x13(0x0000000000000000), result rd:x4(0x0002000000020000)
    # li  x13, MASK_XLEN(0x0)
    # li  x28, MASK_XLEN(0x2000000000000)
    # aes64ks2 x4, x28, x13
    # sd x4, 32(x5)
inst_189:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0x0002000000020000, 0x2000000000000, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x0002000000020000) 
    





    RVTEST_CASE(38,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_39_0)

 
    # Testcase 190:  rs1:x27(0x0004000000000000), rs2:x12(0x0000000000000000), result rd:x5(0x0004000000040000)
    # li  x12, MASK_XLEN(0x0)
    # li  x27, MASK_XLEN(0x4000000000000)
    # aes64ks2 x5, x27, x12
    # sd x5, 0(x1)
inst_190:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0x0004000000040000, 0x4000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x0004000000040000) 
    
 
    # Testcase 191:  rs1:x26(0x0008000000000000), rs2:x11(0x0000000000000000), result rd:x6(0x0008000000080000)
    # li  x11, MASK_XLEN(0x0)
    # li  x26, MASK_XLEN(0x8000000000000)
    # aes64ks2 x6, x26, x11
    # sd x6, 8(x1)
inst_191:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0x0008000000080000, 0x8000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0008000000080000) 
    
 
    # Testcase 192:  rs1:x25(0x0010000000000000), rs2:x10(0x0000000000000000), result rd:x7(0x0010000000100000)
    # li  x10, MASK_XLEN(0x0)
    # li  x25, MASK_XLEN(0x10000000000000)
    # aes64ks2 x7, x25, x10
    # sd x7, 16(x1)
inst_192:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0x0010000000100000, 0x10000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x0010000000100000) 
    
 
    # Testcase 193:  rs1:x24(0x0020000000000000), rs2:x9(0x0000000000000000), result rd:x8(0x0020000000200000)
    # li  x9, MASK_XLEN(0x0)
    # li  x24, MASK_XLEN(0x20000000000000)
    # aes64ks2 x8, x24, x9
    # sd x8, 24(x1)
inst_193:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0x0020000000200000, 0x20000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x0020000000200000) 
    
 
    # Testcase 194:  rs1:x23(0x0040000000000000), rs2:x8(0x0000000000000000), result rd:x9(0x0040000000400000)
    # li  x8, MASK_XLEN(0x0)
    # li  x23, MASK_XLEN(0x40000000000000)
    # aes64ks2 x9, x23, x8
    # sd x9, 32(x1)
inst_194:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0x0040000000400000, 0x40000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0040000000400000) 
    





    RVTEST_CASE(39,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_40_0)

 
    # Testcase 195:  rs1:x22(0x0080000000000000), rs2:x7(0x0000000000000000), result rd:x10(0x0080000000800000)
    # li  x7, MASK_XLEN(0x0)
    # li  x22, MASK_XLEN(0x80000000000000)
    # aes64ks2 x10, x22, x7
    # sd x10, 0(x1)
inst_195:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0x0080000000800000, 0x80000000000000, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x0080000000800000) 
    
 
    # Testcase 196:  rs1:x21(0x0100000000000000), rs2:x6(0x0000000000000000), result rd:x11(0x0100000001000000)
    # li  x6, MASK_XLEN(0x0)
    # li  x21, MASK_XLEN(0x100000000000000)
    # aes64ks2 x11, x21, x6
    # sd x11, 8(x1)
inst_196:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0x0100000001000000, 0x100000000000000, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x0100000001000000) 
    
 
    # Testcase 197:  rs1:x20(0x0200000000000000), rs2:x5(0x0000000000000000), result rd:x12(0x0200000002000000)
    # li  x5, MASK_XLEN(0x0)
    # li  x20, MASK_XLEN(0x200000000000000)
    # aes64ks2 x12, x20, x5
    # sd x12, 16(x1)
inst_197:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0x0200000002000000, 0x200000000000000, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x0200000002000000) 
    
 
    # Testcase 198:  rs1:x19(0x0400000000000000), rs2:x4(0x0000000000000000), result rd:x13(0x0400000004000000)
    # li  x4, MASK_XLEN(0x0)
    # li  x19, MASK_XLEN(0x400000000000000)
    # aes64ks2 x13, x19, x4
    # sd x13, 24(x1)
inst_198:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0x0400000004000000, 0x400000000000000, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x0400000004000000) 
    
 
    # Testcase 199:  rs1:x18(0x0800000000000000), rs2:x3(0x0000000000000000), result rd:x14(0x0800000008000000)
    # li  x3, MASK_XLEN(0x0)
    # li  x18, MASK_XLEN(0x800000000000000)
    # aes64ks2 x14, x18, x3
    # sd x14, 32(x1)
inst_199:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0x0800000008000000, 0x800000000000000, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0x0800000008000000) 
    





    RVTEST_CASE(40,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x3,signature_41_0)

 
    # Testcase 200:  rs1:x17(0x1000000000000000), rs2:x2(0x0000000000000000), result rd:x15(0x1000000010000000)
    # li  x2, MASK_XLEN(0x0)
    # li  x17, MASK_XLEN(0x1000000000000000)
    # aes64ks2 x15, x17, x2
    # sd x15, 0(x3)
inst_200:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0x1000000010000000, 0x1000000000000000, 0x0, x3, 0, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0x1000000010000000) 
    
 
    # Testcase 201:  rs1:x16(0x2000000000000000), rs2:x1(0x0000000000000000), result rd:x16(0x2000000020000000)
    # li  x1, MASK_XLEN(0x0)
    # li  x16, MASK_XLEN(0x2000000000000000)
    # aes64ks2 x16, x16, x1
    # sd x16, 8(x3)
inst_201:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0x2000000020000000, 0x2000000000000000, 0x0, x3, 8, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0x2000000020000000) 
    
 
    # Testcase 202:  rs1:x15(0x4000000000000000), rs2:x31(0x0000000000000000), result rd:x17(0x4000000040000000)
    # li  x31, MASK_XLEN(0x0)
    # li  x15, MASK_XLEN(0x4000000000000000)
    # aes64ks2 x17, x15, x31
    # sd x17, 16(x3)
inst_202:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0x4000000040000000, 0x4000000000000000, 0x0, x3, 16, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0x4000000040000000) 
    
 
    # Testcase 203:  rs1:x14(0x8000000000000000), rs2:x30(0x0000000000000000), result rd:x18(0x8000000080000000)
    # li  x30, MASK_XLEN(0x0)
    # li  x14, MASK_XLEN(0x8000000000000000)
    # aes64ks2 x18, x14, x30
    # sd x18, 24(x3)
inst_203:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0x8000000080000000, 0x8000000000000000, 0x0, x3, 24, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0x8000000080000000) 
    
 
    # Testcase 204:  rs1:x13(0x0000000000000000), rs2:x29(0x0000000000000000), result rd:x19(0x0000000000000000)
    # li  x29, MASK_XLEN(0x0)
    # li  x13, MASK_XLEN(0x0)
    # aes64ks2 x19, x13, x29
    # sd x19, 32(x3)
inst_204:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0x0000000000000000, 0x0, 0x0, x3, 32, x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0x0000000000000000) 
    





    RVTEST_CASE(41,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_42_0)

 
    # Testcase 205:  rs1:x12(0xfffffffffffffffe), rs2:x28(0x0000000000000000), result rd:x20(0xffffffffffffffff)
    # li  x28, MASK_XLEN(0x0)
    # li  x12, MASK_XLEN(0xfffffffffffffffe)
    # aes64ks2 x20, x12, x28
    # sd x20, 0(x1)
inst_205:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0xffffffffffffffff, 0xfffffffffffffffe, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffffffffffff) 
    
 
    # Testcase 206:  rs1:x11(0xfffffffffffffffd), rs2:x27(0x0000000000000000), result rd:x21(0xffffffffffffffff)
    # li  x27, MASK_XLEN(0x0)
    # li  x11, MASK_XLEN(0xfffffffffffffffd)
    # aes64ks2 x21, x11, x27
    # sd x21, 8(x1)
inst_206:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0xffffffffffffffff, 0xfffffffffffffffd, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xffffffffffffffff) 
    
 
    # Testcase 207:  rs1:x10(0xfffffffffffffffb), rs2:x26(0x0000000000000000), result rd:x22(0xffffffffffffffff)
    # li  x26, MASK_XLEN(0x0)
    # li  x10, MASK_XLEN(0xfffffffffffffffb)
    # aes64ks2 x22, x10, x26
    # sd x22, 16(x1)
inst_207:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0xffffffffffffffff, 0xfffffffffffffffb, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffffffffffff) 
    
 
    # Testcase 208:  rs1:x9(0xfffffffffffffff7), rs2:x25(0x0000000000000000), result rd:x23(0xffffffffffffffff)
    # li  x25, MASK_XLEN(0x0)
    # li  x9, MASK_XLEN(0xfffffffffffffff7)
    # aes64ks2 x23, x9, x25
    # sd x23, 24(x1)
inst_208:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0xffffffffffffffff, 0xfffffffffffffff7, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xffffffffffffffff) 
    
 
    # Testcase 209:  rs1:x8(0xffffffffffffffef), rs2:x24(0x0000000000000000), result rd:x24(0xffffffffffffffff)
    # li  x24, MASK_XLEN(0x0)
    # li  x8, MASK_XLEN(0xffffffffffffffef)
    # aes64ks2 x24, x8, x24
    # sd x24, 32(x1)
inst_209:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0xffffffffffffffff, 0xffffffffffffffef, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xffffffffffffffff) 
    





    RVTEST_CASE(42,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_43_0)

 
    # Testcase 210:  rs1:x7(0xffffffffffffffdf), rs2:x23(0x0000000000000000), result rd:x25(0xffffffffffffffff)
    # li  x23, MASK_XLEN(0x0)
    # li  x7, MASK_XLEN(0xffffffffffffffdf)
    # aes64ks2 x25, x7, x23
    # sd x25, 0(x1)
inst_210:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0xffffffffffffffff, 0xffffffffffffffdf, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffffffffffff) 
    
 
    # Testcase 211:  rs1:x6(0xffffffffffffffbf), rs2:x22(0x0000000000000000), result rd:x26(0xffffffffffffffff)
    # li  x22, MASK_XLEN(0x0)
    # li  x6, MASK_XLEN(0xffffffffffffffbf)
    # aes64ks2 x26, x6, x22
    # sd x26, 8(x1)
inst_211:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0xffffffffffffffff, 0xffffffffffffffbf, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffffffffffff) 
    
 
    # Testcase 212:  rs1:x5(0xffffffffffffff7f), rs2:x21(0x0000000000000000), result rd:x27(0xffffffffffffffff)
    # li  x21, MASK_XLEN(0x0)
    # li  x5, MASK_XLEN(0xffffffffffffff7f)
    # aes64ks2 x27, x5, x21
    # sd x27, 16(x1)
inst_212:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0xffffffffffffffff, 0xffffffffffffff7f, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffffffffffff) 
    
 
    # Testcase 213:  rs1:x4(0xfffffffffffffeff), rs2:x20(0x0000000000000000), result rd:x28(0xffffffffffffffff)
    # li  x20, MASK_XLEN(0x0)
    # li  x4, MASK_XLEN(0xfffffffffffffeff)
    # aes64ks2 x28, x4, x20
    # sd x28, 24(x1)
inst_213:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0xffffffffffffffff, 0xfffffffffffffeff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xffffffffffffffff) 
    
 
    # Testcase 214:  rs1:x3(0xfffffffffffffdff), rs2:x19(0x0000000000000000), result rd:x29(0xffffffffffffffff)
    # li  x19, MASK_XLEN(0x0)
    # li  x3, MASK_XLEN(0xfffffffffffffdff)
    # aes64ks2 x29, x3, x19
    # sd x29, 32(x1)
inst_214:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0xffffffffffffffff, 0xfffffffffffffdff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0xffffffffffffffff) 
    





    RVTEST_CASE(43,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x4,signature_44_0)

 
    # Testcase 215:  rs1:x2(0xfffffffffffffbff), rs2:x18(0x0000000000000000), result rd:x30(0xffffffffffffffff)
    # li  x18, MASK_XLEN(0x0)
    # li  x2, MASK_XLEN(0xfffffffffffffbff)
    # aes64ks2 x30, x2, x18
    # sd x30, 0(x4)
inst_215:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0xffffffffffffffff, 0xfffffffffffffbff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xffffffffffffffff) 
    
 
    # Testcase 216:  rs1:x1(0xfffffffffffff7ff), rs2:x17(0x0000000000000000), result rd:x31(0xffffffffffffffff)
    # li  x17, MASK_XLEN(0x0)
    # li  x1, MASK_XLEN(0xfffffffffffff7ff)
    # aes64ks2 x31, x1, x17
    # sd x31, 8(x4)
inst_216:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0xffffffffffffffff, 0xfffffffffffff7ff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xffffffffffffffff) 
    
 
    # Testcase 217:  rs1:x31(0xffffffffffffefff), rs2:x16(0x0000000000000000), result rd:x1(0xffffffffffffffff)
    # li  x16, MASK_XLEN(0x0)
    # li  x31, MASK_XLEN(0xffffffffffffefff)
    # aes64ks2 x1, x31, x16
    # sd x1, 16(x4)
inst_217:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0xffffffffffffffff, 0xffffffffffffefff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xffffffffffffffff) 
    
 
    # Testcase 218:  rs1:x30(0xffffffffffffdfff), rs2:x15(0x0000000000000000), result rd:x2(0xffffffffffffffff)
    # li  x15, MASK_XLEN(0x0)
    # li  x30, MASK_XLEN(0xffffffffffffdfff)
    # aes64ks2 x2, x30, x15
    # sd x2, 24(x4)
inst_218:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0xffffffffffffffff, 0xffffffffffffdfff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffffffffffffff) 
    
 
    # Testcase 219:  rs1:x29(0xffffffffffffbfff), rs2:x14(0x0000000000000000), result rd:x3(0xffffffffffffffff)
    # li  x14, MASK_XLEN(0x0)
    # li  x29, MASK_XLEN(0xffffffffffffbfff)
    # aes64ks2 x3, x29, x14
    # sd x3, 32(x4)
inst_219:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0xffffffffffffffff, 0xffffffffffffbfff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xffffffffffffffff) 
    





    RVTEST_CASE(44,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_45_0)

 
    # Testcase 220:  rs1:x28(0xffffffffffff7fff), rs2:x13(0x0000000000000000), result rd:x4(0xffffffffffffffff)
    # li  x13, MASK_XLEN(0x0)
    # li  x28, MASK_XLEN(0xffffffffffff7fff)
    # aes64ks2 x4, x28, x13
    # sd x4, 0(x1)
inst_220:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0xffffffffffffffff, 0xffffffffffff7fff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffffffffffffff) 
    
 
    # Testcase 221:  rs1:x27(0xfffffffffffeffff), rs2:x12(0x0000000000000000), result rd:x5(0xffffffffffffffff)
    # li  x12, MASK_XLEN(0x0)
    # li  x27, MASK_XLEN(0xfffffffffffeffff)
    # aes64ks2 x5, x27, x12
    # sd x5, 8(x1)
inst_221:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0xffffffffffffffff, 0xfffffffffffeffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffffffffffffffff) 
    
 
    # Testcase 222:  rs1:x26(0xfffffffffffdffff), rs2:x11(0x0000000000000000), result rd:x6(0xffffffffffffffff)
    # li  x11, MASK_XLEN(0x0)
    # li  x26, MASK_XLEN(0xfffffffffffdffff)
    # aes64ks2 x6, x26, x11
    # sd x6, 16(x1)
inst_222:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0xffffffffffffffff, 0xfffffffffffdffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xffffffffffffffff) 
    
 
    # Testcase 223:  rs1:x25(0xfffffffffffbffff), rs2:x10(0x0000000000000000), result rd:x7(0xffffffffffffffff)
    # li  x10, MASK_XLEN(0x0)
    # li  x25, MASK_XLEN(0xfffffffffffbffff)
    # aes64ks2 x7, x25, x10
    # sd x7, 24(x1)
inst_223:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0xffffffffffffffff, 0xfffffffffffbffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffffffffffff) 
    
 
    # Testcase 224:  rs1:x24(0xfffffffffff7ffff), rs2:x9(0x0000000000000000), result rd:x8(0xffffffffffffffff)
    # li  x9, MASK_XLEN(0x0)
    # li  x24, MASK_XLEN(0xfffffffffff7ffff)
    # aes64ks2 x8, x24, x9
    # sd x8, 32(x1)
inst_224:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0xffffffffffffffff, 0xfffffffffff7ffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffffffffffffffff) 
    





    RVTEST_CASE(45,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_46_0)

 
    # Testcase 225:  rs1:x23(0xffffffffffefffff), rs2:x8(0x0000000000000000), result rd:x9(0xffffffffffffffff)
    # li  x8, MASK_XLEN(0x0)
    # li  x23, MASK_XLEN(0xffffffffffefffff)
    # aes64ks2 x9, x23, x8
    # sd x9, 0(x1)
inst_225:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0xffffffffffffffff, 0xffffffffffefffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xffffffffffffffff) 
    
 
    # Testcase 226:  rs1:x22(0xffffffffffdfffff), rs2:x7(0x0000000000000000), result rd:x10(0xffffffffffffffff)
    # li  x7, MASK_XLEN(0x0)
    # li  x22, MASK_XLEN(0xffffffffffdfffff)
    # aes64ks2 x10, x22, x7
    # sd x10, 8(x1)
inst_226:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0xffffffffffffffff, 0xffffffffffdfffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffffffffffffffff) 
    
 
    # Testcase 227:  rs1:x21(0xffffffffffbfffff), rs2:x6(0x0000000000000000), result rd:x11(0xffffffffffffffff)
    # li  x6, MASK_XLEN(0x0)
    # li  x21, MASK_XLEN(0xffffffffffbfffff)
    # aes64ks2 x11, x21, x6
    # sd x11, 16(x1)
inst_227:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0xffffffffffffffff, 0xffffffffffbfffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffffffffffffffff) 
    
 
    # Testcase 228:  rs1:x20(0xffffffffff7fffff), rs2:x5(0x0000000000000000), result rd:x12(0xffffffffffffffff)
    # li  x5, MASK_XLEN(0x0)
    # li  x20, MASK_XLEN(0xffffffffff7fffff)
    # aes64ks2 x12, x20, x5
    # sd x12, 24(x1)
inst_228:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0xffffffffffffffff, 0xffffffffff7fffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffffffffffffffff) 
    
 
    # Testcase 229:  rs1:x19(0xfffffffffeffffff), rs2:x4(0x0000000000000000), result rd:x13(0xffffffffffffffff)
    # li  x4, MASK_XLEN(0x0)
    # li  x19, MASK_XLEN(0xfffffffffeffffff)
    # aes64ks2 x13, x19, x4
    # sd x13, 32(x1)
inst_229:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0xffffffffffffffff, 0xfffffffffeffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xffffffffffffffff) 
    





    RVTEST_CASE(46,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x4,signature_47_0)

 
    # Testcase 230:  rs1:x18(0xfffffffffdffffff), rs2:x3(0x0000000000000000), result rd:x14(0xffffffffffffffff)
    # li  x3, MASK_XLEN(0x0)
    # li  x18, MASK_XLEN(0xfffffffffdffffff)
    # aes64ks2 x14, x18, x3
    # sd x14, 0(x4)
inst_230:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0xffffffffffffffff, 0xfffffffffdffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xffffffffffffffff) 
    
 
    # Testcase 231:  rs1:x17(0xfffffffffbffffff), rs2:x2(0x0000000000000000), result rd:x15(0xffffffffffffffff)
    # li  x2, MASK_XLEN(0x0)
    # li  x17, MASK_XLEN(0xfffffffffbffffff)
    # aes64ks2 x15, x17, x2
    # sd x15, 8(x4)
inst_231:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0xffffffffffffffff, 0xfffffffffbffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0xffffffffffffffff) 
    
 
    # Testcase 232:  rs1:x16(0xfffffffff7ffffff), rs2:x1(0x0000000000000000), result rd:x16(0xffffffffffffffff)
    # li  x1, MASK_XLEN(0x0)
    # li  x16, MASK_XLEN(0xfffffffff7ffffff)
    # aes64ks2 x16, x16, x1
    # sd x16, 16(x4)
inst_232:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0xffffffffffffffff, 0xfffffffff7ffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0xffffffffffffffff) 
    
 
    # Testcase 233:  rs1:x15(0xffffffffefffffff), rs2:x31(0x0000000000000000), result rd:x17(0xffffffffffffffff)
    # li  x31, MASK_XLEN(0x0)
    # li  x15, MASK_XLEN(0xffffffffefffffff)
    # aes64ks2 x17, x15, x31
    # sd x17, 24(x4)
inst_233:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0xffffffffffffffff, 0xffffffffefffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0xffffffffffffffff) 
    
 
    # Testcase 234:  rs1:x14(0xffffffffdfffffff), rs2:x30(0x0000000000000000), result rd:x18(0xffffffffffffffff)
    # li  x30, MASK_XLEN(0x0)
    # li  x14, MASK_XLEN(0xffffffffdfffffff)
    # aes64ks2 x18, x14, x30
    # sd x18, 32(x4)
inst_234:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0xffffffffffffffff, 0xffffffffdfffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0xffffffffffffffff) 
    





    RVTEST_CASE(47,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_48_0)

 
    # Testcase 235:  rs1:x13(0xffffffffbfffffff), rs2:x29(0x0000000000000000), result rd:x19(0xffffffffffffffff)
    # li  x29, MASK_XLEN(0x0)
    # li  x13, MASK_XLEN(0xffffffffbfffffff)
    # aes64ks2 x19, x13, x29
    # sd x19, 0(x1)
inst_235:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0xffffffffffffffff, 0xffffffffbfffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xffffffffffffffff) 
    
 
    # Testcase 236:  rs1:x12(0xffffffff7fffffff), rs2:x28(0x0000000000000000), result rd:x20(0xffffffffffffffff)
    # li  x28, MASK_XLEN(0x0)
    # li  x12, MASK_XLEN(0xffffffff7fffffff)
    # aes64ks2 x20, x12, x28
    # sd x20, 8(x1)
inst_236:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0xffffffffffffffff, 0xffffffff7fffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xffffffffffffffff) 
    
 
    # Testcase 237:  rs1:x11(0xfffffffeffffffff), rs2:x27(0x0000000000000000), result rd:x21(0xfffffffefffffffe)
    # li  x27, MASK_XLEN(0x0)
    # li  x11, MASK_XLEN(0xfffffffeffffffff)
    # aes64ks2 x21, x11, x27
    # sd x21, 16(x1)
inst_237:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0xfffffffefffffffe, 0xfffffffeffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xfffffffefffffffe) 
    
 
    # Testcase 238:  rs1:x10(0xfffffffdffffffff), rs2:x26(0x0000000000000000), result rd:x22(0xfffffffdfffffffd)
    # li  x26, MASK_XLEN(0x0)
    # li  x10, MASK_XLEN(0xfffffffdffffffff)
    # aes64ks2 x22, x10, x26
    # sd x22, 24(x1)
inst_238:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0xfffffffdfffffffd, 0xfffffffdffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfffffffdfffffffd) 
    
 
    # Testcase 239:  rs1:x9(0xfffffffbffffffff), rs2:x25(0x0000000000000000), result rd:x23(0xfffffffbfffffffb)
    # li  x25, MASK_XLEN(0x0)
    # li  x9, MASK_XLEN(0xfffffffbffffffff)
    # aes64ks2 x23, x9, x25
    # sd x23, 32(x1)
inst_239:
    TEST_RR_OP(aes64ks2, x23, x9, x9, 0xfffffffbfffffffb, 0xfffffffbffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfffffffbfffffffb) 
    





    RVTEST_CASE(48,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_49_0)

 
    # Testcase 240:  rs1:x8(0xfffffff7ffffffff), rs2:x24(0x0000000000000000), result rd:x24(0xfffffff7fffffff7)
    # li  x24, MASK_XLEN(0x0)
    # li  x8, MASK_XLEN(0xfffffff7ffffffff)
    # aes64ks2 x24, x8, x24
    # sd x24, 0(x1)
inst_240:
    TEST_RR_OP(aes64ks2, x24, x8, x8, 0xfffffff7fffffff7, 0xfffffff7ffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xfffffff7fffffff7) 
    
 
    # Testcase 241:  rs1:x7(0xffffffefffffffff), rs2:x23(0x0000000000000000), result rd:x25(0xffffffefffffffef)
    # li  x23, MASK_XLEN(0x0)
    # li  x7, MASK_XLEN(0xffffffefffffffff)
    # aes64ks2 x25, x7, x23
    # sd x25, 8(x1)
inst_241:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0xffffffefffffffef, 0xffffffefffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xffffffefffffffef) 
    
 
    # Testcase 242:  rs1:x6(0xffffffdfffffffff), rs2:x22(0x0000000000000000), result rd:x26(0xffffffdfffffffdf)
    # li  x22, MASK_XLEN(0x0)
    # li  x6, MASK_XLEN(0xffffffdfffffffff)
    # aes64ks2 x26, x6, x22
    # sd x26, 16(x1)
inst_242:
    TEST_RR_OP(aes64ks2, x26, x6, x6, 0xffffffdfffffffdf, 0xffffffdfffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xffffffdfffffffdf) 
    
 
    # Testcase 243:  rs1:x5(0xffffffbfffffffff), rs2:x21(0x0000000000000000), result rd:x27(0xffffffbfffffffbf)
    # li  x21, MASK_XLEN(0x0)
    # li  x5, MASK_XLEN(0xffffffbfffffffff)
    # aes64ks2 x27, x5, x21
    # sd x27, 24(x1)
inst_243:
    TEST_RR_OP(aes64ks2, x27, x5, x5, 0xffffffbfffffffbf, 0xffffffbfffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xffffffbfffffffbf) 
    
 
    # Testcase 244:  rs1:x4(0xffffff7fffffffff), rs2:x20(0x0000000000000000), result rd:x28(0xffffff7fffffff7f)
    # li  x20, MASK_XLEN(0x0)
    # li  x4, MASK_XLEN(0xffffff7fffffffff)
    # aes64ks2 x28, x4, x20
    # sd x28, 32(x1)
inst_244:
    TEST_RR_OP(aes64ks2, x28, x4, x4, 0xffffff7fffffff7f, 0xffffff7fffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xffffff7fffffff7f) 
    





    RVTEST_CASE(49,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x4,signature_50_0)

 
    # Testcase 245:  rs1:x3(0xfffffeffffffffff), rs2:x19(0x0000000000000000), result rd:x29(0xfffffefffffffeff)
    # li  x19, MASK_XLEN(0x0)
    # li  x3, MASK_XLEN(0xfffffeffffffffff)
    # aes64ks2 x29, x3, x19
    # sd x29, 0(x4)
inst_245:
    TEST_RR_OP(aes64ks2, x29, x3, x3, 0xfffffefffffffeff, 0xfffffeffffffffff, 0x0, x4, 0, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0xfffffefffffffeff) 
    
 
    # Testcase 246:  rs1:x2(0xfffffdffffffffff), rs2:x18(0x0000000000000000), result rd:x30(0xfffffdfffffffdff)
    # li  x18, MASK_XLEN(0x0)
    # li  x2, MASK_XLEN(0xfffffdffffffffff)
    # aes64ks2 x30, x2, x18
    # sd x30, 8(x4)
inst_246:
    TEST_RR_OP(aes64ks2, x30, x2, x2, 0xfffffdfffffffdff, 0xfffffdffffffffff, 0x0, x4, 8, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xfffffdfffffffdff) 
    
 
    # Testcase 247:  rs1:x1(0xfffffbffffffffff), rs2:x17(0x0000000000000000), result rd:x31(0xfffffbfffffffbff)
    # li  x17, MASK_XLEN(0x0)
    # li  x1, MASK_XLEN(0xfffffbffffffffff)
    # aes64ks2 x31, x1, x17
    # sd x31, 16(x4)
inst_247:
    TEST_RR_OP(aes64ks2, x31, x1, x1, 0xfffffbfffffffbff, 0xfffffbffffffffff, 0x0, x4, 16, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffffbfffffffbff) 
    
 
    # Testcase 248:  rs1:x31(0xfffff7ffffffffff), rs2:x16(0x0000000000000000), result rd:x1(0xfffff7fffffff7ff)
    # li  x16, MASK_XLEN(0x0)
    # li  x31, MASK_XLEN(0xfffff7ffffffffff)
    # aes64ks2 x1, x31, x16
    # sd x1, 24(x4)
inst_248:
    TEST_RR_OP(aes64ks2, x1, x31, x31, 0xfffff7fffffff7ff, 0xfffff7ffffffffff, 0x0, x4, 24, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xfffff7fffffff7ff) 
    
 
    # Testcase 249:  rs1:x30(0xffffefffffffffff), rs2:x15(0x0000000000000000), result rd:x2(0xffffefffffffefff)
    # li  x15, MASK_XLEN(0x0)
    # li  x30, MASK_XLEN(0xffffefffffffffff)
    # aes64ks2 x2, x30, x15
    # sd x2, 32(x4)
inst_249:
    TEST_RR_OP(aes64ks2, x2, x30, x30, 0xffffefffffffefff, 0xffffefffffffffff, 0x0, x4, 32, x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffffefffffffefff) 
    





    RVTEST_CASE(50,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_51_0)

 
    # Testcase 250:  rs1:x29(0xffffdfffffffffff), rs2:x14(0x0000000000000000), result rd:x3(0xffffdfffffffdfff)
    # li  x14, MASK_XLEN(0x0)
    # li  x29, MASK_XLEN(0xffffdfffffffffff)
    # aes64ks2 x3, x29, x14
    # sd x3, 0(x1)
inst_250:
    TEST_RR_OP(aes64ks2, x3, x29, x29, 0xffffdfffffffdfff, 0xffffdfffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0xffffdfffffffdfff) 
    
 
    # Testcase 251:  rs1:x28(0xffffbfffffffffff), rs2:x13(0x0000000000000000), result rd:x4(0xffffbfffffffbfff)
    # li  x13, MASK_XLEN(0x0)
    # li  x28, MASK_XLEN(0xffffbfffffffffff)
    # aes64ks2 x4, x28, x13
    # sd x4, 8(x1)
inst_251:
    TEST_RR_OP(aes64ks2, x4, x28, x28, 0xffffbfffffffbfff, 0xffffbfffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffffbfffffffbfff) 
    
 
    # Testcase 252:  rs1:x27(0xffff7fffffffffff), rs2:x12(0x0000000000000000), result rd:x5(0xffff7fffffff7fff)
    # li  x12, MASK_XLEN(0x0)
    # li  x27, MASK_XLEN(0xffff7fffffffffff)
    # aes64ks2 x5, x27, x12
    # sd x5, 16(x1)
inst_252:
    TEST_RR_OP(aes64ks2, x5, x27, x27, 0xffff7fffffff7fff, 0xffff7fffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xffff7fffffff7fff) 
    
 
    # Testcase 253:  rs1:x26(0xfffeffffffffffff), rs2:x11(0x0000000000000000), result rd:x6(0xfffefffffffeffff)
    # li  x11, MASK_XLEN(0x0)
    # li  x26, MASK_XLEN(0xfffeffffffffffff)
    # aes64ks2 x6, x26, x11
    # sd x6, 24(x1)
inst_253:
    TEST_RR_OP(aes64ks2, x6, x26, x26, 0xfffefffffffeffff, 0xfffeffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfffefffffffeffff) 
    
 
    # Testcase 254:  rs1:x25(0xfffdffffffffffff), rs2:x10(0x0000000000000000), result rd:x7(0xfffdfffffffdffff)
    # li  x10, MASK_XLEN(0x0)
    # li  x25, MASK_XLEN(0xfffdffffffffffff)
    # aes64ks2 x7, x25, x10
    # sd x7, 32(x1)
inst_254:
    TEST_RR_OP(aes64ks2, x7, x25, x25, 0xfffdfffffffdffff, 0xfffdffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfffdfffffffdffff) 
    





    RVTEST_CASE(51,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_52_0)

 
    # Testcase 255:  rs1:x24(0xfffbffffffffffff), rs2:x9(0x0000000000000000), result rd:x8(0xfffbfffffffbffff)
    # li  x9, MASK_XLEN(0x0)
    # li  x24, MASK_XLEN(0xfffbffffffffffff)
    # aes64ks2 x8, x24, x9
    # sd x8, 0(x1)
inst_255:
    TEST_RR_OP(aes64ks2, x8, x24, x24, 0xfffbfffffffbffff, 0xfffbffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfffbfffffffbffff) 
    
 
    # Testcase 256:  rs1:x23(0xfff7ffffffffffff), rs2:x8(0x0000000000000000), result rd:x9(0xfff7fffffff7ffff)
    # li  x8, MASK_XLEN(0x0)
    # li  x23, MASK_XLEN(0xfff7ffffffffffff)
    # aes64ks2 x9, x23, x8
    # sd x9, 8(x1)
inst_256:
    TEST_RR_OP(aes64ks2, x9, x23, x23, 0xfff7fffffff7ffff, 0xfff7ffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xfff7fffffff7ffff) 
    
 
    # Testcase 257:  rs1:x22(0xffefffffffffffff), rs2:x7(0x0000000000000000), result rd:x10(0xffefffffffefffff)
    # li  x7, MASK_XLEN(0x0)
    # li  x22, MASK_XLEN(0xffefffffffffffff)
    # aes64ks2 x10, x22, x7
    # sd x10, 16(x1)
inst_257:
    TEST_RR_OP(aes64ks2, x10, x22, x22, 0xffefffffffefffff, 0xffefffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xffefffffffefffff) 
    
 
    # Testcase 258:  rs1:x21(0xffdfffffffffffff), rs2:x6(0x0000000000000000), result rd:x11(0xffdfffffffdfffff)
    # li  x6, MASK_XLEN(0x0)
    # li  x21, MASK_XLEN(0xffdfffffffffffff)
    # aes64ks2 x11, x21, x6
    # sd x11, 24(x1)
inst_258:
    TEST_RR_OP(aes64ks2, x11, x21, x21, 0xffdfffffffdfffff, 0xffdfffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xffdfffffffdfffff) 
    
 
    # Testcase 259:  rs1:x20(0xffbfffffffffffff), rs2:x5(0x0000000000000000), result rd:x12(0xffbfffffffbfffff)
    # li  x5, MASK_XLEN(0x0)
    # li  x20, MASK_XLEN(0xffbfffffffffffff)
    # aes64ks2 x12, x20, x5
    # sd x12, 32(x1)
inst_259:
    TEST_RR_OP(aes64ks2, x12, x20, x20, 0xffbfffffffbfffff, 0xffbfffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xffbfffffffbfffff) 
    





    RVTEST_CASE(52,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x5,signature_53_0)

 
    # Testcase 260:  rs1:x19(0xff7fffffffffffff), rs2:x4(0x0000000000000000), result rd:x13(0xff7fffffff7fffff)
    # li  x4, MASK_XLEN(0x0)
    # li  x19, MASK_XLEN(0xff7fffffffffffff)
    # aes64ks2 x13, x19, x4
    # sd x13, 0(x5)
inst_260:
    TEST_RR_OP(aes64ks2, x13, x19, x19, 0xff7fffffff7fffff, 0xff7fffffffffffff, 0x0, x5, 0, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0xff7fffffff7fffff) 
    
 
    # Testcase 261:  rs1:x18(0xfeffffffffffffff), rs2:x3(0x0000000000000000), result rd:x14(0xfefffffffeffffff)
    # li  x3, MASK_XLEN(0x0)
    # li  x18, MASK_XLEN(0xfeffffffffffffff)
    # aes64ks2 x14, x18, x3
    # sd x14, 8(x5)
inst_261:
    TEST_RR_OP(aes64ks2, x14, x18, x18, 0xfefffffffeffffff, 0xfeffffffffffffff, 0x0, x5, 8, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0xfefffffffeffffff) 
    
 
    # Testcase 262:  rs1:x17(0xfdffffffffffffff), rs2:x2(0x0000000000000000), result rd:x15(0xfdfffffffdffffff)
    # li  x2, MASK_XLEN(0x0)
    # li  x17, MASK_XLEN(0xfdffffffffffffff)
    # aes64ks2 x15, x17, x2
    # sd x15, 16(x5)
inst_262:
    TEST_RR_OP(aes64ks2, x15, x17, x17, 0xfdfffffffdffffff, 0xfdffffffffffffff, 0x0, x5, 16, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0xfdfffffffdffffff) 
    
 
    # Testcase 263:  rs1:x16(0xfbffffffffffffff), rs2:x1(0x0000000000000000), result rd:x16(0xfbfffffffbffffff)
    # li  x1, MASK_XLEN(0x0)
    # li  x16, MASK_XLEN(0xfbffffffffffffff)
    # aes64ks2 x16, x16, x1
    # sd x16, 24(x5)
inst_263:
    TEST_RR_OP(aes64ks2, x16, x16, x16, 0xfbfffffffbffffff, 0xfbffffffffffffff, 0x0, x5, 24, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0xfbfffffffbffffff) 
    
 
    # Testcase 264:  rs1:x15(0xf7ffffffffffffff), rs2:x31(0x0000000000000000), result rd:x17(0xf7fffffff7ffffff)
    # li  x31, MASK_XLEN(0x0)
    # li  x15, MASK_XLEN(0xf7ffffffffffffff)
    # aes64ks2 x17, x15, x31
    # sd x17, 32(x5)
inst_264:
    TEST_RR_OP(aes64ks2, x17, x15, x15, 0xf7fffffff7ffffff, 0xf7ffffffffffffff, 0x0, x5, 32, x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xf7fffffff7ffffff) 
    





    RVTEST_CASE(53,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_54_0)

 
    # Testcase 265:  rs1:x14(0xefffffffffffffff), rs2:x30(0x0000000000000000), result rd:x18(0xefffffffefffffff)
    # li  x30, MASK_XLEN(0x0)
    # li  x14, MASK_XLEN(0xefffffffffffffff)
    # aes64ks2 x18, x14, x30
    # sd x18, 0(x1)
inst_265:
    TEST_RR_OP(aes64ks2, x18, x14, x14, 0xefffffffefffffff, 0xefffffffffffffff, 0x0, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xefffffffefffffff) 
    
 
    # Testcase 266:  rs1:x13(0xdfffffffffffffff), rs2:x29(0x0000000000000000), result rd:x19(0xdfffffffdfffffff)
    # li  x29, MASK_XLEN(0x0)
    # li  x13, MASK_XLEN(0xdfffffffffffffff)
    # aes64ks2 x19, x13, x29
    # sd x19, 8(x1)
inst_266:
    TEST_RR_OP(aes64ks2, x19, x13, x13, 0xdfffffffdfffffff, 0xdfffffffffffffff, 0x0, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xdfffffffdfffffff) 
    
 
    # Testcase 267:  rs1:x12(0xbfffffffffffffff), rs2:x28(0x0000000000000000), result rd:x20(0xbfffffffbfffffff)
    # li  x28, MASK_XLEN(0x0)
    # li  x12, MASK_XLEN(0xbfffffffffffffff)
    # aes64ks2 x20, x12, x28
    # sd x20, 16(x1)
inst_267:
    TEST_RR_OP(aes64ks2, x20, x12, x12, 0xbfffffffbfffffff, 0xbfffffffffffffff, 0x0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xbfffffffbfffffff) 
    
 
    # Testcase 268:  rs1:x11(0x7fffffffffffffff), rs2:x27(0x0000000000000000), result rd:x21(0x7fffffff7fffffff)
    # li  x27, MASK_XLEN(0x0)
    # li  x11, MASK_XLEN(0x7fffffffffffffff)
    # aes64ks2 x21, x11, x27
    # sd x21, 24(x1)
inst_268:
    TEST_RR_OP(aes64ks2, x21, x11, x11, 0x7fffffff7fffffff, 0x7fffffffffffffff, 0x0, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x7fffffff7fffffff) 
    
 
    # Testcase 269:  rs1:x10(0xffffffffffffffff), rs2:x26(0x0000000000000000), result rd:x22(0xffffffffffffffff)
    # li  x26, MASK_XLEN(0x0)
    # li  x10, MASK_XLEN(0xffffffffffffffff)
    # aes64ks2 x22, x10, x26
    # sd x22, 32(x1)
inst_269:
    TEST_RR_OP(aes64ks2, x22, x10, x10, 0xffffffffffffffff, 0xffffffffffffffff, 0x0, x1, 32, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xffffffffffffffff) 
    





    RVTEST_CASE(54,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",aes64ks2)
	RVTEST_SIGBASE(x1,signature_55_0)

 
    # Testcase 270:  rs1:x25(0x10fd3dedadea5195), rs2:x25(0xdf7f3844121bcc23), result rd:x23(0xadea5195bd176c78)
    # li  x25, MASK_XLEN(0xdf7f3844121bcc23)
    # li  x25, MASK_XLEN(0x10fd3dedadea5195)
    # aes64ks2 x23, x25, x25
    # sd x23, 0(x1)
inst_270:
    TEST_RR_OP(aes64ks2, x23, x25, x25, 0xadea5195bd176c78, 0x10fd3dedadea5195, 0xdf7f3844121bcc23, x1, 0, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xadea5195bd176c78) 
    
 
    # Testcase 271:  rs1:x8(0xbd295ce2d2ffbec1), rs2:x24(0xf5adb41aa47d105b), result rd:x0(0x0000000000000000)
    # li  x24, MASK_XLEN(0xf5adb41aa47d105b)
    # li  x8, MASK_XLEN(0xbd295ce2d2ffbec1)
    # aes64ks2 x0, x8, x24
    # sd x0, 8(x1)
inst_271:
    TEST_RR_OP(aes64ks2, x0, x8, x8, 0x0000000000000000, 0xbd295ce2d2ffbec1, 0xf5adb41aa47d105b, x1, 8, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x0000000000000000) 
    
 
    # Testcase 272:  rs1:x7(0xc9649f05a8e1a8bb), rs2:x0(0x82f6747f707af2c0), result rd:x25(0xc9649f05c9649f05)
    # li  x0, MASK_XLEN(0x82f6747f707af2c0)
    # li  x7, MASK_XLEN(0xc9649f05a8e1a8bb)
    # aes64ks2 x25, x7, x0
    # sd x25, 16(x1)
inst_272:
    TEST_RR_OP(aes64ks2, x25, x7, x7, 0xc9649f05c9649f05, 0xc9649f05a8e1a8bb, 0x82f6747f707af2c0, x1, 16, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xc9649f05c9649f05) 
    
 
    # Testcase 273:  rs1:x0(0x3541291848c99fcb), rs2:x22(0x73a92fd4e19bfbc3), result rd:x26(0x9232d417e19bfbc3)
    # li  x22, MASK_XLEN(0x73a92fd4e19bfbc3)
    # li  x0, MASK_XLEN(0x3541291848c99fcb)
    # aes64ks2 x26, x0, x22
    # sd x26, 24(x1)
inst_273:
    TEST_RR_OP(aes64ks2, x26, x0, x0, 0x9232d417e19bfbc3, 0x3541291848c99fcb, 0x73a92fd4e19bfbc3, x1, 24, x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x9232d417e19bfbc3) 
    


	
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN




signature_1_0:
	.fill 5, 8, 0xdeadbeef
signature_2_0:
	.fill 5, 8, 0xdeadbeef
signature_3_0:
	.fill 5, 8, 0xdeadbeef
signature_4_0:
	.fill 5, 8, 0xdeadbeef
signature_5_0:
	.fill 5, 8, 0xdeadbeef
signature_6_0:
	.fill 5, 8, 0xdeadbeef
signature_7_0:
	.fill 5, 8, 0xdeadbeef
signature_8_0:
	.fill 5, 8, 0xdeadbeef
signature_9_0:
	.fill 5, 8, 0xdeadbeef
signature_10_0:
	.fill 5, 8, 0xdeadbeef
signature_11_0:
	.fill 5, 8, 0xdeadbeef
signature_12_0:
	.fill 5, 8, 0xdeadbeef
signature_13_0:
	.fill 5, 8, 0xdeadbeef
signature_14_0:
	.fill 5, 8, 0xdeadbeef
signature_15_0:
	.fill 5, 8, 0xdeadbeef
signature_16_0:
	.fill 5, 8, 0xdeadbeef
signature_17_0:
	.fill 5, 8, 0xdeadbeef
signature_18_0:
	.fill 5, 8, 0xdeadbeef
signature_19_0:
	.fill 5, 8, 0xdeadbeef
signature_20_0:
	.fill 5, 8, 0xdeadbeef
signature_21_0:
	.fill 5, 8, 0xdeadbeef
signature_22_0:
	.fill 5, 8, 0xdeadbeef
signature_23_0:
	.fill 5, 8, 0xdeadbeef
signature_24_0:
	.fill 5, 8, 0xdeadbeef
signature_25_0:
	.fill 5, 8, 0xdeadbeef
signature_26_0:
	.fill 5, 8, 0xdeadbeef
signature_27_0:
	.fill 5, 8, 0xdeadbeef
signature_28_0:
	.fill 5, 8, 0xdeadbeef
signature_29_0:
	.fill 5, 8, 0xdeadbeef
signature_30_0:
	.fill 5, 8, 0xdeadbeef
signature_31_0:
	.fill 5, 8, 0xdeadbeef
signature_32_0:
	.fill 5, 8, 0xdeadbeef
signature_33_0:
	.fill 5, 8, 0xdeadbeef
signature_34_0:
	.fill 5, 8, 0xdeadbeef
signature_35_0:
	.fill 5, 8, 0xdeadbeef
signature_36_0:
	.fill 5, 8, 0xdeadbeef
signature_37_0:
	.fill 5, 8, 0xdeadbeef
signature_38_0:
	.fill 5, 8, 0xdeadbeef
signature_39_0:
	.fill 5, 8, 0xdeadbeef
signature_40_0:
	.fill 5, 8, 0xdeadbeef
signature_41_0:
	.fill 5, 8, 0xdeadbeef
signature_42_0:
	.fill 5, 8, 0xdeadbeef
signature_43_0:
	.fill 5, 8, 0xdeadbeef
signature_44_0:
	.fill 5, 8, 0xdeadbeef
signature_45_0:
	.fill 5, 8, 0xdeadbeef
signature_46_0:
	.fill 5, 8, 0xdeadbeef
signature_47_0:
	.fill 5, 8, 0xdeadbeef
signature_48_0:
	.fill 5, 8, 0xdeadbeef
signature_49_0:
	.fill 5, 8, 0xdeadbeef
signature_50_0:
	.fill 5, 8, 0xdeadbeef
signature_51_0:
	.fill 5, 8, 0xdeadbeef
signature_52_0:
	.fill 5, 8, 0xdeadbeef
signature_53_0:
	.fill 5, 8, 0xdeadbeef
signature_54_0:
	.fill 5, 8, 0xdeadbeef
signature_55_0:
	.fill 5, 8, 0xdeadbeef


#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
