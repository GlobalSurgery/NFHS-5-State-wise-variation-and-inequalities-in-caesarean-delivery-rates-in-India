#Box and Whisker Plot

getwd()
setwd("A:/RnD/1 Working/NFHS/Rohini_Cesarean")

library(ggplot2)

d <- read.csv("Box1.csv")

# BOXPLOT

# Overall Data - Public/Private
ggplot(data=d, mapping=aes(x=Sector, y=CDR))+geom_boxplot()

#-----------------------------------------------------
# Overall Data - Public/Private - Across WQ
df <- ggplot(data=d, mapping=aes(x=Sector, y=CDR)) + 
  geom_boxplot() + 
  facet_grid (.~ factor(WQ, levels=c('Poorest', 'Poorer', 'Middle', 'Richer', 'Richest'))) + 
  xlab("Type of health facilities") + 
  ylab("Proportion of cesarean delivery rates in India") + 
  labs(title = "Wealth quintile wise health facility wise cesarean delivery rates in India")
df
