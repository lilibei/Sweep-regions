#calculate by each chromosome
nohup ~/biotools/sweepfinder/SF2/SweepFinder2 -s 50000 chr20 sw_chr20 &
#merge each file from different chromosome
cat sw_chr1 sw_chr2 sw_chr3 sw_chr4 sw_chr5 sw_chr6 sw_chr7 sw_chr8 sw_chr9 sw_chr10 sw_chr11 sw_chr12 sw_chr13 sw_chr14 sw_chr15 sw_chr16 sw_chr17 sw_chr18 sw_chr19 sw_chr20 sw_chr21 sw_chr22 sw_chr23 sw_chr24 sw_chr25 sw_chr26 | grep -v 'location' > raw_all_chromosomes.sweeps
#add chromosome number
python create_chromosome.py 26 > chromosome_number
paste chromosme_number raw_all_chromosomes.sweeps > sweep_regions
