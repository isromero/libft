# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: isromero <isromero@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/09 18:24:09 by isromero            #+#    #+#              #
#    Updated: 2023/11/25 13:58:31 by isromero         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCM = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c\
ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c\
ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c\
ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c\
ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c\
ft_strncpy.c ft_strreplace.c

SRCB = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

CC = @gcc
FLAGS = -Wall -Wextra -Werror

OBJ = $(SRCM:.c=.o)

INCLUDE = libft.h

LIB = @ar rcs
RM = @rm -f

all: $(NAME)

$(NAME): $(OBJ) $(INCLUDE) 
		$(LIB) $(NAME) $(OBJ)

bonus: $(NAME) $(SRCB:.c=.o)

%.o: %.c
		$(CC) $(FLAGS) -c -o $@ $<

clean:
		$(RM) $(OBJ) $(SRCB:.c=.o)

fclean: clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus