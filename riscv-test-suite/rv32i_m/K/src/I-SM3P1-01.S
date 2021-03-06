// RISC-V Compliance Test I-SM3P1-01
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
// Description: Testing instruction 'sm3p1'.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA(RV32IK)

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN






#ifdef TEST_CASE_1


    # address for test results
    #la x6, test_1_res
    RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x6,signature_1_0)

 
    # Testcase 0:  rs1:x31(0x10fd3dedadea5195), result rd:x1(0x4ff67248)
inst_0:
    li  x31, 0x10fd3dedadea5195
    sm3p1 x1, x31
    sw x1, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x1, 0x4ff67248)
 
    # Testcase 1:  rs1:x30(0xbd295ce2d2ffbec1), result rd:x2(0x6d762861)
inst_1:
    li  x30, 0xbd295ce2d2ffbec1
    sm3p1 x2, x30
    sw x2, 4(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x6d762861)
 
    # Testcase 2:  rs1:x29(0xc9649f05a8e1a8bb), result rd:x3(0x21680c1f)
inst_2:
    li  x29, 0xc9649f05a8e1a8bb
    sm3p1 x3, x29
    sw x3, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0x21680c1f)
 
    # Testcase 3:  rs1:x28(0x3541291848c99fcb), result rd:x4(0x62885f60)
inst_3:
    li  x28, 0x3541291848c99fcb
    sm3p1 x4, x28
    sw x4, 12(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0x62885f60)
 
    # Testcase 4:  rs1:x27(0x10a24740461d524f), result rd:x5(0xc899ffe8)
inst_4:
    li  x27, 0x10a24740461d524f
    sm3p1 x5, x27
    sw x5, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xc899ffe8)




    # address for test results
    #la x1, test_2_res
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_2_0)

 
    # Testcase 5:  rs1:x26(0x546b0e54528a10af), result rd:x6(0x0d74fce2)
inst_5:
    li  x26, 0x546b0e54528a10af
    sm3p1 x6, x26
    sw x6, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x0d74fce2)
 
    # Testcase 6:  rs1:x25(0x73a92fd4e19bfbc3), result rd:x7(0xfd8ac6f3)
inst_6:
    li  x25, 0x73a92fd4e19bfbc3
    sm3p1 x7, x25
    sw x7, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfd8ac6f3)
 
    # Testcase 7:  rs1:x24(0x82f6747f707af2c0), result rd:x8(0x6922f784)
inst_7:
    li  x24, 0x82f6747f707af2c0
    sm3p1 x8, x24
    sw x8, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x6922f784)
 
    # Testcase 8:  rs1:x23(0xf5adb41aa47d105b), result rd:x9(0x0182fced)
inst_8:
    li  x23, 0xf5adb41aa47d105b
    sm3p1 x9, x23
    sw x9, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x0182fced)
 
    # Testcase 9:  rs1:x22(0xdf7f3844121bcc23), result rd:x10(0xe58348c8)
inst_9:
    li  x22, 0xdf7f3844121bcc23
    sm3p1 x10, x22
    sw x10, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xe58348c8)




    # address for test results
    #la x1, test_3_res
    RVTEST_CASE(2,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_3_0)

 
    # Testcase 10:  rs1:x21(0x00000001), result rd:x11(0x00808001)
inst_10:
    li  x21, 0x1
    sm3p1 x11, x21
    sw x11, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x11, 0x00808001)
 
    # Testcase 11:  rs1:x20(0x00000002), result rd:x12(0x01010002)
inst_11:
    li  x20, 0x2
    sm3p1 x12, x20
    sw x12, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0x01010002)
 
    # Testcase 12:  rs1:x19(0x00000004), result rd:x13(0x02020004)
inst_12:
    li  x19, 0x4
    sm3p1 x13, x19
    sw x13, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0x02020004)
 
    # Testcase 13:  rs1:x18(0x00000008), result rd:x14(0x04040008)
inst_13:
    li  x18, 0x8
    sm3p1 x14, x18
    sw x14, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0x04040008)
 
    # Testcase 14:  rs1:x17(0x00000010), result rd:x15(0x08080010)
inst_14:
    li  x17, 0x10
    sm3p1 x15, x17
    sw x15, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0x08080010)




    # address for test results
    #la x2, test_4_res
    RVTEST_CASE(3,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x2,signature_4_0)

 
    # Testcase 15:  rs1:x16(0x00000020), result rd:x16(0x10100020)
inst_15:
    li  x16, 0x20
    sm3p1 x16, x16
    sw x16, 0(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x16, 0x10100020)
 
    # Testcase 16:  rs1:x15(0x00000040), result rd:x17(0x20200040)
inst_16:
    li  x15, 0x40
    sm3p1 x17, x15
    sw x17, 4(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x17, 0x20200040)
 
    # Testcase 17:  rs1:x14(0x00000080), result rd:x18(0x40400080)
inst_17:
    li  x14, 0x80
    sm3p1 x18, x14
    sw x18, 8(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x18, 0x40400080)
 
    # Testcase 18:  rs1:x13(0x00000100), result rd:x19(0x80800100)
