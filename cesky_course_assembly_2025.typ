#import "@preview/diatypst:0.7.0": *
#import "@preview/muchpdf:0.1.0": muchpdf
#import "slides.typ": *

#show: slides.with(
  title: "A \"little\" tour of assembly methods",
  subtitle: "CRIStAL, Université de Lille, CNRS, France",
  date: "",
  authors: ("Camille Marchet and Antoine Limasset"),
  ratio: 16/9,
  layout: "large",
  count: "number",
  title-color: ubc-blue,
  toc: false,
  theme: "normal",
  footer-title: "A \"little\" tour of assembly methods",
  footer-subtitle: "Camille Marchet and Antoine Limasset",
  first-slide: false,
)

#title-slide(title: [A "little" tour of assembly methods], author: [Antoine Limasset CRIStAL, Université de Lille, CNRS, France], graphic: [#image("pic/bsky.png", width: 50%)
#image("pic/cesky_mini.pdf", width: 100%)])
//TODO FIST SLIDE

#slide[
#align(center)[

#image("fig2025/pres.png", width: 95%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Content of this course]])[


#grid(
  columns: (0.40fr, 0.44fr),
  gutter: 1cm,
  [- How to reconstruct a genome with sequencing data?
- What are the main challenges?
- Which solutions have been proposed?
#v(0.4cm)
#v(0.4cm)
Bingo: find a book that we both love (French title).],
  [#image("pic/lungfish.png", width: 100%)
   genome size: $~$ 40 gigabases],
)
]


#slide(title: [#bullet-title(accent-cyan)[Accessing a genome]])[
#align(center)[

#image("pic/acgt.jpg", width: 100%)
]
]


#slide(title: [#bullet-title(accent-cyan)[Reads are subsequences from the genome]])[
#align(center)[

#image("fig2025/beginning1.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Reads are *shuffled* subsequences from the genome]])[
#align(center)[

#image("fig2025/beginning2.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Genome assembly task]])[
#align(center)[

#image("fig2025/beginning3.png", width: 50%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Genome sequencing: depth & coverage]])[
#align(center)[

#image("fig2025/cov1.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Genome sequencing: depth & coverage]])[
#align(center)[

#image("fig2025/cov2.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Genome sequencing: depth & coverage]])[
#align(center)[

#image("fig2025/cov3.png", width: 50%)
]
]

#slide(title: [#bullet-title(accent-pink)[Poisson law]])[
#align(center)[

#image("pic/basecov.png", width:90%)

 //30X are often required for assembly projects
]
]

#slide(title: [#bullet-title(accent-cyan)[First experiment: theoretical, perfect reads]])[
#align(center)[

#image("fig2026/expe1.png", width: 75%)
]
]

#slide(title: [#bullet-title(accent-pink)[Order according to overlaps]])[
#align(center)[

Overlaping reads are likely successive part of the genome
#image("fig2024/longest_overlap3.pdf", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Check all reads for overlaps]])[
#align(center)[

For a given read, scan all others
#image("fig2025/longest_ol1.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Most cases]])[
#align(center)[

No overlap
#image("fig2024/longest_overlap4.pdf", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Small overlaps]])[
#align(center)[

Can happen "by chance"
#image("fig2024/longest_overlap2.pdf", width: 65%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Longest overlaps]])[
#align(center)[

We are more confident in longer overlaps
#image("fig2024/longest_overlap3.pdf", width: 60%)
]
]

#slide(title: [#bullet-title(accent-pink)[Higher depth, longer overlaps]])[
#align(center)[

#image("fig2025/depth.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Something weird happened]])[
#align(center)[

#image("fig2024/weird.png", width: 80%)
]
]

#slide(title: [#bullet-title(accent-cyan)[All longest overlaps]])[
#align(center)[

#image("fig2024/repeat_olc0.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Take into account other overlaps?]])[
#align(center)[

#image("fig2024/repeat_olc4.png", width: 85%)
]
]

#slide(title: [#bullet-title(accent-pink)[Look, a graph!]])[
#align(center)[

#image("fig2025/repeat_olc7.png", width: 90%)
]
]

#slide(title: [#bullet-title(accent-pink)[Unsafe paths in an overlap graph]])[
#align(center)[

#image("fig2026/repeat_olc77.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Safe paths in an overlap graph]])[
#align(center)[

#image("fig2026/repeats_olc7.pdf", width: 60%)
]
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph simplifications]])[
#align(center)[
#image("fig2026/olc_simplif.png", width: 95%)
]
]

