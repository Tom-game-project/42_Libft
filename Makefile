NAME = libft.a
SRCS = ft_isalpha.c\
	   ft_isdigit.c\
	   ft_isalnum.c\
	   ft_isascii.c\
	   ft_isprint.c\
	   ft_strlen.c\
	   ft_memset.c\
	   ft_bzero.c\
	   ft_memcpy.c\
	   ft_memmove.c\
	   ft_strlcpy.c\
	   ft_strlcat.c\
	   ft_toupper.c\
	   ft_tolower.c\
	   ft_strchr.c\
	   ft_strrchr.c\
	   ft_strncmp.c\
	   ft_memchr.c\
	   ft_memcmp.c\
	   ft_strnstr.c
OBJS = ft_isalpha.o\
	   ft_isdigit.o\
	   ft_isalnum.o\
	   ft_isascii.o\
	   ft_isprint.o\
	   ft_strlen.o\
	   ft_memset.o\
	   ft_bzero.o\
	   ft_memcpy.o\
	   ft_memmove.o\
	   ft_strlcpy.o\
	   ft_strlcat.o\
	   ft_toupper.o\
	   ft_tolower.o\
	   ft_strchr.o\
	   ft_strrchr.o\
	   ft_strncmp.o\
	   ft_memchr.o\
	   ft_memcmp.o\
	   ft_strnstr.o
CC = cc
CFLAGS = -Wall -Wextra -Werror
TEST = TestCode/libft_test.c TestCode/testFt*.c
TESTRUN = TestRunner/testRunner.c

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $(OBJS)

$(OBJS):
	$(CC) $(CFLAGS) -c $(SRCS)

re: fclean all

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

exec: re
	$(CC) $(CFLAGS) $(TEST) $(TESTRUN) $(NAME) -o exec
	./exec
	@echo "\033[35mTest Done\033[m"
	rm -f exec

.PHONY:
	re all fclean clean
