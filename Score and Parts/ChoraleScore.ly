\version "2.18.2"
\language "english"
\include "Euph1.ly"
\include "Euph2.ly" 
\include "Euph3.ly"
\include "Euph4.ly"
\include "Tuba1.ly"
\include "Tuba2.ly"
\include "electronics.ly"



#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))
%#(set! paper-alist (cons '("my size" . (cons (* 8.5 in) (* 11 in))) paper-alist))

%\removeWithTag #'part

\paper {
  #(set-paper-size "my size")
 %left-margin = 3\cm 
 
  indent = 6\mm
  top-margin = 20\mm
%   scoreTitleMarkup = \markup {
%     \fill-line {
%       \null
%       \override #'(font-name . "Albertus")
%       \fontsize #7 \bold \fromproperty #'header:title
%       \fontsize #3 \fromproperty #'header:composer
%     }
%  }
}

  \header {
  %title = "Tuba - Euph	onium Chorale"
  title = \markup {
          \fontsize #7 
          \override #'(font-name . "Calibri")
          %\sans
          "Tuba-Euphonium Chorale"}
  instrument = ##f
  composer = \markup { 
          \fontsize #3
          \override #'(font-name . "Calibri")
          "Nicholas Shaheed"
          }
  }
  
\layout {
  indent = 2.3\cm
  short-indent = 1.5\cm
}

\header { tagline = ##f}

\score {

 <<

   %\tempo 2=55
   \new StaffGroup {
    << 

      \new Staff = "euph1" <<
        \new Voice \include "rehearsal marks.ly"
        \new Voice {
         \override Staff.InstrumentName.self-alignment-X = #CENTER
         %\set Staff.instrumentName = \markup \center-column= "E I" {"Eu. I"}
         \set Staff.instrumentName = "Euph I"
         %\set Staff.shortInstrumentName = "E.I"
         \set Staff.shortInstrumentName = \markup \center-column{"E.I"}
         \euphone
        }
      >>
        
       \new Staff  = "euph2" {
         \override Staff.InstrumentName.self-alignment-X = #CENTER
         %\set Staff.instrumentName = \markup \center-column {"Eu. II"}
         \set Staff.instrumentName = "Euph II"
         \set Staff.shortInstrumentName = "E.II"
         \euphtwo
       }
       
       \new Staff  = "euph3" {
         \override Staff.InstrumentName.self-alignment-X = #CENTER
         %\set Staff.instrumentName = \markup \center-column {"Eu. III"}
         \set Staff.instrumentName = "Euph III"
         \set Staff.shortInstrumentName = "E.III"
         \euphthree
       }
       
       \new Staff  = "euph4" {
         \override Staff.InstrumentName.self-alignment-X = #CENTER
         %\set Staff.instrumentName = \markup \center-column {"Eu. IV"}
         \set Staff.instrumentName = "Euph IV"
         \set Staff.shortInstrumentName = "E.IV"
         \euphfour
       }
    >>
   }

   \new StaffGroup {
     <<
       \new Staff = "tuba1" {
         \override Staff.InstrumentName.self-alignment-X = #CENTER
         %\set Staff.instrumentName = \markup \center-column {"Tu. I"}
         \set Staff.instrumentName = "Tuba I"
         \set Staff.shortInstrumentName = "T.I"
         \tubaone
       }
       \new Staff = "tuba2" {
         \override Staff.InstrumentName.self-alignment-X = #CENTER
         %\set Staff.instrumentName = \markup \center-column {"Tu. II"}
         \set Staff.instrumentName = "Tuba II"
         \set Staff.shortInstrumentName = "T.II"
         \tubatwo
       }
       
     >>
    }
    
    \new StaffGroup {
      <<
        \new Staff = "elec" {
          <<
          \override Staff.InstrumentName.self-alignment-X = #CENTER
          \set Staff.instrumentName = "Elec."
          \set Staff.shortInstrumentName = "Elec."
          
          \new Voice \electronics
          \new Voice \tuba
          \new Voice \euphMix
          \new Voice \mixFly
          >>
        }
        
        \new Staff \with  {\remove "Staff_symbol_engraver"} {
          \override Staff.Clef.color = #white
          \override Staff.Clef.layer = #-1
          \override Staff.TimeSignature.transparent = ##t
          
          
          s1 * 150
        }
      >>
    }
 >>
 
  %\midi {}
 }

 

%}
