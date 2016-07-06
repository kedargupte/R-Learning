# Vectors

# Sequence of data elements, same data type

suit <- c("H", "D", "S", "c");
suit;

is.vector(suit);

# While naming names go first
# Name is anologous to key and then it is value
# If key is duplicated Value of first element is considered
suit_names <- c("H"=1, "D"=2, "S"=3, "C"=4);
suit_names;

names <- c("Type1","Type2","Type3","Type4");

names(suit) <- names;
suit;
str(suit);
class(suit);
suit["Type3"];
suit[3];
suit_names["H"];
suit_names[2];

# Vectors with different data types are coerced

# Vector arithmatic
# Every variable value is also a vector
# Vector arithmatic is element based

earnings <- c(50,60,70);
expenses <- c(30,50,80);

earnings - expenses;
sum(earnings);
sum(expenses);
earnings>expenses;

# Vector subsetting
suit[c(1,2)];
# Returns NA rather than exception
suit[c(1,2,5)];
suit[-c(3,4)];
suit[-c(3,4,5)];
# Subsetting using logical vector
# If not specifed, defaulted to True
suit[c(T,F,T)];

