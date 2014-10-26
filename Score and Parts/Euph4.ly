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
    \tempo "Lento"
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup |  e1\p~ | e1 \breathe | e1~ | e1 \breathe | e1~ | e1~ \fermata \mark|
    
    \time 3/2
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    e\< r2\! | R1.*5 | %r1 r2 | r1 r2 | r1 r2 | r1 r2 |
    
    \time 4/2
    
    R\breve | c2\p e c' a~ | a\breve | c,2\< e c' a | gf' df bf1\mf |
    bf bf | bf bf\breathe \mark |
    
    \time 2/2 d,1\mp~ | \time 5/2 d\breve~ d2 | 
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2\mark |
    
    \time 3/2 b2\mf d b' | fs1. | d | R | b2 d b'\mark | fs1. | d |
    b2 d b' | fs1. | d | R 	| bf2 d bf' | g1. | d |
    
    b2 d b' | fs1. | d | R |
  }
  
{\new Staff \euphfour}