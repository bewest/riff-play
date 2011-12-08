% predefined-ukulele-fretboards.ly
%
% author: matt corks
% sources: ukulele hall of fame museum website (http://www.ukulele.org/),
% kiwi ukulele website (http://www.kiwiukulele.co.nz/)

% standard A-E-C-G soprano ukulele tuning
#(define-public tenor-ukulele-tuning '(9 4 0 -5))

%%% a chords

\storePredefinedDiagram \chordmode {a}
                        #tenor-ukulele-tuning 
                        #"2-2;1-1;o;o;"

\storePredefinedDiagram \chordmode {a:m}
                        #tenor-ukulele-tuning 
                        #"2-1;o;o;o;"

\storePredefinedDiagram \chordmode {a:7}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;o;"

\storePredefinedDiagram \chordmode {a:m7}
                        #tenor-ukulele-tuning
                        #"o;o;o;o;"

\storePredefinedDiagram \chordmode {a:dim}
                        #tenor-ukulele-tuning
                        #"2-1;3-3;2-2;3-4;"

\storePredefinedDiagram \chordmode {a:maj7}
                        #tenor-ukulele-tuning
                        #"1-1;1-2;o;o;"

\storePredefinedDiagram \chordmode {a:6}
                        #tenor-ukulele-tuning
                        #"2-1;4-3;2-2;4-4;"

\storePredefinedDiagram \chordmode {a:sus2}
                        #tenor-ukulele-tuning
                        #"2-2;4-3;5-4;2-1;"

\storePredefinedDiagram \chordmode {a:sus4}
                        #tenor-ukulele-tuning
                        #"2-1;2-2;o;o;"

\storePredefinedDiagram \chordmode {a:aug}
                        #tenor-ukulele-tuning
                        #"2-2;1-1-(;1-1-);4-4;"

\storePredefinedDiagram \chordmode {a:9}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;2-2;"

%%% ais chords

\storePredefinedDiagram \chordmode {ais}
                        #tenor-ukulele-tuning
                        #"3-3;2-2;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {ais:m}
                        #tenor-ukulele-tuning
                        #"3-3;1-1-(;1-1;1-1-);"

\storePredefinedDiagram \chordmode {ais:7}
                        #tenor-ukulele-tuning
                        #"1-1-(;2-2;1-1;1-1-);"

\storePredefinedDiagram \chordmode {ais:m7}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1;1-1-);"

\storePredefinedDiagram \chordmode {ais:dim}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;1-2;"

\storePredefinedDiagram \chordmode {ais:maj7}
                        #tenor-ukulele-tuning
                        #"2-2-(;2-2-);1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {ais:6}
                        #tenor-ukulele-tuning
                        #"o;2-2;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {ais:sus2}
                        #tenor-ukulele-tuning
                        #"3-3;o;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {ais:sus4}
                        #tenor-ukulele-tuning
                        #"3-3-(;3-3-);1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {ais:aug}
                        #tenor-ukulele-tuning
                        #"3-2;1-1-(;1-1-);5-4;"

\storePredefinedDiagram \chordmode {ais:9}
                        #tenor-ukulele-tuning
                        #"1-1-(;2-2;1-1-);3-3;"

%%% bes chords

\storePredefinedDiagram \chordmode {bes}
                        #tenor-ukulele-tuning
                        #"3-3;2-2;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {bes:m}
                        #tenor-ukulele-tuning
                        #"3-3;1-1-(;1-1;1-1-);"

\storePredefinedDiagram \chordmode {bes:7}
                        #tenor-ukulele-tuning
                        #"1-1-(;2-2;1-1;1-1-);"

\storePredefinedDiagram \chordmode {bes:m7}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1;1-1-);"

\storePredefinedDiagram \chordmode {bes:dim}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;1-2;"

\storePredefinedDiagram \chordmode {bes:maj7}
                        #tenor-ukulele-tuning
                        #"2-2-(;2-2-);1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {bes:6}
                        #tenor-ukulele-tuning
                        #"o;2-2;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {bes:sus2}
                        #tenor-ukulele-tuning
                        #"3-3;o;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {bes:sus4}
                        #tenor-ukulele-tuning
                        #"3-3-(;3-3-);1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {bes:aug}
                        #tenor-ukulele-tuning
                        #"3-2;1-1-(;1-1-);5-4;"

\storePredefinedDiagram \chordmode {bes:9}
                        #tenor-ukulele-tuning
                        #"1-1-(;2-2;1-1-);3-3;"

