function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/Digital Clock */
	this.urlHashMap["run_on_QNX:5"] = "run_on_QNX.c:32";
	/* <Root>/Display */
	this.urlHashMap["run_on_QNX:3"] = "msg=rtwMsg_SimulationReducedBlock&block=run_on_QNX:3";
	/* <Root>/Stop Simulation */
	this.urlHashMap["run_on_QNX:7"] = "run_on_QNX.c:40,48";
	/* <Root>/helloworld_sfun */
	this.urlHashMap["run_on_QNX:1"] = "run_on_QNX.c:36,71,72,80,81";
	/* <Root>/Out1 */
	this.urlHashMap["run_on_QNX:4"] = "run_on_QNX.c:35&run_on_QNX.h:51";
	/* <S1>/Compare */
	this.urlHashMap["run_on_QNX:6:2"] = "run_on_QNX.c:42";
	/* <S1>/Constant */
	this.urlHashMap["run_on_QNX:6:3"] = "run_on_QNX.c:41&run_on_QNX.h:57&run_on_QNX_data.c:22";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "run_on_QNX"};
	this.sidHashMap["run_on_QNX"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>"] = {sid: "run_on_QNX:6"};
	this.sidHashMap["run_on_QNX:6"] = {rtwname: "<S1>"};
	this.rtwnameHashMap["<Root>/Compare To Constant"] = {sid: "run_on_QNX:6"};
	this.sidHashMap["run_on_QNX:6"] = {rtwname: "<Root>/Compare To Constant"};
	this.rtwnameHashMap["<Root>/Digital Clock"] = {sid: "run_on_QNX:5"};
	this.sidHashMap["run_on_QNX:5"] = {rtwname: "<Root>/Digital Clock"};
	this.rtwnameHashMap["<Root>/Display"] = {sid: "run_on_QNX:3"};
	this.sidHashMap["run_on_QNX:3"] = {rtwname: "<Root>/Display"};
	this.rtwnameHashMap["<Root>/Stop Simulation"] = {sid: "run_on_QNX:7"};
	this.sidHashMap["run_on_QNX:7"] = {rtwname: "<Root>/Stop Simulation"};
	this.rtwnameHashMap["<Root>/helloworld_sfun"] = {sid: "run_on_QNX:1"};
	this.sidHashMap["run_on_QNX:1"] = {rtwname: "<Root>/helloworld_sfun"};
	this.rtwnameHashMap["<Root>/Out1"] = {sid: "run_on_QNX:4"};
	this.sidHashMap["run_on_QNX:4"] = {rtwname: "<Root>/Out1"};
	this.rtwnameHashMap["<S1>/u"] = {sid: "run_on_QNX:6:1"};
	this.sidHashMap["run_on_QNX:6:1"] = {rtwname: "<S1>/u"};
	this.rtwnameHashMap["<S1>/Compare"] = {sid: "run_on_QNX:6:2"};
	this.sidHashMap["run_on_QNX:6:2"] = {rtwname: "<S1>/Compare"};
	this.rtwnameHashMap["<S1>/Constant"] = {sid: "run_on_QNX:6:3"};
	this.sidHashMap["run_on_QNX:6:3"] = {rtwname: "<S1>/Constant"};
	this.rtwnameHashMap["<S1>/y"] = {sid: "run_on_QNX:6:4"};
	this.sidHashMap["run_on_QNX:6:4"] = {rtwname: "<S1>/y"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