inst_18:
    li  x13, 0x100
    sm3p1 x19, x13
    sw x19, 12(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x19, 0x80800100)
 
    # Testcase 19:  rs1:x12(0x00000200), result rd:x20(0x01000201)
inst_19:
    li  x12, 0x200
    sm3p1 x20, x12
    sw x20, 16(x2)
    RVMODEL_IO_ASSERT_GPR_EQ(x3, x20, 0x01000201)




    # address for test results
    #la x1, test_5_res
    RVTEST_CASE(4,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_5_0)

 
    # Testcase 20:  rs1:x11(0x00000400), result rd:x21(0x02000402)
inst_20:
    li  x11, 0x400
    sm3p1 x21, x11
    sw x21, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x02000402)
 
    # Testcase 21:  rs1:x10(0x00000800), result rd:x22(0x04000804)
inst_21:
    li  x10, 0x800
    sm3p1 x22, x10
    sw x22, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x04000804)
 
    # Testcase 22:  rs1:x9(0x00001000), result rd:x23(0x08001008)
inst_22:
    li  x9, 0x1000
    sm3p1 x23, x9
    sw x23, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x08001008)
 
    # Testcase 23:  rs1:x8(0x00002000), result rd:x24(0x10002010)
inst_23:
    li  x8, 0x2000
    sm3p1 x24, x8
    sw x24, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x10002010)
 
    # Testcase 24:  rs1:x7(0x00004000), result rd:x25(0x20004020)
inst_24:
    li  x7, 0x4000
    sm3p1 x25, x7
    sw x25, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x20004020)




    # address for test results
    #la x1, test_6_res
    RVTEST_CASE(5,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_6_0)

 
    # Testcase 25:  rs1:x6(0x00008000), result rd:x26(0x40008040)
inst_25:
    li  x6, 0x8000
    sm3p1 x26, x6
    sw x26, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x26, 0x40008040)
 
    # Testcase 26:  rs1:x5(0x00010000), result rd:x27(0x80010080)
inst_26:
    li  x5, 0x10000
    sm3p1 x27, x5
    sw x27, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x27, 0x80010080)
 
    # Testcase 27:  rs1:x4(0x00020000), result rd:x28(0x00020101)
inst_27:
    li  x4, 0x20000
    sm3p1 x28, x4
    sw x28, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x28, 0x00020101)
 
    # Testcase 28:  rs1:x3(0x00040000), result rd:x29(0x00040202)
inst_28:
    li  x3, 0x40000
    sm3p1 x29, x3
    sw x29, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x29, 0x00040202)
 
    # Testcase 29:  rs1:x2(0x00080000), result rd:x30(0x00080404)
inst_29:
    li  x2, 0x80000
    sm3p1 x30, x2
    sw x30, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x30, 0x00080404)




    # address for test results
    #la x5, test_7_res
    RVTEST_CASE(6,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x5,signature_7_0)

 
    # Testcase 30:  rs1:x1(0x00100000), result rd:x31(0x00100808)
inst_30:
    li  x1, 0x100000
    sm3p1 x31, x1
    sw x31, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0x00100808)
 
    # Testcase 31:  rs1:x31(0x00200000), result rd:x1(0x00201010)
inst_31:
    li  x31, 0x200000
    sm3p1 x1, x31
    sw x1, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0x00201010)
 
    # Testcase 32:  rs1:x30(0x00400000), result rd:x2(0x00402020)
inst_32:
    li  x30, 0x400000
    sm3p1 x2, x30
    sw x2, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x2, 0x00402020)
 
    # Testcase 33:  rs1:x29(0x00800000), result rd:x3(0x00804040)
inst_33:
    li  x29, 0x800000
    sm3p1 x3, x29
    sw x3, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x3, 0x00804040)
 
    # Testcase 34:  rs1:x28(0x01000000), result rd:x4(0x01008080)
inst_34:
    li  x28, 0x1000000
    sm3p1 x4, x28
    sw x4, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x4, 0x01008080)




    # address for test results
    #la x1, test_8_res
    RVTEST_CASE(7,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_8_0)

 
    # Testcase 35:  rs1:x27(0x02000000), result rd:x5(0x02010100)
inst_35:
    li  x27, 0x2000000
    sm3p1 x5, x27
    sw x5, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x02010100)
 
    # Testcase 36:  rs1:x26(0x04000000), result rd:x6(0x04020200)
inst_36:
    li  x26, 0x4000000
    sm3p1 x6, x26
    sw x6, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x04020200)
 
    # Testcase 37:  rs1:x25(0x08000000), result rd:x7(0x08040400)
inst_37:
    li  x25, 0x8000000
    sm3p1 x7, x25
    sw x7, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x08040400)
 
    # Testcase 38:  rs1:x24(0x10000000), result rd:x8(0x10080800)
inst_38:
    li  x24, 0x10000000
    sm3p1 x8, x24
    sw x8, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x10080800)
 
    # Testcase 39:  rs1:x23(0x20000000), result rd:x9(0x20101000)
