graphics.off() # clear all previous plots
rm(list=ls()) # clear the environment from previous codes
cat("\014") # clear the console 


library(readxl)
df <- read_excel("consolidated_data.xlsx") 
View(df)
head(df)

# change a column name

colnames(df)[3] <- "different"
sum(df$vote=="Donald Trump")
sum(df$vote=="Kamala Harris")
sum(df$vote=="Other")
nrow(df)

# proportion of Donald Trump voters
print(sum(df$vote=="Donald Trump")/nrow(df))

# proportion of Kamala Harris voters
print(sum(df$vote=="Kamala Harris")/nrow(df))

# proportion of Other voters
print(sum(df$vote=="Other")/nrow(df))

df <- df[df$vote != "Other",]
# Subsetting a dataset
# 
df_males <- df[df$gender==1,]

df_females <- df[df$gender==0,]

df_trump <- df[df$vote == "Donald Trump",]

df_harris <- df[df$vote == "Kamala Harris",]

df_harrisf <- df_females[df_females$vote == "Kamala Harris",]

df_trumpf <- df_females[df_females$vote == "Donald Trump",]

# proportion of Donald Trump voters amongst male students
print(sum(df_males$vote=="Donald Trump"))

# proportion of Donald Trump voters amongst female students
print(sum(df_females$vote=="Donald Trump"))

print(sum(df$vote=="Donald Trump"))

print(sum(df_trump$different == 1))
print(sum(df_trumpf$different == 1))

print(sum(df_harris$different == 1))
print(sum(df_harrisf$different == 1))
