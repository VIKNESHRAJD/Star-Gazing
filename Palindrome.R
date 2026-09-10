## 3.Palindrome

n <- as.integer ( readline (" Enter an integer : ") )
temp <- n
rev <- 0

while ( temp > 0) {
  d <- temp %% 10
  rev <- rev * 10 + d
  temp <- temp %/% 10
}

if( n == rev ) {
  cat (" Palindrome ")
} else {
  cat ("Not Palindrome ")
}
