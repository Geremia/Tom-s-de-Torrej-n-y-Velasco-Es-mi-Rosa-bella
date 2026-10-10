\version "2.27.0"

#(set-default-paper-size "letter")
#(ly:set-option 'point-and-click #f)

  \header {
    title = \markup {
      \with-url "https://www.cpdl.org/wiki/index.php/Es_mi_Rosa_bella"
      {Es mi Rosa bella}
    }
    composer = "Tomás de Torrejón y Velasco (1644-1728)"
      subtitle = ""
      %subsubtitle = "modo lidio (modo gregoriano V)"
      tagline = \markup {
        \general-align #Y #CENTER
          \with-url "https://www.cpdl.org/wiki/index.php/Es_mi_Rosa_bella"
          \epsfile #Y #6 "qr.eps"
          \line {
            \column {
              \with-url "https://www.cpdl.org/wiki/index.php/Es_mi_Rosa_bella"
                "https://www.cpdl.org/wiki/index.php/Es_mi_Rosa_bella"
                \line {
                  "Creada el "
                    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
                    " con "
                    \with-url "http://lilypond.org/"
                    \line {LilyPond \simple #(lilypond-version) (lilypond.org)}
                  " y "
                    \with-url "https://www.frescobaldi.org/"
                    \line {Frescobaldi 4.0.7 (frescobaldi.org). }
                }
            }
          }
      }
  }

\paper {
#(set-paper-size "letter")
  % Add space for instrument names
    indent = .75\in
}

global = {
  \key c \major
    \time 4/4
}

% Estribillo

sopranoVoiceI = \relative c'' {
  \global
    \dynamicUp
    r2 g4 a
    b c d2
    b4 g g'2 ~
    g fis4 fis 
    g2 b
    b a4 a
    d,2 d
    e4 (f) g a
    fis1
    fis4 fis fis fis
    f2 gis
    a4 g fis a
    g1
    r1
    r2 d
    a' a
    r4 d,
    g2 ~ g
    fis4 fis
    g2 e
    d d4 d
    g, g g'2 ~
    g fis4 fis
    g1
    gis4 gis gis gis
    g2 a
    fis4 a a gis
    a1
    e4 e e e
    e2 fis
    g4 fis e g
    \time 6/4
    <<
      { fis1 fis2 }
      { s2 s2 \segno s4. }
    >>
    g2 a a
    d, (e f)
    e a2 a ~ a
    g1 ~ g2 fis1
    g2 g g2 ~ g
    f2 f
    f2 (e1)
    f1 d2
    e2 fis fis
    g1. ~ g2 f1
    e2 e e
    d1. ~ d \fermata
}

verseSopranoVoiceI = \lyricmode {
  % Lyrics follow here.
  \stanza "1."
    Es mi Ro -- sa be -- lla
    del cie -- lo pri -- mor, del cie -- lo pri -- mor, del cie -- lo pri -- mor,
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción;
    del cie -- lo, del cie -- lo pri -- mor, del cie -- lo pri -- mor, del cie -- lo pri -- mor,
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción;
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción; % ← 6/4 begins on last syllable here
    ¡el al -- ba la~ad -- mi -- re, ce -- lé -- bre -- la~el sol,
    el al -- ba la~ad -- mi -- re, ce -- lé -- bre -- la~el sol, ce -- lé -- bre -- la~el sol!
}

sopranoVoiceII = \relative c'' {
  \global
    \dynamicUp
    R1*4 r2
    g4 a b c d2
    b4 g d'2 ~
    d cis4 cis
    d1
    dis4 dis dis dis
    d2 e
    c4 e e dis
    e1
    r4 g, c2 ~
    c b4 b4
    c2 a4 a
    b2 a4 g
    a a d2
    b2 c
    g4 g g'2
    e2. (d4
    c4 b) c2
    b1
    b4 b b b
    b2 cis
    d4 c b d
    cis1
    cis4 cis cis cis
    c2 d
    b4 d d cis
    \time 6/4
    d2 \bar "!" d d ~ d
    c c
    c2 (b1)
    c1 c2
    d e e
    a,1 a2
    b1 b2
    cis2 d d2 ~ d
    cis2 cis
    d1.
    r2 r2 a
    b2 cis cis
    d1. ~ d2 c c ~ c
    b2 a
    b1.\fermata
}

verseSopranoVoiceII = \lyricmode {
  % Lyrics follow here.
    \stanza "1."
    Es mi Ro -- sa be -- lla
    del cie -- lo pri -- mor,
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción;
    del cie -- lo pri -- mor, de el cie -- lo pri -- mor, del cie -- lo pri -- mor, del cie -- lo pri -- mor,
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción;
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción; % ← 6/4 begins on last syllable here
    ¡el al -- ba la~ad -- mi -- re, ce -- lé -- bre -- la~el sol, el sol, el sol, ce -- lé -- bre -- la~el sol,
    ce -- lé -- bre -- la~el sol, ce -- lé -- bre -- la~el sol!
}

tenorVoice = \relative c' {
  \global
    \dynamicUp
    % Music follows here.
    R1*2 r2
    g4 a
    b c d2
    b4 g g'2 ~
    g fis4 fis
    g2 g
    e e4 e
    d1
    b4 b b b
    b2 e
    a,4 a b b
    e1
    r1
    r4 c g'2 ~
    g fis4 fis
    g2 e
    d1
    r4 g, c2
    (c) b4 b
    c2 c
    a a4 a
    g1
    e'4 e e e
    e2 a
    d,4 d e e
    a,1
    a4 a a a
    a2 d
    g,4 g a a
    \time 6/4
    d1 d2
    e fis fis
    g1.
    c,2 a1
    b2 cis cis
    d1 d2
    g1 g,2
    a1. ~ a2 a a
    d1.
    R1.*2
    r1 d2
    e fis fis
    g1. ~ g \fermata
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
    \stanza "1."
    Es mi Ro -- sa be -- lla
    del cie -- lo pri -- mor, del cie -- lo pri -- mor,
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción;
    del cie -- lo pri -- mor, pri -- mor, del cie -- lo pri -- mor, del cie -- lo pri -- mor,
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción;
    y~es de la~her -- mo -- su -- ra
    to -- da~ad -- mi -- ra -- ción; % ← 6/4 begins on last syllable here
    ¡el al -- ba la~ad -- mi -- re, ce -- lé -- bre -- la~el sol, el sol,
    ce -- lé -- bre -- la~el sol,
    ce -- lé -- bre -- la~el sol!
}

