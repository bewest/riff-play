%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
\version "2.12.3"


now   = #(strftime "%Y-%m-%d %H:%I %C" (localtime (current-time)))
global = { \key cis \minor \time 4/4 \tempo 4 = 77 }
uselessWords = \lyricmode {
  mee -- nah nee -- nah
}

\header {
    %% piece = ""
    title = "Free Fallin'"

  %% 
  %% 
  %%
    %{ 
    title = \markup
            \center-column {
               ""
               "Title second line, longer" }
  %} 
    %% subtitle = "theme from Symphony no 9"
    tagline = #(string-append "Engraved by bewest via LilyPond version " (lilypond-version) " on " now)
    %% poet = "Poet"
    composer =  \markup { "Tom Petty" }
    %% texttranslator = "Text Translator"
    %% meter = \markup { \teeny "m" \tiny "e" \normalsize "t" \large "e" \huge "r" }
    arranger = \markup { \small "arr. Ben West" }
    %% instrument = \markup { \small "piano" }

}

melodyAi = \relative c'' {
  | <a f c>4.
    <bes f c>4. ~
    <bes f c>4
  | <bes c, f>8 <a c, f>4
    <g f bes,>4. ~
    <g f bes,>4
}

accompAi = \relative c {
  | f8 f c16 f
    bes,4. bes16 c d bes
  | f'8 f4 c4. ~ c4
}

%%%%%%%%%%%%%%%%%%%%%
% Set up the staff
     upper = \relative c'' {
        \clef treble
        \tempo 4 = 92
        \key f \major
        \time 4/4
     
        \melodyAi
     }
     
     lower = \relative c, {
        \clef bass
        \key f \major
        \time 4/4
        
        \accompAi
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
