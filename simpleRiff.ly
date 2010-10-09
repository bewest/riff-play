%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Playing around with a simple riff.
% Exercises in lilypond, and choir music.
%
%
\version "2.12.3"


global = { \key cis \minor \time 2/2 \tempo 4 = 95 }
uselessWords = \lyricmode {
  mee -- nah nee -- nah
}



% Soprano
sopranoMusic = \relative c'' {
  %% d4 e fis g a b cis d e fis g
  \clef "treble"
}
sopranoWords = \uselessWords


% Altos
altoMusic = \relative a' {
  \clef "treble"
  %%\transpose c ees { d4 e fis g a b cis d e fis g }
}
altoWords = \uselessWords

mpati = \relative c' {
  a8 fis cis' fis,
}

mpatii = \relative c' {
  a8 fis d' fis,
}

motifi = \relative c' {
  \mpati
  \mpati
  \mpati
  \mpati
}

motifii =  \relative c' {
  \mpatii
  \mpatii
  \mpatii
  \mpatii
}

motifiii = \relative c' {
  a8 e cis' e, a e cis' e,
  a8 e cis' e, a e cis' a
}
motifiv = \relative c' {
  gis8 e b' e, gis e b' e,
  gis8 e b' e, gis e b' gis
}

\motivicPhraseA = \relative c' {
  \motifi
  \motifii
  \motifiii
  \motifiv

}

% Tenors
tenorMusic = \relative c' {
  \clef "G_8"
  %%| fis g a b cis d e fis
  %%| g a b cis d e fis2
  \motivicPhraseA
  \motivicPhraseA
}
tenorWords = \sopranoWords

% Basses
bassMusic = \relative c' {
  \clef "bass"
  %%| d'4 cis b a g fis e d
  %%| cis b a g f e d2
}
bassWords = \sopranoWords




%%%%%%%%%%%%%%%%%%%%%
% Set up the staff
allChoirStaff = \new ChoirStaff <<
  \new Staff = "sopranos" <<
    \set Staff.instrumentName = "Soprano"
    \new Voice = "sopranos" { \global \sopranoMusic }
  >>
  \new Lyrics \lyricsto "sopranos" { \sopranoWords }
  \new Staff = "altos" <<
    \set Staff.instrumentName = "Alto"
    \new Voice = "altos" { \global \altoMusic }
  >>
  \new Lyrics \lyricsto "altos" { \altoWords }
  \new Staff = "tenors" <<
    \set Staff.instrumentName = "Tenor"
    \new Voice = "tenors" { \global \tenorMusic }
  >>
  \new Lyrics \lyricsto "tenors" { \tenorWords }
  \new Staff = "basses" <<
    \set Staff.instrumentName = "Bass"
    \new Voice = "basses" { \global \bassMusic }
  >>
  \new Lyrics \lyricsto "basses" { \bassWords }
>>  % end ChoirStaff


% Put it on a score.
\score {
  <<
    \allChoirStaff
  >>
  
  \layout { }
  \midi   { }
}

%%%%%
% EOF
