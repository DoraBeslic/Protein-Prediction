## Methods
**TransDecoder:**
A tool developed and included with Trinity. It assists in identifying potential coding regions within reconstructed transcripts. 
- **TransDecoder.LongOrfs:** A program that finds the longest open reading frames in input sequences and translates them to amino acid sequences. 
- **TransDecoder.Predict:** A program that predicts the likely coding regions from the ORFs identified by TransDecoder.LongOrfs. 
  
**Blastp:** A program that aligns query protein sequences to a database of protein sequences. 

**Hmmscan:** A tool that uses a Hidden Markov Model to match query protein sequences with ranked lists of protein profiles from a Pfam HMM profile database. 

## Workflow
- **TransDecoder.LongOrfs:** to identify long ORFs from transcriptome. Trinity de novo transcriptome assembly of RNAseq reads from Aiptasia pallida was specified as the input data and a transdecoder directory was specified as the output path.
- **blastp** to align longest ORFs identified with TransDecoder.LongOrf to the SwissProt database. The max_target_seqs flag was set to one, specifying one hit per search, and the e value was set to 1e-5 (e value indicates number of hits expected by chance). The output was set to a tabular format with selected fields and four threads were specified. The output file was sent to the results directory.
- **hmmscan** to align longest ORFs identified with TransDecoder.LongOrf to a Pfam HMM profile database. Four CPU cores were specified for processing and the output file for the domain table was sent to the results directory.
- **TransDecoder.Predict:** to predict proteins from transcriptome. Trinity de novo transcriptome assembly of RNAseq reads from Aiptasia pallida was specified as the input data and a transdecoder directory was specified as the output path. blastp and hmmscan results (see above) were included as ORF retention criteria.
- **blastp** to align predicted proteins (output of TransDecode.Predict; see above) to the SwissProt database. The e value was set to 1e-10 and more than one hit per search was allowed. The output was set to a tabular format with selected fields and four threads were specified.

## References

Altschul, S. F., T. L. Madden, A. A. Schäffer, J. Zhang, Z. Zhang, W. Miller, and D. J. Lipman. 1997. "Gapped BLAST and PSI-BLAST: A New Generation of Protein Database Search Programs." Nucleic Acids Res 25 (17): 3389–3402.  

Finn, Robert D., Jody Clements, William Arndt, Benjamin L. Miller, Travis J. Wheeler, Fabian Schreiber, Alex Bateman, and Sean R. Eddy. 2015. "HMMER Web Server: 2015 Update." Nucleic Acids Res 43 (W1): W30–W38.  

Haas, Brian J., Alexie Papanicolaou, Moran Yassour, Manfred Grabherr, Philip D. Blood, Joshua Bowden, Matthew Brian Couger, et al. 2013. "De Novo Transcript Sequence Reconstruction from RNA-Seq Using the Trinity Platform for Reference Generation and Analysis." Nat Protoc 8 (8): 1494–1512.  

Pertsemlidis, A., and 3rd Fondon J. W. 2001. “Having a BLAST with Bioinformatics (and Avoiding BLASTphemy).” Genome Biol 2 (10): REVIEWS2002–REVIEWS2002.  
