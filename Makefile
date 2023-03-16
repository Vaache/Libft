NAME		= libft.a
HEADER		= libft.h
CC			= cc
CFLAGS		= -Wall -Wextra -Werror -I$(HEADER)
SRC			= ft_atoi.c\
					ft_isalpha.c\
					ft_itoa.c\
					ft_memcpy.c\
					ft_putendl_fd.c\
					ft_strdup.c\
					ft_strmapi.c\
					ft_tolower.c\
					ft_bzero.c\
					ft_isascii.c\
					ft_memmove.c\
					ft_putnbr_fd.c\
					ft_strlcat.c\
					ft_strncmp.c\
					ft_toupper.c\
					ft_calloc.c\
					ft_isdigit.c\
					ft_memchr.c\
					ft_memset.c\
					ft_putstr_fd.c\
					ft_strlcpy.c\
					ft_strnstr.c\
					ft_isalnum.c\
					ft_isprint.c\
					ft_memcmp.c\
					ft_putchar_fd.c\
					ft_strchr.c\
					ft_strlen.c\
					ft_strrchr.c\
					ft_substr.c\
					ft_strjoin.c\
					ft_split.c\
					ft_strtrim.c\
					ft_striteri.c

SRCS_B		=	ft_lstnew.c\
			ft_lstadd_front.c\
			ft_lstsize.c\
			ft_lstlast.c\
			ft_lstadd_back.c\
			ft_lstclear.c\
			ft_lstdelone.c\
			ft_lstiter.c\
			ft_lstmap.c

OBJ			= $(SRC:.c=.o)

OBJ_B		= $(SRCS_B:.c=.o)

.PHONY : all bonus bonusclean bonusfclean clean fclear  re

all : $(NAME)

%.o : %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJ) $(HEADER)
	ar rcs $(NAME) $?

bonus :
	make OBJ="$(OBJ_B)" all

bonusclean :
		rm -f $(OBJ_B)

bonusfclean : bonusclean
		$(RM) $(NAME)

clean :
	rm -f $(OBJ)

fclean : clean
	$(RM) $(NAME)

re : fclean all

