/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Rathi/Desktop/git/NES_fpga/src/NES_fpga/execute_stage.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};
static int ng9[] = {8, 0};
static int ng10[] = {9, 0};
static int ng11[] = {10, 0};
static int ng12[] = {11, 0};
static int ng13[] = {12, 0};
static int ng14[] = {13, 0};
static int ng15[] = {38, 0};
static int ng16[] = {35, 0};



static void Initial_46_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(46, ng0);

LAB2:    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_55_1(char *t0)
{
    char t4[8];
    char t17[8];
    char t18[8];
    char t19[8];
    char t27[8];
    char t37[8];
    char t39[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t38;

LAB0:    t1 = (t0 + 6456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 7520);
    *((int *)t2) = 1;
    t3 = (t0 + 6488);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(63, ng0);
    t5 = (t0 + 2168U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 8);
    t8 = (t6 + 12);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 15U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 15U);

LAB6:    t15 = ((char*)((ng2)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t15, 32);
    if (t16 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng14)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB2;

LAB7:    xsi_set_current_line(65, ng0);

LAB34:    goto LAB33;

LAB9:    xsi_set_current_line(68, ng0);

LAB35:    goto LAB33;

LAB11:    xsi_set_current_line(71, ng0);

LAB36:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 2168U);
    t5 = *((char **)t3);
    memset(t18, 0, 8);
    t3 = (t18 + 4);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t18) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t13 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t7 = (t0 + 2168U);
    t8 = *((char **)t7);
    memset(t19, 0, 8);
    t7 = (t19 + 4);
    t15 = (t8 + 4);
    t20 = *((unsigned int *)t8);
    t21 = (t20 >> 8);
    *((unsigned int *)t19) = t21;
    t22 = *((unsigned int *)t15);
    t23 = (t22 >> 8);
    *((unsigned int *)t7) = t23;
    t24 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t24 & 255U);
    t25 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t25 & 255U);
    xsi_vlogtype_concat(t17, 16, 16, 2U, t19, 8, t18, 8);
    t26 = (t0 + 4008);
    xsi_vlogvar_assign_value(t26, t17, 0, 0, 16);
    goto LAB33;

LAB13:    xsi_set_current_line(75, ng0);

LAB37:    goto LAB33;

LAB15:    xsi_set_current_line(78, ng0);

LAB38:    goto LAB33;

LAB17:    xsi_set_current_line(81, ng0);

LAB39:    goto LAB33;

LAB19:    xsi_set_current_line(84, ng0);

LAB40:    goto LAB33;

LAB21:    xsi_set_current_line(87, ng0);

LAB41:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 2168U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t17) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t13 & 255U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t7 = (t0 + 2168U);
    t8 = *((char **)t7);
    memset(t18, 0, 8);
    t7 = (t18 + 4);
    t15 = (t8 + 4);
    t20 = *((unsigned int *)t8);
    t21 = (t20 >> 16);
    *((unsigned int *)t18) = t21;
    t22 = *((unsigned int *)t15);
    t23 = (t22 >> 16);
    *((unsigned int *)t7) = t23;
    t24 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t24 & 65535U);
    t25 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t25 & 65535U);
    memset(t19, 0, 8);
    xsi_vlog_unsigned_add(t19, 16, t17, 16, t18, 16);
    t26 = (t0 + 2168U);
    t28 = *((char **)t26);
    memset(t27, 0, 8);
    t26 = (t27 + 4);
    t29 = (t28 + 8);
    t30 = (t28 + 12);
    t31 = *((unsigned int *)t29);
    t32 = (t31 >> 4);
    *((unsigned int *)t27) = t32;
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 4);
    *((unsigned int *)t26) = t34;
    t35 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t35 & 3U);
    t36 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t36 & 3U);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_add(t37, 16, t19, 16, t27, 16);
    t38 = (t0 + 4008);
    xsi_vlogvar_assign_value(t38, t37, 0, 0, 16);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB33;

LAB23:    xsi_set_current_line(92, ng0);

LAB42:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t5 = *((char **)t2);
    memset(t17, 0, 8);
    t2 = (t17 + 4);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t17) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 8, t3, 8, t17, 8);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t18, 0, 0, 8);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    xsi_vlogtype_concat(t39, 40, 40, 2U, t6, 32, t5, 8);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t39, 0, 0, 16);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    goto LAB33;