%%% b chords

\storePredefinedDiagram \chordmode {b}
                        #tenor-ukulele-tuning 
                        #"4-3;3-2;2-1-(;2-1-);"

\storePredefinedDiagram \chordmode {b:m}
                        #tenor-ukulele-tuning 
                        #"4-3;2-1-(;2-1;2-1-);"

\storePredefinedDiagram \chordmode {b:7}
                        #tenor-ukulele-tuning
                        #"2-1-(;3-2;2-1;2-1-);"

\storePredefinedDiagram \chordmode {b:m7}
                        #tenor-ukulele-tuning
                        #"2-1-(;2-1;2-1;2-1-);"

\storePredefinedDiagram \chordmode {b:dim}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;1-2;2-4;"

\storePredefinedDiagram \chordmode {b:maj7}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);2-1-(;2-1-);"

\storePredefinedDiagram \chordmode {b:6}
                        #tenor-ukulele-tuning
                        #"1-1;3-4;2-2;2-3;"

\storePredefinedDiagram \chordmode {b:sus2}
                        #tenor-ukulele-tuning
                        #"5-4;1-1;2-3;2-2;"

\storePredefinedDiagram \chordmode {b:sus4}
                        #tenor-ukulele-tuning
                        #"4-2-(;4-2-);2-1-(;2-1-);"

\storePredefinedDiagram \chordmode {b:aug}
                        #tenor-ukulele-tuning
                        #"o;3-2-(;3-2-);2-1;"

\storePredefinedDiagram \chordmode {b:9}
                        #tenor-ukulele-tuning
                        #"2-2-(;3-3;2-2-);4-4;"

%%% c chords

\storePredefinedDiagram \chordmode {c}
                        #tenor-ukulele-tuning 
                        #"o;o;o;3-3;"

\storePredefinedDiagram \chordmode {c:m}
                        #tenor-ukulele-tuning 
                        #"o;3-1;3-2;3-3;"

\storePredefinedDiagram \chordmode {c:7}
                        #tenor-ukulele-tuning
                        #"o;o;o;1-1;"

\storePredefinedDiagram \chordmode {c:m7}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-1;3-1;3-1-);"

\storePredefinedDiagram \chordmode {c:dim}
                        #tenor-ukulele-tuning
                        #"2-1;3-3;2-2;3-4;"

\storePredefinedDiagram \chordmode {c:maj7}
                        #tenor-ukulele-tuning
                        #"o;o;o;2-1;"

\storePredefinedDiagram \chordmode {c:6}
                        #tenor-ukulele-tuning
                        #"o;o;o;o;"

\storePredefinedDiagram \chordmode {c:sus2}
                        #tenor-ukulele-tuning
                        #"o;2-1;3-2-(;3-2-);"

\storePredefinedDiagram \chordmode {c:sus4}
                        #tenor-ukulele-tuning
                        #"o;o;1-1;3-3;"

\storePredefinedDiagram \chordmode {c:aug}
                        #tenor-ukulele-tuning
                        #"1-1;o;o;3-4;"

\storePredefinedDiagram \chordmode {c:9}
                        #tenor-ukulele-tuning
                        #"o;2-2;o;1-1;"

%%% cis chords

\storePredefinedDiagram \chordmode {cis}
                        #tenor-ukulele-tuning 
                        #"1-1-(;1-1;1-1-);4-4;"

\storePredefinedDiagram \chordmode {cis:m}
                        #tenor-ukulele-tuning 
                        #"1-1;4-2;4-3-(;4-3-);"

\storePredefinedDiagram \chordmode {cis:7}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1-);2-2;"

\storePredefinedDiagram \chordmode {cis:m7}
                        #tenor-ukulele-tuning
                        #"2-2-(;2-2-);1-1;3-3;"

\storePredefinedDiagram \chordmode {cis:dim}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;1-2;"

\storePredefinedDiagram \chordmode {cis:maj7}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1-);3-3;"

\storePredefinedDiagram \chordmode {cis:6}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1;1-1-);"

\storePredefinedDiagram \chordmode {cis:sus2}
                        #tenor-ukulele-tuning
                        #"1-1;3-2;4-3-(;4-3-);"

\storePredefinedDiagram \chordmode {cis:sus4}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1-);2-2;4-4;"

\storePredefinedDiagram \chordmode {cis:aug}
                        #tenor-ukulele-tuning
                        #"2-2;1-1-(;1-1-);4-4;"

