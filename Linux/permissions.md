The permissions of a file(s) can be listed with <code>ls -l</code>.
The <code>stat _filename_</code> command displays detailed information about a file's attributes, which include the file owner/group, access and modify dates, size and permissions.
Each file has a set of permissions for **owner**, **group**, and **other** which may each have their own set of permissions, depending on the requirements.
There are three main permissions: **read**(r), **write**(w), and **execute**(x).
Below is an example of **ls** output showing a file that has the following permissions:
- Owner: rwx (read,write,execute)
- Group: r-x (read,execute)
- Other: r-- (read)

![alt text](images/permissions.jpg)\
*Diagram showing meaning of ls output*

## Special Permissions
Special permissions are basically a 4th level of access that provide some extra access controls.
This fourth level of access is represented by yet another digit that many new users may not have noticed, unless using the **stat** command which displays 4 octal values.
For example, a file's permissions may look like 0750 if there are no special permissions set as indicated by the first digit, on the left, being 0.
Like the owner, group and other permissions, the special permissions digit follows a similar 4+2+1 convention as follows:


- If SUID is set when owner has execute permission, then then the file will be executed as the owner for everyone who executes that file. If the owner does not have execute permission, then the lowercase '**s**' is replaced with an uppercase '**S**' to distinguish between the owner having execute permission or not.
- If GUID is set, then 
