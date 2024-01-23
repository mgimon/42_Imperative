
NAME		= libft.a

HEADER		= libft.h

SRCS		= ft_memset.c \
			  ft_bzero.c \
			  ft_strlen.c \
			  ft_strlcpy.c \
			  ft_strlcat.c \
			  ft_isalpha.c \
			  ft_isdigit.c \
			  ft_isalnum.c \
			  ft_isascii.c \
			  ft_isprint.c \
			  ft_toupper.c \
			  ft_tolower.c \
			  ft_strchr.c \
			  ft_strrchr.c \
			  ft_strncmp.c \
			  ft_memchr.c \
			  ft_memcmp.c \
			  ft_strnstr.c \
			  ft_memcpy.c \
			  ft_memmove.c \
			  ft_atoi.c \
			  ft_calloc.c \
			  ft_strdup.c \
			  ft_substr.c \
			  ft_strjoin.c \
			  ft_strtrim.c \
			  ft_itoa.c \
			  ft_putchar_fd.c \
			  ft_putstr_fd.c \
			  ft_putendl_fd.c \
			  ft_putnbr_fd.c \
				
OBJS		= $(SRCS:%.c=%.o)

.PHONY		= all clean fclean re #bonus

all: $(NAME)

FLAGS		= -Wall -Werror -Wextra

AR_FLAGS	= rc

$(NAME): $(OBJS)
	ar $(AR_FLAGS) $@ $?

%.o: %.c Makefile $(HEADER)
	cc $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
