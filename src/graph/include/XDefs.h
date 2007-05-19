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

#ifdef view3D

/***      default fonts      ***/
#ifdef  RTplatform
#define messageFontDefault    "Rom14.500"
#define buttonFontDefault     "vtbold"
#define headerFontDefault     "Itl14.500"
#define titleFontDefault      "Rom14.500"
#define lightingFontDefault   "6x10"
#define volumeFontDefault     "Rom8.500"
#endif

#if defined(PS2platform) || defined(RIOSplatform) || defined(AIX370platform)
#define messageFontDefault  "Rom14"
#define buttonFontDefault   "Rom11"
#define headerFontDefault   "Itl14"
#define titleFontDefault    "Rom14"
#define lightingFontDefault "Rom10"
#define volumeFontDefault   "Rom8"
#else
#define messageFontDefault  "9x15"
#define buttonFontDefault   "8x13"
#define headerFontDefault   "9x15"
#define titleFontDefault    "9x15"
#define lightingFontDefault "6x13"
#define volumeFontDefault   "6x10"
#endif


#endif

/************************/
/***      view2D      ***/
/************************/
#ifdef view2D

/***      default fonts      ***/
#ifdef  RTplatform
#define messageFontDefault "Rom14.500"
#define buttonFontDefault  "vtbold"
#define headerFontDefault  "Itl14.500"
#define titleFontDefault   "Rom14.500"
#define graphFontDefault   "fg-22"
#define unitFontDefault    "6x10"
#endif

#if defined(PS2platform) || defined(RIOSplatform) || defined(AIX370platform)
#define messageFontDefault "Rom14"
#define buttonFontDefault  "Rom11"
#define headerFontDefault  "Itl14"
#define titleFontDefault   "Rom14"
#define graphFontDefault   "Rom22"
#define unitFontDefault    "6x10"
#else
#define messageFontDefault  "9x15"
#define buttonFontDefault   "8x13"
#define headerFontDefault   "9x15"
#define titleFontDefault    "9x15"
#define unitFontDefault     "6x10"
#define graphFontDefault    "9x15"
#endif


#endif

