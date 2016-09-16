#!/bin/bash

SAMPLE_SHEET=$1

sed 's/\r//g' $SAMPLE_SHEET \
| awk 'BEGIN {FS=","} NR>1 \
{split($2,smtag,"@"); print "qsub","-N","A.00_MERGE_BAM."smtag[1]"_"smtag[2],\
"-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".MERGE.BAM.log",\
"-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".MERGE.BAM.log",\
"/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.00_MERGE_BAM_1.sh",\
$1,$2,$3,$4,$5,$6"\n""sleep 3s"}'

# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.01_DOC_AUTO_CODING."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.AUTO.CODING.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.AUTO.CODING.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.01_DOC_AUTO_CODING.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.02_DOC_AUTO_WG."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.AUTO.WG.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.AUTO.WG.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.02_DOC_AUTO_WG.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.03_DOC_CODING."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.CODING.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.CODING.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.03_DOC_CODING.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.04_DOC_TRANSCRIPT."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.TRANSCRIPT.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".DOC.TRANSCRIPT.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.04_DOC_TRANSCRIPT.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.05_VERIFY_BAM_ID."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".VERIFY.BAM.ID.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".VERIFY.BAM.ID.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.05_VERIFY_BAM_ID.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.06_INSERT_SIZE."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".INSERT.SIZE.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".INSERT.SIZE.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.06_INSERT_SIZE.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.07_ALIGNMENT_SUMMARY_METRICS."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".ALIGNMENT.SUMMARY.METRICS.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".ALIGNMENT.SUMMARY.METRICS.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.07_ALIGNMENT_SUMMARY_METRICS.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.08_BASECALL_Q_SCORE_DISTRIBUTION."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".BASECALL.Q.SCORE.DISTRIBUTION.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".BASECALL.Q.SCORE.DISTRIBUTION.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.08_BASECALL_Q_SCORE_DISTRIBUTION.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.09_GC_BIAS."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".GC.BIAS.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".GC.BIAS.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.09_GC_BIAS.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.10_MEAN_QUALITY_BY_CYCLE."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".MEAN.QUALITY.BY.CYCLE.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".MEAN.QUALITY.BY.CYCLE.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.10_MEAN_QUALITY_BY_CYCLE.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.11_OXIDATION."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".OXIDATION.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".OXIDATION.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.11_OXIDATION.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.12_JUMPING."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".JUMPING.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".JUMPING.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.12_JUMPING.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
# 
# sed 's/\r//g' $SAMPLE_SHEET \
# | awk 'BEGIN {FS=","} NR>1 \
# {split($2,smtag,"@"); print "qsub","-N","A.13_ESTIMATE_LIBRARY."smtag[1]"_"smtag[2],\
# "-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".ESTIMATE.LIBRARY.log",\
# "-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".ESTIMATE.LIBRARY.log",\
# "/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/A.13_ESTIMATE_LIBRARY.sh",\
# $1,$2,$3,$4,$5,$6"\n""sleep 3s"}'

sed 's/\r//g' $SAMPLE_SHEET \
| awk 'BEGIN {FS=","} NR>1 \
{split($2,smtag,"@"); print "qsub","-N","B.01_ANNOTATE_VCF."smtag[1]"_"smtag[2],\
"-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".ANNOTATE.VCF.SINGLE.log",\
"-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".ANNOTATE.VCF.SINGLE.log",\
"/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/B.01_ANNOTATE_VCF.sh",\
$1,$2,$3,$4,$5,$6"\n""sleep 3s"}'

sed 's/\r//g' $SAMPLE_SHEET \
| awk 'BEGIN {FS=","} NR>1 \
{split($2,smtag,"@"); print "qsub","-N","B.02_VQSR_SNP_PLOT."smtag[1]"_"smtag[2],\
"-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".VQSR.SNP.PLOT.SINGLE.log",\
"-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".VQSR.SNP.PLOT.SINGLE.log",\
"/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/B.02_VQSR_SNP_PLOT.sh",\
$1,$2,$3,$4,$5,$6"\n""sleep 3s"}'

sed 's/\r//g' $SAMPLE_SHEET \
| awk 'BEGIN {FS=","} NR>1 \
{split($2,smtag,"@"); print "qsub","-N","B.03_VQSR_INDEL_PLOT."smtag[1]"_"smtag[2],\
"-o","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".VQSR.INDEL.PLOT.SINGLE.log",\
"-e","/isilon/sequencing/Seq_Proj/"$1"/LOGS/"$2".VQSR.INDEL.PLOT.SINGLE.log",\
"/isilon/sequencing/Seq_Proj/"$1"/SCRIPTS/B.03_VQSR_INDEL_PLOT.sh",\
$1,$2,$3,$4,$5,$6"\n""sleep 3s"}'
