#import "@preview/diatypst:0.7.0": *
#import "@preview/muchpdf:0.1.0": muchpdf
#import "slides.typ": *

#show: slides.with(
  title: "A little tour of assembly methods",
  subtitle: "CDP PIE Kick-Off Meeting",
  date: "",
  authors: ("Antoine Limasset"),
  ratio: 16/9,
  layout: "large",
  count: "number",
  title-color: ubc-blue,
  toc: false,
  theme: "normal",
  footer-title: "A little tour of assembly methods",
  footer-subtitle: "Antoine Limasset",
  first-slide: false,
)

#title-slide(title: [A little tour of assembly methods], author: [Antoine Limasset Bonsai, CRIStAL, Université de Lille, CNRS
CDP “PIE” Kick-Off Meeting], graphic: [#image("pic/cesky_mini.pdf", width: 100%)])

#slide(title: [#bullet-title(accent-cyan)[Accessing a genome]])[
#image("pic/acgt.jpg", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Reads are subsequences from the genome]])[
#image("pic/sequencing.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Reads are *shuffled* subsequences from the genome]])[
#image("pic/sequencing2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Genome assembly task]])[
#image("pic/assemblytask.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage & depth]])[
#image("pic/coverage.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverageOverlap4.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverageOverlap3.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Poisson law]])[
#image("pic/basecov.png", width: 99%)

 30-60X are often required for assembly projects
]

#slide(title: [#bullet-title(accent-pink)[Longest overlaps]])[
We are more confident in longer overlaps



#image("fig2024/longest_overlap3.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Small overlaps]])[
Can happen "by chance"

#image("fig2024/longest_overlap2.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Back to coverage]])[
#image("pic/coverageOverlap2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Higher coverage, longer overlaps]])[
#image("pic/coverageOverlap1.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph]])[
#image("fig2024/repeat_olc77.png", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Safe paths in an overlap graph]])[
#image("fig2024/repeat_olc7.png", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Multiple repeats]])[
#image("pic/overlapGraphHARD.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[First solution]])[
#image("pic/overlapGraphHARD1.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Second solution]])[
#image("pic/overlapGraphHARD2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Parsimonious solution: do not assemble]])[
#image("pic/overlapGraphHARD3.pdf", width: 90%)
 #align(center)[
*Repeats lead to the fragmentation of the assembly*

Genomes pieces that make *con*sensus across the differents solution are called *Con*tigs
]
]

#slide(title: [#bullet-title(accent-cyan)[The burden of assembly: genomic repeats]])[
#beamer-block([Amount of repeats larger than a given size in _E. coli_ genome])[
- 15: 44,994
- 21: 1,169
- 31: 559
- 41: 323
- 51: 225
- 61: 192
]
 #align(center)[
*Genomic repeats are NOT random events*
]
]

#slide(title: [#bullet-title(accent-pink)[Spanning reads solve repeat]])[
Reads longer than the repeat "solve" it
#image("fig2024/repeat_olc8.png", width: 90%)
The graph becomes trivial to go traverse
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=21

#image("pic/coli21.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=31

#image("pic/jolicoli.png", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=63

#image("pic/coli63.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=255

#image("pic/k255.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=500

#image("pic/k500.png", width: 85%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=1000

#image("pic/k1000.png", width: 85%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=2000

#image("pic/k2000.png", width: 85%)
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph burden: number of overlaps]])[
For each base of the genome:



#align(center)[
#table(
  columns: (auto, auto),
  align: (left, left),
  inset: 4pt,
  [Read Coverage],
    [Overlaps coverage],
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

#slide(title: [#bullet-title(accent-pink)[Another idea for assembly]])[
#align(center)[
#image("fig2024/dbg_intuition1.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[The de Bruijn graph]])[
#image("pic/dbg0.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph assembly]])[
#image("pic/dbg.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs abstract redundancy]])[
#image("fig2024/dbgBIG2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph limitation]])[
#image("pic/dbg3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[How to deal with sequenceing errors: polishing]])[
#image("fig2024/polish.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Handling errors with de Bruijn graphs]])[
#image("pic/kmerspectrum.pdf", width: 100%)

Erroneous $k$-mers are seen less than genomic ones
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer spectrum]])[
#image("pic/spectrum.png", width: 85%)
]

