---
title: "Final project - Airbnb Pricing in Amsterdam"
author: Lukas Cerno, Hederik de Vries & Casper Roex
date: "16 June 2016"
output: html_document
---




```r
getwd()
setwd("../Final-project")
list.files()
rm(list = ls())  # Clean up the memory, if we want to rerun from scratch
```

## Business objective



## Including Plots


```r
ProjectData <- read.csv("Data/Airbnb_main.csv", sep = ";", dec = ",")  # this contains only the matrix ProjectData
```

```
## Warning in file(file, "rt"): cannot open file 'Data/Airbnb_main.csv': No
## such file or directory
```

```
## Error in file(file, "rt"): cannot open the connection
```

```r
ProjectData = data.matrix(ProjectData)
```

```
## Error in is.data.frame(frame): object 'ProjectData' not found
```

```r
colnames(ProjectData) <- gsub("\\.", " ", colnames(ProjectData))
```

```
## Error in is.data.frame(x): object 'ProjectData' not found
```


```
## Error in data.frame(round(ProjectData, 2)): object 'ProjectData' not found
```

```
## Error in rownames(show_data): object 'show_data' not found
```
