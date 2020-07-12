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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Joao/Dropbox/UM/Embedded 2/AULA pipeline pratica/Pipe_v4/stage3.v";
static unsigned int ng1[] = {7U, 0U};
static unsigned int ng2[] = {13U, 0U};
static unsigned int ng3[] = {0U, 0U};



static void Cont_45_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t15[8];
    char t48[8];
    char t49[8];
    char t50[8];
    char t60[8];
    char t76[8];
    char t79[8];
    char t104[8];
    char t153[8];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t77;
    char *t78;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    int t128;
    int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    char *t164;
    char *t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    unsigned int t173;
    unsigned int t174;
    char *t175;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 5);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 5);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 15U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 15U);
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB7;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    memset(t4, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t31) != 0)
        goto LAB10;

LAB11:    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB12;

LAB13:    t44 = *((unsigned int *)t4);
    t45 = (~(t44));
    t46 = *((unsigned int *)t38);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t38) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t48, 8);

LAB20:    t162 = (t0 + 4680);
    t163 = (t162 + 56U);
    t164 = *((char **)t163);
    t165 = (t164 + 56U);
    t166 = *((char **)t165);
    memset(t166, 0, 8);
    t167 = 255U;
    t168 = t167;
    t169 = (t3 + 4);
    t170 = *((unsigned int *)t3);
    t167 = (t167 & t170);
    t171 = *((unsigned int *)t169);
    t168 = (t168 & t171);
    t172 = (t166 + 4);
    t173 = *((unsigned int *)t166);
    *((unsigned int *)t166) = (t173 | t167);
    t174 = *((unsigned int *)t172);
    *((unsigned int *)t172) = (t174 | t168);
    xsi_driver_vfirst_trans(t162, 0, 7);
    t175 = (t0 + 4552);
    *((int *)t175) = 1;

LAB1:    return;
LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t37 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t42 = (t0 + 1848U);
    t43 = *((char **)t42);
    goto LAB13;

LAB14:    t42 = (t0 + 1368U);
    t51 = *((char **)t42);
    memset(t50, 0, 8);
    t42 = (t50 + 4);
    t52 = (t51 + 4);
    t53 = *((unsigned int *)t51);
    t54 = (t53 >> 5);
    *((unsigned int *)t50) = t54;
    t55 = *((unsigned int *)t52);
    t56 = (t55 >> 5);
    *((unsigned int *)t42) = t56;
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t57 & 15U);
    t58 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t58 & 15U);
    t59 = ((char*)((ng2)));
    memset(t60, 0, 8);
    t61 = (t50 + 4);
    t62 = (t59 + 4);
    t63 = *((unsigned int *)t50);
    t64 = *((unsigned int *)t59);
    t65 = (t63 ^ t64);
    t66 = *((unsigned int *)t61);
    t67 = *((unsigned int *)t62);
    t68 = (t66 ^ t67);
    t69 = (t65 | t68);
    t70 = *((unsigned int *)t61);
    t71 = *((unsigned int *)t62);
    t72 = (t70 | t71);
    t73 = (~(t72));
    t74 = (t69 & t73);
    if (t74 != 0)
        goto LAB24;

LAB21:    if (t72 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t60) = 1;

LAB24:    t77 = (t0 + 1368U);
    t78 = *((char **)t77);
    memset(t79, 0, 8);
    t77 = (t79 + 4);
    t80 = (t78 + 4);
    t81 = *((unsigned int *)t78);
    t82 = (t81 >> 9);
    t83 = (t82 & 1);
    *((unsigned int *)t79) = t83;
    t84 = *((unsigned int *)t80);
    t85 = (t84 >> 9);
    t86 = (t85 & 1);
    *((unsigned int *)t77) = t86;
    memset(t76, 0, 8);
    t87 = (t79 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (~(t88));
    t90 = *((unsigned int *)t79);
    t91 = (t90 & t89);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB28;

LAB26:    if (*((unsigned int *)t87) == 0)
        goto LAB25;

LAB27:    t93 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t93) = 1;

LAB28:    t94 = (t76 + 4);
    t95 = (t79 + 4);
    t96 = *((unsigned int *)t79);
    t97 = (~(t96));
    *((unsigned int *)t76) = t97;
    *((unsigned int *)t94) = 0;
    if (*((unsigned int *)t95) != 0)
        goto LAB30;

LAB29:    t102 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t102 & 1U);
    t103 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t103 & 1U);
    t105 = *((unsigned int *)t60);
    t106 = *((unsigned int *)t76);
    t107 = (t105 & t106);
    *((unsigned int *)t104) = t107;
    t108 = (t60 + 4);
    t109 = (t76 + 4);
    t110 = (t104 + 4);
    t111 = *((unsigned int *)t108);
    t112 = *((unsigned int *)t109);
    t113 = (t111 | t112);
    *((unsigned int *)t110) = t113;
    t114 = *((unsigned int *)t110);
    t115 = (t114 != 0);
    if (t115 == 1)
        goto LAB31;