#slide(title: [#bullet-title(accent-cyan)[GC bias]])[
#image("pic/GCbias.jpeg", width: 100%)
   #image("pic/legend.jpeg", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Polyploid assembly]])[
#v(0.4cm)
 #image("fig2024/ploidy1.png", width: 95%)
 Haplotypes can be "phased"
]

#slide(title: [#bullet-title(accent-pink)[Homozygous vs heterozygous regions]])[
#v(0.4cm)
 #image("fig2024/ploidy2.png", width: 90%)
Assembly concession: assembly can be fragmented due to homozygous region
]

#slide(title: [#bullet-title(accent-cyan)[Sequencing error or heterozygosity?]])[
#v(0.4cm)
 #image("fig2024/ploidy4.png", width: 90%)
 Assembly concession: "haploid" assembly due to errors
]

#slide(title: [#bullet-title(accent-cyan)[Heterozygosity in de Bruijn graph]])[
#align(center)[
#image("pic/hetero.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Bubble crushing]])[
#align(center)[
#image("pic/hetero2.pdf", width: 100%)
]
]

#slide(title: [Long "perfect" reads: HiFi or accurate Nanopore])[
#image("fig2024/first_experiment_result2.pdf", width: 90%)
     

- Contigs can reach the chromosome's order of magnitude in length (megabases)
- Breaks due to large repeats
- Haplotypes can be partially reconstructed
- Can be assembled with either de Bruijn graph or overlap graph (cheap to assemble)
]

#slide(title: [Very long noisy reads: Oxford Nanopore and Pacific Bioscience])[
#image("fig2024/second_experiment_result2.pdf", width: 99%)
- Contigs can reach the chromosome's order of magnitude in length (megabases)
- Breaks due to very large repeats
- Contigs are chimeras of haplotypes
- Overlap graph  (costly to assemble)
]

#slide(title: [Accurate short reads: Illumina])[
#image("fig2024/third_experiment_result.pdf", width: 90%)
   
- Very fragmented assembly of short contigs (mostly below 100kb)
- Very high base accuracy
- Contigs are chimeras of haplotypes
- Can miss extreme GC content
- De Bruin graph (cheap to assemble)
]

#slide(title: [Expensive reads: Sanger])[
#image("pic/goldenboy.png", width: 60%)

Billion $\$$ project
]

#slide(title: [#bullet-title(accent-cyan)[Challenge for assembly: Scalability]])[
#grid(
  columns: (0.45fr, 0.45fr),
  gutter: 1cm,
  [- Human Genome project (2001)
- 1000 Genomes project (2015)
- 10k Genomes project (2016)
- 100k Genomes project (2018)
- 500K UK genomes (2023)],
  [#image("pic/gattaca2.jpg", width: 100%)],
)
#v(0.4cm)
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

#slide(title: [#bullet-title(accent-cyan)[Challenge for assembly: Telomere to telomere assembly]])[
#image("pic/human_genome.jpg", width: 49%)
#image("pic/science.jpeg", width: 49%)
]

#slide(title: [#bullet-title(accent-cyan)[Telomere-to-Telomere  consortium]])[
*Has produced in 2021 a complete human genome with one contig per chromosome !*

- 30x PacBio HiFi
- 120x coverage of Oxford Nanopore (ultra long reads)
- 70x PacBio CLR
- Arima Genomics HiC
- BioNano DLS
- 100 authors from 50 labs
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
  [#image("pic/Mistletoe.jpg", width: 99%)],
)
]

#slide(title: [#bullet-title(accent-cyan)[The human genome seems small]])[
#image("pic/humansmall.png", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[The human genome seems really small]])[
#image("pic/humanverysmall.png", width: 75%)
]

