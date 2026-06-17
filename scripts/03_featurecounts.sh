#!/bin/bash

featureCounts \
-a data/reference/genes.gtf \
-o results/gene_counts.txt \
results/alignment/*.bam
