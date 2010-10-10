%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Playing around with a simple riff.
% Exercises in lilypond, and choir music.
%
%
\version "2.12.3"


global = { \key cis \minor \time 4/4 \tempo 4 = 77 }
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
  r2 r4
  cis
  %\times 2/3 {a8 b cis }
  %a4 \times 2/3 { b cis d } 
  a4
  \times 2/3 { b4 cis dis }
  e8
  <e gis>8 ~
  <e gis>4
  <d fis >2
}
sopranoWords = \uselessWords


% Altos
altoMusic = \relative a' {
  \clef "treble"
  \partial 4
  r4\mf
  r2
  <fis cis'>4
  \times 2/3 {a8 gis fis }
  cis4
  \times 2/3 { <e a>4 <a cis> <cis e> ~}
  <cis e>8
  <b e>8 ~
  <b e>2
  <fis d'>2
  %%<d' fis, a>2

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

motivicPhraseA = \relative c' {
  \motifi
  \motifii
  \motifiii
  \motifiv

}

harmonicStructureMusic = \relative c' {
  \clef "G_8"
  \partial 4
  r4\mp 
  \motivicPhraseA
  \motivicPhraseA

}


% Tenors
tenorMusic = \relative c' {
  \clef "G_8"
  \partial 4
  r4\mp 
  %%\motivicPhraseA
  %%\motivicPhraseA
}
tenorWords = \sopranoWords

% Basses
bassMusic = \relative c {
  \clef "bass"
  \partial 4
  r4\mf 
  %a8 gis fis4
  %cis2
  %\times 2/3 { cis8 d e } fis4
  %\times 2/3 { fis <gis e>4 <a b,>4 }
  %\times 2/3 { e2 d4 }
   %cis4. cis8 e4
  %d,2
  %\times 3/2 { a4 gis fis }  fis2
  r4
  r4
  r2
  a4
  %cis 
  e'
  %gis
  b2
  cis4
  d2
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

harmonicStructureStaff = \new ChoirStaff <<
  \new Staff = "harmonicStructure" <<
    \set Staff.instrumentName = "outline"
    \new Voice = "harmonicStructure" { \global \harmonicStructureMusic }
  >>

>>

% Put it on a score.
\score {
  <<
    \allChoirStaff
    \harmonicStructureStaff

  >>
  
  \layout { }
  \midi   { }
}

%%%%%
% EOF
