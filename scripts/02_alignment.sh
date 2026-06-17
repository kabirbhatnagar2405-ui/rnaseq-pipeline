#!/bin/bash

mkdir -p results/alignment

STAR \
--runThreadN 8 \
--genomeDir data/reference/star_index \
--readFilesIn data/raw/sample.fastq.gz \
--readFilesCommand zcat \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix results/alignment/sample_
