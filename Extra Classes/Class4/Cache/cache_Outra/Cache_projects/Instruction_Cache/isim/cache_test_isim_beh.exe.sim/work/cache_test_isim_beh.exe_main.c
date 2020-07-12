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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003210953477_0739389035_init();
    work_m_00000000000492880661_2220189930_init();
    work_m_00000000002831553658_2702162990_init();
    work_m_00000000003810767878_2890098921_init();
    work_m_00000000001742242032_2610329700_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001742242032_2610329700");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
