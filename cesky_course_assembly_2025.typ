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

#slide[
#image("fig2025/pres.png", width: 95%)
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
#image("pic/acgt.jpg", width: 100%)
]


#slide(title: [#bullet-title(accent-cyan)[Reads are subsequences from the genome]])[
#image("fig2025/beginning1.png", width: 70%)
]

#slide(title: [#bullet-title(accent-cyan)[Reads are *shuffled* subsequences from the genome]])[
#image("fig2025/beginning2.png", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Genome assembly task]])[
#image("fig2025/beginning3.png", width: 50%)
]

#slide(title: [#bullet-title(accent-cyan)[Genome sequencing: depth & coverage]])[
#image("fig2025/cov1.png", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Genome sequencing: depth & coverage]])[
#image("fig2025/cov2.png", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Genome sequencing: depth & coverage]])[
#image("fig2025/cov3.png", width: 50%)
]

#slide(title: [#bullet-title(accent-pink)[Poisson law]])[
#image("pic/basecov.png", width: 70%)

 30X are often required for assembly projects
]

#slide(title: [#bullet-title(accent-cyan)[First experiment: theoretical, perfect reads]])[
#image("fig2026/expe1.png", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Order according to overlaps]])[
Overlaping reads are likely successive part of the genome
#image("fig2024/longest_overlap3.pdf", width: 60%)

]

#slide(title: [#bullet-title(accent-cyan)[Check all reads for overlaps]])[
For a given read, scan all others
#image("fig2025/longest_ol1.png", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Most cases]])[
No overlap
#image("fig2024/longest_overlap4.pdf", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Small overlaps]])[
Can happen "by chance"
#image("fig2024/longest_overlap2.pdf", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Longest overlaps]])[
We are more confident in longer overlaps
#image("fig2024/longest_overlap3.pdf", width: 60%)
]

#slide(title: [#bullet-title(accent-pink)[Higher depth, longer overlaps]])[
#image("fig2025/depth.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Something weird happened]])[
#image("fig2024/weird.png", width: 99%)
]

#slide(title: [#bullet-title(accent-cyan)[All longest overlaps]])[
#image("fig2024/repeat_olc0.png", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Take into account other overlaps?]])[
#image("fig2024/repeat_olc4.png", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Look, a graph!]])[
#image("fig2025/repeat_olc7.png", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Unsafe paths in an overlap graph]])[
#image("fig2026/repeat_olc77.png", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Safe paths in an overlap graph]])[
#image("fig2026/repeats_olc7.pdf", width: 50%)
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph simplifications]])[
#align(center)[
#image("fig2026/olc_simplif.png", width: 80%)
]
]

#slide(title: [#bullet-title(accent-pink)[Multiple repeats]])[
#image("pic/overlapGraphHARDb.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[First solution]])[
#image("pic/overlapGraphHARD1b.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Second solution]])[
#image("pic/overlapGraphHARD2b.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Parsimonious solution: do not assemble]])[
#image("pic/overlapGraphHARD3b.pdf", width: 90%)
 #align(center)[
*Repeats lead to the fragmentation of the assembly*

Genomes pieces that make *con*sensus across the differents solution are called *Con*tigs
]
]

#slide(title: [#bullet-title(accent-pink)[Do we expect many repeats?]])[
/ Probability to have NO repeated word of size 31 in a 5 megabases genome:
#image("pic/calcul.png", width: 90%)

//TODO
From #link("https://en.wikipedia.org/wiki/Birthday_problem")
]

#slide(title: [#bullet-title(accent-cyan)[The burden of assembly: genomic repeats]])[
/ Amount of repeats larger than a given size in Human genome :

- 21: 34,060,114
- 31: 12,857,884 
//- 41: 8,000,517 
- 51: 5,094,786 
//- 61: 3,177,255
//- 71: 2,105,524
//- 81: 1,518,609
//- 91: 1,173,936
- 101: 973,550
//- 201: 380,132
//- 301: 231,206
//- 401: 166,971
//- 501: 130,266
- 1,001: 53,698
//- 2001: 18,526
//- 3001: 9,656
//- 4001: 5,795
//- 5001: 3757
- 10,001: 833
//- 20001: 157
//- 30001: 69
//- 40001: 41
//- 50001: 25
- 100,001: 9
- 500,001: 8

 #align(center)[
