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
    \tempo "Lento"
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup | R1 | c'\p \breathe | R1 | c \breathe | r1 | c~ \fermata \mark |
    
    \time 3/2
    
    c\< a2\mp\>~ | a1. | a\p~ | a2 c e, | a c e, | a c e, | 
    \time 4/2
    
    bf'1 bf | R\breve | R | c\< | c1 f\mf~\> | f\breve~ | f\breathe \mark|
    
    \time 2/2 d,1\!\mp~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2\mark |
    
    \tempo "Faster"
    \time 3/2 b1.\mf | b1. | b | bf2 df bf' | fs1.\mark | b | 
    b | b | b2 fs d | b d b' | fs1. | g, | g | g\mark |
    
    r1 d'2 | b'1. | b2 fs d | bf df bf' | g1. | d2 g bf | b1. | R | g,2 bf g' |
    fs1 b,2 | d1 b2 | b'1 b,2 | bf'1. |
    
    %| b | bf2 df bf' | f1. | d | R1.*2 | g2 bf g'
    
    %b1. | b1. | b | bf2 df bf' |
  }
  
{\new Staff \tubaone}