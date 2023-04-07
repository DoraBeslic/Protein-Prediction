#!/usr/bin/env bash
# alignPredicted_args.sh
# usage: bash scripts/alignPredicted_args.sh <predicted proteins> <SwissProt BLAST DB> 1>results/alignedPredicted_args.txt 2>results/logs/alignPredicted_args.err 

blastp -query $1 \
    -db $2 \
    -outfmt "7 qseqid sacc qlen slen nident pident evalue stitle" \
    -evalue 1e-10 -num_threads 4

