
% 
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

notes = { \relative c'
  g,4 c e a

  | g,8 a, b, c
    d e f g
  | a

}

<< 
  \new Staff {
    \clef "treble_8"
    \notes
  }

  \new TabStaff {
    %\set stringTunings = #tenor-ukulele
    %\set TabStaff.stringTunings = #bass-tuning
    %\set TabStaff.stringTunings = #ukulele-tenor
    \set TabStaff.stringTunings = #tenor-ukulele-tuning
    %\displayInstrumentDefaultTunings #"tenor-ukulele"
    %\set TabStaff.displayInstrumentDefaultTunings #"tenor-ukulele"
    % \set stringTunings = #ukulele
    \contextStringTuning #'custom-tuning <g, c e a>
    \tabFullNotation
    \notes
    
    %{
          \displayInstrumentDefaultTunings "tenor-ukulele"
    \set TabStaff.instrumentName = \markup { " " \AECG }
    \set TabStaff.shortInstrumentName = \markup \AECG
    %}
  }
>>
%%------------------------------------------------

%%%%%
% EOF
