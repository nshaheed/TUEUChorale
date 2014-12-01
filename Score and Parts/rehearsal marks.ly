%\version "2.18.2"
%\language "english"
{

\override Score.RehearsalMark.outside-staff-priority = #1
\override Score.MetronomeMark.outside-staff-priority = #2
\tempo "Lento"
%\markup "Staggered Breathing Throughout"
s1^\markup \override #'(baseline-skip . 1) {\teeny \center-align \left-column { \line { Staggered Breathing} \line {Throughout}}}
s1 * 6 \mark \default 
s1. * 6 s\breve * 7 \mark \default
s2 * 3 s1 * 3 s\breve * 3 \mark \default \tempo "Faster"
s1. * 5 \mark \default
s1. * 9 \mark \default
s1. * 9 \mark \default
s1. * 8 \mark \default 
s1. * 12 \mark \default
%s1. * 8 \mark \default
s1. * 10 \mark \default


s1 * 12 \mark \default


s1. * 10 

s\breve * 5 

s1 * 2 \bar "|."
%}
}
