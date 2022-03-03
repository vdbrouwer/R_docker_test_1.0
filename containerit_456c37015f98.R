library(rlang)
library(tibble)
library(dplyr)
CO3 <- read.csv("CO2tib_external", sep = ",")
CO3tib <- as_tibble(CO3)
arrangedData_Plant_2 <- CO3tib  %>%
               select(2,3,4,6)  %>%
               filter(uptake > 30)  %>%
               group_by(Plant)  %>%
               summarize(meanUp = mean(uptake),
                         sdUp = sd(uptake))  %>%
               mutate(CV = (sdUp / meanUp) * 100)  %>%
               arrange(CV)
write.csv(arrangedData_Plant_2, "plant_data_2")