inst_39:
    li  x23, 0x20000000
    sm3p1 x9, x23
    sw x9, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x20101000)




    # address for test results
    #la x1, test_9_res
    RVTEST_CASE(8,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_9_0)

 
    # Testcase 40:  rs1:x22(0x40000000), result rd:x10(0x40202000)
inst_40:
    li  x22, 0x40000000
    sm3p1 x10, x22
    sw x10, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x40202000)
 
    # Testcase 41:  rs1:x21(0x80000000), result rd:x11(0x80404000)
inst_41:
    li  x21, 0x80000000
    sm3p1 x11, x21
    sw x11, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x80404000)
 
    # Testcase 42:  rs1:x20(0x00000000), result rd:x12(0x00000000)
inst_42:
    li  x20, 0x0
    sm3p1 x12, x20
    sw x12, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x00000000)
 
    # Testcase 43:  rs1:x19(0xfffffffe), result rd:x13(0xff7f7ffe)
inst_43:
    li  x19, 0xfffffffe
    sm3p1 x13, x19
    sw x13, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0xff7f7ffe)
 
    # Testcase 44:  rs1:x18(0xfffffffd), result rd:x14(0xfefefffd)
inst_44:
    li  x18, 0xfffffffd
    sm3p1 x14, x18
    sw x14, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x14, 0xfefefffd)




    # address for test results
    #la x3, test_10_res
    RVTEST_CASE(9,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x3,signature_10_0)

 
    # Testcase 45:  rs1:x17(0xfffffffb), result rd:x15(0xfdfdfffb)
inst_45:
    li  x17, 0xfffffffb
    sm3p1 x15, x17
    sw x15, 0(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x15, 0xfdfdfffb)
 
    # Testcase 46:  rs1:x16(0xfffffff7), result rd:x16(0xfbfbfff7)
inst_46:
    li  x16, 0xfffffff7
    sm3p1 x16, x16
    sw x16, 4(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x16, 0xfbfbfff7)
 
    # Testcase 47:  rs1:x15(0xffffffef), result rd:x17(0xf7f7ffef)
inst_47:
    li  x15, 0xffffffef
    sm3p1 x17, x15
    sw x17, 8(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x17, 0xf7f7ffef)
 
    # Testcase 48:  rs1:x14(0xffffffdf), result rd:x18(0xefefffdf)
inst_48:
    li  x14, 0xffffffdf
    sm3p1 x18, x14
    sw x18, 12(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x18, 0xefefffdf)
 
    # Testcase 49:  rs1:x13(0xffffffbf), result rd:x19(0xdfdfffbf)
inst_49:
    li  x13, 0xffffffbf
    sm3p1 x19, x13
    sw x19, 16(x3)
    RVMODEL_IO_ASSERT_GPR_EQ(x4, x19, 0xdfdfffbf)




    # address for test results
    #la x1, test_11_res
    RVTEST_CASE(10,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_11_0)

 
    # Testcase 50:  rs1:x12(0xffffff7f), result rd:x20(0xbfbfff7f)
inst_50:
    li  x12, 0xffffff7f
    sm3p1 x20, x12
    sw x20, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xbfbfff7f)
 
    # Testcase 51:  rs1:x11(0xfffffeff), result rd:x21(0x7f7ffeff)
inst_51:
    li  x11, 0xfffffeff
    sm3p1 x21, x11
    sw x21, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x7f7ffeff)
 
    # Testcase 52:  rs1:x10(0xfffffdff), result rd:x22(0xfefffdfe)
inst_52:
    li  x10, 0xfffffdff
    sm3p1 x22, x10
    sw x22, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xfefffdfe)
 
    # Testcase 53:  rs1:x9(0xfffffbff), result rd:x23(0xfdfffbfd)
inst_53:
    li  x9, 0xfffffbff
    sm3p1 x23, x9
    sw x23, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xfdfffbfd)
 
    # Testcase 54:  rs1:x8(0xfffff7ff), result rd:x24(0xfbfff7fb)
inst_54:
    li  x8, 0xfffff7ff
    sm3p1 x24, x8
    sw x24, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xfbfff7fb)




    # address for test results
    #la x1, test_12_res
    RVTEST_CASE(11,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_12_0)

 
    # Testcase 55:  rs1:x7(0xffffefff), result rd:x25(0xf7ffeff7)
inst_55:
    li  x7, 0xffffefff
    sm3p1 x25, x7
    sw x25, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0xf7ffeff7)
 
    # Testcase 56:  rs1:x6(0xffffdfff), result rd:x26(0xefffdfef)
inst_56:
    li  x6, 0xffffdfff
    sm3p1 x26, x6
    sw x26, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xefffdfef)
 
    # Testcase 57:  rs1:x5(0xffffbfff), result rd:x27(0xdfffbfdf)
inst_57:
    li  x5, 0xffffbfff
    sm3p1 x27, x5
    sw x27, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xdfffbfdf)
 
    # Testcase 58:  rs1:x4(0xffff7fff), result rd:x28(0xbfff7fbf)
