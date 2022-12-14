/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rush00.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/29 12:50:01 by jheloaho          #+#    #+#             */
/*   Updated: 2021/06/12 10:10:45 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

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
			if (j == 1 || j == y)
			{
				(i == 1 || i == x) ? ft_putchar('o') : ft_putchar('-');
			}
			else
			{
				(i == 1 || i == x) ? ft_putchar('|') : ft_putchar(' ');
			}
			i++;
		}
		i = 1;
		ft_putchar('\n');
		j++;
	}
}
