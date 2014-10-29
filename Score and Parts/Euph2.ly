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
    \tempo "Lento"
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup | R1 |  r2 c'\p \fermata | R1 | r2 c \fermata | R1 | r2 c \fermata \mark |
    
    \time 3/2
    
    gf'2\< df c\mp\>~ | c1. | c\p | R1.*3 |
    
    \time 4/2
    
    R\breve | c,2\p e c' a~ | a\breve | c,2\< e c' a | gf' df bf1\mf |
    bf bf | bf bf\breathe \mark |
    
    %R | c,2 e c' a~ | a r g1\< | a~ a~\mf\> | a\breve~ | a\breve\breathe \mark |
    
    \time 2/2 R1\! | \time 5/2 r2 bf\breve\mp |
    
    \time 2/2 R1 | \time 5/2 r2 bf\breve |
    
    \time 2/2 R1 | \time 5/2 r2 bf\breve\mark |
    
    \tempo "Faster"
    \time 3/2 R1. |  d,1.\mf | b2 d b' | f1. | d\mark | R | b2 d b' |
    fs1. | d | b | b | R | R | bf2 df bf'\mark | 
    
    fs1. | d | R1.*5 | bf2 df bf' | g1. | d | R | b2 d b' | f1. |
    
    %fs1. |  d1. | b2 d b' | f1. | d | R | R | bf2 df bf' | g1. | 
  }
  
{\new Staff \euphtwo}