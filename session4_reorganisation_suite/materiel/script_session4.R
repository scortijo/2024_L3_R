# Chargez la librairie `tidyverse`
library(tidyverse)


# Changez votre répertoire de travail pour être dans `session4_reorganisation_suite`
setwd("~/Documents/2023_L3_R/session4_reorganisation_suite/")

# Importer `burghardt_et_al_2015_expt1.txt` et mettez le dans un objet appelé `expt1`
expt1 <- read_tsv("data/burghardt_et_al_2015_expt1.txt")

expt1 %>%
  filter(vernalization== "V") %>%
  select(genotype, total.leaf.length.mm)

expt1_filtered <- filter(expt1, vernalization== "V")
select(expt1_filtered, genotype, total.leaf.length.mm)

##### Exercice1
expt1 %>%
  filter(background != "Ler" & fluctuation == "Var") %>%
  select(contains("bolt"), genotype, blade.length.mm)

expt1 %>%
  filter(background != "Ler" & fluctuation == "Var") %>%
  select(bolt.survival:days.to.bolt, genotype, blade.length.mm)


#### Bonus 1
read_tsv("data/burghardt_et_al_2015_expt1.txt") %>%
  filter(fluctuation=="Con" & day.length=="16") %>%
  select(days.to.bolt:total.leaf.length.mm) %>%
  summary()

##### combiner a un graphe
expt1 %>%
  filter(vernalization == "V") %>%
  ggplot(aes(fluctuation, days.to.flower)) +
  geom_boxplot()

## Ex2

expt1 %>%
  filter(day.length == 8) %>%
  ggplot(aes(genotype, days.to.flower)) +
  geom_violin()


library(ggpubr)
## Bonus2
expt1 %>%
  filter(grepl("Col", background) & temperature == 22) %>%
  ggplot(aes(vernalization,days.to.bolt, color = fluctuation)) +
  geom_boxplot()+
  facet_grid(.~genotype)+
  theme_bw()+
  stat_compare_means(label = "p.signif")

# sauver fichier avec plantes vernalisees uniquement

expt1_vernalise <- filter(expt1, vernalization=="V")

write_tsv(expt1_vernalise, file="data/expt1_vernalise.txt")

# Mutate

expt1.cm <- mutate(expt1, total.leaf.length.cm=total.leaf.length.mm/10)

expt1.cm <- mutate(expt1, total.leaf.length.cm=total.leaf.length.mm/10,
                   blade.length.cm = blade.length.mm/10)

# Exercice 3 

expt1.ratio <- mutate(expt1, blade.ratio=blade.length.mm/total.leaf.length.mm)

# BONUS
expt1.late<- mutate(expt1, late.flowering=if_else(days.to.bolt>70, TRUE, FALSE))

# Concatener et separer des colonnes

expt1_concatene <- unite(expt1, "Vern_survival_bolt", vernalization, 
                         bolt.survival, bolt, remove=FALSE)

distinct(expt1, background)

expt1_separated<- separate(expt1, background, 
                           into=c("genotype_background", "FRI_mutation"),
                           sep=" ")


# Exercice 4

mutate(expt1, blade.ratio=blade.length.mm/total.leaf.length.mm) %>% 
  unite("condition", day.length, temperature, fluctuation, sep=".") %>% 
  filter(background%in%c("Col", "Ler")) %>% 
  ggplot(aes(x=condition, y=blade.ratio)) +
  geom_boxplot() +
  ylim(0,1) +
  facet_grid(.~background) +
  theme(axis.text.x=element_text(angle=45))
  
  
  
  









