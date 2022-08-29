/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft.h                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/11 06:51:00 by cchen             #+#    #+#             */
/*   Updated: 2021/06/13 15:34:35 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_H
# define FT_H

# include <unistd.h>
# include <stdlib.h>

void			ft_putchar(char c);
void			ft_puterr(char *str);
void			ft_putstr(char *str);
int				ft_atoi(char *str);
void			ft_putnbr(int nb);
void			rush(int x, int y);
void			get_dimensions(int *width,
				int *height, int *counting_width, char *buf);
typedef	struct	s_list
{
	struct s_list	*next;
	void			*data;
}				t_list;
t_list			*ft_list_create_elem(void *data);
void			ft_list_push_back(t_list **begin_list, void *data);
void			ft_list_initialise(t_list **list);
void			ft_check_first_char(t_list **g_rush_list, char *buf);
t_list			*ft_list_at(t_list *begin_list, unsigned int nbr);
void			ft_list_clear_all(t_list **begin_list);
void			ft_list_clear_to(t_list **begin_list, unsigned int nb);
int				ft_strcmp(char *s1, char *s2);
t_list			*ft_list_isolate(t_list **g_rush_list, unsigned int location);
void			ft_print_results(t_list *g_rush_list, int width, int height);
void			ft_parse_line(int *is_first_line, char *buf);
void			ft_check_top_boundary(char c);
void			ft_check_left_boundary(char c);
void			ft_check_top_right(char c);

#endif
