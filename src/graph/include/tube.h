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

#define openTube 1
#define closedTube 0

typedef struct _triple {    /* used for normals */
  float x,y,z;
} triple;

#include "rgb.h"

typedef struct _viewTriple { /* used for points in 3 space */
  float x,y,z,c,sc;          /* c is color component */
  float wx,wy,wz;            /* world space coords */
  float px,py,pz;            /* as projected on the screen */
  float norm[3];
  struct _viewTriple *next;  /* for new points allocated by splits, 
				keep in list for freeing */
} viewTriple, *viewTriplePtr;

/* the xxxPRIM's are primitiveType's as deduced from the 
   components received from AXIOM. the info may be
   used in the hidden surface section */

#define stillDontKnow    0
#define pointComponent   1
#define lineComponent    2
#define polygonComponent 3
#define surfaceComponent 4


typedef struct _poly {
  int num, sortNum,
    split;                   /* how many times the polygon's been split */
  int numpts;
  int primitiveType;
  int *indexPtr;         /* the index referring to the offset from the
			    beginning of the points field in the view3DStruct
			    in view3D.h */
  float N[3],planeConst,color;    /* planeConst - for plane equ'n, N has
				     other 3 coeffs */
  float pxmin,pxmax,pymin,pymax,pzmin,pzmax;
  float xmin,xmax,ymin,ymax,zmin,zmax;
  int moved;                      /* moved - for depth sort */
  struct _poly *next;
  int doNotStopDraw;              /* for the quickDraw if depth info remains
				     the same between draws */
  float normalFacingOut;
  int partialClip, totalClip,
    partialClipPz, totalClipPz;
} poly;


typedef struct _polyList {
  int  numPolys;
  poly *polyIndx;
  struct _polyList *next;
} polyList;


typedef struct _slice {
  int keyoffset;
  viewTriple *points;
  struct _slice *next;
} slice;


typedef struct _tubeModel {
  /* numslices are the number of pts on the curve */
  int numslices, slicepts, numPolygons;
  int openLoop;  /* open or closed loop */
  slice *slices;
  poly  *polygons;
} tubeModel;


typedef struct _pointInfo {
  viewTriple *theVT;
  int        onVertex,segmentNum;
  int        indexNum;   
} pointInfo;

