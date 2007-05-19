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

extern int           scrn;
extern Display       *dsply;
extern XFontStruct   *globalFont,*buttonFont,*headerFont,*titleFont,
                     *graphFont,*unitFont,*serverFont;
extern XrmDatabase      rDB;

extern char          scaleXReport[5],scaleYReport[5],deltaXReport[5],
                     deltaYReport[5];
extern unsigned long *spadColors;
extern int           followMouse,viewportKeyNum;
extern Window        rtWindow,viewman;
extern GC            globalGC1,globalGC2,anotherGC,globGC,trashGC,
                     controlMessageGC,graphGC,unitGC;
extern HashTable     *table;
extern Colormap      colorMap;
extern int           Socket,ack;

extern  GC  processGC;
extern  viewPoints *viewport;
extern  controlPanelStruct *control;
extern  XGCValues gcVals;
extern  char *s;
extern  int someInt;

extern unsigned long foregroundColor, backgroundColor; 

extern int drawMore;
extern int spadMode,spadDraw;
extern jmp_buf jumpFlag;

extern graphStruct graphArray[maxGraphs]; 
extern graphStateStruct graphStateArray[maxGraphs],
                        graphStateBackupArray[maxGraphs];
extern xPointStruct xPointsArray[maxGraphs];

extern int pointsON, connectON, splineON, axesON, unitsON, zoomXON, zoomYON;
extern int transXON, transYON;

extern char errorStr[80];

extern int currentGraph; 
extern int queriedGraph;
extern int picking,dropping;

extern char filename[256];

extern char *xDefault;

extern int viewAloned;

extern int mono, totalColors,
           totalHues, totalSolidShades, totalDitheredAndSolids,totalShades;

extern float aspectR;

extern Atom wm_delete_window;