*Genomic repeats are NOT random events*
]
]

#slide(title: [#bullet-title(accent-pink)[With longer reads]])[
Reads longer than the repeat "solve" it
#image("fig2024/repeat_olc8.png", width: 70%)
The graph becomes trivial to traverse
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=21
#image("pic/coli21.png", width: 40%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=31
#image("pic/jolicoli.png", width: 50%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=63
#image("pic/coli63.png", width: 40%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=255
#image("pic/k255.png", width: 45%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=500
#image("pic/k500.png", width: 55%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=1000

#image("pic/k1000.png", width: 55%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=2000
#image("pic/k2000.png", width: 50%)
]



#slide(title: [#bullet-title(accent-cyan)[First (and most important) checkpoint]])[
- Assembly orders reads using overlaps; longer overlaps are *generally* better.
- Multiple possible overlaps necessitate graphs for structuring information.
- Repeats longer than reads result in fragmented assembly (contigs).
]

#slide(title: [#bullet-title(accent-cyan)[Compute  overlaps]])[
Detecting overlaps means a lot of comparisons 
#image("fig2024/olc_computation.png", width: 45%)
]

#slide(title: [#bullet-title(accent-cyan)[Compute overlaps]])[
Even considering only the long overlaps means a lot of comparisons 
#image("fig2024/repeat_olc55.png", width: 60%)
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph burden: number of reads]])[
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

#slide(title: [#bullet-title(accent-pink)[Overlap graph burden: number of overlaps]])[
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

#slide(title: [#bullet-title(accent-pink)[Another idea]])[
#align(center)[
#image("fig2025/dbg_intuition1.png", width: 60%)
]
]



#slide(title: [#bullet-title(accent-cyan)[Context]])[
#align(center)[
#image("fig2025/context1.png", width: 60%)
]
]

#slide(title: [#bullet-title(accent-pink)[Context]])[
#align(center)[
#image("fig2025/context2.png", width: 100%)
]
]



#slide(title: [#bullet-title(accent-pink)[The de Bruijn graph]])[
#image("pic/dbg0.pdf", width: 70%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph assembly]])[
#image("pic/dbg.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Why bother with k-mers?]])[
in my graph, $k$-mer size = read size
#v(0.4cm)
#image("fig2025/dumbg.png", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs limitation 1: Fixed overlaps]])[
  #align(center)[
#image("pic/dbg_ov.pdf", width: 80%)
  ]GGACT and ACTTA overlap is only of size 3!
]

#slide(title: [#bullet-title(accent-pink)[Exercise 1: de Bruijn graph time!]])[
#grid(
  columns: (0.70fr, 0.30fr),
  gutter: 1cm,
  [#image("fig2024/playDBG.png.pdf", width: 60%)],
  [Hint: Use 7-mers],
)
]

#slide(title: [#bullet-title(accent-cyan)[Exercise 1: Solution]])[
#image("fig2024/dbgBIG.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs abstract redundancy]])[
#image("fig2024/dbgBIG2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs only rely on $k-1$ overlaps]])[
#image("pic/dbgBIG3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Repeats in a de Bruijn graphs]])[
#image("pic/dbg2.pdf", width: 100%)\#v(0.4cm)
 
 each $k$-mer appears only once in a de Bruijn graph
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs limitation 2: Repeats]])[
#image("pic/dbg3.pdf", width: 100%)
]



#slide(title: [#bullet-title(accent-cyan)[The boy is diploid!]])[
#image("fig2026/dog_ploid.png", width: 95%)
]

#slide(title: [#bullet-title(accent-pink)[Ploidy and very long reads]])[
 #image("fig2024/ploidy1.png", width: 80%)
 Haplotypes can be "phased"
]

#slide(title: [#bullet-title(accent-pink)[Homozygous vs heterozygous regions]])[
 #image("fig2024/ploidy2.png", width: 60%)
Assembly concession: assembly can be fragmented due to ploidy
]

