#let ubc-blue = rgb(4.706%, 13.725%, 26.667%)
#let accent-cyan = rgb(0%, 65%, 80%)
#let accent-pink = rgb(90%, 25%, 55%)

#let slide-title(title) = [
  #text(size: 30pt, weight: "bold")[#title]
  #v(0.25cm)
]

#let slide(title: none, body) = [
  #if title == none [
    #heading(level: 2)[]
  ] else [
    #heading(level: 2)[#title]
  ]
  #body
]

#let bullet-title(color, body) = [
  #text(fill: color)[•] #body
]

#let beamer-block(title, body) = [
  #box(
    fill: luma(95%),
    stroke: luma(80%),
    radius: 3pt,
    inset: 8pt,
  )[
    #text(weight: "bold")[#title]
    #v(0.15cm)
    body
  ]
]

#let title-slide(title: none, author: none, graphic: none) = [
  #heading(level: 2)[]
  #align(center)[
    #text(size: 42pt, weight: "bold")[#title]
    #v(0.45cm)
    #text(size: 24pt)[#author]
    #if graphic != none [#v(0.6cm) #graphic]
  ]
]