inst_58:
    li  x4, 0xffff7fff
    sm3p1 x28, x4
    sw x28, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0xbfff7fbf)
 
    # Testcase 59:  rs1:x3(0xfffeffff), result rd:x29(0x7ffeff7f)
inst_59:
    li  x3, 0xfffeffff
    sm3p1 x29, x3
    sw x29, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x29, 0x7ffeff7f)




    # address for test results
    #la x4, test_13_res
    RVTEST_CASE(12,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x4,signature_13_0)

 
    # Testcase 60:  rs1:x2(0xfffdffff), result rd:x30(0xfffdfefe)
inst_60:
    li  x2, 0xfffdffff
    sm3p1 x30, x2
    sw x30, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0xfffdfefe)
 
    # Testcase 61:  rs1:x1(0xfffbffff), result rd:x31(0xfffbfdfd)
inst_61:
    li  x1, 0xfffbffff
    sm3p1 x31, x1
    sw x31, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0xfffbfdfd)
 
    # Testcase 62:  rs1:x31(0xfff7ffff), result rd:x1(0xfff7fbfb)
inst_62:
    li  x31, 0xfff7ffff
    sm3p1 x1, x31
    sw x1, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0xfff7fbfb)
 
    # Testcase 63:  rs1:x30(0xffefffff), result rd:x2(0xffeff7f7)
inst_63:
    li  x30, 0xffefffff
    sm3p1 x2, x30
    sw x2, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0xffeff7f7)
 
    # Testcase 64:  rs1:x29(0xffdfffff), result rd:x3(0xffdfefef)
inst_64:
    li  x29, 0xffdfffff
    sm3p1 x3, x29
    sw x3, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x3, 0xffdfefef)




    # address for test results
    #la x1, test_14_res
    RVTEST_CASE(13,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_14_0)

 
    # Testcase 65:  rs1:x28(0xffbfffff), result rd:x4(0xffbfdfdf)
inst_65:
    li  x28, 0xffbfffff
    sm3p1 x4, x28
    sw x4, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0xffbfdfdf)
 
    # Testcase 66:  rs1:x27(0xff7fffff), result rd:x5(0xff7fbfbf)
inst_66:
    li  x27, 0xff7fffff
    sm3p1 x5, x27
    sw x5, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0xff7fbfbf)
 
    # Testcase 67:  rs1:x26(0xfeffffff), result rd:x6(0xfeff7f7f)
inst_67:
    li  x26, 0xfeffffff
    sm3p1 x6, x26
    sw x6, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0xfeff7f7f)
 
    # Testcase 68:  rs1:x25(0xfdffffff), result rd:x7(0xfdfefeff)
inst_68:
    li  x25, 0xfdffffff
    sm3p1 x7, x25
    sw x7, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xfdfefeff)
 
    # Testcase 69:  rs1:x24(0xfbffffff), result rd:x8(0xfbfdfdff)
inst_69:
    li  x24, 0xfbffffff
    sm3p1 x8, x24
    sw x8, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xfbfdfdff)




    # address for test results
    #la x1, test_15_res
    RVTEST_CASE(14,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_15_0)

 
    # Testcase 70:  rs1:x23(0xf7ffffff), result rd:x9(0xf7fbfbff)
inst_70:
    li  x23, 0xf7ffffff
    sm3p1 x9, x23
    sw x9, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xf7fbfbff)
 
    # Testcase 71:  rs1:x22(0xefffffff), result rd:x10(0xeff7f7ff)
inst_71:
    li  x22, 0xefffffff
    sm3p1 x10, x22
    sw x10, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xeff7f7ff)
 
    # Testcase 72:  rs1:x21(0xdfffffff), result rd:x11(0xdfefefff)
inst_72:
    li  x21, 0xdfffffff
    sm3p1 x11, x21
    sw x11, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xdfefefff)
 
    # Testcase 73:  rs1:x20(0xbfffffff), result rd:x12(0xbfdfdfff)
inst_73:
    li  x20, 0xbfffffff
    sm3p1 x12, x20
    sw x12, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0xbfdfdfff)
 
    # Testcase 74:  rs1:x19(0x7fffffff), result rd:x13(0x7fbfbfff)
inst_74:
    li  x19, 0x7fffffff
    sm3p1 x13, x19
    sw x13, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x13, 0x7fbfbfff)




    # address for test results
    #la x4, test_16_res
    RVTEST_CASE(15,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x4,signature_16_0)

 
    # Testcase 75:  rs1:x18(0xffffffff), result rd:x14(0xffffffff)
inst_75:
    li  x18, 0xffffffff
    sm3p1 x14, x18
    sw x14, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x14, 0xffffffff)
 
    # Testcase 76:  rs1:x17(0x00000001), result rd:x15(0x00808001)
inst_76:
    li  x17, 0x1
    sm3p1 x15, x17
    sw x15, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x15, 0x00808001)
 
    # Testcase 77:  rs1:x16(0x00000002), result rd:x16(0x01010002)
