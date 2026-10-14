#let title = "Recursion Exercises"
#let course = ""
#let date = "October 2026"

#set document(title: title)
#set page(
  paper: "a4",
  margin: (x: 100pt, top: 90pt, bottom: 110pt),
  numbering: "1",
)
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
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

// Method signature, centered on its own line
#let sig(code) = block(above: 1.1em, below: 1.1em, width: 100%, align(center, raw(code)))
#let hint(body) = [*Hint:* #body]
#let to = $->$

// Title (\maketitle)
#v(20pt)
#align(center)[
  #text(size: 17.28pt, title)
  #v(0.6em)
  #text(size: 12pt, date)
]
#v(2.2em)

This is not an official EProg document and has therefore not been checked for
correctness by the EProg team. Its purpose is to practice recursion in the exercise session.

= Short Exercises

You are given the class `RecTasks`, which contains several methods for practicing
recursive thinking. All methods must be implemented *recursively*. Loops are not
allowed. Where necessary, you may define a _helper method_ to keep track of
intermediate state (e.g., the current index or partial results). When processing
strings, consistently use `substring` instead of index arithmetic.\
You may assume that no input is `null`. All other properties (e.g., empty strings
or arrays) must be checked. A method is only correct if all of the described
conditions are met.

== Exercise 1: Sum of Elements

Write a method
#sig("int sum(int[] xs)")
that computes the sum of all elements of an array.\
Examples: `[]` #to 0\
`[7]` #to 7\
`[2, 5, 1]` #to 8\
#hint[Use a helper method that carries the current index along. This lets you
build up the sum step by step without a loop.]

== Exercise 2: Counting Characters

Implement
#sig("int count(char c, String s)")
which counts how often the character `c` occurs in the string `s`. Use
`s.substring(1)` to recurse over the rest of the string.\
Examples:\
`count('a', "banana")` #to 3\
`count('x', "")` #to 0

== Exercise 3: Sorted Array

Implement
#sig("boolean isSorted(int[] xs)")
which checks whether the array `xs` is sorted in *non-decreasing order*.\
Examples:\
`[]` #to `true`\
`[5]` #to `true`\
`[1,2,2,5]` #to `true`\
`[2,1]` #to `false`\
#hint[Use a helper method with an index parameter to compare the next pair
of elements.]

== Exercise 4: Removing Repetitions

Write a method
#sig("String dedupRuns(String s)")
that reduces consecutive identical characters to a single character.\
Examples:\
`"aabbcca"` #to `"abca"`\
`"mississippi"` #to `"misisipi"`\
#hint[Use a helper method that stores the last character in order to detect
repetitions. Work with `substring`, not with indices.]

== Exercise 5: Checking Brackets (Balanced?)

Write a method
#sig("boolean isBalanced(String s)")
that checks whether the string is correctly balanced with respect to curly braces `{ }`.\
Note:

#v(0.4em)
#list(
  indent: 1em,
  spacing: 1.1em,
  [Every opening brace `{` must be closed later, and every closing brace `}` must belong to a previously opened `{`.],
  [If any of the characters `(`, `)`, `[`, `]`, `<`, `>` occurs, the result is `false`.],
  [All other characters may be ignored.],
)
#v(0.4em)

Examples:\
`""` #to `true`\
`"{}"` #to `true`\
`"{{}}"` #to `true`\
`"{a{}}"` #to `true`\
`"({a})"` #to `false`\
`"}{"` #to `false`\
`"{"` #to `false`\
#hint[Use a helper method.]
