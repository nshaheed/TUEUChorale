\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium III"
}

euphthree = 
  \relative c' {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "TBD"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    r2 a~\p | a1 \breathe | r2 a~ | a1 \breathe | r2 a~ | a1~ \fermata |
    
    \time 3/2
    
    a\< r2\! | e2\p a e' | c1. | e,2 a e' |c1. | e,2 a e' |
    
    \time 4/2
    
    c2 bf df c | a\breve | r r | e1\< f\mf |
  }
  
{\new Staff \euphthree}