#slide(title: [#bullet-title(accent-pink)[Multiple repeats]])[
#align(center)[

#image("pic/overlapGraphHARDb.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[First solution]])[
#align(center)[

#image("pic/overlapGraphHARD1b.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Second solution]])[
#align(center)[

#image("pic/overlapGraphHARD2b.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-pink)[Parsimonious solution: do not assemble]])[
#align(center)[

#image("pic/overlapGraphHARD3b.pdf", width: 90%)
 #align(center)[
*Repeats lead to the fragmentation of the assembly*

Genomes pieces that make *con*sensus across the differents solution are called *Con*tigs
]
]
]

#slide(title: [#bullet-title(accent-pink)[Do we expect many repeats?]])[
#align(center)[

/ Probability to have NO repeated word of size 31 in a 5 megabases genome:
#image("pic/calcul.png", width: 90%)

//TODO NDEGEU
From #link("https://en.wikipedia.org/wiki/Birthday_problem")
]
]

#slide(title: [#bullet-title(accent-cyan)[The burden of assembly: genomic repeats]])[

/ Amount of repeats larger than a given size in Human genome :  21: 34,060,114 \  31: 12,857,884 \  51: 5,094,786 \ 101: 973,550\ 1,001: 53,698\ 10,001: 833\ 100,001: 9 \ 500,001: 8
//- 41: 8,000,517 

//- 61: 3,177,255
//- 71: 2,105,524
//- 81: 1,518,609
//- 91: 1,173,936

//- 201: 380,132
//- 301: 231,206
//- 401: 166,971
//- 501: 130,266

//- 2001: 18,526
//- 3001: 9,656
//- 4001: 5,795
//- 5001: 3757

//- 20001: 157
//- 30001: 69
//- 40001: 41
//- 50001: 25



Example: pericentromeric region of chrI : 20Mb of satellite repeats, identical repeats up to 10kb
 #align(center)[
*Genomic repeats are NOT random events*
]
]


#slide(title: [#bullet-title(accent-pink)[With longer reads]])[
#align(center)[

Reads longer than the repeat "solve" it
#image("fig2024/repeat_olc8.png", width: 70%)
The graph becomes trivial to traverse
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=21)]])[
#align(center)[


#image("pic/coli21.png", width: 50%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=31)]])[
#align(center)[


#image("pic/jolicoli.png", width: 55%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=63)]])[
#align(center)[


#image("pic/coli63.png", width: 50%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=255)]])[
#align(center)[


#image("pic/k255.png", width: 55%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=500)]])[
#align(center)[


#image("pic/k500.png", width: 55%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=1000)]])[
#align(center)[



#image("pic/k1000.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters (Read size=2000)]])[
#align(center)[


#image("pic/k2000.png", width: 50%)
]
]



#slide(title: [#bullet-title(accent-cyan)[First (and most important) checkpoint]])[

/ Remember: Assembly orders reads using overlaps; longer overlaps are *generally* better \ Multiple possible overlaps necessitate graphs for structuring information \ Repeats longer than reads result in fragmented assembly (contigs).
]//TODO MOCHE


#slide(title: [#bullet-title(accent-cyan)[Compute  overlaps]])[
#align(center)[

Detecting overlaps means a lot of comparisons 
#image("fig2024/olc_computation.png", width: 45%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Compute overlaps]])[
#align(center)[

Even considering only the long overlaps means a lot of comparisons 
#image("fig2024/repeat_olc55.png", width: 65%)
]
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph burden: number of reads]])[
#align(center)[
//TODO MOCHE
$n(n-1)/2=O(n^2)$ possible overlaps for $n$ reads

#v(1cm)
#align(center)[
#table(
  columns: (auto, auto),
  align: (left, left),
  inset: 4pt,
  [\# Reads],
    [\# Overlaps],
    [1000],
    [499,500],
    [10,000],
    [50 million],
    [100,000],
    [5 billion],
    [1 million],
    [500 billion],
    [10 million],
    [50 trillion...],
)
]

We have to be efficient and focus on "relevant" overlaps
]
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph burden: number of overlaps]])[
#align(center)[
//TODO MOCHE
For each base of the genome:



#align(center)[
#table(
  columns: (auto, auto),
  align: (left, left),
  inset: 4pt,
  [Read depth],
    [Overlaps depth],
    [10],
    [100],
    [20],
    [400],
    [50],
    [2,500],
    [100],
    [10,000],
) 

