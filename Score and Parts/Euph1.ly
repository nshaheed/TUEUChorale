\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium I"
}

euphone = 
  \relative c' {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    \tempo "Lento"
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1 \fermataMarkup | R1 | e\p \breathe | R1 | e \breathe | R1 | e \fermata \mark |
    
    \time 3/2
    
    c1\< r2\! | R1. | e,2\p a e' |  c1. | e,2 a e' |  c1. |
    
    \time 4/2
    
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    g'\breve | R\breve*6\breathe \mark |
    
    \time 2/2
    
    R1 |
    
    \time 5/2
    
    d\breve\mp~ d2 | 
    
    \time 2/2
    
    r1 | 
    
    \time 5/2
    
    d\breve~ d2 
    
    \time 2/2
    
    r1 | 
    
    \time 5/2
    
    d\breve~ d2\mark |
    
    \time 3/2
    \tempo "Faster"
    b2\mf df1 | d2 gf1 | f2 df1 | bf2 f1 | R1.\mark |
    b2 df1 | d2 df1 | d2 f gf~ | gf d df~ | df d f | gf1 f2 |
    gf2 g1 | bf1 d,2 | df1.\mark |
    
    b2 df1 | d2 gf1 | f2 df1 | bf2 f1 | g2 bf1 | b2 bf1 | b2 df d~ | d b bf~ | bf r1\mark |
    b2 df1 | d2 gf1 | f2 df1 | bf2 f1 | d2\< df1 | gf2 f1 | d'2 df1 | gf2 f1\mark | 
    
    % Transposed reiteration
    c2\f d1 | ef2 g1 | gf2 d1 | b2 gf1 | c2 d1 | ef2 d1 | ef2 gf g~ | g ef gf | 
    g1 gf2 | g af g | b1 ef,2 | d1. | 
    
    
  }
  
{\new Staff \euphone}