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
  Copyright The Numerical Algorithms Group Limited 1991.
  */

/* 
   This file contains the definitions for the generalized point
   structures in 3D.
   */

#include "tube.h"

/* viewman's and viewAlone's refPt */
#define refPt(v,x) ((v).points + (x))
/* view3D's refPt - allows reference into new, dynamically generated points
   a function called traverse(n) is expected - it returns the nth point in
   the resevoir. note that x should be zero based (if numOfPoints is 10,
   then x=10 would access the first point on the resevoir list).
   */
#define refPt3D(v,x) ( (x)>(v).numOfPoints?traverse(resMax - ((x)-((v).numOfPoints-1))):(v).points + (x) )

typedef struct _componentProp {
  int closed,
    solid;
} componentProp;

typedef struct _LPoint { /* meaning list of points */
  componentProp prop;
  int numOfPoints;
  int *indices;
} LPoint;

typedef struct _LLPoint { /* meaning list of list of points */
  /* for the current 3D stuff:
     functions of 2 variables - closed is false (xmax does not close
     back to xmin) parametric surfaces of one variable (tubes) - closed
     is user defined (from AXIOM)
     */
  componentProp prop;
  int numOfLists;
  LPoint *lp;
  int meshColor;   /* not used */
} LLPoint;


typedef struct _LLLPoint { /* meaning list of list of list of points */
  /* for the current 3D stuff -- that is functions of 2 variables and
     parametric surfaces of one variable (tubes) -- there would be
     only one component
     */
  int numOfComponents;
  LLPoint *llp;
} LLLPoint;


