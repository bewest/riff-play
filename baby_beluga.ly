% transcribed by Matt Corks
% http://theorem.ca/~mvcorks/sheet_music/

\version "2.14.2"
\header {
    source = ""
    style = ""
    copyright = ""
    lastupdated = ""
    title = "Baby Beluga"
    poet = "Raffi and D. Pike"
    composer = "Raffi"
    tagline = ""
}

%\include "predefined-ukulele-fretboards.ly"

%\storePredefinedDiagram \chordmode {c:dim7}
%                        #ukulele-tuning 
%                        #"5-3;3-2;2-1;o;"
\storePredefinedDiagram #default-fret-table
                        \chordmode { c:dim7 }
                        #ukulele-tuning
                        #"5-3;3-2;2-1;o;"
% #(offset-fret 2 (chord-shape 'bes ukulele-tuning))


myChords = \chordmode {
  f1:7 |
  r |
  bes2 aes |
  cis2:dim bes:7 |
  ees1 |
  r1 |
  r2 r4 aes |
  bes1:7 |
  r1 |
  r1 |
  r4 aes cis:dim bes:7 |
  ees1 |
  aes |
  r |
  ees |
  r |
  f:7 |
  r |
  bes2:7 aes |
  cis2:dim bes:7 |
  cis2:dim bes:7 |
  cis2:dim bes:7 |
  bes1:7 |
  r4 aes cis:dim bes:7 |
  ees1 |
  bes4:7 aes cis:dim bes:7 |
  ees1 |
}

myChordsTransposed = \chordmode { 
  e1:7 |
  r |
  a2 g |
  c2:dim7 a:7 |
  d1 |
  r1 |
  r2 r4 g |
  a1:7 |
  r1 |
  r1 |
  r4 g c:dim7 a:7 |
  d1 |
  g |
  r |
  d |
  r |
  e:7 |
  r |
  a2:7 g |
  c2:dim7 a:7 |
  c2:dim7 a:7 |
  c2:dim7 a:7 |
  a1:7 |
  r4 g c:dim7 a:7 |
  d1 |
  a4:7 g c:dim7 a:7 |
  d1 |
}

<<
  \new ChordNames {
    %\transpose c b { \myChords }
    \myChordsTransposed
  }

  \new FretBoards {
    \set stringTunings = #ukulele-tuning
    %\transpose c b { \myChords }
    \myChordsTransposed
  }

  \relative c''
  \new Staff {
    \transpose c b {
      \key ees\major

      r1 |
      r1 |
      r2 r2 |
      r2 r2 |

      % verse 1, 2, segno
      \repeat volta 3 {
        g4^\markup{\musicglyph #"scripts.segno"} g8. f16 ees8. bes16 ees8. f16 |
        g4 g ees2 |
        g4 g bes aes8. aes16 |
        g4 f f2 |
        aes8 aes4 f8 d4 bes,8. bes,16^\markup{\musicglyph #"scripts.coda"} |
        aes4. f8 d4 bes8. bes16 |
        bes8. bes16 aes4 g4 f8. f16 |
        ees2 r |

        c'2 aes4 ees |
        c'2 aes4 c |
        bes2 g4 bes |
        bes2 g |
        f8. g16 a8. f16 g2 |
        f8. g16 a8. f16 g4 f |
        bes2 aes |
      }
      \alternative {
        { g2 f | }
        { g2 f | }
        { g2^ \markup "DS al Coda" f | }
      }

      \break
      aes4.^\markup{\musicglyph #"scripts.coda"} f8 d4 bes'8. bes16 |
      bes8. bes16 aes4 g f8. f16 |
      ees4 r r8 g aes8. aes16 |
      bes8. bes16 aes4 g f8. f16 |
      ees2 r |

    }
  }

  \addlyrics {
    \set stanza = "1. "
    Ba- by be- lu- ga in the deep blue sea,
    Swim so wild and you swim so free.
    Heav- en a- bove and the sea be- low,
    And a lit- le white whale on the go.
    Ba- by be- lu- ga, oh, ba- by be- lu- ga,
    Is the wa- ter warm? Is your ma- ma home with you so hap- py?
    hear you.
    wak- ing.
    sea be- low And a lit- tle white whale on the go.
    You're just a lit- tle white whale on the go.
  }
  \addlyrics {
    \set stanza = "2. "
    Way do- wn yon- der where the dol- phins play,
    Where you dive and ____ splash all day.
    Wa- ves roll in and the waves roll out!
    See the wat- er squirt-in' outta your ____ spout.
    Ba- by be- lu- ga, oh, ba- by be- lu- ga,
    Sing your lit- tle song, sing for all your friend. We like to 
  }
  \addlyrics {
    \set stanza = "3. "
    When ____ it's da- rk, you'- re home and fed,
    Curl up snug in your wat- er bed.
    Moon is shin- ing and the stars are out,
    Go- od ni- ght, little whale, go- od night.
    Ba- by be- lu- ga, oh, ba- by be- lu- ga,
    With to- morr- ow's sun, an- oth- er day's begun, You'll soon be
  }
>>

\layout {
  \context { \Score \remove "Bar_number_engraver" }
  papersize = "letter"
  indent = 0\mm
}
%\midi {}
