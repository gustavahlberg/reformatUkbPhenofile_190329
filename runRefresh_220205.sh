#
#
# A) Make H5 files of ukbb phenotype file
# B) add new baskets to existing H5 file
#
# 1) Refresh basket: ukb49511
# 2) 2nd & 3rd basket:(exome fields)
#
# ----------------------
#
# configs
#


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
PATH=${PATH}:${DIR}/bin
UKBB=/home/projects/cu_10039/data/UKBB
PHENO=${UKBB}/phenotypeFn
#PHENO=${DIR}/../../dataTest/


# -----------------------------------------                 
#                                                           
# Start: 1) Refresh Intial basket: ukb49511
#                                                           
                                                            
# ukbPheno_fn=${PHENO}/ukb49511.tab
# ukbMeta_fn=${PHENO}/ukb49511.html
# initial="TRUE"                                              
# ukbAdd_h5="None"                                            
                                                            
# Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 
                                                            

                                                            
# -----------------------------------------                 
#                                                           
# 2)  ukb29359.tab (50 k exome fields)                
#

# ukbPheno_fn=${PHENO}/ukb29359.tab                            
# ukbMeta_fn=${PHENO}/ukb29359.html                            
# initial="FALSE"                                             
# ukbAdd_h5=${PHENO}/ukb49511.all_fields.h5                   
                                                            
# Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 


# -----------------------------------------                 
#                                                           
# 3)  ukb47768.tab (200k exome fields)                
#

ukbPheno_fn=${PHENO}/ukb47768.tab
ukbMeta_fn=${PHENO}/ukb47768.html                            
initial="FALSE"                                             
ukbAdd_h5=${PHENO}/ukb49511.all_fields.h5                   
                                                            
Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 


# -----------------------------------------                 
#                                                           
# 4)  ukb50474.tab 
#


ukbPheno_fn=${PHENO}/ukb50474.tab
ukbMeta_fn=${PHENO}/ukb50474.html
initial="FALSE"                                             
ukbAdd_h5=${PHENO}/ukb49511.all_fields.h5                   
                                                            
Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 



# -----------------------------------------                 
#                                                           
# 5)  ukb50607.tab 
#


ukbPheno_fn=${PHENO}/ukb50607.tab
ukbMeta_fn=${PHENO}/ukb50607.html
initial="FALSE"                                             
ukbAdd_h5=${PHENO}/ukb49511.all_fields.h5                   
                                                            
Rscript Main.R $ukbPheno_fn $ukbMeta_fn $initial $ukbAdd_h5 



#################################################
# EOF # EOF # EOF # EOF # EOF # EOF # EOF # EOF #
#################################################



