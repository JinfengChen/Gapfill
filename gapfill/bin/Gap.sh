#!/bin/sh
#PBS -l nodes=1:ppn=10
#PBS -l mem=10gb
#PBS -l walltime=100:00:00

cd $PBS_O_WORKDIR

cpu=10
lib=libraries.txt
asm=HEG4_RAW.1_2.fa
prefix=all.reads

perl /rhome/cjinfeng/software/tools/GapFiller_v1-11_linux-x86_64/GapFiller.pl -l $lib -s $asm -m 70 -o 3 -r 0.7 -n 10 -d 200 -t 10 -g 0 -T $cpu -i 2 -b $prefix
rm -R ./$prefix/alignoutput ./$prefix/reads

echo "Done"
