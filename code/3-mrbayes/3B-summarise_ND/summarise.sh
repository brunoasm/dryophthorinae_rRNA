python ../get_posterior_trees.py -b 25 -k 10000 -f fossils.txt -t ../2B*/*.t
sumtrees.py --summary-target mcct --burnin=0 --edges median-age -F nexus -o MCC_ND.tre posterior.trees
