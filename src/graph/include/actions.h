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

#define makeAViewport -1


/* Viewport Types */
#define view3DType     1
#define viewGraphType  2
#define view2DType     3
#define viewTubeType   4

/* 2D Viewport */

#define translate2D   0
#define scale2D       1
#define pointsOnOff   2
#define connectOnOff  3
#define spline2D      4
#define reset2D       5
#define hideControl2D 6
#define closeAll2D    7
#define axesOnOff2D   8
#define unitsOnOff2D  9
#define pick2D        10
#define drop2D        11
#define clear2D       12
#define ps2D          13
#define graph1        14
#define graph2        15
#define graph3        16
#define graph4        17
#define graph5        18
#define graph6        19
#define graph7        20
#define graph8        21
#define graph9        22
#define graphSelect1  23
#define graphSelect2  24
#define graphSelect3  25
#define graphSelect4  26
#define graphSelect5  27
#define graphSelect6  28
#define graphSelect7  29
#define graphSelect8  30
#define graphSelect9  31
#define query2D       32
#define zoom2Dx       33
#define zoom2Dy       34
#define translate2Dx  35
#define translate2Dy  36

#define maxButtons2D 37

#define graphStart    14  /* the index of graph1 */
#define graphSelectStart (graphStart+maxGraphs)

/* 3D Viewport */

#define controlButtonsStart3D 0

#define rotate       0
#define zoom         1
#define translate    2
#define render       3
#define hideControl  4
#define closeAll     5
#define axesOnOff    6
#define opaqueMesh   7
#define resetView    8
#define transparent  9 

#define lighting     10
#define viewVolume   11
#define region3D     12
#define outlineOnOff 13

#define zoomx        14
#define zoomy        15
#define zoomz        16      
#define originr      17   
#define objectr      18
#define xy           19
#define xz           20
#define yz           21
#define smooth       22
#define saveit       23
#define bwColor      24

#define maxControlButtons3D 25
#define controlButtonsEnd3D (controlButtonsStart3D + maxControlButtons3D)

#define graphStart3D  25  /* the index of g1 */
#define graphSelectStart3D (graphStart3D+maxGraphs)

/* these should be maxControlButtons3D+1.. (be sure to modify view3D.spad) */
#define diagOnOff            (maxControlButtons3D+1)
#define perspectiveOnOff     (maxControlButtons3D+2)
#define clipRegionOnOff      66
#define clipSurfaceOnOff     67

#define query       11


/* misc */

#define spadPressedAButton 100  /* used for communications with the .AXIOM file */
#define colorDef           101
#define moveViewport       102
#define resizeViewport     103
#define changeTitle        104
#define showing2D          105
#define putGraph           106 /* for 2D */
#define getGraph           107 /* for 2D */
#define lightDef           108 /* for 3D */
#define translucenceDef    109 /* for 3D */
#define writeView          110 /* for both */
#define eyeDistanceData    111 /* for 3D */
#define axesColor2D        112 /* for 2D */  
#define unitsColor2D       113 /* for 2D */
#define modifyPOINT        114 /* for 3D */
#define hitherPlaneData    116 /* for 3D */




