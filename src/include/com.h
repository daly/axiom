/*
Copyright (c) 1991-2002, The Numerical ALgorithms Group Ltd.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

    - Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

    - Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in
      the documentation and/or other materials provided with the
      distribution.

    - Neither the name of The Numerical ALgorithms Group Ltd. nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#ifndef _COM_H_
#define _COM_H_

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#if defined(RIOSplatform)
#include <sys/select.h>
#endif


typedef struct {
  int socket;           /* socket number returned by "socket" call */
  int type;             /* socket type (AF_UNIX or AF_INET) */
  int purpose;          /* can be SessionManager, GraphicsServer, etc. */
  int pid;              /* process ID of connected socket */
  int frame;            /* spad interpreter frame (for interpreter windows) */
  int remote_fd;        /* file descriptor of remote socket */
  union {
    struct sockaddr u_addr;
    struct sockaddr_in i_addr;
  } addr;
  char *host_name;      /* name of foreign host if type == AF_INET */
} Sock;


#define MaxClients      150

/* possible socket types (purpose) */

#define SessionManager  1
#define ViewportServer  2
#define MenuServer      3
#define SessionIO       4
#define BaloonServer    5
#define InterpWindow    6
#define KillSpad        7
#define DebugWindow     8  /* used for nagman */
#define Forker          9
#define AV              10 /*Simon's algebraic viewer */

#define Acknowledge     255

/* Timeout value for connection to remote socket */

#define Forever 0

/* Socket name for local AXIOM server and session manager */

#define SpadServer              "/tmp/.d"
#define SessionServer           "/tmp/.s"
#define SessionIOName           "/tmp/.i"
#define MenuServerName          "/tmp/.h"
#define ForkServerName          "/tmp/.f"


#define MASK_SIZE       (NBBY*sizeof(fd_set))


/* table of dedicated socket types */

extern Sock *purpose_table[];
extern Sock server[];
extern Sock clients[];
extern fd_set socket_mask;
extern fd_set server_mask;

/* Commands sent over the AXIOM session manager or menu socket */

#define CreateFrame             1
#define SwitchFrames            2
#define EndOfOutput             3
#define CallInterp              4
#define EndSession              5
#define LispCommand             6
#define SpadCommand             7
#define SendXEventToHyperTeX    8
#define QuietSpadCommand        9
#define CloseClient             10
#define QueryClients            11
#define QuerySpad               12
#define NonSmanSession          13
#define KillLispSystem          14

#define CreateFrameAnswer       50

/* Commands from AXIOM menu server to interpreter windows */

#define ReceiveInputLine        100
#define TestLine                101

#endif







