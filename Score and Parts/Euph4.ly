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
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    e\< r2\! | R1.*5 | %r1 r2 | r1 r2 | r1 r2 | r1 r2 |
    
    \time 4/2
    
    R\breve | c2 e c' a~ | a\breve | c,2\< e c' a | gf' df bf1\mf |
    bf bf | bf bf\breathe 
    
    \time 2/2 d,1\mp~ | \time 5/2 d\breve~ d2 | 
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 3/2 b2\mf d b' | fs1. | d | R | b2 d b' | fs1. | d |
    b2 d b' | fs1. | d | R 	| bf2 d bf' | g1. | d |
  }
  
{\new Staff \euphfour}