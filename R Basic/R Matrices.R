# Matrices
# 2D array of data elements

# Data population is column wise by default
m0 <- matrix(1:6);
m0;
m1 <- matrix(1:6, nrow=2);
m1;
m2 <- matrix(1:6, ncol=2);
m2;

m3 <- matrix(1:6, nrow=2, byrow = T);
m3;

# Matrices have repeatable data filling
# It is called Recycling, warning given
m4 <- matrix(1:4, nrow=2, ncol=3, byrow = T);
m4;

# Combine two vecors or matrices together to matrix
rbind(1:4, 6:9);
cbind(1:4, 6:9);
cbind(11:12, m3);
cbind(m3, 11:12);

# Length of number of row and columns should match
rnames <- c("row1", "row2");
cnames <- c("col1", "col2", "col3");
rownames(m3) <- rnames;
colnames(m3) <- cnames;
m3;

# Matrix subsetting
# Returns 5 element traversed in columnar format
m3[5];
# Returns row
m3[1,];
# Returns column
m3[,2];
is.vector(m3[,2]);
# Row Column specified
m3[2,3];
m3[c(1,2), c(2,3)];
is.vector(m3[c(1,2), c(2,3)]);
class(m3[c(1,2), c(2,3)]);

m3["row1", "col2"];

# subsetting by logical vectors is feasible, not understandable why

# Arithmatic of matrices happen element by element
# Unlike usual matrix computations
