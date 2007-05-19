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

/* This file is to be included by all the viewport files */

#define check(code)	checker(code,__LINE__,"")
#define saymem(a,b,c)	saymemWithLine(a,b,c,__LINE__)
#define exitWithAck(ACK,ACKsize,i) \
		check(write(Socket,&(ACK),sizeof(ACKsize)));  exit(i);
#define NIL(type)	((type *)NULL)

#define oldNum 8  /* in the old system, we assumed an eight shade palette */
#define oldOff 2

#define monoColor(x) ((mono)?foregroundColor:XSolidColor((int)x/oldNum,(int)(x%oldNum)/oldOff))
#define monoDither(x,y) ((mono)?foregroundColor:XSolidColor(x,y))
#define notANumber (0.0/0.0)

/* error messages */
#define fontErrMess "       Try getting the font or changing the .Xdefaults entry"

/* opening fonts */

/* getDef(v,s,d,x): 
   v, the character pointer for the default value
   s, the .Xdefaults field
   d, the value in case the field is undefined in .Xdefaults
   x, a string specifying the prefix field (in .Xdefaults)
   */

#define getDef(v,s,d,x) {v=XGetDefault(dsply,x,s); if (v==NIL(char)) v=d;}

/* getFont(daFont,daDefault,whichView):
   assignTo, the font variable that will hold the font (globalFont)
   daFont,   the .Xdefault field name  ("buttonFont")
   daDefault, the default font (string) ("Rom12.500")
   whichView, the .Xdefault prefix name ("view2D")
   this is to be used in the files view2D/main.c and view3D/main.c where the
   appropriate variables are already defined
   */

#define getFont(assignTo,daFont,daDefault,whichView) \
getDef(xDefault,daFont,daDefault,whichView); \
if ((assignTo = XLoadQueryFont(dsply,xDefault)) == NULL) \
if ((assignTo = XLoadQueryFont(dsply,daDefault)) == NULL) { \
if (strcmp(xDefault,daDefault))   /* strcmp returns 0 if equal */ \
if (xDefault[0] == '\0') \
fprintf(stderr, \
"   >>> Font error: No .Xdefault entry for %s.%s and could not get the %s font\n%s\n", \
whichView,daFont,daDefault,fontErrMess); \
else \
fprintf(stderr, \
"   >>> Font error: Could get neither the %s nor the %s font\n%s\n",xDefault, \
daDefault,fontErrMess); \
else \
fprintf(stderr, \
"   >>> Font error: Could not get the %s font.\n%s\n",xDefault,fontErrMess); \
exitWithAck(RootWindow(dsply,scrn),Window,-1); \
} 

