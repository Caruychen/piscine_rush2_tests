/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rush01.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/30 19:15:00 by jheloaho          #+#    #+#             */
/*   Updated: 2021/06/12 10:11:28 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

void	printshape(int q, int w, int e, int r)
{
	if (e == 1)
		if (r == 1)
			ft_putchar('/');
		else if (r == q)
			ft_putchar('\\');
		else
			ft_putchar('*');
	else if (e == w)
		if (r == 1)
			ft_putchar('\\');
		else if (r == q)
			ft_putchar('/');
		else
			ft_putchar('*');
	else
		(r == 1 || r == q) ? ft_putchar('*') : ft_putchar(' ');
}

void	rush(int x, int y)
{
	int row;
	int col;

	row = 1;
	col = 1;
	while (row <= y)
	{
		while (col <= x)
		{
			printshape(x, y, row, col);
			col++;
		}
		col = 1;
		ft_putchar('\n');
		row++;
	}
}
