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

#define meshOutline      monoColor(140)
#define opaqueOutline    monoColor(85)
#define opaqueForeground backgroundColor


#define clipOffset 500

/* recalculation occurs if any of these situations have occured */

#define recalc (rotated || zoomed || translated || !finishedList || \
		firstTime || switchedPerspective || changedEyeDistance)


/*** projection macros if matrices are not used  ***/
#define projPersp(z) (viewData.eyeDistance / (z+viewData.eyeDistance))

#define proj2PX(x,y)   -(x*cosTheta + y*sinTheta) 
#define proj2PY(x,y,z) -(y*cosTheta*cosPhi - x*sinTheta*cosPhi + z*sinPhi)

/*** For clipping points ***/

#define behindClipPlane(pz) lessThan(pz,viewData.clipPlane)

#define outsideClippedBoundary(x,y,z) (lessThan(x,viewData.clipXmin) ||    \
				       greaterThan(x,viewData.clipXmax) || \
				       lessThan(y,viewData.clipYmin) ||    \
				       greaterThan(y,viewData.clipYmax) || \
				       lessThan(z,viewData.clipZmin) ||    \
				       greaterThan(z,viewData.clipZmax) || \
				       isNaNPoint(x,y,z))
#include <limits.h>

#define NotPoint	(SHRT_MAX)
#define eqNANQ(x)	(x == NotPoint)



/* Tests for NaN clipping should be added in here. */


