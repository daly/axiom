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

#include <X11/Xlib.h>
#include <X11/Xresource.h>
#include <setjmp.h>

/* for XDefs */
#define view2D 

#include "hash.h"
#include "noX10.h"
#include "view.h"
#include "view2D.h"
#include "actions.h"
#include "viewCommand.h"
#include "XDefs.h"
#include "override.h"
#include "G.h"       /* Gdraw functions header file */



#define carefullySetFont(gc,font) if (font != serverFont) XSetFont(dsply,gc,font->fid)

#define controlMASK (ButtonPressMask + ExposureMask)
#define potMASK     (ButtonPressMask + ButtonReleaseMask + ButtonMotionMask + LeaveWindowMask)
#define buttonMASK  (ButtonPressMask + ButtonReleaseMask + LeaveWindowMask)
#define colorMASK   (ButtonPressMask + ButtonReleaseMask + LeaveWindowMask)

/* make mouse grab for stationery mouse on a potentiometer slower */
#define mouseWait 50 

#define controlCreateMASK (CWBackPixel | CWBorderPixel | CWEventMask | CWCursor |CWColormap | CWOverrideRedirect)
#define buttonCreateMASK    CWEventMask  
#define messageCreateMASK   0
#define colormapCreateMASK  CWEventMask

#define controlWidth  236
#define controlHeight 400

#define closeLeft cp->buttonQueue[closeAll2D].buttonX - 5
#define closeTop  cp->buttonQueue[closeAll2D].buttonY - 5

#define controlBackground WhitePixel(dsply,scrn)
#define controlCursorForeground monoColor(4)
#define controlCursorBackground monoColor(44)
#define controlTitleColor       monoColor(36)
#define controlPotHeaderColor   monoColor(52)
#define controlColorColor       monoColor(13)
#define controlColorSignColor   monoColor(22)

#define controlMessageHeight globalFont->max_bounds.ascent + globalFont->max_bounds.descent+4
#define messageBot controlMessageY + controlMessageHeight

#define headerHeight headerFont->max_bounds.ascent
#define graphHeaderHeight messageBot + headerHeight

#define graphBarTop    graphHeaderHeight + 12
#define graphBarLeft   66
#define graphBarWidth  graphFont->max_bounds.width
#define graphBarHeight graphFont->max_bounds.ascent + graphFont->max_bounds.descent

#define colormapX 10
#define colormapY 235
#define colormapW 280
#define colormapH 60

#define colorWidth   8
#define colorHeight  12
  
#define colorOffset  3
#define colorOffsetX 24
#define colorOffsetY 20
#define colorPointer 18

#define buttonColor monoColor(105) 

#define graphBarDefaultColor    monoColor(15)
#define graphBarShowingColor    monoColor(15)
#define graphBarHiddenColor     monoColor(138)
#define graphBarSelectColor     monoColor(15)
#define graphBarNotSelectColor  monoColor(138)

#define viewportCreateMASK (CWBackPixel|CWBorderPixel|CWEventMask|CWCursor|CWColormap)
#define viewportTitleCreateMASK (CWBackPixel|CWBorderPixel|CWCursor|CWColormap|CWEventMask|CWOverrideRedirect)

#define viewportMASK (KeyPressMask + ButtonPressMask + ExposureMask)
#define titleMASK    ExposureMask

#define lineWidth  1
#define lineHeight 1

#define titleColor     monoColor(36)
#define titleHeight    24
#define appendixHeight 0

#define viewWidth  400
#define viewHeight 400

#define viewBorderWidth 0
#define borderWidth     22
#define borderHeight	45

#define initDeltaX 0.0
#define initDeltaY 0.0
#define initScale  1.3

#define minScale  0.01
#define maxScale  1000.0
#define maxDelta  1000.0

#define scaleFactor     0.5
#define translateFactor 10

#define viewCursorForeground monoColor(166)
#define viewCursorBackground monoColor(5)

#define axisLength 100.0    

#define axesColorDefault  35
#define labelColor 22

