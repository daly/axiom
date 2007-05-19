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


/* 
to be included in control.c for drawing the colormap and
process.c for getting the mouse input
 */

#define controlMASK		(ButtonPressMask + ButtonReleaseMask + ExposureMask)
#define potMASK			(ButtonPressMask + ButtonReleaseMask + ButtonMotionMask + LeaveWindowMask)
#define buttonMASK		(ButtonPressMask + ButtonReleaseMask + ButtonMotionMask + LeaveWindowMask)
#define colorMASK		(ButtonPressMask + ButtonReleaseMask + ButtonMotionMask + LeaveWindowMask)


#define mouseWait		50
       /* make mouse grab for stationary mouse on a potentiometer slower */

#define controlCreateMASK	CWBackPixel | CWBorderPixel | CWEventMask |CWCursor |CWColormap | CWOverrideRedirect
#define buttonCreateMASK	CWEventMask  
#define messageCreateMASK	0
#define colormapCreateMASK	CWEventMask

#define controlWidth		300
#define controlHeight		400
#define quitWidth               63              
#define quitHeight              107
#define saveWidth               63
#define saveHeight              107
#define borderWidth		22
#define borderHeight		45


#define controlCursorForeground	monoColor(4)
#define controlCursorBackground	monoColor(54)
#define controlTitleColor	monoColor(36)
#define controlPotHeaderColor	monoColor(52)
#define controlColorColor	monoColor(13)
#define controlColorSignColor	monoColor(22)

#define headerHeight		headerFont->max_bounds.ascent
#define controlMessageHeight	globalFont->max_bounds.ascent +globalFont->max_bounds.descent+4

#define potA			25   /* y coordinate of line dividing 
					potentiometers from stuff above it */
#define potB			173  /* y coordinate of line dividing 
					potentiometers from title */

#define cmapA			233  /* y coordinate of line dividing 
					colormap from stuff above it */

#define butA			((cp->buttonQueue[render]).buttonY - 5)

#define closeL			((cp->buttonQueue[closeAll]).buttonX - 5)
#define closeA			((cp->buttonQueue[closeAll]).buttonY - 5)

#define controlMessageY		181
#define controlMessageColor	monoColor(68)

#define offColor	13
#define onColor		98
#define	modeColor	44

#define colormapX	        21
#define colormapY		240
#define colormapW		290
#define colormapH		48
#define colorWidth		8 
#define colorHeight		8  
#define colorOffset		3
#define colorOffsetX		24
#define colorOffsetY		16
#define colorPointer		16
