\version "2.18.2"
\language "english"
\include "Euph1.ly"
\include "Euph2.ly"
\include "Euph3.ly"
\include "Euph4.ly"
\include "Tuba1.ly"
\include "Tuba2.ly"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Score"
  tagline = ""
}

\paper {
 left-margin = 2\cm 
}

\score {
 <<
   %\tempo 2=43	
   \new Staff = "euph1" {
     %\override Staff.InstrumentName.self-alignment-X = #LEFT
     %\set Staff.instrumentName = \markup \center-column {"Euphonium I"}
     \euphone
   }
   \new Staff \euphtwo
   \new Staff \euphthree
   \new Staff \euphfour
   \new Staff \tubaone
   \new Staff \tubatwo
 >>
 
 %\midi {}
}
