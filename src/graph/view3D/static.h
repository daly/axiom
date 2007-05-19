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

 /* This is a description of script character labels for the 
    x, y, and z axes */

static float axes[3][6] = {{-117,0,0,117,0,0},     /* x axis */
			   {0,-117,0,0,117,0},     /* y axis */
			   {0,0,-117,0,0,117}};    /* z axis */

/* text labels are currently used */
static float labels[basicScreen][7] = {
  {105,0,4,106,0,3,labelColor},     /* script x label - 4 segments */
  {106,0,3,112,0,10,labelColor},
  {112,0,10,114,0,9,labelColor},
  {106,0,10,113,0,3,labelColor},
  {0,106,9,0,107,10,labelColor},    /* script y label - 7 segments */
  {0,107,10,0,107,6,labelColor},
  {0,107,6,0,113,5,labelColor},
  {0,113,10,0,113,-3,labelColor},
  {0,113,-3,0,111,-5,labelColor},
  {0,111,-5,0,110,-1,labelColor},
  {0,110,-1,0,114,3,labelColor},
  {0,5,114,0,6,115,labelColor},     /* script z label - 8 segments */
  {0,6,115,0,11,116,labelColor},
  {0,11,116,0,12,113,labelColor},
  {0,12,113,0,10,111,labelColor},
  {0,10,111,0,11,110,labelColor},
  {0,11,110,0,11,103,labelColor},
  {0,11,103,0,9,102,labelColor},
  {0,9,102,0,9,105,labelColor}};  
