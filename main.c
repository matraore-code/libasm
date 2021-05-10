/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: matraore <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/10 15:35:30 by matraore          #+#    #+#             */
/*   Updated: 2021/05/10 15:41:51 by matraore         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

size_t	ft_strlen(char *s);

int		main()
{
	char	*str;
	int		lenght;

	lenght = ft_strlen("Moctar Traore Mamadou");
	printf("%d", lenght);
	return (0);
}
