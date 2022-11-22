#!/bin/sh
gcc -Wall -Wextra -Werror -I ./ functionName.c auxiliaryFunction.c main.c $1 -g3
valgrind --track-origins=yes ./a.out > result.txt 2> leaks
diff teste.txt result.txt > result.diff
