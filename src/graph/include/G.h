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

#ifndef _G_H_
#define _G_H_ 1




#define Xoption		0	/* Gdraw routine option */
#define PSoption		1	/* Gdraw routine option */

#define psError		-1	/* error return status */

/* Black and white definitions of PS */

#define psBlack		0.0	/* def for black in PS */
#define psWhite		1.0	/* def for white in PS */

/* Foreground and background definition */

#define psForeground	psBlack /* foreground color: black */
#define psBackground	psWhite /* background color: white */

/* Gray scale defintions -- same as that in src/XShade.h for XShadeMax */

#define psShadeMax	17.0	/* same as XShadeMax */
#define psShadeMul	(1.0/(psShadeMax-1.0))	/* white and 16 gray shades */

#define psNormalWidth	1	/* def for line width */

/* These are all the line join styles available in PS */

#define psMiterJoin	0
#define psRoundJoin	1
#define psBevelJoin	2

/* These are all the line cap styles available in PS */

#define psButtCap	0
#define psRoundCap	1
#define psPSqCap	2



/*
 * Structures
 */

/*
 * This is used to keep track of GC name in character and in unsigned long
 */

typedef struct _GCstruct {
  GC	 GCint;
  char		 GCchar[10];
  struct _GCstruct *next;
} GCstruct, *GCptr;


/*
 * These global variables are expected to be declared somewehere in the
 * client application source, eg, in main.c for view2D and view3D.
 */

extern char *PSfilename;  /* User-definable output file name. */

extern int   psInit;	  /* Flag for one-time PS initialization routine. */

extern GCptr GChead;      /* Points to the head of GCstruct linked list. */

#endif
