# 1. Estimate Population Mean from Sample of Examination Marks

marks <- c(72, 50, 85, 90, 70, 88, 90, 75, 80, 99)

mean <- mean(marks)
cat("Mean:", mean, "\n")

# 2. Estimate Population Mean with 95% Confidence Interval

marks <- c(72, 50, 85, 90, 70, 88, 90, 75, 80, 99)

result <- t.test(marks, conf.level = 0.95)

cat("Mean:", result$estimate, "\n")
print(result)

# 3. Estimate Population Proportion of Students Scoring Above 70 Marks

# Sample examination marks
marks <- c(65, 72, 58, 85, 90, 78, 88, 92, 75, 80, 70, 86)

above_70 <- sum(marks > 70)
above_70
tot_stud <- length(marks)

proportion <- above_70 / tot_stud

cat("Total Students:", tot_stud, "\n")
cat("Students Above 70:", above_70, "\n")
cat("Sample Proportion:", proportion, "\n")
cat("Percentage:", proportion * 100, "%\n")


# 4. Compute 95% Confidence Interval for Population Proportion Passing Exam
marks <- c(65, 72, 58, 85, 90, 78, 88, 92, 75, 80, 70, 86)
passing <- sum(marks >= 60)
result <- prop.test(passing, length(marks), conf.level = 0.95)
cat("Proportion passing:", result$estimate, "\n")
cat("95% CI: [", result$conf.int[1], ",", result$conf.int[2], "]\n")

# 5. Estimate Sample Variance and Standard Deviation
data <- c(65, 72, 58, 85, 90, 78, 88, 92, 75, 80, 70, 86)
var_val <- var(data)
sd_val <- sd(data)
cat("Variance:", var_val, "\n")
cat("Standard Deviation:", sd_val, "\n")

# 6. Construct Confidence Interval for Population Variance using Chi-square
data <- c(65, 72, 58, 85, 90, 78, 88, 92, 75, 80, 70, 86)
n <- length(data)
var_val <- var(data)
chi2_lower <- qchisq(0.025, df = n-1)
chi2_upper <- qchisq(0.975, df = n-1)
ci_lower <- (n - 1) * var_val / chi2_upper
ci_upper <- (n - 1) * var_val / chi2_lower
cat("95% CI for Variance: [", ci_lower, ",", ci_upper, "]\n")