#slide(title: [#bullet-title(accent-pink)[Method checkpoint: de Bruijn graph versus overlap graph]])[
 #image("fig2024/comparison_olc_dbg1.png", width: 70%)
]

#slide(title: [#bullet-title(accent-cyan)[Data checkpoint: results for the _long, perfect boy_]])[
#image("fig2026/first_experiment_result2.pdf", width: 90%)

- Contigs can reach the chromosome's order of magnitude in length (megabases)
- Breaks due to large repeats
- Haplotypes can be partially reconstructed
]

#slide(title: [#bullet-title(accent-cyan)[Second experiment: ONT and PacBio long reads]])[
#image("fig2026/expe2.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph or overlap graph?]])[
#image("fig2026/choice2.png", width: 75%)

Both after read correction...
]


#slide(title: [#bullet-title(accent-cyan)[Overlap graph: inexact matches]])[
#image("fig2024/compute_overlap1.pdf", width: 60%)

Quadratic alignment  for each pair of reads

Quadratic number of comparisons to perform ...
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph: drop alignment]])[
#image("fig2025/compute_overlap2.png", width: 100%)
#v(1cm)
Procedure called _anchor chaining_.
]

#slide(title: [#bullet-title(accent-cyan)[How to get accurate contigs from noisy reads?]])[
#image("fig2024/olc.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Using coverage to remove noise: consensus]])[
#image("pic/consensushow.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Consensus before assembly: correction]])[
#image("fig2024/read_correction.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Consensus during assembly (hence the OLC)]])[
#image("pic/consensus.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Consensus during assembly. Yes but:]])[
#image("fig2024/consensus2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Consensus after  assembly: polishing]])[
#image("fig2024/polish.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Consensus destroys heterozygosity]])[
 #image("fig2024/consensus_ploidy.pdf", width: 90%)
 $->$ a mix between the two alleles
]

#slide(title: [#bullet-title(accent-pink)[Consensus destroys heterozygosity]])[
 #image("fig2024/ploidy4.png", width: 60%)
 Assembly concession: "haploid" assembly due to errors
]

#slide(title: [#bullet-title(accent-pink)[Method checkpoint: de Bruijn graph vs overlap graph]])[
#image("fig2024/comparison_olc_dbg2.png", width: 70%)
]

#slide(title: [#bullet-title(accent-cyan)[Data checkpoint: results for ONT/PacBio long reads]])[
#image("fig2026/second_experiment_result2.pdf", width: 90%)
- Contigs can reach the chromosome's order of magnitude in length (megabases)
- Breaks due to very large repeats
- Contigs are chimeras of haplotypes
]

#slide(title: [#bullet-title(accent-cyan)[Third experiment: Illumina short reads]])[
#image("fig2026/expe3.png", width: 99%)
]

#slide(title: [de Bruijn graph or overlap graph?])[
#image("fig2026/choice.png", width: 69%)
]

#slide(title: [#bullet-title(accent-pink)[Scalability issue for the overlap graph]])[
#image("fig2024/third_experiment_olc.png", width: 100%)
At equal coverage we got:

1000 $x$ more reads $->$ 1 million $x$ more overlaps to check!


Overlap graph hardly scales to such a large number of reads/overlaps
#v(1cm)
$->$ *Overlap graph out!*
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph on a real dataset]])[
#image("pic/phage.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph on a real dataset ZOOMED IN]])[
#image("pic/phage_zoom.png", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Erroneous $k$-mers vs genomic $k$-mers]])[
#image("pic/kmerspectrum.pdf", width: 70%)

Erroneous $k$-mers are seen less than genomic ones
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer histogram]])[
#image("pic/ecoli300bp100x1p.png", width: 75%)
]

#slide(title: [#bullet-title(accent-cyan)[Removing unique $k$-mers]])[
#image("pic/phagezoomab2.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Removing $k$-mers seen less than 3 times]])[
#image("pic/phagezoomab3.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Removing $k$-mers seen less than 4 times]])[
#image("pic/gap.png", width: 50%)
]