#v(0.5cm)

 *The amount of overlaps is not linear*

Linear: 2X data 2X time

Quadratic: 2X data 4X time
]
]
]

#slide(title: [#bullet-title(accent-pink)[Another idea]])[
#align(center)[
#image("fig2025/dbg_intuition1.png", width: 65%)
]
]



#slide(title: [#bullet-title(accent-cyan)[Context]])[
#align(center)[
#image("fig2025/context1.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-pink)[Context]])[
#align(center)[
#image("fig2025/context2.png", width: 100%)
]
]



#slide(title: [#bullet-title(accent-pink)[The de Bruijn graph]])[
#align(center)[

#image("pic/dbg0.pdf", width: 75%)
]
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph assembly]])[
#align(center)[

#image("pic/dbg.pdf", width: 95%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Why bother with k-mers?]])[
#align(center)[

in my graph, $k$-mer size = read size
#v(0.4cm)
#image("fig2025/dumbg.png", width: 95%)
]
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs limitation 1: Fixed overlaps]])[
  #align(center)[

  #align(center)[
#image("pic/dbg_ov.pdf", width: 80%)
  ]GGACT and ACTTA overlap is only of size 3!
  ]
]

#slide(title: [#bullet-title(accent-pink)[Exercise 1: de Bruijn graph time!]])[
#align(center)[

#grid(
  columns: (0.70fr, 0.30fr),
  gutter: 1cm,
  [#image("fig2024/playDBG.png.pdf", width: 55%)],
  [Hint: Use 7-mers],
)
]
]

#slide(title: [#bullet-title(accent-cyan)[Exercise 1: Solution]])[
#align(center)[

#image("fig2024/dbgBIG.pdf", width: 80%)
]
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs abstract redundancy]])[
#align(center)[

#image("fig2024/dbgBIG2.pdf", width: 70%)
]
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs only rely on $k-1$ overlaps]])[
#align(center)[

#image("pic/dbgBIG3.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Coming back to a de Bruijn graph limitation: fixed overlaps]])[
#align(center)[

#image("pic/dbg_ov.pdf", width: 100%)
#v(0.4cm)
 GGACT and ACTTA overlap is only of size 3 !
- A too small $k$ is not a solution
- We would like larger $k$'s but miss connections
]
]//TODO UGLY

/*
#slide(title: [#bullet-title(accent-pink)[Multiple $k$ assembly]])[
#align(center)[

Most de Bruijn graph assemblers can now perform several assemblies with different $k$-mer sizes to produce an improved super assembly

/ Exercise :
Build DBG with k=5 and k=7 from those reads


AAAATCGATCTC

TCTCATCGAATT
]
]
*/
#slide(title: [#bullet-title(accent-cyan)[Multiple $k$ assembly]])[
#align(center)[

#image("pic/multik.pdf", width: 60%)
We are missing GATCTCA and ATCTCAT  in the second graph. 

But they are present in the first graph!
]
]

#slide(title: [#bullet-title(accent-pink)[Multiple $k$ assembly]])[
#align(center)[

#image("pic/multiplek2.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Repeats in a de Bruijn graphs]])[
#align(center)[

#image("pic/dbg2.pdf", width: 100%)
 
// Each $k$-mer appears only once in a de Bruijn graph
]
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs limitation 2: Repeats]])[
#align(center)[

#image("pic/dbg3.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Something is wrong with my assembly]])[
#align(center)[

TODO chimeric fig
]
]

#slide(title: [#bullet-title(accent-cyan)[The boy is diploid!]])[
#align(center)[

#image("fig2026/dog_ploid.png", width: 95%)
]
]

#slide(title: [#bullet-title(accent-pink)[Ploidy and very long reads]])[
 #align(center)[

 #image("fig2024/ploidy1.png", width: 80%)
 Haplotypes can be "phased"
 ]
]

#slide(title: [#bullet-title(accent-pink)[Homozygous vs heterozygous regions]])[
 #align(center)[

 #image("fig2024/ploidy2.png", width: 60%)
Assembly concession: assembly can be fragmented due to ploidy
 ]
]

#slide(title: [#bullet-title(accent-pink)[Method checkpoint: de Bruijn graph versus overlap graph]])[
 #align(center)[

 #image("fig2024/comparison_olc_dbg1.png", width: 70%)
 ]
]

