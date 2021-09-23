NAME = libftprintf.a

PRINTF_HEADER = ft_printf.h

LIBFT_HEADER = libft/libft.h

SOURCES = printf.c\
			sources/flag_in_string2.c\
			sources/flag_in_string1.c\
			sources/flag_edit.c\
			sources/flags_init.c\
			sources/output_char.c\
			sources/output_characters.c\
			sources/output_id.c\
			sources/output_p.c\
			sources/output_percentage.c\
			sources/output_sixteen.c\
			sources/output_string.c\
			sources/output.c\
			sources/output_u.c\
			sources/search_and_stringfl.c\

SOURCES_LIBFT = 	libft/ft_isascii.c \
				libft/ft_atoilen.c \
				libft/ft_isalnum.c \
				libft/ft_isalpha.c \
				libft/ft_isdigit.c \
				libft/ft_isprint.c \
				libft/ft_tolower.c \
				libft/ft_toupper.c \
				libft/ft_strlen.c \
				libft/ft_strlcpy.c \
				libft/ft_strlcat.c \
				libft/ft_strnstr.c \
				libft/ft_strchr.c \
				libft/ft_strncmp.c \
				libft/ft_strrchr.c \
				libft/ft_memset.c \
				libft/ft_bzero.c	\
				libft/ft_memcpy.c \
				libft/ft_memchr.c \
				libft/ft_memcmp.c \
				libft/ft_memccpy.c \
				libft/ft_strdup.c \
				libft/ft_calloc.c \
				libft/ft_memmove.c \
				libft/ft_putchar_fd.c \
				libft/ft_putstr_fd.c	\
				libft/ft_putnbr_fd.c \
				libft/ft_substr.c \
				libft/ft_strjoin.c \
				libft/ft_strtrim.c \
				libft/ft_putendl_fd.c \
				libft/ft_itoa.c \
				libft/ft_strmapi.c \
				libft/ft_split.c \
				libft/itoa_f.c \
				libft/utoa_f.c \

OBJS = $(SOURCES:.c=.o) $(SOURCES_LIBFT:.c=.o)

CC = gcc

RM		=	rm -f

CFLAGS	=	-Wall -Werror -Wextra -I.

all:		$(NAME)

$(NAME):	$(OBJS) $(LIBFT_HEADER) $(PRINTF_HEADER)
				ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all	clean fclean re