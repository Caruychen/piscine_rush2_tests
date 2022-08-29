# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/12 10:15:02 by cchen             #+#    #+#              #
#    Updated: 2022/08/29 22:17:40 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RUSH00BINS = rush00bins/
RUSH00SRC = rush00/
INCLUDES = includes/
UTILS = ft_atoi ft_putchar ft_putstr ft_puterr ft_putnbr ft_strcmp
FLAGS = -Wall -Werror -Wextra
UTILPATH = $(patsubst %, utilities/%.c, $(UTILS))

all: rush-00

rush-00: $(RUSH00BINS)
	for num in 00 01 02 03 04 ; do \
		gcc $(FLAGS) -o $(RUSH00BINS)rush-$$num rush00/main.c rush00/rush$$num.c $(UTILPATH) -I$(INCLUDES) ; \
	done

$(RUSH00BINS):
	mkdir -p $(@)

fclean:
	rm -rf $(RUSH00BINS)

re: fclean all
