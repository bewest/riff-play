%%%%%%%%%%%%%%%%%%%%%%%
%
% Try to stub out a decent score for ukulele.
% Problems:
%   * fretboard diagrams wonky; why is behavior not copied from baby_beluga.ly?
%   * why do the fretboard diagrams appear below the score?
%

\version "2.14.2"

\include "predefined-ukulele-fretboards.ly"

%#(define-public tenor-ukulele-tuning '(9 4 0 -5))
%\makeStringTuning #'tenor-ukulele-tuning '(9 4 0 -5)) %<g, c, e>
\makeStringTuning #'custom-tuning <g, c e a> 

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
  <<
  \new StaffGroup { <<
    \context ChordNames {
      \set chordChanges = ##t
      \myChords
    }

    \new FretBoards {
      \set FretBoards.stringTunings = #ukulele-tuning
      %\contextStringTuning #'tenor-ukulele-tuning <g, c e a>
      \myChords
    }


  >> }

  \new Staff {
    \clef "treble_8"
    \notes
  }

  \new TabStaff {
    % I'm using a tenor/concert grand ukulele with the
    % first string dropped an octave down.  This gives me a
    % usable bass as the first string.
    \tabFullNotation
    \set TabStaff.stringTunings = #custom-tuning
    \notes
  }

  >>

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
