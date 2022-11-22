# variables
NAME = 
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
REMOVE = rm -rf
# import library
LIBFT_PATH = ./libraries/libft/
LIBFT = $(LIBFT_PATH)/libft.a

# my archives/functions
SOURCE = sources/ft_printf.c \

# .c files = .o files
OBJECTS = $(SOURCE:.c=.o)

# colors
DEF_COLOR = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
MAGENTA = \033[0;95m
CYAN = \033[0;96m
WHITE = \033[0;97m

# compilation and linking
all: $(NAME)
	@echo "$(GREEN)◞( ､ᐛ)､＿/ The Makefile of [ ] has been compilated!$(DEF_COLOR)" 

$(NAME): $(OBJECTS) | $(LIBFT)
	cp $(LIBFT) $(NAME)
	$(AR) $(NAME) $(OBJECTS)

$(LIBFT):
	@make -C $(LIBFT_PATH)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	$(AR) $(NAME) $@

clean:
	$(REMOVE) $(OBJECTS)
	make clean -C $(LIBFT_PATH)
	@echo "$(BLUE)[PRINTF] Object files cleaned!$(DEF_COLOR)"

fclean: clean
	$(REMOVE) $(NAME)
	make fclean -C $(LIBFT_PATH)
	@echo "$(BLUE)[PRINTF] Executable files cleaned!$(DEF_COLOR)"

re: fclean all
	@echo "$(BLUE)[PRINTF] Cleaned and rebuilt everything!$(DEF_COLOR)"

.PHONY: all clean fclean re libft