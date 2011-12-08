%%%%%%%%%%%%%%%%%%%%%%%
%
% Try to stub out a decent score for ukulele.
% Problems:
%   * fretboard diagrams wonky; why is behavior not copied from baby_beluga.ly?
%   * why do the fretboard diagrams appear below the score?
%

\version "2.14.2"

\include "predefined-ukulele-fretboards.ly"


notes = { \relative c'
  g,4 c e a

  | g,8 a, b, c
    d e f g
  | a

}

myChords = \chordmode {
  a1
  c
}

\score {
  \new StaffGroup { <<
    \new ChordNames {
      \set chordChanges = ##t
      \myChords
    }

    \new FretBoards {
      \set stringTunings = #ukulele-tuning
      \myChords
    }

    \new Staff {
      \clef "treble_8"
      \notes
    }

    \new TabStaff {
      % I'm using a tenor/concert grand ukulele with the
      % high dropped an octave down.  This gives me a
      % usable bass as the first string.
      \contextStringTuning #'custom-tuning <g, c e a>
      \notes
    }

  >> }

  \layout { 
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
  \midi { }
}

%%%%%
% EOF
