# The URL or path to the data file
data_url <- "Table.txt"

# The separator line starts with spaces and then a series of dashes
separator_pattern <- "^[ -]+$"

# Determine the line number where the separator is located
separator_line <- grep(separator_pattern, readLines(data_url))

# Read the data table
# Skip lines until the separator, but include the line just before (for column names)
data_df <- read.table(data_url, header = TRUE, sep = "|", skip = separator_line - 1,
                      na.strings = c("", " "), stringsAsFactors = FALSE, strip.white = TRUE)

# View the data frame
head(data_df)