inst_77:
    li  x16, 0x2
    sm3p1 x16, x16
    sw x16, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x16, 0x01010002)
 
    # Testcase 78:  rs1:x15(0x00000004), result rd:x17(0x02020004)
inst_78:
    li  x15, 0x4
    sm3p1 x17, x15
    sw x17, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x17, 0x02020004)
 
    # Testcase 79:  rs1:x14(0x00000008), result rd:x18(0x04040008)
inst_79:
    li  x14, 0x8
    sm3p1 x18, x14
    sw x18, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x18, 0x04040008)




    # address for test results
    #la x1, test_17_res
    RVTEST_CASE(16,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_17_0)

 
    # Testcase 80:  rs1:x13(0x00000010), result rd:x19(0x08080010)
inst_80:
    li  x13, 0x10
    sm3p1 x19, x13
    sw x19, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x08080010)
 
    # Testcase 81:  rs1:x12(0x00000020), result rd:x20(0x10100020)
inst_81:
    li  x12, 0x20
    sm3p1 x20, x12
    sw x20, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0x10100020)
 
    # Testcase 82:  rs1:x11(0x00000040), result rd:x21(0x20200040)
inst_82:
    li  x11, 0x40
    sm3p1 x21, x11
    sw x21, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x20200040)
 
    # Testcase 83:  rs1:x10(0x00000080), result rd:x22(0x40400080)
inst_83:
    li  x10, 0x80
    sm3p1 x22, x10
    sw x22, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x40400080)
 
    # Testcase 84:  rs1:x9(0x00000100), result rd:x23(0x80800100)
inst_84:
    li  x9, 0x100
    sm3p1 x23, x9
    sw x23, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0x80800100)




    # address for test results
    #la x1, test_18_res
    RVTEST_CASE(17,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_18_0)

 
    # Testcase 85:  rs1:x8(0x00000200), result rd:x24(0x01000201)
inst_85:
    li  x8, 0x200
    sm3p1 x24, x8
    sw x24, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0x01000201)
 
    # Testcase 86:  rs1:x7(0x00000400), result rd:x25(0x02000402)
inst_86:
    li  x7, 0x400
    sm3p1 x25, x7
    sw x25, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x02000402)
 
    # Testcase 87:  rs1:x6(0x00000800), result rd:x26(0x04000804)
inst_87:
    li  x6, 0x800
    sm3p1 x26, x6
    sw x26, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0x04000804)
 
    # Testcase 88:  rs1:x5(0x00001000), result rd:x27(0x08001008)
inst_88:
    li  x5, 0x1000
    sm3p1 x27, x5
    sw x27, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0x08001008)
 
    # Testcase 89:  rs1:x4(0x00002000), result rd:x28(0x10002010)
inst_89:
    li  x4, 0x2000
    sm3p1 x28, x4
    sw x28, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x28, 0x10002010)




    # address for test results
    #la x4, test_19_res
    RVTEST_CASE(18,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x4,signature_19_0)

 
    # Testcase 90:  rs1:x3(0x00004000), result rd:x29(0x20004020)
inst_90:
    li  x3, 0x4000
    sm3p1 x29, x3
    sw x29, 0(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x29, 0x20004020)
 
    # Testcase 91:  rs1:x2(0x00008000), result rd:x30(0x40008040)
inst_91:
    li  x2, 0x8000
    sm3p1 x30, x2
    sw x30, 4(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x30, 0x40008040)
 
    # Testcase 92:  rs1:x1(0x00010000), result rd:x31(0x80010080)
inst_92:
    li  x1, 0x10000
    sm3p1 x31, x1
    sw x31, 8(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x31, 0x80010080)
 
    # Testcase 93:  rs1:x31(0x00020000), result rd:x1(0x00020101)
inst_93:
    li  x31, 0x20000
    sm3p1 x1, x31
    sw x1, 12(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x1, 0x00020101)
 
    # Testcase 94:  rs1:x30(0x00040000), result rd:x2(0x00040202)
inst_94:
    li  x30, 0x40000
    sm3p1 x2, x30
    sw x2, 16(x4)
    RVMODEL_IO_ASSERT_GPR_EQ(x5, x2, 0x00040202)




    # address for test results
    #la x1, test_20_res
    RVTEST_CASE(19,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_20_0)

 
    # Testcase 95:  rs1:x29(0x00080000), result rd:x3(0x00080404)
inst_95:
    li  x29, 0x80000
    sm3p1 x3, x29
    sw x3, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x3, 0x00080404)
 
    # Testcase 96:  rs1:x28(0x00100000), result rd:x4(0x00100808)
inst_96:
    li  x28, 0x100000
    sm3p1 x4, x28
    sw x4, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x4, 0x00100808)
 
    # Testcase 97:  rs1:x27(0x00200000), result rd:x5(0x00201010)
inst_97:
    li  x27, 0x200000
    sm3p1 x5, x27
    sw x5, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x5, 0x00201010)
 
    # Testcase 98:  rs1:x26(0x00400000), result rd:x6(0x00402020)
