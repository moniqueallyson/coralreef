# 8 random coral : Serious Ver.
initialize_reef <- function(num_coral){
reef <- matrix(0, nrow = 5, ncol = 5)
random_coral<- sample(1:25, size = num_coral, replace = FALSE)
for (rc in random_coral){
  rc_row <- (rc - 1) %/% 5 + 1
  rc_col <-  (rc - 1) %% 5 + 1
  reef[rc_row, rc_col] <- 1 
}
  return(reef)
}
initialize_reef(8)

# 8 random coral : KAWAII Ver.
initialize_reef <- function(num_coral = 8, fill = 1){
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


# Added the growth function 
growth <- function(reef, roll, row, col) {
  growth_row_offset <- c(-1, -1, -1, 0, 1, 1, 1, 0)
  growth_col_offset <- c(-1, 0, 1, 1, 1, 0, -1, -1)

  growth_row <- row + growth_row_offset[roll]
  growth_col <- col + growth_col_offset[roll]

  reef[growth_row, growth_col] <- 1

  return(reef)
}