\storePredefinedDiagram \chordmode {cis:9}
                        #tenor-ukulele-tuning
                        #"1-1-(;3-3;1-1-);2-2;"

%%% des chords

\storePredefinedDiagram \chordmode {des}
                        #tenor-ukulele-tuning 
                        #"1-1-(;1-1;1-1-);4-4;"

\storePredefinedDiagram \chordmode {des:m}
                        #tenor-ukulele-tuning 
                        #"1-1;4-2;4-3-(;4-3-);"

\storePredefinedDiagram \chordmode {des:7}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1-);2-2;"

\storePredefinedDiagram \chordmode {des:m7}
                        #tenor-ukulele-tuning
                        #"2-2-(;2-2-);1-1;3-3;"

\storePredefinedDiagram \chordmode {des:dim}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;1-2;"

\storePredefinedDiagram \chordmode {des:maj7}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1-);3-3;"

\storePredefinedDiagram \chordmode {des:6}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1;1-1;1-1-);"

\storePredefinedDiagram \chordmode {des:sus2}
                        #tenor-ukulele-tuning
                        #"1-1;3-2;4-3-(;4-3-);"

\storePredefinedDiagram \chordmode {des:sus4}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1-);2-2;4-4;"

\storePredefinedDiagram \chordmode {des:aug}
                        #tenor-ukulele-tuning
                        #"2-2;1-1-(;1-1-);4-4;"

\storePredefinedDiagram \chordmode {des:9}
                        #tenor-ukulele-tuning
                        #"1-1-(;3-3;1-1-);2-2;"

%%% d chords

\storePredefinedDiagram \chordmode {d}
                        #tenor-ukulele-tuning 
                        #"2-1;2-2;2-3;o;"

\storePredefinedDiagram \chordmode {d:m}
                        #tenor-ukulele-tuning 
                        #"2-2-(;2-2-);1-1;o;"

\storePredefinedDiagram \chordmode {d:7}
                        #tenor-ukulele-tuning
                        #"2-1-(;2-1;2-1-);3-2;"

\storePredefinedDiagram \chordmode {d:m7}
                        #tenor-ukulele-tuning
                        #"2-2-(;2-2-);1-1;3-3;"

\storePredefinedDiagram \chordmode {d:dim}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;1-2;2-4;"

\storePredefinedDiagram \chordmode {d:maj7}
                        #tenor-ukulele-tuning
                        #"2-1-(;2-1;2-1-);4-3;"

\storePredefinedDiagram \chordmode {d:6}
                        #tenor-ukulele-tuning
                        #"2-1-(;2-1;2-1;2-1-);"

\storePredefinedDiagram \chordmode {d:sus2}
                        #tenor-ukulele-tuning
                        #"2-1;2-2;o;o;"

\storePredefinedDiagram \chordmode {d:sus4}
                        #tenor-ukulele-tuning
                        #"o;2-1;3-2;o;"

\storePredefinedDiagram \chordmode {d:aug}
                        #tenor-ukulele-tuning
                        #"3-2;2-1-(;2-1-);5-4;"

\storePredefinedDiagram \chordmode {d:9}
                        #tenor-ukulele-tuning
                        #"2-1-(;4-3;2-1-);3-2;"

%%%% dis chords

\storePredefinedDiagram \chordmode {dis}
                        #tenor-ukulele-tuning 
                        #"o;3-2-(;3-2-);1-1;"

\storePredefinedDiagram \chordmode {dis:m}
                        #tenor-ukulele-tuning 
                        #"3-3-(;3-3-);2-2;1-1;"

\storePredefinedDiagram \chordmode {dis:7}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-1;3-1-);4-2;"

\storePredefinedDiagram \chordmode {dis:m7}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);2-1;4-4;"

\storePredefinedDiagram \chordmode {dis:dim}
                        #tenor-ukulele-tuning
                        #"2-1;3-3;2-1;3-4;"

\storePredefinedDiagram \chordmode {dis:maj7}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-2;3-1-);5-2;"

\storePredefinedDiagram \chordmode {dis:6}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-1;3-1;3-1-);"

\storePredefinedDiagram \chordmode {dis:sus2}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {dis:sus4}
                        #tenor-ukulele-tuning
                        #"1-2;3-3;4-4;1-1;"

\storePredefinedDiagram \chordmode {dis:aug}
                        #tenor-ukulele-tuning
                        #"o;3-2-(;3-2-);2-1;"

