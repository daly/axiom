VERSION:="Axiom (August 2014)"

##### special paths
SPD:=$(shell pwd)
SRC:=${SPD}/src
LSP:=${SPD}/lsp
INT:=${SPD}/int
OBJ:=${SPD}/obj
MNT:=${SPD}/mnt
TMP:=${OBJ}/tmp
ZIPS:=${SPD}/zips
BOOKS:=${SPD}/books
SPAD:=${SPD}/mnt/${SYS}
SRCDIRS:="interpdir sharedir algebradir etcdir docdir \
          graphdir smandir hyperdir browserdir inputdir"

SYS:=$(notdir $(AXIOM))
DAASE:=${SRC}/share

SPADBIN:=${MNT}/${SYS}/bin
DOCUMENT:=${SPADBIN}/document
EXTRACT:=${BOOKS}/extract

##### installation paths
DESTDIR:=/usr/local/axiom
COMMAND:=${DESTDIR}/mnt/${SYS}/bin/axiom

##### functions we need
AWK:=gawk 
PATCH:=patch
RANLIB:=ranlib
TAR:=tar
TOUCH:=touch
UNCOMPRESS:=gunzip

##### lisp related variables
BYE:=bye
#GCLVERSION=gcl-2.4.1
#GCLVERSION=gcl-2.5
#GCLVERSION=gcl-2.5.2
#GCLVERSION=gcl-2.6.1
#GCLVERSION=gcl-2.6.2
#GCLVERSION=gcl-2.6.2a
#GCLVERSION=gcl-2.6.3
#GCLVERSION=gcl-2.6.5
#GCLVERSION=gcl-2.6.6
#GCLVERSION=gcl-2.6.7pre
#GCLVERSION=gcl-2.6.7
#GCLVERSION=gcl-2.6.8pre
#GCLVERSION=gcl-2.6.8pre2
#GCLVERSION=gcl-2.6.8pre3 
#GCLVERSION=gcl-2.6.8pre4
GCLVERSION=gcl-2.6.8pre7
#GCLVERSION=gcl-cygwin
GCLDIR:=${LSP}/${GCLVERSION}
GCLOPTS="--enable-vssize=65536*2 --disable-xgcl --disable-tkconfig" 
LISP:=lsp

##### C related variables
INC:=${SPD}/src/include
PLF:=LINUXplatform
CCF:="-O2 -fno-strength-reduce -Wall -D_GNU_SOURCE -D${PLF} -I/usr/X11/include"
CC:=gcc
XLIB:=/usr/X11R6/lib
#LDF:=" -L/usr/X11R6/lib -L/usr/lib ${XLIB}/libXpm.a -lXpm"
LDF:=" -L/usr/X11R6/lib -L/usr/lib  -lXpm"
O:=o

##### command line control
NOISE:="-o ${TMP}/trace"
PART:=	cprogs
SUBPART:= everything
RUNTYPE:=serial
# can be richtests, catstests, regresstests (see src/input/Makefile)
# alltests, notests
TESTSET:=notests
BUILD:=full


ENV:= \
AWK=${AWK} \
BOOKS=${BOOKS} \
BUILD=${BUILD} \
BYE=${BYE} \
CC=${CC} \
CCF=${CCF} \
COMMAND=${COMMAND} \
DAASE=${DAASE} \
DESTDIR=${DESTDIR} \
DOCUMENT=${DOCUMENT} \
EXTRACT=${EXTRACT} \
GCLDIR=${GCLDIR} \
GCLOPTS=${GCLOPTS} \
GCLVERSION=${GCLVERSION} \
INC=${INC} \
INT=${INT} \
LDF=${LDF} \
LISP=${LISP} \
LSP=${LSP} \
MNT=${MNT} \
NOISE=${NOISE} \
O=${O} \
OBJ=${OBJ} \
PART=${PART} \
PATCH=${PATCH} \
PLF=${PLF} \
RANLIB=${RANLIB} \
RUNTYPE=${RUNTYPE} \
SPAD=${SPAD} \
SPADBIN=${SPADBIN} \
SPD=${SPD} \
SRC=${SRC} \
SRCDIRS=${SRCDIRS} \
SUBPART=${SUBPART} \
SYS=${SYS} \
TANGLE=${TANGLE} \
TAR=${TAR} \
TESTSET=${TESTSET} \
TMP=${TMP} \
TOUCH=${TOUCH} \
UNCOMPRESS=${UNCOMPRESS} \
VERSION=${VERSION} \
WEAVE=${WEAVE} \
XLIB=${XLIB} \
ZIPS=${ZIPS} 