inst_98:
    li  x26, 0x400000
    sm3p1 x6, x26
    sw x6, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x6, 0x00402020)
 
    # Testcase 99:  rs1:x25(0x00800000), result rd:x7(0x00804040)
inst_99:
    li  x25, 0x800000
    sm3p1 x7, x25
    sw x7, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0x00804040)




    # address for test results
    #la x1, test_21_res
    RVTEST_CASE(20,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_21_0)

 
    # Testcase 100:  rs1:x24(0x01000000), result rd:x8(0x01008080)
inst_100:
    li  x24, 0x1000000
    sm3p1 x8, x24
    sw x8, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0x01008080)
 
    # Testcase 101:  rs1:x23(0x02000000), result rd:x9(0x02010100)
inst_101:
    li  x23, 0x2000000
    sm3p1 x9, x23
    sw x9, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0x02010100)
 
    # Testcase 102:  rs1:x22(0x04000000), result rd:x10(0x04020200)
inst_102:
    li  x22, 0x4000000
    sm3p1 x10, x22
    sw x10, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0x04020200)
 
    # Testcase 103:  rs1:x21(0x08000000), result rd:x11(0x08040400)
inst_103:
    li  x21, 0x8000000
    sm3p1 x11, x21
    sw x11, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0x08040400)
 
    # Testcase 104:  rs1:x20(0x10000000), result rd:x12(0x10080800)
inst_104:
    li  x20, 0x10000000
    sm3p1 x12, x20
    sw x12, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x12, 0x10080800)




    # address for test results
    #la x5, test_22_res
    RVTEST_CASE(21,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x5,signature_22_0)

 
    # Testcase 105:  rs1:x19(0x20000000), result rd:x13(0x20101000)
inst_105:
    li  x19, 0x20000000
    sm3p1 x13, x19
    sw x13, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x13, 0x20101000)
 
    # Testcase 106:  rs1:x18(0x40000000), result rd:x14(0x40202000)
inst_106:
    li  x18, 0x40000000
    sm3p1 x14, x18
    sw x14, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x14, 0x40202000)
 
    # Testcase 107:  rs1:x17(0x80000000), result rd:x15(0x80404000)
inst_107:
    li  x17, 0x80000000
    sm3p1 x15, x17
    sw x15, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x15, 0x80404000)
 
    # Testcase 108:  rs1:x16(0x00000000), result rd:x16(0x00000000)
inst_108:
    li  x16, 0x0
    sm3p1 x16, x16
    sw x16, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x16, 0x00000000)
 
    # Testcase 109:  rs1:x15(0xfffffffe), result rd:x17(0xff7f7ffe)
inst_109:
    li  x15, 0xfffffffe
    sm3p1 x17, x15
    sw x17, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x17, 0xff7f7ffe)




    # address for test results
    #la x1, test_23_res
    RVTEST_CASE(22,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_23_0)

 
    # Testcase 110:  rs1:x14(0xfffffffd), result rd:x18(0xfefefffd)
inst_110:
    li  x14, 0xfffffffd
    sm3p1 x18, x14
    sw x18, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xfefefffd)
 
    # Testcase 111:  rs1:x13(0xfffffffb), result rd:x19(0xfdfdfffb)
inst_111:
    li  x13, 0xfffffffb
    sm3p1 x19, x13
    sw x19, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0xfdfdfffb)
 
    # Testcase 112:  rs1:x12(0xfffffff7), result rd:x20(0xfbfbfff7)
inst_112:
    li  x12, 0xfffffff7
    sm3p1 x20, x12
    sw x20, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x20, 0xfbfbfff7)
 
    # Testcase 113:  rs1:x11(0xffffffef), result rd:x21(0xf7f7ffef)
inst_113:
    li  x11, 0xffffffef
    sm3p1 x21, x11
    sw x21, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0xf7f7ffef)
 
    # Testcase 114:  rs1:x10(0xffffffdf), result rd:x22(0xefefffdf)
inst_114:
    li  x10, 0xffffffdf
    sm3p1 x22, x10
    sw x22, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0xefefffdf)




    # address for test results
    #la x1, test_24_res
    RVTEST_CASE(23,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_24_0)

 
    # Testcase 115:  rs1:x9(0xffffffbf), result rd:x23(0xdfdfffbf)
inst_115:
    li  x9, 0xffffffbf
    sm3p1 x23, x9
    sw x23, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x23, 0xdfdfffbf)
 
    # Testcase 116:  rs1:x8(0xffffff7f), result rd:x24(0xbfbfff7f)
inst_116:
    li  x8, 0xffffff7f
    sm3p1 x24, x8
    sw x24, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x24, 0xbfbfff7f)
 
    # Testcase 117:  rs1:x7(0xfffffeff), result rd:x25(0x7f7ffeff)
inst_117:
    li  x7, 0xfffffeff
    sm3p1 x25, x7
    sw x25, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x25, 0x7f7ffeff)
 
    # Testcase 118:  rs1:x6(0xfffffdff), result rd:x26(0xfefffdfe)
