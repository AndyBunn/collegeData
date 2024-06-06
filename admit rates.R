library(tidyverse)
dat <- read.csv("college_data.csv")

dat %>% 
  filter(INSTNM %in% c("Western Washington University","University of Washington-Seattle Campus")) %>%
  select(year, INSTNM,ADM_RATE_ALL) %>% 
  ggplot() + 
  geom_point(mapping=aes(x=year,y=ADM_RATE_ALL,color=INSTNM)) +
  geom_line(mapping=aes(x=year,y=ADM_RATE_ALL,color=INSTNM)) +
  scale_y_continuous(labels = scales::percent) +
  labs(x = "Year", y = "Admission Rate",
       title = "Admission 2001 to 2022",
       caption = "Data Source: www.kaggle.com/datasets/ryusonoda/u-s-university-dataset-from-2001-to-2022") +
  theme_minimal() +
  theme(legend.title = element_blank(), legend.position = "top")

dat %>% 
  filter(INSTNM == "Western Washington University") %>%
  ggplot() + 
  geom_point(mapping=aes(x=year,y=ADM_RATE_ALL)) +
  geom_line(mapping=aes(x=year,y=ADM_RATE_ALL)) +
  scale_y_continuous(labels = scales::percent) +
  labs(x = "Year", y = "Admission Rate",
       title = "Western Washington University",
       subtitle = "Admission 2001 to 2022",
       caption = "Data Source: www.kaggle.com/datasets/ryusonoda/u-s-university-dataset-from-2001-to-2022") +
  theme_minimal()

dat %>% 
  filter(INSTNM == "University of Washington-Seattle Campus") %>%
  ggplot() + 
  geom_point(mapping=aes(x=year,y=ADM_RATE_ALL)) +
  geom_line(mapping=aes(x=year,y=ADM_RATE_ALL)) +
  scale_y_continuous(labels = scales::percent) +
  labs(x = "Year", y = "Admission Rate",
       title = "University of Washington-Seattle Campus",
       subtitle = "Admission 2001 to 2022",
       caption = "Data Source: www.kaggle.com/datasets/ryusonoda/u-s-university-dataset-from-2001-to-2022") +
  theme_minimal()