#slide(title: [#bullet-title(accent-cyan)[GC bias]])[
#image("pic/GCbias.jpeg", width: 100%)
   #image("pic/legend.jpeg", width: 100%)
   
   Low GC region can be way less sequenced
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#image("pic/dbg_bubble.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#image("pic/dbg_bubble2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#image("pic/dbg_bubble3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph on my diploid genome]])[
#image("pic/bubbles.png", width: 100%)
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
#image("pic/variant.pdf", width: 70%)
]
    We can align the reads to the assembly and do variant calling
]

#slide(title: [#bullet-title(accent-pink)[Haploid assembly]])[
#align(center)[
#image("fig2024/ploidy3.png", width: 60%)
 Assembly concession: haplotypes are collapsed when using short reads
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
#image("fig2024/comparison_olc_dbg3.png", width: 70%)
]

#slide(title: [#bullet-title(accent-cyan)[Data checkpoint: _short boy_ results]])[
#image("fig2026/third_experiment_result.pdf", width: 90%)
- Very fragmented assembly of short contigs (mostly below 100kb)
- Very high base accuracy
- Contigs are chimeras of haplotypes
- Can miss low GC content
]

#slide(title: [#bullet-title(accent-cyan)[Fourth experiment: _golden boy_'s genome]])[
#image("pic/goldenboy.png", width: 40%)

Billion $\$$ project $->$ ultra long reads
]


#slide(title: [#bullet-title(accent-cyan)[Fourth experiment: _golden boy_'s genome]])[


TODO recap ultra long reads
]


#slide(title: [#bullet-title(accent-cyan)[Output of OLC/DBG after long reads assembly]])[
#image("fig2026/ul_1.png", width: 40%)

]


#slide(title: [#bullet-title(accent-cyan)[Phase and fill with ultra long reads]])[
#image("fig2026/ul_2.png", width: 40%)

]

#slide(title: [#bullet-title(accent-cyan)[Current possibilities summary]])[
Data:
#image("fig2026/data_table.png", width: 40%)

]


#slide(title: [#bullet-title(accent-cyan)[Current possibilities summary]])[
Assembly pipelines:
#image("fig2026/big_recap.png", width: 40%)

]


#slide(title: [#bullet-title(accent-pink)[(Time accurate) recap]])[
#beamer-block([Sanger])[
No longer used for assembly (too expensive)
]
   
   #beamer-block([Illumina])[
De Bruijn graph assembly
    
    Fragmented haploid assembly
]
   
   #beamer-block([Long reads: Oxford Nanopore or PacBio])[
Overlap graph assembly (+ polishing)
    
    Contiguous haploid assembly
]
   
   #beamer-block([HiFi])[
Overlap graph or de Bruijn graph assembly
    
    Contiguous diploid assembly
]
]

#slide(title: [#bullet-title(accent-cyan)[Back to the present]])[
#image("fig2024/demain_les_chiens.png", width: 40%)
]

#slide(title: [#bullet-title(accent-cyan)[Challenge 1: Scalability]])[
#grid(
  columns: (0.45fr, 0.45fr),
  gutter: 1cm,
  [- Human Genome project (2001)
- 1000 Genomes project (2015)
- 10k Genomes project (2016)
- 100k Genomes project (2018)
- 500K UK genomes (2023)],
  [#image("pic/gattaca2.jpg", width: 80%)],
)
Many ambitious sequencing projects beyond human: Earth biogenome project, Vertebrate genome project ...
]

#slide(title: [#bullet-title(accent-pink)[History]])[
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
]

#slide(title: [#bullet-title(accent-pink)[Very fast genome assembly with HiFi]])[
Human genome assembled within 2 hours (Peregrine assembler) and 10 minutes (RMBG assembler)
 
  #image("pic/peregrine.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Telomere to telomere assembly?]])[
#image("pic/human_genome.jpg", width: 39%)#image("pic/science.jpeg", width: 39%)
]

#slide(title: [#bullet-title(accent-pink)[Challenge 2: Telomere to telomere chromosomes]])[
Main problems:

- Very large exact repeats
- Very similar sequences accross the genome
- Low complexity regions
- Mosaic repeats
    
    #v(1cm)
    
    Need long distance information *AND* high base accuracy
]

