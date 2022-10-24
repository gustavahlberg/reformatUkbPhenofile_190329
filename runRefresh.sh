#
#
# A) Make H5 files of ukbb phenotype file
# B) add new baskets to existing H5 file
#
# 1) Refresh basket: ukb27581
# 2) 2nd basket: ukb28609.tab (blood assay)
# 3) 3rd basket: ukb29359.tab (exome fields)
# 4) Refresh 4th basket: ukb29818.tab (ICD codes etc)
# 4) 5th basket: Primary care and algo

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


# # -----------------------------------------                 
# #                                                           
# # Start: 1) Rfresh Intial basket: ukb41714.tab
# #                                                           
                                                            
# ukbPheno_fn=${PHENO}ukb41714.tab
# ukbMeta_fn=${PHENO}ukb41714.html
# initial="TRUE"                                              
# ukbAdd_h5="None"                                            
                                                            
# Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 
                                                            
                                                            
# # -----------------------------------------                 
# #                                                           
# # 2) 2nd basket: ukb28609.tab (blood assay)                 
# #                                                           
                                                            
# ukbPheno_fn=${PHENO}ukb28609.tab                            
# ukbMeta_fn=${PHENO}ukb28609.html                            
# initial="FALSE"                                             
# ukbAdd_h5=${PHENO}/ukb41714.all_fields.h5                   
                                                            
                                                            
# Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 
                                                            
                                                            
# # -----------------------------------------                 
# #                                                           
# # 3) 3rd basket: ukb29359.tab (exome fields)                
# #                                                                                                                       
ukbPheno_fn=${PHENO}ukb29359.tab                            
ukbMeta_fn=${PHENO}ukb29359.html                            
initial="FALSE"                                             
ukbAdd_h5=${PHENO}/ukb41714.all_fields.h5                   
                                                            
Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 


# -----------------------------------------
#
# 4) Refresh 4th basket: ukb39514 (ICD codes etc)
#

ukbPheno_fn=${PHENO}ukb39514.tab
ukbMeta_fn=${PHENO}ukb39514.html
initial="FALSE"
ukbAdd_h5=${PHENO}/ukb41714.all_fields.h5

Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5


# -----------------------------------------
#
# 4) Refresh 4th basket: ukb38030 (PC and algo)
#

ukbPheno_fn=${PHENO}ukb38030.tab
ukbMeta_fn=${PHENO}ukb38030.html
initial="FALSE"
ukbAdd_h5=${PHENO}/ukb41714.all_fields.h5

Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5


#################################################
# EOF # EOF # EOF # EOF # EOF # EOF # EOF # EOF #
#################################################
