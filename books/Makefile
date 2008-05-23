AXIOM=/usr/local/axiom/mnt/fedora5
TANGLE=${AXIOM}/bin/lib/notangle
WEAVE=${AXIOM}/bin/lib/noweave 
LATEX=latex
MAKEINDEX=makeindex
DVIPS=dvips -Ppdf
PS2PDF=ps2pdf
RM=rm -f

all: 

remake: bookvol0 bookvol1 bookvol2 bookvol3 bookvol4 bookvol5 bookvol6 \
        bookvol7 bookvol8 bookvol9 bookvol10 bookvol11 bookvol12 toc

toc:
	@echo "\\documentclass{book}" >toc.tex
	@echo "\\begin{document}" >>toc.tex
	@echo "{\\bf Volume ~ 0}: Axiom {\\sl Jenks and Sutor}\\\\" >toc.toc
	@echo "{\\bf Volume ~ 1}: Axiom {\\sl Tutorial}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 2}: Axiom {\\sl Users Guide}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 3}: Axiom {\\sl Programmers Guide}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 4}: Axiom {\\sl Developers Guide}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 5}: Axiom {\\sl Interpreter}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 6}: Axiom {\\sl Command}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 7}: Axiom {\\sl Hyperdoc}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 8}: Axiom {\\sl Graphics}\\\\" >>toc.toc
	@echo "{\\bf Volume ~ 9}: Axiom {\\sl Compiler}\\\\" >>toc.toc
	@echo "{\\bf Volume 10}: Axiom {\\sl Algebra}\\\\" >>toc.toc
	@echo "{\\bf Volume 11}: Axiom {\\sl Browser}\\\\" >>toc.toc
	@echo "{\\bf Volume 12}: Axiom {\\sl Crystal}\\\\" >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\tableofcontents" >>toc.tex
	@echo "\\end{document}" >>toc.tex
	@echo "\\section*{Volume 0: Axiom Jenks and Sutor}" >>toc.toc
	@cat bookvol0.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 1: Axiom Tutorial}" >>toc.toc
	@cat bookvol1.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 2: Axiom Users Guide}" >>toc.toc
	@cat bookvol2.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 3: Axiom Programmers Guide}" >>toc.toc
	@cat bookvol3.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 4: Axiom Developers Guide}" >>toc.toc
	@cat bookvol4.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 5: Axiom Interpreter}" >>toc.toc
	@cat bookvol5.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 6: Axiom Command}" >>toc.toc
	@cat bookvol6.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 7: Axiom Hyperdoc}" >>toc.toc
	@cat bookvol7.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 8: Axiom Graphics}" >>toc.toc
	@cat bookvol8.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 9: Axiom Compiler}" >>toc.toc
	@cat bookvol9.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 10: Axiom Algebra}" >>toc.toc
	@cat bookvol10.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 11: Axiom Browser}" >>toc.toc
	@cat bookvol11.toc >>toc.toc
	@echo "\\newpage" >>toc.toc
	@echo "\\section*{Volume 12: Axiom Crystal}" >>toc.toc
	@cat bookvol12.toc >>toc.toc
	@${LATEX} toc.tex
	@${DVIPS} toc.dvi 2>/dev/null
	@${PS2PDF} toc.ps >/dev/null
	@${RM} -f *.toc toc.aux toc.dvi toc.log toc.ps toc.tex toc.toc

bookvol0: 
	@${LATEX} bookvol0.pamphlet
	@${LATEX} bookvol0.pamphlet >/dev/null
	@${DVIPS} bookvol0.dvi 2>/dev/null
	@${PS2PDF} bookvol0.ps >/dev/null
	@${RM} bookvol0.aux bookvol0.dvi bookvol0.log bookvol0.ps \
               bookvol0.idx bookvol0.tex

bookvol1:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol1.pamphlet >bookvol1.tex)
	@${LATEX} bookvol1.tex
	@${LATEX} bookvol1.tex >/dev/null
	@${DVIPS} bookvol1.dvi 2>/dev/null
	@${PS2PDF} bookvol1.ps >/dev/null
	@${RM} bookvol1.aux bookvol1.dvi bookvol1.log bookvol1.ps \
               bookvol1.idx bookvol1.tex

bookvol2:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol2.pamphlet >bookvol2.tex)
	@${LATEX} bookvol2.tex
	@${LATEX} bookvol2.tex >/dev/null
	@${DVIPS} bookvol2.dvi 2>/dev/null
	@${PS2PDF} bookvol2.ps >/dev/null
	@${RM} bookvol2.aux bookvol2.dvi bookvol2.log bookvol2.ps \
               bookvol2.idx bookvol2.tex