#slide(title: [#bullet-title(accent-cyan)[Data checkpoint: results for the _long, perfect boy_]])[
#align(center)[

#image("fig2026/first_experiment_result2.pdf", width: 90%)
]
- Contigs can reach the chromosome's order of magnitude in length (megabases)
- Breaks due to large repeats
- Haplotypes can be partially reconstructed

]//TODO UGLY

#slide(title: [#bullet-title(accent-cyan)[Second experiment: ONT and PacBio long reads]])[
#align(center)[

#image("fig2026/expe2.png", width: 100%)
]//TODO A BIT UGLY
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph or overlap graph?]])[
#align(center)[

#image("fig2026/choice2.png", width: 70%)

Both after read correction...
]
]


#slide(title: [#bullet-title(accent-cyan)[Overlap graph: inexact matches]])[
#align(center)[

#image("fig2024/compute_overlap1.pdf", width: 60%)

Quadratic alignment  for each pair of reads

Quadratic number of comparisons to perform ...
]
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph: drop alignment]])[
#align(center)[

#image("fig2025/compute_overlap2.png", width: 100%)
#v(1cm)
Procedure called _anchor chaining_.
]
]

#slide(title: [#bullet-title(accent-cyan)[How to get accurate contigs from noisy reads?]])[
#align(center)[

#image("fig2024/olc.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Using coverage to remove noise: consensus]])[
#align(center)[

#image("pic/consensushow.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Consensus before assembly: correction]])[
#align(center)[

#image("fig2024/read_correction.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Consensus during assembly (hence the OLC)]])[
#align(center)[

#image("pic/consensus.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Consensus during assembly. Yes but:]])[
#align(center)[

#image("fig2024/consensus2.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Slides 1-64 apply!]])[
#align(center)[

After correction, we're basically back into an "ideal" scenario just like our first experiment 

Assemblers handling this case are: xxTODO
]
]


#slide(title: [#bullet-title(accent-pink)[Note: consensus *after*  assembly, polishing]])[
#align(center)[

#image("fig2024/polish.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Consensus destroys heterozygosity]])[
 #align(center)[

 #image("fig2024/consensus_ploidy.pdf", width: 90%)
 $->$ a mix between the two alleles
 ]
]

#slide(title: [#bullet-title(accent-pink)[Consensus destroys heterozygosity]])[
 #align(center)[

 #image("fig2024/ploidy4.png", width: 60%)
 Assembly concession: "haploid" assembly due to errors
 ]
]

#slide(title: [#bullet-title(accent-pink)[Method checkpoint: de Bruijn graph vs overlap graph]])[
#align(center)[

#image("fig2024/comparison_olc_dbg2.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Data checkpoint: results for ONT/PacBio long reads]])[
#align(center)[

#image("fig2026/second_experiment_result2.pdf", width: 95%)
]
- Contigs can reach the chromosome's order of magnitude in length (megabases)
- Breaks due to very large repeats
- Contigs are chimeras of haplotypes

]


#slide(title: [#bullet-title(accent-pink)[Phase-aware correction]])[
#align(center)[

TODO
Assemblers handling this case are: xxTODO
]
]

#slide(title: [#bullet-title(accent-cyan)[Third experiment: Illumina short reads]])[
#align(center)[

#image("fig2026/expe3.png", width: 90%)
]

]//TODO A BIT UGL

#slide(title: [de Bruijn graph or overlap graph?])[
#align(center)[

#image("fig2026/choice.png", width: 69%)
]
]

#slide(title: [#bullet-title(accent-pink)[Scalability issue for the overlap graph]])[
#align(center)[

#image("fig2024/third_experiment_olc.png", width: 100%)
]
At equal coverage we got:

1000 $x$ more reads $->$ 1 million $x$ more overlaps to check!


//Overlap graph hardly scales to such a large number of reads/overlaps

$->$ *Overlap graph out!*
Instead short read assemblers use DBGs, such as xxxTODO

]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph on a real dataset]])[
#align(center)[

#image("pic/phage.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph on a real dataset ZOOMED IN]])[
#align(center)[

#image("pic/phage_zoom.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Erroneous $k$-mers vs genomic $k$-mers]])[
#align(center)[

#image("pic/kmerspectrum.pdf", width: 75%)

Erroneous $k$-mers are seen less than genomic ones
]
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer histogram]])[
#align(center)[

#image("pic/ecoli300bp100x1p.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Removing unique $k$-mers]])[
#align(center)[

#image("pic/phagezoomab2.png", width: 50%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Removing $k$-mers seen less than 3 times]])[
#align(center)[

#image("pic/phagezoomab3.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Removing $k$-mers seen less than 4 times]])[
#align(center)[

#image("pic/gap.png", width: 40%)
]
]

