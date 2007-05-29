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

#include "component.h"

/* we now have two substructures (in the union, kind):
   tubeModel (in tube.h) and fun2VarModel (below) 
   */
#define maxGraphs 9

typedef struct _fun2VarModel {
  float *zArray,*cArray;
  viewTriple *pointList;
} fun2VarModel;

union kindOf {
  /*  float *zArray; */
  fun2VarModel fun2Var;
  tubeModel tube;
};

typedef struct _view3DStruct {
  int typeOf3D;
  float xmin,xmax,ymin,ymax,zmin,zmax;
  float cmin,cmax;
  float scaleToView;
  union kindOf kind;
  int xnumber, ynumber, zSize;
  char *title;
  float deltaX,deltaY,scale,theta,phi;
  float deltaZ;			/***** not yet used *****/
  float scaleX,scaleY,scaleZ;  
  float transX,transY,transZ;   /* translate so that rotation can be done 
				   about center of object volume */
  int vX,vY,vW,vH;
  int showCP,style,AxesOn,
    hueOff,numOfHues,
    diagonals;
  float lightVec[3],translucency;
  int scaleDown;
  int perspective;
  float eyeDistance;
  int outlineRenderOn,box,clipbox,
    clipStuff;       /* actually clip the stuff outside the clip boundaries */
  int numOfPoints;
  viewTriple *points;
  poly *polygons;
  LLLPoint lllp;
  int numPolygons;
  int pointSize;
  float distortX,distortY,distortZ;
  float clipXmin,clipXmax,	/* for object space clipping */
    clipYmin,clipYmax,
    clipZmin,clipZmax;
  float clipPlane;		/* for (frustrum hither plane) image space
				   clipping note that there is already a
				   clipOffset variable that is read in as a
				   global variable
				   */
} view3DStruct;


/* for drawing the region box */
typedef struct _boxSideStruct {
  viewTriplePtr pointsPtr[4];	/* see notes for definition of box */
  int inside;
} boxSideStruct;

