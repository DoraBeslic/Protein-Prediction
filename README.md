## Methods
**TransDecoder:** A tool developed and included with Trinity, used to identify potential coding regions within reconstructed transcripts.
- **TransDecoder.LongOrfs:** A program that identifies the longest open reading frames (ORFs) in transcript sequences and translates them into amino acid sequences.
- **TransDecoder.Predict:** A program that predicts the most likely coding regions within transcript sequences, based on the ORFs identified and additional coding features.
  
**Blastp:** A program that aligns query protein sequences to a database of protein sequences, identifying regions of similarity to infer functional and evolutionary relationships. 

**Hmmscan:** A tool that uses Hidden Markov Models (HMMs) to match query protein sequences against a database of protein family profiles, such as those in the Pfam HMM profile database, and provides a ranked list of matching protein profiles.

## Workflow
1. **TransDecoder.LongOrfs:** This step identifies long ORFs from the transcriptome. The Trinity de novo transcriptome assembly of RNAseq reads from Aiptasia pallida was specified as the input data, and the output was directed to a specified TransDecoder directory.

2. **Blastp:** The longest ORFs identified by TransDecoder.LongOrfs were aligned to the SwissProt database. The `max_target_seqs` flag was set to one, ensuring only one hit per search, and the `e-value` was set to 1e-5, indicating the number of hits expected by chance. The output was formatted in a tabular format with selected fields, utilizing four threads for processing. The results were saved to the results directory.

3. **Hmmscan:** The longest ORFs identified by TransDecoder.LongOrfs were aligned to a Pfam HMM profile database. Four CPU cores were specified for processing, and the output file for the domain table was saved to the results directory.

4.  **TransDecoder.Predict:** This step predicts proteins from the transcriptome. The Trinity de novo transcriptome assembly of RNAseq reads from Aiptasia pallida was used as the input data, with the output directed to a specified TransDecoder directory. Results from Blastp and Hmmscan were included as ORF retention criteria.

5. **Blastp:** The predicted proteins from TransDecoder.Predict were aligned to the SwissProt database. The e-value was set to 1e-10 and a limit of hits per search was not specified. The output was formatted in a tabular format with selected fields and four threads were specified for processing.

## References

Altschul, S. F., T. L. Madden, A. A. Schäffer, J. Zhang, Z. Zhang, W. Miller, and D. J. Lipman. 1997. "Gapped BLAST and PSI-BLAST: A New Generation of Protein Database Search Programs." Nucleic Acids Res 25 (17): 3389–3402.  

Finn, Robert D., Jody Clements, William Arndt, Benjamin L. Miller, Travis J. Wheeler, Fabian Schreiber, Alex Bateman, and Sean R. Eddy. 2015. "HMMER Web Server: 2015 Update." Nucleic Acids Res 43 (W1): W30–W38.  

Haas, Brian J., Alexie Papanicolaou, Moran Yassour, Manfred Grabherr, Philip D. Blood, Joshua Bowden, Matthew Brian Couger, et al. 2013. "De Novo Transcript Sequence Reconstruction from RNA-Seq Using the Trinity Platform for Reference Generation and Analysis." Nat Protoc 8 (8): 1494–1512.  

Pertsemlidis, A., and 3rd Fondon J. W. 2001. “Having a BLAST with Bioinformatics (and Avoiding BLASTphemy).” Genome Biol 2 (10): REVIEWS2002–REVIEWS2002.  
