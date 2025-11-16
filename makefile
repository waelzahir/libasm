NASMFLAGS = -f elf64 -g

ARFLAGS = r

SRC_DIR := src
OBJ_DIR := obj

SRC = ft_read.s ft_strcmp.s ft_strcpy.s \
	ft_strdup.s ft_strlen.s ft_write.s \
	ft_putnbr_base.s  ft_list_push_front.s \
	ft_list_size.s ft_list_sort.s \
	ft_list_remove_if.s

OBJ = $(SRC:.s=.o)

OBJ := $(addprefix $(OBJ_DIR)/, $(OBJ)) 

SRC := $(addprefix $(SRC_DIR)/, $(SRC)) 

NAME = libft.a

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	nasm $(NASMFLAGS)  $< -o $@ 

all : ${NAME}

$(NAME):  $(OBJ) 
	@ar $(ARFLAGS) $(NAME) $(OBJ)
clean:
	rm -rf $(OBJ)

fclean:  clean 
	rm  -rf $(NAME) myprogram
re: fclean all

run : all
	gcc main.c -L. -lft -o myprogram 
	./myprogram