all: rootdirs tanglec libspad
	@ echo 1 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 2 Environment ${ENV}
	@ ${BOOKS}/tanglec Makefile.pamphlet "Makefile.${SYS}" >Makefile.${SYS}
	@ cp books/dvipdfm.def ${MNT}/${SYS}/doc
	@ cp books/changepage.sty ${MNT}/${SYS}/doc
	@ ${EXTRACT} Makefile.pamphlet
	@ cp Makefile.pdf ${MNT}/${SYS}/doc/src/root.Makefile.pdf
	@ if [ "${RUNTYPE}" = "parallel" ] ; then \
	   ( echo p4 starting parallel make of input files ; \
	     ${ENV} ${MAKE} input ${NOISE} & ) ; \
	  else \
           if [ "${BUILD}" = "full" ] ; then \
	   ( echo s4 starting serial make of input files ; \
             cd ${MNT}/${SYS}/doc/src/input ; \
	     cp ${BOOKS}/axiom.sty . ; \
	     for i in `ls ${SRC}/input/*.input.pamphlet` ; do \
	      if [ .${NOISE} = . ] ; \
	      then \
               latex $$i ; \
	      else \
	       ( echo p4a making $$i ; \
	         latex $$i >${TMP}/trace ) ; \
	      fi ; \
             done ; \
	     rm -f *~ ; \
	     rm -f *.pamphlet~ ; \
	     rm -f *.log ; \
	     rm -f *.tex ; \
	     rm -f *.toc ; \
	     rm -f *.aux ) ; fi ; \
	  fi
	@ if [ "${RUNTYPE}" = "parallel" ] ; then \
	    ( echo s2 starting parallel make of books ; \
	      echo s3 ${SPD}/books/Makefile from \
                   ${SPD}/books/Makefile.pamphlet ; \
	      cd ${SPD}/books ; \
              ${EXTRACT} Makefile ; \
              cp Makefile.pdf ${MNT}/${SYS}/doc/src/books.Makefile.pdf ; \
	      ${ENV} ${MAKE} & ) ; \
	  else \
	    ( echo s2 starting serial make of books ; \
	      echo s3 ${SPD}/books/Makefile from \
                   ${SPD}/books/Makefile.pamphlet ; \
	      cd ${SPD}/books ; \
              ${EXTRACT} Makefile ; \
              cp Makefile.pdf ${MNT}/${SYS}/doc/src/books.Makefile.pdf ; \
              if [ "${BUILD}" = "full" ] ; then \
	      ${ENV} ${MAKE} ; fi ) ; \
	  fi
	@ echo p7 starting make of src
	@ ${ENV} $(MAKE) -f Makefile.${SYS} 
	@ echo 3 finished system build on `date` | tee >lastBuildDate

libspad: 
	@ echo 11a making libspad
	@ ( cd ${OBJ}/${SYS}/lib ; \
	    ${BOOKS}/tanglec ${BOOKS}/bookvol8.pamphlet Makefile >Makefile ; \
            ${ENV} ${MAKE} libspad.a )

rootdirs:
	@ echo 11 checking directory structure
	 mkdir -p ${TMP}
	 mkdir -p ${INT}/algebra
	 mkdir -p ${INT}/hyper
	 mkdir -p ${INT}/input
	 mkdir -p ${INT}/interp
	 mkdir -p ${INT}/sman
	 mkdir -p ${OBJ}/${SYS}/bin
	 mkdir -p ${OBJ}/${SYS}/etc
	 mkdir -p ${OBJ}/${SYS}/graph
	 mkdir -p ${OBJ}/${SYS}/hyper/pages
	 mkdir -p ${OBJ}/${SYS}/interp
	 mkdir -p ${OBJ}/${SYS}/lib
	 mkdir -p ${OBJ}/${SYS}/sman
	 mkdir -p ${MNT}/doc
	 mkdir -p ${MNT}/${SYS}/algebra
	 mkdir -p ${MNT}/${SYS}/autoload
	 mkdir -p ${MNT}/${SYS}/bin
	 mkdir -p ${MNT}/${SYS}/doc/axbook
	 mkdir -p ${MNT}/${SYS}/doc/bitmaps
	 mkdir -p ${MNT}/${SYS}/doc/hypertex/bitmaps
	 mkdir -p ${MNT}/${SYS}/doc/msgs
	 mkdir -p ${MNT}/${SYS}/doc/ps
	 mkdir -p ${MNT}/${SYS}/doc/spadhelp
	 mkdir -p ${MNT}/${SYS}/doc/src/input
	 mkdir -p ${MNT}/${SYS}/graph/parabola.view
	 mkdir -p ${MNT}/${SYS}/input
	 mkdir -p ${MNT}/${SYS}/lib/graph
	 mkdir -p ${MNT}/${SYS}/lib/scripts

