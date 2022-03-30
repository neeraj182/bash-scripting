# Testing for Files

bash provides a set of file conditionals, that can be used with the if statement, including those in the table.

You can use the if statement to test for file attributes, such as:

File or directory existence
Read or write permission
Executable permission.
For example, in the following example:

if [ -x /etc/passwd ] ; then
    ACTION
fi

the if statement checks if the file /etc/passwd is executable, which it is not. Note the very common practice of putting:

; then

on the same line as the if statement.

You can view the full list of file conditions typing:

man 1 test.

 

Condition	Meaning
-e file	Checks if the file exists.
-d file	Checks if the file is a directory.
-f file	Checks if the file is a regular file (i.e. not a symbolic link, device node, directory, etc.)
-s file	Checks if the file is of non-zero size.
-g file	Checks if the file has sgid set.
-u file	Checks if the file has suid set.
-r file	Checks if the file is readable.
-w file	Checks if the file is writable.
-x file	Checks if the file is executable.