\storePredefinedDiagram \chordmode {dis:9}
                        #tenor-ukulele-tuning
                        #"o;1-1-(;1-1;1-1-);"

%%%% ees chords

\storePredefinedDiagram \chordmode {ees}
                        #tenor-ukulele-tuning 
                        #"o;3-2-(;3-2-);1-1;"

\storePredefinedDiagram \chordmode {ees:m}
                        #tenor-ukulele-tuning 
                        #"3-3-(;3-3-);2-2;1-1;"

\storePredefinedDiagram \chordmode {ees:7}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-1;3-1-);4-2;"

\storePredefinedDiagram \chordmode {ees:m7}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);2-1;4-4;"

\storePredefinedDiagram \chordmode {ees:dim}
                        #tenor-ukulele-tuning
                        #"2-1;3-3;2-1;3-4;"

\storePredefinedDiagram \chordmode {ees:maj7}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-2;3-1-);5-2;"

\storePredefinedDiagram \chordmode {ees:6}
                        #tenor-ukulele-tuning
                        #"3-1-(;3-1;3-1;3-1-);"

\storePredefinedDiagram \chordmode {ees:sus2}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {ees:sus4}
                        #tenor-ukulele-tuning
                        #"1-2;3-3;4-4;1-1;"

\storePredefinedDiagram \chordmode {ees:aug}
                        #tenor-ukulele-tuning
                        #"o;3-2-(;3-2-);2-1;"

\storePredefinedDiagram \chordmode {ees:9}
                        #tenor-ukulele-tuning
                        #"o;1-1-(;1-1;1-1-);"

%%%% e chords

\storePredefinedDiagram \chordmode {e}
                        #tenor-ukulele-tuning 
                        #"4-2;4-3;4-4;2-1;"

\storePredefinedDiagram \chordmode {e:m}
                        #tenor-ukulele-tuning 
                        #"4-3;4-3;3-2;2-1;"

\storePredefinedDiagram \chordmode {e:7}
                        #tenor-ukulele-tuning
                        #"1-1;2-2;o;2-3;"

\storePredefinedDiagram \chordmode {e:m7}
                        #tenor-ukulele-tuning
                        #"o;2-1;o;2-2;"

\storePredefinedDiagram \chordmode {e:dim}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;1-2;"

\storePredefinedDiagram \chordmode {e:maj7}
                        #tenor-ukulele-tuning
                        #"1-1;3-3;o;2-2;"

\storePredefinedDiagram \chordmode {e:6}
                        #tenor-ukulele-tuning
                        #"4-1-(;4-1;4-1;4-1-);"

\storePredefinedDiagram \chordmode {e:sus2}
                        #tenor-ukulele-tuning
                        #"4-3-(;4-3-);2-1-(;2-1-);"

\storePredefinedDiagram \chordmode {e:sus4}
                        #tenor-ukulele-tuning
                        #"2-2;4-4;o;2-1;"

\storePredefinedDiagram \chordmode {e:aug}
                        #tenor-ukulele-tuning
                        #"1-1;o;o;3-4;"

\storePredefinedDiagram \chordmode {e:9}
                        #tenor-ukulele-tuning
                        #"1-1;2-2-(;2-2;2-2-);"

%%%% f chords

\storePredefinedDiagram \chordmode {f}
                        #tenor-ukulele-tuning 
                        #"2-2;o;1-1;o;"

\storePredefinedDiagram \chordmode {f:m}
                        #tenor-ukulele-tuning 
                        #"1-1;o;1-2;3-4;"

\storePredefinedDiagram \chordmode {f:7}
                        #tenor-ukulele-tuning
                        #"2-2;3-3;1-1;3-4;"

\storePredefinedDiagram \chordmode {f:m7}
                        #tenor-ukulele-tuning
                        #"1-1;3-3;1-2;3-4;"

\storePredefinedDiagram \chordmode {f:dim}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;1-2;2-4;"

\storePredefinedDiagram \chordmode {f:maj7}
                        #tenor-ukulele-tuning
                        #"2-2;4-4;1-1;3-3;"

\storePredefinedDiagram \chordmode {f:6}
                        #tenor-ukulele-tuning
                        #"2-2-(;2-2-);1-1;3-4;"

\storePredefinedDiagram \chordmode {f:sus2}
                        #tenor-ukulele-tuning
                        #"o;o;1-1;3-3;"