LAB25:    xsi_set_current_line(103, ng0);

LAB43:    goto LAB33;

LAB27:    xsi_set_current_line(106, ng0);

LAB44:    goto LAB33;

LAB29:    xsi_set_current_line(109, ng0);

LAB45:    goto LAB33;

LAB31:    xsi_set_current_line(112, ng0);

LAB46:    goto LAB33;

}

static void Always_119_2(char *t0)
{
    char t6[8];
    char t9[8];
    char t25[8];
    char t41[8];
    char t44[8];
    char t52[8];
    char t84[8];
    char t102[8];
    char t105[8];
    char t113[8];
    char t155[8];
    char t157[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    int t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t103;
    char *t104;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    int t137;
    int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    char *t156;

LAB0:    t1 = (t0 + 6704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 7536);
    *((int *)t2) = 1;
    t3 = (t0 + 6736);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(119, ng0);

LAB5:    xsi_set_current_line(120, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3688);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 2128U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng15)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng2)));
    memset(t9, 0, 8);
    t10 = (t6 + 4);
    t11 = (t8 + 4);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB9;

LAB6:    if (t21 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t9) = 1;

LAB9:    memset(t25, 0, 8);
    t26 = (t9 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t26) != 0)
        goto LAB12;

LAB13:    t33 = (t25 + 4);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t33);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB14;

LAB15:    memcpy(t52, t25, 8);

LAB16:    memset(t84, 0, 8);
    t85 = (t52 + 4);
    t86 = *((unsigned int *)t85);
    t87 = (~(t86));
    t88 = *((unsigned int *)t52);
    t89 = (t88 & t87);
    t90 = (t89 & 1U);
    if (t90 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t85) != 0)
        goto LAB29;

LAB30:    t92 = (t84 + 4);
    t93 = *((unsigned int *)t84);
    t94 = *((unsigned int *)t92);
    t95 = (t93 || t94);
    if (t95 > 0)
        goto LAB31;

LAB32:    memcpy(t113, t84, 8);

LAB33:    t145 = (t113 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (~(t146));
    t148 = *((unsigned int *)t113);
    t149 = (t148 & t147);
    t150 = (t149 != 0);
    if (t150 > 0)
        goto LAB44;

LAB45:
LAB46:    goto LAB2;

LAB8:    t24 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t25) = 1;
    goto LAB13;

LAB12:    t32 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB13;

LAB14:    t37 = (t0 + 4968);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng1)));
    memset(t41, 0, 8);
    if (*((unsigned int *)t39) != *((unsigned int *)t40))
        goto LAB18;

LAB17:    t42 = (t39 + 4);
    t43 = (t40 + 4);
    if (*((unsigned int *)t42) != *((unsigned int *)t43))
        goto LAB18;

LAB19:    memset(t44, 0, 8);
    t45 = (t41 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t45) != 0)
        goto LAB22;

LAB23:    t53 = *((unsigned int *)t25);
    t54 = *((unsigned int *)t44);
    t55 = (t53 & t54);
    *((unsigned int *)t52) = t55;
    t56 = (t25 + 4);
    t57 = (t44 + 4);
    t58 = (t52 + 4);
    t59 = *((unsigned int *)t56);
    t60 = *((unsigned int *)t57);
    t61 = (t59 | t60);
    *((unsigned int *)t58) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB16;

LAB18:    *((unsigned int *)t41) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t44) = 1;
    goto LAB23;

LAB22:    t51 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB23;

LAB24:    t64 = *((unsigned int *)t52);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t52) = (t64 | t65);
    t66 = (t25 + 4);
    t67 = (t44 + 4);
    t68 = *((unsigned int *)t25);
    t69 = (~(t68));
    t70 = *((unsigned int *)t66);
    t71 = (~(t70));
    t72 = *((unsigned int *)t44);
    t73 = (~(t72));
    t74 = *((unsigned int *)t67);
    t75 = (~(t74));
    t76 = (t69 & t71);
    t77 = (t73 & t75);
    t78 = (~(t76));
    t79 = (~(t77));
    t80 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t80 & t78);
    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & t79);
    t82 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t82 & t78);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    goto LAB26;

