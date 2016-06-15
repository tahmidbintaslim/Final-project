# Data Analysis and Visualization for Airbnb
#
# Big Data and Analytics for Business - INSEAD 2016
#
# Hederik de Vries (16D)
# Lukas Cerno (16D)
# Casper Roex (16D)
#
# In this case study we will use the Airbnb data
# 

# Clean the workspace
rm(list=ls())


#Set Final-project as Directory
#setwd("../R/BDA/Final-project")

# Set up the working directory
local_directory <- getwd()

report_file = "Final project"

# Install and load required packages
source(paste(local_directory,"R/allPublicLibraries.R", sep="/"))
source(paste(local_directory,"R/MartrixOperations.R", sep="/"))
source(paste(local_directory,"R/heatmapOutput.R", sep = "/"))
source(paste(local_directory,"R/runcode.R", sep = "/"))

if (require(shiny) == FALSE) 
  install.packages("shiny")

#Load the csv in the "data" folder into the variable gadata
#if (!exists("airbnbdata")) 
#  airbnbdata <- read.csv("Data/Airbnb_main.csv", sep=""),rm("X"))

# Create the report
source(paste(local_directory,"Run_study.R", sep = "/"))

                                