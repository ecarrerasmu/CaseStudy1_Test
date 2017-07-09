##############################
#JMJ
#Cleaning GDP and Income data from World Bank Website
# Austin Hancock - Ernesto Carrera - Matthew Przybyla
#Updated 9 July 2017
#############################



#Update the working directory to run this code in other machine.
setwd("/Users/ernestcarrera/Documents/Master Data Science/Doing Data Science/CaseStudy1/Delivery")

###### Cleaning GDP data
# Remove first 5 lines, limit rows to only return countries (we may want to save note at bottom )
GDP <- read.csv("GDP.csv" 
                ,header=FALSE
                ,sep=','
                ,quote = "\""
                ,stringsAsFactors=FALSE
                , skip=5
                , nrows=215)


# Remove empty columns
GDP <- GDP[-c(3,7,8,9,10)]
str(GDP)


# Create Col. headers
names(GDP) <- c("CountryCode","Rank","Economy","GDP (millions of US dollars)","Note")

# Remove blank rows - a row without a CountryCode is blank
GDP <- GDP[(GDP$CountryCode != ""),]
str(GDP)

# Convert GDP col. from char to numeric so we can sort
GDP$`GDP (millions of US dollars)` <- gsub(",", "", GDP$`GDP (millions of US dollars)`)
GDP$`GDP (millions of US dollars)` <- as.numeric(GDP$`GDP (millions of US dollars)`)



###### Cleaning Education Data

Educ <- read.csv("Education.csv"
                 , header=TRUE
                 , sep=','
                 , quote="\""
                 , stringsAsFactors=FALSE
                 , check.names=FALSE)

# Remove rows where Income Group is blank - these are not countries
Educ <- Educ[(Educ$`Income Group` != ""),]