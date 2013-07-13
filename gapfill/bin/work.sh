echo "test assembly"
perl /rhome/cjinfeng/software/bin/fastaDeal.pl --sample 1-2 /rhome/cjinfeng/HEG4_cjinfeng/GenomeAlign/Lastz/input/HEG4_RAW.fa > HEG4_RAW.1_2.fa

echo "all.reads for scaffold 1,2"
qsub -q js Gap.sh