LAB27:    *((unsigned int *)t84) = 1;
    goto LAB30;

LAB29:    t91 = (t84 + 4);
    *((unsigned int *)t84) = 1;
    *((unsigned int *)t91) = 1;
    goto LAB30;

LAB31:    t96 = (t0 + 5128);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    t99 = (t0 + 4968);
    t100 = (t99 + 56U);
    t101 = *((char **)t100);
    memset(t102, 0, 8);
    if (*((unsigned int *)t98) != *((unsigned int *)t101))
        goto LAB35;

LAB34:    t103 = (t98 + 4);
    t104 = (t101 + 4);
    if (*((unsigned int *)t103) != *((unsigned int *)t104))
        goto LAB35;

LAB36:    memset(t105, 0, 8);
    t106 = (t102 + 4);
    t107 = *((unsigned int *)t106);
    t108 = (~(t107));
    t109 = *((unsigned int *)t102);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t106) != 0)
        goto LAB39;

LAB40:    t114 = *((unsigned int *)t84);
    t115 = *((unsigned int *)t105);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t117 = (t84 + 4);
    t118 = (t105 + 4);
    t119 = (t113 + 4);
    t120 = *((unsigned int *)t117);
    t121 = *((unsigned int *)t118);
    t122 = (t120 | t121);
    *((unsigned int *)t119) = t122;
    t123 = *((unsigned int *)t119);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB33;

LAB35:    *((unsigned int *)t102) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t105) = 1;
    goto LAB40;

LAB39:    t112 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB40;

LAB41:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t119);
    *((unsigned int *)t113) = (t125 | t126);
    t127 = (t84 + 4);
    t128 = (t105 + 4);
    t129 = *((unsigned int *)t84);
    t130 = (~(t129));
    t131 = *((unsigned int *)t127);
    t132 = (~(t131));
    t133 = *((unsigned int *)t105);
    t134 = (~(t133));
    t135 = *((unsigned int *)t128);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t141 & t139);
    t142 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB43;

LAB44:    xsi_set_current_line(122, ng0);

LAB47:    xsi_set_current_line(129, ng0);
    t151 = (t0 + 5128);
    t152 = (t151 + 56U);
    t153 = *((char **)t152);
    t154 = ((char*)((ng2)));
    memset(t155, 0, 8);
    xsi_vlog_unsigned_add(t155, 32, t153, 6, t154, 32);
    t156 = (t0 + 5128);
    xsi_vlogvar_assign_value(t156, t155, 0, 0, 6);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 0);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t16 & 15U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 15U);

LAB48:    t7 = ((char*)((ng2)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t7, 32);
    if (t76 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng3)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng4)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng5)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng6)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng7)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng8)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng9)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng10)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng11)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng12)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB69;

LAB70:    t2 = ((char*)((ng13)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB71;

LAB72:    t2 = ((char*)((ng14)));
    t76 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t76 == 1)
        goto LAB73;

LAB74:
LAB75:    goto LAB46;

LAB49:    xsi_set_current_line(133, ng0);

LAB76:    goto LAB75;

LAB51:    xsi_set_current_line(136, ng0);

LAB77:    goto LAB75;

LAB53:    xsi_set_current_line(139, ng0);

LAB78:    goto LAB75;

LAB55:    xsi_set_current_line(142, ng0);

LAB79:    goto LAB75;

LAB57:    xsi_set_current_line(145, ng0);

LAB80:    goto LAB75;

LAB59:    xsi_set_current_line(148, ng0);

LAB81:    goto LAB75;

LAB61:    xsi_set_current_line(151, ng0);

LAB82:    goto LAB75;

LAB63:    xsi_set_current_line(154, ng0);

LAB83:    goto LAB75;

LAB65:    xsi_set_current_line(157, ng0);

LAB84:    xsi_set_current_line(158, ng0);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng3)));
    memset(t9, 0, 8);
    t8 = (t5 + 4);
    t10 = (t7 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t8);
    t16 = *((unsigned int *)t10);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t10);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB88;

LAB85:    if (t21 != 0)
        goto LAB87;

LAB86:    *((unsigned int *)t9) = 1;

LAB88:    t24 = (t9 + 4);
    t27 = *((unsigned int *)t24);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB89;

LAB90:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t8);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB96;

