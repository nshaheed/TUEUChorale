\version "2.18.2"
\language "english"

  gso = {
    \override NoteColumn.glissando-skip = ##t
    %\hide NoteHead
    %\override NoteHead.no-ledgers = ##t
  }

  gsof = {
    \revert NoteColumn.glissando-skip
    %\undo \hide NoteHead
    %\revert NoteHead.no-ledgers
  }
  
  %glisstest = {g4\glissando g s2 |  g4 }
electronics = 
  \relative c'  {
    \clef "percussion"
    \time 2/2
    \numericTimeSignature
    
    \override Score.RehearsalMark.outside-staff-priority = #1
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
%     \override Glissando.breakable = ##t
%     \override Glissando.after-line-breaking = ##t
    \set Score.markFormatter = #format-mark-box-alphabet
    \hide Stem
    %{ \override Glissando.style = #'zigzag%}

    e,4 \fermata s2. | s1 | r2 s4 s\breathe | s1 | r2 b'4 s\breathe | s1 | r2 f4\fermata\< s |
    
    \time 3/2 
    r2 a4\!\> s s2\! | d4 s s1 | d4 s s1 |d4 s s1 |d4 s s1 |d4 s s1 | 
    
    \time 4/2
    f4 s s1. | f4 s s1. | f4 s s1. | a4\< s s1. | r1 c,4\! s2. | s\breve | r1 e4\> s2.\!\breathe | 
    
    \time 2/2 g4 s2.
    
    
    \time 5/2 r1 s4 s4 g,4 s4 
    
    \once \override Stem.transparent = ##f
    g4 \once \override Stem.transparent = ##f d4\> |
    
    \stemDown
    \time 2/2 s1\! |
    \time 5/2 r1 s4 s4 g4 s4 \once \override Stem.transparent = ##f g4 
    \once \override Stem.transparent = ##f d4 |
    
    \time 2/2 s1 |
    \time 5/2 r1 s4\< s4 g4 s2. | 
    \time 3/2 a4\! s4 s1 | s1. * 30  | f4 s4 s1 | s1. * 11 | 
    e4\< s4 s1 | s1. * 7 | s1.\fermata\! | 
    <<{g4 s4 s1} {s1.\fermata}>> | 
    
    \time 2/2 b4 s2. | s1 | s1 | r2 s4 s4 | s1 | r2 b4\< s4 | 
    s1 | a4\!\> s4 s2 | s1\! | s1 | r2 b4\< s4 | s1 | 
    
    \time 3/2 <<{a4\!\>} {d4}>> s4 s1 | d4\! s4 s1 | 
    d4 s4 s1 | d4 s4 s1 | d4 s4 s1 | d4 s4 s1 | d4 s4 s1 | 
    d4 s4 s1 | d4 s4 s1 | d4 s4 s1 | 
    
    \time 4/2 f4 s4 s1. | f4 s4 s1. | f4 s4 s1. | a4\< s4 s1. | 
    s\breve | 
    
    \time 2/2 a,4\!\> s4 s2 | r2\! c4\fermata e\fermata | 

    
  }
  
hn = \once \hideNotes
tuba = \relative c'  {
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    \override Glissando.style = #'zigzag
    \hide Stem
    
    \voiceOne
    
    s1 | s | s2 g4\glissando \gso s4 | s1 | s1 | s1 |
    s1 \time 3/2 s1. * 6 | \time 4/2 s\breve * 6 | 
    s1 s2 s4 \gsof \once \hideNotes g4 |
    
    \time 2/2 s1
   
    \time 5/2 s1 e4\glissando \gso s4 \hn \gsof e4\glissando 
    \gso s4 \hn \gsof e4\glissando \gso s8. \hn \gsof e16
    
    \time 2/2 s1
   
    \time 5/2 s1 b'4\glissando \gso s4 \hn \gsof b4\glissando 
    \gso s4 \hn \gsof b4\glissando \gso s8. \hn \gsof b16
    
    \time 2/2 s1
   
    \time 5/2 s1 c4\glissando \gso s4 \hn \gsof c4\glissando 
    \gso s4 s4 s8. \hn \gsof c16
    
    \time 3/2 s1. * 53
    
    \time 2/2 s1 * 3
    
    s2 g4\glissando \gso s4 | s1 * 8 
    
    \time 3/2 s1. * 10
    
    \time 4/2 s\breve * 5 
    
    \time 2/2 s1 | s2 \gsof \once \hideNotes g4 s4
    
    
}

euphMix = \relative c' {
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    \override Glissando.style = #'zigzag
    \hide Stem
    
    \voiceTwo
    
    s1 | s | s | s | s2 b4\glissando \gso s4 | s1 | s | 
    \time 3/2 s1. * 6 | \time 4/2 s\breve * 6 | s1 s2 s4 \gsof \once \hideNotes b4
    
    \time 2/2 s1 | \time 5/2 s2 s\breve | \time 2/2 s1 | \time 5/2 s2 s\breve |
    \time 2/2 s1 | \time 5/2 s2 s\breve |
    
    \time 3/2 s1. * 53 | \time 2/2 s1 * 5 | s2 b4\glissando \gso s4 |
    s1 * 6 | \time 3/2 s1. * 10 | \time 4/2 s\breve * 5 | 
    \time 2/2 s1 | s2 \gsof \once \hideNotes b4 s4
    
}

{\new Staff 
 <<
   \new Voice \include "rehearsal marks.ly"
   \new Voice \electronics
   \new Voice \tuba
   \new Voice \euphMix
  >>
}