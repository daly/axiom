VERSION:="Axiom (March 2012)"

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
SRCDIRS:="interpdir sharedir algebradir etcdir clefdir docdir \
          graphdir smandir hyperdir browserdir inputdir"

SYS:=$(notdir $(AXIOM))
DAASE:=${SRC}/share

SPADBIN:=${MNT}/${SYS}/bin
DOCUMENT:=${SPADBIN}/document

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

##### noweb
TANGLE:=${SPADBIN}/lib/notangle
WEAVE:=${SPADBIN}/lib/noweave

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
GCLDIR:=${LSP}/${GCLVERSION}
GCLOPTS="--enable-vssize=65536*2 --disable-locbfd --disable-dynsysbfd \
         --disable-statsysbfd --enable-maxpage=512*1024 --disable-xgcl \
         --disable-tkconfig --enable-custreloc --disable-tkconfig"
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
TESTSET:=alltests
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

all: noweb ${MNT}/${SYS}/bin/document
	@ echo p1 making a parallel system build
	@ echo 1 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 2 Environment ${ENV}
	@ ${TANGLE} -t8 -RMakefile.${SYS} Makefile.pamphlet >Makefile.${SYS}
	@ ${DOCUMENT} Makefile
	@ mkdir -p ${MNT}/${SYS}/doc/src
	@ cp Makefile.dvi ${MNT}/${SYS}/doc/src/root.Makefile.dvi
	@ if [ "${RUNTYPE}" = "parallel" ] ; then \
	   ( echo p4 starting parallel make of input files ; \
	     ${ENV} ${MAKE} input ${NOISE} & ) ; \
	  else \
           if [ "${BUILD}" = "full" ] ; then \
	   ( echo s4 starting serial make of input files ; \
	     mkdir -p ${MNT}/${SYS}/doc/src/input ; \
             cd ${MNT}/${SYS}/doc/src/input ; \
	     cp ${SRC}/scripts/tex/axiom.sty . ; \
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
              ${DOCUMENT} Makefile ; \
              cp Makefile.dvi ${MNT}/${SYS}/doc/src/books.Makefile.dvi ; \
	      ${ENV} ${MAKE} & ) ; \
	  else \
	    ( echo s2 starting serial make of books ; \
	      echo s3 ${SPD}/books/Makefile from \
                   ${SPD}/books/Makefile.pamphlet ; \
	      cd ${SPD}/books ; \
              ${DOCUMENT} Makefile ; \
              cp Makefile.dvi ${MNT}/${SYS}/doc/src/books.Makefile.dvi ; \
              if [ "${BUILD}" = "full" ] ; then \
	      ${ENV} ${MAKE} ; fi ) ; \
	  fi
	@ if [ "${RUNTYPE}" = "parallel" ] ; then \
	    ( echo p5 starting parallel make of xhtml documents ; \
	      ${ENV} ${MAKE} xhtml ${NOISE} & ) ; \
	  else \
	    ( echo s5 starting serial make of xhtml documents ; \
	      mkdir -p ${MNT}/${SYS}/doc/hypertex/bitmaps ; \
	      cd ${MNT}/${SYS}/doc/hypertex ; \
	      ${TANGLE} -t8 ${SPD}/books/bookvol11.pamphlet >Makefile11 ; \
              if [ "${BUILD}" = "full" ] ; then \
	      ${ENV} ${MAKE} -j 10 -f Makefile11 ; fi ; \
	      rm -f Makefile11 ) ; \
	  fi
	@ echo p7 starting make of src
	@ ${ENV} $(MAKE) -f Makefile.${SYS} 
	@ echo 3 finished system build on `date` | tee >lastBuildDate

input:
	@ echo p9 making input documents
	@ if [ "${BUILD}" = "full" ] ; then \
	  ( mkdir -p ${MNT}/${SYS}/doc/src/input ; \
            cd ${MNT}/${SYS}/doc/src/input ; \
	    cp ${SRC}/scripts/tex/axiom.sty . ; \
	    for i in `ls ${SRC}/input/*.input.pamphlet` ; \
              do latex $$i ; \
              done ; \
	     rm -f *~ ; \
	     rm -f *.pamphlet~ ; \
	     rm -f *.log ; \
	     rm -f *.tex ; \
	     rm -f *.toc ; \
	     rm -f *.aux ) ; fi

xhtml:
	@ echo p10 making xhtml pages
	@mkdir -p ${MNT}/${SYS}/doc/hypertex/bitmaps
	@ if [ "${BUILD}" = "full" ] ; then \
	 (cd ${MNT}/${SYS}/doc/hypertex ; \
	  ${TANGLE} -t8 ${SPD}/books/bookvol11.pamphlet >Makefile11 ; \
	  ${ENV} ${MAKE} -j 10 -f Makefile11 ; \
	  rm -f Makefile11 ) ; fi

book:
	@ echo 79 building the book as ${MNT}/${SYS}/doc/book.dvi 
	@ mkdir -p ${TMP}
	@ mkdir -p ${MNT}/${SYS}/doc
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

noweb:
	@echo 13 making noweb
	@mkdir -p ${OBJ}/noweb
	@mkdir -p ${TMP}
	@mkdir -p ${MNT}/${SYS}/bin/lib
	@( cd ${OBJ}/noweb ; \
	tar -zxf ${ZIPS}/noweb-2.10a.tgz ; \
	cd ${OBJ}/noweb/src/c ; \
	${PATCH} <${ZIPS}/noweb.modules.c.patch ; \
	cd ${OBJ}/noweb/src ; \
	${PATCH} <${ZIPS}/noweb.src.Makefile.patch ; \
	./awkname ${AWK} ; \
	${ENV} ${MAKE} BIN=${MNT}/${SYS}/bin/lib LIB=${MNT}/${SYS}/bin/lib \
                MAN=${MNT}/${SYS}/bin/man \
                TEXINPUTS=${MNT}/${SYS}/bin/tex all install >${TMP}/trace )
	@echo The file marks the fact that noweb has been made > noweb

nowebclean:
	@echo 14 cleaning ${OBJ}/noweb
	@rm -rf ${OBJ}/noweb
	@rm -f noweb

${MNT}/${SYS}/bin/document:
	@echo 0 ${ENV}
	@echo 10 copying ${SRC}/scripts to ${MNT}/${SYS}/bin
	@cp -pr ${SRC}/scripts/* ${MNT}/${SYS}/bin

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


document: noweb ${MNT}/${SYS}/bin/document
	@ echo 4 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 5 Environment ${ENV}
	@ ${TANGLE} -t8 -RMakefile.${SYS} Makefile.pamphlet >Makefile.${SYS}
	@ ${ENV} $(MAKE) -f Makefile.${SYS} document
	@echo 6 finished system build on `date` | tee >lastBuildDate

clean: 
	@ echo 7 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 8 Environment ${ENV}
	@ rm -f src/algebra/book*pamphlet
	@ rm -f lsp/Makefile.dvi
	@ rm -f lsp/Makefile
	@ rm -rf lsp/gcl*
	@ rm -f noweb 
	@ rm -f trace
	@ rm -f Makefile.${SYS}
	@ rm -f Makefile.dvi
	@ rm -rf int
	@ rm -rf obj
	@ rm -rf mnt
	@ for i in `find . -name "*~"` ; do rm -f $$i ; done
	@ for i in `find src -name "Makefile"` ; do rm -f $$i ; done
	@ for i in `find src -name "Makefile.dvi"` ; do rm -f $$i ; done
	@ rm -f lastBuildDate

