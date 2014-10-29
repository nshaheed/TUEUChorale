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
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup |  e1\p~ | e1 \breathe | e1~ | e1 \breathe | e1~ | e1~ \fermata \mark|
    
    \time 3/2
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    e\< r2\! | R1.*5 | %r1 r2 | r1 r2 | r1 r2 | r1 r2 |
    
    \time 4/2
    
    R\breve | R | c2 e c' a~ | a r g1\< | e f~\mf\> | f\breve~ | f\breve\breathe \mark |
    %c2\p e c' a~ | a\breve | c,2\< e c' a | gf' df bf1\mf |
    %bf bf | bf bf\breathe \mark |
    
    \time 2/2 d1\mp~ | \time 5/2 d\breve~ d2 | 
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2\mark |
    
    \tempo "Faster"
    \time 3/2 b2\mf d b' | fs1. | d | R | b2 d b'\mark | fs1. | d |
    b2 d b' | fs1. | d | R 	| bf2 d bf' | g1. | df\mark |
    
    R1. | b2 d b' | fs1. | df | R | g,2 bf g' | fs1. | df | g2 d bf | 
    b d b' | fs1. | d | R 
    %b2 d b' | fs1. | d | R1.*2 | g,2 bf g' | fs1. | df | R
  }
  
{\new Staff \euphfour}