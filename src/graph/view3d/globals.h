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

extern int              scrn;
extern Display          *dsply;
extern XFontStruct      *globalFont, *buttonFont, *headerFont, 
                        *titleFont, *graphFont,
                        *lightingFont, *volumeFont, *quitFont, *saveFont,
                        *serverFont;
extern XrmDatabase      rDB;

extern char             scaleReport[5], deltaXReport[5], deltaYReport[5];
extern unsigned long    *spadColors;
extern int              followMouse, gotToggle, viewportKeyNum;
extern Window           rtWindow, quitWindow, saveWindow;
extern GC               globalGC1, globalGC2, anotherGC, globGC, trashGC,
                        componentGC, opaqueGC, renderGC,
                        controlMessageGC, lightingGC, volumeGC, quitGC, 
                        saveGC, graphGC;
extern XSizeHints       viewSizeHints;
extern HashTable        *table;
extern Colormap         colorMap;
extern int              Socket, ack;

extern GC               processGC;
extern viewPoints       *viewport;
extern controlPanelStruct *control;
extern XGCValues        gcVals;
extern char             *s;
extern int              someInt;

extern unsigned long    foregroundColor, backgroundColor;
extern int              mono, totalColors,
                        totalHues, totalSolidShades, totalSolid,
                        totalDitheredAndSolids,totalShades;

extern int              drawMore;
extern int              spadMode,spadDraw;
extern int              spadSignalReceived;
extern int              inNextEvent;
extern jmp_buf          jumpFlag;

extern char             errorStr[80];

extern view3DStruct     viewData;

extern Window           lightingWindow, lightingAxes;
extern float            lightPointer[3], tempLightPointer[3];
extern float            lightIntensity, tempLightIntensity;
extern float            backLightIntensity;

extern char             filename[256];


  /** stuff from draw viewport routines */
extern float            sinTheta, sinPhi, cosTheta, cosPhi,
                        viewScale, viewScaleX, viewScaleY, viewScaleZ, reScale;
extern int              xCenter, yCenter;
extern XWindowAttributes vwInfo;
extern XWindowAttributes graphWindowAttrib;
extern XPoint           *quadMesh;
extern int              *xPts;
extern XImage           *imageX;

extern float            eyePoint[3];

extern XPoint           polygonMesh[20];

extern int              saveFlag;
extern int              firstTime, noTrans, startup;
extern int              redrawView;
extern int              finishedList, redoSmooth, redoColor, zoomed,
                        rotated, switchedPerspective, changedEyeDistance,
                        translated, changedIntensity, movingLight, writeImage,
                        pixelSetFlag, redoDither, multiColorFlag;
extern poly             *quickList;

extern int              viewAloned;

extern viewTriple       corners[8], clipCorners[8];
extern boxSideStruct    box[6], clipBox[6];
extern int              axesXY[3][4];
extern float            axesZ[3][2];

extern viewTriple       *splitPoints;
extern int              resMax;

extern Window           volumeWindow;
extern int              frustrumVertex;
extern int              doingPanel;
extern int              doingVolume;
extern int              screenX;
extern float            xClipMinN, xClipMaxN,
                        yClipMinN, yClipMaxN,
                        zClipMinN, zClipMaxN,
                        clipValue;

extern float            pzMin, pzMax;

extern int              maxGreyShade;

extern char             propertyName[];
extern char             propertyBuffer[];

extern float            transform[4][4], transform1[4][4],
                        R[4][4], R1[4][4], S[4][4], T[4][4], I[4][4];
extern float            vxmax,vxmin,vymax,vymin,
                        wxmax,wxmin,wymax,wymin,wzmax,wzmin;

extern polyList         *scanList[ARRAY_HEIGHT];
extern int              scanline, polyCount;
extern float            xleft, xright;

extern colorBuffer      cBuffer[ARRAY_WIDTH];
extern float            zBuffer[ARRAY_WIDTH];

extern float            zC, dzdx;
extern float            intersectColor[2], dcolor;
extern triple           dpt, dnorm;

extern float            Cspec, Cdiff, Camb, coeff, lum, saturation;

extern Pixmap           viewmap;
extern int              viewmap_valid;
extern int              smoothHue;
extern int              smoothConst;
extern int              smoothError;

extern char             *PSfilename;  /* output file name in user directory */
extern char             *envAXIOM;    /* used for ps file paths */

extern Atom wm_delete_window;

