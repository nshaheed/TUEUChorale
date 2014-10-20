\version "2.18.2"
\language "english"
\include "Euph1.ly"
\include "Euph2.ly"
\include "Euph3.ly"
\include "Euph4.ly"
\include "Tuba1.ly"
\include "Tuba2.ly"

\header {
  title = "String Quartet"
  instrument = "Score"
}

\score {
 <<
   \new Staff \euphone
   \new Staff \euphtwo
   \new Staff \euphthree
   \new Staff \euphfour
   \new Staff \tubaone
   \new Staff \tubatwo
 >>
 
 %\midi {}
}
