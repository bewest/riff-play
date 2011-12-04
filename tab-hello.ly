%{ From http://www.artsulger.com/2007/03/lilypond-notation-program.html
   Getting tab right?
%}
\version "2.10.0"
\header {
  title      = "Lute Prelude BWV999 - fragment"
  arranger   = "Art Sulger"
  instrument = "12-string Guitar"
}

\paper{
  #(set-paper-size "letter")
  #(define bottom-margin (* 2 cm))
}

uI = {
  \voiceOne
    r16^\markup {IX} <e'\3> <gis'\2> <d''\1_2>
    gis'\2 e'\3 gis'\2 e'\3 b\4
    e'\3 gis\5 e'\3
  | r16 <ees'\3_2> <a'\2_4> <c''\1_1> a'\2 ees'\3
    a'\2 ees'\3 a\4 ees'\3 f\5 ees'\3
  | r16 d'\3-2 f'\2-1 b'\1-3 f'\2 d'\3 f'\2
    d'\3 gis\4 d'\3 e\5 d'\3
  | r16 c'\3-2 fis'\2-4 a'\1-1 fis'\2 c'\3
    fis'\2 c'\3 fis\4-1 c'\3 dis\5-3 c'\3
  | r16 b\3-3 d'\2-1 a'\1-4 d'\2 b\3 d'\2
    b\3 f\4-1 b\3 d\5-0 b\3
  | r16 b\3-3 d'\2-2 gis'\1-4 d'\2
    b\3 d'\2 b\3 e\4-1 b\3 b,\5-1 b\3
  |
}

dI = {
  \voiceTwo
    e,4 \tag #'bassnotes { r4 <b\4_1>8   <gis\5-3>8 }
        \tag #'restnotes { s4  s8         s8        }
  | e,4 \tag #'bassnotes { r4 <a\4_1>8   <f\5_3>8   }
        \tag #'restnotes { s4  s8         s8        }
  | e,4 \tag #'bassnotes { r4 <gis\4_1>8 <e\5_3>    }
        \tag #'restnotes { s4  s8         s8        }
  | e,4 \tag #'bassnotes { r4 <fis\4>8   <dis\5>    }
        \tag #'restnotes { s4  s8         s8        }
  | e,4 \tag #'bassnotes { r4  f8 d8\5 }
        \tag #'restnotes { s4  s8 s8   }
  | e,4 \tag #'bassnotes { r4  e8 b,8  }
        \tag #'restnotes { s4  s8 s8   }
  |
}

Notation = \simultaneous { %% Combine both parts for notation
  \time 3/4
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
  \time 3/4
  \override TabStaff.Stem #'transparent = ##t %% Makes stems transparent
  \override TabStaff.Beam #'transparent = ##t %% Makes beams transparent
  << \context TabVoice=TabVoiceA \uI >>
  << \context TabVoice=TabVoiceB \keepWithTag #'restnotes \dI >>
}


\score {
  \context StaffGroup {
    \simultaneous {
      << \context Staff=FullNotation \Notation >>
      << \context TabStaff=FullTab \Tablature >>
    }
  }
} 

%%%%%
% EOF
