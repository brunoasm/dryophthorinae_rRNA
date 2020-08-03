python ../get_posterior_trees.py -b 50 -k 10000 -f fossils.txt -t ../2A*/*.t
sumtrees.py --summary-target mcct --burnin=0 --edges median-age -F nexus -o MCC_FBD.tre posterior.trees