\storePredefinedDiagram \chordmode {f:sus4}
                        #tenor-ukulele-tuning
                        #"3-3;o;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {f:aug}
                        #tenor-ukulele-tuning
                        #"2-2;1-1-(;1-1-);4-4;"

\storePredefinedDiagram \chordmode {f:9}
                        #tenor-ukulele-tuning
                        #"2-1;3-2-(;3-2;3-2-);"

%%%% fis chords

\storePredefinedDiagram \chordmode {fis}
                        #tenor-ukulele-tuning 
                        #"3-3;1-1;2-2;1-1;"

\storePredefinedDiagram \chordmode {fis:m}
                        #tenor-ukulele-tuning 
                        #"2-2;1-1;2-3;o;"

\storePredefinedDiagram \chordmode {fis:7}
                        #tenor-ukulele-tuning
                        #"3-3;4-4;2-2;1-1;"

\storePredefinedDiagram \chordmode {fis:m7}
                        #tenor-ukulele-tuning
                        #"2-1;4-3;2-2;4-4;"

\storePredefinedDiagram \chordmode {fis:dim}
                        #tenor-ukulele-tuning
                        #"2-1;3-3;2-2;3-4;"

\storePredefinedDiagram \chordmode {fis:maj7}
                        #tenor-ukulele-tuning
                        #"3-2;5-4;2-1;4-3;"

\storePredefinedDiagram \chordmode {fis:6}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);2-1;4-4;"

\storePredefinedDiagram \chordmode {fis:sus2}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1-);2-2;4-4;"

\storePredefinedDiagram \chordmode {fis:sus4}
                        #tenor-ukulele-tuning
                        #"4-4;1-1;2-2;2-3;"

\storePredefinedDiagram \chordmode {fis:aug}
                        #tenor-ukulele-tuning
                        #"3-2;2-1-(;2-1-);5-4;"

\storePredefinedDiagram \chordmode {fis:9}
                        #tenor-ukulele-tuning
                        #"3-1;4-2-(;4-2;4-2-);"

%%%% ges chords

\storePredefinedDiagram \chordmode {ges}
                        #tenor-ukulele-tuning 
                        #"3-3;1-1;2-2;1-1;"

\storePredefinedDiagram \chordmode {ges:m}
                        #tenor-ukulele-tuning 
                        #"2-2;1-1;2-3;o;"

\storePredefinedDiagram \chordmode {ges:7}
                        #tenor-ukulele-tuning
                        #"3-3;4-4;2-2;1-1;"

\storePredefinedDiagram \chordmode {ges:m7}
                        #tenor-ukulele-tuning
                        #"2-1;4-3;2-2;4-4;"

\storePredefinedDiagram \chordmode {ges:dim}
                        #tenor-ukulele-tuning
                        #"2-1;3-3;2-2;3-4;"

\storePredefinedDiagram \chordmode {ges:maj7}
                        #tenor-ukulele-tuning
                        #"3-2;5-4;2-1;4-3;"

\storePredefinedDiagram \chordmode {ges:6}
                        #tenor-ukulele-tuning
                        #"3-2-(;3-2-);2-1;4-4;"

\storePredefinedDiagram \chordmode {ges:sus2}
                        #tenor-ukulele-tuning
                        #"1-1-(;1-1-);2-2;4-4;"

\storePredefinedDiagram \chordmode {ges:sus4}
                        #tenor-ukulele-tuning
                        #"4-4;1-1;2-2;2-3;"

\storePredefinedDiagram \chordmode {ges:aug}
                        #tenor-ukulele-tuning
                        #"3-2;2-1-(;2-1-);5-4;"

\storePredefinedDiagram \chordmode {ges:9}
                        #tenor-ukulele-tuning
                        #"3-1;4-2-(;4-2;4-2-);"

%%%% g chords

\storePredefinedDiagram \chordmode {g}
                        #tenor-ukulele-tuning 
                        #"o;2-1;3-3;2-2;"

\storePredefinedDiagram \chordmode {g:m}
                        #tenor-ukulele-tuning 
                        #"o;2-2;3-3;1-1;"

\storePredefinedDiagram \chordmode {g:7}
                        #tenor-ukulele-tuning
                        #"o;2-2;1-1;2-3;"

\storePredefinedDiagram \chordmode {g:m7}
                        #tenor-ukulele-tuning
                        #"o;2-2;1-1-(;1-1-);"