bcMusic = \relative c {
  \global
    % Music follows here.
    g'1
    g2 d
    g1
    g2 d
    g1 ~
    g2 fis
    g1
    e2 e
    d d'4 c
    b1
    b2 e
    a, b
    e2. d4
    c1
    c2 g
    a d,
    g e
    d1
    g2 c ~
    c b
    c1
    a2 a
    g g4 f
    e1
    e2 a
    d, e
    a1
    a
    a2 d,
    g a
    \time 6/4
    d,1.
    e2 fis1  % not quite what MS says; it has only 2 quarters in the 6 beat measure!
    g1.
    c2 a1 % see note supra ↑   But this matches SST's rythmn
    b2 cis1  % ibid.
    d1.
    g,1 g2
    a1. ~ a
    d,1.
    c2 d1
    g2 e1
    d1 d2
    e2 fis1
    g1. ~ g \fermata \bar "."
}

bcFigures = \figuremode {
  \global
    \override Staff.BassFigureAlignmentPositioning.direction = #DOWN
    % Figures follow here.
    r1*7 <5>2 <6+> r1 <3+> <3+> r2 <3+>
    r1*11 <3+> %r1 r2 <3+> % last <3+> not rendering at proper location; hence, commenting out.
}

aurora = \lyricmode {
  \stanza "2."
    \skip 1 mi~Au -- ro -- ra
}

sopranoVoiceIPart = \new Staff \with {
  instrumentName = "Soprano I"
    midiInstrument = "choir aahs"
} { \sopranoVoiceI } 
\addlyrics { \verseSopranoVoiceI }
\addlyrics { \aurora }

sopranoVoiceIIPart = \new Staff \with {
  instrumentName = "Soprano II"
    midiInstrument = "choir aahs"
} { \sopranoVoiceII }
\addlyrics { \verseSopranoVoiceII }
\addlyrics { \aurora }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
    midiInstrument = "choir aahs"
} { \clef "G_8" \tenorVoice }  % perhaps change "alto" to "G_8" for beginners' easier reading
\addlyrics { \verseTenorVoice }
\addlyrics { \aurora }

bassoContinuoPart = <<
\new Staff \with {
  instrumentName = "Acomp."%añamiento"
    midiInstrument = "church organ"
} { \clef "bass" \bcMusic }  % perhaps change "tenor" to "bass" for beginners' easier reading
%\new FiguredBass \bcFigures % commenting out, as last figure not rendering @ proper location
>>


% Coplas solas

