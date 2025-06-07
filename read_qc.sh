# copy raw_fastq directory from instructor_data
# Run quality control on the raw_fastq data copied from instructor_data


# Run fastqc on raw_fastq data
# Make a new directory qc_results in results folder of capstone_project
#module load FastQC/0.11.9-Java-11
#fastqc -o results/qc_results data/raw_fastq/*.fastq.gz

#Run Multiqc to compile the FASTqc results in one file
# Make a new directory multiqc_results in results forlder of capstone_project
#module load MultiQC/1.14-foss-2022a
#multiqc -o results/multiqc_results results/qc_results

# Trimming the ADAPTERs from the raw_read sequences
# Make a new directory trimmed_fastq in data forlder of capstone_project
# module load Trimmomatic/0.39-Java-13

#TRIMMOMATIC="java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.39.jar"

#for fwd in data/raw_fastq/*_1.fastq.gz
#do
#    sample=$(basename $fwd _1.fastq.gz)

#    echo "Processing sample: $sample"

#    $TRIMMOMATIC PE \
#    data/raw_fastq/${sample}_1.fastq.gz data/raw_fastq/${sample}_2.fastq.gz \
#    data/trimmed_fastq/${sample}_1.paired.fastq.gz data/trimmed_fastq/${sample}_1.unpaired.fastq.gz \
 #   data/trimmed_fastq/${sample}_2.paired.fastq.gz data/trimmed_fastq/${sample}_2.unpaired.fastq.gz \
  #  ILLUMINACLIP:data/raw_fastq/NexteraPE-PE.fa:2:30:10 \
   # LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
#done

# Run the FASTQC on trimmed results
# Load FastQC software
#module load FastQC/0.11.9-Java-11
# Make a ne directory fastqc_trimmed_results in the results forlder of capstone_project
#mkdir results/fastqc_trimmed_results
#fastqc -o results/fastqc_trimmed_results data/trimmed_fastq/*.fastq.gz

#Run MitliQC to compile the trimmed FASTqc results in one file

#module load MultiQC/1.14-foss-2022a
# Make a new directory multi_fastqc_trimmed_results in the results forlder of capstone_project
#mkdir results/multi_fastqc_trimmed_results
#multiqc -o results/multi_fastqc_trimmed_results results/fastqc_trimmed_results

##DONE
