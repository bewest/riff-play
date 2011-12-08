
% 
%%postscript tuning name 
\include "predefined-ukulele-fretboards.ly"
\version "2.14.2"
%%------------------------------------------------

\makeStringTuning #'tenor-ukulele-tuning <g, c e a> 

notes = { \relative c'
  g,4 c e a

  | g,8 a, b, c
    d e f g
  | a

}

uI = {

}

dI = { 
  \notes
}

myChords = \chordmode { 
  a1
  c
}

Chords = \simultaneous {
  \set FretBoards.stringTunings = #ukulele-tuning
  %\contextStringTuning #'tenor-ukulele-tuning <g, c e a>
 << \myChords >>
}

Notation = \simultaneous { %% Combine both parts for notation
  \time 4/4
  \clef "G_8"
  \key d \minor
  \override Score.MetronomeMark #'padding = #6.0 \tempo 4=95
  % \override StringNumber #'self-alignment-Y = #-1
  \override Score.StringNumber #'padding = #3.5
  \set fingeringOrientations = #'(up left down)
  << \context Voice=VoiceA \uI >>
  << \context Voice=VoiceB \keepWithTag #'bassnotes \dI >>
}

Tablature = \simultaneous { %% Combine both parts for Tablature
  \time 4/4
  << \context TabVoice=TabVoiceA \uI >>
  << \context TabVoice=TabVoiceB \keepWithTag #'restnotes \dI >>
}


\score {
  <<
    \new StaffGroup { <<
      \context ChordNames=FullChords \Chords
      \new FretBoards=FretChords \Chords
    >> }

    \new Staff=FullNotation {
      \Notation
    }

    \new TabStaff=FullTab {
      % I'm using a tenor/concert grand ukulele with the
      % first string dropped an octave down.  This gives me a
      % usable bass as the first string.
      \tabFullNotation
      \set TabStaff.stringTunings = #tenor-ukulele-tuning
      \Tablature
    }
  >>
} 

%%------------------------------------------------

%%%%%
% EOF
