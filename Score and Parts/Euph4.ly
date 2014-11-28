\version "2.18.2"
\language "english"

\header {
  title = "Tuba - Euphonium Chorale"
  instrument = "Euphonium IV"
  tagline = ""
}

euphfour = 
  \relative c {
    \clef "bass"
    \time 2/2
    \numericTimeSignature
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    
    R1\fermataMarkup |  e1\p~ | e1 \breathe | e1~ | e1 \breathe | e1~ | e1~ \fermata |
    
    \time 3/2
    \compressFullBarRests
    \override MultiMeasureRest.expand-limit = #3
    
    e\< r2\! | R1.*5 | %r1 r2 | r1 r2 | r1 r2 | r1 r2 |
    
    \time 4/2
    
    R\breve | R | c2 e c' a~ | a r g1\< | e f~\mf\>-> | f\breve~ | f\breve\breathe  |
    %c2\p e c' a~ | a\breve | c,2\< e c' a | gf' df bf1\mf |
    %bf bf | bf bf\breathe \mark |
    
    \time 2/2 d1\mp~ | \time 5/2 d\breve~ d2 | 
    
    \time 2/2 d1~ | \time 5/2 d\breve~ d2 |
    
    \time 2/2 d1~ | \time 5/2 <<{d\breve~ d2} {s1 s1.\<}>> |
    
    \time 3/2 b2\mf-> d b' | fs1. | d | R | b2-> d b' | fs1. | d |
    b2-> d b' | fs1. | d | R 	| bf2-> d bf' | g1. | df |
    
    \override BreathingSign.text = \markup { \musicglyph #"scripts.rcomma" }
    R1. | b2-> d b' | fs1. | df | R | g,2-> bf g' | fs1. | df\breathe | g2-> d bf | 
    
    b-> d b' | fs1. | d | R | bf2\<-> d bf' | fs1. | d | R |  
    
    % Transposed reiteration
    R1. * 4 \! | c1.\f-> | ef | c' | g | c,-> | d | b' | fs | 
    
    %{ R1. * 4 | af,1.-> | cf | c' | fs,%}
    
    c\<-> | ef | c' | fs, | d-> | ef | c' | g | g\ff\fermata
    %b2 d b' | fs1. | d | R1.*2 | g,2 bf g' | fs1. | df | R
    
    \time 2/2
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    
    e1\p~ | e\fermata | %{ e~ | e\fermata | e~ | e\fermata |%} e~ | e\fermata | e~ | e\fermata~
    e\< | r2\! a\>~ | a1\fermata\p | r2 a~ | a1\fermata~ | a\< | 
    
    \time 3/2
    bf,2\mp\> d bf' | f1.\p | bf, | bf | bf~ | bf | R1.*3 | c1. 
    
    \time 4/2
    bf1-> bf-> | R\breve | c2 e c' a~ | a\breve | <<{e\breve} {s1 s1\<}>> |
    
    \time 2/2
    e\mp\>~ | <<{e\fermata} {s4 s s s\!}>>
  }
  
% {\new Staff 
%  <<
%    \new Voice \include "rehearsal marks.ly"
%    \euphfour
%   >>
% }
