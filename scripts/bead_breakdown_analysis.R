# bead breakdown analysis
## stats packages
library(multcomp)
library(lmerTest)
library(MuMIn)
library(car)
library(vegan)
## graphical packages
library(tidyverse)
library(showtext)
library(scico)
library(ggpubr)
## custom package
library(devtools)
install_github("zachpeagler/ztils", upgrade = "never")
library(ztils)

## cleaning
bb_data_file <- "C:/Github/Thesis/data/BB/BB_4022025.csv"
bb_data <- read.csv(bb_data_file)

bbdat <- na.omit(bb_data) %>% 
  mutate(mass_diff = initial_weight - end_weight,
         pdiff = mass_diff/initial_weight * 100)

bbnoleaks <- filter(bbdat, X != "leak")
## EDA

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=pdiff, color = polymer))+
  geom_jitter(width=0.3, height = 0)+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  theme_bw()


## models and post hoc