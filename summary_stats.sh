# To summarize how many reads are in raw and trimmed data, how many aligned to the genome, and how many variants sites got from each sample

# To have data in tidy format
# added \t to give distinction in tsv file
#echo -e "filename\ttype\treads" > summary_stats.tsv

# To get read length of raw_fastq files
for raw in data/raw_fastq/*.fastq.gz
do 
  reads=$(zcat $raw | wc -l |awk '{print $1/4}')
  echo -e "$raw\traw\t$reads" >> summary_stats.tsv
done 
