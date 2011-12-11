
BUILDDIR=/tmp/bewest-lily

all: scoreblocks.pdf choirscale.pdf

midi: %.midi

ps: %.ps

pdf: %.pdf

%.pdf: %.ly
	lilypond --pdf $<

%.ps: %.ly
	lilypond -dbackend=eps $<

web/%.png: %.ly
	mkdir -p ${BUILDDIR}-$*
	lilypond -dbackend=eps            \
					 -dno-gs-load-fonts        \
					 -dinclude-eps-fonts        \
					 -ddelete-intermediate-files \
					 -o ${BUILDDIR}-$*/$*  --png $<
	mv ${BUILDDIR}-$*/$*.png $@
	rm -rf ${BUILDDIR}-$*


%.png: %.ly

%.midi: %.ly

lilypond:
	lilypond prelude.ly

.PHONY: prelude


#####
# EOF
