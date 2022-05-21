ncaa_coaches <- read.csv("ncaa_coaches.csv")
print(ncaa_coaches)

## Scatter plot with coach names and mean average reference lines in red
splot <- ggplot(ncaa_coaches, aes(x=seasons, y=win_percentage, label=coach)) + geom_point(size=2, shape=23) + scale_y_continuous(labels = scales::percent_format(accuracy = 1)) + labs(y="Win Percentage", x="Seasons Coached")
splot + geom_text(check_overlap = TRUE, hjust=0, nudge_x = 0.5) + geom_hline(yintercept = mean(ncaa_coaches$win_percentage), color="red") + geom_vline(xintercept = mean(ncaa_coaches$seasons), color="red") 