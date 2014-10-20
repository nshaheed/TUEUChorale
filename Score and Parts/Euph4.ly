\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium IV"
}

euphfour = 
  \relative c {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "TBD"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    e1\p~ | e1 \breathe | e1~ | e1 \breathe | e1~ | e1~ \fermata |
    
    \time 3/2
    
    e\< r2\! | r1 r2 | r1 r2 | r1 r2 | r1 r2 | r1 r2 |
    
    \time 4/2
    
    r1 r | c2 e c' a~ | a\breve | c,2\< e c' a | gf' df bf1\mf |
  }
  
{\new Staff \euphfour}