\storePredefinedDiagram \chordmode {g:dim}
                        #tenor-ukulele-tuning
                        #"o;1-1;o;1-2;"

\storePredefinedDiagram \chordmode {g:maj7}
                        #tenor-ukulele-tuning
                        #"o;2-1;2-2;2-3;"

\storePredefinedDiagram \chordmode {g:6}
                        #tenor-ukulele-tuning
                        #"o;2-1;o;2-2;"

\storePredefinedDiagram \chordmode {g:sus2}
                        #tenor-ukulele-tuning
                        #"o;2-1;3-2;o;"

\storePredefinedDiagram \chordmode {g:sus4}
                        #tenor-ukulele-tuning
                        #"o;2-1;3-2;3-3;"

\storePredefinedDiagram \chordmode {g:aug}
                        #tenor-ukulele-tuning
                        #"o;3-2-(;3-2-);2-1;"

\storePredefinedDiagram \chordmode {g:9}
                        #tenor-ukulele-tuning
                        #"2-2;2-3;1-1;2-4;"

%%%% gis chords

\storePredefinedDiagram \chordmode {gis}
                        #tenor-ukulele-tuning 
                        #"5-3;3-1-(;4-2;3-1-);"

\storePredefinedDiagram \chordmode {gis:m}
                        #tenor-ukulele-tuning 
                        #"1-1;3-3;4-4;2-2;"

\storePredefinedDiagram \chordmode {gis:7}
                        #tenor-ukulele-tuning
                        #"1-1;3-3;2-2;3-4;"

\storePredefinedDiagram \chordmode {gis:m7}
                        #tenor-ukulele-tuning
                        #"1-1;3-4;2-2;2-3;"

\storePredefinedDiagram \chordmode {gis:dim}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;1-2;2-4;"

\storePredefinedDiagram \chordmode {gis:maj7}
                        #tenor-ukulele-tuning
                        #"1-1;3-2;3-3-(;3-3-);"

\storePredefinedDiagram \chordmode {gis:6}
                        #tenor-ukulele-tuning
                        #"1-1;3-3;1-2;3-4;"

\storePredefinedDiagram \chordmode {gis:sus2}
                        #tenor-ukulele-tuning
                        #"1-2;3-3;4-4;1-1;"

\storePredefinedDiagram \chordmode {gis:sus4}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;4-3-(;4-3-);"

\storePredefinedDiagram \chordmode {gis:aug}
                        #tenor-ukulele-tuning
                        #"1-1;o;o;3-4;"

\storePredefinedDiagram \chordmode {gis:9}
                        #tenor-ukulele-tuning
                        #"1-1;o;2-3;1-2;"

%%%% aes chords

\storePredefinedDiagram \chordmode {aes}
                        #tenor-ukulele-tuning 
                        #"5-3;3-1-(;4-2;3-1-);"

\storePredefinedDiagram \chordmode {aes:m}
                        #tenor-ukulele-tuning 
                        #"1-1;3-3;4-4;2-2;"

\storePredefinedDiagram \chordmode {aes:7}
                        #tenor-ukulele-tuning
                        #"1-1;3-3;2-2;3-4;"

\storePredefinedDiagram \chordmode {aes:m7}
                        #tenor-ukulele-tuning
                        #"1-1;3-4;2-2;2-3;"

\storePredefinedDiagram \chordmode {aes:dim}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;1-2;2-4;"

\storePredefinedDiagram \chordmode {aes:maj7}
                        #tenor-ukulele-tuning
                        #"1-1;3-2;3-3-(;3-3-);"

\storePredefinedDiagram \chordmode {aes:6}
                        #tenor-ukulele-tuning
                        #"1-1;3-3;1-2;3-4;"

\storePredefinedDiagram \chordmode {aes:sus2}
                        #tenor-ukulele-tuning
                        #"1-2;3-3;4-4;1-1;"

\storePredefinedDiagram \chordmode {aes:sus4}
                        #tenor-ukulele-tuning
                        #"1-1;2-3;4-3-(;4-3-);"

\storePredefinedDiagram \chordmode {aes:aug}
                        #tenor-ukulele-tuning
                        #"1-1;o;o;3-4;"

\storePredefinedDiagram \chordmode {aes:9}
                        #tenor-ukulele-tuning
                        #"1-1;o;2-3;1-2;"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% save everything above here as "predefined-ukulele-fretboards.ly",
%%% and include that file in your own sheet music to produce ukulele
%%% fretboards.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%
% EOF
