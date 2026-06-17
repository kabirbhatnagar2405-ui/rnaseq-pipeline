library(DESeq2)

counts <- read.table(
"results/gene_counts.txt",
header=TRUE,
row.names=1
)

metadata <- read.csv(
"metadata/sample_metadata.csv"
)

dds <- DESeqDataSetFromMatrix(
counts,
metadata,
~ condition
)

dds <- DESeq(dds)

res <- results(dds)

write.csv(
as.data.frame(res),
"results/deseq2_results.csv"
)
