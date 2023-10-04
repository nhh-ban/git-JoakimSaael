# Required Libraries
install.packages(c("ggplot2", "dplyr"))
library(ggplot2)
library(dplyr)

# Load the data
data <- read.csv("processed_data.csv")

# Convert '<' values in log_mhi to numeric
data$log_mhi <- as.numeric(gsub("<", "", data$log_mhi))

# Scatter plot of a_26 against log_lk
ggplot(data, aes(x = a_26, y = log_lk)) +
  geom_point(alpha=0.6) +
  ggtitle("Linear Diameter vs. Logarithm of Stellar Mass") +
  xlab("Linear Diameter (a_26) [kpc]") +
  ylab("Logarithm of Stellar Mass (log_lk)") +
  theme_minimal()

# Scatter plot of a_26 against log_m26
ggplot(data, aes(x = a_26, y = log_m26)) +
  geom_point(alpha=0.6) +
  ggtitle("Linear Diameter vs. Logarithm of Indicative Mass") +
  xlab("Linear Diameter (a_26) [kpc]") +
  ylab("Logarithm of Indicative Mass (log_m26)") +
  theme_minimal()

# Scatter plot of a_26 against log_mhi
ggplot(data, aes(x = a_26, y = log_mhi)) +
  geom_point(alpha=0.6) +
  ggtitle("Linear Diameter vs. Logarithm of Hydrogen Mass") +
  xlab("Linear Diameter (a_26) [kpc]") +
  ylab("Logarithm of Hydrogen Mass (log_mhi)") +
  theme_minimal()

