library(ggplot2)
# set working directory to the directory with the data files.

funding_rounds <- read.csv(file = "funding_rounds.csv")
investors <- read.csv(file = "investors.csv")

plot_1 <- data.frame(funding_rounds$region, funding_rounds$raised_amount_usd, funding_rounds$funding_round_type, funding_rounds$investor_count)
colnames(plot_1) <- c("Region","USD Raised","Funding Type", "# of Investors")
plot(plot_1, main ="Exploratory Data Analysis - Funded Company's Profile", col = "blue", lwd = 5)

plot_2 <- data.frame(investors$region,investors$investor_type,investors$investment_count,investors$founded_on)
colnames(plot_2) <- c("Region","Type of Investor","# of investments", "Date Founded")
plot(plot_2, main ="Exploratory Data Analysis - Investor Profile", col = "green", lwd = 5)
