VERSION="Axiom (January 2008)"
SPD=$(shell pwd)
SYS=$(notdir $(AXIOM))
SPAD=${SPD}/mnt/${SYS}
LSP=${SPD}/lsp
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
GCLVERSION=gcl-2.6.8pre
#GCLVERSION=gcl-2.6.8pre2
AWK=gawk
GCLDIR=${LSP}/${GCLVERSION}
SRC=${SPD}/src
INT=${SPD}/int
OBJ=${SPD}/obj
MNT=${SPD}/mnt
ZIPS=${SPD}/zips
TMP=${OBJ}/tmp
SPADBIN=${MNT}/${SYS}/bin
INC=${SPD}/src/include
CCLBASE=${OBJ}/${SYS}/ccl/ccllisp
DESTDIR=/usr/local/axiom
COMMAND=${DESTDIR}/mnt/${SYS}/bin/axiom
DOCUMENT=${SPADBIN}/document
TANGLE=${SPADBIN}/lib/notangle
WEAVE=${SPADBIN}/lib/noweave
NOISE="-o ${TMP}/trace"
PATCH=patch

PART=	cprogs
SUBPART= everything


ENV= SPAD=${SPAD} SYS=${SYS} SPD=${SPD} LSP=${LSP} GCLDIR=${GCLDIR} \
     SRC=${SRC} INT=${INT} OBJ=${OBJ} MNT=${MNT} ZIPS=${ZIPS} TMP=${TMP} \
     SPADBIN=${SPADBIN} INC=${INC} CCLBASE=${CCLBASE} PART=${PART} \
     SUBPART=${SUBPART} NOISE=${NOISE} GCLVERSION=${GCLVERSION} \
     TANGLE=${TANGLE} VERSION=${VERSION} PATCH=${PATCH} DOCUMENT=${DOCUMENT} \
     WEAVE=${WEAVE}

all: noweb ${MNT}/${SYS}/bin/document
	@ echo 1 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 2 Environment ${ENV}
	@ ${TANGLE} -t8 -RMakefile.${SYS} Makefile.pamphlet >Makefile.${SYS}
	@ ${DOCUMENT} Makefile
	@ mkdir -p ${MNT}/${SYS}/doc/src
	@ cp Makefile.dvi ${MNT}/${SYS}/doc/src/root.Makefile.dvi
	@ ${ENV} $(MAKE) -f Makefile.${SYS} 
	@echo 3 finished system build on `date` | tee >lastBuildDate

start: noweb ${MNT}/${SYS}/bin/document

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
	@cat ${SRC}/etc/axiom >>${COMMAND}
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
