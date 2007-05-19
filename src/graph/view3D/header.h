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

#define view3D 


#include <X11/Xlib.h>
#include <X11/Xresource.h>
#include <X11/Xutil.h>
#include <setjmp.h>

#include "hash.h"

#include "view.h"


#include "view3D.h"
#include "actions.h"
#include "viewCommand.h"
#include "XDefs.h"
#include "override.h"
#include "G.h"      /* Gdraw functions header file */

#define swap(a,b) {a^=b; b^=a; a^=b;}

                      /**********************************/
                      /***         axes stuff         ***/
                      /**********************************/

#define viewportCreateMASK CWBackPixel | CWBorderPixel | CWEventMask | CWCursor | CWColormap
#define viewportTitleCreateMASK CWBackPixel | CWBorderPixel | CWCursor | CWColormap | CWEventMask | CWOverrideRedirect
#define carefullySetFont(gc,font) if (font != serverFont) XSetFont(dsply,gc,font->fid)

#define viewportMASK    (KeyPressMask + ButtonPressMask + ExposureMask)
#define titleMASK       (ExposureMask)

#define lineWidth       1
#define lineHeight      1

#define titleColor      monoColor(36)
#define titleHeight     24
#define appendixHeight  0

#define viewWidth       400
#define viewHeight      400
#define viewYmax        vwInfo.height
#define viewYmin        vwInfo.y
#define viewXmax        vwInfo.width
#define viewXmin        vwInfo.x

#define GC9991 ((GC)9991)


/* For smooth shading buffers. Should be screen resolution size, 
   and one for each of screen width and height may be needed, or
   it can be changed dynamically if desired. */

#ifdef RIOSplatform
#define ARRAY_WIDTH      1280 + 1  /* DisplayWidth(dsply,scrn) */
#define ARRAY_HEIGHT     1024 + 1  /* DisplayHeight(dsply,scrn) */
#else
#define ARRAY_WIDTH      1300  /* DisplayWidth(dsply,scrn) */
#define ARRAY_HEIGHT     1100  /* DisplayHeight(dsply,scrn) */
#endif

#define viewBorderWidth 0 /* make sure ps.h (postscript header) is the same */

#define initDeltaX      0.0
#define initDeltaY      0.0
#define initTheta       pi_half/2.0
#define initPhi         -pi_half/2.0

#define maxDeltaX       1500.0
#define maxDeltaY       1500.0
#define minScale        0.01
#define maxScale        1000.0

#define rotateFactor    0.2
#define scaleFactor     0.2
#define translateFactor 8

#define viewCursorForeground monoColor(166)
#define viewCursorBackground monoColor(5)

#define axesColor       52
#define buttonColor     120
#define labelColor      12

                      /**********************************/
                      /***        graph stuff         ***/
                      /**********************************/

#define graphBarLeft    76
#define graphBarTop     180
#define graphBarWidth   graphFont->max_bounds.width + 5
#define graphBarHeight  graphFont->max_bounds.ascent + graphFont->max_bounds.descent
#define graphBarDefaultColor   monoColor(85)
#define graphBarShowingColor   monoColor(45)
#define graphBarHiddenColor    monoColor(146)
#define graphBarSelectColor    monoColor(45)
#define graphBarNotSelectColor monoColor(145)

                      /******************************/
                      /***         colors         ***/
                      /******************************/

#define totalHuesConst  27

#define hueEnd          360
#define hueStep         (hueEnd/totalHuesConst)

#define black           BlackPixel(dsply,scrn)
#define white           WhitePixel(dsply,scrn)
#define numPlanes       1
#define numColors       10
#define startColor      0
#define endColor        (startColor+numColors)
#define maxColors       (DisplayCells(dsply,scrn)-1)
#define maxPlanes       (DefaultVisual((dpy),(scr))->bits_per_rgb)

#define colorStep       ((maxColors+1)/numColors)

                      /**********************************/
                      /***    Screen and Window Sizes   */
                      /**********************************/

#define physicalWidth   DisplayWidth(dsply,scrn)
#define physicalHeight  DisplayHeight(dsply,scrn)
#define deep            DisplayPlanes(dsply,scrn)

#define basicScreen     19

#define yes             1
#define no              0

#define pi_half         1.57079632
#define pi              3.14159265
#define three_pi_halves 4.71238898
#define two_pi          6.28318530
#define pi_sq           9.86960440

#define degrees_in_two_pi 57
#define d2Pi              57

#define nbuckets         128
                               

#define anywhere        0

#ifdef DEBUG
#include "eventnames.h"
#endif

#define intSize         sizeof(int)
#define floatSize       sizeof(float)

/* Types so far are X, PS */
#define drawViewport(type) { drawPreViewport(type); drawTheViewport(type); } 
#define spadDrawViewport()   spadMode++; drawTheViewport(X); spadMode--;


                      /********************************/
                      /***       lighting panel     ***/
                      /********************************/

/* These are the lighting panel buttons, they start at 101 
   (numbers less than 101 are reserved for control panel buttons */

/* From ../include/actions.h */

#define lightingButtonsStart controlButtonsEnd3D  

#define lightMove        (lightingButtonsStart)
#define lightMoveXY      (lightingButtonsStart+1)
#define lightMoveZ       (lightingButtonsStart+2)
#define lightAbort       (lightingButtonsStart+3)
#define lightReturn      (lightingButtonsStart+4)
#define lightTranslucent (lightingButtonsStart+5)

