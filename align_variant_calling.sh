# script to align the trimmed reads with E. coli genome

#mkdir data/genomes # Make directory for saving E. coli genome

# Download the E. coli genome

#genome_url="ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/017/985/GCA_000017985.1_ASM1798v1/GCA_000017985.1_ASM1798v1_genomic.fna.gz"

#wget -o data/genomes/ecoli_rel606.fna.gz $genome_url

# Make required directories
#mkdir results/sam
#mkdir results/bam
#mkdir  results/bcf results/vcf

# Load softwares for analysis
#Load BWA
module load BWA/0.7.18-GCCcore-13.3.0

# Load Sam 
module load SAMtools/1.18-GCC-12.3.0 

# Load bcftools
module load BCFtools/1.18-GCC-12.3.0 
