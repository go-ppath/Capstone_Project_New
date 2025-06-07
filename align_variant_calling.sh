# script to align the trimmed reads with E. coli genome

#mkdir data/genomes # Make directory for saving E. coli genome

# Download the E. coli genome

#wget -O data/genomes/ecoli_rel606.fna.gz ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/017/985/GCA_000017985.1_ASM1798v1/GCA_000017985.1_ASM1798v1_genomic.fna.gz

#gunzip data/genomes/ecoli_rel606.fna.gz


# Make required directories
#mkdir results/sam
#mkdir results/bam
#mkdir  results/bcf results/vcf

# Load softwares for analysis
#Load BWA
module load BWA/0.7.18-GCCcore-13.3.0

# Load Sam 
#module load SAMtools/1.18-GCC-12.3.0 

# Load bcftools
#module load BCFtools/1.18-GCC-12.3.0 


# Index the complete genome of E. coli using BWA
#bwa index data/genomes/ecoli_rel606.fna

# After indexing, align the genome with paired reads only

# Loop over various paired reads only and allign the reads to the reference E. coli genome

for fwd in data/trimmed_fastq/*_1.paired.fastq.gz
do
   sample=$(basename $fwd _1.paired.fastq.gz)

   rev="data/trimmed_fastq/${sample}_2.paired.fastq.gz"

echo $sample
echo $fwd
echo $rev
echo "processing sample $sample"
# Alignment using the bwa module
bwa mem data/genomes/ecoli_rel606.fna "$fwd" "$rev" > results/sam/${sample}.sam
done
