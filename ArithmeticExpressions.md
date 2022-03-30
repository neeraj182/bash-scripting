# Arithmetic Expressions

Arithmetic expressions can be evaluated in the following three ways (spaces are important!):

### Using the expr utility
- expr is a standard but somewhat deprecated program. The syntax is as follows:
expr 8 + 8
echo $(expr 8 + 8)

### Using the $((...)) syntax
- This is the built-in shell format. The syntax is as follows:
echo $((x+1))

### Using the built-in shell command let. The syntax is as follows:
let x=( 1 + 2 ); echo $x

**In modern shell scripts, the use of expr is better replaced with var=$((...)).**
