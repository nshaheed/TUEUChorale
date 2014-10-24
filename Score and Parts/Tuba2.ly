\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Tuba II"
}

tubatwo = 
  \relative c, {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "TBD"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    e1\p~ | e \breathe | e1~ | e \breathe | e1~ | e~ \fermata |
    
    \time 3/2
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    e\< r2\! | R1.*4 | a2 a,1 | 
    
    \time 4/2
    
    bf1 ef | c\breve | c | c\< | c1 bf1~\mf\> | bf\breve~ | bf\breathe
    
    \time 2/2 R1\! | \time 5/2 bf'1\mp bf2 bf bf |
    
    \time 2/2 R1 | \time 5/2 bf1 a2 a a | 
    
    \time 2/2 R1 | \time 5/2 bf1 af2\< af1 | 
    
    \time 3/2 b1.\!\mf | b1. | b1. | bf | d, | b | b | b | b | b | b2 d b' | 
    bf1. | bf | b
  }
  
{\new Staff \tubatwo}