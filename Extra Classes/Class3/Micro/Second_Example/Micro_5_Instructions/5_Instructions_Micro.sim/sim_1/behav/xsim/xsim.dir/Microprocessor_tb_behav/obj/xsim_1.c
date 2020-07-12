/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_240(char*, char *);
extern void execute_241(char*, char *);
extern void execute_433(char*, char *);
extern void execute_434(char*, char *);
extern void execute_238(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_409(char*, char *);
extern void execute_410(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_413(char*, char *);
extern void execute_414(char*, char *);
extern void execute_415(char*, char *);
extern void execute_416(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_377(char*, char *);
extern void execute_378(char*, char *);
extern void execute_387(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_393(char*, char *);
extern void execute_398(char*, char *);
extern void execute_399(char*, char *);
extern void execute_400(char*, char *);
extern void execute_401(char*, char *);
extern void execute_402(char*, char *);
extern void execute_6(char*, char *);
extern void execute_34(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_368(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_305(char*, char *);
extern void execute_309(char*, char *);
extern void execute_313(char*, char *);
extern void execute_314(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_318(char*, char *);
extern void execute_321(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_308(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_310(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_231(char*, char *);
extern void execute_234(char*, char *);
extern void execute_86(char*, char *);
extern void execute_88(char*, char *);
extern void execute_90(char*, char *);
extern void execute_92(char*, char *);
extern void execute_97(char*, char *);
extern void execute_100(char*, char *);
extern void execute_104(char*, char *);
extern void execute_106(char*, char *);
extern void execute_108(char*, char *);
extern void execute_110(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_125(char*, char *);
extern void execute_129(char*, char *);
extern void execute_128(char*, char *);
extern void execute_133(char*, char *);
extern void execute_136(char*, char *);
extern void execute_139(char*, char *);
extern void execute_142(char*, char *);
extern void execute_145(char*, char *);
extern void execute_148(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_157(char*, char *);
extern void execute_160(char*, char *);
extern void execute_162(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_173(char*, char *);
extern void execute_175(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_184(char*, char *);
extern void execute_186(char*, char *);
extern void execute_188(char*, char *);
extern void execute_417(char*, char *);
extern void execute_423(char*, char *);
extern void execute_424(char*, char *);
extern void execute_425(char*, char *);
extern void execute_426(char*, char *);
extern void execute_427(char*, char *);
extern void execute_428(char*, char *);
extern void execute_429(char*, char *);
extern void execute_430(char*, char *);
extern void execute_431(char*, char *);
extern void execute_432(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_435(char*, char *);
extern void execute_436(char*, char *);
extern void execute_437(char*, char *);
extern void execute_438(char*, char *);
extern void execute_439(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[157] = {(funcp)execute_240, (funcp)execute_241, (funcp)execute_433, (funcp)execute_434, (funcp)execute_238, (funcp)execute_407, (funcp)execute_408, (funcp)execute_409, (funcp)execute_410, (funcp)execute_411, (funcp)execute_412, (funcp)execute_413, (funcp)execute_414, (funcp)execute_415, (funcp)execute_416, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_377, (funcp)execute_378, (funcp)execute_387, (funcp)execute_388, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_393, (funcp)execute_398, (funcp)execute_399, (funcp)execute_400, (funcp)execute_401, (funcp)execute_402, (funcp)execute_6, (funcp)execute_34, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_362, (funcp)execute_363, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_367, (funcp)execute_368, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_298, (funcp)execute_299, (funcp)execute_300, (funcp)execute_302, (funcp)execute_303, (funcp)execute_304, (funcp)execute_305, (funcp)execute_309, (funcp)execute_313, (funcp)execute_314, (funcp)execute_315, (funcp)execute_316, (funcp)execute_317, (funcp)execute_318, (funcp)execute_321, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_306, (funcp)execute_307, (funcp)execute_308, (funcp)execute_24, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_310, (funcp)execute_311, (funcp)execute_312, (funcp)execute_29, (funcp)execute_30, (funcp)execute_231, (funcp)execute_234, (funcp)execute_86, (funcp)execute_88, (funcp)execute_90, (funcp)execute_92, (funcp)execute_97, (funcp)execute_100, (funcp)execute_104, (funcp)execute_106, (funcp)execute_108, (funcp)execute_110, (funcp)execute_226, (funcp)execute_227, (funcp)execute_125, (funcp)execute_129, (funcp)execute_128, (funcp)execute_133, (funcp)execute_136, (funcp)execute_139, (funcp)execute_142, (funcp)execute_145, (funcp)execute_148, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_157, (funcp)execute_160, (funcp)execute_162, (funcp)execute_166, (funcp)execute_168, (funcp)execute_173, (funcp)execute_175, (funcp)execute_180, (funcp)execute_181, (funcp)execute_184, (funcp)execute_186, (funcp)execute_188, (funcp)execute_417, (funcp)execute_423, (funcp)execute_424, (funcp)execute_425, (funcp)execute_426, (funcp)execute_427, (funcp)execute_428, (funcp)execute_429, (funcp)execute_430, (funcp)execute_431, (funcp)execute_432, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_435, (funcp)execute_436, (funcp)execute_437, (funcp)execute_438, (funcp)execute_439, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_16, (funcp)transaction_17, (funcp)transaction_18, (funcp)transaction_19, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 157;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Microprocessor_tb_behav/xsim.reloc",  (void **)funcTab, 157);
	iki_vhdl_file_variable_register(dp + 96376);
	iki_vhdl_file_variable_register(dp + 96432);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Microprocessor_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Microprocessor_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 170448, dp + 102856, 0, 7, 0, 7, 8, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Microprocessor_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Microprocessor_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Microprocessor_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
