\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium II"
  tagline = ""
}

euphtwo = 
  \relative c {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup | R1 |  r2 c'\p \fermata | R1 | r2 c \fermata | R1 | r2 c \fermata %{\mark%} |
    
    \time 3/2
    
    gf'2\<-> df c\mp\>~-> | c1. | c\p | R1.*3 |
    
    \time 4/2
    
    R\breve | c,2\p-> e c' a~ | a\breve | c,2\<-> e c' a | gf'-> df bf1\mf-> |
    bf bf | bf bf\breathe %{\mark%} |
    
    %R | c,2 e c' a~ | a r g1\< | a~ a~\mf\> | a\breve~ | a\breve\breathe \mark |
    
    \time 2/2 R1\! | \time 5/2 r2 bf\breve\mp |
    
    \time 2/2 R1 | \time 5/2 r2 bf\breve |
    
    \time 2/2 R1 | \time 5/2 r2 bf\breve%{\mark%} |
    
    \time 3/2 R1. |  d,1.\mf | b2-> d b' | f1. | d%{\mark%} | R | b2-> d b' |
    fs1. | d | b | b | R | R | bf2-> df bf'%{\mark%} | 
    
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    fs1. | d | R1.*5 | bf2-> df bf' | g1.%{\mark%} 
    
    | d | R | b2-> d b' | f1. |
    d\< | R | b2-> d b' | gf1.%{\mark%} |
    
    %Transposed Reiteration
    ef1.\f | c2-> ef c' | g1. | b,2-> d b' | g1. | c,2-> ef c' | g ef1 | c2-> ef c' | 
    ef,1. | b2-> d b' | d,1. | b2-> d b' | 
    
    ef,1. | c2-> ef c' | g1. | b,2-> d b' | ef,1. | af,2-> cf af' | g2 c,1 |  b2-> d b' |
    ef,1.\< | c2-> ef c' | g1. | b,2 ds b' | f1. | c2 ef c' | ef,1. | e2 g e' | ef1.\ff\fermata |
    
    % Recap
    \time 2/2
    R1 | r2 c\fermata\p | R1 | r2 c\fermata | R1 | r2 c\breathe | R1 | r2 c\fermata |
    R1 | r2 c\fermata | gf'\< df | a'1~\mp\> | a\p | a~ | a | a\< |  
    
    \time 3/2
    R1.\! | bf,,2\p d bf' | f1. | bf,2 d bf' | f1. | R | e2 a e' | c1. | R1. | 
    e,2 a e' | 
    
    \time 4/2
    c bf df c | R\breve | R | c,2 e c' a~ | <<{a\breve} {s2 s s\< s}>> |
    
    \time 2/2
    r2\! a2\mp\>~ | <<{a1\fermata} {s4 s s s\!}>>  |
    
    
    
    %fs1. |  d1. | b2 d b' | f1. | d | R | R | bf2 df bf' | g1. | 
  }
  
{\new Staff 
 <<
   \new Voice \include "rehearsal marks.ly"
   \euphtwo
  >>
}