#slide(title: [#bullet-title(accent-pink)[Scaffolding]])[
Use long range information to order contigs into "scaffolds"


#image("pic/scafolding.pdf", width: 85%)
]

#slide(title: [#bullet-title(accent-pink)[Reference-based Scaffolding/assembly]])[
/ Pros :Do not need high coverage/long distance information to get contigous assemblies

/ Cons :-Need a related good quality reference -Bias toward reference sequence, for local and structural variants


- Map the reads on a reference and compute a consensus (Medaka)
- Use a reference assembly as existing contigs (SPAdes)
- Use one (or several) related references genomes to order contigs (Ragout2)
]

#slide(title: [#bullet-title(accent-cyan)[Telomere-to-Telomere  consortium]])[
*Has produced in 2022 a complete human genome with one contig per chromosome !*

- 30x PacBio HiFi
- 120x coverage of Oxford Nanopore (ultra long reads)
- 70x PacBio CLR
- Arima Genomics HiC
- BioNano DLS
- 100 authors from 50 labs
]

#slide(title: [#bullet-title(accent-cyan)[Diploid assembly]])[
#image("pic/diploid_ass.jpg", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Telomere-to-Telomere diploid human reference]])[
*T2T-YAO released in  2023 a complete human genome with one contig per chromosome !*

- 92x PacBio HiFi
- 336x coverage of Oxford Nanopore (ultra long reads)
- 70x PacBio CLR
- 584x  Arima Genomics HiC
- BioNano DLS
- Illumina HiSeq 150bp for the son and parents (with 278x and 116x coverage, respectively).
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
Hall of fame of largest assembled genomes of their time:

 #grid(
  columns: (0.40fr, 0.60fr),
  gutter: 1cm,
  [- Pine (20Gb)],
  [#image("pic/pine.jpg", width: 99%)],
)
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
Hall of fame of largest assembled genomes of their time:

 #grid(
  columns: (0.40fr, 0.60fr),
  gutter: 1cm,
  [- Pine (20Gb)
- Axolotl (32Gb)],
  [#image("pic/axo.jpg", width: 99%)],
)
]

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
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

#slide(title: [#bullet-title(accent-cyan)[The human genome is not THAT hard]])[
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

#slide(title: [#bullet-title(accent-cyan)[The human genome seems small]])[
#image("pic/humansmall.png", width: 70%)
]

#slide(title: [#bullet-title(accent-cyan)[The human genome seems really small]])[
#image("pic/humanverysmall.png", width: 50%)
]

#slide(title: [#bullet-title(accent-cyan)[Challenge 3: Base level accuracy]])[
#image("pic/polish2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Homopolymers are hard to read]])[
#image("pic/gr1.jpg", width: 50%)
]

#slide(title: [#bullet-title(accent-pink)[Systematic errors]])[
Polishing with Illumina data can improve the final error rate 
   
   
 #image("pic/polypolish.PNG", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Basecalling progress: Dorado years]])[
#image("pic/dorado.jpeg", width: 99%)
]

#slide(title: [#bullet-title(accent-pink)[Replication outside nanopore HQ]])[
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

#slide(title: [#bullet-title(accent-pink)[HiFi-like Nanopore data ?]])[
(Near) error-less very long reads we have several promising improvements ahead:
 
- Very fast assembly
- T2T  chromosomes with less data
- Higher consensus accuracy
- Poplyploid assemblies
]

#slide(title: [#bullet-title(accent-pink)[Challenge 4 : Assembly as a software]])[
#image("pic/hydra.png", width: 39%)


]

#slide(title: [#bullet-title(accent-pink)[Assemblers behave differently]])[
#image("pic/Identity.png", width: 49%)
    #image("pic/continuity.png", width: 49%)
 
 From #link("https://github.com/rrwick/Long-read-assembler-comparison")
]

#slide(title: [#bullet-title(accent-pink)[Software robustness]])[
#image("pic/robust.png", width: 100%)
 
From #link("https://github.com/rrwick/Long-read-assembler-comparison")
]

