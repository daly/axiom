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

static char *event_name[] = {
  "",                        /* 0  */
  "",                        /* 1  */
  "KeyPress",                /* 2  */
  "KeyRelease",              /* 3  */
  "ButtonPress",             /* 4  */
  "ButtonRelease",           /* 5  */
  "MotionNotify",            /* 6  */
  "EnterNotify",             /* 7  */
  "LeaveNotify",             /* 8  */
  "FocusIn",                 /* 9  */
  "FocusOut",                /* 10 */
  "KeymapNotify",            /* 11 */
  "Expose",                  /* 12 */
  "GraphicsExpose",          /* 13 */
  "NoExpose",                /* 14 */
  "VisibilityNotify",        /* 15 */
  "CreateNotify",            /* 16 */
  "DestroyNotify",           /* 17 */
  "UnmapNotify",             /* 18 */
  "MapNotify",               /* 19 */
  "MapRequest",              /* 20 */
  "ReparentNotify",          /* 21 */
  "ConfigureNotify",         /* 22 */
  "ConfigureRequest",        /* 23 */
  "GravityNotify",           /* 24 */
  "ResizeRequest",           /* 25 */
  "CirculateNotify",         /* 26 */
  "CirculateRequest",        /* 27 */
  "PropertyNotify",          /* 28 */
  "SelectionClear",          /* 29 */
  "SelectionRequest",        /* 30 */
  "SelectionNotify",         /* 31 */
  "ColormapNotify",          /* 32 */
  "ClientMessage",           /* 33 */
  "MappingNotify"            /* 34 */
  };
