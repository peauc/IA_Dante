##
## Makefile for make in /home/peau_c/#HIDDEN#
##
## Made by Poc
## Login   <peau_c@epitech.net>
##
## Started on  Mon Jan 18 14:44:16 2016 Clement Peau
## Last update Tue Mar 29 23:11:45 2016 Paul THEIS
##


SRC	=	src/main.c \

OBJ	=	$(SRC:.c=.o)

NAME	= 	dante

CC	= 	@gcc -O1 -g -I./inc

CFLAGS	= 	-W  -Wall -Wextra -Werror

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
