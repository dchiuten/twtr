# twViz

Package with basic formatting options consistent with Twitter brand guidelines.

Functions include:

1. **theme_twitter**: plot theme for ggplot2
2. **twColor**: function to select one more more colors from the Twitter brand palette
3. **twPalette**: Twitter brand color palette to use for mapping in ggplot scales (e.g., scale_color_manual(values = twPalette))
4. **auction_metrics**: take a data frame with revenue, impressions and engagements and summarize those metrics, along with CPMs, CPEs, and CTRs, along an arbitrary number of partions (e.g., date, vertical, product)
5. **calc_yq**: converts year_quarter_numeric values from Vertica to a zoo yearqtr object


## How to install
Run the following in your R environment.

```
devtools::install_github("dchiuten/twtr/twViz")
```
