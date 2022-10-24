#
# Main.R
# Module pulls out fields from ukbb and wites it to hdfs5 file
# Start: Initial basket ukb27581
# 2) 2nd basket: ukb28609.tab (blood assay)
# 3) 3rd basket: ukb29359.tab (exome fields)
# 4) 4th basket: ukbXXX (ICD codes etc)
#
# To do: update module to add compund fields
#
#---------------------------------------------
#
# Set relative path an source enviroment
#

rm(list= ls())
set.seed(42)
DIR=system(intern=TRUE,ignore.stderr = TRUE,
           "cd \"$( dirname \"${BASH_SOURCE[0]}\" )\" && pwd ")



# --------------------------------------------------
#
# source projec env.
#


# source main project env vairables
wd=getwd();setwd("../../");source("proj_env.R");setwd(wd)
if(wd  != getwd()) { print("ERROR: wrong working dir")}


# --------------------------------------------------
#
# inputs
#


args <- commandArgs(trailingOnly = TRUE)
ukbPheno.fn = args[1]
ukbMeta.fn = args[2]
initial = args[3] # TRUE/FALSE
ukbAdd.h5 = args[4] # None | <file name of h5 >

print(ukbPheno.fn)
print(ukbMeta.fn)
print(initial)
print(ukbAdd.h5)

# Test
# ukbMeta.fn = "/home/projects/cu_10039/data/UKBB/phenotypeFn/ukb45051.html"
# ukbPheno.fn = "/home/projects/cu_10039/data/UKBB/phenotypeFn/tmp.tab"
# ukbMeta.fn="/home/projects/cu_10039/data/UKBB/phenotypeFn/ukb45051.html"
# initial = "TRUE"
# ukbAdd.h5 = "/home/projects/cu_10039/data/UKBB/phenotypeFn/ukb41714.all_fields.h5"

DIROUT = dirname(ukbPheno.fn)

#stop("test")

#---------------------------------------------
#
# Load libs.
#   

source("binLoc/load.R")


# ---------------------------------------------
#
# Load and structure meta data
#   

source("binLoc/ukbFieldsloadMetadata.R")
source("binLoc/ukbFieldsloadMetadata_v2.R")



# ---------------------------------------------
#
# generate HDF5 
#   


if( initial == "TRUE")
    source("binLoc/reformatPhenoCreateH5.R")


# ---------------------------------------------
#
# add to existing HDF5 
#   


if( initial == "FALSE")
  source("binLoc/addUkbFieldsToH5.R")


# ---------------------------------------------
#
# End message
#   

if(initial == "TRUE") 
  print(paste("H5 file ",h5.fn, "created"))


if(initial == "FALSE") 
  print(paste("Data from ", ukbPheno.fn, "added to:", ukbAdd.h5))



###########################################################
# EOF # EOF # EOF # EOF # EOF # EOF # EOF # EOF # EOF EOF #
###########################################################