#slide(title: [#bullet-title(accent-cyan)[GC bias]])[
#align(center)[

#image("pic/GCbias.jpeg", width: 100%)
   #image("pic/legend.jpeg", width: 100%)
   
   Low GC region can be way less sequenced
]
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#align(center)[

#image("pic/dbg_bubble.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#align(center)[

#image("pic/dbg_bubble2.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#align(center)[

#image("pic/dbg_bubble3.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph on my diploid genome]])[
#align(center)[

#image("pic/bubbles.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Ploidy and de Bruijn graph]])[
#align(center)[
#image("pic/hetero.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Bubble crushing]])[
#align(center)[
#image("pic/hetero2.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Variants are not "lost"]])[
#align(center)[

#align(center)[
#image("pic/variant.pdf", width: 70%)
]
    We can align the reads to the assembly and do variant calling
]
]

#slide(title: [#bullet-title(accent-pink)[Haploid assembly]])[
#align(center)[
#image("fig2024/ploidy3.png", width: 70%)
// Assembly concession: haplotypes are collapsed when using short reads
]
]

#slide(title: [#bullet-title(accent-cyan)[Paralog genes/repeats]])[
#align(center)[
#image("pic/QUASIREPEATS.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Paralog genes/repeats]])[
#align(center)[
#image("fig2024/bubble_repeat_phage.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-pink)[Paralog genes/repeats in graphs]])[
#align(center)[
#image("pic/crush.pdf", width: 80%)
]
]

#slide(title: [#bullet-title(accent-pink)[Method checkpoint:  de Bruijn graph versus overlap graph]])[
#align(center)[

#image("fig2024/comparison_olc_dbg3.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Data checkpoint: _short boy_ results]])[
#align(center)[

#image("fig2026/third_experiment_result.pdf", width: 90%)
]
- Very fragmented assembly of short contigs (mostly below 100kb)
- Very high base accuracy
- Contigs are chimeras of haplotypes
- Can miss low GC content

]

#slide(title: [#bullet-title(accent-cyan)[Fourth experiment: _golden boy_'s genome]])[
#align(center)[

#image("pic/goldenboy.png", width: 40%)

//Billion $\$$ project $->$ ultra long reads
]
]


#slide(title: [#bullet-title(accent-cyan)[Fourth experiment: _golden boy_'s genome]])[
#align(center)[



TODO recap ultra long reads
]
]


#slide(title: [#bullet-title(accent-cyan)[Output of OLC/DBG after long reads assembly]])[
#align(center)[

#image("fig2026/ul_1.png", width: 90%)
]
]


#slide(title: [#bullet-title(accent-cyan)[Phase and fill with ultra long reads]])[
#align(center)[

#image("fig2026/ul_2.png", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[After assembly: scaffolding]])[
#align(center)[

TODO data/method
]
]

#slide(title: [#bullet-title(accent-cyan)[After assembly: scaffolding]])[
#align(center)[

#image("fig2026/scaffolding_result.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Current possibilities summary]])[
#align(center)[

Data:
#image("fig2026/data_table.png", width: 90%)//TODO JAIME PAS
]
]


#slide(title: [#bullet-title(accent-cyan)[Current possibilities summary]])[
#align(center)[

//Assembly pipelines:
#image("fig2026/big_recap.png", width: 80%)
]
]


#slide(title: [#bullet-title(accent-pink)[(Time accurate) recap]])[
#align(center)[

\ Sanger :
No longer used for assembly (too expensive)

   
\ Illumina :
De Bruijn graph assembly
    
Fragmented haploid assembly

   
\ Long reads: Oxford Nanopore or PacBio :
Overlap graph assembly (+ polishing)
    
Contiguous haploid assembly

   
\ HiFi :
Overlap graph or de Bruijn graph assembly
    
Contiguous diploid assembly
]
]//TODO UGLY


#slide(title: [#bullet-title(accent-cyan)[Challenges in assembly]])[
#align(center)[

#image("fig2024/demain_les_chiens.png", width: 30%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Challenge 1: Scalability]])[
#align(center)[