#slide(title: [#bullet-title(accent-cyan)[Challenge 3: Base level accuracy]])[
High precision is required to distinguish highly related sequence such as 
- Divergent repeats(intra chromosomes)
- Heterozygosity (inter chromosomes)

#beamer-block([Sequencing technologies are improving])[
- PB $5%$
- ONT $1% -> 0.1%$
- HiFi $0.1%$
- NGS $0.1% -> 0.01%$
]
]

#slide(title: [What is left to do])[
#beamer-block([Megabase level assembly])[
Single library
 
 Fast
]

#beamer-block([T2T assembly])[
Single library
 
 Time expensive
]

#beamer-block([Diploid assembly])[
Many complementary technologies required
 
 Time expensive
]
]

#slide(title: [#bullet-title(accent-cyan)[Accessing a genome]])[
#image("pic/acgt.jpg", width: 100%)

From #link("https://www.genome.gov/genetics-glossary/acgt")
]

#slide(title: [#bullet-title(accent-cyan)[Reads are subsequences from the genome]])[
#image("pic/sequencing.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Reads are *shuffled* subsequences from the genome]])[
#image("pic/sequencing2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Genome assembly task]])[
#image("pic/assemblytask.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Using read overlaps]])[
#image("pic/overlaps.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverage.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverageOverlap4.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverageOverlap3.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverageOverlap2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/coverageOverlap1.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Genome sequencing: coverage]])[
#image("pic/basecov.png", width: 99%)

 30-100X are often required for assembly projects
]

#slide(title: [#bullet-title(accent-cyan)[Which overlap?]])[
#image("pic/greedysimple2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Assembly idea number 1: assemble the longest overlaps]])[
#image("pic/greedysimple1.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Your time to shine!]])[
#image("pic/greedysimple3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[The Greedy solution]])[
#image("pic/greedysimple4.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[The actual solution]])[
#image("pic/greedysimple5.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[What happened?]])[
#image("pic/greedysimple6.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Do we expect many repeats?]])[
#beamer-block([Probability to have NO repeated word of size 31 in a 5 megabases genome])[
#image("pic/calcul.png", width: 100%)
]

From #link("https://en.wikipedia.org/wiki/Birthday_problem")
]

#slide(title: [#bullet-title(accent-cyan)[The burden of assembly: genomic repeats]])[
#beamer-block([Amount of repeats larger than a given size in _E. coli_ genome])[
- 15: 44,994
- 21: 1,169
- 31: 559
- 41: 323
- 51: 225
- 61: 192
]
 #align(center)[
*Genomic repeats are NOT random events*
]
]

#slide(title: [#bullet-title(accent-cyan)[Greedy assemblers]])[
- Simple and efficient scheme
- Rely on *local* best choice (greedy)
- May create errors because of local choices when there are repeats

#image("pic/reggie-panorama-fail.jpeg", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[History: the human genome project while finding a successor to the greedy approach (according to MidJourney)]])[
#image("pic/human_genome.jpg", width: 60%)
]

#slide(title: [#bullet-title(accent-pink)[Graph representation]])[
#image("pic/graph_repr.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Assembly *idea number 2: consider all overlaps*]])[
#image("pic/overlapGraph.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Greedy solution]])[
#image("pic/overlapGraphoutput2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[One piece solution]])[
#image("pic/overlapGraphoutput1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Multiple repeats]])[
#image("pic/overlapGraphHARD.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[First solution]])[
#image("pic/overlapGraphHARD1.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Second solution]])[
#image("pic/overlapGraphHARD2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Parsimonious solution: do not assemble]])[
#image("pic/overlapGraphHARD3.pdf", width: 90%)
 #align(center)[
*Repeats lead to the fragmentation of the assembly*
]
]

#slide(title: [#bullet-title(accent-pink)[Missing information also fragments the assembly]])[
#image("pic/realworld.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Assembly *concession number 1: output fragments*]])[
*In the real world, assemblers often provide pieces of genomes rather than complete ones*
  