input:
	@ echo p9 making input documents
	@ if [ "${BUILD}" = "full" ] ; then \
	  ( cd ${MNT}/${SYS}/doc/src/input ; \
	    cp ${BOOKS}/axiom.sty . ; \
	    for i in `ls ${SRC}/input/*.input.pamphlet` ; \
              do latex $$i ; \
              done ; \
	     rm -f *~ ; \
	     rm -f *.pamphlet~ ; \
	     rm -f *.log ; \
	     rm -f *.tex ; \
	     rm -f *.toc ; \
	     rm -f *.aux ) ; fi

book:
	@ echo 79 building the book as ${MNT}/${SYS}/doc/book.dvi 
	@ cp ${SRC}/doc/book.pamphlet ${MNT}/${SYS}/doc
	@ cp -pr ${SRC}/doc/ps ${MNT}/${SYS}/doc
	@ (cd ${MNT}/${SYS}/doc ; \
          if [ .${NOISE} = . ] ; then \
	    ( latex book.pamphlet --interaction nonstopmode ; \
	      latex book.pamphlet --interaction nonstopmode ) ; \
	   else \
	    ( latex book.pamphlet --interaction nonstopmode >${TMP}/trace ; \
	      latex book.pamphlet --interaction nonstopmode >${TMP}/trace ) ; \
	  fi ; \
	  rm book.pamphlet ; \
	  rm book.toc ; \
	  rm book.log ; \
	  rm book.aux )
	@ echo 80 The book is at ${MNT}/${SYS}/doc/book.dvi 


tanglec: books/tanglec.c
	@echo t01 making tanglec from books/tanglec.c
	@( cd books ; gcc -o tanglec tanglec.c )

install:
	@echo 78 installing Axiom in ${DESTDIR}
	@mkdir -p ${DESTDIR}
	@cp -pr ${MNT} ${DESTDIR}
	@echo '#!/bin/sh -' >${COMMAND}
	@echo AXIOM=${DESTDIR}/mnt/${SYS} >>${COMMAND}
	@echo export AXIOM >>${COMMAND}
	@echo PATH='$${AXIOM}/bin':'$${PATH}' >>${COMMAND}
	@echo export PATH >>${COMMAND}
	@cat ${INT}/sman/axiom >>${COMMAND}
	@chmod +x ${COMMAND}
	@echo 79 Axiom installation finished.
	@echo
	@echo Please add $(shell dirname ${COMMAND}) to your PATH variable
	@echo Start Axiom with the command $(shell basename ${COMMAND})
	@echo 


document: 
	@ echo 4 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 5 Environment ${ENV}
	@ ${BOOKS}/tanglec Makefile.pamphlet "Makefile.${SYS}" >Makefile.${SYS}
	@ ${ENV} $(MAKE) -f Makefile.${SYS} document
	@echo 6 finished system build on `date` | tee >lastBuildDate

clean: 
	@ echo 7 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 8 Environment ${ENV}
	@ rm -f axiom.sty
	@ rm -f Makefile.pdf
	@ rm -f Makefile.dvi
	@ rm -f Makefile.${SYS}
	@ rm -f books/Makefile
	@ rm -f books/Makefile.dvi
	@ rm -f books/Makefile.pdf
	@ rm -f lsp/axiom.sty
	@ rm -f lsp/Makefile lsp/Makefile.dvi lsp/Makefile.pdf
	@ rm -rf lsp/gcl*
	@ rm -f src/axiom.sty
	@ rm -f src/Makefile
	@ rm -f src/Makefile.dvi
	@ rm -f src/Makefile.pdf
	@ rm -f src/algebra/book*pamphlet
	@ rm -f src/algebra/*.spad
	@ rm -f src/etc/axiom.sty
	@ rm -f src/etc/Makefile src/etc/Makefile.dvi src/etc/Makefile.pdf
	@ rm -f src/interp/book*pamphlet
	@ rm -f src/input/axiom.sty
	@ rm -f src/share/axiom.sty
	@ rm -f src/share/Makefile src/share/Makefile.dvi 
	@ rm -f src/share/Makefile.pdf
	@ rm -rf int
	@ rm -rf obj
	@ rm -rf mnt
	@ for i in `find . -name "*~"` ; do rm -f $$i ; done
	@ rm -f lastBuildDate
	@ rm -f books/tanglec
	@ rm -f src/input/Makefile src/input/Makefile.dvi
	@ rm -f src/input/Makefile.pdf 
	@ rm -f src/interp/Makefile src/interp/Makefile.dvi
	@ rm -f src/interp/Makefile.pdf 
	@ rm -f src/share/Makefile src/share/Makefile.dvi
	@ rm -f src/share/Makefile.pdf 