#grid(
  columns: (0.45fr, 0.45fr),
  gutter: 1cm,
  [- Human Genome project (2001)
- 1000 Genomes project (2015)
- 10k Genomes project (2016)
- 100k Genomes project (2018)
- 500K UK genomes (2023)],
  [#image("pic/gattaca2.jpg", width: 80%)],
)//TODO UGLY
Many ambitious sequencing projects beyond human: Earth biogenome project, Vertebrate genome project ...
]
]

#slide(title: [#bullet-title(accent-pink)[History]])[
#align(center)[

How long to assemble a human genome?
- Sanger: #text(fill: red)[MANY CPU  *years*]
- Illumina (Overlap graph): #text(fill: red)[2  CPU *months*]
- Illumina (De Bruijn graph ): #text(fill: green)[A CPU  *day*]
- Long reads (Alignment): #text(fill: red)[2 CPU  *years*]
- Long reads (Anchors chaining): #text(fill: green)[20 CPU  *days*]
- HiFi (Anchors chaining): #text(fill: green)[2 CPU  *days*]
- HiFi (De Bruijn graph): #text(fill: green)[A CPU  *hour*]

 *Algorithms and data structures matter!*
 
 Also long and precise reads are easier to assemble
 //TODO UGLY
]
]

#slide(title: [#bullet-title(accent-pink)[Very fast genome assembly with HiFi]])[
#align(center)[

Human genome assembled within 2 hours (Peregrine assembler) and 10 minutes (RMBG assembler)
 
  #image("pic/peregrine.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Telomere to telomere assembly?]])[
  //TODO TOUTE CETTE SECTION A DISCUTER, PERSO JE GARDERAIS JUSTE LE MESSAGE C DIFFICILE
#align(center)[

#image("pic/human_genome.jpg", width: 39%)#image("pic/science.jpeg", width: 39%)
]//TODO side by side
]

#slide(title: [#bullet-title(accent-pink)[Challenge 2: Telomere to telomere chromosomes]])[
#align(center)[
//TODO UGLY
Main problems:

- Very large exact repeats
- Very similar sequences accross the genome
- Low complexity regions
- Mosaic repeats
    
    #v(1cm)
    
    Need long distance information *AND* high base accuracy
]
]

#slide(title: [#bullet-title(accent-pink)[Scaffolding]])[
#align(center)[

Use long range information to order contigs into "scaffolds"


#image("pic/scafolding.pdf", width: 85%)
]
]

#slide(title: [#bullet-title(accent-pink)[Reference-based Scaffolding/assembly]])[//TODO A FOUTRE JSP 

/ Pros :Do not need high coverage/long distance information to get contigous assemblies

/ Cons :-Need a related good quality reference\ -Bias toward reference sequence, for local and structural variants \ - Map the reads on a reference and compute a consensus (Medaka) \ - Use a reference assembly as existing contigs (SPAdes)\ - Use one (or several) related references genomes to order contigs (Ragout2)
]


#slide(title: [#bullet-title(accent-cyan)[Telomere-to-Telomere  consortium]])[
#align(center)[

*Has produced in 2022 a complete human genome with one contig per chromosome !*

- 30x PacBio HiFi
- 120x coverage of Oxford Nanopore (ultra long reads)
- 70x PacBio CLR
- Arima Genomics HiC
- BioNano DLS
- 100 authors from 50 labs
]
]

#slide(title: [#bullet-title(accent-cyan)[Diploid assembly]])[
#align(center)[

#image("pic/diploid_ass.jpg", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Telomere-to-Telomere diploid human reference]])[
#align(center)[

*T2T-YAO released in  2023 a complete human genome with one contig per chromosome !*

- 92x PacBio HiFi
- 336x coverage of Oxford Nanopore (ultra long reads)
- 70x PacBio CLR
- 584x  Arima Genomics HiC
- BioNano DLS
- Illumina HiSeq 150bp for the son and parents (with 278x and 116x coverage, respectively).
]
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
#align(center)[

Hall of fame of largest assembled genomes of their time:

 #grid(
  columns: (0.40fr, 0.60fr),
  gutter: 1cm,
  [- Pine (20Gb)],
  [#image("pic/pine.jpg", width: 99%)],
)
]
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
#align(center)[

Hall of fame of largest assembled genomes of their time:

 #grid(
  columns: (0.40fr, 0.60fr),
  gutter: 1cm,
  [- Pine (20Gb)
- Axolotl (32Gb)],
  [#image("pic/axo.jpg", width: 99%)],
)
]
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
#align(center)[