LAB93:    if (t21 != 0)
        goto LAB95;

LAB94:    *((unsigned int *)t9) = 1;

LAB96:    t11 = (t9 + 4);
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB97;

LAB98:    xsi_set_current_line(173, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t9, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t8);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB104;

LAB101:    if (t21 != 0)
        goto LAB103;

LAB102:    *((unsigned int *)t9) = 1;

LAB104:    t11 = (t9 + 4);
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB105;

LAB106:
LAB107:
LAB99:
LAB91:    goto LAB75;

LAB67:    xsi_set_current_line(180, ng0);

LAB109:    goto LAB75;

LAB69:    xsi_set_current_line(183, ng0);

LAB110:    goto LAB75;

LAB71:    xsi_set_current_line(186, ng0);

LAB111:    goto LAB75;

LAB73:    xsi_set_current_line(189, ng0);

LAB112:    goto LAB75;

LAB87:    t11 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB88;

LAB89:    xsi_set_current_line(159, ng0);

LAB92:    xsi_set_current_line(159, ng0);
    t26 = (t0 + 2008U);
    t32 = *((char **)t26);
    t26 = (t0 + 4648);
    xsi_vlogvar_assign_value(t26, t32, 0, 0, 8);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 8, t5, 32);
    t7 = (t0 + 4168);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);
    xsi_set_current_line(162, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    xsi_vlogtype_concat(t157, 40, 40, 2U, t5, 32, t4, 8);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t157, 0, 0, 16);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(164, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB91;

LAB95:    t10 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB96;

LAB97:    xsi_set_current_line(167, ng0);

LAB100:    xsi_set_current_line(167, ng0);
    t24 = (t0 + 2008U);
    t26 = *((char **)t24);
    t24 = (t0 + 4808);
    xsi_vlogvar_assign_value(t24, t26, 0, 0, 8);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB99;

LAB103:    t10 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB104;

LAB105:    xsi_set_current_line(174, ng0);

LAB108:    xsi_set_current_line(174, ng0);
    t24 = (t0 + 2008U);
    t26 = *((char **)t24);
    t24 = (t0 + 4488);
    xsi_vlogvar_assign_value(t24, t26, 0, 0, 8);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB107;

}

static void Always_197_3(char *t0)
{
    char t6[8];
    char t11[8];
    char t27[8];
    char t43[8];
    char t46[8];
    char t54[8];
    char t86[8];
    char t105[8];
    char t106[8];
    char t109[8];
    char t117[8];
    char t155[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t44;
    char *t45;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    int t78;
    int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t107;
    char *t108;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    char *t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    int t141;
    int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    char *t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    int t167;

LAB0:    t1 = (t0 + 6952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(197, ng0);
    t2 = (t0 + 7552);
    *((int *)t2) = 1;
    t3 = (t0 + 6984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(197, ng0);

LAB5:    xsi_set_current_line(198, ng0);
    t4 = (t0 + 2168U);
    t5 = *((char **)t4);
    t4 = (t0 + 2128U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng15)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB9;

LAB6:    if (t23 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t11) = 1;

LAB9:    memset(t27, 0, 8);
    t28 = (t11 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t28) != 0)
        goto LAB12;

LAB13:    t35 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t35);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    memcpy(t54, t27, 8);

LAB16:    memset(t86, 0, 8);
    t87 = (t54 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (~(t88));
    t90 = *((unsigned int *)t54);
    t91 = (t90 & t89);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t87) != 0)
        goto LAB29;

LAB30:    t94 = (t86 + 4);
    t95 = *((unsigned int *)t86);
    t96 = *((unsigned int *)t94);
    t97 = (t95 || t96);
    if (t97 > 0)
        goto LAB31;

LAB32:    memcpy(t117, t86, 8);

LAB33:    t149 = (t117 + 4);
    t150 = *((unsigned int *)t149);
    t151 = (~(t150));
    t152 = *((unsigned int *)t117);
    t153 = (t152 & t151);
    t154 = (t153 != 0);
    if (t154 > 0)
        goto LAB44;

LAB45:
LAB46:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t27) = 1;
    goto LAB13;

LAB12:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB13;

LAB14:    t39 = (t0 + 4968);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng1)));
    memset(t43, 0, 8);
    if (*((unsigned int *)t41) != *((unsigned int *)t42))
        goto LAB18;