#image("pic/assemblyRW.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Overlap graph prerequisite :  all overlaps]])[
#image("pic/overlapGraphfull.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph burden: number of reads]])[
$n(n-1)/2=O(n^2)$ possible overlaps for $n$ reads
#align(center)[
#image("pic/quadratic.png", width: 70%)
]

Linear: 2X data 2X time

Quadratic: 2X data 4X time
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




*The overlap computation is not linear*

Talking about CPU years on large genomes...

We have to be efficient here and focus on "relevant" overlaps
]

#slide(title: [#bullet-title(accent-pink)[Overlap graph simplifications]])[
#align(center)[
#image("pic/olc_simplif.pdf", width: 90%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Overlap graphs in a nutshell]])[
#grid(
  columns: (0.60fr, 0.40fr),
  gutter: 1cm,
  [- Graphs of overlaps between the reads
- Can provide a global solution for assembly
- Can be difficult in real cases because it requires a lot of computation (overlaps)],
  [#align(center)[
#image("pic/melano.pdf", width: 75%)
]],
)
#v(0.4cm)
_S. cerevisiae_, _D. melanogaster_, human could be assembled using overlap graphs approaches (Celera (Myers et al. 2000), SGA (Simpson & Durbin 2011), ...)
]

#slide(title: [#bullet-title(accent-cyan)[History: the introduction of another graph structure for assembly, according to MidJourney]])[
#image("pic/dbg.pdf", width: 70%)
]

#slide(title: [#bullet-title(accent-cyan)[Assembly *idea number 3: Focus on genome words*]])[
#image("pic/intuition_dbg_new0.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Find consecutive genome words in read words]])[
#image("pic/intuition_dbg_new1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[How to connect read words?]])[
#image("pic/intuition_dbg_new2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Reconstitute larger genomic words]])[
#image("pic/intuition_dbg_new3.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[The de Bruijn graph]])[
#image("pic/dbg0.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph assembly]])[
#image("pic/dbg.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph time!]])[
#grid(
  columns: (0.70fr, 0.30fr),
  gutter: 1cm,
  [#image("pic/playDBG.pdf", width: 50%)],
  [Hint: Use 7-mers],
)
]

#slide(title: [#bullet-title(accent-pink)[Solution]])[
#image("pic/dbgBIG.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs abstract redundancy]])[
#image("pic/dbgBIG2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs only rely on $k-1$ overlaps]])[
#image("pic/dbgBIG3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graphs limitation 1: Fixed overlaps]])[
#image("pic/dbg_ov.pdf", width: 100%)
#v(0.4cm)
 GGACT and ACTTA overlap is only of size 3 !
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graphs limitation 2: Repeats]])[
#image("pic/dbg2.pdf", width: 100%)\#v(0.4cm)
 
 each $k$-mer appears only once in a de Bruijn graph
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph limitation]])[
#image("pic/dbg3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graph versus overlap graph]])[
#v(0.4cm)
 #image("pic/dbg_olc2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[On the representation of de Bruijn graphs]])[
#image("pic/fourche.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph on a real dataset]])[
#image("pic/phage.png", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph on a real dataset ZOOMED IN]])[
#image("pic/phage_zoom.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Sequencing errors]])[
#image("pic/seqerrors1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Erroneous $k$-mers vs genomic $k$-mers]])[
#image("pic/kmerspectrum.pdf", width: 100%)

Erroneous $k$-mers are seen less than genomic ones
]

#slide(title: [#bullet-title(accent-pink)[$K$-mer histogram]])[
#image("pic/ecoli300bp100x1p.png", width: 95%)
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

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#image("pic/dbg_bubble.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#image("pic/dbg_bubble2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Errors in de Bruijn graphs]])[
#image("pic/dbg_bubble3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[(Almost assembled phage !)]])[
#image("pic/1repeat.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[de Bruijn graphs in a nutshell]])[
#grid(
  columns: (0.50fr, 0.50fr),
  gutter: 1cm,
  [- Graph of words of size $k$, $k$-1 overlaps
- Collapses identical $k$-mers
- Very successful, have replaced the overlap graphs with high throughput sequencing data
- Still outputs fragments of the genome],
  [#image("pic/white_spruce.jpg", width: 80%)
White spruce, 20 gigabases],
)
]

