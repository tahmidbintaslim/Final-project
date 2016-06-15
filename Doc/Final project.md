---
title: "Final project - Airbnb Pricing in Amsterdam"
author: Lukas Cerno, Hederik de Vries & Casper Roex
date: "16 June 2016"
output: html_document
---

This report analyses a data set from Airbnb, an online broker for short-stay housing around the world, to detect the impact of housing attributes on per night prices. A subset was used of [xxx] properties in the centre of Amsterdam, with price per night divided by the maximum number of guests regressed on a number of explanatory variables. These variables include the number of bedrooms per guest, the quality of the host (as a function of rating and number of reviews), the level of privacy (shared room, private room, or entire apartment), and several amenities (airconditioning, free parking, WiFi, washing machine, and bath). We find that ….





```r
getwd()
setwd("../Final-project")
list.files()
rm(list = ls())  # Clean up the memory, if we want to rerun from scratch
```


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
ProjectData$priceperguest = ProjectData$price / ProjectData$accommodates
```

```
## Error in eval(expr, envir, enclos): object 'ProjectData' not found
```

```r
ProjectData$sharedroom = ifelse(ProjectData$room_type == "Shared room", 1 ,0)
```

```
## Error in ifelse(ProjectData$room_type == "Shared room", 1, 0): object 'ProjectData' not found
```

```r
ProjectData$private_room = ifelse(ProjectData$room_type == "Private room", 1 ,0)
```

```
## Error in ifelse(ProjectData$room_type == "Private room", 1, 0): object 'ProjectData' not found
```

```r
ProjectData$bedroomsperguest = ProjectData$bedrooms / ProjectData$accommodates
```

```
## Error in eval(expr, envir, enclos): object 'ProjectData' not found
```

```r
ProjectData$realbed = ifelse(ProjectData$bed_type == "Real Bed" ,1 ,0)
```

```
## Error in ifelse(ProjectData$bed_type == "Real Bed", 1, 0): object 'ProjectData' not found
```

```r
ProjectData$weightedreviewscore = sqrt(ProjectData$number_of_reviews) * ProjectData$review_scores_rating
```

```
## Error in eval(expr, envir, enclos): object 'ProjectData' not found
```


```r
Subset1 <- subset(ProjectData, select = c("id","price","neighbourhood_cleansed","priceperguest","sharedroom","private_room","bedroomsperguest","realbed","weightedreviewscore","Air.Conditioning","Free.Parking.on.Premises","Wireless.Internet","Washer","Hot.Tub","Pets.Allowed"))
```

```
## Error in subset(ProjectData, select = c("id", "price", "neighbourhood_cleansed", : object 'ProjectData' not found
```


## Business objective

  

## Including Plots



```r
hist(ProjectData[, "price"], freq = TRUE, breaks = 100, main = "Histogram of Airbnb prices (in $)", 
    include.lowest = TRUE)
```

```
## Error in hist(ProjectData[, "price"], freq = TRUE, breaks = 100, main = "Histogram of Airbnb prices (in $)", : object 'ProjectData' not found
```




```
Error in is.data.frame(x): object 'Subset1' not found
```

```
Error in eval(expr, envir, enclos): could not find function "gvisTable"
```

```
Error in print(m1, "chart"): object 'm1' not found
```






