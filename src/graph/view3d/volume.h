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

/*#define rightLeft*/
#define leftRight
#define newStuff

   /******* Define's ********/
      /*** box colors ***/
#define boxInline	monoColor(140)
#define boxOutline	monoColor(140)
#define clipBoxInline	monoColor(148) 
#define clipBoxOutline	monoColor(148) 

#define lightB		205
#define lightPotA	(control->buttonQueue[lightMoveZ].buttonY - 15)
#define lightPotB	(control->buttonQueue[lightMoveZ].buttonY +\
			 control->buttonQueue[lightMoveZ].buttonHeight + 7)
#define lightTransL	(control->buttonQueue[lightTranslucent].buttonX - 20)

#define volumeTitleColor monoColor(77)
#define volumeTitleA	190
#define volumeTitleB	217

#define volumeMASK	ExposureMask

#define frustrumColor	monoColor(147)
#define frustrumX	30
#define frustrumY	20
#define frustrumLength	100
#define frustrumMidY	70    /* frustrumY + frustrumLength/2 */
#define frustrumBotY	(frustrumY + frustrumLength)
#ifdef  newStuff
#define frustrumMin	(control->buttonQueue[frustrumBut].xHalf)
#define frustrumMax	(frustrumMin + \
			 (control->buttonQueue[frustrumBut].xHalf))
#endif

#define hitherColor	monoColor(68)   /* clipping plane */
#define hitherMinX	(frustrumX + 5)
#define hitherMaxX	(frustrumMin - 30)
#define hitherWinX	(hitherMinX - 5)
#define hitherWinY	(frustrumBotY + 10)
#define hitherWidth	(hitherMaxX - hitherMinX + 10)
#define hitherHeight	20
#define hitherBarY	(hitherWinY + 10)   /* hitherWinY + hitherHeight/2 */

#ifdef  newStuff
#define eyeColor	monoColor(131)
#define eyeMinX		frustrumMin
#define eyeMaxX		frustrumMax
#define eyeWinX		(eyeMinX - 5)
#define eyeWinY		hitherWinY
#define eyeWidth	(eyeMaxX - eyeMinX + 10)
#define eyeHeight	hitherHeight
#define eyeBarY		hitherBarY
#endif

#define volumeButtonColor	monoColor(157)

#define frustrumWindowX		30
#define frustrumWindowY		28
#define frustrumWindowWidth	(controlWidth - 60)
#define frustrumWindowHeight	(frustrumBotY + 40)

/**** clip volume ****/
#define lengthFace	80
#ifdef  rightLeft
#define backFaceX	190
#endif
#ifdef  leftRight
#define backFaceX	33
#endif
#define backFaceY	255
#define deltaFace	25
#define zLength		35.355 /* sqrt(2*deltaFace^2) */
#ifdef  rightLeft
#define frontFaceX	(backFaceX - deltaFace)
#endif
#ifdef  leftRight
#define frontFaceX	(backFaceX + deltaFace)
#endif
#define frontFaceY	(backFaceY + deltaFace)


#define majorAxis	lengthFace    /* size of the potentiometers */
#define minorAxis	20
#define midAxis		40

#define clipXButX	backFaceX
#define clipXButY	(backFaceY-30)

#ifdef  rightLeft
#define clipYButX	(frontFaceX - minorAxis - 10)
#endif
#ifdef  leftRight
#define clipYButX	(frontFaceX + lengthFace + 10)
#endif
#define clipYButY	frontFaceY

#ifdef  rightLeft
#define clipZButX	clipYButX  /* align left side */
#endif
#ifdef  leftRight
#define clipZButX	(clipYButX+minorAxis-midAxis) /* align right side */
#endif
#define clipZButY	clipXButY

#define zFactor		0.6   /* ratio of clipZBut box & actual input area */
#define minDistXY	0.1   /* min distance between normalized clip faces */
#define minDistZ	0.06  /* 2/3 of XY */


#ifdef  rightLeft
#define AA		(clipZButX + midAxis)
#define BB		clipZButY
#define CC		backFaceX
#define DD		backFaceY
#define EE		frontFaceX
#define FF		frontFaceY
#define clipZButTopEndX ((AA+BB+CC-DD)/2)
#define clipZButTopEndY ((AA+BB-CC+DD)/2)
#define clipZButBotEndX ((AA+BB+EE-FF)/2)
#define clipZButBotEndY ((AA+BB-EE+FF)/2)
#endif

#ifdef  leftRight
#define AA		clipZButX
#define BB		clipZButY
#define CC		(backFaceX + majorAxis)
#define DD		backFaceY
#define EE		(frontFaceX + majorAxis)
#define FF		frontFaceY

#define clipZButTopEndX ((AA-BB+CC+DD)/2)
#define clipZButTopEndY ((BB-AA+CC+DD)/2)
#define clipZButBotEndX ((AA-BB+EE+FF)/2)
#define clipZButBotEndY ((BB-AA+EE+FF)/2)
#endif
