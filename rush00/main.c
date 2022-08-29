/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/29 12:57:02 by jheloaho          #+#    #+#             */
/*   Updated: 2021/06/13 07:58:03 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int		main(int argc, char **argv)
{
	int x;
	int y;

	if (argc < 3)
	{
		ft_puterr("Error: Insufficient arguments\n");
		return (1);
	}
	if (argc > 3)
	{
		ft_puterr("Error: Too many arguments\n");
		return (1);
	}
	x = ft_atoi(argv[1]);
	y = ft_atoi(argv[2]);
	if (x > 0 && y > 0)
		rush(x, y);
	return (0);
}
