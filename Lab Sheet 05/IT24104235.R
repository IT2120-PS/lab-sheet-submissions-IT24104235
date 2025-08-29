setwd("C:\\Users\\IT24104235\\Desktop\\IT24104235")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

str(Delivery_Times)
head(Delivery_Times)

names(Delivery_Times)

# Define break points for the bins
breaks <- seq(20, 70, length.out = 10)  # 9 intervals means 10 break points

hist(Delivery_Times$Delivery_Time_.minutes., 
     breaks = breaks, 
     right = FALSE,   # right open intervals means intervals are like [a, b)
     col = "lightblue", 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time(minutes)", 
     ylab = "Frequency")

# Calculate frequency table without plotting (using the same breaks as histogram)
freq_table <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks, right = FALSE, plot = FALSE)

# Calculate cumulative frequencies
cum_freq <- cumsum(freq_table$counts)

# Plot the cumulative frequency polygon (ogive)
plot(freq_table$breaks[-1], cum_freq, type = "o", col = "black", 
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")
