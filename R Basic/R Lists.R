# Lists

# List is basically a key value pair where value can be other data structure
var_list <- list("string", 1, 5);
is.list(var_list);
var_list;
str(var_list);

names(var_list) <- c("col1", "col2", "col3");
var_list;
str(var_list);

# Subsetting a list
var_list2 <- list(c("A", "B"), 1:4, matrix(1:6, ncol = 2, nrow = 3));
str(var_list2);
names(var_list2) <- c("vec_c", "vec_n", "mat");
str(var_list2);
# Subsetting using single bracket results in list
var_list2[1];
# Subsetting using double square brackets results in actual content
var_list2[[1]];

var_list2["mat"];
class(var_list2["mat"]);
var_list2[["mat"]];
class(var_list2[["mat"]]);

# $ sign and [[]] are equivalent during subsetting of vector
var_list2$vec_n;
var_list2[["vec_n"]];

# Adding new vector to the list
var_list2$add_vec <- c(4:6);
str(var_list2);
# Replacing the added list. $ and [[]] are equivalent during extension
var_list2[["add_vec"]] <- c(7:9);
str(var_list2);
# Appending the list to already available list
var_list2[["add_vec"]] <- c(var_list2[["add_vec"]],c(10:12));
str(var_list2);

# Returns sub lists for first and second contents of the list
var_list2[c(1,2)];
# Returns 4th element from 2nd vector in list
var_list2[[c(2,4)]];