inst_118:
    li  x6, 0xfffffdff
    sm3p1 x26, x6
    sw x26, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x26, 0xfefffdfe)
 
    # Testcase 119:  rs1:x5(0xfffffbff), result rd:x27(0xfdfffbfd)
inst_119:
    li  x5, 0xfffffbff
    sm3p1 x27, x5
    sw x27, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x27, 0xfdfffbfd)




    # address for test results
    #la x5, test_25_res
    RVTEST_CASE(24,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x5,signature_25_0)

 
    # Testcase 120:  rs1:x4(0xfffff7ff), result rd:x28(0xfbfff7fb)
inst_120:
    li  x4, 0xfffff7ff
    sm3p1 x28, x4
    sw x28, 0(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x28, 0xfbfff7fb)
 
    # Testcase 121:  rs1:x3(0xffffefff), result rd:x29(0xf7ffeff7)
inst_121:
    li  x3, 0xffffefff
    sm3p1 x29, x3
    sw x29, 4(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x29, 0xf7ffeff7)
 
    # Testcase 122:  rs1:x2(0xffffdfff), result rd:x30(0xefffdfef)
inst_122:
    li  x2, 0xffffdfff
    sm3p1 x30, x2
    sw x30, 8(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x30, 0xefffdfef)
 
    # Testcase 123:  rs1:x1(0xffffbfff), result rd:x31(0xdfffbfdf)
inst_123:
    li  x1, 0xffffbfff
    sm3p1 x31, x1
    sw x31, 12(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x31, 0xdfffbfdf)
 
    # Testcase 124:  rs1:x31(0xffff7fff), result rd:x1(0xbfff7fbf)
inst_124:
    li  x31, 0xffff7fff
    sm3p1 x1, x31
    sw x1, 16(x5)
    RVMODEL_IO_ASSERT_GPR_EQ(x6, x1, 0xbfff7fbf)




    # address for test results
    #la x1, test_26_res
    RVTEST_CASE(25,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_26_0)

 
    # Testcase 125:  rs1:x30(0xfffeffff), result rd:x2(0x7ffeff7f)
inst_125:
    li  x30, 0xfffeffff
    sm3p1 x2, x30
    sw x2, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x2, 0x7ffeff7f)
 
    # Testcase 126:  rs1:x29(0xfffdffff), result rd:x3(0xfffdfefe)
inst_126:
    li  x29, 0xfffdffff
    sm3p1 x3, x29
    sw x3, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x3, 0xfffdfefe)
 
    # Testcase 127:  rs1:x28(0xfffbffff), result rd:x4(0xfffbfdfd)
inst_127:
    li  x28, 0xfffbffff
    sm3p1 x4, x28
    sw x4, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x4, 0xfffbfdfd)
 
    # Testcase 128:  rs1:x27(0xfff7ffff), result rd:x5(0xfff7fbfb)
inst_128:
    li  x27, 0xfff7ffff
    sm3p1 x5, x27
    sw x5, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x5, 0xfff7fbfb)
 
    # Testcase 129:  rs1:x26(0xffefffff), result rd:x6(0xffeff7f7)
inst_129:
    li  x26, 0xffefffff
    sm3p1 x6, x26
    sw x6, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x6, 0xffeff7f7)




    # address for test results
    #la x1, test_27_res
    RVTEST_CASE(26,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_27_0)

 
    # Testcase 130:  rs1:x25(0xffdfffff), result rd:x7(0xffdfefef)
inst_130:
    li  x25, 0xffdfffff
    sm3p1 x7, x25
    sw x7, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x7, 0xffdfefef)
 
    # Testcase 131:  rs1:x24(0xffbfffff), result rd:x8(0xffbfdfdf)
inst_131:
    li  x24, 0xffbfffff
    sm3p1 x8, x24
    sw x8, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x8, 0xffbfdfdf)
 
    # Testcase 132:  rs1:x23(0xff7fffff), result rd:x9(0xff7fbfbf)
inst_132:
    li  x23, 0xff7fffff
    sm3p1 x9, x23
    sw x9, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x9, 0xff7fbfbf)
 
    # Testcase 133:  rs1:x22(0xfeffffff), result rd:x10(0xfeff7f7f)
inst_133:
    li  x22, 0xfeffffff
    sm3p1 x10, x22
    sw x10, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x10, 0xfeff7f7f)
 
    # Testcase 134:  rs1:x21(0xfdffffff), result rd:x11(0xfdfefeff)
inst_134:
    li  x21, 0xfdffffff
    sm3p1 x11, x21
    sw x11, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x11, 0xfdfefeff)




    # address for test results
    #la x6, test_28_res
    RVTEST_CASE(27,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x6,signature_28_0)

 
    # Testcase 135:  rs1:x20(0xfbffffff), result rd:x12(0xfbfdfdff)
inst_135:
    li  x20, 0xfbffffff
    sm3p1 x12, x20
    sw x12, 0(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x12, 0xfbfdfdff)
 
    # Testcase 136:  rs1:x19(0xf7ffffff), result rd:x13(0xf7fbfbff)
