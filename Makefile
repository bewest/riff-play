
all: scoreblocks.pdf choirscale.pdf

midi: %.midi

ps: %.ps

pdf: %.pdf

%.pdf: %.ly
	lilypond --pdf $<

%.ps: %.ly

%.png: %.ly

%.midi: %.ly

lilypond:
	lilypond prelude.ly

.PHONY: prelude


#####
# EOF