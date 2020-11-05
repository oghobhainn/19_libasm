# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmcgahan <cmcgahan@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/13 17:10:04 by cmcgahan          #+#    #+#              #
#    Updated: 2020/11/05 13:21:17 by cmcgahan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_strlen.s\
	ft_strcpy.s\
	ft_strcmp.s\
	ft_strdup.s\
	ft_write.s\
	ft_read.s

OBJS = $(SRC:.s=.o)

NASM = nasm

NFLAG_OS = -f macho64

NFLAG_LINUX = -felf64

CC = gcc

CFLAG = -Wall -Wextra -Werror

NAME = libasm.a

%.o: %.s
	$(NASM) $(NFLAG_OS) $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: all Msg
	$(CC) -I./ $(CFLA) $(NAME) main.c
	@./a.out
	@rm -rf ./a.out

ctest: fclean
	rm -rf a.out

.PHONY: all test clean fclean re ctest

Msg :
	@echo	""
	@echo	"Testing The dope libasm library you got there !"
	@echo	""