#define meshOutline      monoColor(132)
#define opaqueOutline    monoColor(53)
#define opaqueForeground monoColor(236)

#define drawWireFrame 0
#define drawOpaque    1
#define drawRendered  2


#define numOfColors 240

#define totalHuesConst   27
#define totalShadesConst 8
#define hueEnd 360
#define hueStep hueEnd/totalHuesConst

#define numPlanes 1
#define numColors 10
#define startColor 0
#define endColor   startColor+numColors
#define maxColors DisplayCells(dsply,scrn)-1

#define colorStep (maxColors+1)/numColors


#define physicalWidth  DisplayWidth(dsply,scrn)
#define physicalHeight DisplayHeight(dsply,scrn)
#define deep           DisplayPlanes(dsply,scrn)

#define basicScreen 19

#define yes 1
#define no  0

#define potA  25   /* line dividing potentiometers from stuff above it */
#define potB 173   /* line dividing potentiometers from title */
#define butA 260   /* line dividing buttons from stuff above it */

#define controlMessageY     181
#define controlMessageColor monoColor(29)

#define pi_half         1.570796326794896619231321691639751442099
#define pi              3.141592653589793238462643383279502884197
#define three_pi_halves 4.712388980384689857693965074919254326296
#define two_pi          6.283185307179586476925286766559005768394

#define degrees_in_two_pi 57
#define d2Pi 57

#define viewBackground 0

#define nbuckets         128

#define anywhere 0


#define intSize sizeof(int)
#define floatSize sizeof(float)

/* type is X, PS,... */

#define drawViewport(type) drawTheViewport(type);
#define spadDrawViewport() spadMode++; drawTheViewport(X); spadMode--;


typedef struct _buttonStruct {
  int buttonKey, pot, mask, graphNum, graphSelect;
  short buttonX,buttonY,buttonWidth,buttonHeight,xHalf,yHalf;
  Window self;
  char text[40];
  int textColor, textHue, textShade;
} buttonStruct;

typedef struct _controlPanelStruct {
  int                  numOfButtons;
  Window               controlWindow,messageWindow,colormapWindow;
  char                 message[40];
  struct _buttonStruct buttonQueue[maxButtons2D];
} controlPanelStruct;

typedef struct _mouseCoord {
    float x,y;
} mouseCoord;

typedef struct _viewPoints {
  int                 viewportKey;
  char                title[80];
  Window              viewWindow,titleWindow;
  controlPanelStruct  *controlPanel;
  int                 justMadeControl,haveControl,
                      axesOn,unitsOn,pointsOn,linesOn,splineOn,closing,
                      allowDraw;
  struct _viewPoints  *prevViewport,*nextViewport;
} viewPoints;


typedef struct _controlXY {
  int putX,putY;
} controlXY;


typedef struct _xPointStruct {
  XPoint *xPoint;
  Vertex *x10Point;
  XArc   *arc;
} xPointStruct;



#define calcUnitX(ii) (vwInfo.width * \
		       ((graphArray[0].unitX * ii + \
                     	graphArray[0].originX - graphStateArray[0].centerX) *\
			graphStateArray[0].scaleX + 0.5))
#define calcUnitY(ii) (vwInfo.height * aspectR * \
		       (1 - ((graphArray[0].unitY*aspectR * ii + \
			      graphArray[0].originY*aspectR - \
			      graphStateArray[0].centerY) * \
			     graphStateArray[0].scaleY + 0.5*aspectR )))

#define projX(x,w,i) ((((float)x/w-0.5)/graphStateArray[i].scaleX + \
		       graphStateArray[i].centerX + 0.5) / 	\
		      graphArray[i].xNorm + graphArray[i].xmin)

#define projY(y,h,i) (((0.5-(float)y/h*aspectR)/graphStateArray[i].scaleY + \
		       graphStateArray[i].centerY + 0.5) / 	\
		      graphArray[i].yNorm + graphArray[i].ymin)

#define isNaN(v) (v != v)

#include "globals2.h"

