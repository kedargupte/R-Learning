# Factors
# Factors are used for categorical variables
# Factors can be converted from vectors

var_vector <- c("A", "B", "AB", "A", "O");
var_factor <- factor(var_vector);
var_factor;
str(var_vector);
str(var_factor);
summary(var_factor);

# Factors are internally stored as integer vectors. Indexed using levels
# Levels are computed automatically and sorted alphabetically, else one can specify them

var2_vector <- c("L", "H", "L", "M", "H");
var2_factor <- 
  factor(var2_vector,
         levels = c("L", "M", "H"),
         labels = c("Low", "Medium", "High"),
         ordered = T);
str(var2_factor);
summary(var2_factor);

# Levels and Labels are in 1:1 correspondance
# Factor is change in internal storage representation
# Subsetting is same as Vectors
# Label name if used should be specified for figuring out the occurrence
var2_factor=="Low";
class(var2_factor=="Low");
is.vector(var2_factor=="Low");
var2_factor[2];