LAB32:
LAB33:    memset(t49, 0, 8);
    t136 = (t104 + 4);
    t137 = *((unsigned int *)t136);
    t138 = (~(t137));
    t139 = *((unsigned int *)t104);
    t140 = (t139 & t138);
    t141 = (t140 & 1U);
    if (t141 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t136) != 0)
        goto LAB36;

LAB37:    t143 = (t49 + 4);
    t144 = *((unsigned int *)t49);
    t145 = *((unsigned int *)t143);
    t146 = (t144 || t145);
    if (t146 > 0)
        goto LAB38;

LAB39:    t149 = *((unsigned int *)t49);
    t150 = (~(t149));
    t151 = *((unsigned int *)t143);
    t152 = (t150 || t151);
    if (t152 > 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t143) > 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t49) > 0)
        goto LAB44;

LAB45:    memcpy(t48, t153, 8);

LAB46:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 8, t43, 8, t48, 8);
    goto LAB20;

LAB18:    memcpy(t3, t43, 8);
    goto LAB20;

LAB23:    t75 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t76) = 1;
    goto LAB28;

LAB30:    t98 = *((unsigned int *)t76);
    t99 = *((unsigned int *)t95);
    *((unsigned int *)t76) = (t98 | t99);
    t100 = *((unsigned int *)t94);
    t101 = *((unsigned int *)t95);
    *((unsigned int *)t94) = (t100 | t101);
    goto LAB29;

LAB31:    t116 = *((unsigned int *)t104);
    t117 = *((unsigned int *)t110);
    *((unsigned int *)t104) = (t116 | t117);
    t118 = (t60 + 4);
    t119 = (t76 + 4);
    t120 = *((unsigned int *)t60);
    t121 = (~(t120));
    t122 = *((unsigned int *)t118);
    t123 = (~(t122));
    t124 = *((unsigned int *)t76);
    t125 = (~(t124));
    t126 = *((unsigned int *)t119);
    t127 = (~(t126));
    t128 = (t121 & t123);
    t129 = (t125 & t127);
    t130 = (~(t128));
    t131 = (~(t129));
    t132 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t132 & t130);
    t133 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t133 & t131);
    t134 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t134 & t130);
    t135 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t135 & t131);
    goto LAB33;

LAB34:    *((unsigned int *)t49) = 1;
    goto LAB37;

LAB36:    t142 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t142) = 1;
    goto LAB37;

LAB38:    t147 = (t0 + 1528U);
    t148 = *((char **)t147);
    goto LAB39;

LAB40:    t147 = (t0 + 1368U);
    t154 = *((char **)t147);
    memset(t153, 0, 8);
    t147 = (t153 + 4);
    t155 = (t154 + 4);
    t156 = *((unsigned int *)t154);
    t157 = (t156 >> 10);
    *((unsigned int *)t153) = t157;
    t158 = *((unsigned int *)t155);
    t159 = (t158 >> 10);
    *((unsigned int *)t147) = t159;
    t160 = *((unsigned int *)t153);
    *((unsigned int *)t153) = (t160 & 255U);
    t161 = *((unsigned int *)t147);
    *((unsigned int *)t147) = (t161 & 255U);
    goto LAB41;

LAB42:    xsi_vlog_unsigned_bit_combine(t48, 8, t148, 8, t153, 8);
    goto LAB46;

LAB44:    memcpy(t48, t148, 8);
    goto LAB46;

}

static void Cont_49_1(char *t0)
{
    char t3[8];
    char t5[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1368U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t2) = t12;
    t14 = (t0 + 1368U);
    t15 = *((char **)t14);
    memset(t13, 0, 8);
    t14 = (t13 + 4);
    t16 = (t15 + 4);
    t17 = *((unsigned int *)t15);
    t18 = (t17 >> 1);
    *((unsigned int *)t13) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 1);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 7U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 7U);
    t23 = (t0 + 2168U);
    t24 = *((char **)t23);
    xsi_vlogtype_concat(t3, 12, 12, 3U, t24, 8, t13, 3, t5, 1);
    t23 = (t0 + 4744);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 4095U;
    t30 = t29;
    t31 = (t3 + 4);
    t32 = *((unsigned int *)t3);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t31);
    t30 = (t30 & t33);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t35 | t29);
    t36 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t36 | t30);
    xsi_driver_vfirst_trans(t23, 0, 11);
    t37 = (t0 + 4568);
    *((int *)t37) = 1;

LAB1:    return;
}

