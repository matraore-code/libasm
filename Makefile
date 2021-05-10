# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: matraore <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/10 15:15:41 by matraore          #+#    #+#              #
#    Updated: 2021/05/10 15:43:17 by matraore         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS =	ft_strlen.s

CC = nasm -fmacho64

OBJS = ${SRCS:.s=.o}

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}

all: ${NAME}

.s.o:
	${CC} -o $@ $?

clean:
	rm -rf ${OBJS}

fclean: clean
	rm -rf $(NAME)
	rm -rf a.out

re: fclean all
