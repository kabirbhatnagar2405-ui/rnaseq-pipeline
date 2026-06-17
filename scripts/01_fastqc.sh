#!/bin/bash

mkdir -p results/qc

fastqc \
data/raw/*.fastq.gz \
-o results/qc

multiqc \
results/qc \
-o results/qc
