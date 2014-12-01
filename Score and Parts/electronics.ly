\version "2.18.2"
\language "english"

electronics = 
  \relative c' {
    \clef "percussion"
    \time 2/2
    \numericTimeSignature
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
    \set Score.markFormatter = #format-mark-box-alphabet
    %\override NoteHead.style = #'kievan
    \hide Stem
    %\aikenHeadsMinor
    %\set shapeNoteStyles = ##(la la la la la la la )
    e,4 \fermata s2. | s1 | r2 g4 s\breathe | s1 | r2 b4 s\breathe | s1 | r2 f4\fermata\< s |
    
    \time 3/2 
    r2 a4\!\> s s2\! | d4 s s1 | d4 s s1 |d4 s s1 |d4 s s1 |d4 s s1 | 
    
    \time 4/2
    f4 s s1. | f4 s s1. | f4 s s1. | a4\< s s1. | r1 c,4\! s2. | s\breve | r1 e4\> s2.\!\breathe | 
    
    \time 2/2 g4 s2. | 
    
    
    \time 5/2 r1 e,4 s4 g4 s4 
    \once \override Stem.transparent = ##f
    g4 \once \override Stem.transparent = ##f d4 | 
    \time 2/2 s1 |
    \time 5/2 r1 b'4 s4 g4 s4 \once \override Stem.transparent = ##f g4 
    \once \override Stem.transparent = ##f d4 |
    
    \time 2/2 s1 |
    \time 5/2 r1 c'4\< s4 g4 s2. | 
    \time 3/2 a4\! s4 s1 | s1. * 30  | f'4 s4 s1 | s1. * 11 | 
    c4\< s4 s1 | s1. * 7 | s1.\fermata\! | e4 s4 s1\fermata | 
    
    
  }
  
{\new Staff 
 <<
   \new Voice \include "rehearsal marks.ly"
   \electronics
  >>
}