static void Always_53_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4584);
    *((int *)t2) = 1;
    t3 = (t0 + 4016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 8, 0LL);
    goto LAB2;

}

static void Cont_58_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t21[8];
    char t22[8];
    char t23[8];
    char t34[8];
    char t52[8];
    char t60[8];
    char t103[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;

LAB0:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    t19 = *((unsigned int *)t12);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t21, 8);

LAB16:    t120 = (t0 + 4808);
    t121 = (t120 + 56U);
    t122 = *((char **)t121);
    t123 = (t122 + 56U);
    t124 = *((char **)t123);
    memset(t124, 0, 8);
    t125 = 255U;
    t126 = t125;
    t127 = (t3 + 4);
    t128 = *((unsigned int *)t3);
    t125 = (t125 & t128);
    t129 = *((unsigned int *)t127);
    t126 = (t126 & t129);
    t130 = (t124 + 4);
    t131 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t131 | t125);
    t132 = *((unsigned int *)t130);
    *((unsigned int *)t130) = (t132 | t126);
    xsi_driver_vfirst_trans(t120, 0, 7);
    t133 = (t0 + 4600);
    *((int *)t133) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng3)));
    goto LAB9;

LAB10:    t24 = (t0 + 1368U);
    t25 = *((char **)t24);
    memset(t23, 0, 8);
    t24 = (t23 + 4);
    t26 = (t25 + 4);
    t27 = *((unsigned int *)t25);
    t28 = (t27 >> 5);
    *((unsigned int *)t23) = t28;
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 5);
    *((unsigned int *)t24) = t30;
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t31 & 15U);
    t32 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t32 & 15U);
    t33 = ((char*)((ng2)));
    memset(t34, 0, 8);
    t35 = (t23 + 4);
    t36 = (t33 + 4);
    t37 = *((unsigned int *)t23);
    t38 = *((unsigned int *)t33);
    t39 = (t37 ^ t38);
    t40 = *((unsigned int *)t35);
    t41 = *((unsigned int *)t36);
    t42 = (t40 ^ t41);
    t43 = (t39 | t42);
    t44 = *((unsigned int *)t35);
    t45 = *((unsigned int *)t36);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB20;

LAB17:    if (t46 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t34) = 1;

LAB20:    t50 = (t0 + 1368U);
    t51 = *((char **)t50);
    memset(t52, 0, 8);
    t50 = (t52 + 4);
    t53 = (t51 + 4);
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 9);
    t56 = (t55 & 1);
    *((unsigned int *)t52) = t56;
    t57 = *((unsigned int *)t53);
    t58 = (t57 >> 9);
    t59 = (t58 & 1);
    *((unsigned int *)t50) = t59;
    t61 = *((unsigned int *)t34);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t34 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB21;

LAB22:
LAB23:    memset(t22, 0, 8);
    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 & 1U);
    if (t97 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t92) != 0)
        goto LAB26;

LAB27:    t99 = (t22 + 4);
    t100 = *((unsigned int *)t22);
    t101 = *((unsigned int *)t99);
    t102 = (t100 || t101);
    if (t102 > 0)
        goto LAB28;

LAB29:    t113 = *((unsigned int *)t22);
    t114 = (~(t113));
    t115 = *((unsigned int *)t99);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t99) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t22) > 0)
        goto LAB34;

LAB35:    memcpy(t21, t119, 8);

LAB36:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 8, t16, 8, t21, 8);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB19:    t49 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB20;

LAB21:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t34 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t34);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB23;

LAB24:    *((unsigned int *)t22) = 1;
    goto LAB27;

LAB26:    t98 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB27;

LAB28:    t104 = (t0 + 1368U);
    t105 = *((char **)t104);
    memset(t103, 0, 8);
    t104 = (t103 + 4);
    t106 = (t105 + 4);
    t107 = *((unsigned int *)t105);
    t108 = (t107 >> 10);
    *((unsigned int *)t103) = t108;
    t109 = *((unsigned int *)t106);
    t110 = (t109 >> 10);
    *((unsigned int *)t104) = t110;
    t111 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t111 & 255U);
    t112 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t112 & 255U);
    goto LAB29;

LAB30:    t117 = (t0 + 2568);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t21, 8, t103, 8, t119, 8);
    goto LAB36;

LAB34:    memcpy(t21, t103, 8);
    goto LAB36;

}


extern void work_m_00000000000164234959_1055222090_init()
{
	static char *pe[] = {(void *)Cont_45_0,(void *)Cont_49_1,(void *)Always_53_2,(void *)Cont_58_3};
	xsi_register_didat("work_m_00000000000164234959_1055222090", "isim/micro_tb_isim_beh.exe.sim/work/m_00000000000164234959_1055222090.didat");
	xsi_register_executes(pe);
}
