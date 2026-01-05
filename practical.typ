#import "@preview/diatypst:0.7.0": *
#import "@preview/muchpdf:0.1.0": muchpdf
#import "slides.typ": *

#show: slides.with(
  title: "A little tour of assembly methods",
  subtitle: "Hands-on session",
  date: "",
  authors: ("Antoine Limasset", "Camille Marchet"),
  ratio: 16/9,
  layout: "large",
  count: "number",
  title-color: ubc-blue,
  toc: false,
  theme: "normal",
  footer-title: "A little tour of assembly methods",
  footer-subtitle: "Antoine Limasset & Camille Marchet",
  first-slide: false,
)

#title-slide(title: [A little tour of assembly methods  Hands-on session], author: [Antoine Limasset & Camille MarchetCRIStAL, Université de Lille, CNRS, France], graphic: [#image("pic/bsky.png", width: 50%)
#image("pic/cesky_mini.pdf", width: 100%)])

#slide(title: [#bullet-title(accent-pink)[Evaluate assembly according to a reference]])[
Contigs can be mapped and compared to a reference/closely related genome

#image("pic/quast.png", width: 100%)

From  #link("https://quast.bioinf.spbau.ru/manual.html")
]

#slide(title: [#bullet-title(accent-pink)[Assembly statistics]])[
#image("pic/quastoutput.png", width: 85%)

From  #link("http://cab.cc.spbu.ru/quast/")
]

#slide(title: [#bullet-title(accent-pink)[Assembly continuity]])[
#beamer-block([N50])[
N50 can be described as a weighted median statistic such that 50% of the entire assembly is contained in contigs or scaffolds equal to or larger than this value.
]
 #image("pic/n50.png", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Assembly continuity]])[
#beamer-block([N50])[
N50 can be described as a weighted median statistic such that 50% of the entire assembly is contained in contigs or scaffolds equal to or larger than this value.
]
 #image("pic/n50.png", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Assembly continuity]])[
#beamer-block([N50])[
N50 can be described as a weighted median statistic such that 50% of the entire assembly is contained in contigs or scaffolds equal to or larger than this value.
]

#beamer-block([N75])[
N75 is the same statistic for 75% of the assembly
]

 
 #beamer-block([NGA50])[
Similar to the N50 but only takes into account contigs/scaffolds that can be *aligned* on the reference genome and consider 50% of the *genome size* instead of the assembly size
]
]

#slide(title: [#bullet-title(accent-pink)[Misassemblies]])[
#image("pic/misa.png", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Visualize assembly]])[
Bandage tool can visualize assembly graphs (GFA)
  #image("pic/bandage.png", width: 100%)

From #link("https://rwick.github.io/Bandage")
]

#slide(title: [#bullet-title(accent-cyan)[Visualize assembly]])[
Bandage tool can visualize assembly graphs (GFA)
 
   #image("pic/simple.png", width: 49%)
  #image("pic/boule.jpg", width: 49%)
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum visualization with KAT]])[
#image("pic/kat2.png", width: 100%)
  From #link("https://kat.readthedocs.io/en/latest/")
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum visualization with KAT]])[
#image("pic/kat3.png", width: 100%)
  From #link("https://kat.readthedocs.io/en/latest/")
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum visualization with KAT]])[
#image("pic/kat4.png", width: 100%)
  From #link("https://kat.readthedocs.io/en/latest/")
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum visualization with KAT]])[
#image("pic/kat5.png", width: 100%)
  From #link("https://kat.readthedocs.io/en/latest/")
]
