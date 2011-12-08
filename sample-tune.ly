
% 
\include "predefined-ukulele-fretboards.ly"
%\include "predefined-tenor-ukulele-fretboards.ly"
%\include "predefined-ukulele-fretboards.ly"
%%postscript tuning name 
\version "2.14.2"
AECG =
\markup {
  \with-dimensions #'(0 . 0.8) #'(0 . 1.0) 
  \postscript #"/Arial-Bold findfont
                1.3 scalefont
                setfont 0 3.6 moveto
                (E) show 0 2.0 moveto
                (B) show 0 0.6 moveto
                (G) show 0 -0.8 moveto
                (E) show
                stroke"
}
%%------------------------------------------------
\makeStringTuning #'custom-tuning <g, c e a> 

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
  %\contextStringTuning #'custom-tuning <g, c e a>
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
  %\contextStringTuning #'custom-tuning <g, c e a>
  \set TabStaff.stringTunings = #custom-tuning
  \tabFullNotation
  << \context TabVoice=TabVoiceA \uI >>
  << \context TabVoice=TabVoiceB \keepWithTag #'restnotes \dI >>
}


\score {
  \context StaffGroup {
    <<
    \simultaneous {
      << \context ChordNames=FullChords \Chords >>
      << \context FretBoards=FretChords \Chords >>
      << \context Staff=FullNotation \Notation >>
    }
    \simultaneous {
      << \context TabStaff=FullTab \Tablature >>
    }
    >>
  }
} 

    %{
<< 
  \new Staff {
    \clef "treble_8"
    \notes
  }

  \new TabStaff {
    %\set stringTunings = #tenor-ukulele
    %\set TabStaff.stringTunings = #bass-tuning
    %\set TabStaff.stringTunings = #ukulele-tenor
    \set TabStaff.stringTunings = #custom-tuning
    %\displayInstrumentDefaultTunings #"tenor-ukulele"
    %\set TabStaff.displayInstrumentDefaultTunings #"tenor-ukulele"
    % \set stringTunings = #ukulele
    \tabFullNotation
    \notes
    
          \displayInstrumentDefaultTunings "ukulele"
    \set TabStaff.instrumentName = \markup { " " \AECG }
    \set TabStaff.shortInstrumentName = \markup \AECG
  }
>>
    %}
%%------------------------------------------------

%%%%%
% EOF
