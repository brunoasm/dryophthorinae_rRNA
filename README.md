# Supplementary Material - Phylogeny of Dryophthorinae

This folder contains supplementary code and data used in the inference of the phylogeny of Dryophthorinae.

Chamorro ML, de Medeiros BAS, Farrell BD. in review. First phylogenetic analysis of Dryophthorinae (Coleoptera, Curculionidae) based on structural alignment of ribosomal DNA reveals Cenozoic diversification. Ecology and Evolution

Alignment and uncalibrated Bayesian tree by M. Lourdes Chamorro and other code by Bruno A. S. de Medeiros, 2020.

## Contents

### Code
This folder contains code used in the analyses

* `1-IQTREE`: bash call to IQTREE, input alignment and partitions
* `2-partitionfinder`: input alignment and configuration file to PartitionFinder
* `3-mrbayes`: Inferences in MrBayes, including uncalibrated tree, node dating (ND) and fossilized birth-death (FBD). For the latter 2, we include scripts used to run mrbayes and also to produce summary trees.
* `4-figure`: R code used to produce the figure with calibrated analyses, including html file with R code and output.

### Results
This folder contains results from the analyses in the `Code` folder. 

Results for `4-figure` are included in the Rmarkdown output.

Included folders

* `1-IQTREE`: output files from IQTREE, including tree and best partition scheme
* `2-partitionfinder`: output files from PartitionFinder, including best partition scheme
* `3-mrbayes`: Summary trees obtained from Mrbayes, including posterior distribution for calibrated trees.
