function TraceInfoFlag() {
    this.traceFlag = new Array();
    this.traceFlag["run_on_QNX.c:33c57"]=1;
    this.traceFlag["run_on_QNX.c:44c24"]=1;
}
top.TraceInfoFlag.instance = new TraceInfoFlag();
function TraceInfoLineFlag() {
    this.lineTraceFlag = new Array();
    this.lineTraceFlag["run_on_QNX.c:33"]=1;
    this.lineTraceFlag["run_on_QNX.c:38"]=1;
    this.lineTraceFlag["run_on_QNX.c:44"]=1;
    this.lineTraceFlag["run_on_QNX.c:45"]=1;
    this.lineTraceFlag["run_on_QNX.c:74"]=1;
    this.lineTraceFlag["run_on_QNX.c:83"]=1;
}
top.TraceInfoLineFlag.instance = new TraceInfoLineFlag();
