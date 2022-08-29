/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rush03.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/29 12:50:01 by jheloaho          #+#    #+#             */
/*   Updated: 2021/06/12 10:11:45 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

void	printrow(int q, int w, int e, int r)
{
	if (e == 1 || e == w)
	{
		if (r == 1)
		{
			ft_putchar('A');
		}
		else if (r == q)
		{
			ft_putchar('C');
		}
		else
		{
			ft_putchar('B');
		}
	}
	else
	{
		(r == 1 || r == q) ? ft_putchar('B') : ft_putchar(' ');
	}
}

void	rush(int x, int y)
{
	int j;
	int i;

	j = 1;
	i = 1;
	while (j <= y)
	{
		while (i <= x)
		{
			printrow(x, y, j, i);
			i++;
		}
		i = 1;
		ft_putchar('\n');
		j++;
	}
}
