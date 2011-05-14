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
    opus = "Symphony No 9"
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
    subtitle = "the subtitle,"
  %} 
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




melodyMusicUpperA = \relative c'' {

  b4 b c d
  d c b a
  g g a b
  b4. a8 a2

  b4 b c d
  d c b a
  g g a b
  a4. g8 g2


}


melodyMusicLowerA = \relative c' {
  g2 g2
  d2 d2
  g2 g2
  g2 d2

  g2 g2
  d2 d2
  g2 g2
  d2 g2
}

%%%%%%%%%%%%%%%%%%%%%
% Set up the staff
   
     \version "2.10.10"
     upper = \relative c'' {
        \clef treble
        \key g \major
        \time 4/4
     
        \melodyMusicUpperA
     }
     
     lower = \relative c {
        \clef bass
        \key g \major
        \time 4/4

        \melodyMusicLowerA
     
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
