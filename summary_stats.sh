# To summarize how many reads are in raw and trimmed data, how many aligned to the genome, and how many variants sites got from each sample

# To have data in tidy format
# added \t to give distinction in tsv file
#echo -e "filename\ttype\treads" > summary_stats.tsv

# To get read length of raw_fastq files
#for raw in data/raw_fastq/*.fastq.gz
#do 
 # reads=$(zcat $raw | wc -l |awk '{print $1/4}')
  #echo -e "$raw\traw\t$reads" >> summary_stats.tsv
#done 


# Get read length of trimmed file

#for trim in data/trimmed_fastq/*.fastq.gz
#do
 # echo $trim
  #reads=$(zcat $trim | wc -l |awk '{print $1/4}')
  #echo -e "$trim\ttrimmed\t$reads" >> summary_stats.tsv
#done


# To count how many reads aligned using samtools view
# "samtools view" filters the reads only mapped to the reference genome
# "-F 0x4" excludes reads flagged as unmapped, -F commands to exclude reads with certain FLAG, 0x4 gives the FLAG that "read is unmapped"

module load SAMtools/1.18-GCC-12.3.0

for bam in results/bam/*.sorted.bam
do
  echo $bam
  reads=$(samtools view -F 0x4 "$bam" | wc -l)
  echo -e "$bam\taligned\t$reads" >> summary_stats.tsv
done
