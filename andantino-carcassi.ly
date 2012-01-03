
% 
%%postscript tuning name 
\include "predefined-ukulele-fretboards.ly"
\version "2.14.2"
%%------------------------------------------------

\header {
  title = "Andantino"
  composer = "Matteo Carcassi"
  arranger = "Hal Kinnaman"

}

\makeStringTuning #'tenor-ukulele-tuning <g, c e a> 

theme =  { \relative c' 
    <a, f'>8 c
    <a, f>8 c
    <g, e>8 c
    <g, e>8 c
  | <bes, g>8 c
    <bes, g>8 c
    <a, f>8 c
    <a, f>8 c
  | <a, a> c
    <a, a> c
    <g, bes> c
    <g, bes> c
  | <bes, e>8 c
    <bes, e>8 c
    <a, f>4 \laissezVibrer s
}
notes = {
\repeat volta 2 {
    \theme }

}

uI = {

}

dI = { 
  \notes
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
  % I'm using a tenor/concert grand ukulele with the
  % first string dropped an octave down.  This gives me a
  % usable bass as the first string.
  \set TabStaff.stringTunings = #tenor-ukulele-tuning
  \override TabStaff.Beam #'transparent = ##f %% Makes beams transparent
  \tabFullNotation
  << \context TabVoice=TabVoiceA \uI >>
  << \context TabVoice=TabVoiceB \keepWithTag #'restnotes \dI >>
}


\score {
  \context StaffGroup {
    \simultaneous {
      << \context Staff=FullNotation \Notation >>
      << \new TabStaff=FullTab \Tablature >>
    }
  }
} 

%%------------------------------------------------

%%%%%
% EOF
