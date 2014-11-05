\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Tuba I"
  tagline = ""
}

tubaone = 
  \relative c, {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    % Compressed rest settings
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    R1\fermataMarkup | R1 | c'\p \breathe | R1 | c \breathe | r1 | c~ \fermata  |
    
    \time 3/2
    
    c\< a2\mp\>~ | a1. | a\p~ | a2 c e, | a c e, | a c e, | 
    \time 4/2
    
    bf'1 bf | R\breve | R | c\< | c1 f\mf~\> | f\breve~ | f\breathe |
    
    \time 2/2 d,1\!\mp~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 3/2 b1.\mf | b1. | b | bf2 df bf' | fs1. | b | 
    b | b | b2 fs d | b d b' | fs1. | g, | g | g |
    
    r1 d'2 | b'1. | b2 fs d | bf df bf' | g1. | d2 g bf | b1. | R | g,2 bf g' |
    
    
    fs1 b,2 | d1 b2 | b'1 b,2 | bf'1. | bf\< | R | b2 fs d | ef gf ef' | 
    
    % Transposed Reiteration
    R1. * 12\!
    
    R1. * 8 
    
    c,1.\<~ | c | ef~ | ef | c'~ | c | g~ | g | c\ff\fermata
    
    \time 2/2
    e,1\p~ | e\fermata | e1~ | e\fermata | e1~ | e\breathe | e1~ | e\fermata | e~ | 
    e\fermata~ | e\< | e\mp\>~ | e\fermata\p | e~ | e\fermata~ | e\< |
    
    \time 3/2
    
    bf'1.\mp\>~ | 
    
    bf\p | bf2 f bf, | d1. | R1. | R1. | c' | c | c | a2 a,1 | 
    
    \time 4/2 
    
    bf1 ef | c\breve | c | c | <<{a\breve} {s2 s s\< s}>> | 
    
    \time 2/2
    
    e'1\mp\>~ | <<{e1\fermata} {s4 s s s\!}>>
    
    
    %| b | bf2 df bf' | f1. | d | R1.*2 | g2 bf g'
    
    %b1. | b1. | b | bf2 df bf' |
  }
  
%{
{\new Staff 
 <<
   \new Voice \include "rehearsal marks.ly"
   \tubaone
  >>
}
%}