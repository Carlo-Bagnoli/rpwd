% RPWD(1) rpwd 0.1.0
% Carlo Bagnoli
% October 2020

# NAME
rpwd - [R]andom [P]ass[W]or[D] generator
**WARNING:** This piece of software was developed in python, so it's not extremely efficient, although it is pretty secure

# SYNOPSIS
**rpwd** [*ARGUMENTS*] [*FLAGS*]

# DESCRIPTION
**rpwd** creates a list of pseudo-random passwords which you can manipulate to your needs.
It has 2 lists, one made of normal characters and one made of miscellaneous characters.
There is a ratio of the amount of characters from each list that will be mixed in the list, the default is 1/4, so if there's the length is 32 then the amount of special characters is going to be 8.

# ARGUMENTS
**-t** [integer]
: [times] Specify the number of passwords to print.

**-l** [integer]
: [lenght] Specify the lenght of each password.

**-r** [integer]
: [ratio] **WARNING** the ratio is NOT an float, it's an integer, it represents the inverse of the actual ratio, so if the ratio is "4" then the **actual** ratio is 0.25, because it's 1/4.

**--special-appearances** [integer]
: [Number of special characters in each password] If you want to specify the amount of special characters in each password, then use this argument followed by an integer to do so.

**--remove** [string]
: [Remove characters that you don't want] If you don't wan't some characters, then write the characters in single quotes. e.g: '![](){}'.
If you want to remove characters that conflict with single quotes [e.g: [ or '] then write the escape code of the character, like so: \\[ \\'
**Tip**: If you want to see all special characters then run: rpwd --list-all-special

# FLAGS
**-H**
: [Hide] Hide all special characters.

**--list-all-special**
: Is it necessary to explain?

# EXAMPLES
rpwd -l 32 -r 6 -t 10 --remove '^'

rpwd -t 1000 --special-appearances 3 

rpwd -l 6 -t 50 -H

# BUGS
If you find any bugs, please write an issue on github, it'll be very appreciated <3

# COPYRIGHT / MIT LICENSE
Copyright (c) 2020 Carlo Bagnoli

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
