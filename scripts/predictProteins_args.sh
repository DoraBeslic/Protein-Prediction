#!/usr/bin/env bash
# predictProteins_args.sh
# Usage: bash scripts/predictProteins_args.sh <transcriptome> <transdecoder directory> <domtblout> <outfmt> 1>results/logs/predictProteins.log 2>results/logs/predictProteins.err

TransDecoder.Predict \
    -t $1 \
    -O $2 \
    --retain_pfam_hits $3 \
    --retain_blastp_hits $4