LAB17:    t44 = (t41 + 4);
    t45 = (t42 + 4);
    if (*((unsigned int *)t44) != *((unsigned int *)t45))
        goto LAB18;

LAB19:    memset(t46, 0, 8);
    t47 = (t43 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t43);
    t51 = (t50 & t49);
    t52 = (t51 & 1U);
    if (t52 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t47) != 0)
        goto LAB22;

LAB23:    t55 = *((unsigned int *)t27);
    t56 = *((unsigned int *)t46);
    t57 = (t55 & t56);
    *((unsigned int *)t54) = t57;
    t58 = (t27 + 4);
    t59 = (t46 + 4);
    t60 = (t54 + 4);
    t61 = *((unsigned int *)t58);
    t62 = *((unsigned int *)t59);
    t63 = (t61 | t62);
    *((unsigned int *)t60) = t63;
    t64 = *((unsigned int *)t60);
    t65 = (t64 != 0);
    if (t65 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB16;

LAB18:    *((unsigned int *)t43) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t46) = 1;
    goto LAB23;

LAB22:    t53 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB23;

LAB24:    t66 = *((unsigned int *)t54);
    t67 = *((unsigned int *)t60);
    *((unsigned int *)t54) = (t66 | t67);
    t68 = (t27 + 4);
    t69 = (t46 + 4);
    t70 = *((unsigned int *)t27);
    t71 = (~(t70));
    t72 = *((unsigned int *)t68);
    t73 = (~(t72));
    t74 = *((unsigned int *)t46);
    t75 = (~(t74));
    t76 = *((unsigned int *)t69);
    t77 = (~(t76));
    t78 = (t71 & t73);
    t79 = (t75 & t77);
    t80 = (~(t78));
    t81 = (~(t79));
    t82 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t82 & t80);
    t83 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t83 & t81);
    t84 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t84 & t80);
    t85 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t85 & t81);
    goto LAB26;

LAB27:    *((unsigned int *)t86) = 1;
    goto LAB30;

LAB29:    t93 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t93) = 1;
    goto LAB30;

LAB31:    t98 = (t0 + 5128);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    t101 = (t0 + 4968);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    t104 = ((char*)((ng2)));
    memset(t105, 0, 8);
    xsi_vlog_unsigned_add(t105, 32, t103, 6, t104, 32);
    memset(t106, 0, 8);
    if (*((unsigned int *)t100) != *((unsigned int *)t105))
        goto LAB35;

LAB34:    t107 = (t100 + 4);
    t108 = (t105 + 4);
    if (*((unsigned int *)t107) != *((unsigned int *)t108))
        goto LAB35;

LAB36:    memset(t109, 0, 8);
    t110 = (t106 + 4);
    t111 = *((unsigned int *)t110);
    t112 = (~(t111));
    t113 = *((unsigned int *)t106);
    t114 = (t113 & t112);
    t115 = (t114 & 1U);
    if (t115 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t110) != 0)
        goto LAB39;

LAB40:    t118 = *((unsigned int *)t86);
    t119 = *((unsigned int *)t109);
    t120 = (t118 & t119);
    *((unsigned int *)t117) = t120;
    t121 = (t86 + 4);
    t122 = (t109 + 4);
    t123 = (t117 + 4);
    t124 = *((unsigned int *)t121);
    t125 = *((unsigned int *)t122);
    t126 = (t124 | t125);
    *((unsigned int *)t123) = t126;
    t127 = *((unsigned int *)t123);
    t128 = (t127 != 0);
    if (t128 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB33;

LAB35:    *((unsigned int *)t106) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t109) = 1;
    goto LAB40;

LAB39:    t116 = (t109 + 4);
    *((unsigned int *)t109) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB40;

LAB41:    t129 = *((unsigned int *)t117);
    t130 = *((unsigned int *)t123);
    *((unsigned int *)t117) = (t129 | t130);
    t131 = (t86 + 4);
    t132 = (t109 + 4);
    t133 = *((unsigned int *)t86);
    t134 = (~(t133));
    t135 = *((unsigned int *)t131);
    t136 = (~(t135));
    t137 = *((unsigned int *)t109);
    t138 = (~(t137));
    t139 = *((unsigned int *)t132);
    t140 = (~(t139));
    t141 = (t134 & t136);
    t142 = (t138 & t140);
    t143 = (~(t141));
    t144 = (~(t142));
    t145 = *((unsigned int *)t123);
    *((unsigned int *)t123) = (t145 & t143);
    t146 = *((unsigned int *)t123);
    *((unsigned int *)t123) = (t146 & t144);
    t147 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t147 & t143);
    t148 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t148 & t144);
    goto LAB43;

