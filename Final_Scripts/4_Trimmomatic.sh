#!/bin/bash -l   
#PBS -l walltime=8:00:00,nodes=4:ppn=12,mem=62gb   
#PBS -m abe   
#PBS -e Trimmomatic.error   
#PBS -o Trimmomatic.out   
   
module load trimmomatic   
module load fastqc   
   
cd ~/Metagenomic/Human/N_Trimmed/Homopolymer/Trimmomatic

#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU100_S17_R1_001_prinseq_good_OLyg.fastq ../HU100_S17_R2_001_prinseq_good_Rtjq.fastq HU100_S17_R1_001_prinseq_good_OLyg.fastq.PE HU100_S17_R1_001_prinseq_good_OLyg.fastq.UN HU100_S17_R2_001_prinseq_good_Rtjq.fastq.PE HU100_S17_R2_001_prinseq_good_Rtjq.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU101_S15_R1_001_prinseq_good_JAKY.fastq ../HU101_S15_R2_001_prinseq_good_I9fo.fastq HU101_S15_R1_001_prinseq_good_JAKY.fastq.PE HU101_S15_R1_001_prinseq_good_JAKY.fastq.UN HU101_S15_R2_001_prinseq_good_I9fo.fastq.PE HU101_S15_R2_001_prinseq_good_I9fo.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU103_S22_R1_001_prinseq_good_wZ5w.fastq ../HU103_S22_R2_001_prinseq_good_UH26.fastq HU103_S22_R1_001_prinseq_good_wZ5w.fastq.PE HU103_S22_R1_001_prinseq_good_wZ5w.fastq.UN HU103_S22_R2_001_prinseq_good_UH26.fastq.PE HU103_S22_R2_001_prinseq_good_UH26.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU107_S1_R1_001_prinseq_good_fkQ1.fastq ../HU107_S1_R2_001_prinseq_good_7_eb.fastq HU107_S1_R1_001_prinseq_good_fkQ1.fastq.PE HU107_S1_R1_001_prinseq_good_fkQ1.fastq.UN HU107_S1_R2_001_prinseq_good_7_eb.fastq.PE HU107_S1_R2_001_prinseq_good_7_eb.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU108_S18_R1_001_prinseq_good_QlzH.fastq ../HU108_S18_R2_001_prinseq_good_BAHK.fastq HU108_S18_R1_001_prinseq_good_QlzH.fastq.PE HU108_S18_R1_001_prinseq_good_QlzH.fastq.UN HU108_S18_R2_001_prinseq_good_BAHK.fastq.PE HU108_S18_R2_001_prinseq_good_BAHK.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU109_S19_R1_001_prinseq_good_BxAO.fastq ../HU109_S19_R2_001_prinseq_good_sWzB.fastq HU109_S19_R1_001_prinseq_good_BxAO.fastq.PE HU109_S19_R1_001_prinseq_good_BxAO.fastq.UN HU109_S19_R2_001_prinseq_good_sWzB.fastq.PE HU109_S19_R2_001_prinseq_good_sWzB.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU112_S2_R1_001_prinseq_good_OBtH.fastq ../HU112_S2_R2_001_prinseq_good_YZ7R.fastq HU112_S2_R1_001_prinseq_good_OBtH.fastq.PE HU112_S2_R1_001_prinseq_good_OBtH.fastq.UN HU112_S2_R2_001_prinseq_good_YZ7R.fastq.PE HU112_S2_R2_001_prinseq_good_YZ7R.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU113_S3_R1_001_prinseq_good_SsyW.fastq ../HU113_S3_R2_001_prinseq_good_exsy.fastq HU113_S3_R1_001_prinseq_good_SsyW.fastq.PE HU113_S3_R1_001_prinseq_good_SsyW.fastq.UN HU113_S3_R2_001_prinseq_good_exsy.fastq.PE HU113_S3_R2_001_prinseq_good_exsy.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU114_S27_R1_001_prinseq_good_7ooY.fastq ../HU114_S27_R2_001_prinseq_good___JQ.fastq HU114_S27_R1_001_prinseq_good_7ooY.fastq.PE HU114_S27_R1_001_prinseq_good_7ooY.fastq.UN HU114_S27_R2_001_prinseq_good___JQ.fastq.PE HU114_S27_R2_001_prinseq_good___JQ.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU115_S28_R1_001_prinseq_good_p8Ck.fastq ../HU115_S28_R2_001_prinseq_good_c8rI.fastq HU115_S28_R1_001_prinseq_good_p8Ck.fastq.PE HU115_S28_R1_001_prinseq_good_p8Ck.fastq.UN HU115_S28_R2_001_prinseq_good_c8rI.fastq.PE HU115_S28_R2_001_prinseq_good_c8rI.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU117_S4_R1_001_prinseq_good_uxvZ.fastq ../HU117_S4_R2_001_prinseq_good_5grf.fastq HU117_S4_R1_001_prinseq_good_uxvZ.fastq.PE HU117_S4_R1_001_prinseq_good_uxvZ.fastq.UN HU117_S4_R2_001_prinseq_good_5grf.fastq.PE HU117_S4_R2_001_prinseq_good_5grf.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU118_S5_R1_001_prinseq_good_RXre.fastq ../HU118_S5_R2_001_prinseq_good_MBZg.fastq HU118_S5_R1_001_prinseq_good_RXre.fastq.PE HU118_S5_R1_001_prinseq_good_RXre.fastq.UN HU118_S5_R2_001_prinseq_good_MBZg.fastq.PE HU118_S5_R2_001_prinseq_good_MBZg.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU119_S20_R1_001_prinseq_good_Kh_O.fastq ../HU119_S20_R2_001_prinseq_good_NSH3.fastq HU119_S20_R1_001_prinseq_good_Kh_O.fastq.PE HU119_S20_R1_001_prinseq_good_Kh_O.fastq.UN HU119_S20_R2_001_prinseq_good_NSH3.fastq.PE HU119_S20_R2_001_prinseq_good_NSH3.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU122_S6_R1_001_prinseq_good_NRrq.fastq ../HU122_S6_R2_001_prinseq_good_jNH_.fastq HU122_S6_R1_001_prinseq_good_NRrq.fastq.PE HU122_S6_R1_001_prinseq_good_NRrq.fastq.UN HU122_S6_R2_001_prinseq_good_jNH_.fastq.PE HU122_S6_R2_001_prinseq_good_jNH_.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU123_S7_R1_001_prinseq_good_aikJ.fastq ../HU123_S7_R2_001_prinseq_good_aY1_.fastq HU123_S7_R1_001_prinseq_good_aikJ.fastq.PE HU123_S7_R1_001_prinseq_good_aikJ.fastq.UN HU123_S7_R2_001_prinseq_good_aY1_.fastq.PE HU123_S7_R2_001_prinseq_good_aY1_.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU124_S23_R1_001_prinseq_good_zHKO.fastq ../HU124_S23_R2_001_prinseq_good_k2jQ.fastq HU124_S23_R1_001_prinseq_good_zHKO.fastq.PE HU124_S23_R1_001_prinseq_good_zHKO.fastq.UN HU124_S23_R2_001_prinseq_good_k2jQ.fastq.PE HU124_S23_R2_001_prinseq_good_k2jQ.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU500_S8_R1_001_prinseq_good_HWRS.fastq ../HU500_S8_R2_001_prinseq_good_O0kA.fastq HU500_S8_R1_001_prinseq_good_HWRS.fastq.PE HU500_S8_R1_001_prinseq_good_HWRS.fastq.UN HU500_S8_R2_001_prinseq_good_O0kA.fastq.PE HU500_S8_R2_001_prinseq_good_O0kA.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU502_S24_R1_001_prinseq_good_5oX9.fastq ../HU502_S24_R2_001_prinseq_good_H9AM.fastq HU502_S24_R1_001_prinseq_good_5oX9.fastq.PE HU502_S24_R1_001_prinseq_good_5oX9.fastq.UN HU502_S24_R2_001_prinseq_good_H9AM.fastq.PE HU502_S24_R2_001_prinseq_good_H9AM.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU503_S9_R1_001_prinseq_good_FefH.fastq ../HU503_S9_R2_001_prinseq_good_Sw1C.fastq HU503_S9_R1_001_prinseq_good_FefH.fastq.PE HU503_S9_R1_001_prinseq_good_FefH.fastq.UN HU503_S9_R2_001_prinseq_good_Sw1C.fastq.PE HU503_S9_R2_001_prinseq_good_Sw1C.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU504_S25_R1_001_prinseq_good_KXbX.fastq ../HU504_S25_R2_001_prinseq_good_zYS3.fastq HU504_S25_R1_001_prinseq_good_KXbX.fastq.PE HU504_S25_R1_001_prinseq_good_KXbX.fastq.UN HU504_S25_R2_001_prinseq_good_zYS3.fastq.PE HU504_S25_R2_001_prinseq_good_zYS3.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU505_S21_R1_001_prinseq_good_2Vgk.fastq ../HU505_S21_R2_001_prinseq_good_rtT4.fastq HU505_S21_R1_001_prinseq_good_2Vgk.fastq.PE HU505_S21_R1_001_prinseq_good_2Vgk.fastq.UN HU505_S21_R2_001_prinseq_good_rtT4.fastq.PE HU505_S21_R2_001_prinseq_good_rtT4.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU506_S10_R1_001_prinseq_good_KcHI.fastq ../HU506_S10_R2_001_prinseq_good_pXwj.fastq HU506_S10_R1_001_prinseq_good_KcHI.fastq.PE HU506_S10_R1_001_prinseq_good_KcHI.fastq.UN HU506_S10_R2_001_prinseq_good_pXwj.fastq.PE HU506_S10_R2_001_prinseq_good_pXwj.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU508_S26_R1_001_prinseq_good_O5D0.fastq ../HU508_S26_R2_001_prinseq_good_0ext.fastq HU508_S26_R1_001_prinseq_good_O5D0.fastq.PE HU508_S26_R1_001_prinseq_good_O5D0.fastq.UN HU508_S26_R2_001_prinseq_good_0ext.fastq.PE HU508_S26_R2_001_prinseq_good_0ext.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU537_S11_R1_001_prinseq_good_7hPA.fastq ../HU537_S11_R2_001_prinseq_good_DLJi.fastq HU537_S11_R1_001_prinseq_good_7hPA.fastq.PE HU537_S11_R1_001_prinseq_good_7hPA.fastq.UN HU537_S11_R2_001_prinseq_good_DLJi.fastq.PE HU537_S11_R2_001_prinseq_good_DLJi.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU538_S12_R1_001_prinseq_good_hxY1.fastq ../HU538_S12_R2_001_prinseq_good_DEtR.fastq HU538_S12_R1_001_prinseq_good_hxY1.fastq.PE HU538_S12_R1_001_prinseq_good_hxY1.fastq.UN HU538_S12_R2_001_prinseq_good_DEtR.fastq.PE HU538_S12_R2_001_prinseq_good_DEtR.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU539_S13_R1_001_prinseq_good_FaKf.fastq ../HU539_S13_R2_001_prinseq_good_RsRp.fastq HU539_S13_R1_001_prinseq_good_FaKf.fastq.PE HU539_S13_R1_001_prinseq_good_FaKf.fastq.UN HU539_S13_R2_001_prinseq_good_RsRp.fastq.PE HU539_S13_R2_001_prinseq_good_RsRp.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU540_S14_R1_001_prinseq_good_uxdX.fastq ../HU540_S14_R2_001_prinseq_good_EiSO.fastq HU540_S14_R1_001_prinseq_good_uxdX.fastq.PE HU540_S14_R1_001_prinseq_good_uxdX.fastq.UN HU540_S14_R2_001_prinseq_good_EiSO.fastq.PE HU540_S14_R2_001_prinseq_good_EiSO.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../HU99_S16_R1_001_prinseq_good_rT3P.fastq ../HU99_S16_R2_001_prinseq_good_gv68.fastq HU99_S16_R1_001_prinseq_good_rT3P.fastq.PE HU99_S16_R1_001_prinseq_good_rT3P.fastq.UN HU99_S16_R2_001_prinseq_good_gv68.fastq.PE HU99_S16_R2_001_prinseq_good_gv68.fastq.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80