inst_136:
    li  x19, 0xf7ffffff
    sm3p1 x13, x19
    sw x13, 4(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x13, 0xf7fbfbff)
 
    # Testcase 137:  rs1:x18(0xefffffff), result rd:x14(0xeff7f7ff)
inst_137:
    li  x18, 0xefffffff
    sm3p1 x14, x18
    sw x14, 8(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x14, 0xeff7f7ff)
 
    # Testcase 138:  rs1:x17(0xdfffffff), result rd:x15(0xdfefefff)
inst_138:
    li  x17, 0xdfffffff
    sm3p1 x15, x17
    sw x15, 12(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x15, 0xdfefefff)
 
    # Testcase 139:  rs1:x16(0xbfffffff), result rd:x16(0xbfdfdfff)
inst_139:
    li  x16, 0xbfffffff
    sm3p1 x16, x16
    sw x16, 16(x6)
    RVMODEL_IO_ASSERT_GPR_EQ(x7, x16, 0xbfdfdfff)




    # address for test results
    #la x1, test_29_res
    RVTEST_CASE(28,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_29_0)

 
    # Testcase 140:  rs1:x15(0x7fffffff), result rd:x17(0x7fbfbfff)
inst_140:
    li  x15, 0x7fffffff
    sm3p1 x17, x15
    sw x17, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x17, 0x7fbfbfff)
 
    # Testcase 141:  rs1:x14(0xffffffff), result rd:x18(0xffffffff)
inst_141:
    li  x14, 0xffffffff
    sm3p1 x18, x14
    sw x18, 4(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x18, 0xffffffff)
 
    # Testcase 142:  rs1:x13(0x10fd3dedadea5195), result rd:x19(0x4ff67248)
inst_142:
    li  x13, 0x10fd3dedadea5195
    sm3p1 x19, x13
    sw x19, 8(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x19, 0x4ff67248)
 
    # Testcase 143:  rs1:x12(0xbd295ce2d2ffbec1), result rd:x0(0x00000000)
inst_143:
    li  x12, 0xbd295ce2d2ffbec1
    sm3p1 x0, x12
    sw x0, 12(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x0, 0x00000000)
 
    # Testcase 144:  rs1:x11(0xc9649f05a8e1a8bb), result rd:x21(0x21680c1f)
inst_144:
    li  x11, 0xc9649f05a8e1a8bb
    sm3p1 x21, x11
    sw x21, 16(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x21, 0x21680c1f)




    # address for test results
    #la x1, test_30_res
    RVTEST_CASE(29,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*K.*);def TEST_CASE_1=True;",sm3p1)
    RVTEST_SIGBASE(x1,signature_30_0)

 
    # Testcase 145:  rs1:x0(0x3541291848c99fcb), result rd:x22(0x00000000)
inst_145:
    li  x0, 0x3541291848c99fcb
    sm3p1 x22, x0
    sw x22, 0(x1)
    RVMODEL_IO_ASSERT_GPR_EQ(x2, x22, 0x00000000)


	
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
	.fill 5, 4, 0xdeadbeef
signature_2_0:
	.fill 5, 4, 0xdeadbeef
signature_3_0:
	.fill 5, 4, 0xdeadbeef
signature_4_0:
	.fill 5, 4, 0xdeadbeef
signature_5_0:
	.fill 5, 4, 0xdeadbeef
signature_6_0:
	.fill 5, 4, 0xdeadbeef
signature_7_0:
	.fill 5, 4, 0xdeadbeef
signature_8_0:
	.fill 5, 4, 0xdeadbeef
signature_9_0:
	.fill 5, 4, 0xdeadbeef
signature_10_0:
	.fill 5, 4, 0xdeadbeef
signature_11_0:
	.fill 5, 4, 0xdeadbeef
signature_12_0:
	.fill 5, 4, 0xdeadbeef
signature_13_0:
	.fill 5, 4, 0xdeadbeef
signature_14_0:
	.fill 5, 4, 0xdeadbeef
signature_15_0:
	.fill 5, 4, 0xdeadbeef
signature_16_0:
	.fill 5, 4, 0xdeadbeef
signature_17_0:
	.fill 5, 4, 0xdeadbeef
signature_18_0:
	.fill 5, 4, 0xdeadbeef
signature_19_0:
	.fill 5, 4, 0xdeadbeef
signature_20_0:
	.fill 5, 4, 0xdeadbeef
signature_21_0:
	.fill 5, 4, 0xdeadbeef
signature_22_0:
	.fill 5, 4, 0xdeadbeef
signature_23_0:
	.fill 5, 4, 0xdeadbeef
signature_24_0:
	.fill 5, 4, 0xdeadbeef
signature_25_0:
	.fill 5, 4, 0xdeadbeef
signature_26_0:
	.fill 5, 4, 0xdeadbeef
signature_27_0:
	.fill 5, 4, 0xdeadbeef
signature_28_0:
	.fill 5, 4, 0xdeadbeef
signature_29_0:
	.fill 5, 4, 0xdeadbeef
signature_30_0:
	.fill 5, 4, 0xdeadbeef


#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
