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
bb_data_file <- "C:/Github/Thesis/data/BB/BB_4142025.csv"
bb_data <- read.csv(bb_data_file)

bbdat <- na.omit(bb_data) %>% 
  mutate(mass_diff = initial_weight - end_weight,
         pdiff = mass_diff/initial_weight,
         ipdiff = pdiff * -1)

bbnoleaks <- filter(bbdat, X != "leak") %>%
  filter(pdiff > 0) %>%
  mutate(
         logitpdiff = logit(pdiff),
         ilpdiff = logitpdiff * -1)

bbsum <- bbnoleaks %>%
  group_by(polymer, elapsed_weeks) %>%
  summarise_at(vars(initial_weight, end_weight, pdiff), list(mean = mean)) %>%
  ungroup()

## EDA
multipdf_plot(bbnoleaks$end_weight)
multiks_cont(bbnoleaks$end_weight)

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=ilpdiff, color = polymer))+
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

ggplot(bbnoleaks, aes(x=elapsed_weeks, y=pdiff, color = inoculant))+
  geom_jitter(width=0.3, height = 0, size = 3)+
  scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo")+
  theme_bw()

## models and post hoc

mod1 <- lm(logit(pdiff) ~ elapsed_weeks + polymer, data = bbnoleaks)
summary(mod1)
AIC(mod1)

predict_plot(mod1, bbnoleaks, pdiff, elapsed_weeks, polymer, correction = "logit")+
  ylab("Proportion Change in Mass")+
  xlab("Elapsed Weeks")+
  labs(title = NULL,
       subtitle = NULL)+
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
ggsave("BB_polymer_pred.png", path = "C:/Github/Thesis/figures/BB")

mod11 <- lm(ilpdiff ~ elapsed_weeks + polymer, data = bbnoleaks)
summary(mod11)
AIC(mod11)

predict_plot(mod11, bbnoleaks, ilpdiff, elapsed_weeks, polymer)+
  ylab("Mass (g)")+
  xlab("Elapsed Weeks")+
  labs(title = NULL,
       subtitle = NULL)+
  guides(
    fill = guide_legend(title="Polymer"),
    color= guide_legend(title="Polymer")
  )+
  theme(
    text = element_text(size=14, family="mont", lineheight=0.8),
    axis.title = element_text(size=16, family = "mont", face= "bold"),
    title = element_text(size=18, family="open", face="bold")
  )


mod2 <- lm(logit(pdiff) ~ elapsed_weeks + medium, data = bbnoleaks)
summary(mod2)
AIC(mod2)

predict_plot(mod2, bbnoleaks, pdiff, elapsed_weeks, medium, correction = "logit")+
  ylab("Change in Mass")+
  xlab("Elapsed Weeks")+
  labs(title = NULL,
       subtitle = NULL)+
  guides(
    fill = guide_legend(title = "Medium"),
    color = guide_legend(title = "Medium")
  )+
  theme(
    text = element_text(size=14, family="mont", lineheight=0.8),
    axis.title = element_text(size=16, family = "mont", face= "bold"),
    title = element_text(size=18, family="open", face="bold")
  )

 ggsave("BB_medium_pred.svg", path = "C:/Github/Thesis/figures/BB")

 
 
# inverse logit prediction plot for pdiff
## get group data ready
groups  <- sort(unique(bbnoleaks$polymer))
ngroups <- length(groups)
## get predictor range for each group
agg <- stats::aggregate(bbnoleaks$elapsed_weeks ~ bbnoleaks$polymer,
                         data = bbnoleaks, range)
dx_pvar <- data.frame(pvar = numeric(0))
for (i in 1:ngroups) {
  tpvar <- data.frame(pvar = seq(agg[[2]][i, 1], agg[[2]][i, 2],
                                  length = 50))
  dx_pvar <- rbind(dx_pvar, tpvar)
}
dx <- data.frame(group = rep(agg[[1]], each = 50),
                  pvar = dx_pvar)
colnames(dx) <- c("polymer", "elapsed_weeks")

## model
mod <- lm(logit(pdiff) ~ elapsed_weeks + polymer, data = bbnoleaks)

## make prediction
pred <- stats::predict(mod, newdata = dx,
                        se.fit = TRUE, type = "response")
dx$mn <- stats::plogis(stats::qnorm(0.5,   pred$fit, pred$se.fit))
dx$lo <- stats::plogis(stats::qnorm(0.025, pred$fit, pred$se.fit))
dx$up <- stats::plogis(stats::qnorm(0.975, pred$fit, pred$se.fit))

dx$mn <- dx$mn * -100
dx$lo <- dx$lo * -100
dx$up <- dx$up * -100
## initialize plot
p <- ggplot2::ggplot() +
     ggplot2::geom_point(data = bbnoleaks, ggplot2::aes(x = elapsed_weeks,
                                                 y = pdiff * -100,
                                                 color = polymer))
## loop through treatments
for (g in 1:ngroups) {
  flag <- which(dx$polymer == groups[g])
  tdx <- dx[flag, ]
   p <- p +
     ggplot2::geom_line(data = tdx, ggplot2::aes(x = elapsed_weeks, y = lo,
                                                 color = polymer),
                        linewidth = 1, show.legend = FALSE) +
     ggplot2::geom_line(data = tdx, ggplot2::aes(x = elapsed_weeks, y = mn,
                                                 color = polymer),
                        linewidth = 2, show.legend = FALSE) +
     ggplot2::geom_line(data = tdx, ggplot2::aes(x = elapsed_weeks, y = up,
                                                 color = polymer),
                        linewidth = 1, show.legend = FALSE) +
     ggplot2::geom_ribbon(data = tdx, ggplot2::aes(x = elapsed_weeks,
                                                   ymin = lo, ymax = up,
                                                   fill = polymer),
                          alpha = 0.5)
}
 p <- p +
   scico::scale_color_scico_d(begin = 0.8, end = 0.3, palette = "oslo") +
   scico::scale_fill_scico_d(begin = 0.8, end = 0.3, palette = "oslo")
### make the plot look good (group agnostic)
p <- p +
  ggplot2::theme_bw() +
  ylab("Change in Mass (%)") +
  xlab("Elapsed Weeks") +
  guides(
    fill = guide_legend(title="Polymer"),
    color= guide_legend(title="Polymer")
  )+
  ggplot2::theme(
    text = ggplot2::element_text(size = 12),
    axis.title = ggplot2::element_text(size = 14, face = "bold"),
    title = ggplot2::element_text(size = 16, face = "bold"),
    plot.subtitle = ggplot2::element_text(size = 14, face = "italic")
  )
p
ggsave("BB_polymer_pred.svg", path = "C:/Github/Thesis/figures/BB")
ggsave("BB_polymer_pred.png", path = "C:/Github/Thesis/figures/BB")
