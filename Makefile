##
## Makefile for make in /home/peau_c/#HIDDEN#
##
## Made by Poc
## Login   <peau_c@epitech.net>
##
## Started on  Mon Jan 18 14:44:16 2016 Clement Peau
## Last update Wed Mar 16 14:05:02 2016 Clement Peau
##


SRC	=	main.c 																\
						init_lab.c													\

OBJ	=	$(addprefix src/, $(SRC:.c=.o))

NAME	= 	dante

ifeq (($(POC)), yes)
CC	= 	@ clang -F4 -g -I./inc
else
CC =  @ gcc -F4 -g -I./inc
endif
ifeq (($(DEBUG), yes)
CFLAGS	= 	-W -Wall -Wextra -g -D DEBUG
else
CFLAGS =  -W -Wall -Wextra -Werror 
`
$(NAME): 	$(OBJ)
		@ tput setaf 2
		@ echo "[OK] > Linking"
		@ gcc $(OBJ) -o $(NAME)
		@ echo -e "\033[1;32m \t \t \t ♩♪♫ DANTE\033[0;32m®\033[1;32m Compiled Sucesfully ♩♪♫\033[0m "

all:		$(NAME)

clean:
		@ tput setaf 2
		@ echo "[OK] > Deleting .o"
		@ rm -f $(OBJ)
		@ tput setaf 7

fclean:		clean
		@ tput setaf 2
		@ echo "[OK] > Deleting binaries"
		@ rm -f $(NAME)
		@ tput setaf 7OA

re:		fclean all

.c.o:
		@ $(CC) -c $< -o $@
		@ tput setaf 2
		@ echo -e "[OK] > $<\t\t"
		@ tput setaf 7