# Waterfall Plot 
### This repository provides a simple and easy-to-follow guide for generating a Mutation Waterfall Plot (Oncoplot) in R.
## Overview
It is widely used in cancer genomics to visualize the mutation landscape across multiple samples.
Oncoplots summarize the distribution and frequency of mutation types across samples, making them essential for understanding genomic alterations in cancer studies.
This tutorial covers importing a MAF file, reading mutation data, and generating a professional waterfall plot that highlights the top mutated genes in your dataset.
The process is simple, reproducible, and suitable for GitHub repositories, research presentations, and publications.
## Dataset Requirements
You need a MAF (Mutation Annotation Format) file, typically obtained from:

TCGA, ICGC, Clinical sequencing data,WES/WGS pipelines (Mutect2, VarScan, Strelka, etc.)
Your MAF file must include:
- Hugo_Symbol – Gene name
- Variant_Classification – Mutation type
- Tumor_Sample_Barcode – Sample ID
- Chromosome, Start_Position, End_Position

Ensure your MAF file is properly formatted and contains no missing essential fields.

Note - I have taken data from TCGA Database
## Step-by-Step Tutorial
1. Install and Load Required Packages

   Install maftools using BiocManager and load it into your R session to access functions for reading and visualizing mutation files.

2. Import Your MAF File

   Use a file chooser or path to load your MAF file into R. The file is converted into a maftools object that contains all mutation and annotation information.

3. Inspect the MAF Data

   View the MAF data extracted by maftools to confirm that gene names, mutation types, and sample IDs are correctly recognized.

4. Generate the Waterfall/Oncoplot

   Use the oncoplot() function to plot the top mutated genes. The plot shows mutation distribution across samples, mutation classifications, and mutation frequency.

5. Save the Plot as an Image

   Export the generated waterfall plot as a PNG file so that it can be used in reports, presentations, or GitHub documentation.

## Use Cases
1. Cancer Mutation Landscape Visualization

   Oncoplots summarize the top mutated genes across tumor samples, helping identify driver mutations and mutation patterns within a cohort.

2. Comparative Mutation Analysis

   Researchers can compare mutation profiles across clinical subgroups, sample types, treatment conditions, or tumor stages.

3. Mutation Signature and Frequency Analysis

   Oncoplots allow quick assessment of mutation counts, variant classifications, and sample-level mutation burden.

