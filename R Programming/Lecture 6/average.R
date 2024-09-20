
averageSeven <- function(xSeven) {
  if (base::any(base::is.na(xSeven))) { # nolint
    base::warning("`xSeven` contains one or More NA values") # nolint
    return(NA)
  
    } # nolint
  
  if (!is.numeric(xSeven)) { # nolint
    base::stop("`xSeven` must be a numeric vector.") # nolint
  
  } # nolint  
  
  base::mean(xSeven) # nolint
  
}
