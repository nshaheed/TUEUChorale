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
    
    e\< r2\! | r1 r2 | r1 r2 | r1 r2 | r1 r2 | a2 a,1 | 
    
    \time 4/2
    
    bf1 ef | c\breve | c | c\< | c1 bf1~\mf | bf\breve~ | 
  }
  
{\new Staff \tubatwo}