#slide(title: [#bullet-title(accent-pink)[Multiple $k$ assembly]])[
Most de Bruijn graph assemblers can now perform several assemblies with different $k$-mer sizes to produce an improved "super" assembly

#beamer-block([Exercice])[
Build DBG with k=5 and k=7 from those reads


AAAATCGATCTC

TCTCATCGAATT
]
]

#slide(title: [#bullet-title(accent-cyan)[Multiple $k$ assembly]])[
#image("pic/multik.pdf", width: 80%)
We are missing GATCTCA and ATCTCAT  in the second graph. 

But they are present in the first graph!
]

#slide(title: [#bullet-title(accent-pink)[Multiple $k$ assembly]])[
#image("pic/multiplek2.pdf", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph on an eukaryota]])[
#image("pic/bubbles.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Two or more genomes per individual]])[
#align(center)[
#image("pic/hetero.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Two or more genomes per individual]])[
#align(center)[
#image("pic/hetero2.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-pink)[Assembly *concession number 2*: collapse variability]])[
#align(center)[
#image("pic/variant.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[Paralog genes/repeats]])[
#align(center)[
#image("pic/QUASIREPEATS.png", width: 90%)
]
]

#slide(title: [#bullet-title(accent-pink)[Paralog genes/repeats in graph]])[
#align(center)[
#image("pic/crush.pdf", width: 100%)
]
]

#slide(title: [#bullet-title(accent-cyan)[An assembler is a set of heuristics]])[
#beamer-block([Graph cleaning heuristics])[
- Nodes coverage
- Graph local/global topology
- Reads that can be mapped on nodes
- Estimated coverage/genome size
- ...
]
]

#slide(title: [#bullet-title(accent-pink)[An assembly is a model]])[
+ Assemblies contain errors
+ Different tools can produce very similar assemblies
+ A single tool can produce very different assemblies with small changes of parameters(!)
 
 #image("pic/Identity.png", width: 49%)
    #image("pic/continuity.png", width: 49%)
 
 From #link("https://github.com/rrwick/Long-read-assembler-comparison")
]

#slide(title: [#bullet-title(accent-cyan)[What do we do post-assembly?]])[
#grid(
  columns: (0.30fr, 0.70fr),
  gutter: 1cm,
  [+ Assess its quality
+ Improve it
+ Use it!],
  [#image("pic/polishing.png", width: 100%)
  Two ways to polish an assembly according to MidJourney],
)
]

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

#slide(title: [#bullet-title(accent-pink)[The end]])[
... of the theoretical part (or is it?)

#image("pic/theory.jpg", width: 80%)
]

#slide(title: [Intermission])[

]

#slide(title: [#bullet-title(accent-cyan)[Sanger]])[
#image("pic/sanger.jpg", width: 50%)

- Medium reads approx 1000 bp
- Very low error rate approx 0.01 %
- Low throughput (up to billion of reads per run)
- Costly (\$500/Mb)
No longer used for assembly
]

#slide(title: [#bullet-title(accent-cyan)[Second generation sequencing]])[
#image("pic/sequencers.png", width: 100%)

- Short reads approx 150 bp
- Low error rate  $< 1 % $
- High throughput (up to billion of reads per run)
- Cheap  (\$0.50/Mb)
- GC bias
]

#slide(title: [#bullet-title(accent-pink)[Which assembly strategy is best suited?]])[
- Short reads approx 100 bp
- Low error rate   below $1 % $
- High throughput (up to billions of reads per run)
    Based on long reads properties, which assembly solution would you choose and why?
    #v(0.4cm)
    
Vote!
#grid(
  columns: (0.20fr, 0.30fr, 0.40fr),
  gutter: 1cm,
  [- Greedy],
  [- Overlap graph],
  [- de Bruijn graph],
)
]

