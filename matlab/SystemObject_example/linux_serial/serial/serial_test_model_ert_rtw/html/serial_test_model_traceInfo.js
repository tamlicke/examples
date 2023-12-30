function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/Constant */
	this.urlHashMap["serial_test_model:2"] = "serial_test_model.c:31&serial_test_model.h:46&serial_test_model_data.c:22";
	/* <Root>/Serial1 */
	this.urlHashMap["serial_test_model:3"] = "serial_test_model.c:30,32,56,66,79,80,91&serial_test_model.h:39,40";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "serial_test_model"};
	this.sidHashMap["serial_test_model"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<Root>/Constant"] = {sid: "serial_test_model:2"};
	this.sidHashMap["serial_test_model:2"] = {rtwname: "<Root>/Constant"};
	this.rtwnameHashMap["<Root>/Serial1"] = {sid: "serial_test_model:3"};
	this.sidHashMap["serial_test_model:3"] = {rtwname: "<Root>/Serial1"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
