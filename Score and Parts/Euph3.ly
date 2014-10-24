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
    
    c2 bf df c | a\breve | R\breve*2 | e1\< f~\mf\> | f\breve~ | f\breve\breathe |
    
    \time 2/2 r2\! g\mp~ | \time 5/2 g\breve~ g2 |
    
    \time 2/2 r2\! g~ | \time 5/2 g\breve~ g2 |
    
    \time 2/2 r2\! g~ | \time 5/2 g\breve~ g2 |
    
    \time 3/2 d1.\mf | b2 d b' | fs1. | df | R | b2 d b' | fs1. | d | 
    b2 d b' | fs1. | R | R | bf,2 d bf' | fs1. |
  }
  
{\new Staff \euphthree}