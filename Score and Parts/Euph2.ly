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
    
    R1 |  r2 c'\p \fermata | R1 | r2 c \fermata | r1 | r2 c \fermata
    
    \time 3/2
    
    gf'2\< df c\mp\>~ | c1. | c\p | R1.*3 |
    
    \time 4/2
    
    R\breve*2 | c,2 e c' a~ | a r g1\< | a~ a~\mf\> | a\breve~ | a\breve\breathe
    
    \time 2/2 R1\! | \time 5/2 r2 bf\breve\mp |
    
    \time 2/2 R1 | \time 5/2 r2 bf\breve |
    
    \time 2/2 R1 | \time 5/2 r2 bf\breve |
    
    \time 3/2 R1. |  d,1.\mf | b2 d b' | f1. | d | R | b2 d b' |
    fs1. | d | b | b | R | R | b2 d b' 
  }
  
{\new Staff \euphtwo}