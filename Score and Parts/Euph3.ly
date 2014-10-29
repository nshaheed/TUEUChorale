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
    \tempo "Lento"
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup | r2 a~\p | a1 \breathe | r2 a~ | a1 \breathe | r2 a~ | a1~ \fermata \mark |
    
    \time 3/2
    
    a\< r2\! | e2\p a e' | c1. | e,2 a e' |c1. | e,2 a e' |
    
    \time 4/2
    
    c2 bf df c | a\breve | R\breve*2 | a1\< a~\mf\> | a\breve~ | a\breve\breathe \mark |
    
    \time 2/2 r2\! g\mp~ | \time 5/2 g\breve~ g2 |
    
    \time 2/2 r2\! g~ | \time 5/2 g\breve~ g2 |
    
    \time 2/2 r2\! g~ | \time 5/2 g\breve~ g2\mark |
    
    \tempo "Faster"
    \time 3/2 d1.\mf | b2 d b' | fs1. | df | R\mark | b2 d b' | fs1. | d | 
    b2 d b' | fs1. | R | R | bf,2 d bf' | f1.\mark |
    
    d | R | b2 d b' | f1. | d | R | b2 d b' | f1. | bf, | R | b2 d b' | fs1. | df | 
    %d1. | b2 d b' | fs1. | df | R1.*2 | b2 d b' | f1. | bf,
  }
  
{\new Staff \euphthree}