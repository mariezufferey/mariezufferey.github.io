#/bin/bash

# ./generate_gallery_file.sh


new_out_file="gallery.yml"

rm -f $new_out_file

# retrieve which file

all_files=( $( ls ../assets/gallery/thumbnails/*JPG) )


for myf in ${all_files[@]}; do

	echo $myf
	
	sp_name=`basename $myf`
	#out_name=`echo "$sp_name" | tr _ X`
	tmp_out_name=${sp_name//_/ }
	out_name=${tmp_out_name//.JPG/}
	
	cat >> ${new_out_file} <<- EOM
	- img: $sp_name
	  url: /assets/gallery/thumbnails/$sp_name
	  title: $out_name
	  caption: >
	    $out_name
	EOM
	

done


cat >> ${new_out_file} <<- EOM
	- img: cactus.jpg
	  url: https://www.youtube.com/watch?v=I8W4LyIXINE
	  title: Blossom
	  caption: >
	    Cactus flowers !
EOM

#    
#    
#- img: Gymnocalycium_baldianum.JPG
#  url: /assets/gallery/thumbnails/Gymnocalycium_baldianum.JPG
#  title: Gymnocalycium baldianum
#  caption: >
#    Gymnocalycium baldianum 
#    
#    
#    	cat >> ${new_setting_file} <<- EOM

#			# > file edited: `date -R` 

#			# path to output folder:
#			pipOutFold <- "${outputFolder}"

#			# OVERWRITE THE DEFAULT SETTINGS FOR INPUT FILES - use TADs from the current Hi-C dataset 
#			TADpos_file <- paste0(setDir, "`realpath $new_TADpos_file`")
#							#chr1    chr1_TAD1       750001  1300000
#							#chr1    chr1_TAD2       2750001 3650000
#							#chr1    chr1_TAD3       3650001 4150000

#			gene2tadDT_file <- paste0(setDir, "`realpath $new_gene2tad_file`")
#							#LINC00115       chr1    761586  762902  chr1_TAD1
#							#FAM41C  chr1    803451  812283  chr1_TAD1
#							#SAMD11  chr1    860260  879955  chr1_TAD1
#							#NOC2L   chr1    879584  894689  chr1_TAD1

#			# overwrite main_settings.R: nCpu <- 25
#			nCpu <- ${ncpu}

#			# *************************************************************************************************************************
#			# ************************************ SETTINGS FOR PERMUTATIONS (5#_, 8c_)
#			# *************************************************************************************************************************

#			# number of permutations
#			nRandomPermut <- $nPermut
#			gene2tadAssignMethod <- "maxOverlap"
#			nRandomPermutShuffle <- $nPermut
#			step8_for_permutGenes <- TRUE
#			step8_for_randomTADsFix <- FALSE
#			step8_for_randomTADsGaussian <- FALSE
#			step8_for_randomTADsShuffle <- FALSE
#			step14_for_randomTADsShuffle <- FALSE


#            # added here 13.08.2019 to change the filtering of min. read counts
#            rm(minCpmRatio)
#            min_counts <- 5
#            min_sampleRatio <- 0.8


#            # to have compatible versions of Rdata
#            options(save.defaults = list(version = 2))

#	EOM
#	echo "WRITTEN: ${new_setting_file}"


#echo "> END STEP1:" $(date -R)


