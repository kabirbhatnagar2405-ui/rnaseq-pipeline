#!/bin/bash

set -e

bash scripts/01_fastqc.sh
bash scripts/02_alignment.sh
bash scripts/03_featurecounts.sh
Rscript scripts/04_deseq2.R

echo "Pipeline completed successfully"
