\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium III"
    tagline = ""
}

euphthree = 
  \relative c' {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup | r2 a~\p | a1 \breathe | r2 a~ | a1 \breathe | r2 a~ | a1~ \fermata  |
    
    \time 3/2
    
    a\< r2\! | e2\p a e' | c1. | e,2 a e' |c1. | e,2 a e' |
    
    \time 4/2
    
    c2 bf df c | a\breve | R\breve*2 | a1\< a~\mf\> | a\breve~ | a\breve\breathe  |
    
    \time 2/2 r2\! g\mp~ | \time 5/2 g\breve~ g2 |
    
    \time 2/2 r2\! g~ | \time 5/2 g\breve~ g2 |
    
    \time 2/2 r2\! g~ | \time 5/2 g\breve~ g2 |
    
    \time 3/2 d1.\mf | b2 d b' | fs1. | df | R | b2 d b' | fs1. | d | 
    b2 d b' | fs1. | R | R | bf,2 d bf' | f1. |
    
    d | R | b2 d b' | f1. | d | R | b2 d b' | f1. | bf,
    
    | R | b2 d b' | fs1. | df | 
    R | b2\< d b' | fs1. | ef | 
    
    % Transposed Reiteration
    c2\f ef c' | g1. | c,2 ef c' | fs,1. | c2 ef c' | g1. | c,2 ef c' | ef,1. | 
    c2 ef c' | fs,1. | b,2 d b' | b,1. | 
    
    c2 ef c' | g1. | c,2 ef c' | fs,1. | af,2 cf af' | ef1. | c2 ef c' | d,1. |
    
    c2\< ef c' | g1. | c,2 ef c' | g1. | d2 f d' | g,1. | c,2 ef c' | b1. | c\ff\fermata |
    
    \time 2/2 
    
    r2 a2\p~ | a1\fermata | r2 a2~ | a1\fermata | r2 a2~ | a1\breathe |
    r2 a2~ | a1\fermata | r2 a2~ | a1\fermata~ | 

    a1\< | R1\! | r2 c\fermata\p | R1 | r2 c\fermata | gf'\< df | 
    
    \time 3/2
    
    d!1.\mp\>~ | d\p | R1.*2 | bf,2 d bf' | f1. | R1. | e2 a e' | c1. | R1. |
    
    \time 4/2 
    R\breve | c,2 e c' a~ | a\breve | R\breve | c,2 e1.\< |
    
    \time 2/2
    R1\! | <<{e'\fermata} {s4\> s s s\!}>> 
    
    
    
    %d1. | b2 d b' | fs1. | df | R1.*2 | b2 d b' | f1. | bf,
  }
  
%{
{\new Staff 
 <<
   \new Voice \include "rehearsal marks.ly"
   \euphthree
  >>
}
%}