#slide(title: [#bullet-title(accent-pink)[Paradigm Breakdown]])[
#beamer-block([Greedy])[
Does not handle repeats #text(fill: red)[$x$]

          Scalable #text(fill: green)[$checkmark$]
]
      #beamer-block([Overlap graph])[
Handles repeats smaller than reads size  #text(fill: green)[$checkmark$]
      
     Extremely expensive to handle billion reads   #text(fill: red)[$x$]
]
      #beamer-block([De Bruijn graph])[
Handle repeat smaller than $k approx$ reads size  #text(fill: green)[$checkmark$]

          Scalable  #text(fill: green)[$checkmark$]
]
]

#slide(title: [#bullet-title(accent-pink)[State-of-the-art]])[
#beamer-block([Well performing assemblers])[
- SPAdes [Bankevich  2012]
- Megahit [Li 2015]
- IDBA [Peng 2012]
]

#image("pic/megahit.png", width: 20%)
#image("pic/spades.jpeg", width: 20%)
#image("pic/idba.png", width: 20%)
#beamer-block([Other notable assemblers])[
- SGA [Simpson 2012]
- Discovar denovo [Weisenfeld 2014]
- Abyss [Simpson 2009]
]
]

#slide(title: [#bullet-title(accent-cyan)[Third generation sequencing]])[
#image("pic/pacbio.png", width: 48%)
#image("pic/nanopore.png", width: 48%)

- Long reads approx 10-100 kbp
- High error rate  (up to $ 10 % $)
- High throughput (up to millions of reads per run)
]

#slide(title: [#bullet-title(accent-cyan)[Nanopore VS Pacbio]])[
#beamer-block([Nanopore])[
- Portable
- Ultra long reads (100kbases, some reads reach the megabase level)
- Mostly deletions
]
#beamer-block([Pacbio])[
- More mature
- HiFi reads (99.9% identity)
- Mostly insertions
]
]

#slide(title: [#bullet-title(accent-pink)[Repeats spanning]])[
#image("pic/spanningbis.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Repeats spanning]])[
#image("pic/spanningbisbis.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=21

#image("pic/coli21.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=31

#image("pic/jolicoli.png", width: 90%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=63

#image("pic/coli63.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=255

#image("pic/k255.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=500

#image("pic/k500.png", width: 85%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=1000

#image("pic/k1000.png", width: 85%)
]

#slide(title: [#bullet-title(accent-cyan)[Read length matters]])[
Read size=2000

#image("pic/k2000.png", width: 85%)
]

#slide(title: [#bullet-title(accent-pink)[Great hope for assembly]])[
#image("pic/onechr.jpg", width: 100%)

From "One chromosome, one contig: complete microbial genomes from long-read sequencing and assembly" Current Opinion in Microbiology 2015
]

#slide(title: [#bullet-title(accent-cyan)[Long reads killed the assembly star]])[
#image("pic/wtf.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Great hope for assembly]])[
#image("pic/plantGenome.png", width: 100%)

From "Chromosome-scale assemblies of plant genomes using nanopore long reads and optical maps" Nature Plants 2018
]

#slide(title: [#bullet-title(accent-pink)[Which assembly strategy is best suited?]])[
- Long reads approx 10 kbp
- High error rate approx 10 %
- High throughput (up to millions of reads per run)
    Based on long reads properties, which assembly solution would you choose and why?
    #v(0.4cm)
    
Vote!
#grid(
  columns: (0.20fr, 0.30fr, 0.40fr),
  gutter: 1cm,
  [- Greedy],
  [- Overlap graph],
  [- de Bruijn graph],
)
]

#slide(title: [#bullet-title(accent-pink)[Long reads for assembly: de Bruijn graph?]])[
#image("pic/dbg_lr.pdf", width: 70%)\#v(0.4cm)

 Most $k$-mers will contain at least an error and will be useless
]

#slide(title: [#bullet-title(accent-cyan)[Long reads for assembly: overlap graph?]])[
Supposed to be super expensive!
 #image("pic/coverageLRvsSR.pdf", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Longer reads, better overlaps]])[