#define maxlightingButtons 6
#define lightingButtonsEnd (lightingButtonsStart + maxlightingButtons)

                      /***********************************/
                      /***       view volume panel     ***/
                      /***********************************/

/* These are the volume panel buttons, they start at 200 
   (numbers less than 101 are reserved for control panel buttons */

#define volumeButtonsStart lightingButtonsEnd

#define volumeReturn    (volumeButtonsStart)
#define frustrumBut     (volumeButtonsStart+1)
#define clipXBut        (volumeButtonsStart+2)
#define clipYBut        (volumeButtonsStart+3)
#define clipZBut        (volumeButtonsStart+4)
#define perspectiveBut  (volumeButtonsStart+5)
#define clipRegionBut   (volumeButtonsStart+6)
#define clipSurfaceBut  (volumeButtonsStart+7)
#define volumeAbort     (volumeButtonsStart+8)

#define maxVolumeButtons 9 
#define volumeButtonsEnd (volumeButtonsStart + maxVolumeButtons)

                       /**** quit panel ****/

#define quitButtonsStart volumeButtonsEnd

#define quitAbort        (quitButtonsStart)
#define quitReturn       (quitButtonsStart+1)
#define maxQuitButtons   2
#define quitButtonsEnd   (quitButtonsStart + maxQuitButtons)

                       /**** save panel ****/

#define saveButtonsStart quitButtonsEnd

#define saveExit         (saveButtonsStart)
#define pixmap           (saveButtonsStart+1)
#define ps               (saveButtonsStart+2)
#define maxSaveButtons   3
#define saveButtonsEnd   (saveButtonsStart + maxSaveButtons)

                      /******************************************/
                      /***       buttons to be allocated      ***/
                      /******************************************/

#define maxButtons3D    saveButtonsEnd


      /************************ Type Declarations *************************/

                      /**********************************/
                      /***        control stuff       ***/
                      /**********************************/

typedef struct _buttonStruct {
  int           buttonKey, pot, mask;
  short         buttonX, buttonY, buttonWidth, buttonHeight, xHalf, yHalf;
  Window        self;
  char          *text;
  int           textColor,textHue,textShade;
} buttonStruct;

typedef struct _controlPanelStruct {
  Window        controlWindow, messageWindow, colormapWindow;
  char          message[40];
  buttonStruct  buttonQueue[maxButtons3D];
} controlPanelStruct;

typedef struct _mouseCoord {
    float       x, y;
} mouseCoord;

  
                      /**********************************/
                      /***         mesh stuff         ***/
                      /**********************************/

typedef struct _meshStruct {
  float         N0[4], N1[4];   /* the fourth element is Zmin */
} meshStruct;

typedef struct _points3D {
  float         xmin, xmax,
                ymin, ymax,
                xstep, ystep,
                zmin, zmax,
                scaleToView;
  float         *zPoints;
  int           xnum, ynum,
                nextRow,
                style;
  meshStruct    *normData;   /* list of normals */
} points3D;



typedef struct _colorBuffer {
  int      indx;
  char     axes;
} colorBuffer;


                      /**********************************/
                      /***         axes stuff         ***/
                      /**********************************/

typedef struct _point {
  float         x, y, z;
  int           flag;
} point;


   /**** one of the (many) sloppy things that need to be
         cleaned up is the viewPoints structure. a lot of
         stuff in it is used solely for the function of
         two variables stuff. they should be moved to
         the fun2Var substructure. ****/

typedef struct _viewPoints {
  int                 viewportKey;
  char                title[80];
  Window              viewWindow, titleWindow;
  float               deltaX, deltaY,
                      scale, scaleX, scaleY, scaleZ,
                      theta, phi,
                      deltaX0, deltaY0,     /* initial values */
                      scale0, transX, transY, transZ, thetaObj, phiObj,
                      theta0, phi0, theta1, phi1, axestheta, axesphi;
  float               deltaZ, deltaZ0;
  controlPanelStruct  *controlPanel;
  int                 axesOn, regionOn, monoOn;
  int                 zoomXOn, zoomYOn, zoomZOn;
  int                 originrOn, objectrOn;
  int                 xyOn, xzOn, yzOn;
  int                 originFlag;
  int                 justMadeControl, haveControl,
                      closing, allowDraw, needNorm;
  points3D            meshData;
  float               lightVector[3], translucency;
  int                 hueOffset, numberOfHues, hueTop, diagonals;
  struct _viewPoints  *prevViewport, *nextViewport;
} viewPoints;


typedef struct _controlXY {
  int           putX, putY;
} controlXY;



      /************************** Bitmap Files ***************************/
#if 0 
#include "../include/purty/mouse11.bitmap"
#include "../include/purty/mouse11.mask"
#include "../include/purty/spadBitmap.bitmap"
#include "../include/purty/spadMask.mask"
#include "../include/purty/light11.bitmap"
#include "../include/purty/light11.mask"
#endif 


      /******* useful definitions *******/

#define CONTROLpanel 1
#define LIGHTpanel   2
#define VOLUMEpanel  3
#define CONTOURpanel 4
#define QUITpanel    5
#define SAVEpanel    6

#define machine0 0.0002

#include "globals.h"