bookvol3:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol3.pamphlet >bookvol3.tex)
	@${LATEX} bookvol3.tex
	@${LATEX} bookvol3.tex >/dev/null
	@${DVIPS} bookvol3.dvi 2>/dev/null
	@${PS2PDF} bookvol3.ps >/dev/null
	@${RM} bookvol3.aux bookvol3.dvi bookvol3.log bookvol3.ps \
               bookvol3.idx bookvol3.tex

bookvol4:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol4.pamphlet >bookvol4.tex)
	@${LATEX} bookvol4.tex
	@${LATEX} bookvol4.tex >/dev/null
	@${DVIPS} bookvol4.dvi 2>/dev/null
	@${PS2PDF} bookvol4.ps >/dev/null
	@${RM} bookvol4.aux bookvol4.dvi bookvol4.log bookvol4.ps \
               bookvol4.idx bookvol4.tex

bookvol5:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol5.pamphlet >bookvol5.tex)
	@${LATEX} bookvol5.tex
	@${LATEX} bookvol5.tex >/dev/null
	@${DVIPS} bookvol5.dvi 2>/dev/null
	@${PS2PDF} bookvol5.ps >/dev/null
	@${RM} bookvol5.aux bookvol5.dvi bookvol5.log bookvol5.ps \
               bookvol5.idx bookvol5.tex

bookvol6:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol6.pamphlet >bookvol6.tex)
	@${LATEX} bookvol6.tex
	@${LATEX} bookvol6.tex >/dev/null
	@${DVIPS} bookvol6.dvi 2>/dev/null
	@${PS2PDF} bookvol6.ps >/dev/null
	@${RM} bookvol6.aux bookvol6.dvi bookvol6.log bookvol6.ps \
               bookvol6.idx bookvol6.tex

bookvol7:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol7.pamphlet >bookvol7.tex)
	@${LATEX} bookvol7.tex
	@${LATEX} bookvol7.tex >/dev/null
	@${DVIPS} bookvol7.dvi 2>/dev/null
	@${PS2PDF} bookvol7.ps >/dev/null
	@${RM} bookvol7.aux bookvol7.dvi bookvol7.log bookvol7.ps \
               bookvol7.idx bookvol7.tex

bookvol8:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol8.pamphlet >bookvol8.tex)
	@${LATEX} bookvol8.tex
	@${LATEX} bookvol8.tex >/dev/null
	@${DVIPS} bookvol8.dvi 2>/dev/null
	@${PS2PDF} bookvol8.ps >/dev/null
	@${RM} bookvol8.aux bookvol8.dvi bookvol8.log bookvol8.ps \
               bookvol8.idx bookvol8.tex

bookvol9:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol9.pamphlet >bookvol9.tex)
	@${LATEX} bookvol9.tex
	@${LATEX} bookvol9.tex >/dev/null
	@${DVIPS} bookvol9.dvi 2>/dev/null
	@${PS2PDF} bookvol9.ps >/dev/null
	@${RM} bookvol9.aux bookvol9.dvi bookvol9.log bookvol9.ps \
               bookvol9.idx bookvol9.tex

bookvol10:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol10.pamphlet >bookvol10.tex)
	@${LATEX} bookvol10.tex
	@${LATEX} bookvol10.tex >/dev/null
	@${DVIPS} bookvol10.dvi 2>/dev/null
	@${PS2PDF} bookvol10.ps >/dev/null
	@${RM} bookvol10.aux bookvol10.dvi bookvol10.log bookvol10.ps \
	       bookvol10.idx bookvol10.tex

bookvol11:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol11.pamphlet >bookvol11.tex)
	@${LATEX} bookvol11.tex
	@${LATEX} bookvol11.tex >/dev/null
	@${DVIPS} bookvol11.dvi 2>/dev/null
	@${PS2PDF} bookvol11.ps >/dev/null
	@${RM} bookvol11.aux bookvol11.dvi bookvol11.log bookvol11.ps \
	       bookvol11.idx bookvol11.tex

bookvol12:
	@(export AXIOM=${AXIOM} && \
	  ${WEAVE} -delay bookvol12.pamphlet >bookvol12.tex)
	@${LATEX} bookvol12.tex
	@${LATEX} bookvol12.tex >/dev/null
	@${DVIPS} bookvol12.dvi 2>/dev/null
	@${PS2PDF} bookvol12.ps >/dev/null
	@${RM} bookvol12.aux bookvol12.dvi bookvol12.log bookvol12.ps \
	       bookvol12.idx bookvol12.tex


