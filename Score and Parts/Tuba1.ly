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
    
    R1 | c'\p \breathe | R1 | c \breathe | r1 | c~ \fermata |
    
    \time 3/2
    
    c\< a2\mp\>~ | a1. | a\p~ | a2 c e, | a c e, | a c e, | 
    \time 4/2
    
    bf'1 bf | R\breve | R | c\< | c1 f\mf~\> | f\breve~ | f\breathe |
    
    \time 2/2 d,1\!\mp~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 3/2 b1.\mf | b1. | b | bf2 df bf' | fs1. | b | 
    b | b | b2 fs d | b d b' | fs1. | g, | g | g
  }
  
{\new Staff \tubaone}