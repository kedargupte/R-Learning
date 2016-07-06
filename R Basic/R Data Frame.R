# Data Frame

# Table like structure, to store data

vec_name <- c("Name1", "Name2", "Name3");
vec_age <- c(23, 26, 21);
vec_cs <- c(T, F, T);

data_frame <- data.frame(Name = vec_name, 
                         Age = vec_age,
                         Major_CS = vec_cs);

data_frame;
str(data_frame);

# Data frames are iternally stored as lists
# Strings are casted to factors by default

data_frame <- data.frame(Name = vec_name, 
                         Age = vec_age,
                         Major_CS = vec_cs,
                         stringsAsFactors = F);
str(data_frame);

names(data_frame) <- c("Name_Col", "Age_Col", "Major_Col");
str(data_frame);

data_frame;

# Data frame subsetting similar to Matrix - row, column
# Index number or name would work

# Matrix notation
data_frame[2,3];
is.vector(data_frame[2,3]);

data_frame$Age_Col;
is.vector(data_frame$Age_Col);

# Returns a data frame column
data_frame[2];
is.vector(data_frame[2]);
is.data.frame(data_frame[2]);

# Returns the actual data structure type
data_frame[[2]];
is.vector(data_frame[[2]]);
is.data.frame(data_frame[[2]]);

# Adding Column
data_frame$new_col1 <- c(1,2,3);

# cbind and rbind works well too
cbind(data_frame, c(4,5,6));

# rbind will require having a data frame to append to existing data
data_frame;

new_row <- data.frame(Name_Col = "Name4", 
                      Age_Col = 26,
                      Major_Col = T,
                      new_col1 = 4);

data_frame <- rbind(data_frame, new_row);

# Sorts a single given vector
sort(data_frame$Age_Col);

# Order function returns ranks, which can then be used for sorting
order(data_frame$Age_Col);

data_frame[data_frame$Age_Col > 24,];

data_frame[order(data_frame$Age_Col),];

data_frame[order(data_frame$new_col1, decreasing = T),];