- Less reads for the same coverage
- Larger overlaps
5Mb bacteria example with 100X coverage
#beamer-block([Short reads])[
- 5 million 100bp reads
- 99 bp average overlap
]

#beamer-block([Long reads])[
- 50,000 10kbp reads
- 9,900 bp average overlap
]


#beamer-block([Very long reads])[
- 5,000 100kbp reads
- 99,000 bp average overlap
]
]

#slide(title: [#bullet-title(accent-cyan)[Are large overlaps hard to compute?]])[
#image("pic/seed_extend.png", width: 100%)

Aligning very long and highly erroneous regions is expected to be expensive, as alignment is quadratic approx $O(n^2)$ !
]

#slide(title: [#bullet-title(accent-pink)["Anchor chaining" in overlap graph]])[
#image("pic/lr_overlap.pdf", width: 80%)
#v(0.4cm)
- For long reads: typically Minimap2's [Li 2018] job
- "Anchor chaining": find common chains of anchors ($k$-mers) in the same order in 2 sequences (can be *linear* in practice in most cases)
]

#slide(title: [#bullet-title(accent-pink)[Long reads for assembly: overlap graphs]])[
#image("pic/ovl_lr.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Sequencing errors]])[
#image("pic/seqerrors2.pdf", width: 100%)

High rate of insertions and deletions rendered genome annotation nearly impossible
]

#slide(title: [#bullet-title(accent-pink)[Using coverage to remove noise: Consensus]])[
#image("pic/consensushow.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Exercise 2: Perform a consensus]])[
#image("pic/ReadsPol.png", width: 90%)
]

#slide(title: [#bullet-title(accent-pink)[Exercise 2: Perform a consensus - solution]])[
#image("pic/SolPol.png", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[Consensus during assembly]])[
#image("pic/consensus.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Consensus after  assembly: polishing]])[
#image("pic/polish.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Consensus after  assembly: polishing]])[
#image("pic/polish2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Homopolymers are hard to read]])[
#image("pic/gr1.jpg", width: 50%)
]

#slide(title: [#bullet-title(accent-pink)[Polishing using accurate reads]])[
#image("pic/polish3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Systematics errors]])[
Polishing with Illumina data can improve the final error rate 
   
 #image("pic/polypolish.PNG", width: 100%)
 


From Polypolish: Short-read polishing of long-read bacterial genome assemblies
]

#slide(title: [#bullet-title(accent-cyan)[I know we said it was the end]])[
Just one or two more graphs

#image("pic/theory.jpg", width: 80%)
]

#slide(title: [#bullet-title(accent-cyan)[An overlap graph limitation. Swept under the carpet?]])[
#image("pic/limit_string_graph1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[An olverlap graph limitation. Swept under the carpet?]])[
#image("pic/limit_string_graph2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[An overlap graph limitation. Swept under the carpet?]])[
#image("pic/limit_string_graph3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Long reads for assembly: assembly solved?]])[
#align(center)[
*Assembly is not solved yet*
]

Sometimes the software fails

 #image("pic/robust.png", width: 100%)
 
From #link("https://github.com/rrwick/Long-read-assembler-comparison")
]

#slide(title: [#bullet-title(accent-cyan)[Long reads for assembly: assembly solved?]])[
#align(center)[
*Assembly is not solved yet*
]
Sometimes the data cannot solve the problem
- Very large repeated region
- Low local coverage
- Chimeric/noisy reads
]

#slide(title: [#bullet-title(accent-cyan)[20 years later]])[
#image("pic/human_genome.jpg", width: 49%)
#image("pic/science.jpeg", width: 49%)
]

#slide(title: [#bullet-title(accent-cyan)[Telomere-to-Telomere  consortium]])[
*Has produced in 2021 a complete human genome with one contig per chromosomes !*

