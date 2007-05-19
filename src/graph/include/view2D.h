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
#define maxGraphs 9


typedef struct _viewManager {
  int viewType,          /* specifies view3D, view2D, etc... */
    PID,               /* unique integer greater than zero */
    processID,         /* processID of child (PID could be the window ID) */
    viewIn,viewOut;    /* connection to viewport process */
  char propertyName[14]; /* string pointing to the property name */
  Window viewWindow;
  struct _viewManager *nextViewport;
} viewManager;

typedef struct _viewsWithThisGraph {
  viewManager *viewGr;
  struct _viewsWithThisGraph *nextViewthing;
} viewsWithThisGraph;


typedef struct _pointStruct {
  float x,y,hue,shade;
} pointStruct;


typedef struct _pointListStruct {
  pointStruct             *listOfPoints;
  float                   hue, shade;
  int                     pointColor, lineColor, pointSize,
    numberOfPoints;
} pointListStruct;


typedef struct _graphStruct {
  int                 key;
  float               xmin,xmax,ymin,ymax;
  float               xNorm,yNorm;
  float               spadUnitX,spadUnitY;
  float               unitX,unitY;
  float               originX,originY;
  int                 numberOfLists;
  pointListStruct     *listOfListsOfPoints;
  viewsWithThisGraph   *views;
  struct _graphStruct *nextGraph;
} graphStruct;


typedef struct _view2DStruct {
  char        *title;
  int         vX,vY,vW,vH,
    showCP,
    axesOn,unitsOn,pointsOn,linesOn,splineOn,
    axesColor,unitsColor;
  int         graphKeyArray[maxGraphs];
} view2DStruct;


typedef struct _graphStateStruct {
  float scaleX, scaleY, deltaX, deltaY, centerX, centerY;
  int   pointsOn, connectOn, splineOn, axesOn, unitsOn,
    axesColor,unitsColor;
  int   showing, selected;  /* these fields are not passed from Spad; 
			       View2D initializes them */
} graphStateStruct;


/* need spline color, axes color, units color... */
