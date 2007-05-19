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

#ifndef _GDRAWS0_H_
#define _GDRAWS0_H_ 1

#include <X11/Xlib.h>


#define yes		1
#define no		0

/*
 * Indices for PostScript draw procedures.
 *
 * The order of these defined variables are very important; they are used
 * to create the OUTPUT file.  Essentially, PSCreateFile() loops through the
 * index of 0 to psDrawNo and checks if the file/procedure is used.  If so,
 * the file is copied to the output file.
 */

#define output		0		/* output file */
#define headerps	1		/* postscript header file */
#define drawps		2		/* draw procedure */
#define drawarcps	3		/* draw arc procedure */
#define drawfilledps	4		/* draw filled procedure */
#define drawcolorps	5		/* draw color filled procedure */
#define drawpointps	6		/* draw point procedure */
#define fillpolyps	7		/* polygon filled procedure */
#define fillwolps	8		/* polygon filled with outline proc */
#define colorpolyps	9		/* polygon fill with color procedure */
#define colorwolps	10		/* polygon fill with color procedure */
#define drawlineps	11		/* draw line procedure */
#define drawlinesps	12		/* draw lines procedure */
#define drawIstrps	13		/* draw image string procedure */
#define drawstrps	14		/* draw string procedure */
#define drawrectps	15		/* draw rectangle procedure */
#define fillarcps	16		/* filled arc procedure */
#define setupps		17		/* setup, or pre-script */
#define GCdictps	18		/* grahphics context definition file */
#define scriptps	19		/* script file */
#define endps		20		/* wrap up, close down, procedure */

#define psDrawNo	21		/* for use in createPSfile() */


/*
 * PostScript structures
 */

typedef struct _psStruct {	/* data structure for ps routines info */
	int	flag;
	char	filename[200];
} psStruct;

psStruct psData[psDrawNo];	/* need psDrawNo of them */


/*
 * These variables are expected to be declared in within client programs, eg,
 * main.c in view2D and view3D.
 */

extern	int		scrn;	       /* screen */
extern	Display		*dsply;	       /* display */
extern	char		*envAXIOM;     /* environment variable AXIOM or DEVE */


#endif


