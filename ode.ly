%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
\version "2.12.3"


today = #(strftime "%Y-%m-%d" (localtime (current-time)))
now   = #(strftime "%Y-%m-%d %H:%I %C" (localtime (current-time)))
global = { \key cis \minor \time 4/4 \tempo 4 = 77 }
uselessWords = \lyricmode {
  mee -- nah nee -- nah
}

% pieceFooter = #( ly:export ( string-append "Compiled " today))

\header {
    %% piece = ""
    %% opus = "theme from Symphony No 9"
    dedication = "for Raluca"
    title = "Ode to Joy"

  %% 
  %% 
  %%
    %{ 
    title = \markup
            \center-column {
               ""
               "Title second line, longer" }
  %} 
    subtitle = "theme from Symphony no 9"
    tagline = #(string-append "Engraved by bewest via LilyPond version " (lilypond-version) " on " now)
    %% poet = "Poet"
    composer =  \markup { "Beethoven" \small "(1770-1827)" }
    %% texttranslator = "Text Translator"
    %% meter = \markup { \teeny "m" \tiny "e" \normalsize "t" \large "e" \huge "r" }
    arranger = \markup { \small "arr. Ben West" }
    %% instrument = \markup { \small "piano" }

}
descantPi = \relative c {

  %\times 2/3 { fis8 a cis } fis4 cis
  %dis2 ~ dis4 e2 r4
}




melodyAi = \relative c'' {
  | b4 b c d
  | d c b a
  | g g a b
  | b4. a8 a2
}
melodyAii = \relative c'' {
  | b4 b c d
  | d c b a
  | g g a b
  | a4. g8 g2
}
accompAi = \relative c' {
  | g2 g2
  | d2 d2
  | g2 g2
  | g2 d2
}
accompAii = \relative c' {
  | g2 g2
  | d2 d2
  | g2 g2
  | d2 g2
}
melodyMusicUpperA = \relative c'' {

  \melodyAi
  \melodyAii

}

melodyMusicUpperB = \relative c'' {

  a4 a b g
  a4 b8 c b4 g
  a4 b8 c b4 a
  g  a  d,2

}

melodyMusicLowerA = \relative c' {
  \accompAi
  \accompAii
}

melodyMusicLowerB = \relative c' {
  d,2 d
  d2 d
  d2 g
  c,2 d
}

%%%%%%%%%%%%%%%%%%%%%
% Set up the staff
     upper = \relative c'' {
        \clef treble
        \tempo 4 = 92
        \key g \major
        \time 4/4
     
        \melodyMusicUpperA
        \melodyMusicUpperB
        \melodyAii
     }
     
     lower = \relative c {
        \clef bass
        \key g \major
        \time 4/4

        \melodyMusicLowerA
        \melodyMusicLowerB
        \accompAii
     }
     
 \score {

  \new PianoStaff <<
     \set PianoStaff.instrumentName = "Piano  "
     \new Staff = "upper" \upper
     \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

%%%%%
% EOF
