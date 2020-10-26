# Starting Stuff ----------------------------------------------------------
suppressMessages(
  {
    library(tidyverse)
    library(lubridate)
    library(scales)
    library(zoo)
    library(twViz)
  }
)

theme_set(theme_twitter())
query <- paste(
  "
    SELECT
       year_quarter_numeric,
       data_up_to_year_quarter,
       data_up_to_yoy_year_quarter,
       data_up_to_qoq_year_quarter,
       CASE 
          WHEN r.engaging_user_country = 'UK' THEN 'GB'
          ELSE r.engaging_user_country END AS engaging_user_country,
       day_in_quarter <= data_up_to_day_in_quarter AS qtd_flag,
       product_tier1,
       product_tier2,
       product_tier3,
       SUM(served_usd_fixed_fx_micro) / 1e6 AS revenue,
       SUM(impressions_micro) / 1e6 AS impressions,
       SUM(monetizable_engagements_micro) / 1e6 AS engagements
    FROM rdw_salesfinance.sfdata_rev_stage2a AS r
    WHERE
      1 = 1
      AND chargeable_y_n = 'Y'
      AND year_quarter_numeric >= 20171
      AND tpn = 'Non - TAP'
      AND served_usd_fixed_fx_micro + impressions_micro + monetizable_engagements_micro > 0
      AND funding_instrument <> 'EXCLUSIVE_IO'
      AND engaging_user_country IS NOT NULL
      AND engaging_user_country <> 'NA'
      AND LENGTH(engaging_user_country) = 2
  GROUP BY 1,2,3,4,5,6,7,8,9
  ")

# Pull Data ---------------------------------------------------------------

raw_data <- twViz::pull_data(vertRevRDWc, "divergent_bar.rds", query, F)

#just date fixing 
cleaned_data <- raw_data %>% 
  mutate(across(contains("quarter"), calc_yq))


# analysis ----------------------------------------------------------------

df_quarterly <- cleaned_data %>% 
  filter(
    qtd_flag == "t"
    ) %>% 
  auction_metrics(engaging_user_country, year_quarter_numeric) %>% 
  group_by(engaging_user_country) %>% 
  arrange(year_quarter_numeric) %>% 
  mutate(across(revenue:ctr, ~ . / lag(., 4) - 1)) %>% 
  na.omit()

df_long <- df_quarterly %>% 
  pivot_longer(revenue:ctr, names_to = "metric")
  
df_plot <- df_long %>%   
  filter(
    year_quarter_numeric == 2020.75,
    engaging_user_country %in% c("AU", "ID", "IN", "TH", "JP", "KR", "US", "MY", "PH")
    ) 

p_divergent_imps <- df_plot %>%
  filter(metric %in% c("impressions", "cpm")) %>% 
  ggplot(aes(engaging_user_country, value)) +
  geom_col(aes(fill = metric)) +
  geom_hline(yintercept = 0, color = twColor("black"), size = 1, linetype = "dashed") +
  geom_errorbar(
    aes(ymin = value, ymax = value, color = metric), 
    size = 1, 
    data = df_plot %>% filter(metric == "revenue")
    ) +
  coord_flip() +
  scale_fill_manual(values = twColor(c("lightblue", "darkblue"))) +
  scale_color_manual(values = twColor("xdpink")) +
  scale_y_continuous(labels = percent_format()) +
  labs(
    title = "Y/Y Growth in Impressions vs. CPMs",
    subtitle = "Q4'20 QTD",
    y = NULL,
    x = NULL,
    fill = NULL,
    color = NULL,
    caption = get_gitURL()
  )

p_divergent_eng <- df_quarterly %>% 
  ggplot(aes(engaging_user_country)) +
  geom_col(aes(y = engagements, fill = "Engagements")) +
  geom_col(aes(y = cpe, fill = "CPE")) +
  geom_hline(yintercept = 0, color = twColor("black"), size = 1, linetype = "dashed") +
  geom_errorbar(aes(ymin = revenue, ymax = revenue, color = "Revenue"), size = 1) +
  coord_flip() +
  scale_fill_manual(values = twColor(c("lightblue", "darkblue"))) +
  scale_color_manual(values = twColor("xdpink")) +
  scale_y_continuous(labels = percent_format()) +
  labs(
    title = "Y/Y Growth in Engagements vs. CPEs",
    subtitle = "Q4'20 QTD",
    y = NULL,
    x = NULL,
    fill = NULL,
    color = NULL,
    caption = get_gitURL()
  )
p_divergent_imps

p_divergent_eng

ggsave(str_glue("imps_divergent_{today()}.png"), p_divergent_imps)
ggsave(str_glue("eng_divergent_{today()}.png"), p_divergent_eng)

