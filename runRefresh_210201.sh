#
#
# A) Make H5 files of ukbb phenotype file
# B) add new baskets to existing H5 file
#
# 1) Refresh basket: ukb45051
# 2) 3rd basket: ukb29359.tab (exome fields)
#
# ----------------------
#
# configs
#


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
PATH=${PATH}:${DIR}/bin
UKBB=/home/projects/cu_10039/data/UKBB
PHENO=${UKBB}/phenotypeFn/
#PHENO=${DIR}/../../dataTest/


# -----------------------------------------                 
#                                                           
# Start: 1) Refresh Intial basket: ukb41714.tab
#                                                           
                                                            
ukbPheno_fn=${PHENO}ukb45051.tab 
ukbMeta_fn=${PHENO}ukb45051.html
initial="TRUE"                                              
ukbAdd_h5="None"                                            
                                                            
Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 
                                                            

                                                            
# -----------------------------------------                 
#                                                           
# 2)  ukb29359.tab (exome fields)                
#

ukbPheno_fn=${PHENO}ukb29359.tab                            
ukbMeta_fn=${PHENO}ukb29359.html                            
initial="FALSE"                                             
ukbAdd_h5=${PHENO}/ukb45051.all_fields.h5                   
                                                            
Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 




#################################################
# EOF # EOF # EOF # EOF # EOF # EOF # EOF # EOF #
#################################################
