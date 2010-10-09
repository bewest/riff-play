%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Playing around with a simple riff.
% Exercises in lilypond, and choir music.
%
%
\version "2.12.3"


global = { \key cis \minor \time 3/2 \tempo 4 = 80 }
uselessWords = \lyricmode {
  mee -- nah nee -- nah
}

descantPi = \relative c {

  %\times 2/3 { fis8 a cis } fis4 cis

  %dis2 ~ dis4 e2 r4
}



% Soprano
sopranoMusic = \relative c'' {
  \clef "treble"
  %r2 r2 \descantPi
  \partial 4
  r4 
  r2 r2
  a2 cis e  <e gis b>2
  <d fis a >
}
sopranoWords = \uselessWords


% Altos
altoMusic = \relative a' {
  \clef "treble"
}
altoWords = \uselessWords

mpati = \relative c' {
  a8 fis cis' fis,
}

mpatii = \relative c' {
  a8 fis d' fis,
}

motifi = \relative c' {
  \times 3/8 {
  \mpati
  \mpati
  }
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
  \times 6/8 { a8 e cis' e, a e cis' e, }
  \times 6/8 { a8 e cis' e, a e cis' a }
}
motifiv = \relative c' {
  \times 6/8 { gis8 e b' e, gis e b' e, }
  \times 6/8 { gis8 e b' e, gis e b' gis }
}

motivicPhraseA = \relative c' {
  \motifi
  \motifii
  \motifiii
  \motifiv

}

% Tenors
tenorMusic = \relative c' {
  \clef "G_8"
  \partial 4
  r4\mp 
  \motivicPhraseA
  \motivicPhraseA
}
tenorWords = \sopranoWords

% Basses
bassMusic = \relative c' {
  \clef "bass"
  \times 3/2 { a4 gis fis }  fis2
  %r2.
  %\motivicPhraseA
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
