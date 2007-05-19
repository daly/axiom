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
  colors.h
  created on 25 November 1992, Jim Wen
  (same as the browser/src/color.h file - maybe should share?)
  */

/*  The Hues */
#define red0		0
#define red1		1
#define red2		2
#define orange0		3
#define orange1		4
#define orange2		5
#define tan0		6
#define tan1		7
#define tan2		8
#define yellow0		9
#define yellow1		10
#define yellow2		11
#define green0		12
#define green1		13
#define green2		14
#define cyan0		15
#define cyan1		16
#define cyan2		17
#define blue0		18
#define blue1		19
#define blue2		20
#define indigo0		21
#define indigo1		22
#define indigo2		23
#define violet0		24
#define violet1		25
#define violet2		26

/*
  The Shades
  */
#define dark	0
#define dim	1
#define normal	2
#define bright	3
#define pastel  3
#define light	4

/*
  The macros
  */
#define moColor(h,s) ((mono)?foregroundColor:XSolidColor(h,s))
#define moColor_BG(h,s) ((mono)?backgroundColor:XSolidColor(h,s))
