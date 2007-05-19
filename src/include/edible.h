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

extern int contNum;
extern struct termios childbuf;	  /** the childs normal operating termio   ***/

/***   the terminals mapping of the function keys			 ***/
extern unsigned char  _INTR, _QUIT, _ERASE, _KILL, _EOF, _EOL, _RES1, _RES2;
extern short  INS_MODE ;     /** Flag for insert mode		     **/
extern short ECHOIT;	     /** Flag for echoing **/
extern short PTY;   /* A flag which lets me know whether or not I am 
		       talking to a socket or a pty. If I am not 
		       talking to a PTY then I have to do things like echo
		      back newlines, and send interuppts with an eoln
		      */
/***************************************************************************
    Here are the key mapping my routines need
****************************************************************************/


#define	      _ESC   0X1B    /**  A character sent before every arrow key ***/
#define	      _LBRACK  0X5B    /**  [				      **/
#define	      _EOLN    '\n'    /** eoln				      **/
#define	      _CR      0X0D    /**  cr				      **/
#define	      _BLANK   0X20    /**  blank			      **/
#define	      _BKSPC   0X08    /**  backspace			      **/
#define	      _DEL     0X7F    /**  delete			      **/
#define	      _BELL    0X07    /***  ring the bell		      **/
#define	      _INT     0X7F    /***  interrupt			      **/
#define	      _SQUASH  0X03    /**   kill my process		      **/
#define	      _CNTRL_W 0X17    /**   cntrl-w, to back up a word	      **/
#define	      _CARROT  0X5E    /** circumflex			      **/
#define	      _TAB     0X09    /** tab forward			      **/

#ifndef WCT
#define	      _A       0X41    /**  A				      **/
#define	      _B       0X42    /**  B				      **/
#define	      _C       0X43    /**  C				      **/
#define	      _D       0X44    /**  D				      **/
#define	      _Z       0X5A    /**  Z				      **/
#define	      _H       0X48    /**  H				      **/
#define	      _M       0X4D    /**  M				      **/
#define	      _x       0X78    /**  x				      **/
#define	      _z       0X7A    /*** z				      **/
#define	      _twiddle 0X7E    /*** ~				      **/
#define	      _P       0X50    /*** P				      **/
#define	      _1       0X31    /*** 1				      **/
#define	      _2       0X32    /*** 2				      **/
#define	      _3       0X33    /*** 3				      **/
#define	      _4       0X34    /*** 4				      **/
#define	      _5       0X35    /*** 5				      **/
#define	      _6       0X36    /*** 6				      **/
#define	      _7       0X37    /*** 7				      **/
#define	      _8       0X38    /*** 8				      **/
#define	      _9       0X39    /*** 9				      **/
#define	      _0       0X30    /*** 0				      **/
#define	      _q       0X71    /*** q				      **/
#endif



#define MAXLINE		   1024	  /** maximum chars. on a line		  ***/
#define MAXBUFF		    64	 /** maximum lines saved in the buffer
				       queue				***/

/***  Here are the constants for my three different modes. ******/
#define CLEFRAW			     0
#define CLEFCANONICAL		     1
#define CLEFCBREAK		     2

extern int mode;   /** One of the above # defines *****/

/**   Here is the structure for storing bound  pf-keys		   ***/
typedef struct Fkey
{
  char *str;
  short type;
} fkey;

extern fkey function_key[13] ;	  /** strings which replace function
					  keys when a key is hit	  ***/


extern char editorfilename[];

/****  Here are a bunch of constant, variable and function defs for edin.c */
#define UP		     0	 /** Tells the replace buffer command	***/
#define DOWN		     1	 /**   to look up or down		 **/

#define inc(x)	((x+1)%MAXBUFF)	 /** returns the increment of the presented
				       pointer				***/
#define dec(x)	( ((x-1) < 0) ?(MAXBUFF - 1):(x-1))/** ibid for decrementing */

#define flip(x)	  (x?(x=0):(x=1))      /*** flip the bit		  ***/

/*
    All the previous commands will now be stored in a double linked list.
  This way when I type a command I just have to circle through this list
*/
typedef struct que_struct {
   char buff[1024];
   int flags[1024];
   struct que_struct *prev, *next;
   } QueStruct;

typedef struct wct {
    char *fname;
    off_t fsize;
    time_t ftime;
    char *fimage;
    int wordc;
    char **wordv;

    struct wct *next;
} Wct;

typedef struct wix {
    Wct *pwct;
    int word;
} Wix;


extern QueStruct *ring;
extern QueStruct *current;
extern int ring_size;
extern int prev_check;
extern int MAXRING;

extern char buff[MAXLINE];		   /**	Buffers for collecting input and  **/
extern int  buff_flag[MAXLINE];	   /**	   flags for whether buff chars
					   are printing
					   or non-printing		  **/

extern char in_buff[1024];   /**     buffer for characters read until they are
				      processed				  **/
extern int num_read;
extern int num_proc;	     /**   num chars processed after a read	  **/
extern int buff_pntr;	     /**   present length of  buff		  **/
extern int curr_pntr;	     /** the current position in buff		  **/

/** Here are a bunch of macros for edin.c. They are mostly just charcter
	comparison stuff						  ***/
#define back_word(x) (((*(x) == _5) && (*(x+1) == _9) && \
					(*(x+2) == _q))?(1):(0))

#define fore_word(x) (((*(x) == _6) && (*(x+1) == _8) && \
					(*(x+2) == _q))?(1):(0))

#define alt_f1(x) (((*(x) == _3) && (*(x+1) == _7) && \
					(*(x+2) == _q))?(1):(0))

#define cntrl_end(x) (((*(x) == _4) && (*(x+1) == _8) && \
					(*(x+2) == _q))?(1):(0))

#define insert_toggle(x) (((*(x) == _3) && (*(x+1) == _9) && \
					(*(x+2) == _q))?(1):(0))

#define end_key(x) (((*(x) == _4) && (*(x+1) == _6) && \
					(*(x+2) == _q))?(1):(0))

#define control_char(x) \
     (((x >= 0x01) && (x <= 0x1a))?(1):(0))



/***
   Some global defs needed for emulating a pty. This was taken from guru.h
***/



/* Return an integer that is represented by a character string */
#define ciret(x) ((cintu.c4[0]=(x)[0]), (cintu.c4[1]=(x)[1]), \
		  (cintu.c4[2]=(x)[2]), (cintu.c4[3]=(x)[3]), cintu.i4)

/* move an integer (x) to a character string (y) */

#define icmove(x, y) ((cintu.i4=(x)), ((y)[0]=cintu.c4[0]), \
		      ((y)[1]=cintu.c4[1]), ((y)[2]=cintu.c4[2]), \
			 ((y)[3]=cintu.c4[3]))

/* Return an integer that may not be on an integer boundary */
#define iiret(x) ciret(((char *)&(x)))

 /* Min of two expressions */
#define min(x, y) ((x)<(y)?(x):(y))

 /* Max of two expressions */
#define max(x, y) ((x)>(y)?(x):(y))



