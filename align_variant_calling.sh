# script to align the trimmed reads with E. coli genome

mkdir data/genomes # Make directory for saving E. coli genome

# Download the E. coli genome

genome_url="ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/017/985/GCA_000017985.1_ASM1798v1/GCA_000017985.1_ASM1798v1_genomic.fna.gz"

wget -o data/genomes/ecoli_rel606.fna.gz $genome_url
