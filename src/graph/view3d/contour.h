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


  /***********************************************************************
    contour.h
   ***********************************************************************/
#define segDEBUG

/* #define contour -100*/

#define CONTOUR_float double
#define ACTIVE_poly_struct poly

#define line_crosses_plane(z_min, z_max, z_val) \
  ((z_min < z_val) && (z_max >= z_val))

#ifdef oldie
typedef struct _active_poly_struct {
  struct _active_poly_struct *next;
  int num;
  struct _poly *polygon;
} active_poly_struct;
#endif

typedef struct _segment_struct {
  struct _segment_struct *next;
  struct _viewTriple     *point1, *point2;
} segment_struct;

typedef struct _segment_list_struct {
  int		  num_segs;
  segment_struct *segments;
  int num, max_num;  /* num=slice num, max_num=#slices for this contour */
} segment_list_struct;

  /*=====================================================================*
    Macro Definitions
   *=====================================================================*/
#define foreach_slice(index, slice, slice_list, max_slices) 	\
  for (index=0;							\
       (index<max_slices) && (int)(slice=(slice_list+index)); 	\
       index++)
#define foreach_segment(seg, slice, fl)				\
  for (seg=slice->segments; (fl) && (seg != NIL(segment_struct)); seg=seg->next)

#define foreach_segment_old(idx, s, sl, max, fl) \
  for (idx=0; idx<max; idx++) 					\
    for (s=(sl+idx)->segments; (fl) && (s != NIL(segment_struct)); s=s->next)

  /*---------------------------------------------------------------------*
    interface stuff
   *---------------------------------------------------------------------*/
#ifdef oldie
#define contourCursorForeground moColor(red1, light)
#define contourCursorBackground moColor(green0, normal)
#else
#define contourCursorForeground monoColor(68)
#define contourCursorBackground monoColor(197)
#endif

#define contourMASK	ExposureMask

#define contourPlaneTextCOLOR 28

        /*---------------------------------------------------*
	  title, dividing lines & stuff
         *---------------------------------------------------*/
#define contourTitleColor moColor(blue0, normal)
#define contourTitleA	190
#define contourTitleB	217

#define dotSize 8
#define dotExt  12
#define dotColor moColor(red2, pastel)

        /*---------------------------------------------------*
	  Button Positions & Dimensions
         *---------------------------------------------------*/
#define contourPlaneXY_X 150
#define contourPlaneXY_Y 250
#define contourPlaneXZ_X 190
#define contourPlaneXZ_Y 250
#define contourPlaneYZ_X 230
#define contourPlaneYZ_Y 250
#define contourLittleButt_W 20
#define contourLittleButt_H 20

#define contourFlatView_X 120
#define contourFlatView_Y 290
#define contourAppendSegs_X 120
#define contourAppendSegs_Y 320
#ifdef oldie
#define contourBigButt_W  170 
#define contourBigButt_H   20 
#else
#define contourBigButt_W  10 
#define contourBigButt_H  10 
#endif
        /*---------------------------------------------------*
	  Line & button colors
         *---------------------------------------------------*/
#define abort_FG      moColor(red1, pastel)
#define return_FG     moColor(green2, pastel)
#define littleButt_FG moColor(yellow0, pastel)
#define bigButt_FG    moColor(orange1, pastel)

        /*---------------------------------------------------*
	  longitude part
         *---------------------------------------------------*/
#define contourLongitude_X  10
#define contourLongitude_Y  55
#define contourLongitude_W  135
#define contourLongitude_H  120

#define long_FG        moColor(green1, normal)
#define long_corner_X  36
#define long_corner_Y  72
#define long_RADIUS    40
#define long_W         (long_RADIUS<<1)
#define long_H         (long_RADIUS<<1)

#define long_center_X  (long_corner_X + long_RADIUS)
#define long_center_Y  (long_corner_Y + long_RADIUS)

#define long_str_X 15
#define long_str_Y 48

        /*---------------------------------------------------*
	  latitude part
         *---------------------------------------------------*/
#define contourLatitude_X   160
#define contourLatitude_Y   55
#define contourLatitude_W   135
#define contourLatitude_H   120

#define lat_FG        moColor(green1, normal)
#define lat_corner_X  130
#define lat_corner_Y  85
#define lat_RADIUS    60
#define lat_W         (lat_RADIUS<<1)
#define lat_H         (lat_RADIUS<<1)
#define lat_quad_X    (lat_corner_X + lat_RADIUS)
#define lat_quad_Y    (lat_corner_Y + lat_RADIUS)

#define lat_str_X 176
#define lat_str_Y 48

        /*---------------------------------------------------*
	  slice part
         *---------------------------------------------------*/
#define contourSliceNum_X   10
#define contourSliceNum_Y   245
#define contourSliceNum_W   90
#define contourSliceNum_H   115

#define slice_FG        moColor(red1, normal)

#define slice_str_X 20
#define slice_str_Y 240
#define slicer_image_X 50
#define slicer_image_Y 253

#define MAX_SLICES 100