Hall of fame of largest assembled genomes of their time:

 #grid(
  columns: (0.40fr, 0.60fr),
  gutter: 1cm,
  [- Pine (20Gb)
- Axolotl (32Gb)
- Lungfish (43Gb)],
  [#image("pic/lungfish.JPG", width: 99%)],
)
]
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
#align(center)[

Hall of fame of largest assembled genomes of their time:
 #grid(
  columns: (0.40fr, 0.60fr),
  gutter: 1cm,
  [- Pine (20Gb)
- Axolotl (32Gb)
- Lungfish (43Gb)
- Mistletoe  (90Gb)
- Metagenomes ...],
  [#image("pic/Mistletoe.jpg", width: 60%)],
)
]
]

#slide(title: [#bullet-title(accent-cyan)[The human genome seems small]])[
#align(center)[

#image("pic/humansmall.png", width: 70%)
]
]

#slide(title: [#bullet-title(accent-cyan)[The human genome seems really small]])[
#align(center)[

#image("pic/humanverysmall.png", width: 50%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Challenge 3: Base level accuracy]])[
#align(center)[

#image("pic/polish2.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Homopolymers are hard to read]])[
#align(center)[

#image("pic/gr1.jpg", width: 34%)
]
]

#slide(title: [#bullet-title(accent-pink)[Systematic errors]])[
#align(center)[

//Polishing with Illumina data can improve the final error rate 
   
   
 #image("pic/polypolish.PNG", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Basecalling progress: Dorado years]])[
#align(center)[

#image("pic/dorado.jpeg", width: 99%)
]
]


/*
#slide(title: [#bullet-title(accent-pink)[Replication outside nanopore HQ]])[
#align(center)[

Post from  Ryan Wick's bioinformatics blog (#link("https://rrwick.github.io/")) reports Q20 reads accuracy and Q60 assemblies on 9 bacterial assemblies

#v(1cm)

#table(
  columns: (auto, auto, auto),
  align: (left, center, center),
  inset: 4pt,
  [*Average*],
    [*Read accuracy*],
    [*Assembly accuracy*],
    [mean],
    [97.7%, Q16.4],
    [4 errors, Q60.43],
    [median],
    [99.1%, Q20.5],
    [2 errors, Q60.43],
    [mode],
    [99.4%, Q22.2],
    [NA],
)
]
]TODO METTRE STATS PHILIPY*/

#slide(title: [#bullet-title(accent-pink)[HiFi-like Nanopore data ?]])[

(Near) error-less very long reads we have several promising improvements ahead:
 
- Very fast assembly
- T2T  chromosomes with less data
- Higher consensus accuracy
- Poplyploid assemblies
]//TODO UGLY


#slide(title: [#bullet-title(accent-pink)[Challenge 4 : Assembly as a software]])[
#align(center)[

#image("pic/hydra.png", width: 39%)
]
]

#slide(title: [#bullet-title(accent-pink)[Assemblers behave differently]])[
#align(center)[

#image("pic/Identity.png", width: 49%)
    #image("pic/continuity.png", width: 49%)
 
 From #link("https://github.com/rrwick/Long-read-assembler-comparison")
]
]

#slide(title: [#bullet-title(accent-pink)[Software robustness]])[
#align(center)[

#image("pic/robust.png", width: 100%)
 
From #link("https://github.com/rrwick/Long-read-assembler-comparison")
]
]//TODO SIDE BY SIDE

#slide(title: [#bullet-title(accent-cyan)[An assembly is a model]])[
#align(center)[

+ Assemblies contain errors
+ Different tools can produce very similar assemblies
+ A single tool can produce very different assemblies with small changes of parameters(!)
]
]//TODO UGLY

#slide(title: [The (first) end])[
#align(center)[

#image("pic/hard.png", width: 80%)//TODO IA
]
]

#slide(title: [Advanced points])[
#align(center)[

If we have time, we'll review everything (while doing this course, I doubt it ...)
    Else, pick one:
- Multiple k assembly in de Bruijn graphs
- HiFi de Bruijn Assembly
- An overlap graph limitation with noisy long reads (and current fixes)
- The repeat graph
]
]



#slide(title: [#bullet-title(accent-pink)[HiFi de Bruijn graph Assembly]])[
#align(center)[

Using very large K (K=500 to K=5000) de Bruijn graphs to assemble

  #image("pic/khuman.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Coming back to the overlap graph simplifications]])[
