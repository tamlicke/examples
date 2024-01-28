
#include <stdio.h>   /* Standard input/output definitions */
#include <string.h>  /* String function definitions */
#include <unistd.h>  /* UNIX standard function definitions */
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <stdbool.h>
#include <stdlib.h>

//time-out using select( )
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/select.h>

#define MAX_SERIAL_DEVICES 10
#define MAX_CHARS 256

int FdArray[MAX_SERIAL_DEVICES] = { 0 };
char * DeviceNameList[MAX_SERIAL_DEVICES] = { NULL };

// //Time out
// fd_set set;
// struct timeval timeout;
// int SelectRtn;

int MW_openSerialPort(char * DeviceName, unsigned int BaudRate, int BlockingMode, int * ArrayElementReturn)
{
	int fd;
    int i = 0;
	/*check to see if device is already open*/
	for (i=0; i < MAX_SERIAL_DEVICES; i++)
	{
		if (DeviceNameList[i]!=NULL)
		{ 
			if (strcmp(DeviceNameList[i], DeviceName) == 0)
			{
				printf("Error: Device already exists in list.\n");
				*ArrayElementReturn = i;
				return 2; //device already exist in the list
			}
		}
	}
	
	for (i = 0; i < MAX_SERIAL_DEVICES; i++)
	{
		if (DeviceNameList[i] == NULL && i < MAX_SERIAL_DEVICES) //found an empty spot
		{
			DeviceNameList[i] = (char *)malloc(strlen(DeviceName) + 1);
			memcpy(DeviceNameList[i], DeviceName, strlen(DeviceName) + 1);

			/*---------------------------------------------*/
			//perform fopen here(), set the baud rate, etc and store its file descriptor
			/*---------------------------------------------*/
			// printf("Device %s added to List\n", DeviceName);
			
            FdArray[i] = initSerial(DeviceName, BaudRate, BlockingMode);
            *ArrayElementReturn = i;
            
			return 1; //device opened 
		}
		else if (i == MAX_SERIAL_DEVICES - 1)
		{
			return -1; //reached MAX devices
		}
	}
}

int MW_closeSerialPort(char * DeviceName, int DeviceElement)
{
    int rc = -1;
	if ( DeviceNameList[DeviceElement] != NULL)
	{
	
		if (strcmp(DeviceNameList[DeviceElement] , DeviceName)==0)
		{
			free(DeviceNameList[DeviceElement]);
			DeviceNameList[DeviceElement] = NULL;
			/*---------------------------------------------*/
			//close serial port here
			/*---------------------------------------------*/
            termSerial(FdArray[DeviceElement]);            
			rc = 1; //finished closing
		}
        //this shouldnt happen! Name should always match!
	}
	else
	{
		rc = 2; //Device was already closed previously
	}	
    return rc;
}



int initSerial(const unsigned char* DeviceName, int BaudSetting, int BlockMode)
{      
    int serial_rw = 0;
    printf("Init serial... \n");
    printf("Serial Device name: %s \n",DeviceName);
    printf("Baud Setting : %d \n",BaudSetting);
    printf("Blocking mode : %d \n",BlockMode);   
    fflush(stdout);
    int flags = 0;

    if (BlockMode == 1)
    {
     	serial_rw = open(DeviceName, O_RDWR | O_NOCTTY | O_NDELAY); //setup for blocking
        flags = fcntl(serial_rw, F_GETFL);
        flags &= ~O_NONBLOCK;
    }
    else
    {
        serial_rw = open(DeviceName, O_RDWR | O_NOCTTY | O_NDELAY | O_NONBLOCK); 
        flags = fcntl(serial_rw, F_GETFL);
        flags |= O_NONBLOCK; //read calls are non blocking
    }
        
	if (serial_rw == -1 || serial_rw == 0)
	{
        perror("open_port: Unable to open port!");
	}
    
    fcntl(serial_rw, F_SETFL, flags); 

    struct termios options;
    tcgetattr(serial_rw, &options);     //Get the current options for the port
        
    switch(BaudSetting){
         case 9600:
                 cfsetispeed(&options, B9600);
                 cfsetospeed(&options, B9600);
                 break;
         case 19200:
                 cfsetispeed(&options, B19200);
                 cfsetospeed(&options, B19200);
                 break;
         case 57600:
                 cfsetispeed(&options, B57600);
                 cfsetospeed(&options, B57600);
                 break;
         case 115200:
                 cfsetispeed(&options, B115200);
                 cfsetospeed(&options, B115200);
                 break;
         default:
                cfsetispeed(&options, B9600);
                cfsetospeed(&options, B9600);
                break;
    }
                       
	options.c_cflag |= (CLOCAL | CREAD); //Enable the receiver and set local mode
    // settings for no parity bit
    //options.c_cflag &= ~PARENB;
    //options.c_cflag &= ~CSTOPB;
    //options.c_cflag &= ~CSIZE;
    //options.c_cflag |= CS8;    /* select 8 data bits */

    options.c_iflag = 0; //clear input options
    //options.c_iflag &= ~(IXON | IXOFF | IXANY); // disable software flow control
    options.c_lflag =  0; //clear local options
    options.c_oflag &= ~OPOST; //clear output options (raw output)
        
	//Set the new options for the port
	tcsetattr(serial_rw, TCSANOW, &options);
    printf("Serial Port Opened. fd = %d\n", serial_rw);
    fflush(stdout);
    return serial_rw;
}


void MW_writeSerial(int fh_index,unsigned char * data, int ByteCount)
{
    write(FdArray[fh_index],data,ByteCount);
}

void MW_writeSerial_Header(int fh_index, char * data, int ByteCount, const char * dataHeader, int ByteCountHeader)
{
    write(FdArray[fh_index],dataHeader,ByteCountHeader);
    write(FdArray[fh_index],data,ByteCount);
}

void MW_readSerial(int fh_index,unsigned char * data, int ByteCount,int *Status)
{
    int i=0;
    *Status = read(FdArray[fh_index],data,ByteCount); 
    
//     if ( *Status > 0 ) //for debugging only.. remove as needed
//     {   //printf("Debug Print: received %d bytes \n ", *Status);
//         for (i= 0;i<ByteCount;i++)
//         {           
//             printf("[%d]",data[i]);            
//         }
//         fflush(stdout);
//     }
//     else{
//         printf("read rc=%d errno : %d : %s\n",*Status,errno,strerror(errno));
//     }
}

void MW_readSerial_TermCheck(int fh_index, unsigned char * data, unsigned char chTerm, int MaxNumOfBytes, int *NumOfBytes)
{
    int i = 0;
    int NBytes = 0;
    bool done = false;
    unsigned char chData;
    memset((unsigned char *)(data), 0, MaxNumOfBytes);
    while(!done){
        // BLOCKING MODE ONLY
        MW_readSerial(fh_index,&chData,1,&NBytes);
        if(NBytes == 1){
            if(chData == chTerm){
                data[i] = 0;
                done = true;
            }
            else{
                data[i] = chData;
                i++;
            }
        }
        else if(NBytes == -1){
            if(errno != EAGAIN){
                printf("ERROR! = %d : %s\n", errno, strerror(errno));
                fflush(stdout);
                done = true;
            }
            else{
                sleep(1);
            }
        }
        /* protect overrun of the buffer here (allow for null on end) */
        if(i == MaxNumOfBytes-1){
            //printf("\nBuffer is FULL (%d)\n", i);
            //fflush(stdout);
            done = true;
        }
    }
    *NumOfBytes = i;
}

void termSerial(int fh)
{
    printf("...Term serial. fd = %d\n", fh);
    fflush(stdout);
    close(fh);
}