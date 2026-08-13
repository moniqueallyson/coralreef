

# 8 random coral

nitialize_reef <- function(num_coral = 8, fill = 1){
reef <- matrix(0, nrow = 5, ncol = 5)
random_coral<- sample(1:25, size = num_coral, replace = FALSE)
for (rc in random_coral){
  rc_row <- (rc - 1) %/% 5 + 1
  rc_col <-  (rc - 1) %% 5 + 1
  reef[rc_row, rc_col] <- fill 
}
  return(reef)
}
initialize_reef(fill = "<3")
