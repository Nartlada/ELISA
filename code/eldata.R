df1 <-
  import(here(
    'data',
    'List for ST IgM-IgG ELISA CO determination_ re-analyze2.xlsx'
  ),
  sheet = "1. IgM n=616") %>%
  clean_names() %>%
  rename(desc1 = description_ig_m,
         ifa1 = ifa_stg_ig_m_interpret,
         inbios1 = inbios_od_scrub_m) %>% 
  mutate(ifa1 = ifelse(ifa1 == 'pos', 1, 0))

df2 <-
  import(here(
    'data',
    'List for ST IgM-IgG ELISA CO determination_ re-analyze2.xlsx'
  ),
  sheet = "2.IgG  n=552") %>%
  clean_names() %>%
  rename(desc2 = description_for_ig_g1,
         ifa2 = interpret_st_ig_g_ifa,
         inbios2 = inbios_od_scrub_g_acute) %>% 
  mutate(ifa2 = ifelse(ifa2 == 'Pos', 1, 0))

df3 <-
  import(here(
    'data',
    'List for ST IgM-IgG ELISA CO determination_ re-analyze2.xlsx'
  ),
  sheet = "3. IgM neg =557 ") %>%
  clean_names() %>%
  rename(desc3 = description_ig_m,
         ifa3 = ifa_stg_ig_m_interpret,
         inbios3 = inbios_od_scrub_m)

df4 <-
  import(here(
    'data',
    'List for ST IgM-IgG ELISA CO determination_ re-analyze2.xlsx'
  ),
  sheet = "4. IgG neg (n=516)") %>%
  clean_names() %>%
  rename(desc4 = description_for_ig_g1,
         ifa4 = interpret_st_ig_g_ifa,
         inbios4 = inbios_od_scrub_g_acute)