#slide(title: [#bullet-title(accent-cyan)[An assembly is a model]])[
+ Assemblies contain errors
+ Different tools can produce very similar assemblies
+ A single tool can produce very different assemblies with small changes of parameters(!)
]

#slide(title: [The (first) end])[
#image("pic/hard.png", width: 80%)
]

#slide(title: [Advanced points])[
If we have time, we'll review everything (while doing this course, I doubt it ...)
    Else, pick one:
- Multiple k assembly in de Bruijn graphs
- HiFi de Bruijn Assembly
- An overlap graph limitation with noisy long reads (and current fixes)
- The repeat graph
]

#slide(title: [#bullet-title(accent-cyan)[Coming back to a de Bruijn graph limitation: fixed overlaps]])[
#image("pic/dbg_ov.pdf", width: 100%)
#v(0.4cm)
 GGACT and ACTTA overlap is only of size 3 !
- A too small $k$ is not a solution
- We would like larger $k$'s but miss connections
]

#slide(title: [#bullet-title(accent-pink)[Multiple $k$ assembly]])[
Most de Bruijn graph assemblers can now perform several assemblies with different $k$-mer sizes to produce an improved super assembly

/ Exercise :
Build DBG with k=5 and k=7 from those reads


AAAATCGATCTC

TCTCATCGAATT

]

#slide(title: [#bullet-title(accent-cyan)[Multiple $k$ assembly]])[
#image("pic/multik.pdf", width: 60%)
We are missing GATCTCA and ATCTCAT  in the second graph. 

But they are present in the first graph!
]

#slide(title: [#bullet-title(accent-pink)[Multiple $k$ assembly]])[
#image("pic/multiplek2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[HiFi de Bruijn graph Assembly]])[
Using very large K (K=500 to K=5000) de Bruijn graphs to assemble

  #image("pic/khuman.png", width: 60%)
]

#slide(title: [#bullet-title(accent-cyan)[Coming back to the overlap graph simplifications]])[
#align(center)[
#image("pic/olc_simplif.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation when using noisy reads]])[
#image("pic/limit_string_graph1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation when using noisy reads]])[
#image("pic/limit_string_graph2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation when using noisy reads]])[
#image("pic/limit_string_graph3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Read threading alternative]])[
#image("pic/HL.png", width: 60%)
]

#slide(title: [#bullet-title(accent-pink)[Fragmented read alternative]])[
The RAFT tool fragments the reads that does not cover repeats to avoid read inclusion problems.
#image("pic/raft.png", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Flye]])[
#image("pic/flye.jpg", width: 60%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph0.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph2.pdf", width: 70%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph3.pdf", width: 70%)
]

#slide(title: [The end (Thank you for your attention)])[
#image("pic/end.png", width: 100%)
]

#slide[
Slides for the practical session
]

#slide(title: [#bullet-title(accent-cyan)[Evaluate assembly]])[
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

#slide(title: [#bullet-title(accent-pink)[QUAST statistics]])[
#image("pic/quastoutput.png", width: 85%)

From  #link("http://cab.cc.spbu.ru/quast/")
]

#slide(title: [#bullet-title(accent-pink)[Assembly continuity]])[
#beamer-block([N50])[
N50 can be described as a weighted median statistic such that 50% of the entire assembly is contained in contigs or scaffolds equal to or larger than this value.
]
 #image("pic/n50.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[The catsembler]])[
#image("pic/catsembler.pdf", width: 90%)
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
]

#slide(title: [#bullet-title(accent-cyan)[Visualize assembly]])[
Bandage tool can visualize assembly graphs (GFA)
 
   #image("pic/simple.png", width: 49%)
  #image("pic/boule.jpg", width: 49%)
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum visualization with merqury]])[
#image("pic/spectra.png", width: 85%)
]

#slide(title: [#bullet-title(accent-pink)[Trio $K$-mer spectrum visualization with KAT]])[
#image("pic/trispectra.png", width: 85%)
]

#slide(title: [SPAdes assembler])[
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

#slide(title: [Hifiasm assembler])[
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

#slide(title: [Flye assembler])[
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

#slide(title: [Unicycler (long read mode)])[
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