- 30x PacBio HiFi
- 120x coverage of Oxford Nanopore (ultra long reads)
- 70x PacBio CLR
- 10X Genomics, BioNano DLS and Arima Genomics HiC
- 100 authors from 50 labs
]

#slide(title: [#bullet-title(accent-pink)[Long reads assemblers]])[
#beamer-block([Best performing assemblers])[
- Flye (Repeat graph) [Kolmogorov et al 2019]
- Raven (OLC) [Vaser et al 2021]
- NECAT/MECAT(OLC) [Xiao et al 2017]
]


  #beamer-block([Other notable assemblers])[
- Canu (Greedy) [Koren et al 2017]
- Shasta (OLC) [Saffin et al 2020]
- Redbean (fuzzy de Bruijn graph) [Ruan 2019]
- ...
]
]

#slide(title: [#bullet-title(accent-pink)[Flye]])[
#image("pic/flye.jpg", width: 95%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph0.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph1.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph2.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Repeat graph]])[
#image("pic/repeat_graph3.pdf", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Repeat graph]])[
#image("pic/flye.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Long read assembly summary]])[
- Overlap graphs with quick overlap computation
- Long reads can span repeats and improve assemblies
- Methods to polish contigs

   #image("pic/funny-long-short-dachshund-crossbreed-dog-stretched-humor-funny-long-dog-profile-isolated-white-134806970.jpg", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Future of assembly]])[
#image("pic/future_assembly_midj.pdf", width: 80%)
 The future of genome sequencing according to MidJourney. Left: yes, but kinda boring. Right: hmmm.
]

#slide(title: [#bullet-title(accent-cyan)[Consensus during sequencing]])[
#image("pic/generate-hifi.png", width: 100%)
 #beamer-block([HiFi data])[
Stands for "High Fidelity"
 
 Very low error rates approx 0.1% ~ 0.01%
 
 Almost only homopolymer errors remain
]
]

#slide(title: [#bullet-title(accent-pink)[HiFi Assembly]])[
With almost error-less long reads we have several promising improvements ahead:
 
- Use de Bruijn graph (more efficient data structures)
- Assemble large genomes very fast
- Perform diploid assembly
]

#slide(title: [#bullet-title(accent-pink)[de Bruijn graph Assembly]])[
Using K=500 and K=5000 de Bruijn graphs to assemble

  #image("pic/khuman.png", width: 80%)
]

#slide(title: [#bullet-title(accent-pink)[Very fast genome assembly]])[
Human genome assembled within 2 hours (Peregrine assembler) and 10 minutes (RMBG assembler)
 
  #image("pic/peregrine.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Diploid assembly]])[
#image("pic/diploid_ass.jpg", width: 100%)
]

#slide(title: [#bullet-title(accent-pink)[Human diploid assembly (20/46 chr)]])[
#image("pic/verko1.png", width: 100%)
 #image("pic/verko2.png", width: 100%)
]

#slide(title: [#bullet-title(accent-cyan)[Ongoing progress]])[
Errors in Nanopore sequencing data are rapidly diminishing
 #image("pic/accuracy_evol.jpeg", width: 90%)

Q20 chemistry achieved  modal accuracy approx 99%
]

#slide(title: [#bullet-title(accent-cyan)[High fidelity Nanopore incoming?]])[
Nanopore duplex reads could deliver long and precise reads in the future
  #image("pic/latestnanopore.png", width: 99%)
]

#slide(title: [#bullet-title(accent-cyan)[Take home messages]])[
#beamer-block([Ultra fast summary])[
- Short reads: de Bruijn graphs / Long reads: Overlap graph
- Repeats are the core issue
- Output fragments of genomes (*contigs*)

- Several parameters and heuristics used in practice
]
]

#slide(title: [#bullet-title(accent-pink)[Ongoing work]])[
#beamer-block([Assembly Challenges])[
- Reconstruct  haplotypes
- Scaling on large genomes
- Robustness to noisy data
- Repetitive regions
]
]

#slide(title: [#bullet-title(accent-pink)[The end]])[
#image("pic/popgen.png", width: 80%)
]
