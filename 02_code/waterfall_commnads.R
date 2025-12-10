# Install maftools if needed
install.packages("BiocManager")
BiocManager::install("maftools")

library(maftools)

# Import and Read the MAF file

laml <- file.choose()
laml <- read.maf(laml)
laml_df <- as.data.frame(laml@data)
png(filename = "waterfallplot.png",
    width = 900, height = 900, units = "px", pointsize = 15,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"), 
    symbolfamily="default")
# Create the waterfall/oncoplot
oncoplot(maf = laml, top = 50)
dev.off()
