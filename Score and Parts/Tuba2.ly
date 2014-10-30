\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Tuba II"
}

tubatwo = 
  \relative c, {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "Lento"
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    % Compressed rest settings
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    R1\fermataMarkup | e1\p~ | e \breathe | e1~ | e \breathe | e1~ | e~ \fermata \mark|
    
    \time 3/2
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    e\< r2\! | R1.*4 | a2\p a,1 | 
    
    \time 4/2
    
    bf1 ef | c\breve | c | c\< | c1 bf1~\mf\> | bf\breve~ | bf\breathe\mark |
    
    \time 2/2 R1\! | \time 5/2 bf'1\mp bf2 bf bf |
    
    \time 2/2 R1 | \time 5/2 bf1 a2 a a | 
    
    \time 2/2 R1 | \time 5/2 bf1 af2\< af1\mark | 
    
    \tempo "Faster"
    \time 3/2 b1.\!\mf | b1. | b1. | bf | b,\mark | b | b | b | b | b | b2 d b' | 
    bf1. | bf | bf2 f df\mark |
    
    b2 d b' | fs b,1 | r1 fs'2 | bf f df | g, bf g' | d g,1 | b1. | df | g\mark | 
    
    b | b | b2 fs d | bf df bf' | f2\< bf,1 | a2 d1 | d2 b1 | ef1.\mark | 
    
    % Transposed reiteriation
    R1. * 12\!
    %b1. | b1. | b1. | bf |
  }
  
{\new Staff \tubatwo}