LAB44:    xsi_set_current_line(198, ng0);

LAB47:    xsi_set_current_line(201, ng0);
    t156 = (t0 + 2168U);
    t157 = *((char **)t156);
    memset(t155, 0, 8);
    t156 = (t155 + 4);
    t158 = (t157 + 8);
    t159 = (t157 + 12);
    t160 = *((unsigned int *)t158);
    t161 = (t160 >> 0);
    *((unsigned int *)t155) = t161;
    t162 = *((unsigned int *)t159);
    t163 = (t162 >> 0);
    *((unsigned int *)t156) = t163;
    t164 = *((unsigned int *)t155);
    *((unsigned int *)t155) = (t164 & 15U);
    t165 = *((unsigned int *)t156);
    *((unsigned int *)t156) = (t165 & 15U);

LAB48:    t166 = ((char*)((ng2)));
    t167 = xsi_vlog_unsigned_case_compare(t155, 32, t166, 32);
    if (t167 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng3)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng4)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng5)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng6)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng7)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng8)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng9)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB63;

LAB64:    t2 = ((char*)((ng10)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng11)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng12)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB69;

LAB70:    t2 = ((char*)((ng13)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB71;

LAB72:    t2 = ((char*)((ng14)));
    t78 = xsi_vlog_unsigned_case_compare(t155, 32, t2, 32);
    if (t78 == 1)
        goto LAB73;

LAB74:
LAB75:    goto LAB46;

LAB49:    xsi_set_current_line(203, ng0);

LAB76:    goto LAB75;

LAB51:    xsi_set_current_line(206, ng0);

LAB77:    goto LAB75;

LAB53:    xsi_set_current_line(209, ng0);

LAB78:    goto LAB75;

LAB55:    xsi_set_current_line(212, ng0);

LAB79:    goto LAB75;

LAB57:    xsi_set_current_line(215, ng0);

LAB80:    goto LAB75;

LAB59:    xsi_set_current_line(218, ng0);

LAB81:    goto LAB75;

LAB61:    xsi_set_current_line(221, ng0);

LAB82:    goto LAB75;

LAB63:    xsi_set_current_line(224, ng0);

LAB83:    goto LAB75;

LAB65:    xsi_set_current_line(227, ng0);

LAB84:    xsi_set_current_line(228, ng0);
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t8 = (t5 + 4);
    t9 = (t7 + 4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t9);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t8);
    t22 = *((unsigned int *)t9);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB88;

LAB85:    if (t23 != 0)
        goto LAB87;

LAB86:    *((unsigned int *)t6) = 1;

LAB88:    t12 = (t6 + 4);
    t29 = *((unsigned int *)t12);
    t30 = (~(t29));
    t31 = *((unsigned int *)t6);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB89;

LAB90:    xsi_set_current_line(230, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t8);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB95;

LAB92:    if (t23 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t6) = 1;

LAB95:    t10 = (t6 + 4);
    t29 = *((unsigned int *)t10);
    t30 = (~(t29));
    t31 = *((unsigned int *)t6);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB96;

LAB97:    xsi_set_current_line(235, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t8);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB103;

LAB100:    if (t23 != 0)
        goto LAB102;

LAB101:    *((unsigned int *)t6) = 1;

LAB103:    t10 = (t6 + 4);
    t29 = *((unsigned int *)t10);
    t30 = (~(t29));
    t31 = *((unsigned int *)t6);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB104;

LAB105:
LAB106:
LAB98:
LAB91:    goto LAB75;

LAB67:    xsi_set_current_line(242, ng0);

LAB108:    goto LAB75;

LAB69:    xsi_set_current_line(245, ng0);

LAB109:    goto LAB75;

LAB71:    xsi_set_current_line(248, ng0);

LAB110:    goto LAB75;

LAB73:    xsi_set_current_line(251, ng0);

LAB111:    goto LAB75;

LAB87:    t10 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB88;

LAB89:    xsi_set_current_line(229, ng0);
    t13 = (t0 + 2008U);
    t26 = *((char **)t13);
    t13 = (t0 + 4648);
    xsi_vlogvar_assign_value(t13, t26, 0, 0, 8);
    goto LAB91;

LAB94:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB95;

LAB96:    xsi_set_current_line(231, ng0);

LAB99:    xsi_set_current_line(232, ng0);
    t12 = (t0 + 2008U);
    t13 = *((char **)t12);
    t12 = (t0 + 4808);
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 8);
    xsi_set_current_line(233, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4808);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t6, 16, 16, 2U, t8, 8, t4, 8);
    t9 = (t0 + 2888);
    xsi_vlogvar_assign_value(t9, t6, 0, 0, 16);
    goto LAB98;

