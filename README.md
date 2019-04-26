# SQLParse
## Installation
Add the following to your .bashrc:
```
alias sqlparse="docker run --rm \
                           -i \
                           kyokley/sqlparse"
```

## Usage
```
$ echo "SELECT Cust_No, First_Name FROM Customers WHERE Last_Name='Smith';" | sqlparse
SELECT Cust_No,
       First_Name
FROM Customers
WHERE Last_Name='Smith';
```
