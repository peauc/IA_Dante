/*
** init_lab.c for init lab\ in /home/peau_c/rendu/dante
**
** Made by Poc
** Login   <peau_c@epitech.net>
**
** Started on  Tue Mar 29 22:50:08 2016 Poc
** Last update Tue Mar 29 23:09:29 2016 Poc
*/

#include "dante.h"

char	*init_lab(int ac, char **av, t_maze *maze)
{
  char	**tab;

  if (av[1] || av[2])
    return (write(2, "Usage : ./dante [width] [height]\n", 32));
  maze->width = my_getnbr(av[1]);
  maze->length = my_getnbr(av[2]);
  if ((tab = malloc(maze->width * maze->length * sizeof(char))) == NULL)
    return (NULL);
}
