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
    work_m_00000000000587312774_4230376984_init();
    work_m_00000000000990281605_3263087327_init();
    work_m_00000000000133739958_3754155988_init();
    work_m_00000000001357684843_1614041051_init();
    work_m_00000000004072657194_2336566805_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004072657194_2336566805");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
