\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium II"
}

euphtwo = 
  \relative c {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "TBD"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    r1 |  r2 c'\p \fermata | r1 | r2 c \fermata | r1 | r2 c \fermata
    
    \time 3/2
    
    gf'2\< df c\mp\>~ | c1. | c\p | r1 r2 | r1 r2 | r1 r2 |
    
    \time 4/2
    
    r\breve | r | c,2 e c' a~ | a r g1\< | a~ a\mf
  }
  
{\new Staff \euphtwo}