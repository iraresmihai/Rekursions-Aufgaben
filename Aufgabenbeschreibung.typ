#let title = "Übungsaufgaben zu Rekursion"
#let course = ""
#let date = "Oktober 2026"

#set document(title: title)
#set page(
  paper: "a4",
  margin: (x: 125pt, top: 110pt, bottom: 160pt),
  numbering: "1",
)
#set text(font: "New Computer Modern", size: 10pt, lang: "de")
#set par(justify: true, leading: 0.55em, spacing: 0.55em)
#show raw: set text(font: "DejaVu Sans Mono", size: 8.8pt)

#show heading.where(level: 1): it => {
  set text(size: 14.4pt, weight: "bold")
  v(1.4em, weak: true)
  it.body
  v(1em, weak: true)
}
#show heading.where(level: 2): it => {
  set text(size: 12pt, weight: "bold")
  v(2.2em, weak: true)
  it.body
  v(0.9em, weak: true)
}

// Methodensignatur, zentriert abgesetzt
#let sig(code) = block(above: 1.1em, below: 1.1em, width: 100%, align(center, raw(code)))
#let hint(body) = [*Hinweis:* #body]
#let to = $->$

// Titel (\maketitle)
#v(50pt)
#align(center)[
  #text(size: 17.28pt, title)
  #v(0.6em)
  #text(size: 12pt, date)
]
#v(2.2em)

Dies ist kein offizielles EProg-Dokument und wurde daher nicht vom EProg-Team auf
Korrektheit überprüft. Es dient dazu, in der Übungsstunde Rekursion zu üben.

= Kurze Aufgaben

Gegeben ist die Klasse `RecTasks`, die mehrere Methoden zur Übung rekursiven Denkens
enthält. Alle Methoden sollen *rekursiv* implementiert werden. Schleifen sind nicht
erlaubt. Wo nötig, dürfen Sie eine _Hilfsmethode_ definieren, um Zwischenzustände zu
verfolgen (z.#h(0.17em)B. den aktuellen Index oder Teilergebnisse). Verwenden Sie bei
String-Verarbeitung konsequent `substring` anstelle von Indexarithmetik.\
Sie dürfen annehmen, dass keine Eingabe `null` ist. Alle anderen Eigenschaften
(z.#h(0.17em)B. leere Strings oder Arrays) müssen geprüft werden. Eine Methode ist nur
korrekt, wenn alle beschriebenen Bedingungen erfüllt sind.

== Aufgabe 1 — Summe der Elemente

Schreiben Sie eine Methode
#sig("int sum(int[] xs)")
die die Summe aller Elemente eines Arrays berechnet.\
Beispiele: `[]` #to 0\
`[7]` #to 7\
`[2, 5, 1]` #to 8\
#hint[Verwenden Sie eine Hilfsmethode, die den aktuellen Index mitführt. Das erlaubt,
ohne Schleife schrittweise die Summe aufzubauen.]

== Aufgabe 2 — Zeichen zählen

Implementieren Sie
#sig("int count(char c, String s)")
welche zählt, wie oft das Zeichen `c` im String `s` vorkommt. Nutzen Sie
`s.substring(1)` zur Rekursion über den Rest des Strings.\
Beispiele:\
`count('a', "banane")` #to 2\
`count('x', "")` #to 0

== Aufgabe 3 — Sortiertes Array

Implementieren Sie
#sig("boolean isSorted(int[] xs)")
welche überprüft, ob das Array `xs` in *nicht abnehmender Reihenfolge* sortiert ist.\
Beispiele:\
`[]` #to `true`\
`[5]` #to `true`\
`[1,2,2,5]` #to `true`\
`[2,1]` #to `false`\
#hint[Verwenden Sie eine Hilfsmethode mit einem Indexparameter, um das nächste Paar
von Elementen zu vergleichen.]

== Aufgabe 4 — Wiederholungen entfernen

Schreiben Sie eine Methode
#sig("String dedupRuns(String s)")
die aufeinanderfolgende gleiche Zeichen auf ein einziges Zeichen reduziert.\
Beispiele:\
`"aabbcca"` #to `"abca"`\
`"mississippi"` #to `"misisipi"`\
#hint[Verwenden Sie eine Hilfsmethode, die das letzte Zeichen speichert, um
Wiederholungen zu erkennen. Arbeiten Sie mit `substring`, nicht mit Indizes.]

== Aufgabe 5 — Klammern prüfen (balanciert?)

Schreiben Sie eine Methode
#sig("boolean isBalanced(String s)")
die prüft, ob der String aus geschweiften `{ }` Klammern korrekt balanciert ist.\
Beachten Sie:

#v(0.4em)
#list(
  indent: 1em,
  spacing: 1.1em,
  [Jede öffnende Klammer `{` muss später geschlossen werden, und jede schließende Klammer `}` muss zu einer zuvor geöffneten `{` gehören.],
  [Kommt eines der Zeichen `(`, `)`, `[`, `]`, `<`, `>` vor, ist das Ergebnis `false`.],
  [Andere Zeichen dürfen ignoriert werden.],
)
#v(0.4em)

Beispiele:\
`""` #to `true`\
`"{}"` #to `true`\
`"{{}}"` #to `true`\
`"{a{}}"` #to `true`\
`"({a})"` #to `false`\
`"}{"` #to `false`\
`"{"` #to `false`\
#hint[Verwenden Sie eine Hilfsmethode.]