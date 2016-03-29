/*
** dante.h for inc in /home/peau_c/rendu/dante
**
** Made by Poc
** Login   <peau_c@epitech.net>
**
** Started on  Tue Mar 29 22:16:28 2016 Poc
** Last update Tue Mar 29 22:38:54 2016 Poc
*/

#ifndef _DANTE_
# define _DANTE_

typedef struct	s_maze
{
  char	*maze;
  int	width;
  int	lenght;
}		t_maze;

typedef enum	s_state
  {
    WALL,
    EMPTY
  }		t_state;

#endif	/* !_DANTE_ */
