\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Tuba II"
  tagline = ""
}

tubatwo = 
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
    
    R1\fermataMarkup | e1\p~ | e \breathe | e1~ | e \breathe | e1~ | e~ \fermata |
    
    \time 3/2
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    e\< r2\! | R1.*4 | a2\p a,1-> | 
    
    \time 4/2
    
    bf1-> ef-> | c\breve | c | c\< | c1 bf1~\mf\>-> | bf\breve~ | bf\breathe |
    
    \time 2/2 R1\! | \time 5/2 bf'1\mp bf2-> bf-> bf-> |
    
    \time 2/2 R1 | \time 5/2 bf1 a2-> a-> a-> | 
    
    \time 2/2 R1 | \time 5/2 bf1 af2\<-> af1-> | 
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.rcomma" }
    \time 3/2 b1.\!\mf | b1. | b1. | bf | b,! | b | b | b | b | b | b2-> d b' | 
    bf1. | bf\breathe | bf2-> f df |
    
    b2-> d b' | fs b,1-> | r1 fs'2 | bf-> f df | g,-> bf g' | d g,1->\breathe | b1. | df | g | 
    
    b | b\breathe | b2-> fs d | bf-> df bf' | f2\< bf,1-> | a2 d1-> | d2 b1-> | ef1. | 
    
    
    % Transposed reiteriation
    R1. * 12\!
    
   %{  R1. * 8 %}
    
    c1.\f\<~-> | c | ef~-> | ef | c'~-> | c | g~-> | g | c,\ff\fermata | R1.\fermataMarkup |
    
    \time 2/2
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    R1 | c'\fermata\p | %{ R1 | c\fermata | R1 | c\fermata |%} R1 | c\fermata |
    R1 | c\fermata~ | c\< | e\mp\>~ | e\p\fermata | e~ | e\fermata~ | e\< |
    
    
    \time 3/2
    R1.*3\! | bf2 f bf, | d1.~ | d | a' | a | a2 c e,-> | a c e,-> 
    
    \time 4/2
    
    | R\breve * 4 | <<{a\breve} {s2 s s\< s}>> | 
    
    \time 2/2
    R1\! | <<{c\p\fermata} {s4\> s s s\!}>>
    
    %b1. | b1. | b1. | bf |
    
    
  }

% {\new Staff 
%  <<
%    \new Voice \include "rehearsal marks.ly"
%    \tubatwo
%   >>
% }