cd ~/Metagenomic/Gorilla/N_Trimmed/Homopolymer/Trimmomatic   
   
java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_106_CGATGT_L001_R1_001_prinseq_good_id6N.fastq ../2009_106_CGATGT_L001_R2_001_prinseq_good_13d7.fastq  2009_106_CGATGT_L001_R1_001.Combined.fastq_trimmed.PE 2009_106_CGATGT_L001_R1_001.Combined.fastq_trimmed.UN 2009_106_CGATGT_L001_R2_001.Combined.fastq_trimmed.PE 2009_106_CGATGT_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_107_TGACCA_L001_R1_001_prinseq_good_MJcW.fastq ../2009_107_TGACCA_L001_R2_001_prinseq_good__mxR.fastq  2009_107_TGACCA_L001_R1_001.Combined.fastq_trimmed.PE 2009_107_TGACCA_L001_R1_001.Combined.fastq_trimmed.UN 2009_107_TGACCA_L001_R2_001.Combined.fastq_trimmed.PE 2009_107_TGACCA_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_109_ATCACG_L001_R1_001_prinseq_good_ZV9X.fastq ../2009_109_ATCACG_L001_R2_001_prinseq_good_J9Ha.fastq  2009_109_ATCACG_L001_R1_001.Combined.fastq_trimmed.PE 2009_109_ATCACG_L001_R1_001.Combined.fastq_trimmed.UN 2009_109_ATCACG_L001_R2_001.Combined.fastq_trimmed.PE 2009_109_ATCACG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_110_GGTAGC_L001_R1_001_prinseq_good_lPpN.fastq ../2009_110_GGTAGC_L001_R2_001_prinseq_good_5hJy.fastq  2009_110_GGTAGC_L001_R1_001.Combined.fastq_trimmed.PE 2009_110_GGTAGC_L001_R1_001.Combined.fastq_trimmed.UN 2009_110_GGTAGC_L001_R2_001.Combined.fastq_trimmed.PE 2009_110_GGTAGC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_111_ACTTGA_L001_R1_001_prinseq_good_hDb5.fastq ../2009_111_ACTTGA_L001_R2_001_prinseq_good_JYqc.fastq  2009_111_ACTTGA_L001_R1_001.Combined.fastq_trimmed.PE 2009_111_ACTTGA_L001_R1_001.Combined.fastq_trimmed.UN 2009_111_ACTTGA_L001_R2_001.Combined.fastq_trimmed.PE 2009_111_ACTTGA_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_115_GATCAG_L001_R1_001_prinseq_good_XSdM.fastq ../2009_115_GATCAG_L001_R2_001_prinseq_good_GATp.fastq  2009_115_GATCAG_L001_R1_001.Combined.fastq_trimmed.PE 2009_115_GATCAG_L001_R1_001.Combined.fastq_trimmed.UN 2009_115_GATCAG_L001_R2_001.Combined.fastq_trimmed.PE 2009_115_GATCAG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_118_TAGCTT_L001_R1_001_prinseq_good_FSVf.fastq ../2009_118_TAGCTT_L001_R2_001_prinseq_good_hHeB.fastq  2009_118_TAGCTT_L001_R1_001.Combined.fastq_trimmed.PE 2009_118_TAGCTT_L001_R1_001.Combined.fastq_trimmed.UN 2009_118_TAGCTT_L001_R2_001.Combined.fastq_trimmed.PE 2009_118_TAGCTT_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_173_ACAGTG_L001_R1_001_prinseq_good_0aB6.fastq ../2009_173_ACAGTG_L001_R2_001_prinseq_good_obnw.fastq  2009_173_ACAGTG_L001_R1_001.Combined.fastq_trimmed.PE 2009_173_ACAGTG_L001_R1_001.Combined.fastq_trimmed.UN 2009_173_ACAGTG_L001_R2_001.Combined.fastq_trimmed.PE 2009_173_ACAGTG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_193_GCCAAT_L001_R1_001_prinseq_good_9isD.fastq ../2009_193_GCCAAT_L001_R2_001_prinseq_good_8tX9.fastq  2009_193_GCCAAT_L001_R1_001.Combined.fastq_trimmed.PE 2009_193_GCCAAT_L001_R1_001.Combined.fastq_trimmed.UN 2009_193_GCCAAT_L001_R2_001.Combined.fastq_trimmed.PE 2009_193_GCCAAT_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_245_CAGATC_L001_R1_001_prinseq_good_6exD.fastq ../2009_245_CAGATC_L001_R2_001_prinseq_good_7NFI.fastq  2009_245_CAGATC_L001_R1_001.Combined.fastq_trimmed.PE 2009_245_CAGATC_L001_R1_001.Combined.fastq_trimmed.UN 2009_245_CAGATC_L001_R2_001.Combined.fastq_trimmed.PE 2009_245_CAGATC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2009_265_CTTGTA_L001_R1_001_prinseq_good_azJL.fastq ../2009_265_CTTGTA_L001_R2_001_prinseq_good_40fu.fastq  2009_265_CTTGTA_L001_R1_001.Combined.fastq_trimmed.PE 2009_265_CTTGTA_L001_R1_001.Combined.fastq_trimmed.UN 2009_265_CTTGTA_L001_R2_001.Combined.fastq_trimmed.PE 2009_265_CTTGTA_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_109_GTTTCG_L001_R1_001_prinseq_good_z8ff.fastq ../2011_109_GTTTCG_L001_R2_001_prinseq_good_XHRF.fastq  2011_109_GTTTCG_L001_R1_001.Combined.fastq_trimmed.PE 2011_109_GTTTCG_L001_R1_001.Combined.fastq_trimmed.UN 2011_109_GTTTCG_L001_R2_001.Combined.fastq_trimmed.PE 2011_109_GTTTCG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_118_CGTACG_L001_R1_001_prinseq_good_PK4A.fastq ../2011_118_CGTACG_L001_R2_001_prinseq_good_S2_g.fastq  2011_118_CGTACG_L001_R1_001.Combined.fastq_trimmed.PE 2011_118_CGTACG_L001_R1_001.Combined.fastq_trimmed.UN 2011_118_CGTACG_L001_R2_001.Combined.fastq_trimmed.PE 2011_118_CGTACG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_119_GAGTGG_L001_R1_001_prinseq_good_yNJW.fastq ../2011_119_GAGTGG_L001_R2_001_prinseq_good_0Ap3.fastq  2011_119_GAGTGG_L001_R1_001.Combined.fastq_trimmed.PE 2011_119_GAGTGG_L001_R1_001.Combined.fastq_trimmed.UN 2011_119_GAGTGG_L001_R2_001.Combined.fastq_trimmed.PE 2011_119_GAGTGG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_149_GTCCGC_L001_R1_001_prinseq_good_qgHy.fastq ../2011_149_GTCCGC_L001_R2_001_prinseq_good_ozI8.fastq  2011_149_GTCCGC_L001_R1_001.Combined.fastq_trimmed.PE 2011_149_GTCCGC_L001_R1_001.Combined.fastq_trimmed.UN 2011_149_GTCCGC_L001_R2_001.Combined.fastq_trimmed.PE 2011_149_GTCCGC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_56_GGCTAC_L001_R1_001_prinseq_good_3B1U.fastq ../2011_56_GGCTAC_L001_R2_001_prinseq_good_zGBI.fastq  2011_56_GGCTAC_L001_R1_001.Combined.fastq_trimmed.PE 2011_56_GGCTAC_L001_R1_001.Combined.fastq_trimmed.UN 2011_56_GGCTAC_L001_R2_001.Combined.fastq_trimmed.PE 2011_56_GGCTAC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_60_AGTCAA_L001_R1_001_prinseq_good_5qaN.fastq ../2011_60_AGTCAA_L001_R2_001_prinseq_good_yiQy.fastq  2011_60_AGTCAA_L001_R1_001.Combined.fastq_trimmed.PE 2011_60_AGTCAA_L001_R1_001.Combined.fastq_trimmed.UN 2011_60_AGTCAA_L001_R2_001.Combined.fastq_trimmed.PE 2011_60_AGTCAA_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_62_AGTTCC_L001_R1_001_prinseq_good_ihr5.fastq ../2011_62_AGTTCC_L001_R2_001_prinseq_good_dmLy.fastq  2011_62_AGTTCC_L001_R1_001.Combined.fastq_trimmed.PE 2011_62_AGTTCC_L001_R1_001.Combined.fastq_trimmed.UN 2011_62_AGTTCC_L001_R2_001.Combined.fastq_trimmed.PE 2011_62_AGTTCC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_66_ATGTCA_L001_R1_001_prinseq_good__TuI.fastq ../2011_66_ATGTCA_L001_R2_001_prinseq_good_dt51.fastq  2011_66_ATGTCA_L001_R1_001.Combined.fastq_trimmed.PE 2011_66_ATGTCA_L001_R1_001.Combined.fastq_trimmed.UN 2011_66_ATGTCA_L001_R2_001.Combined.fastq_trimmed.PE 2011_66_ATGTCA_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_69_GTGAAA_L001_R1_001_prinseq_good_IkSl.fastq ../2011_69_GTGAAA_L001_R2_001_prinseq_good_hjQl.fastq  2011_69_GTGAAA_L001_R1_001.Combined.fastq_trimmed.PE 2011_69_GTGAAA_L001_R1_001.Combined.fastq_trimmed.UN 2011_69_GTGAAA_L001_R2_001.Combined.fastq_trimmed.PE 2011_69_GTGAAA_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_70_GTGGCC_L001_R1_001_prinseq_good_TUYf.fastq ../2011_70_GTGGCC_L001_R2_001_prinseq_good_7GmU.fastq  2011_70_GTGGCC_L001_R1_001.Combined.fastq_trimmed.PE 2011_70_GTGGCC_L001_R1_001.Combined.fastq_trimmed.UN 2011_70_GTGGCC_L001_R2_001.Combined.fastq_trimmed.PE 2011_70_GTGGCC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_79_CCGTCC_L001_R1_001_prinseq_good_nv3N.fastq ../2011_79_CCGTCC_L001_R2_001_prinseq_good_9rP6.fastq  2011_79_CCGTCC_L001_R1_001.Combined.fastq_trimmed.PE 2011_79_CCGTCC_L001_R1_001.Combined.fastq_trimmed.UN 2011_79_CCGTCC_L001_R2_001.Combined.fastq_trimmed.PE 2011_79_CCGTCC_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80
#java -jar $TRIMMOMATIC/trimmomatic.jar PE -phred33 ../2011_85_GTAGAG_L001_R1_001_prinseq_good_oD3n.fastq ../2011_85_GTAGAG_L001_R2_001_prinseq_good_9t4u.fastq  2011_85_GTAGAG_L001_R1_001.Combined.fastq_trimmed.PE 2011_85_GTAGAG_L001_R1_001.Combined.fastq_trimmed.UN 2011_85_GTAGAG_L001_R2_001.Combined.fastq_trimmed.PE 2011_85_GTAGAG_L001_R2_001.Combined.fastq_trimmed.UN ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:40:15 LEADING:10 TRAILING:10 SLIDINGWINDOW:10:20 MINLEN:80

