% originally made for
% \version "2.12.0"


%{ Display ly file information on the score, including file name, file size,
 LilyPond version, date processed, time processed, time last modified, and
 the LilyPond command line. %}
#( define comml    ( object->string ( command-line )))
#( define loc      ( + ( string-rindex comml #\space ) 2 )) 
#( define commllen ( - ( string-length comml ) 2 ))
#( define filen    ( substring comml loc commllen ))
#( define siz      ( object->string ( stat:size ( stat filen ))))
#( define ver      ( object->string (lilypond-version )))
#( define dat      ( strftime "%m/%d/%Y" ( localtime ( current-time ))))
#( define tim      ( strftime "%H:%M:%S" ( localtime ( current-time ))))
#( define modt     ( stat:mtime ( stat filen )))
#( define modts    ( strftime "%m/%d/%Y %H:%M:%S" (localtime modt)))
    \header { dedication = \markup \column {
{ "- - - - - - Using Scheme \"define\"-  - - - - -" } % "
\line { "File Name = "        \filen }
\line { "File Size = "        \siz   }
\line { "LilyPond Version = " \ver   }
\line { "Date Processed = "   \dat   }
\line { "Time Processed = "   \tim   }
\line { "Last Modified = "    \modts }
\line { "Command Line = "     \comml }
{ "" }
{ "- - - - - - Using \"ly:export\" - - - - - -" } % "
{ #( ly:export ( string-append    "File Name = "
               ( substring ( object->string ( command-line ))
           ( + ( string-rindex ( object->string ( command-line )) #\sp ) 1 )
           ( - ( string-length ( object->string ( command-line )) ) 1 )))) }
{ #( ly:export ( string-append    "File Size = "
               ( object->string ( stat:size ( stat filen ))))) } 
{ #( ly:export ( string-append    "LilyPond Version = "
               ( lilypond-version ))) } 
{ #( ly:export ( string-append    "Date Processed = "
               ( strftime "%m/%d/%Y" ( localtime ( current-time ))))) }
{ #( ly:export ( string-append    "Time Processed = "
               ( strftime "%H:%M:%S" ( localtime ( current-time ))))) }
{ #( ly:export ( string-append    "Last Modified = "
               ( strftime "%m/%d/%Y %H:%M:%S"
               ( localtime ( stat:mtime ( stat filen )))))) }
{ #( ly:export ( string-append    "Command Line = "
               ( object->string ( command-line )))) } 
  } }
{ c''1_\markup { \column {
{ "- - - - - - In \"markup\" - - - - - -" } % "
\line { "File Name = "        \filen }
\line { "File Size = "        \siz   }
\line { "LilyPond Version = " \ver   }
\line { "Date Processed = "   \dat   }
\line { "Time Processed = "   \tim   }
\line { "Last Modified = "    \modts }
\line { "Command Line = "     \comml }
}}}