LAB102:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB103;

LAB104:    xsi_set_current_line(236, ng0);

LAB107:    xsi_set_current_line(237, ng0);
    t12 = (t0 + 2008U);
    t13 = *((char **)t12);
    t12 = (t0 + 4488);
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 8);
    xsi_set_current_line(238, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB106;

}

static void Always_260_4(char *t0)
{
    char t4[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 7200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(260, ng0);
    t2 = (t0 + 7568);
    *((int *)t2) = 1;
    t3 = (t0 + 7232);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(260, ng0);

LAB5:    xsi_set_current_line(261, ng0);
    t5 = (t0 + 2168U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 8);
    t8 = (t6 + 12);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 7);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 7);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 63U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 63U);

LAB6:    t15 = ((char*)((ng2)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t15, 32);
    if (t16 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng11)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng16)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t16 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(262, ng0);

LAB24:    goto LAB23;

LAB9:    xsi_set_current_line(264, ng0);

LAB25:    goto LAB23;

LAB11:    xsi_set_current_line(266, ng0);

LAB26:    goto LAB23;

LAB13:    xsi_set_current_line(268, ng0);

LAB27:    goto LAB23;

LAB15:    xsi_set_current_line(270, ng0);

LAB28:    goto LAB23;

LAB17:    xsi_set_current_line(272, ng0);

LAB29:    goto LAB23;

LAB19:    xsi_set_current_line(274, ng0);

LAB30:    xsi_set_current_line(275, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3528);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    xsi_set_current_line(276, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(277, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3848);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB23;

LAB21:    xsi_set_current_line(279, ng0);

LAB31:    xsi_set_current_line(280, ng0);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    t3 = (t0 + 4488);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t17) = t11;
    t8 = (t5 + 4);
    t15 = (t7 + 4);
    t18 = (t17 + 4);
    t12 = *((unsigned int *)t8);
    t13 = *((unsigned int *)t15);
    t14 = (t12 | t13);
    *((unsigned int *)t18) = t14;
    t19 = *((unsigned int *)t18);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB32;

LAB33:
LAB34:    t37 = (t0 + 3848);
    xsi_vlogvar_assign_value(t37, t17, 0, 0, 8);
    xsi_set_current_line(281, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(282, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(283, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(284, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(285, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(286, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    goto LAB23;

LAB32:    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t18);
    *((unsigned int *)t17) = (t21 | t22);
    t23 = (t5 + 4);
    t24 = (t7 + 4);
    t25 = *((unsigned int *)t23);
    t26 = (~(t25));
    t27 = *((unsigned int *)t5);
    t28 = (t27 & t26);
    t29 = *((unsigned int *)t24);
    t30 = (~(t29));
    t31 = *((unsigned int *)t7);
    t32 = (t31 & t30);
    t33 = (~(t28));
    t34 = (~(t32));
    t35 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t35 & t33);
    t36 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t36 & t34);
    goto LAB34;

}


extern void work_m_00000000004011688214_3754155988_init()
{
	static char *pe[] = {(void *)Initial_46_0,(void *)Always_55_1,(void *)Always_119_2,(void *)Always_197_3,(void *)Always_260_4};
	xsi_register_didat("work_m_00000000004011688214_3754155988", "isim/NES_TB_isim_beh.exe.sim/work/m_00000000004011688214_3754155988.didat");
	xsi_register_executes(pe);
}