#align(center)[
#image("pic/olc_simplif.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation when using noisy reads]])[
#align(center)[

#image("pic/limit_string_graph1.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation when using noisy reads]])[
#align(center)[

#image("pic/limit_string_graph2.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation when using noisy reads]])[
#align(center)[

#image("pic/limit_string_graph3.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Read threading alternative]])[
#align(center)[

#image("pic/HL.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-pink)[Fragmented read alternative]])[
#align(center)[

The RAFT tool fragments the reads that does not cover repeats to avoid read inclusion problems.
#image("pic/raft.png", width: 80%)
]
]

#slide(title: [#bullet-title(accent-pink)[Flye]])[
#align(center)[

#image("pic/flye.jpg", width: 60%)
]
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#align(center)[

#image("pic/repeat_graph0.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#align(center)[

#image("pic/repeat_graph1.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#align(center)[

#image("pic/repeat_graph2.pdf", width: 70%)
]
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#align(center)[

#image("pic/repeat_graph3.pdf", width: 70%)
]
]
/*
#slide(title: [The end (Thank you for your attention)])[
#align(center)[

#image("pic/end.png", width: 100%)//TODO IA
]
]

#slide[
#align(center)[

Slides for the practical session
]
]

#slide(title: [#bullet-title(accent-cyan)[Evaluate assembly]])[
#align(center)[

Two cases:
#beamer-block([Reference-based])[
Align contigs to the reference and compare them considering the reference as the ground truth (QUAST).
]

#beamer-block([De novo])[
- Reads analysis (QUAST)
- Kmer analysis  (Merqury)
- Assembly graph analysis (Bandage)
]
]
]

#slide(title: [#bullet-title(accent-pink)[QUAST statistics]])[
#align(center)[

#image("pic/quastoutput.png", width: 85%)

From  #link("http://cab.cc.spbu.ru/quast/")
]
]

#slide(title: [#bullet-title(accent-pink)[Assembly continuity]])[
#align(center)[

#beamer-block([N50])[
N50 can be described as a weighted median statistic such that 50% of the entire assembly is contained in contigs or scaffolds equal to or larger than this value.
]
 #image("pic/n50.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[The catsembler]])[
#align(center)[

#image("pic/catsembler.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-pink)[Assembly continuity]])[
#align(center)[

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
]

#slide(title: [#bullet-title(accent-pink)[Misassemblies]])[
#align(center)[

#image("pic/misa.png", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Visualize assembly]])[
#align(center)[

Bandage tool can visualize assembly graphs (GFA)
  #image("pic/bandage.png", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Visualize assembly]])[
#align(center)[

Bandage tool can visualize assembly graphs (GFA)
 
   #image("pic/simple.png", width: 49%)
  #image("pic/boule.jpg", width: 49%)
]
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum visualization with merqury]])[
#align(center)[

#image("pic/spectra.png", width: 85%)
]
]

#slide(title: [#bullet-title(accent-pink)[Trio $K$-mer spectrum visualization with KAT]])[
#align(center)[

#image("pic/trispectra.png", width: 85%)
]
]

#slide(title: [SPAdes assembler])[
#align(center)[

- Designed to assemble megabase-sized genomes
- Multiple k de Bruijn graph assembly from short reads
- Can use long reads to solve repeats
    
    #beamer-block([Mandatory])[
Short reads
]
    
    #beamer-block([Optional])[
Long reads
]
]
]

#slide(title: [Hifiasm assembler])[
#align(center)[

- Build an overlap graph from HiFi reads
- Generate both haploid and diploid assemblies
- Can use (very) long reads to solve repeats
    
    #beamer-block([Mandatory])[
HiFi reads
]
    
    #beamer-block([Optional])[
Long reads
]
]
]

#slide(title: [Flye assembler])[
#align(center)[

- Build a repeat graph from long reads
- Can use any kind of long reads
- Can also assemble metagenomes
    #beamer-block([Mandatory])[
HiFi/Long reads
]
    
    #beamer-block([Optional])[
HiFi/Long reads
]
]
]

#slide(title: [Unicycler (long read mode)])[
#align(center)[

- Build a overlap graph from long reads
- Polish the assembly
- Also has a short-reads-first similar to SPAdes
     #beamer-block([Mandatory])[
Long reads
]
    
    #beamer-block([Optional])[
Short reads
]
]
]
