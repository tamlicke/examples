function CodeDefine() { 
this.def = new Array();
this.def["runModel"] = {file: "ert_main_c.html",line:30,type:"var"};
this.def["stopSem"] = {file: "ert_main_c.html",line:31,type:"var"};
this.def["baserateTaskSem"] = {file: "ert_main_c.html",line:32,type:"var"};
this.def["schedulerThread"] = {file: "ert_main_c.html",line:33,type:"var"};
this.def["baseRateThread"] = {file: "ert_main_c.html",line:34,type:"var"};
this.def["threadJoinStatus"] = {file: "ert_main_c.html",line:35,type:"var"};
this.def["terminatingmodel"] = {file: "ert_main_c.html",line:36,type:"var"};
this.def["baseRateTask"] = {file: "ert_main_c.html",line:37,type:"fcn"};
this.def["exitFcn"] = {file: "ert_main_c.html",line:56,type:"fcn"};
this.def["terminateTask"] = {file: "ert_main_c.html",line:62,type:"fcn"};
this.def["main"] = {file: "ert_main_c.html",line:79,type:"fcn"};
this.def["run_on_QNX_Y"] = {file: "run_on_QNX_c.html",line:20,type:"var"};
this.def["run_on_QNX_M_"] = {file: "run_on_QNX_c.html",line:23,type:"var"};
this.def["run_on_QNX_M"] = {file: "run_on_QNX_c.html",line:24,type:"var"};
this.def["run_on_QNX_step"] = {file: "run_on_QNX_c.html",line:27,type:"fcn"};
this.def["run_on_QNX_initialize"] = {file: "run_on_QNX_c.html",line:60,type:"fcn"};
this.def["run_on_QNX_terminate"] = {file: "run_on_QNX_c.html",line:78,type:"fcn"};
this.def["ExtY_run_on_QNX_T"] = {file: "run_on_QNX_h.html",line:52,type:"type"};
this.def["P_run_on_QNX_T"] = {file: "run_on_QNX_types_h.html",line:21,type:"type"};
this.def["RT_MODEL_run_on_QNX_T"] = {file: "run_on_QNX_types_h.html",line:24,type:"type"};
this.def["run_on_QNX_P"] = {file: "run_on_QNX_data_c.html",line:20,type:"var"};
this.def["int8_T"] = {file: "rtwtypes_h.html",line:47,type:"type"};
this.def["uint8_T"] = {file: "rtwtypes_h.html",line:48,type:"type"};
this.def["int16_T"] = {file: "rtwtypes_h.html",line:49,type:"type"};
this.def["uint16_T"] = {file: "rtwtypes_h.html",line:50,type:"type"};
this.def["int32_T"] = {file: "rtwtypes_h.html",line:51,type:"type"};
this.def["uint32_T"] = {file: "rtwtypes_h.html",line:52,type:"type"};
this.def["int64_T"] = {file: "rtwtypes_h.html",line:53,type:"type"};
this.def["uint64_T"] = {file: "rtwtypes_h.html",line:54,type:"type"};
this.def["real32_T"] = {file: "rtwtypes_h.html",line:55,type:"type"};
this.def["real64_T"] = {file: "rtwtypes_h.html",line:56,type:"type"};
this.def["real_T"] = {file: "rtwtypes_h.html",line:62,type:"type"};
this.def["time_T"] = {file: "rtwtypes_h.html",line:63,type:"type"};
this.def["boolean_T"] = {file: "rtwtypes_h.html",line:64,type:"type"};
this.def["int_T"] = {file: "rtwtypes_h.html",line:65,type:"type"};
this.def["uint_T"] = {file: "rtwtypes_h.html",line:66,type:"type"};
this.def["ulong_T"] = {file: "rtwtypes_h.html",line:67,type:"type"};
this.def["char_T"] = {file: "rtwtypes_h.html",line:68,type:"type"};
this.def["uchar_T"] = {file: "rtwtypes_h.html",line:69,type:"type"};
this.def["byte_T"] = {file: "rtwtypes_h.html",line:70,type:"type"};
this.def["creal32_T"] = {file: "rtwtypes_h.html",line:80,type:"type"};
this.def["creal64_T"] = {file: "rtwtypes_h.html",line:85,type:"type"};
this.def["creal_T"] = {file: "rtwtypes_h.html",line:90,type:"type"};
this.def["cint8_T"] = {file: "rtwtypes_h.html",line:97,type:"type"};
this.def["cuint8_T"] = {file: "rtwtypes_h.html",line:104,type:"type"};
this.def["cint16_T"] = {file: "rtwtypes_h.html",line:111,type:"type"};
this.def["cuint16_T"] = {file: "rtwtypes_h.html",line:118,type:"type"};
this.def["cint32_T"] = {file: "rtwtypes_h.html",line:125,type:"type"};
this.def["cuint32_T"] = {file: "rtwtypes_h.html",line:132,type:"type"};
this.def["cint64_T"] = {file: "rtwtypes_h.html",line:139,type:"type"};
this.def["cuint64_T"] = {file: "rtwtypes_h.html",line:146,type:"type"};
this.def["pointer_T"] = {file: "rtwtypes_h.html",line:167,type:"type"};
this.def["printValueInit"] = {file: "hello_world_c.html",line:13,type:"fcn"};
this.def["printValue"] = {file: "hello_world_c.html",line:20,type:"fcn"};
this.def["printValueTerm"] = {file: "hello_world_c.html",line:35,type:"fcn"};
}
CodeDefine.instance = new CodeDefine();
var testHarnessInfo = {OwnerFileName: "", HarnessOwner: "", HarnessName: "", IsTestHarness: "0"};
var relPathToBuildDir = "../ert_main.c";
var fileSep = "\\";
var isPC = true;
function Html2SrcLink() {
	this.html2SrcPath = new Array;
	this.html2Root = new Array;
	this.html2SrcPath["ert_main_c.html"] = "../ert_main.c";
	this.html2Root["ert_main_c.html"] = "ert_main_c.html";
	this.html2SrcPath["run_on_QNX_c.html"] = "../run_on_QNX.c";
	this.html2Root["run_on_QNX_c.html"] = "run_on_QNX_c.html";
	this.html2SrcPath["run_on_QNX_h.html"] = "../run_on_QNX.h";
	this.html2Root["run_on_QNX_h.html"] = "run_on_QNX_h.html";
	this.html2SrcPath["run_on_QNX_private_h.html"] = "../run_on_QNX_private.h";
	this.html2Root["run_on_QNX_private_h.html"] = "run_on_QNX_private_h.html";
	this.html2SrcPath["run_on_QNX_types_h.html"] = "../run_on_QNX_types.h";
	this.html2Root["run_on_QNX_types_h.html"] = "run_on_QNX_types_h.html";
	this.html2SrcPath["run_on_QNX_data_c.html"] = "../run_on_QNX_data.c";
	this.html2Root["run_on_QNX_data_c.html"] = "run_on_QNX_data_c.html";
	this.html2SrcPath["rtwtypes_h.html"] = "../rtwtypes.h";
	this.html2Root["rtwtypes_h.html"] = "rtwtypes_h.html";
	this.html2SrcPath["rtmodel_h.html"] = "../rtmodel.h";
	this.html2Root["rtmodel_h.html"] = "rtmodel_h.html";
	this.html2SrcPath["MW_custom_RTOS_header_h.html"] = "../MW_custom_RTOS_header.h";
	this.html2Root["MW_custom_RTOS_header_h.html"] = "MW_custom_RTOS_header_h.html";
	this.html2SrcPath["MW_target_hardware_resources_h.html"] = "../MW_target_hardware_resources.h";
	this.html2Root["MW_target_hardware_resources_h.html"] = "MW_target_hardware_resources_h.html";
	this.html2SrcPath["hello_world_c.html"] = "../../hello_world.c";
	this.html2Root["hello_world_c.html"] = "hello_world_c.html";
	this.getLink2Src = function (htmlFileName) {
		 if (this.html2SrcPath[htmlFileName])
			 return this.html2SrcPath[htmlFileName];
		 else
			 return null;
	}
	this.getLinkFromRoot = function (htmlFileName) {
		 if (this.html2Root[htmlFileName])
			 return this.html2Root[htmlFileName];
		 else
			 return null;
	}
}
Html2SrcLink.instance = new Html2SrcLink();
var fileList = [
"ert_main_c.html","run_on_QNX_c.html","run_on_QNX_h.html","run_on_QNX_private_h.html","run_on_QNX_types_h.html","run_on_QNX_data_c.html","rtwtypes_h.html","rtmodel_h.html","MW_custom_RTOS_header_h.html","MW_target_hardware_resources_h.html","hello_world_c.html"];
