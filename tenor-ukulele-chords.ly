
\version "2.14.2"

\header {
    title = "Tenor ukulele Chord Chart (A-E-C-G Tuning)"
}

myChords = \chordmode { 
  a1
  a:m
  a:7
  a:m7
  a:dim
  a:maj7
  a:6
  a:sus2
  a:sus4
  a:aug
  a:9
  \break
}

myChordSequence = {
                      \myChords
    \transpose a ais  \myChords
    \transpose a bes  \myChords
    \transpose a b    \myChords
    \transpose a c    \myChords
    \transpose a cis  \myChords
    \transpose a des  \myChords
    \transpose a d    \myChords
    \transpose a dis  \myChords
    \transpose a ees  \myChords
    \transpose a e    \myChords
    \transpose a f    \myChords
    \transpose a fis  \myChords
    \transpose a ges  \myChords
    \transpose a g    \myChords
    \transpose a gis  \myChords
    \transpose a aes  \myChords
}

<<
  \new ChordNames {
    \myChordSequence
  }

  \new FretBoards {
    \set stringTunings = #tenor-ukulele-tuning
    \contextStringTuning #'custom-tuning <g, c e a>
    \myChordSequence
  }

  \new Staff {
    \override Staff.TimeSignature #'transparent = ##t
    \myChordSequence
  }
>>

\layout {
  \context { \Score \remove "Bar_number_engraver" }
  papersize = "letter"
  indent = 0\mm
}

%%%%%
% EOF
