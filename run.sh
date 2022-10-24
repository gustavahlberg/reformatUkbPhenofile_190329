#
#
# A) Make H5 files of ukbb phenotype file
# B) add new baskets to existing H5 file
#
# 1) Intial basket: ukb27581
# 2) 2nd basket: ukb28609.tab (blood assay)
# 3) 3rd basket: ukb29359.tab (exome fields)
# 4) 4th basket: ukb29818.tab (ICD codes etc)
# 5) Refresh: ukb39514.enc
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
# # Start: 1) Intial basket: ukb27581                         
# #                                                           
                                                            
# ukbPheno_fn=${PHENO}ukb27581.tab                            
# ukbMeta_fn=${PHENO}ukb27581.html                            
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
# ukbAdd_h5=${PHENO}/ukb27581.all_fields.h5                   
                                                            
                                                            
# Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 
                                                            
                                                            
# # -----------------------------------------                 
# #                                                           
# # 3) 3rd basket: ukb29359.tab (exome fields)                
# #                                                           
                                                            
# ukbPheno_fn=${PHENO}ukb29359.tab                            
# ukbMeta_fn=${PHENO}ukb29359.html                            
# initial="FALSE"                                             
# ukbAdd_h5=${PHENO}/ukb27581.all_fields.h5                   
                                                            
# Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 


# -----------------------------------------
#
# 4) 4th basket: ukb29818 (ICD codes etc)
#

ukbPheno_fn=${PHENO}/ukb29818.tab
ukbMeta_fn=${PHENO}/ukb29818.html
initial="FALSE"
ukbAdd_h5=${PHENO}/ukb27581.all_fields.h5

Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5



# -----------------------------------------
#
# 5) ukb39514.tab
#



#################################################
# EOF # EOF # EOF # EOF # EOF # EOF # EOF # EOF #
#################################################
