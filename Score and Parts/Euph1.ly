\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium I"
}

euphone = 
  \relative c' {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "TBD"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    r1 | e\p \breathe | r1 | e \breathe | r1 | e \fermata |
    
    \time 3/2
    
    c1\< r2\! | r1 r2 | e,2\p a e' |  c1. | e,2 a e' |  c1. |
    
    \time 4/2
    
    g'\breve | r | r | r | r
  }
  
{\new Staff \euphone}