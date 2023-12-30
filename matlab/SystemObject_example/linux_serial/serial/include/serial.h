/* Copyright 2005-2007 The MathWorks, Inc. */

/* $Revision: 1.1.6.1 $ */

//http://www.dreamincode.net/forums/topic/177466-serial-port-programming-why-fcntlfd-f-setfl-0%3B/
// http://en.wikibooks.org/wiki/Serial_Programming/termios

int initSerial(const char* DeviceName, int BaudSetting, int BlockMode)
void termSerial(int fh);
int MW_openSerialPort(char * DeviceName, unsigned int BaudRate, int BlockingMode, int * ArrayElementReturn);
int MW_closeSerialPort(char * DeviceName, int DeviceElement);
void MW_writeSerial(int fh_index,unsigned char * data, int ByteCount);
void MW_writeSerial_Header(int fh_index, unsigned char * data, int ByteCount, const unsigned char * dataHeader, int ByteCountHeader);
void MW_readSerial(int fh_index,unsigned char * data, int ByteCount,int *Status);
void MW_readSerial_TermCheck(int fh_index, unsigned char * data, unsigned char chTerm, int MaxNumOfBytes, int *NumOfBytes);

