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


#ifndef _X10_H_
#define _X10_H_

/* Used in XDraw and XDrawFilled */

typedef struct _Vertex {
  short x, y;
  unsigned short flags;
} Vertex;

/* The meanings of the flag bits.  If the bit is 1 the predicate is true */

#define VertexRelative		0x0001		/* else absolute */
#define VertexDontDraw		0x0002		/* else draw */
#define VertexCurved		0x0004		/* else straight */
#define VertexStartClosed	0x0008		/* else not */
#define VertexEndClosed		0x0010		/* else not */

/*
  The VertexDrawLastPoint option has not been implemented in XDraw and 
  XDrawFilled so it shouldn't be defined. 
*/

/*
  XAssoc - Associations used in the XAssocTable data structure.  The 
  associations are used as circular queue entries in the association table
  which is contains an array of circular queues (buckets).
  */
typedef struct _XAssoc {
  struct _XAssoc *next;	/* Next object in this bucket. */
  struct _XAssoc *prev;	/* Previous obejct in this bucket. */
  Display *display;	/* Display which ownes the id. */
  XID x_id;		/* X Window System id. */
  char *data;		/* Pointer to untyped memory. */
} XAssoc;

/* 
   XAssocTable - X Window System id to data structure pointer association
   table.  An XAssocTable is a hash table whose buckets are circular
   queues of XAssoc's.  The XAssocTable is constructed from an array of
   XAssoc's which are the circular queue headers (bucket headers).  
   An XAssocTable consists an XAssoc pointer that points to the first
   bucket in the bucket array and an integer that indicates the number
   of buckets in the array.
 */
typedef struct _XAssocTable {
  XAssoc **buckets;		/* Pointer to first bucket in bucket array.*/
  int size;			/* Table size (number of buckets). */
} XAssocTable;


#endif /* _X10_H_ */

