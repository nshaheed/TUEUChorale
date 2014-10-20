\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Tuba I"
}

tubaone = 
  \relative c, {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "TBD"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    r1 | c'\p \breathe | r1 | c \breathe | r1 | c~ \fermata |
    
    \time 3/2
    
    c\< a2\mp\>~ | a1. | a\p~ | a2 c e, | a c e, | a c e, | 
    \time 4/2
    
    bf'1 bf | r\breve | r | c\< | c1 f\mf |
  }
  
{\new Staff \tubaone}