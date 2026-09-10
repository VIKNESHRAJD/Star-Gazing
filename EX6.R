# One-Sample t-Test
x <- c(12, 15, 14, 10, 13,16, 11, 14, 15, 12)

result <- t.test (x, mu = 12)
result



# One-Sample One-Tailed t-Test
x <- c(12, 15, 14, 10, 13,16, 11, 14, 15, 12)

result1 <- t.test (x,mu = 12,alternative = "greater")
result1


#95% Confidence Interval

x <- c (12, 15, 14, 10, 13,16, 11, 14, 15, 12)

result <- t.test (x,mu = 12,conf.level = 0.95)

result$conf.int

# Test Against a Specified Mean

marks <- c(55 , 60 , 62 , 58 , 65 , 61 , 59 , 63)
result <- t. test ( marks , mu = 60)
result

# Independent Two-Sample t-Test


group_A <- c(65, 70, 72, 68,75, 71, 69, 74)
group_B <- c(60, 62, 65, 63, 67, 61, 64, 66)

result <- t.test (group_A, group_B)
result

# Two-Sample t-Test Assuming Equal Variances
group_A <- c(65, 70, 72, 68,75, 71, 69, 74)
group_B <- c(60, 62, 65, 63, 67, 61, 64, 66)

result <- t. test (group_A,group_B, var. equal = TRUE)
result

# One-Tailed Two-Sample t-Test

group_A <- c(65, 70, 72, 68, 75, 71,69,74)
group_B <- c(60, 62, 65, 63, 67,61, 64, 66)

result <- t. test (group_A,group_B,alternative = "greater")
result

# Paired t-Test
before <- c(55, 60, 62, 58,65, 61, 59,63)
after <- c(62, 65, 68, 64, 70, 67, 65, 69)


result <- t.test(before,after,paired = TRUE)
result


# Formula Interface

# Marks
marks <- c(65, 70, 72, 68, 75, 71, 69, 74, 60, 62, 65, 63, 67, 61, 64, 66)

# Group labels
group <- c(rep("A", 8),rep("B", 8))

# Create data frame
data <- data. frame(marks = marks,group = group)
print (data)

result <- t. test (marks ~ group,data = data)
result