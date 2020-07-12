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
    xilinxcorelib_ver_m_00000000001358910285_1466817356_init();
    xilinxcorelib_ver_m_00000000001358910285_4189437276_init();
    xilinxcorelib_ver_m_00000000001687936702_0524061452_init();
    xilinxcorelib_ver_m_00000000000277421008_2615840707_init();
    xilinxcorelib_ver_m_00000000002856723387_3659230020_init();
    work_m_00000000001312659776_0049830548_init();
    work_m_00000000003595187395_0621066737_init();
    work_m_00000000001925560650_3505064038_init();
    work_m_00000000002782001558_2081973678_init();
    work_m_00000000003632502494_0886308060_init();
    work_m_00000000002725125537_1239570908_init();
    work_m_00000000002958413536_2356217838_init();
    work_m_00000000000164234959_1055222090_init();
    work_m_00000000002782001558_0439492339_init();
    work_m_00000000003596021764_0569471234_init();
    work_m_00000000002035390154_1710855873_init();
    work_m_00000000001454983605_1729977324_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000001454983605_1729977324");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
