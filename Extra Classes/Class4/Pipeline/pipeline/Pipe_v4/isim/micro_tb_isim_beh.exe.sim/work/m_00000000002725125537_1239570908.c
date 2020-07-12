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
static const char *ng0 = "C:/Users/Joao/Dropbox/UM/Embedded 2/AULA pipeline pratica/Pipe_v4/stage2.v";



static void Cont_30_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
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

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 1023U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 1023U);
    t13 = (t0 + 1368U);
    t14 = *((char **)t13);
    t13 = (t0 + 1048U);
    t16 = *((char **)t13);
    memset(t15, 0, 8);
    t13 = (t15 + 4);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 18);
    *((unsigned int *)t15) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 18);
    *((unsigned int *)t13) = t21;
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t22 & 255U);
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t23 & 255U);
    xsi_vlogtype_concat(t3, 26, 26, 3U, t15, 8, t14, 8, t4, 10);
    t24 = (t0 + 2928);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 67108863U;
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
    xsi_driver_vfirst_trans(t24, 0, 25);
    t37 = (t0 + 2848);
    *((int *)t37) = 1;

LAB1:    return;
}


extern void work_m_00000000002725125537_1239570908_init()
{
	static char *pe[] = {(void *)Cont_30_0};
	xsi_register_didat("work_m_00000000002725125537_1239570908", "isim/micro_tb_isim_beh.exe.sim/work/m_00000000002725125537_1239570908.didat");
	xsi_register_executes(pe);
}
