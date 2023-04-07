# Methods
## TransDecoder:
### A tool developed and included with Trinity. It assists in identifying potential coding regions within reconstructed transcripts. 
- ## TransDecoder.LongOrfs:
  ### A program that finds the longest open reading frames in input sequences and translates them to amino acid sequences. A Trinity de novo transcriptome assembly was specified as the input data and a transdecoder directory was specified as the output path.  
- ## TransDecoder.Predict:
  ### A program that predicts the likely coding regions from the ORFs identified by TransDecoder.LongOrfs. Blast and hmmer results were included as ORF retention criteria (accessed from the results directory; see below). 
  
## Blast:
### Blast was used to align proteins from the longest open reading frames identified with TransDecoder.LongOrfs to the SwissProt pre-build database. The max_target_seqs flag was set to one, specifying one hit per search, and the e value was set to 1e-5 (filters search results using threshold for number of hits of similar quality that could be found by chance). The output was set to a tabular format with selected fields and four threads were specified. The output file was sent to the results directory.

### Blast was used once again to align predicted proteins to the SwissProt database. The e value was set to 1e-10 and more than one hit per search was allowed. The output was set to a tabular format with selected fields and four threads were specified. 

## Hmmscan:
### A tool that uses a Hidden Markov Model to match protein sequence inputs with a ranked list of protein profiles. Four CPU cores were specified for processing and the output file for the domain table was sent to the results directory. A Pfam HMM profile database file was specifed to be searched against and the longest ORFs file was specified as the input to be searched. 

## References

#### Altschul, S. F., T. L. Madden, A. A. Schäffer, J. Zhang, Z. Zhang, W. Miller, and D. J. Lipman. 1997. "Gapped BLAST and PSI-BLAST: A New Generation of Protein Database Search Programs." Nucleic Acids Res 25 (17): 3389–3402.

#### Finn, Robert D., Jody Clements, William Arndt, Benjamin L. Miller, Travis J. Wheeler, Fabian Schreiber, Alex Bateman, and Sean R. Eddy. 2015. "HMMER Web Server: 2015 Update." Nucleic Acids Res 43 (W1): W30–W38.

#### Haas, Brian J., Alexie Papanicolaou, Moran Yassour, Manfred Grabherr, Philip D. Blood, Joshua Bowden, Matthew Brian Couger, et al. 2013. "De Novo Transcript Sequence Reconstruction from RNA-Seq Using the Trinity Platform for Reference Generation and Analysis." Nat Protoc 8 (8): 1494–1512.

#### Pertsemlidis, A., and 3rd Fondon J. W. 2001. “Having a BLAST with Bioinformatics (and Avoiding BLASTphemy).” Genome Biol 2 (10): REVIEWS2002–REVIEWS2002.