soloVoice = \relative c'' {
  \global
    \dynamicUp
    % Music follows here.
    \time 6/4
    r2 g g
    d'1 d2
    b2 g
    g'2 (~ g fis1)
    g g2 ~ g f f ~ f e e ~ e d1
    c1.
    b2 c d
    d c c
    b c d2 ~ d % d as ½ not also not exactly in MS
    c c
    b2 (a)
    << { \voiceTwo a2 ~ a gis1 a1. } \new Voice { \voiceOne a'2 ~ a gis1 a1.} >> \oneVoice
    e2 f g
    g f f
    e f g ~ g f f
    e2 (d) d1 ~ d2 cis
    d2 ~
}

bcSolo = \relative c {
  \global
    % Music follows here.
    \time 6/4
    r2 g' g2 ~ g fis1
    g2 e1
    d1.
    g2. f4 e2 ~ e f1
    g2 c,1
    g'1.
    c,2 c d
    e1 fis2
    gis a1
    e1 fis2
    gis a1
    d,2 f1
    e1.
    a,2 a b
    cis1. ~
    cis2 d1
    a1 b2
    cis2 d1
    g,2 bes1
    a1.
    d,2 \bar "!"
    \jump "D.S."
}

verseOne = \lyricmode {
  \stanza "1."
    % Lyrics follow here.
    En el cam -- po de Los Re -- yes
    don -- de Ro -- sa se plan -- tó
    a to -- da flor lo fra -- gan -- te
    en su na -- tal u -- sur -- pó,
       a to -- da flor lo fra -- gan -- te,
       en su na -- tal u -- sur -- pó.
}

verseTwo = \lyricmode {
  \stanza "2."
    % Lyrics follow here.
    Es en to -- do tan her -- mo -- sa
    que si mi -- ra la~a -- ten -- ción,
        la~ha -- lla -- rá, cuan -- do la mi -- re,
        di -- vi -- no~ob -- je -- to de~un Dios,
        la~ha -- lla -- rá, cuan -- do la mi -- re,
        di -- vi -- no~ob -- je -- to de~un Dios.
}

verseThree = \lyricmode {
  \stanza "3."
    % Lyrics follow here.
    En la gra -- cia de sus o -- jos,
       toa -- les vir -- tu -- des mos -- tró
         que~es pa -- ra to -- do ve -- ne -- no,
       la tri -- a -- ca su -- pe -- rior,
       que~es pa -- ra to -- do ve -- ne -- no,
       la tri -- a -- ca su -- pe -- rior.
}

coplasSolas = \new Staff \with {
  instrumentName = "Solo"
    midiInstrument = "choir aahs"
} { \soloVoice }
\addlyrics { \verseOne }
\addlyrics { \verseTwo }
\addlyrics { \verseThree }

coplasSolasContinuo = <<
\new Staff \with {
  instrumentName = "Acomp."%añamiento"
    midiInstrument = "church organ"
} { \clef "bass" \bcSolo }  % perhaps change "tenor" to "bass" for beginners' easier reading
>>

\book {
  \paper {
    print-all-headers = ##t
  }

  \score {
    \header {
      title = #f
        subtitle = #f
        composer = #f
        subsubtitle = "Estribillo"
    }
    <<
      \new GrandStaff <<
      \sopranoVoiceIPart
      \sopranoVoiceIIPart
      \tenorVoicePart
      >>
      \bassoContinuoPart
      >>
      \layout { }
    \midi {
      \tempo 4=120
    }
  }

  \score {
    \header {
      title = #f
        subtitle = #f
        subsubtitle = "Coplas solas"
        composer = #f
    }
    <<
      \coplasSolas
      \coplasSolasContinuo
      >>
      \layout { }
    \midi {
      \tempo 4=120
    }
  }

}

%% Make separate MIDI files for each part
%
%% estribillo
%
%\score {
%  \new Staff { \sopranoVoiceI }
%  \midi { \tempo 4=120 }
%}
%\score {
%  \new Staff  { \sopranoVoiceII }
%  \midi { \tempo 4=120 }
%}
%\score {
%  \new Staff { \tenorVoice }
%  \midi { \tempo 4=120 }
%}
%\score {
%  \new Staff { \bassoContinuoPart }
%  \midi { \tempo 4=120 }
%}
%
%% coplas solas
%\score {
%  \new Staff { \coplasSolas }
%  \midi { \tempo 4=120 }
%}
%\score {
%  \new Staff { \coplasSolasContinuo }
%  \midi { \tempo 4=120 }
%}

