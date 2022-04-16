# MySQL Reverse Delimited String
A user defined function for accepting a delimited string and reverse the appearance order of the input value.

## Functions:
### reverse_delimited_string()
This function accepts two parameters.
- delimited_string: A string value delimited by a single character.
- delimiter: The delimiting character(s) used to split the string.

When used, the value provided is returned with the delimited segments in the reversed order as they were seen in the input value.

`1st order, 2nd order, 3rd order` => `3rd order, 2nd order, 1st order`
