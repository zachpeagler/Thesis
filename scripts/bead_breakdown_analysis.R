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

font_add_google("Open Sans", family = "open")
font_add_google("Montserrat", family = "mont")
# initialize imported fonts
showtext_auto()

## cleaning
bb_data_file <- "C:/Github/Thesis/data/BB/BB_4022025.csv"
bb_data <- read.csv(bb_data_file)

bbdat <- na.omit(bb_data) %>% 
  mutate(mass_diff = initial_weight - end_weight,
         pdiff = mass_diff/initial_weight)

bbnoleaks <- filter(bbdat, X != "leak") %>%
  filter(pdiff > 0)
## EDA
multiPDF_plot(bbnoleaks$end_weight)
multiKS_cont(bbnoleaks$end_weight)

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=pdiff, color = polymer))+
  geom_jitter(width=0.3, height = 0, size = 3)+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  theme_bw()

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=end_weight, color = polymer))+
  geom_jitter(width=0.3, height = 0, size = 3)+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  theme_bw()

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=pdiff, color = medium))+
  geom_jitter(width=0.3, height = 0, size = 3)+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  theme_bw()

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=end_weight, color = medium))+
  geom_jitter(width=0.3, height = 0, size = 3)+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  theme_bw()

## models and post hoc

mod1 <- lm(logit(pdiff) ~ elapsed_weeks + polymer, data = bbnoleaks)
summary(mod1)
AIC(mod1)

predict_plot(mod1, bbnoleaks, pdiff, elapsed_weeks, polymer, correction = "logit")+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  scale_fill_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  ylab("Change in Mass")+
  xlab("Elapsed Weeks")+
  labs(title = str_wrap("Observed data (points) vs predictions (lines with 95% confidence interval) for 
                        change in mass over time in bacterial granules made from different polymers", 50))+
  guides(
    fill = guide_legend(title="Polymer"),
    color= guide_legend(title="Polymer")
    )+
  theme(
    text = element_text(size=14, family="mont", lineheight=0.8),
    axis.title = element_text(size=16, family = "mont", face= "bold"),
    title = element_text(size=18, family="open", face="bold")
  )

ggsave("BB_polymer_pred.svg", path = "C:/Github/Thesis/figures/BB")


mod2 <- lm(logit(pdiff) ~ elapsed_weeks + medium, data = bbnoleaks)
summary(mod2)
AIC(mod2)

predict_plot(mod2, bbnoleaks, pdiff, elapsed_weeks, medium, correction = "logit")+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  scale_fill_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  ylab("Change in Mass")+
  xlab("Elapsed Weeks")+
  labs(title = str_wrap("Observed data (points) vs predictions (lines with 95% confidence interval) for 
                        change in mass over time in bacterial granules in two mediums", 50))+
  guides(
    fill = guide_legend(title="Medium"),
    color= guide_legend(title="Medium")
  )+
  theme(
    text = element_text(size=14, family="mont", lineheight=0.8),
    axis.title = element_text(size=16, family = "mont", face= "bold"),
    title = element_text(size=18, family="open", face="bold")
  )

ggsave("BB_medium_pred.svg", path = "C:/Github/Thesis/figures/BB")
